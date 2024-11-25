-- MySQL dump 10.13  Distrib 8.0.40, for macos14 (arm64)
--
-- Host: 127.0.0.1    Database: db_class
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
-- Table structure for table `staf_siem`
--

DROP TABLE IF EXISTS `staf_siem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staf_siem` (
  `staf_id` int NOT NULL AUTO_INCREMENT,
  `docs_name` varchar(255) NOT NULL,
  `engineer` float DEFAULT NULL,
  `senior_engineer` float DEFAULT NULL,
  `lead_engineer` float DEFAULT NULL,
  PRIMARY KEY (`staf_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staf_siem`
--

LOCK TABLES `staf_siem` WRITE;
/*!40000 ALTER TABLE `staf_siem` DISABLE KEYS */;
INSERT INTO `staf_siem` VALUES (1,'ТЗ',70,20,10),(2,'ФТТ',70,20,10),(3,'Пояснительная записка к эскизному проекту',50,30,20),(4,'Ведомость технического проекта',1,0,0),(5,'Ведомость покупных изделий',20,50,30),(6,'Пояснительная записка к техническому проекту',50,30,20),(7,'Описание комплекса технических средств',50,30,20),(8,'Описание программного обеспечения',50,30,20),(9,'Схема структурная',20,50,30),(10,'Схема функциональная',20,50,30),(11,'Пояснительная записка к технорабочему проекту',50,30,20),(12,'Спецификация оборудования',20,50,30),(13,'Инструкция по установке и настройке',50,30,20),(14,'Схема соединений внешних проводок',50,30,20),(15,'Таблица соединений и подключений',50,30,20),(16,'План расположения',70,20,10),(17,'Паспорт',60,30,10),(18,'ПиМИ',50,30,20),(19,'Технические условия для монтажа оборудования',2.4,0.6,0),(20,'Эскизная схема расположения оборудования',70,20,10),(21,'Сетевая схема L2',4,3.2,0.8),(22,'Сетевая схема L3',2,1.6,0.4),(23,'Смета',20,50,30),(24,'Принципиальная схема электропитания оборудования (СБ)',50,30,20),(25,'Схема подключения внешних проводок (С5)',50,30,20),(26,'Чертеж установки технических средств (СА)',50,30,20),(27,'Ведомость эксплуатационных документов',1,0,0),(28,'Руководство администратора',70,20,10),(29,'Руководство пользователя',70,20,10),(30,'Руководство по мониторингу',40,30,30),(31,'План резервного копирования',40,30,30),(32,'План опытной эксплуатации',50,30,20);
/*!40000 ALTER TABLE `staf_siem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-25 15:23:50
