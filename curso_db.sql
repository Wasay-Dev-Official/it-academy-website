-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 18, 2026 at 02:01 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `curso_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `inscricoes`
--

CREATE TABLE `inscricoes` (
  `id` int NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `curso` varchar(100) DEFAULT NULL,
  `nivel` varchar(50) DEFAULT NULL,
  `interesses` text,
  `experiencia` int DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `disponibilidade` varchar(50) DEFAULT NULL,
  `objetivo` text,
  `criado_em` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `inscricoes`
--

INSERT INTO `inscricoes` (`id`, `nome`, `email`, `telefone`, `curso`, `nivel`, `interesses`, `experiencia`, `data_inicio`, `disponibilidade`, `objetivo`, `criado_em`) VALUES
(1, ' cv', 'vv@gmail.com', '4535', 'Web Development', 'Iniciante', 'Frontend, Backend', 2, '2026-05-08', 'Manhã', 'dfss', '2026-05-07 09:45:42'),
(2, 'waa', 'vv@gmail.com', '4543', 'Web Development', 'Iniciante', 'Frontend', 4, '2026-05-22', 'Manhã', 'xczc', '2026-05-07 10:10:39'),
(3, 'Abdul', 'abdul@gmail.com', '232323', 'Data Science', 'Intermediário', 'Frontend, AI', 2, '2026-05-15', 'Manhã', 'easy', '2026-05-14 09:27:30'),
(4, 'vbgfb', 'dfv@gmail.com', '5436', 'Mobile App Development', 'Avançado', 'Backend, AI', 2, '2026-05-15', 'Tarde', 'bfgbgfbgfb', '2026-05-14 11:59:38'),
(5, 'vbgfb', 'dfv@gmail.com', '5436', 'Mobile App Development', 'Avançado', 'Backend, AI', 2, '2026-05-15', 'Tarde', 'bfgbgfbgfb', '2026-05-14 11:59:44'),
(6, 'vc', 'dfddddv@gmail.com', '324324324', 'Web Development', 'Iniciante', 'Frontend', 4, '2026-05-27', 'Manhã', 'ccvcvvvv', '2026-05-18 13:33:07'),
(7, 'vc', 'dfddddv@gmail.com', '324324324', 'Web Development', 'Iniciante', 'Frontend', 4, '2026-05-27', 'Manhã', 'ccvcvvvv', '2026-05-18 13:37:51'),
(8, 'vc', 'dfddddv@gmail.com', '324324324', 'Web Development', 'Iniciante', 'Frontend', 4, '2026-05-27', 'Manhã', 'ccvcvvvv', '2026-05-18 13:38:02'),
(9, 'vc cv', 'vcvcvvcvc@gmail.com', '3243534', 'Web Development', 'Iniciante', 'Data', 2, '2026-05-29', 'Manhã', 'vvcv', '2026-05-18 13:38:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inscricoes`
--
ALTER TABLE `inscricoes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inscricoes`
--
ALTER TABLE `inscricoes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
