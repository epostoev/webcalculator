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
-- Table structure for table `staf_avz`
--

DROP TABLE IF EXISTS `staf_avz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staf_avz` (
  `staf_id` int NOT NULL AUTO_INCREMENT,
  `docs_name` varchar(255) NOT NULL,
  `engineer` int DEFAULT NULL,
  `senior_engineer` int DEFAULT NULL,
  `lead_engineer` int DEFAULT NULL,
  PRIMARY KEY (`staf_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staf_avz`
--

LOCK TABLES `staf_avz` WRITE;
/*!40000 ALTER TABLE `staf_avz` DISABLE KEYS */;
INSERT INTO `staf_avz` VALUES (1,'ТЗ',70,20,10),(2,'ФТТ',70,20,10),(3,'Пояснительная записка к эскизному проекту',70,25,5),(4,'Ведомость технического проекта',95,5,0),(5,'Ведомость покупных изделий',20,50,30),(6,'Пояснительная записка к техническому проекту',70,25,5),(7,'Описание комплекса технических средств',70,25,5),(8,'Описание программного обеспечения',70,25,5),(9,'Схема структурная',20,50,30),(10,'Схема функциональная',20,50,30),(11,'Пояснительная записка к технорабочему проекту',70,25,5),(12,'Спецификация оборудования',20,50,30),(13,'Инструкция по установке и настройке',70,25,5),(14,'Схема соединений внешних проводок',50,30,20),(15,'Таблица соединений и подключений',50,30,20),(16,'План расположения',70,20,10),(17,'Паспорт',60,30,10),(18,'ПиМИ',70,25,5),(19,'Технические условия для монтажа оборудования',70,20,10),(20,'Эскизная схема расположения оборудования',70,20,10),(21,'Сетевая схема L2',20,40,40),(22,'Сетевая схема L3',20,40,40),(23,'Смета',20,50,30),(24,'Принципиальная схема электропитания оборудования (СБ)',50,30,20),(25,'Схема подключения внешних проводок (С5)',50,30,20),(26,'Чертеж установки технических средств (СА)',50,30,20),(27,'Ведомость эксплуатационных документов',95,5,0),(28,'Руководство администратора',70,20,10),(29,'Руководство пользователя',70,20,10),(30,'Руководство по мониторингу',40,30,30),(31,'План резервного копирования',40,30,30),(32,'План опытной эксплуатации',50,30,20);
/*!40000 ALTER TABLE `staf_avz` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-08 18:23:25
