/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - zhihuixiaoyuan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zhihuixiaoyuan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zhihuixiaoyuan`;

/*Table structure for table `baoxiu` */

DROP TABLE IF EXISTS `baoxiu`;

CREATE TABLE `baoxiu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `sushe_id` int(11) DEFAULT NULL COMMENT '宿舍',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '报修时间 ',
  `baoxiu_name` varchar(200) DEFAULT NULL COMMENT '报修名称 Search111  ',
  `baoxiu_photo` varchar(200) DEFAULT NULL COMMENT '报修图片',
  `baoxiu_content` text COMMENT '报修内容',
  `baoxiu_types` int(11) DEFAULT NULL COMMENT '报修状态 Search111  ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='宿舍报修';

/*Data for the table `baoxiu` */

insert  into `baoxiu`(`id`,`sushe_id`,`yonghu_id`,`insert_time`,`baoxiu_name`,`baoxiu_photo`,`baoxiu_content`,`baoxiu_types`,`create_time`) values (1,1,3,'2022-03-28 10:36:31','报修名称1','http://localhost:8080/zhihuixiaoyuan/upload/yinyue1.jpg','报修内容1',3,'2022-03-28 10:36:31'),(2,2,2,'2022-03-28 10:36:31','报修名称2','http://localhost:8080/zhihuixiaoyuan/upload/yinyue2.jpg','报修内容2',3,'2022-03-28 10:36:31'),(3,3,2,'2022-03-28 10:36:31','报修名称3','http://localhost:8080/zhihuixiaoyuan/upload/yinyue3.jpg','报修内容3',2,'2022-03-28 10:36:31'),(4,4,1,'2022-03-28 10:36:31','报修名称4','http://localhost:8080/zhihuixiaoyuan/upload/yinyue4.jpg','报修内容4',1,'2022-03-28 10:36:31'),(5,5,3,'2022-03-28 10:36:31','报修名称5','http://localhost:8080/zhihuixiaoyuan/upload/yinyue5.jpg','报修内容5',4,'2022-03-28 10:36:31');

/*Table structure for table `beiwanglu` */

DROP TABLE IF EXISTS `beiwanglu`;

CREATE TABLE `beiwanglu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `beiwanglu_name` varchar(200) DEFAULT NULL COMMENT '备忘录名称 Search111  ',
  `beiwanglu_types` int(11) NOT NULL COMMENT '备忘录类型 ',
  `beiwanglu_content` text COMMENT '备忘录详情 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '记录时间 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='备忘录';

/*Data for the table `beiwanglu` */

insert  into `beiwanglu`(`id`,`yonghu_id`,`beiwanglu_name`,`beiwanglu_types`,`beiwanglu_content`,`insert_time`,`create_time`) values (1,3,'备忘录名称1',1,'备忘录详情1','2022-03-28 10:36:31','2022-03-28 10:36:31'),(2,2,'备忘录名称2',2,'备忘录详情2','2022-03-28 10:36:31','2022-03-28 10:36:31'),(3,2,'备忘录名称3',1,'备忘录详情3','2022-03-28 10:36:31','2022-03-28 10:36:31'),(4,3,'备忘录名称4',1,'备忘录详情4','2022-03-28 10:36:31','2022-03-28 10:36:31'),(5,2,'备忘录名称5',2,'备忘录详情5','2022-03-28 10:36:31','2022-03-28 10:36:31'),(6,1,'2333',2,'<p>2333423</p>','2022-03-28 13:17:04','2022-03-28 13:17:04');

/*Table structure for table `chengji` */

DROP TABLE IF EXISTS `chengji`;

CREATE TABLE `chengji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `chengji_name` varchar(200) DEFAULT NULL COMMENT '成绩名称 Search111 ',
  `chengji_chengji` decimal(10,2) DEFAULT NULL COMMENT '成绩',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='成绩';

/*Data for the table `chengji` */

