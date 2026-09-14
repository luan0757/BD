-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14/09/2026 às 21:24
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `Código_do_Cliente` int(11) NOT NULL,
  `Nome_Completo` varchar(150) NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Telefone` varchar(15) NOT NULL,
  `Data_Nascimento` date NOT NULL,
  `Endereco` varchar(255) NOT NULL,
  `Cidade` varchar(100) NOT NULL,
  `Estado` char(2) NOT NULL,
  `Data_Cadastro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`Código_do_Cliente`, `Nome_Completo`, `CPF`, `Email`, `Telefone`, `Data_Nascimento`, `Endereco`, `Cidade`, `Estado`, `Data_Cadastro`) VALUES
(1, 'Cleiton Peres', '33322211102', 'cleitonperes1234@gmail.com', '14123456789', '0000-00-00', 'rua joaquim, 125', 'Garça', 'SP', '2026-09-14'),
(2, 'Gabriel Henrique', '98765432110', 'Gabriel0987@gmail.com', '14765432189', '1999-09-14', '', '', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `estoque`
--

CREATE TABLE `estoque` (
  `codigo_estoque` int(11) NOT NULL,
  `codigo_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `localizacao` varchar(100) NOT NULL,
  `ultima_atu` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `Codigo_Produto` int(11) NOT NULL,
  `Nome_Produto` varchar(100) NOT NULL,
  `Descricao` text DEFAULT NULL,
  `Preco_Unitario` decimal(10,2) NOT NULL,
  `Categoria` varchar(50) NOT NULL,
  `Marca` varchar(50) NOT NULL,
  `Data_Fabricacao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`Código_do_Cliente`),
  ADD UNIQUE KEY `CPF` (`CPF`);

--
-- Índices de tabela `estoque`
--
ALTER TABLE `estoque`
  ADD PRIMARY KEY (`codigo_estoque`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`Codigo_Produto`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `Codigo_Produto` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
