var package = require('./package.json');
var version = 'v' + package.version;

var express = require('express');
var server = express();

server.get('*', function(req, res) {
    var status = 200;
    var body = 'Hello World! ' + version;

    var message = 'GET ' + req.url + ' ' + status + ' "' + body + '"';
    console.log(message);

    res.writeHead(status);
    res.end(body);
});

var port = process.env.PORT || 8080;
server.listen(port);

module.exports = server;