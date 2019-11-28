-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Nov-2019 às 12:47
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.3.7

create database drogarim;
use drogarim;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `drogarim`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `idCategoria` smallint(6) DEFAULT NULL,
  `nome` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`idCategoria`, `nome`) VALUES
(123, 'Categoria 1');

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
(1213, 'joao', '09509509595', '3232202200', 'joao@gmail.com', '10', 'casa', '1995-08-21', 0, '36010000', 'rua joao', 'centfro', 'juiz de fora', 'Minas Gerais');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoque`
--

CREATE TABLE `estoque` (
  `idEstoque` smallint(6) NOT NULL,
  `quant_min` int(11) DEFAULT NULL,
  `quant_max` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `estoque`
--

INSERT INTO `estoque` (`idEstoque`, `quant_min`, `quant_max`) VALUES
(123, 5, 12),
(1112, 0, 0);

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
(1233, 'Fabricante x');

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
(24, 'Leona', '', ''),
(123, 'aaa', NULL, NULL),
(1111, 'xablau', '', ''),
(5554, 'alors', '', '');

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
  `tipo` varchar(45) DEFAULT NULL,
  `receita` tinyint(1) DEFAULT NULL,
  `medicamento` tinyint(1) DEFAULT NULL,
  `lote` varchar(10) DEFAULT NULL,
  `quantidade` int(11) DEFAULT 0,
  `idFabricante` int(11) DEFAULT NULL,
  `idCategoria` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`idProduto`, `nome`, `nome_farmaco`, `preco`, `tipo`, `receita`, `medicamento`, `lote`, `quantidade`, `idFabricante`, `idCategoria`) VALUES
(142, 'Parabenos', 'Isopropil', 223, 'Comprimido', 1, 1, '2019-11-14', 0, 1233, 123);

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

--
-- Extraindo dados da tabela `produto_vendido`
--

INSERT INTO `produto_vendido` (`idProdutoVendido`, `preco`, `idVenda`, `idProduto`) VALUES
(124, 124, 1, 3),
(144, 243, 221, 2233),
(258, 852, 31, 1235),
(1143, 234, 1, 2234),
(1211, 852, 31, 3);

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
  `idFuncionario` smallint(6) DEFAULT NULL,
  `idCliente` smallint(6) DEFAULT NULL,
  `idPagamento` smallint(6) DEFAULT NULL,
  `idProduto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `venda`
--

INSERT INTO `venda` (`idVenda`, `preco_total`, `data_venda`, `valor_recebido`, `troco`, `idFuncionario`, `idCliente`, `idPagamento`, `idProduto`) VALUES
(1, 246, '2019-11-13', NULL, NULL, NULL, NULL, NULL, 3),
(3, 41, '2019-11-14', NULL, NULL, NULL, NULL, NULL, NULL),
(31, 123, '2019-11-21', NULL, NULL, NULL, NULL, NULL, 1235),
(221, 125, '2019-11-08', NULL, NULL, NULL, NULL, NULL, NULL),
(225, 123, '2019-11-07', NULL, NULL, NULL, NULL, NULL, NULL),
(1233, 0, '2019-11-05', NULL, NULL, NULL, NULL, NULL, NULL),
(2333, 123, '2019-10-31', NULL, NULL, NULL, NULL, NULL, NULL);

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
