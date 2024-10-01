-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Out-2024 às 23:21
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `biblioteca`
--
CREATE DATABASE IF NOT EXISTS `biblioteca` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `biblioteca`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimos`
--

CREATE TABLE `emprestimos` (
  `CodEmprestimo` int(11) NOT NULL,
  `Data_Emprestimo` date DEFAULT NULL,
  `Data_Devolucao` date DEFAULT NULL,
  `CodLivro` int(11) DEFAULT NULL,
  `Codleitor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `emprestimos`
--

INSERT INTO `emprestimos` (`CodEmprestimo`, `Data_Emprestimo`, `Data_Devolucao`, `CodLivro`, `Codleitor`) VALUES
(1, '2024-05-18', '2024-06-18', 2, 2),
(2, '2023-11-05', '2023-12-05', 3, 3),
(3, '2021-02-22', '2021-04-22', 4, 4),
(4, '2024-07-02', '2024-09-02', 1, 5),
(5, '2022-04-14', '2022-05-14', 5, 3),
(6, '2020-10-25', '2020-11-25', 3, 4),
(7, '2023-04-16', '2023-05-16', 2, 1),
(8, '2024-05-08', '2024-07-08', 4, 3),
(9, '2022-08-18', '2022-10-18', 5, 5),
(10, '2024-10-17', '2024-12-17', 4, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `leitores`
--

CREATE TABLE `leitores` (
  `CodLeitor` int(11) NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `DtNasc` date DEFAULT NULL,
  `Celular` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `RA` int(11) DEFAULT NULL,
  `Endereco` varchar(255) DEFAULT NULL,
  `NumEnd` varchar(255) DEFAULT NULL,
  `Bairro` varchar(255) DEFAULT NULL,
  `CidadeUF` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `leitores`
--

INSERT INTO `leitores` (`CodLeitor`, `Nome`, `DtNasc`, `Celular`, `Email`, `RA`, `Endereco`, `NumEnd`, `Bairro`, `CidadeUF`) VALUES
(1, 'João Silva Sauro', '2001-04-01', '(11)98788-2311', 'joao@hotmail.com', 6311, 'Rua Boa Esperança', '201', 'Janga', 'Paulista'),
(2, 'Maria Silva Nascimento', '2011-07-21', '(11)98788-2311', 'maria@hotmail.com', 3102, 'Rua da Vovó', '101', 'Maranguape I', 'Paulista'),
(3, 'Gislaine Souza', '2006-09-14', '(81) 98848-3655', 'gislainesouza@gmail.com', 2541, 'Rua Triunfo', '60', 'Arthur Lundgren I', 'Paulista'),
(4, 'Shamara Neres', '2007-05-21', '(81) 98325-5207', 'shamara@gmail.com', 7456, 'Rua Quarenta e dois A', '65', 'Caetés III', 'Abreu e Lima'),
(5, 'Vivian Fernandes', '1988-10-30', '(81) 96847-1238', 'vivifernandes@gmail.com', 5620, 'Rua Joaquim Nabuco', '87', 'Monjope', 'Igarassu');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `CodLivro` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `Autor` varchar(255) DEFAULT NULL,
  `Editora` varchar(255) DEFAULT NULL,
  `Sinopse` varchar(255) DEFAULT NULL,
  `AnoPublicacao` int(11) DEFAULT NULL,
  `Genero` varchar(255) DEFAULT NULL,
  `Paginas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`CodLivro`, `Titulo`, `Autor`, `Editora`, `Sinopse`, `AnoPublicacao`, `Genero`, `Paginas`) VALUES
(1, 'Dom Casmurro', 'Machado de Assis', 'Principis', 'Dom Casmurro, a obra mais conhecida do escritor Machado de Assis, conta a história de Bentinho e Capitu, que, apaixonados na adolescência, têm que enfrentar um obstáculo à realização de seus anseios amorosos, pois a mãe de Bentinho, D. Glória, fez uma pro', 1899, 'Romance', 230),
(2, 'A Viuvinha', 'José de Alencar', 'Prazer de Ler', 'Em A viuvinha, o jovem Jorge leva uma vida de prazeres fugazes até perceber-se só. Para aliviar a alma, o jovem vai até uma igreja onde conhece e se paixona por Carolina, uma jovem pura e modesta de 15 anos. Um relacionamento se estabelece e o casamento é', 1857, 'Romance', 64),
(3, 'É assim  que acaba', 'Colleen Hoover', 'Galera', 'Lily Bloom decide começar uma nova vida em Boston e tentar abrir o seu próprio negócio. Como consequência de sua mudança de vida, Lily acredita que encontrou o amor verdadeiro com Ryle, um charmoso neurocirurgião. No entanto, as coisas se complicam quando', 2016, 'Romance', 368),
(4, 'O visconde que me amava', 'Julia Quinn', 'Arqueiro', 'Ao que tudo indica, o solteiro mais cobiçado do ano será Anthony Bridgerton, um visconde charmoso, elegante e muito rico que, contrariando as probabilidades, resolve dar um basta na rotina de libertino e arranjar uma noiva. Logo ele decide que Edwina Shef', 2000, 'Romance', 304),
(5, 'It-A coisa', 'Stephen King', 'Suma', 'Um grupo de crianças se une para investigar o misterioso desaparecimento de vários jovens em sua cidade. Eles descobrem que o culpado é Pennywise, um palhaço cruel que se alimenta de seus medos e cuja violência teve origem há vários séculos.', 2001, 'Terror', 1104);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  ADD PRIMARY KEY (`CodEmprestimo`),
  ADD KEY `CodLivro` (`CodLivro`),
  ADD KEY `Codleitor` (`Codleitor`);

--
-- Índices para tabela `leitores`
--
ALTER TABLE `leitores`
  ADD PRIMARY KEY (`CodLeitor`);

--
-- Índices para tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`CodLivro`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  MODIFY `CodEmprestimo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `leitores`
--
ALTER TABLE `leitores`
  MODIFY `CodLeitor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `CodLivro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  ADD CONSTRAINT `emprestimos_ibfk_1` FOREIGN KEY (`CodLivro`) REFERENCES `livros` (`CodLivro`),
  ADD CONSTRAINT `emprestimos_ibfk_2` FOREIGN KEY (`Codleitor`) REFERENCES `leitores` (`CodLeitor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