insert  into `chengji`(`id`,`yonghu_id`,`kecheng_id`,`chengji_name`,`chengji_chengji`,`beizhu`,`insert_time`,`create_time`) values (1,2,1,'成绩名称1','711.37','备注1','2022-03-28 10:36:31','2022-03-28 10:36:31'),(2,2,2,'成绩名称2','718.55','备注2','2022-03-28 10:36:31','2022-03-28 10:36:31'),(3,2,3,'成绩名称3','311.41','备注3','2022-03-28 10:36:31','2022-03-28 10:36:31'),(4,3,4,'成绩名称4','39.61','备注4','2022-03-28 10:36:31','2022-03-28 10:36:31'),(5,2,2,'成绩名称5','59.50','备注5','2022-03-28 10:36:31','2022-03-28 10:36:31');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/zhihuixiaoyuan/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/zhihuixiaoyuan/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/zhihuixiaoyuan/upload/config3.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-28 10:36:20'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-28 10:36:20'),(3,'banji_types','班级',1,'班级1',NULL,NULL,'2022-03-28 10:36:20'),(4,'banji_types','班级',2,'班级2',NULL,NULL,'2022-03-28 10:36:20'),(5,'banji_types','班级',3,'班级3',NULL,NULL,'2022-03-28 10:36:20'),(6,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-03-28 10:36:20'),(7,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-03-28 10:36:20'),(8,'yinyue_types','音乐类型',1,'音乐类型1',NULL,NULL,'2022-03-28 10:36:20'),(9,'yinyue_types','音乐类型',2,'音乐类型2',NULL,NULL,'2022-03-28 10:36:20'),(10,'yinyue_types','音乐类型',3,'音乐类型3',NULL,NULL,'2022-03-28 10:36:20'),(11,'yinyue_types','音乐类型',4,'音乐类型4',NULL,NULL,'2022-03-28 10:36:20'),(12,'yinyue_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-03-28 10:36:20'),(13,'yinyue_collection_types','收藏表类型',2,'赞',NULL,NULL,'2022-03-28 10:36:20'),(14,'yinyue_collection_types','收藏表类型',3,'踩',NULL,NULL,'2022-03-28 10:36:20'),(15,'beiwanglu_types','备忘录类型',1,'备忘录类型1',NULL,NULL,'2022-03-28 10:36:20'),(16,'beiwanglu_types','备忘录类型',2,'备忘录类型2',NULL,NULL,'2022-03-28 10:36:20'),(17,'jishiben_types','记事本类型',1,'记事本类型1',NULL,NULL,'2022-03-28 10:36:20'),(18,'jishiben_types','记事本类型',2,'记事本类型2',NULL,NULL,'2022-03-28 10:36:20'),(19,'kecheng_types','课程类型',1,'课程类型1',NULL,NULL,'2022-03-28 10:36:20'),(20,'kecheng_types','课程类型',2,'课程类型2',NULL,NULL,'2022-03-28 10:36:20'),(21,'kecheng_types','课程类型',3,'课程类型3',NULL,NULL,'2022-03-28 10:36:20'),(22,'kecheng_types','课程类型',4,'课程类型4',NULL,NULL,'2022-03-28 10:36:20'),(23,'kecheng_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-03-28 10:36:20'),(24,'jisuanjizhuanyeruanjian_types','计算机专业相关的软件类型',1,'计算机专业相关的软件类型1',NULL,NULL,'2022-03-28 10:36:20'),(25,'jisuanjizhuanyeruanjian_types','计算机专业相关的软件类型',2,'计算机专业相关的软件类型2',NULL,NULL,'2022-03-28 10:36:20'),(26,'jisuanjizhuanyeruanjian_types','计算机专业相关的软件类型',3,'计算机专业相关的软件类型3',NULL,NULL,'2022-03-28 10:36:20'),(27,'jisuanjizhuanyeruanjian_types','计算机专业相关的软件类型',4,'计算机专业相关的软件类型4',NULL,NULL,'2022-03-28 10:36:20'),(28,'jisuanjizhuanyeruanjian_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-03-28 10:36:20'),(29,'baoxiu_types','报修状态',1,'已提交',NULL,NULL,'2022-03-28 10:36:20'),(30,'baoxiu_types','报修状态',2,'已接取',NULL,NULL,'2022-03-28 10:36:20'),(31,'baoxiu_types','报修状态',3,'在维修',NULL,NULL,'2022-03-28 10:36:20'),(32,'guiqin_types','归寝状态',1,'正常',NULL,NULL,'2022-03-28 10:36:20'),(33,'guiqin_types','归寝状态',2,'晚归',NULL,NULL,'2022-03-28 10:36:20'),(34,'guiqin_types','归寝状态',3,'未归',NULL,NULL,'2022-03-28 10:36:20'),(35,'baoxiu_types','报修状态',4,'已维修',NULL,'','2022-03-28 10:36:20'),(36,'jisuanjizhuanyeruanjian_types','计算机专业相关的软件类型',5,'计算机专业相关的软件类型5',NULL,'','2022-03-28 13:10:47');

