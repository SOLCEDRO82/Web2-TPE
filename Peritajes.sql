-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 15, 2024 at 11:22 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Peritajes`
--

-- --------------------------------------------------------

--
-- Table structure for table `Aseguradora`
--

CREATE TABLE `Aseguradora` (
  `ID_Aseguradora` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `Mail` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Aseguradora`
--

INSERT INTO `Aseguradora` (`ID_Aseguradora`, `Nombre`, `Direccion`, `Mail`) VALUES
(1, 'Grupo Sancor Seguros', 'Chacabuco 472, Tandil', 'info@sancorseguros.com.ar'),
(2, 'La Caja de Ahorro y Seguro', 'Garibaldi 504, Tandil', 'servicioatencionasegurado@lacaja.com.ar'),
(3, 'Orbis Seguros', 'Belgrano 646, Tandil', ' atencionalcliente@orbiseguros.com.ar'),
(4, 'Liderar Seguros', 'Av. Marconi 1477, Tandil', 'cia@liderarseguros.com.ar'),
(5, 'Rio Uruguay Seguros', 'Av. Santamarina 402, Tandil', 'producciontandil@riouruguay.com.ar'),
(6, 'Seguros La Segunda', 'Av. Avellaneda 1760, Tandil', 'mdavila@lasegunda.com.ar'),
(7, 'Mercantil Andina Seguros', 'Hipolito Yrigoyen 886, Tandil', 'juan.demedio@lamercantil.com.ar '),
(8, 'Cooperacion Seguros', 'Av. España 527, Tandil', 'clientes@cooperacionseguros.com.ar');

-- --------------------------------------------------------

--
-- Table structure for table `Siniestro`
--

CREATE TABLE `Siniestro` (
  `ID_Siniestro` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Tipo_Siniestro` varchar(45) NOT NULL,
  `Asegurado` varchar(45) NOT NULL,
  `ID_Aseguradora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Siniestro`
--

INSERT INTO `Siniestro` (`ID_Siniestro`, `Fecha`, `Tipo_Siniestro`, `Asegurado`, `ID_Aseguradora`) VALUES
(1, '2024-09-09', 'robo', 'Juan Perez', 2),
(2, '2024-05-15', 'Incendio', 'Maria Garcia', 5),
(3, '2024-01-10', 'robo', 'Jose Sanchez', 4),
(4, '2024-09-12', 'robo', 'Rosa Molina', 1),
(5, '2024-09-03', 'cristales', 'Luciano Gomez', 3),
(6, '2024-07-20', 'granizo', 'Pedro Fernandez', 7),
(7, '2024-08-14', 'granizo', 'Ana Martinez', 1),
(8, '2024-07-02', 'Incendio', 'Francisco Losa', 2),
(9, '2024-03-07', 'robo', 'Hilda Lommi', 3),
(10, '2024-06-12', 'robo', 'Romina Heid', 5),
(11, '2024-07-29', 'cristales', 'Gimena Castellanos', 6),
(12, '2024-08-05', 'Incendio', 'Miguel Ceballos', 7),
(13, '2024-09-11', 'cristales', 'Juana Montes', 5),
(14, '2024-09-19', 'robo', 'Catalina Gonzalez', 3),
(15, '2024-09-15', 'cristales', 'Juan Perez', 2),
(16, '2024-02-20', 'Incendio', 'Claudia Fara', 8),
(17, '2024-09-08', 'cristales', 'Jose Sanchez', 4),
(18, '2024-01-01', 'terceros', 'Lautaro Lopez', 5),
(19, '2024-04-08', 'terceros', 'Diego Rios', 3),
(20, '2024-03-09', 'terceros', 'Nahuel Tassi', 2),
(21, '2024-04-12', 'terceros', 'Nicolas Arancibia', 6),
(22, '2024-06-12', 'terceros', 'Julian Nuñez', 6),
(23, '2024-06-11', 'Incendio', 'Paula Alvarez', 1),
(24, '2024-09-01', 'terceros', 'Daniela Ceres', 7),
(25, '2024-02-18', 'terceros', 'Cecilia Vera', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Aseguradora`
--
ALTER TABLE `Aseguradora`
  ADD PRIMARY KEY (`ID_Aseguradora`);

--
-- Indexes for table `Siniestro`
--
ALTER TABLE `Siniestro`
  ADD PRIMARY KEY (`ID_Siniestro`),
  ADD KEY `ID_Aseguradora` (`ID_Aseguradora`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Aseguradora`
--
ALTER TABLE `Aseguradora`
  MODIFY `ID_Aseguradora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Siniestro`
--
ALTER TABLE `Siniestro`
  MODIFY `ID_Siniestro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Siniestro`
--
ALTER TABLE `Siniestro`
  ADD CONSTRAINT `Siniestro_ibfk_1` FOREIGN KEY (`ID_Aseguradora`) REFERENCES `Aseguradora` (`ID_Aseguradora`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
