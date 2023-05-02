# Import libraries
from flask import Flask

# creates new instance of flask app and assigns it to app
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'

if __name__ == '__main__':
    app.run(debug=True, port=8080)