//引入express模块
const express=require('express');
//引入连接池pool
const pool=require('../pool.js');
//创建路由器
var router=express.Router();

//添加路由
//1.用户注册
	//1.1用户名失去焦点事件
router.get('/uname_blur',function(req,res){
	var obj=req.query;
	//console.log(obj);
	//为空时
	if (!obj.uname)
	{
		res.send('401');
		return;
	}
	//不为空时
	pool.query('select*from ff_user where uname=?',[obj.uname],function(err,result){
		if (err)
		{  throw err;
		}
		console.log(result);
		if (result.length>0)
		{
			res.send('200');
		}else res.send('409');
	});
});
	//1.2点击提交
router.post('/reg',function(req,res){
	var obj=req.body;
	//console.log(obj);
	//console.log(obj.gender);
	//遍历
	var i=400;
	for (var key in obj )
	{
		i++;
		if (!obj[key])
		{
			res.send(`${i}`);
			return;
		}
	}
	//数据库互动
	pool.query('insert into ff_user set?',[obj],function(err,result){
		if (err)
		{
			throw err;
		}
		//console.log(result);
		if (result.affectedRows>0)
		{
			res.send('200');
		}else res.send('409');
		
	});
});
//2.用户登录
	//2.1用户名失去焦点验证
router.get('/uname_blur',function(req,res){
	var obj=req.query;
	//为空时
	if (!obj.uname)
	{
		res.send('401');
		return;
	}
	//不为空时
	var sql='select*from ff_user where uname=?';
	pool.query(sql,[obj.uname],function(err,result){
		if (err)
		{
			throw err;
		}
		
		if (result.length>0)
		{
			res.send('200');
		}else res.send('409');
	});
});
	//2.2登录事件
router.post('/login',function(req,res){
	var obj=req.body;
	console.log(obj);
	//提交验证
	if (obj.uname=='')
	{
		res.send('401');
		return;
	}
	if (obj.upwd=='')
	{
		res.send('402');
		return;
	}
	//非空
	pool.query('select*from ff_user where uname=? and upwd=?',[obj.uname,obj.upwd],function(err,result){
		if (err)
		{	throw err;
		}
		console.log(result);
		if (result.length>0)
		{
			res.send('200')
		}else res.send('409')
	});
});
//3.飞飞用户列表检索
router.get('/list',function(req,res){
	pool.query('select*from ff_user',function(err,result){
		if (err)
		{
			throw err;
		}
		if (result.length>0)
		{
			res.send(result);
		}
	});
});
	//3.1列表内进行删除
router.get('/del_user',function(req,res){
	var $uid=req.query.uid;
	//console.log($uid);
	//数据库互动
	pool.query('delete from ff_user where uid=?',[$uid],function(err,result){
		if (err)
		{	throw err;
		}
		console.log(result)
		if (result.affectedRows>0)
		{
			res.send('200');
		}else res.send('409');
	});
});
	//3.2列表内进行修改
	//先将传递的uid信息查询出来
router.get('/get_upd',function(req,res){
   var obj=req.query;
   console.log(obj);
   pool.query('select*from ff_user where uid=?',[obj.uid],function(err,result){
	if (err)
	{	throw err
	}
	console.log(result);
	if (result.length>0)
	{
		res.send(result);
	}
   });
});
	//再修改
	
//4.用户修改
	router.post('/update',function(req,res){
		//验证为空
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
		pool.query('UPDATE ff_user SET uname=?,upwd=?,phone=?,user_name=? WHERE uid=?',[obj.uname,obj.upwd,obj.phone,obj.user_name,obj.uid],function(err,result){
			if (err)
			{
				throw err;
			}
			if (result.affectedRows>0)
			{
				res.send({code:200,msg:'update suc'});
			}else res.send({code:409,msg:'update error'});
		});
	});
//5.用户删除
	router.get('/delete',function(req,res){
		//判断是否为空
		var obj=req.query;
		if (!obj.uid)
		{
			res.send({code:401,msg:'uidrequired'});
			return;
		}
		//非空,执行sql语句
		pool.query('DELETE FROM ff_user WHERE uid=?',[obj.uid],function(err,result){
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
//导出路由器
module.exports=router;

