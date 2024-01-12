/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmiwj5m
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmiwj5m` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmiwj5m`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmiwj5m/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmiwj5m/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmiwj5m/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `dakajilu` */

DROP TABLE IF EXISTS `dakajilu`;

CREATE TABLE `dakajilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dakabianhao` varchar(200) DEFAULT NULL COMMENT '打卡编号',
  `shijian` varchar(200) NOT NULL COMMENT '时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `dakarenshu` int(11) DEFAULT NULL COMMENT '打卡人数',
  `weidakarenshu` int(11) DEFAULT NULL COMMENT '未打卡人数',
  `beizhu` longtext COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dakabianhao` (`dakabianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614735141129 DEFAULT CHARSET=utf8 COMMENT='打卡记录';

/*Data for the table `dakajilu` */

insert  into `dakajilu`(`id`,`addtime`,`dakabianhao`,`shijian`,`jiaoshigonghao`,`jiaoshixingming`,`dakarenshu`,`weidakarenshu`,`beizhu`,`userid`) values (81,'2021-03-02 11:59:18','打卡编号1','时间1','教师工号1','教师姓名1',1,1,'备注1',1),(82,'2021-03-02 11:59:18','打卡编号2','时间2','教师工号2','教师姓名2',2,2,'备注2',2),(83,'2021-03-02 11:59:18','打卡编号3','时间3','教师工号3','教师姓名3',3,3,'备注3',3),(84,'2021-03-02 11:59:18','打卡编号4','时间4','教师工号4','教师姓名4',4,4,'备注4',4),(85,'2021-03-02 11:59:18','打卡编号5','时间5','教师工号5','教师姓名5',5,5,'备注5',5),(86,'2021-03-02 11:59:18','打卡编号6','时间6','教师工号6','教师姓名6',6,6,'备注6',6),(1614735141128,'2021-03-03 09:32:20','1614735139581','2021-10','1','李',11,11,'11',1614697112449);

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiaoshiyouxiang` varchar(200) DEFAULT NULL COMMENT '教师邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614697112450 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhaopian`,`zhicheng`,`lianxidianhua`,`jiaoshiyouxiang`) values (21,'2021-03-02 11:59:17','教师1','123456','教师姓名1','男','http://localhost:8080/ssmiwj5m/upload/jiaoshi_zhaopian1.jpg','高级讲师','13823888881','773890001@qq.com'),(22,'2021-03-02 11:59:17','教师2','123456','教师姓名2','男','http://localhost:8080/ssmiwj5m/upload/jiaoshi_zhaopian2.jpg','高级讲师','13823888882','773890002@qq.com'),(23,'2021-03-02 11:59:17','教师3','123456','教师姓名3','男','http://localhost:8080/ssmiwj5m/upload/jiaoshi_zhaopian3.jpg','高级讲师','13823888883','773890003@qq.com'),(24,'2021-03-02 11:59:17','教师4','123456','教师姓名4','男','http://localhost:8080/ssmiwj5m/upload/jiaoshi_zhaopian4.jpg','高级讲师','13823888884','773890004@qq.com'),(25,'2021-03-02 11:59:17','教师5','123456','教师姓名5','男','http://localhost:8080/ssmiwj5m/upload/jiaoshi_zhaopian5.jpg','高级讲师','13823888885','773890005@qq.com'),(26,'2021-03-02 11:59:17','教师6','123456','教师姓名6','男','http://localhost:8080/ssmiwj5m/upload/jiaoshi_zhaopian6.jpg','高级讲师','13823888886','773890006@qq.com'),(1614697112449,'2021-03-02 22:58:32','1','1','李','女','http://localhost:8080/ssmiwj5m/upload/1614697085657.png','高级讲师','12345678901','11234445@qq.com');

/*Table structure for table `shixigonggao` */

DROP TABLE IF EXISTS `shixigonggao`;

