-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 23-Fev-2015 às 13:51
-- Versão do servidor: 5.5.41-0ubuntu0.14.04.1
-- versão do PHP: 5.5.9-1ubuntu4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `deigmasushi`
--

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `grupos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` id(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Extraindo dados da tabela `grupos`
--

INSERT INTO `grupos` (`id`, `descricao`) VALUES
(1, 'ENTRADAS'),
(2, 'SASHIMI(fatia)'),
(3, 'URAMAKI(8un)'),
(4, 'COMBINADOS'),
(5, 'TEMAKI'),
(6, 'HOT SUSHI(10un)'),
(7, 'DRINKS'),
(8, 'DOSES'),
(9, 'CERVEJAS'),
(10, 'VINHOS'),
(11, 'NÃO-ALCÓOLICO'),
(12, 'BEBIDAS QUENTES'),
(13, 'SOBREMESAS');

--
-- Estrutura da tabela `mesas`
--

CREATE TABLE IF NOT EXISTS `mesas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ocupacao_max` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE IF NOT EXISTS `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` datetime NOT NULL,
  `total` float DEFAULT NULL,
  `desconto` float DEFAULT NULL,
  `mesa_id` int(11) NOT NULL,
  `ocupacao` int(11) NOT NULL,
  `fechado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pedido_idmesa` (`mesa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE IF NOT EXISTS `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `preco` float(3,2) NOT NULL,
  `grupo_id` int(11) NOT NULL,
  `descricao_detalhada` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_produto_idgrupo` (`grupo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `preco`, `grupo_id`, `descricao_detalhada`) VALUES
(1, 'Shimeji & Shitake', 9.99, 1, 'salteados na manteiga com cebolinha'),
(2, 'Sunomono', 4.00, 1, NULL),
(3, 'Sunomono Especial', 8.00, 1, 'com salmão e kani'),
(4, 'Harumaki (2un)', 5.90, 1, 'queijo, carne, legumes'),
(5, 'Salmão', 2.00, 2, NULL),
(6, 'Atum', 2.00, 2, NULL);

--
-- Estrutura da tabela `pedidos_produtos`
--

CREATE TABLE IF NOT EXISTS `pedidos_produtos` (
  `id`int(11) NOT NULL,
  `pedido_id` int(11) NOT NULL,
  `produto_id` int(11) NOT NULL,
  `quant` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pedidos_produtos_pedido_id` (`pedido_id`),
  KEY `fk_pedidos_produtos_produto_id` (`produto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



