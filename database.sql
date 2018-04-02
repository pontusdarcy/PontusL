CREATE DATABASE  IF NOT EXISTS `pontusl` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci */;
USE `pontusl`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pontusl
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actors` (
  `actorID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `brithday` date DEFAULT NULL,
  `deathday` date DEFAULT NULL,
  PRIMARY KEY (`actorID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors`
--

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` VALUES (1,'Keanu Reeves','1964-09-02',NULL),(2,'Laurence Fishburne','1961-07-30',NULL),(3,'Carrie-Anne Moss','1967-08-21',NULL),(4,'Hugo Weaving','1960-04-04',NULL),(5,'Joe Pantoliano','1951-09-12',NULL),(6,'Tom Skerritt','1933-08-25',NULL),(7,'Sigourney Weaver','1949-10-08',NULL),(8,'Veronica Cartwright','1949-04-20',NULL),(9,'Harry Dean Stanton','1926-07-14','2017-09-15'),(10,'John Hurt','1940-01-22','2017-01-25'),(11,'Ian Holm','1931-09-12',NULL),(12,'Yaphet Kotto','1939-11-15',NULL);
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `addressID` int(11) NOT NULL AUTO_INCREMENT,
  `streetAddress` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `postalCode` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `city` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `country` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`addressID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,'Luddingsbo Mekanikusv 87','114 49','Stockholm','Sweden'),(2,'Anders Sadelmakares Gränd 70','271 51','Ystad','Sweden'),(3,'Ängsgatan 96','115 91','Stockholm','Sweden'),(4,'Östbygatan 70','232 24','Arlöv','Sweden'),(5,'Nöjesgatan 79','548 32','Hova','Sweden'),(6,'Ellenö 33','673 31','Charlottenberg','Sweden'),(7,'Klövervägen 83','523 38','Ulricehamn','Sweden'),(8,'Pølsesvingen 50','1101','Oslo','Norway'),(9,'Skällebo 47','181 85','Lidingö','Sweden'),(10,'Kanslerinrinne 11','27260','Lappi','Finland'),(11,'Bottna Knutsgård 48','961 86','Boden','Sweden'),(12,'Edeforsvägen 84','129 55','Hägersten','Sweden'),(13,'Nedre Bergslia 122','9510','Alta','Norway'),(14,'Skärpinge 88','164 91','Kista','Sweden'),(15,'Albanivej 29','1058','København','Denmark'),(16,'Larsokveien 230','1291','Oslo','Norway'),(17,'Langvollen 107','3798','Skien','Norway'),(18,'Lidbovägen 69','116 45','Stockholm','Sweden'),(19,'Trädgårdsgatan 20','614 31','Söderköping','Sweden'),(20,'Vipgränden 69','573 36','Tranås','Sweden');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `awards`
--

DROP TABLE IF EXISTS `awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `awards` (
  `awardID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`awardID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `awards`
--

LOCK TABLES `awards` WRITE;
/*!40000 ALTER TABLE `awards` DISABLE KEYS */;
INSERT INTO `awards` VALUES (1,'Oscars'),(2,'BAFTA'),(3,'Saturn'),(4,'Hugo');
/*!40000 ALTER TABLE `awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `copies`
--