CREATE TABLE `shixigonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) DEFAULT NULL COMMENT '公告标题',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614697171410 DEFAULT CHARSET=utf8 COMMENT='实习公告';

/*Data for the table `shixigonggao` */

insert  into `shixigonggao`(`id`,`addtime`,`gonggaobiaoti`,`gonggaoneirong`,`fabushijian`,`faburen`,`fengmian`) values (31,'2021-03-02 11:59:18','公告标题1','公告内容1','2021-03-02','发布人1','http://localhost:8080/ssmiwj5m/upload/shixigonggao_fengmian1.jpg'),(32,'2021-03-02 11:59:18','公告标题2','公告内容2','2021-03-02','发布人2','http://localhost:8080/ssmiwj5m/upload/shixigonggao_fengmian2.jpg'),(33,'2021-03-02 11:59:18','公告标题3','公告内容3','2021-03-02','发布人3','http://localhost:8080/ssmiwj5m/upload/shixigonggao_fengmian3.jpg'),(34,'2021-03-02 11:59:18','公告标题4','公告内容4','2021-03-02','发布人4','http://localhost:8080/ssmiwj5m/upload/shixigonggao_fengmian4.jpg'),(35,'2021-03-02 11:59:18','公告标题5','公告内容5','2021-03-02','发布人5','http://localhost:8080/ssmiwj5m/upload/shixigonggao_fengmian5.jpg'),(36,'2021-03-02 11:59:18','公告标题6','公告内容6','2021-03-02','发布人6','http://localhost:8080/ssmiwj5m/upload/shixigonggao_fengmian6.jpg'),(1614697171409,'2021-03-02 22:59:30','爱与教育','<h2>发扬爱与教育</h2>','2021-03-09','李','http://localhost:8080/ssmiwj5m/upload/1614697147792.jpg');

/*Table structure for table `shixiriji` */

DROP TABLE IF EXISTS `shixiriji`;

CREATE TABLE `shixiriji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `rijibianhao` varchar(200) DEFAULT NULL COMMENT '日记编号',
  `tianjiashijian` varchar(200) DEFAULT NULL COMMENT '添加时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `rijibiaoti` varchar(200) DEFAULT NULL COMMENT '日记标题',
  `jinritihui` longtext COMMENT '今日体会',
  `jinrishouhuo` longtext COMMENT '今日收获',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rijibianhao` (`rijibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614697820233 DEFAULT CHARSET=utf8 COMMENT='实习日记';

/*Data for the table `shixiriji` */

insert  into `shixiriji`(`id`,`addtime`,`rijibianhao`,`tianjiashijian`,`xuehao`,`xueshengxingming`,`rijibiaoti`,`jinritihui`,`jinrishouhuo`,`userid`) values (92,'2021-03-02 11:59:18','日记编号2','添加时间2','学号2','学生姓名2','日记标题2','今日体会2','今日收获2',2),(93,'2021-03-02 11:59:18','日记编号3','添加时间3','学号3','学生姓名3','日记标题3','今日体会3','今日收获3',3),(94,'2021-03-02 11:59:18','日记编号4','添加时间4','学号4','学生姓名4','日记标题4','今日体会4','今日收获4',4),(95,'2021-03-02 11:59:18','日记编号5','添加时间5','学号5','学生姓名5','日记标题5','今日体会5','今日收获5',5),(96,'2021-03-02 11:59:18','日记编号6','添加时间6','学号6','学生姓名6','日记标题6','今日体会6','今日收获6',6),(1614697820232,'2021-03-02 23:10:19','1614697785143','2021-6-13','1','刘','护理','照顾病人好累','开心',1614697059979);

/*Table structure for table `shixixinxi` */

DROP TABLE IF EXISTS `shixixinxi`;

