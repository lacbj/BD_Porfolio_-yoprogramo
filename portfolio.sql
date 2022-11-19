-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-11-2022 a las 20:33:56
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `portfolio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `domicilio`
--

CREATE TABLE `domicilio` (
  `id` int(11) NOT NULL,
  `Pais` varchar(45) NOT NULL,
  `Provincia` varchar(45) NOT NULL,
  `Barrio` varchar(45) NOT NULL,
  `calle` varchar(45) NOT NULL,
  `Departamento` int(11) NOT NULL,
  `Piso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `educacion`
--

CREATE TABLE `educacion` (
  `id` int(11) NOT NULL,
  `Intituto` varchar(45) NOT NULL,
  `Titulo` varchar(45) NOT NULL,
  `Ingreso` date NOT NULL,
  `Egreso` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia_laboral`
--

CREATE TABLE `experiencia_laboral` (
  `id` int(11) NOT NULL,
  `nombreEmpresa` varchar(45) DEFAULT NULL,
  `esTrabajoActual` tinyint(4) DEFAULT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaFin` date DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `persona_id` int(11) NOT NULL,
  `tipo_empleo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `experiencia_laboral`
--

INSERT INTO `experiencia_laboral` (`id`, `nombreEmpresa`, `esTrabajoActual`, `fechaInicio`, `fechaFin`, `descripcion`, `persona_id`, `tipo_empleo_id`) VALUES
(1, 'QUIMBIOTEC,C.A', 0, '2008-11-05', '2015-12-10', 'Pesado de técnica \npara la fabricación de \nmedicamentos, despacho \ny recepción de \nmateriales. siatema sap', 1, 1),
(2, 'INGENIERÍA CARDON, C.A', 0, '2015-12-19', '2016-06-15', 'Analista SAP \nmanejando \nrequerimientos a través \nde sistema SAP MM', 1, 1),
(3, 'TECNOCORP, C.A', 0, '2016-06-16', '2016-12-19', 'Analista SAP \nmanejando \nrequerimientos a través \nde sistema SAP MM', 1, 1),
(4, 'Laboratorios ROEMMERS, C.A', 0, '2017-01-15', '2018-02-19', 'Pesado de técnica \npara la fabricación de \nmedicamentos, despacho \ny recepción de \nmateriales. sistema sap', 1, 1),
(5, 'tecnico de pc y celulares', 0, '2018-07-15', '2020-02-19', 'Matenimiento y reparacion de pc y celulares', 1, 4),
(6, 'Brandie C.A', 0, '2019-01-15', '2020-10-19', 'Encargado de deposito', 1, 1),
(7, 'AGEN S A', 0, '2020-10-15', '2022-02-19', 'Operador clarkista ', 1, 1),
(8, 'Brandie C.A', 1, '2022-10-02', '0000-00-00', 'Encargado de deposito', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `domicilio` varchar(45) DEFAULT NULL,
  `fechaNac` date DEFAULT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `sobre_mi` varchar(200) DEFAULT NULL,
  `url_foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `nombre`, `apellido`, `domicilio`, `fechaNac`, `telefono`, `correo`, `sobre_mi`, `url_foto`) VALUES
(1, 'Leonel Alfredo', 'Crespo Bolivar', 'Uspallta 2155', '1986-05-20', '1136770583', 'leonelcrespo@gmail.com', 'Desarrollador java', 'www.foto.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `Proyecto_id` int(11) NOT NULL,
  `Tipo_de_proyecto` varchar(200) NOT NULL,
  `Tecnologia` varchar(200) NOT NULL,
  `Link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tecnologias`
--

CREATE TABLE `tecnologias` (
  `tecnologia_id` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Nivel` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_empleo`
--

CREATE TABLE `tipo_empleo` (
  `id` int(11) NOT NULL,
  `nombre_tipo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_empleo`
--

INSERT INTO `tipo_empleo` (`id`, `nombre_tipo`) VALUES
(1, 'full time'),
(2, 'part time'),
(3, 'monotributista'),
(4, 'Emprendimiento'),
(5, 'Informal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Correo` varchar(45) NOT NULL,
  `Contraseña` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `domicilio`
--
ALTER TABLE `domicilio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `educacion`
--
ALTER TABLE `educacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `experiencia_laboral`
--
ALTER TABLE `experiencia_laboral`
  ADD PRIMARY KEY (`id`,`persona_id`,`tipo_empleo_id`),
  ADD KEY `fk_experiencia_laboral_persona` (`persona_id`),
  ADD KEY `fk_experiencia_laboral_tipo_empleo1` (`tipo_empleo_id`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`Proyecto_id`);

--
-- Indices de la tabla `tecnologias`
--
ALTER TABLE `tecnologias`
  ADD PRIMARY KEY (`tecnologia_id`);

--
-- Indices de la tabla `tipo_empleo`
--
ALTER TABLE `tipo_empleo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `domicilio`
--
ALTER TABLE `domicilio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `educacion`
--
ALTER TABLE `educacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `Proyecto_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tecnologias`
--
ALTER TABLE `tecnologias`
  MODIFY `tecnologia_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `domicilio`
--
ALTER TABLE `domicilio`
  ADD CONSTRAINT `domicilio_ibfk_1` FOREIGN KEY (`id`) REFERENCES `persona` (`id`);

--
-- Filtros para la tabla `educacion`
--
ALTER TABLE `educacion`
  ADD CONSTRAINT `educacion_ibfk_1` FOREIGN KEY (`id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `experiencia_laboral`
--
ALTER TABLE `experiencia_laboral`
  ADD CONSTRAINT `fk_experiencia_laboral_persona` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_experiencia_laboral_tipo_empleo1` FOREIGN KEY (`tipo_empleo_id`) REFERENCES `tipo_empleo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD CONSTRAINT `proyectos_ibfk_1` FOREIGN KEY (`Proyecto_id`) REFERENCES `persona` (`id`);

--
-- Filtros para la tabla `tecnologias`
--
ALTER TABLE `tecnologias`
  ADD CONSTRAINT `tecnologias_ibfk_1` FOREIGN KEY (`tecnologia_id`) REFERENCES `persona` (`id`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id`) REFERENCES `persona` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
