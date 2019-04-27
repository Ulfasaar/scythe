from src.libs.config import ENV
from flask import Flask, render_template


app = Flask(__name__)


@app.route('/')
def send_js(path):
    return render_template("index.html")


if __name__ == "__main__":

    if ENV == "dev":
        app.run(debug=True)
    else:
        app.run