-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: db_class
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classes` (
  `class_id` int NOT NULL AUTO_INCREMENT,
  `tables_name` varchar(255) DEFAULT NULL,
  `class` varchar(255) NOT NULL,
  `parametr_1` varchar(255) DEFAULT NULL,
  `parametr_2` varchar(255) DEFAULT NULL,
  `parametr_3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (1,'avz','АВЗ','АВЗ Кол-во серверов управления','АВЗ Кол-во смежных систем для интеграции','АВЗ Проектируется только АВЗ (нет=0; да=1)'),(2,'siem','SIEM','SIEM Кол-во площадок с компонентами подситстемы','SIEM Кол-во типов источников','SIEM Проектируется только SIEM (нет=0; да=1)'),(3,'mse','МСЭ','МЭ Кол-во площадок','МЭ Кол-во серверов управления','МЭ Кол-во модулей'),(4,'pam','PAM','PAM Кол-во серверов системы','PAM Кол-во смежных систем для интеграции','PAM Проектируется только PAM (нет=0; да=1)'),(5,NULL,'СКЗИ','СКЗИ Количество типов площадок','СКЗИ Кол-во ЦУС','СКЗИ Кол-во модулей'),(6,NULL,'АЗ','АЗ Кол-во серверных компонентов','АЗ Кол-во профилей','АЗ Проектируется только АЗ (нет=0; да=1)'),(7,NULL,'РК','РК Кол-во серверов управления','РК Количество мест хранения','РК Проектируется только РК (нет=0; да=1)'),(8,NULL,'IDS','IDS Кол-во сенсоров','IDS Кол-во центров управления','IDS Неиспользуемый параметр'),(9,NULL,'НСД','НСД Количество площадок с серверными компонентами подсистемы','НСД Кол-во типов агентов','НСД Кол-во серверов безопасности'),(10,NULL,'АПМДЗ','АПМДЗ Кол-во серверных компонентов','АПМДЗ Кол-во типов агентов','АПМДЗ Проектируется только АПМДЗ (нет=0; да=1)'),(11,NULL,'MFA','MFA Количество типов площадок','MFA неиспользуемый параметр','MFA неиспользуемый параметр'),(12,NULL,'ДИОД','ДИОД Кол-во диодов/брокеров','ДИОД Кол-во типов источников','ДИОД неиспользуемый параметр'),(13,NULL,'СЗВ','СЗВ Количество площадок с компонентами','СЗВ Кол-во защищаемых  гипервизоров разных вендоров','СЗВ неиспользуемый параметр'),(14,NULL,'SOAR','SOAR Кол-во используемых дополнительных модулей','SOAR Кол-во коллекторов/серверов оркестрации','SOAR Проектируется только SOAR (нет=0; да=1)'),(15,NULL,'VDI','VDI Количество площадок с серверными компонентами','VDI Кол-во протоколов подключения','VDI Кол-во пулов (ГРУПП) виртуальных машин'),(16,NULL,'СУБД','СУБД Неиспользуемый параметр','СУБД Неиспользуемый параметр','СУБД Неиспользуемый параметр'),(17,NULL,'TLS','TLS Кол-во типов площадок','TLS Количество ЦУС','TLC Неиспользуемый параметр'),(18,NULL,'DCAP','DCAP Количество площадок с серверными компонентами подсистемы','DCAP Кол-во типов хранилищ','DCAP Проектируется только DCAP (нет=0; да=1)'),(19,NULL,'DO','DO Количество серверных компонентов','DO Кол-во используемых модулей','DO Проектируется только DO (нет=0; да=1)'),(20,NULL,'KATA','KATA Количество площадок с компонентами подсистемы','KATA Количество типов сенсоров','KATA Проектируется только KATA (нет=0; да=1)'),(21,NULL,'NTA','NTA Количество серверов/сенсоров','NTA Кол-во брокеров/агрегаторов','NTA Проектируется только NTA (нет=0; да=1)'),(22,NULL,'SEG','SEG Количество площадок с серверными компонентами подсистемы','SEG Количество кластеров','SEG Неиспользуемый параметр'),(23,NULL,'APT','APT Количество площадок с компонентами подсистемы','APT Количество сенсоров','APT Проектируется только APT (нет=0; да=1)'),(24,NULL,'SandBox','SANDBOX Кол-во серверных компонентов','SANDBOX Кол-во источников для проверки','SANDBOX Проектируется только SANDBOX (нет=0; да=1)'),(25,NULL,'EDR','EDR Кол-во серверов управления','EDR Кол-во серверов Sandbox','EDR Кол-во систем для интеграции'),(26,NULL,'WAF','WAF Кол-во узлов','WAF Кол-во  защищаемых ресурсов с правилами из коробки','WAF защищаемых ресурсов с кастомными правилами'),(27,NULL,'ВМ СЗВ','ВМ ЗСВ Количество площадок с серверными компонентами подсистемы','ВМ ЗСВ Неиспользуемый параметр','ВМ ЗСВ Неиспользуемый параметр'),(28,NULL,'ВМ СПО','ВМ СПО Неиспользуемый параметр','ВМ СПО Неиспользуемый параметр','ВМ СПО Неиспользуемый параметр'),(29,NULL,'ВМ АСО','ВМ АСО Количество вендоров (типов)','ВМ АСО Неиспользуемый параметр','ВМ АСО Неиспользуемый параметр');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-18 19:05:56
