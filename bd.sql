-- phpMyAdmin SQL Dump
-- version 4.3.7
-- http://www.phpmyadmin.net
--
-- Host: mysql11-farm76.kinghost.net
-- Tempo de geração: 15/09/2019 às 03:46
-- Versão do servidor: 5.6.36-log
-- Versão do PHP: 5.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `carlospereira02`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `habilidade`
--

CREATE TABLE IF NOT EXISTS `habilidade` (
  `id_habilidade` int(11) NOT NULL,
  `id_pessoa` int(11) NOT NULL,
  `habilidade` varchar(60) NOT NULL,
  `pontos` int(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `habilidade`
--

INSERT INTO `habilidade` (`id_habilidade`, `id_pessoa`, `habilidade`, `pontos`) VALUES
(1, 1, 'Artesa', 0),
(2, 1, 'Pintura', 0),
(3, 2, 'Eletricista', 0),
(5, 2, 'conserto eletronicos', 0),
(6, 2, 'Faz tudo', 0),
(7, 3, 'Mediadora', 0),
(8, 3, 'Mediadora', NULL),
(9, 3, 'Leitora', NULL),
(10, 4, 'Guia de Turismo', NULL),
(11, 5, 'programador', NULL),
(12, 5, 'Contatora de historias', NULL),
(13, 2, 'programador', NULL),
(14, 1, 'marcenaria', NULL),
(15, 2, 'marcenaria', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pessoa`
--

CREATE TABLE IF NOT EXISTS `pessoa` (
  `id_pessoa` int(200) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `escola` varchar(60) NOT NULL,
  `funcao` varchar(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `pessoa`
--

INSERT INTO `pessoa` (`id_pessoa`, `nome`, `escola`, `funcao`) VALUES
(1, 'Rosangela Silva', 'EMEB Antonio Peseghetti', 'Apoio Pedagógico'),
(2, 'Eduardo de Oliveira Santos', 'EMEB Antonio Peseghetti', 'Manutenção'),
(3, 'Eva Maria de Jesus', 'EMEB Antonio Peseghetti', 'Inspetora'),
(4, 'Gilberto Cunha', 'EMEB Antonio Peseghetti', 'Inspetor'),
(5, 'Tamires Andrade', 'EMEB Antonio Peseghetti', 'Diretora');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `habilidade`
--
ALTER TABLE `habilidade`
  ADD PRIMARY KEY (`id_habilidade`);

--
-- Índices de tabela `pessoa`
--
ALTER TABLE `pessoa`
  ADD UNIQUE KEY `id` (`id_pessoa`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `habilidade`
--
ALTER TABLE `habilidade`
  MODIFY `id_habilidade` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de tabela `pessoa`
--
ALTER TABLE `pessoa`
  MODIFY `id_pessoa` int(200) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
