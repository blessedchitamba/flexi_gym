-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: chtble001
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Table structure for table `AttendingMember`
--

DROP TABLE IF EXISTS `AttendingMember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttendingMember` (
  `AttendingMemberID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ClassID` int(10) unsigned DEFAULT NULL,
  `MemberID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`AttendingMemberID`),
  KEY `ClassID` (`ClassID`),
  KEY `MemberID` (`MemberID`),
  CONSTRAINT `AttendingMember_ibfk_1` FOREIGN KEY (`ClassID`) REFERENCES `Class` (`ClassID`),
  CONSTRAINT `AttendingMember_ibfk_2` FOREIGN KEY (`MemberID`) REFERENCES `Member` (`MemberID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttendingMember`
--

LOCK TABLES `AttendingMember` WRITE;
/*!40000 ALTER TABLE `AttendingMember` DISABLE KEYS */;
INSERT INTO `AttendingMember` VALUES (1,4,65),(2,2,19),(3,4,79),(4,5,54),(5,1,51),(6,1,59),(7,2,33),(8,2,39),(9,2,63),(10,7,87),(11,4,31),(12,8,99),(13,7,31),(14,7,31),(15,5,58),(16,4,57),(17,10,68),(18,6,19),(19,3,41),(20,2,94),(21,9,66),(22,9,44),(23,1,47),(24,7,95),(25,8,20),(26,1,44),(27,3,90),(28,7,58),(29,7,98),(30,8,35),(31,10,48),(32,9,83),(33,8,72),(34,6,19),(35,2,15),(36,4,69),(37,1,1),(38,7,35),(39,2,4),(40,3,69),(41,4,40),(42,2,3),(43,5,38),(44,6,26),(45,9,2),(46,7,72),(47,1,7),(48,8,5),(49,3,72),(50,8,67),(51,7,3),(52,4,48),(53,10,9),(54,2,19),(55,1,17),(56,4,22),(57,6,27),(58,8,58),(59,8,39),(60,6,81),(61,8,54),(62,2,63),(63,5,57),(64,8,58),(65,1,57),(66,8,1),(67,1,28),(68,3,13),(69,5,60),(70,2,44),(71,2,49),(72,3,47),(73,1,54),(74,5,10),(75,1,63),(76,2,53),(77,7,46),(78,2,72),(79,9,17),(80,6,22),(81,3,87),(82,4,19),(83,1,22),(84,4,77),(85,9,2),(86,9,51),(87,1,47),(88,1,22),(89,3,69),(90,6,76),(91,8,67),(92,9,33),(93,8,41),(94,9,9),(95,8,43),(96,8,95),(97,6,19),(98,9,5),(99,3,55),(100,5,41);
/*!40000 ALTER TABLE `AttendingMember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Class`
--

DROP TABLE IF EXISTS `Class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Class` (
  `ClassID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `StaffID` int(10) unsigned DEFAULT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`ClassID`),
  KEY `StaffID` (`StaffID`),
  CONSTRAINT `Class_ibfk_1` FOREIGN KEY (`StaffID`) REFERENCES `Staff` (`StaffID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Class`
--

LOCK TABLES `Class` WRITE;
/*!40000 ALTER TABLE `Class` DISABLE KEYS */;
INSERT INTO `Class` VALUES (1,1,'2019-08-22'),(2,13,'2020-11-09'),(3,11,'2020-09-13'),(4,14,'2020-05-18'),(5,6,'2019-10-11'),(6,18,'2020-03-31'),(7,13,'2019-06-11'),(8,7,'2020-10-03'),(9,15,'2021-03-03'),(10,2,'2020-03-26');
/*!40000 ALTER TABLE `Class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Equipment`
--

DROP TABLE IF EXISTS `Equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Equipment` (
  `EquipmentID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `manufacturer` varchar(30) DEFAULT NULL,
  `LastServiced` date DEFAULT NULL,
  `NextService` date DEFAULT NULL,
  PRIMARY KEY (`EquipmentID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Equipment`
--

LOCK TABLES `Equipment` WRITE;
/*!40000 ALTER TABLE `Equipment` DISABLE KEYS */;
INSERT INTO `Equipment` VALUES (1,'Vivamus Nibh Dolor LLC','2011-05-03','2020-10-03'),(2,'Rhoncus PC','2005-04-22','2024-06-07'),(3,'Nisi Cum Sociis Associates','2006-07-07','2020-10-16'),(4,'Bibendum Ullamcorper LLC','2013-09-01','2024-07-29'),(5,'In Ltd','2008-05-23','2025-07-20'),(6,'Tellus Aenean Egestas Company','2007-04-05','2021-10-14'),(7,'Cursus Company','2013-06-26','2021-06-06'),(8,'Egestas A Foundation','2010-01-06','2027-02-17'),(9,'Non LLP','2016-01-10','2026-04-04'),(10,'Libero Dui Nec Industries','2013-03-24','2022-09-13'),(11,'Aliquam LLP','2008-04-04','2027-06-21'),(12,'Neque Tellus LLC','2018-09-19','2023-10-13'),(13,'Enim Institute','2015-01-21','2026-04-25'),(14,'Sed Sapien PC','2006-09-22','2021-06-27'),(15,'Ornare PC','2006-09-04','2026-05-15'),(16,'Ac Corp.','2014-09-22','2024-05-25'),(17,'Consequat Ltd','2008-09-15','2024-02-07'),(18,'Dapibus Consulting','2018-03-29','2024-03-22'),(19,'Sem Corporation','2010-08-31','2023-11-16'),(20,'Consectetuer Rhoncus Industrie','2009-09-27','2025-02-08'),(21,'Lorem Auctor Ltd','2011-09-02','2026-02-11'),(22,'Dapibus Quam Quis Consulting','2015-02-20','2025-09-04'),(23,'Leo Cras Limited','2010-02-15','2021-08-13'),(24,'Lacinia Orci Consectetuer Cons','2010-10-17','2022-06-06'),(25,'Dictum Company','2008-01-09','2021-06-26'),(26,'Est Arcu Ac Consulting','2018-01-26','2024-04-17'),(27,'Orci Ut Ltd','2013-02-24','2022-10-25'),(28,'Mi Tempor Consulting','2008-06-05','2023-05-16'),(29,'Semper Tellus Foundation','2005-02-09','2023-11-08'),(30,'Tincidunt LLC','2007-07-27','2022-08-31'),(31,'Ligula Nullam Enim Associates','2008-01-28','2024-06-08'),(32,'Rhoncus Donec Ltd','2018-05-23','2027-09-04'),(33,'Ultricies PC','2018-10-27','2026-02-25'),(34,'Libero Industries','2004-12-15','2026-01-25'),(35,'Mi Fringilla Mi Institute','2009-12-06','2020-07-10'),(36,'Id Institute','2007-04-16','2026-04-29'),(37,'Eu Elit LLP','2003-10-15','2020-05-07'),(38,'Quis Consulting','2017-01-05','2020-11-11'),(39,'Magna Consulting','2009-07-03','2027-10-15'),(40,'Amet Ultricies Sem Ltd','2006-04-15','2027-06-25'),(41,'Tellus Suspendisse Sed Limited','2016-05-05','2021-03-29'),(42,'Integer Mollis PC','2008-03-13','2023-04-17'),(43,'Elementum Associates','2011-01-18','2025-10-14'),(44,'Risus Inc.','2006-05-18','2023-01-24'),(45,'Tellus PC','2009-02-15','2022-05-30'),(46,'Odio Sagittis Consulting','2016-05-09','2021-07-26'),(47,'Volutpat Nulla Consulting','2006-08-07','2022-10-31'),(48,'Sed Dui Fusce Company','2006-10-26','2022-03-11'),(49,'Nec Ante Maecenas Associates','2014-11-27','2026-06-03'),(50,'Nulla Inc.','2012-11-08','2026-10-30'),(51,'Sit Industries','2015-01-21','2023-10-22'),(52,'Varius Consulting','2007-06-07','2022-10-29'),(53,'Aliquet Corporation','2014-02-10','2023-09-08'),(54,'Sed Malesuada LLP','2015-12-13','2020-12-28'),(55,'Massa Corporation','2003-10-06','2022-09-24'),(56,'Sed Eget LLC','2012-02-27','2020-09-25'),(57,'Phasellus LLP','2009-04-16','2025-06-25'),(58,'Mauris Blandit Corp.','2006-07-02','2020-09-12'),(59,'Sapien Imperdiet Ornare LLC','2014-09-08','2023-01-03'),(60,'Cursus Incorporated','2004-07-05','2023-06-25'),(61,'At Institute','2019-02-17','2024-07-21'),(62,'Euismod In Incorporated','2008-06-02','2021-04-11'),(63,'At Industries','2019-01-13','2024-11-02'),(64,'Imperdiet Corporation','2010-02-20','2024-02-24'),(65,'Lectus Cum Company','2013-11-18','2026-02-17'),(66,'Non Limited','2009-09-11','2022-01-22'),(67,'Luctus Lobortis Class Consulti','2010-01-18','2028-03-28'),(68,'Donec Tincidunt Donec Associat','2011-03-07','2025-03-10'),(69,'In Associates','2004-03-18','2021-07-26'),(70,'Eu Foundation','2010-07-22','2021-03-02'),(71,'Tellus Corp.','2013-03-21','2025-10-23'),(72,'Maecenas Ornare LLP','2014-09-30','2024-11-24'),(73,'Lacinia LLP','2017-01-08','2023-04-07'),(74,'At Corporation','2006-04-16','2021-11-10'),(75,'Non Limited','2011-04-17','2023-06-07'),(76,'Vitae Dolor Associates','2017-10-21','2022-01-23'),(77,'Fermentum Risus Incorporated','2011-07-14','2025-08-29'),(78,'Sapien Aenean Associates','2010-09-14','2027-02-01'),(79,'Arcu Imperdiet Ullamcorper Con','2014-02-11','2027-01-27'),(80,'Nec Company','2010-03-26','2023-11-20'),(81,'Nibh Dolor Industries','2010-03-11','2027-01-11'),(82,'Auctor Vitae Associates','2007-02-17','2027-06-03'),(83,'Sit Amet Associates','2008-11-30','2024-12-15'),(84,'Consectetuer Adipiscing Elit L','2012-04-14','2023-06-28'),(85,'Et Netus Corp.','2006-08-21','2025-12-22'),(86,'Varius Ultrices Mauris Limited','2010-05-17','2027-04-25'),(87,'Fusce Aliquam Inc.','2012-08-18','2028-02-13'),(88,'Nunc Commodo Limited','2018-11-20','2021-05-07'),(89,'Duis Ac Incorporated','2007-09-04','2027-06-26'),(90,'Vitae Diam LLP','2006-09-09','2022-08-31'),(91,'Morbi Quis LLP','2014-12-29','2025-09-29'),(92,'Ligula Associates','2006-08-19','2027-01-20'),(93,'Natoque Penatibus Limited','2003-08-04','2023-10-05'),(94,'Gravida Foundation','2013-03-08','2024-12-09'),(95,'Mauris Quis Turpis PC','2009-11-30','2022-06-20'),(96,'Gravida Non Company','2018-02-21','2028-01-14'),(97,'Mus Associates','2008-01-27','2020-04-29'),(98,'Egestas Blandit Nam Foundation','2016-06-03','2023-12-29'),(99,'Lacinia Foundation','2010-07-31','2020-12-19'),(100,'Enim Foundation','2005-10-01','2024-12-15');
/*!40000 ALTER TABLE `Equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EquipmentBooking`
--

DROP TABLE IF EXISTS `EquipmentBooking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EquipmentBooking` (
  `EquipmentBookingID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `EquipmentID` int(10) unsigned DEFAULT NULL,
  `ClassID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`EquipmentBookingID`),
  KEY `EquipmentID` (`EquipmentID`),
  KEY `ClassID` (`ClassID`),
  CONSTRAINT `EquipmentBooking_ibfk_1` FOREIGN KEY (`EquipmentID`) REFERENCES `Equipment` (`EquipmentID`),
  CONSTRAINT `EquipmentBooking_ibfk_2` FOREIGN KEY (`ClassID`) REFERENCES `Class` (`ClassID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EquipmentBooking`
--

LOCK TABLES `EquipmentBooking` WRITE;
/*!40000 ALTER TABLE `EquipmentBooking` DISABLE KEYS */;
INSERT INTO `EquipmentBooking` VALUES (1,6,4),(2,18,10),(3,3,7),(4,17,3),(5,1,7),(6,16,2),(7,11,2),(8,13,10),(9,16,9),(10,4,10),(11,1,1),(12,4,8),(13,17,5),(14,17,4),(15,16,1),(16,19,10),(17,20,10),(18,15,1),(19,7,7),(20,10,9),(21,3,1),(22,15,4),(23,19,1),(24,15,10),(25,11,1),(26,5,3),(27,4,9),(28,12,10),(29,14,3),(30,2,1),(31,1,10),(32,15,9),(33,14,6),(34,12,3),(35,16,1),(36,8,9),(37,1,4),(38,15,4),(39,13,10),(40,5,5),(41,13,10),(42,17,2),(43,9,6),(44,8,7),(45,12,9),(46,4,6),(47,7,9),(48,20,3),(49,10,10),(50,3,10),(51,2,1),(52,4,5),(53,17,9),(54,14,10),(55,15,9),(56,16,8),(57,13,4),(58,18,4),(59,5,4),(60,15,10),(61,4,2),(62,6,7),(63,11,4),(64,13,9),(65,7,1),(66,20,1),(67,6,3),(68,20,8),(69,2,3),(70,10,8),(71,10,1),(72,14,9),(73,14,1),(74,19,9),(75,6,10),(76,20,10),(77,20,6),(78,13,1),(79,9,9),(80,14,5),(81,3,7),(82,5,8),(83,8,8),(84,10,5),(85,20,9),(86,13,7),(87,18,1),(88,6,2),(89,17,7),(90,16,10),(91,20,1),(92,14,6),(93,19,3),(94,8,7),(95,14,8),(96,3,4),(97,4,7),(98,17,7),(99,19,4),(100,10,9);
/*!40000 ALTER TABLE `EquipmentBooking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Member`
--

DROP TABLE IF EXISTS `Member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Member` (
  `MemberID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(25) DEFAULT NULL,
  `LastName` varchar(25) DEFAULT NULL,
  `Postcode` varchar(10) DEFAULT NULL,
  `HouseNameOrNumber` varchar(20) DEFAULT NULL,
  `AccountNumber` int(10) DEFAULT NULL,
  `SortCode` int(6) DEFAULT NULL,
  `MembershipCost` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`MemberID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Member`
--

LOCK TABLES `Member` WRITE;
/*!40000 ALTER TABLE `Member` DISABLE KEYS */;
INSERT INTO `Member` VALUES (1,'Octavius','Thompson','13292-6359','Czech Republic',2147483647,49188,101.35),(2,'Devin','Clements','Z5255','Austria',2147483647,35540,437.40),(3,'Portia','Reeves','Z4173','Italy',2147483647,75159,482.88),(4,'Hayes','Guerrero','R4R 2V3','Comoros',2147483647,7869,926.40),(5,'Vera','Todd','606227','Algeria',1024271272,9872,542.41),(6,'Kiona','Jackson','866484','Falkland Islands',2147483647,94524,763.38),(7,'Yoshi','Herman','79484','Brunei',125815391,25892,327.02),(8,'Arthur','Walters','J3H 6C6','Thailand',2147483647,70819,522.17),(9,'Kibo','Ryan','633593','Colombia',2111324983,32898,558.12),(10,'Regina','Duncan','01309','Christmas Island',2147483647,66688,503.27),(11,'May','Zamora','040639','South Africa',2147483647,96681,789.12),(12,'Medge','Hernandez','Z8370','Belarus',2147483647,67563,687.98),(13,'Dane','Robles','94616','Belarus',2147483647,56068,748.95),(14,'Uta','Mcleod','70093','Iran',2147483647,63910,802.68),(15,'Mary','Roth','9781','Guernsey',1383435504,98642,780.72),(16,'Curran','Ratliff','169992','South Africa',2147483647,88403,472.44),(17,'Moses','Holmes','563286','Cocos (Keeling) Isla',2147483647,94182,860.17),(18,'Lucius','Park','61438-283','Hungary',2147483647,69380,651.37),(19,'Dominic','Meadows','42142','Kenya',2147483647,84152,928.35),(20,'Owen','Armstrong','33187','Guatemala',2147483647,86518,361.65),(21,'Sierra','Moon','91568','\"Virgin Islands',0,2147483647,13947.00),(22,'Darrel','Baldwin','51408','Greenland',2147483647,275,856.57),(23,'Jack','Gaines','4819','Haiti',2147483647,41841,199.21),(24,'Hedwig','Mcbride','5718','Turkey',2147483647,409,271.31),(25,'Forrest','Stewart','81280','Trinidad and Tobago',2147483647,27851,953.23),(26,'Patrick','Russell','02-272','Benin',2147483647,35148,997.11),(27,'Octavia','Rowe','926849','Poland',2147483647,71599,951.04),(28,'Shana','Macias','473744','Saint Lucia',2147483647,67319,263.97),(29,'Yuri','Warren','6133','Japan',2147483647,11556,210.42),(30,'Jasper','Obrien','JE24 9MY','Singapore',2147483647,56955,883.34),(31,'Dylan','Stokes','21344','Wallis and Futuna',2147483647,28048,283.37),(32,'Robert','Burris','8269','Sudan',2147483647,15848,437.23),(33,'Indira','Justice','78043','Estonia',2147483647,69728,371.80),(34,'Hope','Meyer','1673','United States Minor ',2147483647,18220,973.54),(35,'Marshall','Phelps','4540','Guinea',2147483647,22436,524.71),(36,'Rafael','Fry','947841','Bosnia and Herzegovi',1645915082,20601,791.15),(37,'Hiram','Leblanc','34561','Swaziland',2147483647,65181,538.65),(38,'Miranda','Hammond','C7X 2T9','Nauru',2147340918,31023,367.05),(39,'Shannon','Horn','829422','Slovenia',222107318,39425,333.91),(40,'Charlotte','Gregory','Z7783','Belize',2147483647,49992,184.30),(41,'Rhiannon','Cabrera','87-259','Bolivia',2147483647,60489,431.39),(42,'Colleen','Rojas','1551','Russian Federation',2147483647,37872,959.39),(43,'Allen','Hardin','884647','Pakistan',2147483647,90671,404.64),(44,'Leo','Webb','50170','United States',2147483647,83937,328.96),(45,'Morgan','Holman','4136','Hungary',2147483647,72891,583.43),(46,'Haley','Harrison','Z5637','Guam',2147483647,44212,452.94),(47,'Fredericka','Nguyen','74551','Gambia',1423928444,17285,338.51),(48,'Samuel','Williams','B5G 6Y8','Laos',2147483647,17612,638.38),(49,'Tashya','Nielsen','63230-3354','France',1947115161,98019,419.89),(50,'Cooper','Anderson','23106','Guyana',2147483647,22956,554.36),(51,'Randall','Rivers','75761','Uzbekistan',2147483647,30413,121.75),(52,'Cleo','Williamson','10515','Peru',896066775,28307,402.00),(53,'Astra','Johns','61229','Bosnia and Herzegovi',2147483647,73770,603.87),(54,'Xyla','Tanner','15258','Solomon Islands',2147483647,96465,956.21),(55,'Tamekah','Herrera','78897-6640','Uganda',1561974550,2556,189.08),(56,'Ali','Porter','11292','Afghanistan',2147483647,46912,871.36),(57,'Xyla','Spears','5429','Zimbabwe',2147483647,3020,587.06),(58,'Basia','Richards','4888','Laos',2147483647,76017,609.31),(59,'Christen','Pollard','14561','Somalia',754804146,21550,674.49),(60,'Brent','Gray','55-541','Philippines',2147483647,83025,145.59),(61,'Joy','Hanson','98210','Mauritius',1445929513,59474,961.92),(62,'Ivan','Allison','24363','Cyprus',2147483647,8591,476.47),(63,'Bevis','Benjamin','8848','Madagascar',2147483647,95344,361.98),(64,'Leila','Moran','164280','Tanzania',387146877,75079,763.54),(65,'Gil','Oliver','Z2967','Holy See (Vatican Ci',2147483647,90999,457.60),(66,'Germane','Cummings','79683','French Polynesia',2147483647,13557,633.50),(67,'Janna','Mueller','77729','French Southern Terr',2147483647,21840,748.26),(68,'Kylee','Calhoun','4733','Pitcairn Islands',2147483647,3474,368.41),(69,'Elizabeth','Foreman','41410','El Salvador',2147483647,4316,163.02),(70,'Tyler','Phelps','3321','South Africa',2147483647,70420,693.00),(71,'Kieran','Beard','376508','Iceland',1253636856,5854,245.25),(72,'Lois','Hernandez','573350','Andorra',2147483647,77455,163.61),(73,'Mufutau','Stanley','72-752','Palau',2147483647,88201,818.52),(74,'Wyoming','Hines','05361','Trinidad and Tobago',2147483647,18870,725.77),(75,'Willa','Reese','G15 5XK','Sri Lanka',2147483647,83309,138.99),(76,'Ifeoma','Payne','111074','Ecuador',382294168,49908,902.36),(77,'Jael','Klein','55-386','Chile',2147483647,21873,513.72),(78,'Kieran','Frost','8133','China',2147483647,644,713.23),(79,'Mary','Berry','3519','Swaziland',1804757150,42014,999.56),(80,'Yvette','Hammond','11913','Madagascar',2147483647,78509,911.28),(81,'Lester','Townsend','02157','Pitcairn Islands',2147483647,15542,333.90),(82,'Neve','Oneill','63615','Belize',700424537,58060,133.53),(83,'Gabriel','Conway','75498','Saint Pierre and Miq',2147483647,80039,869.06),(84,'Kimberly','Gates','17876','Philippines',2083229843,30560,820.79),(85,'Scarlett','Avila','7958 UZ','New Caledonia',2147483647,24249,822.90),(86,'Christopher','Hendrix','02539','Philippines',2147483647,48080,145.64),(87,'Eden','Weber','593991','Bolivia',2147483647,31755,373.49),(88,'Blossom','Hood','3361','Finland',2147483647,21599,346.36),(89,'Holmes','Mcdonald','21383','South Africa',2147483647,52365,601.07),(90,'Yasir','Rivera','480422','Iraq',876358802,73986,849.58),(91,'Mia','Miller','444984','Montserrat',2147483647,63177,942.46),(92,'Charles','Alston','4416','Viet Nam',2147483647,84529,385.37),(93,'Joel','Chambers','361694','South Georgia and Th',2147483647,97530,805.35),(94,'Aileen','Burnett','800335','Brunei',2147483647,8568,310.19),(95,'Jasmine','Bennett','21336','Iran',2147483647,66398,979.95),(96,'Jolene','Cunningham','12466','Ethiopia',114232479,62573,696.43),(97,'Emma','Brock','A6M 0V6','Syria',2147483647,8170,140.21),(98,'Coby','Knox','617359','Solomon Islands',2147483647,77226,679.59),(99,'Ingrid','Lynn','55471-0732','Panama',2147483647,74346,975.12),(100,'William','Haney','59-259','French Polynesia',2147483647,87023,987.26);
/*!40000 ALTER TABLE `Member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MemberPayment`
--

DROP TABLE IF EXISTS `MemberPayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MemberPayment` (
  `MemberPaymentID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MemberID` int(10) unsigned DEFAULT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Amount` decimal(15,2) DEFAULT NULL,
  `Processed` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`MemberPaymentID`),
  KEY `MemberID` (`MemberID`),
  CONSTRAINT `MemberPayment_ibfk_1` FOREIGN KEY (`MemberID`) REFERENCES `Member` (`MemberID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MemberPayment`
--

LOCK TABLES `MemberPayment` WRITE;
/*!40000 ALTER TABLE `MemberPayment` DISABLE KEYS */;
INSERT INTO `MemberPayment` VALUES (1,82,'2020-01-13 22:00:00',976.28,0),(2,58,'2018-11-27 22:00:00',639.05,0),(3,8,'2019-09-01 22:00:00',555.63,0),(4,37,'2019-06-24 22:00:00',389.78,0),(5,28,'2018-06-28 22:00:00',537.92,0),(6,66,'2017-05-31 22:00:00',663.46,0),(7,59,'2017-04-22 22:00:00',248.70,0),(8,71,'2017-08-18 22:00:00',702.57,0),(9,11,'2018-08-05 22:00:00',872.35,0),(10,16,'2017-08-14 22:00:00',304.77,0),(11,71,'2018-11-30 22:00:00',884.08,0),(12,20,'2017-08-01 22:00:00',938.13,0),(13,100,'2018-02-11 22:00:00',317.28,0),(14,85,'2017-08-18 22:00:00',416.21,0),(15,94,'2020-02-08 22:00:00',483.92,0),(16,11,'2018-12-26 22:00:00',578.20,0),(17,4,'2018-12-01 22:00:00',645.79,0),(18,85,'2017-09-09 22:00:00',435.70,0),(19,65,'2019-03-07 22:00:00',994.06,0),(20,99,'2017-10-20 22:00:00',646.66,0),(21,86,'2020-03-14 22:00:00',950.48,0),(22,29,'2019-02-25 22:00:00',614.09,0),(23,5,'2017-05-10 22:00:00',336.66,0),(24,60,'2019-06-15 22:00:00',900.06,0),(25,33,'2019-01-15 22:00:00',807.96,0),(26,12,'2018-11-30 22:00:00',996.56,0),(27,48,'2017-09-08 22:00:00',727.29,0),(28,82,'2018-08-14 22:00:00',106.52,0),(29,81,'2018-03-03 22:00:00',558.86,0),(30,26,'2019-04-25 22:00:00',879.91,0),(31,80,'2018-04-21 22:00:00',822.37,0),(32,33,'2019-03-15 22:00:00',161.14,0),(33,88,'2017-08-11 22:00:00',671.64,0),(34,31,'2019-07-10 22:00:00',871.84,0),(35,25,'2019-09-17 22:00:00',957.07,0),(36,64,'2017-10-06 22:00:00',114.97,0),(37,70,'2017-06-07 22:00:00',929.81,0),(38,73,'2018-12-05 22:00:00',894.66,0),(39,5,'2020-02-04 22:00:00',401.74,0),(40,89,'2017-10-13 22:00:00',299.87,0),(41,26,'2019-10-22 22:00:00',800.29,0),(42,85,'2017-07-27 22:00:00',457.15,0),(43,13,'2019-04-16 22:00:00',577.52,0),(44,4,'2019-08-19 22:00:00',568.72,0),(45,35,'2018-10-12 22:00:00',703.02,0),(46,91,'2018-11-29 22:00:00',891.16,0),(47,57,'2017-10-05 22:00:00',668.44,0),(48,5,'2018-01-31 22:00:00',879.42,0),(49,64,'2018-04-07 22:00:00',806.27,0),(50,47,'2019-06-26 22:00:00',340.01,0),(51,62,'2018-07-22 22:00:00',626.93,0),(52,75,'2018-09-28 22:00:00',388.76,0),(53,1,'2017-11-17 22:00:00',469.63,0),(54,19,'2018-08-16 22:00:00',894.41,0),(55,60,'2018-01-15 22:00:00',210.33,0),(56,70,'2018-01-07 22:00:00',895.44,0),(57,69,'2019-09-05 22:00:00',359.99,0),(58,55,'2017-11-04 22:00:00',803.39,0),(59,41,'2018-02-10 22:00:00',147.16,0),(60,59,'2018-01-20 22:00:00',272.40,0),(61,51,'2019-11-23 22:00:00',206.53,0),(62,58,'2017-05-15 22:00:00',787.00,0),(63,93,'2020-01-16 22:00:00',790.28,0),(64,80,'2019-09-30 22:00:00',319.15,0),(65,79,'2020-01-27 22:00:00',328.91,0),(66,97,'2017-08-25 22:00:00',269.40,0),(67,53,'2019-10-28 22:00:00',271.50,0),(68,78,'2017-11-08 22:00:00',868.42,0),(69,82,'2017-08-17 22:00:00',186.78,0),(70,4,'2019-12-12 22:00:00',943.78,0),(71,53,'2019-06-28 22:00:00',833.36,0),(72,5,'2018-10-07 22:00:00',886.21,0),(73,67,'2018-05-08 22:00:00',968.27,0),(74,42,'2019-02-27 22:00:00',898.14,0),(75,35,'2019-07-24 22:00:00',907.91,0),(76,55,'2019-12-02 22:00:00',408.05,0),(77,22,'2018-03-22 22:00:00',243.14,0),(78,79,'2017-06-27 22:00:00',506.95,0),(79,63,'2018-07-01 22:00:00',933.89,0),(80,63,'2018-12-11 22:00:00',282.66,0),(81,87,'2019-11-11 22:00:00',954.65,0),(82,45,'2018-10-09 22:00:00',229.65,0),(83,25,'2017-05-21 22:00:00',487.96,0),(84,83,'2018-01-02 22:00:00',957.96,0),(85,98,'2018-07-02 22:00:00',222.38,0),(86,33,'2020-02-09 22:00:00',173.93,0),(87,58,'2020-02-27 22:00:00',980.31,0),(88,68,'2019-09-05 22:00:00',386.52,0),(89,64,'2018-10-13 22:00:00',811.29,0),(90,10,'2017-05-25 22:00:00',219.37,0),(91,23,'2020-03-16 22:00:00',550.18,0),(92,46,'2019-07-30 22:00:00',416.74,0),(93,51,'2018-12-24 22:00:00',706.05,0),(94,71,'2019-10-11 22:00:00',486.43,0),(95,67,'2020-02-02 22:00:00',821.25,0),(96,86,'2018-02-09 22:00:00',211.84,0),(97,70,'2018-03-16 22:00:00',249.41,0),(98,79,'2019-03-09 22:00:00',740.74,0),(99,91,'2019-04-24 22:00:00',872.94,0),(100,53,'2018-08-13 22:00:00',775.55,0);
/*!40000 ALTER TABLE `MemberPayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Staff`
--

DROP TABLE IF EXISTS `Staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Staff` (
  `StaffID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(25) DEFAULT NULL,
  `LastName` varchar(25) DEFAULT NULL,
  `Postcode` varchar(10) DEFAULT NULL,
  `HouseNameOrNumber` varchar(20) DEFAULT NULL,
  `AccountNumber` int(10) DEFAULT NULL,
  `SortCode` int(6) DEFAULT NULL,
  `Salary` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`StaffID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Staff`
--

LOCK TABLES `Staff` WRITE;
/*!40000 ALTER TABLE `Staff` DISABLE KEYS */;
INSERT INTO `Staff` VALUES (1,'Ciara','Fisher','624968','Croatia',1450915042,67204,12.48),(2,'Mufutau','Chavez','331708','Mali',2147483647,20041,152.54),(3,'Yuli','Frank','11-882','Papua New Guinea',2147483647,83358,553.60),(4,'Sasha','Hooper','73679','CÃ´te D\'Ivoire (Ivor',2147483647,13672,941.36),(5,'Brady','Murphy','098049','Albania',2147483647,19621,657.10),(6,'Hayes','Terry','267830','Russian Federation',2147483647,80239,571.68),(7,'Molly','Atkinson','02595','Hong Kong',2147483647,27580,718.92),(8,'Hedda','Medina','92984','Guam',2147483647,41442,713.90),(9,'Velma','Campbell','A0H 7Z4','Australia',2147483647,99104,568.21),(10,'Charlotte','Ruiz','22457-342','United Kingdom (Grea',2147483647,54557,172.31),(11,'Maxwell','Serrano','24320','Croatia',2147483647,36678,808.70),(12,'Tatiana','Carter','F43 8QQ','Tajikistan',2147483647,6832,472.16),(13,'Colt','Chan','50417','Congo (Brazzaville)',2147483647,6059,80.57),(14,'Chancellor','White','9981 RW','Turkmenistan',2147483647,80717,994.92),(15,'Stella','Parsons','00528','Nauru',2147483647,60899,32.46),(16,'Kermit','Salinas','946135','Solomon Islands',2037882608,66408,449.36),(17,'Keegan','Beach','827818','Ireland',862242792,24099,714.60),(18,'Cadman','Duran','64671','Rwanda',2147483647,38852,721.73),(19,'Natalie','Schwartz','Z5752','Kenya',2147483647,89489,969.31),(20,'Cruz','Mann','44729','Kyrgyzstan',2147483647,95423,584.20);
/*!40000 ALTER TABLE `Staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StaffPayment`
--

DROP TABLE IF EXISTS `StaffPayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StaffPayment` (
  `StaffPaymentID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `StaffID` int(10) unsigned DEFAULT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Amount` decimal(15,2) DEFAULT NULL,
  `Processed` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`StaffPaymentID`),
  KEY `StaffID` (`StaffID`),
  CONSTRAINT `StaffPayment_ibfk_1` FOREIGN KEY (`StaffID`) REFERENCES `Staff` (`StaffID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StaffPayment`
--

LOCK TABLES `StaffPayment` WRITE;
/*!40000 ALTER TABLE `StaffPayment` DISABLE KEYS */;
INSERT INTO `StaffPayment` VALUES (1,13,'2018-07-29 22:00:00',1477.52,0),(2,16,'2018-07-30 22:00:00',8383.54,0),(3,8,'2017-06-07 22:00:00',6568.79,0),(4,6,'2017-04-13 22:00:00',7192.36,0),(5,6,'2018-03-20 22:00:00',7656.32,0),(6,11,'2018-03-30 22:00:00',3529.43,0),(7,17,'2019-01-21 22:00:00',7414.13,0),(8,17,'2020-03-02 22:00:00',7607.52,0),(9,6,'2018-09-20 22:00:00',1837.86,0),(10,16,'2018-06-04 22:00:00',6733.82,0),(11,8,'2019-11-29 22:00:00',2105.84,0),(12,8,'2019-05-20 22:00:00',3663.61,0),(13,1,'2018-07-05 22:00:00',9191.20,0),(14,11,'2018-11-08 22:00:00',1967.86,0),(15,18,'2017-07-11 22:00:00',2634.64,0),(16,13,'2018-05-21 22:00:00',5774.84,0),(17,8,'2018-08-26 22:00:00',4815.49,0),(18,11,'2019-12-03 22:00:00',2085.16,0),(19,2,'2019-07-10 22:00:00',3864.72,0),(20,6,'2018-03-15 22:00:00',9232.33,0),(21,20,'2018-01-12 22:00:00',6639.04,0),(22,13,'2020-02-02 22:00:00',7873.49,0),(23,14,'2019-10-06 22:00:00',6096.63,0),(24,8,'2018-01-27 22:00:00',9347.57,0),(25,13,'2018-08-19 22:00:00',6704.82,0),(26,2,'2017-08-08 22:00:00',5212.74,0),(27,12,'2019-12-05 22:00:00',1554.50,0),(28,3,'2018-02-14 22:00:00',3911.23,0),(29,17,'2020-03-12 22:00:00',5090.78,0),(30,19,'2018-03-04 22:00:00',6545.85,0),(31,10,'2019-09-18 22:00:00',6259.34,0),(32,4,'2017-07-23 22:00:00',4502.73,0),(33,12,'2017-07-09 22:00:00',3500.70,0),(34,8,'2019-07-27 22:00:00',9055.96,0),(35,1,'2017-04-09 22:00:00',1194.60,0),(36,9,'2017-10-15 22:00:00',6617.93,0),(37,8,'2020-03-08 22:00:00',5648.99,0),(38,1,'2018-09-29 22:00:00',7425.12,0),(39,13,'2020-02-20 22:00:00',6510.83,0),(40,11,'2019-04-15 22:00:00',7712.35,0),(41,5,'2020-01-06 22:00:00',6958.02,0),(42,4,'2017-11-05 22:00:00',2700.17,0),(43,20,'2019-07-25 22:00:00',1566.93,0),(44,10,'2018-05-30 22:00:00',5349.81,0),(45,16,'2019-06-23 22:00:00',7778.77,0),(46,5,'2020-01-14 22:00:00',4764.66,0),(47,6,'2017-08-11 22:00:00',6847.21,0),(48,15,'2018-05-18 22:00:00',3911.60,0),(49,11,'2017-07-12 22:00:00',9053.18,0),(50,8,'2018-02-07 22:00:00',8068.51,0),(51,19,'2018-04-23 22:00:00',4961.92,0),(52,14,'2018-07-08 22:00:00',9139.78,0),(53,12,'2020-02-14 22:00:00',3106.44,0),(54,15,'2019-06-22 22:00:00',5746.36,0),(55,20,'2018-09-14 22:00:00',8081.65,0),(56,20,'2020-01-08 22:00:00',2951.94,0),(57,4,'2017-12-31 22:00:00',9780.92,0),(58,1,'2017-10-11 22:00:00',1314.01,0),(59,20,'2019-11-05 22:00:00',8069.55,0),(60,6,'2018-06-30 22:00:00',7367.90,0),(61,13,'2017-11-13 22:00:00',5720.46,0),(62,17,'2020-02-18 22:00:00',6571.04,0),(63,14,'2020-03-08 22:00:00',3965.04,0),(64,3,'2019-12-24 22:00:00',2685.63,0),(65,6,'2019-02-05 22:00:00',4759.60,0),(66,6,'2018-04-20 22:00:00',7022.66,0),(67,4,'2019-12-03 22:00:00',8979.89,0),(68,9,'2017-11-14 22:00:00',8156.01,0),(69,16,'2018-06-09 22:00:00',6699.51,0),(70,20,'2019-03-27 22:00:00',1609.85,0),(71,20,'2020-02-23 22:00:00',8580.04,0),(72,14,'2018-01-18 22:00:00',6686.41,0),(73,2,'2018-10-14 22:00:00',6920.90,0),(74,1,'2019-09-11 22:00:00',1366.44,0),(75,11,'2018-06-18 22:00:00',8729.41,0),(76,5,'2019-06-30 22:00:00',3282.28,0),(77,12,'2017-06-22 22:00:00',9287.86,0),(78,6,'2018-07-24 22:00:00',9320.97,0),(79,11,'2019-08-25 22:00:00',5190.80,0),(80,9,'2018-01-04 22:00:00',4543.03,0),(81,5,'2019-06-23 22:00:00',8532.23,0),(82,5,'2018-02-13 22:00:00',6632.74,0),(83,16,'2017-11-20 22:00:00',9704.39,0),(84,20,'2018-04-20 22:00:00',5034.82,0),(85,16,'2019-11-09 22:00:00',2117.18,0),(86,17,'2017-11-25 22:00:00',9188.84,0),(87,4,'2019-06-28 22:00:00',6545.85,0),(88,5,'2017-04-26 22:00:00',7688.99,0),(89,10,'2020-01-19 22:00:00',8220.25,0),(90,10,'2017-09-02 22:00:00',7445.62,0),(91,6,'2018-09-06 22:00:00',6967.23,0),(92,7,'2018-11-19 22:00:00',9314.41,0),(93,16,'2018-10-08 22:00:00',8847.94,0),(94,20,'2019-08-21 22:00:00',9478.16,0),(95,20,'2018-06-08 22:00:00',9192.49,0),(96,13,'2019-06-01 22:00:00',5338.22,0),(97,16,'2017-10-14 22:00:00',7377.64,0),(98,8,'2018-12-29 22:00:00',2775.38,0),(99,8,'2018-11-24 22:00:00',4896.92,0),(100,8,'2017-12-05 22:00:00',1042.59,0);
/*!40000 ALTER TABLE `StaffPayment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-27 15:30:36
