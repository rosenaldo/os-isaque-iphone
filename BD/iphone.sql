-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26/05/2025 às 17:06
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `iphone`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `acessos`
--

CREATE TABLE `acessos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `chave` varchar(50) NOT NULL,
  `grupo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `arquivos`
--

CREATE TABLE `arquivos` (
  `id` int(11) NOT NULL,
  `nome` varchar(70) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `arquivo` varchar(100) DEFAULT NULL,
  `data_cad` date DEFAULT NULL,
  `registro` varchar(50) DEFAULT NULL,
  `id_reg` int(11) DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `arquivos`
--

INSERT INTO `arquivos` (`id`, `nome`, `descricao`, `arquivo`, `data_cad`, `registro`, `id_reg`, `usuario`) VALUES
(3, 'Documento de venda', NULL, '27-06-2024-15-19-09-WhatsApp-Image-2024-06-23-at-09.47.20.jpeg', '2024-06-27', 'Conta à Receber', 55, 29),
(4, 'Documento de venda', NULL, '27-06-2024-15-19-09-WhatsApp-Image-2024-06-23-at-09.47.20.jpeg', '2024-06-27', 'Cliente', 3, 29);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cargos`
--

CREATE TABLE `cargos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `cargos`
--

INSERT INTO `cargos` (`id`, `nome`) VALUES
(10, 'vendedor');

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `ativo` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `telefone2` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `pessoa` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `telefone`, `telefone2`, `cpf`, `endereco`, `data`, `pessoa`) VALUES
(8, 'dASD', '(1', '', '111.111.11', '', '2025-05-26', 'Física');

-- --------------------------------------------------------

--
-- Estrutura para tabela `config`
--

