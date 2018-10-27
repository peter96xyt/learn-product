const express = require('express');
const pool = require('../pool.js'); 
var router = express.Router();

router.get("/",(req,res)=>{
	var sql = "SELECT * FROM main_thing;"
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		res.send(result);
	})
})

router.get("/cn",(req,res)=>{
	var cn = "中文网站";
	var sql = "SELECT * FROM main_thing WHERE lang_type = ?"
	pool.query(sql,[cn],(err,result)=>{
		if(err) throw err;
		res.send(result);
	})
})

router.get("/en",(req,res)=>{
	var cn = "国外网站";
	var sql = "SELECT * FROM main_thing WHERE lang_type = ?"
	pool.query(sql,[cn],(err,result)=>{
		if(err) throw err;
		res.send(result);
	})
})


router.get("/hot",(req,res)=>{
	var cn = "互联网热点";
	var sql = "SELECT * FROM main_thing WHERE lang_type = ?"
	pool.query(sql,[cn],(err,result)=>{
		if(err) throw err;
		res.send(result);
	})
})

router.get("/page",(req,res)=>{
	
})


module.exports=router;