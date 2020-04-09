-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: db_climbup
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
INSERT INTO `customers` VALUES (1,'frip','frip123','Dubois','Fripouille',0,'592 rue Saint Pierre',13010,'fripouille@gmail.com',603030303),(2,'geo','geo123','Dubois','Geoffrey',0,'592, RUE SAINT PIERRE',13010,'duboisgeoffrey03@gmail.com',605187091),(3,'wade','wade123','Wade','Dwayne',0,'27 rue de la NBA',10003,'wadedwayne@gmail.com',615161718),(4,'yamaha','yamaha123','Yamaha','Mt125',0,'42 rue de la moto',13011,'yam@gmail.com',506090807),(5,'double','double123','Double','CÃ©lia',0,'12 rue du muguet',13012,'doublecelia@gmail.com',442323634),(6,'eddie','eddie123','Laifa','eddie',0,'236 rue de lioto',13022,'laifaeddie@gmail.com',908070605),(7,'matt','matt123','Cartier','Mathieu',0,'rue des quartiers',13011,'cartiermathieu@gmail.com',809050608),(8,'mymy','mymy123','Fernandez','mylene',0,'23 boulevard st marcel',13005,'fernandezmylene@gmail.com',503010506),(9,'mugiwara','mugiwara123','Monkey .D','Luffy',0,'Vogue Merry',13001,'luffy@gmail.com',506050605),(14,'pseudo3','mdp3','nom3','pseudo3',0,'adresse3',33333,'mail3@gmail.com',303030303),(15,'nina','nina123','Dubois','Nina',0,'32 rue des fauvettes',23016,'nina@gmail.com',201020302),(16,'ju','123','Duboi','Geoffre',0,'592',13010,'geoffrey03@gmail.com',605187091),(17,'pseudo5','mdp5','Dubois','Geoffrey',0,'592',13010,'duboisgeoffrey03@gmail.com',605187091);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `topos`
--

LOCK TABLES `topos` WRITE;
/*!40000 ALTER TABLE `topos` DISABLE KEYS */;
/*!40000 ALTER TABLE `topos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-20 18:23:20
