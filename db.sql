/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - sifangcaidingzhishangmenfuwu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sifangcaidingzhishangmenfuwu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sifangcaidingzhishangmenfuwu`;

/*Table structure for table `caipin` */

DROP TABLE IF EXISTS `caipin`;

CREATE TABLE `caipin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `chushi_id` int(11) DEFAULT NULL COMMENT '厨师信息',
  `caipin_name` varchar(200) DEFAULT NULL COMMENT '菜品名称  Search111 ',
  `caipin_uuid_number` varchar(200) DEFAULT NULL COMMENT '菜品编号',
  `caipin_photo` varchar(200) DEFAULT NULL COMMENT '菜品照片',
  `caipin_types` int(11) DEFAULT NULL COMMENT '菜品类型 Search111',
  `caipin_kouwe_types` int(11) DEFAULT NULL COMMENT '菜品口味 Search111',
  `caipin_content` text COMMENT '菜品介绍 ',
  `caipin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='菜品';

/*Data for the table `caipin` */

insert  into `caipin`(`id`,`chushi_id`,`caipin_name`,`caipin_uuid_number`,`caipin_photo`,`caipin_types`,`caipin_kouwe_types`,`caipin_content`,`caipin_delete`,`insert_time`,`create_time`) values (1,2,'菜品名称1','1677916057823','upload/caipin1.jpg',1,1,'菜品介绍1',1,'2023-03-04 15:47:37','2023-03-04 15:47:37'),(2,2,'菜品名称2','1677916057764','upload/caipin2.jpg',1,1,'菜品介绍2',1,'2023-03-04 15:47:37','2023-03-04 15:47:37'),(3,2,'菜品名称3','1677916057742','upload/caipin3.jpg',1,1,'菜品介绍3',1,'2023-03-04 15:47:37','2023-03-04 15:47:37'),(4,3,'菜品名称4','1677916057823','upload/caipin4.jpg',2,1,'菜品介绍4',1,'2023-03-04 15:47:37','2023-03-04 15:47:37'),(5,3,'菜品名称5','1677916057756','upload/caipin5.jpg',2,2,'菜品介绍5',1,'2023-03-04 15:47:37','2023-03-04 15:47:37'),(6,2,'菜品名称6','1677916057814','upload/caipin6.jpg',2,1,'菜品介绍6',1,'2023-03-04 15:47:37','2023-03-04 15:47:37'),(7,3,'菜品名称7','1677916057792','upload/caipin7.jpg',3,2,'菜品介绍7',1,'2023-03-04 15:47:37','2023-03-04 15:47:37'),(8,1,'菜品名称8','1677916057816','upload/caipin8.jpg',4,2,'菜品介绍8',1,'2023-03-04 15:47:37','2023-03-04 15:47:37'),(9,1,'菜品名称9','1677916057737','upload/caipin9.jpg',1,2,'菜品介绍9',1,'2023-03-04 15:47:37','2023-03-04 15:47:37'),(10,2,'菜品名称10','1677916057762','upload/caipin10.jpg',1,1,'菜品介绍10',1,'2023-03-04 15:47:37','2023-03-04 15:47:37'),(11,2,'菜品名称11','1677916057784','upload/caipin11.jpg',4,1,'菜品介绍11',1,'2023-03-04 15:47:37','2023-03-04 15:47:37'),(12,2,'菜品名称12','1677916057744','upload/caipin12.jpg',3,2,'菜品介绍12',1,'2023-03-04 15:47:37','2023-03-04 15:47:37'),(13,2,'菜品名称13','1677916057764','upload/caipin13.jpg',4,2,'菜品介绍13',1,'2023-03-04 15:47:37','2023-03-04 15:47:37'),(14,3,'菜品名称14','1677916057796','upload/caipin14.jpg',4,2,'菜品介绍14',1,'2023-03-04 15:47:37','2023-03-04 15:47:37'),(15,1,'111','1677917751884','/upload/1677917774502.jpg',1,2,'<p>211</p>',2,'2023-03-04 16:16:19','2023-03-04 16:16:19'),(16,1,'111','1677920239842','/upload/1677920243681.jpg',3,1,'<p>111</p>',1,'2023-03-04 16:57:33','2023-03-04 16:57:33');

/*Table structure for table `chushi` */

DROP TABLE IF EXISTS `chushi`;

CREATE TABLE `chushi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `chushi_uuid_number` varchar(200) DEFAULT NULL COMMENT '厨师信息编号',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `chushi_name` varchar(200) DEFAULT NULL COMMENT '厨师姓名 Search111 ',
  `chushi_phone` varchar(200) DEFAULT NULL COMMENT '厨师手机号',
  `chushi_id_number` varchar(200) DEFAULT NULL COMMENT '厨师身份证号',
  `chushi_photo` varchar(200) DEFAULT NULL COMMENT '厨师头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `chushi_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `chushi_file` varchar(200) DEFAULT NULL COMMENT '健康认证',
  `chushi_video` varchar(200) DEFAULT NULL COMMENT '厨艺视频',
  `chushi_content` text COMMENT '厨师信息介绍 ',
  `chushi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='厨师';

/*Data for the table `chushi` */

insert  into `chushi`(`id`,`chushi_uuid_number`,`username`,`password`,`chushi_name`,`chushi_phone`,`chushi_id_number`,`chushi_photo`,`sex_types`,`chushi_email`,`chushi_file`,`chushi_video`,`chushi_content`,`chushi_delete`,`insert_time`,`create_time`) values (1,'1677916057790','a1','123456','厨师姓名1','17703786901','410224199010102001','upload/chushi1.jpg',1,'1@qq.com','upload/file.rar','upload/video.mp4','厨师信息介绍1',1,'2023-03-04 15:47:37','2023-03-04 15:47:37'),(2,'1677916057747','a2','123456','厨师姓名2','17703786902','410224199010102002','upload/chushi2.jpg',2,'2@qq.com','upload/file.rar','upload/video.mp4','厨师信息介绍2',1,'2023-03-04 15:47:37','2023-03-04 15:47:37'),(3,'1677916057747','a3','123456','厨师姓名3','17703786903','410224199010102003','upload/chushi3.jpg',1,'3@qq.com','upload/file.rar','upload/video.mp4','厨师信息介绍3',1,'2023-03-04 15:47:37','2023-03-04 15:47:37');

/*Table structure for table `chushi_commentback` */

DROP TABLE IF EXISTS `chushi_commentback`;

CREATE TABLE `chushi_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chushi_id` int(11) DEFAULT NULL COMMENT '厨师信息',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `chushi_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='厨师预约评价';