/*Table structure for table `jishiben` */

DROP TABLE IF EXISTS `jishiben`;

CREATE TABLE `jishiben` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jishiben_name` varchar(200) DEFAULT NULL COMMENT '记事本名称 Search111  ',
  `jishiben_types` int(11) NOT NULL COMMENT '记事本类型 ',
  `jishiben_content` text COMMENT '记事本详情 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '记录时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='记事本';

/*Data for the table `jishiben` */

insert  into `jishiben`(`id`,`yonghu_id`,`jishiben_name`,`jishiben_types`,`jishiben_content`,`insert_time`,`create_time`) values (1,1,'记事本名称1',2,'记事本详情1','2022-03-28 10:36:31','2022-03-28 10:36:31'),(2,3,'记事本名称2',1,'记事本详情2','2022-03-28 10:36:31','2022-03-28 10:36:31'),(3,2,'记事本名称3',2,'记事本详情3','2022-03-28 10:36:31','2022-03-28 10:36:31'),(4,1,'记事本名称4',1,'记事本详情4','2022-03-28 10:36:31','2022-03-28 10:36:31'),(5,2,'记事本名称5',2,'记事本详情5','2022-03-28 10:36:31','2022-03-28 10:36:31');

/*Table structure for table `jisuanjizhuanyeruanjian` */

DROP TABLE IF EXISTS `jisuanjizhuanyeruanjian`;

CREATE TABLE `jisuanjizhuanyeruanjian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `jisuanjizhuanyeruanjian_uuid_number` varchar(200) DEFAULT NULL COMMENT '软件编号  Search111 ',
  `jisuanjizhuanyeruanjian_name` varchar(200) DEFAULT NULL COMMENT '软件名称  Search111 ',
  `jisuanjizhuanyeruanjian_photo` varchar(200) DEFAULT NULL COMMENT '软件照片',
  `jisuanjizhuanyeruanjian_video` varchar(200) DEFAULT NULL COMMENT '安装教程',
  `jisuanjizhuanyeruanjian_file` varchar(200) DEFAULT NULL COMMENT '安装包',
  `jisuanjizhuanyeruanjian_types` int(11) DEFAULT NULL COMMENT '软件类型 Search111',
  `jisuanjizhuanyeruanjian_content` text COMMENT '软件介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `jisuanjizhuanyeruanjian_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='计算机专业相关的软件';

/*Data for the table `jisuanjizhuanyeruanjian` */

