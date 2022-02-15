-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-02-2022 a las 01:08:12
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
  `nombre_indicadores` varchar(100) NOT NULL,
  `nombres_plan_desarrollo` varchar(100) NOT NULL,
  `codigo_indicadores_pdm_pdi` int(50) NOT NULL,
  `IdCds` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` (`id_actividades`, `nombre`, `linea`, `componente`, `secretaria`, `facilitador`, `fecha_inicio`, `fecha_final`, `hora_apertura`, `hora_cierre`, `ciudad`, `comuna_corregimiento`, `barrio_vereda`, `direccion`, `tipo_reunion`, `nombre_proyecto_inversion`, `codigo_proyecto_inversion`, `nombre_indicadores`, `nombres_plan_desarrollo`, `codigo_indicadores_pdm_pdi`, `IdCds`) VALUES
(1, 'pintura', 'sdfgsdg', 'dfgdfg', 'dfsdfsdf', 'andres', '0000-00-00', '0000-00-00', '10:01:00', '22:04:00', 'sdfsdf', '80. San Antonio de Prado', 'sdasd', 'sdfsdfsdf', 'Toma de desiciones', 'dasdas', 34, 'zxcfzxcf', 'fsfs', 345345, 35),
(2, 'Arcilla', 'dfsdf', 'sdfsdf', 'dfsdfsdf', 'sdfsdfsd', '2022-01-26', '2022-01-31', '10:02:00', '22:02:00', 'dfsdfsf', '80. San Antonio de Prado', 'sdfsd', 'CARRERA 63   # 38  SUR 61 ciudadela prado etapa 4', 'Informativa', 'sfsf', 234234, 'dsf', 'fsdfsf', 343, 1),
(3, 'capoeira', 'sdfsd', 'fsdfsdf', 'sdfs', 'fsdf', '2022-02-01', '2022-02-01', '16:18:00', '16:21:00', 'fsdfsf', '70. Alta Vista', 'sdasd', 'sdfsdfsdf', 'Informativa', 'dfsdf', 34, 'sdfsd', 'fsfs', 345345, 1),
(4, 'capoeira', 'sdfsd', 'fsdfsdf', 'sdfs', 'fsdf', '2022-02-01', '2022-02-01', '16:18:00', '16:21:00', 'fsdfsf', '70. Alta Vista', 'sdasd', 'sdfsdfsdf', 'Informativa', 'dfsdf', 34, 'sdfsd', 'fsfs', 345345, 1),
(5, 'yoga', 'sdfsdf', 'sdfsdfsdf', 'sdfsdf', 'sdfsdf', '2022-02-01', '2022-02-08', '16:23:00', '16:23:00', 'sdfsdfsdfsd', '60. San Cristobal', 'sdfsdfsd', 'fsdfsd', 'Capacitación', 'sdfsd', 432, 'fsdf', 'sdfd', 234234, 1),
(6, 'judito', 'juanfree', 'dfgdfg', 'asdasd', 'sdfsdfsd', '0000-00-00', '0000-00-00', '18:24:00', '18:25:00', 'fsdfsf', '90. Santa Elena', 'sdasd', 'werwer', 'Formación', 'werwe', 5345345, 'gdfgdfgdf', 'refgrt', 234234, 35),
(8, 'karate', 'sfdfsd', 'fsdfsd', 'fsf', 'sfsf', '2020-02-07', '2022-02-07', '19:58:00', '19:58:00', 'sdfsdfsf', '80. San Antonio de Prado', 'sdfsdf', 'sfsdf', 'otro', 'sfsf', 53453454, 'fgfgdf', 'dfggdf', 345345, 35),
(9, 'karate', 'sdfsdf', 'sdsdf', 'sdfsdf', 'dsfsd', '2022-02-07', '2022-02-07', '20:01:00', '20:01:00', 'sdff', '90. Santa Elena', 'sdfdf', 'sdfsd', 'Capacitación', 'fsdf', 345345, 'sdfgsdfgsdf', 'gdfgdf', 45345, 35),
(10, 'karate', 'sdfsdf', 'sdsdf', 'sdfsdf', 'dsfsd', '2022-02-06', '2022-02-07', '20:01:00', '20:01:00', 'sdff', '90. Santa Elena', 'sdfdf', 'sdfsd', 'Capacitación', 'fsdf', 345345, 'sdfgsdfgsdf', 'gdfgdf', 45345, 35),
(11, 'Baile Tropical', 'sdfsdf', 'sdfsdf', 'fsdf', 'sdfsd', '2022-02-07', '2022-02-07', '20:03:00', '20:03:00', 'sdfsdf', '80. San Antonio de Prado', 'sdfsdfsd', 'fsdf', 'Seguimiento', 'sdfsdf', 345345, 'sfdfsd', 'sdfsdf', 3454, 35),
(12, 'Crosfit', 'sdfgsdg', 'dfgdfg', 'sdfsdf', 'sfsdfsfs', '2022-02-09', '2022-02-18', '13:30:00', '02:31:00', 'fsdfsf', '90. Santa Elena', 'fgfdg', 'dfgdfg', 'Seguimiento', 'dfgfgdg', 3456435, 'gdfgdfg', 'refgrt', 34564534, 35),
(13, 'waterpolo', 'sdfsdfsd', 'fsdfsd', 'fsdf', 'sdfsdfsd', '2022-02-09', '2022-02-09', '17:10:00', '17:10:00', 'sdfsdf', '80. San Antonio de Prado', 'sdfdfd', 'sfsdf', 'Capacitación', 'sdfsdf', 345435, 'dfgdfg', 'dfgdf', 234234, 35);

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
(31, 'TELECENTRO', '5. Castilla', '', 'sdfsdfsdf', 'sdfsd', 1231231231, 'wilson1840@hotmail.com', 'sdfsdfsdfsd', 'TELECENTRO MADERA'),
(32, 'CENTRO DE DESARROLO SOCIAL', '5. Castilla', 'ARANJUEZ', 'sdfsdfsdf', 'dsfds', 1231231231, 'wilson1840@hotmail.com', 'sdfsdfs', 'CENTRO DE DESARROLO SOCIAL ARANJUEZ'),
(33, 'CENTRO DE DESARROLO SOCIAL', '3. Manrique', 'CHAGUALO', 'sdfsdfsdf', 'dsfds', 1231231231, 'wilson1840@hotmail.com', 'sdfsdf', 'CENTRO DE DESARROLO SOCIAL CHAGUALO'),
(34, 'TELECENTRO', '2. Santa Cruz', 'ENVIGADO', 'CR 42 A  77 56', 'sdfsd', 1231231231, 'wilson1840@hotmail.com', 'sdfsdfsdfsd', 'TELECENTRO ENVIGADO'),
(35, 'CENTRO DE DESARROLO SOCIAL', '90. Santa Elena', 'SINGAPUR', 'sdfsdfsdf', 'dsfds', 1231231231, 'wilson1840@hotmail.com', 'sdfsdf', 'CENTRO DE DESARROLO SOCIAL SINGAPUR'),
(36, 'CENTRO DE DESARROLO SOCIAL', '2. Santa Cruz', 'ARBOLETES', 'sdfsdfsdf', 'dsfds', 2147483647, 'wilson1840@hotmail.com', 'sdfsdfsdfsd', 'CENTRO DE DESARROLO SOCIAL ARBOLETES'),
(37, 'CENTRO DE DESARROLO SOCIAL', '1. Popular', 'PICACHO', 'SSSDSS', 'sdfsd', 1231231231, 'wilson1840@hotmail.com', 'sdfsdf', 'CENTRO DE DESARROLO SOCIAL PICACHO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso_visitantes`
--

