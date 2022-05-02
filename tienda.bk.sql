-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-05-2022 a las 03:31:25
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventa`
--

CREATE TABLE `detalleventa` (
  `ID` int(11) NOT NULL,
  `IDVENTA` text DEFAULT NULL,
  `IDPRODUCTO` text DEFAULT NULL,
  `PRECIOUNITARIO` text DEFAULT NULL,
  `CANTIDAD` text DEFAULT NULL,
  `DESCARGADO` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalleventa`
--

INSERT INTO `detalleventa` (`ID`, `IDVENTA`, `IDPRODUCTO`, `PRECIOUNITARIO`, `CANTIDAD`, `DESCARGADO`) VALUES
(1, '1', '1', '10', '1', '0'),
(2, '2', '1', '10', '1', '0'),
(3, '3', '1', '10', '1', '0'),
(4, '4', '1', '44', '1', '0'),
(5, '4', '3', '39', '1', '0'),
(6, '4', '5', '41', '1', '0'),
(7, '5', '1', '44', '1', '0'),
(8, '5', '3', '39', '1', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` text DEFAULT NULL,
  `precio` text DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `imagen` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `descripcion`, `imagen`) VALUES
(1, 'Vestino Floreado con copa TallaSM', '44', 'Fit: Regular\nGénero: Mujer\nComposición: Stone Floreado\nCierre: Sin cierre\nEstilo: Casual\nCopa: Si\nColor: Multicolor', './archivos/b28cbc1a9cccdc77a9a8c98d5be5c79c-product.jpg'),
(2, 'Vestido Casual zeagoo', '239', 'Tipo de Patrón: Remiendo\r\nMaterial: Spandex\r\nTemporada: Verano\r\nEstilo: Casual\r\nLongitud de la manga: tres cuartos\r\nCintura: Natural\r\nMaterial: Poliéster\r\nDecoración: Ninguno\r\nVestidos largos: Rodilla Arriba, Mini\r\nEstilo Color: Contraste de color\r\nMaterial: Algodón\r\nEstilo de la manga: Regular\r\nTipo de la tela: Paño\r\nEscote: O-Cuello\r\nSilueta: Derecho', './archivos/8669e6c2df55a8cee1356b2a47c1e5be-product.jpg'),
(3, 'Polo Manga Corta 100% Algodón Mujer University Club-Blanco', '39', 'Marca: University Club\r\nModelo: HVMAVPOU122ZXY\r\nTipo: Polos\r\nGénero: Mujer\r\nMaterial principal: Algodón\r\nComposición: 100% Algodón\r\nEstilo: Casual\r\nLargo de mangas: Manga corta\r\nTemporada: Primavera-Verano', './archivos/687b8275a7310882482b5e695f0887ab-product.jpg'),
(4, 'Polo Manga Corta Mujer American Abbey-Azul', '39', 'Marca: American Abbey\r\nModelo: MPORBSCBCW10\r\nTipo: Polos\r\nGénero: Mujer\r\nEstilo: Casual\r\nTemporada: Primavera-Verano', './archivos/ea3a4e3904cc3c349c3de0a89c01a87d-product.jpg'),
(5, 'Polo Manga Corta para Mujer University Club-Negro', '41', 'Marca: University Club\r\nModelo: HV4POU009BC\r\nTipo: Polos\r\nGénero: Mujer\r\nEstilo: Casual\r\nTemporada: Primavera-Verano', './archivos/6030d0acd68b2916820680ca35c957fc-product.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_Usuario` int(11) NOT NULL,
  `nombre` text DEFAULT NULL,
  `apellido` text DEFAULT NULL,
  `dni` text DEFAULT NULL,
  `telefono` text DEFAULT NULL,
  `correo` text DEFAULT NULL,
  `usuario` text DEFAULT NULL,
  `contrasena` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_Usuario`, `nombre`, `apellido`, `dni`, `telefono`, `correo`, `usuario`, `contrasena`) VALUES
(1, 'Erich', 'Echevarria', '87675645', '956464030', 'erichjordyec@gmail.com', 'erich', 'echevarria'),
(2, 'Erichj', 'Echevarriac', '71251685', '987654321', 'erichjordyec@gmail.com', '123456', '123456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `ID` int(11) NOT NULL,
  `ClaveTransaccion` text DEFAULT NULL,
  `PaypalDatos` text DEFAULT NULL,
  `Fecha` text DEFAULT NULL,
  `Correo` text DEFAULT NULL,
  `Total` text DEFAULT NULL,
  `status` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`ID`, `ClaveTransaccion`, `PaypalDatos`, `Fecha`, `Correo`, `Total`, `status`) VALUES
(1, '7g1v96fdrfniltlnn8f60fcuvn', '', '2022-04-07 21:04:11', 'demo@gmail.com', '10', 'pendiente'),
(2, '7g1v96fdrfniltlnn8f60fcuvn', '', '2022-04-07 21:05:33', 'demo@gmail.com', '10', 'pendiente'),
(3, '7g1v96fdrfniltlnn8f60fcuvn', '', '2022-04-07 21:07:50', 'demo@gmail.com', '10', 'pendiente'),
(4, '9dlf9en8a05v719ak06bfi6m1b', '', '2022-04-28 18:27:32', 'demo@gmail.com', '124', 'pendiente'),
(5, '7j0as8enindfrhhutfm663i97o', '', '2022-05-01 20:29:53', 'demo@gmail.com', '83', 'pendiente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_Usuario`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
