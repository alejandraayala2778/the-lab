-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 26-05-2025 a las 01:25:21
-- Versión del servidor: 8.0.41
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `thelab`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id` int NOT NULL,
  `producto_id` int NOT NULL,
  `usuario_id` int NOT NULL,
  `pedidos_id` int DEFAULT NULL,
  `cantidad` int NOT NULL DEFAULT '1',
  `importe` float NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'T'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos`
--

CREATE TABLE `catalogos` (
  `id` int NOT NULL,
  `nombre` text NOT NULL,
  `tipo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int NOT NULL,
  `usuario_id` int NOT NULL,
  `total` int NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int NOT NULL,
  `nombre` text NOT NULL,
  `precio` float NOT NULL,
  `descripcion` text NOT NULL,
  `catalogo_id` int NOT NULL,
  `nombre_imagen` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `descripcion`, `catalogo_id`, `nombre_imagen`) VALUES
(1, 'Bolso Azul', 25.99, 'Bolso Azul de alta calidad.', 101, 'bolso_azul.jpg'),
(2, 'Bolso Gris', 39.99, 'Bolso Gris de alta calidad.', 101, 'bolso_gris.jpg'),
(3, 'Chaqueta Roja', 49.99, 'Chaqueta Roja de alta calidad.', 101, 'cacheta_roja.jpg'),
(4, 'Cacheta De cuero', 29.99, 'Cacheta De cuero de alta calidad.', 101, 'cachetadecuero.jpg'),
(5, 'Camisa Marron', 69.99, 'Camisa Marron de alta calidad.', 101, 'camisa_marron.jpg'),
(6, 'Camiseta Negra', 19.99, 'Camiseta Negra de alta calidad.', 101, 'camisa_negra.jpg'),
(7, 'Camisa Roja ', 14.99, 'Camisa Roja de alta calidad.', 101, 'camisa_roja.jpg'),
(8, 'Camisa Gris', 39.99, 'Camisa Gris de alta calidad.', 101, 'camiseta_gris.jpg'),
(9, 'Chaqueta Azul', 9.99, 'Chaqueta Azul de alta calidad.', 101, 'chaqueta_azul.jpg'),
(10, 'Camisa Blanca', 29.99, 'Camisa Blanca de alta calidad.', 101, 'chaqueta_blanca.jpg'),
(11, 'Cinturon Azul', 25.99, 'Cinturon Azul de alta calidad.', 101, 'cinturon_azul.jpg'),
(12, 'Cinturon Gris', 39.99, 'Cinturon Gris de alta calidad.', 101, 'cinturon_gris.jpg'),
(13, 'Cinturon Negro', 49.99, 'Cinturon Negro de alta calidad.', 101, 'cinturon_negro.jpg'),
(14, 'Falda Blanca', 29.99, 'Falda Blanca de alta calidad.', 101, 'falda_blanca.jpg'),
(15, 'Falda Marron', 69.99, 'Falda Marron de alta calidad.', 101, 'falda_marron.jpg'),
(16, 'Falda Roja', 19.99, 'Falda Roja de alta calidad.', 101, 'falda_roja.jpg'),
(17, 'Gafas De Sol', 14.99, 'Gafas de Sol de alta calidad.', 101, 'gafa_sol.jpg'),
(18, 'Gafas Azules', 39.99, 'Gafas Azules de alta calidad.', 101, 'gafas_azul.jpg'),
(19, 'Gafas Gris ', 9.99, 'Gafas Gris de alta calidad.', 101, 'gafas_gris.jpg'),
(20, 'Gafas Negras', 29.99, 'Gafas Negras de alta calidad.', 101, 'gafasdesol_negras.jpg'),
(21, 'Pantalon Azul', 25.99, 'Pantalon Azul de alta calidad.', 101, 'pantalon_azul.jpg'),
(22, 'Pantalón Blanco', 39.99, 'Pantalón Blanco de alta calidad.', 101, 'pantalon_blanco.jpg'),
(23, 'Talon Marron', 49.99, 'Talon Marron de alta calidad.', 101, 'pantalon_marron.jpg'),
(24, 'Pantalon Negro', 29.99, 'Pantalon Negro de alta calidad.', 101, 'pantalon_negro.jpg'),
(25, 'Reloj Blanco', 69.99, 'Reloj Blanco de alta calidad.', 101, 'reloj_blaco.jpg'),
(26, 'Reloj Digital Azul', 19.99, 'Reloj Digital Azul de alta calidad.', 101, 'reloj_digitalazul.jpg'),
(27, 'Zapatillas Azules', 14.99, 'Zapatillas Azules de alta calidad.', 101, 'zapatillas_azul.jpg'),
(28, 'Zapatillas Rojas', 39.99, 'Zapatillas Rojas de alta calidad.', 101, 'zapatillas_rojas.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `apellido` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `correo` varchar(100) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `clave` varchar(250) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `telefono` varchar(15) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `fechareg` datetime NOT NULL,
  `perfil` char(1) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL DEFAULT 'C'
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellido`, `correo`, `clave`, `telefono`, `fechareg`, `perfil`) VALUES
(9, 'ALEJANDRA JOSSELIN', 'AYALA VIZCAINO', 'alejandra.ayala2778@alumnos.udg.mx', 'scrypt:32768:8:1$ruHXnJeHoMycETxK$b7bb2496439b07a6b7f41beb13fefc3f5c417b5d66f72b40baf1867ce16ad6e594151022954faa596135da6e61705e8e95ab7ebfab877aef88393eed1976f5a1', '3324382502', '2025-05-25 18:48:42', 'A'),
(11, 'ALE', 'ALESITA', 'ales2034@gmail.com', 'scrypt:32768:8:1$UHbYAGhPX7uEgkad$94e4c10596925ff9565e88f90a6860e40c645bb58584f446a9f1ffdeb292657cefed136d00f2eef212711e988b26ae34bafd4f59ac9d1d6d3af51afa987f4ab4', '3324765809', '2025-05-25 18:48:23', 'C');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_id` (`producto_id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `pedidos_id` (`pedidos_id`);

--
-- Indices de la tabla `catalogos`
--
ALTER TABLE `catalogos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalogo_id` (`catalogo_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT de la tabla `catalogos`
--
ALTER TABLE `catalogos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `carrito_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `carrito_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
