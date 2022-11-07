-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: elsistema
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `cajas`
--

DROP TABLE IF EXISTS `cajas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cajas` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `horainicio` datetime DEFAULT NULL,
  `horacierre` datetime DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `tms` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cajas`
--

LOCK TABLES `cajas` WRITE;
/*!40000 ALTER TABLE `cajas` DISABLE KEYS */;
/*!40000 ALTER TABLE `cajas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `cuitcuil` varchar(20) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `categoría` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Aron','Hear','203456756','Posadas',2),(2,'Heirmer','Link','933565423','Obera',1),(3,'Valentina','Dual','783568506','Posadas',1),(4,'Many','Rivera','903432124','Palermo',4),(5,'Zuma','Olivero','393056523','Rio Cuarto',2);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamentos` (
  `iddepartamento` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `presupuesto` double unsigned NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `tms` timestamp NULL DEFAULT NULL,
  `gasto` double DEFAULT NULL,
  PRIMARY KEY (`iddepartamento`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES (1,'El alegria',500000,1,'2019-02-12 03:00:00',3000),(2,'El Triste',800000,1,'2020-08-28 03:00:00',5000),(3,'El Curioso',670000,2,'2020-01-30 03:00:00',4600),(4,'El Temor',300000,2,'2019-11-05 03:00:00',2000),(5,'El Amor',900000,1,'2022-06-19 03:00:00',7000);
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `idemplaedo` int unsigned NOT NULL AUTO_INCREMENT,
  `cuil_cuit` varchar(15) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `id_departamento` int unsigned DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `id_localidad` int unsigned NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefono` int DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `tms` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idemplaedo`),
  UNIQUE KEY `cuil_cuit` (`cuil_cuit`),
  KEY `id_departamento` (`id_departamento`),
  KEY `id_localidad` (`id_localidad`),
  CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamentos` (`iddepartamento`),
  CONSTRAINT `empleados_ibfk_2` FOREIGN KEY (`id_localidad`) REFERENCES `localidades` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'40-41234653-1','Demian ','Conejo',1,1,'Ch.122',1,'demian@gmail.com',3945645,'2019-01-01','2020-01-01 03:00:00'),(2,'41-42453887-2','Exequiel','Ramirez',1,1,'Ch.122',3,'Exequiel@gmail.com',41234534,'2022-09-12','2018-12-30 03:00:00'),(3,'42-34673456-5','Facundo','Real ',2,2,'Ch.32',2,'Facundo@gmail.com',45675344,'2019-04-30','2020-07-30 03:00:00'),(4,'43-23543990-5','Nicole','Cande',5,2,'Ch.55',5,'Nicole@gmail.com',455495641,'2020-05-21','2021-11-03 03:00:00'),(5,'76-3434563-1','Nahuel','Pintes',3,1,'Ch.99',1,'Nahuel@gmail.com',459675634,'2018-02-01','2020-10-31 03:00:00');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localidades`
--

DROP TABLE IF EXISTS `localidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `localidades` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `cp` varchar(100) NOT NULL,
  `id_provincias` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_provincias` (`id_provincias`),
  CONSTRAINT `localidades_ibfk_1` FOREIGN KEY (`id_provincias`) REFERENCES `provincias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localidades`
--

