-- MySQL dump 10.13  Distrib 5.6.19, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: webclients
-- ------------------------------------------------------
-- Server version	5.6.19-0ubuntu0.14.04.1

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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `packagetype` varchar(1) DEFAULT '1',
  `description` varchar(255) DEFAULT NULL,
  `expdate` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'www.sativahotels.com','Pentul supentul','web site hotel sativa indonesia','2015-08-19 00:00:00','2015-04-22 09:05:07','2015-04-25 03:34:26'),(2,'autoglymp.com','Parno Suparno','web site autoglyp','2015-09-17 17:00:00','2015-04-22 09:05:07','2015-04-25 15:25:34'),(9,'kapanlagi.com','andrew','kapan lagi dot kom','2015-11-13 17:00:00','2015-04-25 11:31:27','2015-04-25 12:04:59'),(12,'rumah-expresso.com','koh asun','jual espresso','2015-12-26 00:00:00','2015-04-25 11:40:39','2015-05-08 14:37:22'),(13,'apalagi.com','om dodot','lagi-lagi gak jelas, embuh','2015-03-24 00:00:00','2015-04-25 11:41:12','2015-04-25 15:53:01'),(14,'okdeh','tets123','2015-04-13','2015-04-13 00:00:00','2015-04-27 03:18:49','2015-04-27 03:18:49'),(15,'okdeh2','tets1232','embuh','2015-04-13 00:00:00','2015-04-27 03:24:45','2015-04-27 03:24:45'),(16,'okdeh2','tets1232','2015-04-13','2015-04-13 00:00:00','2015-04-27 04:10:38','2015-04-27 04:10:38'),(17,'okdeh3','tets3','testst gila2asut dua tiga','2015-04-13 00:00:00','2015-04-27 04:12:32','2015-04-27 04:12:32'),(18,'okdeh4','tets4','testst gila2asut dua tiga4','2015-04-13 00:00:00','2015-04-27 04:13:30','2015-04-27 04:13:30'),(19,'tokobeladiri.com','pak tompi','simple','2015-04-12 17:00:00','2015-04-27 04:17:55','2015-05-08 14:41:21'),(20,'keretaapi.com','Agil bin Agil alias Agil','gak jelas lagi2','2015-12-16 00:00:00','2015-04-27 05:11:29','2015-05-23 03:58:11'),(21,'royalbinatu.com','Royal bin Atu alias Ratu','perusahaan binatu','2015-04-24 17:00:00','2015-04-27 06:24:07','2015-05-08 14:39:15'),(22,'Djamoe-iboekoe.com','iboe','web site resmi djamoe iboekoe','2015-04-24 17:00:00','2015-04-27 06:51:12','2015-05-08 14:39:50'),(23,'Djamoe-ajah.com','ajah','Website resmi djamoe ajah .com','2015-04-11 17:00:00','2015-04-27 06:56:53','2015-05-08 14:40:21'),(45,'apagiladotkom','saut dau gita','xxxx','2015-04-12 00:00:00','2015-04-27 09:37:38','2015-04-27 09:37:38'),(46,'detikketitik.com','upin','test','2015-04-30 00:00:00','2015-04-29 04:12:05','2015-04-29 04:12:05'),(47,'bendul.com','upindd','test','2015-04-30 00:00:00','2015-04-29 04:15:44','2015-04-29 04:15:44'),(48,'bendi.com','ddd','test','2015-04-30 00:00:00','2015-04-29 04:16:56','2015-04-29 04:16:56'),(49,'tokobagus.com','xxxx','tokonya bagus banget','2015-04-29 17:00:00','2015-04-29 04:17:26','2015-05-08 14:38:05'),(50,'terimakasih.com','pamann dolit','test','2015-04-30 00:00:00','2015-04-29 04:19:48','2015-04-29 04:19:48'),(51,'qorun.com','pamann qorun','test','2015-04-30 00:00:00','2015-04-29 04:21:42','2015-04-29 04:21:42'),(52,'permata.com','pamann qorun','test','2015-04-30 00:00:00','2015-04-29 04:25:24','2015-04-29 04:25:24'),(53,'batman.com','pamann qorun','test','2015-04-30 00:00:00','2015-04-29 04:25:42','2015-04-29 04:25:42'),(54,'superman.com','pamann qorun','test','2015-04-30 00:00:00','2015-04-29 04:27:22','2015-04-29 04:27:22'),(55,'roti.com','pamann qorun','test','2015-04-30 00:00:00','2015-04-29 07:31:39','2015-04-29 07:31:39'),(56,'bocor.com','bocir qorun','test','2015-04-30 00:00:00','2015-04-29 07:32:17','2015-04-29 07:32:17'),(57,'webdev.com','renhat','test','2015-04-22 00:00:00','2015-04-30 08:34:49','2015-04-30 08:34:49'),(58,'padi.net.id','sisca','test','2015-04-22 00:00:00','2015-04-30 08:38:52','2015-04-30 08:38:52'),(59,'padi.com','sisca maria','test','2015-04-22 00:00:00','2015-04-30 08:48:56','2015-04-30 08:48:56'),(60,'padinet.com','fransisca maria','test','2015-04-22 00:00:00','2015-04-30 08:51:18','2015-04-30 08:51:18'),(61,'indonesia.com','puji p','test','2015-04-21 17:00:00','2015-04-30 08:54:18','2015-05-08 07:06:02'),(62,'anehtapitidaknyata.com','puji p','test','2015-04-22 00:00:00','2015-04-30 08:54:46','2015-04-30 08:54:46'),(63,'wismilak.com','puji pr','test','2015-04-21 17:00:00','2015-04-30 09:15:15','2015-05-09 13:01:05'),(64,'lontong-balap.com','puji pra','test','2015-04-21 17:00:00','2015-04-30 09:17:51','2015-05-08 07:05:28'),(65,'bnpt.com','puji pray','test','2015-04-21 17:00:00','2015-04-30 09:18:30','2015-05-08 07:05:41'),(66,'eramuslim.com','puji prayi','sudah tidak diblokir<br>','2015-04-21 17:00:00','2015-04-30 09:19:42','2015-05-08 07:01:46'),(67,'astaga.net','puji prayit','test','2015-04-22 00:00:00','2015-04-30 09:23:48','2015-04-30 09:23:48'),(68,'astaga.org','puji prayitn','test','2015-04-22 00:00:00','2015-04-30 09:24:39','2015-04-30 09:24:39'),(69,'astaga.web.id','puji prayitno','test','2015-04-22 00:00:00','2015-04-30 09:31:40','2015-04-30 09:31:40'),(70,'astaga.co.id','puji wprayitno','test','2015-04-22 00:00:00','2015-04-30 09:33:14','2015-04-30 09:33:14'),(71,'astaga.or.id','puji w prayitno','test','2015-04-22 00:00:00','2015-04-30 09:34:05','2015-04-30 09:34:05'),(72,'rumahexpress.or.id','puji w prayitno','test','2015-04-21 17:00:00','2015-04-30 09:48:04','2015-05-09 13:00:39'),(73,'wish-me-luck.org','puji w prayitno','test','2015-04-21 17:00:00','2015-04-30 09:48:37','2015-05-08 07:04:42'),(74,'wismilak-diplomat.com','jojon','tesxxx','2015-05-19 17:00:00','2015-05-07 08:37:47','2015-05-09 13:01:19'),(75,'sepatu.com','jojon','tesxxx','2015-05-19 17:00:00','2015-05-07 08:41:28','2015-05-23 03:58:28'),(76,'jamu-ayah.com','ava','test','2015-05-20 17:00:00','2015-05-08 04:04:33','2015-05-08 07:04:07'),(77,'youtube.com','puji p','test','2015-04-21 17:00:00','2015-05-08 07:07:46','2015-05-08 07:07:46'),(78,'twitter.com','puji p','test','2015-04-21 17:00:00','2015-05-08 07:08:08','2015-05-08 07:08:08'),(79,'facebook.com','puji p','test','2015-04-21 17:00:00','2015-05-08 07:09:05','2015-05-08 07:09:05'),(80,'flicker.com','puji p','test','2015-04-21 17:00:00','2015-05-08 07:10:46','2015-05-08 07:10:46'),(81,'pinterest.com','puji p','test','2015-04-21 17:00:00','2015-05-08 07:12:15','2015-05-08 07:12:15'),(82,'instagram.com','puji p','test','2015-04-21 17:00:00','2015-05-08 07:37:39','2015-05-08 07:37:39'),(83,'wordpress.com','puji p','test','2015-04-21 17:00:00','2015-05-08 08:24:17','2015-05-08 08:24:17'),(84,'tumblr.com','puji p','test','2015-04-21 17:00:00','2015-05-08 09:30:04','2015-05-08 09:30:04'),(85,'bola.com','puji p','test','2015-04-21 17:00:00','2015-05-08 09:31:06','2015-05-08 09:31:06'),(86,'rupamu.com','puji p','test','2015-04-21 17:00:00','2015-05-08 09:31:56','2015-05-08 09:31:56'),(87,'apap.com','puji p','test','2015-04-21 17:00:00','2015-05-08 09:32:31','2015-05-08 09:32:31'),(88,'Asongan.com','puji p','test','2015-04-21 17:00:00','2015-05-08 09:34:41','2015-05-08 09:34:41'),(89,'ayuwa.com','puji p','test','2015-04-21 17:00:00','2015-05-08 09:36:38','2015-05-08 09:36:38'),(90,'detik.com','puji p','test','2015-04-21 17:00:00','2015-05-08 09:38:02','2015-05-08 14:02:44'),(91,'mongolia.com','puji p','test','2015-04-21 17:00:00','2015-05-08 09:38:43','2015-05-08 09:38:43'),(92,'wikipedia.com','puji p','test','2015-04-21 17:00:00','2015-05-08 09:40:30','2015-05-08 09:40:30'),(93,'about.com','mr ninja','tets','2015-05-13 00:00:00','2015-05-08 13:59:02','2015-05-08 13:59:02'),(94,'tokopedia.com','xxxx','test','2015-04-29 17:00:00','2015-05-08 14:03:38','2015-05-08 14:03:38');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'reinhard','reinhard','2015-04-22 09:05:54','2015-04-22 09:05:54');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-23 16:12:15
