CREATE DATABASE  IF NOT EXISTS `tiepschema` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `tiepschema`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: tiepschema
-- ------------------------------------------------------
-- Server version	5.6.16

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
-- Table structure for table `assembly_animation`
--

DROP TABLE IF EXISTS `assembly_animation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assembly_animation` (
  `ASSEMID` varchar(45) NOT NULL,
  `PGUIDSTLINFO` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ASSEMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assembly_animation`
--

LOCK TABLES `assembly_animation` WRITE;
/*!40000 ALTER TABLE `assembly_animation` DISABLE KEYS */;
INSERT INTO `assembly_animation` VALUES ('100001','100001.txt');
/*!40000 ALTER TABLE `assembly_animation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacture_info`
--

DROP TABLE IF EXISTS `manufacture_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacture_info` (
  `MGUID` int(11) NOT NULL,
  `MANUFACTURERNAME` varchar(45) DEFAULT NULL,
  `MANUFACTURERSITE` varchar(45) DEFAULT NULL,
  `MATERIAL` varchar(45) DEFAULT NULL,
  `MSDS` varchar(45) DEFAULT NULL,
  `MANUALREF` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MGUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacture_info`
--

LOCK TABLES `manufacture_info` WRITE;
/*!40000 ALTER TABLE `manufacture_info` DISABLE KEYS */;
INSERT INTO `manufacture_info` VALUES (100001,'Contoso','http://www.contoso.com','ABS','msds.com/toxic','100001'),(100002,'Acme','http://www.acme.com','1080 Steel','msds.com/supertoxic','100002');
/*!40000 ALTER TABLE `manufacture_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_rundown`
--

DROP TABLE IF EXISTS `product_rundown`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_rundown` (
  `PGUID` varchar(10) NOT NULL,
  `STLFILEREF` longtext,
  `MGUID` int(11) DEFAULT NULL,
  `NAME` varchar(45) DEFAULT NULL,
  `SPONLINKSREF` varchar(45) DEFAULT NULL,
  `ASSEMRANK` varchar(45) DEFAULT NULL,
  `META` varchar(45) DEFAULT NULL,
  `STLCOLLECTION` varchar(100) DEFAULT NULL,
  `COLLECTIONREF` varchar(45) DEFAULT NULL,
  `START` varchar(45) DEFAULT NULL,
  `STOP` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PGUID`),
  UNIQUE KEY `PGUID_UNIQUE` (`PGUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_rundown`
--

LOCK TABLES `product_rundown` WRITE;
/*!40000 ALTER TABLE `product_rundown` DISABLE KEYS */;
INSERT INTO `product_rundown` VALUES ('A000','Storage\\Wine_Glass_Holder_001\\Wine_Glass_Holder_001.stl',100001,'Wine Glass Holder','100001','0','Wine Glass Holder','001 002 003 004 005 006 007 008',NULL,'100 200 100',''),('A001','Lights\\Lanterns\\Asian_Lantern001\\Asian_Lantern_001.stl',100001,'Asian Lantern Bottom','100001','1','Asian Lantern Light','001','C0001','20 100 50','0 0 0'),('A002','Lights\\Lanterns\\Asian_Lantern001\\Asian_Lantern_002.stl',100001,'Asian Lantern Top ','100002','1','Asian Lantern Light','001','C0001','100 10 10','0 0 0'),('A003','Human_Anatomy\\Vertabrae\\C1\\Human_cervical_vertebrae_001.stl',100002,'Human Vertabrae C1','100002','1 ','Skeleton Human Vertabrae C4','001',NULL,'0 0 0','0 0 0'),('A004','Human_Anatomy\\Vertabrae\\C2\\Human_cervical_vertebrae_002.stl',100001,'Human Vertabrae C2','100001','1','Skeleton Human Vertabrae C1','001',NULL,'0 0 0','0 0 0'),('A005','Human_Anatomy\\Vertabrae\\C3\\Human_cervical_vertebrae_003.stl',100002,'Human Vertabrae C3','100002','1','Skeleton Human Vertabrae C2 ','001',NULL,'0 0 0','0 0 0'),('A006','Human_Anatomy\\Vertabrae\\C4\\Human_cervical_vertebrae_004.stl',100002,'Human Vertabrae C4','100001','1','Skeleton Human Vertabrae C3','001',NULL,'0 0 0','0 0 0'),('A007','Storage\\Wine_Glass_Holder_001\\Wine_Glass_Holder_001.stl',100001,'Wine Glass Holder','100001','0','Wine Glass Holder','001 002 003',NULL,'0 0 0','0 0 0'),('A008','Lights\\Lanterns\\Asian_Lantern001\\Asian_Lantern_001.stl',100001,'Asian Lantern Bottom','100001','0','Asian Lantern Light','001','C0002','0 0 0','0 0 0'),('A009','Lights\\Lanterns\\Asian_Lantern001\\Asian_Lantern_002.stl',100001,'Asian Lantern Top ','100002','0','Asian Lantern Light','001','C0002','0 0 0','0 0 0'),('A010','Human_Anatomy\\Vertabrae\\C1\\Human_cervical_vertebrae_001.stl',100002,'Human Vertabrae C1','100002','1','Skeleton Human Vertabrae C4','001',NULL,'0 0 0','0 0 0'),('A011','Human_Anatomy\\Vertabrae\\C2\\Human_cervical_vertebrae_002.stl',100001,'Human Vertabrae C2','100001','1','Skeleton Human Vertabrae C1','001',NULL,'0 0 0','0 0 0'),('A012','Human_Anatomy\\Vertabrae\\C3\\Human_cervical_vertebrae_003.stl',100002,'Human Vertabrae C3','100002','1','Skeleton Human Vertabrae C2 ','001',NULL,'0 0 0','0 0 0'),('A013','Human_Anatomy\\Vertabrae\\C4\\Human_cervical_vertebrae_004.stl',100002,'Human Vertabrae C4','100001','1','Skeleton Human Vertabrae C3','001',NULL,'0 0 0','0 0 0'),('A014','Mouse_Anatomy\\Mouse_skeleton_001.stl',100002,'House Mouse Skeleton','100001','0','Skeleton Mouse House','001',NULL,'0 0 0','0 0 0');
/*!40000 ALTER TABLE `product_rundown` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponser_links`
--

DROP TABLE IF EXISTS `sponser_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sponser_links` (
  `SPONID` varchar(45) NOT NULL,
  `SPONLINK` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`SPONID`),
  KEY `PGUID_idx` (`SPONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponser_links`
--

LOCK TABLES `sponser_links` WRITE;
/*!40000 ALTER TABLE `sponser_links` DISABLE KEYS */;
INSERT INTO `sponser_links` VALUES ('100001','Lowes.com'),('100002','Thingverse.com');
/*!40000 ALTER TABLE `sponser_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `USERNAME` varchar(16) NOT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(32) NOT NULL,
  `CREATE_TIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
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

-- Dump completed on 2014-07-16 16:50:59
