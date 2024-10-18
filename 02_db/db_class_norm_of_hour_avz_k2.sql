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
-- Table structure for table `norm_of_hour_avz_k2`
--

DROP TABLE IF EXISTS `norm_of_hour_avz_k2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `norm_of_hour_avz_k2` (
  `hours_id` int NOT NULL AUTO_INCREMENT,
  `complexty` varchar(255) NOT NULL,
  `docs_name` varchar(255) NOT NULL,
  `parametr_1` varchar(255) DEFAULT NULL,
  `parametr_2` varchar(255) DEFAULT NULL,
  `parametr_3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hours_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `norm_of_hour_avz_k2`
--

LOCK TABLES `norm_of_hour_avz_k2` WRITE;
/*!40000 ALTER TABLE `norm_of_hour_avz_k2` DISABLE KEYS */;
INSERT INTO `norm_of_hour_avz_k2` VALUES (1,'ТЗ/ФТТ(обычный)','ТЗ','0.5','0.25',''),(2,'ТЗ/ФТТ(сложный)','ТЗ','1','0.5',''),(3,'ТЗ/ФТТ(обычный)','ФТТ','0.5','0.25',''),(4,'ТЗ/ФТТ(сложный)','ФТТ','1','0.5',''),(5,'ЭП(обычный)','Пояснительная записка к эскизному проекту','1','',''),(6,'ЭП(сложный)','Пояснительная записка к эскизному проекту','2','',''),(7,'ТП(обычный)','Ведомость технического проекта','0','0','0'),(8,'ТП(сложный)','Ведомость технического проекта','0','0','0'),(9,'ТП(обычный)','Ведомость покупных изделий','','0','0'),(10,'ТП(сложный)','Ведомость покупных изделий','','0','0'),(11,'ТП(обычный)','Пояснительная записка к техническому проекту','2','',''),(12,'ТП(сложный)','Пояснительная записка к техническому проекту','4','',''),(13,'ТП(обычный)','Описание комплекса технических средств','1','0',''),(14,'ТП(сложный)','Описание комплекса технических средств','2','0',''),(15,'ТП(обычный)','Описание программного обеспечения','2','',''),(16,'ТП(сложный)','Описание программного обеспечения','4','',''),(17,'ТП(обычный)','Схема структурная','','0',''),(18,'Схема структурная','Схема структурная','','0',''),(19,'ТП(обычный)','Схема функциональная','1','',''),(20,'ТП(сложный)','Схема функциональная','1.5','',''),(21,'ТРП(обычный)','Пояснительная записка к техническому проекту','4','',''),(22,'ТРП(сложный)','Пояснительная записка к техническому проекту','6','',''),(23,'РД(обычный)','Спецификация оборудования','','0','0'),(24,'РД(сложный)','Спецификация оборудования','','0','0'),(25,'РД(обычный)','Инструкция по установке и настройке','2','',''),(26,'РД(сложный)','Инструкция по установке и настройке','4','',''),(27,'РД(обычный)','Схема соединений внешних проводок','','0',''),(28,'РД(сложный)','Схема соединений внешних проводок','','0',''),(29,'РД(обычный)','Таблица соединений и подключений','','0',''),(30,'РД(сложный)','Таблица соединений и подключений','','0',''),(31,'РД(обычный)','План расположения','','0',''),(32,'РД(сложный)','План расположения','','0',''),(33,'РД(обычный)','Паспорт','2','',''),(34,'РД(сложный)','Паспорт','4','',''),(35,'РД(обычный)','ПМИ','1','',''),(36,'РД(сложный)','ПМИ','2','',''),(37,'РД(обычный)','Технические условия для монтажа оборудования','0','0','0'),(38,'РД(сложный)','Технические условия для монтажа оборудования','0','0','0'),(39,'РД(обычный)','Эскизная схема расположения оборудования','','0',''),(40,'РД(сложный)','Эскизная схема расположения оборудования','','0',''),(41,'РД(обычный)','Сетевая схема L2','0','0','0'),(42,'РД(сложный)','Сетевая схема L2','0','0','0'),(43,'РД(обычный)','Сетевая схема L3','0','0','0'),(44,'РД(сложный)','Сетевая схема L3','0','0','0'),(45,'РД(обычный)','Смета','0','0','0'),(46,'РД(сложный)','Смета','0','0','0'),(47,'РД(обычный)','Принципиальная схема электропитания оборудования (СБ)','','0',''),(48,'РД(сложный)','Принципиальная схема электропитания оборудования (СБ)','','0',''),(49,'РД(обычный)','Схема подключения внешних проводок (С5)','','0',''),(50,'РД(сложный)','Схема подключения внешних проводок (С5)','','0',''),(51,'РД(обычный)','Чертеж установки технических средств (СА)','','0',''),(52,'РД(обычный)','Чертеж установки технических средств (СА)','','0',''),(53,'ЭД(обычный)','Ведомость эксплуатационных документов','0','0','0'),(54,'ЭД(обычный)','Ведомость эксплуатационных документов','0','0','0'),(55,'ЭД(обычный)','Руководство администратора','1','',''),(56,'ЭД(сложный)','Руководство администратора','2','',''),(57,'ЭД(обычный)','Руководство пользователя','1','',''),(58,'ЭД(сложный)','Руководство пользователя','2','',''),(59,'ЭД(обычный)','Руководство по мониторингу','1','0',''),(60,'ЭД(сложный)','Руководство по мониторингу','2','0',''),(61,'ЭД(обычный)','План резервного копирования','','0',''),(62,'ЭД(сложный)','План резервного копирования','','0',''),(63,'ЭД(обычный)','План опытной эксплуатации','1','0',''),(64,'ЭД(сложный)','План опытной эксплуатации','2','0','');
/*!40000 ALTER TABLE `norm_of_hour_avz_k2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-18 19:05:55
