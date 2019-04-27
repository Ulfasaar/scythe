from glob import glob


def write(file_name, text):
    with open(file_name, 'w+') as f:
        f.write(text)

    
def get_file(file_name: str) -> str:
    with open(file_name, 'r') as f:
        return f.read()

    
def get_files(folder) -> list:
    return glob(folder + "/*")