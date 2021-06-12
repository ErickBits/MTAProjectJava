-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-12-2020 a las 03:01:03
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `IDCARGO` int(11) NOT NULL,
  `nombre_rol` varchar(20) DEFAULT NULL,
  `ESTADO` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`IDCARGO`, `nombre_rol`, `ESTADO`) VALUES
(1, 'Administrador', b'1'),
(2, 'Guia', b'1'),
(3, 'Turista', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usu` int(11) NOT NULL,
  `nombre_usu` varchar(20) NOT NULL,
  `nombre_cuenta` varchar(20) DEFAULT NULL,
  `apellidos_usu` varchar(100) NOT NULL,
  `contraseña` varchar(10) DEFAULT NULL,
  `telefono_usu` varchar(15) NOT NULL,
  `correo_usu` varchar(60) NOT NULL,
  `documento` varchar(12) NOT NULL,
  `ESTADO` bit(1) DEFAULT NULL,
  `IDCARGO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usu`, `nombre_usu`, `nombre_cuenta`, `apellidos_usu`, `contraseña`, `telefono_usu`, `correo_usu`, `documento`, `ESTADO`, `IDCARGO`) VALUES
(8, 'yeison alejandro', 'yeison', 'soto gallego', '1234', '103121', 'soto1@gmail.com', '1203012', b'1', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`IDCARGO`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usu`),
  ADD KEY `FK_USUARIO_CARGO` (`IDCARGO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `IDCARGO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FK_USUARIO_CARGO` FOREIGN KEY (`IDCARGO`) REFERENCES `rol` (`IDCARGO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
