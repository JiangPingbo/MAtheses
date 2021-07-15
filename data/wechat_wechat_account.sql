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
-- Table structure for table `wechat_account`
--

DROP TABLE IF EXISTS `wechat_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wechat_account` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `__biz` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `head_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spider_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `__biz` (`__biz`)
) ENGINE=InnoDB AUTO_INCREMENT=629 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wechat_account`
--

LOCK TABLES `wechat_account` WRITE;
/*!40000 ALTER TABLE `wechat_account` DISABLE KEYS */;
INSERT INTO `wechat_account` VALUES (1,'MzUxNjUxMTg3OA==','','http://wx.qlogo.cn/mmhead/Q3auHgzwzM5yYwU9dk6kohVTB4o1ICMa9hBk0iaU50J6iaWcLLA75foA/0','国际局势·财经投资·国学哲学丨连续6年新媒体百大人物/自媒体最佳表现大奖/最受中国企业关注的自媒体账号丨我们一起同行，我们一起进步！','http://open.weixin.qq.com/qr/code?username=gh_edac0ec6a0ba','','2020-06-10 18:10:03'),(2,'MzA5MzAyMzE4Nw==','','http://wx.qlogo.cn/mmhead/Q3auHgzwzM5NSBfagyR5PwV9ia2f8gmW9REfoP4b6icnqa7h1fEUxicmw/0','雷斯林的新号，欢迎关注。','http://open.weixin.qq.com/qr/code?username=gh_4c87bae15e04','','2020-06-10 19:09:04'),(3,'MzA5OTQyMDgyOQ==','','http://wx.qlogo.cn/mmhead/Q3auHgzwzM6Qkhp05icEFzv1WnPsOicpqdQ0gW1ssjayiaYALpDyLBjHg/0','每天新闻资讯类公众号单篇阅读量排名经常第一！每天提供人工精选最新鲜、最全面、最有价值的新闻早餐，每天三分钟，知晓天下事。还有最新财经早餐、医疗晨报、历史上的今天、一日一诗等等站长精选推荐的精彩内容，精彩不容错过！','http://open.weixin.qq.com/qr/code?username=gh_ba6105d7c051','','2020-06-10 19:36:46'),(4,'MjM5NTEyNjUwOA==','','http://wx.qlogo.cn/mmhead/Q3auHgzwzM5ZltBNgrOvoJo2Cv3YoyuubfB6yEkuCBxU3OWrCR5K3w/0','这些年，让我们好好学习，一起进步，共同担当。','http://open.weixin.qq.com/qr/code?username=gh_0995175cf133','','2020-06-11 14:15:40'),(5,'MzU1NzU0NDM5Mg==','','http://wx.qlogo.cn/mmhead/Q3auHgzwzM7I1N6x8Xv63gic7pJ0AsJ0V93Qibf7ICfue6UyIPLqNE0Q/0','一个“复杂中国”的报道者。','http://open.weixin.qq.com/qr/code?username=gh_d90468a2e184','','2020-06-11 16:55:42'),(6,'MzA5NTY5MzUxMQ==','','http://wx.qlogo.cn/mmhead/Q3auHgzwzM7HibUYB4K6WHzB8dJN6SCiaKQoAR0ncyyrxeoU5ZQMkBTg/0','我们提供离你最近的时政新闻、最通俗易懂的时政新闻解读、最有趣味有温度的新闻故事。','http://open.weixin.qq.com/qr/code?username=gh_dcc41ab0f688','','2020-06-11 18:18:47'),(7,'MjM5NjM2MjA4NA==','','http://wx.qlogo.cn/mmhead/Q3auHgzwzM7eMxowDKY5r8YPKYAXL6MARtATfZIiajBhibYXyAT42lFg/0','中国要永远做一个学习大国。','http://open.weixin.qq.com/qr/code?username=gh_e93e84d0166d','','2020-06-11 21:15:05'),(8,'MjM5NzE2NTY0Ng==','','http://wx.qlogo.cn/mmhead/Q3auHgzwzM4hA4Ic8UyoLCrutZV9x3YdTYjDA8cwsNAs2S1qUByjUQ/0','严肃知识分享平台','http://open.weixin.qq.com/qr/code?username=gh_c503b05e2d02','','2020-06-11 22:48:50'),(9,'MzIwMzAwMzQxNw==','','http://wx.qlogo.cn/mmhead/Q3auHgzwzM5QWtbnwNVKNicuzQXRpSWbGavbLuqeUNjV5E49vyzXcrg/0','用深度，记录世界当代史。','http://open.weixin.qq.com/qr/code?username=gh_ef1c2862724e','','2020-06-11 23:39:45'),(10,'MzI1NzA2NTc3MQ==','','http://wx.qlogo.cn/mmhead/Q3auHgzwzM5OMDcBb80lZ33sWI5hI5r2AsT2ib0ffCibS8wDeMhoF5lA/0','一个“不务正业”的工科男，时代华语图书签约作者，做了一个有趣的，有用的，有温度的公众号。','http://open.weixin.qq.com/qr/code?username=gh_4085c3a821a4','','2020-06-11 23:59:52'),(11,'MzIzNzQxNzA4Ng==','','http://wx.qlogo.cn/mmhead/Q3auHgzwzM610Odanf8rzibIcMQnqY8mCobdAvsw8fvneK8RMITGn1w/0','让爱国成为流行，直到融入我们灵魂深处。','http://open.weixin.qq.com/qr/code?username=gh_5f0781703b38','','2020-06-12 00:55:06'),(13,'MzIzNDYzODAyOA==','','http://wx.qlogo.cn/mmhead/Q3auHgzwzM5hbU7n9wsFjIWTHwGLKLVJGDQhMBe1Ie2UaCsJt4WCSQ/0','铁血网创始人，深度原创分析国际时局，清华大学辍学，军品材料学专家。专业、深度看世界，有趣、有料解困惑。','http://open.weixin.qq.com/qr/code?username=gh_268a4250b904','','2020-06-12 01:36:39'),(15,'MzU4MTg4MTA1Mg==','','http://wx.qlogo.cn/mmhead/Q3auHgzwzM4noUQBDwZ3bkxshBZ9OIIOhImxBYAl2IoksKNg5jGvyA/0','白话新闻信息，直解联播密语','http://open.weixin.qq.com/qr/code?username=gh_aa2278491909','','2020-06-12 01:50:11'),(17,'MzIxNzY3MDQxOA==','','http://wx.qlogo.cn/mmhead/Q3auHgzwzM6HN913LtPPOYJK2HrBD0TAWdYKjqfKNibHrrPoJFCPblQ/0','为民族复兴鼓与呼，与中国崛起共荣辱','http://open.weixin.qq.com/qr/code?username=gh_d017447a7b5d','','2020-06-12 02:10:46'),(18,'MzU5MzcyMzc2OQ==','','http://wx.qlogo.cn/mmhead/Q3auHgzwzM7sfMOibqTKpkkkmNTnGiaI6QEUhgZ73ZCBKAhxsOib6Y0gg/0','喜欢写精华文章的青木','http://open.weixin.qq.com/qr/code?username=gh_36dfda0fb531','','2020-06-12 03:16:43'),(19,'MzUzODU1OTI2Nw==','','http://wx.qlogo.cn/mmhead/Q3auHgzwzM43coVibKkXW4pQduAm9zVic2VT4XAVgztibCJuLYIiaywibFg/0','原创分析，货币、金融、投资、财经探索，安全边际守望者，请关注公众号黄生课堂，有我的教学和最新动态。','http://open.weixin.qq.com/qr/code?username=gh_2a51f8e5849c','','2020-06-12 03:49:03'),(20,'MzA3NTE5MzQzMA==','','http://wx.qlogo.cn/mmhead/Q3auHgzwzM4BiaGC3afSukDaGrL8NARWUI0hLhC8OBd3iaWYmpF2nURQ/0','共青团工作、活动信息和青年关注的热点信息','http://open.weixin.qq.com/qr/code?username=gh_9cda6ee40e37','','2020-06-12 23:09:06'),(22,'MzI5Mjk4NDIxOQ==','','http://wx.qlogo.cn/mmhead/Q3auHgzwzM7hFd5adwG1K5XfMIB8uvMPCOPibAfLbrSSbO2sNKqnYfg/0','北航博士生，曾休学创业一年，热衷于研究中国工业和军事发展，人称“北航奥观海”。','http://open.weixin.qq.com/qr/code?username=gh_0dd043099c23','','2020-06-14 02:07:40'),(23,'MzA3MDIzODIwMg==','','http://wx.qlogo.cn/mmhead/Q3auHgzwzM5ZMiaedLpyvtD8Q1U4UwVlzGJ6U9KzcNTw23icUGS3Hrqg/0','大历史。大社会。独立。理性。批判。建设。','http://open.weixin.qq.com/qr/code?username=gh_0435229cdc6f','','2020-06-14 12:39:26'),(31,'MjM5MjAxNDM4MA==','','http://wx.qlogo.cn/mmhead/Q3auHgzwzM5Dlw4H8vWoicXPXccEVkWYgFfn45zFUq38nuViaPF89Pkg/0','参与、沟通、记录时代。','http://open.weixin.qq.com/qr/code?username=gh_363b924965e9','','2020-06-18 14:30:15'),(89,'MzA4OTk1MjA0MA==','','http://wx.qlogo.cn/mmhead/Q3auHgzwzM5IeERM5RqLXcrusiciaRs26K6VanwdaRtJ5LjQxOZz6LAg/0','一个干货多多，有点另类的时评专家。','http://open.weixin.qq.com/qr/code?username=gh_02c1b54329eb','','2020-06-20 15:10:10'),(91,'MjM5MDk1NzQzMQ==','','http://wx.qlogo.cn/mmhead/Q3auHgzwzM5YzxFRdja0Uw5fP7gNmZLErricsKw3oLcRI18ER6oarBw/0','报道多元世界 解读复杂中国','http://open.weixin.qq.com/qr/code?username=gh_95b0feda9646','','2020-06-21 00:02:11'),(101,'MjM5MjA4MjA4MA==','','http://wx.qlogo.cn/mmhead/Q3auHgzwzM7PQx41GmZhAe2epnOibZQRMd6K4jUqQmapXLn3o6OrxMA/0','中国关怀  全球视野','http://open.weixin.qq.com/qr/code?username=gh_5c9e0938601d','','2020-06-22 04:08:55'),(103,'MzA3MDM2NTIwMA==','','http://wx.qlogo.cn/mmhead/Q3auHgzwzM4wLaVNe0QukS1KDFKesyxbZB8cOMTkTWexnOmTGMibhrQ/0','但凭侠者仁心，拆解时政迷局。','http://open.weixin.qq.com/qr/code?username=gh_572b3506a44f','','2020-06-22 04:10:24'),(110,'MzI0Mjc2NDc2OQ==','','http://wx.qlogo.cn/mmhead/Q3auHgzwzM5ZHoe6XFTicjXVUwdWvXrFHwEx6s9W8Sdaw868qJNXk4g/0','在深圳搬砖的中产阶级，有价值的产业，经济，政经和生活内容信息提供者。','http://open.weixin.qq.com/qr/code?username=gh_4f94e33f330a','','2020-06-24 14:44:46'),(117,'MzUzMjY0NDY4Ng==','','http://wx.qlogo.cn/mmhead/Q3auHgzwzM7qVNFdico7QcF1cJk9mNHj4tZSsIicUVg1sLE5NiccTWr7Q/0','致力于通俗解读金融史，经济史，历史哲学等等','http://open.weixin.qq.com/qr/code?username=gh_82b5c189046b','','2020-06-26 02:48:51'),(123,'MjM5MDU4MjY2MA==','','http://wx.qlogo.cn/mmhead/Q3auHgzwzM4JIFvb1kkNejWaKhtHXPQX9IrzSib4LaXvfgwYS7O4G7w/0','在投资市场，获取有用的信息就像大海捞针，我每天用18个小时思考，用五分钟告诉你；这里是肖磊看市，市场纵然复杂多变，但并非不可预期。','http://open.weixin.qq.com/qr/code?username=gh_9894b3bd997d','','2020-06-27 01:50:04'),(138,'MzUxMjcwMzM2MA==','','http://wx.qlogo.cn/mmhead/Q3auHgzwzM4MjW26k7waM1owia7UFPOVUgN4qecO2e9GicMp9JFXX5og/0','处女座的理工男，专注于用科学一本正经地胡说八道','http://open.weixin.qq.com/qr/code?username=gh_3b6164816851','','2020-06-28 05:11:08'),(144,'Mzg3MjEyMTYyNg==','','http://wx.qlogo.cn/mmhead/Q3auHgzwzM66vv2uKr1zgwFMARys6GdJLy6LGpD3AalCJwv2OKTkOQ/0','你说是不是','http://open.weixin.qq.com/qr/code?username=gh_a1ef6a4e04ab','','2020-06-28 18:03:18'),(170,'MzA5NzIwMjQzMA==','','http://wx.qlogo.cn/mmhead/Q3auHgzwzM6CLB2IyGd2jBRSAlkWnhAlJljTP56mpRmKzHkOZR8IXQ/0','百万留学生每天都在看的公众号，靠谱的选校排名，申请经验，海外新闻，讲述留学生自己的故事，为留学生发声','http://open.weixin.qq.com/qr/code?username=gh_4002b1765479','','2020-06-30 03:44:51'),(267,'MzI5NzU0NjIxMQ==','','http://wx.qlogo.cn/mmhead/Q3auHgzwzM6yplUdSN4u5sFuXV5UjEZCJibb5Zm5TXE8RxnDzeu1rLQ/0','每天用大白话深入浅出分析，这就是大白说的话。备用号“大白话杂谈”公众号，防失联。我每天都会写有逻辑的理性分析，欢迎大家关注！','http://open.weixin.qq.com/qr/code?username=gh_bfacc1a7d3c8','','2020-07-08 13:58:32');
/*!40000 ALTER TABLE `wechat_account` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-15 20:24:53
