-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-07-2022 a las 20:20:42
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
-- Base de datos: `colegio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biblioiteca`
--

CREATE TABLE `biblioiteca` (
  `id_biblioteca` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colegio_alumno`
--

CREATE TABLE `colegio_alumno` (
  `alumno_nombre` varchar(100) NOT NULL,
  `alumno_edad` int(11) NOT NULL,
  `codigo_curso` int(11) NOT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `contra` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `colegio_alumno`
--

INSERT INTO `colegio_alumno` (`alumno_nombre`, `alumno_edad`, `codigo_curso`, `correo`, `contra`) VALUES
('', 0, 0, 'admin2', '$2y$10$qdYh36YHatbgNK6iYaMmmuEnS6NWrZXq6SflhgQCoUVBVBuZNJb3.'),
('', 0, 0, 'admin1', '$2y$10$E9dM9TCmvJHjAS.o6e2kCequZDl6Cg8W7qc3bdrKN15QANmZ3WAIO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colegio_asignatura`
--

CREATE TABLE `colegio_asignatura` (
  `id_asignatura` int(11) NOT NULL,
  `asignatura_nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colegio_curso`
--

CREATE TABLE `colegio_curso` (
  `id_curso` int(11) NOT NULL,
  `curso_nivel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colegio_profesor`
--

CREATE TABLE `colegio_profesor` (
  `id_profesor` varchar(10) NOT NULL,
  `profesor_nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `id_libro` int(11) NOT NULL,
  `autor` varchar(45) DEFAULT NULL,
  `cantidad` varchar(45) DEFAULT NULL,
  `prestamo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `usu` varchar(50) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`usu`, `pass`) VALUES
('admin2', '$2y$10$qdYh36YHatbgNK6iYaMmmuEnS6NWrZXq6SflhgQCoUVBVBuZNJb3.'),
('admin1', '$2y$10$E9dM9TCmvJHjAS.o6e2kCequZDl6Cg8W7qc3bdrKN15QANmZ3WAIO'),
('Santiagoo', '$2y$10$95G6meLzXFOU2g/KcazKa.ObG6PGIo4jWJeI/7yM6i0jfW8seCtMy'),
('Heiver', '$2y$10$ozLV4JMLL8p4Pe6vsb8HreJf2B2FYHHvWLLDJkGejsDEn1vM.5SnC'),
('Andrea', '$2y$10$/TYkGFBAYkyWowWSt6rnS./vxrFDvhIlSjJXyeEaVqkdpwOBDLpkG'),
('Camila', '$2y$10$WHOYrMniWyfsAIkkPGZMtu7fWFckQVLZhFB8iYkCx5k2/VsV.nACG'),
('Thalia', '$2y$10$/ldFecrSELx1b8MijS6KkujTEIBq8UKuK2B8hs0a/LJzWqK3V61nK'),
('Daniela', '$2y$10$LFpgpY5247Xxc7j2w7/uDu/e7PFdtfU/DxbvJ8F78fQ8UEwcb3nBe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `biblioiteca`
--
ALTER TABLE `biblioiteca`
  ADD PRIMARY KEY (`id_biblioteca`);

--
-- Indices de la tabla `colegio_asignatura`
--
ALTER TABLE `colegio_asignatura`
  ADD PRIMARY KEY (`id_asignatura`);

--
-- Indices de la tabla `colegio_curso`
--
ALTER TABLE `colegio_curso`
  ADD PRIMARY KEY (`id_curso`);

--
-- Indices de la tabla `colegio_profesor`
--
ALTER TABLE `colegio_profesor`
  ADD PRIMARY KEY (`id_profesor`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`id_libro`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `colegio_asignatura`
--
ALTER TABLE `colegio_asignatura`
  MODIFY `id_asignatura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `colegio_curso`
--
ALTER TABLE `colegio_curso`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `id_libro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
