//引入express模块
const express=require('express');
//加入url模块
const url=require('url');
//引入连接池
const pool=require('../pool.js');
//创建超跑路由器对象
var router=express.Router();

//添加路由
//1.添加超跑
router.post('/add',function(req,res){
	//判断是否为空
		var obj=req.body;
		var i=400;
		for (var key in obj )
		{
			i++;
			if (!obj[key])
			{
				res.send({code:i,msg:key+' required'});
				return;
			}
		}
	//非空,执行sql语句
		pool.query('INSERT INTO ff_cp set ?',[obj],function(err,result){
			if (err)
			{
				throw err;
			}
			//判断是否添加成功
			if (result.affectedRows>0)
			{
				res.send({code:200,msg:'add suc'});
			} else res.send({code:409,msg:'add error'});
		});
});
//2.删除超跑
router.get('/delete',function(req,res){
	//判断是否为空
	var obj=req.query;
	if (!obj.uid)
	{
		res.send({code:401,msg:'uid required'});
		return;
	}
	//非空,执行sql语句
	pool.query('DELETE FROM ff_cp WHERE cid=?',[obj.uid],function(err,result){
		if (err)
		{
			throw err;
		}
		//判断是否删除成功
		if (result.affectedRows>0)
		{
			res.send({code:200,msg:'delete suc'});
		}else res.send({code:409,msg:'delete error'});
	});
});
//3.修改超跑
router.post('/update',function(req,res){
	//判断是否为空
	var obj=req.body;
	var i=400;
	for(var key in obj)
	{
		i++;
		if (!obj[key])
		{		
			res.send({code:i,msg:key+' required'});
			return;
		}
	}
	//非空,执行sql语句
	pool.query('UPDATE ff_cp SET title=?,subtitle=?,price=?,detail=?,deposit=? WHERE cid=?',[obj.title,obj.subtitle,obj.price,obj.detail,obj.deposit,obj.cid],function(err,result){
		if (err)
		{
			throw err;
		}
		//判断是否修改成功
		if (result.affectedRows>0)
		{
			res.send({code:200,msg:'update suc'});
		}else res.send({code:409,msg:'update error'})
	});
});
//******首页 index******************/
	//1.获取首页推荐车型路由
router.get('/getReco',function(req,res){
	pool.query('select*from ffReco',function(err,result){
		if(err){throw err}
		res.writeHead(200,{
			"Access-Control-Allow-Origin":"http://127.0.0.1:5500",
			'Content-Type':'application/json;charset=utf-8'
			  });
			res.write(JSON.stringify(result));
			res.end();
		// var Url=url.parse(req.url,true);
        //     var call=Url.query.callback;
        //     var a='我是你爹';
        //     res.writeHead(200,{
        //         "Content-Type":"text/plain;charset=utf-8"
        //     });
        //     res.write(`${call}("${a}")`);
        //     res.end();
	})
})
//******车型俱乐部页面  ff-club******
	//1.获取车辆信息
router.get('/getPro',function(req,res){
	pool.query('select*from ff_cp ',function(err,result){
		if (err)
		{	throw err;
		}
		res.writeHead(200,{
      "Access-Control-Allow-Origin":"http://127.0.0.1:5500",
      'Content-Type':'application/json;charset=utf-8'
		});
	  res.write(JSON.stringify(result) );
	  res.end();
	})
 });
 	//2.获取车辆品牌图片
 router.get('/getBrand',function(req,res){
	 var obj=req.query;
	 var cid=obj.cid;
	pool.query('select*from ff_brand',function(err,result){
		if (err)
		{	throw err;
		}
		res.writeHead(200,{
      "Access-Control-Allow-Origin":"http://127.0.0.1:5500",
      'Content-Type':'application/json;charset=utf-8'
		});
		res.write(JSON.stringify(result) );
	  res.end();
	})
 });
//******详情页面 ff-detail**********
 	//1.详情页面获取对应cid的信息
router.get('/getDetail',function(req,res){
	var cid=req.query.cid;
	var tab=req.query.tab.slice(0,6);
	console.log(tab)
	pool.query(`select*from ${tab} where cid=?`,[cid],function(err,result){
		if (err)
		{	throw err;
		}
		console.log(result);
		res.writeHead(200,{
      "Access-Control-Allow-Origin":"http://127.0.0.1:5500",
      'Content-Type':'application/json;charset=utf-8'
		});
	  res.write(JSON.stringify(result) );
	  res.end();
	})
});
//********** */
//导出路由器
module.exports=router;





