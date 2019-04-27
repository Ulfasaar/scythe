from src.libs import fs


def save_file(file_name, text):
    fs.write("code/" + file_name, text)


def get_files():
    return fs.get_files("code")


def get_file(file_name: str) -> str:
    return fs.get_file("code/" + file_name)
