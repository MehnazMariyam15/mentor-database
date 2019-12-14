CREATE DATABASE  IF NOT EXISTS `mentorondemand` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mentorondemand`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: mentorondemand
-- ------------------------------------------------------
-- Server version	5.7.10-log

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
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (44),(44),(44);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentor`
--

DROP TABLE IF EXISTS `mentor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mentor` (
  `me_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `me_active` tinyint(1) DEFAULT NULL,
  `me_confirm_password` varchar(255) DEFAULT NULL,
  `me_contact_no` varchar(255) DEFAULT NULL,
  `me_email` varchar(255) DEFAULT NULL,
  `me_firstname` varchar(255) DEFAULT NULL,
  `me_lastname` varchar(255) DEFAULT NULL,
  `me_linkedin_url` varchar(255) DEFAULT NULL,
  `me_password` varchar(255) DEFAULT NULL,
  `me_userid` varchar(255) DEFAULT NULL,
  `me_years_of_experience` float DEFAULT NULL,
  PRIMARY KEY (`me_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentor`
--

LOCK TABLES `mentor` WRITE;
/*!40000 ALTER TABLE `mentor` DISABLE KEYS */;
INSERT INTO `mentor` VALUES (1,1,'$2a$10$R/lZJuT9skteNmAku9Y7aeutxbOKstD5xE5bHOf74M2PHZipyt3yK','1236547899','mentor@gmail.com','men','tor','mentor@linkedin.com','$2a$10$R/lZJuT9skteNmAku9Y7aeutxbOKstD5xE5bHOf74M2PHZipyt3yK','Men01',4),(10,NULL,'pwd','4569871233','mehnaz@gmail.com','meh','mars','linked/mehnaz','$2a$10$X6bcJ4GvEtPnnWBwdgwyQ.qZfEc0fmGk7zcXoU8iPNyLON7q90CUm','mentor6',3),(7,NULL,'pwd','1234567890','men5@hotmail.com','meh','wsef','men5@linkedin.com','$2a$10$gNxXDJ7WEIJSHTD7whE0E.bZ0goo9z34xJF7i1YBCRefdrWS8n1KS','men5',8),(6,NULL,'pwd','2356789098','men3@gmail.com','fdg','gerthg','linkedin/men3','$2a$10$0Qx1GlXhw8EjrNWHhD42tepXivwvVkQhQr/S32CzXUQoR9gpdFxoC','men3',4),(22,NULL,'pwd','1236541236','wdfwq@mail.com','nd','k','dsafwege','$2a$10$t974bOfCd9hK893p0TTUYudLSLSzix8s8M5K124JErp0A5cn/BIIi','mentorMeh',5);
/*!40000 ALTER TABLE `mentor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentor_calendar`
--

DROP TABLE IF EXISTS `mentor_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mentor_calendar` (
  `mc_id` bigint(20) NOT NULL,
  `mc_end_date` date DEFAULT NULL,
  `mc_end_time` time DEFAULT NULL,
  `mc_start_date` date DEFAULT NULL,
  `mc_start_time` time DEFAULT NULL,
  `mc_me_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`mc_id`),
  KEY `FKg0vtymuejgf1nynfyxj70y4jt` (`mc_me_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentor_calendar`
--

LOCK TABLES `mentor_calendar` WRITE;
/*!40000 ALTER TABLE `mentor_calendar` DISABLE KEYS */;
INSERT INTO `mentor_calendar` VALUES (1,'2019-08-08','11:00:00','2019-01-01','12:00:00',1);
/*!40000 ALTER TABLE `mentor_calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentor_skill`
--

DROP TABLE IF EXISTS `mentor_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mentor_skill` (
  `ms_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ms_exp` bigint(20) DEFAULT NULL,
  `ms_facilities` varchar(255) DEFAULT NULL,
  `ms_self_rating` bigint(20) DEFAULT NULL,
  `ms_trainings_delivered` varchar(255) DEFAULT NULL,
  `ms_me_id` bigint(20) DEFAULT NULL,
  `ms_sk_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ms_id`),
  KEY `FK49a3ygnib52wsm2kmp7a0937c` (`ms_me_id`),
  KEY `FKh0rsohgbqgtm4tbqhk3asmlpc` (`ms_sk_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentor_skill`
--

LOCK TABLES `mentor_skill` WRITE;
/*!40000 ALTER TABLE `mentor_skill` DISABLE KEYS */;
INSERT INTO `mentor_skill` VALUES (1,3,'Notes,Online',4,'2',1,1),(2,2,'Links',5,'4',7,2),(24,2,'s',4,'clg',22,3),(23,3,'notes',4,'college',22,4);
/*!40000 ALTER TABLE `mentor_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `ro_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ro_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ro_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'MENTOR'),(2,'TRAINEE');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skills` (
  `sk_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sk_duration` varchar(255) DEFAULT NULL,
  `sk_prereq` varchar(255) DEFAULT NULL,
  `sk_name` varchar(255) DEFAULT NULL,
  `sk_toc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sk_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'7','UI','Angular','angular'),(2,'5','Backend','Spring','spring'),(3,'4','Database','SQL','sql'),(4,'3','SQL','Hibernate','hibernate');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technology`
--

DROP TABLE IF EXISTS `technology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `technology` (
  `te_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `te_duration` varchar(255) DEFAULT NULL,
  `te_prereq` varchar(255) DEFAULT NULL,
  `te_name` varchar(255) DEFAULT NULL,
  `te_toc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`te_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technology`
--

LOCK TABLES `technology` WRITE;
/*!40000 ALTER TABLE `technology` DISABLE KEYS */;
INSERT INTO `technology` VALUES (1,'7','HTML','Angular','ttoocc'),(2,'5','Java','Spring','toc'),(3,'4','Database','SQL','sql'),(4,'3','SQL','Hibernate','hiber');
/*!40000 ALTER TABLE `technology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainee`
--

DROP TABLE IF EXISTS `trainee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trainee` (
  `tr_id` bigint(20) NOT NULL,
  `tr_confirm_password` varchar(255) DEFAULT NULL,
  `tr_contact_no` varchar(255) DEFAULT NULL,
  `tr_email` varchar(255) DEFAULT NULL,
  `tr_firstname` varchar(255) DEFAULT NULL,
  `tr_lastname` varchar(255) DEFAULT NULL,
  `tr_password` varchar(255) DEFAULT NULL,
  `tr_userid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainee`
--

LOCK TABLES `trainee` WRITE;
/*!40000 ALTER TABLE `trainee` DISABLE KEYS */;
INSERT INTO `trainee` VALUES (1,'$2a$10$R/lZJuT9skteNmAku9Y7aeutxbOKstD5xE5bHOf74M2PHZipyt3yK','4563217893','trainee@gmail.com','trai','nee','$2a$10$R/lZJuT9skteNmAku9Y7aeutxbOKstD5xE5bHOf74M2PHZipyt3yK','Tra01'),(41,'$2a$10$p9G5X7CU1fq3CPDdt2vSHeVX81TpnonwndZ/sPy22OdKPVLOpdrR2','1236547899','wfefewfw@gmail.com','nd','nd','$2a$10$tycijH8vEEWX9SL6NgS2K.1Txaq9/GEAr0yYRtcVbj2Dd2N6RnenK','traineeMeh'),(10,'$2a$10$s5F/LbltEO9Eg269//gTFeJFO4fY6hUdSkNHl5SnjVX66w.jgqSPq','1234567888','meh@hotmail.com','meh','kvsdfm','$2a$10$uoolLlWBMEWVoRafpA862.lWhMcu7tEaedn1.3EnLj6MKCLB4Xeza','trainee1');
/*!40000 ALTER TABLE `trainee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training`
--

DROP TABLE IF EXISTS `training`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `training` (
  `tg_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tg_status` varchar(255) DEFAULT NULL,
  `tg_me_id` bigint(20) DEFAULT NULL,
  `tg_te_id` bigint(20) DEFAULT NULL,
  `tg_tr_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`tg_id`),
  KEY `FKgasjjefouws5l6x434nrlt6dk` (`tg_me_id`),
  KEY `FKplyquytxxusj2pqevwp7v1dsi` (`tg_te_id`),
  KEY `FK1n0bwq78qcj0a4e5qcnbkdkvl` (`tg_tr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training`
--

LOCK TABLES `training` WRITE;
/*!40000 ALTER TABLE `training` DISABLE KEYS */;
INSERT INTO `training` VALUES (3,'APPROVED',1,1,1),(7,'APPROVED',1,1,10),(12,'APPROVED',7,2,41);
/*!40000 ALTER TABLE `training` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `us_id` bigint(20) NOT NULL,
  `us_password` varchar(255) DEFAULT NULL,
  `us_userid` varchar(255) DEFAULT NULL,
  `us_username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`us_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'$2a$10$R/lZJuT9skteNmAku9Y7aeutxbOKstD5xE5bHOf74M2PHZipyt3yK','Tra01',NULL),(2,'$2a$10$R/lZJuT9skteNmAku9Y7aeutxbOKstD5xE5bHOf74M2PHZipyt3yK','Men01',NULL),(18,'$2a$10$gNxXDJ7WEIJSHTD7whE0E.bZ0goo9z34xJF7i1YBCRefdrWS8n1KS','men5',NULL),(11,'$2a$10$uoolLlWBMEWVoRafpA862.lWhMcu7tEaedn1.3EnLj6MKCLB4Xeza','trainee1',NULL),(42,'$2a$10$tycijH8vEEWX9SL6NgS2K.1Txaq9/GEAr0yYRtcVbj2Dd2N6RnenK','traineeMeh',NULL),(43,'$2a$10$t974bOfCd9hK893p0TTUYudLSLSzix8s8M5K124JErp0A5cn/BIIi','mentorMeh',NULL),(21,'$2a$10$X6bcJ4GvEtPnnWBwdgwyQ.qZfEc0fmGk7zcXoU8iPNyLON7q90CUm','mentor6',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `ur_us_id` bigint(20) NOT NULL,
  `ur_ro_id` bigint(20) NOT NULL,
  PRIMARY KEY (`ur_us_id`,`ur_ro_id`),
  KEY `FKjia4161ecu6h4p0egc2oc04lt` (`ur_ro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,2),(2,1),(11,2),(18,1),(21,1),(42,2),(43,1);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-11 14:43:27
