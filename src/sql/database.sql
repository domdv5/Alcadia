-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-12-2021 a las 00:26:14
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `opc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `id_actividades` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `linea` varchar(100) NOT NULL,
  `componente` varchar(100) NOT NULL,
  `secretaria` varchar(100) NOT NULL,
  `facilitador` varchar(100) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_final` date NOT NULL,
  `hora_apertura` time NOT NULL,
  `hora_cierre` time NOT NULL,
  `lugar` varchar(100) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `comuna_corregimiento` varchar(100) NOT NULL,
  `barrio_vereda` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `tipo_reunion` varchar(100) NOT NULL,
  `nombre_proyecto_inversion` varchar(100) NOT NULL,
  `codigo_proyecto_inversion` int(50) NOT NULL,
  `nombre_indicadores` varchar(100) NOT NULL,
  `nombres_plan_desarrollo` varchar(100) NOT NULL,
  `codigo_indicadores_pdm_pdi` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` (`id_actividades`, `nombre`, `linea`, `componente`, `secretaria`, `facilitador`, `fecha_inicio`, `fecha_final`, `hora_apertura`, `hora_cierre`, `lugar`, `ciudad`, `comuna_corregimiento`, `barrio_vereda`, `direccion`, `tipo_reunion`, `nombre_proyecto_inversion`, `codigo_proyecto_inversion`, `nombre_indicadores`, `nombres_plan_desarrollo`, `codigo_indicadores_pdm_pdi`) VALUES
(2, 'wilson', '', '', 'fsdffd', 'dff', '2021-11-30', '2021-12-09', '18:01:00', '07:02:00', 'asddas', 'asdasd', '70. Alta Vista', 'asdas', 'dasdas', 'Capacitación', 'dasd', 456, 'sddfs', '', 5454),
(3, 'sebass', '', 'sddssdds', 'fddfdfdf', 'dfdffd', '0000-00-00', '0000-00-00', '18:39:00', '00:00:00', 'sfdfsdf', 'sdfsdf', '50. San Sebastian de Palmitas', '', 'fsdf', 'Seguimiento', '', 0, '', '', 0),
(5, 'natacion', '', '', 'dddd', 'dddd', '2021-12-02', '2021-12-02', '18:49:00', '18:49:00', 'cccc', 'cccc', '50. San Sebastian de Palmitas', 'ccc', 'cccc', 'Toma de desiciones', 'cccc', 222, 'cccc', '', 333),
(6, 'futbol', '', '', 'asdasd', 'asdasd', '2021-12-16', '2021-12-16', '17:42:00', '17:42:00', 'asds', 'adasdas', '2. Santa Cruz', 'asdasd', 'asdsad', 'Informativa', 'asdasd', 343, 'dsafsd', '', 3434),
(7, 'pintura', '', '', 'fsdfs', 'fsfsf', '2021-12-16', '2021-12-16', '18:03:00', '18:03:00', 'sdffs', 'dfsdfsf', '4. Aranjuez', 'sdfsdf', 'sfsdf', 'Toma de desiciones', 'sfsf', 234234, 'zxczxc', '', 2147483647),
(8, 'pintura', '', '', 'fsdfs', 'fsfsf', '2021-12-16', '2021-12-16', '18:03:00', '18:03:00', 'sdffs', 'dfsdfsf', '4. Aranjuez', 'sdfsdf', 'sfsdf', 'Toma de desiciones', 'sfsf', 234234, 'zxczxc', '', 2147483647),
(9, 'pintura', '', '', 'fsdfs', 'fsfsf', '2021-12-16', '2021-12-16', '18:03:00', '18:03:00', 'sdffs', 'dfsdfsf', '4. Aranjuez', 'sdfsdf', 'sfsdf', 'Toma de desiciones', 'sfsf', 234234, 'zxczxc', '', 2147483647),
(10, 'pintura', '', '', 'fsdfs', 'fsfsf', '2021-12-16', '2021-12-16', '18:03:00', '18:03:00', 'sdffs', 'dfsdfsf', '4. Aranjuez', 'sdfsdf', 'sfsdf', 'Toma de desiciones', 'sfsf', 234234, 'zxczxc', '', 2147483647),
(11, 'pintura', '', '', 'fsdfs', 'fsfsf', '2021-12-16', '2021-12-16', '18:03:00', '18:03:00', 'sdffs', 'dfsdfsf', '4. Aranjuez', 'sdfsdf', 'sfsdf', 'Toma de desiciones', 'sfsf', 234234, 'zxczxc', '', 2147483647),
(12, 'pintura', '', '', 'fsdfs', 'fsfsf', '2021-12-16', '2021-12-16', '18:03:00', '18:03:00', 'sdffs', 'dfsdfsf', '4. Aranjuez', 'sdfsdf', 'sfsdf', 'Toma de desiciones', 'sfsf', 234234, 'zxczxc', '', 2147483647),
(13, 'micro', '', '', 'asdasd', 'asdasd', '2021-12-16', '2021-12-16', '18:27:00', '18:27:00', 'asdasd', 'asd', '50. San Sebastian de Palmitas', 'sdasd', 'asdasdas', 'Toma de desiciones', 'dasdas', 34, 'sdfsdaf', '', 3434),
(14, 'micro', '', '', 'asdasd', 'asdasd', '2021-12-16', '2021-12-16', '18:27:00', '18:27:00', 'asdasd', 'asd', '50. San Sebastian de Palmitas', 'sdasd', 'asdasdas', 'Toma de desiciones', 'dasdas', 34, 'sdfsdaf', '', 3434),
(15, 'micro', '', '', 'asdasd', 'asdasd', '2021-12-16', '2021-12-16', '18:27:00', '18:27:00', 'asdasd', 'asd', '50. San Sebastian de Palmitas', 'sdasd', 'asdasdas', 'Toma de desiciones', 'dasdas', 34, 'sdfsdaf', '', 3434),
(16, 'micro', '', '', 'asdasd', 'asdasd', '2021-12-16', '2021-12-16', '18:27:00', '18:27:00', 'asdasd', 'asd', '50. San Sebastian de Palmitas', 'sdasd', 'asdasdas', 'Toma de desiciones', 'dasdas', 34, 'sdfsdaf', '', 3434),
(17, 'micro', '', '', 'asdasd', 'asdasd', '2021-12-16', '2021-12-16', '18:27:00', '18:27:00', 'asdasd', 'asd', '50. San Sebastian de Palmitas', 'sdasd', 'asdasdas', 'Toma de desiciones', 'dasdas', 34, 'sdfsdaf', '', 3434),
(18, 'micro', '', '', 'asdasd', 'asdasd', '2021-12-16', '2021-12-16', '18:27:00', '18:27:00', 'asdasd', 'asd', '50. San Sebastian de Palmitas', 'sdasd', 'asdasdas', 'Toma de desiciones', 'dasdas', 34, 'sdfsdaf', '', 3434),
(19, 'micro', '', '', 'asdasd', 'asdasd', '2021-12-16', '2021-12-16', '18:27:00', '18:27:00', 'asdasd', 'asd', '50. San Sebastian de Palmitas', 'sdasd', 'asdasdas', 'Toma de desiciones', 'dasdas', 34, 'sdfsdaf', '', 3434),
(20, 'micro', '', '', 'asdasd', 'asdasd', '2021-12-16', '2021-12-16', '18:27:00', '18:27:00', 'asdasd', 'asd', '50. San Sebastian de Palmitas', 'sdasd', 'asdasdas', 'Toma de desiciones', 'dasdas', 34, 'sdfsdaf', '', 3434),
(21, 'micro futbol', '', '', 'asdasd', 'asdasd', '2021-12-16', '2021-12-16', '18:27:00', '18:27:00', 'asdasd', 'asd', '50. San Sebastian de Palmitas', 'sdasd', 'asdasdas', 'Toma de desiciones', 'dasdas', 34, 'sdfsdaf', '', 3434),
(22, 'micro futbol', '', '', 'asdasd', 'asdasd', '2021-12-16', '2021-12-16', '18:27:00', '18:27:00', 'asdasd', 'asd', '50. San Sebastian de Palmitas', 'sdasd', 'asdasdas', 'Toma de desiciones', 'dasdas', 34, 'sdfsdaf', '', 3434),
(23, 'micro futbol', '', '', 'asdasd', 'asdasd', '2021-12-16', '2021-12-16', '18:27:00', '18:27:00', 'asdasd', 'asd', '50. San Sebastian de Palmitas', 'sdasd', 'asdasdas', 'Toma de desiciones', 'dasdas', 34, 'sdfsdaf', '', 3434),
(24, 'micro futbol', '', '', 'asdasd', 'asdasd', '2021-12-16', '2021-12-16', '18:27:00', '18:27:00', 'asdasd', 'asd', '50. San Sebastian de Palmitas', 'sdasd', 'asdasdas', 'Toma de desiciones', 'dasdas', 34, 'sdfsdaf', '', 3434),
(25, 'micro futbol', '', '', 'asdasd', 'asdasd', '2021-12-16', '2021-12-16', '18:27:00', '18:27:00', 'asdasd', 'asd', '50. San Sebastian de Palmitas', 'sdasd', 'asdasdas', 'Toma de desiciones', 'dasdas', 34, 'sdfsdaf', '', 3434),
(26, 'micro futbol', '', '', 'asdasd', 'asdasd', '2021-12-16', '2021-12-16', '18:27:00', '18:27:00', 'asdasd', 'asd', '50. San Sebastian de Palmitas', 'sdasd', 'asdasdas', 'Toma de desiciones', 'dasdas', 34, 'sdfsdaf', '', 3434),
(27, 'micro', '', '', 'asdas', 'dasdas', '2021-12-16', '2021-12-16', '18:50:00', '18:50:00', 'asds', 'adasd', '50. San Sebastian de Palmitas', 'dasd', 'asdad', 'Toma de desiciones', 'adad', 433, 'sdfsdf', '', 34234),
(28, 'pintura', '', '', 'sdffdsfs', 'dfsdfsdf', '2021-12-16', '2021-12-16', '18:56:00', '18:56:00', 'sdfdsf', 'sdfsdf', '80. San Antonio de Prado', 'sdfsdfsd', 'sdfdfds', 'Toma de desiciones', 'fsdfsd', 2147483647, 'dfvfgfg', '', 0),
(29, 'pintura', '', '', 'sdffdsfs', 'dfsdfsdf', '2021-12-16', '2021-12-16', '18:56:00', '18:56:00', 'sdfdsf', 'sdfsdf', '80. San Antonio de Prado', 'sdfsdfsd', 'sdfdfds', 'Toma de desiciones', 'fsdfsd', 2147483647, 'dfvfgfg', '', 0),
(30, 'pintura', '', '', 'sdffdsfs', 'dfsdfsdf', '2021-12-16', '2021-12-16', '18:56:00', '18:56:00', 'sdfdsf', 'sdfsdf', '80. San Antonio de Prado', 'sdfsdfsd', 'sdfdfds', 'Toma de desiciones', 'fsdfsd', 2147483647, 'dfvfgfg', '', 0),
(31, 'pintura', '', '', 'sdffdsfs', 'dfsdfsdf', '2021-12-16', '2021-12-16', '18:56:00', '18:56:00', 'sdfdsf', 'sdfsdf', '80. San Antonio de Prado', 'sdfsdfsd', 'sdfdfds', 'Toma de desiciones', 'fsdfsd', 2147483647, 'dfvfgfg', '', 0),
(32, 'danza', '', '', 'sdfdf', 'sfsdf', '2021-12-16', '2021-12-16', '19:15:00', '19:15:00', 'sdf', 'sdsdf', '70. Alta Vista', 'sdfsd', 'fsfs', 'Formación', 'dfsdf', 34, 'dsf', '', 343),
(33, 'danza', '', '', 'sdfdf', 'sfsdf', '2021-12-16', '2021-12-16', '19:15:00', '19:15:00', 'sdf', 'sdsdf', '70. Alta Vista', 'sdfsd', 'fsfs', 'Formación', 'dfsdf', 34, 'dsf', '', 343),
(34, 'danza', '', '', 'sdfdf', 'sfsdf', '2021-12-16', '2021-12-16', '19:15:00', '19:15:00', 'sdf', 'sdsdf', '70. Alta Vista', 'sdfsd', 'fsfs', 'Formación', 'dfsdf', 34, 'dsf', '', 343),
(35, 'danza', '', '', 'sdfdf', 'sfsdf', '2021-12-16', '2021-12-16', '19:15:00', '19:15:00', 'sdf', 'sdsdf', '70. Alta Vista', 'sdfsd', 'fsfs', 'Formación', 'dfsdf', 34, 'dsf', '', 343),
(36, 'danza', '', '', 'sdfdf', 'sfsdf', '2021-12-16', '2021-12-16', '19:15:00', '19:15:00', 'sdf', 'sdsdf', '70. Alta Vista', 'sdfsd', 'fsfs', 'Formación', 'dfsdf', 34, 'dsf', '', 343),
(37, 'danza', '', '', 'sdfdf', 'sfsdf', '2021-12-16', '2021-12-16', '19:15:00', '19:15:00', 'sdf', 'sdsdf', '70. Alta Vista', 'sdfsd', 'fsfs', 'Formación', 'dfsdf', 34, 'dsf', '', 343),
(38, 'danza', '', '', 'sdfdf', 'sfsdf', '2021-12-16', '2021-12-16', '19:15:00', '19:15:00', 'sdf', 'sdsdf', '70. Alta Vista', 'sdfsd', 'fsfs', 'Formación', 'dfsdf', 34, 'dsf', '', 343),
(39, 'danza', '', '', 'sdfdf', 'sfsdf', '2021-12-16', '2021-12-16', '19:15:00', '19:15:00', 'sdf', 'sdsdf', '70. Alta Vista', 'sdfsd', 'fsfs', 'Formación', 'dfsdf', 34, 'dsf', '', 343),
(40, 'danza', '', '', 'sdfdf', 'sfsdf', '2021-12-16', '2021-12-16', '19:15:00', '19:15:00', 'sdf', 'sdsdf', '70. Alta Vista', 'sdfsd', 'fsfs', 'Formación', 'dfsdf', 34, 'dsf', '', 343),
(41, 'danza', '', '', 'sdfdf', 'sfsdf', '2021-12-16', '2021-12-16', '19:15:00', '19:15:00', 'sdf', 'sdsdf', '70. Alta Vista', 'sdfsd', 'fsfs', 'Formación', 'dfsdf', 34, 'dsf', '', 343),
(42, 'danza', '', '', 'sdfdf', 'sfsdf', '2021-12-16', '2021-12-16', '19:15:00', '19:15:00', 'sdf', 'sdsdf', '70. Alta Vista', 'sdfsd', 'fsfs', 'Formación', 'dfsdf', 34, 'dsf', '', 343),
(43, 'danza', '', '', 'sdfdf', 'sfsdf', '2021-12-16', '2021-12-16', '19:15:00', '19:15:00', 'sdf', 'sdsdf', '70. Alta Vista', 'sdfsd', 'fsfs', 'Formación', 'dfsdf', 34, 'dsf', '', 343),
(44, 'danza', '', '', 'sdfdf', 'sfsdf', '2021-12-16', '2021-12-16', '19:15:00', '19:15:00', 'sdf', 'sdsdf', '70. Alta Vista', 'sdfsd', 'fsfs', 'Formación', 'dfsdf', 34, 'dsf', '', 343),
(45, 'danza', '', '', 'sdfdf', 'sfsdf', '2021-12-16', '2021-12-16', '19:15:00', '19:15:00', 'sdf', 'sdsdf', '70. Alta Vista', 'sdfsd', 'fsfs', 'Formación', 'dfsdf', 34, 'dsf', '', 343),
(46, 'danza', '', '', 'sdfdf', 'sfsdf', '2021-12-16', '2021-12-16', '19:15:00', '19:15:00', 'sdf', 'sdsdf', '70. Alta Vista', 'sdfsd', 'fsfs', 'Formación', 'dfsdf', 34, 'dsf', '', 343),
(47, 'pintue', '', '', 'sdfdf', 'sfsdf', '2021-12-16', '2021-12-16', '19:15:00', '19:15:00', 'sdf', 'sdsdf', '70. Alta Vista', 'sdfsd', 'fsfs', 'Formación', 'dfsdf', 34, 'dsf', '', 343),
(48, 'pintue', '', '', 'sdfdf', 'sfsdf', '2021-12-16', '2021-12-16', '19:15:00', '19:15:00', 'sdf', 'sdsdf', '70. Alta Vista', 'sdfsd', 'fsfs', 'Formación', 'dfsdf', 34, 'dsf', '', 343),
(53, 'Arcilla', 'sdfgsdg', 'dfgdfg', 'dfsdfsdf', 'sdfsdfsd', '2021-12-21', '2021-12-21', '17:44:00', '17:44:00', 'fxcgdf', 'gdfgd', '12. La America', 'dfgdfg', 'gdgd', 'Capacitación', 'gdgdfg', 0, 'gdfg', '', 0),
(54, 'manuealidades', 'dfsdf', 'sdfsdf', 'dsf', 'fsdfsdf', '2021-12-21', '2021-12-21', '17:44:00', '17:44:00', 'sdfsd', 'fsdf', '16. Belén', 'sfdfsd', 'fsd', 'Formación', 'fsdfsdf', 0, 'dfsd', '', 0),
(55, 'pinturita', 'asd', 'asdasdas', 'dasd', 'adad', '2021-12-21', '2021-12-21', '17:51:00', '17:51:00', 'asdas', 'dasdasd', '50. San Sebastian de Palmitas', 'asdas', 'dasd', 'Seguimiento', 'asdad', 0, 'dasd', '', 0),
(56, 'pinturita', 'asd', 'asdasdas', 'dasd', 'adad', '2021-12-21', '2021-12-21', '17:51:00', '17:51:00', 'asdas', 'dasdasd', '50. San Sebastian de Palmitas', 'asdas', 'dasd', 'Seguimiento', 'asdad', 0, 'dasd', '', 0),
(57, 'Baile Tropical', 'dfsdf', 'sdfsdf', 'dsf', 'fsdfsdf', '2021-12-21', '2021-12-21', '17:44:00', '17:44:00', 'sdfsd', 'fsdf', '16. Belén', 'sfdfsd', 'fsd', 'Formación', 'fsdfsdf', 0, 'dfsd', '', 0),
(58, 'Baile Tropicalito', 'dfsdf', 'sdfsdf', 'dsf', 'fsdfsdf', '2021-12-21', '2021-12-21', '17:44:00', '17:44:00', 'sdfsd', 'fsdf', '16. Belén', 'sfdfsd', 'fsd', 'Formación', 'fsdfsdf', 0, 'dfsd', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cds`
--

