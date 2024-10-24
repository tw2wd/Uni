-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: pet_database
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `petEvent`
--

DROP TABLE IF EXISTS `petEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `petEvent` (
  `petname` varchar(20) NOT NULL,
  `eventdate` date NOT NULL,
  `eventtype` varchar(15) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`petname`,`eventdate`),
  CONSTRAINT `petEvent_ibfk_1` FOREIGN KEY (`petname`) REFERENCES `petPet` (`petname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `petEvent`
--

LOCK TABLES `petEvent` WRITE;
/*!40000 ALTER TABLE `petEvent` DISABLE KEYS */;
INSERT INTO `petEvent` VALUES ('Bowser','1991-10-12','kennel',NULL),('Chirpy','1999-03-21','vet','needed beak straightened'),('Claws','1997-08-03','vet','broken rib'),('Claws','1998-03-17','birthday','Gave him a new flea collar'),('Fang','1991-10-12','kennel',NULL),('Fang','1998-08-28','birthday','Gave him a new chew toy'),('Fluffy','1995-05-15','litter','4 kittens, 3 female, 1 male'),('Fluffy','1997-08-03','Litter','5 kittens, 3 female, 2 male'),('Fluffy','2020-10-15','vet','antibiotics'),('Slim','1997-10-04','vet','broken tooth'),('Whistler','1998-12-09','birthday','First birthday');
/*!40000 ALTER TABLE `petEvent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `petPet`
--

DROP TABLE IF EXISTS `petPet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `petPet` (
  `petname` varchar(20) NOT NULL,
  `owner` varchar(45) DEFAULT NULL,
  `species` varchar(45) DEFAULT NULL,
  `gender` enum('M','F') DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `death` date DEFAULT NULL,
  PRIMARY KEY (`petname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `petPet`
--

LOCK TABLES `petPet` WRITE;
/*!40000 ALTER TABLE `petPet` DISABLE KEYS */;
INSERT INTO `petPet` VALUES ('Bowser','Diane','dog','M','1979-08-31','1995-07-29'),('Chirpy','Gwen','bird','F','1998-09-11',NULL),('Claws','Gwen','cat','M','1994-03-17',NULL),('Fang','Benny','dog','M','1990-08-27',NULL),('Fluffy','Harold','cat','F','1993-02-04',NULL),('Hammy','Diane','Hamster','M','2020-10-30',NULL),('Puffball','Diane','hamster','F','1999-03-30','2020-09-01'),('Slim','Benny','snake','M','1996-04-29',NULL),('Whistler','Gwen','bird',NULL,'1997-12-09',NULL);
/*!40000 ALTER TABLE `petPet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-24 18:09:29