DROP TABLE IF EXISTS `copies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copies` (
  `copyID` int(11) NOT NULL AUTO_INCREMENT,
  `movieID` int(11) NOT NULL,
  `format` enum('BLU-RAY','DVD') COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`copyID`),
  KEY `fk_copies_movies1_idx` (`movieID`),
  CONSTRAINT `fk_copies_movies1` FOREIGN KEY (`movieID`) REFERENCES `movies` (`movieID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `copies`
--

LOCK TABLES `copies` WRITE;
/*!40000 ALTER TABLE `copies` DISABLE KEYS */;
INSERT INTO `copies` VALUES (1,1,'BLU-RAY'),(2,1,'BLU-RAY'),(3,1,'BLU-RAY'),(4,1,'DVD'),(5,1,'DVD'),(6,2,'BLU-RAY'),(7,2,'BLU-RAY'),(8,2,'DVD'),(9,2,'DVD');
/*!40000 ALTER TABLE `copies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `countryID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`countryID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Sweden'),(2,'United States of America'),(3,'United Kingdom');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `customerID` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `lastName` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `phone` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `addressID` int(11) NOT NULL,
  PRIMARY KEY (`customerID`),
  KEY `fk_customers_addresses1_idx` (`addressID`),
  CONSTRAINT `fk_customers_addresses1` FOREIGN KEY (`addressID`) REFERENCES `addresses` (`addressID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Linus','Ohlander','1991-01-28','linus.ohlander@hotmail.se','0739334623',5),(2,'Hanna','Karlsson','1964-03-29','hanna.karlsson@gmail.com','0739443546',12),(3,'Victor','Vallstrand','1983-04-24','victor.vallstrand@telia.se','0739493696',10),(4,'Anna','Olsson','1973-03-16','anna.olsson@hotmail.com','0735669577',19),(5,'Vera','Kortberg','1962-06-21','vera.kortberg@test.com','0739294787',17),(6,'Patrik','Rodriguez','1985-10-08','patrik.rodriguez@test.com','0707543608',4),(7,'Lars','Andersson','1975-06-22','lars.andersson@telia.com','0707439788',11),(8,'Sara','Blom','1999-12-14','sara.blom@icloud.com','0707670753',8),(9,'Bengt','Sjöstedt','1984-09-06','bengt.sjostedt@hotmail.com','0707395996',13),(10,'Juan','Uggla','1992-02-22','juan.uggla@hotmail.se','0735634313',15);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directors`
--

DROP TABLE IF EXISTS `directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directors` (
  `directorID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `deathday` date DEFAULT NULL,
  PRIMARY KEY (`directorID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directors`
--

LOCK TABLES `directors` WRITE;
/*!40000 ALTER TABLE `directors` DISABLE KEYS */;
INSERT INTO `directors` VALUES (1,'Lana Wachowski','1965-06-21',NULL),(2,'Lilly Wachowski','1967-12-29',NULL),(3,'Ridley Scott','1937-11-30',NULL);
/*!40000 ALTER TABLE `directors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `employeeID` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `lastName` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `phone` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `addressID` int(11) NOT NULL,
  PRIMARY KEY (`employeeID`),
  KEY `fk_employees_addresses1_idx` (`addressID`),
  CONSTRAINT `fk_employees_addresses1` FOREIGN KEY (`addressID`) REFERENCES `addresses` (`addressID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Max','Power','0707176130',1),(2,'Filippa','Svensson','0735457944',16),(3,'Hanna','Åstromme','0739451595',6),(4,'Rikard','Ibrahimovic','0707742047',20),(5,'Henrik','Ohlander','0707801550',3),(6,'Petra','Svensson','0707111465',7),(7,'Mimmi','Karlsson','0707585431',9),(8,'Luke','Eriksson','0739672605',2),(9,'Johanna','Ohlander','0707397726',14),(10,'Sara','Peng','0707147391',18);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genres` (
  `genreID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`genreID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Action'),(2,'Science Fiction'),(3,'Adventure'),(4,'Fantasy'),(5,'Horror');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `movieID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `releaseDate` date DEFAULT NULL,
  PRIMARY KEY (`movieID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'The Matrix',136,'1999-03-31'),(2,'Alien',117,'1979-05-25');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_has_actors`
--

DROP TABLE IF EXISTS `movies_has_actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_has_actors` (
  `movieID` int(11) NOT NULL,
  `actorID` int(11) NOT NULL,
  PRIMARY KEY (`movieID`,`actorID`),
  KEY `fk_movies_has_actors_actors1_idx` (`actorID`),
  KEY `fk_movies_has_actors_movies1_idx` (`movieID`),
  CONSTRAINT `fk_movies_has_actors_actors1` FOREIGN KEY (`actorID`) REFERENCES `actors` (`actorID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_has_actors_movies1` FOREIGN KEY (`movieID`) REFERENCES `movies` (`movieID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_has_actors`
--

LOCK TABLES `movies_has_actors` WRITE;
/*!40000 ALTER TABLE `movies_has_actors` DISABLE KEYS */;
INSERT INTO `movies_has_actors` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12);
/*!40000 ALTER TABLE `movies_has_actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_has_awards`
--

DROP TABLE IF EXISTS `movies_has_awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_has_awards` (
  `movieID` int(11) NOT NULL,
  `awardID` int(11) NOT NULL,
  PRIMARY KEY (`movieID`,`awardID`),
  KEY `fk_movies_has_awards_awards1_idx` (`awardID`),
  KEY `fk_movies_has_awards_movies1_idx` (`movieID`),
  CONSTRAINT `fk_movies_has_awards_awards1` FOREIGN KEY (`awardID`) REFERENCES `awards` (`awardID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_has_awards_movies1` FOREIGN KEY (`movieID`) REFERENCES `movies` (`movieID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_has_awards`
--

LOCK TABLES `movies_has_awards` WRITE;
/*!40000 ALTER TABLE `movies_has_awards` DISABLE KEYS */;
INSERT INTO `movies_has_awards` VALUES (1,1),(2,1),(1,2),(1,3),(2,3),(2,4);
/*!40000 ALTER TABLE `movies_has_awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_has_countries`
--

DROP TABLE IF EXISTS `movies_has_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_has_countries` (
  `movieID` int(11) NOT NULL,
  `countryID` int(11) NOT NULL,
  PRIMARY KEY (`movieID`,`countryID`),
  KEY `fk_movies_has_countries_countries1_idx` (`countryID`),
  KEY `fk_movies_has_countries_movies1_idx` (`movieID`),
  CONSTRAINT `fk_movies_has_countries_countries1` FOREIGN KEY (`countryID`) REFERENCES `countries` (`countryID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_has_countries_movies1` FOREIGN KEY (`movieID`) REFERENCES `movies` (`movieID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_has_countries`
--

LOCK TABLES `movies_has_countries` WRITE;
/*!40000 ALTER TABLE `movies_has_countries` DISABLE KEYS */;
INSERT INTO `movies_has_countries` VALUES (1,2),(2,2),(2,3);
/*!40000 ALTER TABLE `movies_has_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_has_directors`
--

DROP TABLE IF EXISTS `movies_has_directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_has_directors` (
  `movieID` int(11) NOT NULL,
  `directorID` int(11) NOT NULL,
  PRIMARY KEY (`movieID`,`directorID`),
  KEY `fk_movies_has_directors_directors1_idx` (`directorID`),
  KEY `fk_movies_has_directors_movies1_idx` (`movieID`),
  CONSTRAINT `fk_movies_has_directors_directors1` FOREIGN KEY (`directorID`) REFERENCES `directors` (`directorID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_has_directors_movies1` FOREIGN KEY (`movieID`) REFERENCES `movies` (`movieID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_has_directors`
--

LOCK TABLES `movies_has_directors` WRITE;
/*!40000 ALTER TABLE `movies_has_directors` DISABLE KEYS */;
INSERT INTO `movies_has_directors` VALUES (1,1),(1,2),(2,3);
/*!40000 ALTER TABLE `movies_has_directors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_has_genres`
--

DROP TABLE IF EXISTS `movies_has_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_has_genres` (
  `movieID` int(11) NOT NULL,
  `genreID` int(11) NOT NULL,
  PRIMARY KEY (`movieID`,`genreID`),
  KEY `fk_movies_has_genres_genres1_idx` (`genreID`),
  KEY `fk_movies_has_genres_movies1_idx` (`movieID`),
  CONSTRAINT `fk_movies_has_genres_genres1` FOREIGN KEY (`genreID`) REFERENCES `genres` (`genreID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_has_genres_movies1` FOREIGN KEY (`movieID`) REFERENCES `movies` (`movieID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_has_genres`
--

LOCK TABLES `movies_has_genres` WRITE;
/*!40000 ALTER TABLE `movies_has_genres` DISABLE KEYS */;
INSERT INTO `movies_has_genres` VALUES (1,1),(1,2),(2,2),(1,3),(2,3),(1,4),(2,4),(2,5);
/*!40000 ALTER TABLE `movies_has_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rented`
--

DROP TABLE IF EXISTS `rented`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rented` (
  `rentingID` int(11) NOT NULL AUTO_INCREMENT,
  `copyID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `employeeID` int(11) NOT NULL,
  `rentDate` date DEFAULT NULL,
  `dueDate` date DEFAULT NULL,
  `returnedDate` date DEFAULT NULL,
  `status` enum('RENTED','ON TIME','LATE','RETURNED LATE') COLLATE utf8mb4_swedish_ci DEFAULT 'RENTED',
  PRIMARY KEY (`rentingID`),
  KEY `fk_rented_copies1_idx` (`copyID`),
  KEY `fk_rented_customers1_idx` (`customerID`),
  KEY `fk_rented_employees1_idx` (`employeeID`),
  CONSTRAINT `fk_rented_copies1` FOREIGN KEY (`copyID`) REFERENCES `copies` (`copyID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_rented_customers1` FOREIGN KEY (`customerID`) REFERENCES `customers` (`customerID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_rented_employees1` FOREIGN KEY (`employeeID`) REFERENCES `employees` (`employeeID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rented`
--

LOCK TABLES `rented` WRITE;
/*!40000 ALTER TABLE `rented` DISABLE KEYS */;
/*!40000 ALTER TABLE `rented` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salaries`
--

DROP TABLE IF EXISTS `salaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salaries` (
  `salaryID` int(11) NOT NULL AUTO_INCREMENT,
  `employeeID` int(11) NOT NULL,
  `amount` double DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  PRIMARY KEY (`salaryID`),
  KEY `fk_salaries_employees1_idx` (`employeeID`),
  CONSTRAINT `fk_salaries_employees1` FOREIGN KEY (`employeeID`) REFERENCES `employees` (`employeeID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salaries`
--

LOCK TABLES `salaries` WRITE;
/*!40000 ALTER TABLE `salaries` DISABLE KEYS */;
INSERT INTO `salaries` VALUES (1,1,18500,'2017-01-01','2017-05-31'),(2,1,21000,'2017-06-01','2017-08-31'),(3,1,24900,'2017-09-01','2017-12-31'),(4,2,23300,'2017-09-01','2017-12-31'),(5,3,21800,'2017-09-01','2017-12-31'),(6,4,22900,'2017-09-01','2017-12-31'),(7,5,21900,'2017-09-01','2017-12-31'),(8,1,32000,'2018-01-01',NULL),(9,2,28900,'2018-01-01',NULL),(10,3,26300,'2018-01-01',NULL),(11,4,28900,'2018-01-01',NULL),(12,5,27200,'2018-01-01',NULL),(13,6,22100,'2018-01-01',NULL),(14,7,21800,'2018-01-01',NULL),(15,8,23500,'2018-01-01',NULL),(16,9,24100,'2018-01-01',NULL),(17,10,21900,'2018-01-01',NULL);
/*!40000 ALTER TABLE `salaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'pontusl'
--

--
-- Dumping routines for database 'pontusl'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-02 17:05:09
