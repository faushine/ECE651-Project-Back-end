from werkzeug.exceptions import HTTPException
from app import app
from flask import jsonify


class InvalidToken(HTTPException):
    code = 401  # HTTP status code
    error_code = 1000
    description = 'Invalid token.'


class ExpiredToken(HTTPException):
    code = 401  # HTTP status code
    error_code = 1001
    description = 'Expired token.'


class NoPermission(HTTPException):
    code = 401  # HTTP status code
    error_code = 1002
    description = 'No permission.'


class LoginRequired(HTTPException):
    code = 401  # HTTP status code
    error_code = 1003
    description = 'Login required.'


class AuthenticationFailure(HTTPException):
    code = 401  # HTTP status code
    error_code = 1004
    description = 'Authentication failure.'


class ExistingUsername(HTTPException):
    code = 409  # HTTP status code
    error_code = 1005
    description = 'Existing username.'


class MissingData(HTTPException):
    code = 400  # HTTP status code
    error_code = 1006
    description = 'Missing data.'


@app.errorhandler(HTTPException)
def invalid_token(e):
    return jsonify(error_code=e.error_code, description=e.description), e.code