CREATE TABLE `cds` (
  `IdCds` int(11) NOT NULL,
  `espacio` varchar(30) NOT NULL,
  `Comuna` varchar(40) NOT NULL,
  `IdentificadorCds` varchar(50) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Horario` varchar(100) NOT NULL,
  `Telefono` int(11) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `NombreCoordinador` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cds`
--

INSERT INTO `cds` (`IdCds`, `espacio`, `Comuna`, `IdentificadorCds`, `Nombre`, `Direccion`, `Horario`, `Telefono`, `correo`, `NombreCoordinador`) VALUES
(1, '', '2. Santa Cruz', 'dasdasd2113123131', 'sadsa', '12dasdada', 'de lunes a viernes 6 a 8 pm ', 2147483647, 'efdadasdasd@gmail.com', 'juan velez'),
(2, '1. Popular', '13. San javier', 'dasdasd2113123131', 'sadsa', '12dasdada', 'de lunes a viernes 6 a 8 pm ', 2147483647, 'efdadasdasd@gmail.com', 'juan velez'),
(3, 'CENTRO DE DESARROLO SOCIAL', '16. Belén', 'dasdasd2113123131', 'sadsa', '12dasdada', 'lunes a viernes', 2147483647, 'efdadasdasd@gmail.com', 'juan velez'),
(4, 'CENTRO DE DESARROLO SOCIAL', '14. El Poblado', 'dasdasd2113123131', 'manualidad', '12dasdada', 'de lunes a viernes 6 a 8 pm ', 12321312, '213213', 'juan lopez hernandez'),
(5, 'CENTRO DE DESARROLO SOCIAL', '14. El Poblado', 'dasdasd2113123131', 'manualidad', '12dasdada', 'de lunes a viernes 6 a 8 pm ', 123213125, '213213', 'juan lopez hernandez'),
(6, 'CENTRO DE DESARROLO SOCIAL', '16. Belén', 'dasdasd2113123131', 'manualidad', 'asdwedwqeqwewqeqw', 'de lunes a viernes 6 a 8 pm ', 1232131321, 'dasdas', 'juan velez'),
(7, 'CENTRO DE DESARROLO SOCIAL', '16. Belén', 'dasdasd2113123131', 'manualidad', 'asdwedwqeqwewqeqw', 'de lunes a viernes 6 a 8 pm ', 1232131321, 'dasdas', 'juan velez felipe'),
(8, 'CENTRO DE DESARROLO SOCIAL', '16. Belén', 'dasdasd2113123131', 'manualidad', 'asdwedwqeqwewqeqw', 'de lunes a viernes 6 a 8 pm ', 1232131321, 'dasdas', 'juan velez felipe'),
(9, 'CENTRO DE DESARROLO SOCIAL', '16. Belén', 'dasdasd2113123131', 'manualidad', 'asdwedwqeqwewqeqw', 'de lunes a viernes 6 a 8 pm ', 1232131321, 'dasdas', 'juan velez felipe'),
(10, 'CENTRO DE DESARROLO SOCIAL', '14. El Poblado', '3445', 'hol', 'sdfsdf', 'dsfds', 0, 'wilson1840@hotmail.com', 'sdfsdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso_visitantes`
--

CREATE TABLE `ingreso_visitantes` (
  `cedula` int(50) NOT NULL,
  `hora` time NOT NULL,
  `actividad` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ingreso_visitantes`
--

INSERT INTO `ingreso_visitantes` (`cedula`, `hora`, `actividad`) VALUES
(3322, '13:17:00', '1. Popular'),
(1128459310, '02:19:00', '1. Popular');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logs`
--

CREATE TABLE `logs` (
  `cedula` int(11) NOT NULL,
  `contraseña` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `tipoDocumento` varchar(100) NOT NULL,
  `cedula` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `telefono` int(11) NOT NULL,
  `rol` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`tipoDocumento`, `cedula`, `nombre`, `correo`, `pass`, `telefono`, `rol`) VALUES
('Cédula de Ciudadanía (CC)', 1, 'cofla', 'wilson1840@hotmail.com', '$2a$08$LwLp4nFJGxIzgyMRES489uh7Ty6y1Co4Lb3/vjDiMFx', 1231231231, 'Coordinador CDS'),
('Cédula de Ciudadanía (CC)', 2, 'pedro', 'wilson1840@hotmail.com', '$2a$08$d7ZHMXVA2qPQCpv0Xe0TGOOGUuwq7qKTO2zNLAlkd2a', 3222, 'Coordinador CDS'),
('Cédula de Ciudadanía (CC)', 123, 'calderon', 'wilson1840@hotmail.com', '$2a$08$Gbi2h.nd1KD.ivsOyx/YbeFNn1tSe1Ev8E0ForFUNFo', 1231231231, 'Apoyo Telecentro'),
('Cédula de Ciudadanía (CC)', 456, 'wilson', 'wilson1840@hotmail.com', '$2a$10$NVCX5qNgzUnZqRNhgx43.uoKp8iw2QZnORRp.D/6BO92GoyBIJdQG', 1231231231, 'Apoyo Telecentro'),
('Cédula de Ciudadanía (CC)', 998, 'prueba', 'wilson1840@hotmail.com', '$2a$08$ljtyqsdrb.Vgk/Afc.evqe4GRuLZOCEbOMr0nZ.Skzm', 1231231231, 'Coordinador CDS'),
('Cédula de Ciudadanía (CC)', 1122, 'wilson', 'wilson1840@hotmail.com', '$2a$10$zbYN65pAL/OSpNDLc1ui7O/1lc9u4W6X3lZm8cg8P/tCYbaL42FN2', 1231231231, 'Coordinador CDS'),
('Cédula de Ciudadanía (CC)', 3322, 'julito', 'wilson1840@hotmail.com', '$2a$10$R46.4Bt/sBMRoKn14sKmFeqAkvJVfPR0BIOjlJlttVI', 1231231231, 'Coordinador CDS'),
('Cédula de Ciudadanía (CC)', 5555, 'wilson', 'eee', '$2a$08$2Aq59f51jJNFVNzcdZGAzuJ233LsoIBy6j7rdJYEQ7B', 4545, 'Apoyo Telecentro'),
('Cédula de Ciudadanía (CC)', 8888, 'jonny', 'wilson1840@hotmail.com', '$2a$08$vIrRKO6AutCcmV6z9.YV7u0kFpPlKs2Ot0CQpKCKiKZ', 1231231231, 'Coordinador CDS'),
('Cédula de Ciudadanía (CC)', 8999, 'qwer', 'wilson1840@hotmail.com', '$2a$08$Pj3KLkkkxb/p2UwrVRS7r.upB/pqYZEuldUfplnUiiu', 33, 'Coordinador CDS'),
('Cédula de Ciudadanía (CC)', 51223, 'ferchis', 'wilson1840@hotmail.com', '$2a$08$cey82aqp/0X7Ph8dXt3TMeoW.jjXH4r89yLWOERVfzd', 0, 'Apoyo Telecentro'),
('Pasaporte', 56789, 'wilson', 'wilson1840@hotmail.com', '$2a$08$56P0mJNEFQpRH2L2WAoDvu2.LOA0thVAz1bTNHju2U0', 1231231231, 'Apoyo Telecentro'),
('Cédula de Ciudadanía (CC)', 7766554, 'luisasaasasasas', 'wilson1840@hotmail.com', '$2a$08$YqCRYh4wBDtaK2SlI98zMOsE3eWTO3ULwFIaoYP48z3', 1231231231, 'Apoyo Telecentro'),
('Cédula de Ciudadanía (CC)', 31111115, 'chofer', 'wilson1840@hotmail.com', '$2a$08$wbZxjbxnaW/hmqKkmsrJZe58TGmMaGO5RgvHa.eF0wD', 1231231231, 'Coordinador CDS'),
('Cédula de Ciudadanía (CC)', 112345676, 'fercho', 'wilson1840@hotmail.com', '$2a$08$iUmYfBhx.zcCjHDD1CjwMO7JHqV1PohClWBE1HQs5EG', 34343, 'Coordinador CDS'),
('Cédula de Ciudadanía (CC)', 435435634, 'fzxdssd', 'wilson1840@hotmail.com', '$2a$10$x/ND6Tm.wK.fG0eHOAnQ6OSTnU6ykT2zknXEpFddpIX97lMHjg4Dy', 1231231231, 'Coordinador CDS'),
('Cédula de Ciudadanía (CC)', 1128459310, 'fedro', 'wilson1840@hotmail.com', '$2a$08$SvIqCJ/kgvLcc9ERX2Fv.uQJsbKOVtmVtKiFDPNENHe', 555, 'Coordinador CDS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitantes`
--

CREATE TABLE `visitantes` (
  `tipo_documento` varchar(255) NOT NULL,
  `numero_documento` int(45) NOT NULL,
  `nombre_completo` varchar(255) NOT NULL,
  `secretaria_entidad` varchar(255) NOT NULL,
  `ocupacion` varchar(255) NOT NULL,
  `fecha_nacimiento` varchar(255) NOT NULL,
  `enfoque_diferencial` varchar(255) NOT NULL,
  `degradacion_territorial` varchar(255) NOT NULL,
  `correo_electronico` varchar(255) NOT NULL,
  `organizacion` varchar(255) NOT NULL,
  `telefono_celular` int(45) NOT NULL,
  `sexo` char(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `visitantes`
--

INSERT INTO `visitantes` (`tipo_documento`, `numero_documento`, `nombre_completo`, `secretaria_entidad`, `ocupacion`, `fecha_nacimiento`, `enfoque_diferencial`, `degradacion_territorial`, `correo_electronico`, `organizacion`, `telefono_celular`, `sexo`) VALUES
('cedula de ciudadania', 1, 'fff', 'ds', 'adsds', '2019-06-02', 'indigena', '80.san antonio de prado', 'wilson1840@hotmail.com', 'jal', 44444, 'hombre'),
('cedula de ciudadania', 666, 'fgvv', 'vvv', 'v', '2021-12-02', 'indigena', '16.belen', 'wilson1840@hotmail.com', 'jal', 0, 'mujer'),
('cedula de ciudadania', 9588823, 'hhhh', 'hhh', 'hh', '2021-12-03', 'indigena', '80.san antonio de prado', 'wilson1840@hotmail.com', 'jal', 0, 'hombre'),
('cedula de ciudadania', 1128459310, 'sebas', 'fff', 'ffff', '2021-12-02', 'indigena', '80.san antonio de prado', 'wilson1840@hotmail.com', 'jac', 4343434, 'hombre'),
('cedula de ciudadania', 2147483647, 'hhhh', 'hhh', 'hh', '2021-12-02', 'indigena', '80.san antonio de prado', 'wilson1840@hotmail.com', 'jal', 0, 'hombre');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`id_actividades`);

--
-- Indices de la tabla `cds`
--
ALTER TABLE `cds`
  ADD PRIMARY KEY (`IdCds`);

--
-- Indices de la tabla `ingreso_visitantes`
--
ALTER TABLE `ingreso_visitantes`
  ADD PRIMARY KEY (`cedula`);

--
-- Indices de la tabla `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`cedula`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`cedula`);

--
-- Indices de la tabla `visitantes`
--
ALTER TABLE `visitantes`
  ADD PRIMARY KEY (`numero_documento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `id_actividades` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `cds`
--
ALTER TABLE `cds`
  MODIFY `IdCds` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;