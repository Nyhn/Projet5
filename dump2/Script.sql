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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id_address` int NOT NULL AUTO_INCREMENT,
  `zip_code` varchar(50) NOT NULL,
  `name_street` varchar(500) NOT NULL,
  `num_street` int NOT NULL,
  `country` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`id_address`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `id_bill` int NOT NULL AUTO_INCREMENT,
  `priceTTC` decimal(5,3) NOT NULL,
  `priceHT` decimal(5,3) NOT NULL,
  `payement_type` varchar(50) NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `id_address` int NOT NULL,
  PRIMARY KEY (`id_bill`),
  KEY `f_bill_adress_idx` (`id_address`),
  CONSTRAINT `f_bill_adress` FOREIGN KEY (`id_address`) REFERENCES `address` (`id_address`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id_Customers` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date_creation` date NOT NULL,
  `id_address` int NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_Customers`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `foreign_address_customer_idx` (`id_address`),
  CONSTRAINT `foreign_address_customer` FOREIGN KEY (`id_address`) REFERENCES `address` (`id_address`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `id_delivery` int NOT NULL,
  `id_address` int NOT NULL,
  `state_delivery` varchar(50) NOT NULL,
  `date_delivery` datetime DEFAULT NULL,
  `id_employee` int DEFAULT NULL,
  PRIMARY KEY (`id_delivery`),
  KEY `f_delivery_address_idx` (`id_address`),
  KEY `f_delivery_employee_idx` (`id_employee`),
  CONSTRAINT `f_delivery_address` FOREIGN KEY (`id_address`) REFERENCES `address` (`id_address`),
  CONSTRAINT `f_delivery_employee` FOREIGN KEY (`id_employee`) REFERENCES `employee` (`id_Employee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id_Employee` int NOT NULL,
  `date_start` date NOT NULL,
  `contract_type` varchar(50) NOT NULL,
  `id_pizzeria` int NOT NULL,
  PRIMARY KEY (`id_Employee`),
  KEY `f_employee_pizzeria_idx` (`id_pizzeria`),
  CONSTRAINT `f_employee_customer` FOREIGN KEY (`id_Employee`) REFERENCES `customers` (`id_Customers`),
  CONSTRAINT `f_employee_pizzeria` FOREIGN KEY (`id_pizzeria`) REFERENCES `pizzeria` (`id_pizzeria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `id_manager` int NOT NULL,
  PRIMARY KEY (`id_manager`),
  CONSTRAINT `f_manager_customer` FOREIGN KEY (`id_manager`) REFERENCES `customers` (`id_Customers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ocpizza`
--

DROP TABLE IF EXISTS `ocpizza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ocpizza` (
  `id_manager` int NOT NULL,
  `id_pizzeria` int NOT NULL,
  PRIMARY KEY (`id_manager`,`id_pizzeria`),
  KEY `f_ocpizza_pizzeria_idx` (`id_pizzeria`),
  CONSTRAINT `f_ocpizza_manager` FOREIGN KEY (`id_manager`) REFERENCES `manager` (`id_manager`),
  CONSTRAINT `f_ocpizza_pizzeria` FOREIGN KEY (`id_pizzeria`) REFERENCES `pizzeria` (`id_pizzeria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pizza`
--

DROP TABLE IF EXISTS `pizza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pizza` (
  `id_employee` int NOT NULL,
  `id_product` varchar(45) NOT NULL,
  PRIMARY KEY (`id_employee`,`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pizzeria`
--

DROP TABLE IF EXISTS `pizzeria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pizzeria` (
  `id_pizzeria` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_pizzeria`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id_product` int NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `unit_price` decimal(5,3) NOT NULL,
  `name_product` varchar(50) NOT NULL,
  `quantity_remaining` int NOT NULL,
  PRIMARY KEY (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase` (
  `id_purchase` int NOT NULL AUTO_INCREMENT,
  `id_customer` int NOT NULL,
  `id_pizzeria` int NOT NULL,
  `id_bill` int NOT NULL,
  `id_delivery` int DEFAULT NULL,
  `state_purchase` varchar(45) NOT NULL,
  `date_purchase` date NOT NULL,
  `type_purchase` varchar(45) NOT NULL,
  PRIMARY KEY (`id_purchase`),
  KEY `f_purchase_customer_idx` (`id_customer`),
  KEY `f_purchase_pizzeria_idx` (`id_pizzeria`),
  KEY `f_purchase_bill_idx` (`id_bill`),
  KEY `f_purchase_delivery_idx` (`id_delivery`),
  CONSTRAINT `f_purchase_bill` FOREIGN KEY (`id_bill`) REFERENCES `bill` (`id_bill`),
  CONSTRAINT `f_purchase_customer` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id_Customers`),
  CONSTRAINT `f_purchase_delivery` FOREIGN KEY (`id_delivery`) REFERENCES `delivery` (`id_delivery`),
  CONSTRAINT `f_purchase_pizzeria` FOREIGN KEY (`id_pizzeria`) REFERENCES `pizzeria` (`id_pizzeria`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `purchaselineproduct`
--

DROP TABLE IF EXISTS `purchaselineproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchaselineproduct` (
  `id_purchaseLineProduct` int NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `quantity` int NOT NULL,
  `id_purchase` int NOT NULL,
  PRIMARY KEY (`id_purchaseLineProduct`),
  KEY `f_purchaseLineProduct_purchase_idx` (`id_purchase`),
  KEY `f_purchaseLineProduct_product_idx` (`id_product`),
  CONSTRAINT `f_purchaseLineProduct_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`),
  CONSTRAINT `f_purchaseLineProduct_purchase` FOREIGN KEY (`id_purchase`) REFERENCES `purchase` (`id_purchase`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `id_product` int NOT NULL,
  `id_pizzeria` int NOT NULL,
  PRIMARY KEY (`id_product`,`id_pizzeria`),
  KEY `f_stock_pizzeria_idx` (`id_pizzeria`),
  CONSTRAINT `f_stock_pizzeria` FOREIGN KEY (`id_pizzeria`) REFERENCES `pizzeria` (`id_pizzeria`),
  CONSTRAINT `f_stock_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-12 16:49:36
