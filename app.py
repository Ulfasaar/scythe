from src.libs.config import ENV
from src import seam
from flask import Flask, render_template, request


app = Flask(__name__, static_url_path='')


@app.route('/')
def send_home(path):
    return render_template("index.html")


@app.route('/save', methods=['POST'])
def save_file():
    data = request.json
    seam.save_file(data['file_name'], data['text'])
    return "saved file", 200


if __name__ == "__main__":

    if ENV == "dev":
        app.run(debug=True)
    else:
        app.run()
