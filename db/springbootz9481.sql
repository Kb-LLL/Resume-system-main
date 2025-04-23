-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootz9481
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `baomingzhaopin`
--

DROP TABLE IF EXISTS `baomingzhaopin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baomingzhaopin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongsi` varchar(200) DEFAULT NULL COMMENT '公司',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `jiezhishijian` datetime DEFAULT NULL COMMENT '截止时间',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jianli` varchar(200) DEFAULT NULL COMMENT '简历',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617023757440 DEFAULT CHARSET=utf8 COMMENT='报名招聘';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baomingzhaopin`
--

LOCK TABLES `baomingzhaopin` WRITE;
/*!40000 ALTER TABLE `baomingzhaopin` DISABLE KEYS */;
INSERT INTO `baomingzhaopin` VALUES (51,'2021-03-29 13:11:10','公司1','2021-03-29 21:11:10','2021-03-29 21:11:10','http://localhost:8080/springbootz9481/upload/baomingzhaopin_zhaopian1.jpg','账号1','姓名1','','是',''),(52,'2021-03-29 13:11:10','公司2','2021-03-29 21:11:10','2021-03-29 21:11:10','http://localhost:8080/springbootz9481/upload/baomingzhaopin_zhaopian2.jpg','账号2','姓名2','','是',''),(53,'2021-03-29 13:11:10','公司3','2021-03-29 21:11:10','2021-03-29 21:11:10','http://localhost:8080/springbootz9481/upload/baomingzhaopin_zhaopian3.jpg','账号3','姓名3','','是',''),(54,'2021-03-29 13:11:10','公司4','2021-03-29 21:11:10','2021-03-29 21:11:10','http://localhost:8080/springbootz9481/upload/baomingzhaopin_zhaopian4.jpg','账号4','姓名4','','是',''),(55,'2021-03-29 13:11:10','公司5','2021-03-29 21:11:10','2021-03-29 21:11:10','http://localhost:8080/springbootz9481/upload/baomingzhaopin_zhaopian5.jpg','账号5','姓名5','','是',''),(56,'2021-03-29 13:11:10','公司6','2021-03-29 21:11:10','2021-03-29 21:11:10','http://localhost:8080/springbootz9481/upload/baomingzhaopin_zhaopian6.jpg','账号6','姓名6','','是',''),(1617023757439,'2021-03-29 13:15:57','广州',NULL,NULL,'http://localhost:8080/springbootz9481/upload/1617023633954.png','11','11','http://localhost:8080/springbootz9481/upload/1617023755375.jpg','是',NULL);
/*!40000 ALTER TABLE `baomingzhaopin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617023981561 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (71,'2021-03-29 13:11:10',1,1,'提问1','回复1',1),(72,'2021-03-29 13:11:10',2,2,'提问2','回复2',2),(73,'2021-03-29 13:11:10',3,3,'提问3','回复3',3),(74,'2021-03-29 13:11:10',4,4,'提问4','回复4',4),(75,'2021-03-29 13:11:10',5,5,'提问5','回复5',5),(76,'2021-03-29 13:11:10',6,6,'提问6','回复6',6),(1617023961523,'2021-03-29 13:19:20',1617023701730,NULL,'davsd ',NULL,0),(1617023981560,'2021-03-29 13:19:40',1617023701730,1617023701730,NULL,'adv sa a ',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springbootz9481/upload/1617023664830.jpg'),(2,'picture2','http://localhost:8080/springbootz9481/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springbootz9481/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617023816073 DEFAULT CHARSET=utf8 COMMENT='求职论坛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (81,'2021-03-29 13:11:10','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(82,'2021-03-29 13:11:10','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(83,'2021-03-29 13:11:10','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(84,'2021-03-29 13:11:10','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(85,'2021-03-29 13:11:10','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(86,'2021-03-29 13:11:10','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1617023816072,'2021-03-29 13:16:55','ddvip说大不大','<p>请输入内容发送不</p>',0,1617023701730,'11','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jianlimoban`
--

DROP TABLE IF EXISTS `jianlimoban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jianlimoban` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mobanmingcheng` varchar(200) DEFAULT NULL COMMENT '模板名称',
  `mobanleixing` varchar(200) DEFAULT NULL COMMENT '模板类型',
  `jianjie` longtext COMMENT '简介',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617023600059 DEFAULT CHARSET=utf8 COMMENT='简历模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jianlimoban`
--

LOCK TABLES `jianlimoban` WRITE;
/*!40000 ALTER TABLE `jianlimoban` DISABLE KEYS */;
INSERT INTO `jianlimoban` VALUES (21,'2021-03-29 13:11:10','模板名称1','模板类型1','简介1','http://localhost:8080/springbootz9481/upload/jianlimoban_zhaopian1.jpg',1,1,'2021-03-29 21:11:10',1),(22,'2021-03-29 13:11:10','模板名称2','模板类型2','简介2','http://localhost:8080/springbootz9481/upload/jianlimoban_zhaopian2.jpg',2,2,'2021-03-29 21:11:10',2),(23,'2021-03-29 13:11:10','模板名称3','模板类型3','简介3','http://localhost:8080/springbootz9481/upload/jianlimoban_zhaopian3.jpg',3,3,'2021-03-29 21:11:10',3),(24,'2021-03-29 13:11:10','模板名称4','模板类型4','简介4','http://localhost:8080/springbootz9481/upload/jianlimoban_zhaopian4.jpg',4,4,'2021-03-29 21:11:10',4),(25,'2021-03-29 13:11:10','模板名称5','模板类型5','简介5','http://localhost:8080/springbootz9481/upload/jianlimoban_zhaopian5.jpg',5,5,'2021-03-29 21:11:10',5),(26,'2021-03-29 13:11:10','模板名称6','模板类型6','简介6','http://localhost:8080/springbootz9481/upload/jianlimoban_zhaopian6.jpg',6,6,'2021-03-29 21:15:17',7),(1617023600058,'2021-03-29 13:13:19','商务','商务','<p>撒v阿都算不上烦不烦 发布的</p>','http://localhost:8080/springbootz9481/upload/1617023594661.png',2,1,'2021-03-29 21:15:31',2);
/*!40000 ALTER TABLE `jianlimoban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jianlishangchuan`
--

DROP TABLE IF EXISTS `jianlishangchuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jianlishangchuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jianli` varchar(200) DEFAULT NULL COMMENT '简历',
  `fankui` varchar(200) DEFAULT NULL COMMENT '反馈',
  `shangchuanshijian` datetime DEFAULT NULL COMMENT '上传时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617023781877 DEFAULT CHARSET=utf8 COMMENT='简历上传';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jianlishangchuan`
--

LOCK TABLES `jianlishangchuan` WRITE;
/*!40000 ALTER TABLE `jianlishangchuan` DISABLE KEYS */;
INSERT INTO `jianlishangchuan` VALUES (61,'2021-03-29 13:11:10','账号1','姓名1','http://localhost:8080/springbootz9481/upload/jianlishangchuan_jianli1.jpg','反馈1','2021-03-29 21:11:10','是',''),(62,'2021-03-29 13:11:10','账号2','姓名2','http://localhost:8080/springbootz9481/upload/jianlishangchuan_jianli2.jpg','反馈2','2021-03-29 21:11:10','是',''),(63,'2021-03-29 13:11:10','账号3','姓名3','http://localhost:8080/springbootz9481/upload/jianlishangchuan_jianli3.jpg','反馈3','2021-03-29 21:11:10','是',''),(64,'2021-03-29 13:11:10','账号4','姓名4','http://localhost:8080/springbootz9481/upload/jianlishangchuan_jianli4.jpg','反馈4','2021-03-29 21:11:10','是',''),(65,'2021-03-29 13:11:10','账号5','姓名5','http://localhost:8080/springbootz9481/upload/jianlishangchuan_jianli5.jpg','反馈5','2021-03-29 21:11:10','是',''),(66,'2021-03-29 13:11:10','账号6','姓名6','http://localhost:8080/springbootz9481/upload/jianlishangchuan_jianli6.jpg','反馈6','2021-03-29 21:11:10','是',''),(1617023781876,'2021-03-29 13:16:21','11','11','http://localhost:8080/springbootz9481/upload/1617023778623.jpg',NULL,NULL,'是',NULL);
/*!40000 ALTER TABLE `jianlishangchuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mobanleixing`
--

DROP TABLE IF EXISTS `mobanleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mobanleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617023573346 DEFAULT CHARSET=utf8 COMMENT='模板类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobanleixing`
--

LOCK TABLES `mobanleixing` WRITE;
/*!40000 ALTER TABLE `mobanleixing` DISABLE KEYS */;
INSERT INTO `mobanleixing` VALUES (31,'2021-03-29 13:11:10','类型1'),(32,'2021-03-29 13:11:10','类型2'),(33,'2021-03-29 13:11:10','类型3'),(34,'2021-03-29 13:11:10','类型4'),(35,'2021-03-29 13:11:10','类型5'),(36,'2021-03-29 13:11:10','类型6'),(1617023573345,'2021-03-29 13:12:53','商务');
/*!40000 ALTER TABLE `mobanleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617023687134 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-03-29 13:11:10','标题1','简介1','http://localhost:8080/springbootz9481/upload/news_picture1.jpg','内容1'),(102,'2021-03-29 13:11:10','标题2','简介2','http://localhost:8080/springbootz9481/upload/news_picture2.jpg','内容2'),(103,'2021-03-29 13:11:10','标题3','简介3','http://localhost:8080/springbootz9481/upload/news_picture3.jpg','内容3'),(104,'2021-03-29 13:11:10','标题4','简介4','http://localhost:8080/springbootz9481/upload/news_picture4.jpg','内容4'),(105,'2021-03-29 13:11:10','标题5','简介5','http://localhost:8080/springbootz9481/upload/news_picture5.jpg','内容5'),(106,'2021-03-29 13:11:10','标题6','简介6','http://localhost:8080/springbootz9481/upload/news_picture6.jpg','内容6'),(1617023687133,'2021-03-29 13:14:46','srE','D个vDVDSB','http://localhost:8080/springbootz9481/upload/1617023682505.png','<p>SDVSDV </p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617023729746 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1617023729745,'2021-03-29 13:15:28',1617023701730,1617023600058,'jianlimoban','商务','http://localhost:8080/springbootz9481/upload/1617023594661.png');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','c4z6kv36vjmgnnx6lgur66uty67mg2mo','2021-03-29 13:12:29','2021-03-29 14:18:10'),(2,1617023701730,'11','yonghu','用户','1sjyclfrxfhyg4o5gpp0d5n0ljk4ke6a','2021-03-29 13:15:06','2021-03-29 14:18:49');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-29 13:11:10');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617023701731 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-29 13:11:10','用户1','123456','姓名1','男',1,'13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/springbootz9481/upload/yonghu_touxiang1.jpg'),(12,'2021-03-29 13:11:10','用户2','123456','姓名2','男',2,'13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/springbootz9481/upload/yonghu_touxiang2.jpg'),(13,'2021-03-29 13:11:10','用户3','123456','姓名3','男',3,'13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/springbootz9481/upload/yonghu_touxiang3.jpg'),(14,'2021-03-29 13:11:10','用户4','123456','姓名4','男',4,'13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/springbootz9481/upload/yonghu_touxiang4.jpg'),(15,'2021-03-29 13:11:10','用户5','123456','姓名5','男',5,'13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/springbootz9481/upload/yonghu_touxiang5.jpg'),(16,'2021-03-29 13:11:10','用户6','123456','姓名6','男',6,'13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/springbootz9481/upload/yonghu_touxiang6.jpg'),(1617023701730,'2021-03-29 13:15:01','11','11','11',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhaopinhui`
--

DROP TABLE IF EXISTS `zhaopinhui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhaopinhui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongsi` varchar(200) DEFAULT NULL COMMENT '公司',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `jiezhishijian` datetime DEFAULT NULL COMMENT '截止时间',
  `didian` varchar(200) DEFAULT NULL COMMENT '地点',
  `neirong` longtext COMMENT '内容',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617023639308 DEFAULT CHARSET=utf8 COMMENT='招聘会';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhaopinhui`
--

LOCK TABLES `zhaopinhui` WRITE;
/*!40000 ALTER TABLE `zhaopinhui` DISABLE KEYS */;
INSERT INTO `zhaopinhui` VALUES (41,'2021-03-29 13:11:10','公司1','2021-03-29 21:11:10','2021-03-29 21:11:10','地点1','内容1','http://localhost:8080/springbootz9481/upload/zhaopinhui_zhaopian1.jpg','2021-03-29 21:11:10',1),(42,'2021-03-29 13:11:10','公司2','2021-03-29 21:11:10','2021-03-29 21:11:10','地点2','内容2','http://localhost:8080/springbootz9481/upload/zhaopinhui_zhaopian2.jpg','2021-03-29 21:11:10',2),(43,'2021-03-29 13:11:10','公司3','2021-03-29 21:11:10','2021-03-29 21:11:10','地点3','内容3','http://localhost:8080/springbootz9481/upload/zhaopinhui_zhaopian3.jpg','2021-03-29 21:11:10',3),(44,'2021-03-29 13:11:10','公司4','2021-03-29 21:11:10','2021-03-29 21:11:10','地点4','内容4','http://localhost:8080/springbootz9481/upload/zhaopinhui_zhaopian4.jpg','2021-03-29 21:11:10',4),(45,'2021-03-29 13:11:10','公司5','2021-03-29 21:11:10','2021-03-29 21:11:10','地点5','内容5','http://localhost:8080/springbootz9481/upload/zhaopinhui_zhaopian5.jpg','2021-03-29 21:11:10',5),(46,'2021-03-29 13:11:10','公司6','2021-03-29 21:11:10','2021-03-29 21:11:10','地点6','内容6','http://localhost:8080/springbootz9481/upload/zhaopinhui_zhaopian6.jpg','2021-03-29 21:11:10',6),(1617023639307,'2021-03-29 13:13:58','广州','2021-03-31 00:01:00','2021-03-31 03:00:00',NULL,'<p>阿迪v发顺丰不放大放大个SF放大 SV撒方</p>','http://localhost:8080/springbootz9481/upload/1617023633954.png','2021-03-29 21:16:01',2);
/*!40000 ALTER TABLE `zhaopinhui` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-30 20:27:51
