CREATE DATABASE  IF NOT EXISTS `piotrowskit` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `piotrowskit`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: piotrowskit
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `projekt_adres_klienta`
--

DROP TABLE IF EXISTS `projekt_adres_klienta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projekt_adres_klienta` (
  `id_adresu` int NOT NULL AUTO_INCREMENT,
  `ulica` varchar(45) NOT NULL,
  `kod` varchar(45) NOT NULL,
  `miejscowosc` varchar(45) NOT NULL,
  `klienci_id_klienta` int NOT NULL,
  PRIMARY KEY (`id_adresu`),
  KEY `fk_adres_klienta_klienci1_idx` (`klienci_id_klienta`),
  CONSTRAINT `fk_adres_klienta_klienci1` FOREIGN KEY (`klienci_id_klienta`) REFERENCES `projekt_klienci` (`id_klienta`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekt_adres_klienta`
--

LOCK TABLES `projekt_adres_klienta` WRITE;
/*!40000 ALTER TABLE `projekt_adres_klienta` DISABLE KEYS */;
INSERT INTO `projekt_adres_klienta` VALUES (1,'Orzeszkowa','0700','Ostroleka',1),(2,'Malinowa','432','Olsztyn',2),(3,'Truskawkowa','0704','Szczytno',3),(4,'Porzeczkowa','0703','Warszawa',4),(5,'Arbuzowa','0702','Lomza',5);
/*!40000 ALTER TABLE `projekt_adres_klienta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projekt_czesci`
--

DROP TABLE IF EXISTS `projekt_czesci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projekt_czesci` (
  `id_czesci` int NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(45) NOT NULL,
  `cena` int NOT NULL,
  `ilosc` int DEFAULT NULL,
  PRIMARY KEY (`id_czesci`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekt_czesci`
--

LOCK TABLES `projekt_czesci` WRITE;
/*!40000 ALTER TABLE `projekt_czesci` DISABLE KEYS */;
INSERT INTO `projekt_czesci` VALUES (1,'zderzak',200,4),(2,'opona',100,10),(3,'wahacz',100,10),(4,'amortyzator',150,5),(5,'uszczelka_pod_glowica',500,20),(6,'blok_silnika',500,5),(7,'tlok',300,15),(8,'srubka',5,50);
/*!40000 ALTER TABLE `projekt_czesci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projekt_klienci`
--

DROP TABLE IF EXISTS `projekt_klienci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projekt_klienci` (
  `id_klienta` int NOT NULL,
  `imie` varchar(45) NOT NULL,
  `nazwisko` varchar(45) NOT NULL,
  `numer_telefonu` varchar(45) NOT NULL,
  PRIMARY KEY (`id_klienta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekt_klienci`
--

LOCK TABLES `projekt_klienci` WRITE;
/*!40000 ALTER TABLE `projekt_klienci` DISABLE KEYS */;
INSERT INTO `projekt_klienci` VALUES (1,'Tomasz','Piotrowski','999999999'),(2,'Mirek','Nowak','999999995'),(3,'Kasia','Laskowska','999999996'),(4,'Mirek','Nowak','999999995'),(5,'Bartek','Piotrowski','999999999');
/*!40000 ALTER TABLE `projekt_klienci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projekt_mechanicy`
--

DROP TABLE IF EXISTS `projekt_mechanicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projekt_mechanicy` (
  `id_mechanika` int NOT NULL AUTO_INCREMENT,
  `imie` varchar(45) NOT NULL,
  `nazwisko` varchar(45) NOT NULL,
  `specjalizacja` varchar(45) NOT NULL,
  PRIMARY KEY (`id_mechanika`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekt_mechanicy`
--

LOCK TABLES `projekt_mechanicy` WRITE;
/*!40000 ALTER TABLE `projekt_mechanicy` DISABLE KEYS */;
INSERT INTO `projekt_mechanicy` VALUES (1,'Miras','Kozlowski','lakiernik'),(2,'Stasio','Nowak','spawacz'),(3,'Kaziu','Kaletek','blacharz'),(4,'Zysiu','Kozak','wulkanizator'),(5,'Michal','Jesionowski','zlota_raczka'),(6,'Zbychu','Karas','pomocnik');
/*!40000 ALTER TABLE `projekt_mechanicy` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`piotrowskit`@`localhost`*/ /*!50003 TRIGGER `mechanik_before_insert` BEFORE INSERT ON `projekt_mechanicy` FOR EACH ROW BEGIN
  IF NEW.specjalizacja = 'nowy'
  THEN
    SET NEW.specjalizacja = 'pomocnik';
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `projekt_narzedzia`
--

DROP TABLE IF EXISTS `projekt_narzedzia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projekt_narzedzia` (
  `id_narzedzia` int NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(45) NOT NULL,
  `ilosc` int DEFAULT NULL,
  PRIMARY KEY (`id_narzedzia`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekt_narzedzia`
--

LOCK TABLES `projekt_narzedzia` WRITE;
/*!40000 ALTER TABLE `projekt_narzedzia` DISABLE KEYS */;
INSERT INTO `projekt_narzedzia` VALUES (1,'mlotek',4),(2,'migomat',1),(3,'srubokret',5),(4,'plaska13',10),(5,'wiekszy_mlotek',2),(6,'pedzel',5),(7,'komputer_do_cofania_licznika',5),(8,'lom',5);
/*!40000 ALTER TABLE `projekt_narzedzia` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`piotrowskit`@`localhost`*/ /*!50003 TRIGGER `narzedzia` BEFORE UPDATE ON `projekt_narzedzia` FOR EACH ROW BEGIN
set new.ilosc=2*old.ilosc;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `projekt_narzedzia_has_projekt_mechanicy`
--

DROP TABLE IF EXISTS `projekt_narzedzia_has_projekt_mechanicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projekt_narzedzia_has_projekt_mechanicy` (
  `projekt_narzedzia_id_narzedzia` int NOT NULL,
  `projekt_mechanicy_id_mechanika` int NOT NULL,
  `nazwa_narzedzia` varchar(45) NOT NULL,
  PRIMARY KEY (`projekt_narzedzia_id_narzedzia`,`projekt_mechanicy_id_mechanika`),
  KEY `fk_projekt_narzedzia_has_projekt_mechanicy_projekt_mechanic_idx` (`projekt_mechanicy_id_mechanika`),
  KEY `fk_projekt_narzedzia_has_projekt_mechanicy_projekt_narzedzi_idx` (`projekt_narzedzia_id_narzedzia`),
  CONSTRAINT `fk_projekt_narzedzia_has_projekt_mechanicy_projekt_mechanicy1` FOREIGN KEY (`projekt_mechanicy_id_mechanika`) REFERENCES `projekt_mechanicy` (`id_mechanika`),
  CONSTRAINT `fk_projekt_narzedzia_has_projekt_mechanicy_projekt_narzedzia1` FOREIGN KEY (`projekt_narzedzia_id_narzedzia`) REFERENCES `projekt_narzedzia` (`id_narzedzia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekt_narzedzia_has_projekt_mechanicy`
--

LOCK TABLES `projekt_narzedzia_has_projekt_mechanicy` WRITE;
/*!40000 ALTER TABLE `projekt_narzedzia_has_projekt_mechanicy` DISABLE KEYS */;
INSERT INTO `projekt_narzedzia_has_projekt_mechanicy` VALUES (1,3,'mlotek'),(2,2,'migomat'),(2,3,'wiekszy_mlotek'),(3,5,'srubokret'),(4,5,'plaska13'),(6,1,'pedzel'),(7,5,'komputer_do_cofania_licznika');
/*!40000 ALTER TABLE `projekt_narzedzia_has_projekt_mechanicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projekt_samochody`
--

DROP TABLE IF EXISTS `projekt_samochody`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projekt_samochody` (
  `id_samochodu` int NOT NULL AUTO_INCREMENT,
  `marka` varchar(45) NOT NULL,
  `model` varchar(45) NOT NULL,
  `klienci_id_klienta` int NOT NULL,
  PRIMARY KEY (`id_samochodu`),
  KEY `fk_samochody_klienci_idx` (`klienci_id_klienta`),
  CONSTRAINT `fk_samochody_klienci` FOREIGN KEY (`klienci_id_klienta`) REFERENCES `projekt_klienci` (`id_klienta`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekt_samochody`
--

LOCK TABLES `projekt_samochody` WRITE;
/*!40000 ALTER TABLE `projekt_samochody` DISABLE KEYS */;
INSERT INTO `projekt_samochody` VALUES (1,'Fiat','Punto',1),(2,'Audi','A4',3),(3,'Ford','Galaxy',5),(4,'Mercedes','W211',4),(5,'Opel','Astra',2);
/*!40000 ALTER TABLE `projekt_samochody` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projekt_samochody_has_projekt_mechanicy`
--

DROP TABLE IF EXISTS `projekt_samochody_has_projekt_mechanicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projekt_samochody_has_projekt_mechanicy` (
  `projekt_samochody_id_samochodu` int NOT NULL,
  `projekt_mechanicy_id_mechanika` int NOT NULL,
  PRIMARY KEY (`projekt_samochody_id_samochodu`,`projekt_mechanicy_id_mechanika`),
  KEY `fk_projekt_samochody_has_projekt_mechanicy_projekt_mechanic_idx` (`projekt_mechanicy_id_mechanika`),
  KEY `fk_projekt_samochody_has_projekt_mechanicy_projekt_samochod_idx` (`projekt_samochody_id_samochodu`),
  CONSTRAINT `fk_projekt_samochody_has_projekt_mechanicy_projekt_mechanicy1` FOREIGN KEY (`projekt_mechanicy_id_mechanika`) REFERENCES `projekt_mechanicy` (`id_mechanika`),
  CONSTRAINT `fk_projekt_samochody_has_projekt_mechanicy_projekt_samochody1` FOREIGN KEY (`projekt_samochody_id_samochodu`) REFERENCES `projekt_samochody` (`id_samochodu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekt_samochody_has_projekt_mechanicy`
--

LOCK TABLES `projekt_samochody_has_projekt_mechanicy` WRITE;
/*!40000 ALTER TABLE `projekt_samochody_has_projekt_mechanicy` DISABLE KEYS */;
INSERT INTO `projekt_samochody_has_projekt_mechanicy` VALUES (5,1),(4,2),(1,3),(3,4),(1,5),(2,5);
/*!40000 ALTER TABLE `projekt_samochody_has_projekt_mechanicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projekt_uslugi`
--

DROP TABLE IF EXISTS `projekt_uslugi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projekt_uslugi` (
  `id_uslugi` int NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(45) NOT NULL,
  `cena` int NOT NULL,
  `mechanicy_id_mechanika` int NOT NULL,
  `klienci_id_klienta` int NOT NULL,
  `samochody_id_samochodu` int NOT NULL,
  PRIMARY KEY (`id_uslugi`),
  KEY `fk_uslugi_mechanicy1_idx` (`mechanicy_id_mechanika`),
  KEY `fk_uslugi_klienci1_idx` (`klienci_id_klienta`),
  KEY `fk_uslugi_samochody1_idx` (`samochody_id_samochodu`),
  CONSTRAINT `fk_uslugi_klienci1` FOREIGN KEY (`klienci_id_klienta`) REFERENCES `projekt_klienci` (`id_klienta`),
  CONSTRAINT `fk_uslugi_mechanicy1` FOREIGN KEY (`mechanicy_id_mechanika`) REFERENCES `projekt_mechanicy` (`id_mechanika`),
  CONSTRAINT `fk_uslugi_samochody1` FOREIGN KEY (`samochody_id_samochodu`) REFERENCES `projekt_samochody` (`id_samochodu`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekt_uslugi`
--

LOCK TABLES `projekt_uslugi` WRITE;
/*!40000 ALTER TABLE `projekt_uslugi` DISABLE KEYS */;
INSERT INTO `projekt_uslugi` VALUES (1,'Wymiana opon',60,4,1,1),(2,'Remont silnika',5000,5,2,5),(3,'Lakierowanie samochodu',2000,1,3,2),(4,'Spawanie progow',300,2,4,4),(5,'Szpachlowanie',600,3,5,3);
/*!40000 ALTER TABLE `projekt_uslugi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projekt_uslugi_has_projekt_czesci`
--

DROP TABLE IF EXISTS `projekt_uslugi_has_projekt_czesci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projekt_uslugi_has_projekt_czesci` (
  `projekt_uslugi_id_uslugi` int NOT NULL,
  `projekt_czesci_id_czesci` int NOT NULL,
  `nazwa_uslugi` varchar(45) NOT NULL,
  `nazwa_czesci` varchar(45) NOT NULL,
  PRIMARY KEY (`projekt_uslugi_id_uslugi`,`projekt_czesci_id_czesci`),
  KEY `fk_projekt_uslugi_has_projekt_czesci_projekt_czesci1_idx` (`projekt_czesci_id_czesci`),
  KEY `fk_projekt_uslugi_has_projekt_czesci_projekt_uslugi1_idx` (`projekt_uslugi_id_uslugi`),
  CONSTRAINT `fk_projekt_uslugi_has_projekt_czesci_projekt_czesci1` FOREIGN KEY (`projekt_czesci_id_czesci`) REFERENCES `projekt_czesci` (`id_czesci`),
  CONSTRAINT `fk_projekt_uslugi_has_projekt_czesci_projekt_uslugi1` FOREIGN KEY (`projekt_uslugi_id_uslugi`) REFERENCES `projekt_uslugi` (`id_uslugi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekt_uslugi_has_projekt_czesci`
--

LOCK TABLES `projekt_uslugi_has_projekt_czesci` WRITE;
/*!40000 ALTER TABLE `projekt_uslugi_has_projekt_czesci` DISABLE KEYS */;
INSERT INTO `projekt_uslugi_has_projekt_czesci` VALUES (1,2,'Wymiana opon','opona'),(2,5,'Remont silnika','uszczelka_pod_glowica'),(2,6,'Remont silnika','blok_silnika'),(2,7,'Remont silnika','tlok'),(2,8,'Remont silnika','srubka');
/*!40000 ALTER TABLE `projekt_uslugi_has_projekt_czesci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'piotrowskit'
--

--
-- Dumping routines for database 'piotrowskit'
--
/*!50003 DROP FUNCTION IF EXISTS `ile_rodzaji_narzedzi` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`piotrowskit`@`localhost` FUNCTION `ile_rodzaji_narzedzi`() RETURNS int
BEGIN
    DECLARE ile INT;
    SELECT COUNT(ilosc) INTO @ile FROM projekt_narzedzia;
    RETURN @ile;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliksir_sily` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`piotrowskit`@`localhost` PROCEDURE `eliksir_sily`(IN id int)
BEGIN
Update kreatura set udzwig = 0.2 * udzwig where id_kreatury = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `znizka` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`piotrowskit`@`localhost` PROCEDURE `znizka`(IN id int)
BEGIN
Update projekt_czesci set cena = 0.5 * cena where id_czesci=id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-20 23:48:50