CREATE TABLE `ingreso_visitantes` (
  `id_visitantes` int(255) NOT NULL,
  `cedula` int(50) NOT NULL,
  `fecha` varchar(255) NOT NULL,
  `hora` time NOT NULL,
  `actividad` varchar(255) NOT NULL,
  `IdCds` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ingreso_visitantes`
--

INSERT INTO `ingreso_visitantes` (`id_visitantes`, `cedula`, `fecha`, `hora`, `actividad`, `IdCds`) VALUES
(1, 1128459310, '2022-02-10', '17:36:00', 'waterpolo', 35),
(3, 1128459310, '2022-02-09', '18:49:00', 'Baile Tropical', 35);

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
  `codigo` int(11) NOT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `telefono` int(11) NOT NULL,
  `rol` varchar(50) DEFAULT NULL,
  `IdCds` int(11) NOT NULL,
  `administrador` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `codigo`, `correo`, `pass`, `telefono`, `rol`, `IdCds`, `administrador`) VALUES
(3, 4342, 'wilson1840@hotmail.com', '$2a$08$eFDpVWcMLYvpu9udLCOUL.AW3K1V22AHaq7zxY61BXfrBT4lH0Duy', 55444, 'Apoyo Telecentro', 32, 0),
(4, 5455, 'wilson1840@hotmail.com', '$2a$08$uejM55.jYrEXqwp/F25K4OeBV/UNYNRPTtMUzgOBK2Z3bNu8d8dPS', 1231231231, 'Coordinador CDS', 33, 0),
(5, 7777, 'wilson1840@hotmail.com', '$2a$08$TkxNvhIBTYU97GDThtp9re/zZplZEQx0GwdVPF5CeyAS4NlqjVHaC', 55555, 'Apoyo Telecentro', 34, 0),
(6, 3456, 'wilson1840@hotmail.com', '$2a$08$DhxQG6O7fYdzxyioR4wWc.pr1ESA9HVcA0UKOr0ZHa4bgmiu8ddPS', 1231231231, 'Coordinador CDS', 34, 0),
(7, 4444, 'wilson1840@hotmail.com', '$2a$08$kmTFv2N/FhYY3s.Rg.p2S.mlI1VlvRKP2sN9iwBT7r6h2lqmlxtYu', 1231231231, 'Apoyo Telecentro', 35, 0),
(9, 0, 'wilson1840@hotmail.com', '$2a$08$K5P8E55fDrQd0W8upVq6j.8RxwM6UgOKlE9BiWY3BE7Sn2WErhJnO', 1231231231, 'Coordinador CDS', 30, 0),
(10, 0, 'wilson1840@hotmail.com', '$2a$08$Q7OxfyPOw3xRtHthcqhMl.VZRIrgGCTK.tNHV.HxJBtNiKcKXm4VO', 1231231231, 'Coordinador CDS', 36, 0),
(11, 5555, 'wilson1840@hotmail.com', '$2a$08$KG7OWKZmYlNaZbBGC9DcpuJN4W4zvEbxYno6tL4Y0GnqJxn0uuB..', 1231231231, 'Apoyo Telecentro', 36, 1),
(12, 9898, 'wilson1840@hotmail.com', '$2a$08$dT0XoEh7mnRfsp8lbeGJfe2/cZhzf1PIijpOppCRGHbeQnaMhb3dW', 1231231231, 'Apoyo Telecentro', 37, 0);

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

INSERT INTO `visitantes` (`id_visita`, `tipo_documento`, `numero_documento`, `nombre_completo`, `secretaria_entidad`, `ocupacion`, `fecha_nacimiento`, `edad`, `enfoque_diferencial`, `degradacion_territorial`, `correo_electronico`, `organizacion`, `telefono_celular`, `sexo`, `IdCds`) VALUES
(1, 'cedula de ciudadania', 0, 'el cata', 'asdsd', 'adsds', '1994-01-17', 27, 'Afrodescendiente', '60. San cristobal', 'wilson1840@hotmail.com', 'JAC', 44444, 'Hombre', 34),
(2, 'cedula de ciudadania', 1, 'fff', 'ds', 'adsds', '2019-06-02', 0, 'indigena', '80.san antonio de prado', 'wilson1840@hotmail.com', 'jal', 44444, 'hombre', 34),
(3, 'cedula de ciudadania', 666, 'fgvv', 'vvv', 'v', '2021-12-02', 0, 'indigena', '16.belen', 'wilson1840@hotmail.com', 'jal', 0, 'mujer', 34),
(4, 'cedula de ciudadania', 324567, 'uhjjhhjuh', 'ds', 'hh', '1994-01-18', 27, 'Indigena', '80. San antonio de prado', 'wilson1840@hotmail.com', 'JAC', 44444, 'Hombre', 34),
(5, 'cedula de ciudadania', 444444, 'gfilfiyoui', 'hhh', 'hh', '2022-01-04', 0, 'ROM', '50. San sebastian de palmitas', 'wilson1840@hotmail.com', 'JAC', 44444, 'Hombre', 34),
(6, 'pasaporte', 4455666, 'hhhh', 'ds', 'adsds', '1994-06-09', 27, 'Discapacidad', '60. San cristobal', 'wilson1840@hotmail.com', 'JAC', 44444, 'Hombre', 36),
(7, 'cedula de ciudadania', 9588823, 'hhhh', 'hhh', 'hh', '2021-12-03', 0, 'indigena', '80.san antonio de prado', 'wilson1840@hotmail.com', 'jal', 0, 'hombre', 34),
(8, 'cedula de ciudadania', 12312312, 'pedrito', 'asdasd', 'asdasd', '1994-01-18', 0, 'Indigena', '80. San antonio de prado', 'wilson1840@hotmail.com', 'JAC', 2147483647, 'Hombre', 34),
(9, 'cedula de ciudadania', 45678900, 'juanito', 'hhh', 'adsds', '1994-01-18', 0, 'Afrodescendiente', '80. San antonio de prado', 'wilson1840@hotmail.com', 'JAC', 2147483647, 'Hombre', 34),
(10, 'cedula de ciudadania', 876776666, 'asdfsadfsd', 'ayuraa', 'sdffsd', '2010-01-05', 11, 'Discapacidad', '80. San antonio de prado', 'wilson1840@hotmail.com', 'JAC', 123333, 'mujer', 35),
(11, 'cedula de ciudadania', 564456456, 'hhhh', 'sdfsd', 'adsdsfsdfsd', '1994-01-18', 0, 'Afrodescendiente', '60. San cristobal', 'wilson1840@hotmail.com', 'JAL', 5345345, 'Hombre', 34),
(12, 'cedula de ciudadania', 876776666, 'juanfre', 'asd', 'dsasdad', '1994-06-09', 28, 'Afrodescendiente', '50. San sebastian de palmitas', 'wilson1840@hotmail.com', 'JAL', 2147483647, 'Hombre', 35),
(13, 'cedula de ciudadania', 987878978, 'fff', 'hhh', 'adsds', '1994-02-02', 27, 'Afrodescendiente', '90. Santa elena', 'wilson1840@hotmail.com', 'JAC', 214748364, 'Hombre', 35),
(14, 'cedula de ciudadania', 1010101010, 'fdsfsdf', 'sdffsdf', 'hh', '1994-01-18', 27, 'Afrodescendiente', '80. San antonio de prado', 'wilson1840@hotmail.com', 'JAC', 44444, 'Hombre', 34),
(15, 'cedula de ciudadania', 1128459310, 'sebas', 'fff', 'ffff', '2021-12-02', 0, 'indigena', '80.san antonio de prado', 'wilson1840@hotmail.com', 'jac', 4343434, 'hombre', 34),
(16, 'pasaporte', 1223344444, 'hhhh', 'hhh', 'hh', '2017-01-09', 5, 'Indigena', '90. Santa elena', 'wilson1840@hotmail.com', 'JAL', 44444, 'Hombre', 36);

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
  ADD PRIMARY KEY (`id_visitantes`) USING BTREE,
  ADD KEY `IdCds` (`IdCds`);

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
  MODIFY `id_actividades` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `cds`
--
ALTER TABLE `cds`
  MODIFY `IdCds` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `ingreso_visitantes`
--
ALTER TABLE `ingreso_visitantes`
  MODIFY `id_visitantes` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `visitantes`
--
ALTER TABLE `visitantes`
  MODIFY `id_visita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
  ADD CONSTRAINT `cds_ingreso_visitantes` FOREIGN KEY (`IdCds`) REFERENCES `cds` (`IdCds`) ON DELETE CASCADE ON UPDATE CASCADE;

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




SELECT cedula, nombre_completo, fecha, hora, concatenar 
FROM visitantes 
  JOIN ingreso_visitantes ON visitantes.numero_documento  = ingreso_visitantes.cedula
    JOIN cds ON  ingreso_visitantes.IdCds=cds.IdCds;


SELECT  * 
FROM visitantes 
  JOIN ingreso_visitantes ON visitantes.numero_documento  = ingreso_visitantes.cedula
    JOIN cds ON  ingreso_visitantes.IdCds=cds.IdCds;
    

SELECT *
FROM ingreso_visitantes 
  JOIN visitantes ON visitantes.numero_documento = ingreso_visitantes.cedula
  JOIN cds ON  ingreso_visitantes.IdCds=cds.IdCds;
  JOIN actividades ON actividades.IdCds = cds.IdCds;

  SELECT * FROM actividades 
  JOIN cds ON actividades.IdCds = cds.IdCds;
