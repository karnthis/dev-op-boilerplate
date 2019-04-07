const http = require('http');

http.createServer(function (req, res) {
	res.writeHead(200, {'Content-Type': 'text/plain'});
	res.write('Hello World!');
	res.end();
}).listen(process.env.NODE_PORT);
console.log(`Listening on Port: ${process.env.NODE_PORT}`)