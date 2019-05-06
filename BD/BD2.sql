-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-05-2019 a las 04:53:33
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `peliculas`
--
CREATE DATABASE IF NOT EXISTS `Peliculas` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `Peliculas`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `Id_administrador` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Ap` varchar(45) DEFAULT NULL,
  `Am` varchar(45) DEFAULT NULL,
  `Correo` varchar(45) DEFAULT NULL,
  `Pin` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `Id_cliente` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `Id_direccion` int(11) NOT NULL,
  `telefono` int(11) NOT NULL,
  `Id_pelicula` int(11) NOT NULL,
  `Id_renta_o_venta` int(11) NOT NULL,
  `Id_total_pagar` int(11) NOT NULL,
  `usuario` varchar(40) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`Id_cliente`, `nombre`, `Id_direccion`, `telefono`, `Id_pelicula`, `Id_renta_o_venta`, `Id_total_pagar`, `usuario`, `password`) VALUES
(1, '1', 1, 1, 1, 1, 1, '1', '1'),
(3, '8', 8, 8, 8, 8, 8, '', ''),
(4, '8', 8, 8, 8, 8, 8, '', ''),
(5, '8', 8, 8, 8, 8, 8, '8', '8'),
(6, '0', 0, 0, 0, 0, 0, '0', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `Id_direccion` int(11) NOT NULL,
  `Colonia` varchar(30) DEFAULT NULL,
  `Calle` varchar(45) DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

CREATE TABLE `entradas` (
  `Id_entradas` int(11) NOT NULL,
  `Entrada` date DEFAULT NULL,
  `Salida` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `Id_historial` int(11) NOT NULL,
  `Id_administrador` int(11) NOT NULL,
  `Id_entradas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `Id_pedido` int(11) NOT NULL,
  `Fecha_actual` date DEFAULT NULL,
  `Fecha_entrega_pelicula_en_caso_de_renta` date DEFAULT NULL,
  `Estado_de_pelicula` varchar(45) DEFAULT NULL,
  `Id_usuarios` int(11) DEFAULT NULL,
  `Id_renta_o_venta` int(11) NOT NULL,
  `Estado_de_entriego_en_caso_de_renta` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `Id_pelicula` int(11) NOT NULL,
  `Titulo` varchar(45) DEFAULT NULL,
  `Director` varchar(45) DEFAULT NULL,
  `Ano` int(11) DEFAULT NULL,
  `Detalles` varchar(45) DEFAULT NULL,
  `Clasificacion` varchar(45) DEFAULT NULL,
  `Genero` varchar(45) DEFAULT NULL,
  `Disponible` varchar(45) DEFAULT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`Id_pelicula`, `Titulo`, `Director`, `Ano`, `Detalles`, `Clasificacion`, `Genero`, `Disponible`, `img`) VALUES
(1, 'Ready Player One: Comienza el Juego', 'Steven Spielberg', 2018, 'Cuando el creador de un mundo de realidad vir', 'Ciencia ficcion', 'Acción | Aventura | Ciencia ficción', 'si', 'ready-player-one.jpg'),
(2, 'Máquinas mortales', 'Christian Rivers', 2018, 'En un mundo post apocalíptico donde las ciuda', 'Acción | Aventura | Fantasía', 'Acción | Aventura | Fantasía', 'si', 'maquinas-mortales.jpg'),
(3, 'Aquaman', 'James Wan', 2018, 'Arthur, mitad humano mitad atlante y heredero', 'Heroes', 'Acción | Aventura | Fantasía', 'si', 'aquaman.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `renta_o_venta`
--

CREATE TABLE `renta_o_venta` (
  `Id_renta_o_venta` int(11) NOT NULL,
  `Tipo_renta_o_venta` varchar(45) DEFAULT NULL,
  `Numero ejemplar` int(11) DEFAULT NULL,
  `Costo` float DEFAULT NULL,
  `Id_pelicula` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `total_pagar`
--

CREATE TABLE `total_pagar` (
  `Id_total_pagar` int(11) NOT NULL,
  `Id_pedido` int(11) NOT NULL,
  `Estado_de_pago` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id_usuarios` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Ap` varchar(45) DEFAULT NULL,
  `Am` varchar(45) DEFAULT NULL,
  `Correo` varchar(45) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  `Estado_entrega` varchar(45) DEFAULT NULL,
  `Pin` varchar(45) DEFAULT NULL,
  `Id_direccion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`Id_administrador`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`Id_cliente`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`Id_direccion`);

--
-- Indices de la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`Id_entradas`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`Id_historial`),
  ADD KEY `fk_Historial_Administrador` (`Id_administrador`),
  ADD KEY `fk_Historial_Entradas1` (`Id_entradas`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`Id_pedido`),
  ADD KEY `fk_Pedido_Usuarios1` (`Id_usuarios`),
  ADD KEY `fk_Pedido_Renta_o_venta1` (`Id_renta_o_venta`);

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`Id_pelicula`);

--
-- Indices de la tabla `renta_o_venta`
--
ALTER TABLE `renta_o_venta`
  ADD PRIMARY KEY (`Id_renta_o_venta`),
  ADD KEY `fk_Detalle_pedido_Libro1` (`Id_pelicula`);

--
-- Indices de la tabla `total_pagar`
--
ALTER TABLE `total_pagar`
  ADD PRIMARY KEY (`Id_total_pagar`),
  ADD KEY `fk_Total_pagar_Pedido1` (`Id_pedido`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id_usuarios`),
  ADD KEY `fk_Usuarios_Direccion` (`Id_direccion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `Id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `historial`
--
ALTER TABLE `historial`
  ADD CONSTRAINT `fk_Historial_Administrador` FOREIGN KEY (`Id_administrador`) REFERENCES `administrador` (`Id_administrador`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Historial_Entradas1` FOREIGN KEY (`Id_entradas`) REFERENCES `entradas` (`Id_entradas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `fk_Pedido_Renta_o_venta1` FOREIGN KEY (`Id_renta_o_venta`) REFERENCES `renta_o_venta` (`Id_renta_o_venta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Pedido_Usuarios1` FOREIGN KEY (`Id_usuarios`) REFERENCES `usuarios` (`Id_usuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `renta_o_venta`
--
ALTER TABLE `renta_o_venta`
  ADD CONSTRAINT `fk_Detalle_pedido_Libro1` FOREIGN KEY (`Id_pelicula`) REFERENCES `pelicula` (`Id_pelicula`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `total_pagar`
--
ALTER TABLE `total_pagar`
  ADD CONSTRAINT `fk_Total_pagar_Pedido1` FOREIGN KEY (`Id_pedido`) REFERENCES `pedido` (`Id_pedido`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_Usuarios_Direccion` FOREIGN KEY (`Id_direccion`) REFERENCES `direccion` (`Id_direccion`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