/*Data for the table `chushi_commentback` */

insert  into `chushi_commentback`(`id`,`chushi_id`,`yonghu_id`,`chushi_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,2,3,'评价内容1','2023-03-04 15:47:37','回复信息1','2023-03-04 15:47:37','2023-03-04 15:47:37'),(2,1,1,'评价内容2','2023-03-04 15:47:37','回复信息2','2023-03-04 15:47:37','2023-03-04 15:47:37'),(3,2,2,'评价内容3','2023-03-04 15:47:37','回复信息3','2023-03-04 15:47:37','2023-03-04 15:47:37'),(4,1,2,'评价内容4','2023-03-04 15:47:37','回复信息4','2023-03-04 15:47:37','2023-03-04 15:47:37'),(5,3,1,'评价内容5','2023-03-04 15:47:37','回复信息5','2023-03-04 15:47:37','2023-03-04 15:47:37'),(6,2,2,'评价内容6','2023-03-04 15:47:37','回复信息6','2023-03-04 15:47:37','2023-03-04 15:47:37'),(7,2,2,'评价内容7','2023-03-04 15:47:37','回复信息7','2023-03-04 15:47:37','2023-03-04 15:47:37'),(8,2,2,'评价内容8','2023-03-04 15:47:37','回复信息8','2023-03-04 15:47:37','2023-03-04 15:47:37'),(9,3,2,'评价内容9','2023-03-04 15:47:37','回复信息9','2023-03-04 15:47:37','2023-03-04 15:47:37'),(10,2,1,'评价内容10','2023-03-04 15:47:37','回复信息10','2023-03-04 15:47:37','2023-03-04 15:47:37'),(11,3,1,'评价内容11','2023-03-04 15:47:37','回复信息11','2023-03-04 15:47:37','2023-03-04 15:47:37'),(12,2,2,'评价内容12','2023-03-04 15:47:37','回复信息12','2023-03-04 15:47:37','2023-03-04 15:47:37'),(13,1,3,'评价内容13','2023-03-04 15:47:37','回复信息13','2023-03-04 15:47:37','2023-03-04 15:47:37'),(14,3,1,'评价内容14','2023-03-04 15:47:37','回复信息14','2023-03-04 15:47:37','2023-03-04 15:47:37'),(15,2,1,'好','2023-03-04 15:52:55',NULL,NULL,'2023-03-04 15:52:55'),(16,1,1,'不错','2023-03-04 16:55:58','信息','2023-03-04 16:56:11','2023-03-04 16:55:58');

/*Table structure for table `chushi_order` */

DROP TABLE IF EXISTS `chushi_order`;

CREATE TABLE `chushi_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chushi_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `yuyeu_time` date DEFAULT NULL COMMENT '预约时间',
  `chushi_id` int(11) DEFAULT NULL COMMENT '厨师信息',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `chushi_order_types` int(11) DEFAULT NULL COMMENT '预约类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '预约创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='厨师预约';

/*Data for the table `chushi_order` */

insert  into `chushi_order`(`id`,`chushi_order_uuid_number`,`yuyeu_time`,`chushi_id`,`yonghu_id`,`chushi_order_types`,`insert_time`,`create_time`) values (1,'1677916273264',NULL,2,1,102,'2023-03-04 15:51:13','2023-03-04 15:51:13'),(2,'1677916308667',NULL,2,1,105,'2023-03-04 15:51:49','2023-03-04 15:51:49'),(3,'1677918601650',NULL,1,1,102,'2023-03-04 16:30:02','2023-03-04 16:30:02'),(4,'1677918616415',NULL,1,1,102,'2023-03-04 16:30:16','2023-03-04 16:30:16'),(5,'1677920104886',NULL,1,1,105,'2023-03-04 16:55:05','2023-03-04 16:55:05');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-04 15:47:22'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-04 15:47:22'),(3,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-04 15:47:22'),(4,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-04 15:47:22'),(5,'caipin_types','菜品类型',1,'菜品类型1',NULL,NULL,'2023-03-04 15:47:22'),(6,'caipin_types','菜品类型',2,'菜品类型2',NULL,NULL,'2023-03-04 15:47:22'),(7,'caipin_types','菜品类型',3,'菜品类型3',NULL,NULL,'2023-03-04 15:47:22'),(8,'caipin_types','菜品类型',4,'菜品类型4',NULL,NULL,'2023-03-04 15:47:22'),(9,'caipin_kouwe_types','菜品口味',1,'麻辣',NULL,NULL,'2023-03-04 15:47:22'),(10,'caipin_kouwe_types','菜品口味',2,'香辣',NULL,NULL,'2023-03-04 15:47:22'),(11,'chushi_order_types','订单类型',101,'已预约',NULL,NULL,'2023-03-04 15:47:22'),(12,'chushi_order_types','订单类型',102,'已取消预约',NULL,NULL,'2023-03-04 15:47:22'),(13,'chushi_order_types','订单类型',103,'已同意预约',NULL,NULL,'2023-03-04 15:47:22'),(14,'chushi_order_types','订单类型',104,'已预约完成',NULL,NULL,'2023-03-04 15:47:22'),(15,'chushi_order_types','订单类型',105,'已评价',NULL,NULL,'2023-03-04 15:47:22');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-03-04 15:47:37','公告详情1','2023-03-04 15:47:37'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-03-04 15:47:37','公告详情2','2023-03-04 15:47:37'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-03-04 15:47:37','公告详情3','2023-03-04 15:47:37'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-03-04 15:47:37','公告详情4','2023-03-04 15:47:37'),(5,'公告名称5','upload/gonggao5.jpg',2,'2023-03-04 15:47:37','公告详情5','2023-03-04 15:47:37'),(6,'公告名称6','upload/gonggao6.jpg',2,'2023-03-04 15:47:37','公告详情6','2023-03-04 15:47:37'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-03-04 15:47:37','公告详情7','2023-03-04 15:47:37'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-03-04 15:47:37','公告详情8','2023-03-04 15:47:37'),(9,'公告名称9','upload/gonggao9.jpg',2,'2023-03-04 15:47:37','公告详情9','2023-03-04 15:47:37'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-03-04 15:47:37','公告详情10','2023-03-04 15:47:37'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-03-04 15:47:37','公告详情11','2023-03-04 15:47:37'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-03-04 15:47:37','公告详情12','2023-03-04 15:47:37'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-03-04 15:47:37','公告详情13','2023-03-04 15:47:37'),(14,'公告名称14','upload/gonggao14.jpg',1,'2023-03-04 15:47:37','公告详情14','2023-03-04 15:47:37');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','cngcfk616kkb3oz5hxtqxk2bnjoiniou','2023-03-04 15:49:50','2023-03-04 18:05:42'),(2,1,'admin','users','管理员','xl30te55g9zx27r314wv9q8unsrizm80','2023-03-04 15:52:28','2023-03-04 18:00:50'),(3,1,'a1','chushi','厨师','i8zyk141cb0n1b9u4i5vybblkuhnolyc','2023-03-04 16:12:39','2023-03-04 17:57:09');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-04 15:47:22');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com','2023-03-04 15:47:37'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','2023-03-04 15:47:37'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','2023-03-04 15:47:37');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
