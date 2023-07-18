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
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('57vm5etzw3f0swtov4ojah6krvtpd943','.eJxVjMsOgjAUBf-la9P0FkrBpXu_gdxXBTVtQmFl_HclYaHbMzPnZUbc1mncqi7jLOZswJx-N0J-aN6B3DHfiuWS12Umuyv2oNVei-jzcrh_BxPW6VtrG1LqYqCOwEekHjyigkgj5GMrpDg0oR86CMTOaZ8iA3uXQDh4FvP-AP1sOK8:1qGnCD:MZojo7oWbicOD_xZLgX3YnXgpzm-dr7JKjv2_9VZqMo','2023-07-18 21:04:25.264428'),('7dz4p2fuu28xaaylcoy0nt6txvku0a9h','.eJxVjEEOwiAQRe_C2hCQQjsu3XsGMjNMpWogKe3KeHfbpAvd_vfef6uI65Lj2mSOU1IXdVan342Qn1J2kB5Y7lVzLcs8kd4VfdCmbzXJ63q4fwcZW95qJwzQd2K6EBwOOJIXZA4eBB0Zl2zqwQ6bxkyjeB_EEoM3gBwAQH2-_2w4qg:1qFAxC:uekj094GQXNtv5vUqAHOt0qlFkFaKWMXfzmXntgETCc','2023-07-14 10:02:14.681192'),('iyjimgxhgowyfnabo86a14vnfmt7uanz','.eJxVjDEOwjAMRe-SGUWkThzEyM4ZIsexSQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOYzFn483hd8vED2kbKHdqt8ny1JZ5zHZT7E67vU5Fnpfd_Tuo1Ou3PokwDBwQIkAs2YNj5iwS0A8IFITYYSTnM2BRJUQtITrRY1B1zrw_91c4jA:1qL6Qq:ozz5aoQALHZNV8XmhWdQSZwZMNPzaA2R9wuV-6aUnBk','2023-07-30 18:25:20.789993'),('pxqrrdd3jh68actpzwh2i4o7kl1lzxf1','.eJxVjMsOgjAUBf-la9P0FkrBpXu_gdxXBTVtQmFl_HclYaHbMzPnZUbc1mncqi7jLOZswJx-N0J-aN6B3DHfiuWS12Umuyv2oNVei-jzcrh_BxPW6VtrG1LqYqCOwEekHjyigkgj5GMrpDg0oR86CMTOaZ8iA3uXQDh4FvP-AP1sOK8:1qGhxg:juebsxvenYvUj_QxcUpZSoIWel0ZyC7383DboSx6UUQ','2023-07-18 15:29:04.594338'),('tk3z26swxdwj63h7lsez0jl7y3adqxra','.eJxVjDEOwjAMRe-SGUWkThzEyM4ZIsexSQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOYzFn483hd8vED2kbKHdqt8ny1JZ5zHZT7E67vU5Fnpfd_Tuo1Ou3PokwDBwQIkAs2YNj5iwS0A8IFITYYSTnM2BRJUQtITrRY1B1zrw_91c4jA:1qL1mk:QBmFmCfoYHHbRzWn5AxprtmcRpTGipBrjO2-Fo3K8vk','2023-07-30 13:27:38.470963');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-17 19:18:06
