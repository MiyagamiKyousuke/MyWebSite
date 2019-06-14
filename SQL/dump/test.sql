-- MySQL dump 10.13  Distrib 5.6.39, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.6.39-log

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
-- Table structure for table `bill_detail_list`
--

DROP TABLE IF EXISTS `bill_detail_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill_detail_list` (
  `bill_no` int(11) NOT NULL,
  `item` varchar(10) NOT NULL,
  `num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_detail_list`
--

LOCK TABLES `bill_detail_list` WRITE;
/*!40000 ALTER TABLE `bill_detail_list` DISABLE KEYS */;
INSERT INTO `bill_detail_list` VALUES (1,'鉛筆',10),(1,'ノート',5),(1,'はさみ',2),(2,'電池',1),(2,'メモリ',2),(3,'ティッシュ',1),(4,'ノート',1);
/*!40000 ALTER TABLE `bill_detail_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_list`
--

DROP TABLE IF EXISTS `bill_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill_list` (
  `bill_no` int(11) NOT NULL AUTO_INCREMENT,
  `day` date NOT NULL,
  `client_no` int(11) NOT NULL,
  PRIMARY KEY (`bill_no`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_list`
--

LOCK TABLES `bill_list` WRITE;
/*!40000 ALTER TABLE `bill_list` DISABLE KEYS */;
INSERT INTO `bill_list` VALUES (1,'2018-08-20',1),(2,'2018-08-20',2),(3,'2018-07-29',3),(4,'2018-07-15',1);
/*!40000 ALTER TABLE `bill_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_list`
--

DROP TABLE IF EXISTS `client_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_list` (
  `client_no` int(11) NOT NULL AUTO_INCREMENT,
  `client` varchar(10) NOT NULL,
  `age` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`client_no`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_list`
--

LOCK TABLES `client_list` WRITE;
/*!40000 ALTER TABLE `client_list` DISABLE KEYS */;
INSERT INTO `client_list` VALUES (1,'佐藤',22,'03-1111-2222'),(2,'鈴木',26,'03-2222-3333'),(3,'佐藤',46,'03-5555-0000');
/*!40000 ALTER TABLE `client_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_list`
--

DROP TABLE IF EXISTS `item_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_list` (
  `item` varchar(10) NOT NULL,
  `money` int(11) NOT NULL,
  PRIMARY KEY (`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_list`
--

LOCK TABLES `item_list` WRITE;
/*!40000 ALTER TABLE `item_list` DISABLE KEYS */;
INSERT INTO `item_list` VALUES ('はさみ',320),('ティッシュ',240),('ノート',120),('メモリ',8900),('鉛筆',80),('電池',289);
/*!40000 ALTER TABLE `item_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `login_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `birth_date` date NOT NULL,
  `password` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`),
  UNIQUE KEY `login_id` (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','管理者','1950-01-01','1A1DC91C907325C69271DDF0C944BC72','2000-01-01 10:00:00','2019-01-23 14:12:28'),(15,'GDB','GDB','2019-02-01','BBC0DB17CEADC889CC561ADD9763AFC5','2019-02-01 11:24:14','2019-02-01 11:28:31');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-14 18:12:55
