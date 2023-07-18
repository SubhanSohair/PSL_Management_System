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
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-06-24 17:10:21.686570'),(2,'auth','0001_initial','2023-06-24 17:10:22.037913'),(3,'admin','0001_initial','2023-06-24 17:10:22.143937'),(4,'admin','0002_logentry_remove_auto_add','2023-06-24 17:10:22.150963'),(5,'admin','0003_logentry_add_action_flag_choices','2023-06-24 17:10:22.158130'),(6,'contenttypes','0002_remove_content_type_name','2023-06-24 17:10:22.211594'),(7,'auth','0002_alter_permission_name_max_length','2023-06-24 17:10:22.246367'),(8,'auth','0003_alter_user_email_max_length','2023-06-24 17:10:22.270787'),(9,'auth','0004_alter_user_username_opts','2023-06-24 17:10:22.279741'),(10,'auth','0005_alter_user_last_login_null','2023-06-24 17:10:22.320644'),(11,'auth','0006_require_contenttypes_0002','2023-06-24 17:10:22.324633'),(12,'auth','0007_alter_validators_add_error_messages','2023-06-24 17:10:22.333634'),(13,'auth','0008_alter_user_username_max_length','2023-06-24 17:10:22.378176'),(14,'auth','0009_alter_user_last_name_max_length','2023-06-24 17:10:22.416611'),(15,'auth','0010_alter_group_name_max_length','2023-06-24 17:10:22.437611'),(16,'auth','0011_update_proxy_permissions','2023-06-24 17:10:22.446615'),(17,'auth','0012_alter_user_first_name_max_length','2023-06-24 17:10:22.491178'),(18,'sessions','0001_initial','2023-06-24 17:10:22.519173'),(19,'home','0001_initial','2023-06-25 08:17:26.044700'),(20,'home','0002_team','2023-06-30 11:43:34.607900'),(21,'home','0003_remove_team_seasons_player','2023-06-30 13:10:33.860305'),(22,'home','0004_stadium_match','2023-06-30 17:00:05.183740'),(23,'home','0005_stats','2023-07-02 09:13:31.077071'),(24,'home','0006_pointtable','2023-07-02 09:31:42.867238'),(25,'home','0007_remove_player_dob','2023-07-02 13:19:27.382625'),(26,'home','0008_player_image','2023-07-15 10:23:40.438946'),(27,'home','0009_coach_player_coach','2023-07-15 15:41:08.911202'),(28,'home','0010_remove_player_coach_team_coach','2023-07-15 15:41:08.960600'),(29,'home','0011_remove_team_coach_delete_coach','2023-07-15 15:41:08.964603'),(30,'home','0012_coach_team_coach','2023-07-15 15:41:08.969571'),(31,'home','0013_coaches_remove_team_coach_delete_coach_team_coaches','2023-07-15 15:41:08.972571'),(32,'home','0014_alter_team_coaches','2023-07-15 15:41:08.976604'),(33,'home','0015_remove_team_coaches_delete_coaches','2023-07-15 15:41:08.981609'),(34,'home','0016_coach_team_coaches','2023-07-15 15:44:05.032222'),(35,'home','0017_coaches_alter_team_coaches_delete_coach','2023-07-15 15:44:47.554805'),(36,'home','0018_alter_coaches_image','2023-07-15 15:50:20.638754'),(37,'home','0019_remove_team_coaches','2023-07-15 15:52:14.637316'),(38,'home','0020_coaches_team','2023-07-15 15:57:39.086278'),(39,'home','0021_team_image','2023-07-16 15:40:30.131512');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-17 19:18:08
