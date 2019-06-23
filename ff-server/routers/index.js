//引入express模块
const express=require('express');
//引入连接池
const pool=require('../pool.js');
//创建首页路由器对象
var router=express.Router();

//1.获得车标路由
router.get('/getBrand',(req,res)=>{
    //sql语句
    var sql='select*from ff_brand';
    pool.query(sql,(err,result)=>{
        if(err)console.log(err);
        res.writeHead(200,{
      "Access-Control-Allow-Origin":"http://127.0.0.1:5500",
      'Content-Type':'application/json;charset=utf-8'
		});
	  res.write(JSON.stringify(result) );
	  res.end();
    })
})








//导出路由器
module.exports=router;