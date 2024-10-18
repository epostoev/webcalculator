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
-- Table structure for table `docs`
--

DROP TABLE IF EXISTS `docs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docs` (
  `docs_id` int NOT NULL AUTO_INCREMENT,
  `docs_name` varchar(255) NOT NULL,
  `ТРП` int DEFAULT NULL,
  `ЭП` int DEFAULT NULL,
  `ПРЕСЕЙЛ` int DEFAULT NULL,
  `ТП` int DEFAULT NULL,
  `КАСТОМ` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`docs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docs`
--

LOCK TABLES `docs` WRITE;
/*!40000 ALTER TABLE `docs` DISABLE KEYS */;
INSERT INTO `docs` VALUES (1,'ТЗ',0,0,0,0,'1'),(2,'ФТТ',0,0,1,0,'1'),(3,'Пояснительная записка к эскизному проекту',0,1,0,0,'1'),(4,'Ведомость технического проекта',0,1,0,0,'1'),(5,'Ведомость покупных изделий',0,0,0,0,'1'),(6,'Пояснительная записка к техническому проекту',1,0,0,1,'1'),(7,'Описание комплекса технических средств',1,0,0,1,'1'),(8,'Описание программного обеспечения',1,0,0,1,'1'),(9,'Схема структурная',1,1,1,1,'1'),(10,'Схема функциональная',1,1,0,1,'1'),(11,'Пояснительная записка к технорабочему проекту',0,0,0,0,'1'),(12,'Спецификация оборудования',1,0,1,1,'1'),(13,'Инструкция по установке и настройке',1,0,0,0,'1'),(14,'Схема соединений внешних проводок',0,0,0,0,'1'),(15,'Таблица соединений и подключений',0,0,0,0,'1'),(16,'План расположения',0,0,0,0,'1'),(17,'Паспорт',0,0,0,0,'1'),(18,'ПиМИ',1,0,0,0,'1'),(19,'Технические условия для монтажа оборудования',1,0,0,0,'1'),(20,'Эскизная схема расположения оборудования',1,0,0,0,'1'),(21,'Сетевая схема L2',1,0,0,0,'1'),(22,'Сетевая схема L3',1,0,0,0,'1'),(23,'Смета',0,0,0,0,'1'),(24,'Принципиальная схема электропитания оборудования (СБ)',0,0,0,0,'1'),(25,'Схема подключения внешних проводок (С5)',0,0,0,1,'1'),(26,'Чертеж установки технических средств (СА)',0,0,0,0,'1'),(27,'Ведомость эксплуатационных документов',0,0,0,0,'1'),(28,'Руководство администратора',1,0,0,1,'1'),(29,'Руководство пользователя',1,0,0,1,'1'),(30,'Руководство по мониторингу',0,0,0,0,'1'),(31,'План резервного копирования',0,0,0,0,'1'),(32,'План опытной эксплуатации',0,0,0,0,'1');
/*!40000 ALTER TABLE `docs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-18 19:14:21
