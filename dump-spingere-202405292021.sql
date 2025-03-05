-- MariaDB dump 10.19-11.3.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: spingere
-- ------------------------------------------------------
-- Server version	11.3.2-MariaDB

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
-- Table structure for table `autore`
--

DROP TABLE IF EXISTS `autore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autore` (
  `Cod_creat` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Cognome` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Nazionalita` enum('Afgana','Albanese','Algerina','Andorrana','Angolana','Antiguana e Barbudana','Araba Saudita','Argentina','Armena','Australiana','Austriaca','Azera','Bahamiana','Bahremita','Bangladese','Barbadiana','Belarussa','Belga','Belizegna','Beninese','Bhutanese','Birmana','Boliviana','Bosniaca','Botswana','Brasiliana','Britannica','Bruneiana','Bulgara','Burkinabé','Burundese','Caboverdiana','Cambogiana','Camerunense','Canadese','Capo Verde','Catalana','Centrafricana','Ceca','Cilena','Cinese','Cipriota','Colombiana','Comoriana','Congolese (Brazzaville)','Congolese (Kinshasa)','Coreana del Nord','Coreana del Sud','Costaricana','Croata','Cubana','Dominicana','Ecuadoriana','Egiziana','El Salvadoriana','Emiratina','Equatoguineana','Eritrea','Estone','Etiope','Fijiana','Filippina','Finlandese','Francese','Gabonese','Gambiana','Georgiana','Germanica','Ghanese','Giamaicana','Giapponese','Giordana','Greca','Grenadina','Guatemalteca','Guineana','Guineana-Bissau','Haitiana','Honduregna','Indiana','Indonesiana','Iraniana','Irachena','Irlandese','Islandese','Israeliana','Italiana','Ivoriana','Kazaka','Keniota','Kirghiza','Kiribatese','Kosovana','Kuwaitiana','Laotiana','Latviana','Libanese','Lesothiana','Liberiana','Libica','Liechtensteiniana','Lituana','Lussemburghese','Macedone','Madagascariana','Malawiana','Malese','Maldiviana','Malinese','Maltese','Marocchina','Marshallese','Martinicana','Mauritana','Mauriziana','Messicana','Micronesiana','Moldava','Monegasca','Mongola','Montenegrina','Mozambicana','Namibiana','Nauruana','Nepalese','Nicaraguense','Nigerina','Nigeriana','Nordirlandese','Norvegese','Neozelandese','Omanita','Olandese','Pakistanese','Palauana','Palestinese','Panamense','Papua Nuova Guineana','Paraguaiana','Peruviana','Rumena','Russa','Ruandese','Sammarinese','Santa Luciana','Santomense','Saotomense','Saudita','Scozzese','Senegalese','Serba','Seychellese','Sierraleonese','Singaporiana','Siriana','Slovacca','Slovena','Somala','Spagnola','Srilankese','Statunitense','Sudafricana','Sudcoreana','Sudanese','Surinamese','Svedese','Svizzera','Tagica','Tanzaniana','Thailandese','Togolese','Tonganese','Trinidadiana e Tobagense','Tunisina','Turca','Turkmena','Tuvaluana','Ucraina','Ugandese','Ungherese','Uruguaiana','Uzbeka','Vanuatuana','Vaticana','Venezuelana','Vietnamita','Yemenita','Zambiana','Zimbabweana') CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Eta` int(10) unsigned NOT NULL,
  `Data_nascita` date NOT NULL,
  `Nome_arte` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`Cod_creat`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autore`
--

LOCK TABLES `autore` WRITE;
/*!40000 ALTER TABLE `autore` DISABLE KEYS */;
INSERT INTO `autore` VALUES
(1,'Hwang','Dong-hyuk','Sudcoreana',53,'1971-05-23',NULL),
(2,'Jonas','Pate','Statunitense',54,'1970-01-15',NULL),
(3,'Skye','Borgman','Statunitense',50,'1973-09-23',NULL),
(4,'Kyle','Killen','Statunitense',43,'1980-11-28',NULL),
(5,'Lee','Cronin','Irlandese',50,'1973-06-25',NULL);
/*!40000 ALTER TABLE `autore` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 */ /*!50003 TRIGGER insert_autore_check
BEFORE insert ON Autore
FOR EACH ROW
BEGIN
    IF ((NEW.Eta!=(year(current_date())- year(new.Data_nascita)) and month(current_date())>=month(new.Data_nascita) and day(current_date())>day(new.Data_nascita)) or 
       (NEW.Eta!=(year(current_date())- year(new.Data_nascita)-1) and month(current_date())<=month(new.Data_nascita) and day(current_date())<day(new.Data_nascita))) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Età e data di nascita inserite non corrispondono';
    END IF;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `ID_genere` int(10) unsigned NOT NULL,
  `Cod_video` int(10) unsigned NOT NULL,
  KEY `categoria_genere_FK` (`ID_genere`),
  KEY `categoria_video_FK` (`Cod_video`),
  CONSTRAINT `categoria_genere_FK` FOREIGN KEY (`ID_genere`) REFERENCES `genere` (`ID_genere`),
  CONSTRAINT `categoria_video_FK` FOREIGN KEY (`Cod_video`) REFERENCES `video` (`Cod_video`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES
(2,1),
(1,2),
(3,3),
(1,4),
(2,5),
(2,6),
(4,7),
(5,8);
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genere`
--

DROP TABLE IF EXISTS `genere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genere` (
  `ID_genere` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nome` enum('azione','animazione','avventura','biografico','commedia','crime','documentario','drama','epico','fantascienza','fantasy','guerra','horror','musical','mistero','politico','psicologico','romantico','sportivo','thriller','western') CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`ID_genere`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genere`
--

LOCK TABLES `genere` WRITE;
/*!40000 ALTER TABLE `genere` DISABLE KEYS */;
INSERT INTO `genere` VALUES
(1,'avventura'),
(2,'azione'),
(3,'documentario'),
(4,'horror'),
(5,'crime');
/*!40000 ALTER TABLE `genere` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamento`
--

DROP TABLE IF EXISTS `pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagamento` (
  `ID_pag` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Username` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Costo` decimal(4,2) NOT NULL,
  `Data` date NOT NULL,
  PRIMARY KEY (`ID_pag`),
  KEY `pagamento_utente_FK` (`Username`),
  CONSTRAINT `pagamento_utente_FK` FOREIGN KEY (`Username`) REFERENCES `utente` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamento`
--

LOCK TABLES `pagamento` WRITE;
/*!40000 ALTER TABLE `pagamento` DISABLE KEYS */;
INSERT INTO `pagamento` VALUES
(0,'lunaDB',3.99,'2024-04-25'),
(1,'marioDB',3.99,'2024-05-09'),
(2,'lunaDB',3.99,'2024-05-27'),
(3,'lunaDB',3.99,'2024-06-27'),
(4,'lunaDB',9.99,'2024-07-27'),
(5,'lunaDB',9.99,'2024-08-27'),
(6,'lunaDB',9.99,'2024-09-27'),
(7,'lunaDB',9.99,'2024-10-27'),
(8,'lunaDB',9.99,'2024-11-27'),
(9,'lunaDB',9.99,'2024-12-27'),
(10,'lunaDB',9.99,'2025-01-27'),
(11,'lunaDB',9.99,'2025-02-27'),
(12,'lunaDB',9.99,'2025-03-27'),
(13,'lunaDB',9.99,'2025-04-27');
/*!40000 ALTER TABLE `pagamento` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 */ /*!50003 TRIGGER cont_pag_check
before insert ON pagamento
FOR EACH ROW
begin
	if((year(new.`Data`), month(new.`Data`)) in (select year(`Data`), month(`Data`) from pagamento p where p.Username=new.Username)) then
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Non puoi effettuare più pagamenti nello stesso mese';
    END IF;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 */ /*!50003 TRIGGER costo_check
before insert ON pagamento
FOR EACH row
begin
	declare dat date;
	declare cont int;
	select Data_premium into dat from utente u where u.Username=new.Username;
	select count(*) into cont from pagamento p where p.Username=new.Username and p.`Data`>=dat;
	if(cont<3 and new.Costo!=3.99) then 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nei primi tre mesi il costo è di 3,99€';
	end if;
	if(cont>=3 and new.Costo!=9.99) then 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Dopo i primi tre mesi il costo è di 9,99€';
	end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `spingere` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 */ /*!50003 TRIGGER premium
AFTER INSERT
ON pagamento FOR EACH row
begin
	update utente
	set Premium=1, Data_premium=new.`Data`
	where Premium=0 and new.Username=utente.Username;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `spingere` CHARACTER SET latin1 COLLATE latin1_bin ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 */ /*!50003 TRIGGER upg_gold
after insert ON pagamento
FOR EACH ROW
begin 
	declare dat date;
	declare cont int;
	select Data_premium into dat from utente u where u.Username=new.Username;
	select count(*) into cont from pagamento p where p.Username=new.Username and p.`Data`>=dat;
	if(cont=13) then
		update utente 
		set utente.Gold=true
		where new.Username=utente.Username;
	end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `scaricare`
--

DROP TABLE IF EXISTS `scaricare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scaricare` (
  `Cod_video` int(10) unsigned NOT NULL,
  `Username` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Data` date NOT NULL,
  KEY `scaricare_video_FK` (`Cod_video`),
  KEY `scaricare_utente_FK` (`Username`),
  CONSTRAINT `scaricare_utente_FK` FOREIGN KEY (`Username`) REFERENCES `utente` (`Username`),
  CONSTRAINT `scaricare_video_FK` FOREIGN KEY (`Cod_video`) REFERENCES `video` (`Cod_video`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scaricare`
--

LOCK TABLES `scaricare` WRITE;
/*!40000 ALTER TABLE `scaricare` DISABLE KEYS */;
INSERT INTO `scaricare` VALUES
(2,'lunaDB','2024-01-03'),
(1,'lunaDB','2024-01-05'),
(3,'lunaDB','2024-01-06'),
(4,'lunaDB','2024-01-10'),
(5,'lunaDB','2024-01-15'),
(6,'lunaDB','2024-01-20'),
(7,'lunaDB','2024-01-24'),
(8,'lunaDB','2024-01-30');
/*!40000 ALTER TABLE `scaricare` ENABLE KEYS */;
UNLOCK TABLES;
ALTER DATABASE `spingere` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 */ /*!50003 TRIGGER inc_num_download
AFTER insert ON scaricare
FOR EACH ROW
begin 
	update utente
	set Num_download=Num_download+1
	where new.Username=utente.Username;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `spingere` CHARACTER SET latin1 COLLATE latin1_bin ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 */ /*!50003 TRIGGER dec_num_download
after delete ON scaricare
FOR EACH ROW
begin 
	update utente
	set Num_download=Num_download-1
	where Username=utente.Username;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `serie`
--

DROP TABLE IF EXISTS `serie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serie` (
  `Titolo_serie` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Data_ep1` date DEFAULT NULL,
  `Lavorazione` enum('In corso','Terminato') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Classificazione` enum('Per tutti','Per adulti') CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`Titolo_serie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serie`
--

LOCK TABLES `serie` WRITE;
/*!40000 ALTER TABLE `serie` DISABLE KEYS */;
INSERT INTO `serie` VALUES
('Acquarius','2015-05-28','Terminato','Per tutti'),
('Halo','2022-03-24','In corso','Per adulti'),
('Outer Banks','2020-04-15','Terminato','Per adulti'),
('Squid Game','2021-09-17','In corso','Per adulti');
/*!40000 ALTER TABLE `serie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utente`
--

DROP TABLE IF EXISTS `utente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utente` (
  `Username` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Password` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Nome` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Cognome` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Nazionalita` enum('Afgana','Albanese','Algerina','Andorrana','Angolana','Antiguana e Barbudana','Araba Saudita','Argentina','Armena','Australiana','Austriaca','Azera','Bahamiana','Bahremita','Bangladese','Barbadiana','Belarussa','Belga','Belizegna','Beninese','Bhutanese','Birmana','Boliviana','Bosniaca','Botswana','Brasiliana','Britannica','Bruneiana','Bulgara','Burkinabé','Burundese','Caboverdiana','Cambogiana','Camerunense','Canadese','Capo Verde','Catalana','Centrafricana','Ceca','Cilena','Cinese','Cipriota','Colombiana','Comoriana','Congolese (Brazzaville)','Congolese (Kinshasa)','Coreana del Nord','Coreana del Sud','Costaricana','Croata','Cubana','Dominicana','Ecuadoriana','Egiziana','El Salvadoriana','Emiratina','Equatoguineana','Eritrea','Estone','Etiope','Fijiana','Filippina','Finlandese','Francese','Gabonese','Gambiana','Georgiana','Germanica','Ghanese','Giamaicana','Giapponese','Giordana','Greca','Grenadina','Guatemalteca','Guineana','Guineana-Bissau','Haitiana','Honduregna','Indiana','Indonesiana','Iraniana','Irachena','Irlandese','Islandese','Israeliana','Italiana','Ivoriana','Kazaka','Keniota','Kirghiza','Kiribatese','Kosovana','Kuwaitiana','Laotiana','Latviana','Libanese','Lesothiana','Liberiana','Libica','Liechtensteiniana','Lituana','Lussemburghese','Macedone','Madagascariana','Malawiana','Malese','Maldiviana','Malinese','Maltese','Marocchina','Marshallese','Martinicana','Mauritana','Mauriziana','Messicana','Micronesiana','Moldava','Monegasca','Mongola','Montenegrina','Mozambicana','Namibiana','Nauruana','Nepalese','Nicaraguense','Nigerina','Nigeriana','Nordirlandese','Norvegese','Neozelandese','Omanita','Olandese','Pakistanese','Palauana','Palestinese','Panamense','Papua Nuova Guineana','Paraguaiana','Peruviana','Rumena','Russa','Ruandese','Sammarinese','Santa Luciana','Santomense','Saotomense','Saudita','Scozzese','Senegalese','Serba','Seychellese','Sierraleonese','Singaporiana','Siriana','Slovacca','Slovena','Somala','Spagnola','Srilankese','Statunitense','Sudafricana','Sudcoreana','Sudanese','Surinamese','Svedese','Svizzera','Tagica','Tanzaniana','Thailandese','Togolese','Tonganese','Trinidadiana e Tobagense','Tunisina','Turca','Turkmena','Tuvaluana','Ucraina','Ugandese','Ungherese','Uruguaiana','Uzbeka','Vanuatuana','Vaticana','Venezuelana','Vietnamita','Yemenita','Zambiana','Zimbabweana') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Eta` int(10) unsigned NOT NULL DEFAULT 18,
  `Data_nascita` date NOT NULL,
  `Premium` tinyint(1) NOT NULL DEFAULT 0,
  `Data_premium` date DEFAULT NULL,
  `Gold` tinyint(1) NOT NULL DEFAULT 0,
  `Email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Num_download` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`Username`),
  UNIQUE KEY `email_unique` (`Email`),
  CONSTRAINT `pass_check` CHECK (octet_length(`Password`) >= 8 and octet_length(`Password`) <= 16 and cast(`Password` as char charset binary) regexp '[a-z]+' and cast(`Password` as char charset binary) regexp '[A-Z]+'),
  CONSTRAINT `email_check` CHECK (cast(`Email` as char charset binary) regexp '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$')
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utente`
--

LOCK TABLES `utente` WRITE;
/*!40000 ALTER TABLE `utente` DISABLE KEYS */;
INSERT INTO `utente` VALUES
('frankDB','111Frank111','Frank','Smith','Statunitense',28,'1996-03-26',0,NULL,0,'frank96@libero.it',0),
('lunaDB','Luna1982','Luna','Verdi','Italiana',42,'1982-01-11',1,'2024-04-25',1,'luna.db@gmail.com',8),
('marioDB','Datamario','Mario','Jones','Britannica',21,'2003-04-21',1,'2024-05-09',0,'mariodb@hotmail.com',0);
/*!40000 ALTER TABLE `utente` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 */ /*!50003 TRIGGER insert_utente_check
BEFORE insert ON Utente
FOR EACH ROW
BEGIN
    IF (NEW.Premium<new.Gold) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Se un utente è gold deve essere obbligatoriamente premium';
    END IF;
    IF (NEW.Gold>1 or new.Premium>1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Un valore booleano accetta solo 0 o 1';
    END IF;
    IF (new.Premium=true and new.Data_premium is NULL) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Un utente non può essere premium se non ha effettuato almeno un pagamento';
    END IF;
    IF ((NEW.Premium=false or new.Gold=false) and new.Num_download!=0) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Un utente non gold non può effettuare download di contenuti';
    END IF;
    IF (NEW.Gold=true and new.Num_download>10) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Un utente gold non può effettuare più di 10 download in un mese';
    END IF;
    IF (NEW.Eta<18) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Devi avere un età minima di 18 anni per poterti registrare';
    END IF;
    IF ((NEW.Eta!=(year(current_date())- year(new.Data_nascita)) and month(current_date())>=month(new.Data_nascita) and day(current_date())>day(new.Data_nascita)) or 
       (NEW.Eta!=(year(current_date())- year(new.Data_nascita)-1) and month(current_date())<=month(new.Data_nascita) and day(current_date())<day(new.Data_nascita))) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Età e data di nascita inserite non corrispondono';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 */ /*!50003 TRIGGER update_utente_check
BEFORE update ON Utente
FOR EACH ROW
begin
	IF (old.Gold=true and new.Premium=false) THEN 
        set new.Gold=false;
       	set new.Data_premium=null;
       	set new.Num_download=0;
       	delete from scaricare where scaricare.Username=new.Username;
    END IF;
   	IF (old.Gold=true and new.Gold=false) THEN 
        set new.Gold=false;
       	set new.Num_download=0;
       	delete from scaricare where scaricare.Username=new.Username;
    END IF;
    IF (NEW.Premium<new.Gold) THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Se un utente è gold deve essere obbligatoriamente premium';
    END IF;
    IF (NEW.Gold>1 or new.Premium>1) THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Un valore booleano accetta solo 0 o 1';
    END IF;
    IF (new.Premium=true and new.Data_premium is NULL) THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Un utente non può essere premium se non ha effettuato almeno un pagamento';
    END IF;
    IF ((NEW.Premium=false or new.Gold=false) and new.Num_download!=0) THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Un utente non gold non può effettuare download di contenuti';
    END IF;
    IF ((NEW.Gold=true) and(new.Num_download<0 or new.Num_download>10)) THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Un utente gold non può effettuare più di 10 download in un mese';
    END if;
    IF (NEW.Eta<18) THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Devi avere un età minima di 18 anni per poterti registrare';
    END IF;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video` (
  `Cod_video` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Cod_creat` int(10) unsigned DEFAULT NULL,
  `Titolo_serie` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Titolo` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `èEpisodio` tinyint(1) NOT NULL DEFAULT 0,
  `Data` date NOT NULL,
  `Link` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Durata` int(10) unsigned NOT NULL,
  `Classificazione` enum('Per tutti','Per adulti') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Accesso` enum('Base','Premium') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Numero` int(10) unsigned DEFAULT NULL,
  `#stagione` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`Cod_video`),
  UNIQUE KEY `video_unique` (`Link`),
  KEY `video_autore_FK` (`Cod_creat`),
  KEY `video_serie_FK` (`Titolo_serie`),
  CONSTRAINT `video_autore_FK` FOREIGN KEY (`Cod_creat`) REFERENCES `autore` (`Cod_creat`),
  CONSTRAINT `video_serie_FK` FOREIGN KEY (`Titolo_serie`) REFERENCES `serie` (`Titolo_serie`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES
(1,1,'Squid Game','Un, due, tre, stella',1,'2021-09-17','https://www.imdb.com/title/tt11979940/',59,'Per adulti','Base',1,1),
(2,2,'Outer Banks','Pilot',1,'2020-04-15','https://www.imdb.com/title/tt10293940/',54,'Per adulti','Premium',1,1),
(3,3,NULL,'La ragazza nella foto',0,'2022-07-06','https://www.imdb.com/title/tt21059520/',102,'Per tutti','Base',NULL,NULL),
(4,1,NULL,'The Fortress',0,'2017-10-03','https://www.imdb.com/title/tt7160176/',140,'Per tutti','Premium',NULL,NULL),
(5,4,'Halo','Contatto',1,'2022-03-24','https://www.imdb.com/title/tt8631904/',59,'Per adulti','Base',1,1),
(6,1,'Squid Game','Inferno',1,'2021-09-17','https://www.imdb.com/title/tt15215362/',62,'Per adulti','Base',2,1),
(7,5,NULL,'La casa – Il risveglio del male',0,'2023-04-21','https://www.imdb.com/title/tt13345606/',97,'Per tutti','Base',NULL,NULL),
(8,2,'Acquarius','Via da casa',1,'2015-05-28','https://www.imdb.com/title/tt3869514/',43,'Per tutti','Base',1,1);
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;
ALTER DATABASE `spingere` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 */ /*!50003 TRIGGER insert_episode_check
BEFORE INSERT ON Video
FOR EACH ROW
BEGIN
    IF (NEW.Titolo_serie IS NOT NULL AND NEW.èEpisodio =false) THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Se un video è associato ad una serie, il campo èEpisodio deve essere TRUE.';
    END IF;
    IF (NEW.Titolo_serie IS NULL AND NEW.èEpisodio=true) THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Se un video non è associato ad una serie, il campo èEpisodio deve essere FALSE.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `spingere` CHARACTER SET latin1 COLLATE latin1_bin ;
ALTER DATABASE `spingere` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 */ /*!50003 TRIGGER inc_video_lunghi
AFTER INSERT
ON video FOR EACH row
begin 
	if new.Durata>=120 then 
	update videolunghi 
	set Contatore=Contatore+1;
	end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `spingere` CHARACTER SET latin1 COLLATE latin1_bin ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 */ /*!50003 TRIGGER insert_episode_1_check
AFTER insert ON video
FOR EACH ROW
begin
	if(new.Numero=1 and new.`#stagione`=1) then
		update serie
		set Data_ep1=new.`Data`
		where serie.Titolo_serie=new.Titolo_serie;
	end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 */ /*!50003 TRIGGER access_serie
AFTER INSERT
ON video FOR EACH ROW
begin
	declare serie_class enum('Per tutti','Per adulti');
	select s.Classificazione into serie_class from serie s where new.Titolo_serie=s.Titolo_serie;
	if (serie_class is null) or (serie_class!=new.Classificazione and new.Classificazione='Per adulti') then 
		update serie
		set serie.Classificazione=new.Classificazione
		where new.Titolo_serie = serie.Titolo_serie;
	end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `spingere` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 */ /*!50003 TRIGGER update_episode_check
BEFORE UPDATE ON Video
FOR EACH ROW
BEGIN
    IF (NEW.Titolo_serie IS NOT NULL AND NEW.èEpisodio =false) THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Se un video è associato ad una serie, il campo èEpisodio deve essere TRUE.';
    END IF;
    IF (NEW.Titolo_serie IS NULL AND NEW.èEpisodio=true) THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Se un video non è associato ad una serie, il campo èEpisodio deve essere FALSE.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `spingere` CHARACTER SET latin1 COLLATE latin1_bin ;
ALTER DATABASE `spingere` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 */ /*!50003 TRIGGER upd_video_lunghi
AFTER UPDATE
ON video FOR EACH ROW
begin 
	if (old.Durata<120 and new.Durata>=120) then 
		update videolunghi 
		set Contatore=Contatore+1;
	elseif (old.Durata>=120 and new.Durata<120) then
		update videolunghi 
		set Contatore=Contatore-1;
	end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `spingere` CHARACTER SET latin1 COLLATE latin1_bin ;
ALTER DATABASE `spingere` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 */ /*!50003 TRIGGER dec_video_lunghi
AFTER DELETE
ON video FOR EACH ROW
begin 
	if old.Durata>=120 then 
	update videolunghi 
	set Contatore=Contatore-1;
	end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `spingere` CHARACTER SET latin1 COLLATE latin1_bin ;

--
-- Table structure for table `videolunghi`
--

DROP TABLE IF EXISTS `videolunghi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videolunghi` (
  `Contatore` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videolunghi`
--

LOCK TABLES `videolunghi` WRITE;
/*!40000 ALTER TABLE `videolunghi` DISABLE KEYS */;
INSERT INTO `videolunghi` VALUES
(1);
/*!40000 ALTER TABLE `videolunghi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visualizzare`
--

DROP TABLE IF EXISTS `visualizzare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visualizzare` (
  `Cod_video` int(10) unsigned NOT NULL,
  `Username` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Data` date NOT NULL,
  KEY `visualizzare_video_FK` (`Cod_video`),
  KEY `visualizzare_utente_FK` (`Username`),
  CONSTRAINT `visualizzare_utente_FK` FOREIGN KEY (`Username`) REFERENCES `utente` (`Username`),
  CONSTRAINT `visualizzare_video_FK` FOREIGN KEY (`Cod_video`) REFERENCES `video` (`Cod_video`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visualizzare`
--

LOCK TABLES `visualizzare` WRITE;
/*!40000 ALTER TABLE `visualizzare` DISABLE KEYS */;
INSERT INTO `visualizzare` VALUES
(3,'lunaDB','2024-03-05'),
(3,'lunaDB','2024-03-06'),
(3,'lunaDB','2024-03-07'),
(3,'marioDB','2024-03-08'),
(3,'lunaDB','2024-03-09'),
(3,'lunaDB','2024-03-10'),
(3,'marioDB','2024-03-11'),
(3,'lunaDB','2024-03-12'),
(3,'marioDB','2024-03-13'),
(3,'lunaDB','2024-03-14'),
(1,'lunaDB','2024-03-15'),
(6,'marioDB','2024-03-16'),
(6,'lunaDB','2024-03-16'),
(7,'lunaDB','2024-03-17'),
(7,'lunaDB','2024-03-18'),
(7,'marioDB','2024-03-18'),
(5,'marioDB','2024-03-21'),
(7,'lunaDB','2024-03-19'),
(7,'lunaDB','2024-03-20'),
(7,'marioDB','2024-03-20');
/*!40000 ALTER TABLE `visualizzare` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 */ /*!50003 TRIGGER base_premium_check
before insert ON visualizzare
FOR EACH row
begin
	declare acc enum('Base','Premium');
	declare p boolean;
	select Accesso into acc from Video v where new.Cod_video=v.Cod_video;
	select Premium into p from Utente u where new.Username=u.Username;
	if(acc='Premium' and p=false) then 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Non è possibile visualizzare contenuti premium se si ha accesso base';
	end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping routines for database 'spingere'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeclassaPremium` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE  PROCEDURE `DeclassaPremium`()
begin
	DECLARE done INT default 0;
    DECLARE g boolean;
    DECLARE d date;
    DECLARE currentUser VARCHAR(100); # Assumo che Username sia VARCHAR(50)
    DECLARE cur CURSOR for #il cursore scorre ogni risultato della query sottostante
		SELECT u.Username, u.Gold, max(p.`Data`)
		FROM utente u, pagamento p 
		WHERE u.Premium = true and u.Username=p.Username
		GROUP BY u.Username;
   	DECLARE CONTINUE HANDLER FOR SQLSTATE '02000'
    	SET done = 1;

    OPEN cur; #il cursore esegue i risultati e li memorizza
    FETCH cur INTO currentUser, g, d; #il cursore preleva i risultati uno alla volta

    read_loop: WHILE NOT done DO
        IF g=true AND d < LAST_Day(NOW() - INTERVAL 1 month) THEN
            UPDATE utente
            SET Premium=false, Gold=false, Data_premium=null, Num_download=0
            WHERE Username = currentUser;
            DELETE FROM scaricare WHERE Username = currentUser;
        END IF;
       	if g=false AND d < LAST_Day(NOW() - INTERVAL 1 month) THEN
            UPDATE utente
            SET Premium=false, Data_premium=null
            WHERE Username = currentUser;
        END IF;
       	FETCH cur INTO currentUser, g, d; #il cursore preleva i risultati uno alla volta
    END WHILE read_loop;
    CLOSE cur; #chiude il cursore
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `inc_eta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE  PROCEDURE `inc_eta`()
begin
	UPDATE utente
    SET Eta = Eta + 1
   	where month(current_date())=month(Data_nascita) and day(current_date())=day(Data_nascita);
   
   	UPDATE Autore
  	SET Eta = Eta + 1
  	where month(current_date())=month(Data_nascita) and day(current_date())=day(Data_nascita);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ResetDownloadCounter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE  PROCEDURE `ResetDownloadCounter`()
begin
	UPDATE utente
    SET Num_download = 0;
   	delete from scaricare;
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

-- Dump completed on 2024-05-29 20:21:44
