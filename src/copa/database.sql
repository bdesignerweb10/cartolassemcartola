-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 04/05/2018 às 12:37
-- Versão do servidor: 5.6.35
-- Versão do PHP: 7.1.1

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bolaocopa`
--
DROP DATABASE IF EXISTS `bolaocopa`;
CREATE DATABASE IF NOT EXISTS `bolaocopa` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bolaocopa`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_copa`
--

DROP TABLE IF EXISTS `tbl_copa`;
CREATE TABLE IF NOT EXISTS `tbl_copa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ano` int(4) NOT NULL,
  `pais` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_palpite`
--

DROP TABLE IF EXISTS `tbl_palpite`;
CREATE TABLE IF NOT EXISTS `tbl_palpite` (
  `id` int(11) NOT NULL,
  `id_palpiteiro` int(11) NOT NULL,
  `id_primeira_fase` int(11) NOT NULL,
  `palpite_m` int(1) NOT NULL,
  `palpite_v` int(1) NOT NULL,
  `pontuacao` int(2) NOT NULL DEFAULT '0',
  KEY `fkey_palpiteiro_palpite` (`id_palpiteiro`),
  KEY `fkey_palpiteiro_pr_fase` (`id_primeira_fase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_palpiteiro`
--

DROP TABLE IF EXISTS `tbl_palpiteiro`;
CREATE TABLE IF NOT EXISTS `tbl_palpiteiro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_copa` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fkey_palpiteiro_copa` (`id_copa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_primeira_fase`
--

DROP TABLE IF EXISTS `tbl_primeira_fase`;
CREATE TABLE IF NOT EXISTS `tbl_primeira_fase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_copa` int(11) NOT NULL,
  `id_mandante` int(11) NOT NULL,
  `id_visitante` int(11) NOT NULL,
  `placar_mandante` int(2) NOT NULL,
  `placar_visitante` int(2) NOT NULL,
  `local` varchar(60) NOT NULL,
  `estadio` varchar(60) NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkey_sel_mandante` (`id_mandante`),
  KEY `fkey_sel_visitante` (`id_visitante`),
  KEY `fkey_pr_fas_copa` (`id_copa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_selecoes`
--

DROP TABLE IF EXISTS `tbl_selecoes`;
CREATE TABLE IF NOT EXISTS `tbl_selecoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_time` varchar(60) NOT NULL,
  `escudo` varchar(60) NOT NULL,
  `grupo` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `tbl_palpite`
--
ALTER TABLE `tbl_palpite`
  ADD CONSTRAINT `fkey_palpiteiro_palpite` FOREIGN KEY (`id_palpiteiro`) REFERENCES `tbl_palpiteiro` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkey_palpiteiro_pr_fase` FOREIGN KEY (`id_primeira_fase`) REFERENCES `tbl_primeira_fase` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `tbl_palpiteiro`
--
ALTER TABLE `tbl_palpiteiro`
  ADD CONSTRAINT `fkey_palpiteiro_copa` FOREIGN KEY (`id_copa`) REFERENCES `tbl_copa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `tbl_primeira_fase`
--
ALTER TABLE `tbl_primeira_fase`
  ADD CONSTRAINT `fkey_pr_fas_copa` FOREIGN KEY (`id_copa`) REFERENCES `tbl_copa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkey_sel_mandante` FOREIGN KEY (`id_mandante`) REFERENCES `tbl_selecoes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkey_sel_visitante` FOREIGN KEY (`id_visitante`) REFERENCES `tbl_selecoes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
