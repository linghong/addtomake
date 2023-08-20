
from app import app
from flask import jsonify

@app.route('/')
def index():
    return jsonify(message="Welcome to the Flask OAuth2 Template!")
