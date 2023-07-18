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
-- Table structure for table `home_player`
--

DROP TABLE IF EXISTS `home_player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_player` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `f_name` varchar(100) NOT NULL,
  `l_name` varchar(100) NOT NULL,
  `age` int NOT NULL,
  `position` varchar(200) NOT NULL,
  `team_id` bigint NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `home_player_team_id_ad76c5e9_fk_home_team_id` (`team_id`),
  CONSTRAINT `home_player_team_id_ad76c5e9_fk_home_team_id` FOREIGN KEY (`team_id`) REFERENCES `home_team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_player`
--

LOCK TABLES `home_player` WRITE;
/*!40000 ALTER TABLE `home_player` DISABLE KEYS */;
INSERT INTO `home_player` VALUES (2,'Imad Wasim ( C )','Imad','Wasim',35,'All-Rounder',1,'players/Imad-Wasim_5UV3rEa.png'),(3,'Sharjeel Khan','Sharjeel','Khan',40,'Batsmen',1,'players/Sharjeel-Khan_DaoSoFd.png'),(4,'Haider Ali','Haider','Ali',30,'Batsmen',1,'players/Haider-Ali_1rgwGLa.png'),(5,'Sohaib Malik','Sohaib','Malik',40,'All-Rounder',1,'players/Shoaib-Malik_4GrwpOa.png'),(6,'Mohammad Amir','Mohammad','Amir',33,'Bowler',1,'players/Mohammad-Amir_ejwP87R.png'),(7,'Qasim Akram','Qasim','Akram',29,'All-Rounder',1,'players/qasim_PBJmiZb.png'),(8,'Aamer Yamin','Aamer','Yamin',27,'All-Rounder',1,'players/Aamir-Yamin_zHW0Pm6.png'),(9,'Mir Hamza','Mir','Hamza',26,'Bowler',1,'players/Mir-Hamza_iNXsjza.png'),(10,'Mathew Wade','Mathew','Wade',31,'Wicket-Keeper',1,'players/mathew_fNh7S02.png'),(11,'Imran Tahir','Imran','Tahir',33,'Bowler',1,'players/imran_yrSbP9D.png'),(12,'James Vince','James','Vince',33,'Batter',1,'players/james_Y4AlITJ.png'),(13,'Andrew tye','Andrew','tye',23,'Bowler',1,'players/andrew_tye_ONQoDAt.png'),(14,'Abbas Afridi','Abbas','Afridi',26,'Bowler',2,'players/Abbas_Afridi.jpg'),(15,'Adil Rashid','Adil','Rashid',23,'Bowler',2,'players/Usman_Khan.jpg'),(16,'Akeal Hosein','Akeal','Hosein',32,'Bowler',2,'players/Akeal_Hosein.jpg'),(17,'Ammad Butt','Ammad','Butt',23,'All-Rounder',2,'players/Amad_Butt.jpg'),(18,'Anwar Ali','Anwar','Ali',33,'Bolwer',2,'players/Anwar_Ali.jpg'),(19,'David Miller','David','Miller',32,'Batsmen',2,'players/David_Miller.jpg'),(20,'Ihsanullah','ihnsa','ullah',24,'Bowler',2,'players/Ihsanullah.jpg'),(21,'Khushdil shah','Khusdil','Shah',30,'Batsmen',2,'players/Khushdil_Shah.jpg'),(22,'Kieron Pollard','Kieron','Pollard',35,'All-Rounder',2,'players/Kieron_Pollard.jpg'),(23,'Mohammad Rizwan ( C )','Mohammad','Rizwan',29,'Wicket-Keeper',2,'players/M__Rizwan.jpg'),(24,'Rilee Rossouw','Rile','Rossouw',34,'Batsmen',2,'players/Rilee_Rossouw.jpg'),(25,'Usama Mir','Usama','Mir',28,'Bowler',2,'players/Usama_Mir.jpg'),(26,'Babar Azam ( C )','Babar','Azam',29,'Batsmen',5,'players/king_bobby.jpg'),(27,'Saim Ayub','Saim','Ayub',23,'Batsmen',5,'players/saim_ayub.jpg'),(28,'Mohammad Haris','Mohammad','Haris',23,'Batsmen',5,'players/haris.jpg'),(29,'Bhanuka Rajapaksa','Bhanuka','Rajapaska',30,'Batsmen',5,'players/11.jpg'),(30,'Wahab Riaz','wahab','riaz',37,'Bowler',5,'players/wahab.jpg'),(31,'Usman Qadir','Usman','qadir',26,'Bowler',5,'players/17.jpg'),(32,'Salman Irshad','Salman','irhsad',23,'Bowler',5,'players/14.jpg'),(33,'Haseebullah','hasseb','ullah',24,'Wicket-Keeper',5,'players/7.jpg'),(34,'Arshad iqbal','arshad','iqbal',30,'Bowler',5,'players/2.jpg'),(35,'Sufiyan Muqeem','sufiyan','muqeem',33,'Bowler',5,'players/15.jpg'),(36,'Jimmy Nessham','jimmy','nessham',35,'All-Rounder',5,'players/8.jpg'),(37,'Rovman Powell','Dasun','Shanaka',34,'All-Rounder',5,'players/10.jpg'),(38,'Shaheen Afridi ( C )','Shaheen','Afridi',28,'Bolwer',3,'players/Shah-Afridi.jpg'),(39,'Rashid Khan','Rashid','Khan',29,'Bowler',3,'players/Rashid-khan.jpg'),(40,'Haris Rauf','Haris','Rauf',30,'Bolwer',3,'players/Haris-Rauf.jpg'),(41,'Sikandar Raza','Sikandar','Raza',28,'All-Rounder',3,'players/Sikanaer.jpg'),(42,'Fakhar Zaman','Fakhar','Zaman',27,'Batsmen',3,'players/Fakhar-zaman.jpg'),(43,'Hussain Talat','Hussain','Tallat',24,'All-Rounder',3,'players/Hissian.jpg'),(44,'David Wiese','David','Wiese',33,'All-Rounder',3,'players/David-wiese.jpg'),(45,'Liam Dawson','Liam','Dawson',28,'All-Rounder',3,'players/Dawson.jpg'),(46,'Abdullah Shafique','abdullah','shafique',27,'Batsmen',3,'players/Abdullah-shafique.jpg'),(47,'Zaman Khan','zaman','khan',24,'Bowler',3,'players/Zaman-khan.jpg'),(49,'Ahmed Daniyal','ahmed','daniyal',27,'Bowler',3,'players/Ahmed-daniyal.jpg'),(50,'Shawaiz Irfan','Shawaiz','Irfan',23,'Wicket-Keeper',3,'players/sagdsa.jpg'),(51,'Shahdab Khan ( C )','Shahdab','khan',30,'All-Rounder',4,'players/Shadab-Khan-740x740.jpg'),(52,'Rahmanullah Gurbaz','Rahmanullah','Gurbaz',24,'Wicket-Keeper',4,'players/Rahmanullah-Gurbaz-740x740.jpg'),(53,'Asif Ali','Asif','ali',34,'Batsmen',4,'players/Asif-Ali-740x740.jpg'),(54,'Faheem Ashraf','Faheem','Ashraf',29,'All-Rounder',4,'players/Faheem-Ashraf-740x740.jpg'),(55,'Alex Hales','Alex','Hales',34,'Batsmen',4,'players/Alex-Hales-740x740.jpg'),(56,'Mohammad Wasim Jr','Mohammad','Wasim',24,'All-Rounder',4,'players/Wasim-Jr-740x740.jpg'),(57,'Hasan Ali','Hasan','Ali',29,'Bowler',4,'players/Hasan-Ali-740x740.jpg'),(58,'Azam Khan','Azam','Khan',27,'Batsmen',4,'players/Azam-Khan-min-740x740.jpg'),(59,'Rumman Raees','Ruman','Raees',29,'Bowler',4,'players/Zahir-Khan-740x740.jpg'),(60,'Paul Stirling','Paul','Stirling',29,'Batsmen',4,'players/Paul-Stirling-min-740x740.jpg'),(61,'Colin Munro','Colin','Munro',30,'Batsmen',4,'players/Colin-Munro-min-740x740.jpg'),(62,'Abrar Ahmed','Abrar','ahmed',23,'Bowler',4,'players/Ather-Mehmood-740x740.jpg'),(63,'Sarfraz Ahmed ( C )','Sarfraz','Ahmed',34,'Wicket-Keeper',6,'players/kaptan_gNLdxDd.jpg'),(64,'Naseem Shah','naseem','shah',23,'Bowler',6,'players/naseem.jpg'),(65,'Iftikhar ahmed','ifthikhar','ahmed',34,'All-Rounder',6,'players/chahcu.jpg'),(66,'Mohammad Hasnain','Mohammad','hasnain',22,'Bowler',6,'players/bowler.jpg'),(67,'Mohammad Nawaz','Mohammad','Nawaz',30,'All-Rounder',6,'players/NAWAZ.jpg'),(68,'Umar Akmal','umar','akmal',35,'Batsmen',6,'players/umar_akmal.jpg'),(69,'Mohammad Hafeez','Mohammad','Hafeez',33,'Batsmen',6,'players/hafeez.jpg'),(70,'Martin Guptill','Martin','guptill',30,'Batsmen',6,'players/3Y3A5529-scaled-230x300.jpg'),(71,'Ahsan Ali','Ahsan','ali',25,'Batsmen',6,'players/AHSAN_LAI.jpg'),(72,'Umaid Asif','Umaid','Asif',23,'Bolwer',6,'players/UMAID_ASIF.jpg'),(73,'Will smeed','will','smeed',27,'Batsmen',6,'players/WILL_SMEED.jpg'),(74,'Jason Roy','jason','Roy',29,'Batsmen',6,'players/JASON_ROY.jpg');
/*!40000 ALTER TABLE `home_player` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-17 19:18:03
