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
-- Table structure for table `home_pointtable`
--

DROP TABLE IF EXISTS `home_pointtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_pointtable` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Matches_Played` int NOT NULL,
  `matches_won` int NOT NULL,
  `lost_matches` int NOT NULL,
  `season_id` bigint NOT NULL,
  `team_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `home_pointtable_season_id_0c1bf83a_fk_home_season_id` (`season_id`),
  KEY `home_pointtable_team_id_a4424edb_fk_home_team_id` (`team_id`),
  CONSTRAINT `home_pointtable_season_id_0c1bf83a_fk_home_season_id` FOREIGN KEY (`season_id`) REFERENCES `home_season` (`id`),
  CONSTRAINT `home_pointtable_team_id_a4424edb_fk_home_team_id` FOREIGN KEY (`team_id`) REFERENCES `home_team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_pointtable`
--

LOCK TABLES `home_pointtable` WRITE;
/*!40000 ALTER TABLE `home_pointtable` DISABLE KEYS */;
INSERT INTO `home_pointtable` VALUES (2,10,7,3,9,3),(3,10,6,4,9,2),(4,10,6,4,9,4),(5,10,5,5,9,5),(6,10,3,7,9,1),(7,10,3,7,9,6),(8,10,9,1,8,2),(9,10,6,4,8,3),(10,10,5,5,8,5),(11,10,4,6,8,4),(12,10,4,6,8,6),(13,10,1,9,8,1),(14,10,8,2,7,4),(15,10,5,5,7,2),(16,10,5,5,7,5),(17,10,5,5,7,1),(18,10,5,5,7,3),(19,10,2,8,7,6),(20,10,6,2,6,2),(21,10,5,4,6,1),(22,10,5,5,6,3),(23,10,4,5,6,5),(24,10,4,5,6,6),(25,10,3,6,6,4),(26,10,7,3,5,5),(27,10,7,3,5,6),(28,10,5,5,5,4),(29,10,5,5,5,1),(30,10,3,7,5,2),(31,10,3,7,5,3),(32,10,7,3,4,4),(33,10,5,4,4,1),(34,10,5,5,4,5),(35,10,5,5,4,6),(36,10,4,5,4,2),(37,10,3,7,4,3),(39,8,4,3,3,5),(40,8,4,3,3,6),(41,8,4,4,3,1),(42,8,4,4,3,4),(43,8,3,5,3,3),(44,8,6,2,2,5),(45,8,6,2,2,6),(46,8,4,4,2,4),(47,8,2,6,2,1),(48,8,2,6,2,3);
/*!40000 ALTER TABLE `home_pointtable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-17 19:18:05
