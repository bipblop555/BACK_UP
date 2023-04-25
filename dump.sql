-- MySQL dump 10.19  Distrib 10.3.38-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: APEX
-- ------------------------------------------------------
-- Server version	10.3.38-MariaDB-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'toto','$2y$10$J.UyRiwjul.5vZPHD24IY.c66HCrTnguHcl.Eukiz83rZR7e4kUdG'),(2,'ratan','$2y$10$MeysGJtZ5Q9CDPtZThK.uOZAVMCkHMgdvmi32RVoqhBgGNLpcahLu'),(3,'kaka','$2y$10$oxbeRY2uONUNu8gWCkIwsu42TVHp0BMjLoSvGL35oE1Rt1S9qmHgO'),(4,'timi','$2y$10$5x7GJExAgL4/B43dUAN2Ou0Eenr8tDEQdKKSRblUz4PNHxZLmwDhy'),(5,'cra','$2y$10$ow9qviKTRR7vW2h6wnefBOPanWk/UGAVOAIHdbKyU0gp7cY46Cndi'),(6,'cra','$2y$10$wJ6lEfXVq2ts0I6aiAOAdudi98TlhegCfEO.U93OeMN4kCuAM9vRa'),(7,'zen','$2y$10$CBMS66gWtQz3uSrAhrj7JexYCL6H..rIYeJCX4S3YiT3Af1ekmNAa'),(8,'lol','$2y$10$jWHBJAcAfcsZTpCXyghcYuEyrnWgYkon4O4pfhMnDJi916iAgHIym'),(9,'lol','$2y$10$SzLZf1J/BjJF3imJI9AqN.1iCJBanWVJ7gcVanE6.2Qmu7VHrq8bO'),(10,'rayou','$2y$10$AIpzApdbC34hnHplwmerCeMPkyCM8wpujkPjiaY/Z4QLbkdEwWaMm'),(11,'hassou','$2y$10$BOBMrraoA78c60tbfIPQD.cmQ0Dgxo7y6qhri7sJt.JTDeyWstp3C'),(12,'jugou','$2y$10$.7vFDUW.aZVfashRzr0wHe/DwOTrdzjt4q5x5MicyQdX3JbIwYPm2'),(13,'jessou','$2y$10$UKk9z22TvHcHXxT4gbOMSOHwfWXfxUrdGaDyIGEXaoMw9A6NfH.dK'),(14,'loulou','$2y$10$88QabT8GmUQQRDUPzDrF5e0SsiUJH8unPkqLayM7bc0K4SPX5VJZi'),(15,'tob','$2y$10$xAXBwgw9yqXVtHhyYwfTpOwi9n8cqP8lKCkl4Ax9x1cWkArEBZme2');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