insert  into `jisuanjizhuanyeruanjian`(`id`,`laoshi_id`,`jisuanjizhuanyeruanjian_uuid_number`,`jisuanjizhuanyeruanjian_name`,`jisuanjizhuanyeruanjian_photo`,`jisuanjizhuanyeruanjian_video`,`jisuanjizhuanyeruanjian_file`,`jisuanjizhuanyeruanjian_types`,`jisuanjizhuanyeruanjian_content`,`shangxia_types`,`jisuanjizhuanyeruanjian_delete`,`create_time`) values (1,3,'16484349912050','软件名称1','http://localhost:8080/zhihuixiaoyuan/upload/yinyue1.jpg','http://localhost:8080/zhihuixiaoyuan/upload/video.mp4','http://localhost:8080/zhihuixiaoyuan/upload/file.rar',3,'软件介绍1',1,1,'2022-03-28 10:36:31'),(2,2,'164843499120515','软件名称2','http://localhost:8080/zhihuixiaoyuan/upload/yinyue2.jpg','http://localhost:8080/zhihuixiaoyuan/upload/video.mp4','http://localhost:8080/zhihuixiaoyuan/upload/file.rar',3,'软件介绍2',1,1,'2022-03-28 10:36:31'),(3,2,'164843499120515','软件名称3','http://localhost:8080/zhihuixiaoyuan/upload/yinyue3.jpg','http://localhost:8080/zhihuixiaoyuan/upload/video.mp4','http://localhost:8080/zhihuixiaoyuan/upload/file.rar',2,'软件介绍3',1,1,'2022-03-28 10:36:31'),(4,2,'164843499120513','软件名称4','http://localhost:8080/zhihuixiaoyuan/upload/yinyue4.jpg','http://localhost:8080/zhihuixiaoyuan/upload/video.mp4','http://localhost:8080/zhihuixiaoyuan/upload/file.rar',4,'软件介绍4',1,1,'2022-03-28 10:36:31'),(5,2,'16484349912057','软件名称5','http://localhost:8080/zhihuixiaoyuan/upload/yinyue5.jpg','http://localhost:8080/zhihuixiaoyuan/upload/video.mp4','http://localhost:8080/zhihuixiaoyuan/upload/file.rar',4,'软件介绍5',1,1,'2022-03-28 10:36:31');

/*Table structure for table `jisuanjizhuanyeruanjian_collection` */

DROP TABLE IF EXISTS `jisuanjizhuanyeruanjian_collection`;

CREATE TABLE `jisuanjizhuanyeruanjian_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jisuanjizhuanyeruanjian_id` int(11) DEFAULT NULL COMMENT '计算机专业相关的软件',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jisuanjizhuanyeruanjian_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='计算机专业相关的软件收藏';

/*Data for the table `jisuanjizhuanyeruanjian_collection` */

insert  into `jisuanjizhuanyeruanjian_collection`(`id`,`jisuanjizhuanyeruanjian_id`,`yonghu_id`,`jisuanjizhuanyeruanjian_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2022-03-28 10:36:31','2022-03-28 10:36:31'),(2,2,1,2,'2022-03-28 10:36:31','2022-03-28 10:36:31'),(3,3,2,1,'2022-03-28 10:36:31','2022-03-28 10:36:31'),(4,4,3,1,'2022-03-28 10:36:31','2022-03-28 10:36:31'),(6,2,2,1,'2022-03-28 13:01:52','2022-03-28 13:01:52');

/*Table structure for table `jisuanjizhuanyeruanjian_liuyan` */

DROP TABLE IF EXISTS `jisuanjizhuanyeruanjian_liuyan`;

CREATE TABLE `jisuanjizhuanyeruanjian_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jisuanjizhuanyeruanjian_id` int(11) DEFAULT NULL COMMENT '计算机专业相关的软件',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jisuanjizhuanyeruanjian_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='计算机专业相关的软件留言';

/*Data for the table `jisuanjizhuanyeruanjian_liuyan` */

insert  into `jisuanjizhuanyeruanjian_liuyan`(`id`,`jisuanjizhuanyeruanjian_id`,`yonghu_id`,`jisuanjizhuanyeruanjian_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'留言内容1','2022-03-28 10:36:31','回复信息1','2022-03-28 10:36:31','2022-03-28 10:36:31'),(2,2,2,'留言内容2','2022-03-28 10:36:31','回复信息2','2022-03-28 10:36:31','2022-03-28 10:36:31'),(3,3,3,'留言内容3','2022-03-28 10:36:31','回复信息3','2022-03-28 10:36:31','2022-03-28 10:36:31'),(4,4,3,'留言内容4','2022-03-28 10:36:31','回复信息4','2022-03-28 10:36:31','2022-03-28 10:36:31'),(5,5,2,'留言内容5','2022-03-28 10:36:31','回复信息5','2022-03-28 10:36:31','2022-03-28 10:36:31'),(6,5,2,'33','2022-03-28 13:09:04','333','2022-03-28 13:14:52','2022-03-28 13:09:04');

