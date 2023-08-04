-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-08-2023 a las 17:13:25
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `superandradecell_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja`
--

CREATE TABLE `caja` (
  `id_caja` int(11) NOT NULL,
  `fecha_caja` date NOT NULL,
  `efectivo_final` float NOT NULL,
  `monto_total` float NOT NULL,
  `observacion_caja` varchar(100) DEFAULT NULL,
  `total_observacion` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `caja`
--

INSERT INTO `caja` (`id_caja`, `fecha_caja`, `efectivo_final`, `monto_total`, `observacion_caja`, `total_observacion`, `created_at`, `updated_at`) VALUES
(6, '2023-07-27', 100, 100, 'Cierre correcto', 5, '2023-07-29 02:41:30', '2023-07-29 02:41:30'),
(7, '2023-07-26', 10, 10, 'Cierre correcto', 0, '2023-07-29 02:49:02', '2023-07-29 02:49:02'),
(8, '2023-07-28', 36, 36, 'Cierre correcto', 0, '2023-07-29 02:56:14', '2023-07-29 02:56:14'),
(9, '2023-07-20', 100, 101, 'Sobrante efectivo', 1, '2023-07-29 03:39:21', '2023-07-29 03:39:21'),
(10, '2023-07-29', 70, 70, 'Cierre correcto', 0, '2023-07-29 06:32:05', '2023-07-29 06:32:05'),
(14, '2023-07-21', 100, 101, 'Sobrante efectivo', 1, '2023-07-30 21:23:08', '2023-07-30 21:23:08'),
(17, '2023-07-30', 52, 51, 'Falta efectivo', -1, '2023-07-31 02:43:11', '2023-07-31 02:43:11'),
(21, '2023-08-02', 114, 114, 'Cierre correcto', 0, '2023-08-03 00:58:44', '2023-08-03 00:58:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre_cat` varchar(150) NOT NULL,
  `descripcion_cat` varchar(200) NOT NULL,
  `estado_cat` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre_cat`, `descripcion_cat`, `estado_cat`, `created_at`, `updated_at`) VALUES
(1, 'Prueba 3', 'Indefinido', 0, NULL, '2023-07-14 02:19:31'),
(2, 'Modulos de carga', 'Indefinido', 1, NULL, '2023-06-09 02:02:27'),
(3, 'Micas de vidrio', 'Indefinido', 1, NULL, '2023-06-09 02:02:35'),
(4, 'Ping de carga', 'Indefinido', 1, NULL, '2023-06-09 02:02:43'),
(5, 'Carro', 'Indefinido', 0, NULL, '2023-07-14 02:18:53'),
(6, 'Prueba XD', 'Esto es una prueba', 0, '2023-06-09 03:00:29', '2023-07-14 02:19:37'),
(7, 'xd', 'DASFDSF', 0, '2023-06-09 03:00:47', '2023-07-14 02:19:48'),
(8, 'Pepe', 'pepepepeppe', 0, '2023-06-09 03:01:41', '2023-07-14 02:19:23'),
(9, 'LOL', 'Indefinido', 0, '2023-06-09 03:06:42', '2023-07-14 02:19:17'),
(10, 'dafdsf', 'Indefinido', 0, '2023-06-09 03:07:13', '2023-07-14 02:19:05'),
(11, 'adsfasdfsdaf', 'Indefinido', 0, '2023-06-09 03:07:18', '2023-07-14 02:18:41'),
(12, 'afdsfdsf', 'Indefinido', 0, '2023-06-09 03:07:24', '2023-06-16 07:53:54'),
(13, 'adsfadsf', 'Indefinido', 0, '2023-06-09 03:31:48', '2023-06-09 03:42:28'),
(14, 'asdfadsfdsafdsa', 'Indefinido', 0, '2023-06-09 03:31:54', '2023-07-14 02:18:47'),
(15, 'adsfadsfdsafdsaf', 'adsfdsafadsfdasf', 0, '2023-06-09 03:41:32', '2023-07-14 02:18:35'),
(16, 'dfadsfdsaf', 'Indefinido', 0, '2023-06-09 06:29:41', '2023-07-14 02:19:10'),
(17, 'Carro', 'Indefinido', 0, '2023-07-05 02:27:56', '2023-07-14 02:18:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre_clie` varchar(100) NOT NULL,
  `apellido_clie` varchar(100) NOT NULL,
  `cedula_clie` varchar(20) NOT NULL,
  `telefono_clie` varchar(20) NOT NULL,
  `correo_clie` varchar(100) NOT NULL,
  `direccion_clie` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre_clie`, `apellido_clie`, `cedula_clie`, `telefono_clie`, `correo_clie`, `direccion_clie`, `created_at`, `updated_at`) VALUES
(1, 'Juan', 'Andrade', '0850587940', '1236547980', 'carlos.andrade66@gmail.com', 'Santo Domingo', NULL, '2023-06-27 05:29:51'),
(2, 'Ricardo', 'Pilozo', '0850587924', '9632587410', 'ricardopilozo@gmail.com', 'La Union', '2023-06-12 19:20:00', '2023-06-27 05:25:11'),
(3, 'Gabriel', 'Montero', '0123456789', '0231456789', 'gabriela_montero12@gmail.com', 'Santo Domingo', '2023-06-12 19:47:50', '2023-06-27 05:25:26'),
(4, 'Andres', 'Coronel', '9865321470', '3669885740', 'andres_coronel1@gmail.com', 'La Union', '2023-06-12 20:07:13', '2023-06-12 20:07:13'),
(5, 'Maria', 'Peralta', '1236598763', '1225447888', 'mariaperalta22@gmail.com', 'Santo Domingo', '2023-06-12 20:09:55', '2023-06-12 20:09:55'),
(6, 'Consumidor', 'Final', '9999999999', '0000000000', 'xxxxxxxxxxxx@gmail.com', 'XXXXXXXXXX', '2023-06-14 05:50:07', '2023-07-05 02:38:35'),
(7, 'zzzz', 'aaaaa', '1234569863', '0852698761', 'ricardo@gmail,com', 'la union', '2023-07-13 02:59:57', '2023-07-13 02:59:57'),
(8, 'Margoth', 'Guaraca', '0603406089', '0999999999', 'margoth@gmail,com', 'Santo Domingo', '2023-08-02 02:22:05', '2023-08-02 02:22:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `id_detalle` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `valor_unitario` float NOT NULL,
  `id_inventario` int(11) NOT NULL,
  `id_movimiento` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `ganancia_detalle` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `estado_detalle` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `detalle`
--

INSERT INTO `detalle` (`id_detalle`, `cantidad`, `valor_unitario`, `id_inventario`, `id_movimiento`, `id_producto`, `ganancia_detalle`, `created_at`, `updated_at`, `estado_detalle`) VALUES
(15, 2, 14, 9, 30, 9, 0, '2023-06-12 22:41:56', '2023-06-12 22:41:56', 1),
(16, 2, 10, 6, 30, 6, 0, '2023-06-12 22:41:57', '2023-06-12 22:41:57', 1),
(17, 6, 9, 9, 31, 9, 0, '2023-06-12 23:47:14', '2023-06-12 23:47:14', 1),
(18, 5, 12, 7, 31, 7, 0, '2023-06-12 23:47:14', '2023-06-12 23:47:14', 1),
(19, 2, 14, 9, 32, 9, 0, '2023-06-13 04:35:30', '2023-06-13 04:35:30', 1),
(20, 3, 14, 9, 33, 9, 0, '2023-06-13 04:38:24', '2023-06-13 04:38:24', 1),
(21, 5, 14, 9, 34, 9, 0, '2023-06-13 04:40:33', '2023-06-13 04:40:33', 1),
(22, 5, 10, 6, 34, 6, 0, '2023-06-13 04:40:34', '2023-06-13 04:40:34', 1),
(23, 1, 14, 9, 35, 9, 0, '2023-06-13 04:45:17', '2023-06-13 04:45:17', 1),
(24, 1, 10, 6, 35, 6, 0, '2023-06-13 04:45:18', '2023-06-13 04:45:18', 1),
(25, 9, 14, 9, 36, 9, 0, '2023-06-13 04:56:45', '2023-06-13 04:56:45', 1),
(26, 9, 10, 6, 36, 6, 0, '2023-06-13 04:56:48', '2023-06-13 04:56:48', 1),
(27, 1, 10, 6, 37, 6, 0, '2023-06-13 04:57:30', '2023-06-13 04:57:30', 1),
(28, 5, 14, 9, 38, 9, 0, '2023-06-13 04:59:01', '2023-06-13 04:59:01', 1),
(29, 5, 14, 9, 39, 9, 0, '2023-06-13 05:01:18', '2023-06-13 05:01:18', 1),
(30, 5, 14, 9, 40, 9, 0, '2023-06-13 05:07:01', '2023-06-13 05:07:01', 1),
(31, 2, 14, 9, 41, 9, 0, '2023-06-13 05:08:41', '2023-06-13 05:08:41', 1),
(32, 10, 10, 6, 41, 6, 0, '2023-06-13 05:08:42', '2023-06-13 05:08:42', 1),
(33, 10, 14, 9, 42, 9, 0, '2023-06-13 05:15:36', '2023-06-13 05:15:36', 1),
(34, 5, 14, 9, 43, 9, 0, '2023-06-13 05:17:15', '2023-06-13 05:17:15', 1),
(35, 1, 10, 3, 44, 3, 0, '2023-06-13 05:29:52', '2023-06-13 05:29:52', 1),
(36, 2, 14, 9, 45, 9, 0, '2023-06-14 05:52:32', '2023-06-14 05:52:32', 1),
(37, 8, 14, 9, 46, 9, 0, '2023-06-14 05:56:56', '2023-06-14 05:56:56', 1),
(38, 5, 12, 8, 46, 8, 0, '2023-06-14 05:56:57', '2023-06-14 05:56:57', 1),
(39, 2, 14, 9, 47, 9, 0, '2023-06-14 06:00:15', '2023-06-14 06:00:15', 1),
(40, 5, 10, 6, 47, 6, 0, '2023-06-14 06:00:16', '2023-06-14 06:00:16', 1),
(41, 6, 8, 7, 47, 7, 0, '2023-06-14 06:00:16', '2023-06-14 06:00:16', 1),
(42, 3, 14, 9, 49, 9, 0, '2023-06-16 05:32:23', '2023-06-16 05:32:23', 1),
(43, 2, 9, 9, 50, 9, 0, '2023-06-16 05:37:26', '2023-06-16 05:37:26', 1),
(44, 1, 9, 9, 51, 9, 0, '2023-06-16 06:41:34', '2023-06-16 06:41:34', 1),
(45, 4, 7, 6, 51, 6, 0, '2023-06-16 06:41:35', '2023-06-16 06:41:35', 1),
(46, 1, 10, 6, 52, 6, 0, '2023-06-16 06:44:53', '2023-06-16 06:44:53', 1),
(47, 2, 7, 6, 53, 6, 0, '2023-06-16 07:52:36', '2023-06-16 07:52:36', 1),
(48, 1, 8, 7, 53, 7, 0, '2023-06-16 07:52:37', '2023-06-16 07:52:37', 1),
(50, 3, 10, 6, 55, 6, 0, '2023-06-28 22:44:06', '2023-06-28 22:44:06', 1),
(52, 1, 14, 9, 56, 9, 8, '2023-07-02 01:36:40', '2023-07-02 01:36:40', 1),
(54, 1, 14, 9, 57, 9, 8, '2023-07-02 01:38:40', '2023-07-02 01:38:40', 1),
(56, 1, 14, 9, 58, 9, 8, '2023-07-02 01:50:56', '2023-07-02 01:50:56', 1),
(57, 1, 14, 9, 59, 9, 8, '2023-07-02 03:33:44', '2023-07-02 03:33:44', 1),
(58, 1, 12, 7, 59, 7, 7, '2023-07-02 03:33:45', '2023-07-02 03:33:45', 1),
(60, 2, 14, 9, 60, 9, 8, '2023-07-02 04:10:41', '2023-07-02 04:10:41', 1),
(62, 1, 14, 9, 61, 9, 8, '2023-07-02 04:14:21', '2023-07-02 04:14:21', 1),
(64, 1, 12, 7, 62, 7, 7, '2023-07-02 04:20:05', '2023-07-02 04:20:05', 1),
(66, 2, 14, 9, 63, 9, 8, '2023-07-02 04:38:21', '2023-07-02 04:38:21', 1),
(67, 1, 15, 39, 64, 39, 3, '2023-07-02 04:47:28', '2023-07-02 04:47:28', 1),
(68, 2, 14, 9, 64, 9, 8, '2023-07-02 04:47:29', '2023-07-02 04:47:29', 1),
(69, 1, 17, 39, 65, 39, 5, '2023-07-05 05:08:08', '2023-07-05 05:08:08', 1),
(70, 1, 14, 9, 65, 9, 8, '2023-07-05 05:08:09', '2023-07-05 05:08:09', 1),
(71, 1, 15, 39, 66, 39, 3, '2023-07-05 05:10:02', '2023-07-05 05:10:02', 1),
(72, 8, 15, 39, 67, 39, 3, '2023-07-05 06:39:32', '2023-07-05 06:39:32', 1),
(73, 10, 15, 39, 68, 39, 3, '2023-07-05 06:40:31', '2023-07-05 06:40:31', 1),
(74, 2, 15, 39, 70, 39, 3, '2023-07-08 23:14:55', '2023-07-08 23:14:55', 1),
(75, 2, 15, 39, 71, 39, 3, '2023-07-09 01:38:34', '2023-07-09 01:38:34', 1),
(76, 3, 14, 9, 71, 9, 8, '2023-07-09 01:38:34', '2023-07-09 01:38:34', 1),
(77, 5, 15, 39, 132, 39, 3, '2023-07-10 22:05:03', '2023-07-10 22:05:03', 1),
(78, 10, 12, 7, 132, 7, 7, '2023-07-10 22:05:04', '2023-07-10 22:05:04', 1),
(79, 10, 13, 39, 133, 39, 1, '2023-07-10 22:05:53', '2023-07-10 22:05:53', 1),
(80, 6, 14, 9, 133, 9, 8, '2023-07-10 22:05:54', '2023-07-10 22:05:54', 1),
(81, 50, 10, 6, 134, 6, 6, '2023-07-10 22:07:11', '2023-07-10 22:07:11', 1),
(82, 10, 14, 5, 134, 5, 8, '2023-07-10 22:07:12', '2023-07-10 22:07:12', 1),
(83, 1, 17, 39, 135, 39, 5, '2023-07-11 00:19:59', '2023-07-11 00:19:59', 1),
(84, 30, 12, 7, 135, 7, 7, '2023-07-11 00:19:59', '2023-07-11 00:19:59', 1),
(85, 5, 14, 9, 136, 9, 8, '2023-07-11 01:36:52', '2023-07-11 01:36:52', 1),
(86, 50, 10, 6, 136, 6, 6, '2023-07-11 01:36:53', '2023-07-11 01:36:53', 1),
(87, 2, 17, 39, 137, 39, 5, '2023-07-13 02:11:51', '2023-07-13 02:11:51', 1),
(88, 3, 14, 9, 137, 9, 8, '2023-07-13 02:11:52', '2023-07-13 02:11:52', 1),
(89, 6, 10, 6, 137, 6, 6, '2023-07-13 02:11:52', '2023-07-13 02:11:52', 1),
(90, 7, 12, 7, 138, 7, 7, '2023-07-13 02:12:53', '2023-07-13 02:12:53', 1),
(91, 3, 1, 23, 138, 23, 0.8, '2023-07-13 02:12:53', '2023-07-13 02:12:53', 1),
(92, 2, 15, 39, 139, 39, 3, '2023-07-24 03:30:19', '2023-07-24 03:30:19', 1),
(93, 5, 10, 6, 140, 6, 6, '2023-07-24 03:31:49', '2023-07-24 03:31:49', 1),
(94, 2, 14, 9, 141, 9, 8, '2023-07-26 02:03:57', '2023-07-26 02:03:57', 1),
(95, 3, 15, 39, 141, 39, 3, '2023-07-26 02:03:57', '2023-07-26 02:03:57', 1),
(96, 1, 15, 39, 142, 39, 3, '2023-07-26 23:01:57', '2023-07-26 23:01:57', 1),
(97, 2, 12, 7, 143, 7, 7, '2023-07-27 20:04:50', '2023-07-27 20:04:50', 1),
(98, 7, 8, 7, 144, 7, 3, '2023-07-27 20:08:30', '2023-07-27 20:08:30', 1),
(99, 5, 12, 7, 145, 7, 7, '2023-07-27 20:10:36', '2023-07-27 20:10:36', 1),
(100, 10, 12, 7, 146, 7, 7, '2023-07-27 23:32:02', '2023-07-27 23:32:02', 1),
(102, 3, 12, 7, 148, 7, 7, '2023-07-29 01:41:45', '2023-07-29 01:41:45', 1),
(103, 5, 12, 7, 149, 7, 7, '2023-07-29 05:52:34', '2023-07-29 05:52:34', 1),
(104, 4, 10, 6, 150, 6, 6, '2023-07-29 06:46:07', '2023-07-29 06:46:07', 1),
(105, 1, 12, 7, 151, 7, 7, '2023-07-30 15:17:50', '2023-07-30 15:17:50', 1),
(106, 4, 12, 7, 152, 7, 7, '2023-07-30 16:08:24', '2023-07-30 16:08:24', 1),
(107, 5, 12, 7, 153, 7, 7, '2023-07-28 19:45:16', '2023-07-28 19:45:16', 1),
(108, 2, 12, 7, 154, 7, 7, '2023-07-31 05:13:00', '2023-07-31 05:13:00', 1),
(109, 3, 12, 7, 155, 7, 7, '2023-07-31 05:13:43', '2023-07-31 05:13:43', 1),
(114, 1, 12, 7, 159, 7, 7, '2023-08-02 02:18:35', '2023-08-02 02:18:35', 1),
(115, 5, 12, 7, 160, 7, 7, '2023-08-02 02:23:17', '2023-08-02 02:23:17', 1),
(120, 2, 15, 39, 164, 39, 3, '2023-08-02 22:28:52', '2023-08-02 22:28:52', 1),
(121, 7, 1, 25, 165, 25, 0.79, '2023-08-03 19:57:22', '2023-08-03 19:57:22', 1),
(122, 17, 15, 39, 166, 39, 3, '2023-08-03 22:34:13', '2023-08-03 22:34:13', 1),
(123, 30, 14, 9, 167, 9, 8, '2023-08-03 22:38:58', '2023-08-03 22:38:58', 1),
(124, 80, 7, 6, 168, 6, 3, '2023-08-03 22:39:59', '2023-08-03 22:39:59', 1),
(125, 8, 0.5, 23, 169, 23, 0.3, '2023-08-03 22:46:18', '2023-08-03 22:46:18', 1),
(126, 50, 15, 39, 170, 39, 3, '2023-08-03 23:12:56', '2023-08-03 23:12:56', 1),
(127, 16, 1, 25, 171, 25, 0.79, '2023-08-03 23:16:20', '2023-08-03 23:16:20', 1),
(128, 15, 1, 27, 172, 27, 0.77, '2023-08-03 23:17:34', '2023-08-03 23:17:34', 1),
(129, 40, 12, 8, 172, 8, 7, '2023-08-03 23:17:35', '2023-08-03 23:17:35', 1),
(130, 15, 1, 29, 172, 29, 0.75, '2023-08-03 23:17:36', '2023-08-03 23:17:36', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devolucion`
--

CREATE TABLE `devolucion` (
  `id_devolucion` int(11) NOT NULL,
  `fecha_dev` date NOT NULL,
  `cantidad_dev` float NOT NULL,
  `descripcion_dev` varchar(200) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `devolucion`
--

INSERT INTO `devolucion` (`id_devolucion`, `fecha_dev`, `cantidad_dev`, `descripcion_dev`, `id_producto`, `id_usuario`, `created_at`, `updated_at`) VALUES
(1, '2023-04-01', 2, 'No era el color que esperaba', 1, 1, NULL, NULL),
(2, '2023-04-02', 1, 'No era el modelo que quería', 2, 1, NULL, NULL),
(3, '2023-04-03', 3, 'No era compatible con mi dispositivo', 3, 2, NULL, NULL),
(4, '2023-04-04', 4, 'Producto defectuoso', 4, 1, NULL, NULL),
(5, '2023-04-05', 1, 'No era el tamaño adecuado', 5, 2, NULL, NULL),
(6, '2023-06-09', 1, 'XD', 33, 1, '2023-07-09 01:20:51', '2023-07-09 01:20:51'),
(7, '2023-06-09', 1, 'XD', 33, 1, '2023-07-09 01:21:29', '2023-07-09 01:21:29'),
(8, '2023-06-09', 1, 'XD', 33, 1, '2023-07-09 01:21:45', '2023-07-09 01:21:45'),
(9, '2023-06-09', 1, 'XD', 33, 1, '2023-07-09 01:22:56', '2023-07-09 01:22:56'),
(10, '2023-06-09', 10, 'ASDF', 33, 1, '2023-07-09 01:31:04', '2023-07-09 01:31:04'),
(11, '2023-07-09', 5, 'devolución de 5 productos defectuosos', 39, 1, '2023-07-09 16:25:33', '2023-07-09 16:25:33'),
(12, '2023-07-09', 5, 'Se devuelve 5 productos defectuosos', 39, 1, '2023-07-09 16:29:08', '2023-07-09 16:29:08'),
(13, '2023-07-09', 4, 'XD', 39, 1, '2023-07-09 16:32:13', '2023-07-09 16:32:13'),
(14, '2023-07-09', 3, '3 productos devueltos por mal estado ´´', 39, 1, '2023-07-09 16:33:35', '2023-07-09 16:33:35'),
(15, '2023-07-11', 3, 'Devolución por fallos de fabricante', 39, 1, '2023-07-11 02:23:48', '2023-07-11 02:23:48'),
(16, '2023-07-13', 11, 'Producto con daños de fabrica', 6, 1, '2023-07-13 02:38:30', '2023-07-13 02:38:30'),
(17, '2023-07-27', 10, 'Daño de fabrica', 9, 21, '2023-07-27 21:55:48', '2023-07-27 21:55:48'),
(18, '2023-07-31', 15, 'Se devuelven 15 productos con defecto de fabrica', 7, 21, '2023-07-31 21:26:56', '2023-07-31 21:26:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id_inventario` int(11) NOT NULL,
  `estado_inv` tinyint(1) NOT NULL,
  `cantidad_inventario` int(11) NOT NULL,
  `descripcion_inv` varchar(200) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id_inventario`, `estado_inv`, `cantidad_inventario`, `descripcion_inv`, `id_producto`, `created_at`, `updated_at`) VALUES
(1, 0, 180, '', 1, NULL, '2023-07-05 07:18:49'),
(2, 0, 120, '', 2, NULL, '2023-06-07 08:25:59'),
(3, 0, 60, '', 3, NULL, '2023-08-03 21:43:15'),
(4, 0, 13, '', 4, NULL, '2023-06-07 09:25:09'),
(5, 0, 100, '', 5, NULL, '2023-08-03 21:51:17'),
(6, 0, 100, '', 6, NULL, '2023-08-03 22:41:22'),
(7, 0, 93, '', 7, NULL, '2023-08-02 22:24:06'),
(8, 1, 10, '', 8, NULL, '2023-08-03 23:17:36'),
(9, 1, 62, '', 9, NULL, '2023-08-03 23:04:42'),
(10, 1, 101, '', 10, NULL, '2023-06-05 00:22:55'),
(11, 1, 30, '', 11, NULL, NULL),
(12, 1, 18, '', 12, NULL, NULL),
(13, 1, 17, '', 13, NULL, NULL),
(14, 1, 21, '', 14, NULL, NULL),
(15, 1, 25, '', 15, NULL, NULL),
(16, 1, 26, '', 16, NULL, NULL),
(17, 1, 29, '', 17, NULL, NULL),
(18, 1, 30, '', 18, NULL, NULL),
(19, 0, 39, '', 19, NULL, '2023-06-09 06:28:33'),
(20, 1, 100, '', 20, NULL, '2023-08-03 22:25:21'),
(21, 1, 30, '', 21, NULL, '2023-08-03 22:28:54'),
(22, 1, 15, '', 22, NULL, NULL),
(23, 1, 60, '', 23, NULL, '2023-08-03 23:12:11'),
(24, 1, 22, '', 24, NULL, NULL),
(25, 1, 4, '', 25, NULL, '2023-08-03 23:16:20'),
(26, 1, 26, '', 26, NULL, NULL),
(27, 1, 12, '', 27, NULL, '2023-08-03 23:17:35'),
(28, 1, 31, '', 28, NULL, '2023-07-26 23:11:05'),
(29, 1, 8, '', 29, NULL, '2023-08-03 23:17:37'),
(30, 1, 20, '', 30, NULL, NULL),
(31, 1, 50, '', 31, NULL, NULL),
(32, 1, 30, 'Descripción del producto de prueba', 32, '2023-05-23 04:27:58', '2023-05-23 04:27:58'),
(33, 1, 50, 'Descripción del producto de prueba', 33, '2023-05-23 04:30:43', '2023-07-09 01:31:04'),
(34, 1, 50, 'Mica para celulares Samsung A100', 34, '2023-06-04 06:42:32', '2023-06-04 06:42:32'),
(35, 0, 400, 'asdfdsfsdaf', 35, '2023-06-05 10:01:34', '2023-07-31 16:08:27'),
(36, 0, 12, '11111111', 36, '2023-06-05 23:20:05', '2023-06-10 20:27:40'),
(37, 0, 200, 'adfdsfadsfdsf', 37, '2023-06-09 03:48:22', '2023-06-10 20:27:47'),
(38, 1, 96, 'sadasd', 38, '2023-06-27 04:04:26', '2023-07-02 04:38:21'),
(39, 1, 10, 'dgdfgfd', 39, NULL, '2023-08-03 23:12:57'),
(40, 1, 150, 'sdasdsad', 40, '2023-07-25 01:06:51', '2023-07-25 01:06:51'),
(41, 1, 200, 'afdsfsadf', 41, '2023-07-27 17:05:36', '2023-07-27 17:05:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento`
--

CREATE TABLE `movimiento` (
  `id_movimiento` int(11) NOT NULL,
  `fecha_mov` date NOT NULL,
  `numero_comprobante` int(11) NOT NULL,
  `tipo_mov` varchar(50) NOT NULL,
  `descripcion_mov` varchar(200) NOT NULL,
  `valor_total_mov` float NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_transacciones` int(11) DEFAULT NULL,
  `ganancia_mov` float NOT NULL,
  `estado_mov` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `movimiento`
--

INSERT INTO `movimiento` (`id_movimiento`, `fecha_mov`, `numero_comprobante`, `tipo_mov`, `descripcion_mov`, `valor_total_mov`, `id_usuario`, `created_at`, `updated_at`, `id_cliente`, `id_transacciones`, `ganancia_mov`, `estado_mov`) VALUES
(30, '2023-06-12', 17, 'Salida', 'dfasdfdsfads', 48, 1, '2023-06-12 22:41:55', '2023-06-12 22:41:55', 1, 6, 0, 1),
(31, '2023-06-12', 18, 'Salida', 'fdsafadsf', 114, 1, '2023-06-12 23:47:12', '2023-06-12 23:47:12', 1, NULL, 0, 1),
(32, '2023-06-12', 19, 'Salida', 'fadsf', 28, 1, '2023-06-13 04:35:29', '2023-06-13 04:35:29', 2, NULL, 0, 1),
(33, '2023-06-12', 20, 'Salida', 'dafadsf', 42, 1, '2023-06-13 04:38:23', '2023-06-13 04:38:23', 1, NULL, 0, 1),
(34, '2023-06-12', 21, 'Salida', 'dsafadsf', 120, 1, '2023-06-13 04:40:31', '2023-06-13 04:40:31', 4, NULL, 0, 1),
(35, '2023-06-12', 22, 'Salida', 'dsafdsf', 24, 1, '2023-06-13 04:45:15', '2023-06-13 04:45:15', 5, NULL, 0, 1),
(36, '2023-06-12', 23, 'Salida', 'dfadsfsdf', 216, 1, '2023-06-13 04:56:43', '2023-06-13 04:56:43', 3, NULL, 0, 1),
(37, '2023-06-12', 24, 'Salida', 'erqewrqewrqwer', 10, 1, '2023-06-13 04:57:29', '2023-06-13 04:57:29', 1, NULL, 0, 1),
(38, '2023-06-12', 25, 'Salida', 'asfasdas', 70, 1, '2023-06-13 04:58:59', '2023-06-13 04:58:59', 3, NULL, 0, 1),
(39, '2023-06-12', 26, 'Salida', 'dafdsaf', 70, 1, '2023-06-13 05:01:17', '2023-06-13 05:01:17', 1, NULL, 0, 1),
(40, '2023-06-13', 27, 'Salida', 'fadsfs', 70, 1, '2023-06-13 05:07:00', '2023-06-13 05:07:00', 1, NULL, 0, 1),
(41, '2023-06-13', 28, 'Salida', 'fadsfads', 128, 1, '2023-06-13 05:08:39', '2023-06-13 05:08:39', 2, NULL, 0, 1),
(42, '2023-06-13', 29, 'Salida', 'dafdsfasdfdsafasdfadsfadsf', 140, 1, '2023-06-13 05:15:35', '2023-06-13 05:15:35', 3, NULL, 0, 1),
(43, '2023-06-13', 30, 'Salida', 'dafsd', 70, 1, '2023-06-13 05:17:13', '2023-06-13 05:17:13', 1, NULL, 0, 1),
(44, '2023-06-13', 31, 'Salida', 'adfadsfdasfadsf', 10, 1, '2023-06-13 05:29:50', '2023-06-13 05:29:50', 3, NULL, 0, 1),
(45, '2023-06-14', 32, 'Salida', 'Indefinido', 28, 1, '2023-06-14 05:52:30', '2023-06-14 05:52:30', 6, NULL, 0, 1),
(46, '2023-06-14', 33, 'Salida', 'venta de tres artículos', 172, 1, '2023-06-14 05:56:54', '2023-06-14 05:56:54', 6, NULL, 0, 1),
(47, '2023-06-14', 34, 'Salida', 'Indefinido', 126, 1, '2023-06-14 06:00:12', '2023-06-14 06:00:12', 1, NULL, 0, 1),
(49, '2023-06-16', 35, 'Salida', 'Indefinido', 42, 1, '2023-06-16 05:32:22', '2023-06-16 05:32:22', 1, NULL, 0, 1),
(50, '2023-06-16', 36, 'Salida', 'Indefinido', 18, 1, '2023-06-16 05:37:24', '2023-06-16 05:37:24', 6, 9, 0, 1),
(51, '2023-06-16', 37, 'Salida', 'Indefinido', 37, 1, '2023-06-16 06:41:32', '2023-06-16 06:41:32', 1, 10, 0, 1),
(52, '2023-06-16', 38, 'Salida', 'Indefinido', 10, 1, '2023-06-16 06:44:51', '2023-06-16 06:44:51', 6, 11, 0, 1),
(53, '2023-06-16', 39, 'Salida', 'Indefinido', 22, 1, '2023-06-16 07:52:33', '2023-06-16 07:52:33', 1, 12, 0, 1),
(54, '2023-06-28', 40, 'Salida', 'Indefinido', 30, 1, '2023-06-28 21:49:37', '2023-06-28 21:49:37', 1, 15, 0, 1),
(55, '2023-06-28', 41, 'Salida', 'saddas', 30, 1, '2023-06-28 22:44:04', '2023-06-28 22:44:04', 6, 18, 0, 1),
(56, '2023-07-01', 42, 'Salida', 'Indefinido', 44, 1, '2023-07-02 01:36:34', '2023-07-02 01:36:34', 1, 53, 14, 1),
(57, '2023-07-01', 43, 'Salida', 'Indefinido', 59, 1, '2023-07-02 01:38:34', '2023-07-02 01:38:34', 6, 54, 17, 1),
(58, '2023-07-01', 44, 'Salida', 'Indefinido', 44, 1, '2023-07-02 01:50:50', '2023-07-02 01:50:50', 1, 55, 14, 1),
(59, '2023-07-01', 45, 'Salida', 'Indefinido', 26, 1, '2023-07-02 03:33:39', '2023-07-02 03:33:39', 1, 56, 15, 1),
(60, '2023-07-01', 46, 'Salida', 'Indefinido', 45, 1, '2023-07-02 04:10:38', '2023-07-02 04:10:38', 6, 57, 21, 1),
(61, '2023-07-01', 47, 'Salida', 'Indefinido', 29, 1, '2023-07-02 04:14:18', '2023-07-02 04:14:18', 1, 58, 11, 1),
(62, '2023-07-01', 48, 'Salida', 'Indefinido', 29, 1, '2023-07-02 04:20:02', '2023-07-02 04:20:02', 6, 59, 12, 1),
(63, '2023-07-01', 49, 'Salida', 'Indefinido', 45, 1, '2023-07-02 04:38:18', '2023-07-02 04:38:18', 1, 60, 21, 1),
(64, '2023-07-01', 50, 'Salida', 'Indefinido', 43, 1, '2023-07-02 04:47:25', '2023-07-02 04:47:25', 6, 61, 19, 1),
(65, '2023-07-05', 51, 'Salida', 'Indefinido', 31, 1, '2023-07-05 05:08:05', '2023-07-05 05:08:05', 6, 62, 13, 1),
(66, '2023-07-05', 52, 'Salida', 'Indefinido', 15, 2, '2023-07-05 05:10:00', '2023-07-05 05:10:00', 1, 63, 3, 1),
(67, '2023-07-05', 53, 'Salida', 'Indefinido', 120, 1, '2023-07-05 06:39:29', '2023-07-05 06:39:29', 6, 64, 24, 1),
(68, '2023-07-05', 54, 'Salida', 'Indefinido', 150, 1, '2023-07-05 06:40:29', '2023-07-05 06:40:29', 6, 65, 30, 1),
(69, '2023-06-09', 1000, 'salida', 'Descripción del movimientohjgjh', 100, 1, '2023-07-08 23:11:13', '2023-07-08 23:11:13', 1, NULL, 20, 1),
(70, '2023-07-08', 1001, 'Salida', 'Indefinido', 30, 1, '2023-07-08 23:14:53', '2023-07-08 23:14:53', 1, 67, 6, 1),
(71, '2023-07-09', 1002, 'Salida', 'Indefinido', 72, 1, '2023-07-09 01:38:31', '2023-07-09 01:38:31', 6, 69, 30, 1),
(112, '2023-01-01', 123, 'Salida', 'Descripción 1', 100, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 10, 1),
(113, '2023-02-01', 124, 'Salida', 'Descripción 2', 200, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 20, 1),
(114, '2023-03-01', 125, 'Salida', 'Descripción 3', 300, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 30, 1),
(115, '2023-04-01', 126, 'Salida', 'Descripción 4', 400, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 40, 1),
(116, '2023-05-01', 127, 'Salida', 'Descripción 5', 500, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 50, 1),
(117, '2023-06-01', 128, 'Salida', 'Descripción 6', 600, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 60, 1),
(118, '2023-07-01', 129, 'Salida', 'Descripción 7', 700, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 70, 1),
(119, '2023-08-01', 130, 'Salida', 'Descripción 8', 800, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 80, 1),
(120, '2023-09-01', 131, 'Salida', 'Descripción 9', 900, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 90, 1),
(121, '2023-10-01', 132, 'Salida', 'Descripción 10', 1000, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 100, 1),
(122, '2023-11-01', 133, 'Salida', 'Descripción 11', 1100, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 110, 1),
(123, '2023-12-01', 134, 'Salida', 'Descripción 12', 1200, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 120, 1),
(124, '2023-01-02', 135, 'Salida', 'Descripción 13', 1300, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 130, 1),
(125, '2023-02-02', 136, 'Salida', 'Descripción 14', 1400, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 140, 1),
(126, '2023-03-02', 137, 'Salida', 'Descripción 15', 1500, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 150, 1),
(127, '2023-04-02', 138, 'Salida', 'Descripción 16', 1600, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 160, 1),
(128, '2023-05-02', 139, 'Salida', 'Descripción 17', 1700, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 170, 1),
(129, '2023-06-02', 140, 'Salida', 'Descripción 18', 1800, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 180, 1),
(130, '2023-07-02', 141, 'Salida', 'Descripción 19', 1900, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 190, 1),
(131, '2023-08-02', 142, 'Salida', 'Descripción 20', 2000, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 200, 1),
(132, '2023-12-20', 1003, 'Salida', 'Indefinido', 195, 1, '2023-07-10 22:05:01', '2023-07-10 22:05:01', 1, 70, 85, 1),
(133, '2023-12-14', 1004, 'Salida', 'Indefinido', 214, 1, '2023-07-10 22:05:50', '2023-07-10 22:05:50', 6, 71, 58, 1),
(134, '2023-12-28', 1005, 'Salida', 'Indefinido', 640, 1, '2023-07-10 22:07:09', '2023-07-10 22:07:09', 6, 72, 380, 1),
(135, '2023-02-16', 1006, 'Salida', 'Indefinido', 377, 1, '2023-07-11 00:19:56', '2023-07-11 00:19:56', 6, 73, 215, 1),
(136, '2023-01-19', 1007, 'Salida', 'Indefinido', 570, 1, '2023-07-11 01:36:49', '2023-07-11 01:36:49', 1, 75, 340, 1),
(137, '2023-07-13', 1008, 'Salida', 'Indefinido', 136, 1, '2023-07-13 02:11:48', '2023-07-13 02:11:48', 1, 76, 70, 1),
(138, '2023-07-13', 1009, 'Salida', 'Indefinido', 87, 1, '2023-07-13 02:12:50', '2023-07-13 02:12:50', 6, 77, 51.4, 1),
(139, '2023-07-24', 1010, 'Salida', 'Indefinido', 30, 12, '2023-07-24 03:30:18', '2023-07-24 03:30:18', 6, 79, 6, 1),
(140, '2023-07-24', 1011, 'Salida', 'Indefinido', 50, 17, '2023-07-24 03:31:48', '2023-07-24 03:31:48', 1, 80, 30, 1),
(141, '2023-07-26', 1012, 'Salida', 'Indefinido', 73, 12, '2023-07-26 02:03:56', '2023-07-26 02:03:56', 6, 81, 25, 1),
(142, '2023-07-26', 1013, 'Salida', 'Indefinido', 15, 19, '2023-07-26 23:01:55', '2023-07-26 23:01:55', 6, 97, 3, 1),
(143, '2023-07-27', 1014, 'Salida', 'Indefinido', 24, 21, '2023-07-27 20:04:48', '2023-07-27 20:04:48', 6, 110, 14, 1),
(144, '2023-07-27', 1015, 'Salida', 'Indefinido', 56, 21, '2023-07-27 20:08:28', '2023-07-27 20:08:28', 6, 111, 21, 1),
(145, '2023-07-27', 1016, 'Salida', 'Indefinido', 60, 21, '2023-07-27 20:10:34', '2023-07-27 20:10:34', 6, 112, 35, 1),
(146, '2023-07-27', 1017, 'Salida', 'Venta', 120, 21, '2023-07-27 23:31:59', '2023-07-27 23:31:59', 6, 119, 70, 1),
(148, '2023-07-28', 1018, 'Salida', 'Venta', 36, 21, '2023-07-29 01:41:42', '2023-07-29 01:41:42', 6, 127, 21, 1),
(149, '2023-07-29', 1019, 'Salida', 'Venta', 60, 19, '2023-07-29 05:52:31', '2023-07-29 05:52:31', 6, 132, 35, 1),
(150, '2023-07-29', 1020, 'Salida', 'Venta', 40, 19, '2023-07-29 06:46:05', '2023-07-29 06:46:05', 1, 133, 24, 1),
(151, '2023-07-30', 1021, 'Salida', 'Venta', 12, 19, '2023-07-30 15:17:48', '2023-07-30 15:17:48', 6, 137, 7, 1),
(152, '2023-07-30', 1022, 'Salida', 'Venta', 48, 12, '2023-07-30 16:08:21', '2023-07-30 16:08:21', 1, 139, 28, 1),
(153, '2023-07-28', 1023, 'Salida', 'Venta', 60, 12, '2023-07-28 19:45:13', '2023-07-28 19:45:13', 6, 140, 35, 1),
(154, '2023-07-31', 1024, 'Salida', 'Venta', 24, 21, '2023-07-31 05:12:57', '2023-07-31 05:12:57', 6, 141, 14, 1),
(155, '2023-07-31', 1025, 'Salida', 'Venta', 36, 21, '2023-07-31 05:13:41', '2023-07-31 05:13:41', 6, 142, 21, 1),
(159, '2023-08-01', 1026, 'Salida', 'Venta', 12, 21, '2023-08-02 02:18:32', '2023-08-02 02:18:32', 6, 150, 7, 1),
(160, '2023-08-01', 1027, 'Salida', 'Venta', 60, 21, '2023-08-02 02:23:15', '2023-08-02 02:23:15', 8, 151, 35, 1),
(164, '2023-08-02', 1028, 'Salida', 'Venta', 30, 21, '2023-08-02 22:28:50', '2023-08-02 22:28:50', 6, 164, 6, 1),
(165, '2023-08-03', 1029, 'Salida', 'Venta', 7, 12, '2023-08-03 19:57:20', '2023-08-03 19:57:20', 6, 169, 5.53, 1),
(166, '2023-08-03', 1030, 'Salida', 'Venta', 255, 12, '2023-08-03 22:34:10', '2023-08-03 22:34:10', 6, 171, 51, 1),
(167, '2023-08-03', 1031, 'Salida', 'Venta', 420, 12, '2023-08-03 22:38:55', '2023-08-03 22:38:55', 1, 172, 240, 1),
(168, '2023-08-03', 1032, 'Salida', 'Venta', 560, 12, '2023-08-03 22:39:56', '2023-08-03 22:39:56', 2, 173, 240, 1),
(169, '2023-08-03', 1033, 'Salida', 'Venta', 4, 12, '2023-08-03 22:46:16', '2023-08-03 22:46:16', 6, 174, 2.4, 1),
(170, '2023-08-03', 1034, 'Salida', 'Venta', 750, 12, '2023-08-03 23:12:54', '2023-08-03 23:12:54', 6, 175, 150, 1),
(171, '2023-08-03', 1035, 'Salida', 'Venta', 16, 12, '2023-08-03 23:16:17', '2023-08-03 23:16:17', 6, 176, 12.64, 1),
(172, '2023-08-03', 1036, 'Salida', 'Venta', 510, 12, '2023-08-03 23:17:30', '2023-08-03 23:17:30', 6, 177, 302.8, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `negocio`
--

CREATE TABLE `negocio` (
  `id_negocio` int(11) NOT NULL,
  `nombre_gerente` varchar(150) NOT NULL,
  `apellido_gerente` varchar(150) NOT NULL,
  `sucursal_negocio` varchar(150) NOT NULL,
  `direccion_negocio` varchar(150) NOT NULL,
  `telefono_negocio` varchar(10) NOT NULL,
  `id_caja` int(11) NOT NULL,
  `id_servicio` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_inventario` int(11) NOT NULL,
  `id_movimiento` int(11) NOT NULL,
  `id_devolucion` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre_producto` varchar(150) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta1` float DEFAULT NULL,
  `precio_venta2` float DEFAULT NULL,
  `precio_venta3` float DEFAULT NULL,
  `precio_venta4` float DEFAULT NULL,
  `codigo_qr` varchar(200) DEFAULT NULL,
  `marca_prod` varchar(150) DEFAULT NULL,
  `modelo_prod` varchar(150) DEFAULT NULL,
  `codigo_prod` varchar(150) DEFAULT NULL,
  `descripcion_prod` varchar(200) DEFAULT NULL,
  `estado_prod` tinyint(1) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre_producto`, `precio_compra`, `precio_venta1`, `precio_venta2`, `precio_venta3`, `precio_venta4`, `codigo_qr`, `marca_prod`, `modelo_prod`, `codigo_prod`, `descripcion_prod`, `estado_prod`, `id_proveedor`, `id_categoria`, `created_at`, `updated_at`) VALUES
(1, 'Samsun A31', 4, 10, 7, 0, 0, 'FC-000001', 'Samsum', 'A31', 'FC-000001', 'fadsf', 1, 2, 2, NULL, '2023-06-07 08:25:51'),
(2, 'Samsun A71', 5, 12, 8, 7, 6, 'FC-000002', 'Samsum', 'A71', 'FC-000002', 'jhfjjgjh', 1, 1, 1, NULL, '2023-06-07 08:25:59'),
(3, 'Flex de carga Samsun A30', 4, 10, 7, 4, 5, 'FC-000003', 'Samsum', 'A30', 'FC-000003', '1', 1, 1, 1, NULL, '2023-06-07 08:39:39'),
(4, 'Flex de carga Samsun A32 HG', 5, 12, 8, 0, 0, 'FC-000004', 'Samsum', 'A32 HG', 'FC-000004', '1', 0, 2, 3, NULL, '2023-06-16 07:49:45'),
(5, 'Flex de carga Samsun A70', 6, 14, 9, 0, 0, 'FC-000005', 'Samsum', 'A70', 'FC-000005', '1', 1, 1, 2, NULL, '2023-06-07 09:28:07'),
(6, 'Flex de carga Samsun A20', 4, 10, 7, 0, 0, 'FC-000006', 'Samsum', 'A20', 'FC-000006', '1', 1, 1, 1, NULL, '2023-06-09 00:45:14'),
(7, 'Flex de carga Samsun A20S', 5, 12, 8, NULL, NULL, 'FC-000007', 'Samsum', 'A20S', 'FC-000007', '1', 1, 1, 1, NULL, '2023-06-07 09:28:21'),
(8, 'Flex de carga Samsun A52', 5, 12, 8, NULL, NULL, 'FC-000008', 'Samsum', 'A52', 'FC-000008', '1', 1, 1, 1, NULL, NULL),
(9, 'Flex de carga Samsun A10', 6, 14, 9, NULL, NULL, 'FC-000009', 'Samsum', 'A10', 'FC-000009', '1', 1, 1, 1, NULL, NULL),
(10, 'Flex de carga Samsun A21S', 4, 10, 7, NULL, NULL, 'FC-000010', 'Samsum', 'A21S', 'FC-000010', '1', 3, 1, 1, NULL, NULL),
(11, 'Modulo de carga Samsun A71', 5, 10, 8, NULL, NULL, 'Samsum A71', 'Samsum', 'A71', 'MC-000001', NULL, 1, 2, 2, NULL, NULL),
(12, 'Modulo de carga Samsum A30', 6, 11, 8, NULL, NULL, 'Samsum A30', 'Samsum', 'A30', 'MC-000002', NULL, 1, 2, 2, NULL, NULL),
(13, 'Modulo de carga Samsum A51', 4, 8, 6, NULL, NULL, 'Samsum A51', 'Samsum', 'A51', 'MC-000003', NULL, 1, 2, 2, NULL, NULL),
(14, 'Modulo de carga Samsun A80', 7, 12, 9, NULL, NULL, 'Samsum A80', 'Samsum', 'A80', 'MC-000004', NULL, 1, 1, 2, NULL, NULL),
(15, 'Modulo de carga Samsun A11', 8, 15, 10, NULL, NULL, 'Samsum A11', 'Samsum', 'A11', 'MC-000005', NULL, 1, 3, 2, NULL, NULL),
(16, 'Modulo de carga Samsun A31', 5, 10, 7, NULL, NULL, 'Samsum A31', 'Samsum', 'A31', 'MC-000006', NULL, 1, 1, 2, NULL, NULL),
(17, 'Modulo de carga Samsun A12', 5, 10, 7, NULL, NULL, 'Samsum A12', 'Samsum', 'A12', 'MC-000007', NULL, 1, 2, 2, NULL, NULL),
(18, 'Modulo de carga Samsun A20S', 6, 11, 8, NULL, NULL, 'Samsum A20S', 'Samsum', 'A20S', 'MC-000008', NULL, 1, 2, 2, NULL, NULL),
(19, 'Modulo de carga Samsun A20', 6, 11, 8, 0, 0, 'MC-000009', 'Samsum', 'A20', 'MC-000009', 'XD', 0, 3, 2, NULL, '2023-06-09 06:28:33'),
(20, 'Modulo de carga Samsun A31', 7, 15, 10, NULL, NULL, 'Samsum A31', 'Samsum', 'A31', 'MC-000010', NULL, 1, 1, 2, NULL, NULL),
(21, 'Micas Glass Samsum A03S', 0.2, 1, 0.5, NULL, NULL, 'Samsum A03S', 'Mica', 'Glass', 'MiC-000001', NULL, 1, 1, 3, NULL, NULL),
(22, 'Micas Glass Huawei', 0.2, 1, 0.5, NULL, NULL, 'Huawei', 'Mica', 'Glass', 'MiC-000002', NULL, 1, 1, 3, NULL, NULL),
(23, 'Mica Glass Realme GI', 0.2, 1, 0.5, NULL, NULL, 'Realme 6I', 'Mica', 'Glass', 'MiC-000003', NULL, 1, 3, 3, NULL, NULL),
(24, 'Mica Sony Z4', 0.2, 1, 0.5, NULL, NULL, 'Sony Z4', 'Mica', NULL, 'MiC-000004', NULL, 1, 2, 3, NULL, NULL),
(25, 'Mica HTC 625', 0.21, 1, 0.5, NULL, NULL, 'HTC 625', 'Mica', NULL, 'MiC-000005', NULL, 1, 2, 3, NULL, NULL),
(26, 'Mica PHONE 6G', 0.22, 1, 0.5, NULL, NULL, 'Phone 6G', 'Mica', NULL, 'MiC-000006', NULL, 1, 3, 3, NULL, NULL),
(27, 'Mica HUAWEI P8 PLUS', 0.23, 1, 0.5, NULL, NULL, 'Huawei P8 PLUS', 'Mica', NULL, 'MiC-000007', NULL, 1, 2, 3, NULL, NULL),
(28, 'Mica HUAWEI YG3S', 0.24, 1, 0.5, NULL, NULL, 'Huawei YG3S', 'Mica', NULL, 'MiC-000008', NULL, 1, 1, 3, NULL, NULL),
(29, 'Mica HUAWEI Y52D', 0.25, 1, 0.5, NULL, NULL, 'Huawei Y52D', 'Mica', NULL, 'MiC-000009', NULL, 1, 2, 3, NULL, NULL),
(30, 'Mica SONY 21', 0.26, 1, 0.5, NULL, NULL, 'Sony 21', 'Mica', NULL, 'MiC-000010', NULL, 1, 3, 3, NULL, NULL),
(31, 'Ping de cargas', 0.2, 3, 1, NULL, NULL, 'Pi-000001', 'Ping', NULL, NULL, NULL, 1, 3, 4, NULL, NULL),
(32, 'Producto nuevo de pruebasts', 10.5, 15, 18, 20, 22, 'QR123456', 'Marca de prueba', 'Modelo de prueba', 'CP1234', 'Descripción del producto de prueba', 1, 1, 2, '2023-05-23 04:22:04', '2023-05-23 04:22:04'),
(33, 'Producto nuevo de pruebasts', 10.5, 15, 18, 20, 22, 'QR123456', 'Marca de prueba', 'Modelo de prueba', 'CP1234', 'Descripción del producto de prueba', 1, 1, 2, '2023-05-23 04:27:57', '2023-05-23 04:27:57'),
(34, 'Pañales', 10.5, 15, 18, 20, 22, 'QR123456', 'Marca de prueba', 'Modelo de prueba', 'CP1234', 'Descripción del producto de prueba', 1, 1, 2, '2023-05-23 04:30:42', '2023-05-23 04:30:42'),
(35, 'Mica Samsung A100', 0.5, 1, 0.8, 0.75, 0.9, 'MicSMA100', 'Samsung', 'A100', 'MicSMA100', 'Mica para celulares Samsung A100', 1, 1, 3, '2023-06-04 06:42:32', '2023-06-04 06:42:32'),
(36, 'adsf', 10, 20, 19, 18, 17, 'dasfad', 'adsf', 'adsf', 'dasfad', 'asdfdsfsdaf', 0, 2, 1, '2023-06-05 10:01:33', '2023-06-10 20:27:34'),
(37, 'adsfadsf', 1, 1, 1, 1, 1, 'dfads', 'adsfadsf', 'asdfdsaf', 'dfads', '11111111', 0, 2, 1, '2023-06-05 23:20:05', '2023-06-10 20:27:40'),
(38, 'ASD', 1, 2, 3, 4, 5, 'HHN1', 'Sandsad', 'Cargador', 'HHN1', 'adfdsfadsfdsf', 0, 2, 15, '2023-06-09 03:48:22', '2023-06-10 20:27:47'),
(39, 'abc', 12, 15, 17, 13, 5.5, 'FC-000009', 'abc', 'abc', 'FC-000009', 'sadasd', 1, 3, 5, '2023-06-27 04:04:26', '2023-06-27 04:04:59'),
(40, 'Prueba1996', 5, 9, 8, 7, 6, 'Prueba', 'Prueba1996', 'Prueba1996', 'Prueba', 'sdasdsad', 1, 6, 3, '2023-07-25 01:06:51', '2023-07-25 01:06:51'),
(41, 'ProductoX', 1, 5, 4, 3, 2, '0001', 'asdfadsf', 'afadf', '0001', 'afdsfsadf', 1, 2, 3, '2023-07-27 17:05:36', '2023-07-27 17:05:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `nombre_prove` varchar(150) NOT NULL,
  `apellido_prove` varchar(150) NOT NULL,
  `empresa_prove` varchar(200) NOT NULL,
  `cargo_prove` varchar(150) NOT NULL,
  `ciudad_prove` varchar(150) NOT NULL,
  `celular_prove` varchar(10) NOT NULL,
  `cedula_prove` varchar(13) NOT NULL,
  `estado_prove` tinyint(1) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `nombre_prove`, `apellido_prove`, `empresa_prove`, `cargo_prove`, `ciudad_prove`, `celular_prove`, `cedula_prove`, `estado_prove`, `updated_at`, `created_at`) VALUES
(1, 'Andres', 'Arriaga', 'Full Battery', 'Gerente', 'Santo Domingo', '9825623542', '', 1, '2023-06-13 04:17:28', NULL),
(2, 'Rene', 'Sanchez', 'Mega', 'Gerente', 'Santo Domingo', '9762081543', '', 1, '2023-06-13 04:18:15', NULL),
(3, 'Juan', 'Lopez', 'Coperat', 'Vendedor', 'Guayaquil', '9815549620', '', 1, '2023-06-13 04:18:36', NULL),
(4, 'Maria', 'Espinoza', 'Nueva empresa1', 'Director segundo', 'Pueblo nuevo', '0256987462', '1234899991', 1, '2023-07-27 18:10:34', '2023-06-09 05:24:16'),
(5, 'Nuevo nombre1', 'Nuevo apellido1', 'Nueva empresa1', 'Nuevo cargo1', 'Nueva ciudad1', '0256987461', '1234899991', 1, '2023-07-22 21:30:04', '2023-06-09 05:25:45'),
(6, 'Christian', 'Perez', 'Espe', 'Docente Ingles', 'Santo domingo', '0123456789', '3698756666', 1, '2023-07-27 18:11:57', '2023-06-09 06:37:28'),
(7, 'daf', 'dasfads', 'adsfads', 'adsfadsf', 'dsaf', '0123456788', '', 0, '2023-06-09 08:10:17', '2023-06-09 07:16:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `estado_rol` tinyint(1) NOT NULL,
  `tipo_rol` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `estado_rol`, `tipo_rol`) VALUES
(1, 1, 'Administrador'),
(2, 1, 'General');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio_tecnico`
--

CREATE TABLE `servicio_tecnico` (
  `id_servicio` int(11) NOT NULL,
  `fecha_ingreso_serv` date DEFAULT NULL,
  `fecha_salida_serv` date DEFAULT NULL,
  `numero_comprobante` int(11) NOT NULL,
  `descripcion_serv` varchar(200) DEFAULT NULL,
  `estado_serv` tinyint(1) DEFAULT NULL,
  `precio_serv` float NOT NULL,
  `precio_repuestos` float NOT NULL,
  `total_servicio` float NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_transacciones` int(11) DEFAULT NULL,
  `ganancia_serv` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `servicio_tecnico`
--

INSERT INTO `servicio_tecnico` (`id_servicio`, `fecha_ingreso_serv`, `fecha_salida_serv`, `numero_comprobante`, `descripcion_serv`, `estado_serv`, `precio_serv`, `precio_repuestos`, `total_servicio`, `id_usuario`, `created_at`, `updated_at`, `id_cliente`, `id_transacciones`, `ganancia_serv`) VALUES
(1, '2023-06-22', NULL, 0, 'Reparacion de Mica SM', 1, 5, 0, 0, 1, NULL, NULL, 6, 7, NULL),
(2, '2023-06-23', '2023-06-26', 0, 'Reparación de corazón roto :c ', 1, 100, 0, 0, 1, NULL, NULL, 2, 7, NULL),
(4, '2023-06-27', NULL, 0, 'Reparar la vida misma', 1, 100, 0, 0, 1, '2023-06-28 02:33:16', '2023-06-28 02:33:16', 1, 12, NULL),
(5, '2023-06-27', NULL, 1, 'Reparar la vida misma', 1, 100, 0, 0, 1, '2023-06-28 04:14:41', '2023-06-28 04:14:41', 1, 12, NULL),
(6, '2023-06-27', NULL, 1, 'Reparar XD', 1, 5, 7, 0, 2, '2023-06-28 04:36:29', '2023-06-28 04:36:29', 2, 11, NULL),
(7, '2023-06-27', NULL, 3, 'Reparar cabeza', 1, 5, 7, 12, 1, '2023-06-28 06:17:52', '2023-06-28 06:17:52', 5, 10, NULL),
(8, '2023-06-28', '2023-06-28', 4, 'Indefinido', 0, 15, 30, 45, 1, '2023-06-28 21:10:05', '2023-06-28 21:10:05', 6, 14, NULL),
(9, '2023-06-28', '2023-06-28', 5, 'Indefinido', 0, 10, 26, 36, 1, '2023-06-28 22:24:08', '2023-06-28 22:24:08', 1, 17, NULL),
(10, '2023-07-01', '2023-07-01', 6, 'Indefinido', 0, 10, 57, 67, 1, '2023-07-01 05:14:40', '2023-07-01 05:14:40', 6, 19, NULL),
(11, '2023-07-09', '2023-07-09', 7, 'Reparación de celular RP', 0, 10, 30, 40, 1, '2023-07-09 00:18:25', '2023-07-09 00:18:25', 6, 68, 6),
(12, '2023-02-22', '2023-02-22', 8, 'xd', 0, 10, 231, 241, 1, '2023-07-11 00:22:09', '2023-07-11 00:22:09', 1, 74, 123),
(13, '2023-07-13', '2023-07-17', 9, 'suelda de pin de carga de teléfono SM20S', 1, 10, 12, 22, 1, '2023-07-13 03:02:48', '2023-07-13 03:02:48', 7, 78, 7),
(14, '2023-07-26', '2023-07-26', 10, '123131223', 0, 10, 58, 68, 1, '2023-07-26 02:21:27', '2023-07-26 02:21:27', 1, 82, 22),
(15, '2023-07-26', '2023-07-26', 11, 'servicio técnico  sin repuesto', 0, 10, 0, 10, 1, '2023-07-26 19:46:41', '2023-07-26 19:46:41', 6, 84, 0),
(16, '2023-07-26', '2023-07-26', 12, 'Reparacion de abc', 0, 10, 15, 25, 1, '2023-07-26 19:48:14', '2023-07-26 19:48:14', 6, 85, 3),
(17, '2023-07-26', '2023-07-26', 13, 'repuesto', 0, 15, 55, 70, 1, '2023-07-26 19:53:19', '2023-07-26 19:53:19', 6, 86, 15),
(18, '2023-07-26', '2023-07-26', 14, 'fdsfasgfdagdsfg', 0, 30, 0, 30, 1, '2023-07-26 19:55:13', '2023-07-26 19:55:13', 6, 87, 0),
(19, '2023-07-26', '2023-07-26', 15, 'dsfadsgfdsagdsg', 0, 40, 0, 40, 1, '2023-07-26 20:06:27', '2023-07-26 20:06:27', 6, 89, 0),
(20, '2023-07-26', '2023-07-26', 16, '60', 0, 60, 0, 60, 1, '2023-07-26 20:19:33', '2023-07-26 20:19:33', 6, 90, 0),
(21, '2023-07-26', '2023-07-26', 17, 'se reparo un teléfono sin repuestos', 0, 10, 0, 10, 1, '2023-07-26 20:23:34', '2023-07-26 20:23:34', 6, 92, 0),
(22, '2023-07-26', '2023-07-26', 18, 'dsafadsf', 0, 10, 15, 25, 1, '2023-07-26 20:35:36', '2023-07-26 20:35:36', 1, 94, 3),
(23, '2023-07-26', '2023-07-26', 19, 'Indefinido', 0, 25, 30, 55, 1, '2023-07-26 20:38:09', '2023-07-26 20:38:09', 1, 95, 6),
(24, '2023-07-26', '2023-07-26', 20, 'Indefinido', 1, 25, 30, 55, 1, '2023-07-26 20:39:47', '2023-07-26 20:39:47', 6, 96, 6),
(25, '2023-07-26', '2023-07-26', 21, 'Indefinido', 0, 10, 35, 45, 1, '2023-07-26 23:11:02', '2023-07-26 23:11:02', 1, 98, 9.8),
(26, '2023-07-26', '2023-07-26', 22, 'Indefinido', 1, 10, 30, 40, 1, '2023-07-27 03:10:30', '2023-07-27 03:10:30', 1, 100, 6),
(27, '2023-07-26', '2023-07-26', 23, 'Indefinido', 1, 15, 60, 75, 1, '2023-07-27 03:14:32', '2023-07-27 03:14:32', 1, 101, 12),
(28, '2023-07-26', '2023-07-26', 24, 'Indefinido', 1, 25, 75, 100, 1, '2023-07-27 03:17:18', '2023-07-27 03:17:18', 2, 102, 15),
(29, '2023-07-26', '2023-07-26', 25, 'Indefinido', 1, 20, 15, 35, 1, '2023-07-27 03:18:55', '2023-07-27 03:18:55', 6, 103, 3),
(30, '2023-07-26', '2023-07-26', 26, 'Indefinido', 1, 10, 42, 52, 1, '2023-07-27 03:21:42', '2023-07-27 03:21:42', 6, 104, 24),
(31, '2023-07-27', '2023-07-27', 27, 'Se realiza un servicio técnico sin repuesto', 1, 10, 0, 10, 1, '2023-07-27 15:21:57', '2023-07-27 15:21:57', 6, 105, 0),
(32, '2023-07-27', '2023-07-27', 28, 'Indefinido', 1, 10, 30, 40, 1, '2023-07-27 15:28:50', '2023-07-27 15:28:50', 6, 106, 6),
(33, '2023-06-27', NULL, 3, 'Reparar cabeza', 1, 5, 7, 12, 1, '2023-07-27 18:48:11', '2023-07-27 18:48:11', 5, 10, NULL),
(34, '2023-07-27', '2023-07-27', 29, 'dasfasdf', 1, 5, 0, 5, 21, '2023-07-27 23:10:09', '2023-07-27 23:10:09', 6, 114, 0),
(35, '2023-07-27', '2023-07-27', 30, 'egerwgwerg', 0, 15, 0, 15, 21, '2023-07-27 23:10:33', '2023-07-27 23:10:33', 6, 115, 0),
(36, '2023-07-27', '2023-07-27', 31, 'lllllll', 1, 13, 0, 13, 21, '2023-07-27 23:38:20', '2023-07-27 23:38:20', 6, 122, 0),
(37, '2023-07-27', '2023-07-27', 32, 'fdgdfgd pendiente', 1, 3, 0, 3, 21, '2023-07-28 01:25:37', '2023-07-28 01:25:37', 6, 123, 0),
(38, '2023-07-27', '2023-07-27', 33, 'nnnnn cancelado', 1, 6, 24, 30, 21, '2023-07-28 01:26:22', '2023-07-28 01:39:52', 6, 124, 14),
(39, '2023-07-27', '2023-07-27', 34, 'estado pendiente', 0, 10, 0, 10, 21, '2023-07-28 02:05:50', '2023-07-28 02:05:50', 6, 125, 0),
(40, '2023-07-28', '2023-07-28', 35, 'Se arregla celular Samsung A20s sin repuesto', 0, 30, 0, 30, 21, '2023-07-29 01:23:52', '2023-07-29 01:23:52', 6, 126, 0),
(41, '2023-07-29', '2023-07-29', 36, 'Se genero una reparación de celular si repuesto', 1, 32, 0, 32, 19, '2023-07-29 06:52:00', '2023-07-29 06:52:00', 6, 134, 0),
(42, '2023-07-31', '2023-07-31', 37, 'Cambio de Mica', 1, 4, 1, 5, 21, '2023-07-31 16:16:04', '2023-07-31 16:16:04', 6, 146, 0.77),
(43, '2023-12-28', '2023-12-28', 38, 'reparacion mas repuesto', 1, 10, 12, 22, 21, '2023-12-29 00:27:12', '2023-12-29 00:27:12', 6, 147, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio_tecnico_producto`
--

CREATE TABLE `servicio_tecnico_producto` (
  `id_servicio_tecnico_producto` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `valor_unitario` float DEFAULT NULL,
  `id_inventario` int(11) DEFAULT NULL,
  `id_servicio` int(11) NOT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ganancia_serv_prod` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `servicio_tecnico_producto`
--

INSERT INTO `servicio_tecnico_producto` (`id_servicio_tecnico_producto`, `cantidad`, `valor_unitario`, `id_inventario`, `id_servicio`, `id_producto`, `created_at`, `updated_at`, `ganancia_serv_prod`) VALUES
(1, 1, 10, 9, 1, 9, NULL, NULL, 0),
(2, 1, 12, 10, 1, 10, NULL, NULL, 0),
(3, 1, 10, 9, 1, 9, '2023-06-28 03:10:21', '2023-06-28 03:10:21', 0),
(7, 1, 12, 7, 10, 7, '2023-07-01 05:14:43', '2023-07-01 05:14:43', 0),
(8, 2, 15, 39, 11, 39, '2023-07-09 00:18:26', '2023-07-09 00:18:26', 3),
(9, 3, 17, 39, 12, 39, '2023-07-11 00:22:10', '2023-07-11 00:22:10', 5),
(10, 18, 10, 6, 12, 6, '2023-07-11 00:22:11', '2023-07-11 00:22:11', 6),
(11, 1, 12, 7, 13, 7, '2023-07-13 03:02:50', '2023-07-13 03:02:50', 7),
(12, 2, 14, 9, 14, 9, '2023-07-26 02:21:28', '2023-07-26 02:21:28', 8),
(13, 2, 15, 39, 14, 39, '2023-07-26 02:21:29', '2023-07-26 02:21:29', 3),
(14, 0, NULL, NULL, 14, NULL, '2023-07-26 02:22:25', '2023-07-26 02:22:25', 0),
(15, 1, 15, 39, 16, 39, '2023-07-26 19:48:15', '2023-07-26 19:48:15', 3),
(16, 3, 15, 39, 17, 39, '2023-07-26 19:53:21', '2023-07-26 19:53:21', 3),
(17, 1, 10, 3, 17, 3, '2023-07-26 19:53:21', '2023-07-26 19:53:21', 6),
(18, 1, 15, 39, 22, 39, '2023-07-26 20:35:37', '2023-07-26 20:35:37', 3),
(19, 2, 15, 39, 23, 39, '2023-07-26 20:38:11', '2023-07-26 20:38:11', 3),
(20, 2, 15, 39, 24, 39, '2023-07-26 20:39:48', '2023-07-26 20:39:48', 3),
(21, 2, 15, 39, 25, 39, '2023-07-26 23:11:03', '2023-07-26 23:11:03', 3),
(22, 5, 1, 28, 25, 28, '2023-07-26 23:11:04', '2023-07-26 23:11:04', 0.76),
(23, 2, 15, 39, 26, 39, '2023-07-27 03:10:32', '2023-07-27 03:10:32', 3),
(24, 4, 15, 39, 27, 39, '2023-07-27 03:14:34', '2023-07-27 03:14:34', 3),
(25, 5, 15, 39, 28, 39, '2023-07-27 03:17:19', '2023-07-27 03:17:19', 3),
(26, 1, 15, 39, 29, 39, '2023-07-27 03:18:57', '2023-07-27 03:18:57', 3),
(27, 3, 14, 9, 30, 9, '2023-07-27 03:21:43', '2023-07-27 03:21:43', 8),
(28, 2, 15, 39, 32, 39, '2023-07-27 15:28:51', '2023-07-27 15:28:51', 3),
(29, 2, 12, 7, 38, 7, '2023-07-28 01:26:23', '2023-07-28 01:26:23', 7),
(30, 1, 1, 27, 42, 27, '2023-07-31 16:16:05', '2023-07-31 16:16:05', 0.77),
(31, 1, 12, 7, 43, 7, '2023-12-29 00:27:13', '2023-12-29 00:27:13', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transacciones`
--

CREATE TABLE `transacciones` (
  `id_transacciones` int(11) NOT NULL,
  `tipo_transaccion` varchar(100) NOT NULL,
  `tipo_pago` varchar(100) NOT NULL,
  `monto_transaccion` float NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fecha_t` date NOT NULL,
  `motivo_transaccion` varchar(50) NOT NULL,
  `estado_transaccion` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `transacciones`
--

INSERT INTO `transacciones` (`id_transacciones`, `tipo_transaccion`, `tipo_pago`, `monto_transaccion`, `descripcion`, `created_at`, `updated_at`, `fecha_t`, `motivo_transaccion`, `estado_transaccion`) VALUES
(6, 'Salida', 'Efectivo', -48, 'dfasdfdsfads', NULL, NULL, '2023-07-27', 'Gasto', 1),
(7, 'Entrada', 'Transferencia', 27, 'Indefinido', '2023-06-16 05:29:21', '2023-06-16 05:29:21', '0000-00-00', '', 1),
(8, 'Entrada', 'Transferencia', 42, 'Indefinido', '2023-06-16 05:31:31', '2023-06-16 05:31:31', '0000-00-00', '', 1),
(9, 'Entrada', 'Transferencia', 18, 'Indefinido', '2023-06-16 05:37:21', '2023-06-16 05:37:21', '0000-00-00', '', 1),
(10, 'Entrada', 'Efectivo', 37, 'Indefinido', '2023-06-16 06:41:25', '2023-06-16 06:41:25', '0000-00-00', '', 1),
(11, 'Entrada', 'Efectivo', 10, 'Indefinido', '2023-06-16 06:44:47', '2023-06-16 06:44:47', '0000-00-00', '', 1),
(12, 'Entrada', 'Efectivo', 22, 'Indefinido', '2023-06-16 07:52:22', '2023-06-16 07:52:22', '0000-00-00', '', 1),
(13, 'Entrada', 'Efectivo', 40, 'Indefinido', '2023-06-28 21:07:36', '2023-06-28 21:07:36', '0000-00-00', '', 1),
(14, 'Entrada', 'Efectivo', 45, 'Indefinido', '2023-06-28 21:09:56', '2023-06-28 21:09:56', '0000-00-00', '', 1),
(15, 'Entrada', 'Efectivo', 30, 'Indefinido', '2023-06-28 21:49:14', '2023-06-28 21:49:14', '0000-00-00', '', 1),
(16, 'Entrada', 'Transferencia', 44, 'Indefinido', '2023-06-28 22:19:08', '2023-06-28 22:19:08', '0000-00-00', '', 1),
(17, 'Entrada', 'Transferencia', 36, 'Indefinido', '2023-06-28 22:23:36', '2023-06-28 22:23:36', '0000-00-00', '', 1),
(18, 'Entrada', 'Efectivo', 30, 'Indefinido', '2023-06-28 22:44:01', '2023-06-28 22:44:01', '0000-00-00', '', 1),
(19, 'Entrada', 'Efectivo', 67, 'Indefinido', '2023-07-01 05:14:25', '2023-07-01 05:14:25', '0000-00-00', '', 1),
(20, 'Entrada', 'Tarjeta de crédito', 100.5, 'Venta de producto A', '2023-07-01 16:23:41', '2023-07-01 16:23:41', '2023-06-30', '', 1),
(21, 'Entrada', 'Transferencia bancaria', 250.2, 'Compra de producto B', '2023-07-01 16:23:41', '2023-07-01 16:23:41', '2023-06-29', '', 1),
(22, 'Entrada', 'Efectivo', 50.75, 'Venta de producto C', '2023-07-01 16:23:41', '2023-07-01 16:23:41', '2023-06-28', '', 1),
(23, 'Entrada', 'Efectivo', 10.75, 'Venta de producto C', '2023-07-01 16:23:41', '2023-07-01 16:23:41', '2023-06-14', '', 1),
(24, 'Entrada', 'AAA', 10.5, 'Venta de producto', '2023-07-01 16:33:36', '2023-07-01 16:33:36', '2023-06-01', '', 1),
(25, 'Entrada', 'AAA', 10.5, 'Venta de producto', '2023-07-01 16:33:36', '2023-07-01 16:33:36', '2023-06-02', '', 1),
(26, 'Entrada', 'AAA', 10.5, 'Venta de producto', '2023-07-01 16:33:36', '2023-07-01 16:33:36', '2023-06-05', '', 1),
(27, 'Entrada', 'AAA', 10.5, 'Venta de producto', '2023-07-01 16:33:36', '2023-07-01 16:33:36', '2023-06-07', '', 1),
(28, 'Entrada', 'AAA', 10.5, 'Venta de producto', '2023-07-01 16:33:36', '2023-07-01 16:33:36', '2023-06-08', '', 1),
(29, 'Entrada', 'AAA', 10.5, 'Venta de producto', '2023-07-01 16:33:36', '2023-07-01 16:33:36', '2023-06-09', '', 1),
(30, 'Entrada', 'AAA', 10.5, 'Venta de producto', '2023-07-01 16:33:36', '2023-07-01 16:33:36', '2023-06-12', '', 1),
(31, 'Entrada', 'AAA', 10.5, 'Venta de producto', '2023-07-01 16:33:36', '2023-07-01 16:33:36', '2023-06-14', '', 1),
(32, 'Entrada', 'AAA', 10.5, 'Venta de producto', '2023-07-01 16:33:36', '2023-07-01 16:33:36', '2023-06-15', '', 1),
(33, 'Entrada', 'AAA', 10.5, 'Venta de producto', '2023-07-01 16:33:36', '2023-07-01 16:33:36', '2023-06-16', '', 1),
(34, 'Entrada', 'AAA', 10.5, 'Venta de producto', '2023-07-01 16:33:36', '2023-07-01 16:33:36', '2023-06-17', '', 1),
(35, 'Entrada', 'AAA', 10.5, 'Venta de producto', '2023-07-01 16:33:36', '2023-07-01 16:33:36', '2023-06-18', '', 1),
(36, 'Entrada', 'AAA', 10.5, 'Venta de producto', '2023-07-01 16:33:36', '2023-07-01 16:33:36', '2023-06-19', '', 1),
(37, 'Entrada', 'Efectivo', 20.5, 'Venta de producto D', '2023-07-01 17:20:17', '2023-07-01 17:20:17', '2023-05-01', '', 1),
(38, 'Entrada', 'Transferencia', 250.2, 'Compra de producto E', '2023-07-01 17:20:17', '2023-07-01 17:20:17', '2023-06-02', '', 1),
(39, 'Entrada', 'Efectivo', 75.1, 'Venta de producto F', '2023-07-01 17:20:17', '2023-07-01 17:20:17', '2023-05-03', '', 1),
(40, 'Entrada', 'Transferencia', 23, 'Venta de producto A', '2023-07-01 17:20:17', '2023-07-01 17:20:17', '2023-05-08', '', 1),
(41, 'Entrada', 'Efectivo', 150, 'Venta de producto H', '2023-07-01 17:20:17', '2023-07-01 17:20:17', '2023-05-09', '', 1),
(42, 'Entrada', 'Transferencia', 120, 'Venta de producto X', '2023-07-01 17:20:17', '2023-07-01 17:20:17', '2023-05-10', '', 1),
(43, 'Entrada', 'Efectivo', 83, 'Venta de producto P', '2023-07-01 17:20:17', '2023-07-01 17:20:17', '2023-05-15', '', 1),
(44, 'Entrada', 'Efectivo', 45, 'Venta de producto XP', '2023-07-01 17:20:17', '2023-07-01 17:20:17', '2023-05-16', '', 1),
(45, 'Entrada', 'Transferencia', 110, 'Venta de producto HO', '2023-07-01 17:20:17', '2023-07-01 17:20:17', '2023-05-17', '', 1),
(46, 'Entrada', 'Efectivo', 120, 'Venta de producto HX', '2023-07-01 17:20:17', '2023-07-01 17:20:17', '2023-05-22', '', 1),
(47, 'Entrada', 'Transferencia', 58, 'Venta de producto HP', '2023-07-01 17:20:17', '2023-07-01 17:20:17', '2023-05-23', '', 1),
(48, 'Entrada', 'Efectivo', 86, 'Venta de producto TG', '2023-07-01 17:20:17', '2023-07-01 17:20:17', '2023-05-24', '', 1),
(49, 'Entrada', 'Efectivo', 56, 'Venta de producto PF', '2023-07-01 17:20:17', '2023-07-01 17:20:17', '2023-05-28', '', 1),
(50, 'Entrada', 'Transferencia', 10, 'Venta de producto DT', '2023-07-01 17:20:17', '2023-07-01 17:20:17', '2023-05-29', '', 1),
(51, 'Entrada', 'Efectivo', 50, 'Venta de producto YS', '2023-07-01 17:20:17', '2023-07-01 17:20:17', '2023-05-30', '', 1),
(52, 'Entrada', 'Transferencia', 54, 'Indefinido', '2023-07-02 01:25:01', '2023-07-02 01:25:01', '2023-07-01', '', 1),
(53, 'Entrada', 'Transferencia', 44, 'Indefinido', '2023-07-02 01:34:10', '2023-07-02 01:34:10', '2023-07-01', '', 1),
(54, 'Entrada', 'Efectivo', 59, 'Indefinido', '2023-07-02 01:38:26', '2023-07-02 01:38:26', '2023-07-01', '', 1),
(55, 'Entrada', 'Transferencia', 44, 'Indefinido', '2023-07-02 01:50:44', '2023-07-02 01:50:44', '2023-07-01', '', 1),
(56, 'Entrada', 'Transferencia', 29, 'Indefinido', '2023-07-02 03:32:44', '2023-07-02 03:32:44', '2023-07-01', '', 1),
(57, 'Entrada', 'Efectivo', 45, 'Indefinido', '2023-07-02 04:10:28', '2023-07-02 04:10:28', '2023-07-01', '', 1),
(58, 'Entrada', 'Transferencia', 29, 'Indefinido', '2023-07-02 04:14:11', '2023-07-02 04:14:11', '2023-07-01', '', 1),
(59, 'Entrada', 'Transferencia', 29, 'Indefinido', '2023-07-02 04:19:54', '2023-07-02 04:19:54', '2023-07-01', '', 1),
(60, 'Entrada', 'Transferencia', 45, 'Indefinido', '2023-07-02 04:38:11', '2023-07-02 04:38:11', '2023-07-01', '', 1),
(61, 'Entrada', 'Transferencia', 43, 'Indefinido', '2023-07-02 04:47:20', '2023-07-02 04:47:20', '2023-07-01', '', 1),
(62, 'Entrada', 'Transferencia', 31, 'Indefinido', '2023-07-05 05:07:59', '2023-07-05 05:07:59', '2023-07-05', '', 1),
(63, 'Entrada', 'Efectivo', 15, 'Indefinido', '2023-07-05 05:09:56', '2023-07-05 05:09:56', '2023-07-05', '', 1),
(64, 'Entrada', 'Transferencia', 120, 'Indefinido', '2023-07-05 06:39:14', '2023-07-05 06:39:14', '2023-07-05', '', 1),
(65, 'Entrada', 'Transferencia', 150, 'Indefinido', '2023-07-05 06:40:22', '2023-07-05 06:40:22', '2023-07-05', '', 1),
(66, 'Entrada', 'Transferencia', 15, 'Indefinido', '2023-07-05 06:45:12', '2023-07-05 06:45:12', '2023-07-05', '', 1),
(67, 'Entrada', 'Transferencia', 30, 'XD', '2023-07-08 23:14:49', '2023-07-08 23:14:49', '2023-07-08', '', 1),
(68, 'Entrada', 'Transferencia', 40, 'xd', '2023-07-09 00:18:18', '2023-07-09 00:18:18', '2023-07-09', '', 1),
(69, 'Entrada', 'Efectivo', 72, 'Indefinido', '2023-07-09 01:38:24', '2023-07-09 01:38:24', '2023-07-09', '', 1),
(70, 'Entrada', 'Transferencia', 195, 'Indefinido', '2023-07-10 22:04:57', '2023-07-10 22:04:57', '2023-12-20', '', 1),
(71, 'Entrada', 'Efectivo', 214, 'Indefinido', '2023-07-10 22:05:47', '2023-07-10 22:05:47', '2023-12-14', '', 1),
(72, 'Entrada', 'Transferencia', 640, 'Indefinido', '2023-07-10 22:07:04', '2023-07-10 22:07:04', '2023-12-28', '', 1),
(73, 'Entrada', 'Transferencia', 377, 'Indefinido', '2023-07-11 00:19:52', '2023-07-11 00:19:52', '2023-02-16', '', 1),
(74, 'Entrada', 'Efectivo', 241, 'asfadfa', '2023-07-11 00:22:04', '2023-07-11 00:22:04', '2023-02-22', '', 1),
(75, 'Entrada', 'Transferencia', 570, 'Indefinido', '2023-07-11 01:36:43', '2023-07-11 01:36:43', '2023-01-19', '', 1),
(76, 'Entrada', 'Transferencia', 136, 'Indefinido', '2023-07-13 02:11:44', '2023-07-13 02:11:44', '2023-07-13', '', 1),
(77, 'Entrada', 'Transferencia', 87, 'Indefinido', '2023-07-13 02:12:47', '2023-07-13 02:12:47', '2023-07-13', '', 1),
(78, 'Entrada', 'Transferencia', 22, 'Indefinido', '2023-07-13 03:02:25', '2023-07-13 03:02:25', '2023-07-13', '', 1),
(79, 'Entrada', 'Efectivo', 30, 'Indefinido', '2023-07-24 03:30:13', '2023-07-24 03:32:55', '2023-07-24', '', 1),
(80, 'Entrada', 'Transferencia', 50, 'Indefinido', '2023-07-24 03:31:33', '2023-07-24 03:33:07', '2023-07-24', '', 1),
(81, 'Entrada', 'Efectivo', 73, 'Indefinido', '2023-07-26 02:03:50', '2023-07-26 02:03:50', '2023-07-26', '', 1),
(82, 'Entrada', 'Transferencia', 68, 'Indefinido', '2023-07-26 02:20:07', '2023-07-26 02:20:07', '2023-07-26', '', 1),
(83, 'Entrada', 'Transferencia', 10, 'Indefinido', '2023-07-26 19:42:32', '2023-07-26 19:42:32', '2023-07-26', '', 1),
(84, 'Entrada', 'Transferencia', 10, 'Indefinido', '2023-07-26 19:46:30', '2023-07-26 19:46:30', '2023-07-26', '', 1),
(85, 'Entrada', 'Efectivo', 25, 'Indefinido', '2023-07-26 19:48:10', '2023-07-26 19:48:10', '2023-07-26', '', 1),
(86, 'Entrada', 'Efectivo', 70, 'Indefinido', '2023-07-26 19:53:08', '2023-07-26 19:53:08', '2023-07-26', '', 1),
(87, 'Entrada', 'Transferencia', 30, 'Indefinido', '2023-07-26 19:55:08', '2023-07-26 19:55:08', '2023-07-26', '', 1),
(88, 'Entrada', 'Transferencia', 45, 'Indefinido', '2023-07-26 20:04:16', '2023-07-26 20:04:16', '2023-07-26', '', 1),
(89, 'Entrada', 'Transferencia', 40, 'Indefinido', '2023-07-26 20:06:16', '2023-07-26 20:06:16', '2023-07-26', '', 1),
(90, 'Entrada', 'Transferencia', 60, 'Indefinido', '2023-07-26 20:19:15', '2023-07-26 20:19:15', '2023-07-26', '', 1),
(91, 'Entrada', 'Transferencia', 0, 'sgdfgfds', '2023-07-26 20:20:32', '2023-07-26 20:20:32', '2023-07-26', '', 1),
(92, 'Entrada', 'Transferencia', 10, 'dfasdfdsaf', '2023-07-26 20:23:04', '2023-07-26 20:23:04', '2023-07-26', '', 1),
(93, 'Entrada', 'Transferencia', 10, 'Indefinido', '2023-07-26 20:28:16', '2023-07-26 20:28:16', '2023-07-26', '', 1),
(94, 'Entrada', 'Transferencia', 25, 'Indefinido', '2023-07-26 20:34:35', '2023-07-26 20:34:35', '2023-07-26', '', 1),
(95, 'Entrada', 'Transferencia', 55, 'Indefinido', '2023-07-26 20:38:03', '2023-07-26 20:38:03', '2023-07-26', '', 1),
(96, 'Entrada', 'Transferencia', 55, 'Indefinido', '2023-07-26 20:39:32', '2023-07-26 20:39:32', '2023-07-26', '', 1),
(97, 'Entrada', 'Transferencia', 15, 'Indefinido', '2023-07-26 23:00:49', '2023-07-26 23:00:49', '2023-07-26', '', 1),
(98, 'Entrada', 'Transferencia', 40, 'Indefinido', '2023-07-26 23:10:10', '2023-07-26 23:10:10', '2023-07-26', '', 1),
(99, 'Entrada', 'Transferencia', 50, 'Indefinido', '2023-07-27 03:02:22', '2023-07-27 03:02:22', '2023-07-26', '', 1),
(100, 'Entrada', 'Efectivo', 40, 'Indefinido', '2023-07-27 03:10:18', '2023-07-27 03:10:18', '2023-07-26', '', 1),
(101, 'Entrada', 'Transferencia', 75, 'Indefinido', '2023-07-27 03:14:28', '2023-07-27 03:14:28', '2023-07-26', '', 1),
(102, 'Entrada', 'Transferencia', 100, 'Indefinido', '2023-07-27 03:17:08', '2023-07-27 03:17:08', '2023-07-26', '', 1),
(103, 'Entrada', 'Efectivo', 35, 'Indefinido', '2023-07-27 03:18:50', '2023-07-27 03:18:50', '2023-07-26', '', 1),
(104, 'Entrada', 'Efectivo', 52, 'Indefinido', '2023-07-27 03:21:18', '2023-07-27 03:21:18', '2023-07-26', '', 1),
(105, 'Entrada', 'Transferencia', 10, 'Indefinido', '2023-07-27 15:21:46', '2023-07-27 15:21:46', '2023-07-27', '', 1),
(106, 'Entrada', 'Efectivo', 40, 'Indefinido', '2023-07-27 15:28:38', '2023-07-27 15:28:38', '2023-07-27', '', 1),
(107, 'Salida', 'Efectivo', -5, 'Almuerzos', '2023-07-27 19:46:52', '2023-07-27 19:46:52', '2023-07-27', 'Gasto', 1),
(108, 'Salida', 'Efectivo', -10, 'Merienda', '2023-07-27 19:48:42', '2023-07-27 19:48:42', '2023-07-27', 'Gasto', 1),
(109, 'Entrada', 'Efectivo', 15, 'nose', '2023-07-27 19:53:05', '2023-07-27 19:53:05', '2023-07-27', '', 1),
(110, 'Entrada', 'Transferencia', 24, 'Indefinido', '2023-07-27 20:04:45', '2023-07-27 20:04:45', '2023-07-27', '', 1),
(111, 'Entrada', 'Efectivo', 56, 'Indefinido', '2023-07-27 20:08:24', '2023-07-27 20:08:24', '2023-07-27', '', 1),
(112, 'Entrada', 'Transferencia', 60, 'Indefinido', '2023-07-27 20:10:30', '2023-07-27 20:10:30', '2023-07-27', '', 1),
(113, 'Entrada', 'Transferencia', 10, 'Indefinido', '2023-07-27 23:02:57', '2023-07-27 23:02:57', '2023-07-27', '', 1),
(114, 'Entrada', 'Efectivo', 5, 'Indefinido', '2023-07-27 23:10:05', '2023-07-27 23:10:05', '2023-07-27', '', 1),
(115, 'Entrada', 'Transferencia', 15, 'Indefinido', '2023-07-27 23:10:30', '2023-07-27 23:10:30', '2023-07-27', '', 1),
(116, 'Salida', 'Efectivo', -30, 'Compra de Articulo de oficina', '2023-07-27 23:12:01', '2023-07-27 23:12:01', '2023-07-27', 'Gasto', 1),
(117, 'Salida', 'Efectivo', -17, 'Taxis', '2023-07-27 23:16:33', '2023-07-27 23:16:33', '2023-07-27', 'Gasto', 1),
(118, 'Salida', 'Efectivo', -36, 'Viaticos', '2023-07-27 23:18:48', '2023-07-27 23:18:48', '2023-07-27', 'Gasto', 1),
(119, 'Entrada', 'Transferencia', 120, 'Indefinido', '2023-07-27 23:31:56', '2023-07-27 23:31:56', '2023-07-27', '', 1),
(120, 'Entrada', 'Efectivo', 120, 'Indefinido', '2023-07-27 23:33:16', '2023-07-27 23:33:16', '2023-07-27', '', 1),
(121, 'Entrada', 'Efectivo', 10, 'Venta', '2023-07-27 23:37:05', '2023-07-27 23:37:05', '2023-07-27', '', 1),
(122, 'Entrada', 'Transferencia', 13, 'Servicio Técnico', '2023-07-27 23:38:16', '2023-07-27 23:38:16', '2023-07-27', '', 1),
(123, 'Entrada', 'Transferencia', 3, 'Servicio Técnico', '2023-07-28 01:25:25', '2023-07-28 01:25:25', '2023-07-27', '', 1),
(124, 'Entrada', 'Efectivo', 30, 'Servicio Técnico', '2023-07-28 01:26:16', '2023-07-28 01:26:16', '2023-07-27', '', 1),
(125, 'Entrada', 'Transferencia', 10, 'Servicio Técnico', '2023-07-28 02:05:47', '2023-07-28 02:05:47', '2023-07-27', '', 1),
(126, 'Entrada', 'Transferencia', 30, 'Servicio Técnico', '2023-07-29 01:23:47', '2023-07-29 01:23:47', '2023-07-28', '', 1),
(127, 'Entrada', 'Efectivo', 36, 'Venta', '2023-07-29 01:41:38', '2023-07-29 01:41:38', '2023-07-28', 'Venta', 1),
(128, 'Entrada', 'Efectivo', 30, 'Monto Inicial', '2023-07-29 05:15:21', '2023-07-29 05:15:21', '2023-07-28', 'MontoInicial', 1),
(129, 'Salida', 'Efectivo', -10, 'Almuerzos', '2023-07-29 05:23:12', '2023-07-29 05:23:12', '2023-07-29', 'Gasto', 1),
(130, 'Entrada', 'Efectivo', 40, 'El ingreso de hoy 29', '2023-07-29 05:49:59', '2023-07-29 05:49:59', '2023-07-29', 'MontoInicial', 1),
(131, 'Salida', 'Efectivo', -20, 'Taxis', '2023-07-29 05:50:38', '2023-07-29 05:50:38', '2023-07-29', 'Gasto', 1),
(132, 'Entrada', 'Efectivo', 60, 'Venta', '2023-07-29 05:52:24', '2023-07-29 05:52:24', '2023-07-29', 'Venta', 1),
(133, 'Entrada', 'Transferencia', 40, 'Venta', '2023-07-29 06:46:00', '2023-07-29 06:46:00', '2023-07-29', 'Venta', 1),
(134, 'Entrada', 'Efectivo', 32, 'Servicio Técnico', '2023-07-29 06:51:56', '2023-07-29 06:51:56', '2023-07-29', 'Servicio Técnico', 1),
(135, 'Entrada', 'Efectivo', 50, 'Se inicia la actividad del dia', '2023-07-30 15:13:22', '2023-07-30 15:13:22', '2023-07-30', 'MontoInicial', 1),
(136, 'Salida', 'Efectivo', -10, '4 desayunos', '2023-07-30 15:16:59', '2023-07-30 15:16:59', '2023-07-30', 'Gasto', 1),
(137, 'Entrada', 'Efectivo', 12, 'Venta', '2023-07-30 15:17:43', '2023-07-30 15:17:43', '2023-07-30', 'Venta', 1),
(138, 'Entrada', 'Efectivo', 30, 'Se inicia con este dinero', '2023-07-31 15:39:05', '2023-07-31 15:39:05', '2023-07-31', 'MontoInicial', 1),
(139, 'Entrada', 'Transferencia', 48, 'Venta', '2023-07-30 16:07:19', '2023-07-30 16:07:19', '2023-07-30', 'Venta', 1),
(140, 'Entrada', 'Efectivo', 60, 'Venta', '2023-07-28 19:45:05', '2023-07-28 19:45:05', '2023-07-28', 'Venta', 1),
(141, 'Entrada', 'Efectivo', 24, 'Venta', '2023-07-31 05:12:52', '2023-07-31 05:12:52', '2023-07-31', 'Venta', 1),
(142, 'Entrada', 'Transferencia', 36, 'Venta', '2023-07-31 05:13:38', '2023-07-31 05:13:38', '2023-07-31', 'Venta', 1),
(146, 'Entrada', 'Transferencia', 5, 'Servicio Técnico', '2023-07-31 16:16:00', '2023-07-31 16:16:00', '2023-07-31', 'Servicio Técnico', 1),
(147, 'Entrada', 'Transferencia', 22, 'Servicio Técnico', '2023-12-29 00:27:07', '2023-12-29 00:27:07', '2023-12-28', 'Servicio Técnico', 1),
(149, 'Salida', 'Efectivo', -30, 'Almuerzos', '2023-08-02 02:13:45', '2023-08-02 02:13:45', '2023-08-01', 'Gasto', 1),
(150, 'Entrada', 'Efectivo', 12, 'Venta', '2023-08-02 02:18:21', '2023-08-02 02:18:21', '2023-08-01', 'Venta', 1),
(151, 'Entrada', 'Transferencia', 60, 'N 11111', '2023-08-02 02:23:02', '2023-08-02 02:23:02', '2023-08-01', 'Venta', 1),
(152, 'Entrada', 'Efectivo', 50, 'Inicio del dia con 50 dolares', '2023-08-02 03:00:55', '2023-08-02 03:00:55', '2023-08-01', 'MontoInicial', 1),
(159, 'Salida', 'Efectivo', -36, 'Almuerzos', '2023-08-02 15:31:23', '2023-08-02 15:31:23', '2023-08-02', 'Gasto', 1),
(164, 'Entrada', 'Efectivo', 30, 'Venta', '2023-08-02 22:28:45', '2023-08-02 22:28:45', '2023-08-02', 'Venta', 1),
(167, 'Entrada', 'Efectivo', 120, 'Se inicia con 120 dolares', '2023-08-03 00:57:38', '2023-08-03 00:57:38', '2023-08-02', 'MontoInicial', 1),
(168, 'Salida', 'Efectivo', -10, 'taxi', '2023-08-03 00:58:09', '2023-08-03 00:58:09', '2023-08-02', 'Gasto', 1),
(169, 'Entrada', 'Efectivo', 7, 'Venta', '2023-08-03 19:57:15', '2023-08-03 19:57:15', '2023-08-03', 'Venta', 1),
(170, 'Entrada', 'Efectivo', 43.5, 'Inicia el dia con 43 dolares con 50 ctvs', '2023-08-03 19:58:22', '2023-08-03 19:58:22', '2023-08-03', 'MontoInicial', 1),
(171, 'Entrada', 'Efectivo', 255, 'Venta', '2023-08-03 22:34:05', '2023-08-03 22:34:05', '2023-08-03', 'Venta', 1),
(172, 'Entrada', 'Transferencia', 420, 'Venta', '2023-08-03 22:38:51', '2023-08-03 22:38:51', '2023-08-03', 'Venta', 1),
(173, 'Entrada', 'Efectivo', 560, 'Venta', '2023-08-03 22:39:37', '2023-08-03 22:39:37', '2023-08-03', 'Venta', 1),
(174, 'Entrada', 'Transferencia', 4, 'Venta', '2023-08-03 22:46:12', '2023-08-03 22:46:12', '2023-08-03', 'Venta', 1),
(175, 'Entrada', 'Transferencia', 750, 'Venta', '2023-08-03 23:12:49', '2023-08-03 23:12:49', '2023-08-03', 'Venta', 1),
(176, 'Entrada', 'Transferencia', 16, 'Venta', '2023-08-03 23:16:12', '2023-08-03 23:16:12', '2023-08-03', 'Venta', 1),
(177, 'Entrada', 'Transferencia', 510, 'Venta', '2023-08-03 23:17:22', '2023-08-03 23:17:22', '2023-08-03', 'Venta', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Pedro1', 'Pedro1.Pedro@example.com', NULL, '$2y$10$hYARJNENgAEozUmz5gVrOedYzPRZaAnd2fR7p9r.ziiSdTHRUo9fi', NULL, '2023-07-23 06:33:21', '2023-07-23 06:33:21'),
(2, 'Pedro1', 'Pedro13.Pedro@example.com', NULL, '$2y$10$vSb3YmFMCXyzrAOZfo9MMeNLpl6oiy3CLzZE6mWgZK6WwrGP9BtGm', NULL, '2023-07-23 06:38:04', '2023-07-23 06:38:04'),
(3, 'Luis', 'Luis1@example.com', NULL, '$2y$10$/tC/zYtjZ8hj978UyXgo0.7s2ZSoNWz4Uxw.keHBNmX81DxaMvGCG', NULL, '2023-07-23 23:58:55', '2023-07-23 23:58:55'),
(4, 'RicarZo', 'ricarzo@gmail.com', NULL, '$2y$10$gAs/dpe59CjRA9HX3ccWLe/HQVHKDbZKgmAQagr1./P0ecoHvXSlS', NULL, '2023-07-24 02:55:45', '2023-07-24 02:55:45'),
(5, 'Luis1', 'Luis11@example.com', NULL, '$2y$10$n9555vJzVqTe6iokhe83vuWu192QAjf9V8vS1Lf8QGjMsSAmf8qLy', NULL, '2023-07-24 02:56:52', '2023-07-24 02:56:52'),
(6, 'josekk', 'josekk123@gmail.com', NULL, '$2y$10$RkYNeE6LglpZ3XWQRuI/1upXt1hY8j1SMK2V.qZMn2oZt60Je8GKG', NULL, '2023-07-24 03:00:45', '2023-07-24 03:00:45'),
(7, 'Luis15', 'Luis15@example.com', NULL, '$2y$10$5g0/e9UKjhCzOn0dOqROu.PVqsdwysKBgyrRCd/AtrzA/yBkql3h.', NULL, '2023-07-24 08:02:42', '2023-07-24 08:02:42'),
(8, 'JosePerez11', 'joseperez11@gmail.com', NULL, '$2y$10$ILScFwR.bzErQgKxwaffeesnm7nKZIgZevc7SpbVLXDbPonsC4iIq', NULL, '2023-07-25 02:07:13', '2023-07-25 02:07:13'),
(9, 'RicardoPilozo96', 'ricardopilozo96@gmail.com', NULL, '$2y$10$haSIpFzRdg5PI38dLDuHp.qMO7r8WRxhxxhX35AmTlEHP8m2xUOve', NULL, '2023-07-25 02:16:39', '2023-07-25 02:16:39'),
(11, 'admin', 'admin@example.com', NULL, '$2y$10$HOdCcz79FwueG4ZrWV/6uu9E5CYN.HGYyJpPxQFk51mNnX.y0/IOe', NULL, '2023-07-27 01:13:51', '2023-07-27 01:13:51'),
(12, 'RaulVelez99', 'raulvelez99@gmail.com', NULL, '$2y$10$.0cZ2Ptv.iEK/ZSLRU80AO1.QO/maXtP95bMYoi3rqcPrbF2bAj5G', NULL, '2023-07-28 00:18:22', '2023-07-28 00:18:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nombre_usu` varchar(150) NOT NULL,
  `apellido_usu` varchar(150) NOT NULL,
  `cedula_usu` varchar(10) NOT NULL,
  `estado_usu` tinyint(1) NOT NULL,
  `email` varchar(150) NOT NULL,
  `celular_usu` varchar(10) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `usuario`, `password`, `nombre_usu`, `apellido_usu`, `cedula_usu`, `estado_usu`, `email`, `celular_usu`, `id_rol`, `created_at`, `updated_at`) VALUES
(1, 'Jesus_Andrade', '123456789', 'Deicy', 'Andrade', '2350636441', 1, 'jdac2350636441@gmail.com', '0997264984', 2, NULL, '2023-07-23 21:43:04'),
(2, 'Dayana_Herrera', '123456789', 'Dayana', 'Herrera', '2325656771', 1, 'dayana2356@gmail.com', '0937568904', 1, NULL, NULL),
(3, 'RENE', 'RENE', 'RENE', 'PILOZO', '1234567811', 1, 'rene.pilozo@example.com', '0987154320', 1, '2023-05-24 05:05:01', '2023-05-24 05:05:01'),
(5, 'nuevo usuario', 'nuevo', 'nuevo nombre', 'nuevo Pilozo', '012345607', 1, 'nuevo_email0@example.com', '1234567800', 2, '2023-05-26 05:46:49', '2023-06-30 02:03:14'),
(6, 'Ricardo', 'Ricardo', 'Ricardo', 'Pilozo', '0850587940', 1, 'ricardo.pilozo2@example.com', '0987154320', 1, '2023-06-30 01:47:02', '2023-06-30 01:47:02'),
(7, 'Pedro1', '$2y$10$YtfRh1lHImtJ.LMnC6/.memzMVAIAv6KIbYWFkpZr37Hz34YAdHDe', 'Pedro1', 'Pedro1', '0850587911', 1, 'Pedro1.Pedro@example.com', '0987111111', 1, '2023-07-22 21:27:27', '2023-07-22 21:27:27'),
(8, 'Pedro1', '$2y$10$Xtj7adM3Sd0l12eBl0fLU.9r3TqjVbHOjaAGdOeKUwY1keR28THha', 'Pedro1', 'Pedro1', '0850587922', 1, 'Pedro1.Pedro@example.com', '0987111111', 1, '2023-07-23 06:11:00', '2023-07-23 06:11:00'),
(9, 'Pedro1', '$2y$10$SrBdTxdLeB.o4Jp7fLEuSum90.YvKoqWb49BznKefv/j5VlMNSww.', 'Pedro1', 'Pedro1', '0850587955', 1, 'Pedro1.Pedro@example.com', '0987111111', 1, '2023-07-23 06:28:17', '2023-07-23 06:28:17'),
(10, 'Pedro1', '$2y$10$nUt5q3RC7QDRiIt10HMne.78fdZ9CwKYBxkueAsUiPS2XslW9AdY6', 'Pedro1', 'Pedro1', '0850587989', 1, 'Pedro1.Pedro@example.com', '0987111111', 1, '2023-07-23 06:31:41', '2023-07-23 06:31:41'),
(11, 'Pedro1', '$2y$10$UBFY/J1Cja4FBEIWZV3CVuyGBYba4VY6K0xs/DuxxikwK5OhgOk3W', 'Pedro1', 'Pedro1', '3085058333', 1, 'Pedro1.Pedro@example.com', '0987111111', 1, '2023-07-23 06:33:21', '2023-07-23 06:33:21'),
(12, 'Pedrito', '$2y$10$lOaj8opMhRr06Xb0R.koCuF2TyH6EZ.SnRpgjtz/30wH04xWzguYq', 'Pedro', 'Perez', '3085058334', 1, 'Pedro13.Pedro@example.com', '0987111111', 1, '2023-07-23 06:38:04', '2023-07-23 20:55:20'),
(13, 'Luis', '$2y$10$DxLI2ZpYairSQZ.5htQYuOklaOIMb5P8w8o2Jrk6WFAo53Sa6GwKq', 'Luis', 'Luis', '1185058334', 1, 'Luis1@example.com', '0111111111', 1, '2023-07-23 23:58:55', '2023-07-23 23:58:55'),
(14, 'RicarZo', '$2y$10$dECOAfHd2PyAtzMnC/Rna.Q0VJiqmy44oDH0f9s5YXM8BmBDRzpUS', 'Ricardo', 'Pilozo', '1236599687', 1, 'ricarzo@gmail.com', '1565563251', 1, '2023-07-24 02:55:44', '2023-07-24 02:55:44'),
(15, 'Luis1', '$2y$10$UcTPECXkeHaPcJ9oUO7FROd6z9CbW.Xe05Tte0gg61fD4SeB4YWuK', 'Luis1', 'Luis1', '1185058314', 1, 'Luis11@example.com', '0121111111', 1, '2023-07-24 02:56:52', '2023-07-24 02:56:52'),
(16, 'josekk', '$2y$10$adz4i1vZvS2nm37aPkDuKej.BAE8H.jI0q9W.BL2i1Tb1SRFaEk5a', 'jose', 'kkk', '1235698754', 1, 'josekk123@gmail.com', '1635976325', 1, '2023-07-24 03:00:45', '2023-07-24 03:00:45'),
(17, 'Luis150', '$2y$10$pFEcKZFFrFpYeehhzYI31OzF/n2k0xomCe/6fzta9cwQJ8ITNScZu', 'Luis15', 'Luis15', '1185058320', 1, 'Luis15@example.com', '0121111110', 1, '2023-07-24 08:02:41', '2023-07-24 03:12:41'),
(18, 'JosePerez11', '$2y$10$LRGE3zuL7.YOpVBP5.6e0eDYDI.gnbSlk3xSAmnrJxsUIQz/GP3uK', 'Jose', 'Perez', '5698764231', 1, 'joseperez11@gmail.com', '5689775562', 1, '2023-07-25 02:07:13', '2023-07-25 02:07:13'),
(19, 'RicardoPilozo96', '$2y$10$NGnntT9UC82X/xCyuuTVTeYNSL1OYeEgZ0zxUCIUdJBKryiH9m4My', 'Ricardo', 'Pilozo', '0850587924', 1, 'ricardopilozo96@gmail.com', '2365998764', 2, '2023-07-25 02:16:39', '2023-07-25 02:16:39'),
(21, 'admin', '$2y$10$tL.uq6POWmTMFyCEwlx92.eJ.xQsPqT7ILDbkdufaWaCzDi8r0Gs.', 'Admin', 'Admin', '1122334455', 1, 'admin@example.com', '1122334455', 1, '2023-07-27 01:13:51', '2023-07-27 01:13:51'),
(22, 'RaulVelez99', '$2y$10$8k8KjlNZBe.tMfUUT/EH3e/yemL0t9L7DHKZdf9SzaFExT4ACKnxW', 'Raul', 'Velez', '6987695633', 1, 'raulvelez99@gmail.com', '2569897788', 1, '2023-07-28 00:18:22', '2023-07-28 00:18:22');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `caja`
--
ALTER TABLE `caja`
  ADD PRIMARY KEY (`id_caja`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_inventario` (`id_inventario`),
  ADD KEY `id_movimiento` (`id_movimiento`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `devolucion`
--
ALTER TABLE `devolucion`
  ADD PRIMARY KEY (`id_devolucion`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id_inventario`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `movimiento`
--
ALTER TABLE `movimiento`
  ADD PRIMARY KEY (`id_movimiento`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `fk_movimiento_cliente` (`id_cliente`),
  ADD KEY `fk_movimiento_transacciones` (`id_transacciones`);

--
-- Indices de la tabla `negocio`
--
ALTER TABLE `negocio`
  ADD PRIMARY KEY (`id_negocio`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_servicio` (`id_servicio`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_inventario` (`id_inventario`),
  ADD KEY `id_caja` (`id_caja`),
  ADD KEY `id_devolucion` (`id_devolucion`),
  ADD KEY `id_movimiento` (`id_movimiento`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_proveedor` (`id_proveedor`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `servicio_tecnico`
--
ALTER TABLE `servicio_tecnico`
  ADD PRIMARY KEY (`id_servicio`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `fk_servicio_cliente` (`id_cliente`),
  ADD KEY `fk_servicio_transacciones` (`id_transacciones`);

--
-- Indices de la tabla `servicio_tecnico_producto`
--
ALTER TABLE `servicio_tecnico_producto`
  ADD PRIMARY KEY (`id_servicio_tecnico_producto`),
  ADD KEY `fk_servicio_tecnico_producto_servicio` (`id_servicio`),
  ADD KEY `fk_servicio_tecnico_producto_producto` (`id_producto`),
  ADD KEY `fk_servicio_tecnico_producto_inventario` (`id_inventario`);

--
-- Indices de la tabla `transacciones`
--
ALTER TABLE `transacciones`
  ADD PRIMARY KEY (`id_transacciones`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_rol` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `caja`
--
ALTER TABLE `caja`
  MODIFY `id_caja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `detalle`
--
ALTER TABLE `detalle`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT de la tabla `devolucion`
--
ALTER TABLE `devolucion`
  MODIFY `id_devolucion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id_inventario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `movimiento`
--
ALTER TABLE `movimiento`
  MODIFY `id_movimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT de la tabla `negocio`
--
ALTER TABLE `negocio`
  MODIFY `id_negocio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `servicio_tecnico`
--
ALTER TABLE `servicio_tecnico`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `servicio_tecnico_producto`
--
ALTER TABLE `servicio_tecnico_producto`
  MODIFY `id_servicio_tecnico_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `transacciones`
--
ALTER TABLE `transacciones`
  MODIFY `id_transacciones` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD CONSTRAINT `detalle_ibfk_1` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`) ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_ibfk_2` FOREIGN KEY (`id_movimiento`) REFERENCES `movimiento` (`id_movimiento`) ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_ibfk_3` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `devolucion`
--
ALTER TABLE `devolucion`
  ADD CONSTRAINT `devolucion_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON UPDATE CASCADE,
  ADD CONSTRAINT `devolucion_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `movimiento`
--
ALTER TABLE `movimiento`
  ADD CONSTRAINT `fk_movimiento_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_movimiento_transacciones` FOREIGN KEY (`id_transacciones`) REFERENCES `transacciones` (`id_transacciones`) ON UPDATE CASCADE,
  ADD CONSTRAINT `movimiento_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `negocio`
--
ALTER TABLE `negocio`
  ADD CONSTRAINT `negocio_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON UPDATE CASCADE,
  ADD CONSTRAINT `negocio_ibfk_2` FOREIGN KEY (`id_servicio`) REFERENCES `servicio_tecnico` (`id_servicio`) ON UPDATE CASCADE,
  ADD CONSTRAINT `negocio_ibfk_3` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON UPDATE CASCADE,
  ADD CONSTRAINT `negocio_ibfk_4` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`) ON UPDATE CASCADE,
  ADD CONSTRAINT `negocio_ibfk_5` FOREIGN KEY (`id_caja`) REFERENCES `caja` (`id_caja`) ON UPDATE CASCADE,
  ADD CONSTRAINT `negocio_ibfk_6` FOREIGN KEY (`id_devolucion`) REFERENCES `devolucion` (`id_devolucion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `negocio_ibfk_7` FOREIGN KEY (`id_movimiento`) REFERENCES `movimiento` (`id_movimiento`) ON UPDATE CASCADE,
  ADD CONSTRAINT `negocio_ibfk_8` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`) ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `servicio_tecnico`
--
ALTER TABLE `servicio_tecnico`
  ADD CONSTRAINT `fk_servicio_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_servicio_transacciones` FOREIGN KEY (`id_transacciones`) REFERENCES `transacciones` (`id_transacciones`) ON UPDATE CASCADE,
  ADD CONSTRAINT `servicio_tecnico_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `servicio_tecnico_producto`
--
ALTER TABLE `servicio_tecnico_producto`
  ADD CONSTRAINT `fk_servicio_tecnico_producto_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `fk_servicio_tecnico_producto_producto` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`),
  ADD CONSTRAINT `fk_servicio_tecnico_producto_servicio` FOREIGN KEY (`id_servicio`) REFERENCES `servicio_tecnico` (`id_servicio`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
