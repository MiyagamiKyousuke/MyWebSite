-- MySQL dump 10.13  Distrib 5.6.39, for Win64 (x86_64)
--
-- Host: localhost    Database: site
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
-- Table structure for table `buy`
--

DROP TABLE IF EXISTS `buy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buy` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `delivery_method_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buy`
--

LOCK TABLES `buy` WRITE;
/*!40000 ALTER TABLE `buy` DISABLE KEYS */;
INSERT INTO `buy` VALUES (27,1,2500,1,'2019-03-14 18:15:29'),(28,1,2000,1,'2019-03-14 18:16:30'),(29,1,1800,1,'2019-03-14 18:38:56'),(30,1,2500,1,'2019-03-14 18:39:30'),(31,7,2500,1,'2019-03-18 17:15:21'),(32,7,2000,1,'2019-03-18 17:35:01'),(33,7,1800,1,'2019-03-18 17:40:25'),(34,7,3500,1,'2019-03-18 18:23:16'),(35,7,1500,1,'2019-03-18 18:24:00'),(36,7,2000,1,'2019-03-18 18:24:15'),(37,7,2000,1,'2019-03-18 18:25:01'),(38,7,4400,1,'2019-03-18 18:32:14'),(39,7,3800,2,'2019-03-19 10:48:36'),(40,7,3300,2,'2019-03-19 10:53:29'),(41,7,3900,2,'2019-03-19 11:11:32'),(42,7,3600,2,'2019-03-19 11:13:00'),(43,7,1500,1,'2019-03-20 13:50:07'),(44,7,1500,1,'2019-03-20 14:18:12'),(45,7,2500,1,'2019-03-20 14:30:28'),(46,7,3000,2,'2019-03-20 16:32:46'),(47,7,4100,2,'2019-03-28 15:30:42'),(48,7,3900,2,'2019-03-28 15:35:14'),(49,7,3900,2,'2019-03-28 15:46:01'),(50,7,1800,1,'2019-03-28 15:49:38'),(51,7,2000,1,'2019-03-28 17:34:19'),(52,7,3000,2,'2019-04-04 13:23:55'),(53,7,3400,2,'2019-04-04 15:29:27'),(54,7,3000,2,'2019-04-05 13:49:05'),(55,7,3000,2,'2019-04-05 15:09:54');
/*!40000 ALTER TABLE `buy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buy_detail`
--

DROP TABLE IF EXISTS `buy_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buy_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `buy_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buy_detail`
--

LOCK TABLES `buy_detail` WRITE;
/*!40000 ALTER TABLE `buy_detail` DISABLE KEYS */;
INSERT INTO `buy_detail` VALUES (14,27,1,2),(15,28,2,1),(16,29,3,1),(17,30,1,2),(18,31,1,2),(19,32,2,1),(20,33,3,1),(21,34,1,3),(22,35,1,1),(23,36,2,1),(24,37,2,1),(25,38,3,3),(26,39,1,1),(27,39,3,1),(28,39,2,1),(29,40,1,2),(30,40,3,1),(31,41,3,3),(32,42,3,2),(33,42,1,1),(34,43,1,1),(35,44,1,1),(36,45,1,2),(37,46,1,3),(38,47,2,1),(39,47,3,2),(40,48,3,3),(41,49,3,3),(42,50,3,1),(43,51,2,1),(44,52,1,3),(45,53,4,3),(46,53,1,1),(47,54,1,3),(48,55,1,3);
/*!40000 ALTER TABLE `buy_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_type`
--

DROP TABLE IF EXISTS `card_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_type` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `types` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_type`
--

LOCK TABLES `card_type` WRITE;
/*!40000 ALTER TABLE `card_type` DISABLE KEYS */;
INSERT INTO `card_type` VALUES (1,'モンスター'),(2,'魔法'),(3,'トラップ');
/*!40000 ALTER TABLE `card_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_method`
--

DROP TABLE IF EXISTS `delivery_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_method` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_method`
--

LOCK TABLES `delivery_method` WRITE;
/*!40000 ALTER TABLE `delivery_method` DISABLE KEYS */;
INSERT INTO `delivery_method` VALUES (1,'通常配送',500),(2,'特別配送',0);
/*!40000 ALTER TABLE `delivery_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `card_type_id` int(11) NOT NULL,
  `effect` varchar(1000) NOT NULL,
  `price` int(11) NOT NULL,
  `file_name` varchar(200) NOT NULL,
  `stock` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'幽鬼うさぎ',1,'チューナー・効果モンスター\r\n星３/光属性/サイキック族/攻   0/守1800\r\nこのカード名の効果は１ターンに１度しか使用できない。\r\n(1)：フィールドのモンスターの効果が発動した時、\r\nまたはフィールドの既に表側表示で存在している魔法・罠カードの効果が発動した時、\r\n自分の手札・フィールドのこのカードを墓地へ送って発動できる。\r\nフィールドのそのカードを破壊する。',1000,'61GWsV32pkL.jpg',4),(2,'灰流うらら',1,'チューナー・効果モンスター（準制限カード）\r\n星３/炎属性/アンデット族/攻   0/守1800\r\nこのカード名の効果は１ターンに１度しか使用できない。\r\n(1)：以下のいずれかの効果を含む魔法・罠・モンスターの効果が発動した時、\r\nこのカードを手札から捨てて発動できる。\r\nその効果を無効にする。\r\n●デッキからカードを手札に加える効果\r\n●デッキからモンスターを特殊召喚する効果\r\n●デッキからカードを墓地へ送る効果',1500,'51P7MQPmqLL.jpg',10),(3,'儚無みずき',1,'チューナー・効果モンスター\r\n星３/水属性/アンデット族/攻   0/守1800\r\nこのカード名の効果は１ターンに１度しか使用できず、相手ターンでも発動できる。\r\n(1)：このカードを手札から捨てて発動できる。\r\nこのターン、以下の効果を適用する。\r\n●相手がメインフェイズ及びバトルフェイズに効果モンスターの特殊召喚に成功する度に、\r\n自分はそのモンスターの攻撃力分だけＬＰを回復する。\r\nこの効果で自分のＬＰが回復しなかった場合、エンドフェイズに自分のＬＰは半分になる。',1300,'51DCBiV3wXL._SY445_.jpg',10),(4,'墓穴の指名者',2,'速攻魔法\r\n(1)：相手の墓地のモンスター１体を対象として発動できる。\r\nそのモンスターを除外する。\r\n次のターンの終了時まで、この効果で除外したモンスター及び\r\nそのモンスターと元々のカード名が同じモンスターの効果は無効化される。',800,'fe4eefbf.jpg',4),(5,'聖なるバリア －ミラーフォース－',3,'通常罠\r\n(1)：相手モンスターの攻撃宣言時に発動できる。\r\n相手フィールドの攻撃表示モンスターを全て破壊する。',500,'51NbormnsFL._SY445_.jpg',5),(6,'ツインツイスター',2,'速攻魔法\r\n(1)：手札を１枚捨て、フィールドの魔法・罠カードを２枚まで対象として発動できる。\r\nそのカードを破壊する。',400,'51c6wjzsfsL.jpg',2),(7,'トラップトリック',3,'このカード名のカードは１ターンに１枚しか発動できない。 (1)：デッキから「トラップトリック」以外の通常罠カード１枚を除外し、その同名カード１枚をデッキから選んで自分フィールドにセットする。この効果でセットしたカードはセットしたターンでも発動できる。このカードの発動後、ターン終了時まで自分は罠カードを１枚しか発動できない。',600,'09143.jpg',10),(8,'サンダーボルト',2,'相手フィールド上に存在する全てのモンスターを破壊する。',1200,'02999.jpg',5),(9,'ハーピィの羽根帚',2,'相手のフィールド上の魔法･罠カードを全て破壊する。',500,'01190.jpg',10),(10,'エマージェンシー・サイバー　',2,'このカード名のカードは１ターンに１枚しか発動できない。 (1)：デッキから「サイバー・ドラゴン」モンスターまたは通常召喚できない機械族・光属性モンスター１体を手札に加える。 (2)：相手によってこのカードの発動が無効になり、墓地へ送られた場合、手札を１枚捨てて発動できる。墓地のこのカードを手札に加える。',1600,'09017.jpg',10),(11,'光の創造神 ホルアクティ',1,'このカードは通常召喚できない。自分フィールド上の、元々のカード名が「オシリスの天空竜」「オベリスクの巨神兵」「ラーの翼神竜」となるモンスターをそれぞれ１体ずつリリースした場合のみ特殊召喚できる。このカードの特殊召喚は無効化されない。このカードを特殊召喚したプレイヤーはデュエルに勝利する。',68000,'05281.jpg',10),(12,'増殖するG',1,'このカードを手札から墓地へ送って発動する。このターン、相手がモンスターの特殊召喚に成功する度に、自分はデッキからカードを１枚ドローする。この効果は相手ターンでも発動する事ができる。「増殖するＧ」は１ターンに１度しか発動できない。',1100,'04998.jpg',5),(13,'田中太郎',1,'あああ',200,'png-min.png',0),(14,'ああああ',1,'あああああ',500,'download.jpg',0),(15,'増殖するG',1,'あああ',1600,'09017.jpg',10);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `login_id` varchar(100) NOT NULL,
  `login_passwprd` varchar(100) NOT NULL,
  `create_date` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'宮上京介','千葉県浦安市堀江4‐6‐11-209','miya6535','miya6535','2019-02-25'),(5,'鈴木たろう','鈴木市','suzuki','suzuki','2019-03-12'),(7,'宮上京介','千葉県浦安市堀江4-6-11-209','miyagami','miyagami','2019-03-18'),(8,'管理者','管理者','admin','admin','2019-03-25');
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

-- Dump completed on 2019-06-14 18:11:57
