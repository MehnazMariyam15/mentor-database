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
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (44),(44),(44);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mentor`
--

LOCK TABLES `mentor` WRITE;
/*!40000 ALTER TABLE `mentor` DISABLE KEYS */;
INSERT INTO `mentor` VALUES (1,1,'$2a$10$R/lZJuT9skteNmAku9Y7aeutxbOKstD5xE5bHOf74M2PHZipyt3yK','1236547899','mentor@gmail.com','men','tor','mentor@linkedin.com','$2a$10$R/lZJuT9skteNmAku9Y7aeutxbOKstD5xE5bHOf74M2PHZipyt3yK','Men01',4),(10,NULL,'pwd','4569871233','mehnaz@gmail.com','meh','mars','linked/mehnaz','$2a$10$X6bcJ4GvEtPnnWBwdgwyQ.qZfEc0fmGk7zcXoU8iPNyLON7q90CUm','mentor6',3),(7,NULL,'pwd','1234567890','men5@hotmail.com','meh','wsef','men5@linkedin.com','$2a$10$gNxXDJ7WEIJSHTD7whE0E.bZ0goo9z34xJF7i1YBCRefdrWS8n1KS','men5',8),(6,NULL,'pwd','2356789098','men3@gmail.com','fdg','gerthg','linkedin/men3','$2a$10$0Qx1GlXhw8EjrNWHhD42tepXivwvVkQhQr/S32CzXUQoR9gpdFxoC','men3',4),(22,NULL,'pwd','1236541236','wdfwq@mail.com','nd','k','dsafwege','$2a$10$t974bOfCd9hK893p0TTUYudLSLSzix8s8M5K124JErp0A5cn/BIIi','mentorMeh',5);
/*!40000 ALTER TABLE `mentor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mentor_calendar`
--

LOCK TABLES `mentor_calendar` WRITE;
/*!40000 ALTER TABLE `mentor_calendar` DISABLE KEYS */;
INSERT INTO `mentor_calendar` VALUES (1,'2019-08-08','11:00:00','2019-01-01','12:00:00',1);
/*!40000 ALTER TABLE `mentor_calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mentor_skill`
--

LOCK TABLES `mentor_skill` WRITE;
/*!40000 ALTER TABLE `mentor_skill` DISABLE KEYS */;
INSERT INTO `mentor_skill` VALUES (1,3,'Notes,Online',4,'2',1,1),(2,2,'Links',5,'4',7,2),(24,2,'s',4,'clg',22,3),(23,3,'notes',4,'college',22,4);
/*!40000 ALTER TABLE `mentor_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'MENTOR'),(2,'TRAINEE');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'7','UI','Angular','angular'),(2,'5','Backend','Spring','spring'),(3,'4','Database','SQL','sql'),(4,'3','SQL','Hibernate','hibernate');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `technology`
--

LOCK TABLES `technology` WRITE;
/*!40000 ALTER TABLE `technology` DISABLE KEYS */;
INSERT INTO `technology` VALUES (1,'7','HTML','Angular','ttoocc'),(2,'5','Java','Spring','toc'),(3,'4','Database','SQL','sql'),(4,'3','SQL','Hibernate','hiber');
/*!40000 ALTER TABLE `technology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `trainee`
--

LOCK TABLES `trainee` WRITE;
/*!40000 ALTER TABLE `trainee` DISABLE KEYS */;
INSERT INTO `trainee` VALUES (1,'$2a$10$R/lZJuT9skteNmAku9Y7aeutxbOKstD5xE5bHOf74M2PHZipyt3yK','4563217893','trainee@gmail.com','trai','nee','$2a$10$R/lZJuT9skteNmAku9Y7aeutxbOKstD5xE5bHOf74M2PHZipyt3yK','Tra01'),(41,'$2a$10$p9G5X7CU1fq3CPDdt2vSHeVX81TpnonwndZ/sPy22OdKPVLOpdrR2','1236547899','wfefewfw@gmail.com','nd','nd','$2a$10$tycijH8vEEWX9SL6NgS2K.1Txaq9/GEAr0yYRtcVbj2Dd2N6RnenK','traineeMeh'),(10,'$2a$10$s5F/LbltEO9Eg269//gTFeJFO4fY6hUdSkNHl5SnjVX66w.jgqSPq','1234567888','meh@hotmail.com','meh','kvsdfm','$2a$10$uoolLlWBMEWVoRafpA862.lWhMcu7tEaedn1.3EnLj6MKCLB4Xeza','trainee1');
/*!40000 ALTER TABLE `trainee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `training`
--

LOCK TABLES `training` WRITE;
/*!40000 ALTER TABLE `training` DISABLE KEYS */;
INSERT INTO `training` VALUES (3,'APPROVED',1,1,1),(7,'APPROVED',1,1,10),(12,'APPROVED',7,2,41);
/*!40000 ALTER TABLE `training` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'$2a$10$R/lZJuT9skteNmAku9Y7aeutxbOKstD5xE5bHOf74M2PHZipyt3yK','Tra01',NULL),(2,'$2a$10$R/lZJuT9skteNmAku9Y7aeutxbOKstD5xE5bHOf74M2PHZipyt3yK','Men01',NULL),(18,'$2a$10$gNxXDJ7WEIJSHTD7whE0E.bZ0goo9z34xJF7i1YBCRefdrWS8n1KS','men5',NULL),(11,'$2a$10$uoolLlWBMEWVoRafpA862.lWhMcu7tEaedn1.3EnLj6MKCLB4Xeza','trainee1',NULL),(42,'$2a$10$tycijH8vEEWX9SL6NgS2K.1Txaq9/GEAr0yYRtcVbj2Dd2N6RnenK','traineeMeh',NULL),(43,'$2a$10$t974bOfCd9hK893p0TTUYudLSLSzix8s8M5K124JErp0A5cn/BIIi','mentorMeh',NULL),(21,'$2a$10$X6bcJ4GvEtPnnWBwdgwyQ.qZfEc0fmGk7zcXoU8iPNyLON7q90CUm','mentor6',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2019-12-11 14:46:31