/*Table structure for table `kecheng` */

DROP TABLE IF EXISTS `kecheng`;

CREATE TABLE `kecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `kecheng_uuid_number` varchar(200) DEFAULT NULL COMMENT '课程编号  Search111 ',
  `kecheng_name` varchar(200) DEFAULT NULL COMMENT '课程名称  Search111 ',
  `kecheng_photo` varchar(200) DEFAULT NULL COMMENT '课程照片',
  `kecheng_video` varchar(200) DEFAULT NULL COMMENT '课程视频',
  `kecheng_file` varchar(200) DEFAULT NULL COMMENT '课件',
  `kecheng_types` int(11) DEFAULT NULL COMMENT '课程类型 Search111',
  `kecheng_clicknum` int(11) DEFAULT NULL COMMENT '课程热度 ',
  `kecheng_content` text COMMENT '课程介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `kecheng_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='课程';

/*Data for the table `kecheng` */

insert  into `kecheng`(`id`,`laoshi_id`,`kecheng_uuid_number`,`kecheng_name`,`kecheng_photo`,`kecheng_video`,`kecheng_file`,`kecheng_types`,`kecheng_clicknum`,`kecheng_content`,`shangxia_types`,`kecheng_delete`,`create_time`) values (1,2,'16484349912135','课程名称1','http://localhost:8080/zhihuixiaoyuan/upload/kecheng1.jpg','http://localhost:8080/zhihuixiaoyuan/upload/video.mp4','http://localhost:8080/zhihuixiaoyuan/upload/file.rar',1,30,'课程介绍1',1,1,'2022-03-28 10:36:31'),(2,2,'164843499121316','课程名称2','http://localhost:8080/zhihuixiaoyuan/upload/kecheng2.jpg','http://localhost:8080/zhihuixiaoyuan/upload/video.mp4','http://localhost:8080/zhihuixiaoyuan/upload/file.rar',3,359,'课程介绍2',1,1,'2022-03-28 10:36:31'),(3,2,'164843499121317','课程名称3','http://localhost:8080/zhihuixiaoyuan/upload/kecheng3.jpg','http://localhost:8080/zhihuixiaoyuan/upload/video.mp4','http://localhost:8080/zhihuixiaoyuan/upload/file.rar',4,378,'课程介绍3',1,1,'2022-03-28 10:36:31'),(4,3,'164843499121316','课程名称4','http://localhost:8080/zhihuixiaoyuan/upload/kecheng4.jpg','http://localhost:8080/zhihuixiaoyuan/upload/video.mp4','http://localhost:8080/zhihuixiaoyuan/upload/file.rar',2,461,'课程介绍4',1,1,'2022-03-28 10:36:31'),(5,2,'16484349912136','课程名称5','http://localhost:8080/zhihuixiaoyuan/upload/kecheng5.jpg','http://localhost:8080/zhihuixiaoyuan/upload/video.mp4','http://localhost:8080/zhihuixiaoyuan/upload/file.rar',1,261,'课程介绍5',1,1,'2022-03-28 10:36:31');

/*Table structure for table `kecheng_collection` */

DROP TABLE IF EXISTS `kecheng_collection`;

CREATE TABLE `kecheng_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `kecheng_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='课程收藏';

/*Data for the table `kecheng_collection` */

