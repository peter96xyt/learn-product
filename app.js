const express = require("express");
const bodyParser = require('body-parser');
const pool = require("./pool");
const user = require("./routes/user");
var app = express();
app.listen(3000);

app.use(express.static(__dirname+"/public"));

app.use(bodyParser.urlencoded({
    extended: false
}));


app.use("/user",user);


//app.use("/",index);