CREATE TABLE `shixixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `danweimingcheng` varchar(200) DEFAULT NULL COMMENT '单位名称',
  `danweidizhi` varchar(200) DEFAULT NULL COMMENT '单位地址',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `gangwei` varchar(200) DEFAULT NULL COMMENT '岗位',
  `zhidaoren` varchar(200) DEFAULT NULL COMMENT '指导人',
  `shixishijian` date DEFAULT NULL COMMENT '实习时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614697738557 DEFAULT CHARSET=utf8 COMMENT='实习信息';

/*Data for the table `shixixinxi` */

insert  into `shixixinxi`(`id`,`addtime`,`xuehao`,`xueshengxingming`,`zhuanye`,`banji`,`shoujihao`,`jiaoshigonghao`,`jiaoshixingming`,`danweimingcheng`,`danweidizhi`,`lianxidianhua`,`gangwei`,`zhidaoren`,`shixishijian`,`sfsh`,`shhf`,`userid`) values (61,'2021-03-02 11:59:18','学号1','学生姓名1','专业1','班级1','手机号1','教师工号1','教师姓名1','单位名称1','单位地址1','联系电话1','岗位1','指导人1','2021-03-02','是','',1),(62,'2021-03-02 11:59:18','学号2','学生姓名2','专业2','班级2','手机号2','教师工号2','教师姓名2','单位名称2','单位地址2','联系电话2','岗位2','指导人2','2021-03-02','是','',2),(63,'2021-03-02 11:59:18','学号3','学生姓名3','专业3','班级3','手机号3','教师工号3','教师姓名3','单位名称3','单位地址3','联系电话3','岗位3','指导人3','2021-03-02','是','',3),(64,'2021-03-02 11:59:18','学号4','学生姓名4','专业4','班级4','手机号4','教师工号4','教师姓名4','单位名称4','单位地址4','联系电话4','岗位4','指导人4','2021-03-02','是','',4),(65,'2021-03-02 11:59:18','学号5','学生姓名5','专业5','班级5','手机号5','教师工号5','教师姓名5','单位名称5','单位地址5','联系电话5','岗位5','指导人5','2021-03-02','是','',5),(66,'2021-03-02 11:59:18','学号6','学生姓名6','专业6','班级6','手机号6','教师工号6','教师姓名6','单位名称6','单位地址6','联系电话6','岗位6','指导人6','2021-03-02','是','',6),(1614697738556,'2021-03-02 23:08:58','1','刘','护士','2','12345678901','1','2','中大医院','广州','12345678901','护理','李师傅','2021-04-02','是','ok',1614697059979);

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','yzg37mxm6qdko42h89lbr6yfvbqs04ic','2021-03-02 15:34:55','2021-03-03 00:05:00'),(2,1614697059979,'1','xuesheng','学生','y7s43n6pqj9enbuqbmpk8baco5p4j6xu','2021-03-02 23:04:20','2021-03-03 00:07:36'),(3,1614697112449,'1','jiaoshi','教师','yrai4gqmf713045hja55rrnoipmrl9kk','2021-03-02 23:39:35','2021-03-03 10:31:53');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-02 11:59:18');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614697059980 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`xueyuan`,`zhuanye`,`banji`,`shoujihao`,`zhaopian`,`jiaoshigonghao`,`jiaoshixingming`) values (11,'2021-03-02 11:59:17','学生1','123456','学生姓名1','男','学院1','专业1','班级1','13823888881','http://localhost:8080/ssmiwj5m/upload/xuesheng_zhaopian1.jpg','教师工号1','教师姓名1'),(12,'2021-03-02 11:59:17','学生2','123456','学生姓名2','男','学院2','专业2','班级2','13823888882','http://localhost:8080/ssmiwj5m/upload/xuesheng_zhaopian2.jpg','教师工号2','教师姓名2'),(13,'2021-03-02 11:59:17','学生3','123456','学生姓名3','男','学院3','专业3','班级3','13823888883','http://localhost:8080/ssmiwj5m/upload/xuesheng_zhaopian3.jpg','教师工号3','教师姓名3'),(14,'2021-03-02 11:59:17','学生4','123456','学生姓名4','男','学院4','专业4','班级4','13823888884','http://localhost:8080/ssmiwj5m/upload/xuesheng_zhaopian4.jpg','教师工号4','教师姓名4'),(15,'2021-03-02 11:59:17','学生5','123456','学生姓名5','男','学院5','专业5','班级5','13823888885','http://localhost:8080/ssmiwj5m/upload/xuesheng_zhaopian5.jpg','教师工号5','教师姓名5'),(16,'2021-03-02 11:59:17','学生6','123456','学生姓名6','男','学院6','专业6','班级6','13823888886','http://localhost:8080/ssmiwj5m/upload/xuesheng_zhaopian6.jpg','教师工号6','教师姓名6'),(1614697059979,'2021-03-02 22:57:39','1','1','刘','男','护理学院','护士','2','12345678901','http://localhost:8080/ssmiwj5m/upload/1614697844954.jpg','1','李');

/*Table structure for table `xueshengdaka` */

DROP TABLE IF EXISTS `xueshengdaka`;

CREATE TABLE `xueshengdaka` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `dakashijian` datetime DEFAULT NULL COMMENT '打卡时间',
  `dakatupian` varchar(200) DEFAULT NULL COMMENT '打卡图片',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614697774329 DEFAULT CHARSET=utf8 COMMENT='学生打卡';

/*Data for the table `xueshengdaka` */

insert  into `xueshengdaka`(`id`,`addtime`,`xuehao`,`xueshengxingming`,`jiaoshigonghao`,`jiaoshixingming`,`dakashijian`,`dakatupian`,`beizhu`,`userid`) values (71,'2021-03-02 11:59:18','学号1','学生姓名1','教师工号1','教师姓名1','2021-03-02 11:59:18','http://localhost:8080/ssmiwj5m/upload/xueshengdaka_dakatupian1.jpg','备注1',1),(72,'2021-03-02 11:59:18','学号2','学生姓名2','教师工号2','教师姓名2','2021-03-02 11:59:18','http://localhost:8080/ssmiwj5m/upload/xueshengdaka_dakatupian2.jpg','备注2',2),(73,'2021-03-02 11:59:18','学号3','学生姓名3','教师工号3','教师姓名3','2021-03-02 11:59:18','http://localhost:8080/ssmiwj5m/upload/xueshengdaka_dakatupian3.jpg','备注3',3),(74,'2021-03-02 11:59:18','学号4','学生姓名4','教师工号4','教师姓名4','2021-03-02 11:59:18','http://localhost:8080/ssmiwj5m/upload/xueshengdaka_dakatupian4.jpg','备注4',4),(75,'2021-03-02 11:59:18','学号5','学生姓名5','教师工号5','教师姓名5','2021-03-02 11:59:18','http://localhost:8080/ssmiwj5m/upload/xueshengdaka_dakatupian5.jpg','备注5',5),(76,'2021-03-02 11:59:18','学号6','学生姓名6','教师工号6','教师姓名6','2021-03-02 11:59:18','http://localhost:8080/ssmiwj5m/upload/xueshengdaka_dakatupian6.jpg','备注6',6),(1614697774328,'2021-03-02 23:09:33','1','刘','1','李','2021-03-02 23:04:10','http://localhost:8080/ssmiwj5m/upload/1614697767332.jpg','',1614697059979);

/*Table structure for table `xueyuanxinxi` */

DROP TABLE IF EXISTS `xueyuanxinxi`;

CREATE TABLE `xueyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614697192152 DEFAULT CHARSET=utf8 COMMENT='学院信息';