CREATE TABLE `config` (
  `nome` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `instagram` varchar(100) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `icone` varchar(100) DEFAULT NULL,
  `logo_rel` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `validade_orcamento` int(11) DEFAULT NULL,
  `excluir_orcamentos` int(11) DEFAULT NULL,
  `comissao_geral` int(11) DEFAULT NULL,
  `api_whatsapp` varchar(5) NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `instancia` varchar(100) DEFAULT NULL,
  `marca_dagua` varchar(5) NOT NULL,
  `chave_pix` varchar(50) DEFAULT NULL,
  `impressao_automatica` varchar(5) NOT NULL,
  `fonte_comprovante` int(11) NOT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `dias_comissao` int(11) DEFAULT NULL,
  `cobranca_auto` varchar(5) NOT NULL,
  `data_cobranca` date DEFAULT NULL,
  `duas_vias_os` varchar(5) DEFAULT NULL,
  `ativo` varchar(5) DEFAULT NULL,
  `comissao_venda` int(11) DEFAULT NULL,
  `seletor_api` varchar(35) DEFAULT NULL,
  `alterar_acessos` varchar(5) DEFAULT NULL,
  `banco_sistema` varchar(35) DEFAULT NULL,
  `conta_sistema` varchar(20) DEFAULT NULL,
  `agencia_sistema` varchar(20) DEFAULT NULL,
  `beneficiario_sistema` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `config`
--

INSERT INTO `config` (`nome`, `email`, `telefone`, `endereco`, `instagram`, `logo`, `icone`, `logo_rel`, `id`, `validade_orcamento`, `excluir_orcamentos`, `comissao_geral`, `api_whatsapp`, `token`, `instancia`, `marca_dagua`, `chave_pix`, `impressao_automatica`, `fonte_comprovante`, `cnpj`, `dias_comissao`, `cobranca_auto`, `data_cobranca`, `duas_vias_os`, `ativo`, `comissao_venda`, `seletor_api`, `alterar_acessos`, `banco_sistema`, `conta_sistema`, `agencia_sistema`, `beneficiario_sistema`) VALUES
('Isaque iPhone', 'isaqueiphone2@gmail.com', '(84) 99820-0953', NULL, 'https://www.instagram.com/isaqueiphone/', 'logo.png', 'icone.png', 'logo.jpg', 2, 7, NULL, 50, 'Não', NULL, NULL, 'Sim', NULL, 'Não', 12, '28649899000197', 7, 'Sim', NULL, 'Sim', 'Sim', 5, 'menuia', 'Não', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `entradas`
--

CREATE TABLE `entradas` (
  `id` int(11) NOT NULL,
  `produto` int(11) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `motivo` varchar(100) DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `entradas`
--

INSERT INTO `entradas` (`id`, `produto`, `quantidade`, `motivo`, `usuario`, `data`) VALUES
(1, 13, 1, '.', 29, '2024-06-24');

-- --------------------------------------------------------

--
-- Estrutura para tabela `formas_pgto`
--

CREATE TABLE `formas_pgto` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `formas_pgto`
--

INSERT INTO `formas_pgto` (`id`, `nome`) VALUES
(8, 'pix'),
(9, 'cartao de credito'),
(10, 'especie');

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `pix` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `frequencias`
--

CREATE TABLE `frequencias` (
  `id` int(11) NOT NULL,
  `frequencia` varchar(25) NOT NULL,
  `dias` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `grupo_acessos`
--

CREATE TABLE `grupo_acessos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `itens_venda`
--

CREATE TABLE `itens_venda` (
  `id` int(11) NOT NULL,
  `produto` int(11) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `id_venda` int(11) NOT NULL,
  `funcionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `orcamentos`
--

CREATE TABLE `orcamentos` (
  `id` int(11) NOT NULL,
  `cliente` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `data_entrega` date DEFAULT NULL,
  `dias_validade` int(11) DEFAULT NULL,
  `valor` decimal(8,2) DEFAULT NULL,
  `desconto` int(11) DEFAULT NULL,
  `tipo_desconto` varchar(20) DEFAULT NULL,
  `subtotal` decimal(8,2) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `total_produtos` decimal(8,2) DEFAULT NULL,
  `total_servicos` decimal(8,2) DEFAULT NULL,
  `funcionario` int(11) DEFAULT NULL,
  `frete` decimal(8,2) DEFAULT NULL,
  `valor_entrada` decimal(8,2) DEFAULT NULL,
  `saida` varchar(50) DEFAULT NULL,
  `vendedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `os`
--

CREATE TABLE `os` (
  `id` int(11) NOT NULL,
  `cliente` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `data_entrega` date DEFAULT NULL,
  `dias_validade` int(11) DEFAULT NULL,
  `valor` decimal(8,2) DEFAULT NULL,
  `desconto` int(11) DEFAULT NULL,
  `tipo_desconto` varchar(20) DEFAULT NULL,
  `subtotal` decimal(8,2) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `total_produtos` decimal(8,2) DEFAULT NULL,
  `total_servicos` decimal(8,2) DEFAULT NULL,
  `funcionario` int(11) DEFAULT NULL,
  `frete` decimal(8,2) DEFAULT NULL,
  `tecnico` int(11) DEFAULT NULL,
  `laudo` varchar(2000) DEFAULT NULL,
  `condicoes` varchar(2000) DEFAULT NULL,
  `acessorios` varchar(1000) DEFAULT NULL,
  `situacao` varchar(1000) DEFAULT NULL,
  `equipamento` varchar(255) DEFAULT NULL,
  `orcamento` int(11) DEFAULT NULL,
  `mao_obra` decimal(8,2) DEFAULT NULL,
  `longe1` varchar(30) DEFAULT NULL,
  `longe2` varchar(30) DEFAULT NULL,
  `longe3` varchar(30) DEFAULT NULL,
  `longe4` varchar(30) DEFAULT NULL,
  `longe5` varchar(30) DEFAULT NULL,
  `longe6` varchar(30) DEFAULT NULL,
  `longe7` varchar(30) DEFAULT NULL,
  `longe8` varchar(30) DEFAULT NULL,
  `longe9` varchar(30) DEFAULT NULL,
  `longe10` varchar(30) DEFAULT NULL,
  `longe11` varchar(30) DEFAULT NULL,
  `longe12` varchar(30) DEFAULT NULL,
  `perto1` varchar(30) DEFAULT NULL,
  `perto2` varchar(30) DEFAULT NULL,
  `perto3` varchar(30) DEFAULT NULL,
  `perto4` varchar(30) DEFAULT NULL,
  `perto5` varchar(30) DEFAULT NULL,
  `perto6` varchar(30) DEFAULT NULL,
  `perto7` varchar(30) DEFAULT NULL,
  `perto8` varchar(30) DEFAULT NULL,
  `pedido` varchar(20) DEFAULT NULL,
  `laboratorio` varchar(50) DEFAULT NULL,
  `doutor` varchar(50) DEFAULT NULL,
  `lente` varchar(100) NOT NULL,
  `cotico` varchar(100) NOT NULL,
  `altura` varchar(50) NOT NULL,
  `cor` varchar(50) NOT NULL,
  `retificacao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pagar`
--

CREATE TABLE `pagar` (
  `id` int(11) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `funcionario` int(11) DEFAULT NULL,
  `fornecedor` int(11) DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  `valor` decimal(8,2) DEFAULT NULL,
  `data_lanc` date DEFAULT NULL,
  `data_venc` date DEFAULT NULL,
  `data_pgto` date DEFAULT NULL,
  `usuario_lanc` int(11) DEFAULT NULL,
  `usuario_pgto` int(11) DEFAULT NULL,
  `frequencia` int(11) DEFAULT NULL,
  `saida` varchar(50) DEFAULT NULL,
  `arquivo` varchar(100) DEFAULT NULL,
  `pago` varchar(5) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `referencia` varchar(40) DEFAULT NULL,
  `id_ref` int(11) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `valor_compra` decimal(8,2) DEFAULT NULL,
  `valor_venda` decimal(8,2) DEFAULT NULL,
  `estoque` int(11) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `ativo` varchar(5) DEFAULT NULL,
  `nivel_estoque` int(11) DEFAULT NULL,
  `categoria` int(11) DEFAULT NULL,
  `fornecedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos_orc`
--

CREATE TABLE `produtos_orc` (
  `id` int(11) NOT NULL,
  `produto` int(11) DEFAULT NULL,
  `orcamento` int(11) DEFAULT NULL,
  `funcionario` int(11) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `valor` decimal(8,2) DEFAULT NULL,
  `total` decimal(8,2) DEFAULT NULL,
  `os` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `produtos_orc`
--

INSERT INTO `produtos_orc` (`id`, `produto`, `orcamento`, `funcionario`, `quantidade`, `valor`, `total`, `os`) VALUES
(161, 15, 114, 29, 1, 490.00, 490.00, NULL),
(162, 14, 114, 29, 1, 389.00, 389.00, NULL),
(163, 13, 115, 29, 1, 389.00, 389.00, NULL),
(164, 13, 116, 29, 1, 389.00, 389.00, NULL),
(165, 13, 117, 29, 2, 389.00, 778.00, NULL),
(166, 15, 118, 29, 1, 490.00, 490.00, NULL),
(167, 15, 119, 29, 1, 490.00, 490.00, NULL),
(168, 15, 120, 29, 1, 490.00, 490.00, NULL),
(169, 14, 120, 29, 1, 389.00, 389.00, NULL),
(170, 13, 121, 29, 1, 389.00, 389.00, NULL),
(171, 15, 121, 29, 1, 490.00, 490.00, NULL),
(172, 13, 122, 29, 2, 389.00, 778.00, NULL),
(173, 14, 122, 29, 1, 389.00, 389.00, NULL),
(174, 15, 122, 29, 3, 490.00, 1470.00, NULL),
(175, 13, 123, 29, 1, 389.00, 389.00, NULL),
(176, 15, 123, 29, 2, 490.00, 980.00, NULL),
(177, 14, 123, 29, 1, 389.00, 389.00, NULL),
(178, 15, 124, 29, 1, 490.00, 490.00, NULL),
(179, 13, 125, 29, 1, 389.00, 389.00, NULL),
(180, 13, 126, 29, 1, 389.00, 389.00, NULL),
(181, 15, 127, 29, 1, 490.00, 490.00, NULL),
(182, 15, 128, 29, 1, 490.00, 490.00, NULL),
(183, 15, 129, 29, 1, 490.00, 490.00, NULL),
(184, 13, 130, 29, 1, 389.00, 389.00, NULL),
(185, 13, 131, 29, 1, 389.00, 389.00, NULL),
(186, 13, 132, 29, 1, 389.00, 389.00, NULL),
(187, 13, 133, 29, 1, 389.00, 389.00, NULL),
(188, 13, 134, 29, 1, 389.00, 389.00, NULL),
(189, 15, 135, 29, 1, 490.00, 490.00, NULL),
(190, 13, 136, 29, 1, 389.00, 389.00, NULL),
(191, 13, 137, 29, 1, 389.00, 389.00, NULL),
(192, 13, 138, 29, 1, 389.00, 389.00, NULL),
(193, 15, 138, 29, 2, 490.00, 980.00, NULL),
(194, 15, 139, 29, 2, 490.00, 980.00, NULL),
(195, 15, 140, 29, 1, 490.00, 490.00, NULL),
(196, 15, 141, 29, 1, 490.00, 490.00, NULL),
(197, 13, 142, 29, 1, 389.00, 389.00, NULL),
(198, 13, 143, 29, 1, 389.00, 389.00, NULL),
(199, 13, 144, 29, 2, 389.00, 778.00, NULL),
(200, 13, 145, 29, 1, 389.00, 389.00, NULL),
(201, 13, 146, 29, 1, 389.00, 389.00, NULL),
(202, 15, 147, 29, 3, 490.00, 1470.00, NULL),
(203, 15, 148, 29, 2, 490.00, 980.00, NULL),
(204, 13, 148, 29, 1, 389.00, 389.00, NULL),
(205, 13, 149, 29, 5, 389.00, 1945.00, NULL),
(206, 13, 150, 29, 3, 389.00, 1167.00, NULL),
(207, 15, 151, 29, 2, 490.00, 980.00, NULL),
(208, 13, 152, 29, 1, 389.00, 389.00, NULL),
(209, 14, 153, 29, 1, 389.00, 389.00, NULL),
(210, 13, 154, 29, 1, 389.00, 389.00, NULL),
(211, 13, 155, 29, 1, 389.00, 389.00, NULL),
(212, 13, 156, 29, 1, 389.00, 389.00, NULL),
(213, 13, 157, 29, 1, 389.00, 389.00, NULL),
(214, 13, 158, 29, 1, 389.00, 389.00, NULL),
(215, 13, 159, 29, 1, 389.00, 389.00, NULL),
(216, 13, 160, 29, 1, 389.00, 389.00, NULL),
(217, 13, 161, 29, 1, 389.00, 389.00, NULL),
(218, 15, 161, 29, 2, 490.00, 980.00, NULL),
(219, 13, 162, 29, 1, 389.00, 389.00, NULL),
(220, 13, 163, 29, 2, 389.00, 778.00, NULL),
(221, 14, 163, 29, 1, 389.00, 389.00, NULL),
(222, 15, 163, 29, 1, 490.00, 490.00, NULL),
(223, 13, 164, 29, 4, 389.00, 1556.00, NULL),
(224, 13, 165, 29, 1, 389.00, 389.00, NULL),
(225, 14, 165, 29, 1, 389.00, 389.00, NULL),
(226, 13, NULL, 29, 2, 389.00, 778.00, 25),
(227, 13, 166, 29, 1, 389.00, 389.00, NULL),
(228, 13, 167, 29, 1, 389.00, 389.00, NULL),
(229, 13, NULL, 29, 1, 389.00, 389.00, 26),
(230, 14, NULL, 29, 1, 389.00, 389.00, 26),
(234, 13, NULL, 29, 1, 389.00, 389.00, 27),
(235, 13, 168, 29, 1, 389.00, 389.00, NULL),
(236, 14, 169, 29, 1, 389.00, 389.00, NULL),
(237, 13, NULL, 29, 1, 389.00, 389.00, 28),
(238, 13, NULL, 29, 1, 389.00, 389.00, 29),
(239, 13, NULL, 29, 2, 389.00, 778.00, 30),
(240, 13, NULL, 29, 1, 389.00, 389.00, 31),
(241, 15, NULL, 29, 1, 490.00, 490.00, 32),
(242, 15, 170, 29, 1, 490.00, 490.00, NULL),
(243, 13, 171, 29, 1, 389.00, 389.00, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `receber`
--

CREATE TABLE `receber` (
  `id` int(11) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  `valor` decimal(8,2) DEFAULT NULL,
  `data_lanc` date DEFAULT NULL,
  `data_venc` date DEFAULT NULL,
  `data_pgto` date DEFAULT NULL,
  `usuario_lanc` int(11) DEFAULT NULL,
  `usuario_pgto` int(11) DEFAULT NULL,
  `frequencia` int(11) DEFAULT NULL,
  `saida` varchar(50) DEFAULT NULL,
  `arquivo` varchar(100) DEFAULT NULL,
  `pago` varchar(5) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `referencia` varchar(40) DEFAULT NULL,
  `id_ref` int(11) DEFAULT NULL,
  `desconto` decimal(8,2) DEFAULT NULL,
  `troco` decimal(8,2) DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `cancelada` varchar(5) DEFAULT NULL,
  `vendedor` int(11) DEFAULT NULL,
  `parcela` int(11) DEFAULT NULL,
  `valor_entrada` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `saidas`
--

CREATE TABLE `saidas` (
  `id` int(11) NOT NULL,
  `produto` int(11) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `motivo` varchar(100) DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicos`
--

CREATE TABLE `servicos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `valor` decimal(8,2) DEFAULT NULL,
  `comissao` int(11) DEFAULT NULL,
  `dias` int(11) DEFAULT NULL,
  `ativo` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `servicos`
--

INSERT INTO `servicos` (`id`, `nome`, `valor`, `comissao`, `dias`, `ativo`) VALUES
(4, 'Ajuste na armação', 12.00, 0, 0, 'Sim');

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicos_orc`
--

CREATE TABLE `servicos_orc` (
  `id` int(11) NOT NULL,
  `servico` int(11) DEFAULT NULL,
  `orcamento` int(11) DEFAULT NULL,
  `funcionario` int(11) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `valor` decimal(8,2) DEFAULT NULL,
  `total` decimal(8,2) DEFAULT NULL,
  `os` int(11) DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `servicos_orc`
--

INSERT INTO `servicos_orc` (`id`, `servico`, `orcamento`, `funcionario`, `quantidade`, `valor`, `total`, `os`, `cliente`, `data`) VALUES
(15, 3, 13, 29, 1, 389.00, 389.00, NULL, NULL, NULL),
(16, 4, NULL, 29, 1, 12.00, 12.00, 14, 4, NULL),
(17, 4, 162, 29, 1, 12.00, 12.00, NULL, NULL, NULL),
(18, 4, 167, 29, 1, 12.00, 12.00, NULL, NULL, NULL),
(20, 4, 168, 29, 1, 12.00, 12.00, NULL, NULL, NULL),
(21, 4, NULL, 29, 1, 12.00, 12.00, 28, 6, '2025-03-29'),
(22, 4, NULL, 29, 1, 12.00, 12.00, 29, 5, '2025-03-30'),
(23, 4, NULL, 29, 1, 12.00, 12.00, 32, 6, '2025-04-01');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  `senha_crip` varchar(130) DEFAULT NULL,
  `nivel` varchar(25) DEFAULT NULL,
  `ativo` varchar(5) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(150) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `comissao` int(11) DEFAULT NULL,
  `id_ref` int(11) DEFAULT NULL,
  `chave_pix` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `senha_crip`, `nivel`, `ativo`, `telefone`, `endereco`, `foto`, `data`, `comissao`, `id_ref`, `chave_pix`) VALUES
(29, 'Isaque iPhone', 'isaqueiphone2@gmail.com', '', '$2y$10$ysutipNTzumitDM8LcbIUeWjQifJ4LcZFsShBzMoZNonJK2TrrKUq', 'Administrador', 'Sim', '(84) 99820-0953', '', '26-05-2025-11-04-59-perf.png', '2024-06-22', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios_permissoes`
--

CREATE TABLE `usuarios_permissoes` (
  `id` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `permissao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `valor_parcial`
--

CREATE TABLE `valor_parcial` (
  `id` int(11) NOT NULL,
  `id_conta` int(11) NOT NULL,
  `tipo` varchar(15) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data` date NOT NULL,
  `usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `valor_parcial`
--

INSERT INTO `valor_parcial` (`id`, `id_conta`, `tipo`, `valor`, `data`, `usuario`) VALUES
(48, 153, 'Receber', 369.00, '2024-08-03', 29),
(49, 153, 'Receber', 100.00, '2024-08-03', 29),
(50, 153, 'Receber', 500.00, '2024-08-03', 29),
(51, 159, 'Receber', 500.00, '2024-08-15', 29),
(52, 159, 'Receber', 100.00, '2024-08-15', 29),
(53, 162, 'Receber', 100.00, '2024-10-20', 29),
(54, 166, 'Receber', 250.00, '2025-03-29', 29),
(55, 171, 'Receber', 100.00, '2025-03-29', 29);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `acessos`
--
ALTER TABLE `acessos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `arquivos`
--
ALTER TABLE `arquivos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `formas_pgto`
--
ALTER TABLE `formas_pgto`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `frequencias`
--
ALTER TABLE `frequencias`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `grupo_acessos`
--
ALTER TABLE `grupo_acessos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `itens_venda`
--
ALTER TABLE `itens_venda`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `orcamentos`
--
ALTER TABLE `orcamentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `os`
--
ALTER TABLE `os`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pagar`
--
ALTER TABLE `pagar`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `produtos_orc`
--
ALTER TABLE `produtos_orc`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `receber`
--
ALTER TABLE `receber`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `saidas`
--
ALTER TABLE `saidas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `servicos_orc`
--
ALTER TABLE `servicos_orc`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios_permissoes`
--
ALTER TABLE `usuarios_permissoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `valor_parcial`
--
ALTER TABLE `valor_parcial`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `acessos`
--
ALTER TABLE `acessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `arquivos`
--
ALTER TABLE `arquivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `entradas`
--
ALTER TABLE `entradas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `formas_pgto`
--
ALTER TABLE `formas_pgto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `frequencias`
--
ALTER TABLE `frequencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `grupo_acessos`
--
ALTER TABLE `grupo_acessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `itens_venda`
--
ALTER TABLE `itens_venda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT de tabela `orcamentos`
--
ALTER TABLE `orcamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT de tabela `os`
--
ALTER TABLE `os`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `pagar`
--
ALTER TABLE `pagar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `produtos_orc`
--
ALTER TABLE `produtos_orc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT de tabela `receber`
--
ALTER TABLE `receber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT de tabela `saidas`
--
ALTER TABLE `saidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `servicos_orc`
--
ALTER TABLE `servicos_orc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de tabela `usuarios_permissoes`
--
ALTER TABLE `usuarios_permissoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de tabela `valor_parcial`
--
ALTER TABLE `valor_parcial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
