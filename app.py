from flask import Flask, render_template


# set the project root directory as the static folder, you can set others.
app = Flask(__name__, static_url_path='')


@app.route('/')
def send_js(path):
    return render_template("index.html")


if __name__ == "__main__":
    app.run(debug=True)