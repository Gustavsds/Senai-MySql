-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: mysql.wwonline.com.br    Database: wwonline04
-- ------------------------------------------------------
-- Server version	5.5.5-10.2.36-MariaDB-log

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
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aluno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matricula` varchar(10) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `email` varchar(250) NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `nome_mae` varchar(150) NOT NULL,
  `nome_pai` varchar(150) DEFAULT NULL,
  `endereco_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,'247789','Carlos Roberto connor','156.789.456-57','(27) 99875-4567','carlao@gmail.com','2000-02-05','Maria aparecida connor','Ricardo connor',1),(2,'225874','Emanuel Batista','146.057.134-78','(27) 9999-5487','manuelll@gmail.com','2002-06-06','Carla Batista','Osvaldo batista',2),(3,'247789','Carlos Roberto connor','156.789.456-57','(27) 99875-4567','carlao@gmail.com','2000-02-05','Maria aparecida connor','Ricardo connor',1),(4,'225874','Emanuel Batista','146.057.134-78','(27) 9999-5487','manuelll@gmail.com','2002-06-06','Carla Batista','Osvaldo batista',2),(5,'247789','Carlos Roberto connor','156.789.456-57','(27) 99875-4567','carlao@gmail.com','2000-02-05','Maria aparecida connor','Ricardo connor',1),(6,'225874','Emanuel Batista','146.057.134-78','(27) 9999-5487','manuelll@gmail.com','2002-06-06','Carla Batista','Osvaldo batista',2);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endereco` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logradouro` varchar(150) NOT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `bairro` varchar(100) NOT NULL,
  `cep` varchar(10) NOT NULL,
  `uf_id` int(11) NOT NULL COMMENT 'Chave estrangeira do ID da tabela UF',
  `municipio_id` int(11) NOT NULL COMMENT 'Chave estrangeira ID da tabela MUNICIPIO',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'AV tome de souza','1894','interlagos','29.906-057',42,1),(2,'AV tome de souza','1897','interlagos','29.906-058',42,1);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filho`
--

DROP TABLE IF EXISTS `filho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filho` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `aluno_id` int(11) NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filho`
--

LOCK TABLES `filho` WRITE;
/*!40000 ALTER TABLE `filho` DISABLE KEYS */;
/*!40000 ALTER TABLE `filho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `municipio`
--

DROP TABLE IF EXISTS `municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `municipio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipio`
--

LOCK TABLES `municipio` WRITE;
/*!40000 ALTER TABLE `municipio` DISABLE KEYS */;
INSERT INTO `municipio` VALUES (1,'LINHARES'),(2,'VILA VELHA'),(3,'SÃO MATHEUS'),(4,'COLATINA'),(5,'CONCEIÇÃO DO CASTELO'),(6,'SANTA TEREZA'),(7,'RIO BANANAL'),(8,'VILA VALERIO'),(9,'VITORIA'),(10,'SOORETAMA');
/*!40000 ALTER TABLE `municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uf`
--

DROP TABLE IF EXISTS `uf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sigla` varchar(2) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `codigo_ibge` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uf`
--

LOCK TABLES `uf` WRITE;
/*!40000 ALTER TABLE `uf` DISABLE KEYS */;
INSERT INTO `uf` VALUES (35,'AC','Acre',12),(36,'AL','Alagoas',27),(37,'AP','Amapá',16),(38,'AM','Amazonas',13),(39,'BA','Bahia',29),(40,'CE','Ceará',23),(41,'DF','Distrito Federal',53),(42,'ES','Espírito Santo',32),(43,'GO','Goiás',52),(44,'MA','Maranhão',21),(45,'MT','Mato Grosso',51),(46,'MS','Mato Grosso do Sul',50),(47,'MG','Minas Gerais',31),(48,'PA','Pará',15),(49,'PB','Paraíba',25),(50,'PR','Paraná',41),(51,'PE','Pernambuco',26),(52,'PI','Piauí',22),(53,'RJ','Rio de Janeiro',24),(54,'RN','Rio Grande do Norte',43),(55,'RS','Rio Grande do Sul',33),(56,'RO','Rondônia',11),(57,'RR','Roraima',14),(58,'SC','Santa Catarina',42),(59,'SP','São Paulo',35),(60,'SE','Sergipe',28),(61,'TO','Tocantins',17);
/*!40000 ALTER TABLE `uf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'wwonline04'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-23 19:01:32