LOCK TABLES `localidades` WRITE;
/*!40000 ALTER TABLE `localidades` DISABLE KEYS */;
INSERT INTO `localidades` VALUES (1,'Posadas','3300',2),(2,'Apostoles','3350',2),(3,'Quilmes','B1878',1),(4,'Iguazu','N3370',1),(5,'San Isidro','B1609',2);
/*!40000 ALTER TABLE `localidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marcas` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `id_proveedor` int unsigned NOT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `tms` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_proveedor` (`id_proveedor`),
  CONSTRAINT `marcas_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES (1,'Sancor','Productor de lacteos','Positiva',1,1,'2020-10-31 03:00:00'),(2,'Leader','Productor de llantas','Neutro',5,1,'2021-06-23 03:00:00'),(3,'Galaxys','Productor de juguetes','Muy positivo',1,2,'2022-11-11 03:00:00'),(4,'Ay mama!','Productor de cigarros','Muy negativo',2,2,'2021-08-01 03:00:00'),(5,'Ex´s','Productor de microchips','Negativo',3,1,'2020-12-09 03:00:00');
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimientos`
--

DROP TABLE IF EXISTS `movimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimientos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `cantidad` double NOT NULL,
  `fecha` date DEFAULT NULL,
  `id_cliente` int unsigned NOT NULL,
  `id_vendedor` int unsigned NOT NULL,
  `id_producto` int unsigned NOT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `tipo_movimiento` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_vendedor` (`id_vendedor`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `movimientos_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`),
  CONSTRAINT `movimientos_ibfk_2` FOREIGN KEY (`id_vendedor`) REFERENCES `vendedores` (`id`),
  CONSTRAINT `movimientos_ibfk_3` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimientos`
--

LOCK TABLES `movimientos` WRITE;
/*!40000 ALTER TABLE `movimientos` DISABLE KEYS */;
INSERT INTO `movimientos` VALUES (1,100,'2022-09-11',1,3,1,1,'Ingreso'),(2,2000,'2022-11-09',1,4,2,1,'Egreso'),(4,90,'2022-08-11',3,2,3,1,'Pedido'),(6,300,'2022-01-21',4,5,1,2,'Pedido'),(7,950,'2022-03-03',2,2,4,1,'Egreso');
/*!40000 ALTER TABLE `movimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Argentina'),(2,'Colombia'),(3,'Brasil'),(4,'Uruguay'),(5,'Paraguay');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parametros`
--

DROP TABLE IF EXISTS `parametros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parametros` (
  `cosas` json DEFAULT NULL,
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tms` timestamp NULL DEFAULT NULL,
  `id_usuario` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parametros`
--

LOCK TABLES `parametros` WRITE;
/*!40000 ALTER TABLE `parametros` DISABLE KEYS */;
INSERT INTO `parametros` VALUES ('{\"permisos\": \"PUT, GET\", \"idDeLaCosa\": 101}',1,NULL,0),('{\"grupo\": \"ventas\", \"vistasPermitidas\": \"menuPrincipal,menuSecundario,ventas,estadisticaVentas,listaCliente\"}',2,NULL,0),('{\"zonaHoraria\": \"America/Argentina/BuenosAires\"}',3,NULL,0),('{\"mesCierreCaja\": \"Diciembre\", \"mesAperturaCaja\": \"Enero\", \"fechaInicioActividades\": \"01/01/2019\"}',4,NULL,0),('{\"balancesAniosAnteriores\": {\"2019\": {\"egreso\": \"3732538,75\", \"ingreso\": \"7374901.93\"}, \"2020\": {\"egreso\": \"8522331,82\", \"ingreso\": \"27442665,12\"}, \"2021\": {\"egreso\": \"9757142,66\", \"ingreso\": \"31634912,57\"}}}',5,NULL,0);
/*!40000 ALTER TABLE `parametros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `id_marca` int unsigned NOT NULL,
  `stock` int unsigned NOT NULL,
  `precio` double unsigned NOT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `tms` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_marca` (`id_marca`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `marcas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Manteca','Producto alimenticio/material elaborado',1,5100,10000,1,'2021-03-14 03:00:00'),(2,'Leche','Producto alimenticio',1,10000,250000,2,'2021-09-12 03:00:00'),(3,'Neumatico','Producto industrial/automovilisto',2,1000,24000,2,'2022-12-31 03:00:00'),(4,'Osos de peluches','Producto infantil',3,500,10000,2,'2021-04-13 03:00:00'),(5,'Cigarros sabor chocolate','Producto de consumision',4,20000,27500,2,'2019-05-29 03:00:00');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `razon_social` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `naturaleza` varchar(100) NOT NULL,
  `cuit` int unsigned NOT NULL,
  `id_localidad` int unsigned NOT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `tms` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_localidad` (`id_localidad`),
  CONSTRAINT `proveedores_ibfk_1` FOREIGN KEY (`id_localidad`) REFERENCES `localidades` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'S.A.','Marcos','Morales','fisica',3134231433,1,1,'2019-08-01 03:00:00'),(2,'S.A.','Star','Arcos','juridica',453567553,5,1,'2020-09-21 03:00:00'),(3,'S.R.L.','Marcela','Shiel','juridica',493589850,2,2,'2018-02-27 03:00:00'),(4,'S.A.C.','Susan','Rial','juridica',453465674,1,1,'2019-04-04 03:00:00'),(5,'S.A.','Walter','Workt','fisica',58345678,3,2,'2020-09-13 03:00:00');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincias`
--

DROP TABLE IF EXISTS `provincias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provincias` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `id_pais` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_pais` (`id_pais`),
  CONSTRAINT `provincias_ibfk_1` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincias`
--

LOCK TABLES `provincias` WRITE;
/*!40000 ALTER TABLE `provincias` DISABLE KEYS */;
INSERT INTO `provincias` VALUES (1,'Buenos Aires',1),(2,'Misiones',1),(3,'Bogota',2),(4,'Asuncion',5),(5,'Montevideo',4);
/*!40000 ALTER TABLE `provincias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedores`
--

DROP TABLE IF EXISTS `vendedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedores` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `cuitcuil` varchar(20) DEFAULT NULL,
  `comisión` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedores`
--

LOCK TABLES `vendedores` WRITE;
/*!40000 ALTER TABLE `vendedores` DISABLE KEYS */;
INSERT INTO `vendedores` VALUES (1,'Wilson','August','39397656782',1),(2,'Ame','Hass','8440343234',2),(3,'Manuel','Ezre','11372890456',1),(4,'Leandro','Capo','48354589312',3),(5,'Daisy','Wong','334565423',2);
/*!40000 ALTER TABLE `vendedores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-07 12:35:36
