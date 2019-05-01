// import ace from 'ace-builds/src-noconflict/ace';
import ace from 'brace';
import shortcut from './shortcuts';
import { getFile, saveFile, getFiles } from './libs_1';
import 'brace/mode/javascript';
import 'brace/theme/tomorrow_night_bright';

var editor = ace.edit('editor');
editor.setTheme('ace/theme/tomorrow_night_bright');
editor.session.setMode('ace/mode/javascript');

getFile('test.js', function(text){
    editor.session.setValue(text);
});

shortcut.add('Ctrl+S', function(){
    saveFile('test.js', editor.session.getValue());
});
//
shortcut.add('Ctrl+O', function(){
    getFiles(function(files){
    alert(files);
    });
    // display modal asking which file to open
});

var vim_enabled = false;
shortcut.add('Ctrl+Shift+v', function(){
    if(vim_enabled){
        editor.setKeyboardHandler('brace/keyboard/vim');
    }
    else{
        editor.setKeyboardHandler(null);
    }

    vim_enabled = !vim_enabled;
});
