var express = require('express');
var app = express();
var path = require("path");
var fs = require('fs');
var _ = require('underscore');
var YAML = require('yamljs');

app.get('/page', function (req, res) {
  	res.sendFile(path.join(__dirname+'/index.html'));
});

let PORT = 8080;
app.listen(PORT, function () {
  	console.log('Ecomm app listening on port ', PORT);
});