insert  into `kecheng_collection`(`id`,`kecheng_id`,`yonghu_id`,`kecheng_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2022-03-28 10:36:31','2022-03-28 10:36:31'),(2,2,2,1,'2022-03-28 10:36:31','2022-03-28 10:36:31'),(3,3,3,1,'2022-03-28 10:36:31','2022-03-28 10:36:31'),(4,4,3,1,'2022-03-28 10:36:31','2022-03-28 10:36:31'),(5,5,1,1,'2022-03-28 10:36:31','2022-03-28 10:36:31');

/*Table structure for table `kecheng_liuyan` */

DROP TABLE IF EXISTS `kecheng_liuyan`;

CREATE TABLE `kecheng_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `kecheng_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='课程留言';

/*Data for the table `kecheng_liuyan` */

insert  into `kecheng_liuyan`(`id`,`kecheng_id`,`yonghu_id`,`kecheng_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'留言内容1','2022-03-28 10:36:31','回复信息1','2022-03-28 10:36:31','2022-03-28 10:36:31'),(2,2,1,'留言内容2','2022-03-28 10:36:31','回复信息2','2022-03-28 10:36:31','2022-03-28 10:36:31'),(3,3,3,'留言内容3','2022-03-28 10:36:31','回复信息3','2022-03-28 10:36:31','2022-03-28 10:36:31'),(4,4,2,'留言内容4','2022-03-28 10:36:31','回复信息4','2022-03-28 10:36:31','2022-03-28 10:36:31'),(5,5,2,'留言内容5','2022-03-28 10:36:31','回复信息5','2022-03-28 10:36:31','2022-03-28 10:36:31');

/*Table structure for table `laoshi` */

DROP TABLE IF EXISTS `laoshi`;

CREATE TABLE `laoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `laoshi_name` varchar(200) DEFAULT NULL COMMENT '老师姓名 Search111 ',
  `laoshi_phone` varchar(200) DEFAULT NULL COMMENT '老师手机号',
  `laoshi_photo` varchar(200) DEFAULT NULL COMMENT '老师头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `laoshi_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='老师';

/*Data for the table `laoshi` */

insert  into `laoshi`(`id`,`username`,`password`,`laoshi_name`,`laoshi_phone`,`laoshi_photo`,`sex_types`,`laoshi_email`,`create_time`) values (1,'a1','123456','老师姓名1','17703786901','http://localhost:8080/zhihuixiaoyuan/upload/laoshi1.jpg',2,'1@qq.com','2022-03-28 10:36:31'),(2,'a2','123456','老师姓名2','17703786902','http://localhost:8080/zhihuixiaoyuan/upload/laoshi2.jpg',1,'2@qq.com','2022-03-28 10:36:31'),(3,'a3','123456','老师姓名3','17703786903','http://localhost:8080/zhihuixiaoyuan/upload/laoshi3.jpg',1,'3@qq.com','2022-03-28 10:36:31');

/*Table structure for table `sushe` */

DROP TABLE IF EXISTS `sushe`;

CREATE TABLE `sushe` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `sushe_name` varchar(200) DEFAULT NULL COMMENT '宿舍名称 Search111  ',
  `sushe_address` varchar(200) DEFAULT NULL COMMENT '宿舍地址 Search111  ',
  `sushe_content` text COMMENT '宿舍详情 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='宿舍';

/*Data for the table `sushe` */

insert  into `sushe`(`id`,`sushe_name`,`sushe_address`,`sushe_content`,`insert_time`,`create_time`) values (1,'宿舍名称1','宿舍地址1','宿舍详情1','2022-03-28 10:36:31','2022-03-28 10:36:31'),(2,'宿舍名称2','宿舍地址2','宿舍详情2','2022-03-28 10:36:31','2022-03-28 10:36:31'),(3,'宿舍名称3','宿舍地址3','宿舍详情3','2022-03-28 10:36:31','2022-03-28 10:36:31'),(4,'宿舍名称4','宿舍地址4','宿舍详情4','2022-03-28 10:36:31','2022-03-28 10:36:31'),(5,'宿舍名称5','宿舍地址5','宿舍详情5','2022-03-28 10:36:31','2022-03-28 10:36:31');

/*Table structure for table `sushe_guiqin` */

DROP TABLE IF EXISTS `sushe_guiqin`;

