CREATE DATABASE  IF NOT EXISTS `websystique` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `websystique`;
-- MySQL dump 10.13  Distrib 5.5.55, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: websystique
-- ------------------------------------------------------
-- Server version	5.5.55-0+deb8u1

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
-- Table structure for table `EMPLOYEE`
--

DROP TABLE IF EXISTS `EMPLOYEE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMPLOYEE` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `joining_date` date NOT NULL,
  `salary` double NOT NULL,
  `ssn` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ssn` (`ssn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEE`
--

LOCK TABLES `EMPLOYEE` WRITE;
/*!40000 ALTER TABLE `EMPLOYEE` DISABLE KEYS */;
/*!40000 ALTER TABLE `EMPLOYEE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event`
--

DROP TABLE IF EXISTS `Event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PartA` longtext NOT NULL,
  `PartB` longtext,
  `PartC` longtext,
  `PartD` longtext,
  `PartE` longtext,
  `PartF` longtext,
  `PartG` longtext,
  `PartH` longtext,
  `PartI` longtext,
  `PartJ` longtext,
  `PartK` longtext,
  `PartZ` longtext NOT NULL,
  `dateEvent` varchar(45) NOT NULL,
  `transactionId` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `clientIp` tinytext NOT NULL,
  `clientPort` tinytext NOT NULL,
  `serverIp` tinytext NOT NULL,
  `serverPort` tinytext NOT NULL,
  `method` tinytext,
  `destinationPage` mediumtext,
  `protocol` tinytext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `transactionId_UNIQUE` (`transactionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Event`
--

LOCK TABLES `Event` WRITE;
/*!40000 ALTER TABLE `Event` DISABLE KEYS */;
/*!40000 ALTER TABLE `Event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EventRule`
--

DROP TABLE IF EXISTS `EventRule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EventRule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eventId` int(11) NOT NULL,
  `ruleId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_EventRule_Event1_idx` (`eventId`),
  KEY `fk_EventRule_Rule1_idx` (`ruleId`),
  CONSTRAINT `fk_EventRule_Event1` FOREIGN KEY (`eventId`) REFERENCES `Event` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_EventRule_Rule1` FOREIGN KEY (`ruleId`) REFERENCES `Rule` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EventRule`
--

LOCK TABLES `EventRule` WRITE;
/*!40000 ALTER TABLE `EventRule` DISABLE KEYS */;
/*!40000 ALTER TABLE `EventRule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `File`
--

DROP TABLE IF EXISTS `File`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `File` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileName` tinytext NOT NULL,
  `filePath` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filePath_UNIQUE` (`filePath`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `File`
--

LOCK TABLES `File` WRITE;
/*!40000 ALTER TABLE `File` DISABLE KEYS */;
INSERT INTO `File` VALUES (1,'REQUEST-942-APPLICATION-ATTACK-SQLI.conf','/usr/share/modsecurity-crs/rules/REQUEST-942-APPLICATION-ATTACK-SQLI.conf'),(2,'REQUEST-949-BLOCKING-EVALUATION.conf','/usr/share/modsecurity-crs/rules/REQUEST-949-BLOCKING-EVALUATION.conf'),(3,'RESPONSE-980-CORRELATION.conf','/usr/share/modsecurity-crs/rules/RESPONSE-980-CORRELATION.conf');
/*!40000 ALTER TABLE `File` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rule`
--

DROP TABLE IF EXISTS `Rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ruleId` varchar(10) NOT NULL,
  `message` tinytext,
  `severity` varchar(45) DEFAULT NULL,
  `fileId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ruleId_UNIQUE` (`ruleId`),
  KEY `fk_Rule_File1_idx` (`fileId`),
  CONSTRAINT `fk_Rule_File1` FOREIGN KEY (`fileId`) REFERENCES `File` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rule`
--

LOCK TABLES `Rule` WRITE;
/*!40000 ALTER TABLE `Rule` DISABLE KEYS */;
INSERT INTO `Rule` VALUES (1,'942100','SQL Injection Attack Detected via libinjection','CRITICAL',0),(2,'949110','Inbound Anomaly Score Exceeded (Total Score: 10)','CRITICAL',0),(3,'980130','Inbound Anomaly Score Exceeded (Total Inbound Score: 10 - SQLI=10,XSS=0,RFI=0,LFI=0,RCE=0,PHPI=0,HTTP=0,SESS=0): SQL Injection Attack Detected via libinjection','',0);
/*!40000 ALTER TABLE `Rule` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-16 23:03:04
