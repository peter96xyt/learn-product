const express = require('express');
const pool = require('../pool.js'); //导入连接数据库的模块
//路由器
var router = express.Router();

//router.post("/login",(req,res)=>{
//    var $uname = req.body.uname;
//    var $upwd = req.body.upwd;
//    var $email = req.body.email;
//
//});

router.post('/add',(req,res)=>{
    var Obj = req.body;
    //对客户端所传递的数据进行验证
    var $uname = Obj.uname;
    if(!$uname){ // = ($uname == '')
        res.send({code:'401',msg:'uname required'})
        //禁止程序继续执行
        return;
    }

    var $upwd = Obj.upwd;
    if(!$upwd){
        res.send({code:'402',msg:'upwd required'})
        return;
    }

    var $email = Obj.email;
    if(!$email){
        res.send({code:'403',msg:'email required'})
        return;
    }

    //var $phone = Obj.phone;
    //if(!$phone){
    //    res.send({code:'404',msg:'phone required'})
    //    return;
    //},$phone,?,NULL,NULL,NULL
    //把数据插入到数据库中
    var sql = 'INSERT INTO user_list VALUES(NULL,?,?,?)';
    pool.query(sql,[$uname,$email,$upwd],(err,result)=>{
        if(err) throw err;
        //提示注册成功
        res.send({code:200,msg:'register success!'})
    });
});

//导出
module.exports=router;