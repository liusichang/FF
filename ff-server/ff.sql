#设置编码格式
SET NAMES UTF8;

DROP DATABASE IF EXISTS ff;
CREATE DATABASE ff CHARSET=UTF8;
USE ff;
#1.创建超跑家族表ff_cp_family
CREATE TABLE ff_cp_family(
	fid INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(30)
);

INSERT INTO ff_cp_family VALUES(1,'兰博基尼');
INSERT INTO ff_cp_family VALUES(NULL,'法拉利');
INSERT INTO ff_cp_family VALUES(NULL,'布加迪');
INSERT INTO ff_cp_family VALUES(NULL,'劳斯莱斯');

INSERT INTO ff_cp_family VALUES(NULL,'迈凯伦');
INSERT INTO ff_cp_family VALUES(NULL,'保时捷');
INSERT INTO ff_cp_family VALUES(NULL,'奔驰');
INSERT INTO ff_cp_family VALUES(NULL,'宝马');
INSERT INTO ff_cp_family VALUES(NULL,'宾利');

#2.创建超跑信息列表
CREATE TABLE ff_cp(
	cid INT PRIMARY KEY AUTO_INCREMENT, #编号
	ft_id INT,			 #所属型号编号
	title VARCHAR(120),		 #标题
	type VARCHAR(12),		 #类型
	brand VARCHAR(12),		 #品牌
	model VARCHAR(32),		 #型号
	price DECIMAL(7,2),		 #租金价格
	seat  VARCHAR(12),		 #座位量
	color VARCHAR(12),		 #跑车颜色     #插入表中颜色对应：蓝色 1；黄色 2；红色 3；黑色：4；白色：5；
	pic   VARCHAR(120),      #跑车首页图片
	deposit DECIMAL(7,0),		 #基础押金
	tab VARCHAR(12)			 #跑车所在数据表
);
INSERT INTO ff_cp VALUES(1,10102,'兰博基尼Aventador LP700-4 ','跑车','兰博基尼','Aventador LP700-4',14000,'两座','黄色','../upload/images/ff_cp/lanbo/type1/2/1.jpg',100000,'ff_cp');
INSERT INTO ff_cp VALUES(NULL,10103,'兰博基尼Aventador LP700-4 ','跑车','兰博基尼','Aventador LP700-4',14000,'两座','红色','../upload/images/ff_cp/lanbo/type1/3/1.jpg',100000,'ff_cp');
INSERT INTO ff_cp VALUES(NULL,10104,'兰博基尼Aventador LP700-4 ','跑车','兰博基尼','Aventador LP700-4',14000,'两座','黑色','../upload/images/ff_cp/lanbo/type1/4/1.jpg',100000,'ff_cp');
INSERT INTO ff_cp VALUES(NULL,10105,'兰博基尼Aventador LP700-4 ','跑车','兰博基尼','Aventador LP700-4',14000,'两座','白色','../upload/images/ff_cp/lanbo/type1/5/1.jpg',100000,'ff_cp');

INSERT INTO ff_cp VALUES(NULL,10201,'兰博基尼Urus ','跑车','兰博基尼','Urus',14000,'两座','蓝色','../upload/images/ff_cp/lanbo/type2/1/1.jpg',100000,'ff_cp');
INSERT INTO ff_cp VALUES(NULL,10302,'兰博基尼Huracan LP610-4','跑车','兰博基尼','Huracan LP610-4',14000,'两座','黄色','../upload/images/ff_cp/lanbo/type3/2/1.jpg',100000,'ff_cp');
INSERT INTO ff_cp VALUES(NULL,10404,'兰博基尼Huracan LP580-2','跑车','兰博基尼','Huracan LP580-2',14000,'两座','黑色','../upload/images/ff_cp/lanbo/type4/4/1.jpg',100000,'ff_cp');


INSERT INTO ff_cp VALUES(NULL,1,'兰博基尼Huracan LP610-4','跑车','兰博基尼','Huracan LP610-4',14000,'两座','白色','../upload/images/ff_cp/lanbo/9004608684.jpg',100000,'ff_cp');
INSERT INTO ff_cp VALUES(NULL,1,'兰博基尼Huracan LP610-4','跑车','兰博基尼','Huracan LP610-4',14000,'两座','红色','../upload/images/ff_cp/lanbo/9001330179.jpg',100000,'ff_cp');
INSERT INTO ff_cp VALUES(NULL,1,'兰博基尼Huracan LP610-4','跑车','兰博基尼','Huracan LP610-4',14000,'两座','银色','../upload/images/ff_cp/falal/9001330179.jpg',100000,'ff_cp');


