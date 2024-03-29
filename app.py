from flask import Flask, request
from flask_cors import CORS

app = Flask(__name__)
CORS(app)


@app.route('/', methods=['GET'])
def root():
    if request.environ.get('HTTP_X_FORWARDED_FOR') is None:
        return request.environ['REMOTE_ADDR'], 200
    else:
        return request.environ['HTTP_X_FORWARDED_FOR'], 200


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=8000)
