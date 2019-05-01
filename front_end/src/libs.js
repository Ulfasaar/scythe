// My own libs for saving files etc

function post(url, data) {
  const xmlhttp = new XMLHttpRequest(); // new HttpRequest instance
  xmlhttp.open('POST', url);
  xmlhttp.setRequestHeader('Content-Type', 'application/json;charset=UTF-8');
  xmlhttp.send(JSON.stringify(data));
}

function saveFile(fileName, text) {

  // take the fileName and text send to Python back end which
  // saves it to disk

  post('/save', {
    fileName,
    text,
  });
}

function get(url, callback) {
  const xmlhttp = new XMLHttpRequest(); // new HttpRequest instance
  xmlhttp.open('GET', url);
  xmlhttp.send();
  xmlhttp.onload = () => {
    callback(xmlhttp.response, xmlhttp.status)
  };
}


function getFiles(callback) {
  get('/getFiles', (body, status) => {
    callback(JSON.parse(body));
  });
}

function getFile(fileName, callback) {
  get('/read/' + fileName, (body, status) => {
      callback(body);
  });
}
