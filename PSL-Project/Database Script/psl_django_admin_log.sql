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
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-06-25 08:24:10.498862','2','1',1,'[{\"added\": {}}]',7,1),(2,'2023-06-25 08:25:30.498763','3','2',1,'[{\"added\": {}}]',7,1),(3,'2023-06-25 08:26:36.767664','4','3',1,'[{\"added\": {}}]',7,1),(4,'2023-06-25 08:27:20.987789','5','4',1,'[{\"added\": {}}]',7,1),(5,'2023-06-25 08:28:28.248272','6','5',1,'[{\"added\": {}}]',7,1),(6,'2023-06-30 09:16:20.423285','7',' season + 6',1,'[{\"added\": {}}]',7,1),(7,'2023-06-30 09:17:05.957196','8',' season + 7',1,'[{\"added\": {}}]',7,1),(8,'2023-06-30 09:17:56.708647','9',' season 8',1,'[{\"added\": {}}]',7,1),(9,'2023-06-30 12:41:26.164066','1','Team object (1)',1,'[{\"added\": {}}]',8,1),(10,'2023-06-30 15:47:50.897735','1','Team object (1)',2,'[]',8,1),(11,'2023-06-30 15:48:03.189132','2','Team object (2)',1,'[{\"added\": {}}]',8,1),(12,'2023-06-30 15:48:09.708425','3','Team object (3)',1,'[{\"added\": {}}]',8,1),(13,'2023-06-30 15:48:21.040321','4','Team object (4)',1,'[{\"added\": {}}]',8,1),(14,'2023-06-30 15:48:33.163193','5','Team object (5)',1,'[{\"added\": {}}]',8,1),(15,'2023-06-30 15:48:56.232290','6','Team object (6)',1,'[{\"added\": {}}]',8,1),(16,'2023-06-30 17:03:03.515921','1','National Stadium',1,'[{\"added\": {}}]',11,1),(17,'2023-06-30 17:03:37.562102','2','Gaddafi Stadium',1,'[{\"added\": {}}]',11,1),(18,'2023-06-30 17:04:08.988455','3','Multan Cricket Stadium',1,'[{\"added\": {}}]',11,1),(19,'2023-06-30 17:04:51.542311','4','Rawalpindi Cricket Stadium',1,'[{\"added\": {}}]',11,1),(20,'2023-07-01 07:47:24.466339','2','2023-02-13',1,'[{\"added\": {}}]',10,1),(21,'2023-07-02 09:08:51.004286','3','2023-02-14',1,'[{\"added\": {}}]',10,1),(22,'2023-07-02 09:09:20.799836','4','2023-02-15',1,'[{\"added\": {}}]',10,1),(23,'2023-07-02 09:16:42.426549','1','Babar Azam',1,'[{\"added\": {}}]',9,1),(24,'2023-07-02 09:21:02.528535','1','Stats object (1)',1,'[{\"added\": {}}]',12,1),(25,'2023-07-02 09:26:24.905341','1','Stats object (1)',3,'',12,1),(26,'2023-07-02 09:57:15.944471','1','Babar Azam',3,'',9,1),(27,'2023-07-02 13:20:44.941995','2','Imad Wasim',1,'[{\"added\": {}}]',9,1),(28,'2023-07-02 13:21:18.799720','3','Sharjeel Khan',1,'[{\"added\": {}}]',9,1),(29,'2023-07-02 13:22:41.967813','4','Haider Ali',1,'[{\"added\": {}}]',9,1),(30,'2023-07-02 13:23:13.075562','5','Sohaib Malik',1,'[{\"added\": {}}]',9,1),(31,'2023-07-02 13:23:49.920863','6','Mohammad Amir',1,'[{\"added\": {}}]',9,1),(32,'2023-07-02 13:24:26.505676','7','Qasim Akram',1,'[{\"added\": {}}]',9,1),(33,'2023-07-02 13:24:56.515202','8','Aamer Yamin',1,'[{\"added\": {}}]',9,1),(34,'2023-07-02 13:25:23.956539','9','Mir Hamza',1,'[{\"added\": {}}]',9,1),(35,'2023-07-02 13:26:10.371524','10','Mathew Wade',1,'[{\"added\": {}}]',9,1),(36,'2023-07-02 13:26:43.101300','11','Imran Tahir',1,'[{\"added\": {}}]',9,1),(37,'2023-07-02 13:27:16.861073','12','James Vince',1,'[{\"added\": {}}]',9,1),(38,'2023-07-02 13:27:46.354574','13','Andrew tye',1,'[{\"added\": {}}]',9,1),(39,'2023-07-02 13:32:19.177013','10','Mathew Wade',2,'[{\"changed\": {\"fields\": [\"Position\"]}}]',9,1),(40,'2023-07-02 13:34:21.733909','14','Abbas Afridi',1,'[{\"added\": {}}]',9,1),(41,'2023-07-02 13:34:48.981531','15','Adil Rashid',1,'[{\"added\": {}}]',9,1),(42,'2023-07-02 13:35:27.055606','16','Akeal Hosein',1,'[{\"added\": {}}]',9,1),(43,'2023-07-02 13:35:53.078564','17','Ammad Butt',1,'[{\"added\": {}}]',9,1),(44,'2023-07-02 13:36:21.966173','18','Anwar Ali',1,'[{\"added\": {}}]',9,1),(45,'2023-07-02 13:36:57.952789','19','David Miller',1,'[{\"added\": {}}]',9,1),(46,'2023-07-02 13:37:31.335805','20','Ihsanullah',1,'[{\"added\": {}}]',9,1),(47,'2023-07-02 13:38:10.668555','21','Khushdil shah',1,'[{\"added\": {}}]',9,1),(48,'2023-07-02 13:38:39.495885','22','Kieron Pollard',1,'[{\"added\": {}}]',9,1),(49,'2023-07-02 13:39:21.634089','23','Mohammad Rizwan',1,'[{\"added\": {}}]',9,1),(50,'2023-07-02 13:39:56.102211','24','Rilee Rossouw',1,'[{\"added\": {}}]',9,1),(51,'2023-07-02 13:40:21.874043','25','Usama Mir',1,'[{\"added\": {}}]',9,1),(52,'2023-07-02 13:42:30.218903','26','Babar Azam',1,'[{\"added\": {}}]',9,1),(53,'2023-07-02 13:43:01.069461','27','Saim Ayub',1,'[{\"added\": {}}]',9,1),(54,'2023-07-02 13:43:32.909658','28','Mohammad Haris',1,'[{\"added\": {}}]',9,1),(55,'2023-07-02 13:44:05.504596','29','Bhanuka Rajapaksa',1,'[{\"added\": {}}]',9,1),(56,'2023-07-02 13:44:39.237471','30','Wahab Riaz',1,'[{\"added\": {}}]',9,1),(57,'2023-07-02 13:45:15.591782','31','Usman Qadir',1,'[{\"added\": {}}]',9,1),(58,'2023-07-02 13:45:45.730037','32','Salman Irshad',1,'[{\"added\": {}}]',9,1),(59,'2023-07-02 13:46:07.833977','33','Haseebullah',1,'[{\"added\": {}}]',9,1),(60,'2023-07-02 13:46:45.617106','34','Arshad iqbal',1,'[{\"added\": {}}]',9,1),(61,'2023-07-02 13:47:15.826671','35','Sufiyan Muqeem',1,'[{\"added\": {}}]',9,1),(62,'2023-07-02 13:47:44.686126','36','Jimmy Nessham',1,'[{\"added\": {}}]',9,1),(63,'2023-07-02 13:48:12.356643','37','Dasun Shanaka',1,'[{\"added\": {}}]',9,1),(64,'2023-07-02 13:58:21.133751','38','Shaheen Afridi',1,'[{\"added\": {}}]',9,1),(65,'2023-07-02 13:58:51.259650','39','Rashid Khan',1,'[{\"added\": {}}]',9,1),(66,'2023-07-02 13:59:25.184928','40','Haris Rauf',1,'[{\"added\": {}}]',9,1),(67,'2023-07-02 13:59:51.160213','41','Sikandar Raza',1,'[{\"added\": {}}]',9,1),(68,'2023-07-02 14:00:21.485022','42','Fakhar Zaman',1,'[{\"added\": {}}]',9,1),(69,'2023-07-02 14:00:46.379268','43','Hussain Talat',1,'[{\"added\": {}}]',9,1),(70,'2023-07-02 14:01:18.770269','44','David Wiese',1,'[{\"added\": {}}]',9,1),(71,'2023-07-02 14:01:46.176624','45','Liam Dawson',1,'[{\"added\": {}}]',9,1),(72,'2023-07-02 14:02:20.029329','46','Abdullah Shafique',1,'[{\"added\": {}}]',9,1),(73,'2023-07-02 14:02:38.622087','47','Zaman Khan',1,'[{\"added\": {}}]',9,1),(74,'2023-07-02 14:03:16.078074','48','Mirza Tahir Baig',1,'[{\"added\": {}}]',9,1),(75,'2023-07-02 14:03:39.238174','49','Ahmed Daniyal',1,'[{\"added\": {}}]',9,1),(76,'2023-07-02 14:04:04.707506','50','Shawaiz Irfan',1,'[{\"added\": {}}]',9,1),(77,'2023-07-02 14:04:36.248154','48','Mirza Tahir Baig',3,'',9,1),(78,'2023-07-02 14:59:19.787226','51','Shahdab Khan',1,'[{\"added\": {}}]',9,1),(79,'2023-07-02 14:59:51.832800','52','Rahmanullah Gurbaz',1,'[{\"added\": {}}]',9,1),(80,'2023-07-02 15:00:11.757601','53','Asif Ali',1,'[{\"added\": {}}]',9,1),(81,'2023-07-02 15:00:41.108727','54','Faheem Ashraf',1,'[{\"added\": {}}]',9,1),(82,'2023-07-02 15:03:45.576125','55','Alex Hales',1,'[{\"added\": {}}]',9,1),(83,'2023-07-02 15:04:19.400083','56','Mohammad Wasim Jr',1,'[{\"added\": {}}]',9,1),(84,'2023-07-02 15:04:36.046169','57','Hasan Ali',1,'[{\"added\": {}}]',9,1),(85,'2023-07-02 15:05:10.860194','58','Azam Khan',1,'[{\"added\": {}}]',9,1),(86,'2023-07-02 15:05:37.640497','59','Rumman Raees',1,'[{\"added\": {}}]',9,1),(87,'2023-07-02 15:06:00.725805','60','Paul Stirling',1,'[{\"added\": {}}]',9,1),(88,'2023-07-02 15:06:22.581519','61','Colin Munro',1,'[{\"added\": {}}]',9,1),(89,'2023-07-02 15:06:50.480468','62','Abrar Ahmed',1,'[{\"added\": {}}]',9,1),(90,'2023-07-02 15:11:56.612167','63','Sarfraz Ahmed',1,'[{\"added\": {}}]',9,1),(91,'2023-07-02 15:12:20.750593','64','Naseem Shah',1,'[{\"added\": {}}]',9,1),(92,'2023-07-02 15:12:48.003188','65','Iftikhar ahmed',1,'[{\"added\": {}}]',9,1),(93,'2023-07-02 15:13:35.107242','66','Mohammad Hasnain',1,'[{\"added\": {}}]',9,1),(94,'2023-07-02 15:14:00.562191','67','Mohammad Nawaz',1,'[{\"added\": {}}]',9,1),(95,'2023-07-02 15:14:22.974493','68','Umar Akmal',1,'[{\"added\": {}}]',9,1),(96,'2023-07-02 15:14:54.585636','69','Mohammad Hafeez',1,'[{\"added\": {}}]',9,1),(97,'2023-07-02 15:15:27.232109','70','Martin Guptill',1,'[{\"added\": {}}]',9,1),(98,'2023-07-02 15:15:54.353891','71','Ahsan Ali',1,'[{\"added\": {}}]',9,1),(99,'2023-07-02 15:16:13.730387','72','Umaid Asif',1,'[{\"added\": {}}]',9,1),(100,'2023-07-02 15:16:35.778418','73','Will smeed',1,'[{\"added\": {}}]',9,1),(101,'2023-07-02 15:16:56.441870','74','Jason Roy',1,'[{\"added\": {}}]',9,1),(102,'2023-07-02 15:20:42.649519','2','Stats object (2)',1,'[{\"added\": {}}]',12,1),(103,'2023-07-02 15:21:20.109192','3','Stats object (3)',1,'[{\"added\": {}}]',12,1),(104,'2023-07-02 15:21:55.911410','4','Stats object (4)',1,'[{\"added\": {}}]',12,1),(105,'2023-07-02 15:22:21.630945','5','Stats object (5)',1,'[{\"added\": {}}]',12,1),(106,'2023-07-02 15:22:44.433525','6','Stats object (6)',1,'[{\"added\": {}}]',12,1),(107,'2023-07-02 15:28:41.551266','7','Stats object (7)',1,'[{\"added\": {}}]',12,1),(108,'2023-07-02 15:29:03.517798','8','Stats object (8)',1,'[{\"added\": {}}]',12,1),(109,'2023-07-02 15:29:36.262939','9','Stats object (9)',1,'[{\"added\": {}}]',12,1),(110,'2023-07-02 15:29:56.663541','10','Stats object (10)',1,'[{\"added\": {}}]',12,1),(111,'2023-07-02 15:43:39.963149','11','Stats object (11)',1,'[{\"added\": {}}]',12,1),(112,'2023-07-02 15:49:35.048022','5','2023-02-16',1,'[{\"added\": {}}]',10,1),(113,'2023-07-02 15:49:58.087248','6','2023-02-17',1,'[{\"added\": {}}]',10,1),(114,'2023-07-02 15:50:11.206558','7','2023-02-18',1,'[{\"added\": {}}]',10,1),(115,'2023-07-02 15:50:33.638108','8','2023-02-19',1,'[{\"added\": {}}]',10,1),(116,'2023-07-02 15:50:51.948196','9','2023-02-20',1,'[{\"added\": {}}]',10,1),(117,'2023-07-02 15:51:27.922614','10','2023-02-21',1,'[{\"added\": {}}]',10,1),(118,'2023-07-02 15:51:41.167788','11','2023-02-22',1,'[{\"added\": {}}]',10,1),(119,'2023-07-02 15:53:00.390054','12','2023-02-23',1,'[{\"added\": {}}]',10,1),(120,'2023-07-02 15:53:19.344047','13','2023-02-24',1,'[{\"added\": {}}]',10,1),(121,'2023-07-02 17:21:05.593516','14','2023-02-26',1,'[{\"added\": {}}]',10,1),(122,'2023-07-02 18:31:17.986250','15','2023-02-27',1,'[{\"added\": {}}]',10,1),(123,'2023-07-02 18:31:39.799987','16','2023-03-01',1,'[{\"added\": {}}]',10,1),(124,'2023-07-02 18:32:22.084229','17','2023-03-02',1,'[{\"added\": {}}]',10,1),(125,'2023-07-02 18:33:02.119538','18','2023-03-03',1,'[{\"added\": {}}]',10,1),(126,'2023-07-02 18:33:32.897529','19','2023-03-04',1,'[{\"added\": {}}]',10,1),(127,'2023-07-02 18:33:56.897100','20','2023-03-05',1,'[{\"added\": {}}]',10,1),(128,'2023-07-02 18:34:17.193490','21','2023-03-06',1,'[{\"added\": {}}]',10,1),(129,'2023-07-02 18:34:38.896461','22','2023-03-07',1,'[{\"added\": {}}]',10,1),(130,'2023-07-02 18:35:08.372268','23','2023-03-08',1,'[{\"added\": {}}]',10,1),(131,'2023-07-02 18:35:32.949371','24','2023-03-09',1,'[{\"added\": {}}]',10,1),(132,'2023-07-02 18:35:59.734465','25','2023-03-10',1,'[{\"added\": {}}]',10,1),(133,'2023-07-02 18:36:18.960343','26','2023-03-11',1,'[{\"added\": {}}]',10,1),(134,'2023-07-02 18:36:37.271021','27','2023-03-12',1,'[{\"added\": {}}]',10,1),(135,'2023-07-02 18:38:13.989429','28','2023-03-15',1,'[{\"added\": {}}]',10,1),(136,'2023-07-02 18:38:57.075013','29','2023-03-16',1,'[{\"added\": {}}]',10,1),(137,'2023-07-02 18:41:30.146688','30','2023-03-17',1,'[{\"added\": {}}]',10,1),(138,'2023-07-02 18:41:47.156005','31','2023-03-19',1,'[{\"added\": {}}]',10,1),(139,'2023-07-03 09:29:13.304698','2','Team object (3) -  season 8:',1,'[{\"added\": {}}]',13,1),(140,'2023-07-03 09:29:36.788133','3','Team object (2) -  season 8:',1,'[{\"added\": {}}]',13,1),(141,'2023-07-03 09:29:53.126601','4','Team object (4) -  season 8:',1,'[{\"added\": {}}]',13,1),(142,'2023-07-03 09:30:39.303035','5','Team object (5) -  season 8:',1,'[{\"added\": {}}]',13,1),(143,'2023-07-03 09:30:56.377393','6','Team object (1) -  season 8:',1,'[{\"added\": {}}]',13,1),(144,'2023-07-03 09:31:06.713600','7','Team object (6) -  season 8:',1,'[{\"added\": {}}]',13,1),(145,'2023-07-03 09:38:45.278160','8','Team object (2) -  season 7:',1,'[{\"added\": {}}]',13,1),(146,'2023-07-03 09:39:00.075107','9','Team object (3) -  season 7:',1,'[{\"added\": {}}]',13,1),(147,'2023-07-03 09:39:16.170514','10','Team object (5) -  season 7:',1,'[{\"added\": {}}]',13,1),(148,'2023-07-03 09:39:35.641267','11','Team object (4) -  season 7:',1,'[{\"added\": {}}]',13,1),(149,'2023-07-03 09:39:49.734748','12','Team object (6) -  season 7:',1,'[{\"added\": {}}]',13,1),(150,'2023-07-03 09:40:05.880631','13','Team object (1) -  season 7:',1,'[{\"added\": {}}]',13,1),(151,'2023-07-03 09:40:32.635969','14','Team object (4) -  season 6:',1,'[{\"added\": {}}]',13,1),(152,'2023-07-03 09:40:46.550816','15','Team object (2) -  season 6:',1,'[{\"added\": {}}]',13,1),(153,'2023-07-03 09:41:01.199993','16','Team object (5) -  season 6:',1,'[{\"added\": {}}]',13,1),(154,'2023-07-03 09:41:11.155059','17','Team object (1) -  season 6:',1,'[{\"added\": {}}]',13,1),(155,'2023-07-03 09:41:23.185452','18','Team object (3) -  season 6:',1,'[{\"added\": {}}]',13,1),(156,'2023-07-03 09:41:36.734814','19','Team object (6) -  season 6:',1,'[{\"added\": {}}]',13,1),(157,'2023-07-03 09:42:10.043957','20','Team object (2) -  season 5:',1,'[{\"added\": {}}]',13,1),(158,'2023-07-03 09:42:21.602813','21','Team object (1) -  season 5:',1,'[{\"added\": {}}]',13,1),(159,'2023-07-03 09:42:33.013323','22','Team object (3) -  season 5:',1,'[{\"added\": {}}]',13,1),(160,'2023-07-03 09:42:47.405998','23','Team object (5) -  season 5:',1,'[{\"added\": {}}]',13,1),(161,'2023-07-03 09:43:05.337209','24','Team object (6) -  season 5:',1,'[{\"added\": {}}]',13,1),(162,'2023-07-03 09:43:22.585048','25','Team object (4) -  season 5:',1,'[{\"added\": {}}]',13,1),(163,'2023-07-03 09:53:49.605077','26','Team object (5) -  season 4:',1,'[{\"added\": {}}]',13,1),(164,'2023-07-03 09:54:03.739471','27','Team object (6) -  season 4:',1,'[{\"added\": {}}]',13,1),(165,'2023-07-03 09:54:19.329203','28','Team object (4) -  season 4:',1,'[{\"added\": {}}]',13,1),(166,'2023-07-03 09:54:34.785417','29','Team object (1) -  season 4:',1,'[{\"added\": {}}]',13,1),(167,'2023-07-03 09:54:50.825521','30','Team object (2) -  season 4:',1,'[{\"added\": {}}]',13,1),(168,'2023-07-03 09:55:07.158384','31','Team object (3) -  season 4:',1,'[{\"added\": {}}]',13,1),(169,'2023-07-03 09:56:22.774194','32','Team object (4) -  season 3:',1,'[{\"added\": {}}]',13,1),(170,'2023-07-03 09:56:37.478857','33','Team object (1) -  season 3:',1,'[{\"added\": {}}]',13,1),(171,'2023-07-03 09:56:53.259356','34','Team object (5) -  season 3:',1,'[{\"added\": {}}]',13,1),(172,'2023-07-03 09:57:09.917028','35','Team object (6) -  season 3:',1,'[{\"added\": {}}]',13,1),(173,'2023-07-03 09:57:23.461327','36','Team object (2) -  season 3:',1,'[{\"added\": {}}]',13,1),(174,'2023-07-03 09:57:41.222679','37','Team object (3) -  season 3:',1,'[{\"added\": {}}]',13,1),(175,'2023-07-03 09:57:41.367840','38','Team object (3) -  season 3:',1,'[{\"added\": {}}]',13,1),(176,'2023-07-03 09:58:18.178152','39','Team object (5) -  season 2:',1,'[{\"added\": {}}]',13,1),(177,'2023-07-03 09:58:33.936861','40','Team object (6) -  season 2:',1,'[{\"added\": {}}]',13,1),(178,'2023-07-03 09:58:48.291622','41','Team object (1) -  season 2:',1,'[{\"added\": {}}]',13,1),(179,'2023-07-03 09:59:02.019027','42','Team object (4) -  season 1:',1,'[{\"added\": {}}]',13,1),(180,'2023-07-03 09:59:15.416988','43','Team object (3) -  season 2:',1,'[{\"added\": {}}]',13,1),(181,'2023-07-03 09:59:43.359181','44','Team object (5) -  season 1:',1,'[{\"added\": {}}]',13,1),(182,'2023-07-03 09:59:53.487000','45','Team object (6) -  season 1:',1,'[{\"added\": {}}]',13,1),(183,'2023-07-03 10:00:09.715894','46','Team object (4) -  season 1:',1,'[{\"added\": {}}]',13,1),(184,'2023-07-03 10:00:19.392699','47','Team object (1) -  season 1:',1,'[{\"added\": {}}]',13,1),(185,'2023-07-03 10:00:33.398107','48','Team object (3) -  season 1:',1,'[{\"added\": {}}]',13,1),(186,'2023-07-03 10:01:29.708984','42','Team object (4) -  season 2:',2,'[{\"changed\": {\"fields\": [\"Season\"]}}]',13,1),(187,'2023-07-03 10:01:50.324177','38','Team object (3) -  season 3:',3,'',13,1),(188,'2023-07-15 10:26:09.160508','2','Imad Wasim',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(189,'2023-07-15 10:26:19.420909','3','Sharjeel Khan',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(190,'2023-07-15 10:26:30.218314','4','Haider Ali',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(191,'2023-07-15 10:26:41.606720','5','Sohaib Malik',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(192,'2023-07-15 10:27:05.417686','6','Mohammad Amir',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(193,'2023-07-15 10:27:19.046122','7','Qasim Akram',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(194,'2023-07-15 10:27:29.022792','8','Aamer Yamin',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(195,'2023-07-15 10:27:41.490959','9','Mir Hamza',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(196,'2023-07-15 10:27:56.801000','10','Mathew Wade',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(197,'2023-07-15 10:28:10.367413','11','Imran Tahir',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(198,'2023-07-15 10:28:23.645208','12','James Vince',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(199,'2023-07-15 10:28:33.297141','13','Andrew tye',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(200,'2023-07-15 15:45:27.307504','1','Johan Botha',1,'[{\"added\": {}}]',14,1),(201,'2023-07-15 15:58:15.688622','1','Johan Botha',2,'[]',14,1),(202,'2023-07-16 09:15:45.716045','14','Abbas Afridi',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(203,'2023-07-16 09:16:25.323635','16','Akeal Hosein',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(204,'2023-07-16 09:16:41.106527','17','Ammad Butt',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(205,'2023-07-16 09:16:54.441420','18','Anwar Ali',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(206,'2023-07-16 09:17:13.130359','19','David Miller',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(207,'2023-07-16 09:17:33.951710','20','Ihsanullah',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(208,'2023-07-16 09:17:47.195152','21','Khushdil shah',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(209,'2023-07-16 09:18:07.753288','22','Kieron Pollard',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(210,'2023-07-16 09:18:20.579743','23','Mohammad Rizwan',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(211,'2023-07-16 09:18:40.298018','24','Rilee Rossouw',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(212,'2023-07-16 09:18:53.802891','25','Usama Mir',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(213,'2023-07-16 09:19:18.494865','15','Adil Rashid',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(214,'2023-07-16 09:22:25.094781','51','Shahdab Khan',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(215,'2023-07-16 09:22:51.540144','52','Rahmanullah Gurbaz',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(216,'2023-07-16 09:23:09.105781','53','Asif Ali',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(217,'2023-07-16 09:23:19.995406','54','Faheem Ashraf',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(218,'2023-07-16 09:24:33.210215','55','Alex Hales',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(219,'2023-07-16 09:26:38.088517','56','Mohammad Wasim Jr',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(220,'2023-07-16 09:27:02.600998','57','Hasan Ali',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(221,'2023-07-16 09:27:16.383095','58','Azam Khan',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(222,'2023-07-16 09:28:19.151214','60','Paul Stirling',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(223,'2023-07-16 09:28:39.820053','61','Colin Munro',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(224,'2023-07-16 09:29:00.015500','62','Abrar Ahmed',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(225,'2023-07-16 09:29:13.866626','59','Rumman Raees',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(226,'2023-07-16 09:30:17.040345','2','Imad Wasim ( C )',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',9,1),(227,'2023-07-16 09:32:42.018215','23','Mohammad Rizwan ( C )',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',9,1),(228,'2023-07-16 09:33:05.492055','2','Andy Flower',1,'[{\"added\": {}}]',14,1),(229,'2023-07-16 09:34:19.298075','51','Shahdab Khan ( C )',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',9,1),(230,'2023-07-16 09:34:36.768331','3','Azhar Mahmood',1,'[{\"added\": {}}]',14,1),(231,'2023-07-16 09:35:39.373140','38','Shaheen Afridi',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(232,'2023-07-16 09:35:53.852146','38','Shaheen Afridi ( C )',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',9,1),(233,'2023-07-16 09:36:07.202196','39','Rashid Khan',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(234,'2023-07-16 09:36:21.429629','40','Haris Rauf',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(235,'2023-07-16 09:36:40.047331','41','Sikandar Raza',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(236,'2023-07-16 09:37:04.114768','42','Fakhar Zaman',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(237,'2023-07-16 09:37:20.740971','44','David Wiese',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(238,'2023-07-16 09:37:33.906999','45','Liam Dawson',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(239,'2023-07-16 09:37:48.399242','46','Abdullah Shafique',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(240,'2023-07-16 09:38:01.992550','47','Zaman Khan',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(241,'2023-07-16 09:38:15.668139','49','Ahmed Daniyal',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(242,'2023-07-16 09:38:41.857410','50','Shawaiz Irfan',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(243,'2023-07-16 09:38:55.110324','50','Shawaiz Irfan',2,'[]',9,1),(244,'2023-07-16 09:39:10.692722','43','Hussain Talat',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(245,'2023-07-16 09:40:30.310291','4','Aqib Javed',1,'[{\"added\": {}}]',14,1),(246,'2023-07-16 09:41:51.209889','5','Darren Sammy',1,'[{\"added\": {}}]',14,1),(247,'2023-07-16 09:44:33.423344','6','Moin Khan',1,'[{\"added\": {}}]',14,1),(248,'2023-07-16 09:45:01.149125','26','Babar Azam ( C )',2,'[{\"changed\": {\"fields\": [\"Name\", \"Image\"]}}]',9,1),(249,'2023-07-16 09:45:18.148228','27','Saim Ayub',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(250,'2023-07-16 09:45:27.613298','28','Mohammad Haris',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(251,'2023-07-16 09:45:38.175880','30','Wahab Riaz',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(252,'2023-07-16 09:46:19.716774','31','Usman Qadir',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(253,'2023-07-16 09:46:43.633013','36','Jimmy Nessham',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(254,'2023-07-16 09:49:09.869729','29','Bhanuka Rajapaksa',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(255,'2023-07-16 09:50:07.401793','32','Salman Irshad',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(256,'2023-07-16 09:51:40.741951','33','Haseebullah',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(257,'2023-07-16 09:52:05.784396','37','Dasun Shanaka',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(258,'2023-07-16 09:53:27.232582','35','Sufiyan Muqeem',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(259,'2023-07-16 09:54:52.199324','34','Arshad iqbal',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(260,'2023-07-16 09:56:10.107066','37','Rovman Powell',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',9,1),(261,'2023-07-16 09:59:30.847449','65','Iftikhar ahmed ( C )',2,'[{\"changed\": {\"fields\": [\"Name\", \"Image\"]}}]',9,1),(262,'2023-07-16 09:59:49.024210','65','Iftikhar ahmed',2,'[{\"changed\": {\"fields\": [\"Name\", \"Image\"]}}]',9,1),(263,'2023-07-16 10:00:10.207910','63','Sarfraz Ahmed ( C )',2,'[{\"changed\": {\"fields\": [\"Name\", \"Image\"]}}]',9,1),(264,'2023-07-16 10:00:17.784282','64','Naseem Shah',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(265,'2023-07-16 10:00:26.529429','66','Mohammad Hasnain',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(266,'2023-07-16 10:00:35.712472','68','Umar Akmal',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(267,'2023-07-16 10:00:44.693099','69','Mohammad Hafeez',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(268,'2023-07-16 10:04:37.303527','73','Will smeed',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(269,'2023-07-16 10:04:45.604487','74','Jason Roy',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(270,'2023-07-16 10:04:53.928268','72','Umaid Asif',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(271,'2023-07-16 10:05:06.312569','71','Ahsan Ali',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(272,'2023-07-16 10:05:20.346212','70','Martin Guptill',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(273,'2023-07-16 10:05:32.396951','67','Mohammad Nawaz',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(274,'2023-07-16 13:55:29.360363','10',' season 11',3,'',7,1),(275,'2023-07-16 15:44:00.511590','1','Karachi Kings',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(276,'2023-07-16 15:44:06.957732','2','Multan Sultan',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(277,'2023-07-16 15:44:17.038612','3','Lahore Qalandars',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(278,'2023-07-16 15:44:27.295704','5','Peshawar Zalmi',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(279,'2023-07-16 15:44:36.560947','6','Quetta Gladiators',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(280,'2023-07-16 15:49:16.720448','3','Lahore Qalandars',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(281,'2023-07-16 15:49:40.894079','4','Islamabad United',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(282,'2023-07-16 15:55:44.154116','6','Quetta Gladiators',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(283,'2023-07-16 15:55:53.132661','5','Peshawar Zalmi',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(284,'2023-07-16 15:56:00.967134','3','Lahore Qalandars',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(285,'2023-07-16 15:56:08.390896','2','Multan Sultan',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(286,'2023-07-16 17:09:08.332099','2','Multan Sultan',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
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