/*Data for the table `xueyuanxinxi` */

insert  into `xueyuanxinxi`(`id`,`addtime`,`xueyuan`) values (41,'2021-03-02 11:59:18','学院1'),(42,'2021-03-02 11:59:18','学院2'),(43,'2021-03-02 11:59:18','学院3'),(44,'2021-03-02 11:59:18','学院4'),(45,'2021-03-02 11:59:18','学院5'),(46,'2021-03-02 11:59:18','学院6'),(1614697192151,'2021-03-02 22:59:51','护理学院');

/*Table structure for table `zhuanyexinxi` */

DROP TABLE IF EXISTS `zhuanyexinxi`;

CREATE TABLE `zhuanyexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614697204263 DEFAULT CHARSET=utf8 COMMENT='专业信息';

/*Data for the table `zhuanyexinxi` */

insert  into `zhuanyexinxi`(`id`,`addtime`,`zhuanye`) values (51,'2021-03-02 11:59:18','专业1'),(52,'2021-03-02 11:59:18','专业2'),(53,'2021-03-02 11:59:18','专业3'),(54,'2021-03-02 11:59:18','专业4'),(55,'2021-03-02 11:59:18','专业5'),(56,'2021-03-02 11:59:18','专业6'),(1614697204262,'2021-03-02 23:00:03','护士');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
