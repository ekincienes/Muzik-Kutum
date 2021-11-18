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
-- Table structure for table `sarki`
--

DROP TABLE IF EXISTS `sarki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sarki` (
  `sarki_id` int NOT NULL,
  `ad` varchar(45) DEFAULT NULL,
  `tarih` varchar(45) DEFAULT NULL,
  `sanatci_id` int DEFAULT NULL,
  `album_id` int DEFAULT NULL,
  `tur_id` int DEFAULT NULL,
  `sure` float DEFAULT NULL,
  `dinleme` int DEFAULT NULL,
  PRIMARY KEY (`sarki_id`),
  KEY `keyf_sarki_tur_idx` (`tur_id`),
  CONSTRAINT `keyf_sarki_tur` FOREIGN KEY (`tur_id`) REFERENCES `tur` (`tur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sarki`
--

LOCK TABLES `sarki` WRITE;
/*!40000 ALTER TABLE `sarki` DISABLE KEYS */;
INSERT INTO `sarki` VALUES (1,'Nights of Peru','2000',3,5,3,2.45,254),(2,'Lights of Peru','2000',3,5,3,5.12,85),(3,'Tides of Peru','2000',3,5,3,1.57,15),(4,'Topraktan Bedene','1996',1,4,1,3.38,21),(5,'İsyanım Var','1996',1,4,1,3.01,35),(6,'İstanbul Sokakları','1996',1,4,1,2.22,230),(7,'Taht Kurmuşsun Kalbime','1996',1,4,1,4.27,97),(8,'Yolcu İle Arabacı','1996',1,4,1,5.3,170),(9,'Neden Saçların Beyazlanmış','1996',1,4,1,2.47,87),(10,'Kahretmişim Hayatıma','1996',1,4,1,5.09,201),(11,'Dert Bende Derman Sende','1996',1,4,1,1.17,154),(12,'Yol Ver Dağlar','1996',1,4,1,2.58,400),(13,'Yoğurt Koydum Dolaba','1996',1,4,1,3.45,74),(14,'I Loves You Porgy','1964',2,3,2,3.3,111),(15,'Plain Gold Ring','1964',2,3,2,2.12,98),(16,'Pirate Jenny','1964',2,3,2,4.34,42),(17,'Old Jim Crow','1964',2,3,2,5.07,140),(18,'Don\'t Smoke in Bed','1964',2,3,2,7.44,310),(19,'Go Limp','1964',2,3,2,2.51,87),(20,'Mississippi Goddam','1964',2,3,2,4.06,120),(21,'Adagio ma non','2021',4,6,3,8.09,99),(22,'Allegro molto','2021',4,6,3,3.01,153),(23,'Allegro moderato ','2021',4,6,3,0.51,12),(24,'Andante ma non','2021',4,6,3,14.48,57),(25,'Presto','2021',4,6,3,5.16,223),(26,'Adagio','2021',4,6,3,2.29,46),(27,'Lento','2021',4,6,3,3.38,24),(28,'Fugue','2021',4,6,3,1.43,37),(29,'Mad House','2009',5,7,1,1.34,264),(30,'Wait Your Turn','2009',5,7,1,3.46,178),(31,'Hard','2009',5,7,1,4.1,387),(32,'Stupid in Love','2009',5,7,1,4.01,410),(33,'Rockstar 101','2009',5,7,1,3.58,251),(34,'Russian Roulette','2009',5,7,1,3.47,331),(35,'Fire Bomb','2009',5,7,1,4.17,678),(36,'Rude Boy','2009',5,7,1,3.42,891),(37,'G4L','2009',5,7,1,3.59,150),(38,'The Last Song','2009',5,7,1,4.16,97),(39,'Kuş Kanadı','2012',6,2,2,7.58,64),(40,'Kuşların Hüznü','2012',6,2,2,5.45,114),(41,'İstanbul Sessizliği','2012',6,2,2,3.54,197),(42,'Gri Cam','2012',6,2,2,1.41,278),(43,'Rüzgara Doğru','2012',6,2,2,6.41,98),(44,'Kuş gagası','2012',6,2,2,0.51,56),(45,'Ah Be Kardeşim','2010',7,1,1,3.55,420),(46,'Nezaketten','2010',7,1,1,3.44,340),(47,'Bir Tek Sen Eksiksin','2010',7,1,1,4.44,187),(48,'Bit Pazarı','2010',7,1,1,3.23,241),(49,'Nerden Nereye','2010',7,1,1,4.57,160),(50,'Başka Hayatların Kadını','2010',7,1,1,4.59,41),(51,'Aşk İstiyoruz','2010',7,1,1,3.24,97),(52,'Ki Sen','2010',7,1,1,4.08,173),(53,'İki Kişi','2010',7,1,1,4.41,54);
/*!40000 ALTER TABLE `sarki` ENABLE KEYS */;
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
