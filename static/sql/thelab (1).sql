-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 18-02-2025 a las 21:49:42
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
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `correo` varchar(200) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `clave` varchar(200) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `telefono` varchar(15) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `fechareg` datetime NOT NULL,
  `perfil` char(1) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL DEFAULT 'C'
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `correo`, `clave`, `telefono`, `fechareg`, `perfil`) VALUES
(1, 'alejandra ayala vizcaino', 'alejandra.ayala2778@alumnos.udg.mx', 'scrypt:32768:8:1$rIZLJLzPmUdA9QYT$a76c3af2d74d7dd083552fb4d3a805b21ed3aad2a561cba19de9b65eaeb8eb9735d739f6e51f426d0eeadf9368e3ebd04718526277f1f1574d94a2a4d866b5c1', '3339036994', '2025-02-12 19:12:42', 'A'),
(2, 'roberto cantor', 'roberto.cantor2757@alumnos.udg.mx', 'scrypt:32768:8:1$VnLWrbNsCyhg4cqR$53048914920d4dc3866165b8dd8eca5a1b1a630bde3620badd0db425de26782a35e5a633342c61f391020f4af7b0038675a282e4f231015df26123fcf7dd7c71', '3339987457', '2025-02-18 15:48:49', 'C');

--
-- Índices para tablas volcadas
--

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
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