INSERT INTO ff_cp VALUES(NULL,20101,'法拉利 F12','跑车','法拉利','F12',15000,'两座','蓝色','../upload/images/ff_cp/falal/type1/1/1.jpg',100000,'ff_cp');
INSERT INTO ff_cp VALUES(NULL,20102,'法拉利 F12','跑车','法拉利','F12',15000,'两座','黄色','../upload/images/ff_cp/falal/type1/2/1.jpg',100000,'ff_cp');
INSERT INTO ff_cp VALUES(NULL,20103,'法拉利 F12','跑车','法拉利','F12',15000,'两座','红色','../upload/images/ff_cp/falal/type1/3/1.jpg',100000,'ff_cp');
INSERT INTO ff_cp VALUES(NULL,20104,'法拉利 F12','跑车','法拉利','F12',15000,'两座','黑色','../upload/images/ff_cp/falal/type1/4/1.jpg',100000,'ff_cp');
INSERT INTO ff_cp VALUES(NULL,20203,'法拉利 488','跑车','法拉利','488',15000,'两座','红色','../upload/images/ff_cp/falal/type2/3/1.jpg',100000,'ff_cp');
INSERT INTO ff_cp VALUES(NULL,20205,'法拉利 488','跑车','法拉利','488',15000,'两座','白色','../upload/images/ff_cp/falal/type2/5/1.jpg',100000,'ff_cp');
INSERT INTO ff_cp VALUES(NULL,20304,'法拉利458 Spider','跑车','法拉利','458 Spider',15000,'两座','黑色','../upload/images/ff_cp/falal/type3/4/1.jpg',100000,'ff_cp');
INSERT INTO ff_cp VALUES(NULL,20305,'法拉利458 Spider','跑车','法拉利','458 Spider',15000,'两座','白色','../upload/images/ff_cp/falal/type3/5/1.jpg',100000,'ff_cp');
INSERT INTO ff_cp VALUES(NULL,20403,' 法拉利 California T','跑车','法拉利','California T',15000,'两座','红色','../upload/images/ff_cp/falal/type4/3/1.jpg',100000,'ff_cp');


INSERT INTO ff_cp VALUES(NULL,30103,' 布加迪 威龙','跑车','布加迪','威龙',400000,'两座','红色','../upload/images/ff_cp/falal/type1/3/1.jpg',100000,'ff_cp');
INSERT INTO ff_cp VALUES(NULL,30104,' 布加迪 威龙','跑车','布加迪','威龙',400000,'两座','黑色','../upload/images/ff_cp/falal/type1/2/1.jpg',100000,'ff_cp');


