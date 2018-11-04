const express = require('express');
const bodyParser = require('body-parser');
const domains=require("./routes/domains.js")
const hosts=require("./routes/hosts.js")
var app = express();
var server = app.listen(8000);

app.use(bodyParser.urlencoded({extended:false}));
app.use(express.static('public'));

app.use("/domains",domains)
app.use("/hosts",hosts)