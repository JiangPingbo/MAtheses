-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: localhost    Database: wechat
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wechat_account_task`
--

DROP TABLE IF EXISTS `wechat_account_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wechat_account_task` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `__biz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_publish_time` datetime DEFAULT NULL COMMENT '上次抓取到的文章发布时间，做文章增量采集用',
  `last_spider_time` datetime DEFAULT NULL COMMENT '上次抓取时间，用于同一个公众号每隔一段时间扫描一次',
  `is_zombie` int DEFAULT '0' COMMENT '僵尸号 默认3个月未发布内容为僵尸号，不再检测',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wechat_account_task`
--

LOCK TABLES `wechat_account_task` WRITE;
/*!40000 ALTER TABLE `wechat_account_task` DISABLE KEYS */;
INSERT INTO `wechat_account_task` VALUES (1,'MzU1NzU0NDM5Mg==','2020-06-18 22:59:32','2020-06-20 15:48:26',1),(2,'MjM5NzE2NTY0Ng==','2020-07-08 16:17:51','2020-07-10 14:00:18',1),(3,'MzIwMzAwMzQxNw==','2020-06-25 21:15:33','2020-06-29 00:53:13',1),(4,'MzI1NzA2NTc3MQ==',NULL,'2020-06-10 20:01:19',0),(5,'MzIzNzQxNzA4Ng==',NULL,'2020-06-12 04:39:03',0),(6,'MzIxNzY3MDQxOA==',NULL,'2020-06-10 20:02:47',0),(8,'MzAwOTgyNTA2OA==',NULL,'2020-06-10 20:00:28',0),(9,'MzIwMTE2NTk1Ng==',NULL,'2020-06-10 20:02:08',0),(10,'MzA5NzIwMjQzMA==',NULL,'2020-06-10 19:59:43',0),(13,'MzI0Mjc2NDc2OQ==','2020-08-22 20:09:28','2020-08-30 09:53:19',0),(14,'Mzg3MjEyMTYyNg==','2020-08-29 17:52:50','2020-08-30 09:53:49',0),(15,'MzIzNDYzODAyOA==',NULL,'2020-06-12 04:38:33',0),(16,'MzUxMjcwMzM2MA==','2020-08-28 17:02:49','2020-08-30 09:53:25',0),(17,'MzU5MzcyMzc2OQ==','2020-06-29 12:55:12','2020-06-29 14:03:51',1),(18,'MzUxNjUxMTg3OA==',NULL,'2020-06-12 04:42:54',0),(19,'MzUzODU1OTI2Nw==','2020-07-06 00:00:06','2020-07-06 14:48:07',1),(20,'MzI5Mjk4NDIxOQ==','2020-06-18 22:05:53','2020-06-23 06:04:05',1),(21,'MzI5NzU0NjIxMQ==',NULL,'2020-06-10 20:01:43',0),(22,'MjM5MDU4MjY2MA==','2020-08-15 18:18:07','2020-08-30 09:53:07',0),(23,'MzA5OTQyMDgyOQ==','2020-06-19 04:58:00','2020-06-23 06:04:01',1),(24,'MzA5MzAyMzE4Nw==',NULL,'2020-06-10 19:59:30',0),(26,'MjM5NjM2MjA4NA==','2020-06-19 14:23:42','2020-06-23 06:03:12',1),(27,'MjM5NTEyNjUwOA==',NULL,'2020-06-11 22:44:59',0),(28,'MzU4MTg4MTA1Mg==','2020-06-19 00:00:00','2020-06-23 06:04:12',1),(29,'MzA5NTY5MzUxMQ==','2020-06-18 19:09:11','2020-06-23 06:03:26',1),(31,'MzA3MDM2NTIwMA==','2020-06-22 20:58:07','2020-06-23 12:57:25',1),(33,'MzA3nTE5MzQzMA==','2020-06-28 18:32:21','2020-06-28 23:05:12',1),(39,'MzA4OTk1MjA0MA==','2020-06-24 23:30:49','2020-06-25 04:59:35',1),(41,'MzUzMjY0NDY4Ng==','2020-08-28 08:30:08','2020-08-30 09:53:37',0),(42,'MjM5MDU4MjY2MA==','2020-08-15 18:18:07','2020-08-30 09:53:07',0),(43,'MjM5MjAxNDM4M==',NULL,'2020-06-21 00:50:25',0),(45,'MjM5MDk1NzQzMQ==','2020-06-29 14:01:13','2020-06-29 14:56:22',1),(46,'MzA3MDIz0DIwMg==',NULL,'2020-06-21 16:43:20',0),(47,'MjM5jA4MjA4MA==',NULL,'2020-06-22 04:09:03',0);
/*!40000 ALTER TABLE `wechat_account_task` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-15 20:27:04
