/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmu4knd
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmu4knd` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmu4knd`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621258696667 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-05-17 21:25:23',1,'宇宙银河系金星1号','金某','13823888881','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (2,'2021-05-17 21:25:23',2,'宇宙银河系木星1号','木某','13823888882','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (3,'2021-05-17 21:25:23',3,'宇宙银河系水星1号','水某','13823888883','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (4,'2021-05-17 21:25:23',4,'宇宙银河系火星1号','火某','13823888884','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (5,'2021-05-17 21:25:23',5,'宇宙银河系土星1号','土某','13823888885','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (6,'2021-05-17 21:25:23',6,'宇宙银河系月球1号','月某','13823888886','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1621258160487,'2021-05-17 21:29:19',1621258052576,'光耀东方广场N座写字楼','李四','15214121412','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1621258696666,'2021-05-17 21:38:16',1621258560939,'玛丽亚餐厅','王五','15241214121','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'huodongshangchang' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621258719130 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmu4knd/upload/1621258449382.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmu4knd/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmu4knd/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discusshuodongshangchang` */

DROP TABLE IF EXISTS `discusshuodongshangchang`;

CREATE TABLE `discusshuodongshangchang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621258769282 DEFAULT CHARSET=utf8 COMMENT='活动商场评论表';

/*Data for the table `discusshuodongshangchang` */

insert  into `discusshuodongshangchang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (111,'2021-05-17 21:25:23',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discusshuodongshangchang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (112,'2021-05-17 21:25:23',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discusshuodongshangchang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (113,'2021-05-17 21:25:23',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discusshuodongshangchang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (114,'2021-05-17 21:25:23',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discusshuodongshangchang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (115,'2021-05-17 21:25:23',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discusshuodongshangchang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (116,'2021-05-17 21:25:23',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discusshuodongshangchang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1621258769281,'2021-05-17 21:39:28',43,1621258560939,'2','很不错','欢迎下次再来');

/*Table structure for table `huodongshangchang` */

DROP TABLE IF EXISTS `huodongshangchang`;

CREATE TABLE `huodongshangchang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) NOT NULL COMMENT '商品类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `danwei` varchar(200) DEFAULT NULL COMMENT '单位',
  `shangjiariqi` date DEFAULT NULL COMMENT '上架日期',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `price` float NOT NULL COMMENT '价格',
  `onelimittimes` int(11) DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int(11) DEFAULT '-1' COMMENT '库存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='活动商场';

/*Data for the table `huodongshangchang` */

insert  into `huodongshangchang`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`tupian`,`danwei`,`shangjiariqi`,`shangpinxiangqing`,`price`,`onelimittimes`,`alllimittimes`) values (41,'2021-05-17 21:25:23','商品名称1','商品类型1','http://localhost:8080/ssmu4knd/upload/huodongshangchang_tupian1.jpg','单位1','2021-05-17','商品详情1',99.9,1,98);
insert  into `huodongshangchang`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`tupian`,`danwei`,`shangjiariqi`,`shangpinxiangqing`,`price`,`onelimittimes`,`alllimittimes`) values (42,'2021-05-17 21:25:23','商品名称2','商品类型2','http://localhost:8080/ssmu4knd/upload/huodongshangchang_tupian2.jpg','单位2','2021-05-17','商品详情2',99.9,2,95);
insert  into `huodongshangchang`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`tupian`,`danwei`,`shangjiariqi`,`shangpinxiangqing`,`price`,`onelimittimes`,`alllimittimes`) values (43,'2021-05-17 21:25:23','鞋子','鞋子','http://localhost:8080/ssmu4knd/upload/huodongshangchang_tupian3.jpg','件','2021-05-17','<p><img src=\"http://localhost:8080/ssmu4knd/upload/1621258389582.jpg\"></p><p><br></p><p>这里可以发布一些相关商品简介内容的，可以图文结合描述的，。。。</p>',150,100,90);
insert  into `huodongshangchang`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`tupian`,`danwei`,`shangjiariqi`,`shangpinxiangqing`,`price`,`onelimittimes`,`alllimittimes`) values (44,'2021-05-17 21:25:23','商品名称4','商品类型4','http://localhost:8080/ssmu4knd/upload/huodongshangchang_tupian4.jpg','单位4','2021-05-17','商品详情4',99.9,4,99);
insert  into `huodongshangchang`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`tupian`,`danwei`,`shangjiariqi`,`shangpinxiangqing`,`price`,`onelimittimes`,`alllimittimes`) values (45,'2021-05-17 21:25:23','商品名称5','商品类型5','http://localhost:8080/ssmu4knd/upload/huodongshangchang_tupian5.jpg','单位5','2021-05-17','商品详情5',99.9,5,97);
insert  into `huodongshangchang`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`tupian`,`danwei`,`shangjiariqi`,`shangpinxiangqing`,`price`,`onelimittimes`,`alllimittimes`) values (46,'2021-05-17 21:25:23','商品名称6','商品类型6','http://localhost:8080/ssmu4knd/upload/huodongshangchang_tupian6.jpg','单位6','2021-05-17','商品详情6',99.9,6,99);

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621258760063 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (101,'2021-05-17 21:25:23',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (102,'2021-05-17 21:25:23',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (103,'2021-05-17 21:25:23',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (104,'2021-05-17 21:25:23',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (105,'2021-05-17 21:25:23',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (106,'2021-05-17 21:25:23',6,'用户名6','留言内容6','回复内容663666');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (1621258760062,'2021-05-17 21:39:19',1621258560939,'2','有什么问题可以在这里反馈的。。','好');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (91,'2021-05-17 21:25:23','标题121212','简介1212112','http://localhost:8080/ssmu4knd/upload/news_picture1.jpg','<p><img src=\"http://localhost:8080/ssmu4knd/upload/1621258432519.jpg\"></p><p><br></p><p>这里可以发布一些公告内容1</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (92,'2021-05-17 21:25:23','标题2','简介2','http://localhost:8080/ssmu4knd/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (93,'2021-05-17 21:25:23','标题3','简介3','http://localhost:8080/ssmu4knd/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (94,'2021-05-17 21:25:23','标题4','简介4','http://localhost:8080/ssmu4knd/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (95,'2021-05-17 21:25:23','标题5','简介5','http://localhost:8080/ssmu4knd/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (96,'2021-05-17 21:25:23','标题6','简介6','http://localhost:8080/ssmu4knd/upload/news_picture6.jpg','内容6');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'huodongshangchang' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1621258727431 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1621258164215,'2021-05-17 21:29:24','202151721291765837890','huodongshangchang',1621258052576,42,'商品名称2','http://localhost:8080/ssmu4knd/upload/huodongshangchang_tupian2.jpg',2,99.9,99.9,199.8,199.8,1,'已发货','光耀东方广场N座写字楼','15214121412','李四');
insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1621258164824,'2021-05-17 21:29:23','202151721291753199567','huodongshangchang',1621258052576,41,'商品名称1','http://localhost:8080/ssmu4knd/upload/huodongshangchang_tupian1.jpg',1,99.9,99.9,99.9,99.9,1,'已退款','光耀东方广场N座写字楼','15214121412','李四');
insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1621258165105,'2021-05-17 21:29:24','202151721291777267036','huodongshangchang',1621258052576,43,'商品名称3','http://localhost:8080/ssmu4knd/upload/huodongshangchang_tupian3.jpg',2,99.9,99.9,199.8,199.8,1,'已取消','光耀东方广场N座写字楼','15214121412','李四');
insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1621258704185,'2021-05-17 21:38:23','202151721381733485011','huodongshangchang',1621258560939,42,'商品名称2','http://localhost:8080/ssmu4knd/upload/huodongshangchang_tupian2.jpg',2,99.9,99.9,199.8,199.8,1,'已取消','玛丽亚餐厅','15241214121','王五');
insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1621258704429,'2021-05-17 21:38:23','202151721381743677956','huodongshangchang',1621258560939,43,'鞋子','http://localhost:8080/ssmu4knd/upload/huodongshangchang_tupian3.jpg',6,150,150,900,900,1,'已退款','玛丽亚餐厅','15241214121','王五');
insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1621258727259,'2021-05-17 21:38:46','202151721384020699599','huodongshangchang',1621258560939,43,'鞋子','http://localhost:8080/ssmu4knd/upload/huodongshangchang_tupian3.jpg',4,150,150,600,600,1,'已完成','玛丽亚餐厅','15241214121','王五');
insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1621258727430,'2021-05-17 21:38:46','202151721384010494156','huodongshangchang',1621258560939,45,'商品名称5','http://localhost:8080/ssmu4knd/upload/huodongshangchang_tupian5.jpg',2,99.9,99.9,199.8,199.8,1,'已支付','玛丽亚餐厅','15241214121','王五');

/*Table structure for table `saishibaoming` */

DROP TABLE IF EXISTS `saishibaoming`;

CREATE TABLE `saishibaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `bisaimingcheng` varchar(200) DEFAULT NULL COMMENT '比赛名称',
  `baomingneirong` longtext NOT NULL COMMENT '报名内容',
  `baomingshijian` date DEFAULT NULL COMMENT '报名时间',
  `baomingrenshu` int(11) NOT NULL COMMENT '报名人数',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1621258607654 DEFAULT CHARSET=utf8 COMMENT='赛事报名';

/*Data for the table `saishibaoming` */

insert  into `saishibaoming`(`id`,`addtime`,`bianhao`,`bisaimingcheng`,`baomingneirong`,`baomingshijian`,`baomingrenshu`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`,`userid`) values (31,'2021-05-17 21:25:23','编号1','比赛名称1','报名内容1','2021-05-17',1,'用户名1','姓名1','手机1','是','',1);
insert  into `saishibaoming`(`id`,`addtime`,`bianhao`,`bisaimingcheng`,`baomingneirong`,`baomingshijian`,`baomingrenshu`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`,`userid`) values (32,'2021-05-17 21:25:23','编号2','比赛名称2','报名内容2','2021-05-17',1,'用户名2','姓名2','手机2','是','',2);
insert  into `saishibaoming`(`id`,`addtime`,`bianhao`,`bisaimingcheng`,`baomingneirong`,`baomingshijian`,`baomingrenshu`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`,`userid`) values (33,'2021-05-17 21:25:23','编号3','比赛名称3','报名内容3','2021-05-17',1,'用户名3','姓名3','手机3','是','',3);
insert  into `saishibaoming`(`id`,`addtime`,`bianhao`,`bisaimingcheng`,`baomingneirong`,`baomingshijian`,`baomingrenshu`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`,`userid`) values (34,'2021-05-17 21:25:23','编号4','比赛名称4','报名内容4','2021-05-17',1,'用户名4','姓名4','手机4','是','',4);
insert  into `saishibaoming`(`id`,`addtime`,`bianhao`,`bisaimingcheng`,`baomingneirong`,`baomingshijian`,`baomingrenshu`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`,`userid`) values (35,'2021-05-17 21:25:23','编号5','比赛名称5','报名内容5','2021-05-17',1,'用户名5','姓名5','手机5','是','',5);
insert  into `saishibaoming`(`id`,`addtime`,`bianhao`,`bisaimingcheng`,`baomingneirong`,`baomingshijian`,`baomingrenshu`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`,`userid`) values (36,'2021-05-17 21:25:23','编号6','比赛名称6','报名内容6','2021-05-17',1,'用户名6','姓名6','手机6','是','',6);
insert  into `saishibaoming`(`id`,`addtime`,`bianhao`,`bisaimingcheng`,`baomingneirong`,`baomingshijian`,`baomingrenshu`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`,`userid`) values (1621258116977,'2021-05-17 21:28:36','1621258103547','比赛名称1','测试','2021-05-17',1,'1','李四','15214121412','是','报名成功',1621258052576);
insert  into `saishibaoming`(`id`,`addtime`,`bianhao`,`bisaimingcheng`,`baomingneirong`,`baomingshijian`,`baomingrenshu`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`,`userid`) values (1621258607653,'2021-05-17 21:36:46','1621258592917','半程马拉松比赛','我要报名','2021-05-17',1,'2','王五','15214121411','','',1621258560939);

/*Table structure for table `saishixinxi` */

DROP TABLE IF EXISTS `saishixinxi`;

CREATE TABLE `saishixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bisaimingcheng` varchar(200) NOT NULL COMMENT '比赛名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `bisairiqi` date DEFAULT NULL COMMENT '比赛日期',
  `bisaishijian` varchar(200) DEFAULT NULL COMMENT '比赛时间',
  `bisaididian` varchar(200) DEFAULT NULL COMMENT '比赛地点',
  `baomingrenshu` int(11) NOT NULL COMMENT '报名人数',
  `bisaiyaoqiu` longtext COMMENT '比赛要求',
  `bisaineirong` longtext COMMENT '比赛内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='赛事信息';

/*Data for the table `saishixinxi` */

insert  into `saishixinxi`(`id`,`addtime`,`bisaimingcheng`,`tupian`,`bisairiqi`,`bisaishijian`,`bisaididian`,`baomingrenshu`,`bisaiyaoqiu`,`bisaineirong`) values (21,'2021-05-17 21:25:23','半程马拉松比赛','http://localhost:8080/ssmu4knd/upload/saishixinxi_tupian1.jpg','2021-05-17','9点','从洪湖公园开始',1,'比赛要求1需要怎么样','<p>比赛内从哪里开始到哪里</p><p>这里可以发布一些相关比赛内容介绍的。</p>');
insert  into `saishixinxi`(`id`,`addtime`,`bisaimingcheng`,`tupian`,`bisairiqi`,`bisaishijian`,`bisaididian`,`baomingrenshu`,`bisaiyaoqiu`,`bisaineirong`) values (22,'2021-05-17 21:25:23','比赛名称2','http://localhost:8080/ssmu4knd/upload/saishixinxi_tupian2.jpg','2021-05-17','比赛时间2','比赛地点2',2,'比赛要求2','比赛内容2');
insert  into `saishixinxi`(`id`,`addtime`,`bisaimingcheng`,`tupian`,`bisairiqi`,`bisaishijian`,`bisaididian`,`baomingrenshu`,`bisaiyaoqiu`,`bisaineirong`) values (23,'2021-05-17 21:25:23','比赛名称3','http://localhost:8080/ssmu4knd/upload/saishixinxi_tupian3.jpg','2021-05-17','比赛时间3','比赛地点3',3,'比赛要求3','比赛内容3');
insert  into `saishixinxi`(`id`,`addtime`,`bisaimingcheng`,`tupian`,`bisairiqi`,`bisaishijian`,`bisaididian`,`baomingrenshu`,`bisaiyaoqiu`,`bisaineirong`) values (24,'2021-05-17 21:25:23','比赛名称4','http://localhost:8080/ssmu4knd/upload/saishixinxi_tupian4.jpg','2021-05-17','比赛时间4','比赛地点4',4,'比赛要求4','比赛内容4');
insert  into `saishixinxi`(`id`,`addtime`,`bisaimingcheng`,`tupian`,`bisairiqi`,`bisaishijian`,`bisaididian`,`baomingrenshu`,`bisaiyaoqiu`,`bisaineirong`) values (25,'2021-05-17 21:25:23','比赛名称5','http://localhost:8080/ssmu4knd/upload/saishixinxi_tupian5.jpg','2021-05-17','比赛时间5','比赛地点5',5,'比赛要求5','比赛内容5');
insert  into `saishixinxi`(`id`,`addtime`,`bisaimingcheng`,`tupian`,`bisairiqi`,`bisaishijian`,`bisaididian`,`baomingrenshu`,`bisaiyaoqiu`,`bisaineirong`) values (26,'2021-05-17 21:25:23','比赛名称6','http://localhost:8080/ssmu4knd/upload/saishixinxi_tupian6.jpg','2021-05-17','比赛时间6','比赛地点6',6,'比赛要求6','比赛内容6');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621258635258 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1621258629935,'2021-05-17 21:37:09',1621258560939,41,'huodongshangchang','商品名称1','http://localhost:8080/ssmu4knd/upload/huodongshangchang_tupian1.jpg');
insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1621258635257,'2021-05-17 21:37:14',1621258560939,42,'huodongshangchang','商品名称2','http://localhost:8080/ssmu4knd/upload/huodongshangchang_tupian2.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1621258052576,'1','yonghu','用户','117vvwffd5bqt7uwe0896bak6dpamp0x','2021-05-17 21:27:43','2021-05-17 22:28:42');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1,'abo','users','管理员','pv1g3127umgi3fghxxpwzyzashamc8mf','2021-05-17 21:30:53','2021-05-17 22:39:39');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1621258560939,'2','yonghu','用户','x23hfajtny47ajtjcrkq834t6tpd80up','2021-05-17 21:36:08','2021-05-17 22:40:05');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-17 21:25:23');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1621258560940 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`,`youxiang`,`money`) values (11,'2021-05-17 21:25:23','用户1','123456','姓名1','http://localhost:8080/ssmu4knd/upload/yonghu_touxiang1.jpg','男','13823888881','773890001@qq.com',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`,`youxiang`,`money`) values (12,'2021-05-17 21:25:23','用户2','123456','姓名2','http://localhost:8080/ssmu4knd/upload/yonghu_touxiang2.jpg','男','13823888882','773890002@qq.com',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`,`youxiang`,`money`) values (13,'2021-05-17 21:25:23','用户3','123456','姓名3','http://localhost:8080/ssmu4knd/upload/yonghu_touxiang3.jpg','男','13823888883','773890003@qq.com',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`,`youxiang`,`money`) values (14,'2021-05-17 21:25:23','用户4','123456','姓名4','http://localhost:8080/ssmu4knd/upload/yonghu_touxiang4.jpg','男','13823888884','773890004@qq.com',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`,`youxiang`,`money`) values (15,'2021-05-17 21:25:23','用户5','123456','姓名5','http://localhost:8080/ssmu4knd/upload/yonghu_touxiang5.jpg','男','13823888885','773890005@qq.com',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`,`youxiang`,`money`) values (16,'2021-05-17 21:25:23','用户6','123456','姓名6','http://localhost:8080/ssmu4knd/upload/yonghu_touxiang6.jpg','男','13823888886','773890006@qq.com',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`,`youxiang`,`money`) values (1621258052576,'2021-05-17 21:27:32','1','1','李四','http://localhost:8080/ssmu4knd/upload/1621258078166.png','男','15214121412','12121212@245.com',19922.2);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`,`youxiang`,`money`) values (1621258560939,'2021-05-17 21:36:00','2','1','王五','http://localhost:8080/ssmu4knd/upload/1621258580616.png','女','15214121411','121212121@78.cn',241622);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
