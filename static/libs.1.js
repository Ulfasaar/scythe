// My own libs for saving files etc

import './shortcuts';
import 'ace-builds/src-noconflict/ace';
import 'ace-builds/src-noconflict/keybinding-vim';

function save_file(file_name, text){

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


function get(url, callback){
    var xmlhttp = new XMLHttpRequest();   // new HttpRequest instance 
    xmlhttp.open("GET", url);
    xmlhttp.send();
    xmlhttp.onload = function(){
        callback(xmlhttp.response, xmlhttp.status)
    };
}


function get_files(callback){
    get("/get_files", function(body, status){
        callback(JSON.parse(body));
    });
}

function get_file(file_name, callback){
    get("/read/" + file_name, function(body, status){
        callback(body);
    });
}