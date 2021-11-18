-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: mzkktm_db
-- ------------------------------------------------------
-- Server version	8.0.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `kullanici`
--

DROP TABLE IF EXISTS `kullanici`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kullanici` (
  `kullanici_id` int NOT NULL,
  `ad` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `sifre` varchar(45) DEFAULT NULL,
  `abonlik_id` int DEFAULT NULL,
  `odendimi_id` int DEFAULT NULL,
  PRIMARY KEY (`kullanici_id`),
  KEY `keyodendimi` (`odendimi_id`) /*!80000 INVISIBLE */,
  KEY `keyabonelik` (`abonlik_id`),
  CONSTRAINT `keyf_kullanici_abonelikturu` FOREIGN KEY (`abonlik_id`) REFERENCES `abonelikturu` (`abonelik_id`),
  CONSTRAINT `keyf_kullanici_odendimi` FOREIGN KEY (`odendimi_id`) REFERENCES `odendimi` (`odendimi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kullanici`
--

LOCK TABLES `kullanici` WRITE;
/*!40000 ALTER TABLE `kullanici` DISABLE KEYS */;
INSERT INTO `kullanici` VALUES (1,'ali','ali@gmail.com','ali123',2,2),(2,'mehmet','mehmet@gmail.com','mehmet123',2,2),(3,'enes','enes@gmail.com','enes123',2,2),(4,'ogulcan','ogulcan@gmail.com','ogulcan123',2,2),(5,'fatih','fatih@gmail.com','fatih123',2,2),(6,'beyza','beyza@gmail.com','beyza123',1,1),(7,'fatma','fatma@gmail.com','fatma123',1,1),(8,'can','can@gmail.com','can123',1,1),(9,'fuat','fuat@gmail.com','fuat123',1,1),(10,'emre','emre@gmail.com','emre123',1,1);
/*!40000 ALTER TABLE `kullanici` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-19 18:48:17
