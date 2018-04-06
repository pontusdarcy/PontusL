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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors`
--

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` VALUES (1,'Keanu Reeves','1964-09-02',NULL),(2,'Laurence Fishburne','1961-07-30',NULL),(3,'Carrie-Anne Moss','1967-08-21',NULL),(4,'Hugo Weaving','1960-04-04',NULL),(5,'Joe Pantoliano','1951-09-12',NULL),(6,'Tom Skerritt','1933-08-25',NULL),(7,'Sigourney Weaver','1949-10-08',NULL),(8,'Veronica Cartwright','1949-04-20',NULL),(9,'Harry Dean Stanton','1926-07-14','2017-09-15'),(10,'John Hurt','1940-01-22','2017-01-25'),(11,'Ian Holm','1931-09-12',NULL),(12,'Yaphet Kotto','1939-11-15',NULL),(13,'Mike Myers','1963-05-25',NULL),(14,'Eddie Murphy','1961-04-03',NULL),(15,'Cameron Diaz','1972-08-30',NULL),(16,'John Lithgow','1945-10-19',NULL),(17,'Bill Skarsgård','1990-08-09',NULL),(18,'Helen Sjöholm','1970-07-10',NULL),(19,'Jan Josef Liefers','1964-08-08',NULL),(20,'Cecilia Nilsson','1957-07-15',NULL),(21,'John Goodman','1952-06-20',NULL),(22,'Billy Crystal','1948-03-14',NULL),(23,'Steve Buscemi','1957-12-13',NULL),(24,'James Coburn','1928-08-31','2002-11-18'),(25,'Jennifer Tilly','1958-09-16',NULL),(26,'Lene Cecilia Sparrok','1997-10-06',NULL),(27,'Hanna Alström','1981-03-05',NULL),(28,'Anders Berg','1974-01-01',NULL),(29,'Audrey Tautou','1976-08-09',NULL),(30,'Mathieu Kassovitz','1967-08-03',NULL),(31,'Dev Patel','1990-04-23',NULL),(32,'Freida Pinto','1984-10-18',NULL),(33,'Madhur Mittal','1987-01-20',NULL),(34,'Anil Kapoor','1956-12-24',NULL),(35,'Irrfan Khan','1967-01-07',NULL),(36,'Nicole Kidman','1967-06-20',NULL),(37,'Fionnula Flanagan','1941-12-10',NULL),(38,'Christopher Eccleston','1964-02-16',NULL),(39,'Elaine Cassidy','1979-12-31',NULL),(40,'Eric Sykes','1923-05-04','2012-07-04'),(41,'James Bentley','1992-07-14',NULL),(42,'Alakina Mann','1990-08-01',NULL),(43,'Bryan Fogel','1972-01-01',NULL),(44,'Grigory Rodchenkov','1958-10-24',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `awards`
--

LOCK TABLES `awards` WRITE;
/*!40000 ALTER TABLE `awards` DISABLE KEYS */;
INSERT INTO `awards` VALUES (1,'Oscars'),(2,'BAFTA'),(3,'Saturn'),(4,'Hugo'),(5,'Guldbagge'),(6,'Annie'),(7,'Göteborg Film Festival'),(8,'European Film Awards'),(9,'César'),(10,'Critics\' Choice'),(11,'Golden Globes'),(12,'Goya'),(13,'Sundance Film Festival');
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
  CONSTRAINT `fk_copies_movies1` FOREIGN KEY (`movieID`) REFERENCES `movies` (`movieID`) ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `copies`
--

LOCK TABLES `copies` WRITE;
/*!40000 ALTER TABLE `copies` DISABLE KEYS */;
INSERT INTO `copies` VALUES (1,1,'BLU-RAY'),(2,1,'BLU-RAY'),(3,1,'BLU-RAY'),(4,1,'DVD'),(5,1,'DVD'),(6,2,'BLU-RAY'),(7,2,'BLU-RAY'),(8,2,'DVD'),(9,2,'DVD'),(10,3,'BLU-RAY'),(11,3,'DVD'),(12,3,'DVD'),(13,3,'DVD'),(14,3,'DVD'),(15,4,'BLU-RAY'),(16,4,'DVD'),(17,5,'BLU-RAY'),(18,5,'DVD'),(19,5,'DVD'),(20,6,'BLU-RAY'),(21,6,'BLU-RAY'),(22,6,'BLU-RAY'),(23,6,'DVD'),(24,7,'BLU-RAY'),(25,7,'DVD'),(26,7,'DVD'),(27,8,'BLU-RAY'),(28,8,'BLU-RAY'),(29,8,'DVD'),(30,8,'DVD'),(31,9,'BLU-RAY'),(32,9,'DVD'),(33,9,'DVD'),(34,10,'BLU-RAY'),(35,10,'BLU-RAY'),(36,10,'BLU-RAY'),(37,10,'DVD');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Sweden'),(2,'United States of America'),(3,'United Kingdom'),(4,'Denmark'),(5,'Norway'),(6,'France'),(7,'Germany'),(8,'Spain'),(9,'Italy');
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
  CONSTRAINT `fk_customers_addresses1` FOREIGN KEY (`addressID`) REFERENCES `addresses` (`addressID`) ON UPDATE NO ACTION
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directors`
--

LOCK TABLES `directors` WRITE;
/*!40000 ALTER TABLE `directors` DISABLE KEYS */;
INSERT INTO `directors` VALUES (1,'Lana Wachowski','1965-06-21',NULL),(2,'Lilly Wachowski','1967-12-29',NULL),(3,'Ridley Scott','1937-11-30',NULL),(4,'Andrew Adamson','1966-12-01',NULL),(5,'Vicky Jenson','1960-01-01',NULL),(6,'Lisa Ohlin','1960-02-20',NULL),(7,'Pete Docter','1968-10-09',NULL),(8,'Amanda Kernell','1986-09-09',NULL),(9,'Jean-Pierre Jeunet','1953-09-03',NULL),(10,'Danny Boyle','1956-10-20',NULL),(11,'Alejandro Amenábar','1972-03-31',NULL),(12,'Bryan Fogel','1972-01-01',NULL);
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
  CONSTRAINT `fk_employees_addresses1` FOREIGN KEY (`addressID`) REFERENCES `addresses` (`addressID`) ON UPDATE NO ACTION
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Action'),(2,'Science Fiction'),(3,'Adventure'),(4,'Fantasy'),(5,'Horror'),(6,'Animation'),(7,'Comedy'),(8,'Drama'),(9,'Love'),(10,'Romantic Comedy'),(11,'Crime'),(12,'Thriller'),(13,'Independent'),(14,'Mystery'),(15,'Psychological Horror'),(16,'Documentary');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'The Matrix',136,'1999-03-31'),(2,'Alien',117,'1979-05-25'),(3,'Shrek',90,'2001-04-22'),(4,'Simon och ekarna',122,'2011-12-09'),(5,'Monsters Inc.',92,'2001-10-28'),(6,'Sameblod',110,'2016-09-08'),(7,'Amélie',123,'2001-04-25'),(8,'Slumdog Millionaire',120,'2008-08-30'),(9,'The Others',104,'2001-08-10'),(10,'Icarus',121,'2017-01-20');
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
  CONSTRAINT `fk_movies_has_actors_actors1` FOREIGN KEY (`actorID`) REFERENCES `actors` (`actorID`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_has_actors_movies1` FOREIGN KEY (`movieID`) REFERENCES `movies` (`movieID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_has_actors`
--

LOCK TABLES `movies_has_actors` WRITE;
/*!40000 ALTER TABLE `movies_has_actors` DISABLE KEYS */;
INSERT INTO `movies_has_actors` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(3,13),(3,14),(3,15),(3,16),(4,17),(4,18),(4,19),(4,20),(5,21),(5,22),(5,23),(5,24),(5,25),(6,26),(6,27),(6,28),(7,29),(7,30),(8,31),(8,32),(8,33),(8,34),(8,35),(9,36),(9,37),(9,38),(9,39),(9,40),(9,41),(9,42),(10,43),(10,44);
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
  CONSTRAINT `fk_movies_has_awards_awards1` FOREIGN KEY (`awardID`) REFERENCES `awards` (`awardID`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_has_awards_movies1` FOREIGN KEY (`movieID`) REFERENCES `movies` (`movieID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_has_awards`
--

LOCK TABLES `movies_has_awards` WRITE;
/*!40000 ALTER TABLE `movies_has_awards` DISABLE KEYS */;
INSERT INTO `movies_has_awards` VALUES (1,1),(2,1),(3,1),(5,1),(8,1),(10,1),(1,2),(3,2),(5,2),(7,2),(8,2),(1,3),(2,3),(9,3),(2,4),(4,5),(6,5),(5,6),(6,7),(7,8),(7,9),(8,10),(10,10),(8,11),(9,12),(10,13);
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
  CONSTRAINT `fk_movies_has_countries_countries1` FOREIGN KEY (`countryID`) REFERENCES `countries` (`countryID`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_has_countries_movies1` FOREIGN KEY (`movieID`) REFERENCES `movies` (`movieID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_has_countries`
--

LOCK TABLES `movies_has_countries` WRITE;
/*!40000 ALTER TABLE `movies_has_countries` DISABLE KEYS */;
INSERT INTO `movies_has_countries` VALUES (4,1),(6,1),(1,2),(2,2),(3,2),(5,2),(9,2),(10,2),(2,3),(8,3),(6,4),(6,5),(7,6),(9,6),(7,7),(9,8),(9,9);
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
  CONSTRAINT `fk_movies_has_directors_directors1` FOREIGN KEY (`directorID`) REFERENCES `directors` (`directorID`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_has_directors_movies1` FOREIGN KEY (`movieID`) REFERENCES `movies` (`movieID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_has_directors`
--

LOCK TABLES `movies_has_directors` WRITE;
/*!40000 ALTER TABLE `movies_has_directors` DISABLE KEYS */;
INSERT INTO `movies_has_directors` VALUES (1,1),(1,2),(2,3),(3,4),(3,5),(4,6),(5,7),(6,8),(7,9),(8,10),(9,11),(10,12);
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
  CONSTRAINT `fk_movies_has_genres_genres1` FOREIGN KEY (`genreID`) REFERENCES `genres` (`genreID`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_has_genres_movies1` FOREIGN KEY (`movieID`) REFERENCES `movies` (`movieID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_has_genres`
--

LOCK TABLES `movies_has_genres` WRITE;
/*!40000 ALTER TABLE `movies_has_genres` DISABLE KEYS */;
INSERT INTO `movies_has_genres` VALUES (1,1),(1,2),(2,2),(1,3),(2,3),(3,3),(5,3),(1,4),(2,4),(3,4),(5,4),(9,4),(2,5),(9,5),(3,6),(5,6),(3,7),(5,7),(7,7),(4,8),(6,8),(8,8),(9,8),(7,9),(8,9),(7,10),(8,11),(8,12),(9,12),(10,12),(8,13),(9,14),(9,15),(10,16);
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
) ENGINE=InnoDB AUTO_INCREMENT=300 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rented`
--

LOCK TABLES `rented` WRITE;
/*!40000 ALTER TABLE `rented` DISABLE KEYS */;
INSERT INTO `rented` VALUES (1,36,3,1,'2017-02-19','2017-02-23','2017-02-22','ON TIME'),(2,5,3,1,'2017-01-05','2017-01-09','2017-01-09','ON TIME'),(3,14,9,1,'2017-06-28','2017-07-02','2017-07-01','ON TIME'),(4,36,5,1,'2017-06-05','2017-06-09','2017-06-09','ON TIME'),(5,9,7,1,'2017-01-06','2017-01-10','2017-01-10','ON TIME'),(6,29,7,1,'2017-01-01','2017-01-05','2017-01-05','ON TIME'),(7,9,8,1,'2017-08-27','2017-08-31','2017-08-30','ON TIME'),(8,14,5,1,'2017-01-21','2017-01-25','2017-01-22','ON TIME'),(9,29,8,1,'2017-03-13','2017-03-17','2017-03-14','ON TIME'),(10,11,6,1,'2017-04-03','2017-04-07','2017-04-07','ON TIME'),(11,21,2,1,'2017-01-01','2017-01-05','2017-01-05','ON TIME'),(12,11,8,1,'2017-06-25','2017-06-29','2017-07-02','RETURNED LATE'),(13,12,3,1,'2017-08-13','2017-08-17','2017-08-14','ON TIME'),(14,37,6,1,'2017-01-17','2017-01-21','2017-01-20','ON TIME'),(15,16,8,1,'2017-03-26','2017-03-30','2017-03-27','ON TIME'),(16,13,6,1,'2017-08-06','2017-08-10','2017-08-07','ON TIME'),(17,24,9,1,'2017-03-09','2017-03-13','2017-03-12','ON TIME'),(18,12,9,1,'2017-08-20','2017-08-24','2017-08-22','ON TIME'),(19,30,10,1,'2017-03-28','2017-04-01','2017-03-31','ON TIME'),(20,33,9,1,'2017-01-11','2017-01-15','2017-01-14','ON TIME'),(21,7,3,1,'2017-06-03','2017-06-07','2017-06-07','ON TIME'),(22,29,10,1,'2017-01-21','2017-01-25','2017-01-27','RETURNED LATE'),(23,16,8,1,'2017-04-01','2017-04-05','2017-04-03','ON TIME'),(24,11,1,1,'2017-03-27','2017-03-31','2017-03-30','ON TIME'),(25,30,3,1,'2017-01-17','2017-01-21','2017-01-18','ON TIME'),(26,26,5,1,'2017-07-29','2017-08-02','2017-08-02','ON TIME'),(27,7,1,1,'2017-04-01','2017-04-05','2017-04-04','ON TIME'),(28,34,10,1,'2017-03-19','2017-03-23','2017-03-20','ON TIME'),(29,29,6,1,'2017-03-28','2017-04-01','2017-04-04','RETURNED LATE'),(30,1,8,1,'2017-01-11','2017-01-15','2017-01-14','ON TIME'),(31,32,7,1,'2017-05-11','2017-05-15','2017-05-14','ON TIME'),(32,20,8,1,'2017-01-10','2017-01-14','2017-01-16','RETURNED LATE'),(33,33,5,1,'2017-08-02','2017-08-06','2017-08-06','ON TIME'),(34,5,8,1,'2017-07-12','2017-07-16','2017-07-13','ON TIME'),(35,20,1,1,'2017-05-31','2017-06-04','2017-06-02','ON TIME'),(36,9,1,1,'2017-07-20','2017-07-24','2017-07-22','ON TIME'),(37,1,3,1,'2017-08-16','2017-08-20','2017-08-20','ON TIME'),(38,26,6,1,'2017-03-10','2017-03-14','2017-03-12','ON TIME'),(39,4,2,1,'2017-01-22','2017-01-26','2017-01-23','ON TIME'),(40,21,5,1,'2017-03-15','2017-03-19','2017-03-18','ON TIME'),(41,28,1,1,'2017-02-16','2017-02-20','2017-02-19','ON TIME'),(42,24,6,1,'2017-08-25','2017-08-29','2017-08-29','ON TIME'),(43,33,4,1,'2017-01-17','2017-01-21','2017-01-18','ON TIME'),(44,8,9,1,'2017-02-01','2017-02-05','2017-02-06','RETURNED LATE'),(45,21,5,1,'2017-01-08','2017-01-12','2017-01-09','ON TIME'),(46,34,7,1,'2017-07-31','2017-08-04','2017-08-01','ON TIME'),(47,34,10,1,'2017-08-19','2017-08-23','2017-08-21','ON TIME'),(48,34,3,1,'2017-01-25','2017-01-29','2017-01-29','ON TIME'),(49,37,6,1,'2017-05-05','2017-05-09','2017-05-07','ON TIME'),(50,31,3,1,'2017-08-05','2017-08-09','2017-08-08','ON TIME'),(51,20,3,1,'2017-04-25','2017-04-29','2017-04-26','ON TIME'),(52,31,6,1,'2017-08-24','2017-08-28','2017-08-26','ON TIME'),(53,6,6,1,'2017-02-23','2017-02-27','2017-02-27','ON TIME'),(54,33,2,1,'2017-03-17','2017-03-21','2017-03-21','ON TIME'),(55,9,7,1,'2017-03-26','2017-03-30','2017-03-29','ON TIME'),(56,29,5,1,'2017-01-03','2017-01-07','2017-01-04','ON TIME'),(57,37,6,1,'2017-02-27','2017-03-03','2017-03-01','ON TIME'),(58,9,4,1,'2017-05-14','2017-05-18','2017-05-18','ON TIME'),(59,14,8,1,'2017-04-05','2017-04-09','2017-04-08','ON TIME'),(60,2,8,1,'2017-01-04','2017-01-08','2017-01-08','ON TIME'),(61,16,4,1,'2017-05-28','2017-06-01','2017-05-30','ON TIME'),(62,19,3,1,'2017-05-14','2017-05-18','2017-05-15','ON TIME'),(63,14,9,1,'2017-01-03','2017-01-07','2017-01-04','ON TIME'),(64,7,3,1,'2017-05-26','2017-05-30','2017-05-29','ON TIME'),(65,2,3,1,'2017-06-17','2017-06-21','2017-06-20','ON TIME'),(66,3,1,1,'2017-01-27','2017-01-31','2017-01-29','ON TIME'),(67,34,1,1,'2017-03-13','2017-03-17','2017-03-17','ON TIME'),(68,3,2,1,'2017-05-25','2017-05-29','2017-05-28','ON TIME'),(69,8,2,1,'2017-07-22','2017-07-26','2017-07-25','ON TIME'),(70,18,3,1,'2017-05-18','2017-05-22','2017-05-19','ON TIME'),(71,12,3,1,'2017-01-27','2017-01-31','2017-01-31','ON TIME'),(72,32,2,1,'2017-04-24','2017-04-28','2017-04-25','ON TIME'),(73,9,10,1,'2017-01-16','2017-01-20','2017-01-18','ON TIME'),(74,26,7,1,'2017-05-03','2017-05-07','2017-05-08','RETURNED LATE'),(75,33,4,1,'2017-02-16','2017-02-20','2017-02-20','ON TIME'),(76,33,8,1,'2017-03-23','2017-03-27','2017-03-27','ON TIME'),(77,32,3,1,'2017-08-09','2017-08-13','2017-08-12','ON TIME'),(78,19,2,1,'2017-07-10','2017-07-14','2017-07-11','ON TIME'),(79,30,3,1,'2017-04-04','2017-04-08','2017-04-06','ON TIME'),(80,33,9,1,'2017-05-11','2017-05-15','2017-05-16','RETURNED LATE'),(81,12,5,1,'2017-04-22','2017-04-26','2017-04-25','ON TIME'),(82,10,6,1,'2017-03-26','2017-03-30','2017-03-28','ON TIME'),(83,7,3,1,'2017-03-04','2017-03-08','2017-03-07','ON TIME'),(84,7,2,1,'2017-06-22','2017-06-26','2017-06-25','ON TIME'),(85,29,7,1,'2017-06-28','2017-07-02','2017-07-02','ON TIME'),(86,22,6,1,'2017-06-05','2017-06-09','2017-06-12','RETURNED LATE'),(87,31,5,1,'2017-02-14','2017-02-18','2017-02-17','ON TIME'),(88,24,6,1,'2017-07-23','2017-07-27','2017-07-26','ON TIME'),(89,21,9,1,'2017-07-21','2017-07-25','2017-07-25','ON TIME'),(90,10,10,1,'2017-01-22','2017-01-26','2017-01-26','ON TIME'),(91,6,2,5,'2017-11-02','2017-11-06','2017-11-05','ON TIME'),(92,12,5,4,'2017-10-14','2017-10-18','2017-10-15','ON TIME'),(93,7,2,5,'2017-11-29','2017-12-03','2017-12-03','ON TIME'),(94,1,8,5,'2017-12-25','2017-12-29','2017-12-29','ON TIME'),(95,13,10,1,'2017-09-16','2017-09-20','2017-09-19','ON TIME'),(96,4,2,1,'2017-09-09','2017-09-13','2017-09-13','ON TIME'),(97,4,5,4,'2017-10-29','2017-11-02','2017-10-31','ON TIME'),(98,28,5,1,'2017-10-10','2017-10-14','2017-10-11','ON TIME'),(99,16,8,5,'2017-12-11','2017-12-15','2017-12-14','ON TIME'),(100,15,9,1,'2017-10-29','2017-11-02','2017-11-01','ON TIME'),(101,35,5,5,'2017-11-07','2017-11-11','2017-11-09','ON TIME'),(102,21,1,2,'2017-11-30','2017-12-04','2017-12-03','ON TIME'),(103,33,4,3,'2017-09-14','2017-09-18','2017-09-17','ON TIME'),(104,19,5,2,'2017-11-02','2017-11-06','2017-11-06','ON TIME'),(105,36,4,4,'2017-09-14','2017-09-18','2017-09-16','ON TIME'),(106,7,6,3,'2017-12-05','2017-12-09','2017-12-08','ON TIME'),(107,11,9,1,'2017-12-08','2017-12-12','2017-12-10','ON TIME'),(108,24,1,1,'2017-12-22','2017-12-26','2017-12-26','ON TIME'),(109,11,4,5,'2017-10-11','2017-10-15','2017-10-14','ON TIME'),(110,30,3,3,'2017-09-11','2017-09-15','2017-09-13','ON TIME'),(111,32,1,4,'2017-09-01','2017-09-05','2017-09-05','ON TIME'),(112,32,2,2,'2017-12-09','2017-12-13','2017-12-12','ON TIME'),(113,20,4,5,'2017-12-07','2017-12-11','2017-12-12','RETURNED LATE'),(114,29,5,2,'2017-09-01','2017-09-05','2017-09-05','ON TIME'),(115,1,5,1,'2017-10-31','2017-11-04','2017-11-05','RETURNED LATE'),(116,12,10,5,'2017-09-13','2017-09-17','2017-09-14','ON TIME'),(117,27,6,3,'2017-11-23','2017-11-27','2017-11-25','ON TIME'),(118,35,1,3,'2017-11-04','2017-11-08','2017-11-07','ON TIME'),(119,32,5,3,'2017-10-24','2017-10-28','2017-10-31','RETURNED LATE'),(120,12,8,3,'2017-09-16','2017-09-20','2017-09-17','ON TIME'),(121,2,6,5,'2017-09-07','2017-09-11','2017-09-09','ON TIME'),(122,27,3,1,'2017-09-16','2017-09-20','2017-09-20','ON TIME'),(123,25,9,5,'2017-09-06','2017-09-10','2017-09-10','ON TIME'),(124,23,3,5,'2017-09-05','2017-09-09','2017-09-06','ON TIME'),(125,7,9,4,'2017-10-05','2017-10-09','2017-10-07','ON TIME'),(126,28,2,3,'2017-09-12','2017-09-16','2017-09-19','RETURNED LATE'),(127,15,8,1,'2017-11-27','2017-12-01','2017-12-01','ON TIME'),(128,1,1,4,'2017-12-07','2017-12-11','2017-12-08','ON TIME'),(129,22,8,5,'2017-09-03','2017-09-07','2017-09-04','ON TIME'),(130,24,9,5,'2017-09-26','2017-09-30','2017-09-30','ON TIME'),(131,37,7,2,'2017-11-10','2017-11-14','2017-11-11','ON TIME'),(132,34,4,2,'2017-10-30','2017-11-03','2017-11-02','ON TIME'),(133,5,6,3,'2017-12-30','2018-01-03','2018-01-02','ON TIME'),(134,31,2,2,'2017-09-10','2017-09-14','2017-09-11','ON TIME'),(135,15,2,1,'2017-12-04','2017-12-08','2017-12-05','ON TIME'),(136,24,4,5,'2017-11-10','2017-11-14','2017-11-12','ON TIME'),(137,3,2,5,'2017-11-19','2017-11-23','2017-11-20','ON TIME'),(138,33,5,4,'2017-12-25','2017-12-29','2017-12-29','ON TIME'),(139,6,9,3,'2017-11-27','2017-12-01','2017-12-02','RETURNED LATE'),(140,22,6,5,'2017-10-03','2017-10-07','2017-10-06','ON TIME'),(141,27,9,2,'2017-09-06','2017-09-10','2017-09-08','ON TIME'),(142,11,9,5,'2017-09-20','2017-09-24','2017-09-24','ON TIME'),(143,30,5,5,'2017-09-15','2017-09-19','2017-09-16','ON TIME'),(144,34,1,5,'2017-10-28','2017-11-01','2017-10-31','ON TIME'),(145,13,10,3,'2017-10-20','2017-10-24','2017-10-23','ON TIME'),(146,20,1,5,'2017-09-01','2017-09-05','2017-09-04','ON TIME'),(147,6,7,2,'2017-11-10','2017-11-14','2017-11-14','ON TIME'),(148,14,1,2,'2017-09-15','2017-09-19','2017-09-21','RETURNED LATE'),(149,15,4,3,'2017-11-08','2017-11-12','2017-11-10','ON TIME'),(150,21,5,2,'2017-12-29','2018-01-02','2017-12-31','ON TIME'),(151,13,2,10,'2018-03-06','2018-03-10','2018-03-10','ON TIME'),(152,35,6,9,'2018-01-30','2018-02-03','2018-02-01','ON TIME'),(153,10,10,2,'2018-02-16','2018-02-20','2018-02-19','ON TIME'),(154,34,6,5,'2018-02-09','2018-02-13','2018-02-11','ON TIME'),(155,12,10,9,'2018-03-20','2018-03-24','2018-03-22','ON TIME'),(156,32,10,7,'2018-01-14','2018-01-18','2018-01-16','ON TIME'),(157,31,4,1,'2018-03-15','2018-03-19','2018-03-19','ON TIME'),(158,22,8,4,'2018-01-22','2018-01-26','2018-01-23','ON TIME'),(159,4,3,5,'2018-03-05','2018-03-09','2018-03-07','ON TIME'),(160,9,6,6,'2018-01-29','2018-02-02','2018-02-02','ON TIME'),(161,35,2,10,'2018-02-12','2018-02-16','2018-02-15','ON TIME'),(162,19,5,2,'2018-02-23','2018-02-27','2018-02-25','ON TIME'),(163,26,4,2,'2018-03-03','2018-03-07','2018-03-07','ON TIME'),(164,30,7,1,'2018-03-21','2018-03-25','2018-03-23','ON TIME'),(165,8,3,4,'2018-03-15','2018-03-19','2018-03-17','ON TIME'),(166,13,2,1,'2018-03-12','2018-03-16','2018-03-13','ON TIME'),(167,7,10,9,'2018-02-08','2018-02-12','2018-02-15','RETURNED LATE'),(168,23,9,9,'2018-03-22','2018-03-26','2018-03-23','ON TIME'),(169,16,8,5,'2018-02-25','2018-03-01','2018-02-28','ON TIME'),(170,16,9,6,'2018-01-31','2018-02-04','2018-02-07','RETURNED LATE'),(171,2,4,7,'2018-03-19','2018-03-23','2018-03-20','ON TIME'),(172,30,5,7,'2018-03-15','2018-03-19','2018-03-18','ON TIME'),(173,10,10,6,'2018-01-01','2018-01-05','2018-01-05','ON TIME'),(174,2,8,6,'2018-03-13','2018-03-17','2018-03-15','ON TIME'),(175,18,1,4,'2018-01-23','2018-01-27','2018-01-28','RETURNED LATE'),(176,20,5,10,'2018-01-09','2018-01-13','2018-01-13','ON TIME'),(177,13,5,5,'2018-02-27','2018-03-03','2018-03-02','ON TIME'),(178,7,4,10,'2018-03-12','2018-03-16','2018-03-13','ON TIME'),(179,28,7,9,'2018-03-07','2018-03-11','2018-03-12','RETURNED LATE'),(180,15,6,10,'2018-01-12','2018-01-16','2018-01-15','ON TIME'),(181,32,2,3,'2018-03-22','2018-03-26','2018-03-25','ON TIME'),(182,1,3,1,'2018-02-21','2018-02-25','2018-02-24','ON TIME'),(183,33,8,6,'2018-02-03','2018-02-07','2018-02-04','ON TIME'),(184,8,6,5,'2018-03-03','2018-03-07','2018-03-07','ON TIME'),(185,7,10,4,'2018-01-14','2018-01-18','2018-01-16','ON TIME'),(186,29,10,10,'2018-02-14','2018-02-18','2018-02-15','ON TIME'),(187,36,9,4,'2018-02-18','2018-02-22','2018-02-25','RETURNED LATE'),(188,36,8,1,'2018-03-19','2018-03-23','2018-03-23','ON TIME'),(189,20,8,8,'2018-02-18','2018-02-22','2018-02-20','ON TIME'),(190,37,9,8,'2018-02-25','2018-03-01','2018-02-28','ON TIME'),(191,33,4,1,'2018-01-19','2018-01-23','2018-01-20','ON TIME'),(192,32,8,10,'2018-01-04','2018-01-08','2018-01-05','ON TIME'),(193,24,3,5,'2018-02-01','2018-02-05','2018-02-04','ON TIME'),(194,10,8,3,'2018-02-25','2018-03-01','2018-02-27','ON TIME'),(195,28,7,5,'2018-03-15','2018-03-19','2018-03-19','ON TIME'),(196,5,5,10,'2018-02-26','2018-03-02','2018-03-01','ON TIME'),(197,19,9,7,'2018-01-11','2018-01-15','2018-01-15','ON TIME'),(198,9,7,9,'2018-02-24','2018-02-28','2018-02-25','ON TIME'),(199,21,9,6,'2018-02-16','2018-02-20','2018-02-17','ON TIME'),(200,4,1,10,'2018-01-22','2018-01-26','2018-01-26','ON TIME'),(201,35,4,4,'2018-01-09','2018-01-13','2018-01-12','ON TIME'),(202,16,7,3,'2018-01-25','2018-01-29','2018-01-27','ON TIME'),(203,28,3,10,'2018-02-28','2018-03-04','2018-03-03','ON TIME'),(204,17,6,4,'2018-01-27','2018-01-31','2018-01-28','ON TIME'),(205,2,8,10,'2018-03-22','2018-03-26','2018-03-24','ON TIME'),(206,25,2,8,'2018-02-20','2018-02-24','2018-02-27','RETURNED LATE'),(207,33,1,3,'2018-03-02','2018-03-06','2018-03-05','ON TIME'),(208,25,5,2,'2018-02-01','2018-02-05','2018-02-05','ON TIME'),(209,19,4,5,'2018-02-08','2018-02-12','2018-02-12','ON TIME'),(210,15,3,3,'2018-01-06','2018-01-10','2018-01-10','ON TIME'),(211,4,6,2,'2018-02-24','2018-02-28','2018-02-25','ON TIME'),(212,5,10,1,'2018-02-28','2018-03-04','2018-03-03','ON TIME'),(213,4,6,4,'2018-02-11','2018-02-15','2018-02-12','ON TIME'),(214,19,8,2,'2018-01-01','2018-01-05','2018-01-03','ON TIME'),(215,10,9,8,'2018-01-02','2018-01-06','2018-01-06','ON TIME'),(216,33,9,1,'2018-01-19','2018-01-23','2018-01-23','ON TIME'),(217,29,8,6,'2018-01-10','2018-01-14','2018-01-16','RETURNED LATE'),(218,2,1,8,'2018-02-07','2018-02-11','2018-02-11','ON TIME'),(219,27,1,10,'2018-02-24','2018-02-28','2018-02-27','ON TIME'),(220,27,2,2,'2018-02-03','2018-02-07','2018-02-06','ON TIME'),(221,3,3,1,'2018-02-24','2018-02-28','2018-02-28','ON TIME'),(222,11,10,9,'2018-01-02','2018-01-06','2018-01-05','ON TIME'),(223,7,6,6,'2018-02-17','2018-02-21','2018-02-19','ON TIME'),(224,15,5,8,'2018-03-20','2018-03-24','2018-03-24','ON TIME'),(225,15,2,3,'2018-02-19','2018-02-23','2018-02-21','ON TIME'),(226,19,1,8,'2018-01-16','2018-01-20','2018-01-23','RETURNED LATE'),(227,32,1,2,'2018-01-30','2018-02-03','2018-02-01','ON TIME'),(228,31,2,10,'2018-02-27','2018-03-03','2018-03-06','RETURNED LATE'),(229,5,10,6,'2018-02-16','2018-02-20','2018-02-20','ON TIME'),(230,27,3,5,'2018-01-06','2018-01-10','2018-01-10','ON TIME'),(231,19,7,2,'2018-01-09','2018-01-13','2018-01-13','ON TIME'),(232,35,8,5,'2018-02-25','2018-03-01','2018-02-28','ON TIME'),(233,8,2,9,'2018-01-18','2018-01-22','2018-01-20','ON TIME'),(234,12,5,3,'2018-02-14','2018-02-18','2018-02-17','ON TIME'),(235,8,1,5,'2018-02-26','2018-03-02','2018-03-01','ON TIME'),(236,36,6,1,'2018-03-24','2018-03-28','2018-03-28','ON TIME'),(237,23,1,5,'2018-02-25','2018-03-01','2018-02-26','ON TIME'),(238,33,9,7,'2018-03-23','2018-03-27','2018-03-26','ON TIME'),(239,2,5,9,'2018-03-18','2018-03-22','2018-03-20','ON TIME'),(240,11,2,1,'2018-02-12','2018-02-16','2018-02-14','ON TIME'),(241,2,8,7,'2018-03-28','2018-04-01','2018-04-04','RETURNED LATE'),(242,33,8,4,'2018-04-02','2018-04-06','2018-04-04','ON TIME'),(243,36,1,4,'2018-03-26','2018-03-30','2018-03-30','ON TIME'),(244,9,1,5,'2018-04-02','2018-04-06','2018-04-03','ON TIME'),(245,32,3,10,'2018-03-31','2018-04-04','2018-04-03','ON TIME'),(246,18,3,8,'2018-03-24','2018-03-28','2018-03-26','ON TIME'),(247,32,6,5,'2018-03-24','2018-03-28','2018-03-26','ON TIME'),(248,10,9,7,'2018-03-28','2018-04-01','2018-04-03','RETURNED LATE'),(249,10,6,1,'2018-03-28','2018-04-01','2018-03-31','ON TIME'),(250,27,3,2,'2018-04-01','2018-04-05','2018-04-02','ON TIME'),(251,24,9,7,'2018-04-01','2018-04-05',NULL,'RENTED'),(252,16,2,6,'2018-04-03','2018-04-07','2018-04-04','ON TIME'),(253,25,9,8,'2018-04-03','2018-04-07','2018-04-04','ON TIME'),(254,4,4,4,'2018-03-24','2018-03-28','2018-03-28','ON TIME'),(255,23,10,5,'2018-03-28','2018-04-01','2018-03-31','ON TIME'),(256,36,4,9,'2018-03-31','2018-04-04','2018-04-01','ON TIME'),(257,18,2,5,'2018-03-29','2018-04-02','2018-04-01','ON TIME'),(258,7,4,6,'2018-03-27','2018-03-31','2018-03-30','ON TIME'),(259,10,2,3,'2018-03-27','2018-03-31','2018-03-28','ON TIME'),(260,19,1,4,'2018-03-24','2018-03-28','2018-03-27','ON TIME'),(261,10,4,5,'2018-04-04','2018-04-08','2018-04-06','ON TIME'),(262,14,1,8,'2018-04-03','2018-04-07','2018-04-04','ON TIME'),(263,5,6,1,'2018-04-03','2018-04-07',NULL,'RENTED'),(264,30,10,6,'2018-04-03','2018-04-07',NULL,'RENTED'),(265,26,4,6,'2018-04-03','2018-04-07',NULL,'RENTED'),(266,9,6,9,'2018-04-04','2018-04-08','2018-04-06','ON TIME'),(267,11,1,1,'2018-04-03','2018-04-07',NULL,'RENTED'),(268,37,8,2,'2018-04-04','2018-04-08',NULL,'RENTED'),(269,16,10,9,'2018-04-04','2018-04-08',NULL,'RENTED'),(270,18,7,2,'2018-04-03','2018-04-07',NULL,'RENTED'),(271,15,8,9,'2018-04-04','2018-04-08','2018-04-06','ON TIME'),(272,6,7,1,'2018-04-04','2018-04-08','2018-04-06','ON TIME'),(273,22,4,10,'2018-04-04','2018-04-08',NULL,'RENTED'),(274,8,7,2,'2018-04-04','2018-04-08',NULL,'RENTED'),(275,29,9,8,'2018-04-03','2018-04-07','2018-04-04','ON TIME'),(276,31,2,7,'2018-04-03','2018-04-07',NULL,'RENTED'),(277,3,4,7,'2018-03-27','2018-03-31',NULL,'RENTED'),(278,12,10,2,'2018-04-04','2018-04-08','2018-04-06','ON TIME'),(279,2,9,4,'2018-04-03','2018-04-07','2018-04-04','ON TIME'),(280,1,3,2,'2018-04-04','2018-04-08','2018-04-06','ON TIME'),(281,16,10,4,'2018-03-29','2018-04-02',NULL,'RENTED'),(282,9,2,7,'2018-03-30','2018-04-03','2018-04-03','ON TIME'),(283,1,7,3,'2018-03-29','2018-04-02','2018-04-03','RETURNED LATE'),(284,9,6,4,'2018-03-27','2018-03-31','2018-03-30','ON TIME'),(285,11,6,5,'2018-03-30','2018-04-03','2018-04-03','ON TIME'),(286,5,6,6,'2018-03-29','2018-04-02','2018-04-02','ON TIME'),(287,23,4,7,'2018-03-29','2018-04-02',NULL,'RENTED'),(288,4,1,1,'2018-04-04','2018-04-08',NULL,'RENTED'),(289,13,1,1,'2018-04-05','2018-04-09',NULL,'RENTED'),(290,20,1,1,'2018-04-05','2018-04-09',NULL,'RENTED'),(291,21,3,7,'2018-04-05','2018-04-09',NULL,'RENTED'),(292,10,4,8,'2018-04-06','2018-04-10',NULL,'RENTED'),(293,15,8,6,'2018-04-06','2018-04-10',NULL,'RENTED'),(294,6,7,10,'2018-04-06','2018-04-10',NULL,'RENTED'),(295,1,3,5,'2018-04-06','2018-04-10',NULL,'RENTED'),(296,9,6,2,'2018-04-06','2018-04-10',NULL,'RENTED'),(297,12,10,4,'2018-04-06','2018-04-10',NULL,'RENTED'),(298,19,1,1,'2018-04-06','2018-04-10','2018-04-06','ON TIME'),(299,2,1,1,'2018-04-06','2018-04-10','2018-04-06','ON TIME');
/*!40000 ALTER TABLE `rented` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `pontusl`.`rented_AFTER_INSERT` AFTER INSERT ON `rented` FOR EACH ROW
BEGIN
INSERT INTO statistics (copyID, customerID, employeeID, rentDate)
VALUES (NEW.copyID, NEW.customerID, NEW.employeeID, NEW.rentdate);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
-- Table structure for table `statistics`
--

DROP TABLE IF EXISTS `statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statistics` (
  `statisticsID` int(11) NOT NULL AUTO_INCREMENT,
  `copyID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `employeeID` int(11) NOT NULL,
  `rentDate` date DEFAULT NULL,
  PRIMARY KEY (`statisticsID`),
  KEY `fk_statistics_copies1_idx` (`copyID`),
  KEY `fk_statistics_customers1_idx` (`customerID`),
  KEY `fk_statistics_employees1_idx` (`employeeID`),
  CONSTRAINT `fk_statistics_copies1` FOREIGN KEY (`copyID`) REFERENCES `copies` (`copyID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_statistics_customers1` FOREIGN KEY (`customerID`) REFERENCES `customers` (`customerID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_statistics_employees1` FOREIGN KEY (`employeeID`) REFERENCES `employees` (`employeeID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=300 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statistics`
--

LOCK TABLES `statistics` WRITE;
/*!40000 ALTER TABLE `statistics` DISABLE KEYS */;
INSERT INTO `statistics` VALUES (1,36,3,1,'2017-02-19'),(2,5,3,1,'2017-01-05'),(3,14,9,1,'2017-06-28'),(4,36,5,1,'2017-06-05'),(5,9,7,1,'2017-01-06'),(6,29,7,1,'2017-01-01'),(7,9,8,1,'2017-08-27'),(8,14,5,1,'2017-01-21'),(9,29,8,1,'2017-03-13'),(10,11,6,1,'2017-04-03'),(11,21,2,1,'2017-01-01'),(12,11,8,1,'2017-06-25'),(13,12,3,1,'2017-08-13'),(14,37,6,1,'2017-01-17'),(15,16,8,1,'2017-03-26'),(16,13,6,1,'2017-08-06'),(17,24,9,1,'2017-03-09'),(18,12,9,1,'2017-08-20'),(19,30,10,1,'2017-03-28'),(20,33,9,1,'2017-01-11'),(21,7,3,1,'2017-06-03'),(22,29,10,1,'2017-01-21'),(23,16,8,1,'2017-04-01'),(24,11,1,1,'2017-03-27'),(25,30,3,1,'2017-01-17'),(26,26,5,1,'2017-07-29'),(27,7,1,1,'2017-04-01'),(28,34,10,1,'2017-03-19'),(29,29,6,1,'2017-03-28'),(30,1,8,1,'2017-01-11'),(31,32,7,1,'2017-05-11'),(32,20,8,1,'2017-01-10'),(33,33,5,1,'2017-08-02'),(34,5,8,1,'2017-07-12'),(35,20,1,1,'2017-05-31'),(36,9,1,1,'2017-07-20'),(37,1,3,1,'2017-08-16'),(38,26,6,1,'2017-03-10'),(39,4,2,1,'2017-01-22'),(40,21,5,1,'2017-03-15'),(41,28,1,1,'2017-02-16'),(42,24,6,1,'2017-08-25'),(43,33,4,1,'2017-01-17'),(44,8,9,1,'2017-02-01'),(45,21,5,1,'2017-01-08'),(46,34,7,1,'2017-07-31'),(47,34,10,1,'2017-08-19'),(48,34,3,1,'2017-01-25'),(49,37,6,1,'2017-05-05'),(50,31,3,1,'2017-08-05'),(51,20,3,1,'2017-04-25'),(52,31,6,1,'2017-08-24'),(53,6,6,1,'2017-02-23'),(54,33,2,1,'2017-03-17'),(55,9,7,1,'2017-03-26'),(56,29,5,1,'2017-01-03'),(57,37,6,1,'2017-02-27'),(58,9,4,1,'2017-05-14'),(59,14,8,1,'2017-04-05'),(60,2,8,1,'2017-01-04'),(61,16,4,1,'2017-05-28'),(62,19,3,1,'2017-05-14'),(63,14,9,1,'2017-01-03'),(64,7,3,1,'2017-05-26'),(65,2,3,1,'2017-06-17'),(66,3,1,1,'2017-01-27'),(67,34,1,1,'2017-03-13'),(68,3,2,1,'2017-05-25'),(69,8,2,1,'2017-07-22'),(70,18,3,1,'2017-05-18'),(71,12,3,1,'2017-01-27'),(72,32,2,1,'2017-04-24'),(73,9,10,1,'2017-01-16'),(74,26,7,1,'2017-05-03'),(75,33,4,1,'2017-02-16'),(76,33,8,1,'2017-03-23'),(77,32,3,1,'2017-08-09'),(78,19,2,1,'2017-07-10'),(79,30,3,1,'2017-04-04'),(80,33,9,1,'2017-05-11'),(81,12,5,1,'2017-04-22'),(82,10,6,1,'2017-03-26'),(83,7,3,1,'2017-03-04'),(84,7,2,1,'2017-06-22'),(85,29,7,1,'2017-06-28'),(86,22,6,1,'2017-06-05'),(87,31,5,1,'2017-02-14'),(88,24,6,1,'2017-07-23'),(89,21,9,1,'2017-07-21'),(90,10,10,1,'2017-01-22'),(91,6,2,5,'2017-11-02'),(92,12,5,4,'2017-10-14'),(93,7,2,5,'2017-11-29'),(94,1,8,5,'2017-12-25'),(95,13,10,1,'2017-09-16'),(96,4,2,1,'2017-09-09'),(97,4,5,4,'2017-10-29'),(98,28,5,1,'2017-10-10'),(99,16,8,5,'2017-12-11'),(100,15,9,1,'2017-10-29'),(101,35,5,5,'2017-11-07'),(102,21,1,2,'2017-11-30'),(103,33,4,3,'2017-09-14'),(104,19,5,2,'2017-11-02'),(105,36,4,4,'2017-09-14'),(106,7,6,3,'2017-12-05'),(107,11,9,1,'2017-12-08'),(108,24,1,1,'2017-12-22'),(109,11,4,5,'2017-10-11'),(110,30,3,3,'2017-09-11'),(111,32,1,4,'2017-09-01'),(112,32,2,2,'2017-12-09'),(113,20,4,5,'2017-12-07'),(114,29,5,2,'2017-09-01'),(115,1,5,1,'2017-10-31'),(116,12,10,5,'2017-09-13'),(117,27,6,3,'2017-11-23'),(118,35,1,3,'2017-11-04'),(119,32,5,3,'2017-10-24'),(120,12,8,3,'2017-09-16'),(121,2,6,5,'2017-09-07'),(122,27,3,1,'2017-09-16'),(123,25,9,5,'2017-09-06'),(124,23,3,5,'2017-09-05'),(125,7,9,4,'2017-10-05'),(126,28,2,3,'2017-09-12'),(127,15,8,1,'2017-11-27'),(128,1,1,4,'2017-12-07'),(129,22,8,5,'2017-09-03'),(130,24,9,5,'2017-09-26'),(131,37,7,2,'2017-11-10'),(132,34,4,2,'2017-10-30'),(133,5,6,3,'2017-12-30'),(134,31,2,2,'2017-09-10'),(135,15,2,1,'2017-12-04'),(136,24,4,5,'2017-11-10'),(137,3,2,5,'2017-11-19'),(138,33,5,4,'2017-12-25'),(139,6,9,3,'2017-11-27'),(140,22,6,5,'2017-10-03'),(141,27,9,2,'2017-09-06'),(142,11,9,5,'2017-09-20'),(143,30,5,5,'2017-09-15'),(144,34,1,5,'2017-10-28'),(145,13,10,3,'2017-10-20'),(146,20,1,5,'2017-09-01'),(147,6,7,2,'2017-11-10'),(148,14,1,2,'2017-09-15'),(149,15,4,3,'2017-11-08'),(150,21,5,2,'2017-12-29'),(151,13,2,10,'2018-03-06'),(152,35,6,9,'2018-01-30'),(153,10,10,2,'2018-02-16'),(154,34,6,5,'2018-02-09'),(155,12,10,9,'2018-03-20'),(156,32,10,7,'2018-01-14'),(157,31,4,1,'2018-03-15'),(158,22,8,4,'2018-01-22'),(159,4,3,5,'2018-03-05'),(160,9,6,6,'2018-01-29'),(161,35,2,10,'2018-02-12'),(162,19,5,2,'2018-02-23'),(163,26,4,2,'2018-03-03'),(164,30,7,1,'2018-03-21'),(165,8,3,4,'2018-03-15'),(166,13,2,1,'2018-03-12'),(167,7,10,9,'2018-02-08'),(168,23,9,9,'2018-03-22'),(169,16,8,5,'2018-02-25'),(170,16,9,6,'2018-01-31'),(171,2,4,7,'2018-03-19'),(172,30,5,7,'2018-03-15'),(173,10,10,6,'2018-01-01'),(174,2,8,6,'2018-03-13'),(175,18,1,4,'2018-01-23'),(176,20,5,10,'2018-01-09'),(177,13,5,5,'2018-02-27'),(178,7,4,10,'2018-03-12'),(179,28,7,9,'2018-03-07'),(180,15,6,10,'2018-01-12'),(181,32,2,3,'2018-03-22'),(182,1,3,1,'2018-02-21'),(183,33,8,6,'2018-02-03'),(184,8,6,5,'2018-03-03'),(185,7,10,4,'2018-01-14'),(186,29,10,10,'2018-02-14'),(187,36,9,4,'2018-02-18'),(188,36,8,1,'2018-03-19'),(189,20,8,8,'2018-02-18'),(190,37,9,8,'2018-02-25'),(191,33,4,1,'2018-01-19'),(192,32,8,10,'2018-01-04'),(193,24,3,5,'2018-02-01'),(194,10,8,3,'2018-02-25'),(195,28,7,5,'2018-03-15'),(196,5,5,10,'2018-02-26'),(197,19,9,7,'2018-01-11'),(198,9,7,9,'2018-02-24'),(199,21,9,6,'2018-02-16'),(200,4,1,10,'2018-01-22'),(201,35,4,4,'2018-01-09'),(202,16,7,3,'2018-01-25'),(203,28,3,10,'2018-02-28'),(204,17,6,4,'2018-01-27'),(205,2,8,10,'2018-03-22'),(206,25,2,8,'2018-02-20'),(207,33,1,3,'2018-03-02'),(208,25,5,2,'2018-02-01'),(209,19,4,5,'2018-02-08'),(210,15,3,3,'2018-01-06'),(211,4,6,2,'2018-02-24'),(212,5,10,1,'2018-02-28'),(213,4,6,4,'2018-02-11'),(214,19,8,2,'2018-01-01'),(215,10,9,8,'2018-01-02'),(216,33,9,1,'2018-01-19'),(217,29,8,6,'2018-01-10'),(218,2,1,8,'2018-02-07'),(219,27,1,10,'2018-02-24'),(220,27,2,2,'2018-02-03'),(221,3,3,1,'2018-02-24'),(222,11,10,9,'2018-01-02'),(223,7,6,6,'2018-02-17'),(224,15,5,8,'2018-03-20'),(225,15,2,3,'2018-02-19'),(226,19,1,8,'2018-01-16'),(227,32,1,2,'2018-01-30'),(228,31,2,10,'2018-02-27'),(229,5,10,6,'2018-02-16'),(230,27,3,5,'2018-01-06'),(231,19,7,2,'2018-01-09'),(232,35,8,5,'2018-02-25'),(233,8,2,9,'2018-01-18'),(234,12,5,3,'2018-02-14'),(235,8,1,5,'2018-02-26'),(236,36,6,1,'2018-03-24'),(237,23,1,5,'2018-02-25'),(238,33,9,7,'2018-03-23'),(239,2,5,9,'2018-03-18'),(240,11,2,1,'2018-02-12'),(241,2,8,7,'2018-03-28'),(242,33,8,4,'2018-04-02'),(243,36,1,4,'2018-03-26'),(244,9,1,5,'2018-04-02'),(245,32,3,10,'2018-03-31'),(246,18,3,8,'2018-03-24'),(247,32,6,5,'2018-03-24'),(248,10,9,7,'2018-03-28'),(249,10,6,1,'2018-03-28'),(250,27,3,2,'2018-04-01'),(251,24,9,7,'2018-04-01'),(252,16,2,6,'2018-04-03'),(253,25,9,8,'2018-04-03'),(254,4,4,4,'2018-03-24'),(255,23,10,5,'2018-03-28'),(256,36,4,9,'2018-03-31'),(257,18,2,5,'2018-03-29'),(258,7,4,6,'2018-03-27'),(259,10,2,3,'2018-03-27'),(260,19,1,4,'2018-03-24'),(261,10,4,5,'2018-04-04'),(262,14,1,8,'2018-04-03'),(263,5,6,1,'2018-04-03'),(264,30,10,6,'2018-04-03'),(265,26,4,6,'2018-04-03'),(266,9,6,9,'2018-04-04'),(267,11,1,1,'2018-04-03'),(268,37,8,2,'2018-04-04'),(269,16,10,9,'2018-04-04'),(270,18,7,2,'2018-04-03'),(271,15,8,9,'2018-04-04'),(272,6,7,1,'2018-04-04'),(273,22,4,10,'2018-04-04'),(274,8,7,2,'2018-04-04'),(275,29,9,8,'2018-04-03'),(276,31,2,7,'2018-04-03'),(277,3,4,7,'2018-03-27'),(278,12,10,2,'2018-04-04'),(279,2,9,4,'2018-04-03'),(280,1,3,2,'2018-04-04'),(281,16,10,4,'2018-03-29'),(282,9,2,7,'2018-03-30'),(283,1,7,3,'2018-03-29'),(284,9,6,4,'2018-03-27'),(285,11,6,5,'2018-03-30'),(286,5,6,6,'2018-03-29'),(287,23,4,7,'2018-03-29'),(288,4,1,1,'2018-04-04'),(289,13,1,1,'2018-04-05'),(290,20,1,1,'2018-04-05'),(291,21,3,7,'2018-04-05'),(292,10,4,8,'2018-04-06'),(293,15,8,6,'2018-04-06'),(294,6,7,10,'2018-04-06'),(295,1,3,5,'2018-04-06'),(296,9,6,2,'2018-04-06'),(297,12,10,4,'2018-04-06'),(298,19,1,1,'2018-04-06'),(299,2,1,1,'2018-04-06');
/*!40000 ALTER TABLE `statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_company_owns_movies`
--

DROP TABLE IF EXISTS `vw_company_owns_movies`;
/*!50001 DROP VIEW IF EXISTS `vw_company_owns_movies`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_company_owns_movies` AS SELECT 
 1 AS `ID`,
 1 AS `Title`,
 1 AS `Copies owned`,
 1 AS `Lenght`,
 1 AS `Release Date`,
 1 AS `Actors`,
 1 AS `Director(s)`,
 1 AS `Genre(s)`,
 1 AS `Award(s)`,
 1 AS `Country/ies`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_employee_rentals`
--

DROP TABLE IF EXISTS `vw_employee_rentals`;
/*!50001 DROP VIEW IF EXISTS `vw_employee_rentals`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_employee_rentals` AS SELECT 
 1 AS `Employee ID`,
 1 AS `Employee name`,
 1 AS `Total rentals`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_months_top_movies`
--

DROP TABLE IF EXISTS `vw_months_top_movies`;
/*!50001 DROP VIEW IF EXISTS `vw_months_top_movies`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_months_top_movies` AS SELECT 
 1 AS `Movie title`,
 1 AS `Times rented`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_movies_in_genre`
--

DROP TABLE IF EXISTS `vw_movies_in_genre`;
/*!50001 DROP VIEW IF EXISTS `vw_movies_in_genre`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_movies_in_genre` AS SELECT 
 1 AS `ID`,
 1 AS `Title`,
 1 AS `Genre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_overdue_movies`
--

DROP TABLE IF EXISTS `vw_overdue_movies`;
/*!50001 DROP VIEW IF EXISTS `vw_overdue_movies`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_overdue_movies` AS SELECT 
 1 AS `Copy ID`,
 1 AS `Movie title`,
 1 AS `Format`,
 1 AS `Customer`,
 1 AS `Rent date`,
 1 AS `Due date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_rented_movies`
--

DROP TABLE IF EXISTS `vw_rented_movies`;
/*!50001 DROP VIEW IF EXISTS `vw_rented_movies`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_rented_movies` AS SELECT 
 1 AS `Copy ID`,
 1 AS `Movie title`,
 1 AS `Format`,
 1 AS `Customer`,
 1 AS `Employee`,
 1 AS `Rent date`,
 1 AS `Due date`,
 1 AS `Status`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'pontusl'
--

--
-- Dumping routines for database 'pontusl'
--
/*!50003 DROP FUNCTION IF EXISTS `f_is_movie_late` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `f_is_movie_late`(p_copyID INT) RETURNS tinyint(1)
BEGIN
IF (SELECT rb.copyID
	FROM (
		SELECT copyID,
			   max(rentDate) rentDate
		FROM rented r group by copyID
	) ra
	LEFT JOIN rented rb USING (copyID, rentDate)
	WHERE rb.copyID = p_copyID
    AND rb.dueDate < curdate()
    AND rb.returnedDate IS NULL
    ) IS NOT NULL
THEN
RETURN TRUE;
ELSE
RETURN FALSE;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_rent_movie` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_rent_movie`(
	IN p_movieID INT,
    IN p_customerID INT,
    IN p_employeeID INT,
    IN p_format VARCHAR(10),
    OUT p_result VARCHAR(50)
)
BEGIN
-- First, we need to check if there are any copies of the movie available
SELECT @copyID := (
	SELECT rb.copyID
	FROM (
		SELECT copyID,
			   max(rentDate) rentDate
		FROM rented r group by copyID
	) ra
    LEFT JOIN rented rb USING (copyID, rentDate)
	LEFT JOIN copies c USING(copyID)
	LEFT JOIN movies m USING(movieID)
	WHERE rb.returnedDate IS NOT NULL
	AND m.movieID = p_movieID
	AND c.format = p_format
    LIMIT 1
);

SET p_format = UPPER(p_format);

-- IF a copy exists, insert it into rented table. Else return failed message.
IF (@copyID > 0) THEN
INSERT INTO rented (copyID, customerID, employeeID, rentDate, dueDate)
VALUES (@copyID, p_customerID, p_employeeID, curdate(), DATE_ADD(curdate(), INTERVAL 4 DAY));
SET p_result = concat('Renting of copy ', @copyID, ' successful.');
ELSE
SET p_result = 'No copy of the movie available in selected format.';
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_return_movie` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_return_movie`(
	p_copyID INT
)
BEGIN
IF (f_is_movie_late(p_copyID) = 1)
THEN SELECT @lateStatus := 'RETURNED LATE';
ELSE SELECT @lateStatus := 'ON TIME';
END IF;
UPDATE rented SET returnedDate = curdate(), `status` = @lateStatus
WHERE copyID = p_copyID
AND `status` = 'RENTED';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_company_owns_movies`
--

/*!50001 DROP VIEW IF EXISTS `vw_company_owns_movies`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_company_owns_movies` AS select `m`.`movieID` AS `ID`,`m`.`title` AS `Title`,count(distinct `cop`.`copyID`) AS `Copies owned`,concat(floor((`m`.`length` / 60)),'h ',(`m`.`length` % 60),'m') AS `Lenght`,`m`.`releaseDate` AS `Release Date`,group_concat(distinct `ac`.`name` separator ', ') AS `Actors`,group_concat(distinct `d`.`name` separator ', ') AS `Director(s)`,group_concat(distinct `g`.`name` separator ', ') AS `Genre(s)`,group_concat(distinct `aw`.`name` separator ', ') AS `Award(s)`,group_concat(distinct `cou`.`name` separator ', ') AS `Country/ies` from (((((((((((`movies` `m` left join `copies` `cop` on((`m`.`movieID` = `cop`.`movieID`))) left join `movies_has_actors` `mac` on((`m`.`movieID` = `mac`.`movieID`))) left join `actors` `ac` on((`mac`.`actorID` = `ac`.`actorID`))) left join `movies_has_directors` `md` on((`m`.`movieID` = `md`.`movieID`))) left join `directors` `d` on((`md`.`directorID` = `d`.`directorID`))) left join `movies_has_genres` `mg` on((`m`.`movieID` = `mg`.`movieID`))) left join `genres` `g` on((`mg`.`genreID` = `g`.`genreID`))) left join `movies_has_awards` `maw` on((`m`.`movieID` = `maw`.`movieID`))) left join `awards` `aw` on((`maw`.`awardID` = `aw`.`awardID`))) left join `movies_has_countries` `mc` on((`m`.`movieID` = `mc`.`movieID`))) left join `countries` `cou` on((`mc`.`countryID` = `cou`.`countryID`))) group by `m`.`movieID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_employee_rentals`
--

/*!50001 DROP VIEW IF EXISTS `vw_employee_rentals`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_employee_rentals` AS select `e`.`employeeID` AS `Employee ID`,concat(`e`.`firstName`,' ',`e`.`lastName`) AS `Employee name`,count(`r`.`rentingID`) AS `Total rentals` from (`employees` `e` left join `rented` `r` on((`e`.`employeeID` = `r`.`employeeID`))) group by `e`.`employeeID` order by count(`r`.`rentingID`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_months_top_movies`
--

/*!50001 DROP VIEW IF EXISTS `vw_months_top_movies`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_months_top_movies` AS select `m`.`title` AS `Movie title`,count(`s`.`statisticsID`) AS `Times rented` from ((`statistics` `s` left join `copies` `c` on((`s`.`copyID` = `c`.`copyID`))) left join `movies` `m` on((`c`.`movieID` = `m`.`movieID`))) where (`s`.`rentDate` >= (curdate() - interval 30 day)) group by `m`.`title` order by count(`s`.`statisticsID`) desc,`m`.`title` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_movies_in_genre`
--

/*!50001 DROP VIEW IF EXISTS `vw_movies_in_genre`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_movies_in_genre` AS select `m`.`movieID` AS `ID`,`m`.`title` AS `Title`,`g`.`name` AS `Genre` from ((`movies` `m` left join `movies_has_genres` `mg` on((`m`.`movieID` = `mg`.`movieID`))) left join `genres` `g` on((`mg`.`genreID` = `g`.`genreID`))) where (`g`.`name` = 'Adventure') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_overdue_movies`
--

/*!50001 DROP VIEW IF EXISTS `vw_overdue_movies`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_overdue_movies` AS select `r`.`copyID` AS `Copy ID`,`m`.`title` AS `Movie title`,`co`.`format` AS `Format`,concat(`cu`.`customerID`,': ',`cu`.`firstName`,' ',`cu`.`lastName`) AS `Customer`,`r`.`rentDate` AS `Rent date`,`r`.`dueDate` AS `Due date` from (((`rented` `r` left join `copies` `co` on((`r`.`copyID` = `co`.`copyID`))) left join `movies` `m` on((`co`.`movieID` = `m`.`movieID`))) left join `customers` `cu` on((`r`.`customerID` = `cu`.`customerID`))) where ((`r`.`dueDate` < curdate()) and isnull(`r`.`returnedDate`)) order by `r`.`rentDate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_rented_movies`
--

/*!50001 DROP VIEW IF EXISTS `vw_rented_movies`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_rented_movies` AS select `r`.`copyID` AS `Copy ID`,`m`.`title` AS `Movie title`,`co`.`format` AS `Format`,concat(`cu`.`customerID`,': ',`cu`.`firstName`,' ',`cu`.`lastName`) AS `Customer`,concat(`e`.`employeeID`,': ',`e`.`firstName`,' ',`e`.`lastName`) AS `Employee`,`r`.`rentDate` AS `Rent date`,`r`.`dueDate` AS `Due date`,`r`.`status` AS `Status` from ((((`rented` `r` left join `copies` `co` on((`r`.`copyID` = `co`.`copyID`))) left join `movies` `m` on((`co`.`movieID` = `m`.`movieID`))) left join `customers` `cu` on((`r`.`customerID` = `cu`.`customerID`))) left join `employees` `e` on((`r`.`employeeID` = `e`.`employeeID`))) where ((`r`.`rentDate` <= curdate()) and isnull(`r`.`returnedDate`)) order by `r`.`rentDate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-06 15:40:21