INSERT INTO ff_cp VALUES(NULL,4,'劳斯莱斯 古思特','商务轿车','劳斯莱斯','古斯特',13000,'五座','白色','../upload/images/ff_cp/laosi/9001330179.jpg',100000,'ff_cp');
INSERT INTO ff_cp VALUES(NULL,4,'劳斯莱斯 古思特','商务轿车','劳斯莱斯','古斯特',13000,'五座','黑色','../upload/images/ff_cp/laosi/9001330179.jpg',100000,'ff_cp');
INSERT INTO ff_cp VALUES(NULL,4,'劳斯莱斯 幻影','商务轿车','劳斯莱斯','幻影',15000,'五座','白色','../upload/images/ff_cp/laosi/9001330179.jpg',100000,'ff_cp');
INSERT INTO ff_cp VALUES(NULL,4,'劳斯莱斯 幻影','商务轿车','劳斯莱斯','幻影',15000,'五座','黑色','../upload/images/ff_cp/laosi/9001330179.jpg',100000,'ff_cp');
INSERT INTO ff_cp VALUES(NULL,4,'劳斯莱斯 魅影','商务轿车','劳斯莱斯','魅影',15000,'五座','白色','../upload/images/ff_cp/laosi/9001330179.jpg',100000,'ff_cp');
INSERT INTO ff_cp VALUES(NULL,4,'劳斯莱斯 魅影','商务轿车','劳斯莱斯','魅影',15000,'五座','黑色','../upload/images/ff_cp/laosi/9001330179.jpg',100000,'ff_cp');
INSERT INTO ff_cp VALUES(NULL,4,'劳斯莱斯 耀影','商务轿车','劳斯莱斯','耀影',15000,'五座','白色','../upload/images/ff_cp/laosi/9001330179.jpg',100000,'ff_cp');
INSERT INTO ff_cp VALUES(NULL,4,'劳斯莱斯 耀影','商务轿车','劳斯莱斯','耀影',15000,'五座','黑色','../upload/images/ff_cp/laosi/9001330179.jpg',100000,'ff_cp');
INSERT INTO ff_cp VALUES(NULL,4,'劳斯莱斯 库里南','商务轿车','劳斯莱斯','库里南',13000,'五座','白色','../upload/images/ff_cp/laosi/9001330179.jpg',100000,'ff_cp');
INSERT INTO ff_cp VALUES(NULL,4,'劳斯莱斯 库里南','商务轿车','劳斯莱斯','库里南',13000,'五座','黑色','../upload/images/ff_cp/laosi/9001330179.jpg',100000,'ff_cp');


#********3.推荐车型表
CREATE TABLE ffReco(
	cid INT PRIMARY KEY AUTO_INCREMENT, #编号
	family_id INT,			 #所属型号家族编号
	title VARCHAR(120),		 #标题
	type VARCHAR(12),		 #类型
	brand VARCHAR(12),		 #品牌
	model VARCHAR(32),		 #型号
	price DECIMAL(7,2),		 #租金价格
	seat  VARCHAR(12),		 #座位量
	color VARCHAR(12),		 #跑车颜色
	pic   VARCHAR(120),      #跑车首页图片
	deposit DECIMAL(7,0),	 #基础押金
	tab VARCHAR(12)			 #属于哪个数据库表
);

INSERT INTO ffReco VALUES(1,3,'劳斯莱斯 耀影','商务轿车','劳斯莱斯','耀影',15000,'五座','白色','../upload/images/ff_reco/bai9004210714.jpg',100000,'ffReco');
INSERT INTO ffReco VALUES(NULL,3,'劳斯莱斯 耀影','商务轿车','劳斯莱斯','耀影',15000,'五座','黑色','../upload/images/ff_reco/1.jpg',100000,'ffReco');
INSERT INTO ffReco VALUES(NULL,3,'劳斯莱斯 库里南','商务轿车','劳斯莱斯','库里南',13000,'五座','白色','../upload/images/ff_reco/9001330179.jpg',100000,'ffReco');
INSERT INTO ffReco VALUES(NULL,3,'劳斯莱斯 库里南','商务轿车','劳斯莱斯','库里南',13000,'五座','黑色','../upload/images/ff_reco/9001330179.jpg',100000,'ffReco');


#********4.超跑图片表
CREATE TABLE ff_cp_pic(
	pid INT PRIMARY KEY AUTO_INCREMENT,
	ft_id INT,			#跑车型号编号
	tab VARCHAR(12),    #属于哪个数据库表
	img VARCHAR(128)    #图片路径
);
		#********兰博基尼系列

