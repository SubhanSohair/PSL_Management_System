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
-- Table structure for table `home_stats`
--

DROP TABLE IF EXISTS `home_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_stats` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `runs` int NOT NULL,
  `wickets` int NOT NULL,
  `no_of_fours` int NOT NULL,
  `no_of_sixes` int NOT NULL,
  `no_of_overs` int NOT NULL,
  `match_id` bigint NOT NULL,
  `player_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `home_stats_match_id_d2600111_fk_home_match_id` (`match_id`),
  KEY `home_stats_player_id_039ba81e_fk_home_player_id` (`player_id`),
  CONSTRAINT `home_stats_match_id_d2600111_fk_home_match_id` FOREIGN KEY (`match_id`) REFERENCES `home_match` (`id`),
  CONSTRAINT `home_stats_player_id_039ba81e_fk_home_player_id` FOREIGN KEY (`player_id`) REFERENCES `home_player` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_stats`
--

LOCK TABLES `home_stats` WRITE;
/*!40000 ALTER TABLE `home_stats` DISABLE KEYS */;
INSERT INTO `home_stats` VALUES (2,428,0,40,12,0,2,23),(3,416,0,47,9,0,4,26),(4,373,0,40,17,0,4,24),(5,365,0,27,25,0,4,42),(6,359,0,35,16,0,4,2),(7,372,23,12,9,10,2,20),(8,281,20,8,2,23,4,39),(9,402,19,9,5,15,4,38),(10,341,17,9,5,17,4,25),(11,32,16,8,3,19,3,6);
/*!40000 ALTER TABLE `home_stats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-17 19:18:04
