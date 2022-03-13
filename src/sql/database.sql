-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-03-2022 a las 00:39:58
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
(1, 'pintura', 'sdfgsdg', 'dfgdfg', 'dfsdfsdf', 'sdfsdfsd', '2022-12-31', '2022-12-31', '15:49:00', '12:59:00', 'fsdfsf', '16. Belén ', 'sdasd', 'sdfsdfsdf', 'Informativa', 'dfsdf', 34, '1111', 345345, 3);

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
(1, 'ADMINISTRADOR', '60. San Cristobal', 'ZONA SUR', 'prueba', 'prueba', 1111, 'prueba@hotmail.com', 'nury', 'ADMINISTRADOR ZONA SUR'),
(2, 'ADMINISTRADOR', '60. San Cristobal', 'ZONA NORTE', 'prueba', 'prueba', 1111, 'prueba@hotmail.com', 'prueba', 'ADMINISTRADOR ZONA NORTE'),
(3, 'CENTRO DE DESARROLO SOCIAL', '16. Belén', 'SAN ANTONIO DE PRADO', 'prueba', 'prueba', 1111, 'prueba@hotmail.com', 'prueba', 'CENTRO DE DESARROLO SOCIAL SAN ANTONIO DE PRADO');

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
(1, 1128459310, '2022-3-13', '15:52:29', 3, 1);

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
(4, 1234567, 'prueba@hotmail.com', '$2a$08$1wIneBmaB8unk0KS00oX2e7oilzYYMkHQJyvBJurX7yAZ3pfopAbm', 1111, 1, 1),
(5, 7654321, 'prueba@hotmail.com', '$2a$08$IstFs4g1VGVbP58gD7dQIOO.uiBJ85bwJmUjOyWBHpgQTFG6psn4W', 1231231231, 0, 3),
(6, 1111111, 'prueba@hotmail.com', '$2a$08$/riGbQGL/eHeI01K6S3LAeWrFwqn7kzPBZuW4WkVX4BIpSXoEJNwi', 0, 0, 3);

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
(1, 'cedula de ciudadania', 1128459310, 'jonathan zapat', 'ds', 'adsds', '2022-12-31', -1, 'ROM', 'Población victima', '1. Popular', 'wilson1840@hotmail.com', 'sdfsdf', 3760193, 'Masculino', 3);

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
  MODIFY `id_actividades` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cds`
--
ALTER TABLE `cds`
  MODIFY `IdCds` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ingreso_visitantes`
--
ALTER TABLE `ingreso_visitantes`
  MODIFY `id_ingresos` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `visitantes`
--
ALTER TABLE `visitantes`
  MODIFY `id_visita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
