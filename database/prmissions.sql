-- phpMyAdmin SQL Dump
-- version 4.4.15.1
-- http://www.phpmyadmin.net
--
-- Host: mysql472.umbler.com
-- Generation Time: 01-Set-2018 às 14:35
-- Versão do servidor: 5.6.40-log
-- PHP Version: 5.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tasks`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `rotas`
--

CREATE TABLE IF NOT EXISTS `rotas` (
  `ID` int(11) NOT NULL,
  `CLASS` varchar(256) COLLATE utf8mb4_swedish_ci NOT NULL,
  `METHOD` varchar(256) COLLATE utf8mb4_swedish_ci NOT NULL,
  `CLASSMETHOD` varchar(256) COLLATE utf8mb4_swedish_ci NOT NULL,
  `VISIBILITY` int(1) NOT NULL,
  `STATUS` int(1) NOT NULL,
  `DESCRIPTION` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `DTCAD` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Extraindo dados da tabela `rotas`
--

INSERT INTO `rotas` (`ID`, `CLASS`, `METHOD`, `CLASSMETHOD`, `VISIBILITY`, `STATUS`, `DESCRIPTION`, `DTCAD`) VALUES
(1, 'clientes', 'index', 'clientes/index', 1, 1, 'Aguardando descrição', '2018-09-01 11:26:55'),
(2, 'clientes', 'listar', 'clientes/listar', 1, 1, 'Aguardando descrição', '2018-09-01 11:26:55'),
(3, 'welcome', 'index', 'welcome/index', 1, 1, 'Aguardando descrição', '2018-09-01 11:26:55'),
(4, 'clientes', 'escolher', 'clientes/escolher', 1, 1, 'Aguardando descrição', '2018-09-01 11:36:30'),
(5, 'clientes', 'comprar', 'clientes/comprar', 1, 1, 'Aguardando descrição', '2018-09-01 11:36:30'),
(6, 'clientes', 'pagarparcelas', 'clientes/pagarparcelas', 1, 1, 'Aguardando descrição', '2018-09-01 11:36:30'),
(7, 'clientes', 'fazerparcelamento', 'clientes/fazerparcelamento', 1, 1, 'Aguardando descrição', '2018-09-01 11:36:30'),
(8, 'clientes', 'fiado', 'clientes/fiado', 1, 1, 'Aguardando descrição', '2018-09-01 11:36:30'),
(9, 'clientes', 'devolver', 'clientes/devolver', 1, 1, 'Aguardando descrição', '2018-09-01 11:36:30'),
(10, 'clientes', 'trocar', 'clientes/trocar', 1, 1, 'Aguardando descrição', '2018-09-01 11:36:31');

-- --------------------------------------------------------

--
-- Estrutura da tabela `rotas_grupos`
--

CREATE TABLE IF NOT EXISTS `rotas_grupos` (
  `R_ID` int(11) NOT NULL,
  `R_NAME` varchar(256) COLLATE utf8mb4_swedish_ci NOT NULL,
  `R_DESCRIPTION` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `R_STATUS` int(1) NOT NULL,
  `R_DTCAD` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Extraindo dados da tabela `rotas_grupos`
--

INSERT INTO `rotas_grupos` (`R_ID`, `R_NAME`, `R_DESCRIPTION`, `R_STATUS`, `R_DTCAD`) VALUES
(1, 'Superadministrador', 'Este grupo carrega a permissão de acesso a todas as páginas privadas do sistema. Os usuários que estiverem nesse grupo podem acessar todas as funcionalidades sem restrições.', 1, '2018-09-01 11:50:15'),
(2, 'Administrador', 'Este grupo carrega a permissão de acesso a todas as páginas privadas do sistema. Os usuários que estiverem nesse grupo podem acessar todas as funcionalidades sem restrições exceto as permissões.', 1, '2018-09-01 11:50:15'),
(3, 'Recursos humanos', 'RH Administração: Avaliação de Desempenho, GHV e Visita Afastados.', 1, '2018-09-01 11:50:15');

-- --------------------------------------------------------

--
-- Estrutura da tabela `rotas_grupos_metodos`
--

CREATE TABLE IF NOT EXISTS `rotas_grupos_metodos` (
  `RG_ID` int(11) NOT NULL,
  `RG_GROUP` int(11) NOT NULL,
  `RG_METHOD` int(11) NOT NULL,
  `RG_STATUS` int(11) NOT NULL,
  `RG_DTCAD` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Extraindo dados da tabela `rotas_grupos_metodos`
--

INSERT INTO `rotas_grupos_metodos` (`RG_ID`, `RG_GROUP`, `RG_METHOD`, `RG_STATUS`, `RG_DTCAD`) VALUES
(1, 1, 24, 1, '2018-09-01 11:50:15'),
(2, 1, 25, 1, '2018-09-01 11:50:15'),
(3, 1, 26, 1, '2018-09-01 11:50:15'),
(4, 1, 27, 1, '2018-09-01 11:50:15'),
(5, 2, 27, 1, '2018-09-01 11:50:15'),
(6, 2, 28, 1, '2018-09-01 11:50:15'),
(7, 2, 29, 1, '2018-09-01 11:50:15'),
(8, 2, 30, 1, '2018-09-01 11:50:15'),
(9, 2, 31, 1, '2018-09-01 11:50:15'),
(10, 2, 32, 1, '2018-09-01 11:50:15'),
(11, 3, 32, 1, '2018-09-01 11:50:15'),
(12, 3, 33, 1, '2018-09-01 11:50:15');

-- --------------------------------------------------------

--
-- Estrutura da tabela `rotas_grupos_usuarios`
--

CREATE TABLE IF NOT EXISTS `rotas_grupos_usuarios` (
  `RU_ID` int(11) NOT NULL,
  `RU_USUARIO` int(11) NOT NULL,
  `RU_GRUPO` int(11) NOT NULL,
  `RU_DTCAD` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Extraindo dados da tabela `rotas_grupos_usuarios`
--

INSERT INTO `rotas_grupos_usuarios` (`RU_ID`, `RU_USUARIO`, `RU_GRUPO`, `RU_DTCAD`) VALUES
(1, 1, 1, '2018-09-01 11:50:15'),
(2, 2, 1, '2018-09-01 11:50:15'),
(3, 3, 2, '2018-09-01 11:50:15'),
(4, 4, 2, '2018-09-01 11:50:15'),
(5, 5, 3, '2018-09-01 11:50:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rotas`
--
ALTER TABLE `rotas`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rotas_grupos`
--
ALTER TABLE `rotas_grupos`
  ADD PRIMARY KEY (`R_ID`) USING BTREE;

--
-- Indexes for table `rotas_grupos_metodos`
--
ALTER TABLE `rotas_grupos_metodos`
  ADD PRIMARY KEY (`RG_ID`) USING BTREE;

--
-- Indexes for table `rotas_grupos_usuarios`
--
ALTER TABLE `rotas_grupos_usuarios`
  ADD PRIMARY KEY (`RU_ID`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rotas`
--
ALTER TABLE `rotas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `rotas_grupos`
--
ALTER TABLE `rotas_grupos`
  MODIFY `R_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `rotas_grupos_metodos`
--
ALTER TABLE `rotas_grupos_metodos`
  MODIFY `RG_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `rotas_grupos_usuarios`
--
ALTER TABLE `rotas_grupos_usuarios`
  MODIFY `RU_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
