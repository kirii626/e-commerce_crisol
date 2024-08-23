-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-08-2024 a las 14:33:07
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crisol`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `nacionalidad` varchar(50) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `imagen_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`id`, `nombre`, `apellido`, `nacionalidad`, `fecha_nacimiento`, `imagen_url`) VALUES
(1, 'Gabriel', 'García Márquez', 'Colombiana', '1927-03-06', 'imagenes/garcia-marquez.png'),
(2, 'Isabel', 'Allende', 'Chilena', '1942-08-02', 'imagenes/isabel-allende.webp'),
(3, 'Mario', 'Vargas Llosa', 'Peruana', '1936-03-28', 'imagenes/mario-llosa.avif'),
(4, 'Julio', 'Cortázar', 'Argentina', '1914-08-26', 'imagenes/cortazar.jpg'),
(5, 'Jorge Luis', 'Borges', 'Argentina', '1899-08-24', 'imagenes/borges.jpg'),
(6, 'Carlos', 'Fuentes', 'Mexicana', '1928-11-11', 'imagenes/carlos-fuentes.jpg'),
(7, 'Pablo', 'Neruda', 'Chilena', '1904-07-12', 'imagenes/neruda.jpg'),
(8, 'Octavio', 'Paz', 'Mexicana', '1914-03-31', 'imagenes/octavio-paz-jpg.jpg'),
(9, 'Laura', 'Esquivel', 'Mexicana', '1950-09-30', 'imagenes/laura-esquivel.avif'),
(10, 'Juan', 'Rulfo', 'Mexicana', '1917-05-16', 'imagenes/Juan-Rulfo.webp');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `genero` varchar(50) DEFAULT NULL,
  `anio_publicacion` int(11) DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `id_autor` int(11) DEFAULT NULL,
  `ventas` int(11) DEFAULT 0,
  `imagen_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`id`, `titulo`, `genero`, `anio_publicacion`, `precio`, `id_autor`, `ventas`, `imagen_url`) VALUES
(1, 'Cien años de soledad', 'Realismo mágico', 1967, 19.99, 1, 150, NULL),
(2, 'El amor en los tiempos del cólera', 'Realismo mágico', 1985, 18.50, 1, 200, 'imagenes/elamor-encolera.webp'),
(3, 'La casa de los espíritus', 'Realismo mágico', 1982, 15.99, 2, 250, 'imagenes/images.jpeg'),
(4, 'Paula', 'Autobiografía', 1994, 14.99, 2, 100, NULL),
(5, 'La ciudad y los perros', 'Ficción', 1963, 16.00, 3, 300, 'imagenes/la_ciudad_y_los_perros.jpg'),
(6, 'La fiesta del chivo', 'Histórica', 2000, 20.00, 3, 120, NULL),
(7, 'Rayuela', 'Ficción', 1963, 17.50, 4, 180, 'imagenes/Rayuela_JC.png'),
(8, 'Bestiario', 'Cuentos', 1951, 12.99, 4, 160, NULL),
(9, 'Ficciones', 'Cuentos', 1944, 14.00, 5, 90, NULL),
(10, 'El Aleph', 'Cuentos', 1949, 13.50, 5, 210, 'imagenes/elaleph.webp'),
(11, 'La muerte de Artemio Cruz', 'Ficción', 1962, 15.00, 6, 170, 'imagenes/la-muerte-de-artemio-cruz.jpg'),
(12, 'Aura', 'Ficción', 1962, 9.99, 6, 80, NULL),
(13, 'Cien sonetos de amor', 'Poesía', 1959, 11.99, 7, 140, NULL),
(14, 'Veinte poemas de amor y una canción desesperada', 'Poesía', 1924, 10.99, 7, 110, NULL),
(15, 'El laberinto de la soledad', 'Ensayo', 1950, 12.00, 8, 190, 'imagenes/laberinto-soledad.webp'),
(16, 'El arco y la lira', 'Ensayo', 1956, 13.00, 8, 230, 'imagenes/901100.jpg'),
(17, 'Como agua para chocolate', 'Ficción', 1989, 14.99, 9, 220, 'imagenes/comoagua.jpeg'),
(18, 'El llano en llamas', 'Cuentos', 1953, 13.50, 10, 130, NULL),
(19, 'Pedro Páramo', 'Ficción', 1955, 14.99, 10, 260, 'imagenes/pedroparamo.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `contrasena` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `rol` varchar(40) DEFAULT NULL,
  `birthdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre_usuario`, `contrasena`, `nombre`, `apellido`, `email`, `direccion`, `telefono`, `rol`, `birthdate`) VALUES
(1, 'Alejandra Justiniano', '123456', '', '', 'kiaraalejandrajustinianoolmos@gmail.com', NULL, NULL, NULL, '2006-06-02'),
(4, 'aaaaaaaa', '$2y$10$eZ9Fb0jXJazRkNNV7dBUA.3IR6iQllvnXxyD6hQW1CV1akragpu.S', '', '', 'ejemplo@gmail.com', NULL, NULL, NULL, '2000-08-08'),
(5, 'esooooooo', '123456789', '', '', 'esoeso@gmail.com', NULL, NULL, NULL, '2001-10-08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_libro` int(11) DEFAULT NULL,
  `fecha_venta` date NOT NULL,
  `cantidad` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_autor` (`id_autor`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_usuario` (`nombre_usuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_libro` (`id_libro`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autor`
--
ALTER TABLE `autor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libro`
--
ALTER TABLE `libro`
  ADD CONSTRAINT `libro_ibfk_1` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`id_libro`) REFERENCES `libro` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