INSERT INTO ff_cp_pic VALUES(1,10102,'ff_cp','../upload/images/ff_cp/lanbo/type1/2/2.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,10102,'ff_cp','../upload/images/ff_cp/lanbo/type1/2/3.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,10102,'ff_cp','../upload/images/ff_cp/lanbo/type1/2/4.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,10102,'ff_cp','../upload/images/ff_cp/lanbo/type1/2/5.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,10102,'ff_cp','../upload/images/ff_cp/lanbo/type1/2/6.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,10104,'ff_cp','../upload/images/ff_cp/lanbo/type1/4/2.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,10104,'ff_cp','../upload/images/ff_cp/lanbo/type1/4/3.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,10104,'ff_cp','../upload/images/ff_cp/lanbo/type1/4/4.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,10104,'ff_cp','../upload/images/ff_cp/lanbo/type1/4/5.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,10104,'ff_cp','../upload/images/ff_cp/lanbo/type1/4/6.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,10105,'ff_cp','../upload/images/ff_cp/lanbo/type1/5/2.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,10105,'ff_cp','../upload/images/ff_cp/lanbo/type1/5/3.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,10105,'ff_cp','../upload/images/ff_cp/lanbo/type1/5/4.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,10105,'ff_cp','../upload/images/ff_cp/lanbo/type1/5/5.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,10105,'ff_cp','../upload/images/ff_cp/lanbo/type1/5/6.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,10103,'ff_cp','../upload/images/ff_cp/lanbo/type1/3/2.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,10103,'ff_cp','../upload/images/ff_cp/lanbo/type1/3/3.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,10103,'ff_cp','../upload/images/ff_cp/lanbo/type1/3/4.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,10103,'ff_cp','../upload/images/ff_cp/lanbo/type1/3/5.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,10103,'ff_cp','../upload/images/ff_cp/lanbo/type1/3/6.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,10201,'ff_cp','../upload/images/ff_cp/lanbo/type2/1/2.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,10201,'ff_cp','../upload/images/ff_cp/lanbo/type2/1/3.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,10201,'ff_cp','../upload/images/ff_cp/lanbo/type2/1/4.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,10201,'ff_cp','../upload/images/ff_cp/lanbo/type2/1/5.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,10302,'ff_cp','../upload/images/ff_cp/lanbo/type3/2/2.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,10302,'ff_cp','../upload/images/ff_cp/lanbo/type3/2/3.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,10302,'ff_cp','../upload/images/ff_cp/lanbo/type3/2/4.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,10302,'ff_cp','../upload/images/ff_cp/lanbo/type3/2/5.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,10404,'ff_cp','../upload/images/ff_cp/lanbo/type4/4/2.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,10404,'ff_cp','../upload/images/ff_cp/lanbo/type4/4/3.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,10404,'ff_cp','../upload/images/ff_cp/lanbo/type4/4/4.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,10404,'ff_cp','../upload/images/ff_cp/lanbo/type4/4/5.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,10404,'ff_cp','../upload/images/ff_cp/lanbo/type4/4/6.jpg');
		#*******法拉利系列