CREATE TABLE `sushe_guiqin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `guiqin_types` int(11) DEFAULT NULL COMMENT '归寝状态 Search111  ',
  `guiqin_time` date DEFAULT NULL COMMENT '归寝日期',
  `sushe_guiqin_content` text COMMENT '归寝详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='宿舍归寝';

/*Data for the table `sushe_guiqin` */

insert  into `sushe_guiqin`(`id`,`yonghu_id`,`guiqin_types`,`guiqin_time`,`sushe_guiqin_content`,`insert_time`,`create_time`) values (1,1,2,'2022-03-28','归寝详情1','2022-03-28 10:36:31','2022-03-28 10:36:31'),(2,1,3,'2022-03-28','归寝详情2','2022-03-28 10:36:31','2022-03-28 10:36:31'),(3,3,1,'2022-03-28','归寝详情3','2022-03-28 10:36:31','2022-03-28 10:36:31'),(4,1,1,'2022-03-28','归寝详情4','2022-03-28 10:36:31','2022-03-28 10:36:31'),(5,1,3,'2022-03-28','归寝详情5','2022-03-28 10:36:31','2022-03-28 10:36:31'),(6,3,1,'2022-03-27','<p>正常</p>','2022-03-28 13:15:35','2022-03-28 13:15:35');

/*Table structure for table `sushe_renruan` */

DROP TABLE IF EXISTS `sushe_renruan`;

CREATE TABLE `sushe_renruan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `sushe_id` int(11) DEFAULT NULL COMMENT '宿舍',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='宿舍人员';

/*Data for the table `sushe_renruan` */

