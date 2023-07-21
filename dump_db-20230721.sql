-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: info_tech
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
                         `id` int NOT NULL AUTO_INCREMENT,
                         `fullname` varchar(255) DEFAULT NULL,
                         `trash` tinyint(1) DEFAULT '0',
                         PRIMARY KEY (`id`),
                         KEY `author_idx` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Иванов ИН',0),(2,'Петров ЕВ',0),(3,'Галкин АР',0);
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
                       `id` int NOT NULL AUTO_INCREMENT,
                       `title` varchar(255) DEFAULT NULL,
                       `year` varchar(20) DEFAULT NULL,
                       `description` text,
                       `isbn` varchar(17) DEFAULT NULL,
                       `img` varchar(255) DEFAULT NULL,
                       `author_id` int DEFAULT NULL,
                       `trash` tinyint(1) DEFAULT '0',
                       PRIMARY KEY (`id`),
                       KEY `books_idx` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Test','2023','Descr','978-5-386-01614-2','img/123.jpg',1,0),(2,'test2','2002','Descr','978-5-386-01614-3','img/134.jpg',1,0);
INSERT INTO `books` VALUES (2,'Test','2023','Descr','978-5-386-01614-2','img/123.jpg',1,0),(2,'test2','2002','Descr','978-5-386-01614-3','img/134.jpg',3,0);
INSERT INTO `books` VALUES (3,'Test','2023','Descr','978-5-386-01614-2','img/123.jpg',1,0),(2,'test2','2002','Descr','978-5-386-01614-3','img/134.jpg',2,0);
INSERT INTO `books` VALUES (4,'Test','2023','Descr','978-5-386-01614-2','img/123.jpg',1,0),(2,'test2','2002','Descr','978-5-386-01614-3','img/134.jpg',1,0);
INSERT INTO `books` VALUES (5,'Test','2023','Descr','978-5-386-01614-2','img/123.jpg',1,0),(2,'test2','2002','Descr','978-5-386-01614-3','img/134.jpg',1,0);
INSERT INTO `books` VALUES (6,'Test','2023','Descr','978-5-386-01614-2','img/123.jpg',1,0),(2,'test2','2002','Descr','978-5-386-01614-3','img/134.jpg',1,0);
INSERT INTO `books` VALUES (7,'Test','2023','Descr','978-5-386-01614-2','img/123.jpg',1,0),(2,'test2','2002','Descr','978-5-386-01614-3','img/134.jpg',2,0);
INSERT INTO `books` VALUES (8,'Test','2023','Descr','978-5-386-01614-2','img/123.jpg',1,0),(2,'test2','2002','Descr','978-5-386-01614-3','img/134.jpg',1,0);
INSERT INTO `books` VALUES (9,'Test','2023','Descr','978-5-386-01614-2','img/123.jpg',1,0),(2,'test2','2002','Descr','978-5-386-01614-3','img/134.jpg',2,0);
INSERT INTO `books` VALUES (10,'Test','2023','Descr','978-5-386-01614-2','img/123.jpg',1,0),(2,'test2','2002','Descr','978-5-386-01614-3','img/134.jpg',1,0);
INSERT INTO `books` VALUES (11,'Test','2023','Descr','978-5-386-01614-2','img/123.jpg',1,0),(2,'test2','2002','Descr','978-5-386-01614-3','img/134.jpg',1,0);
INSERT INTO `books` VALUES (12,'Test','2023','Descr','978-5-386-01614-2','img/123.jpg',1,0),(2,'test2','2002','Descr','978-5-386-01614-3','img/134.jpg',1,0);
INSERT INTO `books` VALUES (13,'Test','2023','Descr','978-5-386-01614-2','img/123.jpg',1,0),(2,'test2','2002','Descr','978-5-386-01614-3','img/134.jpg',3,0);
INSERT INTO `books` VALUES (14,'Test','2023','Descr','978-5-386-01614-2','img/123.jpg',1,0),(2,'test2','2002','Descr','978-5-386-01614-3','img/134.jpg',1,0);
INSERT INTO `books` VALUES (15,'Test','2023','Descr','978-5-386-01614-2','img/123.jpg',1,0),(2,'test2','2002','Descr','978-5-386-01614-3','img/134.jpg',2,0);
INSERT INTO `books` VALUES (16,'Test','2023','Descr','978-5-386-01614-2','img/123.jpg',1,0),(2,'test2','2002','Descr','978-5-386-01614-3','img/134.jpg',1,0);
INSERT INTO `books` VALUES (17,'Test','2023','Descr','978-5-386-01614-2','img/123.jpg',1,0),(2,'test2','2002','Descr','978-5-386-01614-3','img/134.jpg',2,0);
INSERT INTO `books` VALUES (18,'Test','2023','Descr','978-5-386-01614-2','img/123.jpg',1,0),(2,'test2','2002','Descr','978-5-386-01614-3','img/134.jpg',2,0);
INSERT INTO `books` VALUES (19,'Test','2023','Descr','978-5-386-01614-2','img/123.jpg',1,0),(2,'test2','2002','Descr','978-5-386-01614-3','img/134.jpg',3,0);
INSERT INTO `books` VALUES (20,'Test','2023','Descr','978-5-386-01614-2','img/123.jpg',1,0),(2,'test2','2002','Descr','978-5-386-01614-3','img/134.jpg',1,0);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migration` (
                           `version` varchar(180) NOT NULL,
                           `apply_time` int DEFAULT NULL,
                           PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` VALUES ('m230721_113930_create_books_table',1689940415),('m230721_113941_create_authors_table',1689940415);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'info_tech'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-21 16:24:45
