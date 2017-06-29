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
-- Table structure for table `Events`
--

DROP TABLE IF EXISTS `Events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Events` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
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
  `transactionId` tinytext NOT NULL,
  `clientIp` tinytext NOT NULL,
  `clientPort` tinytext NOT NULL,
  `serverIp` tinytext NOT NULL,
  `serverPort` tinytext NOT NULL,
  `method` tinytext,
  `destinationPage` mediumtext,
  `protocol` tinytext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Events`
--

LOCK TABLES `Events` WRITE;
/*!40000 ALTER TABLE `Events` DISABLE KEYS */;
INSERT INTO `Events` VALUES (1,'--d3954674-A--\n[25/Jun/2017:13:40:55 --0300] WU-nH38AAQEAAAUAGLYAAAAC 192.168.1.100 48415 192.168.1.108 80\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'--d3954674-Z--\n','FECHA INGRESADA','123456789','CLIENT IP','CLIENT PORT','SERVER IP','SERVER PORT',NULL,NULL,NULL),(2,'--d3954674-A--\n[25/Jun/2017:13:40:55 --0300] WU-nH38AAQEAAAUAGLYAAAAC 192.168.1.100 48415 192.168.1.108 80\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'--d3954674-Z--\n','FECHA INGRESADA','123456789','CLIENT IP','CLIENT PORT','SERVER IP','SERVER PORT',NULL,NULL,NULL),(3,'--d3954674-A--\n[25/Jun/2017:13:40:55 --0300] WU-nH38AAQEAAAUAGLYAAAAC 192.168.1.100 48415 192.168.1.108 80\n','--d3954674-B--\nPOST /login.php HTTP/1.1\nHost: 192.168.1.108\nConnection: keep-alive\nContent-Length: 46\nCache-Control: max-age=0\nOrigin: http://192.168.1.108\nUpgrade-Insecure-Requests: 1\nUser-Agent: Mozilla/5.0 (Linux; Android 4.2.2; ME173X Build/JDQ39) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.92 Safari/537.36\nContent-Type: application/x-www-form-urlencoded\nAccept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8\nReferer: http://192.168.1.108/login.php\nAccept-Encoding: gzip, deflate\nAccept-Language: es-US,es-419;q=0.8,es;q=0.6\n','--d3954674-C--\nusername=%27+or+true+--+&password=&login=Login\n',NULL,'--d3954674-E--\n<!DOCTYPE HTML PUBLIC \"-//IETF//DTD HTML 2.0//EN\">\n<html><head>\n<title>403 Forbidden</title>\n</head><body>\n<h1>Forbidden</h1>\n<p>You don\'t have permission to access /login.php\non this server.<br />\n</p>\n<hr>\n<address>Apache/2.4.10 (Debian) Server at 192.168.1.108 Port 80</address>\n</body></html>\n','--d3954674-F--\nHTTP/1.1 403 Forbidden\nContent-Length: 297\nKeep-Alive: timeout=5, max=100\nConnection: Keep-Alive\nContent-Type: text/html; charset=iso-8859-1\n',NULL,'--d3954674-H--\nMessage: Warning. Pattern match \"^[\\\\d.:]+$\" at REQUEST_HEADERS:Host. [file \"/usr/share/modsecurity-crs/rules/REQUEST-920-PROTOCOL-ENFORCEMENT.conf\"] [line \"793\"] [id \"920350\"] [rev \"2\"] [msg \"Host header is a numeric IP address\"] [data \"192.168.1.108\"] [severity \"WARNING\"] [ver \"OWASP_CRS/3.0.0\"] [maturity \"9\"] [accuracy \"9\"] [tag \"application-multi\"] [tag \"language-multi\"] [tag \"platform-multi\"] [tag \"attack-protocol\"] [tag \"OWASP_CRS/PROTOCOL_VIOLATION/IP_HOST\"] [tag \"WASCTC/WASC-21\"] [tag \"OWASP_TOP_10/A7\"] [tag \"PCI/6.5.10\"]\nMessage: Warning. detected SQLi using libinjection with fingerprint \'s&1c\' [file \"/usr/share/modsecurity-crs/rules/REQUEST-942-APPLICATION-ATTACK-SQLI.conf\"] [line \"68\"] [id \"942100\"] [rev \"1\"] [msg \"SQL Injection Attack Detected via libinjection\"] [data \"Matched Data: s&1c found within ARGS:username: \' or true -- \"] [severity \"CRITICAL\"] [ver \"OWASP_CRS/3.0.0\"] [maturity \"1\"] [accuracy \"8\"] [tag \"application-multi\"] [tag \"language-multi\"] [tag \"platform-multi\"] [tag \"attack-sqli\"] [tag \"OWASP_CRS/WEB_ATTACK/SQL_INJECTION\"] [tag \"WASCTC/WASC-19\"] [tag \"OWASP_TOP_10/A1\"] [tag \"OWASP_AppSensor/CIE1\"] [tag \"PCI/6.5.2\"]\nMessage: Warning. detected SQLi using libinjection with fingerprint \'s&1\' [file \"/usr/share/modsecurity-crs/rules/REQUEST-942-APPLICATION-ATTACK-SQLI.conf\"] [line \"68\"] [id \"942100\"] [rev \"1\"] [msg \"SQL Injection Attack Detected via libinjection\"] [data \"Matched Data: s&1 found within ARGS:username: \' or true \"] [severity \"CRITICAL\"] [ver \"OWASP_CRS/3.0.0\"] [maturity \"1\"] [accuracy \"8\"] [tag \"application-multi\"] [tag \"language-multi\"] [tag \"platform-multi\"] [tag \"attack-sqli\"] [tag \"OWASP_CRS/WEB_ATTACK/SQL_INJECTION\"] [tag \"WASCTC/WASC-19\"] [tag \"OWASP_TOP_10/A1\"] [tag \"OWASP_AppSensor/CIE1\"] [tag \"PCI/6.5.2\"]\nMessage: Access denied with code 403 (phase 2). Operator GE matched 5 at TX:anomaly_score. [file \"/usr/share/modsecurity-crs/rules/REQUEST-949-BLOCKING-EVALUATION.conf\"] [line \"57\"] [id \"949110\"] [msg \"Inbound Anomaly Score Exceeded (Total Score: 13)\"] [severity \"CRITICAL\"] [tag \"application-multi\"] [tag \"language-multi\"] [tag \"platform-multi\"] [tag \"attack-generic\"]\nMessage: Warning. Operator GE matched 5 at TX:inbound_anomaly_score. [file \"/usr/share/modsecurity-crs/rules/RESPONSE-980-CORRELATION.conf\"] [line \"73\"] [id \"980130\"] [msg \"Inbound Anomaly Score Exceeded (Total Inbound Score: 13 - SQLI=10,XSS=0,RFI=0,LFI=0,RCE=0,PHPI=0,HTTP=0,SESS=0): SQL Injection Attack Detected via libinjection\"] [tag \"event-correlation\"]\nAction: Intercepted (phase 2)\nApache-Handler: application/x-httpd-php\nStopwatch: 1498408735690258 4706 (- - -)\nStopwatch2: 1498408735690258 4706; combined=3765, p1=523, p2=3020, p3=0, p4=0, p5=222, sr=20, sw=0, l=0, gc=0\nResponse-Body-Transformed: Dechunked\nProducer: ModSecurity for Apache/2.8.0 (http://www.modsecurity.org/); OWASP_CRS/3.0.0.\nServer: Apache/2.4.10 (Debian)\nEngine-Mode: \"ENABLED\"\n',NULL,NULL,NULL,'--d3954674-Z--\n','25/Jun/2017:13:40:55 --0300','WU-nH38AAQEAAAUAGLYAAAAC','192.168.1.100','48415','192.168.1.108','80\n',NULL,NULL,NULL),(4,'--d3954674-A--\n[25/Jun/2017:13:40:55 --0300] WU-nH38AAQEAAAUAGLYAAAAC 192.168.1.100 48415 192.168.1.108 80\n','--d3954674-B--\nPOST /login.php HTTP/1.1\nHost: 192.168.1.108\nConnection: keep-alive\nContent-Length: 46\nCache-Control: max-age=0\nOrigin: http://192.168.1.108\nUpgrade-Insecure-Requests: 1\nUser-Agent: Mozilla/5.0 (Linux; Android 4.2.2; ME173X Build/JDQ39) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.92 Safari/537.36\nContent-Type: application/x-www-form-urlencoded\nAccept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8\nReferer: http://192.168.1.108/login.php\nAccept-Encoding: gzip, deflate\nAccept-Language: es-US,es-419;q=0.8,es;q=0.6\n','--d3954674-C--\nusername=%27+or+true+--+&password=&login=Login\n',NULL,'--d3954674-E--\n<!DOCTYPE HTML PUBLIC \"-//IETF//DTD HTML 2.0//EN\">\n<html><head>\n<title>403 Forbidden</title>\n</head><body>\n<h1>Forbidden</h1>\n<p>You don\'t have permission to access /login.php\non this server.<br />\n</p>\n<hr>\n<address>Apache/2.4.10 (Debian) Server at 192.168.1.108 Port 80</address>\n</body></html>\n','--d3954674-F--\nHTTP/1.1 403 Forbidden\nContent-Length: 297\nKeep-Alive: timeout=5, max=100\nConnection: Keep-Alive\nContent-Type: text/html; charset=iso-8859-1\n',NULL,'--d3954674-H--\nMessage: Warning. Pattern match \"^[\\\\d.:]+$\" at REQUEST_HEADERS:Host. [file \"/usr/share/modsecurity-crs/rules/REQUEST-920-PROTOCOL-ENFORCEMENT.conf\"] [line \"793\"] [id \"920350\"] [rev \"2\"] [msg \"Host header is a numeric IP address\"] [data \"192.168.1.108\"] [severity \"WARNING\"] [ver \"OWASP_CRS/3.0.0\"] [maturity \"9\"] [accuracy \"9\"] [tag \"application-multi\"] [tag \"language-multi\"] [tag \"platform-multi\"] [tag \"attack-protocol\"] [tag \"OWASP_CRS/PROTOCOL_VIOLATION/IP_HOST\"] [tag \"WASCTC/WASC-21\"] [tag \"OWASP_TOP_10/A7\"] [tag \"PCI/6.5.10\"]\nMessage: Warning. detected SQLi using libinjection with fingerprint \'s&1c\' [file \"/usr/share/modsecurity-crs/rules/REQUEST-942-APPLICATION-ATTACK-SQLI.conf\"] [line \"68\"] [id \"942100\"] [rev \"1\"] [msg \"SQL Injection Attack Detected via libinjection\"] [data \"Matched Data: s&1c found within ARGS:username: \' or true -- \"] [severity \"CRITICAL\"] [ver \"OWASP_CRS/3.0.0\"] [maturity \"1\"] [accuracy \"8\"] [tag \"application-multi\"] [tag \"language-multi\"] [tag \"platform-multi\"] [tag \"attack-sqli\"] [tag \"OWASP_CRS/WEB_ATTACK/SQL_INJECTION\"] [tag \"WASCTC/WASC-19\"] [tag \"OWASP_TOP_10/A1\"] [tag \"OWASP_AppSensor/CIE1\"] [tag \"PCI/6.5.2\"]\nMessage: Warning. detected SQLi using libinjection with fingerprint \'s&1\' [file \"/usr/share/modsecurity-crs/rules/REQUEST-942-APPLICATION-ATTACK-SQLI.conf\"] [line \"68\"] [id \"942100\"] [rev \"1\"] [msg \"SQL Injection Attack Detected via libinjection\"] [data \"Matched Data: s&1 found within ARGS:username: \' or true \"] [severity \"CRITICAL\"] [ver \"OWASP_CRS/3.0.0\"] [maturity \"1\"] [accuracy \"8\"] [tag \"application-multi\"] [tag \"language-multi\"] [tag \"platform-multi\"] [tag \"attack-sqli\"] [tag \"OWASP_CRS/WEB_ATTACK/SQL_INJECTION\"] [tag \"WASCTC/WASC-19\"] [tag \"OWASP_TOP_10/A1\"] [tag \"OWASP_AppSensor/CIE1\"] [tag \"PCI/6.5.2\"]\nMessage: Access denied with code 403 (phase 2). Operator GE matched 5 at TX:anomaly_score. [file \"/usr/share/modsecurity-crs/rules/REQUEST-949-BLOCKING-EVALUATION.conf\"] [line \"57\"] [id \"949110\"] [msg \"Inbound Anomaly Score Exceeded (Total Score: 13)\"] [severity \"CRITICAL\"] [tag \"application-multi\"] [tag \"language-multi\"] [tag \"platform-multi\"] [tag \"attack-generic\"]\nMessage: Warning. Operator GE matched 5 at TX:inbound_anomaly_score. [file \"/usr/share/modsecurity-crs/rules/RESPONSE-980-CORRELATION.conf\"] [line \"73\"] [id \"980130\"] [msg \"Inbound Anomaly Score Exceeded (Total Inbound Score: 13 - SQLI=10,XSS=0,RFI=0,LFI=0,RCE=0,PHPI=0,HTTP=0,SESS=0): SQL Injection Attack Detected via libinjection\"] [tag \"event-correlation\"]\nAction: Intercepted (phase 2)\nApache-Handler: application/x-httpd-php\nStopwatch: 1498408735690258 4706 (- - -)\nStopwatch2: 1498408735690258 4706; combined=3765, p1=523, p2=3020, p3=0, p4=0, p5=222, sr=20, sw=0, l=0, gc=0\nResponse-Body-Transformed: Dechunked\nProducer: ModSecurity for Apache/2.8.0 (http://www.modsecurity.org/); OWASP_CRS/3.0.0.\nServer: Apache/2.4.10 (Debian)\nEngine-Mode: \"ENABLED\"\n',NULL,NULL,NULL,'--d3954674-Z--\n','25/Jun/2017:13:40:55 --0300','WU-nH38AAQEAAAUAGLYAAAAC','192.168.1.100','48415','192.168.1.108','80\n','HTTP/1.1',NULL,NULL),(5,'--d3954674-A--\n[25/Jun/2017:13:40:55 --0300] WU-nH38AAQEAAAUAGLYAAAAC 192.168.1.100 48415 192.168.1.108 80\n','--d3954674-B--\nPOST /login.php HTTP/1.1\nHost: 192.168.1.108\nConnection: keep-alive\nContent-Length: 46\nCache-Control: max-age=0\nOrigin: http://192.168.1.108\nUpgrade-Insecure-Requests: 1\nUser-Agent: Mozilla/5.0 (Linux; Android 4.2.2; ME173X Build/JDQ39) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.92 Safari/537.36\nContent-Type: application/x-www-form-urlencoded\nAccept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8\nReferer: http://192.168.1.108/login.php\nAccept-Encoding: gzip, deflate\nAccept-Language: es-US,es-419;q=0.8,es;q=0.6\n','--d3954674-C--\nusername=%27+or+true+--+&password=&login=Login\n',NULL,'--d3954674-E--\n<!DOCTYPE HTML PUBLIC \"-//IETF//DTD HTML 2.0//EN\">\n<html><head>\n<title>403 Forbidden</title>\n</head><body>\n<h1>Forbidden</h1>\n<p>You don\'t have permission to access /login.php\non this server.<br />\n</p>\n<hr>\n<address>Apache/2.4.10 (Debian) Server at 192.168.1.108 Port 80</address>\n</body></html>\n','--d3954674-F--\nHTTP/1.1 403 Forbidden\nContent-Length: 297\nKeep-Alive: timeout=5, max=100\nConnection: Keep-Alive\nContent-Type: text/html; charset=iso-8859-1\n',NULL,'--d3954674-H--\nMessage: Warning. Pattern match \"^[\\\\d.:]+$\" at REQUEST_HEADERS:Host. [file \"/usr/share/modsecurity-crs/rules/REQUEST-920-PROTOCOL-ENFORCEMENT.conf\"] [line \"793\"] [id \"920350\"] [rev \"2\"] [msg \"Host header is a numeric IP address\"] [data \"192.168.1.108\"] [severity \"WARNING\"] [ver \"OWASP_CRS/3.0.0\"] [maturity \"9\"] [accuracy \"9\"] [tag \"application-multi\"] [tag \"language-multi\"] [tag \"platform-multi\"] [tag \"attack-protocol\"] [tag \"OWASP_CRS/PROTOCOL_VIOLATION/IP_HOST\"] [tag \"WASCTC/WASC-21\"] [tag \"OWASP_TOP_10/A7\"] [tag \"PCI/6.5.10\"]\nMessage: Warning. detected SQLi using libinjection with fingerprint \'s&1c\' [file \"/usr/share/modsecurity-crs/rules/REQUEST-942-APPLICATION-ATTACK-SQLI.conf\"] [line \"68\"] [id \"942100\"] [rev \"1\"] [msg \"SQL Injection Attack Detected via libinjection\"] [data \"Matched Data: s&1c found within ARGS:username: \' or true -- \"] [severity \"CRITICAL\"] [ver \"OWASP_CRS/3.0.0\"] [maturity \"1\"] [accuracy \"8\"] [tag \"application-multi\"] [tag \"language-multi\"] [tag \"platform-multi\"] [tag \"attack-sqli\"] [tag \"OWASP_CRS/WEB_ATTACK/SQL_INJECTION\"] [tag \"WASCTC/WASC-19\"] [tag \"OWASP_TOP_10/A1\"] [tag \"OWASP_AppSensor/CIE1\"] [tag \"PCI/6.5.2\"]\nMessage: Warning. detected SQLi using libinjection with fingerprint \'s&1\' [file \"/usr/share/modsecurity-crs/rules/REQUEST-942-APPLICATION-ATTACK-SQLI.conf\"] [line \"68\"] [id \"942100\"] [rev \"1\"] [msg \"SQL Injection Attack Detected via libinjection\"] [data \"Matched Data: s&1 found within ARGS:username: \' or true \"] [severity \"CRITICAL\"] [ver \"OWASP_CRS/3.0.0\"] [maturity \"1\"] [accuracy \"8\"] [tag \"application-multi\"] [tag \"language-multi\"] [tag \"platform-multi\"] [tag \"attack-sqli\"] [tag \"OWASP_CRS/WEB_ATTACK/SQL_INJECTION\"] [tag \"WASCTC/WASC-19\"] [tag \"OWASP_TOP_10/A1\"] [tag \"OWASP_AppSensor/CIE1\"] [tag \"PCI/6.5.2\"]\nMessage: Access denied with code 403 (phase 2). Operator GE matched 5 at TX:anomaly_score. [file \"/usr/share/modsecurity-crs/rules/REQUEST-949-BLOCKING-EVALUATION.conf\"] [line \"57\"] [id \"949110\"] [msg \"Inbound Anomaly Score Exceeded (Total Score: 13)\"] [severity \"CRITICAL\"] [tag \"application-multi\"] [tag \"language-multi\"] [tag \"platform-multi\"] [tag \"attack-generic\"]\nMessage: Warning. Operator GE matched 5 at TX:inbound_anomaly_score. [file \"/usr/share/modsecurity-crs/rules/RESPONSE-980-CORRELATION.conf\"] [line \"73\"] [id \"980130\"] [msg \"Inbound Anomaly Score Exceeded (Total Inbound Score: 13 - SQLI=10,XSS=0,RFI=0,LFI=0,RCE=0,PHPI=0,HTTP=0,SESS=0): SQL Injection Attack Detected via libinjection\"] [tag \"event-correlation\"]\nAction: Intercepted (phase 2)\nApache-Handler: application/x-httpd-php\nStopwatch: 1498408735690258 4706 (- - -)\nStopwatch2: 1498408735690258 4706; combined=3765, p1=523, p2=3020, p3=0, p4=0, p5=222, sr=20, sw=0, l=0, gc=0\nResponse-Body-Transformed: Dechunked\nProducer: ModSecurity for Apache/2.8.0 (http://www.modsecurity.org/); OWASP_CRS/3.0.0.\nServer: Apache/2.4.10 (Debian)\nEngine-Mode: \"ENABLED\"\n',NULL,NULL,NULL,'--d3954674-Z--\n','25/Jun/2017:13:40:55 --0300','WU-nH38AAQEAAAUAGLYAAAAC','192.168.1.100','48415','192.168.1.108','80\n','HTTP/1.1',NULL,NULL),(6,'--d3954674-A--\n[25/Jun/2017:13:40:55 --0300] WU-nH38AAQEAAAUAGLYAAAAC 192.168.1.100 48415 192.168.1.108 80\n','--d3954674-B--\nPOST /login.php HTTP/1.1\nHost: 192.168.1.108\nConnection: keep-alive\nContent-Length: 46\nCache-Control: max-age=0\nOrigin: http://192.168.1.108\nUpgrade-Insecure-Requests: 1\nUser-Agent: Mozilla/5.0 (Linux; Android 4.2.2; ME173X Build/JDQ39) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.92 Safari/537.36\nContent-Type: application/x-www-form-urlencoded\nAccept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8\nReferer: http://192.168.1.108/login.php\nAccept-Encoding: gzip, deflate\nAccept-Language: es-US,es-419;q=0.8,es;q=0.6\n','--d3954674-C--\nusername=%27+or+true+--+&password=&login=Login\n',NULL,'--d3954674-E--\n<!DOCTYPE HTML PUBLIC \"-//IETF//DTD HTML 2.0//EN\">\n<html><head>\n<title>403 Forbidden</title>\n</head><body>\n<h1>Forbidden</h1>\n<p>You don\'t have permission to access /login.php\non this server.<br />\n</p>\n<hr>\n<address>Apache/2.4.10 (Debian) Server at 192.168.1.108 Port 80</address>\n</body></html>\n','--d3954674-F--\nHTTP/1.1 403 Forbidden\nContent-Length: 297\nKeep-Alive: timeout=5, max=100\nConnection: Keep-Alive\nContent-Type: text/html; charset=iso-8859-1\n',NULL,'--d3954674-H--\nMessage: Warning. Pattern match \"^[\\\\d.:]+$\" at REQUEST_HEADERS:Host. [file \"/usr/share/modsecurity-crs/rules/REQUEST-920-PROTOCOL-ENFORCEMENT.conf\"] [line \"793\"] [id \"920350\"] [rev \"2\"] [msg \"Host header is a numeric IP address\"] [data \"192.168.1.108\"] [severity \"WARNING\"] [ver \"OWASP_CRS/3.0.0\"] [maturity \"9\"] [accuracy \"9\"] [tag \"application-multi\"] [tag \"language-multi\"] [tag \"platform-multi\"] [tag \"attack-protocol\"] [tag \"OWASP_CRS/PROTOCOL_VIOLATION/IP_HOST\"] [tag \"WASCTC/WASC-21\"] [tag \"OWASP_TOP_10/A7\"] [tag \"PCI/6.5.10\"]\nMessage: Warning. detected SQLi using libinjection with fingerprint \'s&1c\' [file \"/usr/share/modsecurity-crs/rules/REQUEST-942-APPLICATION-ATTACK-SQLI.conf\"] [line \"68\"] [id \"942100\"] [rev \"1\"] [msg \"SQL Injection Attack Detected via libinjection\"] [data \"Matched Data: s&1c found within ARGS:username: \' or true -- \"] [severity \"CRITICAL\"] [ver \"OWASP_CRS/3.0.0\"] [maturity \"1\"] [accuracy \"8\"] [tag \"application-multi\"] [tag \"language-multi\"] [tag \"platform-multi\"] [tag \"attack-sqli\"] [tag \"OWASP_CRS/WEB_ATTACK/SQL_INJECTION\"] [tag \"WASCTC/WASC-19\"] [tag \"OWASP_TOP_10/A1\"] [tag \"OWASP_AppSensor/CIE1\"] [tag \"PCI/6.5.2\"]\nMessage: Warning. detected SQLi using libinjection with fingerprint \'s&1\' [file \"/usr/share/modsecurity-crs/rules/REQUEST-942-APPLICATION-ATTACK-SQLI.conf\"] [line \"68\"] [id \"942100\"] [rev \"1\"] [msg \"SQL Injection Attack Detected via libinjection\"] [data \"Matched Data: s&1 found within ARGS:username: \' or true \"] [severity \"CRITICAL\"] [ver \"OWASP_CRS/3.0.0\"] [maturity \"1\"] [accuracy \"8\"] [tag \"application-multi\"] [tag \"language-multi\"] [tag \"platform-multi\"] [tag \"attack-sqli\"] [tag \"OWASP_CRS/WEB_ATTACK/SQL_INJECTION\"] [tag \"WASCTC/WASC-19\"] [tag \"OWASP_TOP_10/A1\"] [tag \"OWASP_AppSensor/CIE1\"] [tag \"PCI/6.5.2\"]\nMessage: Access denied with code 403 (phase 2). Operator GE matched 5 at TX:anomaly_score. [file \"/usr/share/modsecurity-crs/rules/REQUEST-949-BLOCKING-EVALUATION.conf\"] [line \"57\"] [id \"949110\"] [msg \"Inbound Anomaly Score Exceeded (Total Score: 13)\"] [severity \"CRITICAL\"] [tag \"application-multi\"] [tag \"language-multi\"] [tag \"platform-multi\"] [tag \"attack-generic\"]\nMessage: Warning. Operator GE matched 5 at TX:inbound_anomaly_score. [file \"/usr/share/modsecurity-crs/rules/RESPONSE-980-CORRELATION.conf\"] [line \"73\"] [id \"980130\"] [msg \"Inbound Anomaly Score Exceeded (Total Inbound Score: 13 - SQLI=10,XSS=0,RFI=0,LFI=0,RCE=0,PHPI=0,HTTP=0,SESS=0): SQL Injection Attack Detected via libinjection\"] [tag \"event-correlation\"]\nAction: Intercepted (phase 2)\nApache-Handler: application/x-httpd-php\nStopwatch: 1498408735690258 4706 (- - -)\nStopwatch2: 1498408735690258 4706; combined=3765, p1=523, p2=3020, p3=0, p4=0, p5=222, sr=20, sw=0, l=0, gc=0\nResponse-Body-Transformed: Dechunked\nProducer: ModSecurity for Apache/2.8.0 (http://www.modsecurity.org/); OWASP_CRS/3.0.0.\nServer: Apache/2.4.10 (Debian)\nEngine-Mode: \"ENABLED\"\n',NULL,NULL,NULL,'--d3954674-Z--\n','25/Jun/2017:13:40:55 --0300','WU-nH38AAQEAAAUAGLYAAAAC','192.168.1.100','48415','192.168.1.108','80\n','HTTP/1.1',NULL,NULL);
/*!40000 ALTER TABLE `Events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EventsRules`
--

DROP TABLE IF EXISTS `EventsRules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EventsRules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eventsId` int(11) NOT NULL,
  `rulesId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_EventsRules_Events1_idx` (`eventsId`),
  KEY `fk_EventsRules_Rules1_idx` (`rulesId`),
  CONSTRAINT `fk_EventsRules_Events1` FOREIGN KEY (`eventsId`) REFERENCES `Events` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_EventsRules_Rules1` FOREIGN KEY (`rulesId`) REFERENCES `Rules` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EventsRules`
--

LOCK TABLES `EventsRules` WRITE;
/*!40000 ALTER TABLE `EventsRules` DISABLE KEYS */;
/*!40000 ALTER TABLE `EventsRules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Files`
--

DROP TABLE IF EXISTS `Files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileName` tinytext NOT NULL,
  `filePath` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filePath_UNIQUE` (`filePath`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Files`
--

LOCK TABLES `Files` WRITE;
/*!40000 ALTER TABLE `Files` DISABLE KEYS */;
/*!40000 ALTER TABLE `Files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rules`
--

DROP TABLE IF EXISTS `Rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idEventsRules` int(11) NOT NULL,
  `idFile` int(11) NOT NULL,
  `RuleId` tinytext NOT NULL,
  `message` tinytext,
  `severity` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Rules_Files1_idx` (`idFile`),
  CONSTRAINT `fk_Rules_Files1` FOREIGN KEY (`idFile`) REFERENCES `Files` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rules`
--

LOCK TABLES `Rules` WRITE;
/*!40000 ALTER TABLE `Rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `Rules` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-29 20:35:58
