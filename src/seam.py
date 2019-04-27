from src.libs import fs


def save_file(file_name, text):
    fs.write("code/" + file_name, text)