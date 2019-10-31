-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 31-Out-2019 às 14:40
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dim`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` smallint(6) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `numeroCasa` varchar(45) DEFAULT NULL,
  `complemento` varchar(45) DEFAULT NULL,
  `data_nascimento` varchar(45) DEFAULT NULL,
  `sexo` tinyint(1) DEFAULT NULL,
  `cep` varchar(45) DEFAULT NULL,
  `logradouro` varchar(45) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `uf` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nome`, `cpf`, `telefone`, `email`, `numeroCasa`, `complemento`, `data_nascimento`, `sexo`, `cep`, `logradouro`, `bairro`, `cidade`, `uf`) VALUES
(0, 'teste1', '', '', '', '', '', '', 0, '', '', '', '', 'Minas Gerais'),
(1, 'Jao', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'acas', '111.222.333-44', '1111111', 'abcd@efgh.com', '12345', 'Onde', '2019-10-29', 0, '1234455', 'Judas', 'Perdeu', 'onde', 'Minas Gerais'),
(1023, 'acas11', '111.222.333-44', '1111111', 'abcd@efgh.com', '', 'Onde', '2019-10-29', 0, '1245352', 'Judas', 'Perdeu', '124daadda', 'Minas Gerais'),
(2223, 'Xablóvski', '111.222.333-44', '', 'abcd@efgh.com', '', 'Onde', '2106-10-03', 0, '102365447', 'Judas', 'Perdeu', '', 'Minas Gerais'),
(10101, 'oiaeu', '', '1111111', 'abcd@efgh.com', '', '', '', 0, '', '', '', '', 'Minas Gerais');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoque`
--

CREATE TABLE `estoque` (
  `idEstoque` smallint(6) NOT NULL,
  `quant_min` int(11) DEFAULT NULL,
  `quant_max` int(11) DEFAULT NULL,
  `idProduto` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fabricante`
--

CREATE TABLE `fabricante` (
  `idFabricante` smallint(6) NOT NULL,
  `nome` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `fabricante`
--

INSERT INTO `fabricante` (`idFabricante`, `nome`) VALUES
(1, 'aaa'),
(123, 'eu12'),
(1234, 'eu'),
(23455, 'kkkkk');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `idFuncionario` smallint(6) NOT NULL,
  `login` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `funcao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`idFuncionario`, `login`, `senha`, `funcao`) VALUES
(0, 'o', '8', 'll'),
(1, 'Igor', NULL, NULL),
(2, 'Rafael', NULL, NULL),
(8, 'Igor', NULL, NULL),
(11, 'ab', NULL, NULL),
(24, 'Leo', NULL, NULL),
(32, 'aacs', '32', 'a'),
(123, 'aaa', NULL, NULL),
(1010, 'xablau1', '32', 'a'),
(1111, 'xablau', '', ''),
(5554, 'alor', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagamento`
--

CREATE TABLE `pagamento` (
  `idPagamento` smallint(6) NOT NULL,
  `tipo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `idProduto` smallint(6) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `nome_farmaco` varchar(45) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `categoria` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `receita` tinyint(1) DEFAULT NULL,
  `medicamento` tinyint(1) DEFAULT NULL,
  `lote` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`idProduto`, `nome`, `nome_farmaco`, `preco`, `categoria`, `tipo`, `receita`, `medicamento`, `lote`) VALUES
(1, 'Ibuprofeno', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Decongex', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Lisador', NULL, 20, NULL, NULL, NULL, NULL, NULL),
(112, 'Nome Comercial', 'Nome Farmaco', 1023, 'a', 'v', 0, 0, '091234'),
(10101, 'buuzin12', 'Nome Farmaco', 20, 'a', 'v', 0, 0, '091234'),
(10102, 'acaj', 'Nome Farmaco', 20, 'a', 'v', 0, 0, '091234');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto_vendido`
--

CREATE TABLE `produto_vendido` (
  `idProdutoVendido` smallint(6) NOT NULL,
  `preco` double DEFAULT NULL,
  `idVenda` smallint(6) NOT NULL,
  `idProduto` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

CREATE TABLE `venda` (
  `idVenda` smallint(6) NOT NULL,
  `preco_total` double DEFAULT NULL,
  `data_venda` varchar(45) DEFAULT NULL,
  `valor_recebido` double DEFAULT NULL,
  `troco` double DEFAULT NULL,
  `idFuncionario` smallint(6) NOT NULL,
  `idCliente` smallint(6) NOT NULL,
  `idPagamento` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Índices para tabela `estoque`
--
ALTER TABLE `estoque`
  ADD PRIMARY KEY (`idEstoque`);

--
-- Índices para tabela `fabricante`
--
ALTER TABLE `fabricante`
  ADD PRIMARY KEY (`idFabricante`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`idFuncionario`);

--
-- Índices para tabela `pagamento`
--
ALTER TABLE `pagamento`
  ADD PRIMARY KEY (`idPagamento`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`idProduto`);

--
-- Índices para tabela `produto_vendido`
--
ALTER TABLE `produto_vendido`
  ADD PRIMARY KEY (`idProdutoVendido`);

--
-- Índices para tabela `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`idVenda`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
