-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-02-2023 a las 17:51:45
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inclusionpoltik`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `nuevoregistro` (IN `primernombre` VARCHAR(60), IN `apellidos` VARCHAR(40), IN `email` VARCHAR(50), IN `fechanac` DATE, IN `contrasena` VARCHAR(50))   INSERT INTO usuarios(Nombres, Apellidos,fecha_nacimiento,email,password_,created_at,updated_at)
VALUES(primernombre,apellidos,fechanac,email,HEX(AES_ENCRYPT(password_,'CR7')), now(), now())$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distritos_electorales`
--

CREATE TABLE `distritos_electorales` (
  `Id_distrito` int(11) NOT NULL,
  `Numero` int(11) NOT NULL,
  `Poblacion` int(11) NOT NULL,
  `Extension` varchar(100) NOT NULL,
  `Id_partido_representante` int(11) NOT NULL,
  `Representante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instituciones`
--

CREATE TABLE `instituciones` (
  `Id_inst` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Descripcion` text NOT NULL,
  `Logo` varchar(100) NOT NULL,
  `Presidiario` varchar(50) NOT NULL,
  `Presupuesto` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `Id_noticia` int(11) NOT NULL,
  `Nombre_noticia` text NOT NULL,
  `Imagen` varchar(150) NOT NULL,
  `Encabezado` int(11) NOT NULL,
  `Descripcion` text NOT NULL,
  `Created_at` datetime NOT NULL,
  `Updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidos_politicos`
--

CREATE TABLE `partidos_politicos` (
  `Id_partido` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Presidente` varchar(50) NOT NULL,
  `Ubicacion` varchar(100) NOT NULL,
  `Tendencia_politica` varchar(100) NOT NULL,
  `Militantes` int(11) NOT NULL,
  `Creacion` date NOT NULL,
  `Sedes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `poder_del_estado`
--

CREATE TABLE `poder_del_estado` (
  `Id_poder` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Descripcion` text NOT NULL,
  `Maxima_figura` varchar(100) NOT NULL,
  `Link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propuestas`
--

CREATE TABLE `propuestas` (
  `Id_propuesta` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Descripcion` text NOT NULL,
  `Fecha_creacion` date NOT NULL,
  `Estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puesto_representantes`
--

CREATE TABLE `puesto_representantes` (
  `Id_puesto` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Descripcion` text NOT NULL,
  `Duracion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `representantes`
--

CREATE TABLE `representantes` (
  `Id_representantes` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Fecha_nacimiento` date NOT NULL,
  `Lugar_nacimiento` varchar(100) NOT NULL,
  `Residencia` varchar(50) NOT NULL,
  `Salario` float NOT NULL,
  `Propuestas` int(11) NOT NULL,
  `Partido` int(11) NOT NULL,
  `Puesto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedes`
--

CREATE TABLE `sedes` (
  `Id_sede` int(11) NOT NULL,
  `Coordenadas` varchar(50) NOT NULL,
  `Colonia` varchar(50) NOT NULL,
  `Calle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id_usuario` int(11) NOT NULL,
  `Nombres` varchar(50) NOT NULL,
  `Apellidos` varchar(50) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_` varchar(150) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id_usuario`, `Nombres`, `Apellidos`, `fecha_nacimiento`, `email`, `password_`, `created_at`, `updated_at`) VALUES
(1, 'Alexis Cesar', 'Orozco Medina', '0000-00-00', 'holi@gmail.com', '3437B0CF87872C7435E79543F080C917', '2023-02-17 13:06:15', '2023-02-17 13:06:15');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `distritos_electorales`
--
ALTER TABLE `distritos_electorales`
  ADD PRIMARY KEY (`Id_distrito`);

--
-- Indices de la tabla `instituciones`
--
ALTER TABLE `instituciones`
  ADD PRIMARY KEY (`Id_inst`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`Id_noticia`);

--
-- Indices de la tabla `partidos_politicos`
--
ALTER TABLE `partidos_politicos`
  ADD PRIMARY KEY (`Id_partido`);

--
-- Indices de la tabla `poder_del_estado`
--
ALTER TABLE `poder_del_estado`
  ADD PRIMARY KEY (`Id_poder`);

--
-- Indices de la tabla `propuestas`
--
ALTER TABLE `propuestas`
  ADD PRIMARY KEY (`Id_propuesta`);

--
-- Indices de la tabla `puesto_representantes`
--
ALTER TABLE `puesto_representantes`
  ADD PRIMARY KEY (`Id_puesto`);

--
-- Indices de la tabla `representantes`
--
ALTER TABLE `representantes`
  ADD PRIMARY KEY (`Id_representantes`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `distritos_electorales`
--
ALTER TABLE `distritos_electorales`
  MODIFY `Id_distrito` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `instituciones`
--
ALTER TABLE `instituciones`
  MODIFY `Id_inst` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `Id_noticia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `partidos_politicos`
--
ALTER TABLE `partidos_politicos`
  MODIFY `Id_partido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `poder_del_estado`
--
ALTER TABLE `poder_del_estado`
  MODIFY `Id_poder` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `propuestas`
--
ALTER TABLE `propuestas`
  MODIFY `Id_propuesta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `puesto_representantes`
--
ALTER TABLE `puesto_representantes`
  MODIFY `Id_puesto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `representantes`
--
ALTER TABLE `representantes`
  MODIFY `Id_representantes` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
