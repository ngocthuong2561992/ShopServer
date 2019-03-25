var express = require('express');
var cors = require('cors');
var bodyparser = require('body-parser');
var connection = require('./connection/dbconnection');
var routes = require('./routes');
var app = express();
app.use(cors());
app.use(bodyparser.urlencoded({extended: true})); //support x-www-form-urlencoded
app.use(bodyparser.json());
app.use('/shop',routes);
var server = app.listen(3000, function() {
  console.log('Server listening on port ' + server.address().port);
});

module.exports = app;