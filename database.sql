CREATE DATABASE  IF NOT EXISTS `cartolassemcartola` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cartolassemcartola`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: cartolassemcartola
-- ------------------------------------------------------
-- Server version	5.6.35

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
-- Table structure for table `tbl_anos`
--

DROP TABLE IF EXISTS `tbl_anos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_anos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_config`
--

DROP TABLE IF EXISTS `tbl_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_config` (
  `temporada_aberta` int(1) NOT NULL DEFAULT '0',
  `temporada_atual` int(11) DEFAULT NULL,
  `status_mercado` int(1) NOT NULL DEFAULT '0',
  `rodada_atual` int(11) DEFAULT NULL,
  `api_ligada` int(1) NOT NULL DEFAULT '0',
  `email_pagseguro` varchar(120) DEFAULT NULL,
  `token_pagseguro` varchar(120) DEFAULT NULL,
  `inicio_temporada` varchar(5) DEFAULT NULL,
  KEY `fkcon_anos_idx` (`temporada_atual`),
  KEY `fkcon_temporada_atual_idx` (`rodada_atual`,`temporada_atual`),
  CONSTRAINT `fkcon_anos` FOREIGN KEY (`temporada_atual`) REFERENCES `tbl_anos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkcon_temporada_atual` FOREIGN KEY (`rodada_atual`, `temporada_atual`) REFERENCES `tbl_temporadas` (`id_rodadas`, `id_anos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_eventos`
--

DROP TABLE IF EXISTS `tbl_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_eventos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(60) NOT NULL,
  `data` datetime NOT NULL,
  `local` varchar(120) DEFAULT NULL,
  `descricao` varchar(240) NOT NULL,
  `ativo` int(1) NOT NULL,
  `criado_por` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkey_event_usu_idx` (`criado_por`),
  CONSTRAINT `fkey_event_usu` FOREIGN KEY (`criado_por`) REFERENCES `tbl_usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_eventos_presenca`
--

DROP TABLE IF EXISTS `tbl_eventos_presenca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_eventos_presenca` (
  `id_eventos` int(11) NOT NULL,
  `id_times` int(11) NOT NULL,
  PRIMARY KEY (`id_times`,`id_eventos`),
  KEY `fkey_eventos_pai_idx` (`id_eventos`),
  CONSTRAINT `fkey_eventos_pai` FOREIGN KEY (`id_eventos`) REFERENCES `tbl_eventos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkey_usu_presenca` FOREIGN KEY (`id_times`) REFERENCES `tbl_times` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_inscricao`
--

