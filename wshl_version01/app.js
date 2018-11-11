const express = require('express');
const bodyParser = require('body-parser');
const path = require('path');
const session = require('express-session');
const domains=require("./routes/domains.js")
const hosts=require("./routes/hosts.js")
const login=require("./routes/login.js")
const register=require("./routes/register.js")
const order=require("./routes/order.js")
var app = express();
var server = app.listen(8000);

app.use(bodyParser.urlencoded({extended:false}));
app.use(express.static(path.join(__dirname, '/')+'public'));
app.get('/',(req,res)=>{
    res.sendFile(path.join(__dirname, '/')+'index.html');
})
//session
app.use(session({
    secret: '128位随机字符串',
    resave: false,
    saveUninitialized: true,
}))

app.use("/domains",domains)
app.use("/hosts",hosts)
app.use("/login",login)
app.use("/register",register)
app.use("/order",order)