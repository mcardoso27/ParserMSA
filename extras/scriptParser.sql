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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Event`
--

LOCK TABLES `Event` WRITE;
/*!40000 ALTER TABLE `Event` DISABLE KEYS */;
INSERT INTO `Event` VALUES (7,'--d3954674-A--\n[25/Jun/2017:13:38:55 --0300] WU-nH38AAQEAAAUAGLYAAAAE 192.168.1.100 48415 192.168.1.108 80\n','--d3954674-B--\nPOST /login.php HTTP/1.1\nHost: 192.168.1.108\nConnection: keep-alive\nContent-Length: 46\nCache-Control: max-age=0\nOrigin: http://192.168.1.108\nUpgrade-Insecure-Requests: 1\nUser-Agent: Mozilla/5.0 (Linux; Android 4.2.2; ME173X Build/JDQ39) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.92 Safari/537.36\nContent-Type: application/x-www-form-urlencoded\nAccept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8\nReferer: http://192.168.1.108/login.php\nAccept-Encoding: gzip, deflate\nAccept-Language: es-US,es-419;q=0.8,es;q=0.6\n','--d3954674-C--\nusername=%27+or+true+--+&password=&login=Login\n',NULL,'--d3954674-E--\n<!DOCTYPE HTML PUBLIC \"-//IETF//DTD HTML 2.0//EN\">\n<html><head>\n<title>403 Forbidden</title>\n</head><body>\n<h1>Forbidden</h1>\n<p>You don\'t have permission to access /login.php\non this server.<br />\n</p>\n<hr>\n<address>Apache/2.4.10 (Debian) Server at 192.168.1.108 Port 80</address>\n</body></html>\n','--d3954674-F--\nHTTP/1.1 403 Forbidden\nContent-Length: 297\nKeep-Alive: timeout=5, max=100\nConnection: Keep-Alive\nContent-Type: text/html; charset=iso-8859-1\n',NULL,'--d3954674-H--\nMessage: Warning. Pattern match \"^[\\\\d.:]+$\" at REQUEST_HEADERS:Host. [file \"/usr/share/modsecurity-crs/rules/REQUEST-920-PROTOCOL-ENFORCEMENT.conf\"] [line \"793\"] [id \"920350\"] [rev \"2\"] [msg \"Host header is a numeric IP address\"] [data \"192.168.1.108\"] [severity \"WARNING\"] [ver \"OWASP_CRS/3.0.0\"] [maturity \"9\"] [accuracy \"9\"] [tag \"application-multi\"] [tag \"language-multi\"] [tag \"platform-multi\"] [tag \"attack-protocol\"] [tag \"OWASP_CRS/PROTOCOL_VIOLATION/IP_HOST\"] [tag \"WASCTC/WASC-21\"] [tag \"OWASP_TOP_10/A7\"] [tag \"PCI/6.5.10\"]\nMessage: Warning. detected SQLi using libinjection with fingerprint \'s&1c\' [file \"/usr/share/modsecurity-crs/rules/REQUEST-942-APPLICATION-ATTACK-SQLI.conf\"] [line \"68\"] [id \"942100\"] [rev \"1\"] [msg \"SQL Injection Attack Detected via libinjection\"] [data \"Matched Data: s&1c found within ARGS:username: \' or true -- \"] [severity \"CRITICAL\"] [ver \"OWASP_CRS/3.0.0\"] [maturity \"1\"] [accuracy \"8\"] [tag \"application-multi\"] [tag \"language-multi\"] [tag \"platform-multi\"] [tag \"attack-sqli\"] [tag \"OWASP_CRS/WEB_ATTACK/SQL_INJECTION\"] [tag \"WASCTC/WASC-19\"] [tag \"OWASP_TOP_10/A1\"] [tag \"OWASP_AppSensor/CIE1\"] [tag \"PCI/6.5.2\"]\nMessage: Warning. detected SQLi using libinjection with fingerprint \'s&1\' [file \"/usr/share/modsecurity-crs/rules/REQUEST-942-APPLICATION-ATTACK-SQLI.conf\"] [line \"68\"] [id \"942100\"] [rev \"1\"] [msg \"SQL Injection Attack Detected via libinjection\"] [data \"Matched Data: s&1 found within ARGS:username: \' or true \"] [severity \"CRITICAL\"] [ver \"OWASP_CRS/3.0.0\"] [maturity \"1\"] [accuracy \"8\"] [tag \"application-multi\"] [tag \"language-multi\"] [tag \"platform-multi\"] [tag \"attack-sqli\"] [tag \"OWASP_CRS/WEB_ATTACK/SQL_INJECTION\"] [tag \"WASCTC/WASC-19\"] [tag \"OWASP_TOP_10/A1\"] [tag \"OWASP_AppSensor/CIE1\"] [tag \"PCI/6.5.2\"]\nMessage: Access denied with code 403 (phase 2). Operator GE matched 5 at TX:anomaly_score. [file \"/usr/share/modsecurity-crs/rules/REQUEST-949-BLOCKING-EVALUATION.conf\"] [line \"57\"] [id \"949110\"] [msg \"Inbound Anomaly Score Exceeded (Total Score: 13)\"] [severity \"CRITICAL\"] [tag \"application-multi\"] [tag \"language-multi\"] [tag \"platform-multi\"] [tag \"attack-generic\"]\nMessage: Warning. Operator GE matched 5 at TX:inbound_anomaly_score. [file \"/usr/share/modsecurity-crs/rules/RESPONSE-980-CORRELATION.conf\"] [line \"73\"] [id \"980130\"] [msg \"Inbound Anomaly Score Exceeded (Total Inbound Score: 13 - SQLI=10,XSS=0,RFI=0,LFI=0,RCE=0,PHPI=0,HTTP=0,SESS=0): SQL Injection Attack Detected via libinjection\"] [tag \"event-correlation\"]\nAction: Intercepted (phase 2)\nApache-Handler: application/x-httpd-php\nStopwatch: 1498408735690258 4706 (- - -)\nStopwatch2: 1498408735690258 4706; combined=3765, p1=523, p2=3020, p3=0, p4=0, p5=222, sr=20, sw=0, l=0, gc=0\nResponse-Body-Transformed: Dechunked\nProducer: ModSecurity for Apache/2.8.0 (http://www.modsecurity.org/); OWASP_CRS/3.0.0.\nServer: Apache/2.4.10 (Debian)\nEngine-Mode: \"ENABLED\"\n',NULL,NULL,NULL,'--d3954674-Z--\n','25/Jun/2017:13:38:55 --0300','WU-nH38AAQEAAAUAGLYAAAAE','192.168.1.100','48415','192.168.1.108','80\n','HTTP/1.1',NULL,NULL);
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
  `transactionId` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ruleId` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_EventRule_Event1_idx` (`transactionId`),
  KEY `fk_EventRule_Rule1_idx` (`ruleId`),
  CONSTRAINT `fk_EventRule_Event1` FOREIGN KEY (`transactionId`) REFERENCES `Event` (`transactionId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_EventRule_Rule1` FOREIGN KEY (`ruleId`) REFERENCES `Rule` (`ruleId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EventRule`
--

LOCK TABLES `EventRule` WRITE;
/*!40000 ALTER TABLE `EventRule` DISABLE KEYS */;
INSERT INTO `EventRule` VALUES (64,'WU-nH38AAQEAAAUAGLYAAAAE','920350'),(65,'WU-nH38AAQEAAAUAGLYAAAAE','942100'),(66,'WU-nH38AAQEAAAUAGLYAAAAE','942100'),(67,'WU-nH38AAQEAAAUAGLYAAAAE','949110'),(68,'WU-nH38AAQEAAAUAGLYAAAAE','980130');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `File`
--

LOCK TABLES `File` WRITE;
/*!40000 ALTER TABLE `File` DISABLE KEYS */;
INSERT INTO `File` VALUES (9,'REQUEST-920-PROTOCOL-ENFORCEMENT.conf','/usr/share/modsecurity-crs/rules/REQUEST-920-PROTOCOL-ENFORCEMENT.conf'),(10,'REQUEST-942-APPLICATION-ATTACK-SQLI.conf','/usr/share/modsecurity-crs/rules/REQUEST-942-APPLICATION-ATTACK-SQLI.conf'),(11,'REQUEST-949-BLOCKING-EVALUATION.conf','/usr/share/modsecurity-crs/rules/REQUEST-949-BLOCKING-EVALUATION.conf'),(12,'RESPONSE-980-CORRELATION.conf','/usr/share/modsecurity-crs/rules/RESPONSE-980-CORRELATION.conf');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rule`
--

LOCK TABLES `Rule` WRITE;
/*!40000 ALTER TABLE `Rule` DISABLE KEYS */;
INSERT INTO `Rule` VALUES (10,'920350','Host header is a numeric IP address','WARNING',9),(11,'942100','SQL Injection Attack Detected via libinjection','CRITICAL',10),(12,'949110','Inbound Anomaly Score Exceeded (Total Score: 13)','CRITICAL',11),(13,'980130','Inbound Anomaly Score Exceeded (Total Inbound Score: 13 - SQLI=10,XSS=0,RFI=0,LFI=0,RCE=0,PHPI=0,HTTP=0,SESS=0): SQL Injection Attack Detected via libinjection','',12);
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

-- Dump completed on 2017-07-18 22:06:40
