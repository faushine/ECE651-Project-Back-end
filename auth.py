from app import app
from itsdangerous import TimedJSONWebSignatureSerializer as Serializer, \
    BadSignature, SignatureExpired
from models import User
import functools
import os
import errors as e
from flask import request


def generate_token(user_id, expiration=3600):
    s = Serializer(app.config['SECRET_KEY'], expires_in=expiration)
    return s.dumps({'id': user_id}).decode("utf-8")


def verify_token(token):
    if token is None:
        raise e.LoginRequired()
    if os.environ.get('FLASK_ENV') == 'development' and token == 'admin':  # for testing in development environment
        return 'admin'
    s = Serializer(app.config['SECRET_KEY'])
    try:
        data = s.loads(token)
    except SignatureExpired:
        raise e.ExpiredToken()  # expired token
    except BadSignature:
        raise e.InvalidToken()  # invalid token
    user = User.query.get(data['id'])
    return user


def login_required(func):
    @functools.wraps(func)
    def wrapper(*args, **kw):
        token = request.headers.get('token')
        user = verify_token(token)
        if user == 'admin' or user.admin:
            return func(*args, **kw)
        if user.id == kw['user_id']:
            return func(*args, **kw)
        else:  # deny access to content of other users
            raise e.NoPermission()

    return wrapper


def admin_required(func):
    @functools.wraps(func)
    def wrapper(*args, **kw):
        token = request.headers.get('token')
        user = verify_token(token)
        if user == 'admin' or user.admin:
            return func(*args, **kw)
        else:  # deny access to content of admin
            raise e.NoPermission()

    return wrapper


def login_for_custom_content(func):
    @functools.wraps(func)
    def wrapper(*args, **kw):
        token = request.headers.get('token')
        if token is None:
            return func(*args, **kw)

    return wrapper
