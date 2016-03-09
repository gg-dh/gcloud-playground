var http = require('http');
var package = require('./package.json');
var version = 'v' + package.version;

var handleRequest = function(request, response) {
    var status = 200;
    var body = 'Hello World! ' + version;

    var message = 'GET ' + request.url + ' ' + status + ' "' + body + '"';
    console.log(message);

    response.writeHead(status);
    response.end(body);
}

var www = http.createServer(handleRequest);
www.listen(8080);
