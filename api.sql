-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-10-2023 a las 06:10:32
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `api`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Apellido` varchar(100) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Correo` varchar(200) DEFAULT NULL,
  `Telefono` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`Id`, `Nombre`, `Apellido`, `City`, `Correo`, `Telefono`) VALUES
(1, 'Sinaida', 'Brust', 'Waghäusel', 'sinaida.brust@example.com', '0179-7545383'),
(2, 'Alexander', 'Jean-Baptiste', 'Russell', 'alexander.jean-baptiste@example.com', 'H85 S19-7695'),
(3, 'Glen', 'Nguyen', 'Athy', 'glen.nguyen@example.com', '061-091-3104'),
(4, 'Danka', 'Petković', 'Medveđa', 'danka.petkovic@example.com', '016-9543-952'),
(5, 'Ferrie', 'Welten', 'Briltil', 'ferrie.welten@example.com', '(081) 7493648'),
(6, 'Ferrie', 'Welten', 'Briltil', 'ferrie.welten@example.com', '(081) 7493648'),
(7, 'Ritthy', 'Fowler', 'Jersey City', 'ritthy.fowler@example.com', '(441) 985-1454'),
(8, 'Ömür', 'Akan', 'Kilis', 'omur.akan@example.com', '(154)-007-4476'),
(9, 'Ellie', 'Gutierrez', 'Derby', 'ellie.gutierrez@example.com', '017683 02263'),
(10, 'محیا', 'یاسمی', 'یزد', 'mhy.ysmy@example.com', '099-59381751');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
