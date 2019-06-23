//引入express模块
const express=require('express');
//创建服务器
var server=express();
server.listen(8080);
//引入用户路由器
const userRouter=require('./routers/user.js');
//引入超跑路由器
const cpRouter=require('./routers/cp.js');
//引入首页路由器
const indexRouter=require('./routers/index.js');
//引入body-parser模块
const bodyParser=require('body-parser');
//引入cors中间件
const cors=require('cors');
//配置body-parser
server.use(bodyParser.urlencoded({
	extended:false
}));
//使用cors中间件
server.use(cors({
	origin:'http://127.0.0.1:5500'
}))
//托管静态资源到public下
server.use(express.static('public'));
//挂载路由器
server.use('/user',userRouter);
server.use('/cp',cpRouter);
server.use('/ffIndex',indexRouter);












//挂载到/user下
server.use('/user',userRouter);
//挂载到/cp下
server.use('/cp',cpRouter);
