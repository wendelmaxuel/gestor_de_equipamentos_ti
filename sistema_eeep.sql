-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Set-2024 às 22:04
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistema_eeep`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id_usuario`, `usuario`, `senha`) VALUES
(2, 'setor_ti', '$2y$10$BRkslGkriJwQbIiqG4Y5LuzZGnYeyoxUitZ1jZszaqBpv1eQAa8v6');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nome_categoria` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nome_categoria`) VALUES
(1, 'PERIFÉRICOS'),
(2, 'MONITORES'),
(3, 'DESKTOP\'S'),
(4, 'CABOS'),
(5, 'NOTEBOOK\'S'),
(6, 'IMPRESSORAS');

-- --------------------------------------------------------

--
-- Estrutura da tabela `entrada`
--

CREATE TABLE `entrada` (
  `id` int(11) NOT NULL,
  `produto` varchar(50) NOT NULL,
  `product` varchar(50) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `chamado` int(15) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `quantidade` int(11) NOT NULL,
  `data_entrada` date NOT NULL,
  `data_entries` date NOT NULL,
  `hora_entries` time NOT NULL,
  `hora_entrada` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `entrada`
--

INSERT INTO `entrada` (`id`, `produto`, `product`, `categoria`, `category`, `chamado`, `descricao`, `quantidade`, `data_entrada`, `data_entries`, `hora_entries`, `hora_entrada`) VALUES
(2, 'Teclado e Mouse s/ fio Branco', '', 'PERIFÉRICOS', '', 0, 'Entrada de mercadoria para reposição de estoque.                      ', 100, '0000-00-00', '0000-00-00', '00:00:00', '19:41:19'),
(3, 'Teclado e Mouse c/ fio Preto', '', 'PERIFÉRICOS', '', 0, 'Entrada de mercadoria para reposição de estoque.                      ', 100, '0000-00-00', '0000-00-00', '00:00:00', '19:42:55'),
(4, 'Mouse Logitech USB Cinza com Preto', '', 'PERIFÉRICOS', '', 0, 'Entrada de mercadoria para reposição de estoque.', 100, '2024-08-01', '0000-00-00', '00:00:00', '19:43:09'),
(5, 'Teclado Logitech 115 Cinza c/ Preto. USB', '', 'PERIFÉRICOS', '', 0, 'Entrada de mercadoria para reposição de estoque.', 100, '2024-08-01', '0000-00-00', '00:00:00', '19:45:08'),
(6, 'Monitor Dell 21.5 VGA e DisplayPort Preto', '', 'MONITORES', '', 0, 'Entrada de mercadoria para reposição de estoque.', 25, '2024-08-07', '0000-00-00', '00:00:00', '19:45:31'),
(7, 'Notebook SONY i3 12º Geração', '', 'NOTEBOOK\'S', '', 0, 'Entrada de mercadoria para reposição de estoque.', 10, '2024-09-02', '0000-00-00', '00:00:00', '19:46:06'),
(8, 'Notebook DELL 12ª Geração. Cinza', '', 'NOTEBOOK\'S', '', 0, 'Entrada de mercadoria para reposição de estoque.', 10, '2024-09-02', '0000-00-00', '00:00:00', '19:46:42'),
(9, 'Notebook DELL 12ª Geração, i5. Cinza', '', 'NOTEBOOK\'S', '', 0, 'Entrada de mercadoria para reposição de estoque.', 5, '2024-09-02', '0000-00-00', '00:00:00', '19:47:10'),
(10, 'DESKTOP DELL, i3, 12ª Geração. 8GB, SSD 240GB', '', 'DESKTOP\'S', '', 0, 'Entrada de mercadoria para reposição de estoque.', 10, '2024-09-02', '0000-00-00', '00:00:00', '19:47:33'),
(11, 'DESKTOP DELL, i5, 12ª Geração. 8GB, SSD 240GB', '', 'DESKTOP\'S', '', 0, 'Entrada de mercadoria para reposição de estoque.', 10, '2024-09-02', '0000-00-00', '00:00:00', '19:50:12'),
(12, 'Mini PC DELL, i3, 12ª Geração, 8GB RAM, SSD 240GB', '', 'DESKTOP\'S', '', 0, 'Entrada de mercadoria para o novo projeto.', 25, '2024-09-02', '0000-00-00', '00:00:00', '19:50:27'),
(13, 'Cabo de Força p/ PC e impressora', '', 'CABOS', '', 0, 'Entrada de mercadoria para reposição de estoque.', 100, '2024-09-02', '0000-00-00', '00:00:00', '19:51:34'),
(14, 'Cabo de Força tripolar p/ fonte de notebook', '', 'CABOS', '', 0, 'Entrada de mercadoria para reposição de estoque.', 100, '2024-09-02', '0000-00-00', '00:00:00', '19:51:53'),
(15, 'Adaptador Tipo C', '', 'PERIFÉRICOS', '', 0, 'Entrada de mercadoria para reposição de estoque.\r\nAdaptador para substituição nos leitos.', 25, '2024-09-02', '0000-00-00', '00:00:00', '19:52:04'),
(16, 'HD Externo Seagate 1TB', '', 'PERIFÉRICOS', '', 0, 'Entrada de mercadoria para reposição de estoque.\r\nHD para uso da Radiologia', 10, '2024-08-01', '0000-00-00', '00:00:00', '19:52:44'),
(17, 'Gravadora de DVD Portátil DELL', '', 'PERIFÉRICOS', '', 0, 'Entrada de mercadoria para reposição de estoque.\r\nGravadora para uso da Radiologia.', 10, '2024-08-01', '0000-00-00', '00:00:00', '19:53:20'),
(18, 'Impressora Konica Multifuncional', '', 'PERIFÉRICOS', '', 0, 'Entrada de duas Konicas Multi.', 2, '2024-09-09', '0000-00-00', '00:00:00', '14:54:55');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoque`
--

CREATE TABLE `estoque` (
  `id_produto` int(11) NOT NULL,
  `produto` varchar(50) NOT NULL,
  `product` varchar(50) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `category` varchar(30) NOT NULL,
  `chamado` int(15) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `consumo` varchar(10) NOT NULL,
  `quantidade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `estoque`
--

INSERT INTO `estoque` (`id_produto`, `produto`, `product`, `categoria`, `category`, `chamado`, `descricao`, `consumo`, `quantidade`) VALUES
(2, 'Teclado e Mouse s/ fio Branco', '', 'PERIFÉRICOS', '', 0, 'Teclado e Mouse s/ fio branco.', 'sim', 94),
(3, 'Teclado e Mouse c/ fio Preto', '', 'PERIFÉRICOS', '', 0, 'Teclado e Mouse com fio USB. Preto', 'sim', 100),
(4, 'Mouse Logitech USB Cinza com Preto', '', 'PERIFÉRICOS', '', 0, 'Mouse Logitech 170. USB - toque sensível.', 'sim', 99),
(5, 'Teclado Logitech 115 Cinza c/ Preto. USB', '', 'PERIFÉRICOS', '', 0, 'Teclado Logitech 115 Cinza c/ Preto teclas fundas.\r\nUSB.', 'sim', 100),
(6, 'Monitor Dell 21.5 VGA e DisplayPort Preto', '', 'MONITORES', '', 0, 'Monitor Dell 21.5.\r\nEntrada VGA e DisplayPort.\r\nPreto.', 'sim', 25),
(7, 'Notebook SONY i3 12º Geração', '', 'NOTEBOOK\'S', '', 0, 'Notebook Sony, 12ª Geração, 8GB RAM.', 'sim', 10),
(8, 'Notebook DELL 12ª Geração. Cinza', '', 'NOTEBOOK\'S', '', 0, 'Notebook Dell, 12ª Geração, 8GB RAM. Cinza', 'sim', 10),
(9, 'Notebook DELL 12ª Geração, i5. Cinza', '', 'NOTEBOOK\'S', '', 0, 'Notebook Dell, i5 12ª Geração 8GB RAM. Cinza', 'sim', 5),
(10, 'DESKTOP DELL, i3, 12ª Geração. 8GB, SSD 240GB', '', 'DESKTOP\'S', '', 0, 'DESKTOP Dell, i3, 12ª Geração. 8GB, SSD 240GB', 'sim', 9),
(11, 'DESKTOP DELL, i5, 12ª Geração. 8GB, SSD 240GB', '', 'DESKTOP\'S', '', 0, 'DESKTOP Dell, i5, 12ª Geração. 8GB, SSD 240GB', 'sim', 10),
(12, 'Mini PC DELL, i3, 12ª Geração, 8GB RAM, SSD 240GB ', '', 'PERIFÉRICOS', '', 0, 'Mini PC DELL, i3, 12ª\r\nGeração, 8GB RAM,\r\nSSD 240GB                      ', '', 15),
(13, 'Impressora Samsung M4020', '', 'IMPRESSORAS', '', 0, 'Impressora Laser Samsung M4020 Monocromática.', 'sim', NULL),
(14, 'Impressora Samsung M4070', '', 'IMPRESSORAS', '', 0, 'Impressora Multifuncional, Laser M4070', 'sim', NULL),
(15, 'Cabo de Força p/ PC e impressora', '', 'CABOS', '', 0, 'Cabo de força preto, para conexão em PC e Impressora', 'sim', 100),
(16, 'Cabo de Força tripolar p/ fonte de notebook', '', 'CABOS', '', 0, 'Cabo de Força tripolar para conexão em fonte de notebook', 'sim', 100),
(17, 'Adaptador Tipo C', '', 'PERIFÉRICOS', '', 0, 'Adaptador para conexão de cabo Tipo C Smart', 'sim', 25),
(18, 'HD Externo Seagate 1TB', '', 'PERIFÉRICOS', '', 0, 'HD Externo Seagate 1TB para Backup de imagens', 'sim', 10),
(19, 'Gravadora de DVD Portátil DELL', '', 'PERIFÉRICOS', '', 0, 'Gravadora de DVD Portátil Dell, para visualizar exames da Radiologia', 'sim', 10),
(20, 'Monitor E1916H', '', 'MONITORES', '', 0, 'Monitor Dell E1916H', 'sim', 95),
(21, 'Cabo de Rede CAT6 Ver', '', 'CABOS', '', 0, 'Cabo de rede para conexões diversas.', 'sim', 0),
(22, 'Impressora Konica Multifuncional  ', '', 'PERIFÉRICOS', '', 0, 'Nova franquia de impressão.                      ', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id_produto` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `product` varchar(50) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `category` varchar(30) NOT NULL,
  `chamado` int(15) NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `setor` varchar(10) DEFAULT NULL,
  `consumo` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id_produto`, `nome`, `product`, `categoria`, `category`, `chamado`, `descricao`, `setor`, `consumo`) VALUES
(2, 'Teclado e Mouse s/ fio Branco', '', 'PERIFÉRICOS', '', 0, 'Teclado e Mouse s/ fio branco.', NULL, NULL),
(3, 'Teclado e Mouse c/ fio Preto', '', 'PERIFÉRICOS', '', 0, 'Teclado e Mouse com fio USB. Preto', NULL, NULL),
(4, 'Mouse Logitech USB Cinza com Preto', '', 'PERIFÉRICOS', '', 0, 'Mouse Logitech 170. USB - toque sensível.', NULL, NULL),
(5, 'Teclado Logitech 115 Cinza c/ Preto. USB', '', 'PERIFÉRICOS', '', 0, 'Teclado Logitech 115 Cinza c/ Preto teclas fundas.\r\nUSB.', NULL, NULL),
(6, 'Monitor Dell 21.5 VGA e DisplayPort Preto', '', 'MONITORES', '', 0, 'Monitor Dell 21.5.\r\nEntrada VGA e DisplayPort.\r\nPreto.', NULL, NULL),
(7, 'Notebook SONY i3 12º Geração', '', 'NOTEBOOK\'S', '', 0, 'Notebook Sony, 12ª Geração, 8GB RAM.', NULL, NULL),
(8, 'Notebook DELL 12ª Geração. Cinza', '', 'NOTEBOOK\'S', '', 0, 'Notebook Dell, 12ª Geração, 8GB RAM. Cinza', NULL, NULL),
(9, 'Notebook DELL 12ª Geração, i5. Cinza', '', 'NOTEBOOK\'S', '', 0, 'Notebook Dell, i5 12ª Geração 8GB RAM. Cinza', NULL, NULL),
(10, 'DESKTOP DELL, i3, 12ª Geração. 8GB, SSD 240GB', '', 'DESKTOP\'S', '', 0, 'DESKTOP Dell, i3, 12ª Geração. 8GB, SSD 240GB', NULL, NULL),
(11, 'DESKTOP DELL, i5, 12ª Geração. 8GB, SSD 240GB', '', 'DESKTOP\'S', '', 0, 'DESKTOP Dell, i5, 12ª Geração. 8GB, SSD 240GB', NULL, NULL),
(12, 'Mini PC DELL, i3, 12ª Geração, 8GB RAM, SSD 240GB ', '', 'PERIFÉRICOS', '', 0, 'Mini PC DELL, i3, 12ª\r\nGeração, 8GB RAM,\r\nSSD 240GB                      ', NULL, NULL),
(13, 'Impressora Samsung M4020', '', 'IMPRESSORAS', '', 0, 'Impressora Laser Samsung M4020 Monocromática.', NULL, NULL),
(14, 'Impressora Samsung M4070', '', 'IMPRESSORAS', '', 0, 'Impressora Multifuncional, Laser M4070', NULL, NULL),
(15, 'Cabo de Força p/ PC e impressora', '', 'CABOS', '', 0, 'Cabo de força preto, para conexão em PC e Impressora', NULL, NULL),
(16, 'Cabo de Força tripolar p/ fonte de notebook', '', 'CABOS', '', 0, 'Cabo de Força tripolar para conexão em fonte de notebook', NULL, NULL),
(17, 'Adaptador Tipo C', '', 'PERIFÉRICOS', '', 0, 'Adaptador para conexão de cabo Tipo C Smart', NULL, NULL),
(18, 'HD Externo Seagate 1TB', '', 'PERIFÉRICOS', '', 0, 'HD Externo Seagate 1TB para Backup de imagens', NULL, NULL),
(19, 'Gravadora de DVD Portátil DELL', '', 'PERIFÉRICOS', '', 0, 'Gravadora de DVD Portátil Dell, para visualizar exames da Radiologia', NULL, NULL),
(20, 'Monitor E1916H', '', 'MONITORES', '', 0, 'Monitor Dell E1916H', NULL, NULL),
(21, 'Cabo de Rede CAT6 Ver', '', 'CABOS', '', 0, 'Cabo de rede para conexões diversas.', NULL, 'sim'),
(22, 'Impressora Konica Multifuncional  ', '', 'PERIFÉRICOS', '', 0, 'Nova franquia de impressão.                      ', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `saida`
--

CREATE TABLE `saida` (
  `id` int(11) NOT NULL,
  `produto` varchar(50) NOT NULL,
  `product` varchar(50) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `chamado` int(15) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `quantidade` int(11) NOT NULL,
  `data_saida` date NOT NULL,
  `data_exits` date NOT NULL,
  `hora_saida` time NOT NULL,
  `hora_exits` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `saida`
--

INSERT INTO `saida` (`id`, `produto`, `product`, `categoria`, `category`, `chamado`, `descricao`, `quantidade`, `data_saida`, `data_exits`, `hora_saida`, `hora_exits`) VALUES
(10, 'Teclado e Mouse s/ fio Branco', '', 'PERIFÉRICOS', '', 0, 'RITM035956425', 1, '2024-09-09', '0000-00-00', '18:53:35', '00:00:00'),
(11, 'DESKTOP DELL, i3, 12ª Geração. 8GB, SSD 240GB', '', 'DESKTOP\'S', '', 0, 'RITM035956426', 1, '2024-09-02', '0000-00-00', '18:57:16', '00:00:00'),
(12, 'Monitor E1916H', '', 'MONITORES', '', 0, 'RITM035956427', 5, '2024-09-09', '0000-00-00', '00:01:26', '00:00:00');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices para tabela `entrada`
--
ALTER TABLE `entrada`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `estoque`
--
ALTER TABLE `estoque`
  ADD PRIMARY KEY (`id_produto`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id_produto`);

--
-- Índices para tabela `saida`
--
ALTER TABLE `saida`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `admin`
--
ALTER TABLE `admin`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `entrada`
--
ALTER TABLE `entrada`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `estoque`
--
ALTER TABLE `estoque`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `saida`
--
ALTER TABLE `saida`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
