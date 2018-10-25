const express = require('express');
const pool = require('../pool.js'); //�����������ݿ��ģ��
//·����
var router = express.Router();

//router.post("/login",(req,res)=>{
//    var $uname = req.body.uname;
//    var $upwd = req.body.upwd;
//    var $email = req.body.email;
//
//});

router.post('/add',(req,res)=>{
    var Obj = req.body;
    //�Կͻ��������ݵ����ݽ�����֤
    var $uname = Obj.uname;
    if(!$uname){ // = ($uname == '')
        res.send({code:'401',msg:'uname required'})
        //��ֹ�������ִ��
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
    //�����ݲ��뵽���ݿ���
    var sql = 'INSERT INTO user_list VALUES(NULL,?,?,?)';
    pool.query(sql,[$uname,$email,$upwd],(err,result)=>{
        if(err) throw err;
        //��ʾע��ɹ�
        res.send({code:200,msg:'register success!'})
    });
});

//����
module.exports=router;