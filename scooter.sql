-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-01-2019 a las 12:32:51
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `scooter`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `dni` varchar(9) DEFAULT NULL,
  `direccion` varchar(30) NOT NULL,
  `ciudad` varchar(30) NOT NULL,
  `telefono` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `nombre`, `apellidos`, `dni`, `direccion`, `ciudad`, `telefono`) VALUES
(1, 'Pedro', 'Jaen Villalobos', '48903532', 'Reyes Catolicos N24 P7B', 'San Fernando', '956894664'),
(4, 'Antonio', 'Iglesias', '11111111', 'cerca del BK', 'Conil de la Frontera', '111111111'),
(5, 'Jose Antonio', 'no lo se', '22222222', 'no lo se', 'Rio San Pedro', '222222222'),
(6, 'Arantxa', 'Aranzazu', '44444444', 'no lo se', 'Chiclana', '444444444'),
(7, 'Javi', 'no lo se', '33333333', 'no lo se', 'Chiclana', '333333333'),
(8, 'Adrian', 'no lo se', '55555555', 'zona alta', 'Conil de la Frontera', '555555555'),
(9, 'Perig', 'Huby', '66666666', 'Los Gallos', 'Chiclana', '666666666'),
(10, 'Javier', 'Gerrero Galan', '77777777', 'al lado de las capuchinas', 'San Fernando', '777777777');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_scooter` int(11) NOT NULL,
  `dia` date NOT NULL,
  `hora_inicio` int(11) NOT NULL,
  `hora_fin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`id`, `id_usuario`, `id_scooter`, `dia`, `hora_inicio`, `hora_fin`) VALUES
(1, 1, 1, '2019-01-22', 8, 1),
(2, 1, 3, '2019-01-22', 13, 3),
(3, 1, 1, '2019-01-27', 8, 1),
(4, 10, 2, '2019-01-23', 14, 2),
(5, 10, 4, '2019-01-24', 15, 3),
(6, 10, 4, '2019-01-28', 16, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `scooter`
--

CREATE TABLE `scooter` (
  `id` int(11) NOT NULL,
  `modelo` varchar(20) NOT NULL,
  `cilindrada` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `scooter`
--

INSERT INTO `scooter` (`id`, `modelo`, `cilindrada`) VALUES
(1, 'Xiaomi', '45'),
(2, 'Volvo', '45'),
(3, 'Xiaomi', '125'),
(4, 'Volvo', '125');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dni` (`dni`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `scooter`
--
ALTER TABLE `scooter`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `scooter`
--
ALTER TABLE `scooter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
