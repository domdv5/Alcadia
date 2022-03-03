-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-03-2022 a las 19:28:50
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
  `fecha_inicio` varchar(255) NOT NULL,
  `fecha_final` varchar(255) NOT NULL,
  `hora_apertura` time NOT NULL,
  `hora_cierre` time NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `comuna_corregimiento` varchar(100) NOT NULL,
  `barrio_vereda` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `tipo_reunion` varchar(100) NOT NULL,
  `nombre_proyecto_inversion` varchar(100) NOT NULL,
  `codigo_proyecto_inversion` int(50) NOT NULL,
  `nombres_plan_desarrollo` varchar(100) NOT NULL,
  `codigo_indicadores_pdm_pdi` int(50) NOT NULL,
  `IdCds` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` (`id_actividades`, `nombre`, `linea`, `componente`, `secretaria`, `facilitador`, `fecha_inicio`, `fecha_final`, `hora_apertura`, `hora_cierre`, `ciudad`, `comuna_corregimiento`, `barrio_vereda`, `direccion`, `tipo_reunion`, `nombre_proyecto_inversion`, `codigo_proyecto_inversion`, `nombres_plan_desarrollo`, `codigo_indicadores_pdm_pdi`, `IdCds`) VALUES
(2, 'Arcilla', 'dfsdf', 'sdfsdf', 'dfsdfsdf', 'sdfsdfsd', '2022-01-26', '2022-01-31', '10:02:00', '22:02:00', 'dfsdfsf', '80. San Antonio de Prado', 'sdfsd', 'CARRERA 63   # 38  SUR 61 ciudadela prado etapa 4', 'Informativa', 'sfsf', 234234, 'fsdfsf', 343, 1),
(3, 'capoeira', 'sdfsd', 'fsdfsdf', 'sdfs', 'fsdf', '2022-02-01', '2022-02-01', '16:18:00', '16:21:00', 'fsdfsf', '70. Alta Vista', 'sdasd', 'sdfsdfsdf', 'Informativa', 'dfsdf', 34, 'fsfs', 345345, 1),
(4, 'capoeira', 'sdfsd', 'fsdfsdf', 'sdfs', 'fsdf', '2022-02-01', '2022-02-01', '16:18:00', '16:21:00', 'fsdfsf', '70. Alta Vista', 'sdasd', 'sdfsdfsdf', 'Informativa', 'dfsdf', 34, 'fsfs', 345345, 1),
(5, 'yoga', 'sdfsdf', 'sdfsdfsdf', 'sdfsdf', 'sdfsdf', '2022-02-01', '2022-02-08', '16:23:00', '16:23:00', 'sdfsdfsdfsd', '60. San Cristobal', 'sdfsdfsd', 'fsdfsd', 'Capacitación', 'sdfsd', 432, 'sdfd', 234234, 1),
(6, 'judito', 'juanfree', 'dfgdfg', 'asdasd', 'sdfsdfsd', '0000-00-00', '0000-00-00', '18:24:00', '18:25:00', 'fsdfsf', '90. Santa Elena', 'sdasd', 'werwer', 'Formación', 'werwe', 5345345, 'refgrt', 234234, 35),
(8, 'karate', 'sfdfsd', 'fsdfsd', 'fsf', 'sfsf', '2020-02-07', '2022-02-07', '19:58:00', '19:58:00', 'sdfsdfsf', '80. San Antonio de Prado', 'sdfsdf', 'sfsdf', 'otro', 'sfsf', 53453454, 'dfggdf', 345345, 35),
(10, 'karate', 'sdfsdf', 'sdsdf', 'sdfsdf', 'dsfsd', '2022-02-06', '2022-02-07', '20:01:00', '20:01:00', 'sdff', '90. Santa Elena', 'sdfdf', 'sdfsd', 'Capacitación', 'fsdf', 345345, 'gdfgdf', 45345, 35),
(11, 'Baile Tropical', 'sdfsdf', 'sdfsdf', 'fsdf', 'sdfsd', '2022-02-07', '2022-02-07', '20:03:00', '20:03:00', 'sdfsdf', '80. San Antonio de Prado', 'sdfsdfsd', 'fsdf', 'Seguimiento', 'sdfsdf', 345345, 'sdfsdf', 3454, 35),
(12, 'Crosfit', 'sdfgsdg', 'dfgdfg', 'sdfsdf', 'sfsdfsfs', '2022-02-09', '2022-02-18', '13:30:00', '02:31:00', 'fsdfsf', '90. Santa Elena', 'fgfdg', 'dfgdfg', 'Seguimiento', 'dfgfgdg', 3456435, 'refgrt', 34564534, 35),
(14, 'robotica', 'retert', 'erter', 'tert', 'erte', '2022-02-15', '2022-02-15', '07:43:00', '20:44:00', 'fsdfsf', '80. San Antonio de Prado', 'tertertert', 'erte', 'Formación', 'tert', 34534, 'dfgghh', 0, 38),
(15, 'clase de actulizacion de estados financieron y contables del ano', 'sdf', 'sdfsdfsdf', 'yyfASSA', 'sdfsdfsd', '2022-02-17', '2022-02-17', '19:32:00', '19:32:00', 'fsdfsdf', '90. Santa Elena', 'fsdfsd', 'fsdfsd', 'Capacitación', 'fsdf', 0, 'sdfsdf', 0, 35),
(17, 'conduccionNNN', 'sdfsd', 'sdfds', 'qeweqw', 'eqweqw', '2022-02-18', '2022-02-18', '13:48:00', '13:48:00', 'fsdfsf', '80. San Antonio de Prado', 'sdasd', 'sdfsdfsdf', 'Capacitación', 'sdfsdf', 343, 'dsfsd', 343, 35),
(18, 'wilson', 'sdfgsdg', 'dfgdfg', 'dfsdfsdf', 'sdfsdfsd', '2022-12-31', '2022-02-21', '12:59:00', '12:59:00', 'fsdfsf', '90. Santa Elena ', 'sdasd', 'sdfsdfsdf', 'Otro', 'sdfsd', 34, 'fsfs', 234234, 35),
(19, 'wilson', 'sdfgsdg', 'dfgdfg', 'dfsdfsdf', 'sdfsdfsd', '2022-12-31', '2022-12-31', '12:59:00', '12:59:00', 'fsdfsf', '90. Santa Elena ', 'sdasd', 'sdfsdfsdf', 'Seguimiento', 'dfsdf', 34, 'fsfs', 455, 35),
(20, 'wilson', 'sdfgsdg', 'dfgdfg', 'dfsdfsdf', 'sdfsdfsd', '2022-12-31', '2022-12-31', '12:59:00', '12:59:00', 'fsdfsf', '90. Santa Elena ', 'sdasd', 'sdfsdfsdf', 'Seguimiento', 'dfsdf', 34, 'fsfs', 455, 35),
(21, 'wilson', 'sdfgsdg', 'dfgdfg', 'dfsdfsdf', 'sdfsdfsd', '2022-12-31', '2022-12-31', '12:59:00', '12:59:00', 'fsdfsf', '90. Santa Elena ', 'sdasd', 'sdfsdfsdf', 'Capacitación', 'dfsdf', 34, 'fsfs', 345345, 35),
(22, 'wilson', 'sdfgsdg', 'dfgdfg', 'dfsdfsdf', 'sdfsdfsd', '2022-12-31', '2022-12-31', '12:59:00', '12:59:00', 'fsdfsf', '90. Santa Elena ', 'sdasd', 'sdfsdfsdf', 'Otro', 'dfsdf', 34, 'fsfs', 345345, 35),
(23, 'EXCEL', 'sdfgsdg', 'dfgdfg', 'dfsdfsdf', 'sdfsdfsd', '2022-12-31', '2022-12-31', '12:59:00', '12:59:00', 'fsdfsf', '90. Santa Elena ', 'sdasd', 'sdfsdfsdf', 'Informativa', 'dfsdf', 34, 'fsfs', 0, 35),
(24, 'WORD', 'sdfgsdg', 'dfgdfg', 'dfsdfsdf', 'sdfsdfsd', '2022-12-31', '2022-12-31', '12:59:00', '12:59:00', 'fsdfsf', '90. Santa Elena ', 'sdasd', 'sdfsdfsdf', 'NOOOOOOOOOOOOOOO', '', 34, 'fsfs', 345345, 35),
(26, 'pintura', 'sdfgsdg', 'dfgdfg', 'dfsdfsdf', 'sdfsdfsd', '2021-11-30', '2021-11-30', '23:58:00', '23:57:00', 'fsdfsf', '90. Santa Elena ', 'sdasd', 'sdfsdf', 'Toma de desiciones', 'dfsdf', 34, 'fsfs', 234234, 35),
(27, 'wilson', 'sdfgsdg', '', 'dfsdfsdf', 'sdfsdfsd', '2022-03-02', '2022-12-31', '12:59:00', '12:59:00', 'fsdfsf', '90. Santa Elena ', 'sdasd', 'sdfsdfsdf', 'Seguimiento', 'dfsdf', 34, 'fsfs', 345345, 35),
(28, 'Programacion', 'sdfgsdg', 'dfgdfg', 'dfsdfsdf', 'sdfsdfsd', '2022-12-31', '2022-12-31', '12:59:00', '12:59:00', 'fsdfsf', '90. Santa Elena ', 'sdasd', 'sdfsdfsdf', 'Informativa', 'dfsdf', 34, 'fsfs', 345345, 35);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cds`
--