insert  into `sushe_renruan`(`id`,`sushe_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,1,1,'2022-03-28 10:36:31','2022-03-28 10:36:31'),(2,2,1,'2022-03-28 10:36:31','2022-03-28 10:36:31'),(3,3,3,'2022-03-28 10:36:31','2022-03-28 10:36:31'),(4,4,2,'2022-03-28 10:36:31','2022-03-28 10:36:31'),(5,5,1,'2022-03-28 10:36:31','2022-03-28 10:36:31');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','txrm62pxwayc9qz3mev4j66dgya1ri5p','2022-03-28 09:44:56','2022-03-28 14:19:47'),(2,1,'a1','laoshi','老师','nqlxvojm535ptldyv0ds0d6wzaa8kez9','2022-03-28 11:26:27','2022-03-28 14:12:42'),(3,2,'a2','laoshi','老师','vl6yq85i2km4m77wey6r278ej1qp9oxs','2022-03-28 11:27:03','2022-03-28 14:12:52'),(4,2,'a2','yonghu','用户','rwhx6ci781fd2o0aptz0s6sungw7spun','2022-03-28 13:08:49','2022-03-28 14:17:18'),(5,1,'a1','yonghu','用户','iyb2fyrxi7w4p64jqy03ifov1teirmc2','2022-03-28 13:16:49','2022-03-28 14:16:50');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2022-05-02 14:51:13');

/*Table structure for table `yinyue` */

DROP TABLE IF EXISTS `yinyue`;

CREATE TABLE `yinyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yinyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '音乐编号  Search111 ',
  `yinyue_name` varchar(200) DEFAULT NULL COMMENT '音乐名称  Search111 ',
  `yinyue_photo` varchar(200) DEFAULT NULL COMMENT '音乐照片',
  `yinyue_music` varchar(200) DEFAULT NULL COMMENT '音乐',
  `yinyue_types` int(11) DEFAULT NULL COMMENT '音乐类型 Search111',
  `yinyue_clicknum` int(11) DEFAULT NULL COMMENT '热度 ',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `yinyue_content` text COMMENT '音乐详情 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `yinyue_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`,`create_time`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='音乐';

/*Data for the table `yinyue` */

insert  into `yinyue`(`id`,`yinyue_uuid_number`,`yinyue_name`,`yinyue_photo`,`yinyue_music`,`yinyue_types`,`yinyue_clicknum`,`zan_number`,`cai_number`,`yinyue_content`,`shangxia_types`,`yinyue_delete`,`create_time`) values (1,'16484349912343','音乐名称1','http://localhost:8080/zhihuixiaoyuan/upload/yinyue1.jpg','http://localhost:8080/zhihuixiaoyuan/upload/music.mp3',3,254,79,258,'音乐详情1',1,1,'2022-03-28 11:49:34'),(2,'164843499123414','音乐名称2','http://localhost:8080/zhihuixiaoyuan/upload/yinyue2.jpg','http://localhost:8080/zhihuixiaoyuan/upload/music.mp3',3,315,423,255,'音乐详情2',1,1,'2022-03-28 11:49:38'),(3,'16484349912344','音乐名称3','http://localhost:8080/zhihuixiaoyuan/upload/yinyue3.jpg','http://localhost:8080/zhihuixiaoyuan/upload/music.mp3',3,301,87,422,'音乐详情3',1,1,'2022-03-28 11:49:38'),(4,'16484349912345','音乐名称4','http://localhost:8080/zhihuixiaoyuan/upload/yinyue4.jpg','http://localhost:8080/zhihuixiaoyuan/upload/music.mp3',3,345,110,163,'音乐详情4',1,1,'2022-03-28 11:49:38'),(5,'164843499123417','音乐名称5','http://localhost:8080/zhihuixiaoyuan/upload/yinyue5.jpg','http://localhost:8080/zhihuixiaoyuan/upload/1648444334879.mp3',3,363,240,248,'<p>音乐详情51111</p>',1,1,'2022-03-28 11:49:38');

/*Table structure for table `yinyue_collection` */

DROP TABLE IF EXISTS `yinyue_collection`;

CREATE TABLE `yinyue_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yinyue_id` int(11) DEFAULT NULL COMMENT '音乐',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yinyue_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='音乐收藏';

/*Data for the table `yinyue_collection` */

insert  into `yinyue_collection`(`id`,`yinyue_id`,`yonghu_id`,`yinyue_collection_types`,`insert_time`,`create_time`) values (2,2,3,1,'2022-03-28 10:36:31','2022-03-28 10:36:31'),(3,3,1,1,'2022-03-28 10:36:31','2022-03-28 10:36:31'),(4,4,1,1,'2022-03-28 10:36:31','2022-03-28 10:36:31'),(5,5,2,1,'2022-03-28 10:36:31','2022-03-28 10:36:31'),(6,5,2,2,'2022-03-28 13:01:15','2022-03-28 13:01:15');

/*Table structure for table `yinyue_liuyan` */

DROP TABLE IF EXISTS `yinyue_liuyan`;

CREATE TABLE `yinyue_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yinyue_id` int(11) DEFAULT NULL COMMENT '音乐',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yinyue_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='音乐留言';

/*Data for the table `yinyue_liuyan` */

insert  into `yinyue_liuyan`(`id`,`yinyue_id`,`yonghu_id`,`yinyue_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'留言内容1','2022-03-28 10:36:31','回复信息1','2022-03-28 10:36:31','2022-03-28 10:36:31'),(2,2,3,'留言内容2','2022-03-28 10:36:31','回复信息2','2022-03-28 10:36:31','2022-03-28 10:36:31'),(3,3,1,'留言内容3','2022-03-28 10:36:31','回复信息3','2022-03-28 10:36:31','2022-03-28 10:36:31'),(4,4,1,'留言内容4','2022-03-28 10:36:31','回复信息4','2022-03-28 10:36:31','2022-03-28 10:36:31'),(5,5,3,'留言内容5','2022-03-28 10:36:31','回复信息5','2022-03-28 10:36:31','2022-03-28 10:36:31'),(6,5,2,'0000','2022-03-28 13:01:18',NULL,NULL,'2022-03-28 13:01:18'),(7,4,2,'0...','2022-03-28 13:01:37',NULL,NULL,'2022-03-28 13:01:37');

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
  `banji_types` int(11) DEFAULT NULL COMMENT '班级',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`banji_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/zhihuixiaoyuan/upload/yonghu1.jpg',2,2,'1@qq.com','2022-03-28 10:36:31'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/zhihuixiaoyuan/upload/yonghu2.jpg',1,2,'2@qq.com','2022-03-28 10:36:31'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/zhihuixiaoyuan/upload/yonghu3.jpg',2,3,'3@qq.com','2022-03-28 10:36:31');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
