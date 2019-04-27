// My own libs for saving files etc

function save_file(file_name, text){
    alert("called with file " + file_name);

    // take the file_name and text send to Python back end which
    // saves it to disk

    post("/save", {
        "file_name": file_name,
        "text": text
    });
}

function post(url, data){
    var xmlhttp = new XMLHttpRequest();   // new HttpRequest instance 
    xmlhttp.open("POST", url);
    xmlhttp.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
    xmlhttp.send(JSON.stringify(data));
}