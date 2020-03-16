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
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (14,'geoffrey','d','123','2020-12-10',12,'mail1@oc.com',0),(15,'gaetan','d','123','2019-11-10',1,'mail2@oc.com',1),(16,'gwenaelle','d','123','2018-01-19',2,'mail3@oc.com',0),(17,'lila','m','123','2019-07-06',3,'mail4@oc.com',1),(18,'ludovic','d','123','2020-03-06',4,'mail5@oc.com',0),(19,'eddie','l','123','2020-09-16',5,'mail6@oc.com',1),(20,'mathieu','c','123','2020-06-24',6,'mail7@oc.com',1),(21,'kevin','b','123','2019-03-21',7,'mail8@oc.com',1),(22,'celia','d','123','2019-08-29',8,'mail9@oc.com',1),(23,'mylene','f','123','2019-03-03',9,'mail10@oc.com',0),(24,'aida','h','123','2018-04-24',10,'mail11@oc.com',0),(25,'michael','l','123','2018-01-12',11,'mail12@oc.com',0),(26,'remi','t','123','2019-06-05',13,'mail13@oc.com',1);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (16,'2020-07-12','CDI',1),(17,'2020-06-12','CDD',2),(18,'2019-06-21','CDD',3),(19,'2018-12-25','CDI',1),(20,'2019-11-27','INTERIM',2),(21,'2019-03-30','INTERIM',3);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (14),(15);
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ocpizza`
--

LOCK TABLES `ocpizza` WRITE;
/*!40000 ALTER TABLE `ocpizza` DISABLE KEYS */;
INSERT INTO `ocpizza` VALUES (14,1),(15,1),(14,2),(15,2),(15,3);
/*!40000 ALTER TABLE `ocpizza` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Dumping data for table `pizzeria`
--

LOCK TABLES `pizzeria` WRITE;
/*!40000 ALTER TABLE `pizzeria` DISABLE KEYS */;
INSERT INTO `pizzeria` VALUES (1),(2),(3);
/*!40000 ALTER TABLE `pizzeria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'desc1',3.500,'coca',52),(2,NULL,1.200,'champignon',10),(3,NULL,2.100,'oeuf',2),(4,'desc3',10.200,'cremière',1),(5,NULL,11.300,'royale',1),(6,NULL,12.300,'campagnarde',1),(7,'desc4',12.400,'reine',1),(8,NULL,2.500,'fanta',54),(9,'desc5',9.500,'fromage',2),(10,'desc2',10.500,'poulet curry',21);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-12 17:08:35
