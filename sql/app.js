//1:引入第三方模块
const express = require("express");
const mysql = require("mysql");
const cors = require("cors");
const session = require("express-session");
//2:配置第三方模块
 //2.1:配置连接池
 var pool = mysql.createPool({
   host:"127.0.0.1",
   user:"root",
   password:"",
   port:3306,
   database:"gs",
   connectionLimit:15
 })
 //2.2:跨域
 var server = express();
 server.use(cors({
   origin:["http://127.0.0.1:8081",
   "http://localhost:8081","http://localhost:8083"],
   credentials:true
 }))
 //2.3:session
 server.use(session({
   secret:"128位字符串",
   resave:true,
   saveUninitialized:true
 }))
 //2.9:指定静态目录
 server.use(express.static("public"))


 server.listen(3000);

server.get("/pro",(req,res)=>{
var sql="SELECT * FROM gs_pro";
  //3:json
  pool.query(sql,(err,result)=>{
      if(err)throw err;
      if(result.length>0){
         res.send(result);
      }
  })
})

server.get("/login",(req,res)=>{
  //1:参数
  var uname = req.query.uname;
  var upwd = req.query.upwd;
  //1.1:正则表达式验证用户名或密码
  //2:sql
var sql = "SELECT lid FROM gs_login WHERE uname=? AND upwd=?";
  //3:json
  pool.query(sql,[uname,upwd],(err,result)=>{
      if(err)throw err;
      if(result.length==0){
         res.send({code:-1,msg:"用户名或密码有误"});
      }else{
//??缺少一步
//将当前登录用户uid保存session
//result=[{id:1}]
         req.session.uid = result[0].lid;
         res.send({code:1,msg:"登录成功",uid:req.session.uid});
      }
  })
})

server.get("/chart",(req,res)=>{
  var uid=req.session.uid;
  if(!uid){
    res.send({code:-1,msg:"请登录"});
    return;
  }
  var count= req.query.count;
  var img_url = req.query.img_url;
  var title = req.query.title;
  var price= req.query.price;
  var size= req.query.size;
var sql = "INSERT INTO gs_chart VALUES(?,null,?,?,?,?,?)";
  pool.query(sql,[uid,img_url,title,price,count,size],(err,result)=>{
      if(err)throw err;
      console.log(result)
      if(result.affectedRows>0){
         res.send({code:1,msg:"已加入购物车"});
      }else{
        res.send({code:-1,msg:"加入失败"})
      }
  })
})

server.get("/cart",(req,res)=>{
  //无参数
  var uid=req.session.uid;
  if(!uid){
    res.send({code:-1,msg:"请登录"});
    return;
  }
  //sql
  var sql="SELECT cid,img_url,title,price,count,size FROM gs_chart WHERE id=?";
  pool.query(sql,[uid],(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
    console.log(result)
  })
})

//删除选中商品
//接口测试：http://127.0.0.1:3000/delAll?ids=6,7   多个id参数用逗号隔开
server.get("/delAll",(req,res)=>{
  var ids=req.query.ids;
  var sql=`DELETE FROM gs_chart WHERE id IN (${ids})`;
  pool.query(sql,(err,result)=>{
    if (err) throw err;
    if(result.affectedRows>0){
      res.send({code:1,msg:"删除成功"})
    }else{
      res.send({code:-1,msg:"删除失败"})
    }
  })
})
server.get("/search",(req,res)=>{
  var title=req.query.keyword;

  var sql="SELECT * FROM gs_pro WHERE p_title like" +"'"+"%?%"+"'";
  pool.query(sql,[title],(err,result)=>{
    if(err) throw err;
    res.send(result)
  })
})