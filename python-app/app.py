from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello, I am Muneendra Reddy Singam. I am a junior DevOps Engineer'

if __name__ == '__main__':
    app.run()