DROP TABLE IF EXISTS `tbl_inscricao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_inscricao` (
  `id_times` int(11) NOT NULL,
  `id_anos` int(11) NOT NULL,
  `forma_pgto` int(1) DEFAULT NULL,
  `ativo` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_anos`,`id_times`),
  KEY `fkey_insc_times_idx` (`id_times`),
  CONSTRAINT `fkey_insc_anos` FOREIGN KEY (`id_anos`) REFERENCES `tbl_anos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkey_insc_times` FOREIGN KEY (`id_times`) REFERENCES `tbl_times` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_rodadas`
--

DROP TABLE IF EXISTS `tbl_rodadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_rodadas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_temporadas`
--

DROP TABLE IF EXISTS `tbl_temporadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_temporadas` (
  `id_anos` int(11) NOT NULL,
  `id_rodadas` int(11) NOT NULL,
  PRIMARY KEY (`id_anos`,`id_rodadas`),
  KEY `fktemp_rodadas_idx` (`id_rodadas`),
  CONSTRAINT `fktemp_anos` FOREIGN KEY (`id_anos`) REFERENCES `tbl_anos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fktemp_rodadas` FOREIGN KEY (`id_rodadas`) REFERENCES `tbl_rodadas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_times`
--

DROP TABLE IF EXISTS `tbl_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_times` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_time` varchar(120) NOT NULL,
  `escudo_time` varchar(120) DEFAULT NULL,
  `nome_presidente` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `historia` text,
  `ativo` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_times_temporadas`
--

DROP TABLE IF EXISTS `tbl_times_temporadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_times_temporadas` (
  `id_times` int(11) NOT NULL,
  `id_anos` int(11) NOT NULL,
  `id_rodadas` int(11) NOT NULL,
  `pontuacao` double NOT NULL DEFAULT '0',
  `posicao_liga` int(3) DEFAULT NULL,
  `usuario_id` int(11) NOT NULL,
  `alterado_em` datetime NOT NULL,
  PRIMARY KEY (`id_times`,`id_anos`,`id_rodadas`),
  KEY `fttt_temporadas_idx` (`id_anos`,`id_rodadas`),
  KEY `fktt_usuario_idx` (`usuario_id`),
  CONSTRAINT `fktt_times` FOREIGN KEY (`id_times`) REFERENCES `tbl_times` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fktt_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `tbl_usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fttt_temporadas` FOREIGN KEY (`id_anos`, `id_rodadas`) REFERENCES `tbl_temporadas` (`id_anos`, `id_rodadas`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_usuarios`
--

DROP TABLE IF EXISTS `tbl_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `times_id` int(11) DEFAULT NULL,
  `usuario` varchar(120) NOT NULL,
  `senha` varchar(120) NOT NULL,
  `nivel` int(1) NOT NULL,
  `senha_provisoria` int(1) NOT NULL,
  `tentativas` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_times_id_idx` (`times_id`),
  CONSTRAINT `fk_times_id` FOREIGN KEY (`times_id`) REFERENCES `tbl_times` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_mata_mata`
--

DROP TABLE IF EXISTS `tbl_mata_mata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_mata_mata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(60) NOT NULL,
  `total_times` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_mata_mata_times`
--

DROP TABLE IF EXISTS `tbl_mata_mata_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_mata_mata_times` (
  `id_mata_mata` int(11) NOT NULL,
  `id_time` int(11) NOT NULL,
  PRIMARY KEY (`id_time`,`id_mata_mata`),
  KEY `fkmm_mata_mata_idx` (`id_mata_mata`),
  CONSTRAINT `fkmm_mata_mata` FOREIGN KEY (`id_mata_mata`) REFERENCES `tbl_mata_mata` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkmm_times` FOREIGN KEY (`id_time`) REFERENCES `tbl_times` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_mata_mata_confrontos`
--

DROP TABLE IF EXISTS `tbl_mata_mata_confrontos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_mata_mata_confrontos` (
  `id_mata_mata` int(11) NOT NULL,
  `id_time_1` int(11) NOT NULL,
  `id_time_2` int(11) NOT NULL,
  `id_anos` int(11) NOT NULL,
  `id_rodadas` int(11) NOT NULL,
  `chave` int(2) NOT NULL,
  `nivel` int(1) NOT NULL,
  PRIMARY KEY (`id_time_1`,`id_mata_mata`,`id_time_2`,`id_anos`,`id_rodadas`,`chave`),
  KEY `fkmmc_times_temporadas_1_idx` (`id_time_1`,`id_anos`,`id_rodadas`),
  KEY `fkmmc_times_temporadas_2_idx` (`id_time_2`,`id_anos`,`id_rodadas`),
  KEY `fkmmc_mata_mata_time_1_idx` (`id_time_1`,`id_mata_mata`),
  KEY `fkmmc_mata_mata_time_2_idx` (`id_time_2`,`id_mata_mata`),
  CONSTRAINT `fkmmc_mata_mata_time_1` FOREIGN KEY (`id_time_1`, `id_mata_mata`) REFERENCES `tbl_mata_mata_times` (`id_time`, `id_mata_mata`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkmmc_mata_mata_time_2` FOREIGN KEY (`id_time_2`, `id_mata_mata`) REFERENCES `tbl_mata_mata_times` (`id_time`, `id_mata_mata`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkmmc_times_temporadas_1` FOREIGN KEY (`id_time_1`, `id_anos`, `id_rodadas`) REFERENCES `tbl_times_temporadas` (`id_times`, `id_anos`, `id_rodadas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkmmc_times_temporadas_2` FOREIGN KEY (`id_time_2`, `id_anos`, `id_rodadas`) REFERENCES `tbl_times_temporadas` (`id_times`, `id_anos`, `id_rodadas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkmmc_temporadas` FOREIGN KEY (`id_anos`, `id_rodadas`) REFERENCES `tbl_temporadas` (`id_anos`, `id_rodadas`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'cartolassemcartola'
--

--
-- Dumping routines for database 'cartolassemcartola'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

ALTER TABLE `tbl_mata_mata` ADD `id_time_campeao` INT NULL AFTER `total_times`;
ALTER TABLE `tbl_mata_mata` ADD CONSTRAINT `fkey_campeao_mata_mata` FOREIGN KEY (`id_time_campeao`) REFERENCES `tbl_times`(`id`) ON DELETE SET NULL ON UPDATE SET NULL;

ALTER TABLE `tbl_times` ADD `slug_cartola` VARCHAR(60) NULL AFTER `nome_time`, ADD `patrimonio` DECIMAL NULL AFTER `slug_cartola`, ADD UNIQUE `uidx_slug_cartola` (`slug_cartola`);
ALTER TABLE `tbl_times` ADD UNIQUE `ukey_tbl_times_nome_time` (`nome_time`);






