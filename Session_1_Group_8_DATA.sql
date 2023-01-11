CREATE DATABASE  IF NOT EXISTS `freshfood` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `freshfood`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: freshfood
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
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employee` (
  `Employee_ID` varchar(50) NOT NULL,
  `First_Name` varchar(50) DEFAULT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Position_ID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Employee_ID`),
  KEY `FK_EmpPos` (`Position_ID`),
  CONSTRAINT `FK_EmpPos` FOREIGN KEY (`Position_ID`) REFERENCES `Positions` (`Position_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES ('EMP1','NANCY','SMITH','1964-02-05','NANCYSMITH@GMAIL.COM','P1'),('EMP10','SERENA','WHITE','1997-12-14','SERENAWHITE@GMAIL.COM','P7'),('EMP11','ANA','LEE','1998-04-02','ANALEE@GMAIL.COM','P7'),('EMP12','DAVID','JACKSON','1988-10-23','DAVIDJACKSON@GMAIL.COM','P8'),('EMP13','JOHN','PARK','1980-08-04','JOHNPARK@GMAIL.COM','P7'),('EMP14','EDWARD','WALKER','1980-04-12','EDWARDWALKER@GMAIL.COM','P8'),('EMP15','ANGEL','ROBINSON','1960-04-12','ANGELROBINSON@GMAIL.COM','P2'),('EMP16','JESUS','WHITE','1996-08-07','JESUSWHITE@GMAIL.COM','P3'),('EMP17','EMMANUEL','TAYLOR','1996-07-12','EMMANUELTAYLOR@GMAIL.COM','P7'),('EMP18','KAREN','PAYNE','2003-12-25','KARENPAYNE@GMAIL.COM','P9'),('EMP19','JOSH','STYLES','2002-11-12','JOSHSTYLES@GMAIL.COM','P7'),('EMP2','DAVID','JOHNSON','1950-12-12','DAVIDJOHNSON@GMAIL.COM','P1'),('EMP20','DRAKE','SHAY','1999-06-30','DRAKESHAY@GMAIL.COM','P4'),('EMP21','CARLA','ANISTON','2005-07-01','CARLAANISTON@GMAIL.COM','P7'),('EMP22','EMMA','PARK','1980-08-17','EMMA PARK@GMAIL.COM','P7'),('EMP23','NICOLE','DAVIS','2000-04-05','NICOLEDAVIS@GMAIL.COM','P7'),('EMP24','GRAYSON','GARCIA','1988-06-18','GRAYSONGARCIA@GMAIL.COM','P4'),('EMP25','ELVIS','LEWIS','1994-10-09','ELVISLEWIS@GMAIL.COM','P7'),('EMP26','FREDERICK','WALKER','1950-12-12','FREDERICKWALKER@GMAIL.COM','P2'),('EMP27','ALEXA','HARRIS','1980-05-12','ALEXAHARRIS@GMAIL.COM','P8'),('EMP28','MARY','ALLEN','1999-04-04','MARYALLEN@GMAIL.COM','P8'),('EMP29','ROBERT','YOUNG','1987-02-08','ROBERTYOUNG@GMAIL.COM','P7'),('EMP3','ELLEN','GARCIA','1980-05-12','ELLENGARCIA@GMAIL.COM','P7'),('EMP30','WILLIAM','HILL','1993-07-22','WILLIAMHILL@GMAIL.COM','P8'),('EMP31','DAVID','FLORES','1996-04-28','DAVIDFLORES@GMAIL.COM','P8'),('EMP32','JANE','NELSON','2001-06-29','JANENELSON@GMAIL.COM','P7'),('EMP33','VERONICA','CARTER','1993-07-25','VERONICACARTER@GMAIL.COM','P8'),('EMP34','KARINA','SMITH','1964-02-05','KARINASMITH@GMAIL.COM','P3'),('EMP35','STEPHANIE','COOK','1950-12-12','STEPHANIECOOK@GMAIL.COM','P7'),('EMP36','NANCY','MURPHY','1980-05-12','NANCYMURPHY@GMAIL.COM','P7'),('EMP37','MARGARET','MORGAN','1999-04-04','MARGARETMORGAN@GMAIL.COM','P6'),('EMP38','STEPHANIE','ORTIZ','1987-02-08','STEPHANIEORTIZ@GMAIL.COM','P8'),('EMP39','DIANA','KIM','1989-03-08','DIANAKIM@GMAIL.COM','P7'),('EMP4','MICHAEL','WILLIAMS','1999-04-04','MICHAELWILLIAMS@GMAIL.COM','P7'),('EMP40','BROCK','COX','1960-10-10','BROCKCOX@GMAIL.COM','P7'),('EMP41','ELISA','WARD','2001-08-07','ELISAWARD@GMAIL.COM','P9'),('EMP42','CHAD','GRAY','2002-06-12','CHADGRAY@GMAIL.COM','P3'),('EMP43','LOUIS','RUIZ','1997-12-14','LOUISRUIZ@GMAIL.COM','P7'),('EMP44','GILBERT','ROSS','1998-04-02','GILBERTROSS@GMAIL.COM','P7'),('EMP45','ANA','PARK','2005-11-06','ANAPARK@GMAIL.COM','P7'),('EMP46','LISA','SANDERS','2000-03-06','LISASANDERS@GMAIL.COM','P5'),('EMP47','JENNIFER','FOSTER','2001-12-31','JENNIFERFOSTER@GMAIL.COM','P7'),('EMP48','JULIA','BAILEY','1996-07-12','JULIABAILEY@GMAIL.COM','P9'),('EMP49','SARA','COOPER','2003-12-25','SARACOOPER@GMAIL.COM','P7'),('EMP5','ROSS','WILSON','1987-02-08','ROSSWILSON@GMAIL.COM','P8'),('EMP50','KIMBERLY','STEWARD','2002-11-12','KIMBERLYSTEWARD@GMAIL.COM','P8'),('EMP6','ANA','THOMAS','1989-03-08','ANATHOMAS@GMAIL.COM','P7'),('EMP7','LIAM','LOPEZ','1960-10-10','LIAMLOPEZ@GMAIL.COM','P10'),('EMP8','HARRY','SMITH','2001-08-07','HARRYSMITH@GMAIL.COM','P5'),('EMP9','TAYLOR','MARTIN','2002-06-12','TAYLORMARTIN@GMAIL.COM','P7');
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee_Phone`
--

DROP TABLE IF EXISTS `Employee_Phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employee_Phone` (
  `Employee_ID` varchar(50) NOT NULL,
  `Phone_Number` varchar(50) NOT NULL,
  PRIMARY KEY (`Employee_ID`,`Phone_Number`),
  CONSTRAINT `FK_EmpPhone` FOREIGN KEY (`Employee_ID`) REFERENCES `Employee` (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee_Phone`
--

LOCK TABLES `Employee_Phone` WRITE;
/*!40000 ALTER TABLE `Employee_Phone` DISABLE KEYS */;
INSERT INTO `Employee_Phone` VALUES ('EMP1','8430817145\r'),('EMP10','7330733023\r'),('EMP11','3516102281\r'),('EMP12','9241019595\r'),('EMP13','4358418955\r'),('EMP13','6632563254\r'),('EMP14','8825423802\r'),('EMP15','8104024868\r'),('EMP16','1845142705\r'),('EMP17','4455632594\r'),('EMP17','4561098161\r'),('EMP18','2029941719\r'),('EMP19','1356850700\r'),('EMP2','1813318082\r'),('EMP2','7652253598\r'),('EMP20','3890090908\r'),('EMP21','8769530267\r'),('EMP22','6975842400\r'),('EMP23','4290373044\r'),('EMP24','7453720469\r'),('EMP25','7878308729\r'),('EMP26','4058270203\r'),('EMP27','3381044057\r'),('EMP28','7369562104\r'),('EMP29','6558609764\r'),('EMP3','4569694854\r'),('EMP30','8915967808\r'),('EMP31','4102652456\r'),('EMP32','1919661812\r'),('EMP33','4149286491\r'),('EMP34','2563695547\r'),('EMP34','6317991907\r'),('EMP35','5844137678\r'),('EMP36','7149447137\r'),('EMP37','2060932279\r'),('EMP38','1993112322\r'),('EMP39','2901269679\r'),('EMP4','1724987686\r'),('EMP40','6219696020\r'),('EMP41','3388532860\r'),('EMP42','2392000019\r'),('EMP43','1826257333\r'),('EMP44','7321521444\r'),('EMP45','2755360468\r'),('EMP46','5936840400\r'),('EMP47','2102239295\r'),('EMP48','1478650495\r'),('EMP49','8431585698\r'),('EMP5','6657482444\r'),('EMP50','7730779077'),('EMP6','8235559709\r'),('EMP7','2346094800\r'),('EMP8','5606452604\r'),('EMP9','5552634587\r'),('EMP9','8827116317\r');
/*!40000 ALTER TABLE `Employee_Phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee_Shift`
--

DROP TABLE IF EXISTS `Employee_Shift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employee_Shift` (
  `Employee_ID` varchar(50) NOT NULL,
  `Shift_ID` varchar(50) NOT NULL,
  PRIMARY KEY (`Employee_ID`,`Shift_ID`),
  KEY `FK_ShiftE` (`Shift_ID`),
  CONSTRAINT `FK_EmpS` FOREIGN KEY (`Employee_ID`) REFERENCES `Employee` (`Employee_ID`),
  CONSTRAINT `FK_ShiftE` FOREIGN KEY (`Shift_ID`) REFERENCES `Shift` (`Shift_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee_Shift`
--

LOCK TABLES `Employee_Shift` WRITE;
/*!40000 ALTER TABLE `Employee_Shift` DISABLE KEYS */;
INSERT INTO `Employee_Shift` VALUES ('EMP1','S1'),('EMP10','S1'),('EMP23','S1'),('EMP24','S1'),('EMP27','S1'),('EMP29','S1'),('EMP3','S1'),('EMP49','S1'),('EMP8','S1'),('EMP9','S1'),('EMP16','S10'),('EMP19','S10'),('EMP20','S10'),('EMP31','S10'),('EMP32','S10'),('EMP36','S10'),('EMP38','S10'),('EMP4','S10'),('EMP43','S10'),('EMP6','S10'),('EMP16','S11'),('EMP19','S11'),('EMP20','S11'),('EMP31','S11'),('EMP32','S11'),('EMP36','S11'),('EMP38','S11'),('EMP4','S11'),('EMP43','S11'),('EMP6','S11'),('EMP16','S12'),('EMP19','S12'),('EMP20','S12'),('EMP31','S12'),('EMP32','S12'),('EMP36','S12'),('EMP38','S12'),('EMP4','S12'),('EMP43','S12'),('EMP6','S12'),('EMP1','S13'),('EMP10','S13'),('EMP23','S13'),('EMP24','S13'),('EMP27','S13'),('EMP29','S13'),('EMP3','S13'),('EMP49','S13'),('EMP8','S13'),('EMP9','S13'),('EMP1','S14'),('EMP10','S14'),('EMP23','S14'),('EMP24','S14'),('EMP27','S14'),('EMP29','S14'),('EMP3','S14'),('EMP49','S14'),('EMP8','S14'),('EMP9','S14'),('EMP1','S15'),('EMP10','S15'),('EMP23','S15'),('EMP24','S15'),('EMP27','S15'),('EMP29','S15'),('EMP3','S15'),('EMP49','S15'),('EMP8','S15'),('EMP9','S15'),('EMP16','S16'),('EMP19','S16'),('EMP20','S16'),('EMP31','S16'),('EMP32','S16'),('EMP36','S16'),('EMP38','S16'),('EMP4','S16'),('EMP43','S16'),('EMP6','S16'),('EMP16','S17'),('EMP19','S17'),('EMP20','S17'),('EMP31','S17'),('EMP32','S17'),('EMP36','S17'),('EMP38','S17'),('EMP4','S17'),('EMP43','S17'),('EMP6','S17'),('EMP16','S18'),('EMP19','S18'),('EMP20','S18'),('EMP31','S18'),('EMP32','S18'),('EMP36','S18'),('EMP38','S18'),('EMP4','S18'),('EMP43','S18'),('EMP6','S18'),('EMP1','S19'),('EMP10','S19'),('EMP23','S19'),('EMP24','S19'),('EMP27','S19'),('EMP29','S19'),('EMP3','S19'),('EMP49','S19'),('EMP8','S19'),('EMP9','S19'),('EMP1','S2'),('EMP10','S2'),('EMP23','S2'),('EMP24','S2'),('EMP27','S2'),('EMP29','S2'),('EMP3','S2'),('EMP49','S2'),('EMP8','S2'),('EMP9','S2'),('EMP1','S20'),('EMP10','S20'),('EMP23','S20'),('EMP24','S20'),('EMP27','S20'),('EMP29','S20'),('EMP3','S20'),('EMP49','S20'),('EMP8','S20'),('EMP9','S20'),('EMP1','S21'),('EMP10','S21'),('EMP23','S21'),('EMP24','S21'),('EMP27','S21'),('EMP29','S21'),('EMP3','S21'),('EMP49','S21'),('EMP8','S21'),('EMP9','S21'),('EMP16','S22'),('EMP19','S22'),('EMP20','S22'),('EMP31','S22'),('EMP32','S22'),('EMP36','S22'),('EMP38','S22'),('EMP4','S22'),('EMP43','S22'),('EMP6','S22'),('EMP16','S23'),('EMP19','S23'),('EMP20','S23'),('EMP31','S23'),('EMP32','S23'),('EMP36','S23'),('EMP38','S23'),('EMP4','S23'),('EMP43','S23'),('EMP6','S23'),('EMP16','S24'),('EMP19','S24'),('EMP20','S24'),('EMP31','S24'),('EMP32','S24'),('EMP36','S24'),('EMP38','S24'),('EMP4','S24'),('EMP43','S24'),('EMP6','S24'),('EMP1','S25'),('EMP10','S25'),('EMP23','S25'),('EMP24','S25'),('EMP27','S25'),('EMP29','S25'),('EMP3','S25'),('EMP49','S25'),('EMP8','S25'),('EMP9','S25'),('EMP1','S26'),('EMP10','S26'),('EMP23','S26'),('EMP24','S26'),('EMP27','S26'),('EMP29','S26'),('EMP3','S26'),('EMP49','S26'),('EMP8','S26'),('EMP9','S26'),('EMP1','S27'),('EMP10','S27'),('EMP2','S27'),('EMP21','S27'),('EMP22','S27'),('EMP23','S27'),('EMP24','S27'),('EMP27','S27'),('EMP29','S27'),('EMP3','S27'),('EMP35','S27'),('EMP49','S27'),('EMP7','S27'),('EMP8','S27'),('EMP9','S27'),('EMP16','S28'),('EMP19','S28'),('EMP2','S28'),('EMP20','S28'),('EMP21','S28'),('EMP22','S28'),('EMP31','S28'),('EMP32','S28'),('EMP35','S28'),('EMP36','S28'),('EMP38','S28'),('EMP4','S28'),('EMP43','S28'),('EMP6','S28'),('EMP7','S28'),('EMP16','S29'),('EMP19','S29'),('EMP2','S29'),('EMP20','S29'),('EMP21','S29'),('EMP22','S29'),('EMP31','S29'),('EMP32','S29'),('EMP35','S29'),('EMP36','S29'),('EMP38','S29'),('EMP4','S29'),('EMP43','S29'),('EMP6','S29'),('EMP7','S29'),('EMP1','S3'),('EMP10','S3'),('EMP23','S3'),('EMP24','S3'),('EMP27','S3'),('EMP29','S3'),('EMP3','S3'),('EMP49','S3'),('EMP8','S3'),('EMP9','S3'),('EMP16','S30'),('EMP19','S30'),('EMP2','S30'),('EMP20','S30'),('EMP21','S30'),('EMP22','S30'),('EMP31','S30'),('EMP32','S30'),('EMP35','S30'),('EMP36','S30'),('EMP38','S30'),('EMP4','S30'),('EMP43','S30'),('EMP6','S30'),('EMP7','S30'),('EMP12','S32'),('EMP18','S32'),('EMP39','S32'),('EMP45','S32'),('EMP47','S32'),('EMP12','S33'),('EMP18','S33'),('EMP39','S33'),('EMP45','S33'),('EMP47','S33'),('EMP11','S34'),('EMP12','S34'),('EMP14','S34'),('EMP16','S34'),('EMP17','S34'),('EMP18','S34'),('EMP28','S34'),('EMP39','S34'),('EMP44','S34'),('EMP45','S34'),('EMP47','S34'),('EMP50','S34'),('EMP11','S35'),('EMP12','S35'),('EMP14','S35'),('EMP16','S35'),('EMP17','S35'),('EMP18','S35'),('EMP2','S35'),('EMP21','S35'),('EMP22','S35'),('EMP28','S35'),('EMP35','S35'),('EMP39','S35'),('EMP44','S35'),('EMP45','S35'),('EMP47','S35'),('EMP50','S35'),('EMP7','S35'),('EMP11','S36'),('EMP12','S36'),('EMP14','S36'),('EMP16','S36'),('EMP17','S36'),('EMP18','S36'),('EMP2','S36'),('EMP21','S36'),('EMP22','S36'),('EMP28','S36'),('EMP35','S36'),('EMP39','S36'),('EMP44','S36'),('EMP45','S36'),('EMP47','S36'),('EMP50','S36'),('EMP7','S36'),('EMP13','S37'),('EMP15','S37'),('EMP26','S37'),('EMP30','S37'),('EMP33','S37'),('EMP41','S37'),('EMP13','S38'),('EMP15','S38'),('EMP26','S38'),('EMP30','S38'),('EMP33','S38'),('EMP41','S38'),('EMP13','S39'),('EMP15','S39'),('EMP26','S39'),('EMP30','S39'),('EMP33','S39'),('EMP41','S39'),('EMP16','S4'),('EMP19','S4'),('EMP20','S4'),('EMP31','S4'),('EMP32','S4'),('EMP36','S4'),('EMP38','S4'),('EMP4','S4'),('EMP43','S4'),('EMP6','S4'),('EMP11','S40'),('EMP13','S40'),('EMP14','S40'),('EMP15','S40'),('EMP16','S40'),('EMP17','S40'),('EMP26','S40'),('EMP28','S40'),('EMP30','S40'),('EMP33','S40'),('EMP41','S40'),('EMP44','S40'),('EMP50','S40'),('EMP11','S41'),('EMP13','S41'),('EMP14','S41'),('EMP15','S41'),('EMP16','S41'),('EMP17','S41'),('EMP2','S41'),('EMP21','S41'),('EMP22','S41'),('EMP26','S41'),('EMP28','S41'),('EMP30','S41'),('EMP33','S41'),('EMP35','S41'),('EMP41','S41'),('EMP44','S41'),('EMP50','S41'),('EMP7','S41'),('EMP11','S42'),('EMP13','S42'),('EMP14','S42'),('EMP15','S42'),('EMP16','S42'),('EMP17','S42'),('EMP2','S42'),('EMP21','S42'),('EMP22','S42'),('EMP26','S42'),('EMP28','S42'),('EMP30','S42'),('EMP33','S42'),('EMP35','S42'),('EMP41','S42'),('EMP44','S42'),('EMP50','S42'),('EMP7','S42'),('EMP16','S5'),('EMP19','S5'),('EMP20','S5'),('EMP31','S5'),('EMP32','S5'),('EMP36','S5'),('EMP38','S5'),('EMP4','S5'),('EMP43','S5'),('EMP6','S5'),('EMP16','S6'),('EMP19','S6'),('EMP20','S6'),('EMP31','S6'),('EMP32','S6'),('EMP36','S6'),('EMP38','S6'),('EMP4','S6'),('EMP43','S6'),('EMP6','S6'),('EMP1','S7'),('EMP10','S7'),('EMP23','S7'),('EMP24','S7'),('EMP27','S7'),('EMP29','S7'),('EMP3','S7'),('EMP49','S7'),('EMP8','S7'),('EMP9','S7'),('EMP1','S8'),('EMP10','S8'),('EMP23','S8'),('EMP24','S8'),('EMP27','S8'),('EMP29','S8'),('EMP3','S8'),('EMP49','S8'),('EMP8','S8'),('EMP9','S8'),('EMP1','S9'),('EMP10','S9'),('EMP23','S9'),('EMP24','S9'),('EMP27','S9'),('EMP29','S9'),('EMP3','S9'),('EMP49','S9'),('EMP8','S9'),('EMP9','S9');
/*!40000 ALTER TABLE `Employee_Shift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Item`
--

DROP TABLE IF EXISTS `Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Item` (
  `Item_ID` varchar(50) NOT NULL,
  `ItemType` varchar(50) DEFAULT NULL,
  `ItemName` varchar(100) DEFAULT NULL,
  `Category_ID` varchar(50) DEFAULT NULL,
  `ShelfLife` float DEFAULT NULL,
  PRIMARY KEY (`Item_ID`),
  KEY `FK_ItemCat` (`Category_ID`),
  CONSTRAINT `FK_ItemCat` FOREIGN KEY (`Category_ID`) REFERENCES `Item_Category` (`Category_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Item`
--

LOCK TABLES `Item` WRITE;
/*!40000 ALTER TABLE `Item` DISABLE KEYS */;
INSERT INTO `Item` VALUES ('112744','Raw Material','LONG GRAIN RICE','C3',120),('112745','Raw Material','BROWN SUGAR','C3',100),('112746','Raw Material','CORN STARCH','C3',90),('112747','Raw Material','BEANS,MEXICAN REFRIED','C3',6),('112748','Raw Material','OIL,BUTTER FLAVOR','C8',120),('112749','Raw Material','PEPPERS,BELL FLAVOUR','C8',120),('112750','Raw Material','ALMOND & COCUNUT BARS AND COOKIES','C9',76),('112751','Raw Material','PROTEIN BAR','C9',60),('112928','Raw Material','BARS CHOCOLATE CHIP','C9',90),('112929','Direct Sell','MONSTER REHAB LEMONADE','C1',123),('112935','Direct Sell','PEACE TEA SNOWBERRY','C1',134),('112936','Direct Sell','POWERADE','C1',129),('130574','Direct Sell','ZERO FRUIT PUNCH','C1',120),('150001','Direct Sell','POWERADE GRAPE','C1',150),('150002','Direct Sell','VITAMIN WATER ZERO SHINE','C1',134),('150003','Direct Sell','SMARTWATER CUCUMBER LIME','C1',129),('150004','Direct Sell','PEACH TEA RASPBERRY','C1',150),('150005','Direct Sell','MONSTER JAVA LOCA MOCHA','C1',150),('150006','Raw Material','COFFEEDUNKIN DONUTS ORIGINAL','C9',20),('150007','Direct Sell','SMARTWATER ANTIOXIDENT','C1',125),('150008','Raw Material','MINUTEMAID PEACH','C3',17),('150009','Direct Sell','UNSWEETENED BLACK TEA','C1',156),('150010','Raw Material','PRETZELS STICKS','C3',26),('150011','Raw Material','WHITE CHEDDAR','C2',8),('150012','Direct Sell','ORANGE FREE PULP','C1',100),('150013','Raw Material','CRACKER CHEESE','C9',30),('150014','Raw Material','YOGURT CORE BLUEBERRY','C2',7),('150015','Raw Material','SWEEDISH FISH RED','C7',3),('150016','Raw Material','SUNFLOWER SEEDS TACO','C3',30),('150017','Direct Sell','POWER ELITE CHOCOLATE','C1',90),('150018','Raw Material','WHITE GUMMY BEAR','C9',100),('150019','Direct Sell','BLUEBERRY POMEGRANATE','C1',38),('150020','Raw Material','CHIPS MAPLE BACON','C9',40),('35005','Raw Material','FRESHENS MANGO SYRUP','C10',30),('35008','Raw Material','FRESHENS KIWI LIME SYRUP','C10',23),('35045','Raw Material','FRESHENS COCONUT CREAM','C10',25),('35048','Direct Sell','FRESHENS ENERGY BOOSTER','C1',150),('35056','Raw Material','CHICKEN SEASONING','C4',38),('35060','Raw Material','FRESHENS COCOA POWDER','C3',18),('35069','Raw Material','WEST CREEK PEANUT BUTTER CREAMY','C2',7),('35071','Raw Material','BBQ POTATO CHIPS','C9',80),('35074','Raw Material','BANANA PUREE','C3',4),('35076','Raw Material','LETTUCE SHREDDED','C3',5),('35077','Raw Material','BABY SPINACH ','C3',6),('35078','Raw Material','Baby KALE','C3',6),('65004','Raw Material','CHEDDAR CHEESE','C3',10),('65007','Raw Material','BACON FULLY COOKED','C4',5),('65019','Raw Material','GRANOLA','C3',20),('65047','Raw Material','PEACH SYRUP','C10',30),('90006','Raw Material','CHIPOTLE PEPPERS','C3',7),('90007','Raw Material','BBQ SAUCE','C6',15),('90008','Raw Material','SOY SAUCE','C6',15),('90009','Raw Material','EGGS','C5',7),('90010','Raw Material','GLUTEN FREE COOKIE DOUGH','C3',10);
/*!40000 ALTER TABLE `Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Item_Category`
--

DROP TABLE IF EXISTS `Item_Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Item_Category` (
  `Category_ID` varchar(50) NOT NULL,
  `CategoryName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Category_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Item_Category`
--

LOCK TABLES `Item_Category` WRITE;
/*!40000 ALTER TABLE `Item_Category` DISABLE KEYS */;
INSERT INTO `Item_Category` VALUES ('',''),('C1','BEVARAGES'),('C10','SYRUPS'),('C2','DAIRY'),('C3','GROCERIES'),('C4','MEAT'),('C5','POULTRY'),('C6','SAUCE'),('C7','SEAFOOD'),('C8','SEASONING'),('C9','SNACKS');
/*!40000 ALTER TABLE `Item_Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Item_Vendor`
--

DROP TABLE IF EXISTS `Item_Vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Item_Vendor` (
  `Item_ID` varchar(50) NOT NULL,
  `Vendor_ID` varchar(50) NOT NULL,
  `PurchaseDate` date NOT NULL,
  `UnitMeasure` varchar(50) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `UnitCost` float DEFAULT NULL,
  `Cost` float DEFAULT NULL,
  PRIMARY KEY (`Item_ID`,`Vendor_ID`,`PurchaseDate`),
  KEY `FK_ItemVendor` (`Vendor_ID`),
  CONSTRAINT `FK_Item` FOREIGN KEY (`Item_ID`) REFERENCES `Item` (`Item_ID`),
  CONSTRAINT `FK_ItemVendor` FOREIGN KEY (`Vendor_ID`) REFERENCES `Vendor` (`Vendor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Item_Vendor`
--

LOCK TABLES `Item_Vendor` WRITE;
/*!40000 ALTER TABLE `Item_Vendor` DISABLE KEYS */;
INSERT INTO `Item_Vendor` VALUES ('112744','1008','2022-01-08','lb',26,3.25,84.5),('112745','1002','2022-02-07','lb',10,6,60),('112745','1010','2022-02-06','lb',6,13,78),('112745','1011','2022-02-16','lb',14,12,168),('112746','1008','2022-01-28','lb',5,4.13,20.65),('112747','1002','2022-01-03','lb',5,23,115),('112747','1019','2022-01-16','lb',16,7.53986,120.638),('112748','1023','2022-01-24','Bottles',10,7.07131,70.7131),('112749','1007','2022-02-13','Bottles',7,3.43,24.01),('112749','1029','2022-02-01','Bottles',21,8.9,186.9),('112750','1007','2022-01-12','Packets',15,15,225),('112751','1004','2022-01-20','Packets',39,3,117),('112751','1012','2022-01-08','Packets',16,23.12,369.92),('112751','1013','2022-01-22','Packets',17,5,85),('112928','1016','2022-01-22','Packets',29,5.82727,168.991),('112928','1019','2022-02-01','Packets',3,22,66),('112929','1018','2022-02-13','Bottles',20,2.67519,53.5039),('112929','1020','2022-02-09','Bottles',4,12,48),('112935','1001','2022-01-21','Bottles',6,4,24),('112935','1029','2022-02-08','Bottles',3,4,12),('112936','1004','2022-01-20','Gallons',2,10,20),('112936','1012','2022-01-27','Bottles',30,9.04493,271.348),('130574','1019','2022-01-02','Bottles',23,4.41161,101.467),('130574','1021','2022-01-13','Vottles',1,34,34),('150001','1011','2022-01-17','Bottles',14,3.12,43.68),('150002','1001','2022-02-18','Bottles',12,3,36),('150002','1030','2022-02-25','Bottles',12,5.12,61.44),('150003','1030','2022-01-14','Bottles',6,7.92501,47.55),('150004','1007','2022-02-13','Bottles',16,11.23,179.68),('150004','1011','2022-02-06','Bottles',12,12.13,145.56),('150004','1014','2022-01-22','Bottles',8,14.2646,114.116),('150005','1026','2022-02-09','Bottles',23,8.54979,196.645),('150006','1015','2022-02-20','Packets',10,4.78619,47.8619),('150006','1017','2022-02-11','Packets',1,12,12),('150007','1030','2022-02-20','Bottles',10,3.72229,37.2229),('150008','1023','2022-02-04','lb',12,13.6475,163.77),('150009','1007','2022-01-12','Bottles',15,20.12,404.814),('150009','1012','2022-02-20','Bottles',10,13.45,180.902),('150009','1014','2022-02-08','Bottles',4,12.1208,48.4832),('150010','1024','2022-01-06','lb',14,7.856,109.984),('150011','1028','2022-02-10','lb',5,10.4403,52.2014),('150012','1006','2022-02-24','Bottles',8,5.55,44.4),('150012','1028','2022-01-21','Bottles',12,18,216),('150012','1028','2022-02-11','Bottles',10,14.5,145),('150013','1003','2022-02-09','Packets',30,6,180),('150013','1012','2022-01-07','Packets',18,20,360),('150013','1012','2022-01-27','Packets',3,27,81),('150014','1023','2022-01-03','Gallons',4,3.19482,12.7793),('150015','1003','2022-01-23','lb',13,10,130),('150015','1011','2022-01-05','lb',5,39,195),('150015','1011','2022-02-20','lb',4,18,72),('150016','1024','2022-02-12','lb',13,11.0117,143.152),('150017','1025','2022-02-17','Bottles',27,9.63387,260.115),('150018','1001','2022-02-20','Packets',30,2,60),('150018','1011','2022-01-17','Packets',13,23,299),('150018','1030','2022-01-23','Packets',14,2.19,30.66),('150019','1005','2022-02-16','Bottles',5,10,50),('150019','1013','2022-02-07','Bottles',22,7.43675,163.608),('150020','1029','2022-01-21','Packets',25,2.68752,67.1881),('35005','1006','2022-01-17','Bottles',10,6.78,67.8),('35005','1028','2022-01-16','Bottles',11,17.8,195.8),('35005','1028','2022-01-22','Bottles',3,17.18,51.54),('35008','1015','2022-01-07','Bottles',10,9.71795,97.1795),('35008','1018','2022-01-16','Bottles',2,34,68),('35045','1008','2022-01-28','Bottles',12,10,120),('35045','1014','2022-01-22','Bottles',2,12.45,24.9),('35045','1014','2022-01-23','Bottles',3,13.3702,40.1106),('35048','1005','2022-01-25','Bottles',17,8.6,146.2),('35048','1013','2022-02-07','Bottles',12,20,240),('35048','1014','2022-02-13','Bottles',35,19.3,675.5),('35056','1005','2022-02-11','Packets',4,19,76),('35056','1012','2022-01-08','lb',29,5.58341,161.919),('35060','1021','2022-02-09','Packets',14,11.1424,155.994),('35069','1028','2022-01-18','Gallons',3,4.87594,14.6278),('35071','1008','2022-01-08','Packets',12,8,96),('35071','1013','2022-01-07','Packets',11,14.14,199.94),('35071','1014','2022-02-25','Packets',14,1.97276,27.6187),('35074','1022','2022-01-13','lb',20,13.1072,262.145),('35076','1011','2022-02-16','lb',6,10.599,63.5943),('35077','1022','2022-02-06','lb',15,11.9519,179.279),('35078','1006','2022-02-24','lb',3,10,30),('35078','1013','2022-01-05','lb',5,3.39888,16.9944),('65004','1005','2022-02-16','lb',7,3.4,23.8),('65004','1028','2022-01-02','lb',10,18,180),('65004','1028','2022-01-05','lb',23,12,276),('65007','1003','2022-02-04','lb',5,26,130),('65007','1019','2022-02-01','lb',15,7.36795,110.519),('65019','1026','2022-01-28','lb',38,4.36149,165.737),('65047','1006','2022-01-17','Bottles',2,11.5667,23.1333),('65047','1010','2022-01-23','Bottles',3,11.5667,34.7),('65047','1013','2022-01-21','Bottles',5,11.5667,57.8333),('90006','1010','2022-02-10','Packets',13,24,312),('90006','1015','2022-02-06','lb',11,8.27559,91.0315),('90006','1015','2022-02-13','Packets',3,23,69),('90006','1016','2022-01-02','Packets',4,12,48),('90007','1003','2022-02-09','Bottles',3,21,63),('90007','1011','2022-01-05','Bottles',20,2.3434,46.868),('90008','1028','2022-02-18','Bottles',8,11.4677,91.7418),('90009','1010','2022-02-10','cases',15,5.5,82.5),('90010','1001','2022-02-06','lb',3,23,69),('90010','1019','2022-02-11','lb',9,5.99468,53.9521);
/*!40000 ALTER TABLE `Item_Vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Order_Product`
--

DROP TABLE IF EXISTS `Order_Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Order_Product` (
  `Order_ID` varchar(50) NOT NULL,
  `Product_ID` varchar(50) NOT NULL,
  `Quantity` int DEFAULT NULL,
  PRIMARY KEY (`Order_ID`,`Product_ID`),
  KEY `FK_PrdID_OrderPrd` (`Product_ID`),
  CONSTRAINT `FK_OrdID_OrderPrd` FOREIGN KEY (`Order_ID`) REFERENCES `Orders` (`Order_ID`),
  CONSTRAINT `FK_PrdID_OrderPrd` FOREIGN KEY (`Product_ID`) REFERENCES `Product` (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order_Product`
--

LOCK TABLES `Order_Product` WRITE;
/*!40000 ALTER TABLE `Order_Product` DISABLE KEYS */;
INSERT INTO `Order_Product` VALUES ('2000','P23',5),('2001','P10',1),('2001','P11',3),('2001','P12',2),('2001','P13',6),('2001','P14',5),('2001','P15',3),('2001','P16',4),('2001','P17',2),('2001','P18',3),('2001','P19',2),('2001','P20',1),('2001','P21',5),('2001','P23',3),('2001','P31',3),('2001','P7',2),('2001','P8',3),('2001','P9',4),('2002','P32',3),('2003','P15',5),('2003','P45',1),('2003','P47',1),('2003','P52',2),('2004','P22',5),('2004','P23',4),('2004','P24',10),('2004','P25',4),('2004','P26',1),('2004','P27',2),('2004','P28',3),('2004','P29',4),('2004','P30',5),('2004','P31',6),('2004','P32',1),('2004','P33',1),('2004','P34',2),('2004','P35',3),('2004','P36',2),('2004','P37',4),('2004','P38',2),('2004','P52',4),('2005','P27',4),('2006','P21',1),('2007','P16',3),('2007','P30',3),('2007','P38',1),('2007','P40',1),('2008','P24',1),('2009','P23',5),('2010','P47',4),('2011','P49',5),('2012','P42',2),('2013','P28',2),('2014','P43',2),('2015','P52',1),('2016','P22',2),('2017','P33',5),('2018','P15',2),('2019','P27',1),('2020','P13',3),('2021','P12',1),('2021','P16',1),('2021','P17',2),('2021','P18',3),('2021','P20',5),('2021','P23',6),('2021','P27',1),('2021','P28',1),('2021','P29',1),('2021','P30',2),('2021','P32',5),('2021','P33',6),('2021','P39',4),('2022','P36',1),('2023','P37',5),('2024','P45',1),('2025','P16',5),('2026','P38',5),('2027','P40',3),('2028','P41',2),('2029','P39',3),('2029','P40',2),('2029','P41',5),('2029','P42',3),('2029','P43',4),('2029','P44',1),('2029','P45',4),('2029','P46',3),('2030','P10',3),('2030','P11',5),('2030','P12',4),('2030','P13',10),('2030','P14',4),('2030','P15',1),('2030','P2',2),('2030','P3',3),('2030','P4',2),('2030','P43',1),('2030','P5',2),('2030','P6',1),('2030','P7',5),('2031','P1',2),('2032','P5',3),('2033','P3',4);
/*!40000 ALTER TABLE `Order_Product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Orders` (
  `Order_ID` varchar(50) NOT NULL,
  `OrderDate` date DEFAULT NULL,
  `PaymentType` varchar(50) DEFAULT NULL,
  `TotalPrice` float DEFAULT NULL,
  PRIMARY KEY (`Order_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES ('2000','2022-05-09','Cash',39.95),('2001','2022-05-29','Cash',14.97),('2002','2022-04-07','Cash',14.97),('2003','2022-01-27','Cash',9.95),('2004','2022-01-09','Cash',39.96),('2005','2022-05-02','Card',29.96),('2006','2022-07-19','Cash',6.99),('2007','2022-06-18','Cash',11.97),('2008','2022-02-22','Cash',6.99),('2009','2022-03-31','Cash',39.95),('2010','2022-07-12','Cash',39.8),('2011','2022-02-23','Cash',33.95),('2012','2022-01-13','Cash',17.98),('2013','2022-04-15','Cash',12.98),('2014','2022-05-17','Cash',17.98),('2015','2022-07-23','Cash',9.99),('2016','2022-05-22','Cash',17.98),('2017','2022-07-27','Card',29.95),('2018','2022-02-08','Cash',23.98),('2019','2022-05-16','Cash',7.49),('2020','2022-03-19','Cash',29.97),('2021','2022-05-22','Cash',6.49),('2022','2022-02-25','Card',5.99),('2023','2022-07-22','Card',34.95),('2024','2022-01-11','Cash',6.79),('2025','2022-07-08','Cash',54.95),('2026','2022-07-19','Cash',24.95),('2027','2022-06-18','Card',22.95),('2028','2022-07-23','Cash',11.3),('2029','2022-05-22','Cash',26.97),('2030','2022-07-27','Cash',8.99),('2031','2022-02-08','Cash',17.98),('2032','2022-03-19','Card',17.97),('2033','2022-05-22','Cash',35.96);
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Positions`
--

DROP TABLE IF EXISTS `Positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Positions` (
  `Position_ID` varchar(50) NOT NULL,
  `Position_Description` varchar(50) DEFAULT NULL,
  `Salary` float DEFAULT NULL,
  `Wage` int DEFAULT NULL,
  PRIMARY KEY (`Position_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Positions`
--

LOCK TABLES `Positions` WRITE;
/*!40000 ALTER TABLE `Positions` DISABLE KEYS */;
INSERT INTO `Positions` VALUES ('P1','MANAGER I',80000,0),('P10','CLEANING',0,15),('P2','MANAGER II',90000,0),('P3','ADMIN I',0,15),('P4','ADMIN II',0,17),('P5','ASSISTANT MANAGER I',0,20),('P6','ASSISTANT MANAGER II',0,22),('P7','GENERAL I',0,13),('P8','GENERAL II',0,15),('P9','GENERAL III',0,17);
/*!40000 ALTER TABLE `Positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Product` (
  `Product_ID` varchar(50) NOT NULL,
  `Product_Name` varchar(100) DEFAULT NULL,
  `Calories` float DEFAULT NULL,
  `Price` float DEFAULT NULL,
  PRIMARY KEY (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` VALUES ('P1','Chipotle Chicken Club Grilled flatbread',670,8.99),('P10','Strawberry & Kale Salad',530,5.99),('P11','Chicken Caesar Salad',510,8.99),('P12','Thai Chicken Rice Bowl',560,11.99),('P13','Mexican Rice Bowl',710,9.99),('P14','Buffalo Chicken Rice Bowl',600,10.99),('P15','KC BBQ Rice Bowl',610,11.99),('P16','Baja Queso Rice Bowl',680,10.99),('P17','Frito Grande Rice Bowl',630,8.99),('P18','Power Protein Rice Bowl',700,12.99),('P19','Meatless Mexican Rice Bowl',730,8.99),('P2','BBQ Bacon Chicken Grilled flatbread',660,7.99),('P20','Mom',1160,6.99),('P21','Grilled Cheese & Bacon ',1220,6.99),('P22','Chicken Bacon Ranch ',1070,8.99),('P23','Chicken Caprese ',940,7.99),('P24','Buffalo Chicken ',1020,6.99),('P25','Chicken Avocado Toasted Wrap',570,7.49),('P26','Super Green Toasted Wrap',540,6.49),('P27','Thai Chicken Toasted Wrap',400,7.49),('P28','Mexicano Toasted Wrap',640,6.49),('P29','Spinach Pesto Toasted Wrap',500,7.49),('P3','Pesto Chicken Grilled flatbread',600,8.99),('P30','Banana Berry Smoothie',370,3.99),('P31','Bangin Berry Smoothie',375,4.99),('P32','Caribbean Craze Smoothie',335,4.99),('P33','Mango Me Crazy Smoothie',355,5.99),('P34','Maui Mango Smoothie',420,5.99),('P35','Orange Sunrise Smoothie',365,4.99),('P36','Peach on the Beach Smoothie',380,5.99),('P37','Tropical Therapy Smoothie',445,6.99),('P38','Wild Strawberry Smoothie',345,4.99),('P39','Acai Energy ',450,6.85),('P4','Santa Fe Grilled flatbread',720,6.99),('P40','Berry Burn ',335,7.65),('P41','Goin Green ',325,5.65),('P42','Peanut Butter Protein ',595,8.99),('P43','Super C Immune Support ',380,8.99),('P44','Super Fuel ',315,7.69),('P45','Acai Banana Berry Bowl',580,6.79),('P46','Acai Peanut Butter Bowl',640,7.69),('P47','Bacon, Egg & Cheese ',390,9.95),('P48','Sausage, Egg & Cheese ',450,9.95),('P49','Southwest ',280,6.79),('P5','Nashville Hot Salad',580,5.99),('P50','Florentine ',300,7.79),('P51','Classic Sandwich',500,8.99),('P52','Sausage Sandwich',490,9.99),('P6','Roadhouse BBQ Chicken Salad',420,7.99),('P7','Southwest Chipotle Chicken Salad',480,8.99),('P8','Chicken Avocado Cobb Salad',600,5.99),('P9','Buffalo Chicken Salad',380,6.99);
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Shift`
--

DROP TABLE IF EXISTS `Shift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Shift` (
  `Shift_ID` varchar(50) NOT NULL,
  `Start_Time` varchar(50) DEFAULT NULL,
  `End_Time` varchar(50) DEFAULT NULL,
  `Day` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Shift_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Shift`
--

LOCK TABLES `Shift` WRITE;
/*!40000 ALTER TABLE `Shift` DISABLE KEYS */;
INSERT INTO `Shift` VALUES ('S1','8AM','10AM','Mon\r'),('S10','2PM','4PM','Tue\r'),('S11','4PM','6PM','Tue\r'),('S12','6PM','8PM','Tue\r'),('S13','8AM','10AM','Wed\r'),('S14','10AM','12PM','Wed\r'),('S15','12PM','2PM','Wed\r'),('S16','2PM','4PM','Wed\r'),('S17','4PM','6PM','Wed\r'),('S18','6PM','8PM','Wed\r'),('S19','8AM','10AM','Thu\r'),('S2','10AM','12PM','Mon\r'),('S20','10AM','12PM','Thu\r'),('S21','12PM','2PM','Thu\r'),('S22','2PM','4PM','Thu\r'),('S23','4PM','6PM','Thu\r'),('S24','6PM','8PM','Thu\r'),('S25','8AM','10AM','Fri\r'),('S26','10AM','12PM','Fri\r'),('S27','12PM','2PM','Fri\r'),('S28','2PM','4PM','Fri\r'),('S29','4PM','6PM','Fri\r'),('S3','12PM','2PM','Mon\r'),('S30','6PM','8PM','Fri\r'),('S31','8AM','10AM','Sat\r'),('S32','10AM','12PM','Sat\r'),('S33','12PM','2PM','Sat\r'),('S34','2PM','4PM','Sat\r'),('S35','4PM','6PM','Sat\r'),('S36','6PM','8PM','Sat\r'),('S37','8AM','10AM','Sun\r'),('S38','10AM','12PM','Sun\r'),('S39','12PM','2PM','Sun\r'),('S4','2PM','4PM','Mon\r'),('S40','2PM','4PM','Sun\r'),('S41','4PM','6PM','Sun\r'),('S42','6PM','8PM','Sun'),('S5','4PM','6PM','Mon\r'),('S6','6PM','8PM','Mon\r'),('S7','8AM','10AM','Tue\r'),('S8','10AM','12PM','Tue\r'),('S9','12PM','2PM','Tue\r');
/*!40000 ALTER TABLE `Shift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vendor`
--

DROP TABLE IF EXISTS `Vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Vendor` (
  `Vendor_ID` varchar(50) NOT NULL,
  `VendorName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Vendor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vendor`
--

LOCK TABLES `Vendor` WRITE;
/*!40000 ALTER TABLE `Vendor` DISABLE KEYS */;
INSERT INTO `Vendor` VALUES ('1001','SYSCO FOOD'),('1002','FOX RIVER FOODS INC'),('1003','PIZZA PRODUCE'),('1004','COCO COLA'),('1005','EBY BROWN COMPANY'),('1006','KHALEEL BROS INC'),('1007','GARY\'S ROLLING STORE'),('1008','HIGH WATER KITCHEN LLC'),('1009','ROLLING DISH LLC'),('1010','THE CURBSIDE KITCHEN'),('1011','SPICE N TASTE LLC'),('1012','LOS PRIMOS'),('1013','TRUFFLES ON MAIN LLC'),('1014','MERCADO FOODS'),('1015','TROPICAL LUIZZA LLC'),('1016','AGAVE GRILL'),('1017','ON THE GO CATERING'),('1018','COKI PICALONGA'),('1019','YAYA\'S KITCHEN'),('1020','CHUCK WAGON CATERING'),('1021','IGUANAS'),('1022','DEBO\'S DOGS'),('1023','SAM\'S FRUIT & VEGETABLES'),('1024','WOODY\'S LLC'),('1025','SEAFOOD EXPRESS'),('1026','LUCKY TACO'),('1027','COFFEE TIME'),('1028','URBAN GOURMET LLC'),('1029','SOUTHERN BELL SOUL FOOD'),('1030','2 YOUR HEALTH');
/*!40000 ALTER TABLE `Vendor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-03 13:25:25
