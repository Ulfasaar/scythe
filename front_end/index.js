// import ace from "ace-builds/src-noconflict/ace";
import ace from 'brace';
import shortcut from "./shortcuts"
import {get_file, save_file, get_files} from "./libs_1"
import 'brace/mode/javascript';
import 'brace/theme/tomorrow_night_bright';

var editor = ace.edit("editor");
editor.setTheme("ace/theme/tomorrow_night_bright");
editor.session.setMode("ace/mode/javascript");

get_file('test.js', function(text){
    editor.session.setValue(text);
});

shortcut.add("Ctrl+S", function(){
    save_file("test.js", editor.session.getValue());
});
// 
shortcut.add("Ctrl+O", function(){
    get_files(function(files){
    alert(files);
    });
    // display modal asking which file to open
});

var vim_enabled = false;
shortcut.add("Ctrl+Shift+v", function(){
    if(vim_enabled){
        editor.setKeyboardHandler('brace/keyboard/vim');
    }
    else{
        editor.setKeyboardHandler(null);
    }

    vim_enabled = !vim_enabled;
});