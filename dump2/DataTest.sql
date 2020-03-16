-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: db_pizza
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'13010','rue des pierre',213,'france','0605060506'),(2,'13007','rue des caillou',230,'france','0605060506'),(3,'13008','rue des papier',11,'france','0605060506'),(4,'13011','rue des ciseaux',65,'france','0491424242'),(5,'13010','rue des trolls',24,'france','0491523212'),(6,'13005','rue des puits',42,'france','0706050403'),(7,'13004','rue des fauves',532,'france','0694959494'),(8,'13004','boulevard des airs',321,'france','0491878979'),(9,'13010','bourlevard des montagnes',2,'france','049123365412'),(10,'13011','boulevard des gens',24,'france','0491523212'),(11,'13013','boulevard des turcs',47,'france','0706050403'),(12,'13012','impasse des tulipes',37,'france','0491523212'),(13,'13011','impasse des roses',98,'france','0605060506'),(14,'13010','impasse des coquelicots',73,'france','049123365412'),(15,'13012','allées des rails',37,'france','0303030303');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (1,32.700,30.000,'CB',1,1),(2,21.500,20.100,'paypal',1,2),(3,12.300,10.900,'espece',1,3),(4,9.990,8.500,'cheque',0,4);
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;


-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (1,12,'en cours',NULL,16),(2,13,'livré','2020-12-10 03:51:00',17),(3,1,'preparation',NULL,17),(4,2,'livré','2020-12-11 15:13:00',18);
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Dumping data for table `pizza`
--

LOCK TABLES `pizza` WRITE;
/*!40000 ALTER TABLE `pizza` DISABLE KEYS */;
/*!40000 ALTER TABLE `pizza` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
INSERT INTO `purchase` VALUES (1,16,1,1,1,'fini','2020-03-10','livraison'),(2,18,1,2,2,'fini','2020-06-11','livraison'),(3,19,2,3,3,'livraison','2020-09-11','emporter'),(4,23,3,4,4,'prete','2020-11-06','emporter');
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `purchaselineproduct`
--

LOCK TABLES `purchaselineproduct` WRITE;
/*!40000 ALTER TABLE `purchaselineproduct` DISABLE KEYS */;
INSERT INTO `purchaselineproduct` VALUES (1,1,2,1),(2,2,1,1),(3,3,1,2),(4,1,1,2),(5,2,3,3),(6,4,1,3),(7,5,2,4),(8,6,3,4),(9,7,1,1),(10,8,1,1);
/*!40000 ALTER TABLE `purchaselineproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,1),(3,1),(5,1),(9,1),(2,2),(4,2),(10,2),(6,3),(7,3),(8,3);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-12 17:27:59
