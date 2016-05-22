CREATE DATABASE  IF NOT EXISTS `bdcarrito` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bdcarrito`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bdcarrito
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.9-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `detalleventa`
--

DROP TABLE IF EXISTS `detalleventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalleventa` (
  `codigoVenta` int(11) NOT NULL,
  `codigoProducto` int(11) NOT NULL,
  `cantidad` decimal(18,2) NOT NULL,
  `descuento` decimal(18,2) NOT NULL,
  PRIMARY KEY (`codigoVenta`,`codigoProducto`),
  KEY `FK_DetalleVenta_Producto` (`codigoProducto`),
  CONSTRAINT `FK_DetalleVenta_Producto` FOREIGN KEY (`codigoProducto`) REFERENCES `producto` (`codigoProducto`),
  CONSTRAINT `FK_DetalleVenta_Venta` FOREIGN KEY (`codigoVenta`) REFERENCES `venta` (`codigoVenta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalleventa`
--

LOCK TABLES `detalleventa` WRITE;
/*!40000 ALTER TABLE `detalleventa` DISABLE KEYS */;
INSERT INTO `detalleventa` VALUES (1,4,2.00,34.53),(2,1,2.00,0.00),(3,1,2.00,0.00),(3,7,1.00,0.00),(3,10,2.00,0.00),(4,1,2.00,0.00),(4,7,1.00,0.00),(4,10,2.00,0.00),(5,1,2.00,0.00),(5,7,1.00,0.00),(5,10,2.00,0.00),(6,1,2.00,0.00),(7,2,2.00,0.00),(7,4,1.00,0.00),(7,6,3.00,0.00),(8,2,2.00,0.00),(8,9,4.00,3.00),(10,5,90.00,0.00),(10,8,2.00,0.00);
/*!40000 ALTER TABLE `detalleventa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-22 11:28:17
