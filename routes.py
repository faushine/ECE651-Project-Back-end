from flask import request, jsonify
from models import User
from app import app, db
import errors as e
from auth import generate_token, admin_required, login_required


@app.route('/')
def hello():
    return 'The server is running.'


@app.route('/api/v1/users', methods=['GET'])
@admin_required
def get_user_list():
    user_list = User.query.all()
    return jsonify(user_list=User.serialize_list(user_list))


@app.route('/api/v1/users', methods=['POST'])
def register():
    name = request.json.get('name')
    username = request.json.get('username')
    password = request.json.get('password')
    gender = request.json.get('gender')
    if username is None or password is None:
        raise e.MissingData()
    if User.query.filter_by(username=username).first():
        raise e.ExistingUsername()
    user = User(name=name, username=username, gender=gender, admin=False)
    user.set_password(password)

    db.session.add(user)
    db.session.commit()

    user = User.query.filter_by(username=username).first()
    return jsonify(id=user.id, token=generate_token(user.id)), 201


@app.route('/api/v1/users/<int:user_id>', methods=['GET'])
@login_required
def get_user_info(user_id):
    user = User.query.get_or_404(user_id)
    return jsonify(user.serialize())


@app.route('/api/v1/users/<int:user_id>', methods=['PATCH'])
@login_required
def update_user_info(user_id):
    user = User.query.get_or_404(user_id)

    # change password
    old_password = request.json.get('old_password')
    if old_password is not None:
        if not user.verify_password(old_password):
            raise e.AuthenticationFailure()
        new_password = request.json.get('new_password')
        if new_password is None:
            raise e.MissingData()
        user.set_password(new_password)

    # change username
    username = request.json.get('username')
    if username is not None:
        if username != user.username and User.query.filter_by(username=username).first():
            raise e.ExistingUsername()
        user.username = username

    # change other information
    patch_attr = ['name', 'gender']
    for attr in patch_attr:
        value = request.json.get(attr)
        if value is not None:
            user.__setattr__(attr, value)
    db.session.commit()
    return 'Success'


@app.route('/api/v1/login', methods=['POST'])
def login():
    username = request.json.get('username')
    password = request.json.get('password')
    if username is None or password is None:
        raise e.MissingData()
    user = User.query.filter_by(username=username).first()
    if user is None or not user.verify_password(password):
        raise e.AuthenticationFailure()
    return jsonify(id=user.id, token=generate_token(user.id))
