-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: mall_customer
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `age_group_distribution`
--

DROP TABLE IF EXISTS `age_group_distribution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `age_group_distribution` (
  `age_group` varchar(20) DEFAULT NULL,
  `total` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `age_group_distribution`
--

LOCK TABLES `age_group_distribution` WRITE;
/*!40000 ALTER TABLE `age_group_distribution` DISABLE KEYS */;
INSERT INTO `age_group_distribution` VALUES ('Young',35),('Adult',87),('Senior',78);
/*!40000 ALTER TABLE `age_group_distribution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender_distribution`
--

DROP TABLE IF EXISTS `gender_distribution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gender_distribution` (
  `gender` text,
  `total` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender_distribution`
--

LOCK TABLES `gender_distribution` WRITE;
/*!40000 ALTER TABLE `gender_distribution` DISABLE KEYS */;
INSERT INTO `gender_distribution` VALUES ('Male',88),('Female',112);
/*!40000 ALTER TABLE `gender_distribution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `income_by_agegroup`
--

DROP TABLE IF EXISTS `income_by_agegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `income_by_agegroup` (
  `age_group` varchar(20) DEFAULT NULL,
  `avg_income` decimal(13,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income_by_agegroup`
--

LOCK TABLES `income_by_agegroup` WRITE;
/*!40000 ALTER TABLE `income_by_agegroup` DISABLE KEYS */;
INSERT INTO `income_by_agegroup` VALUES ('Young',44.66),('Adult',68.71),('Senior',58.60);
/*!40000 ALTER TABLE `income_by_agegroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `income_distribution`
--

DROP TABLE IF EXISTS `income_distribution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `income_distribution` (
  `income_level` varchar(20) DEFAULT NULL,
  `total` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income_distribution`
--

LOCK TABLES `income_distribution` WRITE;
/*!40000 ALTER TABLE `income_distribution` DISABLE KEYS */;
INSERT INTO `income_distribution` VALUES ('Low Income',46),('Middle Income',80),('High Income',74);
/*!40000 ALTER TABLE `income_distribution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpi_summary`
--

DROP TABLE IF EXISTS `kpi_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kpi_summary` (
  `total_customers` bigint NOT NULL DEFAULT '0',
  `avg_income` decimal(13,2) DEFAULT NULL,
  `avg_spending_score` decimal(13,2) DEFAULT NULL,
  `total_high_spenders` decimal(23,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpi_summary`
--

LOCK TABLES `kpi_summary` WRITE;
/*!40000 ALTER TABLE `kpi_summary` DISABLE KEYS */;
INSERT INTO `kpi_summary` VALUES (200,60.56,50.20,54);
/*!40000 ALTER TABLE `kpi_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_customers`
--

DROP TABLE IF EXISTS `mall_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mall_customers` (
  `CustomerID` int DEFAULT NULL,
  `Gender` text,
  `Age` int DEFAULT NULL,
  `Annual Income (k$)` int DEFAULT NULL,
  `Spending Score (1-100)` int DEFAULT NULL,
  `age_group` varchar(20) DEFAULT NULL,
  `income_level` varchar(20) DEFAULT NULL,
  `spending_category` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_customers`
--

LOCK TABLES `mall_customers` WRITE;
/*!40000 ALTER TABLE `mall_customers` DISABLE KEYS */;
INSERT INTO `mall_customers` VALUES (1,'Male',19,15,39,'Young','Low Income','Low Spender'),(2,'Male',21,15,81,'Young','Low Income','High Spender'),(3,'Female',20,16,6,'Young','Low Income','Low Spender'),(4,'Female',23,16,77,'Young','Low Income','High Spender'),(5,'Female',31,17,40,'Adult','Low Income','Medium Spender'),(6,'Female',22,17,76,'Young','Low Income','High Spender'),(7,'Female',35,18,6,'Adult','Low Income','Low Spender'),(8,'Female',23,18,94,'Young','Low Income','High Spender'),(9,'Male',64,19,3,'Senior','Low Income','Low Spender'),(10,'Female',30,19,72,'Adult','Low Income','High Spender'),(11,'Male',67,19,14,'Senior','Low Income','Low Spender'),(12,'Female',35,19,99,'Adult','Low Income','High Spender'),(13,'Female',58,20,15,'Senior','Low Income','Low Spender'),(14,'Female',24,20,77,'Young','Low Income','High Spender'),(15,'Male',37,20,13,'Adult','Low Income','Low Spender'),(16,'Male',22,20,79,'Young','Low Income','High Spender'),(17,'Female',35,21,35,'Adult','Low Income','Low Spender'),(18,'Male',20,21,66,'Young','Low Income','Medium Spender'),(19,'Male',52,23,29,'Senior','Low Income','Low Spender'),(20,'Female',35,23,98,'Adult','Low Income','High Spender'),(21,'Male',35,24,35,'Adult','Low Income','Low Spender'),(22,'Male',25,24,73,'Adult','Low Income','High Spender'),(23,'Female',46,25,5,'Senior','Low Income','Low Spender'),(24,'Male',31,25,73,'Adult','Low Income','High Spender'),(25,'Female',54,28,14,'Senior','Low Income','Low Spender'),(26,'Male',29,28,82,'Adult','Low Income','High Spender'),(27,'Female',45,28,32,'Senior','Low Income','Low Spender'),(28,'Male',35,28,61,'Adult','Low Income','Medium Spender'),(29,'Female',40,29,31,'Adult','Low Income','Low Spender'),(30,'Female',23,29,87,'Young','Low Income','High Spender'),(31,'Male',60,30,4,'Senior','Low Income','Low Spender'),(32,'Female',21,30,73,'Young','Low Income','High Spender'),(33,'Male',53,33,4,'Senior','Low Income','Low Spender'),(34,'Male',18,33,92,'Young','Low Income','High Spender'),(35,'Female',49,33,14,'Senior','Low Income','Low Spender'),(36,'Female',21,33,81,'Young','Low Income','High Spender'),(37,'Female',42,34,17,'Senior','Low Income','Low Spender'),(38,'Female',30,34,73,'Adult','Low Income','High Spender'),(39,'Female',36,37,26,'Adult','Low Income','Low Spender'),(40,'Female',20,37,75,'Young','Low Income','High Spender'),(41,'Female',65,38,35,'Senior','Low Income','Low Spender'),(42,'Male',24,38,92,'Young','Low Income','High Spender'),(43,'Male',48,39,36,'Senior','Low Income','Low Spender'),(44,'Female',31,39,61,'Adult','Low Income','Medium Spender'),(45,'Female',49,39,28,'Senior','Low Income','Low Spender'),(46,'Female',24,39,65,'Young','Low Income','Medium Spender'),(47,'Female',50,40,55,'Senior','Middle Income','Medium Spender'),(48,'Female',27,40,47,'Adult','Middle Income','Medium Spender'),(49,'Female',29,40,42,'Adult','Middle Income','Medium Spender'),(50,'Female',31,40,42,'Adult','Middle Income','Medium Spender'),(51,'Female',49,42,52,'Senior','Middle Income','Medium Spender'),(52,'Male',33,42,60,'Adult','Middle Income','Medium Spender'),(53,'Female',31,43,54,'Adult','Middle Income','Medium Spender'),(54,'Male',59,43,60,'Senior','Middle Income','Medium Spender'),(55,'Female',50,43,45,'Senior','Middle Income','Medium Spender'),(56,'Male',47,43,41,'Senior','Middle Income','Medium Spender'),(57,'Female',51,44,50,'Senior','Middle Income','Medium Spender'),(58,'Male',69,44,46,'Senior','Middle Income','Medium Spender'),(59,'Female',27,46,51,'Adult','Middle Income','Medium Spender'),(60,'Male',53,46,46,'Senior','Middle Income','Medium Spender'),(61,'Male',70,46,56,'Senior','Middle Income','Medium Spender'),(62,'Male',19,46,55,'Young','Middle Income','Medium Spender'),(63,'Female',67,47,52,'Senior','Middle Income','Medium Spender'),(64,'Female',54,47,59,'Senior','Middle Income','Medium Spender'),(65,'Male',63,48,51,'Senior','Middle Income','Medium Spender'),(66,'Male',18,48,59,'Young','Middle Income','Medium Spender'),(67,'Female',43,48,50,'Senior','Middle Income','Medium Spender'),(68,'Female',68,48,48,'Senior','Middle Income','Medium Spender'),(69,'Male',19,48,59,'Young','Middle Income','Medium Spender'),(70,'Female',32,48,47,'Adult','Middle Income','Medium Spender'),(71,'Male',70,49,55,'Senior','Middle Income','Medium Spender'),(72,'Female',47,49,42,'Senior','Middle Income','Medium Spender'),(73,'Female',60,50,49,'Senior','Middle Income','Medium Spender'),(74,'Female',60,50,56,'Senior','Middle Income','Medium Spender'),(75,'Male',59,54,47,'Senior','Middle Income','Medium Spender'),(76,'Male',26,54,54,'Adult','Middle Income','Medium Spender'),(77,'Female',45,54,53,'Senior','Middle Income','Medium Spender'),(78,'Male',40,54,48,'Adult','Middle Income','Medium Spender'),(79,'Female',23,54,52,'Young','Middle Income','Medium Spender'),(80,'Female',49,54,42,'Senior','Middle Income','Medium Spender'),(81,'Male',57,54,51,'Senior','Middle Income','Medium Spender'),(82,'Male',38,54,55,'Adult','Middle Income','Medium Spender'),(83,'Male',67,54,41,'Senior','Middle Income','Medium Spender'),(84,'Female',46,54,44,'Senior','Middle Income','Medium Spender'),(85,'Female',21,54,57,'Young','Middle Income','Medium Spender'),(86,'Male',48,54,46,'Senior','Middle Income','Medium Spender'),(87,'Female',55,57,58,'Senior','Middle Income','Medium Spender'),(88,'Female',22,57,55,'Young','Middle Income','Medium Spender'),(89,'Female',34,58,60,'Adult','Middle Income','Medium Spender'),(90,'Female',50,58,46,'Senior','Middle Income','Medium Spender'),(91,'Female',68,59,55,'Senior','Middle Income','Medium Spender'),(92,'Male',18,59,41,'Young','Middle Income','Medium Spender'),(93,'Male',48,60,49,'Senior','Middle Income','Medium Spender'),(94,'Female',40,60,40,'Adult','Middle Income','Medium Spender'),(95,'Female',32,60,42,'Adult','Middle Income','Medium Spender'),(96,'Male',24,60,52,'Young','Middle Income','Medium Spender'),(97,'Female',47,60,47,'Senior','Middle Income','Medium Spender'),(98,'Female',27,60,50,'Adult','Middle Income','Medium Spender'),(99,'Male',48,61,42,'Senior','Middle Income','Medium Spender'),(100,'Male',20,61,49,'Young','Middle Income','Medium Spender'),(101,'Female',23,62,41,'Young','Middle Income','Medium Spender'),(102,'Female',49,62,48,'Senior','Middle Income','Medium Spender'),(103,'Male',67,62,59,'Senior','Middle Income','Medium Spender'),(104,'Male',26,62,55,'Adult','Middle Income','Medium Spender'),(105,'Male',49,62,56,'Senior','Middle Income','Medium Spender'),(106,'Female',21,62,42,'Young','Middle Income','Medium Spender'),(107,'Female',66,63,50,'Senior','Middle Income','Medium Spender'),(108,'Male',54,63,46,'Senior','Middle Income','Medium Spender'),(109,'Male',68,63,43,'Senior','Middle Income','Medium Spender'),(110,'Male',66,63,48,'Senior','Middle Income','Medium Spender'),(111,'Male',65,63,52,'Senior','Middle Income','Medium Spender'),(112,'Female',19,63,54,'Young','Middle Income','Medium Spender'),(113,'Female',38,64,42,'Adult','Middle Income','Medium Spender'),(114,'Male',19,64,46,'Young','Middle Income','Medium Spender'),(115,'Female',18,65,48,'Young','Middle Income','Medium Spender'),(116,'Female',19,65,50,'Young','Middle Income','Medium Spender'),(117,'Female',63,65,43,'Senior','Middle Income','Medium Spender'),(118,'Female',49,65,59,'Senior','Middle Income','Medium Spender'),(119,'Female',51,67,43,'Senior','Middle Income','Medium Spender'),(120,'Female',50,67,57,'Senior','Middle Income','Medium Spender'),(121,'Male',27,67,56,'Adult','Middle Income','Medium Spender'),(122,'Female',38,67,40,'Adult','Middle Income','Medium Spender'),(123,'Female',40,69,58,'Adult','Middle Income','Medium Spender'),(124,'Male',39,69,91,'Adult','Middle Income','High Spender'),(125,'Female',23,70,29,'Young','Middle Income','Low Spender'),(126,'Female',31,70,77,'Adult','Middle Income','High Spender'),(127,'Male',43,71,35,'Senior','High Income','Low Spender'),(128,'Male',40,71,95,'Adult','High Income','High Spender'),(129,'Male',59,71,11,'Senior','High Income','Low Spender'),(130,'Male',38,71,75,'Adult','High Income','High Spender'),(131,'Male',47,71,9,'Senior','High Income','Low Spender'),(132,'Male',39,71,75,'Adult','High Income','High Spender'),(133,'Female',25,72,34,'Adult','High Income','Low Spender'),(134,'Female',31,72,71,'Adult','High Income','High Spender'),(135,'Male',20,73,5,'Young','High Income','Low Spender'),(136,'Female',29,73,88,'Adult','High Income','High Spender'),(137,'Female',44,73,7,'Senior','High Income','Low Spender'),(138,'Male',32,73,73,'Adult','High Income','High Spender'),(139,'Male',19,74,10,'Young','High Income','Low Spender'),(140,'Female',35,74,72,'Adult','High Income','High Spender'),(141,'Female',57,75,5,'Senior','High Income','Low Spender'),(142,'Male',32,75,93,'Adult','High Income','High Spender'),(143,'Female',28,76,40,'Adult','High Income','Medium Spender'),(144,'Female',32,76,87,'Adult','High Income','High Spender'),(145,'Male',25,77,12,'Adult','High Income','Low Spender'),(146,'Male',28,77,97,'Adult','High Income','High Spender'),(147,'Male',48,77,36,'Senior','High Income','Low Spender'),(148,'Female',32,77,74,'Adult','High Income','High Spender'),(149,'Female',34,78,22,'Adult','High Income','Low Spender'),(150,'Male',34,78,90,'Adult','High Income','High Spender'),(151,'Male',43,78,17,'Senior','High Income','Low Spender'),(152,'Male',39,78,88,'Adult','High Income','High Spender'),(153,'Female',44,78,20,'Senior','High Income','Low Spender'),(154,'Female',38,78,76,'Adult','High Income','High Spender'),(155,'Female',47,78,16,'Senior','High Income','Low Spender'),(156,'Female',27,78,89,'Adult','High Income','High Spender'),(157,'Male',37,78,1,'Adult','High Income','Low Spender'),(158,'Female',30,78,78,'Adult','High Income','High Spender'),(159,'Male',34,78,1,'Adult','High Income','Low Spender'),(160,'Female',30,78,73,'Adult','High Income','High Spender'),(161,'Female',56,79,35,'Senior','High Income','Low Spender'),(162,'Female',29,79,83,'Adult','High Income','High Spender'),(163,'Male',19,81,5,'Young','High Income','Low Spender'),(164,'Female',31,81,93,'Adult','High Income','High Spender'),(165,'Male',50,85,26,'Senior','High Income','Low Spender'),(166,'Female',36,85,75,'Adult','High Income','High Spender'),(167,'Male',42,86,20,'Senior','High Income','Low Spender'),(168,'Female',33,86,95,'Adult','High Income','High Spender'),(169,'Female',36,87,27,'Adult','High Income','Low Spender'),(170,'Male',32,87,63,'Adult','High Income','Medium Spender'),(171,'Male',40,87,13,'Adult','High Income','Low Spender'),(172,'Male',28,87,75,'Adult','High Income','High Spender'),(173,'Male',36,87,10,'Adult','High Income','Low Spender'),(174,'Male',36,87,92,'Adult','High Income','High Spender'),(175,'Female',52,88,13,'Senior','High Income','Low Spender'),(176,'Female',30,88,86,'Adult','High Income','High Spender'),(177,'Male',58,88,15,'Senior','High Income','Low Spender'),(178,'Male',27,88,69,'Adult','High Income','Medium Spender'),(179,'Male',59,93,14,'Senior','High Income','Low Spender'),(180,'Male',35,93,90,'Adult','High Income','High Spender'),(181,'Female',37,97,32,'Adult','High Income','Low Spender'),(182,'Female',32,97,86,'Adult','High Income','High Spender'),(183,'Male',46,98,15,'Senior','High Income','Low Spender'),(184,'Female',29,98,88,'Adult','High Income','High Spender'),(185,'Female',41,99,39,'Senior','High Income','Low Spender'),(186,'Male',30,99,97,'Adult','High Income','High Spender'),(187,'Female',54,101,24,'Senior','High Income','Low Spender'),(188,'Male',28,101,68,'Adult','High Income','Medium Spender'),(189,'Female',41,103,17,'Senior','High Income','Low Spender'),(190,'Female',36,103,85,'Adult','High Income','High Spender'),(191,'Female',34,103,23,'Adult','High Income','Low Spender'),(192,'Female',32,103,69,'Adult','High Income','Medium Spender'),(193,'Male',33,113,8,'Adult','High Income','Low Spender'),(194,'Female',38,113,91,'Adult','High Income','High Spender'),(195,'Female',47,120,16,'Senior','High Income','Low Spender'),(196,'Female',35,120,79,'Adult','High Income','High Spender'),(197,'Female',45,126,28,'Senior','High Income','Low Spender'),(198,'Male',32,126,74,'Adult','High Income','High Spender'),(199,'Male',32,137,18,'Adult','High Income','Low Spender'),(200,'Male',30,137,83,'Adult','High Income','High Spender');
/*!40000 ALTER TABLE `mall_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spending_by_income`
--

DROP TABLE IF EXISTS `spending_by_income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spending_by_income` (
  `income_level` varchar(20) DEFAULT NULL,
  `avg_spending` decimal(13,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spending_by_income`
--

LOCK TABLES `spending_by_income` WRITE;
/*!40000 ALTER TABLE `spending_by_income` DISABLE KEYS */;
INSERT INTO `spending_by_income` VALUES ('Low Income',49.74),('Middle Income',50.48),('High Income',50.19);
/*!40000 ALTER TABLE `spending_by_income` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spending_distribution`
--

DROP TABLE IF EXISTS `spending_distribution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spending_distribution` (
  `spending_category` varchar(20) DEFAULT NULL,
  `total` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spending_distribution`
--

LOCK TABLES `spending_distribution` WRITE;
/*!40000 ALTER TABLE `spending_distribution` DISABLE KEYS */;
INSERT INTO `spending_distribution` VALUES ('Low Spender',59),('High Spender',54),('Medium Spender',87);
/*!40000 ALTER TABLE `spending_distribution` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-15 21:52:41
