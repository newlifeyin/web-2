const express = require('express')//Import Express Framework
const app = express()

//Middleware: Set response headers to support CORS and other configurations
app.all('*', function (req, res, next) {
	res.header("Access-Control-Allow-Origin", "*");//Allow all domains to access
	res.header("Access-Control-Allow-Headers", "X-Requested-With");//Allow specific request headers
	res.header("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS");
	res.header("X-Powered-By", ' 3.2.1')
	res.header("Content-Type", "application/json;charset=utf-8");
	next();
});

app.use(express.json())

let user = require('./api.js');
app.use(user);

module.exports = app
const port = 9001
app.listen(port, () => {
	console.log(`app is running at http://localhost:${port}`)
})