INSERT INTO ff_cp_pic VALUES(NULL,20101,'ff_cp','../upload/images/ff_cp/falal/type1/1/2.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20101,'ff_cp','../upload/images/ff_cp/falal/type1/1/3.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20101,'ff_cp','../upload/images/ff_cp/falal/type1/1/4.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20101,'ff_cp','../upload/images/ff_cp/falal/type1/1/5.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20102,'ff_cp','../upload/images/ff_cp/falal/type1/2/2.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20102,'ff_cp','../upload/images/ff_cp/falal/type1/2/3.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20102,'ff_cp','../upload/images/ff_cp/falal/type1/2/4.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20102,'ff_cp','../upload/images/ff_cp/falal/type1/2/5.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20103,'ff_cp','../upload/images/ff_cp/falal/type1/3/2.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20103,'ff_cp','../upload/images/ff_cp/falal/type1/3/3.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20103,'ff_cp','../upload/images/ff_cp/falal/type1/3/4.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20103,'ff_cp','../upload/images/ff_cp/falal/type1/3/5.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20104,'ff_cp','../upload/images/ff_cp/falal/type1/4/2.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20104,'ff_cp','../upload/images/ff_cp/falal/type1/4/3.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20104,'ff_cp','../upload/images/ff_cp/falal/type1/4/4.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20104,'ff_cp','../upload/images/ff_cp/falal/type1/4/5.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20202,'ff_cp','../upload/images/ff_cp/falal/type2/2/2.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20202,'ff_cp','../upload/images/ff_cp/falal/type2/2/3.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20202,'ff_cp','../upload/images/ff_cp/falal/type2/2/4.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20202,'ff_cp','../upload/images/ff_cp/falal/type2/2/5.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20205,'ff_cp','../upload/images/ff_cp/falal/type2/5/2.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20205,'ff_cp','../upload/images/ff_cp/falal/type2/5/3.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20205,'ff_cp','../upload/images/ff_cp/falal/type2/5/4.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20205,'ff_cp','../upload/images/ff_cp/falal/type2/5/5.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20205,'ff_cp','../upload/images/ff_cp/falal/type2/5/2.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20304,'ff_cp','../upload/images/ff_cp/falal/type3/4/2.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20304,'ff_cp','../upload/images/ff_cp/falal/type3/4/3.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20304,'ff_cp','../upload/images/ff_cp/falal/type3/4/4.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20304,'ff_cp','../upload/images/ff_cp/falal/type3/4/5.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20305,'ff_cp','../upload/images/ff_cp/falal/type3/5/2.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20305,'ff_cp','../upload/images/ff_cp/falal/type3/5/3.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20305,'ff_cp','../upload/images/ff_cp/falal/type3/5/4.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20305,'ff_cp','../upload/images/ff_cp/falal/type3/5/5.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20403,'ff_cp','../upload/images/ff_cp/falal/type4/3/2.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20403,'ff_cp','../upload/images/ff_cp/falal/type4/3/3.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20403,'ff_cp','../upload/images/ff_cp/falal/type4/3/4.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20403,'ff_cp','../upload/images/ff_cp/falal/type4/3/5.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,20403,'ff_cp','../upload/images/ff_cp/falal/type4/3/2.jpg');
		#*******布加迪系列
INSERT INTO ff_cp_pic VALUES(NULL,30103,'ff_cp','../upload/images/ff_cp/falal/type1/3/2.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,30103,'ff_cp','../upload/images/ff_cp/falal/type1/3/3.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,30103,'ff_cp','../upload/images/ff_cp/falal/type1/3/4.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,30103,'ff_cp','../upload/images/ff_cp/falal/type1/3/5.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,30103,'ff_cp','../upload/images/ff_cp/falal/type1/3/6.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,30105,'ff_cp','../upload/images/ff_cp/falal/type1/5/2.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,30105,'ff_cp','../upload/images/ff_cp/falal/type1/5/3.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,30105,'ff_cp','../upload/images/ff_cp/falal/type1/5/4.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,30105,'ff_cp','../upload/images/ff_cp/falal/type1/5/5.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,30105,'ff_cp','../upload/images/ff_cp/falal/type1/5/6.jpg');
INSERT INTO ff_cp_pic VALUES(NULL,30105,'ff_cp','../upload/images/ff_cp/falal/type1/5/7.jpg');

#*******5.车标图片表
CREATE TABLE ff_brand(
	bid INT PRIMARY KEY AUTO_INCREMENT,
	img VARCHAR(120)		 #图片路径
);
INSERT INTO ff_brand VALUES(1,'../upload/images/brand_img/1.png');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/2.png');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/3.png');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/4.png');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/5.png');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/6.png');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/7.png');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/8-1.png');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/9.png');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/10.png');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/11.png');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/12.png');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/13.png');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/14.png');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/15.gif');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/16.png');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/17.png');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/18.png');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/19.gif');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/1-1.png');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/2-1.png');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/3-1.png');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/4-1.png');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/5-1.png');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/6-1.png');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/7-1.png');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/8-1.png');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/9-1.png');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/10-1.png');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/11-1.png');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/12-1.png');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/13-1.png');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/14-1.png');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/15-1.gif');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/16-1.png');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/17-1.png');
INSERT INTO ff_brand VALUES(NULL,'../upload/images/brand_img/19-1.gif');

#4.用户信息
CREATE TABLE ff_user(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(8),
	upwd VARCHAR(32),
	phone VARCHAR(32),
	user_name VARCHAR(32),     #用户真实姓名
	gender BOOL    #用户性别
);
INSERT INTO ff_user VALUES(1,'tom',123456,123456,'汤姆',1);
INSERT INTO ff_user VALUES(NULL,'dyg',123456,123456,'东营港',1);
INSERT INTO ff_user VALUES(NULL,'jery',123456,123456,'杰瑞',1);
INSERT INTO ff_user VALUES(NULL,'maomao',123456,123456,'毛毛姐',0);
INSERT INTO ff_user VALUES(NULL,'papi',123456,123456,'papi酱',0);
INSERT INTO ff_user VALUES(NULL,'jiang',123456,123456,'鸡汤蒋',1);
INSERT INTO ff_user VALUES(NULL,'tuoluo',123456,123456,'机长',1);
INSERT INTO ff_user VALUES(NULL,'yang',123456,123456,'杨玉环',0);











