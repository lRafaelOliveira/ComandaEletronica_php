-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 12/12/2014 às 10:27
-- Versão do servidor: 5.5.40-cll
-- Versão do PHP: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `marcost_cook`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `id_categoria` int(10) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Fazendo dump de dados para tabela `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nome`) VALUES
(2, 'Pizzas'),
(4, 'Caldos'),
(5, 'Bebidas'),
(6, 'Doses'),
(7, 'Refrigerantes'),
(8, 'água e Sucos'),
(9, 'Peixes'),
(10, 'Porções');

-- --------------------------------------------------------

--
-- Estrutura para tabela `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `id_conf` int(30) NOT NULL,
  `empresa` varchar(200) NOT NULL,
  `telefone` varchar(30) NOT NULL,
  `pgarcon` int(10) NOT NULL,
  `ativo` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `config`
--

INSERT INTO `config` (`id_conf`, `empresa`, `telefone`, `pgarcon`, `ativo`) VALUES
(0, 'Pizzaria Online', '(31) 8728-5451', 5, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cozinha`
--

CREATE TABLE IF NOT EXISTS `cozinha` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `produto` varchar(200) NOT NULL,
  `qtd` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `cozinha`
--

INSERT INTO `cozinha` (`id`, `produto`, `qtd`) VALUES
(1, 'BRAHMA', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `entrega`
--

CREATE TABLE IF NOT EXISTS `entrega` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod` int(11) NOT NULL,
  `nome` varchar(150) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `preco` varchar(10) NOT NULL,
  `qtd` int(11) NOT NULL,
  `comanda` int(200) NOT NULL,
  `data` date NOT NULL,
  `time` time NOT NULL,
  `id_mesa` int(30) NOT NULL,
  `situacao` int(2) NOT NULL,
  `idGarcon` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `destino` int(1) NOT NULL,
  `entregue` int(1) NOT NULL,
  `feito` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=470 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `garcon`
--

CREATE TABLE IF NOT EXISTS `garcon` (
  `idGarcon` int(10) NOT NULL AUTO_INCREMENT,
  `nomeGarcon` varchar(200) NOT NULL,
  `login` varchar(20) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `nv` int(1) NOT NULL,
  PRIMARY KEY (`idGarcon`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Fazendo dump de dados para tabela `garcon`
--

INSERT INTO `garcon` (`idGarcon`, `nomeGarcon`, `login`, `senha`, `nv`) VALUES
(1, 'Administrador', 'admin', '1234', 0),
(6, 'garçom', 'garçom', '1234', 0),
(7, 'Carala', 'carla', '1234', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `mesa`
--

CREATE TABLE IF NOT EXISTS `mesa` (
  `id_mesa` int(10) NOT NULL AUTO_INCREMENT,
  `numero` int(10) NOT NULL,
  `idGarcon` varchar(200) NOT NULL,
  `situacao` int(1) NOT NULL,
  PRIMARY KEY (`id_mesa`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Fazendo dump de dados para tabela `mesa`
--

INSERT INTO `mesa` (`id_mesa`, `numero`, `idGarcon`, `situacao`) VALUES
(4, 4, '', 0),
(2, 2, '', 0),
(3, 3, '', 0),
(1, 1, '', 0),
(5, 5, '', 0),
(6, 6, '7', 1),
(7, 7, '', 0),
(8, 8, '', 0),
(9, 9, '', 0),
(10, 10, '', 0),
(11, 11, '', 0),
(12, 12, '', 0),
(13, 13, '', 0),
(14, 14, '', 0),
(15, 15, '', 0),
(16, 16, '', 0),
(17, 17, '', 0),
(18, 18, '', 0),
(19, 19, '', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedido`
--

CREATE TABLE IF NOT EXISTS `pedido` (
  `id_mesa` int(10) NOT NULL AUTO_INCREMENT,
  `numero` int(10) NOT NULL,
  `idGarcon` varchar(200) NOT NULL,
  `situacao` int(1) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `sobrenome` varchar(50) DEFAULT NULL,
  `telefone` varchar(30) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `numerocasa` varchar(20) DEFAULT NULL,
  `detalhes` longtext,
  PRIMARY KEY (`id_mesa`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Fazendo dump de dados para tabela `pedido`
--

INSERT INTO `pedido` (`id_mesa`, `numero`, `idGarcon`, `situacao`, `email`, `nome`, `sobrenome`, `telefone`, `bairro`, `rua`, `numerocasa`, `detalhes`) VALUES
(46, 12, '9', 0, 'teste@gmail.com', 'Carla Costa', 'Barcelos', '(31) 34542345', 'Giovanini', 'Av. Purus ', '540', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_carrinho`
--

CREATE TABLE IF NOT EXISTS `tbl_carrinho` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod` int(11) NOT NULL,
  `nome` varchar(150) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `preco` varchar(10) NOT NULL,
  `qtd` int(11) NOT NULL,
  `comanda` int(200) NOT NULL,
  `data` date NOT NULL,
  `time` time NOT NULL,
  `id_mesa` int(30) NOT NULL,
  `situacao` int(2) NOT NULL,
  `idGarcon` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `destino` int(1) NOT NULL,
  `entregue` int(1) NOT NULL,
  `feito` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=159 ;

--
-- Fazendo dump de dados para tabela `tbl_carrinho`
--

INSERT INTO `tbl_carrinho` (`id`, `cod`, `nome`, `preco`, `qtd`, `comanda`, `data`, `time`, `id_mesa`, `situacao`, `idGarcon`, `status`, `destino`, `entregue`, `feito`) VALUES
(49, 2, 'teste2', '300.00', 1, 0, '2013-07-10', '23:40:00', 9, 0, '2', 1, 0, 1, 0),
(53, 2, 'teste2', '300.00', 1, 0, '2014-12-02', '22:34:00', 8, 0, '15', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_produtos`
--

CREATE TABLE IF NOT EXISTS `tbl_produtos` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `img` varchar(36) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `preco` varchar(10) NOT NULL,
  `id_categoria` int(30) NOT NULL,
  `destino` int(1) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Fazendo dump de dados para tabela `tbl_produtos`
--

INSERT INTO `tbl_produtos` (`cod`, `nome`, `img`, `preco`, `id_categoria`, `destino`) VALUES
(9, 'Traíra Completa', '', '74.90', 9, 1),
(10, 'Traíra Média', '', '64.90', 9, 1),
(11, 'Traíra Pequena', '', '54.90', 9, 1),
(12, 'Moqueca Capixaba', '', '65.00', 9, 1),
(13, 'Portuguesa', '', '35.00', 2, 1),
(14, 'Frango', '', '35.00', 2, 1),
(15, 'Frango c/ Catupiry', '', '35.00', 2, 1),
(16, 'Calabresa', '', '35.00', 2, 1),
(17, 'Bacon', '', '35.00', 2, 1),
(18, 'Á Moda', '', '38.00', 2, 0),
(19, 'Filé c/ Fritas', '', '37.00', 10, 1),
(20, 'Lombo c/ Fritas', '', '32.00', 10, 1),
(21, 'Língua ao Molho Madeira', '', '15.00', 10, 1),
(22, 'Arroz', '', '6.00', 10, 1),
(23, 'Pirão', '', '6.00', 10, 1),
(24, 'Fritas', '', '12.00', 10, 1),
(25, 'Salada Completa', '', '15.00', 10, 1),
(26, 'SKOL', '', '6.50', 5, 0),
(27, 'BRAHMA', '', '6.40', 5, 0),
(28, 'ANTARTICA', '', '5.50', 5, 0),
(29, 'Cerveja Lata', '', '3.50', 5, 0),
(30, 'Ice', '', '5.50', 5, 0),
(31, 'Whisk', '', '15.00', 6, 0),
(33, 'Bacardi', '', '8.00', 6, 0),
(34, 'Martini', '', '8.00', 6, 0),
(35, 'Campari', '', '8.00', 6, 0),
(36, 'Conhaque', '', '6.00', 6, 0),
(37, 'Vodka', '', '8.00', 6, 0),
(38, 'Licor de Menta', '', '6.00', 6, 0),
(39, 'Cachaça', '', '4.00', 6, 0),
(40, 'Cuba', '', '10.00', 6, 0),
(41, 'Caipirinha', '', '9.00', 6, 0),
(42, 'Amarula', '', '10.00', 6, 0),
(43, '2 Litros', '', '7.00', 7, 0),
(44, '1,25 Litros', '', '6.00', 7, 0),
(45, '1 Litro', '', '5.00', 7, 0),
(46, '600 ML', '', '4.50', 7, 0),
(47, '500 ML', '', '4.50', 7, 0),
(48, 'Lata 350 ML', '', '3.50', 7, 0),
(49, 'Feijão', '', '10.00', 4, 1),
(50, 'Pinto', '', '10.00', 4, 1),
(51, 'água c/ Gás', '', '2.00', 8, 0),
(52, 'Água sem Gás', '', '2.00', 8, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `idUser` int(10) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `login` varchar(100) NOT NULL,
  `senha` varchar(20) NOT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `usuario`
--

INSERT INTO `usuario` (`idUser`, `nome`, `email`, `login`, `senha`) VALUES
(1, 'Seu Nome', '', 'aidecb', '8520');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
