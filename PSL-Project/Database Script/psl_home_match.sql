-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: psl
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `home_match`
--

DROP TABLE IF EXISTS `home_match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_match` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `match_date` date NOT NULL,
  `stadium_id` bigint NOT NULL,
  `team_1_id` bigint NOT NULL,
  `team_2_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `home_match_stadium_id_deed0103_fk_home_stadium_id` (`stadium_id`),
  KEY `home_match_team_1_id_3f73fecd_fk_home_team_id` (`team_1_id`),
  KEY `home_match_team_2_id_3ce2a326_fk_home_team_id` (`team_2_id`),
  CONSTRAINT `home_match_stadium_id_deed0103_fk_home_stadium_id` FOREIGN KEY (`stadium_id`) REFERENCES `home_stadium` (`id`),
  CONSTRAINT `home_match_team_1_id_3f73fecd_fk_home_team_id` FOREIGN KEY (`team_1_id`) REFERENCES `home_team` (`id`),
  CONSTRAINT `home_match_team_2_id_3ce2a326_fk_home_team_id` FOREIGN KEY (`team_2_id`) REFERENCES `home_team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_match`
--

LOCK TABLES `home_match` WRITE;
/*!40000 ALTER TABLE `home_match` DISABLE KEYS */;
INSERT INTO `home_match` VALUES (2,'2023-02-13',3,2,3),(3,'2023-02-14',1,1,5),(4,'2023-02-15',4,2,6),(5,'2023-02-16',1,1,4),(6,'2023-02-17',3,2,5),(7,'2023-02-18',1,1,6),(8,'2023-02-19',3,2,4),(9,'2023-02-20',1,6,5),(10,'2023-02-21',1,6,3),(11,'2023-02-22',3,1,2),(12,'2023-02-23',1,5,3),(13,'2023-02-24',1,6,4),(14,'2023-02-26',2,1,2),(15,'2023-02-27',2,3,4),(16,'2023-03-01',4,5,1),(17,'2023-03-02',2,3,6),(18,'2023-03-03',4,4,1),(19,'2023-03-04',2,3,2),(20,'2023-03-05',4,4,6),(21,'2023-03-06',4,6,1),(22,'2023-03-07',4,5,3),(23,'2023-03-08',4,5,6),(24,'2023-03-09',4,4,3),(25,'2023-03-10',4,5,2),(26,'2023-03-11',4,6,2),(27,'2023-03-12',2,4,5),(28,'2023-03-15',2,2,3),(29,'2023-03-16',2,6,4),(30,'2023-03-17',2,6,5),(31,'2023-03-19',2,2,3);
/*!40000 ALTER TABLE `home_match` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-17 19:18:07
