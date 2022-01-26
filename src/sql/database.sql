-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-01-2022 a las 19:24:21
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
(1, 'pintura', 'sdfgsdg', 'dfgdfg', 'dfsdfsdf', 'sdfsdfsd', '2022-01-26', '2022-01-29', '10:01:00', '22:04:00', 'CENTRO DE DESARROLO SOCIAL ITAGUI', 'sdfsdf', '80. San Antonio de Prado', 'sdasd', 'sdfsdfsdf', 'Toma de desiciones', 'dasdas', 34, 'zxcfzxcf', 'fsfs', 345345),
(2, 'Arcilla', 'dfsdf', 'sdfsdf', 'dfsdfsdf', 'sdfsdfsd', '2022-01-26', '2022-01-31', '10:02:00', '22:02:00', 'TELECENTRO PRADITO', 'dfsdfsf', '80. San Antonio de Prado', 'sdfsd', 'CARRERA 63   # 38  SUR 61 ciudadela prado etapa 4', 'Informativa', 'sfsf', 234234, 'dsf', 'fsdfsf', 343);

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
(27, 'cds', '1', 'laureles', 'h', 'h', 0, 'h', 'h', 'cds laureles'),
(28, 'CENTRO DE DESARROLO SOCIAL', '60. San Cristobal', 'LA ESTRELLA', 'H', 'H', 0, 'H', 'H', ''),
(29, 'CENTRO DE DESARROLO SOCIAL', '60. San Cristobal', 'SABANETA', 'sdfsdfsdf', 'dsfds', 1231231231, 'H', 'sdfsdf', 'HOLI'),
(30, 'CENTRO DE DESARROLO SOCIAL', '3. Manrique', '', 'sdfsdfsdf', 'sdfsd', 1231231231, 'wilson1840@hotmail.com', 'sdfsdf', 'CENTRO DE DESARROLO SOCIAL wilson'),
(31, 'TELECENTRO', '5. Castilla', '', 'sdfsdfsdf', 'sdfsd', 1231231231, 'wilson1840@hotmail.com', 'sdfsdfsdfsd', 'TELECENTRO MADERA'),
(32, 'CENTRO DE DESARROLO SOCIAL', '5. Castilla', 'ARANJUEZ', 'sdfsdfsdf', 'dsfds', 1231231231, 'wilson1840@hotmail.com', 'sdfsdfs', 'CENTRO DE DESARROLO SOCIAL ARANJUEZ'),
(33, 'CENTRO DE DESARROLO SOCIAL', '3. Manrique', 'CHAGUALO', 'sdfsdfsdf', 'dsfds', 1231231231, 'wilson1840@hotmail.com', 'sdfsdf', 'CENTRO DE DESARROLO SOCIAL CHAGUALO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso_visitantes`
--

CREATE TABLE `ingreso_visitantes` (
  `id_visitantes` int(255) NOT NULL,
  `cedula` int(50) NOT NULL,
  `hora` datetime NOT NULL,
  `actividad` varchar(255) NOT NULL,
  `nombre_cds_telecentro` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ingreso_visitantes`
--

INSERT INTO `ingreso_visitantes` (`id_visitantes`, `cedula`, `hora`, `actividad`, `nombre_cds_telecentro`) VALUES
(1, 1128459310, '2022-01-24 12:29:00', 'dasdsa', ''),
(2, 1128459310, '2022-01-24 12:32:00', 'micro', ''),
(3, 1128459310, '2022-01-26 12:09:00', 'pintura', 'CENTRO DE DESARROLO SOCIALS SABANETA '),
(4, 1128459310, '2022-01-26 12:09:00', 'pintura', 'CENTRO DE DESARROLO SOCIALS SABANETA '),
(5, 1128459310, '2022-01-26 12:12:00', 'pintura', 'CENTRO DE DESARROLO SOCIALS SABANETA '),
(6, 1128459310, '2022-01-26 12:12:00', 'Arcilla', 'pradito ');

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
  `nombre_cds_telecentro` varchar(100) NOT NULL,
  `codigo` int(11) NOT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `telefono` int(11) NOT NULL,
  `rol` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `nombre_cds_telecentro`, `codigo`, `correo`, `pass`, `telefono`, `rol`) VALUES
(1, 'pradito', 1122, 'wilson1840@hotmail.com', '$2a$08$/8paAxibB550rd1DWotH7edyGKx9Zu48g8N23SEmINqdJdNzjv8iK', 1231231231, 'Coordinador CDS'),
(2, 'CENTRO DE DESARROLO SOCIALS SABANETA', 4342, 'wilson1840@hotmail.com', '$2a$08$dix3nSy4a8ohxYTrYCtYF.jxYWztSH7Gq1OmRpyW.Ztca7Z0EB6ZS', 1231231231, 'Coordinador CDS'),
(3, 'CENTRO DE DESARROLO SOCIALS SABANETA', 4342, 'wilson1840@hotmail.com', '$2a$08$eFDpVWcMLYvpu9udLCOUL.AW3K1V22AHaq7zxY61BXfrBT4lH0Duy', 1231231231, 'Coordinador CDS'),
(4, 'TELECENTRO', 5455, 'wilson1840@hotmail.com', '$2a$08$uejM55.jYrEXqwp/F25K4OeBV/UNYNRPTtMUzgOBK2Z3bNu8d8dPS', 1231231231, 'Coordinador CDS'),
(5, 'CENTRO DE DESARROLO SOCIAL ARANJUEZ', 0, 'wilson1840@hotmail.com', '$2a$08$TkxNvhIBTYU97GDThtp9re/zZplZEQx0GwdVPF5CeyAS4NlqjVHaC', 1231231231, 'Coordinador CDS');

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
  `edad` int(50) NOT NULL,
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

INSERT INTO `visitantes` (`tipo_documento`, `numero_documento`, `nombre_completo`, `secretaria_entidad`, `ocupacion`, `fecha_nacimiento`, `edad`, `enfoque_diferencial`, `degradacion_territorial`, `correo_electronico`, `organizacion`, `telefono_celular`, `sexo`) VALUES
('cedula de ciudadania', 0, 'el cata', 'asdsd', 'adsds', '1994-01-17', 27, 'Afrodescendiente', '60. San cristobal', 'wilson1840@hotmail.com', 'JAC', 44444, 'Hombre'),
('cedula de ciudadania', 1, 'fff', 'ds', 'adsds', '2019-06-02', 0, 'indigena', '80.san antonio de prado', 'wilson1840@hotmail.com', 'jal', 44444, 'hombre'),
('cedula de ciudadania', 666, 'fgvv', 'vvv', 'v', '2021-12-02', 0, 'indigena', '16.belen', 'wilson1840@hotmail.com', 'jal', 0, 'mujer'),
('cedula de ciudadania', 324567, 'uhjjhhjuh', 'ds', 'hh', '1994-01-18', 27, 'Indigena', '80. San antonio de prado', 'wilson1840@hotmail.com', 'JAC', 44444, 'Hombre'),
('cedula de ciudadania', 444444, 'gfilfiyoui', 'hhh', 'hh', '2022-01-04', 0, 'ROM', '50. San sebastian de palmitas', 'wilson1840@hotmail.com', 'JAC', 44444, 'Hombre'),
('cedula de ciudadania', 9588823, 'hhhh', 'hhh', 'hh', '2021-12-03', 0, 'indigena', '80.san antonio de prado', 'wilson1840@hotmail.com', 'jal', 0, 'hombre'),
('cedula de ciudadania', 12312312, 'pedrito', 'asdasd', 'asdasd', '1994-01-18', 0, 'Indigena', '80. San antonio de prado', 'wilson1840@hotmail.com', 'JAC', 2147483647, 'Hombre'),
('cedula de ciudadania', 45678900, 'juanito', 'hhh', 'adsds', '1994-01-18', 0, 'Afrodescendiente', '80. San antonio de prado', 'wilson1840@hotmail.com', 'JAC', 2147483647, 'Hombre'),
('cedula de ciudadania', 564456456, 'hhhh', 'sdfsd', 'adsdsfsdfsd', '1994-01-18', 0, 'Afrodescendiente', '60. San cristobal', 'wilson1840@hotmail.com', 'JAL', 5345345, 'Hombre'),
('cedula de ciudadania', 1010101010, 'fdsfsdf', 'sdffsdf', 'hh', '1994-01-18', 27, 'Afrodescendiente', '80. San antonio de prado', 'wilson1840@hotmail.com', 'JAC', 44444, 'Hombre'),
('cedula de ciudadania', 1128459310, 'sebas', 'fff', 'ffff', '2021-12-02', 0, 'indigena', '80.san antonio de prado', 'wilson1840@hotmail.com', 'jac', 4343434, 'hombre'),
('cedula de ciudadania', 2147483647, 'hhhh', 'hhh', 'hh', '2021-12-02', 0, 'indigena', '80.san antonio de prado', 'wilson1840@hotmail.com', 'jal', 0, 'hombre');

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
  ADD PRIMARY KEY (`id_visitantes`) USING BTREE;

--
-- Indices de la tabla `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`cedula`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuarios`) USING BTREE;

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
  MODIFY `id_actividades` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cds`
--
ALTER TABLE `cds`
  MODIFY `IdCds` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `ingreso_visitantes`
--
ALTER TABLE `ingreso_visitantes`
  MODIFY `id_visitantes` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