CREATE TABLE `cds` (
  `IdCds` int(11) NOT NULL,
  `espacio` varchar(255) NOT NULL,
  `Comuna` varchar(40) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Horario` varchar(100) NOT NULL,
  `Telefono` int(11) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `NombreCoordinador` varchar(100) NOT NULL,
  `concatenar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cds`
--

INSERT INTO `cds` (`IdCds`, `espacio`, `Comuna`, `Nombre`, `Direccion`, `Horario`, `Telefono`, `correo`, `NombreCoordinador`, `concatenar`) VALUES
(1, 'CENTRO DE DESARROLO SOCIAL ITAGUI', '2. Santa Cruz', 'sadsa', '12dasdada', 'de lunes a viernes 6 a 8 pm ', 2147483647, 'efdadasdasd@gmail.com', 'juan velez', ''),
(2, 'CENTRO DE DESARROLO SOCIALS SABANETA', '13. San javier', 'sadsa', '12dasdada', 'de lunes a viernes 6 a 8 pm ', 2147483647, 'efdadasdasd@gmail.com', 'juan velez', ''),
(3, 'CENTRO DE DESARROLO SOCIAL', '16. Belén', 'sadsa', '12dasdada', 'lunes a viernes', 2147483647, 'efdadasdasd@gmail.com', 'juan velez', ''),
(4, 'CENTRO DE DESARROLO SOCIAL', '14. El Poblado', 'manualidad', '12dasdada', 'de lunes a viernes 6 a 8 pm ', 12321312, '213213', 'juan lopez hernandez', ''),
(5, 'CENTRO DE DESARROLO SOCIAL', '14. El Poblado', 'manualidad', '12dasdada', 'de lunes a viernes 6 a 8 pm ', 123213125, '213213', 'juan lopez hernandez', ''),
(6, 'CENTRO DE DESARROLO SOCIAL', '16. Belén', 'manualidad', 'asdwedwqeqwewqeqw', 'de lunes a viernes 6 a 8 pm ', 1232131321, 'dasdas', 'juan velez', ''),
(7, 'CENTRO DE DESARROLO SOCIAL', '16. Belén', 'manualidad', 'asdwedwqeqwewqeqw', 'de lunes a viernes 6 a 8 pm ', 1232131321, 'dasdas', 'juan velez felipe', ''),
(8, 'CENTRO DE DESARROLO SOCIAL', '16. Belén', 'manualidad', 'asdwedwqeqwewqeqw', 'de lunes a viernes 6 a 8 pm ', 1232131321, 'dasdas', 'juan velez felipe', ''),
(9, 'CENTRO DE DESARROLO SOCIAL', '16. Belén', 'manualidad', 'asdwedwqeqwewqeqw', 'de lunes a viernes 6 a 8 pm ', 1232131321, 'dasdas', 'juan velez felipe', ''),
(10, 'CENTRO DE DESARROLO SOCIAL', '14. El Poblado', 'hol', 'sdfsdf', 'dsfds', 0, 'wilson1840@hotmail.com', 'sdfsdf', ''),
(11, 'TELECENTRO PRADITO', '7. Robledo', 'TELECENTRO PRADITO', 'sdfsdfsdf', 'sdfsd', 1231231231, 'fsdfsf', 'sdfsdfs', ''),
(12, 'CENTRO DE DESARROLO SOCIAL', '3. Manrique', 'wilson', 'sdfsdf', 'fsdsdfsdf', 1231231231, 'wilson1840@hotmail.com', 'sdfsdfsdfsd', ''),
(26, 'TELECENTRO', '3. Manrique', 'comuna 13', 'sdfsdfsdf', 'dsfds', 1231231231, 'wilson1840@hotmail.com', 'sdfsdf', ''),
(27, 'cds', '1', 'laurelesssss', 'h', 'h', 0, 'wilson1840@hotmail.com', 'juanfre', 'cds laureles'),
(28, 'CENTRO DE DESARROLO SOCIAL', '60. San Cristobal', 'LA ESTRELLA', 'H', 'H', 0, 'H', 'H', ''),
(30, 'CENTRO DE DESARROLO SOCIAL', '3. Manrique', '', 'sdfsdfsdf', 'sdfsd', 1231231231, 'wilson1840@hotmail.com', 'sdfsdf', 'CENTRO DE DESARROLO SOCIAL wilson'),
(31, 'TELECENTRO', '1. Popular', 'TELECENTRO MADERA', 'sdfsdfsdf', 'sdfsd', 1231231231, 'wilson1840@hotmail.com', 'sdfsdfsdfsd', 'TELECENTRO MADERA'),
(32, 'CENTRO DE DESARROLO SOCIAL', '5. Castilla', 'ARANJUEZ', 'sdfsdfsdf', 'dsfds', 1231231231, 'wilson1840@hotmail.com', 'sdfsdfs', 'CENTRO DE DESARROLO SOCIAL ARANJUEZ'),
(33, 'CENTRO DE DESARROLO SOCIAL', '3. Manrique', 'CHAGUALO', 'sdfsdfsdf', 'dsfds', 1231231231, 'wilson1840@hotmail.com', 'sdfsdf', 'CENTRO DE DESARROLO SOCIAL CHAGUALO'),
(34, 'TELECENTRO', '2. Santa Cruz', 'ENVIGADO', 'CR 42 A  77 56', 'sdfsd', 1231231231, 'wilson1840@hotmail.com', 'sdfsdfsdfsd', 'TELECENTRO ENVIGADO'),
(35, 'CENTRO DE DESARROLO SOCIAL', '90. Santa Elena', 'SINGAPUR', 'sdfsdfsdf', 'dsfds', 1231231231, 'wilson1840@hotmail.com', 'sdfsdf', 'CENTRO DE DESARROLO SOCIAL SINGAPUR'),
(36, 'CENTRO DE DESARROLO SOCIAL', '2. Santa Cruz', 'ARBOLETES', 'sdfsdfsdf', 'dsfds', 2147483647, 'wilson1840@hotmail.com', 'sdfsdfsdfsd', 'CENTRO DE DESARROLO SOCIAL ARBOLETES'),
(38, 'CENTRO DE DESARROLO SOCIAL', '80. San Antonio de Prado', 'SABANALARGA', 'DFSDF', 'dsfds', 345435, 'wilson1840@hotmail.com', 'SDFDFD', 'CENTRO DE DESARROLO SOCIAL SABANALARGA'),
(39, 'ADMINISTRADOR', '14. El Poblado', 'ZONA SUR', 'CR 42 A  77 56', 'sdfsd', 345345, 'wilson1840@hotmail.com', 'sdfgsdfgdf', 'ADMINISTRADOR ZONA SUR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso_visitantes`
--

CREATE TABLE `ingreso_visitantes` (
  `id_ingresos` int(255) NOT NULL,
  `cedula` int(50) NOT NULL,
  `fecha` varchar(20) NOT NULL,
  `hora` time NOT NULL,
  `IdCds` int(11) NOT NULL,
  `id_actividades` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ingreso_visitantes`
--

INSERT INTO `ingreso_visitantes` (`id_ingresos`, `cedula`, `fecha`, `hora`, `IdCds`, `id_actividades`) VALUES
(4, 1128459310, '2022', '07:18:00', 35, 12),
(5, 1128459310, '2022', '09:06:00', 35, 6),
(12, 1128459310, '2022', '15:27:15', 35, 12),
(16, 1128459310, '2022-2-14', '20:31:33', 35, 12),
(17, 1128459310, '2022-2-15', '07:45:13', 38, 14),
(18, 1128459310, '2022-2-17', '18:54:37', 35, 12),
(19, 1128459310, '2022-2-21', '13:44:28', 35, 15),
(20, 1128459310, '2022-2-21', '13:45:11', 35, 15),
(21, 1128459310, '2022-2-21', '19:11:56', 35, 15),
(22, 1128452310, '2022-3-1', '17:28:53', 35, 15),
(23, 1128459310, '2022-3-1', '17:31:22', 35, 15),
(24, 1128459310, '2022-3-1', '18:23:31', 35, 15),
(25, 1128459310, '2022-3-1', '18:24:38', 35, 15),
(26, 1128459310, '2022-3-1', '18:24:59', 35, 15),
(28, 1128459310, '2022-3-1', '18:27:19', 35, 8);

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
  `id_usuarios` int(11) NOT NULL,
  `cedula` int(11) NOT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `telefono` int(11) NOT NULL,
  `rol` tinyint(1) DEFAULT NULL,
  `IdCds` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `cedula`, `correo`, `pass`, `telefono`, `rol`, `IdCds`) VALUES
(3, 4342, 'wilson1840@hotmail.com', '$2a$08$eFDpVWcMLYvpu9udLCOUL.AW3K1V22AHaq7zxY61BXfrBT4lH0Duy', 55444, 0, 32),
(4, 5455, 'wilson1840@hotmail.com', '$2a$08$uejM55.jYrEXqwp/F25K4OeBV/UNYNRPTtMUzgOBK2Z3bNu8d8dPS', 1231231231, 0, 33),
(5, 7777, 'wilson1840@hotmail.com', '$2a$08$TkxNvhIBTYU97GDThtp9re/zZplZEQx0GwdVPF5CeyAS4NlqjVHaC', 55555, 0, 34),
(6, 3456, 'wilson1840@hotmail.com', '$2a$08$DhxQG6O7fYdzxyioR4wWc.pr1ESA9HVcA0UKOr0ZHa4bgmiu8ddPS', 1231231231, 0, 34),
(7, 4444, 'wilson1840@hotmail.com', '$2a$08$kmTFv2N/FhYY3s.Rg.p2S.mlI1VlvRKP2sN9iwBT7r6h2lqmlxtYu', 1231231231, 0, 35),
(9, 0, 'wilson1840@hotmail.com', '$2a$08$K5P8E55fDrQd0W8upVq6j.8RxwM6UgOKlE9BiWY3BE7Sn2WErhJnO', 1231231231, 0, 30),
(10, 0, 'wilson1840@hotmail.com', '$2a$08$Q7OxfyPOw3xRtHthcqhMl.VZRIrgGCTK.tNHV.HxJBtNiKcKXm4VO', 1231231231, 0, 36),
(11, 5555, 'wilson1840@hotmail.com', '$2a$08$KG7OWKZmYlNaZbBGC9DcpuJN4W4zvEbxYno6tL4Y0GnqJxn0uuB..', 1231231231, 0, 36),
(14, 8888, 'wilson1840@hotmail.com', '$2a$08$OtVgp47Uy3e9vF28LfVLouH7OZit3XaA5GfzngucKCIPVbdLf8qPy', 1231231231, 0, 38),
(16, 9999, 'wilson1840@hotmail.com', '$2a$08$wONSJp0sPRzKkYpRuak8ouIGTM9Lmwtm39xTWFBzBlsllZ8PLkEOG', 2147483647, 0, 38),
(19, 2, 'd', '$2a$08$uX4SsWZmaiANyIM5C.N0auYtsBPiYQv5ZjONgp2yIheTz5bMFz5CS', 2147483647, 0, 27),
(22, 1128459310, 'wilson1840@hotmail.com', '$2a$08$IHx.uIX9Yq2A7ZOrA8Y/Ze.kYUtIAcB1cw4CoNBtGgb.wCDR8PKeq', 2147483647, 1, 39),
(26, 8740588, 'wilson1840@hotmail.com', '$2a$08$mHvHGKxlJ5OQLBVxvaXUMu9txuRjwVyIxGMAx5S.QFbPD0IBvgztG', 1231231231, 1, 39);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitantes`
--

CREATE TABLE `visitantes` (
  `id_visita` int(11) NOT NULL,
  `tipo_documento` varchar(255) NOT NULL,
  `numero_documento` int(45) NOT NULL,
  `nombre_completo` varchar(255) NOT NULL,
  `secretaria_entidad` varchar(255) NOT NULL,
  `ocupacion` varchar(255) NOT NULL,
  `fecha_nacimiento` varchar(255) NOT NULL,
  `edad` int(50) NOT NULL,
  `enfoque_diferencial` varchar(255) NOT NULL,
  `derechos` varchar(255) NOT NULL,
  `degradacion_territorial` varchar(255) NOT NULL,
  `correo_electronico` varchar(255) NOT NULL,
  `organizacion` varchar(255) NOT NULL,
  `telefono_celular` int(45) NOT NULL,
  `sexo` char(45) NOT NULL,
  `IdCds` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `visitantes`
--

INSERT INTO `visitantes` (`id_visita`, `tipo_documento`, `numero_documento`, `nombre_completo`, `secretaria_entidad`, `ocupacion`, `fecha_nacimiento`, `edad`, `enfoque_diferencial`, `derechos`, `degradacion_territorial`, `correo_electronico`, `organizacion`, `telefono_celular`, `sexo`, `IdCds`) VALUES
(2, 'cedula de ciudadania', 1, 'fff', 'ds', 'adsds', '2019-06-02', 0, 'indigena', '', '80.san antonio de prado', 'wilson1840@hotmail.com', 'jal', 44444, 'hombre', 34),
(3, 'cedula de ciudadania', 666, 'fgvv', 'vvv', 'v', '2021-12-02', 0, 'indigena', '', '16.belen', 'wilson1840@hotmail.com', 'jal', 0, 'mujer', 34),
(4, 'cedula de ciudadania', 324567, 'uhjjhhjuh', 'ds', 'hh', '1994-01-18', 27, 'Indigena', '', '80. San antonio de prado', 'wilson1840@hotmail.com', 'JAC', 44444, 'Hombre', 34),
(5, 'cedula de ciudadania', 444444, 'gfilfiyoui', 'hhh', 'hh', '2022-01-04', 0, 'ROM', '', '50. San sebastian de palmitas', 'wilson1840@hotmail.com', 'JAC', 44444, 'Hombre', 34),
(6, 'pasaporte', 4455666, 'hhhh', 'ds', 'adsds', '1994-06-09', 27, 'Discapacidad', '', '60. San cristobal', 'wilson1840@hotmail.com', 'JAC', 44444, 'Hombre', 36),
(7, 'cedula de ciudadania', 9588823, 'hhhh', 'hhh', 'hh', '2021-12-03', 0, 'indigena', '', '80.san antonio de prado', 'wilson1840@hotmail.com', 'jal', 0, 'hombre', 34),
(8, 'cedula de ciudadania', 12312312, 'pedrito', 'asdasd', 'asdasd', '1994-01-18', 0, 'Indigena', '', '80. San antonio de prado', 'wilson1840@hotmail.com', 'JAC', 2147483647, 'Hombre', 34),
(9, 'cedula de ciudadania', 45678900, 'juanito', 'hhh', 'adsds', '1994-01-18', 0, 'Afrodescendiente', '', '80. San antonio de prado', 'wilson1840@hotmail.com', 'JAC', 2147483647, 'Hombre', 34),
(10, 'cedula de ciudadania', 876776666, 'asdfsadfsd', 'envigado', 'sdffsd', '2010-01-05', 11, 'Discapacidad', '', '80. San antonio de prado', 'wilson1840@hotmail.com', 'JAC', 123333, 'mujer', 34),
(11, 'cedula de ciudadania', 564456456, 'hhhh', 'sdfsd', 'adsdsfsdfsd', '1994-01-18', 0, 'Afrodescendiente', '', '60. San cristobal', 'wilson1840@hotmail.com', 'JAL', 5345345, 'Hombre', 34),
(12, 'cedula de ciudadania', 876776666, 'asdfsadfsd', 'envigado', 'sdffsd', '2010-01-05', 28, 'Afrodescendiente', '', '50. San sebastian de palmitas', 'wilson1840@hotmail.com', 'JAL', 123333, 'mujer', 34),
(13, 'cedula de ciudadania', 987878978, 'fff', 'hhh', 'adsds', '1994-02-02', 27, 'Afrodescendiente', '', '90. Santa elena', 'wilson1840@hotmail.com', 'JAC', 214748364, 'Hombre', 31),
(14, 'cedula de ciudadania', 1010101010, 'fdsfsdf', 'sdffsdf', 'hh', '1994-01-18', 27, 'Afrodescendiente', '', '80. San antonio de prado', 'wilson1840@hotmail.com', 'JAC', 44444, 'Hombre', 34),
(16, 'pasaporte', 1223344444, 'hhhh', 'hhh', 'hh', '2017-01-09', 5, 'Indigena', '', '90. Santa elena', 'wilson1840@hotmail.com', 'JAL', 44444, 'Hombre', 36),
(61, 'cedula de ciudadania', 1128459319, 'jua', 'ds', 'adsds', '2022-12-31', -1, 'ROM, Situacion de calle', 'Población victima', '1. Popular', 'wilson1840@hotmail.com', 'sdfsdf', 3760193, 'Masculino', 35),
(62, 'cedula de ciudadania', 1128349310, 'juanfre', 'ds', 'adsds', '2022-02-24', 0, 'ROM, LGBTIQ+, Situacion de calle', 'Población victima', '1. Popular', 'wilson1840@hotmail.com', 'sdfsdf', 3760193, 'Masculino', 35),
(63, 'cedula de ciudadania', 1128459345, 'juanfre', 'ds', 'adsds', '2022-12-31', -1, 'ROM', 'Población victima', '1. Popular', 'wilson1840@hotmail.com', 'sdfsdf', 3760193, 'Masculino', 35),
(64, 'cedula de extranjeria', 1088223438, 'fff', 'ds', 'adsds', '2022-12-31', -1, 'Situacion de calle', 'Población victima', '1. Popular', 'wilson1840@hotmail.com', 'sdfsdf', 3760193, 'Masculino', 35),
(65, 'cedula de ciudadania', 8740588, 'soria', 'ds', 'adsds', '2021-12-31', 0, 'Indigena, LGBTIQ+, Campesino', 'Población victima', '1. Popular', 'wilson1840@hotmail.com', 'sdfsdf', 3760193, 'Masculino', 35),
(66, 'cedula de ciudadania', 8740587, 'juanfre', 'ds', 'adsds', '2021-12-31', 0, 'Indigena, LGBTIQ+, Campesino', 'Población victima', '1. Popular', 'wilson1840@hotmail.com', 'sdfsdf', 3760193, 'Masculino', 35),
(67, 'cedula de ciudadania', 8740581, 'juanfre', 'hhh', 'adsds', '2022-02-24', 0, 'Situacion de calle, Discapacidad', 'Población victima', '80. San antonio de prado', 'wilson1840@hotmail.com', 'sdfsdf', 5345345, 'Masculino', 35),
(68, 'cedula de ciudadania', 8740386, 'juanfre', 'ds', 'adsds', '2022-12-31', -1, 'Indigena', 'Población victima', '2. Santa cruz', 'wilson1840@hotmail.com', 'sdfsdf', 3760193, 'Masculino', 35),
(69, 'cedula de ciudadania', 8740386, 'juanfre', 'ds', 'adsds', '2022-12-31', -1, 'Indigena', 'Población victima', '2. Santa cruz', 'wilson1840@hotmail.com', 'sdfsdf', 3760193, 'Masculino', 35),
(70, 'cedula de ciudadania', 8740386, 'juanfre', 'ds', 'adsds', '2022-12-31', -1, 'Indigena', 'Población victima', '2. Santa cruz', 'wilson1840@hotmail.com', 'sdfsdf', 3760193, 'Masculino', 35),
(71, 'cedula de ciudadania', 1128459346, 'fff', 'ds', 'adsds', '2015-12-31', 6, 'Situacion de calle, Campesino, Discapacidad', 'Población victima', '1. Popular', 'wilson1840@hotmail.com', 'sdfsdf', 3760193, 'Masculino', 35),
(72, 'cedula de ciudadania', 1128454310, 'juanfre', 'ds', 'adsds', '2022-12-31', -1, 'ROM, Campesino', 'Población victima', '1. Popular', 'wilson1840@hotmail.com', 'sdfsdf', 3760193, 'Masculino', 35),
(73, 'cedula de ciudadania', 1128759310, 'juanfre', 'ds', 'adsds', '2022-12-31', -1, 'LGBTIQ+, Situacion de calle, No Aplica', 'Población victima', '1. Popular', 'wilson1840@hotmail.com', 'sdfsdf', 3760193, 'Femenino', 35),
(74, 'cedula de ciudadania', 1128452310, 'juanfre', 'ds', 'adsds', '2022-12-31', -1, 'ROM, LGBTIQ+, Campesino', 'Población victima', '1. Popular', 'wilson1840@hotmail.com', 'sdfsdf', 3760193, 'Masculino', 35),
(75, 'cedula de ciudadania', 1124452310, 'juanfre', 'ds', 'adsds', '2022-02-10', -1, 'Indigena', 'Población victima', '1. Popular', 'wilson1840@hotmail.com', 'sdfsdf', 3760193, 'Masculino', 35),
(76, 'cedula de ciudadania', 1528459310, 'juanfre', 'ds', 'adsds', '2022-12-31', -1, 'Indigena', 'Población victima', '1. Popular', 'wilson1840@hotmail.com', 'sdfsdf', 3760193, 'Masculino', 35),
(77, 'cedula de ciudadania', 1128452313, 'juanfre', 'hhh', 'adsds', '2022-12-31', -1, 'ROM, LGBTIQ+, Campesino', 'Población victima', '1. Popular', 'wilson1840@hotmail.com', 'sdfsdf', 3760193, 'Masculino', 35),
(78, 'cedula de ciudadania', 1128452345, 'juanfre', 'ds', 'adsds', '2022-12-31', -1, 'LGBTIQ+, Campesino, No Aplica', 'Población victima', '1. Popular', 'wilson1840@hotmail.com', 'sdfsdf', 3760193, 'Masculino', 35),
(79, 'cedula de ciudadania', 1128652310, 'juanfre', 'ds', 'adsds', '2022-12-31', -1, 'LGBTIQ+', 'Población victima', '1. Popular', 'wilson1840@hotmail.com', 'sdfsdf', 3760193, 'Masculino', 35),
(80, 'cedula de ciudadania', 1088458438, 'juanfre', 'ds', 'adsds', '2022-12-31', -1, 'LGBTIQ+', 'Población victima', '1. Popular', 'wilson1840@hotmail.com', 'sdfsdf', 3760193, 'Masculino', 35),
(81, 'cedula de extranjeria', 1123452310, 'juanfre', 'ds', 'adsds', '2022-12-31', -1, 'Situacion de calle, Campesino', 'Población victima', '1. Popular', 'wilson1840@hotmail.com', 'sdfsdf', 3760193, 'Masculino', 35),
(82, 'cedula de ciudadania', 1128662310, 'juanfre', 'ds', 'adsds', '2022-12-31', -1, 'ROM, Campesino', 'Población victima', '1. Popular', 'wilson1840@hotmail.com', 'sdfsdf', 3760193, 'Masculino', 35),
(83, 'cedula de ciudadania', 1128552310, 'juanfre', 'ds', 'adsds', '2022-12-31', -1, 'LGBTIQ+, Situacion de calle', 'Población victima', '70. Alta vista', 'wilson1840@hotmail.com', '', 3760193, 'Masculino', 35),
(84, 'cedula de ciudadania', 4456789, 'juanfre', 'ds', 'adsds', '2005-02-22', 16, 'LGBTIQ+, Situacion de calle', 'Población victima', '1. Popular', 'wilson1840@hotmail.com', 'sdfsdf', 3760193, 'Masculino', 35),
(85, 'cedula de extranjeria', 1128452312, 'fff', 'ds', 'adsds', '2022-12-31', -1, 'ROM, Situacion de calle, Discapacidad', 'Población victima', '1. Popular', 'wilson1840@hotmail.com', 'sdfsdf', 3760193, 'Femenino', 35),
(86, 'cedula de ciudadania', 1122452310, 'juanfre', 'ds', 'adsds', '2022-12-31', -1, 'LGBTIQ+, Campesino, Discapacidad', 'Población victima', '1. Popular', 'wilson1840@hotmail.com', 'sdfsdf', 3760193, 'Masculino', 35),
(87, 'cedula de extranjeria', 1128452317, 'juanfre', 'ds', 'adsds', '2022-12-31', -1, 'ROM, LGBTIQ+', 'Población victima', '1. Popular', 'wilson1840@hotmail.com', 'sdfsdf', 3760193, 'Masculino', 35),
(88, 'cedula de ciudadania', 1128459310, 'wilson andres calderon', 'ds', 'adsds', '1994-06-09', 27, 'Indigena', 'Población victima', '60. San cristobal', 'wilson1840@hotmail.com', 'sdfsdf', 3760193, 'Masculino', 35);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`id_actividades`),
  ADD KEY `IdCds` (`IdCds`);

--
-- Indices de la tabla `cds`
--
ALTER TABLE `cds`
  ADD PRIMARY KEY (`IdCds`);

--
-- Indices de la tabla `ingreso_visitantes`
--
ALTER TABLE `ingreso_visitantes`
  ADD PRIMARY KEY (`id_ingresos`) USING BTREE,
  ADD KEY `IdCds` (`IdCds`),
  ADD KEY `id_actividades` (`id_actividades`);

--
-- Indices de la tabla `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`cedula`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuarios`) USING BTREE,
  ADD KEY `IdCds` (`IdCds`);

--
-- Indices de la tabla `visitantes`
--
ALTER TABLE `visitantes`
  ADD PRIMARY KEY (`id_visita`) USING BTREE,
  ADD KEY `IdCds` (`IdCds`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `id_actividades` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `cds`
--
ALTER TABLE `cds`
  MODIFY `IdCds` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `ingreso_visitantes`
--
ALTER TABLE `ingreso_visitantes`
  MODIFY `id_ingresos` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `visitantes`
--
ALTER TABLE `visitantes`
  MODIFY `id_visita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD CONSTRAINT `cds_actividades` FOREIGN KEY (`IdCds`) REFERENCES `cds` (`IdCds`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ingreso_visitantes`
--
ALTER TABLE `ingreso_visitantes`
  ADD CONSTRAINT `actividades_ingresoVisitantes` FOREIGN KEY (`id_actividades`) REFERENCES `actividades` (`id_actividades`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cds_ingresoVisitantes` FOREIGN KEY (`IdCds`) REFERENCES `cds` (`IdCds`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `cds_usuarios` FOREIGN KEY (`IdCds`) REFERENCES `cds` (`IdCds`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `visitantes`
--
ALTER TABLE `visitantes`
  ADD CONSTRAINT `cds_visitantes` FOREIGN KEY (`IdCds`) REFERENCES `cds` (`IdCds`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
