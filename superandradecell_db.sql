-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-08-2023 a las 06:14:34
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
  `observacion_caja` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `total_observacion` int(11) DEFAULT NULL,
  `id_negocio` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `caja`
--

INSERT INTO `caja` (`id_caja`, `fecha_caja`, `efectivo_final`, `monto_total`, `observacion_caja`, `total_observacion`, `id_negocio`, `created_at`, `updated_at`) VALUES
(6, '2023-07-27', 100, 100, 'Cierre correcto', 5, 1, '2023-07-29 02:41:30', '2023-07-29 02:41:30'),
(7, '2023-07-26', 10, 10, 'Cierre correcto', 0, 1, '2023-07-29 02:49:02', '2023-07-29 02:49:02'),
(8, '2023-07-28', 36, 36, 'Cierre correcto', 0, 1, '2023-07-29 02:56:14', '2023-07-29 02:56:14'),
(9, '2023-07-20', 100, 101, 'Sobrante efectivo', 1, 1, '2023-07-29 03:39:21', '2023-07-29 03:39:21'),
(10, '2023-07-29', 70, 70, 'Cierre correcto', 0, 1, '2023-07-29 06:32:05', '2023-07-29 06:32:05'),
(14, '2023-07-21', 100, 101, 'Sobrante efectivo', 1, 1, '2023-07-30 21:23:08', '2023-07-30 21:23:08'),
(17, '2023-07-30', 52, 51, 'Falta efectivo', -1, 1, '2023-07-31 02:43:11', '2023-07-31 02:43:11'),
(21, '2023-08-02', 114, 114, 'Cierre correcto', 0, 1, '2023-08-03 00:58:44', '2023-08-03 00:58:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre_cat` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion_cat` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `estado_cat` tinyint(1) NOT NULL,
  `id_negocio` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre_cat`, `descripcion_cat`, `estado_cat`, `id_negocio`, `created_at`, `updated_at`) VALUES
(1, 'Flex de Carga', 'Indefinido', 1, 1, NULL, '2023-07-14 02:19:31'),
(2, 'Modulos de carga', 'Indefinido', 1, 1, NULL, '2023-06-09 02:02:27'),
(3, 'Micas de vidrio', 'Indefinido', 1, 1, NULL, '2023-06-09 02:02:35'),
(4, 'Ping de carga', 'Indefinido', 1, 1, NULL, '2023-06-09 02:02:43'),
(5, 'Audifonos', 'Indefinido', 0, 1, NULL, '2023-07-14 02:18:53'),
(6, 'Fundas de celular', 'Esto es una prueba', 0, 1, '2023-06-09 03:00:29', '2023-07-14 02:19:37'),
(7, 'xd', 'DASFDSF', 0, 1, '2023-06-09 03:00:47', '2023-07-14 02:19:48'),
(8, 'Pepe', 'pepepepeppe', 0, 1, '2023-06-09 03:01:41', '2023-07-14 02:19:23'),
(9, 'LOL', 'Indefinido', 0, 1, '2023-06-09 03:06:42', '2023-07-14 02:19:17'),
(10, 'dafdsf', 'Indefinido', 0, 1, '2023-06-09 03:07:13', '2023-07-14 02:19:05'),
(11, 'adsfasdfsdaf', 'Indefinido', 0, 1, '2023-06-09 03:07:18', '2023-07-14 02:18:41'),
(12, 'afdsfdsf', 'Indefinido', 0, 1, '2023-06-09 03:07:24', '2023-06-16 07:53:54'),
(13, 'adsfadsf', 'Indefinido', 0, 1, '2023-06-09 03:31:48', '2023-06-09 03:42:28'),
(14, 'asdfadsfdsafdsa', 'Indefinido', 0, 1, '2023-06-09 03:31:54', '2023-07-14 02:18:47'),
(15, 'adsfadsfdsafdsaf', 'adsfdsafadsfdasf', 0, 1, '2023-06-09 03:41:32', '2023-07-14 02:18:35'),
(16, 'dfadsfdsaf', 'Indefinido', 0, 1, '2023-06-09 06:29:41', '2023-07-14 02:19:10'),
(17, 'Carro', 'Indefinido', 0, 1, '2023-07-05 02:27:56', '2023-07-14 02:18:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre_clie` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `apellido_clie` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `cedula_clie` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `telefono_clie` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `correo_clie` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `direccion_clie` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `id_negocio` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre_clie`, `apellido_clie`, `cedula_clie`, `telefono_clie`, `correo_clie`, `direccion_clie`, `id_negocio`, `created_at`, `updated_at`) VALUES
(1, 'Juan', 'Andrade', '0850587940', '1236547980', 'carlos.andrade66@gmail.com', 'Santo Domingo', 1, NULL, '2023-06-27 05:29:51'),
(2, 'Ricardo', 'Pilozo', '0850587924', '9632587410', 'ricardopilozo@gmail.com', 'La Union', 1, '2023-06-12 19:20:00', '2023-06-27 05:25:11'),
(3, 'Gabriel', 'Montero', '0123456789', '0231456789', 'gabriela_montero12@gmail.com', 'Santo Domingo', 1, '2023-06-12 19:47:50', '2023-06-27 05:25:26'),
(4, 'Andres', 'Coronel', '9865321470', '3669885740', 'andres_coronel1@gmail.com', 'La Union', 1, '2023-06-12 20:07:13', '2023-06-12 20:07:13'),
(5, 'Maria', 'Peralta', '1236598763', '1225447888', 'mariaperalta22@gmail.com', 'Santo Domingo', 1, '2023-06-12 20:09:55', '2023-06-12 20:09:55'),
(6, 'Consumidor', 'Final', '9999999999', '0000000000', 'xxxxxxxxxxxx@gmail.com', 'XXXXXXXXXX', 1, '2023-06-14 05:50:07', '2023-07-05 02:38:35'),
(7, 'zzzz', 'aaaaa', '1234569863', '0852698761', 'ricardo@gmail,com', 'la union', 1, '2023-07-13 02:59:57', '2023-07-13 02:59:57'),
(8, 'Margoth', 'Guaraca', '0603406089', '0999999999', 'margoth@gmail,com', 'Santo Domingo', 1, '2023-08-02 02:22:05', '2023-08-02 02:22:05'),
(10, 'Mariela', 'Chila', '0801366261', '0963225632', 'marielachila@gmail.com', 'Santo Domingo', 1, '2023-08-05 03:54:23', '2023-08-05 03:54:23');

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
  `descripcion_dev` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_negocio` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `devolucion`
--

INSERT INTO `devolucion` (`id_devolucion`, `fecha_dev`, `cantidad_dev`, `descripcion_dev`, `id_producto`, `id_usuario`, `id_negocio`, `created_at`, `updated_at`) VALUES
(1, '2023-04-01', 2, 'No era el color que esperaba', 1, 1, 1, NULL, NULL),
(2, '2023-04-02', 1, 'No era el modelo que quería', 2, 1, 1, NULL, NULL),
(3, '2023-04-03', 3, 'No era compatible con mi dispositivo', 3, 2, 1, NULL, NULL),
(4, '2023-04-04', 4, 'Producto defectuoso', 4, 1, 1, NULL, NULL),
(5, '2023-04-05', 1, 'No era el tamaño adecuado', 5, 2, 1, NULL, NULL),
(6, '2023-06-09', 1, 'XD', 33, 1, 1, '2023-07-09 01:20:51', '2023-07-09 01:20:51'),
(7, '2023-06-09', 1, 'XD', 33, 1, 1, '2023-07-09 01:21:29', '2023-07-09 01:21:29'),
(8, '2023-06-09', 1, 'XD', 33, 1, 1, '2023-07-09 01:21:45', '2023-07-09 01:21:45'),
(9, '2023-06-09', 1, 'XD', 33, 1, 1, '2023-07-09 01:22:56', '2023-07-09 01:22:56'),
(10, '2023-06-09', 10, 'ASDF', 33, 1, 1, '2023-07-09 01:31:04', '2023-07-09 01:31:04'),
(11, '2023-07-09', 5, 'devolución de 5 productos defectuosos', 39, 1, 1, '2023-07-09 16:25:33', '2023-07-09 16:25:33'),
(12, '2023-07-09', 5, 'Se devuelve 5 productos defectuosos', 39, 1, 1, '2023-07-09 16:29:08', '2023-07-09 16:29:08'),
(13, '2023-07-09', 4, 'XD', 39, 1, 1, '2023-07-09 16:32:13', '2023-07-09 16:32:13'),
(14, '2023-07-09', 3, '3 productos devueltos por mal estado ´´', 39, 1, 1, '2023-07-09 16:33:35', '2023-07-09 16:33:35'),
(15, '2023-07-11', 3, 'Devolución por fallos de fabricante', 39, 1, 1, '2023-07-11 02:23:48', '2023-07-11 02:23:48'),
(16, '2023-07-13', 11, 'Producto con daños de fabrica', 6, 1, 1, '2023-07-13 02:38:30', '2023-07-13 02:38:30'),
(17, '2023-07-27', 10, 'Daño de fabrica', 9, 21, 1, '2023-07-27 21:55:48', '2023-07-27 21:55:48'),
(18, '2023-07-31', 15, 'Se devuelven 15 productos con defecto de fabrica', 7, 21, 1, '2023-07-31 21:26:56', '2023-07-31 21:26:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `descripcion_inv` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_negocio` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id_inventario`, `estado_inv`, `cantidad_inventario`, `descripcion_inv`, `id_producto`, `id_negocio`, `created_at`, `updated_at`) VALUES
(1, 0, 180, '', 1, 1, NULL, '2023-07-05 07:18:49'),
(2, 0, 120, '', 2, 1, NULL, '2023-06-07 08:25:59'),
(3, 0, 60, '', 3, 1, NULL, '2023-08-03 21:43:15'),
(4, 0, 13, '', 4, 1, NULL, '2023-06-07 09:25:09'),
(5, 0, 100, '', 5, 1, NULL, '2023-08-03 21:51:17'),
(6, 0, 100, '', 6, 1, NULL, '2023-08-03 22:41:22'),
(7, 0, 93, '', 7, 1, NULL, '2023-08-02 22:24:06'),
(8, 1, 10, '', 8, 1, NULL, '2023-08-03 23:17:36'),
(9, 1, 62, '', 9, 1, NULL, '2023-08-03 23:04:42'),
(10, 1, 101, '', 10, 1, NULL, '2023-06-05 00:22:55'),
(11, 1, 30, '', 11, 1, NULL, NULL),
(12, 1, 18, '', 12, 1, NULL, NULL),
(13, 1, 17, '', 13, 1, NULL, NULL),
(14, 1, 21, '', 14, 1, NULL, NULL),
(15, 1, 25, '', 15, 1, NULL, NULL),
(16, 1, 26, '', 16, 1, NULL, NULL),
(17, 1, 29, '', 17, 1, NULL, NULL),
(18, 1, 30, '', 18, 1, NULL, NULL),
(19, 0, 39, '', 19, 1, NULL, '2023-06-09 06:28:33'),
(20, 1, 100, '', 20, 1, NULL, '2023-08-03 22:25:21'),
(21, 1, 30, '', 21, 1, NULL, '2023-08-03 22:28:54'),
(22, 1, 15, '', 22, 1, NULL, NULL),
(23, 1, 60, '', 23, 1, NULL, '2023-08-03 23:12:11'),
(24, 1, 22, '', 24, 1, NULL, NULL),
(25, 1, 4, '', 25, 1, NULL, '2023-08-03 23:16:20'),
(26, 1, 26, '', 26, 1, NULL, NULL),
(27, 1, 12, '', 27, 1, NULL, '2023-08-03 23:17:35'),
(28, 1, 31, '', 28, 1, NULL, '2023-07-26 23:11:05'),
(29, 1, 8, '', 29, 1, NULL, '2023-08-03 23:17:37'),
(30, 1, 20, '', 30, 1, NULL, NULL),
(31, 1, 50, '', 31, 1, NULL, NULL),
(32, 1, 30, 'Descripción del producto de prueba', 32, 1, '2023-05-23 04:27:58', '2023-05-23 04:27:58'),
(33, 1, 50, 'Descripción del producto de prueba', 33, 1, '2023-05-23 04:30:43', '2023-07-09 01:31:04'),
(34, 1, 50, 'Mica para celulares Samsung A100', 34, 1, '2023-06-04 06:42:32', '2023-06-04 06:42:32'),
(35, 0, 400, 'asdfdsfsdaf', 35, 1, '2023-06-05 10:01:34', '2023-07-31 16:08:27'),
(36, 0, 12, '11111111', 36, 1, '2023-06-05 23:20:05', '2023-06-10 20:27:40'),
(37, 0, 200, 'adfdsfadsfdsf', 37, 1, '2023-06-09 03:48:22', '2023-06-10 20:27:47'),
(38, 1, 96, 'sadasd', 38, 1, '2023-06-27 04:04:26', '2023-07-02 04:38:21'),
(39, 1, 10, 'dgdfgfd', 39, 1, NULL, '2023-08-03 23:12:57'),
(40, 1, 150, 'sdasdsad', 40, 1, '2023-07-25 01:06:51', '2023-07-25 01:06:51'),
(41, 1, 200, 'afdsfsadf', 41, 1, '2023-07-27 17:05:36', '2023-07-27 17:05:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `tipo_mov` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion_mov` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `valor_total_mov` float NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_transacciones` int(11) DEFAULT NULL,
  `id_negocio` int(11) DEFAULT 1,
  `ganancia_mov` float NOT NULL,
  `estado_mov` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `movimiento`
--

INSERT INTO `movimiento` (`id_movimiento`, `fecha_mov`, `numero_comprobante`, `tipo_mov`, `descripcion_mov`, `valor_total_mov`, `id_usuario`, `created_at`, `updated_at`, `id_cliente`, `id_transacciones`, `id_negocio`, `ganancia_mov`, `estado_mov`) VALUES
(30, '2023-06-12', 17, 'Salida', 'dfasdfdsfads', 48, 1, '2023-06-12 22:41:55', '2023-06-12 22:41:55', 1, 6, 1, 0, 1),
(31, '2023-06-12', 18, 'Salida', 'fdsafadsf', 114, 1, '2023-06-12 23:47:12', '2023-06-12 23:47:12', 1, NULL, 1, 0, 1),
(32, '2023-06-12', 19, 'Salida', 'fadsf', 28, 1, '2023-06-13 04:35:29', '2023-06-13 04:35:29', 2, NULL, 1, 0, 1),
(33, '2023-06-12', 20, 'Salida', 'dafadsf', 42, 1, '2023-06-13 04:38:23', '2023-06-13 04:38:23', 1, NULL, 1, 0, 1),
(34, '2023-06-12', 21, 'Salida', 'dsafadsf', 120, 1, '2023-06-13 04:40:31', '2023-06-13 04:40:31', 4, NULL, 1, 0, 1),
(35, '2023-06-12', 22, 'Salida', 'dsafdsf', 24, 1, '2023-06-13 04:45:15', '2023-06-13 04:45:15', 5, NULL, 1, 0, 1),
(36, '2023-06-12', 23, 'Salida', 'dfadsfsdf', 216, 1, '2023-06-13 04:56:43', '2023-06-13 04:56:43', 3, NULL, 1, 0, 1),
(37, '2023-06-12', 24, 'Salida', 'erqewrqewrqwer', 10, 1, '2023-06-13 04:57:29', '2023-06-13 04:57:29', 1, NULL, 1, 0, 1),
(38, '2023-06-12', 25, 'Salida', 'asfasdas', 70, 1, '2023-06-13 04:58:59', '2023-06-13 04:58:59', 3, NULL, 1, 0, 1),
(39, '2023-06-12', 26, 'Salida', 'dafdsaf', 70, 1, '2023-06-13 05:01:17', '2023-06-13 05:01:17', 1, NULL, 1, 0, 1),
(40, '2023-06-13', 27, 'Salida', 'fadsfs', 70, 1, '2023-06-13 05:07:00', '2023-06-13 05:07:00', 1, NULL, 1, 0, 1),
(41, '2023-06-13', 28, 'Salida', 'fadsfads', 128, 1, '2023-06-13 05:08:39', '2023-06-13 05:08:39', 2, NULL, 1, 0, 1),
(42, '2023-06-13', 29, 'Salida', 'dafdsfasdfdsafasdfadsfadsf', 140, 1, '2023-06-13 05:15:35', '2023-06-13 05:15:35', 3, NULL, 1, 0, 1),
(43, '2023-06-13', 30, 'Salida', 'dafsd', 70, 1, '2023-06-13 05:17:13', '2023-06-13 05:17:13', 1, NULL, 1, 0, 1),
(44, '2023-06-13', 31, 'Salida', 'adfadsfdasfadsf', 10, 1, '2023-06-13 05:29:50', '2023-06-13 05:29:50', 3, NULL, 1, 0, 1),
(45, '2023-06-14', 32, 'Salida', 'Indefinido', 28, 1, '2023-06-14 05:52:30', '2023-06-14 05:52:30', 6, NULL, 1, 0, 1),
(46, '2023-06-14', 33, 'Salida', 'venta de tres artículos', 172, 1, '2023-06-14 05:56:54', '2023-06-14 05:56:54', 6, NULL, 1, 0, 1),
(47, '2023-06-14', 34, 'Salida', 'Indefinido', 126, 1, '2023-06-14 06:00:12', '2023-06-14 06:00:12', 1, NULL, 1, 0, 1),
(49, '2023-06-16', 35, 'Salida', 'Indefinido', 42, 1, '2023-06-16 05:32:22', '2023-06-16 05:32:22', 1, NULL, 1, 0, 1),
(50, '2023-06-16', 36, 'Salida', 'Indefinido', 18, 1, '2023-06-16 05:37:24', '2023-06-16 05:37:24', 6, 9, 1, 0, 1),
(51, '2023-06-16', 37, 'Salida', 'Indefinido', 37, 1, '2023-06-16 06:41:32', '2023-06-16 06:41:32', 1, 10, 1, 0, 1),
(52, '2023-06-16', 38, 'Salida', 'Indefinido', 10, 1, '2023-06-16 06:44:51', '2023-06-16 06:44:51', 6, 11, 1, 0, 1),
(53, '2023-06-16', 39, 'Salida', 'Indefinido', 22, 1, '2023-06-16 07:52:33', '2023-06-16 07:52:33', 1, 12, 1, 0, 1),
(54, '2023-06-28', 40, 'Salida', 'Indefinido', 30, 1, '2023-06-28 21:49:37', '2023-06-28 21:49:37', 1, 15, 1, 0, 1),
(55, '2023-06-28', 41, 'Salida', 'saddas', 30, 1, '2023-06-28 22:44:04', '2023-06-28 22:44:04', 6, 18, 1, 0, 1),
(56, '2023-07-01', 42, 'Salida', 'Indefinido', 44, 1, '2023-07-02 01:36:34', '2023-07-02 01:36:34', 1, 53, 1, 14, 1),
(57, '2023-07-01', 43, 'Salida', 'Indefinido', 59, 1, '2023-07-02 01:38:34', '2023-07-02 01:38:34', 6, 54, 1, 17, 1),
(58, '2023-07-01', 44, 'Salida', 'Indefinido', 44, 1, '2023-07-02 01:50:50', '2023-07-02 01:50:50', 1, 55, 1, 14, 1),
(59, '2023-07-01', 45, 'Salida', 'Indefinido', 26, 1, '2023-07-02 03:33:39', '2023-07-02 03:33:39', 1, 56, 1, 15, 1),
(60, '2023-07-01', 46, 'Salida', 'Indefinido', 45, 1, '2023-07-02 04:10:38', '2023-07-02 04:10:38', 6, 57, 1, 21, 1),
(61, '2023-07-01', 47, 'Salida', 'Indefinido', 29, 1, '2023-07-02 04:14:18', '2023-07-02 04:14:18', 1, 58, 1, 11, 1),
(62, '2023-07-01', 48, 'Salida', 'Indefinido', 29, 1, '2023-07-02 04:20:02', '2023-07-02 04:20:02', 6, 59, 1, 12, 1),
(63, '2023-07-01', 49, 'Salida', 'Indefinido', 45, 1, '2023-07-02 04:38:18', '2023-07-02 04:38:18', 1, 60, 1, 21, 1),
(64, '2023-07-01', 50, 'Salida', 'Indefinido', 43, 1, '2023-07-02 04:47:25', '2023-07-02 04:47:25', 6, 61, 1, 19, 1),
(65, '2023-07-05', 51, 'Salida', 'Indefinido', 31, 1, '2023-07-05 05:08:05', '2023-07-05 05:08:05', 6, 62, 1, 13, 1),
(66, '2023-07-05', 52, 'Salida', 'Indefinido', 15, 2, '2023-07-05 05:10:00', '2023-07-05 05:10:00', 1, 63, 1, 3, 1),
(67, '2023-07-05', 53, 'Salida', 'Indefinido', 120, 1, '2023-07-05 06:39:29', '2023-07-05 06:39:29', 6, 64, 1, 24, 1),
(68, '2023-07-05', 54, 'Salida', 'Indefinido', 150, 1, '2023-07-05 06:40:29', '2023-07-05 06:40:29', 6, 65, 1, 30, 1),
(69, '2023-06-09', 1000, 'salida', 'Descripción del movimientohjgjh', 100, 1, '2023-07-08 23:11:13', '2023-07-08 23:11:13', 1, NULL, 1, 20, 1),
(70, '2023-07-08', 1001, 'Salida', 'Indefinido', 30, 1, '2023-07-08 23:14:53', '2023-07-08 23:14:53', 1, 67, 1, 6, 1),
(71, '2023-07-09', 1002, 'Salida', 'Indefinido', 72, 1, '2023-07-09 01:38:31', '2023-07-09 01:38:31', 6, 69, 1, 30, 1),
(112, '2023-01-01', 123, 'Salida', 'Descripción 1', 100, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 1, 10, 1),
(113, '2023-02-01', 124, 'Salida', 'Descripción 2', 200, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 1, 20, 1),
(114, '2023-03-01', 125, 'Salida', 'Descripción 3', 300, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 1, 30, 1),
(115, '2023-04-01', 126, 'Salida', 'Descripción 4', 400, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 1, 40, 1),
(116, '2023-05-01', 127, 'Salida', 'Descripción 5', 500, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 1, 50, 1),
(117, '2023-06-01', 128, 'Salida', 'Descripción 6', 600, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 1, 60, 1),
(118, '2023-07-01', 129, 'Salida', 'Descripción 7', 700, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 1, 70, 1),
(119, '2023-08-01', 130, 'Salida', 'Descripción 8', 800, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 1, 80, 1),
(120, '2023-09-01', 131, 'Salida', 'Descripción 9', 900, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 1, 90, 1),
(121, '2023-10-01', 132, 'Salida', 'Descripción 10', 1000, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 1, 100, 1),
(122, '2023-11-01', 133, 'Salida', 'Descripción 11', 1100, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 1, 110, 1),
(123, '2023-12-01', 134, 'Salida', 'Descripción 12', 1200, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 1, 120, 1),
(124, '2023-01-02', 135, 'Salida', 'Descripción 13', 1300, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 1, 130, 1),
(125, '2023-02-02', 136, 'Salida', 'Descripción 14', 1400, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 1, 140, 1),
(126, '2023-03-02', 137, 'Salida', 'Descripción 15', 1500, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 1, 150, 1),
(127, '2023-04-02', 138, 'Salida', 'Descripción 16', 1600, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 1, 160, 1),
(128, '2023-05-02', 139, 'Salida', 'Descripción 17', 1700, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 1, 170, 1),
(129, '2023-06-02', 140, 'Salida', 'Descripción 18', 1800, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 1, 180, 1),
(130, '2023-07-02', 141, 'Salida', 'Descripción 19', 1900, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 1, 190, 1),
(131, '2023-08-02', 142, 'Salida', 'Descripción 20', 2000, 1, '2023-07-10 21:50:36', '2023-07-10 21:50:36', 1, 6, 1, 200, 1),
(132, '2023-12-20', 1003, 'Salida', 'Indefinido', 195, 1, '2023-07-10 22:05:01', '2023-07-10 22:05:01', 1, 70, 1, 85, 1),
(133, '2023-12-14', 1004, 'Salida', 'Indefinido', 214, 1, '2023-07-10 22:05:50', '2023-07-10 22:05:50', 6, 71, 1, 58, 1),
(134, '2023-12-28', 1005, 'Salida', 'Indefinido', 640, 1, '2023-07-10 22:07:09', '2023-07-10 22:07:09', 6, 72, 1, 380, 1),
(135, '2023-02-16', 1006, 'Salida', 'Indefinido', 377, 1, '2023-07-11 00:19:56', '2023-07-11 00:19:56', 6, 73, 1, 215, 1),
(136, '2023-01-19', 1007, 'Salida', 'Indefinido', 570, 1, '2023-07-11 01:36:49', '2023-07-11 01:36:49', 1, 75, 1, 340, 1),
(137, '2023-07-13', 1008, 'Salida', 'Indefinido', 136, 1, '2023-07-13 02:11:48', '2023-07-13 02:11:48', 1, 76, 1, 70, 1),
(138, '2023-07-13', 1009, 'Salida', 'Indefinido', 87, 1, '2023-07-13 02:12:50', '2023-07-13 02:12:50', 6, 77, 1, 51.4, 1),
(139, '2023-07-24', 1010, 'Salida', 'Indefinido', 30, 12, '2023-07-24 03:30:18', '2023-07-24 03:30:18', 6, 79, 1, 6, 1),
(140, '2023-07-24', 1011, 'Salida', 'Indefinido', 50, 17, '2023-07-24 03:31:48', '2023-07-24 03:31:48', 1, 80, 1, 30, 1),
(141, '2023-07-26', 1012, 'Salida', 'Indefinido', 73, 12, '2023-07-26 02:03:56', '2023-07-26 02:03:56', 6, 81, 1, 25, 1),
(142, '2023-07-26', 1013, 'Salida', 'Indefinido', 15, 19, '2023-07-26 23:01:55', '2023-07-26 23:01:55', 6, 97, 1, 3, 1),
(143, '2023-07-27', 1014, 'Salida', 'Indefinido', 24, 21, '2023-07-27 20:04:48', '2023-07-27 20:04:48', 6, 110, 1, 14, 1),
(144, '2023-07-27', 1015, 'Salida', 'Indefinido', 56, 21, '2023-07-27 20:08:28', '2023-07-27 20:08:28', 6, 111, 1, 21, 1),
(145, '2023-07-27', 1016, 'Salida', 'Indefinido', 60, 21, '2023-07-27 20:10:34', '2023-07-27 20:10:34', 6, 112, 1, 35, 1),
(146, '2023-07-27', 1017, 'Salida', 'Venta', 120, 21, '2023-07-27 23:31:59', '2023-07-27 23:31:59', 6, 119, 1, 70, 1),
(148, '2023-07-28', 1018, 'Salida', 'Venta', 36, 21, '2023-07-29 01:41:42', '2023-07-29 01:41:42', 6, 127, 1, 21, 1),
(149, '2023-07-29', 1019, 'Salida', 'Venta', 60, 19, '2023-07-29 05:52:31', '2023-07-29 05:52:31', 6, 132, 1, 35, 1),
(150, '2023-07-29', 1020, 'Salida', 'Venta', 40, 19, '2023-07-29 06:46:05', '2023-07-29 06:46:05', 1, 133, 1, 24, 1),
(151, '2023-07-30', 1021, 'Salida', 'Venta', 12, 19, '2023-07-30 15:17:48', '2023-07-30 15:17:48', 6, 137, 1, 7, 1),
(152, '2023-07-30', 1022, 'Salida', 'Venta', 48, 12, '2023-07-30 16:08:21', '2023-07-30 16:08:21', 1, 139, 1, 28, 1),
(153, '2023-07-28', 1023, 'Salida', 'Venta', 60, 12, '2023-07-28 19:45:13', '2023-07-28 19:45:13', 6, 140, 1, 35, 1),
(154, '2023-07-31', 1024, 'Salida', 'Venta', 24, 21, '2023-07-31 05:12:57', '2023-07-31 05:12:57', 6, 141, 1, 14, 1),
(155, '2023-07-31', 1025, 'Salida', 'Venta', 36, 21, '2023-07-31 05:13:41', '2023-07-31 05:13:41', 6, 142, 1, 21, 1),
(159, '2023-08-01', 1026, 'Salida', 'Venta', 12, 21, '2023-08-02 02:18:32', '2023-08-02 02:18:32', 6, 150, 1, 7, 1),
(160, '2023-08-01', 1027, 'Salida', 'Venta', 60, 21, '2023-08-02 02:23:15', '2023-08-02 02:23:15', 8, 151, 1, 35, 1),
(164, '2023-08-02', 1028, 'Salida', 'Venta', 30, 21, '2023-08-02 22:28:50', '2023-08-02 22:28:50', 6, 164, 1, 6, 1),
(165, '2023-08-03', 1029, 'Salida', 'Venta', 7, 12, '2023-08-03 19:57:20', '2023-08-03 19:57:20', 6, 169, 1, 5.53, 1),
(166, '2023-08-03', 1030, 'Salida', 'Venta', 255, 12, '2023-08-03 22:34:10', '2023-08-03 22:34:10', 6, 171, 1, 51, 1),
(167, '2023-08-03', 1031, 'Salida', 'Venta', 420, 12, '2023-08-03 22:38:55', '2023-08-03 22:38:55', 1, 172, 1, 240, 1),
(168, '2023-08-03', 1032, 'Salida', 'Venta', 560, 12, '2023-08-03 22:39:56', '2023-08-03 22:39:56', 2, 173, 1, 240, 1),
(169, '2023-08-03', 1033, 'Salida', 'Venta', 4, 12, '2023-08-03 22:46:16', '2023-08-03 22:46:16', 6, 174, 1, 2.4, 1),
(170, '2023-08-03', 1034, 'Salida', 'Venta', 750, 12, '2023-08-03 23:12:54', '2023-08-03 23:12:54', 6, 175, 1, 150, 1),
(171, '2023-08-03', 1035, 'Salida', 'Venta', 16, 12, '2023-08-03 23:16:17', '2023-08-03 23:16:17', 6, 176, 1, 12.64, 1),
(172, '2023-08-03', 1036, 'Salida', 'Venta', 510, 12, '2023-08-03 23:17:30', '2023-08-03 23:17:30', 6, 177, 1, 302.8, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `negocio`
--

CREATE TABLE `negocio` (
  `id_negocio` int(11) NOT NULL,
  `nombre_gerente` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `apellido_gerente` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `cedula_gerente` int(13) NOT NULL,
  `nombre_negocio` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `ruc_negocio` int(13) NOT NULL,
  `sucursal_negocio` int(11) NOT NULL,
  `direccion_negocio` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `telefono_negocio` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `negocio`
--

INSERT INTO `negocio` (`id_negocio`, `nombre_gerente`, `apellido_gerente`, `cedula_gerente`, `nombre_negocio`, `ruc_negocio`, `sucursal_negocio`, `direccion_negocio`, `telefono_negocio`, `created_at`, `updated_at`) VALUES
(1, 'Ricardo', 'Pilozo', 854635986, 'Super Andrade Cell', 854635986, 0, 'Santo Domingo', '0987563254', NULL, NULL),
(2, 'Rene', 'Pilozo', 850597624, 'Rene SA', 850597624, 0, 'Santo Domingo', '0987563254', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `nombre_producto` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta1` float DEFAULT NULL,
  `precio_venta2` float DEFAULT NULL,
  `precio_venta3` float DEFAULT NULL,
  `precio_venta4` float DEFAULT NULL,
  `codigo_qr` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `marca_prod` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `modelo_prod` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `codigo_prod` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion_prod` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado_prod` tinyint(1) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_negocio` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre_producto`, `precio_compra`, `precio_venta1`, `precio_venta2`, `precio_venta3`, `precio_venta4`, `codigo_qr`, `marca_prod`, `modelo_prod`, `codigo_prod`, `descripcion_prod`, `estado_prod`, `id_proveedor`, `id_categoria`, `id_negocio`, `created_at`, `updated_at`) VALUES
(1, 'Samsun A31', 4, 10, 7, 0, 0, 'FC-000001', 'Samsum', 'A31', 'FC-000001', 'fadsf', 1, 2, 2, 1, NULL, '2023-06-07 08:25:51'),
(2, 'Samsun A71', 5, 12, 8, 7, 6, 'FC-000002', 'Samsum', 'A71', 'FC-000002', 'jhfjjgjh', 1, 1, 1, 1, NULL, '2023-06-07 08:25:59'),
(3, 'Flex de carga Samsun A30', 4, 10, 7, 4, 5, 'FC-000003', 'Samsum', 'A30', 'FC-000003', '1', 1, 1, 1, 1, NULL, '2023-06-07 08:39:39'),
(4, 'Flex de carga Samsun A32 HG', 5, 12, 8, 0, 0, 'FC-000004', 'Samsum', 'A32 HG', 'FC-000004', '1', 0, 2, 3, 1, NULL, '2023-06-16 07:49:45'),
(5, 'Flex de carga Samsun A70', 6, 14, 9, 0, 0, 'FC-000005', 'Samsum', 'A70', 'FC-000005', '1', 1, 1, 2, 1, NULL, '2023-06-07 09:28:07'),
(6, 'Flex de carga Samsun A20', 4, 10, 7, 0, 0, 'FC-000006', 'Samsum', 'A20', 'FC-000006', '1', 1, 1, 1, 1, NULL, '2023-06-09 00:45:14'),
(7, 'Flex de carga Samsun A20S', 5, 12, 8, NULL, NULL, 'FC-000007', 'Samsum', 'A20S', 'FC-000007', '1', 1, 1, 1, 1, NULL, '2023-06-07 09:28:21'),
(8, 'Flex de carga Samsun A52', 5, 12, 8, NULL, NULL, 'FC-000008', 'Samsum', 'A52', 'FC-000008', '1', 1, 1, 1, 1, NULL, NULL),
(9, 'Flex de carga Samsun A10', 6, 14, 9, NULL, NULL, 'FC-000009', 'Samsum', 'A10', 'FC-000009', '1', 1, 1, 1, 1, NULL, NULL),
(10, 'Flex de carga Samsun A21S', 4, 10, 7, NULL, NULL, 'FC-000010', 'Samsum', 'A21S', 'FC-000010', '1', 3, 1, 1, 1, NULL, NULL),
(11, 'Modulo de carga Samsun A71', 5, 10, 8, NULL, NULL, 'Samsum A71', 'Samsum', 'A71', 'MC-000001', NULL, 1, 2, 2, 1, NULL, NULL),
(12, 'Modulo de carga Samsum A30', 6, 11, 8, NULL, NULL, 'Samsum A30', 'Samsum', 'A30', 'MC-000002', NULL, 1, 2, 2, 1, NULL, NULL),
(13, 'Modulo de carga Samsum A51', 4, 8, 6, NULL, NULL, 'Samsum A51', 'Samsum', 'A51', 'MC-000003', NULL, 1, 2, 2, 1, NULL, NULL),
(14, 'Modulo de carga Samsun A80', 7, 12, 9, NULL, NULL, 'Samsum A80', 'Samsum', 'A80', 'MC-000004', NULL, 1, 1, 2, 1, NULL, NULL),
(15, 'Modulo de carga Samsun A11', 8, 15, 10, NULL, NULL, 'Samsum A11', 'Samsum', 'A11', 'MC-000005', NULL, 1, 3, 2, 1, NULL, NULL),
(16, 'Modulo de carga Samsun A31', 5, 10, 7, NULL, NULL, 'Samsum A31', 'Samsum', 'A31', 'MC-000006', NULL, 1, 1, 2, 1, NULL, NULL),
(17, 'Modulo de carga Samsun A12', 5, 10, 7, NULL, NULL, 'Samsum A12', 'Samsum', 'A12', 'MC-000007', NULL, 1, 2, 2, 1, NULL, NULL),
(18, 'Modulo de carga Samsun A20S', 6, 11, 8, NULL, NULL, 'Samsum A20S', 'Samsum', 'A20S', 'MC-000008', NULL, 1, 2, 2, 1, NULL, NULL),
(19, 'Modulo de carga Samsun A20', 6, 11, 8, 0, 0, 'MC-000009', 'Samsum', 'A20', 'MC-000009', 'XD', 0, 3, 2, 1, NULL, '2023-06-09 06:28:33'),
(20, 'Modulo de carga Samsun A31', 7, 15, 10, NULL, NULL, 'Samsum A31', 'Samsum', 'A31', 'MC-000010', NULL, 1, 1, 2, 1, NULL, NULL),
(21, 'Micas Glass Samsum A03S', 0.2, 1, 0.5, NULL, NULL, 'Samsum A03S', 'Mica', 'Glass', 'MiC-000001', NULL, 1, 1, 3, 1, NULL, NULL),
(22, 'Micas Glass Huawei', 0.2, 1, 0.5, NULL, NULL, 'Huawei', 'Mica', 'Glass', 'MiC-000002', NULL, 1, 1, 3, 1, NULL, NULL),
(23, 'Mica Glass Realme GI', 0.2, 1, 0.5, NULL, NULL, 'Realme 6I', 'Mica', 'Glass', 'MiC-000003', NULL, 1, 3, 3, 1, NULL, NULL),
(24, 'Mica Sony Z4', 0.2, 1, 0.5, NULL, NULL, 'Sony Z4', 'Mica', NULL, 'MiC-000004', NULL, 1, 2, 3, 1, NULL, NULL),
(25, 'Mica HTC 625', 0.21, 1, 0.5, NULL, NULL, 'HTC 625', 'Mica', NULL, 'MiC-000005', NULL, 1, 2, 3, 1, NULL, NULL),
(26, 'Mica PHONE 6G', 0.22, 1, 0.5, NULL, NULL, 'Phone 6G', 'Mica', NULL, 'MiC-000006', NULL, 1, 3, 3, 1, NULL, NULL),
(27, 'Mica HUAWEI P8 PLUS', 0.23, 1, 0.5, NULL, NULL, 'Huawei P8 PLUS', 'Mica', NULL, 'MiC-000007', NULL, 1, 2, 3, 1, NULL, NULL),
(28, 'Mica HUAWEI YG3S', 0.24, 1, 0.5, NULL, NULL, 'Huawei YG3S', 'Mica', NULL, 'MiC-000008', NULL, 1, 1, 3, 1, NULL, NULL),
(29, 'Mica HUAWEI Y52D', 0.25, 1, 0.5, NULL, NULL, 'Huawei Y52D', 'Mica', NULL, 'MiC-000009', NULL, 1, 2, 3, 1, NULL, NULL),
(30, 'Mica SONY 21', 0.26, 1, 0.5, NULL, NULL, 'Sony 21', 'Mica', NULL, 'MiC-000010', NULL, 1, 3, 3, 1, NULL, NULL),
(31, 'Ping de cargas', 0.2, 3, 1, NULL, NULL, 'Pi-000001', 'Ping', NULL, NULL, NULL, 1, 3, 4, 1, NULL, NULL),
(32, 'Producto nuevo de pruebasts', 10.5, 15, 18, 20, 22, 'QR123456', 'Marca de prueba', 'Modelo de prueba', 'CP1234', 'Descripción del producto de prueba', 1, 1, 2, 1, '2023-05-23 04:22:04', '2023-05-23 04:22:04'),
(33, 'Producto nuevo de pruebasts', 10.5, 15, 18, 20, 22, 'QR123456', 'Marca de prueba', 'Modelo de prueba', 'CP1234', 'Descripción del producto de prueba', 1, 1, 2, 1, '2023-05-23 04:27:57', '2023-05-23 04:27:57'),
(34, 'Pañales', 10.5, 15, 18, 20, 22, 'QR123456', 'Marca de prueba', 'Modelo de prueba', 'CP1234', 'Descripción del producto de prueba', 1, 1, 2, 1, '2023-05-23 04:30:42', '2023-05-23 04:30:42'),
(35, 'Mica Samsung A100', 0.5, 1, 0.8, 0.75, 0.9, 'MicSMA100', 'Samsung', 'A100', 'MicSMA100', 'Mica para celulares Samsung A100', 1, 1, 3, 1, '2023-06-04 06:42:32', '2023-06-04 06:42:32'),
(36, 'adsf', 10, 20, 19, 18, 17, 'dasfad', 'adsf', 'adsf', 'dasfad', 'asdfdsfsdaf', 0, 2, 1, 1, '2023-06-05 10:01:33', '2023-06-10 20:27:34'),
(37, 'adsfadsf', 1, 1, 1, 1, 1, 'dfads', 'adsfadsf', 'asdfdsaf', 'dfads', '11111111', 0, 2, 1, 1, '2023-06-05 23:20:05', '2023-06-10 20:27:40'),
(38, 'ASD', 1, 2, 3, 4, 5, 'HHN1', 'Sandsad', 'Cargador', 'HHN1', 'adfdsfadsfdsf', 0, 2, 15, 1, '2023-06-09 03:48:22', '2023-06-10 20:27:47'),
(39, 'abc', 12, 15, 17, 13, 5.5, 'FC-000009', 'abc', 'abc', 'FC-000009', 'sadasd', 1, 3, 5, 1, '2023-06-27 04:04:26', '2023-06-27 04:04:59'),
(40, 'Prueba1996', 5, 9, 8, 7, 6, 'Prueba', 'Prueba1996', 'Prueba1996', 'Prueba', 'sdasdsad', 1, 6, 3, 1, '2023-07-25 01:06:51', '2023-07-25 01:06:51'),
(41, 'ProductoX', 1, 5, 4, 3, 2, '0001', 'asdfadsf', 'afadf', '0001', 'afdsfsadf', 1, 2, 3, 1, '2023-07-27 17:05:36', '2023-07-27 17:05:36'),
(42, 'Hunter Lynch', 83, 579, 514, 33, 372, 'Burton Avila', 'Dalton Houston', 'Kevin Burgess', 'Blaze Booker', 'Myles Spears', 1, 3, 12, 1, NULL, NULL),
(43, 'Chadwick Lowery', 167, 5, 405, 422, 222, 'Keelie Mays', 'Jane Mccray', 'Francis Potter', 'Veronica Peterson', 'Ahmed Kirk', 0, 5, 7, 1, NULL, NULL),
(44, 'Kasimir Marks', 86, 85, 365, 256, 332, 'India Lindsay', 'Mohammad Spears', 'Bruce Simmons', 'Felix Harrington', 'Ray Gordon', 1, 3, 5, 1, NULL, NULL),
(45, 'Aspen Lynch', 141, 479, 472, 94, 53, 'Laura Franco', 'Hiroko Washington', 'Timon Oneal', 'Kameko Gibbs', 'Debra Bernard', 1, 2, 8, 1, NULL, NULL),
(46, 'Abel Valenzuela', 98, 369, 139, 392, 118, 'Gary Robbins', 'Grant Morales', 'Ifeoma Mosley', 'Alana Wilkinson', 'Shea Dyer', 0, 5, 8, 1, NULL, NULL),
(47, 'Ina Cain', 464, 397, 418, 390, 598, 'Hermione Norton', 'Ocean Cotton', 'April Donovan', 'Wanda Snider', 'Chaim Dillard', 1, 6, 16, 1, NULL, NULL),
(48, 'Kaseem Malone', 112, 26, 13, 228, 299, 'Barry Landry', 'Moses Galloway', 'Constance Maddox', 'Kaseem Hansen', 'Harriet Prince', 0, 6, 5, 1, NULL, NULL),
(49, 'Ferdinand Fisher', 30, 518, 299, 6, 235, 'Jared Nicholson', 'Arden Mathis', 'Forrest Francis', 'Halee Crosby', 'Veda Jones', 1, 5, 1, 1, NULL, NULL),
(50, 'Whoopi Frost', 190, 456, 320, 327, 480, 'Zorita Stephens', 'Clarke Abbott', 'Demetrius Riggs', 'Demetrius Sheppard', 'Amir King', 1, 4, 3, 1, NULL, NULL),
(51, 'Dane Stevens', 237, 291, 331, 258, 226, 'Russell Beach', 'Reuben Mueller', 'Valentine Hines', 'Paula Haynes', 'Declan Ryan', 0, 6, 4, 1, NULL, NULL),
(52, 'Dillon Morin', 567, 561, 229, 495, 551, 'Kelsey Nash', 'Maia Barber', 'Isaiah Copeland', 'Nicholas Blair', 'Kelsie Valdez', 1, 3, 10, 1, NULL, NULL),
(53, 'Karleigh Cooke', 374, 55, 442, 82, 11, 'Samuel Bauer', 'Camden Bradley', 'Berk Dawson', 'Sebastian Barry', 'Tyler Hurley', 0, 2, 15, 1, NULL, NULL),
(54, 'Carlos French', 460, 383, 251, 224, 295, 'Aimee Greene', 'Hiram Clayton', 'Benjamin Thornton', 'Cheyenne Avery', 'Reuben Owen', 1, 6, 17, 1, NULL, NULL),
(55, 'Lacota Murphy', 468, 518, 464, 90, 49, 'Julie Diaz', 'Roth Duran', 'Nasim Avery', 'Rama Mcmahon', 'Susan Key', 0, 3, 12, 1, NULL, NULL),
(56, 'Guinevere Haynes', 261, 564, 213, 213, 117, 'Anthony Ratliff', 'Derek Schwartz', 'Aidan Hester', 'Dieter Kemp', 'Griffith Hooper', 0, 2, 15, 1, NULL, NULL),
(57, 'Upton Santana', 544, 466, 124, 44, 40, 'Keely Hoffman', 'Kyra Wood', 'Lester Cash', 'Hoyt Brady', 'Natalie Watson', 0, 2, 1, 1, NULL, NULL),
(58, 'Amir Clayton', 535, 22, 30, 266, 448, 'Lionel Hobbs', 'Hiroko Justice', 'Quinn Horne', 'Octavius Sanford', 'Brody Peterson', 1, 4, 14, 1, NULL, NULL),
(59, 'Madison Calhoun', 335, 495, 526, 393, 413, 'Brandon Harper', 'Shellie Stephens', 'Alec Mcgowan', 'Xander Glenn', 'Berk Ross', 0, 4, 4, 1, NULL, NULL),
(60, 'Phelan Frazier', 121, 26, 263, 560, 461, 'Joel Swanson', 'Chandler Sosa', 'Tyler Sweeney', 'Charlotte Haynes', 'Karly Mcclain', 1, 5, 15, 1, NULL, NULL),
(61, 'Charles Melendez', 160, 476, 533, 424, 419, 'Timothy Keith', 'Libby Small', 'Oliver White', 'Yoshio Buckner', 'Blythe Todd', 1, 6, 9, 1, NULL, NULL),
(62, 'Brett Jacobs', 557, 508, 336, 579, 79, 'Indira Gross', 'Emmanuel Atkinson', 'Austin Davidson', 'Dominique Hendricks', 'David Nolan', 0, 2, 5, 1, NULL, NULL),
(63, 'Ezekiel Buckley', 517, 25, 98, 227, 585, 'Ariana Sharp', 'Yardley Vang', 'Wing Lindsey', 'Zorita Dorsey', 'Raven Gillespie', 1, 4, 5, 1, NULL, NULL),
(64, 'Graham Peters', 415, 370, 299, 251, 150, 'Curran Peterson', 'Rose Raymond', 'Cedric Hall', 'Miriam Munoz', 'Cynthia Mcmahon', 0, 6, 4, 1, NULL, NULL),
(65, 'Brynne Hatfield', 277, 10, 108, 367, 257, 'Scarlett Koch', 'Nicholas Jennings', 'Armand Moore', 'Xanthus Talley', 'Daniel Crawford', 0, 6, 11, 1, NULL, NULL),
(66, 'Caldwell Whitaker', 17, 199, 316, 434, 584, 'Miriam Evans', 'Buckminster Rowland', 'Anjolie Middleton', 'Kato Holt', 'Ezekiel Rich', 1, 2, 5, 1, NULL, NULL),
(67, 'Charissa Stein', 271, 274, 65, 133, 510, 'Tyrone Davidson', 'Abel Savage', 'Yetta Frost', 'Orla Murray', 'Theodore Vaughn', 0, 5, 1, 1, NULL, NULL),
(68, 'Sara Farley', 155, 366, 400, 136, 529, 'Jin Patel', 'Lilah Cline', 'Brielle Cohen', 'Tatum Whitley', 'Stacey Brown', 0, 1, 11, 1, NULL, NULL),
(69, 'Yolanda Houston', 527, 10, 127, 74, 568, 'Russell Gilmore', 'Karen Henson', 'Xavier Leonard', 'Paul Oneil', 'Martha Graves', 1, 5, 10, 1, NULL, NULL),
(70, 'Rina Hoover', 366, 199, 113, 109, 99, 'Reece Davidson', 'August Boone', 'Debra Vaughan', 'Zorita Simon', 'Angelica Hahn', 1, 5, 12, 1, NULL, NULL),
(71, 'Azalia Webster', 72, 557, 25, 450, 104, 'Ramona Nieves', 'Marvin Underwood', 'Cathleen Bell', 'Jarrod Bryan', 'Abraham Branch', 0, 4, 2, 1, NULL, NULL),
(72, 'Donovan Oliver', 343, 327, 359, 410, 336, 'Jason Riley', 'Ralph Donovan', 'Austin Sellers', 'Henry Hall', 'Reese Andrews', 0, 3, 17, 1, NULL, NULL),
(73, 'Cassidy Rowland', 184, 42, 222, 544, 396, 'Dai Kane', 'Griffin Cruz', 'Michael Guerra', 'Daniel Lara', 'Patricia Soto', 1, 6, 3, 1, NULL, NULL),
(74, 'Colette Cervantes', 411, 337, 128, 138, 394, 'Zahir Watkins', 'Kim James', 'Gloria Burnett', 'Abra Davenport', 'Ivana Mcclure', 1, 7, 9, 1, NULL, NULL),
(75, 'Keiko Singleton', 229, 496, 272, 135, 165, 'Gareth Elliott', 'John Mcguire', 'Britanney Vaughn', 'Lareina Sparks', 'Ezra Rodriguez', 0, 5, 4, 1, NULL, NULL),
(76, 'Bo Combs', 258, 361, 563, 446, 85, 'Gillian Mcdowell', 'Caleb Richardson', 'Sydney Delacruz', 'Byron Armstrong', 'Virginia Gonzales', 1, 6, 10, 1, NULL, NULL),
(77, 'Elton Sargent', 470, 503, 304, 486, 83, 'April Buck', 'Iona Hendrix', 'Roanna Murphy', 'Garrett Weiss', 'Larissa Franklin', 0, 2, 6, 1, NULL, NULL),
(78, 'Duncan Williams', 465, 344, 551, 531, 209, 'Ryan Pratt', 'Ramona Garrett', 'Halee Lambert', 'Rylee Sims', 'Iona Holmes', 1, 5, 1, 1, NULL, NULL),
(79, 'Courtney Pitts', 248, 406, 537, 13, 423, 'Daryl Hewitt', 'Paul Witt', 'Holmes Payne', 'Quynn Puckett', 'Angelica Dodson', 1, 3, 3, 1, NULL, NULL),
(80, 'Ciara Bradshaw', 330, 166, 446, 238, 97, 'Adam Mckee', 'Sylvester Webster', 'Nadine Reeves', 'Leroy Robinson', 'Alexis Morrison', 0, 7, 2, 1, NULL, NULL),
(81, 'Gareth Mcgee', 225, 274, 240, 23, 221, 'Arden Barrera', 'Ulric Butler', 'Candace Gilmore', 'Haviva Schwartz', 'Wyatt Chambers', 0, 3, 12, 1, NULL, NULL),
(82, 'Tasha Lindsey', 570, 298, 117, 411, 325, 'Tara Bender', 'Tarik Woodard', 'Caleb Sharp', 'Amaya Carver', 'Rana Crosby', 1, 7, 9, 1, NULL, NULL),
(83, 'Kareem Mosley', 119, 124, 76, 421, 450, 'Anastasia Weaver', 'Timothy Ward', 'Hayden Francis', 'Bevis Hendricks', 'Imogene Lynn', 1, 1, 10, 1, NULL, NULL),
(84, 'Chadwick Wiggins', 43, 19, 80, 246, 45, 'Chantale Beasley', 'Ahmed Allen', 'Bell Blackburn', 'Malik Hammond', 'Sonya Fuentes', 0, 7, 3, 1, NULL, NULL),
(85, 'Amelia Barnett', 60, 168, 293, 120, 409, 'Colin Osborn', 'MacKensie Noel', 'Harper Sandoval', 'Benedict Young', 'Miranda Ellis', 0, 1, 14, 1, NULL, NULL),
(86, 'Kameko Ryan', 550, 307, 210, 100, 387, 'Elijah Moss', 'Ulysses Collier', 'Imelda Hampton', 'Hedda Tyler', 'Kalia Ayala', 1, 6, 8, 1, NULL, NULL),
(87, 'Nicholas Wilson', 581, 91, 96, 123, 177, 'Wynter Hooper', 'Xena Hanson', 'Fletcher Acosta', 'Forrest Doyle', 'Halee Lane', 1, 2, 2, 1, NULL, NULL),
(88, 'Ivan Noble', 13, 484, 429, 519, 92, 'Janna Taylor', 'Reece Wagner', 'Kato Nixon', 'Tad Ryan', 'Ruby Robbins', 1, 6, 3, 1, NULL, NULL),
(89, 'Cain Noble', 199, 354, 295, 364, 63, 'Fritz Lambert', 'Amelia Sutton', 'Asher Blankenship', 'Eliana Pittman', 'Cassandra Dennis', 0, 6, 3, 1, NULL, NULL),
(90, 'Adria Chavez', 505, 1, 303, 286, 164, 'Blossom Lucas', 'Ferris Harrington', 'Emerald Dudley', 'Hu Sandoval', 'Naida Cline', 1, 7, 8, 1, NULL, NULL),
(91, 'Allistair Mcclain', 347, 130, 417, 403, 145, 'Madonna Landry', 'Brent Parrish', 'Belle Diaz', 'Madonna Ferrell', 'Vincent Padilla', 1, 4, 4, 1, NULL, NULL),
(92, 'Elliott Roberson', 65, 490, 418, 124, 28, 'Cairo Church', 'Yetta Vinson', 'Reagan Cherry', 'Henry Erickson', 'Shaine Eaton', 1, 2, 6, 1, NULL, NULL),
(93, 'Thomas Schultz', 550, 504, 158, 153, 324, 'Myles Valenzuela', 'Caleb Howard', 'Rhonda Rollins', 'Rosalyn Cantu', 'Dalton Matthews', 0, 2, 9, 1, NULL, NULL),
(94, 'Avye Cantrell', 339, 8, 295, 300, 290, 'Ramona Barton', 'Kelly Stuart', 'Hasad Estrada', 'Kelly Nixon', 'Emily Howe', 1, 3, 5, 1, NULL, NULL),
(95, 'Teagan Meyers', 374, 508, 377, 198, 375, 'Maia Shepherd', 'Ciaran Gomez', 'Kylie Howell', 'Adam Coffey', 'Alec Rose', 0, 1, 8, 1, NULL, NULL),
(96, 'Ryan Stark', 562, 214, 381, 188, 206, 'Daphne Rowe', 'Hannah Goodwin', 'Willow Witt', 'Amity Mooney', 'Ivan Mcleod', 0, 5, 5, 1, NULL, NULL),
(97, 'April Kim', 519, 469, 361, 520, 25, 'Blythe Pitts', 'Raymond Spears', 'Jerome Day', 'Hayes Everett', 'Palmer Cummings', 1, 7, 13, 1, NULL, NULL),
(98, 'Julie Hensley', 212, 391, 42, 69, 168, 'Nolan Duran', 'Arthur Garrison', 'Macy Walton', 'Jessamine Meyer', 'Alden Kinney', 1, 5, 9, 1, NULL, NULL),
(99, 'Nyssa Joyce', 150, 434, 334, 7, 281, 'Florence Garrison', 'Tate Avila', 'Barclay Lester', 'Brody Howell', 'Destiny Bowers', 1, 4, 13, 1, NULL, NULL),
(100, 'Channing Reid', 210, 529, 211, 384, 107, 'Ahmed Gamble', 'Amena Grimes', 'Florence Marquez', 'Nissim Flores', 'Elton Houston', 0, 3, 5, 1, NULL, NULL),
(101, 'Dale Cardenas', 5, 75, 482, 508, 405, 'Elijah Matthews', 'Hayfa Dickson', 'Bradley Francis', 'Driscoll Conner', 'Edward Ferrell', 0, 3, 16, 1, NULL, NULL),
(102, 'Vanna Valentine', 314, 57, 197, 56, 30, 'Maxwell Kelly', 'Amy Lang', 'Raphael Sears', 'Delilah Moran', 'Jorden Ratliff', 1, 5, 11, 1, NULL, NULL),
(103, 'Darryl Clark', 499, 13, 489, 5, 440, 'Yen Snyder', 'Tamara Ross', 'Cairo Tucker', 'Flavia Hale', 'Celeste Sweeney', 1, 1, 16, 1, NULL, NULL),
(104, 'Skyler Henderson', 286, 574, 100, 52, 467, 'Olympia Thomas', 'Lani Buck', 'Yasir Russo', 'Roth Marsh', 'Hall Brewer', 1, 5, 10, 1, NULL, NULL),
(105, 'Cody Rice', 470, 400, 297, 66, 127, 'Emi Gilbert', 'Karina Barry', 'Burke Howell', 'Caleb Mueller', 'Macon Pittman', 0, 4, 9, 1, NULL, NULL),
(106, 'Francis Stout', 33, 447, 294, 17, 163, 'Beau Dale', 'Linus Patton', 'Vernon Johnson', 'David Rasmussen', 'Veronica Chan', 1, 6, 10, 1, NULL, NULL),
(107, 'Ezekiel Cummings', 493, 495, 354, 139, 228, 'Avram Fleming', 'Joel Hurst', 'Solomon Cherry', 'Rama Rodriguez', 'Amos Ward', 0, 2, 10, 1, NULL, NULL),
(108, 'Fritz Franks', 392, 245, 222, 397, 214, 'Elliott Moran', 'Ferdinand Hawkins', 'Abel Barton', 'Dustin Payne', 'Breanna Mueller', 0, 4, 16, 1, NULL, NULL),
(109, 'Bernard Farmer', 370, 212, 234, 279, 258, 'Ginger Donaldson', 'Rose Ball', 'Lester Pollard', 'Jena Travis', 'Zenaida Norman', 0, 6, 11, 1, NULL, NULL),
(110, 'Patrick Gentry', 476, 265, 522, 258, 153, 'Megan Lindsay', 'Quinlan Chandler', 'Moses Quinn', 'Aretha Maldonado', 'Hanae Harrison', 1, 1, 1, 1, NULL, NULL),
(111, 'Alana Cruz', 36, 407, 524, 147, 544, 'Carolyn Acevedo', 'Anjolie Kane', 'Dolan James', 'Owen Parrish', 'Callum Shepard', 0, 5, 16, 1, NULL, NULL),
(112, 'Ginger Mccarthy', 169, 149, 211, 302, 373, 'Yoshi White', 'Jessamine Sweeney', 'Edward Conner', 'Edward Tran', 'Sawyer Langley', 1, 2, 8, 1, NULL, NULL),
(113, 'Jolie Carpenter', 166, 146, 187, 193, 103, 'Norman Kelly', 'Lenore O\'Neill', 'Macon Perkins', 'Nina Barrett', 'Maxwell Marsh', 1, 6, 13, 1, NULL, NULL),
(114, 'Wallace Lancaster', 187, 229, 506, 474, 481, 'Gareth Peterson', 'Zahir Nixon', 'Cally Blake', 'Harding Rojas', 'Madeson Zamora', 0, 6, 7, 1, NULL, NULL),
(115, 'Mannix Moss', 453, 453, 507, 226, 579, 'Mark Baird', 'Naomi Bradford', 'Caleb Bolton', 'Herrod Hopkins', 'Berk Cruz', 1, 1, 5, 1, NULL, NULL),
(116, 'Walker Velez', 168, 479, 281, 108, 119, 'Cadman Lewis', 'Stone Warner', 'Barclay Pollard', 'Doris Sandoval', 'Cooper Rich', 0, 4, 16, 1, NULL, NULL),
(117, 'Miranda Bauer', 2, 81, 193, 347, 578, 'Robert Welch', 'Erasmus Hopkins', 'Irene Mullins', 'Chandler Chaney', 'Chantale Wiggins', 0, 3, 3, 1, NULL, NULL),
(118, 'Kaye Stafford', 201, 422, 518, 74, 190, 'Priscilla Mcgee', 'Dorothy Ware', 'Keiko Johns', 'Chancellor Gill', 'Elmo Mclaughlin', 1, 2, 16, 1, NULL, NULL),
(119, 'Ali Walter', 139, 331, 438, 192, 119, 'Tobias Gardner', 'Colette Gross', 'Althea Charles', 'Meredith Garcia', 'Evan Walter', 1, 4, 5, 1, NULL, NULL),
(120, 'Keane Delacruz', 468, 181, 71, 233, 558, 'Hayden Cochran', 'Imelda Strickland', 'Craig Ellison', 'Orla Sullivan', 'Chandler Barnett', 0, 4, 15, 1, NULL, NULL),
(121, 'Unity Barrera', 81, 241, 314, 402, 440, 'Ramona Sears', 'Brenden Hooper', 'Ramona Daugherty', 'Rama Burns', 'Yasir Nieves', 1, 6, 15, 1, NULL, NULL),
(122, 'Porter Fischer', 4, 549, 200, 174, 8, 'Anne Baxter', 'Edward Kirby', 'Hilel Kirkland', 'Harriet Silva', 'Brooke Riley', 0, 7, 2, 1, NULL, NULL),
(123, 'Clare Kennedy', 538, 76, 202, 27, 30, 'John Frazier', 'Sierra Flores', 'Ora Weeks', 'Graiden Burton', 'Thaddeus Wiggins', 0, 6, 6, 1, NULL, NULL),
(124, 'Tanek Ruiz', 255, 441, 565, 583, 191, 'Galvin Baxter', 'Cain Lowery', 'Randall Hammond', 'Athena Combs', 'Lillith Morgan', 0, 5, 10, 1, NULL, NULL),
(125, 'Iona Clayton', 65, 575, 135, 418, 518, 'Alden Brennan', 'Quon Crawford', 'Jocelyn Ruiz', 'Lesley Davidson', 'Xavier Lang', 0, 1, 5, 1, NULL, NULL),
(126, 'Scarlet Nash', 248, 21, 463, 344, 194, 'Xaviera Dyer', 'Katelyn Clark', 'Thaddeus Fernandez', 'Bevis Floyd', 'Elvis Watts', 0, 5, 9, 1, NULL, NULL),
(127, 'Lester Keith', 479, 581, 96, 142, 285, 'Cassandra Patterson', 'Odessa Peterson', 'Lev Mcfarland', 'Lareina Whitley', 'Garrison Foley', 0, 5, 1, 1, NULL, NULL),
(128, 'Gary Burt', 104, 498, 444, 270, 75, 'Xanthus Boyle', 'Justin Rogers', 'Axel Macdonald', 'Frances Osborne', 'Merrill Byers', 1, 2, 8, 1, NULL, NULL),
(129, 'Eaton Cummings', 54, 171, 333, 333, 319, 'Darius Marks', 'Steven Hardin', 'Keane Guy', 'Gareth Cruz', 'Arden Ellison', 0, 2, 3, 1, NULL, NULL),
(130, 'Rajah Flowers', 126, 599, 559, 309, 179, 'Pandora Gaines', 'Amethyst Burns', 'Karly Henderson', 'Nyssa Henderson', 'Lucius Roach', 1, 2, 2, 1, NULL, NULL),
(131, 'Clare Christensen', 490, 598, 396, 358, 491, 'Yoshi Conley', 'Phelan Battle', 'Kermit Anthony', 'Ferris Rowland', 'Joseph Nieves', 1, 6, 3, 1, NULL, NULL),
(132, 'Maggy Hayes', 521, 161, 328, 86, 219, 'Hyatt Cotton', 'Vielka Mckenzie', 'Quintessa Foreman', 'Howard Figueroa', 'Dean Johnson', 0, 5, 6, 1, NULL, NULL),
(133, 'Hedda Duke', 388, 503, 349, 86, 94, 'Orla Singleton', 'Jasper Olsen', 'Zia Goodwin', 'Wing Whitehead', 'Jamalia Humphrey', 1, 2, 16, 1, NULL, NULL),
(134, 'Vernon Hooper', 207, 72, 524, 255, 42, 'Lavinia Jensen', 'Jerry Higgins', 'Willow Armstrong', 'Christopher Solomon', 'Timothy Lawson', 1, 6, 7, 1, NULL, NULL),
(135, 'Chava Carpenter', 9, 534, 378, 408, 309, 'Asher Hill', 'Arsenio Downs', 'Colton Cannon', 'Thane Lindsay', 'Rose Dickerson', 0, 5, 14, 1, NULL, NULL),
(136, 'Bradley Avila', 554, 358, 193, 142, 120, 'Kirsten Hartman', 'Caleb Clark', 'Noelle Cooper', 'Alyssa Waters', 'Sawyer Lamb', 0, 2, 1, 1, NULL, NULL),
(137, 'Ainsley Becker', 155, 329, 452, 404, 207, 'Jonas Tillman', 'Karly Wall', 'Wang Serrano', 'Carolyn Walter', 'Yen Waters', 1, 2, 8, 1, NULL, NULL),
(138, 'Lillith Grant', 527, 186, 182, 543, 344, 'Hadley Cote', 'Mohammad Cortez', 'Elmo Sharpe', 'Charde Cantu', 'Molly Massey', 1, 7, 8, 1, NULL, NULL),
(139, 'Yuri Cooper', 377, 180, 565, 507, 453, 'Tara Ortega', 'Hollee Randolph', 'Amal Daniels', 'Tashya Logan', 'Kennedy Hopper', 1, 4, 4, 1, NULL, NULL),
(140, 'Farrah Valdez', 241, 255, 94, 32, 38, 'Paki Bullock', 'Wylie Finch', 'Charissa Reyes', 'Garrett Underwood', 'Brody Decker', 1, 2, 11, 1, NULL, NULL),
(141, 'Kiona Burns', 440, 444, 244, 55, 321, 'Allegra Calderon', 'Abbot Stevenson', 'Tobias Martinez', 'Ivan Coffey', 'Beverly Walsh', 0, 6, 5, 1, NULL, NULL),
(142, 'Kibo Spears', 471, 160, 520, 19, 1, 'Mona Hull', 'Vaughan Noel', 'Mara Warner', 'Devin Henderson', 'Amery Lowery', 0, 1, 2, 1, NULL, NULL),
(143, 'Jocelyn Jacobson', 369, 464, 254, 375, 76, 'Shaeleigh Dodson', 'Galvin Mcdonald', 'Wayne Marshall', 'Meredith Salinas', 'Alec Brock', 0, 2, 5, 1, NULL, NULL),
(144, 'Molly Lancaster', 402, 135, 249, 328, 426, 'Raymond Mcclain', 'Clarke Vinson', 'Stewart Cantu', 'Leigh Mullen', 'Gannon Mejia', 0, 4, 14, 1, NULL, NULL),
(145, 'Ivor Young', 470, 592, 154, 427, 366, 'Hayden Walton', 'Colleen Michael', 'Levi Hopper', 'Hilary Melton', 'Danielle Vargas', 0, 3, 2, 1, NULL, NULL),
(146, 'Blossom Williams', 556, 117, 194, 588, 515, 'Brett Gilliam', 'Allen Hayes', 'Miranda Kramer', 'Zeus Vance', 'Keely Lowe', 1, 5, 3, 1, NULL, NULL),
(147, 'Britanney Quinn', 413, 582, 115, 276, 67, 'Roth Carver', 'Quentin Pickett', 'Leo Fernandez', 'Fritz Walters', 'Lewis Fernandez', 0, 6, 3, 1, NULL, NULL),
(148, 'Colby Fuller', 393, 502, 433, 92, 26, 'Addison O\'donnell', 'Garrett Brown', 'Laurel Rosario', 'Desirae Coffey', 'Nissim Figueroa', 1, 3, 17, 1, NULL, NULL),
(149, 'Deacon Lucas', 512, 372, 19, 498, 139, 'Matthew Madden', 'Zahir Crane', 'Quentin Juarez', 'Zoe Valenzuela', 'Denise Mclean', 0, 4, 9, 1, NULL, NULL),
(150, 'Merritt Curry', 66, 6, 341, 530, 209, 'Jaden Ramos', 'Imogene Dalton', 'Daphne Lane', 'Hall Henry', 'Len Palmer', 1, 6, 10, 1, NULL, NULL),
(151, 'Timothy Mullen', 509, 225, 537, 592, 102, 'Cleo Bruce', 'Alfreda Bowman', 'Ocean Russo', 'Jermaine Beasley', 'Mary Barton', 0, 6, 9, 1, NULL, NULL),
(152, 'Amos Malone', 434, 168, 350, 11, 553, 'Mara Mcfarland', 'Yvette Hobbs', 'Kenneth Nielsen', 'Ella Mcintosh', 'Jolene Steele', 0, 2, 14, 1, NULL, NULL),
(153, 'Dahlia Mcneil', 85, 154, 317, 199, 306, 'Camden Case', 'Denise Salas', 'Walter Rich', 'Cynthia Guerra', 'Ronan Strong', 1, 5, 5, 1, NULL, NULL),
(154, 'Charlotte Rios', 102, 118, 411, 16, 322, 'Brandon Ramos', 'Ira Brennan', 'Myles Bentley', 'MacKenzie Church', 'Lev Bruce', 0, 4, 10, 1, NULL, NULL),
(155, 'Fay Tyson', 198, 98, 151, 44, 506, 'Delilah Hudson', 'Isabelle Kent', 'Hector Chambers', 'Bryar Vaughn', 'Tana Craft', 1, 1, 1, 1, NULL, NULL),
(156, 'Mona Baird', 198, 480, 191, 109, 80, 'Tanek Wilson', 'Macon Kane', 'Joseph Mccullough', 'Alana Graves', 'Cameran Fletcher', 1, 4, 3, 1, NULL, NULL),
(157, 'Jocelyn Osborn', 385, 455, 5, 104, 11, 'Marcia Serrano', 'Gretchen Kent', 'Arden Casey', 'Brett Reilly', 'Imogene Kemp', 1, 3, 15, 1, NULL, NULL),
(158, 'Warren Norman', 490, 184, 266, 501, 57, 'Constance Booth', 'Dorian Leblanc', 'Rinah Espinoza', 'Hanae May', 'Fleur Wallace', 1, 6, 14, 1, NULL, NULL),
(159, 'Malik Parks', 519, 109, 18, 344, 241, 'Wyatt Sears', 'Cassady Webster', 'Wing Moon', 'Hope Montoya', 'Rosalyn Campbell', 1, 5, 12, 1, NULL, NULL),
(160, 'John Beard', 351, 99, 349, 238, 497, 'Dean Graves', 'Moana Baldwin', 'Lael Gallagher', 'Timothy Watkins', 'Carson Tanner', 0, 5, 14, 1, NULL, NULL),
(161, 'Vladimir Griffith', 476, 501, 417, 244, 509, 'Roary Price', 'Cody Mcgee', 'Castor Copeland', 'Anastasia Hutchinson', 'Diana Robinson', 1, 7, 3, 1, NULL, NULL),
(162, 'Serena Moore', 53, 464, 554, 337, 490, 'Justin Frost', 'Hilary Harrington', 'Tana Bray', 'Sarah Ruiz', 'Dillon Coleman', 1, 3, 2, 1, NULL, NULL),
(163, 'Shea Thompson', 147, 525, 402, 255, 210, 'Tasha Boyle', 'Jack Gentry', 'Hadley Dixon', 'Farrah Small', 'Roary Beasley', 0, 6, 9, 1, NULL, NULL),
(164, 'Sydney Bridges', 294, 2, 68, 112, 328, 'Dalton Everett', 'Wang Guy', 'Elton Murray', 'Sonia Cherry', 'Eric Stark', 0, 5, 6, 1, NULL, NULL),
(165, 'Inga Gomez', 568, 576, 509, 480, 180, 'Natalie Yang', 'Abdul Austin', 'Tucker Tillman', 'Lael Coffey', 'Hakeem Bullock', 0, 6, 5, 1, NULL, NULL),
(166, 'Ifeoma Lawson', 318, 322, 534, 497, 556, 'Kaseem Mueller', 'Marshall Heath', 'Bruce Miles', 'Cole Slater', 'Sigourney Hartman', 1, 4, 16, 1, NULL, NULL),
(167, 'Macon Bullock', 473, 284, 70, 494, 435, 'Serina Fowler', 'Chanda Cherry', 'Calista Hebert', 'Phillip Porter', 'Jerry Lawson', 0, 5, 16, 1, NULL, NULL),
(168, 'Bree Bradford', 425, 341, 511, 275, 484, 'Shannon Martinez', 'Reese Nichols', 'Hiroko Cross', 'Raymond Pittman', 'Tatiana Stephens', 0, 4, 15, 1, NULL, NULL),
(169, 'Nichole Johnston', 294, 95, 504, 356, 503, 'Darius Snow', 'Mariam Kirkland', 'Chaney Spence', 'Brent Golden', 'Vivian Cox', 0, 1, 13, 1, NULL, NULL),
(170, 'Madonna Manning', 346, 103, 65, 135, 497, 'Lisandra Bush', 'Hashim Lancaster', 'Glenna Stuart', 'Jared West', 'Sonya Mullen', 1, 6, 14, 1, NULL, NULL),
(171, 'Sade Garrison', 432, 132, 381, 83, 246, 'Rahim Tyler', 'Garrett Rowland', 'Tasha Hudson', 'Lynn Lawson', 'Desirae Alston', 0, 4, 7, 1, NULL, NULL),
(172, 'Tad Turner', 370, 205, 145, 575, 203, 'Cooper Eaton', 'Perry Yang', 'Zephania Simon', 'Ella O\'Neill', 'Mallory Higgins', 1, 4, 15, 1, NULL, NULL),
(173, 'Brock Santos', 599, 45, 48, 60, 464, 'Cherokee Bryan', 'Cedric Vinson', 'Sydnee Lowery', 'Christen Chapman', 'Eagan Neal', 1, 2, 10, 1, NULL, NULL),
(174, 'Wade Hodges', 296, 265, 269, 44, 399, 'Arsenio Contreras', 'Harriet Talley', 'Charde Justice', 'Cameron Byers', 'Ori Mcclure', 0, 4, 15, 1, NULL, NULL),
(175, 'Olympia Mcintyre', 92, 555, 72, 135, 9, 'Mechelle Klein', 'Barrett Morin', 'Guy Bartlett', 'Sean Wheeler', 'Xanthus White', 0, 1, 11, 1, NULL, NULL),
(176, 'Lyle Pierce', 262, 36, 365, 65, 387, 'Indira David', 'Nichole Cameron', 'Whilemina Bright', 'Quintessa Lopez', 'Allen Wynn', 0, 4, 11, 1, NULL, NULL),
(177, 'Felix Berry', 558, 47, 559, 60, 215, 'Ross Griffith', 'Yardley Singleton', 'Howard Todd', 'Alexa Beck', 'Valentine Olsen', 1, 2, 11, 1, NULL, NULL),
(178, 'Cadman Vargas', 175, 186, 311, 256, 107, 'Jolie Pennington', 'Hiram Rosario', 'Kathleen Sosa', 'Craig Haney', 'Morgan Underwood', 0, 1, 9, 1, NULL, NULL),
(179, 'Forrest Walker', 370, 412, 89, 217, 41, 'Nathaniel Lawrence', 'Joan O\'connor', 'Dante James', 'Leroy Brock', 'Craig Moran', 1, 4, 14, 1, NULL, NULL),
(180, 'Thane Cooper', 488, 96, 596, 381, 449, 'Lunea Richard', 'Dylan Lindsay', 'Inez Cohen', 'Philip Henderson', 'Leigh Moses', 0, 4, 7, 1, NULL, NULL),
(181, 'Hu Trevino', 290, 159, 286, 39, 42, 'Yasir Russo', 'Garrison Holloway', 'Ulysses Tucker', 'Renee Tyler', 'Ryan Padilla', 0, 1, 4, 1, NULL, NULL),
(182, 'Noel Luna', 375, 235, 309, 565, 481, 'Kiayada Cooper', 'Brian Gibbs', 'Amena Porter', 'Ann Shaffer', 'Deacon Gutierrez', 0, 5, 11, 1, NULL, NULL),
(183, 'Zahir Hunter', 270, 384, 305, 98, 294, 'Sierra Sweeney', 'Joshua Bell', 'Guy Todd', 'Calvin Gross', 'Charlotte Bell', 1, 6, 14, 1, NULL, NULL),
(184, 'Heather Haley', 521, 245, 488, 453, 585, 'Yetta Small', 'Eagan Ingram', 'Yoshio Franklin', 'Melyssa Shaffer', 'Lamar Olson', 1, 1, 2, 1, NULL, NULL),
(185, 'Mariko Roman', 326, 248, 210, 481, 314, 'Janna Cannon', 'India Monroe', 'Sebastian Navarro', 'Amber Jimenez', 'Plato Ramirez', 0, 4, 12, 1, NULL, NULL),
(186, 'Janna Hooper', 184, 493, 443, 140, 470, 'Adele Jimenez', 'Bianca Coleman', 'Ayanna Harvey', 'Jeremy Preston', 'Gil Ware', 0, 4, 2, 1, NULL, NULL),
(187, 'Jacob Hernandez', 83, 180, 383, 310, 174, 'Hop Fulton', 'Winter Stone', 'Kimberley Sampson', 'Shelley Huber', 'Logan Guerrero', 1, 6, 8, 1, NULL, NULL),
(188, 'Aidan Solis', 484, 563, 210, 195, 330, 'Alexander Sweet', 'Diana Finley', 'Lars Giles', 'Elizabeth Miller', 'Ralph Allison', 0, 4, 15, 1, NULL, NULL),
(189, 'Xenos Jefferson', 176, 311, 468, 284, 21, 'Shafira Delacruz', 'Clark Mooney', 'Giacomo Elliott', 'Elmo Guerrero', 'Cassandra Carson', 0, 3, 16, 1, NULL, NULL),
(190, 'Sonia Noel', 200, 191, 130, 442, 154, 'Oren Bowers', 'Karleigh Tucker', 'Forrest Steele', 'Kenyon Morse', 'Martena Mathews', 0, 3, 17, 1, NULL, NULL),
(191, 'Quinlan Macias', 375, 469, 338, 237, 385, 'Kimberly Cote', 'Louis Logan', 'Hunter Patrick', 'Anika Small', 'Rama Wilcox', 0, 1, 4, 1, NULL, NULL),
(192, 'Ori Bird', 572, 292, 570, 214, 291, 'Carly Barnett', 'Sacha Fowler', 'Trevor Melendez', 'Claire Carey', 'Cally Landry', 1, 6, 8, 1, NULL, NULL),
(193, 'Gloria Maldonado', 211, 64, 51, 14, 528, 'Eve Roach', 'Kamal Petty', 'Ariana Daniel', 'Jane Golden', 'Mikayla Sharpe', 1, 3, 3, 1, NULL, NULL),
(194, 'Deborah Meyers', 28, 158, 249, 205, 256, 'Kirk Warren', 'Jana Mcfarland', 'Clayton Watkins', 'Vladimir Buchanan', 'Imogene Jenkins', 1, 5, 6, 1, NULL, NULL),
(195, 'Abbot Mccray', 411, 461, 494, 139, 102, 'Maxine Parsons', 'Daquan Mcfarland', 'Jaden Cote', 'Kane Leblanc', 'Buckminster England', 1, 6, 14, 1, NULL, NULL),
(196, 'Lysandra Bird', 308, 296, 214, 194, 466, 'Brynne Rivers', 'Germaine Carney', 'Ivory Estes', 'Avye Hardy', 'Tarik Barker', 1, 6, 13, 1, NULL, NULL),
(197, 'Sopoline Dickson', 560, 245, 215, 410, 71, 'Lionel Shaffer', 'Dylan Brennan', 'Amaya Johnson', 'Kennedy Whitfield', 'Brennan Deleon', 0, 4, 17, 1, NULL, NULL),
(198, 'Kareem Gibbs', 15, 217, 74, 454, 306, 'Lael Lowe', 'Scott Rush', 'Lane Miranda', 'Jael Burch', 'Anastasia Castaneda', 1, 5, 9, 1, NULL, NULL),
(199, 'Jemima Vargas', 578, 447, 556, 380, 431, 'Uriah Everett', 'Scott Bryan', 'Baker Lowery', 'Abigail Dunlap', 'Cullen Fry', 0, 3, 6, 1, NULL, NULL),
(200, 'Julie Padilla', 372, 171, 166, 310, 86, 'Harrison Lewis', 'Ferdinand Decker', 'Jermaine Dale', 'Cruz Joyner', 'Brock Clemons', 0, 7, 11, 1, NULL, NULL),
(201, 'Hope Head', 113, 503, 214, 283, 218, 'Olympia Crosby', 'Ulysses Jimenez', 'Valentine Bradley', 'Clinton Flynn', 'Drake Cotton', 0, 5, 9, 1, NULL, NULL),
(202, 'Wilma Lawson', 223, 469, 73, 358, 315, 'Harper Rosales', 'Levi Powell', 'Lillian Crane', 'Adele O\'Neill', 'Harriet Barnett', 0, 7, 3, 1, NULL, NULL),
(203, 'Tatiana Kramer', 517, 256, 582, 172, 432, 'Quemby Bruce', 'Destiny Potter', 'Todd Briggs', 'Xena Navarro', 'Audra Lamb', 0, 3, 4, 1, NULL, NULL),
(204, 'Micah Daniels', 469, 325, 596, 154, 420, 'Uriah Ross', 'Preston Kirk', 'Clio Wood', 'Bruce Scott', 'Carter Watkins', 0, 6, 16, 1, NULL, NULL),
(205, 'Quinn Aguirre', 39, 597, 221, 374, 241, 'Cyrus Everett', 'Silas Ortega', 'Summer Keith', 'Zeph Sykes', 'Astra Bennett', 0, 4, 9, 1, NULL, NULL),
(206, 'Keefe Bass', 563, 119, 175, 19, 537, 'Wanda Blankenship', 'Yuri Conley', 'Yuli Mcfadden', 'Mercedes Fletcher', 'Chaney Lewis', 0, 3, 2, 1, NULL, NULL),
(207, 'Savannah Higgins', 394, 130, 380, 342, 522, 'Scott Hurley', 'Yolanda Pugh', 'Ocean Bullock', 'Russell Morris', 'Kelsie Hartman', 0, 5, 6, 1, NULL, NULL),
(208, 'Xavier Rollins', 510, 429, 402, 214, 197, 'Kerry Britt', 'Fitzgerald Ford', 'Kuame Juarez', 'Jerome Chase', 'Abel Alford', 1, 4, 11, 1, NULL, NULL),
(209, 'Arden Wilkins', 75, 290, 61, 336, 124, 'Mark Mcmahon', 'Xaviera Padilla', 'Timon Bass', 'Colette Peterson', 'Maxine Farmer', 1, 5, 7, 1, NULL, NULL),
(210, 'Amela Baker', 397, 589, 454, 108, 98, 'Caleb Mcpherson', 'Brennan Knowles', 'Benjamin Bond', 'Donna Pace', 'Alden Stone', 1, 2, 14, 1, NULL, NULL),
(211, 'Tasha Pitts', 51, 540, 432, 186, 80, 'Lars Stafford', 'Inga Atkinson', 'Henry Diaz', 'Brent Mccormick', 'Tad Murphy', 0, 5, 13, 1, NULL, NULL),
(212, 'Leo Wiley', 222, 64, 183, 65, 109, 'Vivian Garner', 'Hop George', 'Kane Mack', 'Felix Britt', 'Mohammad Hampton', 1, 6, 8, 1, NULL, NULL),
(213, 'Steel Brock', 475, 339, 574, 260, 236, 'Jaden Garrett', 'Louis Horne', 'Colby Duncan', 'Xena Berg', 'Elliott Melton', 0, 6, 6, 1, NULL, NULL),
(214, 'Anthony Spears', 57, 311, 56, 2, 463, 'Eugenia Golden', 'Rhiannon Maynard', 'Harrison Wilkinson', 'Xander Pugh', 'Ariel Macdonald', 0, 4, 4, 1, NULL, NULL),
(215, 'Blossom Dickerson', 206, 273, 71, 29, 529, 'Illiana Price', 'Beau Alvarado', 'Hunter Rosario', 'Carissa Cannon', 'Alexis Henry', 0, 4, 1, 1, NULL, NULL),
(216, 'Isabelle Rivera', 20, 517, 380, 351, 180, 'Ingrid Huff', 'Pearl Richards', 'Leslie Hickman', 'Sopoline Fitzpatrick', 'Dorian Pearson', 1, 4, 11, 1, NULL, NULL),
(217, 'Abraham Franco', 291, 337, 372, 405, 28, 'Alika Alston', 'Zane Cooley', 'Jared Hebert', 'Haley Hood', 'Stone Price', 1, 3, 15, 1, NULL, NULL),
(218, 'Wayne Trevino', 80, 197, 67, 283, 523, 'Asher Zamora', 'Jelani Delaney', 'Richard Rios', 'Adam Forbes', 'Barbara Leblanc', 1, 1, 17, 1, NULL, NULL),
(219, 'Maryam Gill', 440, 309, 597, 124, 115, 'Grant Harrison', 'Basil Reyes', 'Gwendolyn Holt', 'Oleg Duke', 'Nolan Andrews', 1, 4, 9, 1, NULL, NULL),
(220, 'Jeanette Tyson', 290, 247, 89, 206, 28, 'Sage Moody', 'Robert Roman', 'Demetrius Franco', 'Wesley Kirby', 'Keefe Gray', 1, 3, 16, 1, NULL, NULL),
(221, 'Brent Mcclain', 215, 347, 97, 351, 201, 'Sebastian Rodriguez', 'Kermit Ware', 'Ursa Clemons', 'Aphrodite Lamb', 'Gay Bray', 0, 5, 6, 1, NULL, NULL),
(222, 'William Manning', 217, 485, 42, 374, 236, 'Jamal Livingston', 'Kuame Ford', 'Rafael Hughes', 'Tanner Mercer', 'Nathan Atkins', 0, 5, 4, 1, NULL, NULL),
(223, 'Ava Randolph', 525, 456, 492, 543, 450, 'Dahlia Garcia', 'Callie Guerrero', 'Vielka Roy', 'Kato Dudley', 'Vaughan Patrick', 1, 6, 3, 1, NULL, NULL),
(224, 'Maggy Simon', 274, 253, 469, 305, 455, 'Paul Le', 'Murphy Beck', 'Flynn Pearson', 'Elijah Bentley', 'Kathleen Wynn', 0, 7, 15, 1, NULL, NULL),
(225, 'Cassady Cross', 94, 227, 512, 248, 573, 'Cole Farley', 'Callum Hatfield', 'Rooney Hale', 'Leonard Juarez', 'Jacob Shannon', 0, 5, 3, 1, NULL, NULL),
(226, 'Perry Koch', 443, 270, 342, 553, 495, 'Jeremy Langley', 'Zachary York', 'Stuart Potts', 'Suki Salinas', 'Charde Sampson', 1, 3, 2, 1, NULL, NULL),
(227, 'Carson Joyce', 255, 589, 460, 3, 316, 'Keith Griffin', 'Ira Sandoval', 'Barrett Potts', 'Joel Dodson', 'Gillian Hansen', 1, 6, 15, 1, NULL, NULL),
(228, 'Declan Dalton', 203, 341, 254, 8, 267, 'Jolene Patrick', 'Blake Mcclure', 'Ahmed Gill', 'Lacy Christian', 'Nevada Rodgers', 0, 2, 13, 1, NULL, NULL),
(229, 'Lionel Bowers', 375, 573, 142, 174, 427, 'Garth Robbins', 'Miriam Lester', 'September Zamora', 'Gay Kane', 'Orli Smith', 0, 5, 14, 1, NULL, NULL),
(230, 'Mason Cook', 302, 52, 257, 566, 468, 'Raya Justice', 'Clayton Bowers', 'Grady Bowen', 'Stacy Leblanc', 'Arden Bonner', 0, 1, 10, 1, NULL, NULL),
(231, 'Aristotle Patel', 362, 83, 151, 464, 131, 'Audra Mckinney', 'Sage Hubbard', 'Jenna Harding', 'Jillian Nunez', 'Colin Bernard', 1, 5, 7, 1, NULL, NULL),
(232, 'Noel Franklin', 389, 132, 463, 310, 532, 'Phelan Lancaster', 'Indira Armstrong', 'Lucius Macias', 'Chadwick Dyer', 'Gregory Savage', 0, 3, 10, 1, NULL, NULL),
(233, 'Felicia Barr', 224, 124, 146, 27, 521, 'Alexandra Meyers', 'Finn Burton', 'Dara Sargent', 'Alec Sherman', 'Chancellor May', 0, 2, 14, 1, NULL, NULL),
(234, 'Tiger Cruz', 278, 397, 226, 282, 528, 'Gray Mullen', 'Velma Everett', 'Justine Macias', 'Bertha Cotton', 'Brady Duncan', 1, 6, 12, 1, NULL, NULL),
(235, 'Jarrod Hewitt', 66, 307, 402, 234, 319, 'Phillip Stevenson', 'Kenneth Middleton', 'Chase Simmons', 'Lars Gibbs', 'Cole Case', 0, 5, 4, 1, NULL, NULL),
(236, 'Cameron Wooten', 352, 424, 78, 478, 382, 'Sylvester Day', 'Avram Guthrie', 'Rae Justice', 'Emma Stanley', 'Shelly Dennis', 1, 6, 13, 1, NULL, NULL),
(237, 'Sydney Nicholson', 287, 88, 227, 66, 181, 'Shay Gutierrez', 'Maisie Knowles', 'Keaton Mejia', 'Lael Waller', 'Kim Valentine', 0, 6, 14, 1, NULL, NULL),
(238, 'Grant Knapp', 21, 22, 208, 86, 129, 'Forrest Mcleod', 'Francis Rosario', 'Ian Osborn', 'Brennan Drake', 'Lareina Fuller', 1, 6, 2, 1, NULL, NULL),
(239, 'Bert Farmer', 362, 251, 543, 507, 459, 'Hayes Ramirez', 'Hu Rush', 'Illana Townsend', 'Marsden Pugh', 'Neil Salazar', 1, 5, 14, 1, NULL, NULL),
(240, 'John Hobbs', 388, 310, 183, 60, 226, 'Keefe Stokes', 'Sharon Hawkins', 'Elton Townsend', 'Evangeline Cantrell', 'MacKensie Barton', 1, 6, 14, 1, NULL, NULL),
(241, 'Madonna Carrillo', 278, 347, 38, 588, 596, 'Iris Woodward', 'Jermaine Dillon', 'Ruby Bright', 'Lamar Hopkins', 'Andrew Mathis', 0, 4, 15, 1, NULL, NULL),
(242, 'Daquan Fisher', 224, 527, 211, 319, 299, 'Clinton Alford', 'Camille Huber', 'John Caldwell', 'Garrison Huber', 'Jameson Kelley', 0, 2, 14, 1, NULL, NULL),
(243, 'Andrew Vinson', 229, 305, 145, 300, 357, 'Mariam Mcknight', 'Melissa Cervantes', 'Signe Terrell', 'Abigail Cox', 'Malcolm Chen', 0, 3, 16, 1, NULL, NULL),
(244, 'Olympia Morin', 331, 600, 552, 39, 173, 'Jane Oliver', 'Sonya Hickman', 'Rinah Duncan', 'Wing Moon', 'Ray Mills', 1, 4, 12, 1, NULL, NULL),
(245, 'Norman Olson', 27, 554, 67, 385, 564, 'Morgan Talley', 'Aladdin Higgins', 'Molly Pruitt', 'Timothy Sosa', 'Peter Garza', 0, 5, 1, 1, NULL, NULL),
(246, 'Logan Watson', 329, 35, 3, 342, 292, 'Imogene Vega', 'Yuri Callahan', 'Herman Russell', 'Xavier Cortez', 'Nevada Roy', 1, 6, 4, 1, NULL, NULL),
(247, 'Sophia Goff', 470, 215, 526, 61, 66, 'Karleigh Petty', 'Branden O\'connor', 'Kalia Doyle', 'Eugenia Kramer', 'Solomon Day', 0, 3, 14, 1, NULL, NULL),
(248, 'Kameko Leon', 11, 581, 185, 123, 247, 'Kerry Chavez', 'Dane Campos', 'Rinah Wooten', 'Amity Crane', 'Gay Graham', 1, 6, 3, 1, NULL, NULL),
(249, 'Moses Conner', 463, 593, 65, 263, 298, 'Hilary Rowland', 'Amanda James', 'Cyrus Greer', 'Sharon Herman', 'Cadman Soto', 1, 6, 1, 1, NULL, NULL),
(250, 'Garrett Waller', 192, 158, 590, 76, 340, 'Leo Payne', 'Wang Booker', 'Ruth Jefferson', 'Alan Sandoval', 'Ishmael Klein', 1, 3, 15, 1, NULL, NULL),
(251, 'Jael Greer', 535, 271, 36, 369, 239, 'Pandora Weaver', 'Idola Schneider', 'Tobias Pate', 'Malachi Jarvis', 'Allistair Medina', 0, 6, 6, 1, NULL, NULL),
(252, 'Dora Burns', 177, 117, 324, 46, 134, 'Carla Briggs', 'Sydnee Riddle', 'Brock Rutledge', 'Ima Pruitt', 'Jael Whitehead', 1, 2, 10, 1, NULL, NULL),
(253, 'Darius Jimenez', 127, 125, 115, 298, 424, 'Geoffrey Irwin', 'Coby Pacheco', 'Logan Delacruz', 'Russell Day', 'Demetria Burch', 1, 6, 11, 1, NULL, NULL),
(254, 'Jessamine Wells', 535, 245, 189, 400, 498, 'Germane Wade', 'September Franks', 'Lani Sellers', 'Camille King', 'Mollie Arnold', 1, 2, 14, 1, NULL, NULL),
(255, 'Kennedy Bean', 217, 229, 552, 465, 325, 'Lawrence Morrow', 'Nero Goodwin', 'Cullen Fletcher', 'Blaze Sanders', 'Brody Newton', 1, 2, 8, 1, NULL, NULL),
(256, 'Olga Franco', 324, 386, 231, 435, 249, 'Jaquelyn House', 'Logan Mcpherson', 'Quinn Turner', 'Yael Burris', 'Ivory Vaughn', 0, 4, 6, 1, NULL, NULL),
(257, 'Kylynn Bailey', 375, 268, 393, 560, 80, 'Jeanette Boone', 'Kiara Cobb', 'Xantha Shepard', 'Valentine Watts', 'Indigo Branch', 1, 2, 14, 1, NULL, NULL),
(258, 'Kylee Haley', 351, 103, 181, 577, 429, 'Stacey Stark', 'Bert Hawkins', 'Sierra Dominguez', 'Aidan Richard', 'Bert Vang', 1, 3, 7, 1, NULL, NULL),
(259, 'Quail Morin', 348, 265, 121, 200, 410, 'Kennan Clark', 'Rina Lowe', 'Phillip Greene', 'Hillary Petersen', 'Kai Buckley', 1, 1, 6, 1, NULL, NULL),
(260, 'Renee Alvarez', 551, 535, 426, 417, 517, 'Gannon Roy', 'Wayne Holmes', 'Coby Stanley', 'Demetrius Davenport', 'Freya Leonard', 1, 3, 1, 1, NULL, NULL),
(261, 'Octavius Gay', 472, 583, 120, 386, 424, 'Xander Foreman', 'Joel Gonzalez', 'Mallory Robles', 'Cally Byrd', 'Jaime Hyde', 1, 2, 2, 1, NULL, NULL),
(262, 'Kasimir Henderson', 430, 589, 548, 358, 524, 'Louis Robertson', 'Maxwell Compton', 'Drew Whitehead', 'Jonas Pitts', 'Yoshi Albert', 1, 4, 4, 1, NULL, NULL),
(263, 'Cyrus Fernandez', 412, 516, 303, 359, 96, 'Quynn Talley', 'Palmer Flowers', 'Amber Hamilton', 'Destiny Holcomb', 'Joy Spears', 1, 3, 9, 1, NULL, NULL),
(264, 'Zachary Fletcher', 232, 84, 561, 599, 376, 'Irene Gibbs', 'Adria Travis', 'Willa Trujillo', 'Nathan Zimmerman', 'Dolan Gregory', 0, 4, 6, 1, NULL, NULL),
(265, 'Macaulay Petersen', 358, 142, 91, 153, 569, 'Zena Acosta', 'Medge Morton', 'Lucian Gutierrez', 'Seth Hoffman', 'Samuel Michael', 0, 2, 13, 1, NULL, NULL),
(266, 'Dawn Franks', 382, 89, 124, 249, 177, 'Tatum Pruitt', 'Hadassah Rosario', 'Jaden Savage', 'Vaughan Davis', 'Chandler Delaney', 1, 5, 3, 1, NULL, NULL),
(267, 'Dorothy Shepard', 391, 432, 508, 102, 591, 'Carl Christensen', 'Randall Maynard', 'Galena Salinas', 'Sean Wheeler', 'Coby Sweet', 0, 7, 9, 1, NULL, NULL),
(268, 'Adena Ellison', 284, 500, 364, 426, 549, 'Julie Tanner', 'Bo Blanchard', 'Victor Hardin', 'Chase Morgan', 'Phillip Bailey', 1, 6, 17, 1, NULL, NULL),
(269, 'Kevyn Camacho', 191, 21, 541, 552, 367, 'Thaddeus Goff', 'Katell Hale', 'Craig Wooten', 'Elaine Snow', 'Idola Cohen', 0, 6, 9, 1, NULL, NULL),
(270, 'Ella Pollard', 415, 445, 185, 590, 523, 'Solomon Good', 'Audrey Morse', 'Stacey Hayes', 'Anne Sexton', 'Ainsley Gaines', 1, 2, 14, 1, NULL, NULL),
(271, 'Veda Contreras', 392, 255, 593, 53, 103, 'Mikayla Fowler', 'Cameron Strickland', 'Eugenia Grimes', 'Drake Martinez', 'Nash Arnold', 0, 5, 4, 1, NULL, NULL),
(272, 'Chaim Curtis', 117, 96, 258, 443, 453, 'Natalie Dodson', 'Rudyard Dillard', 'Ria Branch', 'Olga Cantrell', 'Salvador Vega', 0, 5, 8, 1, NULL, NULL),
(273, 'Latifah Rasmussen', 15, 106, 3, 408, 586, 'Laith Shannon', 'Jena James', 'Macaulay Mathis', 'Nathaniel Robles', 'Edan Tyler', 1, 1, 10, 1, NULL, NULL),
(274, 'Len Aguilar', 566, 156, 186, 358, 253, 'Reuben Meyers', 'Clio Hopkins', 'Rahim Bryant', 'Jasper Ayala', 'Tyrone Rivera', 0, 4, 6, 1, NULL, NULL),
(275, 'Briar Bray', 302, 35, 278, 483, 425, 'Hoyt Humphrey', 'Rashad Hernandez', 'Troy Santana', 'Xantha Justice', 'Shaeleigh Weiss', 1, 4, 8, 1, NULL, NULL),
(276, 'Evelyn Spencer', 514, 306, 240, 220, 357, 'Bernard Blair', 'Stone Mosley', 'Jacob Pace', 'Rogan Bridges', 'Zane Martin', 1, 2, 8, 1, NULL, NULL),
(277, 'Ocean Tucker', 14, 408, 352, 355, 258, 'Alexander Haynes', 'Indira Cochran', 'Danielle Anthony', 'Laith Slater', 'Keiko Parker', 0, 6, 11, 1, NULL, NULL),
(278, 'Vaughan Salazar', 29, 15, 334, 23, 112, 'Savannah Cotton', 'Hunter Bates', 'Sean Gates', 'Rajah Mcdonald', 'Baker Ward', 0, 7, 12, 1, NULL, NULL),
(279, 'Walter Bender', 438, 131, 533, 566, 233, 'Brittany Vang', 'Luke Crawford', 'Nita Long', 'Chiquita Sears', 'Ocean Soto', 0, 2, 6, 1, NULL, NULL),
(280, 'Noel Meyers', 590, 83, 376, 23, 369, 'Yeo Salas', 'Sylvester Harrington', 'Remedios Reid', 'Brody Woodard', 'Jesse Harrison', 1, 4, 3, 1, NULL, NULL),
(281, 'Christopher Villarreal', 192, 86, 277, 3, 421, 'Octavia Sanders', 'Keiko Austin', 'Kasper Medina', 'Cole Herring', 'Kitra Clements', 0, 2, 8, 1, NULL, NULL),
(282, 'Wyoming Benson', 502, 531, 507, 457, 20, 'Alden Small', 'Micah Malone', 'Shana Daniel', 'Troy Chang', 'Ferris Salinas', 0, 4, 17, 1, NULL, NULL),
(283, 'Matthew Paul', 592, 90, 310, 231, 466, 'Sylvester Burns', 'Addison Humphrey', 'Amaya Daniels', 'Stacey Benson', 'Phelan Valencia', 0, 3, 13, 1, NULL, NULL),
(284, 'Raphael Grimes', 149, 77, 229, 364, 565, 'Lilah Herrera', 'Uta Wise', 'Sarah Flynn', 'Timothy David', 'Rhonda Nunez', 1, 4, 3, 1, NULL, NULL),
(285, 'Warren Briggs', 186, 122, 65, 194, 203, 'Keane Livingston', 'Halee Miranda', 'Cameron May', 'Georgia Monroe', 'James Slater', 0, 2, 11, 1, NULL, NULL),
(286, 'Zachery Coleman', 228, 283, 237, 273, 385, 'Miranda Small', 'Madaline Moody', 'Maya Leonard', 'Malcolm Cardenas', 'Randall Morton', 1, 2, 12, 1, NULL, NULL),
(287, 'Michael O\'brien', 299, 469, 239, 11, 142, 'Megan Burton', 'Aidan Mccullough', 'Hector Heath', 'Sierra Branch', 'Ashton Shannon', 0, 6, 13, 1, NULL, NULL),
(288, 'Chase Giles', 172, 300, 56, 302, 300, 'Yvette Bowman', 'Mira Park', 'Anastasia Wilder', 'Tamekah Norman', 'Palmer Hurst', 1, 5, 16, 1, NULL, NULL),
(289, 'Lee Walsh', 356, 187, 249, 358, 141, 'Ruby Sykes', 'Miranda Todd', 'Alea Mcfadden', 'Aaron Barr', 'Arsenio Gutierrez', 1, 2, 17, 1, NULL, NULL),
(290, 'Giacomo Durham', 139, 243, 228, 375, 94, 'Tucker Noble', 'Ginger Warner', 'Zenaida Cleveland', 'Jaden Potts', 'Colin Riddle', 0, 6, 17, 1, NULL, NULL),
(291, 'Alfreda Britt', 186, 170, 490, 326, 460, 'Akeem Leblanc', 'Finn Perry', 'Aurora Armstrong', 'Noel Lester', 'Ulric Sawyer', 1, 2, 4, 1, NULL, NULL),
(292, 'Rahim Keith', 80, 139, 365, 314, 396, 'Ivana Mendez', 'Xavier Kelley', 'Quemby Mullins', 'Kelly Peters', 'Flavia Bullock', 0, 1, 11, 1, NULL, NULL),
(293, 'Allen Bailey', 437, 509, 407, 248, 237, 'Ramona Bowen', 'Ariana Church', 'Sonia Morris', 'Alana Henderson', 'Hyatt Short', 1, 2, 11, 1, NULL, NULL),
(294, 'Clementine Juarez', 572, 184, 309, 319, 599, 'Blossom Horn', 'Breanna Blankenship', 'Anne Bauer', 'Nora Herring', 'Cally Dalton', 0, 2, 9, 1, NULL, NULL),
(295, 'Reuben Wallace', 312, 255, 15, 524, 164, 'Madaline Chapman', 'Celeste Whitehead', 'Willow Berg', 'Veda Fields', 'Zane Frye', 0, 3, 16, 1, NULL, NULL),
(296, 'Harper Molina', 259, 240, 62, 80, 412, 'Kamal Bartlett', 'Forrest Leach', 'Vaughan Love', 'Clarke Hull', 'Amaya Robles', 0, 4, 9, 1, NULL, NULL),
(297, 'Lani Cortez', 334, 420, 108, 465, 487, 'Avye Maynard', 'Ivana Moss', 'Theodore Hull', 'Channing Nieves', 'Patrick Whitley', 0, 6, 16, 1, NULL, NULL),
(298, 'Susan Russo', 445, 286, 243, 530, 594, 'Hanae Knight', 'Vivian Mckee', 'Russell Mercado', 'Ocean Hanson', 'Hasad Padilla', 1, 2, 1, 1, NULL, NULL),
(299, 'Avram Mullins', 34, 185, 377, 539, 490, 'Quinn Morrow', 'Nerea Cannon', 'Scott Meyers', 'Amos Rhodes', 'Rebekah Sykes', 0, 5, 2, 1, NULL, NULL),
(300, 'Wilma Bonner', 257, 423, 2, 224, 93, 'Cyrus Buchanan', 'Uriel Abbott', 'Jason Mason', 'Hayley Allen', 'Lana Shepard', 1, 4, 2, 1, NULL, NULL),
(301, 'Kelly O\'brien', 503, 496, 36, 26, 130, 'Chanda Rowland', 'Medge Gay', 'Rhiannon Rutledge', 'Rafael Berry', 'Leonard Mills', 0, 4, 12, 1, NULL, NULL),
(302, 'Teegan Keith', 423, 175, 192, 291, 26, 'Akeem Mcintosh', 'Blaze Glass', 'Debra Beach', 'Boris Dillon', 'Harlan Waller', 1, 6, 5, 1, NULL, NULL),
(303, 'Blaze Soto', 394, 195, 355, 519, 182, 'Laurel Haney', 'Blaze Golden', 'Dominique Rose', 'Thaddeus Dickson', 'Hector Lewis', 0, 4, 1, 1, NULL, NULL),
(304, 'Kareem Peterson', 582, 158, 265, 593, 18, 'Norman Bryan', 'Fritz Garcia', 'Burke Fitzpatrick', 'Colleen Leach', 'Ginger Hyde', 1, 5, 9, 1, NULL, NULL),
(305, 'Sopoline Dale', 187, 200, 486, 201, 419, 'Logan Anderson', 'Maisie Owens', 'Maisie Dickson', 'Shelley Shaw', 'Fatima Mathews', 1, 4, 8, 1, NULL, NULL),
(306, 'Dolan Paul', 514, 461, 448, 191, 437, 'Hall Meyers', 'Kaye Santana', 'Jason Glenn', 'Xavier Hill', 'Olivia Dorsey', 1, 7, 9, 1, NULL, NULL),
(307, 'Jelani Hopper', 434, 465, 26, 59, 153, 'Macey Little', 'Len Gordon', 'Camilla Rojas', 'Beau Mcmahon', 'Blaze Noel', 1, 1, 8, 1, NULL, NULL),
(308, 'Jolie Mueller', 434, 13, 561, 309, 557, 'Melvin Rich', 'Craig Lloyd', 'Elizabeth House', 'Macaulay Pruitt', 'Wallace Figueroa', 1, 7, 16, 1, NULL, NULL),
(309, 'Rudyard Knowles', 294, 582, 309, 532, 259, 'Candace Moody', 'Brynne Elliott', 'Hasad Freeman', 'Jescie Hicks', 'Gray Rojas', 0, 5, 7, 1, NULL, NULL),
(310, 'Meredith Le', 157, 551, 275, 315, 550, 'Zenaida Nash', 'Felix Bolton', 'Tara Donovan', 'Judith Church', 'Quin Barr', 1, 6, 4, 1, NULL, NULL),
(311, 'Alana Sosa', 467, 352, 360, 224, 220, 'Uriel Lopez', 'Adrian Craft', 'Petra Welch', 'Dylan Tucker', 'Noble Hammond', 1, 5, 9, 1, NULL, NULL),
(312, 'Basil Wright', 205, 74, 538, 14, 457, 'Mark Blankenship', 'Jason Raymond', 'Armando Walters', 'Mollie Hawkins', 'Evangeline Sampson', 1, 4, 10, 1, NULL, NULL),
(313, 'Lee Cooke', 594, 308, 358, 305, 311, 'Lucius Bray', 'Nasim Leblanc', 'Clementine Moreno', 'Christian Carpenter', 'Dahlia Foster', 0, 3, 8, 1, NULL, NULL),
(314, 'Tanya Stevens', 16, 516, 236, 109, 332, 'Byron Hamilton', 'Maia Roberts', 'Amos Shields', 'Ezekiel Sellers', 'Macy Travis', 1, 4, 12, 1, NULL, NULL),
(315, 'Samantha Bush', 515, 568, 151, 253, 99, 'Kevin Barron', 'Jeremy Sherman', 'Carla Lawson', 'Uriah Finch', 'Harrison Martin', 0, 3, 7, 1, NULL, NULL),
(316, 'Olivia Davenport', 211, 273, 444, 243, 286, 'Anika Hill', 'Evan Kelly', 'Daria Delacruz', 'Ezekiel Mcleod', 'Angelica Garrett', 0, 3, 7, 1, NULL, NULL),
(317, 'Erica Clay', 490, 498, 357, 415, 385, 'Declan Noble', 'Addison Moran', 'Russell Thomas', 'Zachery Bentley', 'Fulton Mcdaniel', 1, 2, 7, 1, NULL, NULL),
(318, 'Brianna Melendez', 75, 321, 590, 361, 333, 'Eaton Long', 'Macon Walsh', 'Nyssa Moore', 'Maxwell Blackwell', 'Summer Noel', 0, 2, 16, 1, NULL, NULL),
(319, 'Fallon Freeman', 183, 274, 204, 333, 589, 'Karly Ellison', 'Arden Vasquez', 'Keaton Mccoy', 'Sage Guzman', 'Keelie Wiley', 0, 6, 17, 1, NULL, NULL),
(320, 'Noelle Henry', 284, 371, 544, 372, 36, 'Maggy Montgomery', 'Vaughan Hutchinson', 'Driscoll Heath', 'Imelda Joyner', 'Stephen Rosa', 0, 7, 17, 1, NULL, NULL),
(321, 'Slade Kennedy', 598, 444, 323, 439, 345, 'Eliana Moses', 'Kyla Neal', 'Armand Stephenson', 'Flavia Hansen', 'Amanda Levy', 0, 3, 16, 1, NULL, NULL),
(322, 'Elvis Reese', 580, 227, 419, 398, 434, 'Ivan Hopkins', 'Robert Clements', 'Noelani Grant', 'Lila Good', 'Ariana Crosby', 1, 7, 4, 1, NULL, NULL),
(323, 'Risa Joyce', 464, 549, 86, 21, 478, 'Hollee Juarez', 'Cheryl Mccullough', 'Timon Hopper', 'Illiana Baxter', 'Uma Clayton', 1, 2, 9, 1, NULL, NULL),
(324, 'Cody Silva', 146, 91, 30, 442, 464, 'Cassidy Burke', 'Callie Hodge', 'Jerome Villarreal', 'Nola Tillman', 'Chantale Erickson', 0, 4, 5, 1, NULL, NULL),
(325, 'Ezekiel Parker', 158, 18, 108, 155, 228, 'Hadley Weiss', 'Orson Little', 'Sacha Rodriguez', 'Cynthia Zimmerman', 'Marcia Garrison', 0, 7, 6, 1, NULL, NULL);
INSERT INTO `producto` (`id_producto`, `nombre_producto`, `precio_compra`, `precio_venta1`, `precio_venta2`, `precio_venta3`, `precio_venta4`, `codigo_qr`, `marca_prod`, `modelo_prod`, `codigo_prod`, `descripcion_prod`, `estado_prod`, `id_proveedor`, `id_categoria`, `id_negocio`, `created_at`, `updated_at`) VALUES
(326, 'Nell Stafford', 117, 321, 502, 496, 413, 'Petra Knapp', 'Preston Camacho', 'Jack Delgado', 'Mallory Hess', 'Nerea Stone', 0, 5, 14, 1, NULL, NULL),
(327, 'Ivy Ayers', 67, 269, 514, 430, 346, 'Honorato Patel', 'Callie Collier', 'Zoe Gardner', 'Kalia Bond', 'Aretha Curtis', 1, 7, 6, 1, NULL, NULL),
(328, 'Xenos Brady', 593, 347, 55, 209, 44, 'Kellie Preston', 'Alma Mendez', 'Courtney Long', 'Hiram Mcpherson', 'Sharon Sampson', 1, 7, 14, 1, NULL, NULL),
(329, 'Howard Campos', 297, 121, 426, 7, 305, 'Aline Lambert', 'Rhoda Mckenzie', 'Kirby Brock', 'Myra Gillespie', 'Risa Spencer', 0, 6, 9, 1, NULL, NULL),
(330, 'Emi Pickett', 582, 248, 435, 559, 155, 'Pascale Spence', 'Baxter Saunders', 'Erasmus Alston', 'Merrill Small', 'Hyacinth Casey', 1, 5, 14, 1, NULL, NULL),
(331, 'Alden Buck', 388, 375, 272, 355, 118, 'Sasha Bell', 'Madeline Oneal', 'Skyler Ratliff', 'Buckminster Meyer', 'Marah Combs', 1, 5, 2, 1, NULL, NULL),
(332, 'Iliana Delacruz', 466, 348, 83, 175, 570, 'Kyla Beach', 'Beau Barrett', 'Heather Hatfield', 'Brett Valentine', 'Miriam Robbins', 1, 1, 8, 1, NULL, NULL),
(333, 'Garrison Phillips', 222, 288, 60, 256, 87, 'Zahir Johns', 'Shana Clay', 'Caleb Valenzuela', 'Odysseus Mccall', 'Kane Compton', 0, 2, 8, 1, NULL, NULL),
(334, 'Deacon Dawson', 153, 443, 393, 218, 122, 'Wylie Wilkerson', 'Carissa Everett', 'Steel Johnston', 'Ian Bird', 'Odysseus Perez', 1, 5, 13, 1, NULL, NULL),
(335, 'Wilma Alexander', 75, 117, 517, 150, 452, 'Erasmus Roy', 'Scott Myers', 'Irma Rice', 'Troy Moses', 'Tate King', 0, 4, 10, 1, NULL, NULL),
(336, 'Jesse Daniels', 305, 5, 397, 153, 441, 'Sebastian Weber', 'Harriet Mccall', 'Colton Jacobs', 'Cullen Newton', 'Bianca Mcdonald', 1, 7, 16, 1, NULL, NULL),
(337, 'Adrian Dawson', 393, 537, 418, 31, 235, 'Nola Baxter', 'Sigourney Branch', 'Ignatius Alvarado', 'Zachery Morgan', 'April Carver', 1, 7, 11, 1, NULL, NULL),
(338, 'Kirby Beach', 267, 197, 402, 97, 512, 'Lillian Dillard', 'Blythe Bridges', 'Ryder Kerr', 'Tamekah Spencer', 'Clayton Combs', 1, 3, 10, 1, NULL, NULL),
(339, 'Iliana Mcconnell', 159, 453, 21, 233, 273, 'Rogan Franks', 'Stella Bailey', 'Nayda Bird', 'Ross Snow', 'Isaiah Gibbs', 1, 4, 5, 1, NULL, NULL),
(340, 'Rogan Ballard', 170, 217, 265, 149, 172, 'Shelly Wells', 'Ebony Calderon', 'Jessica Burks', 'Ahmed Wade', 'Colby Reese', 0, 3, 5, 1, NULL, NULL),
(341, 'Zeus Chaney', 212, 237, 190, 283, 462, 'Lara Blake', 'Hop Elliott', 'Castor Bradshaw', 'Salvador Lambert', 'Zephania Cooke', 1, 2, 13, 1, NULL, NULL),
(342, 'Kareem Hawkins', 422, 59, 206, 60, 227, 'Illana Phillips', 'Dillon Levy', 'Nero Roach', 'Julie Hawkins', 'Jonas Pennington', 0, 3, 9, 1, NULL, NULL),
(343, 'Angela Hopper', 387, 408, 314, 459, 306, 'Danielle Price', 'Unity Reese', 'Kimberly Calderon', 'Neil Wade', 'Anika Hill', 1, 3, 15, 1, NULL, NULL),
(344, 'Armand Cantu', 445, 462, 191, 212, 36, 'Eagan Griffin', 'Nichole Reilly', 'Leslie Glover', 'Rafael Grimes', 'Tana Campos', 1, 5, 14, 1, NULL, NULL),
(345, 'Rana Stephenson', 577, 468, 17, 193, 77, 'Felicia Clayton', 'Vivian Grant', 'Wyatt Hoffman', 'Keane Cervantes', 'Odessa Reid', 1, 7, 12, 1, NULL, NULL),
(346, 'Dalton Gallegos', 444, 562, 334, 423, 400, 'Fallon Ryan', 'Myra Ware', 'Sigourney Mays', 'Dustin Byrd', 'Uma Little', 1, 7, 3, 1, NULL, NULL),
(347, 'Jonah Young', 133, 461, 276, 558, 338, 'Alexa Walton', 'Reese Parker', 'Yolanda Ford', 'Urielle Waller', 'Melanie Dodson', 0, 6, 13, 1, NULL, NULL),
(348, 'Ferris Shepherd', 344, 229, 486, 593, 126, 'Baxter Powell', 'Linus Sargent', 'Tad Blackwell', 'Alan Mcdowell', 'Robin Bradley', 1, 3, 3, 1, NULL, NULL),
(349, 'Cameron Leblanc', 526, 314, 585, 462, 121, 'Jason Aguilar', 'Aidan Lee', 'Alea Floyd', 'Serena Koch', 'Arden Bond', 0, 7, 15, 1, NULL, NULL),
(350, 'Imelda Dale', 266, 193, 435, 454, 378, 'Kylee Bridges', 'Tara Ingram', 'Alana Norton', 'Kenyon Richards', 'Diana Stein', 1, 2, 6, 1, NULL, NULL),
(351, 'Lillith Berger', 303, 378, 595, 55, 55, 'Amelia Cabrera', 'Rylee Walker', 'Penelope Meyers', 'Dean Watson', 'Jamalia Knox', 1, 5, 9, 1, NULL, NULL),
(352, 'Imogene Galloway', 249, 518, 269, 335, 556, 'Belle Booth', 'Jenna Vaughn', 'Colby Sanders', 'Lois Klein', 'Jarrod Pruitt', 1, 2, 12, 1, NULL, NULL),
(353, 'Adrian Vasquez', 153, 44, 363, 125, 555, 'Isaac Potts', 'Anjolie Middleton', 'Axel Espinoza', 'Lionel Trevino', 'Whilemina Baxter', 1, 7, 12, 1, NULL, NULL),
(354, 'Adrian Cunningham', 39, 44, 383, 490, 423, 'Brent Dodson', 'Patrick Smith', 'Raven Aguirre', 'Gregory Howe', 'Ramona Michael', 0, 3, 4, 1, NULL, NULL),
(355, 'Sybil Salas', 257, 578, 460, 123, 350, 'Cheryl Garner', 'Constance Kirk', 'Desiree William', 'Paul Colon', 'Bell Salazar', 0, 7, 14, 1, NULL, NULL),
(356, 'Dexter Dale', 245, 535, 44, 543, 500, 'Beverly Parsons', 'Rama Ortiz', 'Jaquelyn Cobb', 'Nasim Hays', 'Thomas Lindsay', 0, 4, 2, 1, NULL, NULL),
(357, 'Galvin Conner', 478, 559, 554, 141, 446, 'Brock Donovan', 'Blake Henderson', 'Wylie Pierce', 'Kennedy Lee', 'Brielle Howe', 1, 6, 11, 1, NULL, NULL),
(358, 'Mechelle Reese', 594, 508, 26, 16, 446, 'Castor Bryant', 'Connor Manning', 'Hilda Morris', 'Kieran Cochran', 'Gay Carroll', 0, 5, 6, 1, NULL, NULL),
(359, 'Elmo Scott', 384, 154, 563, 323, 283, 'Adrian Mcneil', 'Callie Copeland', 'Irene Lyons', 'Lucy Raymond', 'Emma Atkinson', 0, 6, 14, 1, NULL, NULL),
(360, 'Robert Nicholson', 304, 347, 492, 469, 456, 'Wynne Gray', 'Aline Holcomb', 'Elmo Ballard', 'Melyssa Sellers', 'Stacey Mcguire', 0, 5, 4, 1, NULL, NULL),
(361, 'Hadassah Callahan', 502, 480, 197, 197, 229, 'Lana Mccormick', 'Nigel Cabrera', 'Jorden Ingram', 'Zephania Powell', 'Gannon Salazar', 0, 6, 2, 1, NULL, NULL),
(362, 'Colin Campos', 100, 61, 242, 268, 58, 'Chase Jimenez', 'Quynn Farmer', 'Josiah Kirk', 'Gray Moody', 'Echo Cantu', 1, 6, 11, 1, NULL, NULL),
(363, 'Stewart Pierce', 13, 128, 424, 378, 308, 'Steel Finley', 'Maxwell Maynard', 'Naida Stevenson', 'Justin Horton', 'Stella Hendrix', 0, 6, 11, 1, NULL, NULL),
(364, 'Basia Jefferson', 527, 259, 327, 549, 63, 'Wylie Baker', 'Tanya Marsh', 'Armando Morse', 'Sonia Marks', 'Tobias Kaufman', 1, 7, 9, 1, NULL, NULL),
(365, 'Trevor Pickett', 144, 330, 127, 577, 388, 'Megan Craft', 'Vance Atkinson', 'McKenzie Noble', 'Gisela Nolan', 'Doris Bowers', 0, 6, 9, 1, NULL, NULL),
(366, 'Uriah Bond', 430, 290, 187, 161, 9, 'Carly Morgan', 'Darryl Grant', 'James Noel', 'Hiram Burks', 'Phyllis Pugh', 0, 2, 7, 1, NULL, NULL),
(367, 'Xaviera Downs', 420, 507, 148, 457, 537, 'Orla Barnett', 'Ryan Cline', 'Valentine Daugherty', 'Lucian Cain', 'Cherokee Giles', 0, 2, 15, 1, NULL, NULL),
(368, 'Cleo Valencia', 561, 272, 239, 343, 164, 'Shelby Bright', 'Latifah Perkins', 'Erasmus Norton', 'Linus Merritt', 'Tana Mclaughlin', 0, 3, 4, 1, NULL, NULL),
(369, 'Garrett Robles', 82, 264, 275, 302, 158, 'Hyatt Carey', 'Irene Preston', 'Alma Phelps', 'Charlotte Green', 'Shaeleigh Knowles', 1, 1, 3, 1, NULL, NULL),
(370, 'Dawn Nunez', 351, 270, 300, 506, 504, 'Vincent Peterson', 'Emmanuel Davis', 'Calvin Ewing', 'Grant Kim', 'Lenore Miles', 1, 7, 11, 1, NULL, NULL),
(371, 'Kenneth Barrera', 132, 180, 326, 308, 330, 'Hamish Valencia', 'Slade William', 'Leroy Stevens', 'Hayley Atkinson', 'Samuel Golden', 1, 1, 6, 1, NULL, NULL),
(372, 'Angela Logan', 324, 154, 353, 120, 233, 'Russell Holder', 'Portia Bowen', 'Melodie Gilliam', 'Jonas Short', 'Carson Conway', 1, 2, 13, 1, NULL, NULL),
(373, 'Rhonda Vance', 489, 478, 256, 599, 545, 'Coby Ferrell', 'Keane Yates', 'Damian Cleveland', 'Cameran Fox', 'Kelly Klein', 1, 4, 5, 1, NULL, NULL),
(374, 'Armand Aguilar', 29, 376, 563, 111, 191, 'Asher Greene', 'Abraham Ross', 'Dominic Berry', 'MacKensie Dyer', 'Fatima Byrd', 1, 7, 4, 1, NULL, NULL),
(375, 'Sybil Booker', 517, 114, 449, 386, 457, 'Leo Thompson', 'Macaulay Parker', 'Daryl Klein', 'Fritz Johnson', 'Xaviera Yang', 1, 4, 8, 1, NULL, NULL),
(376, 'Dominic Porter', 353, 592, 290, 246, 41, 'Ayanna Francis', 'Carly Wong', 'Daniel Fields', 'Amy Carter', 'Calista Graves', 0, 7, 15, 1, NULL, NULL),
(377, 'Molly Vega', 413, 569, 235, 306, 101, 'Matthew Faulkner', 'Tashya Knapp', 'Maia Cannon', 'Plato Vance', 'Sandra Gardner', 1, 1, 5, 1, NULL, NULL),
(378, 'Thor Stephenson', 557, 424, 127, 123, 135, 'Daquan Mathews', 'Kenyon Page', 'Desirae Byers', 'India Nielsen', 'Eaton Clay', 1, 7, 12, 1, NULL, NULL),
(379, 'Jonas Massey', 563, 192, 391, 309, 492, 'Barclay Roy', 'Randall Stark', 'Whoopi Gilliam', 'Lesley Glover', 'Yoshio Barr', 0, 2, 13, 1, NULL, NULL),
(380, 'Rashad Merrill', 164, 475, 520, 580, 166, 'Mara Turner', 'Adena Fry', 'Dominique Horne', 'Roary Espinoza', 'Colby White', 0, 6, 17, 1, NULL, NULL),
(381, 'Lydia Whitfield', 126, 122, 358, 198, 286, 'Wyatt Cantu', 'Ursa Henry', 'Jameson Frederick', 'Isabella Rhodes', 'Marsden Paul', 1, 5, 5, 1, NULL, NULL),
(382, 'Gisela Everett', 442, 177, 597, 409, 339, 'Joelle Conway', 'Salvador Reilly', 'Calista Barlow', 'Eliana Baird', 'Sage Bailey', 1, 3, 9, 1, NULL, NULL),
(383, 'Mara Yates', 530, 409, 58, 100, 587, 'Noelle Church', 'Brody Wells', 'Meredith Boyer', 'Quinlan Pitts', 'Eaton Mccoy', 1, 6, 6, 1, NULL, NULL),
(384, 'Azalia Estrada', 206, 53, 328, 300, 341, 'Giacomo Forbes', 'Jack Harmon', 'Avram Pierce', 'Arthur Heath', 'Whoopi Walls', 1, 6, 15, 1, NULL, NULL),
(385, 'Melvin Vance', 28, 410, 566, 10, 547, 'Alfonso Keller', 'Hedley Morrison', 'Kasper Sykes', 'Jordan Byrd', 'Macy Reilly', 0, 4, 13, 1, NULL, NULL),
(386, 'Eve Battle', 465, 247, 68, 361, 448, 'Belle Burns', 'Athena Mccullough', 'Odessa Salinas', 'Sydnee Dale', 'Carolyn Chang', 1, 1, 11, 1, NULL, NULL),
(387, 'Jaquelyn Carr', 183, 484, 96, 150, 248, 'Matthew Mckay', 'Brandon Stewart', 'Tashya Slater', 'Alice Guy', 'Porter Brady', 0, 2, 7, 1, NULL, NULL),
(388, 'Hedy Hopper', 123, 338, 552, 477, 166, 'Lewis Washington', 'Mannix Leonard', 'Keith Rowland', 'Logan Workman', 'Tarik Dyer', 1, 6, 12, 1, NULL, NULL),
(389, 'Josephine Paul', 450, 449, 539, 594, 366, 'Geoffrey Lawson', 'Hasad Peterson', 'Dahlia Stephens', 'Guy Cotton', 'Emi Mendez', 0, 3, 6, 1, NULL, NULL),
(390, 'Madeson Chen', 15, 261, 305, 365, 63, 'Renee Barnes', 'Teegan Daniels', 'Ivana Shaw', 'Kibo Bolton', 'Charles Stephens', 1, 3, 7, 1, NULL, NULL),
(391, 'Alexandra Mckay', 125, 431, 86, 589, 397, 'Ali Olson', 'Quail Berg', 'Elliott Shaw', 'Dorian Parks', 'Brent Richmond', 0, 6, 4, 1, NULL, NULL),
(392, 'Judith Bird', 336, 443, 60, 146, 328, 'Lydia Booth', 'Anjolie Tran', 'Erin Harper', 'Lyle Acosta', 'Rashad Mcmahon', 1, 7, 4, 1, NULL, NULL),
(393, 'Patrick Reynolds', 137, 593, 419, 407, 195, 'Dahlia Bell', 'Xavier Daniel', 'Lavinia Hall', 'Tobias Bauer', 'Joel Howell', 0, 4, 10, 1, NULL, NULL),
(394, 'Phyllis Perez', 137, 77, 170, 182, 256, 'Maryam Dalton', 'Candace Mckee', 'Travis Watkins', 'Kuame Brewer', 'Lewis Harrington', 1, 3, 13, 1, NULL, NULL),
(395, 'Emmanuel Fleming', 433, 467, 100, 211, 278, 'Odysseus Mercer', 'Illiana Snow', 'Kelsey Wright', 'Zia Ford', 'Justine Alexander', 1, 2, 14, 1, NULL, NULL),
(396, 'Deanna Sykes', 73, 287, 243, 52, 175, 'Aretha Hayes', 'Bo Moon', 'Sydnee Pacheco', 'Yvonne Jacobs', 'Astra Steele', 1, 2, 9, 1, NULL, NULL),
(397, 'Rooney Slater', 358, 162, 233, 371, 227, 'Sylvia Hopper', 'Iris Avila', 'Wing Moore', 'Genevieve Leonard', 'Harlan Hobbs', 0, 4, 4, 1, NULL, NULL),
(398, 'Vielka Potts', 540, 271, 457, 9, 66, 'Wing Ayers', 'Sean Mcfadden', 'Quin Burnett', 'Sasha Petty', 'Bevis Rivers', 1, 7, 3, 1, NULL, NULL),
(399, 'Aileen Montoya', 355, 514, 377, 572, 284, 'Remedios Roberson', 'Sebastian Sheppard', 'Kasper Kelly', 'Nomlanga Bright', 'Whilemina Malone', 0, 7, 6, 1, NULL, NULL),
(400, 'Evelyn Hamilton', 207, 575, 195, 453, 111, 'Jael Rosario', 'Haviva Houston', 'Mechelle Calderon', 'Madonna Blake', 'Elton Lawrence', 0, 2, 15, 1, NULL, NULL),
(401, 'Brock Brewer', 591, 108, 397, 354, 393, 'Charles Oneal', 'Linda Hubbard', 'Jackson Hayden', 'Lareina Pierce', 'Ralph Nieves', 0, 2, 14, 1, NULL, NULL),
(402, 'Hyatt Stephens', 506, 542, 185, 484, 512, 'Tanya Moon', 'Hunter Butler', 'Nicholas Lane', 'Chancellor Cooper', 'Armando Morse', 0, 5, 5, 1, NULL, NULL),
(403, 'Kirby Holman', 432, 219, 328, 104, 95, 'Echo Hutchinson', 'Amir Norman', 'Kathleen Cobb', 'Camden Fox', 'Jane Hood', 0, 3, 3, 1, NULL, NULL),
(404, 'Axel Blevins', 412, 350, 209, 390, 232, 'Mohammad Mills', 'Kathleen Steele', 'Kenneth Mcdowell', 'Keaton Peck', 'Faith Guzman', 1, 5, 4, 1, NULL, NULL),
(405, 'Sean Holland', 520, 13, 400, 457, 159, 'Cynthia Colon', 'Sophia Cooley', 'MacKenzie Kirk', 'Beverly Foley', 'Keith Merritt', 0, 4, 2, 1, NULL, NULL),
(406, 'Evangeline Collier', 200, 33, 249, 574, 176, 'Salvador Holt', 'Chanda Harrington', 'Shay Talley', 'Dahlia Cohen', 'Logan Mcpherson', 1, 6, 7, 1, NULL, NULL),
(407, 'Bradley Mercer', 455, 497, 124, 262, 315, 'Hayes Gay', 'Emerson Hahn', 'Ivor Spence', 'Abra Burks', 'Ulysses Hurley', 0, 7, 8, 1, NULL, NULL),
(408, 'Medge Goff', 451, 535, 307, 359, 133, 'Finn Aguilar', 'Brittany Roy', 'Harriet Edwards', 'Joseph Riggs', 'May Walter', 0, 4, 7, 1, NULL, NULL),
(409, 'Marsden Walton', 201, 290, 522, 428, 484, 'Fritz Turner', 'Wesley Hoffman', 'Len Lang', 'Otto Blevins', 'Shannon Bentley', 1, 5, 9, 1, NULL, NULL),
(410, 'Ila Evans', 77, 173, 368, 279, 492, 'Chaim Lambert', 'Flynn Kirby', 'Quinn Mcbride', 'Melodie Rodriguez', 'Josiah Nelson', 0, 6, 11, 1, NULL, NULL),
(411, 'Victor Barnes', 365, 580, 398, 325, 580, 'Zane Gill', 'Elizabeth Becker', 'Adria Garcia', 'Irene Tucker', 'Nola Galloway', 0, 4, 7, 1, NULL, NULL),
(412, 'Yvonne Pruitt', 44, 182, 398, 597, 16, 'Wyoming Nieves', 'Micah Wright', 'Iona Walls', 'Rudyard Owen', 'Lunea Wilson', 0, 2, 8, 1, NULL, NULL),
(413, 'Jessica Mack', 582, 559, 390, 31, 485, 'Karyn Le', 'Igor Owen', 'Malcolm Copeland', 'Stella Knowles', 'Cleo Burnett', 1, 4, 3, 1, NULL, NULL),
(414, 'Sandra Bush', 565, 359, 589, 575, 306, 'Amela Beck', 'Perry Mercado', 'Brian Humphrey', 'Griffith Wilson', 'Ayanna Wilder', 0, 4, 5, 1, NULL, NULL),
(415, 'Molly Simmons', 130, 563, 368, 172, 74, 'Kane Petersen', 'Sean Coffey', 'Darryl Nicholson', 'Mannix Rollins', 'Rudyard Rich', 0, 5, 14, 1, NULL, NULL),
(416, 'Blake Webster', 428, 122, 135, 14, 81, 'Maite Finley', 'Gemma Middleton', 'Lois House', 'Kennedy Talley', 'Kyla Kim', 0, 3, 16, 1, NULL, NULL),
(417, 'Audra Baird', 411, 597, 288, 394, 591, 'Summer Quinn', 'Sawyer Reeves', 'James Good', 'Carson Harmon', 'Quamar England', 0, 6, 12, 1, NULL, NULL),
(418, 'Shelby Cotton', 291, 4, 271, 542, 518, 'Zeus Hubbard', 'Julian Riddle', 'Adam Stout', 'Carly Riggs', 'Hoyt King', 0, 6, 3, 1, NULL, NULL),
(419, 'Fallon Wise', 226, 541, 266, 202, 120, 'Jeremy Russell', 'Alec Love', 'Otto Allen', 'Randall Hancock', 'Yuli Gross', 1, 6, 15, 1, NULL, NULL),
(420, 'Luke Beard', 3, 139, 133, 229, 245, 'Jakeem Fry', 'Basil Gordon', 'Hiram Davis', 'Sacha Hess', 'Jade Lester', 1, 7, 12, 1, NULL, NULL),
(421, 'Oleg Boyd', 84, 272, 137, 340, 374, 'Rylee Shannon', 'Ivy Gordon', 'Urielle Vega', 'Angela Calderon', 'Finn Sykes', 0, 1, 17, 1, NULL, NULL),
(422, 'Xena Johns', 328, 530, 304, 578, 519, 'Lacy James', 'Charissa Mcleod', 'Barclay Cleveland', 'Urielle Carson', 'Julie Merrill', 0, 4, 15, 1, NULL, NULL),
(423, 'Caleb Hudson', 330, 204, 17, 206, 438, 'Dara Anthony', 'Francesca Lynn', 'Lucas Chambers', 'Eugenia Winters', 'Orli Bass', 1, 3, 11, 1, NULL, NULL),
(424, 'Hilel Young', 497, 394, 192, 156, 286, 'Camille Randall', 'Kane Giles', 'Martena Maxwell', 'Logan Dillard', 'Tarik Peck', 0, 1, 7, 1, NULL, NULL),
(425, 'Carly Rogers', 299, 274, 410, 129, 106, 'Herrod Osborn', 'Chadwick Boone', 'Justin Bell', 'Grady Pickett', 'Eugenia Page', 1, 1, 12, 1, NULL, NULL),
(426, 'Bryar Frye', 239, 370, 147, 520, 91, 'Burton Woods', 'Adam Estes', 'Zephania Austin', 'Teagan Trevino', 'Leonard Pittman', 0, 4, 12, 1, NULL, NULL),
(427, 'Hamilton Robinson', 529, 143, 343, 408, 22, 'Sara Ballard', 'Coby Baird', 'Devin Tucker', 'Trevor William', 'Mollie Larson', 1, 1, 8, 1, NULL, NULL),
(428, 'Sophia Cobb', 373, 360, 494, 18, 393, 'Bevis Acosta', 'Owen Parker', 'Thaddeus Hernandez', 'Daphne Morgan', 'Harding Bartlett', 1, 4, 15, 1, NULL, NULL),
(429, 'Samuel Todd', 431, 271, 23, 536, 458, 'Tyrone Wallace', 'Donna Frederick', 'Echo Shields', 'Daniel Morrison', 'Jasper Briggs', 1, 4, 5, 1, NULL, NULL),
(430, 'Yardley Clarke', 131, 480, 281, 491, 58, 'Paula Adams', 'Timon Padilla', 'Keelie Jackson', 'Sydney Bernard', 'Bernard Bolton', 1, 6, 4, 1, NULL, NULL),
(431, 'Elizabeth Bass', 116, 341, 351, 183, 434, 'Grant Harvey', 'Brenna Phillips', 'Bethany Yates', 'Uriah Ayers', 'Melodie Jennings', 1, 6, 5, 1, NULL, NULL),
(432, 'Bradley Marks', 188, 397, 247, 63, 241, 'Addison Barker', 'Mark Holcomb', 'Zachary Massey', 'Cameron Meadows', 'Tatum Cantu', 0, 5, 4, 1, NULL, NULL),
(433, 'Teagan Brewer', 19, 77, 164, 138, 375, 'Miriam Woodard', 'Vaughan Sanchez', 'Todd Moody', 'Garrett Kelley', 'Henry Mcintosh', 1, 4, 6, 1, NULL, NULL),
(434, 'Gage Jenkins', 311, 505, 138, 152, 250, 'Vanna Dillon', 'Zeph Anthony', 'Hedda Trujillo', 'Amity Curry', 'Rinah Love', 1, 3, 10, 1, NULL, NULL),
(435, 'Steel Hampton', 173, 149, 593, 374, 316, 'Alika Forbes', 'Vincent Nunez', 'Matthew Fox', 'Dalton Garner', 'David Vinson', 1, 6, 9, 1, NULL, NULL),
(436, 'Colton Emerson', 338, 204, 184, 117, 389, 'Theodore Dunlap', 'Brenda Sykes', 'Fitzgerald Mcfarland', 'Kevyn Langley', 'Kirestin Schmidt', 0, 5, 8, 1, NULL, NULL),
(437, 'Porter Barnes', 582, 242, 68, 497, 226, 'Cameran Copeland', 'Brenda Chambers', 'Omar Casey', 'Zenaida Hancock', 'Shelley Dickson', 1, 6, 3, 1, NULL, NULL),
(438, 'Nissim Acevedo', 558, 49, 43, 200, 348, 'Lewis Gates', 'Ethan Nolan', 'Miranda Fry', 'Plato Graves', 'Blake Albert', 1, 1, 5, 1, NULL, NULL),
(439, 'Amir Barrera', 571, 212, 67, 353, 551, 'Cooper Burke', 'Adara Petersen', 'Ursula Bradley', 'Jillian Duran', 'Ryan Gallagher', 1, 4, 10, 1, NULL, NULL),
(440, 'Dorian Byers', 13, 532, 236, 316, 165, 'Brendan Hatfield', 'Gisela Valentine', 'Jesse Newton', 'Ramona Clemons', 'Ocean Norris', 1, 3, 8, 1, NULL, NULL),
(441, 'Ciara Osborn', 315, 484, 521, 543, 314, 'Lilah Terry', 'Charissa Cooke', 'Frances Blankenship', 'Joelle Avery', 'Sean Price', 1, 2, 8, 1, NULL, NULL),
(442, 'Mason Hebert', 440, 408, 52, 305, 116, 'Fulton Lynch', 'Debra Daniel', 'Gay Grant', 'Kylie Levine', 'Ethan Irwin', 0, 3, 5, 1, NULL, NULL),
(443, 'Kyla Sellers', 74, 176, 512, 576, 15, 'Wesley Robbins', 'Heather Mason', 'Ann Parker', 'Wade Vang', 'Mufutau Odom', 0, 5, 17, 1, NULL, NULL),
(444, 'Madonna Mills', 189, 428, 429, 445, 304, 'Brandon Gilmore', 'Tad Owens', 'Ruby Burks', 'Kiona Gonzales', 'Lev House', 0, 6, 16, 1, NULL, NULL),
(445, 'Abel Dejesus', 522, 164, 342, 46, 406, 'Pamela Mcmillan', 'Aphrodite Moss', 'Maisie Camacho', 'Stewart Boone', 'Beverly Booth', 1, 6, 4, 1, NULL, NULL),
(446, 'Micah Clay', 412, 220, 96, 430, 365, 'Juliet Mccormick', 'Damian Brown', 'Caldwell Duffy', 'Carly Weeks', 'Seth Bowen', 0, 2, 16, 1, NULL, NULL),
(447, 'Helen Kirk', 104, 423, 530, 306, 370, 'Inga Austin', 'Teagan Browning', 'Irene Knowles', 'Echo Conley', 'Kieran Greer', 1, 5, 14, 1, NULL, NULL),
(448, 'Aspen Frederick', 11, 171, 333, 155, 351, 'Iris Robinson', 'Kadeem Carson', 'Galvin Chase', 'Bertha Barker', 'Jael Burke', 0, 3, 4, 1, NULL, NULL),
(449, 'Odessa Robbins', 469, 495, 391, 96, 504, 'Winifred Strickland', 'Noble Workman', 'Camille Hopper', 'Fatima Beach', 'Wayne Irwin', 0, 5, 16, 1, NULL, NULL),
(450, 'Ahmed Lara', 180, 174, 113, 322, 562, 'Zelda Parks', 'Alice Duncan', 'Illana Hendrix', 'Gregory Kidd', 'Hilel Martinez', 1, 5, 15, 1, NULL, NULL),
(451, 'Gisela Moss', 146, 35, 341, 150, 27, 'Abel Davenport', 'Ava Black', 'Jackson Carey', 'Vance Mueller', 'Branden Burton', 1, 5, 9, 1, NULL, NULL),
(452, 'Sasha Dickson', 420, 128, 544, 334, 97, 'Gray King', 'Joan Pennington', 'Baker Beck', 'Alden Marshall', 'Rafael Mosley', 0, 2, 6, 1, NULL, NULL),
(453, 'Jael Solis', 155, 38, 34, 341, 221, 'Halla Higgins', 'Clayton Beasley', 'Kyra Osborn', 'Eleanor Hines', 'Fay Sellers', 0, 2, 8, 1, NULL, NULL),
(454, 'Ralph Mcdonald', 306, 452, 87, 46, 39, 'Ivana Barr', 'Sage Elliott', 'Adrienne Dyer', 'Demetrius Kirk', 'Thor Page', 0, 5, 11, 1, NULL, NULL),
(455, 'Abdul Lowery', 440, 1, 183, 13, 397, 'Armand Craft', 'Ramona Carson', 'Dillon Preston', 'Stephen Randolph', 'Nathan Harrell', 0, 6, 16, 1, NULL, NULL),
(456, 'Tashya Kinney', 193, 424, 429, 432, 312, 'Griffith Thompson', 'Elmo Hale', 'Brittany Boyd', 'Stuart Ross', 'Barry Cabrera', 0, 6, 14, 1, NULL, NULL),
(457, 'Wayne Gilmore', 329, 401, 232, 22, 535, 'Elton Glass', 'Len Spence', 'Ebony Powell', 'Teagan Cobb', 'Beau Wilder', 1, 3, 3, 1, NULL, NULL),
(458, 'Burton Kerr', 309, 89, 364, 250, 151, 'Cameron Justice', 'Bruno Bruce', 'Donna Crawford', 'Shelly Barry', 'Murphy Boone', 1, 2, 11, 1, NULL, NULL),
(459, 'Samantha Anderson', 239, 266, 104, 11, 244, 'Jin Lane', 'Melvin Underwood', 'Aiko Harding', 'Adam Pittman', 'Kyle Cabrera', 1, 3, 8, 1, NULL, NULL),
(460, 'Neil Zimmerman', 583, 532, 548, 240, 350, 'Joelle Shields', 'Michelle Nichols', 'Ursula Gay', 'Rhiannon Castillo', 'Brenna Raymond', 0, 3, 17, 1, NULL, NULL),
(461, 'Linus Lyons', 351, 222, 590, 119, 512, 'Jocelyn Wooten', 'Emerald Sears', 'Halla Guerrero', 'Beau Cross', 'Jin Williamson', 1, 2, 7, 1, NULL, NULL),
(462, 'Chanda Bender', 101, 162, 255, 215, 130, 'Roth Cote', 'Alexa Mayer', 'Erich Alexander', 'Norman Sparks', 'Kasimir Richard', 1, 5, 9, 1, NULL, NULL),
(463, 'Xandra Welch', 99, 221, 49, 138, 509, 'Ina Ellison', 'Zahir Webb', 'Brielle Randall', 'Castor Klein', 'Brynn Dalton', 1, 5, 6, 1, NULL, NULL),
(464, 'Denise Cherry', 279, 165, 343, 243, 574, 'Gray Navarro', 'Todd Dickerson', 'Stella Aguirre', 'Wanda Powers', 'Ronan Douglas', 1, 6, 2, 1, NULL, NULL),
(465, 'Deanna Dale', 173, 153, 89, 174, 307, 'Steel Sampson', 'Paul Barnett', 'Len Ford', 'Xena Sawyer', 'Patricia George', 0, 6, 5, 1, NULL, NULL),
(466, 'Alexis Jimenez', 474, 513, 168, 159, 345, 'Dean Cox', 'Violet Webb', 'Bertha Cooke', 'Sylvester Howell', 'Gemma Simmons', 1, 5, 7, 1, NULL, NULL),
(467, 'Jade Lambert', 424, 237, 386, 192, 410, 'Noble Dodson', 'Brendan Cervantes', 'Clementine Valentine', 'Graham Rosales', 'Althea Stewart', 0, 4, 3, 1, NULL, NULL),
(468, 'Wing Shannon', 176, 503, 558, 157, 477, 'Rama Herrera', 'Joan Gibbs', 'Amber Webb', 'Yuli Frederick', 'Dahlia Mcdaniel', 1, 2, 7, 1, NULL, NULL),
(469, 'Benedict Eaton', 30, 131, 379, 272, 421, 'Elmo Wheeler', 'Isaiah Robles', 'Zena Cortez', 'Sacha Stevens', 'Solomon Cochran', 1, 1, 9, 1, NULL, NULL),
(470, 'Camilla Petersen', 104, 338, 281, 194, 404, 'Lacota Grimes', 'Ella Peck', 'Charles Simpson', 'Raven Graham', 'Eleanor Waters', 0, 3, 7, 1, NULL, NULL),
(471, 'Dylan Bright', 95, 585, 500, 545, 574, 'Phyllis Barron', 'Kennan Carpenter', 'Petra Slater', 'Adam Mckinney', 'Kimberly Hansen', 1, 5, 9, 1, NULL, NULL),
(472, 'Kirestin Lambert', 162, 33, 344, 6, 235, 'Chastity Melendez', 'Debra Mack', 'Dane Lara', 'Regan Woodward', 'Dillon Haney', 1, 3, 3, 1, NULL, NULL),
(473, 'Melyssa Hernandez', 229, 211, 367, 326, 286, 'Skyler Rodgers', 'Shelley Finch', 'Gregory Vinson', 'Ima Banks', 'Amanda Glass', 0, 4, 5, 1, NULL, NULL),
(474, 'Martina Phelps', 561, 1, 94, 366, 461, 'Quentin Rush', 'Daphne Hancock', 'Laurel Cervantes', 'Yolanda Schneider', 'Duncan Maldonado', 0, 6, 11, 1, NULL, NULL),
(475, 'Neve York', 302, 428, 168, 249, 29, 'Derek Wise', 'Tallulah Thornton', 'Nigel Chandler', 'Tanek Graves', 'Zachary Fowler', 1, 5, 15, 1, NULL, NULL),
(476, 'Yuli Hudson', 1, 243, 276, 598, 105, 'Jeanette Young', 'Sharon Cline', 'Skyler Kim', 'Adele Hays', 'Skyler Sexton', 0, 4, 9, 1, NULL, NULL),
(477, 'Candace Adkins', 313, 535, 446, 369, 560, 'Olivia Strong', 'Yetta Coleman', 'Leroy Rosario', 'Julian Cameron', 'Diana Silva', 1, 4, 14, 1, NULL, NULL),
(478, 'Hop Shepherd', 493, 341, 582, 527, 354, 'Giacomo Ruiz', 'Mikayla Wiggins', 'Roanna Kane', 'Iliana Zamora', 'Neve Soto', 0, 5, 9, 1, NULL, NULL),
(479, 'Mercedes James', 539, 154, 147, 235, 174, 'Claire Calhoun', 'Hiram Gates', 'Flavia Hess', 'Raja Miller', 'Tallulah Sosa', 0, 3, 9, 1, NULL, NULL),
(480, 'Neil Newton', 264, 237, 239, 468, 130, 'Constance Bishop', 'Arsenio Odom', 'Austin Duncan', 'Britanney Guy', 'Darrel Coffey', 0, 2, 15, 1, NULL, NULL),
(481, 'Tanya Blevins', 351, 589, 506, 400, 462, 'Natalie Wolf', 'Karina White', 'Helen Hyde', 'Leonard Ballard', 'Keith Rutledge', 1, 3, 7, 1, NULL, NULL),
(482, 'Hadley Bray', 372, 389, 130, 41, 63, 'Kirk Hurst', 'Curran Cochran', 'Lareina Dunn', 'Alma Sargent', 'Cally Barrett', 1, 3, 7, 1, NULL, NULL),
(483, 'Willow Davidson', 262, 515, 415, 166, 559, 'Tatum Fernandez', 'Hayden Wright', 'Zoe Barlow', 'Madeson Mcgee', 'Joel Meyer', 0, 3, 12, 1, NULL, NULL),
(484, 'Hall Baird', 334, 97, 235, 153, 364, 'Joseph Neal', 'Stone Flowers', 'Elijah Logan', 'Cairo Leblanc', 'Farrah Alvarado', 0, 3, 2, 1, NULL, NULL),
(485, 'Amy Riddle', 75, 32, 214, 44, 245, 'Montana Holt', 'Kirby Hobbs', 'Alden Klein', 'Abigail Roman', 'Alexa Finch', 1, 4, 16, 1, NULL, NULL),
(486, 'Uriah Wilkins', 405, 580, 487, 144, 488, 'Irma Foreman', 'Addison Thomas', 'Xanthus Ramirez', 'Nadine Fitzgerald', 'Austin Quinn', 1, 3, 13, 1, NULL, NULL),
(487, 'Shay Haynes', 308, 114, 216, 477, 599, 'Raja Jarvis', 'Thaddeus Barr', 'Beatrice Jones', 'Timon Atkins', 'Coby Pace', 1, 3, 14, 1, NULL, NULL),
(488, 'Jameson Hendrix', 248, 568, 147, 463, 223, 'Destiny Barrett', 'Ali Kirby', 'Ezekiel Clayton', 'Dennis Cunningham', 'Christen Hoover', 0, 4, 16, 1, NULL, NULL),
(489, 'Valentine Ryan', 25, 148, 396, 93, 570, 'Rafael Fitzgerald', 'Sybill Becker', 'Kylie Gallagher', 'Bertha Cannon', 'Ima Winters', 1, 3, 11, 1, NULL, NULL),
(490, 'Isaiah Booth', 480, 346, 186, 464, 149, 'Hillary Garcia', 'Branden Clarke', 'Meredith Lloyd', 'Erasmus Head', 'Castor Benson', 1, 2, 17, 1, NULL, NULL),
(491, 'Eaton Browning', 356, 47, 421, 567, 33, 'Aphrodite Juarez', 'Adam Hensley', 'Cedric Snyder', 'Illiana Kline', 'Madeson Heath', 1, 4, 10, 1, NULL, NULL),
(492, 'Phoebe Patton', 170, 358, 9, 251, 321, 'Vernon Mann', 'Eleanor Parsons', 'Nicholas Small', 'Elmo Delgado', 'Caesar Brewer', 1, 7, 7, 1, NULL, NULL),
(493, 'Noelani Mckenzie', 333, 502, 447, 351, 406, 'Carly Battle', 'Rashad Osborn', 'Leila Marshall', 'Gannon Gaines', 'Adria Berry', 0, 2, 5, 1, NULL, NULL),
(494, 'Ralph Smith', 334, 124, 7, 108, 390, 'Rajah Hutchinson', 'Elvis Daugherty', 'Judith Ross', 'Mona Hurley', 'Laurel Christensen', 1, 6, 14, 1, NULL, NULL),
(495, 'Sade Frye', 519, 503, 443, 177, 568, 'Maxine Hubbard', 'Travis Weaver', 'Harlan Kinney', 'Jesse Puckett', 'Uta Campbell', 0, 3, 3, 1, NULL, NULL),
(496, 'Caesar Roberts', 565, 91, 197, 276, 37, 'Nomlanga Harmon', 'Maite Greer', 'Brody Velasquez', 'Marvin Reyes', 'Bell Meyers', 0, 2, 2, 1, NULL, NULL),
(497, 'Otto Grant', 71, 75, 218, 346, 124, 'Odessa Clay', 'Jenette Daniels', 'Orli Gardner', 'Octavius Beach', 'Kirk Combs', 0, 5, 9, 1, NULL, NULL),
(498, 'Owen Norman', 502, 309, 382, 321, 128, 'Porter Vincent', 'Jane Marsh', 'Stephanie Barker', 'Armand Bowman', 'Clark Durham', 1, 1, 3, 1, NULL, NULL),
(499, 'Venus Freeman', 99, 100, 248, 540, 261, 'Aurora Lancaster', 'Dexter Mccullough', 'Lamar Sharp', 'Benedict Walters', 'Norman Boyer', 0, 3, 16, 1, NULL, NULL),
(500, 'Hakeem Dyer', 599, 10, 489, 96, 91, 'Marsden Dyer', 'Wyatt Jenkins', 'Logan Gilbert', 'Wyatt Cook', 'Reece Arnold', 0, 3, 15, 1, NULL, NULL),
(501, 'Jocelyn Harrell', 569, 546, 259, 192, 534, 'Wesley Hancock', 'Colton Mcgowan', 'Octavius Moran', 'Calvin Mayer', 'Lesley Koch', 1, 1, 15, 1, NULL, NULL),
(502, 'Wesley Camacho', 171, 11, 396, 524, 372, 'Ariel Robbins', 'Kylie Cotton', 'Hector Savage', 'Daphne Mcguire', 'Indira Mcintyre', 1, 3, 6, 1, NULL, NULL),
(503, 'Elvis Berg', 224, 23, 324, 17, 298, 'Kylee Savage', 'Marah Sexton', 'Macon Downs', 'Wayne Anthony', 'Nevada Crane', 1, 5, 2, 1, NULL, NULL),
(504, 'Madonna Petty', 483, 162, 297, 315, 242, 'Emi Rivera', 'Tyrone Roth', 'Gay Mcgowan', 'Felix O\'connor', 'Florence Fuentes', 1, 6, 10, 1, NULL, NULL),
(505, 'Vielka Hudson', 92, 339, 534, 141, 61, 'George Burch', 'Blossom Owen', 'Hiroko Osborn', 'Chiquita Powell', 'Judith Galloway', 1, 4, 1, 1, NULL, NULL),
(506, 'Uriel Hensley', 484, 174, 234, 260, 47, 'Jonas Giles', 'Hayes Leach', 'Burton Mcleod', 'Uma Rush', 'Ivy Rowland', 0, 5, 16, 1, NULL, NULL),
(507, 'Isaac Lara', 87, 547, 357, 582, 435, 'Indira Mooney', 'Emma Harvey', 'Dieter Olson', 'Bert Kim', 'Melyssa Rush', 0, 2, 2, 1, NULL, NULL),
(508, 'Rebekah Wallace', 266, 44, 489, 191, 101, 'Quon Potts', 'Palmer Ellis', 'Gannon Drake', 'Ramona Myers', 'Ulysses Farmer', 0, 5, 11, 1, NULL, NULL),
(509, 'Hu Dawson', 200, 371, 585, 289, 397, 'Quamar Velez', 'Dominic Hawkins', 'Bo Key', 'Jason Osborne', 'Petra Spencer', 1, 7, 8, 1, NULL, NULL),
(510, 'Macon Le', 113, 427, 554, 20, 444, 'Zephania Merrill', 'Rebecca Bell', 'Martena Benson', 'Ainsley Valentine', 'Jena Stone', 0, 6, 2, 1, NULL, NULL),
(511, 'Marvin Walsh', 46, 78, 408, 389, 48, 'Damon Foley', 'Joan Rojas', 'Moana York', 'Ferris Nunez', 'Christian Figueroa', 1, 3, 3, 1, NULL, NULL),
(512, 'Lucas Harvey', 535, 237, 318, 305, 152, 'Brynn Wallace', 'Sheila Curry', 'Lani Sparks', 'Sophia Colon', 'Astra Joseph', 1, 7, 13, 1, NULL, NULL),
(513, 'Cooper Hart', 70, 94, 592, 503, 353, 'Mari Roberson', 'Nomlanga Finch', 'Ursa Atkins', 'Regina Graves', 'Quynn Heath', 0, 6, 15, 1, NULL, NULL),
(514, 'Gretchen Peck', 404, 178, 375, 41, 375, 'Halee Stephenson', 'Josiah Lamb', 'Julian Wood', 'Lacy Floyd', 'Wanda Jordan', 0, 2, 5, 1, NULL, NULL),
(515, 'Lisandra Calderon', 95, 419, 6, 177, 66, 'Erasmus Lewis', 'Connor Lara', 'Ora Burton', 'Bruce Hobbs', 'Janna Mullen', 1, 5, 14, 1, NULL, NULL),
(516, 'Serina Levine', 330, 506, 585, 520, 32, 'Hermione Haney', 'Keith Snyder', 'Rinah Pierce', 'Tobias Grant', 'Reuben Hudson', 0, 6, 12, 1, NULL, NULL),
(517, 'Sonia Burt', 313, 108, 6, 438, 8, 'Iola Olson', 'Samuel Rasmussen', 'Sybil Frye', 'Pamela Tyler', 'Solomon Winters', 0, 3, 14, 1, NULL, NULL),
(518, 'Ebony Parrish', 133, 269, 261, 13, 159, 'Yardley Warner', 'Ronan Emerson', 'Quail Pratt', 'Wylie Sampson', 'Drew Peterson', 0, 4, 8, 1, NULL, NULL),
(519, 'Amir Schultz', 13, 587, 363, 282, 36, 'Kelsey Mendoza', 'Grace Daugherty', 'Cruz Soto', 'Lavinia Long', 'Cora Poole', 0, 5, 16, 1, NULL, NULL),
(520, 'Palmer Austin', 336, 211, 16, 473, 444, 'Aiko Pearson', 'Odysseus Dominguez', 'Shannon Hahn', 'Karleigh Wooten', 'Quintessa Golden', 0, 3, 10, 1, NULL, NULL),
(521, 'Kirestin Porter', 288, 586, 268, 437, 53, 'Jack Conrad', 'Micah Boyle', 'Thor Pearson', 'Hammett David', 'Timothy Barber', 1, 5, 2, 1, NULL, NULL),
(522, 'Odette Skinner', 83, 514, 107, 284, 241, 'Belle Peterson', 'Kibo Jacobson', 'Bert Cardenas', 'Zephania Mcclure', 'Nicholas Landry', 0, 2, 16, 1, NULL, NULL),
(523, 'Zachery Walsh', 436, 136, 66, 75, 278, 'Nash Mercado', 'Tanisha Hancock', 'Ciara Emerson', 'Ryan Knapp', 'Cora Tillman', 0, 2, 15, 1, NULL, NULL),
(524, 'Nicole Fitzgerald', 341, 308, 233, 95, 481, 'Blossom Cochran', 'Shellie Norris', 'Nicholas David', 'Donovan Patel', 'Emerson Freeman', 1, 3, 6, 1, NULL, NULL),
(525, 'Pascale Pearson', 227, 282, 504, 407, 509, 'Shay Mccormick', 'Joy Garrison', 'Rhona Clark', 'Eliana Rich', 'Aristotle Juarez', 1, 7, 5, 1, NULL, NULL),
(526, 'Vielka Strong', 566, 192, 163, 34, 116, 'Arthur Fletcher', 'Renee Lowery', 'Dexter Black', 'Rigel Massey', 'Lester Phelps', 0, 1, 5, 1, NULL, NULL),
(527, 'Roanna Villarreal', 384, 128, 546, 334, 23, 'Geoffrey Valenzuela', 'Ahmed Dale', 'Levi Pope', 'Madison Bishop', 'Herman Hale', 0, 4, 17, 1, NULL, NULL),
(528, 'Rama Wood', 206, 304, 326, 79, 77, 'Aspen Watson', 'Fritz Wilder', 'Briar Monroe', 'Summer Robles', 'Lars Harper', 0, 5, 14, 1, NULL, NULL),
(529, 'Dorian Pitts', 458, 443, 120, 550, 430, 'Elton Martinez', 'Serina Mccarty', 'Keaton Barlow', 'Michelle Crosby', 'Deborah Roman', 0, 1, 16, 1, NULL, NULL),
(530, 'Kristen Mcdonald', 69, 167, 95, 542, 13, 'Maile Roy', 'Lucas Lowery', 'Charles Bradley', 'Marsden Guzman', 'Giselle Britt', 0, 6, 8, 1, NULL, NULL),
(531, 'Rigel Holmes', 123, 127, 85, 464, 309, 'Jaden Ingram', 'Carly Lang', 'Chancellor Hall', 'Rahim Newton', 'Xavier Wade', 1, 5, 9, 1, NULL, NULL),
(532, 'Dahlia Wilkinson', 329, 357, 217, 73, 227, 'Amber Jensen', 'Adrian Blackwell', 'Tyler Flores', 'Bruno Crawford', 'Gretchen Dodson', 1, 5, 10, 1, NULL, NULL),
(533, 'Daphne Mccray', 540, 425, 504, 198, 179, 'Alexis Sellers', 'Teagan Lindsey', 'Kenyon Forbes', 'Yardley Wong', 'Arsenio Goodman', 0, 4, 9, 1, NULL, NULL),
(534, 'Kasimir Clark', 408, 537, 458, 53, 269, 'August Roy', 'Grace Holmes', 'Audrey Underwood', 'Petra Paul', 'Cairo Mckee', 1, 2, 11, 1, NULL, NULL),
(535, 'Vivien Morin', 419, 157, 359, 11, 109, 'Keelie Harrison', 'Yen Garrett', 'Cody Banks', 'Claire Valdez', 'Amethyst Schroeder', 0, 3, 8, 1, NULL, NULL),
(536, 'Katell Reese', 257, 150, 152, 234, 490, 'Ezekiel Dyer', 'Ifeoma Gallegos', 'Shellie Hopper', 'Jameson Jimenez', 'Jerry Cochran', 0, 7, 3, 1, NULL, NULL),
(537, 'Karina Oneil', 76, 213, 500, 18, 26, 'Teegan Johnson', 'Latifah Wyatt', 'Neil Juarez', 'Glenna Rowe', 'Savannah Schmidt', 0, 5, 4, 1, NULL, NULL),
(538, 'Garth Grant', 363, 436, 94, 364, 178, 'Lionel Noble', 'Donovan Rutledge', 'Breanna Dean', 'Joy Craft', 'Nolan Hebert', 0, 2, 13, 1, NULL, NULL),
(539, 'Anne Nunez', 429, 147, 155, 393, 429, 'Suki Vazquez', 'Burton Holman', 'Nicole Clements', 'Declan Kerr', 'Barclay Weiss', 0, 2, 6, 1, NULL, NULL),
(540, 'Xavier Mccoy', 101, 565, 464, 156, 207, 'Kermit Donovan', 'Jermaine Fernandez', 'Angelica Graves', 'Jarrod Spears', 'Ahmed Mendoza', 0, 1, 4, 1, NULL, NULL),
(541, 'Addison Burgess', 305, 226, 14, 407, 164, 'Ronan Mejia', 'Darius Stephenson', 'Hollee Ray', 'Wyoming Mullins', 'Zoe Bruce', 1, 4, 16, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `nombre_prove` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `apellido_prove` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `empresa_prove` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `cargo_prove` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `ciudad_prove` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `celular_prove` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `cedula_prove` varchar(13) COLLATE utf8_spanish_ci NOT NULL,
  `estado_prove` tinyint(1) NOT NULL,
  `id_negocio` int(11) DEFAULT 1,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `nombre_prove`, `apellido_prove`, `empresa_prove`, `cargo_prove`, `ciudad_prove`, `celular_prove`, `cedula_prove`, `estado_prove`, `id_negocio`, `updated_at`, `created_at`) VALUES
(1, 'Andres', 'Arriaga', 'Full Battery', 'Gerente', 'Santo Domingo', '9825623542', '', 1, 1, '2023-06-13 04:17:28', NULL),
(2, 'Rene', 'Sanchez', 'Mega', 'Gerente', 'Santo Domingo', '9762081543', '', 1, 1, '2023-06-13 04:18:15', NULL),
(3, 'Juan', 'Lopez', 'Coperat', 'Vendedor', 'Guayaquil', '9815549620', '', 1, 1, '2023-06-13 04:18:36', NULL),
(4, 'Maria', 'Espinoza', 'Nueva empresa1', 'Director segundo', 'Pueblo nuevo', '0256987462', '1234899991', 1, 1, '2023-07-27 18:10:34', '2023-06-09 05:24:16'),
(5, 'Nuevo nombre1', 'Nuevo apellido1', 'Nueva empresa1', 'Nuevo cargo1', 'Nueva ciudad1', '0256987461', '1234899991', 1, 1, '2023-07-22 21:30:04', '2023-06-09 05:25:45'),
(6, 'Christian', 'Perez', 'Espe', 'Docente Ingles', 'Santo domingo', '0123456789', '3698756666', 1, 1, '2023-07-27 18:11:57', '2023-06-09 06:37:28'),
(7, 'daf', 'dasfads', 'adsfads', 'adsfadsf', 'dsaf', '0123456788', '', 0, 1, '2023-06-09 08:10:17', '2023-06-09 07:16:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `estado_rol` tinyint(1) NOT NULL,
  `tipo_rol` varchar(200) COLLATE utf8_spanish_ci NOT NULL
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
  `descripcion_serv` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado_serv` tinyint(1) DEFAULT NULL,
  `precio_serv` float NOT NULL,
  `precio_repuestos` float NOT NULL,
  `total_servicio` float NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_transacciones` int(11) DEFAULT NULL,
  `ganancia_serv` float DEFAULT NULL,
  `id_negocio` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `servicio_tecnico`
--

INSERT INTO `servicio_tecnico` (`id_servicio`, `fecha_ingreso_serv`, `fecha_salida_serv`, `numero_comprobante`, `descripcion_serv`, `estado_serv`, `precio_serv`, `precio_repuestos`, `total_servicio`, `id_usuario`, `created_at`, `updated_at`, `id_cliente`, `id_transacciones`, `ganancia_serv`, `id_negocio`) VALUES
(1, '2023-06-22', NULL, 0, 'Reparacion de Mica SM', 1, 5, 0, 0, 1, NULL, NULL, 6, 7, NULL, 1),
(2, '2023-06-23', '2023-06-26', 0, 'Reparación de corazón roto :c ', 1, 100, 0, 0, 1, NULL, NULL, 2, 7, NULL, 1),
(4, '2023-06-27', NULL, 0, 'Reparar la vida misma', 1, 100, 0, 0, 1, '2023-06-28 02:33:16', '2023-06-28 02:33:16', 1, 12, NULL, 1),
(5, '2023-06-27', NULL, 1, 'Reparar la vida misma', 1, 100, 0, 0, 1, '2023-06-28 04:14:41', '2023-06-28 04:14:41', 1, 12, NULL, 1),
(6, '2023-06-27', NULL, 1, 'Reparar XD', 1, 5, 7, 0, 2, '2023-06-28 04:36:29', '2023-06-28 04:36:29', 2, 11, NULL, 1),
(7, '2023-06-27', NULL, 3, 'Reparar cabeza', 1, 5, 7, 12, 1, '2023-06-28 06:17:52', '2023-06-28 06:17:52', 5, 10, NULL, 1),
(8, '2023-06-28', '2023-06-28', 4, 'Indefinido', 0, 15, 30, 45, 1, '2023-06-28 21:10:05', '2023-06-28 21:10:05', 6, 14, NULL, 1),
(9, '2023-06-28', '2023-06-28', 5, 'Indefinido', 0, 10, 26, 36, 1, '2023-06-28 22:24:08', '2023-06-28 22:24:08', 1, 17, NULL, 1),
(10, '2023-07-01', '2023-07-01', 6, 'Indefinido', 0, 10, 57, 67, 1, '2023-07-01 05:14:40', '2023-07-01 05:14:40', 6, 19, NULL, 1),
(11, '2023-07-09', '2023-07-09', 7, 'Reparación de celular RP', 0, 10, 30, 40, 1, '2023-07-09 00:18:25', '2023-07-09 00:18:25', 6, 68, 6, 1),
(12, '2023-02-22', '2023-02-22', 8, 'xd', 0, 10, 231, 241, 1, '2023-07-11 00:22:09', '2023-07-11 00:22:09', 1, 74, 123, 1),
(13, '2023-07-13', '2023-07-17', 9, 'suelda de pin de carga de teléfono SM20S', 1, 10, 12, 22, 1, '2023-07-13 03:02:48', '2023-07-13 03:02:48', 7, 78, 7, 1),
(14, '2023-07-26', '2023-07-26', 10, '123131223', 0, 10, 58, 68, 1, '2023-07-26 02:21:27', '2023-07-26 02:21:27', 1, 82, 22, 1),
(15, '2023-07-26', '2023-07-26', 11, 'servicio técnico  sin repuesto', 0, 10, 0, 10, 1, '2023-07-26 19:46:41', '2023-07-26 19:46:41', 6, 84, 0, 1),
(16, '2023-07-26', '2023-07-26', 12, 'Reparacion de abc', 0, 10, 15, 25, 1, '2023-07-26 19:48:14', '2023-07-26 19:48:14', 6, 85, 3, 1),
(17, '2023-07-26', '2023-07-26', 13, 'repuesto', 0, 15, 55, 70, 1, '2023-07-26 19:53:19', '2023-07-26 19:53:19', 6, 86, 15, 1),
(18, '2023-07-26', '2023-07-26', 14, 'fdsfasgfdagdsfg', 0, 30, 0, 30, 1, '2023-07-26 19:55:13', '2023-07-26 19:55:13', 6, 87, 0, 1),
(19, '2023-07-26', '2023-07-26', 15, 'dsfadsgfdsagdsg', 0, 40, 0, 40, 1, '2023-07-26 20:06:27', '2023-07-26 20:06:27', 6, 89, 0, 1),
(20, '2023-07-26', '2023-07-26', 16, '60', 0, 60, 0, 60, 1, '2023-07-26 20:19:33', '2023-07-26 20:19:33', 6, 90, 0, 1),
(21, '2023-07-26', '2023-07-26', 17, 'se reparo un teléfono sin repuestos', 0, 10, 0, 10, 1, '2023-07-26 20:23:34', '2023-07-26 20:23:34', 6, 92, 0, 1),
(22, '2023-07-26', '2023-07-26', 18, 'dsafadsf', 0, 10, 15, 25, 1, '2023-07-26 20:35:36', '2023-07-26 20:35:36', 1, 94, 3, 1),
(23, '2023-07-26', '2023-07-26', 19, 'Indefinido', 0, 25, 30, 55, 1, '2023-07-26 20:38:09', '2023-07-26 20:38:09', 1, 95, 6, 1),
(24, '2023-07-26', '2023-07-26', 20, 'Indefinido', 1, 25, 30, 55, 1, '2023-07-26 20:39:47', '2023-07-26 20:39:47', 6, 96, 6, 1),
(25, '2023-07-26', '2023-07-26', 21, 'Indefinido', 0, 10, 35, 45, 1, '2023-07-26 23:11:02', '2023-07-26 23:11:02', 1, 98, 9.8, 1),
(26, '2023-07-26', '2023-07-26', 22, 'Indefinido', 1, 10, 30, 40, 1, '2023-07-27 03:10:30', '2023-07-27 03:10:30', 1, 100, 6, 1),
(27, '2023-07-26', '2023-07-26', 23, 'Indefinido', 1, 15, 60, 75, 1, '2023-07-27 03:14:32', '2023-07-27 03:14:32', 1, 101, 12, 1),
(28, '2023-07-26', '2023-07-26', 24, 'Indefinido', 1, 25, 75, 100, 1, '2023-07-27 03:17:18', '2023-07-27 03:17:18', 2, 102, 15, 1),
(29, '2023-07-26', '2023-07-26', 25, 'Indefinido', 1, 20, 15, 35, 1, '2023-07-27 03:18:55', '2023-07-27 03:18:55', 6, 103, 3, 1),
(30, '2023-07-26', '2023-07-26', 26, 'Indefinido', 1, 10, 42, 52, 1, '2023-07-27 03:21:42', '2023-07-27 03:21:42', 6, 104, 24, 1),
(31, '2023-07-27', '2023-07-27', 27, 'Se realiza un servicio técnico sin repuesto', 1, 10, 0, 10, 1, '2023-07-27 15:21:57', '2023-07-27 15:21:57', 6, 105, 0, 1),
(32, '2023-07-27', '2023-07-27', 28, 'Indefinido', 1, 10, 30, 40, 1, '2023-07-27 15:28:50', '2023-07-27 15:28:50', 6, 106, 6, 1),
(33, '2023-06-27', NULL, 3, 'Reparar cabeza', 1, 5, 7, 12, 1, '2023-07-27 18:48:11', '2023-07-27 18:48:11', 5, 10, NULL, 1),
(34, '2023-07-27', '2023-07-27', 29, 'dasfasdf', 1, 5, 0, 5, 21, '2023-07-27 23:10:09', '2023-07-27 23:10:09', 6, 114, 0, 1),
(35, '2023-07-27', '2023-07-27', 30, 'egerwgwerg', 0, 15, 0, 15, 21, '2023-07-27 23:10:33', '2023-07-27 23:10:33', 6, 115, 0, 1),
(36, '2023-07-27', '2023-07-27', 31, 'lllllll', 1, 13, 0, 13, 21, '2023-07-27 23:38:20', '2023-07-27 23:38:20', 6, 122, 0, 1),
(37, '2023-07-27', '2023-07-27', 32, 'fdgdfgd pendiente', 1, 3, 0, 3, 21, '2023-07-28 01:25:37', '2023-07-28 01:25:37', 6, 123, 0, 1),
(38, '2023-07-27', '2023-07-27', 33, 'nnnnn cancelado', 1, 6, 24, 30, 21, '2023-07-28 01:26:22', '2023-07-28 01:39:52', 6, 124, 14, 1),
(39, '2023-07-27', '2023-07-27', 34, 'estado pendiente', 0, 10, 0, 10, 21, '2023-07-28 02:05:50', '2023-07-28 02:05:50', 6, 125, 0, 1),
(40, '2023-07-28', '2023-07-28', 35, 'Se arregla celular Samsung A20s sin repuesto', 0, 30, 0, 30, 21, '2023-07-29 01:23:52', '2023-07-29 01:23:52', 6, 126, 0, 1),
(41, '2023-07-29', '2023-07-29', 36, 'Se genero una reparación de celular si repuesto', 1, 32, 0, 32, 19, '2023-07-29 06:52:00', '2023-07-29 06:52:00', 6, 134, 0, 1),
(42, '2023-07-31', '2023-07-31', 37, 'Cambio de Mica', 1, 4, 1, 5, 21, '2023-07-31 16:16:04', '2023-07-31 16:16:04', 6, 146, 0.77, 1),
(43, '2023-12-28', '2023-12-28', 38, 'reparacion mas repuesto', 1, 10, 12, 22, 21, '2023-12-29 00:27:12', '2023-12-29 00:27:12', 6, 147, 7, 1),
(44, '2022-12-07', '2024-02-06', 39, 'Chantale Bennett', 0, 371, 401, 39, 33, NULL, NULL, 1, 16, 98, 1),
(45, '2023-09-12', '0000-00-00', 40, 'Avye Hunter', 0, 282, 123, 534, 31, NULL, NULL, 10, 16, 87, 1),
(46, '0000-00-00', '2023-07-09', 41, 'Hedy Combs', 0, 587, 190, 359, 33, NULL, NULL, 3, 7, 42, 1),
(47, '0000-00-00', '0000-00-00', 42, 'Sandra Wilkerson', 0, 144, 126, 189, 38, NULL, NULL, 1, 11, 28, 1),
(48, '2023-02-12', '0000-00-00', 43, 'Diana Mathis', 1, 450, 550, 474, 40, NULL, NULL, 1, 19, 87, 1),
(49, '0000-00-00', '0000-00-00', 44, 'Emily Moreno', 1, 130, 2, 595, 34, NULL, NULL, 2, 8, 32, 1),
(50, '0000-00-00', '0000-00-00', 45, 'Kylee Alexander', 0, 472, 368, 218, 36, NULL, NULL, 10, 10, 41, 1),
(51, '0000-00-00', '0000-00-00', 46, 'Shana English', 1, 26, 309, 421, 36, NULL, NULL, 5, 10, 89, 1),
(52, '2022-11-28', '0000-00-00', 47, 'Asher Madden', 1, 119, 121, 142, 34, NULL, NULL, 1, 8, 71, 1),
(53, '0000-00-00', '0000-00-00', 48, 'Tanisha Blanchard', 1, 26, 372, 86, 31, NULL, NULL, 1, 11, 72, 1),
(54, '0000-00-00', '0000-00-00', 49, 'Martha Hutchinson', 1, 239, 424, 92, 37, NULL, NULL, 2, 8, 67, 1),
(55, '0000-00-00', '2023-03-05', 50, 'Hashim Gay', 0, 269, 574, 496, 31, NULL, NULL, 2, 18, 14, 1),
(56, '0000-00-00', '0000-00-00', 51, 'Alvin Giles', 0, 452, 509, 34, 32, NULL, NULL, 4, 19, 55, 1),
(57, '0000-00-00', '0000-00-00', 52, 'Jerome Allen', 1, 199, 255, 568, 32, NULL, NULL, 1, 17, 48, 1),
(58, '0000-00-00', '2024-11-27', 53, 'Thaddeus Gilmore', 1, 209, 522, 306, 35, NULL, NULL, 3, 16, 91, 1),
(59, '2023-12-29', '0000-00-00', 54, 'Rebecca Stafford', 0, 442, 167, 71, 34, NULL, NULL, 2, 11, 26, 1),
(60, '0000-00-00', '0000-00-00', 55, 'Kiara Dodson', 0, 206, 336, 303, 31, NULL, NULL, 2, 16, 64, 1),
(61, '0000-00-00', '0000-00-00', 56, 'Fleur Berry', 1, 249, 174, 260, 32, NULL, NULL, 3, 15, 95, 1),
(62, '2023-11-13', '0000-00-00', 57, 'Mollie Kane', 1, 456, 487, 187, 39, NULL, NULL, 3, 15, 24, 1),
(63, '0000-00-00', '0000-00-00', 58, 'Tanek Holland', 0, 162, 585, 23, 30, NULL, NULL, 4, 20, 88, 1),
(64, '0000-00-00', '0000-00-00', 59, 'Darius Herring', 0, 196, 114, 319, 39, NULL, NULL, 4, 15, 30, 1),
(65, '0000-00-00', '0000-00-00', 60, 'Madaline Burns', 1, 15, 26, 114, 38, NULL, NULL, 8, 9, 86, 1),
(66, '2022-07-16', '0000-00-00', 61, 'Harriet Todd', 0, 492, 94, 141, 36, NULL, NULL, 6, 7, 83, 1),
(67, '0000-00-00', '0000-00-00', 62, 'Gay Sharpe', 0, 348, 250, 182, 38, NULL, NULL, 8, 14, 80, 1),
(68, '0000-00-00', '2024-08-15', 63, 'Isaiah Burch', 1, 542, 424, 505, 33, NULL, NULL, 5, 14, 58, 1),
(69, '0000-00-00', '0000-00-00', 64, 'Uta Logan', 0, 478, 531, 84, 32, NULL, NULL, 10, 8, 85, 1),
(70, '0000-00-00', '0000-00-00', 65, 'Aline Hewitt', 1, 530, 299, 272, 32, NULL, NULL, 7, 11, 100, 1),
(71, '0000-00-00', '0000-00-00', 66, 'Candace Good', 1, 128, 201, 381, 34, NULL, NULL, 5, 10, 15, 1),
(72, '0000-00-00', '0000-00-00', 67, 'Karly Beasley', 1, 286, 445, 51, 31, NULL, NULL, 2, 16, 25, 1),
(73, '0000-00-00', '0000-00-00', 68, 'Cruz Shepherd', 1, 170, 94, 18, 34, NULL, NULL, 7, 16, 92, 1),
(74, '0000-00-00', '0000-00-00', 69, 'Kylan Poole', 1, 189, 296, 172, 34, NULL, NULL, 4, 13, 91, 1),
(75, '0000-00-00', '0000-00-00', 70, 'Shay Mueller', 0, 215, 353, 227, 34, NULL, NULL, 7, 13, 94, 1),
(76, '0000-00-00', '2023-07-04', 71, 'Debra Price', 1, 98, 295, 256, 30, NULL, NULL, 5, 10, 45, 1),
(77, '2022-09-26', '0000-00-00', 72, 'Yoshi Pearson', 0, 365, 431, 90, 40, NULL, NULL, 5, 17, 60, 1),
(78, '0000-00-00', '0000-00-00', 73, 'Kevin Mendoza', 0, 301, 570, 429, 38, NULL, NULL, 7, 7, 3, 1),
(79, '0000-00-00', '2024-12-12', 74, 'Malik Reilly', 1, 133, 42, 42, 30, NULL, NULL, 1, 20, 16, 1),
(80, '0000-00-00', '0000-00-00', 75, 'Lucian Richardson', 1, 346, 99, 228, 39, NULL, NULL, 7, 10, 65, 1),
(81, '0000-00-00', '0000-00-00', 76, 'Carissa Conley', 0, 408, 408, 290, 38, NULL, NULL, 8, 6, 90, 1),
(82, '2023-01-05', '0000-00-00', 77, 'Giacomo Joyce', 0, 369, 21, 175, 32, NULL, NULL, 4, 20, 18, 1),
(83, '0000-00-00', '0000-00-00', 78, 'Jared Conrad', 0, 408, 247, 256, 39, NULL, NULL, 8, 16, 50, 1),
(84, '2023-02-09', '0000-00-00', 79, 'Mannix Maxwell', 1, 222, 454, 385, 36, NULL, NULL, 8, 7, 39, 1),
(85, '0000-00-00', '0000-00-00', 80, 'Malik Gonzalez', 0, 351, 435, 363, 34, NULL, NULL, 7, 7, 87, 1),
(86, '0000-00-00', '0000-00-00', 81, 'Xaviera Yates', 1, 521, 246, 547, 39, NULL, NULL, 2, 12, 96, 1),
(87, '0000-00-00', '0000-00-00', 82, 'Alice Serrano', 0, 543, 532, 76, 39, NULL, NULL, 6, 18, 56, 1),
(88, '0000-00-00', '0000-00-00', 83, 'Hanna Grimes', 1, 302, 355, 82, 34, NULL, NULL, 8, 10, 33, 1),
(89, '0000-00-00', '2024-11-06', 84, 'Michael Vang', 0, 289, 506, 564, 38, NULL, NULL, 1, 6, 93, 1),
(90, '2023-10-15', '0000-00-00', 85, 'Orson Sharpe', 0, 64, 200, 517, 39, NULL, NULL, 7, 19, 11, 1),
(91, '0000-00-00', '2023-12-07', 86, 'Kylie England', 1, 148, 76, 101, 35, NULL, NULL, 2, 16, 95, 1),
(92, '0000-00-00', '0000-00-00', 87, 'Xena Hamilton', 1, 593, 201, 407, 31, NULL, NULL, 7, 18, 89, 1),
(93, '0000-00-00', '0000-00-00', 88, 'Hillary Durham', 0, 388, 505, 101, 33, NULL, NULL, 5, 13, 23, 1),
(94, '2022-05-15', '0000-00-00', 89, 'Dolan Hooper', 1, 353, 537, 472, 34, NULL, NULL, 7, 13, 81, 1),
(95, '0000-00-00', '0000-00-00', 90, 'Zachary Lewis', 1, 251, 36, 294, 30, NULL, NULL, 8, 20, 53, 1),
(96, '0000-00-00', '2024-10-11', 91, 'Rashad Mathews', 0, 6, 203, 38, 33, NULL, NULL, 8, 13, 2, 1),
(97, '0000-00-00', '0000-00-00', 92, 'Rooney Snyder', 0, 228, 275, 485, 38, NULL, NULL, 1, 15, 82, 1),
(98, '0000-00-00', '0000-00-00', 93, 'Marsden Goodman', 0, 12, 281, 63, 35, NULL, NULL, 4, 18, 37, 1),
(99, '0000-00-00', '0000-00-00', 94, 'April Dudley', 0, 238, 318, 294, 37, NULL, NULL, 1, 9, 41, 1),
(100, '0000-00-00', '0000-00-00', 95, 'Xandra Marquez', 1, 374, 90, 501, 30, NULL, NULL, 4, 13, 76, 1),
(101, '2022-04-15', '0000-00-00', 96, 'Guy Carver', 0, 426, 498, 405, 36, NULL, NULL, 1, 11, 63, 1),
(102, '2022-04-22', '0000-00-00', 97, 'Frances Kelley', 1, 573, 592, 66, 35, NULL, NULL, 7, 7, 72, 1),
(103, '0000-00-00', '0000-00-00', 98, 'Hamish Langley', 0, 273, 494, 267, 31, NULL, NULL, 1, 12, 91, 1),
(104, '0000-00-00', '0000-00-00', 99, 'Anjolie Pierce', 1, 79, 39, 78, 33, NULL, NULL, 8, 18, 17, 1),
(105, '0000-00-00', '0000-00-00', 100, 'Acton Cohen', 0, 319, 112, 561, 38, NULL, NULL, 8, 18, 92, 1),
(106, '0000-00-00', '0000-00-00', 101, 'Wallace Norton', 0, 55, 111, 398, 31, NULL, NULL, 3, 19, 88, 1),
(107, '0000-00-00', '0000-00-00', 102, 'Joelle James', 0, 155, 122, 194, 38, NULL, NULL, 1, 17, 68, 1),
(108, '0000-00-00', '0000-00-00', 103, 'Britanni Everett', 0, 108, 392, 161, 39, NULL, NULL, 5, 9, 99, 1),
(109, '2022-03-02', '2024-09-23', 104, 'Kimberley Strong', 1, 119, 600, 82, 40, NULL, NULL, 6, 12, 80, 1),
(110, '0000-00-00', '0000-00-00', 105, 'William Fisher', 0, 85, 227, 148, 38, NULL, NULL, 1, 14, 51, 1),
(111, '2022-04-04', '0000-00-00', 106, 'Quyn Maynard', 1, 75, 194, 288, 40, NULL, NULL, 4, 17, 34, 1),
(112, '2022-10-12', '0000-00-00', 107, 'Skyler Ramirez', 0, 200, 546, 92, 38, NULL, NULL, 6, 16, 12, 1),
(113, '0000-00-00', '0000-00-00', 108, 'Hayes Cohen', 1, 78, 175, 244, 40, NULL, NULL, 1, 14, 64, 1),
(114, '0000-00-00', '0000-00-00', 109, 'Drew Hogan', 0, 133, 520, 176, 33, NULL, NULL, 7, 17, 32, 1),
(115, '0000-00-00', '0000-00-00', 110, 'Chancellor Delaney', 1, 152, 338, 136, 33, NULL, NULL, 7, 6, 90, 1),
(116, '0000-00-00', '0000-00-00', 111, 'Christopher Sullivan', 0, 356, 211, 56, 34, NULL, NULL, 1, 15, 41, 1),
(117, '2023-11-11', '0000-00-00', 112, 'Colby Strickland', 1, 525, 183, 418, 37, NULL, NULL, 5, 14, 85, 1),
(118, '0000-00-00', '2024-04-22', 113, 'Giacomo Marshall', 1, 536, 271, 312, 30, NULL, NULL, 8, 7, 36, 1),
(119, '0000-00-00', '0000-00-00', 114, 'Fatima Anderson', 0, 298, 589, 414, 31, NULL, NULL, 3, 15, 85, 1),
(120, '0000-00-00', '0000-00-00', 115, 'Laurel Gaines', 1, 310, 11, 101, 40, NULL, NULL, 8, 19, 85, 1),
(121, '0000-00-00', '0000-00-00', 116, 'Joel Young', 1, 124, 389, 209, 39, NULL, NULL, 6, 14, 64, 1),
(122, '0000-00-00', '0000-00-00', 117, 'Nichole Grant', 0, 22, 260, 318, 35, NULL, NULL, 4, 18, 12, 1),
(123, '0000-00-00', '0000-00-00', 118, 'Deirdre Gordon', 0, 332, 407, 466, 39, NULL, NULL, 8, 7, 70, 1),
(124, '0000-00-00', '0000-00-00', 119, 'Brody Harding', 0, 292, 484, 380, 35, NULL, NULL, 8, 6, 66, 1),
(125, '0000-00-00', '0000-00-00', 120, 'Dawn Bond', 1, 593, 434, 535, 31, NULL, NULL, 2, 8, 83, 1),
(126, '0000-00-00', '0000-00-00', 121, 'India Schwartz', 1, 135, 323, 76, 38, NULL, NULL, 4, 15, 97, 1),
(127, '0000-00-00', '0000-00-00', 122, 'Erica Hatfield', 1, 239, 60, 301, 32, NULL, NULL, 4, 11, 43, 1),
(128, '2023-09-08', '2023-05-09', 123, 'Rashad Bridges', 0, 340, 133, 456, 31, NULL, NULL, 2, 19, 52, 1),
(129, '2022-12-02', '0000-00-00', 124, 'Miranda Sampson', 0, 312, 574, 428, 33, NULL, NULL, 8, 16, 100, 1),
(130, '0000-00-00', '0000-00-00', 125, 'Hyatt Key', 1, 112, 500, 41, 32, NULL, NULL, 4, 9, 31, 1),
(131, '0000-00-00', '2024-05-06', 126, 'Camden Wilkerson', 0, 80, 508, 194, 36, NULL, NULL, 7, 20, 94, 1),
(132, '2022-04-25', '2023-07-08', 127, 'Lenore Miranda', 1, 397, 156, 50, 37, NULL, NULL, 5, 8, 73, 1),
(133, '0000-00-00', '0000-00-00', 128, 'Violet James', 0, 388, 106, 492, 35, NULL, NULL, 1, 7, 64, 1),
(134, '0000-00-00', '2024-10-14', 129, 'Zoe Burch', 1, 141, 17, 569, 38, NULL, NULL, 7, 11, 60, 1),
(135, '0000-00-00', '2024-04-20', 130, 'William Brooks', 0, 281, 485, 508, 30, NULL, NULL, 4, 18, 100, 1),
(136, '0000-00-00', '2024-12-25', 131, 'Patience Holden', 1, 207, 327, 403, 38, NULL, NULL, 3, 10, 5, 1),
(137, '0000-00-00', '0000-00-00', 132, 'Regina Sims', 0, 296, 448, 383, 36, NULL, NULL, 2, 12, 44, 1),
(138, '0000-00-00', '0000-00-00', 133, 'Mia Anthony', 0, 122, 490, 568, 34, NULL, NULL, 1, 8, 5, 1),
(139, '0000-00-00', '0000-00-00', 134, 'Selma Finch', 0, 296, 37, 554, 32, NULL, NULL, 3, 11, 75, 1),
(140, '0000-00-00', '0000-00-00', 135, 'Fay Lee', 0, 326, 72, 265, 35, NULL, NULL, 3, 12, 70, 1),
(141, '0000-00-00', '0000-00-00', 136, 'Callum Ochoa', 1, 114, 510, 265, 40, NULL, NULL, 2, 18, 35, 1),
(142, '0000-00-00', '0000-00-00', 137, 'Giselle Harrison', 0, 547, 179, 166, 38, NULL, NULL, 2, 6, 80, 1),
(143, '0000-00-00', '2023-01-01', 138, 'Scott Malone', 0, 147, 409, 312, 36, NULL, NULL, 8, 11, 46, 1),
(144, '0000-00-00', '0000-00-00', 139, 'Beck Lester', 1, 48, 552, 384, 39, NULL, NULL, 5, 11, 10, 1),
(145, '0000-00-00', '0000-00-00', 140, 'Jolene Hicks', 1, 85, 434, 186, 36, NULL, NULL, 2, 12, 80, 1),
(146, '2022-12-20', '2024-05-24', 141, 'Yuri Kline', 0, 428, 477, 421, 37, NULL, NULL, 6, 16, 25, 1),
(147, '0000-00-00', '2024-04-27', 142, 'Sasha Mueller', 1, 89, 556, 385, 38, NULL, NULL, 6, 7, 64, 1),
(148, '0000-00-00', '2024-10-23', 143, 'Jane Carr', 1, 515, 426, 241, 31, NULL, NULL, 2, 9, 73, 1),
(149, '0000-00-00', '2024-09-09', 144, 'Larissa Hampton', 1, 128, 499, 26, 39, NULL, NULL, 3, 19, 8, 1),
(150, '0000-00-00', '2024-03-20', 145, 'Dolan Rodgers', 1, 509, 92, 381, 31, NULL, NULL, 8, 15, 49, 1),
(151, '0000-00-00', '0000-00-00', 146, 'Haviva Sullivan', 0, 466, 517, 146, 32, NULL, NULL, 6, 8, 97, 1),
(152, '0000-00-00', '2024-04-09', 147, 'Liberty Mcintyre', 1, 333, 149, 47, 39, NULL, NULL, 2, 19, 55, 1),
(153, '0000-00-00', '0000-00-00', 148, 'Mollie Livingston', 1, 565, 320, 324, 39, NULL, NULL, 5, 10, 57, 1),
(154, '0000-00-00', '2024-03-28', 149, 'Justine Lowe', 1, 458, 454, 389, 33, NULL, NULL, 5, 13, 85, 1),
(155, '0000-00-00', '0000-00-00', 150, 'Colt Jones', 1, 148, 233, 36, 37, NULL, NULL, 1, 9, 17, 1),
(156, '2023-05-15', '0000-00-00', 151, 'Eve Pearson', 0, 108, 436, 100, 39, NULL, NULL, 10, 17, 50, 1),
(157, '2023-04-05', '0000-00-00', 152, 'Marvin Castro', 1, 231, 375, 148, 31, NULL, NULL, 4, 16, 21, 1),
(158, '0000-00-00', '2024-11-06', 153, 'Imelda Farley', 1, 517, 369, 176, 31, NULL, NULL, 3, 13, 27, 1),
(159, '0000-00-00', '0000-00-00', 154, 'Jonah Sanders', 1, 532, 585, 145, 32, NULL, NULL, 1, 13, 6, 1),
(160, '0000-00-00', '0000-00-00', 155, 'Bernard Vargas', 0, 246, 423, 376, 32, NULL, NULL, 7, 11, 64, 1),
(161, '0000-00-00', '0000-00-00', 156, 'Fatima Sykes', 0, 56, 469, 298, 32, NULL, NULL, 7, 8, 3, 1),
(162, '2023-06-14', '0000-00-00', 157, 'Astra Holt', 0, 209, 542, 391, 40, NULL, NULL, 7, 14, 53, 1),
(163, '0000-00-00', '0000-00-00', 158, 'Octavius Craig', 0, 36, 4, 248, 31, NULL, NULL, 2, 17, 53, 1),
(164, '2023-10-07', '0000-00-00', 159, 'Tashya Harrington', 0, 384, 307, 151, 33, NULL, NULL, 2, 14, 68, 1),
(165, '0000-00-00', '0000-00-00', 160, 'Lionel Wall', 0, 389, 227, 513, 39, NULL, NULL, 6, 17, 38, 1),
(166, '0000-00-00', '0000-00-00', 161, 'Brent Rivers', 1, 23, 10, 339, 38, NULL, NULL, 3, 16, 56, 1),
(167, '0000-00-00', '0000-00-00', 162, 'Jayme Becker', 1, 438, 593, 61, 31, NULL, NULL, 4, 11, 89, 1),
(168, '0000-00-00', '0000-00-00', 163, 'Evangeline Glenn', 1, 12, 277, 588, 40, NULL, NULL, 5, 11, 99, 1),
(169, '0000-00-00', '0000-00-00', 164, 'Noel Skinner', 1, 23, 564, 270, 39, NULL, NULL, 8, 6, 20, 1),
(170, '0000-00-00', '0000-00-00', 165, 'Brady Garza', 0, 46, 526, 169, 39, NULL, NULL, 4, 7, 73, 1),
(171, '0000-00-00', '0000-00-00', 166, 'Piper Morin', 1, 183, 194, 596, 38, NULL, NULL, 1, 6, 75, 1),
(172, '0000-00-00', '0000-00-00', 167, 'Mohammad Jefferson', 0, 26, 445, 283, 33, NULL, NULL, 3, 7, 74, 1),
(173, '0000-00-00', '2024-07-24', 168, 'Delilah Short', 0, 446, 260, 7, 30, NULL, NULL, 6, 12, 4, 1),
(174, '0000-00-00', '0000-00-00', 169, 'Cecilia Chaney', 1, 592, 368, 436, 34, NULL, NULL, 2, 18, 56, 1),
(175, '0000-00-00', '0000-00-00', 170, 'Nyssa Burgess', 1, 169, 132, 350, 33, NULL, NULL, 7, 19, 59, 1),
(176, '2023-03-01', '0000-00-00', 171, 'Palmer Mcdowell', 1, 276, 11, 576, 32, NULL, NULL, 4, 15, 28, 1),
(177, '2023-04-03', '0000-00-00', 172, 'Tatum Page', 0, 505, 155, 432, 39, NULL, NULL, 10, 12, 92, 1),
(178, '0000-00-00', '0000-00-00', 173, 'Carissa Gates', 0, 132, 310, 64, 39, NULL, NULL, 7, 7, 85, 1),
(179, '0000-00-00', '0000-00-00', 174, 'Dorian Sanford', 0, 373, 191, 517, 37, NULL, NULL, 10, 10, 61, 1),
(180, '0000-00-00', '0000-00-00', 175, 'Josiah Delacruz', 0, 92, 138, 50, 31, NULL, NULL, 1, 19, 80, 1),
(181, '0000-00-00', '0000-00-00', 176, 'Ingrid Flowers', 0, 102, 318, 463, 30, NULL, NULL, 3, 17, 56, 1),
(182, '0000-00-00', '0000-00-00', 177, 'Claire Mckee', 0, 8, 406, 350, 38, NULL, NULL, 7, 11, 49, 1),
(183, '0000-00-00', '0000-00-00', 178, 'Denise Lloyd', 1, 80, 349, 443, 38, NULL, NULL, 1, 8, 40, 1),
(184, '0000-00-00', '0000-00-00', 179, 'Eaton Ray', 1, 234, 178, 427, 35, NULL, NULL, 4, 17, 31, 1),
(185, '0000-00-00', '0000-00-00', 180, 'Vivian Gonzalez', 0, 198, 544, 383, 39, NULL, NULL, 6, 7, 25, 1),
(186, '0000-00-00', '0000-00-00', 181, 'Scott Nicholson', 1, 61, 230, 560, 33, NULL, NULL, 2, 6, 39, 1),
(187, '0000-00-00', '0000-00-00', 182, 'Dillon Dyer', 0, 351, 586, 415, 34, NULL, NULL, 8, 12, 3, 1),
(188, '0000-00-00', '0000-00-00', 183, 'Ramona Paul', 1, 225, 456, 548, 38, NULL, NULL, 8, 18, 8, 1),
(189, '0000-00-00', '0000-00-00', 184, 'Beck Duke', 0, 172, 109, 321, 33, NULL, NULL, 1, 8, 24, 1),
(190, '0000-00-00', '0000-00-00', 185, 'Shana Richmond', 0, 339, 153, 460, 37, NULL, NULL, 5, 18, 70, 1),
(191, '2022-06-04', '0000-00-00', 186, 'Malik Hicks', 1, 374, 153, 516, 38, NULL, NULL, 6, 14, 3, 1),
(192, '0000-00-00', '0000-00-00', 187, 'Vladimir Molina', 1, 26, 43, 530, 35, NULL, NULL, 2, 16, 66, 1),
(193, '0000-00-00', '0000-00-00', 188, 'Coby Griffin', 1, 154, 555, 540, 37, NULL, NULL, 8, 7, 44, 1),
(194, '2023-11-20', '0000-00-00', 189, 'Sarah Garcia', 0, 515, 207, 437, 35, NULL, NULL, 5, 17, 3, 1),
(195, '0000-00-00', '0000-00-00', 190, 'Jaime Velazquez', 0, 407, 133, 178, 34, NULL, NULL, 3, 16, 60, 1),
(196, '0000-00-00', '2024-04-08', 191, 'May Harrison', 1, 383, 153, 7, 33, NULL, NULL, 5, 11, 80, 1),
(197, '0000-00-00', '0000-00-00', 192, 'Aiko Forbes', 0, 62, 585, 126, 37, NULL, NULL, 2, 14, 61, 1),
(198, '0000-00-00', '0000-00-00', 193, 'Lesley Molina', 1, 313, 445, 297, 40, NULL, NULL, 2, 14, 51, 1),
(199, '2022-03-28', '0000-00-00', 194, 'Felix Sheppard', 0, 192, 326, 291, 31, NULL, NULL, 2, 16, 8, 1),
(200, '2023-09-09', '0000-00-00', 195, 'Zelda Nelson', 0, 392, 15, 305, 33, NULL, NULL, 8, 19, 45, 1),
(201, '0000-00-00', '0000-00-00', 196, 'Hamilton Olsen', 0, 45, 376, 129, 35, NULL, NULL, 1, 18, 89, 1),
(202, '0000-00-00', '2024-08-12', 197, 'Sylvester Sullivan', 1, 29, 360, 540, 36, NULL, NULL, 8, 19, 14, 1),
(203, '0000-00-00', '0000-00-00', 198, 'Duncan Becker', 1, 65, 407, 286, 39, NULL, NULL, 1, 7, 50, 1),
(204, '0000-00-00', '0000-00-00', 199, 'Travis Fischer', 1, 209, 443, 582, 30, NULL, NULL, 8, 11, 4, 1),
(205, '0000-00-00', '2024-10-10', 200, 'Daria Weiss', 0, 85, 512, 503, 39, NULL, NULL, 10, 10, 93, 1),
(206, '0000-00-00', '0000-00-00', 201, 'Baxter Pope', 0, 482, 215, 432, 38, NULL, NULL, 10, 8, 27, 1),
(207, '0000-00-00', '2024-01-20', 202, 'Sonia Kaufman', 1, 81, 253, 461, 36, NULL, NULL, 10, 8, 82, 1),
(208, '2023-09-04', '2023-03-16', 203, 'Bianca Casey', 1, 177, 152, 485, 36, NULL, NULL, 1, 13, 56, 1),
(209, '0000-00-00', '0000-00-00', 204, 'Michael Underwood', 0, 16, 557, 47, 37, NULL, NULL, 8, 15, 37, 1),
(210, '0000-00-00', '0000-00-00', 205, 'Valentine Koch', 1, 545, 372, 244, 32, NULL, NULL, 1, 7, 78, 1),
(211, '0000-00-00', '0000-00-00', 206, 'Selma Velez', 1, 496, 562, 401, 39, NULL, NULL, 10, 18, 23, 1),
(212, '0000-00-00', '0000-00-00', 207, 'Tad Mcknight', 0, 105, 104, 53, 34, NULL, NULL, 7, 17, 13, 1),
(213, '0000-00-00', '0000-00-00', 208, 'Pamela English', 0, 52, 469, 592, 31, NULL, NULL, 1, 11, 90, 1),
(214, '0000-00-00', '2024-09-04', 209, 'Quemby Russo', 0, 374, 25, 240, 31, NULL, NULL, 6, 15, 79, 1),
(215, '0000-00-00', '0000-00-00', 210, 'Herman Cook', 0, 179, 587, 76, 37, NULL, NULL, 8, 7, 48, 1),
(216, '0000-00-00', '0000-00-00', 211, 'Mason Norman', 1, 148, 373, 261, 38, NULL, NULL, 8, 19, 86, 1),
(217, '0000-00-00', '0000-00-00', 212, 'Ursa Nunez', 1, 544, 556, 51, 33, NULL, NULL, 4, 19, 18, 1),
(218, '0000-00-00', '2024-10-15', 213, 'William Finch', 1, 85, 508, 269, 36, NULL, NULL, 2, 12, 46, 1),
(219, '0000-00-00', '2024-06-03', 214, 'Oren Joyce', 1, 366, 276, 428, 33, NULL, NULL, 2, 15, 32, 1),
(220, '0000-00-00', '2024-09-10', 215, 'Len Becker', 1, 150, 347, 83, 39, NULL, NULL, 1, 16, 70, 1),
(221, '0000-00-00', '0000-00-00', 216, 'Kadeem Nguyen', 1, 563, 100, 337, 37, NULL, NULL, 1, 17, 73, 1),
(222, '0000-00-00', '0000-00-00', 217, 'Kathleen Bishop', 1, 19, 369, 423, 38, NULL, NULL, 4, 20, 50, 1),
(223, '0000-00-00', '0000-00-00', 218, 'Reuben Cross', 1, 13, 35, 479, 34, NULL, NULL, 1, 20, 69, 1),
(224, '0000-00-00', '0000-00-00', 219, 'Marvin Holt', 0, 418, 556, 540, 39, NULL, NULL, 4, 15, 15, 1),
(225, '0000-00-00', '2023-02-05', 220, 'Vincent Henry', 1, 299, 90, 15, 37, NULL, NULL, 2, 19, 82, 1),
(226, '2022-08-06', '0000-00-00', 221, 'Kellie Spencer', 0, 259, 364, 566, 38, NULL, NULL, 3, 19, 64, 1),
(227, '0000-00-00', '2023-05-15', 222, 'Beatrice Hampton', 1, 469, 303, 235, 37, NULL, NULL, 2, 9, 57, 1),
(228, '0000-00-00', '2024-03-05', 223, 'Kamal Wade', 1, 114, 97, 218, 35, NULL, NULL, 2, 12, 3, 1),
(229, '0000-00-00', '0000-00-00', 224, 'Beck Alston', 1, 562, 449, 368, 35, NULL, NULL, 5, 19, 57, 1),
(230, '0000-00-00', '0000-00-00', 225, 'Geoffrey Underwood', 0, 344, 139, 181, 35, NULL, NULL, 10, 14, 79, 1),
(231, '0000-00-00', '0000-00-00', 226, 'Olga Murray', 1, 547, 303, 147, 40, NULL, NULL, 8, 9, 93, 1),
(232, '2022-05-06', '0000-00-00', 227, 'Brenna Vaughan', 0, 551, 135, 223, 37, NULL, NULL, 8, 14, 29, 1),
(233, '0000-00-00', '0000-00-00', 228, 'Magee Britt', 1, 101, 368, 69, 39, NULL, NULL, 8, 13, 17, 1),
(234, '0000-00-00', '0000-00-00', 229, 'Leandra Schneider', 0, 117, 271, 168, 30, NULL, NULL, 3, 20, 50, 1),
(235, '0000-00-00', '0000-00-00', 230, 'Sasha Valentine', 1, 567, 10, 147, 32, NULL, NULL, 10, 8, 99, 1),
(236, '0000-00-00', '0000-00-00', 231, 'Deirdre Dudley', 1, 86, 307, 76, 34, NULL, NULL, 2, 7, 32, 1),
(237, '2022-10-01', '2023-06-05', 232, 'James Baker', 1, 574, 413, 262, 37, NULL, NULL, 3, 8, 79, 1),
(238, '0000-00-00', '0000-00-00', 233, 'Cruz Hull', 1, 526, 580, 59, 33, NULL, NULL, 5, 19, 58, 1),
(239, '0000-00-00', '0000-00-00', 234, 'Leslie Bond', 0, 102, 499, 498, 34, NULL, NULL, 1, 11, 92, 1),
(240, '0000-00-00', '0000-00-00', 235, 'Keefe Jimenez', 1, 568, 297, 91, 35, NULL, NULL, 7, 7, 2, 1),
(241, '0000-00-00', '0000-00-00', 236, 'Zelenia Faulkner', 1, 174, 239, 209, 38, NULL, NULL, 2, 10, 20, 1),
(242, '0000-00-00', '0000-00-00', 237, 'Cally Patel', 0, 44, 272, 54, 32, NULL, NULL, 8, 7, 53, 1),
(243, '2022-07-05', '0000-00-00', 238, 'Ezekiel Salazar', 1, 322, 182, 397, 34, NULL, NULL, 3, 8, 66, 1),
(244, '0000-00-00', '2024-08-04', 239, 'Murphy Thomas', 1, 74, 571, 560, 35, NULL, NULL, 7, 19, 60, 1),
(245, '2023-12-30', '2023-04-03', 240, 'Salvador Solomon', 0, 308, 187, 87, 32, NULL, NULL, 4, 17, 18, 1),
(246, '2022-01-27', '0000-00-00', 241, 'Zoe Blanchard', 1, 419, 394, 351, 33, NULL, NULL, 2, 18, 17, 1),
(247, '0000-00-00', '0000-00-00', 242, 'Mufutau Mathis', 1, 283, 573, 126, 37, NULL, NULL, 6, 18, 14, 1),
(248, '0000-00-00', '0000-00-00', 243, 'Indigo Cline', 0, 80, 119, 164, 31, NULL, NULL, 6, 19, 44, 1),
(249, '0000-00-00', '0000-00-00', 244, 'Kennedy Montoya', 1, 125, 140, 314, 35, NULL, NULL, 3, 17, 64, 1),
(250, '0000-00-00', '0000-00-00', 245, 'Daria Barron', 1, 29, 105, 395, 38, NULL, NULL, 8, 17, 21, 1),
(251, '0000-00-00', '0000-00-00', 246, 'Jason Hanson', 1, 450, 365, 17, 34, NULL, NULL, 6, 11, 4, 1),
(252, '0000-00-00', '0000-00-00', 247, 'Cedric Landry', 0, 488, 188, 472, 39, NULL, NULL, 1, 15, 33, 1),
(253, '0000-00-00', '0000-00-00', 248, 'Darius Serrano', 0, 94, 568, 590, 38, NULL, NULL, 4, 9, 52, 1),
(254, '0000-00-00', '0000-00-00', 249, 'Kimberley Burnett', 0, 507, 369, 45, 39, NULL, NULL, 2, 8, 82, 1),
(255, '0000-00-00', '0000-00-00', 250, 'Edward Ball', 0, 131, 384, 30, 35, NULL, NULL, 6, 10, 77, 1),
(256, '2023-11-24', '0000-00-00', 251, 'Shea Riddle', 0, 160, 262, 312, 35, NULL, NULL, 4, 16, 36, 1),
(257, '2023-01-18', '0000-00-00', 252, 'Jason Ratliff', 0, 130, 135, 507, 32, NULL, NULL, 1, 15, 41, 1),
(258, '0000-00-00', '0000-00-00', 253, 'Devin Brock', 0, 208, 239, 165, 33, NULL, NULL, 8, 11, 5, 1),
(259, '0000-00-00', '2024-06-05', 254, 'Harlan Hutchinson', 0, 494, 329, 354, 36, NULL, NULL, 4, 10, 22, 1),
(260, '2023-08-22', '0000-00-00', 255, 'Liberty Barry', 0, 328, 266, 355, 36, NULL, NULL, 1, 9, 57, 1),
(261, '0000-00-00', '0000-00-00', 256, 'Jordan Skinner', 0, 473, 566, 221, 39, NULL, NULL, 3, 18, 39, 1),
(262, '2022-08-18', '0000-00-00', 257, 'Phillip Witt', 1, 539, 283, 535, 34, NULL, NULL, 7, 14, 32, 1),
(263, '0000-00-00', '0000-00-00', 258, 'Shelby Watkins', 0, 67, 384, 556, 36, NULL, NULL, 10, 15, 55, 1),
(264, '2022-01-22', '0000-00-00', 259, 'Keith Cote', 0, 34, 301, 384, 30, NULL, NULL, 7, 11, 58, 1),
(265, '0000-00-00', '0000-00-00', 260, 'May Beard', 0, 556, 405, 399, 31, NULL, NULL, 5, 17, 39, 1),
(266, '2023-05-27', '2023-09-16', 261, 'Karen Sherman', 0, 98, 129, 555, 38, NULL, NULL, 8, 20, 13, 1),
(267, '0000-00-00', '0000-00-00', 262, 'Gareth Elliott', 0, 304, 322, 44, 37, NULL, NULL, 5, 19, 12, 1),
(268, '0000-00-00', '0000-00-00', 263, 'Basia Ross', 0, 407, 256, 17, 35, NULL, NULL, 5, 9, 57, 1),
(269, '0000-00-00', '0000-00-00', 264, 'Shana James', 1, 69, 397, 334, 30, NULL, NULL, 1, 16, 64, 1),
(270, '0000-00-00', '0000-00-00', 265, 'Guy Walsh', 0, 398, 538, 594, 36, NULL, NULL, 2, 16, 16, 1),
(271, '0000-00-00', '0000-00-00', 266, 'Micah Woods', 0, 446, 398, 444, 31, NULL, NULL, 7, 7, 53, 1),
(272, '0000-00-00', '0000-00-00', 267, 'Ray Kidd', 0, 84, 351, 158, 39, NULL, NULL, 5, 18, 87, 1),
(273, '0000-00-00', '0000-00-00', 268, 'Illiana Battle', 0, 528, 489, 440, 32, NULL, NULL, 6, 9, 18, 1),
(274, '0000-00-00', '2024-12-01', 269, 'Elizabeth Stewart', 1, 76, 378, 216, 31, NULL, NULL, 2, 18, 15, 1),
(275, '0000-00-00', '0000-00-00', 270, 'Zane Holland', 0, 335, 19, 70, 31, NULL, NULL, 1, 19, 22, 1),
(276, '0000-00-00', '0000-00-00', 271, 'Erasmus Hood', 0, 228, 276, 581, 35, NULL, NULL, 1, 10, 66, 1),
(277, '0000-00-00', '2024-07-20', 272, 'Jameson Barr', 0, 339, 419, 371, 37, NULL, NULL, 7, 15, 59, 1),
(278, '0000-00-00', '0000-00-00', 273, 'Amanda Mccormick', 0, 349, 262, 328, 36, NULL, NULL, 4, 10, 82, 1),
(279, '2023-01-07', '0000-00-00', 274, 'Elizabeth Chang', 0, 43, 321, 261, 36, NULL, NULL, 2, 7, 21, 1),
(280, '0000-00-00', '0000-00-00', 275, 'Castor Castaneda', 0, 399, 45, 316, 36, NULL, NULL, 1, 19, 91, 1),
(281, '0000-00-00', '0000-00-00', 276, 'Hashim Monroe', 1, 74, 504, 427, 32, NULL, NULL, 3, 15, 44, 1),
(282, '2023-05-15', '2024-12-10', 277, 'Callum Walker', 1, 550, 513, 253, 37, NULL, NULL, 6, 13, 14, 1),
(283, '0000-00-00', '0000-00-00', 278, 'Gregory Wood', 0, 514, 120, 87, 35, NULL, NULL, 7, 11, 96, 1),
(284, '0000-00-00', '0000-00-00', 279, 'Florence Francis', 1, 391, 382, 431, 39, NULL, NULL, 6, 11, 64, 1),
(285, '0000-00-00', '0000-00-00', 280, 'Rae Bartlett', 0, 545, 217, 461, 34, NULL, NULL, 1, 19, 43, 1),
(286, '0000-00-00', '0000-00-00', 281, 'Barry Landry', 1, 468, 68, 277, 32, NULL, NULL, 4, 15, 5, 1),
(287, '2023-07-18', '2024-03-09', 282, 'Edan Higgins', 0, 86, 165, 365, 35, NULL, NULL, 3, 12, 30, 1),
(288, '0000-00-00', '0000-00-00', 283, 'Kiara Clark', 0, 456, 545, 386, 38, NULL, NULL, 3, 19, 56, 1),
(289, '0000-00-00', '0000-00-00', 284, 'Abraham Sweeney', 1, 185, 557, 198, 34, NULL, NULL, 3, 12, 23, 1),
(290, '0000-00-00', '0000-00-00', 285, 'Harper O\'brien', 1, 157, 34, 5, 32, NULL, NULL, 10, 6, 26, 1),
(291, '2023-02-01', '2023-11-16', 286, 'Kaseem Mason', 1, 77, 116, 261, 37, NULL, NULL, 8, 10, 69, 1),
(292, '0000-00-00', '0000-00-00', 287, 'Isabelle Newman', 0, 267, 450, 10, 38, NULL, NULL, 3, 9, 27, 1),
(293, '2022-10-21', '0000-00-00', 288, 'Robin Cote', 1, 497, 468, 329, 30, NULL, NULL, 6, 11, 92, 1),
(294, '2023-11-13', '0000-00-00', 289, 'Zahir Watson', 0, 352, 433, 149, 32, NULL, NULL, 5, 18, 49, 1),
(295, '0000-00-00', '0000-00-00', 290, 'Jaden Barron', 0, 67, 102, 241, 33, NULL, NULL, 10, 14, 93, 1),
(296, '0000-00-00', '0000-00-00', 291, 'Solomon Foley', 0, 498, 466, 43, 38, NULL, NULL, 8, 13, 7, 1),
(297, '0000-00-00', '0000-00-00', 292, 'Cassady Duffy', 0, 343, 195, 409, 37, NULL, NULL, 1, 7, 53, 1),
(298, '0000-00-00', '2024-03-25', 293, 'Isaiah Navarro', 0, 59, 292, 237, 33, NULL, NULL, 8, 19, 59, 1),
(299, '2023-01-21', '2023-07-19', 294, 'Madonna Haley', 1, 509, 580, 331, 32, NULL, NULL, 10, 9, 40, 1),
(300, '0000-00-00', '2023-09-10', 295, 'Mona Whitfield', 1, 173, 220, 291, 38, NULL, NULL, 10, 19, 28, 1),
(301, '0000-00-00', '0000-00-00', 296, 'Gregory Wilkinson', 0, 573, 383, 154, 40, NULL, NULL, 2, 11, 27, 1),
(302, '0000-00-00', '0000-00-00', 297, 'Raymond Campos', 0, 130, 150, 473, 40, NULL, NULL, 3, 17, 42, 1),
(303, '0000-00-00', '0000-00-00', 298, 'Chase Clark', 0, 565, 141, 49, 33, NULL, NULL, 6, 19, 34, 1),
(304, '0000-00-00', '2024-01-09', 299, 'Fleur Mckenzie', 1, 11, 325, 210, 34, NULL, NULL, 2, 20, 9, 1),
(305, '0000-00-00', '0000-00-00', 300, 'Victor Tyler', 1, 315, 28, 97, 31, NULL, NULL, 3, 19, 50, 1),
(306, '0000-00-00', '0000-00-00', 301, 'Jasper Scott', 1, 317, 109, 546, 33, NULL, NULL, 1, 9, 63, 1),
(307, '0000-00-00', '0000-00-00', 302, 'Gary Lynch', 1, 380, 180, 16, 31, NULL, NULL, 7, 8, 81, 1),
(308, '0000-00-00', '0000-00-00', 303, 'Brynne Berg', 0, 560, 18, 22, 32, NULL, NULL, 1, 9, 83, 1),
(309, '2023-09-11', '0000-00-00', 304, 'Paloma Combs', 0, 356, 159, 407, 38, NULL, NULL, 1, 7, 68, 1),
(310, '0000-00-00', '0000-00-00', 305, 'Gannon Harding', 0, 200, 112, 111, 32, NULL, NULL, 8, 6, 11, 1),
(311, '0000-00-00', '0000-00-00', 306, 'Kiayada Wolf', 1, 248, 457, 247, 30, NULL, NULL, 2, 12, 61, 1),
(312, '0000-00-00', '0000-00-00', 307, 'Stephanie Page', 0, 509, 155, 232, 32, NULL, NULL, 6, 19, 9, 1),
(313, '0000-00-00', '0000-00-00', 308, 'Hakeem Padilla', 0, 21, 474, 99, 39, NULL, NULL, 5, 11, 43, 1),
(314, '0000-00-00', '0000-00-00', 309, 'Abbot Petty', 0, 29, 7, 37, 35, NULL, NULL, 1, 17, 59, 1),
(315, '0000-00-00', '0000-00-00', 310, 'Lawrence Anthony', 0, 353, 435, 464, 34, NULL, NULL, 10, 16, 23, 1),
(316, '0000-00-00', '0000-00-00', 311, 'Zoe Schmidt', 1, 236, 230, 436, 30, NULL, NULL, 5, 17, 43, 1),
(317, '0000-00-00', '0000-00-00', 312, 'Zephania Campbell', 0, 180, 323, 458, 34, NULL, NULL, 7, 18, 77, 1),
(318, '2023-05-30', '0000-00-00', 313, 'Tashya Craft', 0, 185, 209, 25, 36, NULL, NULL, 2, 8, 17, 1),
(319, '0000-00-00', '0000-00-00', 314, 'Hamish Larsen', 1, 251, 188, 114, 33, NULL, NULL, 4, 7, 96, 1),
(320, '0000-00-00', '0000-00-00', 315, 'Declan Pugh', 0, 574, 219, 505, 33, NULL, NULL, 6, 7, 88, 1),
(321, '0000-00-00', '0000-00-00', 316, 'Kimberley Ware', 0, 11, 263, 320, 31, NULL, NULL, 4, 13, 94, 1),
(322, '2023-01-23', '0000-00-00', 317, 'Mohammad Dean', 0, 34, 473, 306, 36, NULL, NULL, 2, 14, 55, 1),
(323, '2022-11-19', '0000-00-00', 318, 'Gisela Lowe', 0, 252, 405, 349, 40, NULL, NULL, 3, 18, 45, 1),
(324, '0000-00-00', '0000-00-00', 319, 'Branden Valenzuela', 1, 146, 24, 95, 39, NULL, NULL, 1, 16, 79, 1),
(325, '0000-00-00', '2024-11-30', 320, 'Quamar Lindsay', 1, 519, 16, 237, 33, NULL, NULL, 3, 7, 47, 1),
(326, '0000-00-00', '0000-00-00', 321, 'Rigel Bryant', 1, 555, 359, 412, 38, NULL, NULL, 8, 8, 56, 1),
(327, '2023-09-24', '0000-00-00', 322, 'Len Taylor', 0, 46, 546, 547, 33, NULL, NULL, 5, 8, 17, 1),
(328, '0000-00-00', '2023-12-08', 323, 'Graham Jones', 1, 404, 179, 364, 32, NULL, NULL, 8, 7, 65, 1),
(329, '2023-01-20', '0000-00-00', 324, 'Eliana Wise', 1, 572, 413, 421, 40, NULL, NULL, 1, 8, 15, 1),
(330, '0000-00-00', '0000-00-00', 325, 'Charlotte Lynn', 1, 236, 338, 11, 31, NULL, NULL, 3, 7, 62, 1),
(331, '2022-11-04', '0000-00-00', 326, 'Ethan Casey', 0, 215, 148, 588, 38, NULL, NULL, 2, 11, 53, 1),
(332, '2023-01-09', '0000-00-00', 327, 'Chiquita Fowler', 1, 2, 585, 43, 36, NULL, NULL, 1, 20, 64, 1),
(333, '2022-05-22', '2024-04-09', 328, 'Dennis Lamb', 1, 87, 204, 476, 32, NULL, NULL, 4, 15, 83, 1),
(334, '0000-00-00', '2024-01-22', 329, 'Gannon Pugh', 1, 530, 281, 314, 35, NULL, NULL, 5, 13, 76, 1),
(335, '0000-00-00', '0000-00-00', 330, 'Rudyard Ratliff', 1, 564, 22, 242, 37, NULL, NULL, 3, 12, 49, 1),
(336, '0000-00-00', '0000-00-00', 331, 'Candace Dorsey', 0, 115, 378, 306, 32, NULL, NULL, 7, 20, 5, 1),
(337, '0000-00-00', '0000-00-00', 332, 'Buffy Henderson', 0, 480, 97, 559, 38, NULL, NULL, 5, 13, 61, 1),
(338, '0000-00-00', '0000-00-00', 333, 'Adara Carson', 0, 428, 162, 371, 36, NULL, NULL, 4, 8, 45, 1),
(339, '0000-00-00', '2024-08-04', 334, 'Edan Walls', 1, 393, 219, 127, 33, NULL, NULL, 7, 15, 99, 1),
(340, '0000-00-00', '0000-00-00', 335, 'Hilda Beach', 0, 420, 20, 229, 38, NULL, NULL, 8, 18, 17, 1),
(341, '0000-00-00', '0000-00-00', 336, 'Sophia Chandler', 0, 282, 307, 28, 33, NULL, NULL, 2, 15, 86, 1),
(342, '2022-05-15', '0000-00-00', 337, 'Ciara Riley', 1, 108, 494, 297, 39, NULL, NULL, 7, 9, 35, 1),
(343, '2023-02-15', '2024-07-01', 338, 'Wang Patel', 0, 32, 37, 52, 36, NULL, NULL, 6, 14, 20, 1),
(344, '0000-00-00', '0000-00-00', 339, 'Zephania Mcfadden', 0, 10, 469, 254, 39, NULL, NULL, 10, 18, 68, 1),
(345, '2023-01-14', '0000-00-00', 340, 'Kadeem Haney', 1, 205, 580, 27, 36, NULL, NULL, 4, 9, 83, 1),
(346, '0000-00-00', '2024-10-06', 341, 'Ciara Paul', 1, 407, 274, 384, 37, NULL, NULL, 1, 10, 5, 1),
(347, '0000-00-00', '0000-00-00', 342, 'Wyoming Booker', 1, 14, 298, 424, 34, NULL, NULL, 3, 13, 8, 1),
(348, '2023-11-05', '0000-00-00', 343, 'Larissa Clemons', 0, 359, 504, 236, 31, NULL, NULL, 1, 17, 56, 1),
(349, '0000-00-00', '0000-00-00', 344, 'Elmo Burt', 1, 309, 141, 59, 30, NULL, NULL, 1, 9, 56, 1),
(350, '2022-04-13', '0000-00-00', 345, 'Hall Cline', 1, 350, 513, 409, 30, NULL, NULL, 2, 16, 56, 1),
(351, '0000-00-00', '0000-00-00', 346, 'Owen Clayton', 0, 24, 146, 396, 38, NULL, NULL, 8, 9, 33, 1),
(352, '0000-00-00', '0000-00-00', 347, 'Barbara Phelps', 0, 285, 285, 447, 35, NULL, NULL, 1, 13, 9, 1),
(353, '0000-00-00', '2024-06-16', 348, 'Lavinia Strong', 1, 227, 49, 579, 38, NULL, NULL, 1, 13, 87, 1),
(354, '0000-00-00', '0000-00-00', 349, 'Hop Shelton', 1, 453, 284, 183, 36, NULL, NULL, 3, 11, 27, 1),
(355, '0000-00-00', '0000-00-00', 350, 'Rigel Beach', 0, 266, 363, 248, 39, NULL, NULL, 1, 15, 13, 1),
(356, '0000-00-00', '0000-00-00', 351, 'Orson Ford', 0, 96, 405, 7, 37, NULL, NULL, 2, 17, 59, 1),
(357, '0000-00-00', '0000-00-00', 352, 'Lester Mcleod', 1, 235, 110, 117, 31, NULL, NULL, 2, 13, 91, 1),
(358, '0000-00-00', '0000-00-00', 353, 'Cade Munoz', 1, 253, 247, 67, 37, NULL, NULL, 1, 10, 67, 1),
(359, '2022-08-12', '0000-00-00', 354, 'Kellie Lowery', 0, 399, 444, 358, 34, NULL, NULL, 8, 8, 79, 1),
(360, '0000-00-00', '2024-03-11', 355, 'Gregory Mcguire', 0, 493, 246, 223, 31, NULL, NULL, 1, 20, 19, 1),
(361, '0000-00-00', '2023-02-22', 356, 'Hector Barker', 1, 362, 469, 562, 37, NULL, NULL, 2, 17, 63, 1),
(362, '2023-03-26', '0000-00-00', 357, 'Bruce Key', 0, 26, 167, 68, 40, NULL, NULL, 4, 13, 78, 1),
(363, '0000-00-00', '2024-01-29', 358, 'Nola Buck', 1, 231, 378, 591, 35, NULL, NULL, 6, 12, 44, 1),
(364, '0000-00-00', '0000-00-00', 359, 'Cole Branch', 1, 280, 413, 531, 38, NULL, NULL, 2, 13, 80, 1),
(365, '0000-00-00', '0000-00-00', 360, 'Ella Reynolds', 0, 92, 112, 290, 36, NULL, NULL, 2, 19, 11, 1),
(366, '0000-00-00', '0000-00-00', 361, 'Rylee Erickson', 1, 476, 1, 236, 38, NULL, NULL, 5, 16, 57, 1),
(367, '2022-05-25', '2024-02-13', 362, 'Walker Reilly', 1, 260, 437, 552, 30, NULL, NULL, 7, 18, 87, 1),
(368, '0000-00-00', '0000-00-00', 363, 'Paki Woodward', 1, 402, 481, 119, 34, NULL, NULL, 8, 16, 68, 1),
(369, '2023-03-21', '0000-00-00', 364, 'Hedley Moran', 0, 421, 329, 478, 32, NULL, NULL, 1, 9, 56, 1),
(370, '0000-00-00', '0000-00-00', 365, 'Cade Parker', 0, 296, 398, 534, 37, NULL, NULL, 5, 13, 67, 1),
(371, '0000-00-00', '0000-00-00', 366, 'Patricia Rush', 1, 389, 128, 516, 38, NULL, NULL, 7, 12, 43, 1),
(372, '0000-00-00', '0000-00-00', 367, 'Cody Todd', 0, 334, 456, 174, 31, NULL, NULL, 5, 14, 84, 1),
(373, '0000-00-00', '2024-03-17', 368, 'Demetria Dale', 1, 101, 220, 114, 35, NULL, NULL, 7, 10, 28, 1),
(374, '2022-01-25', '0000-00-00', 369, 'Yolanda Luna', 1, 218, 3, 171, 39, NULL, NULL, 1, 19, 5, 1),
(375, '0000-00-00', '0000-00-00', 370, 'Wayne Dejesus', 1, 95, 499, 569, 40, NULL, NULL, 1, 6, 51, 1),
(376, '0000-00-00', '0000-00-00', 371, 'Allen Gonzales', 1, 66, 139, 207, 38, NULL, NULL, 3, 8, 44, 1),
(377, '0000-00-00', '0000-00-00', 372, 'Galvin Short', 0, 576, 470, 195, 32, NULL, NULL, 5, 11, 6, 1),
(378, '0000-00-00', '0000-00-00', 373, 'Warren Bright', 0, 270, 572, 589, 31, NULL, NULL, 2, 13, 21, 1),
(379, '0000-00-00', '0000-00-00', 374, 'Abra Maldonado', 1, 218, 332, 222, 34, NULL, NULL, 2, 9, 18, 1),
(380, '2023-04-15', '0000-00-00', 375, 'Madeson Day', 1, 253, 191, 381, 31, NULL, NULL, 3, 15, 97, 1),
(381, '0000-00-00', '0000-00-00', 376, 'Ashely Mclaughlin', 0, 421, 403, 198, 38, NULL, NULL, 5, 14, 63, 1),
(382, '0000-00-00', '0000-00-00', 377, 'Kareem Chang', 1, 514, 340, 378, 39, NULL, NULL, 1, 13, 83, 1),
(383, '0000-00-00', '0000-00-00', 378, 'Kato Mcdaniel', 0, 551, 272, 219, 35, NULL, NULL, 5, 19, 91, 1),
(384, '0000-00-00', '2024-10-06', 379, 'Dale Graves', 0, 344, 5, 269, 39, NULL, NULL, 3, 18, 43, 1),
(385, '0000-00-00', '0000-00-00', 380, 'Cheyenne Key', 0, 228, 133, 256, 38, NULL, NULL, 8, 18, 2, 1),
(386, '0000-00-00', '0000-00-00', 381, 'Jakeem Cote', 1, 422, 535, 193, 37, NULL, NULL, 3, 13, 25, 1),
(387, '0000-00-00', '0000-00-00', 382, 'Deirdre Dennis', 0, 43, 12, 300, 31, NULL, NULL, 7, 18, 57, 1),
(388, '0000-00-00', '0000-00-00', 383, 'Orli Carey', 0, 516, 472, 384, 38, NULL, NULL, 4, 19, 48, 1),
(389, '0000-00-00', '0000-00-00', 384, 'Ursa Gibson', 1, 59, 202, 93, 34, NULL, NULL, 8, 19, 6, 1),
(390, '0000-00-00', '0000-00-00', 385, 'Kato Sykes', 1, 489, 260, 50, 32, NULL, NULL, 10, 14, 5, 1),
(391, '2023-12-20', '0000-00-00', 386, 'Sandra Hardy', 0, 224, 122, 423, 31, NULL, NULL, 6, 17, 1, 1),
(392, '0000-00-00', '0000-00-00', 387, 'Xyla Watts', 0, 582, 527, 59, 31, NULL, NULL, 1, 20, 10, 1),
(393, '0000-00-00', '0000-00-00', 388, 'Caesar Bentley', 0, 238, 113, 465, 33, NULL, NULL, 1, 12, 60, 1),
(394, '0000-00-00', '2023-11-02', 389, 'Avye Mays', 0, 362, 520, 338, 38, NULL, NULL, 4, 18, 59, 1),
(395, '0000-00-00', '0000-00-00', 390, 'Rama Williams', 1, 471, 111, 418, 32, NULL, NULL, 8, 12, 78, 1),
(396, '2023-05-23', '2024-10-21', 391, 'Noah Warren', 0, 585, 355, 331, 34, NULL, NULL, 2, 12, 23, 1),
(397, '0000-00-00', '2023-07-20', 392, 'Calvin Lang', 0, 276, 175, 403, 31, NULL, NULL, 4, 9, 56, 1),
(398, '0000-00-00', '0000-00-00', 393, 'Anthony Shields', 0, 255, 341, 347, 34, NULL, NULL, 4, 14, 13, 1),
(399, '2022-12-23', '0000-00-00', 394, 'Tate Stein', 0, 94, 122, 420, 31, NULL, NULL, 2, 12, 63, 1),
(400, '0000-00-00', '2023-01-06', 395, 'Cecilia Benjamin', 1, 517, 75, 164, 33, NULL, NULL, 8, 11, 47, 1),
(401, '0000-00-00', '0000-00-00', 396, 'Nadine Carrillo', 1, 263, 489, 510, 36, NULL, NULL, 7, 7, 90, 1),
(402, '0000-00-00', '0000-00-00', 397, 'Stephanie Mccoy', 1, 168, 356, 588, 38, NULL, NULL, 8, 9, 78, 1),
(403, '0000-00-00', '0000-00-00', 398, 'Fiona Ingram', 1, 314, 338, 142, 30, NULL, NULL, 2, 7, 46, 1),
(404, '2023-12-14', '2024-11-06', 399, 'Adena Romero', 0, 512, 208, 455, 38, NULL, NULL, 7, 11, 97, 1),
(405, '0000-00-00', '0000-00-00', 400, 'Venus Sawyer', 1, 514, 435, 65, 35, NULL, NULL, 1, 16, 23, 1),
(406, '0000-00-00', '0000-00-00', 401, 'Megan Eaton', 1, 371, 191, 351, 32, NULL, NULL, 8, 15, 93, 1),
(407, '0000-00-00', '0000-00-00', 402, 'Blake Myers', 1, 180, 375, 271, 39, NULL, NULL, 5, 17, 94, 1),
(408, '0000-00-00', '0000-00-00', 403, 'Blossom Abbott', 1, 236, 216, 447, 33, NULL, NULL, 7, 7, 10, 1),
(409, '0000-00-00', '0000-00-00', 404, 'Raya Thomas', 0, 493, 285, 368, 40, NULL, NULL, 1, 9, 11, 1),
(410, '0000-00-00', '0000-00-00', 405, 'Edward Wynn', 0, 283, 36, 462, 31, NULL, NULL, 3, 9, 73, 1),
(411, '0000-00-00', '0000-00-00', 406, 'Jaquelyn Adkins', 1, 323, 134, 153, 39, NULL, NULL, 10, 8, 43, 1),
(412, '0000-00-00', '0000-00-00', 407, 'Arsenio Dawson', 0, 419, 161, 16, 35, NULL, NULL, 1, 16, 86, 1),
(413, '0000-00-00', '0000-00-00', 408, 'Quamar Head', 0, 419, 325, 282, 39, NULL, NULL, 5, 11, 54, 1),
(414, '0000-00-00', '0000-00-00', 409, 'Rhiannon Mcintosh', 0, 389, 313, 372, 34, NULL, NULL, 3, 14, 37, 1),
(415, '0000-00-00', '2024-02-09', 410, 'Emerson Robinson', 1, 210, 591, 96, 33, NULL, NULL, 2, 7, 7, 1),
(416, '0000-00-00', '0000-00-00', 411, 'Miriam Gilmore', 1, 25, 97, 592, 39, NULL, NULL, 1, 7, 65, 1),
(417, '0000-00-00', '0000-00-00', 412, 'Lani Wolf', 1, 578, 412, 544, 37, NULL, NULL, 6, 16, 40, 1),
(418, '2023-06-20', '0000-00-00', 413, 'Glenna Navarro', 0, 156, 475, 535, 35, NULL, NULL, 3, 11, 76, 1),
(419, '0000-00-00', '0000-00-00', 414, 'Joseph Merritt', 0, 433, 392, 335, 31, NULL, NULL, 5, 14, 74, 1),
(420, '0000-00-00', '0000-00-00', 415, 'Allegra Rush', 0, 476, 133, 249, 36, NULL, NULL, 7, 17, 75, 1),
(421, '0000-00-00', '2023-09-18', 416, 'Drew Barr', 0, 539, 286, 477, 32, NULL, NULL, 4, 18, 59, 1),
(422, '0000-00-00', '0000-00-00', 417, 'Maris Stafford', 0, 391, 499, 442, 35, NULL, NULL, 2, 19, 85, 1),
(423, '0000-00-00', '2024-07-04', 418, 'Jael Mathis', 1, 165, 349, 53, 36, NULL, NULL, 2, 15, 97, 1),
(424, '0000-00-00', '0000-00-00', 419, 'Madonna Moses', 0, 244, 362, 213, 37, NULL, NULL, 7, 20, 31, 1),
(425, '0000-00-00', '0000-00-00', 420, 'Brennan Hays', 0, 227, 513, 270, 34, NULL, NULL, 1, 7, 58, 1),
(426, '2022-05-04', '0000-00-00', 421, 'Quon Blair', 0, 362, 414, 332, 37, NULL, NULL, 2, 16, 54, 1),
(427, '0000-00-00', '0000-00-00', 422, 'Lani Hewitt', 1, 409, 292, 272, 37, NULL, NULL, 6, 14, 96, 1),
(428, '0000-00-00', '0000-00-00', 423, 'Fletcher Johns', 0, 518, 9, 351, 34, NULL, NULL, 7, 19, 83, 1),
(429, '0000-00-00', '2024-10-13', 424, 'Emmanuel Munoz', 0, 483, 234, 337, 37, NULL, NULL, 5, 16, 65, 1),
(430, '0000-00-00', '0000-00-00', 425, 'Jasmine Gonzalez', 0, 261, 376, 162, 35, NULL, NULL, 2, 9, 28, 1),
(431, '0000-00-00', '0000-00-00', 426, 'Mikayla Nolan', 1, 187, 525, 222, 39, NULL, NULL, 10, 14, 44, 1),
(432, '0000-00-00', '0000-00-00', 427, 'Jena Sweet', 0, 368, 235, 54, 38, NULL, NULL, 4, 11, 87, 1),
(433, '0000-00-00', '0000-00-00', 428, 'Kessie Marquez', 1, 60, 361, 221, 39, NULL, NULL, 1, 9, 81, 1),
(434, '2022-12-18', '0000-00-00', 429, 'Kieran Vaughn', 1, 556, 168, 489, 34, NULL, NULL, 7, 16, 99, 1),
(435, '0000-00-00', '2024-05-16', 430, 'Geoffrey Atkinson', 0, 242, 401, 503, 31, NULL, NULL, 3, 15, 93, 1),
(436, '0000-00-00', '0000-00-00', 431, 'Jorden Jennings', 0, 137, 76, 392, 32, NULL, NULL, 3, 10, 68, 1),
(437, '2023-11-30', '0000-00-00', 432, 'Emerald Vance', 0, 279, 455, 308, 34, NULL, NULL, 5, 19, 84, 1),
(438, '0000-00-00', '2024-02-06', 433, 'Channing Parker', 0, 457, 143, 423, 32, NULL, NULL, 3, 12, 97, 1),
(439, '0000-00-00', '0000-00-00', 434, 'MacKenzie Caldwell', 0, 288, 581, 236, 34, NULL, NULL, 2, 12, 40, 1),
(440, '0000-00-00', '0000-00-00', 435, 'Peter Best', 0, 236, 161, 364, 33, NULL, NULL, 6, 15, 13, 1),
(441, '0000-00-00', '2024-03-20', 436, 'Alexander Alvarado', 0, 157, 567, 46, 37, NULL, NULL, 1, 19, 54, 1),
(442, '0000-00-00', '0000-00-00', 437, 'Jerry Maxwell', 1, 536, 580, 101, 33, NULL, NULL, 7, 18, 84, 1),
(443, '0000-00-00', '2023-05-29', 438, 'Veronica Bell', 1, 156, 404, 50, 38, NULL, NULL, 3, 19, 70, 1),
(444, '0000-00-00', '0000-00-00', 439, 'Erica Small', 1, 457, 551, 306, 37, NULL, NULL, 3, 9, 82, 1),
(445, '0000-00-00', '0000-00-00', 440, 'Cailin Padilla', 0, 226, 118, 583, 36, NULL, NULL, 4, 14, 63, 1),
(446, '0000-00-00', '0000-00-00', 441, 'Nathaniel Stephenson', 1, 444, 221, 20, 37, NULL, NULL, 4, 7, 8, 1),
(447, '0000-00-00', '0000-00-00', 442, 'Zia Wright', 0, 94, 389, 191, 34, NULL, NULL, 1, 10, 83, 1),
(448, '0000-00-00', '0000-00-00', 443, 'Samantha Olsen', 1, 397, 83, 563, 36, NULL, NULL, 8, 16, 30, 1),
(449, '0000-00-00', '0000-00-00', 444, 'David Morales', 0, 381, 129, 64, 36, NULL, NULL, 5, 17, 50, 1),
(450, '0000-00-00', '2023-01-07', 445, 'Autumn Delacruz', 1, 86, 589, 356, 34, NULL, NULL, 1, 17, 57, 1),
(451, '0000-00-00', '0000-00-00', 446, 'Anika Carney', 1, 524, 90, 226, 34, NULL, NULL, 3, 9, 50, 1),
(452, '0000-00-00', '0000-00-00', 447, 'Bianca Blackwell', 0, 45, 207, 506, 37, NULL, NULL, 2, 6, 82, 1),
(453, '0000-00-00', '0000-00-00', 448, 'Keith Booker', 0, 456, 394, 231, 34, NULL, NULL, 8, 8, 25, 1),
(454, '0000-00-00', '0000-00-00', 449, 'Cody Swanson', 0, 461, 259, 366, 30, NULL, NULL, 1, 17, 42, 1),
(455, '2022-03-17', '2024-05-02', 450, 'Alexandra Salinas', 1, 345, 348, 317, 40, NULL, NULL, 2, 9, 9, 1),
(456, '0000-00-00', '0000-00-00', 451, 'Laith Salinas', 0, 320, 120, 525, 39, NULL, NULL, 10, 9, 82, 1),
(457, '0000-00-00', '0000-00-00', 452, 'Wing Schwartz', 1, 600, 140, 553, 40, NULL, NULL, 10, 13, 83, 1),
(458, '0000-00-00', '0000-00-00', 453, 'Holmes Greer', 1, 562, 260, 98, 37, NULL, NULL, 7, 19, 69, 1),
(459, '2022-11-06', '0000-00-00', 454, 'Chaney Maynard', 0, 242, 96, 118, 36, NULL, NULL, 5, 9, 15, 1),
(460, '0000-00-00', '0000-00-00', 455, 'Amal Wheeler', 0, 347, 119, 43, 40, NULL, NULL, 4, 6, 19, 1),
(461, '0000-00-00', '0000-00-00', 456, 'Mallory Meyer', 1, 482, 596, 179, 39, NULL, NULL, 1, 16, 68, 1),
(462, '0000-00-00', '2024-11-12', 457, 'Yuli Potts', 1, 68, 372, 468, 31, NULL, NULL, 7, 9, 82, 1),
(463, '0000-00-00', '0000-00-00', 458, 'Reuben Wall', 1, 430, 152, 361, 38, NULL, NULL, 2, 16, 26, 1),
(464, '0000-00-00', '0000-00-00', 459, 'Isadora Roach', 0, 595, 401, 401, 36, NULL, NULL, 10, 11, 10, 1),
(465, '0000-00-00', '0000-00-00', 460, 'Melinda Merrill', 0, 407, 20, 186, 33, NULL, NULL, 2, 16, 82, 1),
(466, '0000-00-00', '0000-00-00', 461, 'Chiquita Sharpe', 0, 453, 101, 591, 38, NULL, NULL, 1, 17, 54, 1),
(467, '0000-00-00', '0000-00-00', 462, 'Garth Vaughn', 1, 509, 146, 296, 32, NULL, NULL, 2, 9, 9, 1),
(468, '0000-00-00', '0000-00-00', 463, 'Lysandra Hayes', 0, 562, 254, 421, 35, NULL, NULL, 7, 10, 22, 1),
(469, '0000-00-00', '0000-00-00', 464, 'Roary Hayes', 0, 523, 550, 435, 32, NULL, NULL, 6, 12, 40, 1),
(470, '0000-00-00', '0000-00-00', 465, 'Riley Sims', 1, 492, 466, 11, 36, NULL, NULL, 5, 9, 50, 1),
(471, '0000-00-00', '0000-00-00', 466, 'Chanda Massey', 1, 21, 490, 139, 31, NULL, NULL, 4, 14, 17, 1),
(472, '0000-00-00', '0000-00-00', 467, 'Remedios French', 0, 589, 514, 534, 40, NULL, NULL, 8, 8, 96, 1),
(473, '0000-00-00', '0000-00-00', 468, 'Lawrence Kline', 1, 17, 10, 23, 33, NULL, NULL, 7, 11, 22, 1),
(474, '0000-00-00', '2024-05-01', 469, 'Octavius Mckay', 1, 264, 455, 543, 40, NULL, NULL, 10, 6, 56, 1),
(475, '0000-00-00', '0000-00-00', 470, 'Zephania Murphy', 0, 43, 570, 114, 34, NULL, NULL, 2, 13, 20, 1),
(476, '0000-00-00', '0000-00-00', 471, 'Leigh Colon', 0, 426, 32, 194, 31, NULL, NULL, 5, 8, 41, 1),
(477, '2023-01-27', '2024-09-27', 472, 'Britanney Weeks', 1, 232, 574, 11, 31, NULL, NULL, 4, 18, 40, 1);
INSERT INTO `servicio_tecnico` (`id_servicio`, `fecha_ingreso_serv`, `fecha_salida_serv`, `numero_comprobante`, `descripcion_serv`, `estado_serv`, `precio_serv`, `precio_repuestos`, `total_servicio`, `id_usuario`, `created_at`, `updated_at`, `id_cliente`, `id_transacciones`, `ganancia_serv`, `id_negocio`) VALUES
(478, '0000-00-00', '0000-00-00', 473, 'Sean Dunn', 0, 285, 321, 268, 30, NULL, NULL, 5, 17, 84, 1),
(479, '0000-00-00', '0000-00-00', 474, 'Logan Ball', 0, 280, 419, 106, 34, NULL, NULL, 1, 11, 75, 1),
(480, '2022-03-15', '2024-08-14', 475, 'Lester Haley', 0, 183, 525, 581, 34, NULL, NULL, 6, 13, 73, 1),
(481, '0000-00-00', '2024-09-10', 476, 'Jena Delacruz', 0, 271, 252, 327, 39, NULL, NULL, 6, 20, 35, 1),
(482, '0000-00-00', '0000-00-00', 477, 'Brenden Daugherty', 0, 63, 208, 406, 38, NULL, NULL, 3, 15, 54, 1),
(483, '0000-00-00', '2024-02-12', 478, 'Audra Vinson', 0, 82, 311, 139, 31, NULL, NULL, 5, 6, 9, 1),
(484, '2022-11-20', '0000-00-00', 479, 'Josiah Daniel', 1, 96, 552, 431, 37, NULL, NULL, 3, 19, 48, 1),
(485, '0000-00-00', '2024-07-21', 480, 'Dane Kidd', 1, 79, 318, 489, 32, NULL, NULL, 4, 10, 31, 1),
(486, '0000-00-00', '0000-00-00', 481, 'Craig Ayala', 1, 297, 310, 317, 32, NULL, NULL, 3, 17, 35, 1),
(487, '0000-00-00', '0000-00-00', 482, 'Dexter Rosa', 1, 346, 559, 574, 34, NULL, NULL, 6, 12, 38, 1),
(488, '0000-00-00', '0000-00-00', 483, 'Carissa Marshall', 1, 331, 325, 521, 33, NULL, NULL, 10, 18, 5, 1),
(489, '0000-00-00', '2024-06-27', 484, 'Brynne Ewing', 1, 141, 530, 391, 39, NULL, NULL, 1, 8, 28, 1),
(490, '0000-00-00', '0000-00-00', 485, 'Moses Byers', 1, 563, 148, 189, 39, NULL, NULL, 4, 20, 56, 1),
(491, '2022-09-27', '0000-00-00', 486, 'Geraldine Heath', 1, 22, 120, 404, 39, NULL, NULL, 1, 12, 54, 1),
(492, '0000-00-00', '0000-00-00', 487, 'Emery Campos', 1, 113, 496, 549, 36, NULL, NULL, 1, 16, 82, 1),
(493, '0000-00-00', '0000-00-00', 488, 'Isaiah Ayers', 1, 546, 372, 16, 32, NULL, NULL, 10, 16, 36, 1),
(494, '0000-00-00', '0000-00-00', 489, 'Drew Mcbride', 0, 551, 464, 253, 38, NULL, NULL, 1, 16, 24, 1),
(495, '0000-00-00', '0000-00-00', 490, 'Neville Richmond', 0, 187, 445, 125, 35, NULL, NULL, 6, 13, 28, 1),
(496, '0000-00-00', '2023-07-05', 491, 'Mufutau Shepard', 1, 302, 381, 248, 37, NULL, NULL, 8, 9, 33, 1),
(497, '0000-00-00', '2024-10-06', 492, 'Kadeem Marsh', 0, 268, 485, 162, 34, NULL, NULL, 1, 6, 72, 1),
(498, '2023-08-25', '2024-03-04', 493, 'Micah Turner', 0, 320, 31, 156, 34, NULL, NULL, 2, 14, 19, 1),
(499, '0000-00-00', '0000-00-00', 494, 'Tobias Maddox', 1, 483, 415, 258, 34, NULL, NULL, 3, 11, 83, 1),
(500, '2023-08-16', '0000-00-00', 495, 'Amal Rutledge', 0, 350, 179, 277, 35, NULL, NULL, 6, 15, 40, 1),
(501, '0000-00-00', '0000-00-00', 496, 'Danielle Hooper', 1, 501, 399, 498, 33, NULL, NULL, 3, 12, 81, 1),
(502, '0000-00-00', '0000-00-00', 497, 'Vance Lamb', 0, 247, 131, 200, 38, NULL, NULL, 7, 11, 23, 1),
(503, '0000-00-00', '0000-00-00', 498, 'Kamal Spears', 0, 42, 557, 5, 32, NULL, NULL, 3, 7, 23, 1),
(504, '2022-09-28', '2024-06-22', 499, 'Lester Moore', 1, 184, 441, 455, 32, NULL, NULL, 3, 17, 63, 1),
(505, '0000-00-00', '2024-09-14', 500, 'Wing Hays', 0, 97, 278, 216, 32, NULL, NULL, 4, 7, 84, 1),
(506, '0000-00-00', '0000-00-00', 501, 'Renee Vance', 0, 7, 539, 33, 39, NULL, NULL, 4, 12, 39, 1),
(507, '2022-04-24', '0000-00-00', 502, 'Alyssa Benson', 1, 474, 286, 233, 36, NULL, NULL, 2, 11, 42, 1),
(508, '0000-00-00', '0000-00-00', 503, 'John Suarez', 0, 293, 65, 573, 33, NULL, NULL, 2, 15, 51, 1),
(509, '0000-00-00', '0000-00-00', 504, 'Inga Cummings', 1, 463, 99, 33, 32, NULL, NULL, 8, 7, 89, 1),
(510, '0000-00-00', '0000-00-00', 505, 'Alexandra Henderson', 0, 125, 5, 562, 31, NULL, NULL, 4, 12, 66, 1),
(511, '0000-00-00', '0000-00-00', 506, 'Guinevere Mathis', 1, 464, 419, 287, 37, NULL, NULL, 7, 14, 35, 1),
(512, '0000-00-00', '0000-00-00', 507, 'Bradley Carey', 1, 346, 526, 276, 37, NULL, NULL, 1, 15, 72, 1),
(513, '0000-00-00', '0000-00-00', 508, 'Ivor West', 0, 209, 243, 287, 36, NULL, NULL, 1, 8, 6, 1),
(514, '0000-00-00', '2024-07-16', 509, 'Kelsie Lester', 0, 37, 330, 302, 33, NULL, NULL, 2, 6, 89, 1),
(515, '0000-00-00', '0000-00-00', 510, 'Noel Whitney', 0, 149, 314, 488, 39, NULL, NULL, 1, 17, 87, 1),
(516, '0000-00-00', '0000-00-00', 511, 'Cadman Nichols', 1, 82, 261, 589, 32, NULL, NULL, 5, 20, 7, 1),
(517, '0000-00-00', '0000-00-00', 512, 'Tobias Downs', 0, 87, 404, 555, 39, NULL, NULL, 1, 19, 66, 1),
(518, '0000-00-00', '0000-00-00', 513, 'Amity Grant', 0, 496, 126, 96, 37, NULL, NULL, 8, 19, 16, 1),
(519, '0000-00-00', '0000-00-00', 514, 'Leslie Stevens', 0, 100, 581, 356, 39, NULL, NULL, 2, 8, 30, 1),
(520, '0000-00-00', '0000-00-00', 515, 'Madeson Swanson', 1, 328, 393, 12, 37, NULL, NULL, 1, 7, 12, 1),
(521, '0000-00-00', '0000-00-00', 516, 'Bruce Barton', 1, 164, 303, 34, 33, NULL, NULL, 2, 8, 15, 1),
(522, '0000-00-00', '0000-00-00', 517, 'Kerry Fowler', 0, 201, 296, 239, 34, NULL, NULL, 8, 11, 53, 1),
(523, '0000-00-00', '0000-00-00', 518, 'Timon Douglas', 0, 519, 105, 255, 35, NULL, NULL, 7, 7, 54, 1),
(524, '0000-00-00', '2023-10-31', 519, 'Bruce Case', 1, 37, 172, 185, 37, NULL, NULL, 7, 13, 52, 1),
(525, '0000-00-00', '0000-00-00', 520, 'Raya Spencer', 0, 113, 286, 225, 39, NULL, NULL, 3, 9, 81, 1),
(526, '0000-00-00', '2023-06-07', 521, 'Jonah Suarez', 0, 188, 521, 392, 39, NULL, NULL, 4, 10, 50, 1),
(527, '0000-00-00', '0000-00-00', 522, 'Ursa Herrera', 0, 590, 429, 40, 39, NULL, NULL, 8, 9, 21, 1),
(528, '0000-00-00', '0000-00-00', 523, 'Jermaine Michael', 1, 282, 323, 357, 37, NULL, NULL, 6, 19, 42, 1),
(529, '0000-00-00', '2023-06-09', 524, 'Matthew Savage', 1, 204, 246, 29, 36, NULL, NULL, 4, 7, 98, 1),
(530, '0000-00-00', '2023-09-12', 525, 'Preston O\'brien', 0, 125, 242, 410, 32, NULL, NULL, 5, 10, 23, 1),
(531, '0000-00-00', '0000-00-00', 526, 'Yardley Wade', 1, 109, 66, 306, 32, NULL, NULL, 3, 13, 94, 1),
(532, '0000-00-00', '2023-07-06', 527, 'Kareem Yang', 0, 60, 438, 56, 36, NULL, NULL, 5, 6, 78, 1),
(533, '0000-00-00', '0000-00-00', 528, 'Acton Payne', 0, 530, 210, 471, 38, NULL, NULL, 8, 7, 59, 1),
(534, '0000-00-00', '0000-00-00', 529, 'Dieter Cruz', 1, 470, 90, 294, 33, NULL, NULL, 6, 13, 33, 1),
(535, '0000-00-00', '0000-00-00', 530, 'Brennan Reilly', 0, 130, 9, 23, 38, NULL, NULL, 1, 14, 26, 1),
(536, '0000-00-00', '2023-08-20', 531, 'Herman Austin', 1, 143, 32, 80, 32, NULL, NULL, 5, 16, 26, 1),
(537, '0000-00-00', '0000-00-00', 532, 'Mari Baker', 1, 383, 304, 66, 34, NULL, NULL, 4, 12, 64, 1),
(538, '0000-00-00', '0000-00-00', 533, 'Chandler Moon', 1, 377, 65, 266, 30, NULL, NULL, 3, 18, 60, 1),
(539, '0000-00-00', '0000-00-00', 534, 'Ginger Burris', 0, 518, 497, 153, 39, NULL, NULL, 4, 8, 54, 1),
(540, '0000-00-00', '0000-00-00', 535, 'Vladimir Pittman', 0, 530, 54, 148, 37, NULL, NULL, 6, 9, 53, 1),
(541, '2023-07-14', '0000-00-00', 536, 'Zahir Molina', 0, 426, 326, 57, 37, NULL, NULL, 1, 20, 21, 1),
(542, '2022-08-06', '0000-00-00', 537, 'Gray Aguilar', 1, 426, 515, 400, 35, NULL, NULL, 1, 15, 52, 1),
(543, '0000-00-00', '0000-00-00', 538, 'Odysseus Mcdowell', 1, 64, 62, 463, 34, NULL, NULL, 2, 6, 54, 1);

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
  `tipo_transaccion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `tipo_pago` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `monto_transaccion` float NOT NULL,
  `descripcion` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fecha_t` date NOT NULL,
  `motivo_transaccion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado_transaccion` tinyint(1) DEFAULT 1,
  `id_negocio` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `transacciones`
--

INSERT INTO `transacciones` (`id_transacciones`, `tipo_transaccion`, `tipo_pago`, `monto_transaccion`, `descripcion`, `created_at`, `updated_at`, `fecha_t`, `motivo_transaccion`, `estado_transaccion`, `id_negocio`) VALUES
(6, 'Salida', 'Efectivo', -48, 'dfasdfdsfads', NULL, NULL, '2023-07-27', 'Gasto', 1, 1),
(7, 'Entrada', 'Transferencia', 27, 'Indefinido', '2023-06-16 05:29:21', '2023-06-16 05:29:21', '0000-00-00', '', 1, 1),
(8, 'Entrada', 'Transferencia', 42, 'Indefinido', '2023-06-16 05:31:31', '2023-06-16 05:31:31', '0000-00-00', '', 1, 1),
(9, 'Entrada', 'Transferencia', 18, 'Indefinido', '2023-06-16 05:37:21', '2023-06-16 05:37:21', '0000-00-00', '', 1, 1),
(10, 'Entrada', 'Efectivo', 37, 'Indefinido', '2023-06-16 06:41:25', '2023-06-16 06:41:25', '0000-00-00', '', 1, 1),
(11, 'Entrada', 'Efectivo', 10, 'Indefinido', '2023-06-16 06:44:47', '2023-06-16 06:44:47', '0000-00-00', '', 1, 1),
(12, 'Entrada', 'Efectivo', 22, 'Indefinido', '2023-06-16 07:52:22', '2023-06-16 07:52:22', '0000-00-00', '', 1, 1),
(13, 'Entrada', 'Efectivo', 40, 'Indefinido', '2023-06-28 21:07:36', '2023-06-28 21:07:36', '0000-00-00', '', 1, 1),
(14, 'Entrada', 'Efectivo', 45, 'Indefinido', '2023-06-28 21:09:56', '2023-06-28 21:09:56', '0000-00-00', '', 1, 1),
(15, 'Entrada', 'Efectivo', 30, 'Indefinido', '2023-06-28 21:49:14', '2023-06-28 21:49:14', '0000-00-00', '', 1, 1),
(16, 'Entrada', 'Transferencia', 44, 'Indefinido', '2023-06-28 22:19:08', '2023-06-28 22:19:08', '0000-00-00', '', 1, 1),
(17, 'Entrada', 'Transferencia', 36, 'Indefinido', '2023-06-28 22:23:36', '2023-06-28 22:23:36', '0000-00-00', '', 1, 1),
(18, 'Entrada', 'Efectivo', 30, 'Indefinido', '2023-06-28 22:44:01', '2023-06-28 22:44:01', '0000-00-00', '', 1, 1),
(19, 'Entrada', 'Efectivo', 67, 'Indefinido', '2023-07-01 05:14:25', '2023-07-01 05:14:25', '0000-00-00', '', 1, 1),
(20, 'Entrada', 'Tarjeta de crédito', 100.5, 'Venta de producto A', '2023-07-01 16:23:41', '2023-07-01 16:23:41', '2023-06-30', '', 1, 1),
(21, 'Entrada', 'Transferencia bancaria', 250.2, 'Compra de producto B', '2023-07-01 16:23:41', '2023-07-01 16:23:41', '2023-06-29', '', 1, 1),
(22, 'Entrada', 'Efectivo', 50.75, 'Venta de producto C', '2023-07-01 16:23:41', '2023-07-01 16:23:41', '2023-06-28', '', 1, 1),
(23, 'Entrada', 'Efectivo', 10.75, 'Venta de producto C', '2023-07-01 16:23:41', '2023-07-01 16:23:41', '2023-06-14', '', 1, 1),
(24, 'Entrada', 'AAA', 10.5, 'Venta de producto', '2023-07-01 16:33:36', '2023-07-01 16:33:36', '2023-06-01', '', 1, 1),
(25, 'Entrada', 'AAA', 10.5, 'Venta de producto', '2023-07-01 16:33:36', '2023-07-01 16:33:36', '2023-06-02', '', 1, 1),
(26, 'Entrada', 'AAA', 10.5, 'Venta de producto', '2023-07-01 16:33:36', '2023-07-01 16:33:36', '2023-06-05', '', 1, 1),
(27, 'Entrada', 'AAA', 10.5, 'Venta de producto', '2023-07-01 16:33:36', '2023-07-01 16:33:36', '2023-06-07', '', 1, 1),
(28, 'Entrada', 'AAA', 10.5, 'Venta de producto', '2023-07-01 16:33:36', '2023-07-01 16:33:36', '2023-06-08', '', 1, 1),
(29, 'Entrada', 'AAA', 10.5, 'Venta de producto', '2023-07-01 16:33:36', '2023-07-01 16:33:36', '2023-06-09', '', 1, 1),
(30, 'Entrada', 'AAA', 10.5, 'Venta de producto', '2023-07-01 16:33:36', '2023-07-01 16:33:36', '2023-06-12', '', 1, 1),
(31, 'Entrada', 'AAA', 10.5, 'Venta de producto', '2023-07-01 16:33:36', '2023-07-01 16:33:36', '2023-06-14', '', 1, 1),
(32, 'Entrada', 'AAA', 10.5, 'Venta de producto', '2023-07-01 16:33:36', '2023-07-01 16:33:36', '2023-06-15', '', 1, 1),
(33, 'Entrada', 'AAA', 10.5, 'Venta de producto', '2023-07-01 16:33:36', '2023-07-01 16:33:36', '2023-06-16', '', 1, 1),
(34, 'Entrada', 'AAA', 10.5, 'Venta de producto', '2023-07-01 16:33:36', '2023-07-01 16:33:36', '2023-06-17', '', 1, 1),
(35, 'Entrada', 'AAA', 10.5, 'Venta de producto', '2023-07-01 16:33:36', '2023-07-01 16:33:36', '2023-06-18', '', 1, 1),
(36, 'Entrada', 'AAA', 10.5, 'Venta de producto', '2023-07-01 16:33:36', '2023-07-01 16:33:36', '2023-06-19', '', 1, 1),
(37, 'Entrada', 'Efectivo', 20.5, 'Venta de producto D', '2023-07-01 17:20:17', '2023-07-01 17:20:17', '2023-05-01', '', 1, 1),
(38, 'Entrada', 'Transferencia', 250.2, 'Compra de producto E', '2023-07-01 17:20:17', '2023-07-01 17:20:17', '2023-06-02', '', 1, 1),
(39, 'Entrada', 'Efectivo', 75.1, 'Venta de producto F', '2023-07-01 17:20:17', '2023-07-01 17:20:17', '2023-05-03', '', 1, 1),
(40, 'Entrada', 'Transferencia', 23, 'Venta de producto A', '2023-07-01 17:20:17', '2023-07-01 17:20:17', '2023-05-08', '', 1, 1),
(41, 'Entrada', 'Efectivo', 150, 'Venta de producto H', '2023-07-01 17:20:17', '2023-07-01 17:20:17', '2023-05-09', '', 1, 1),
(42, 'Entrada', 'Transferencia', 120, 'Venta de producto X', '2023-07-01 17:20:17', '2023-07-01 17:20:17', '2023-05-10', '', 1, 1),
(43, 'Entrada', 'Efectivo', 83, 'Venta de producto P', '2023-07-01 17:20:17', '2023-07-01 17:20:17', '2023-05-15', '', 1, 1),
(44, 'Entrada', 'Efectivo', 45, 'Venta de producto XP', '2023-07-01 17:20:17', '2023-07-01 17:20:17', '2023-05-16', '', 1, 1),
(45, 'Entrada', 'Transferencia', 110, 'Venta de producto HO', '2023-07-01 17:20:17', '2023-07-01 17:20:17', '2023-05-17', '', 1, 1),
(46, 'Entrada', 'Efectivo', 120, 'Venta de producto HX', '2023-07-01 17:20:17', '2023-07-01 17:20:17', '2023-05-22', '', 1, 1),
(47, 'Entrada', 'Transferencia', 58, 'Venta de producto HP', '2023-07-01 17:20:17', '2023-07-01 17:20:17', '2023-05-23', '', 1, 1),
(48, 'Entrada', 'Efectivo', 86, 'Venta de producto TG', '2023-07-01 17:20:17', '2023-07-01 17:20:17', '2023-05-24', '', 1, 1),
(49, 'Entrada', 'Efectivo', 56, 'Venta de producto PF', '2023-07-01 17:20:17', '2023-07-01 17:20:17', '2023-05-28', '', 1, 1),
(50, 'Entrada', 'Transferencia', 10, 'Venta de producto DT', '2023-07-01 17:20:17', '2023-07-01 17:20:17', '2023-05-29', '', 1, 1),
(51, 'Entrada', 'Efectivo', 50, 'Venta de producto YS', '2023-07-01 17:20:17', '2023-07-01 17:20:17', '2023-05-30', '', 1, 1),
(52, 'Entrada', 'Transferencia', 54, 'Indefinido', '2023-07-02 01:25:01', '2023-07-02 01:25:01', '2023-07-01', '', 1, 1),
(53, 'Entrada', 'Transferencia', 44, 'Indefinido', '2023-07-02 01:34:10', '2023-07-02 01:34:10', '2023-07-01', '', 1, 1),
(54, 'Entrada', 'Efectivo', 59, 'Indefinido', '2023-07-02 01:38:26', '2023-07-02 01:38:26', '2023-07-01', '', 1, 1),
(55, 'Entrada', 'Transferencia', 44, 'Indefinido', '2023-07-02 01:50:44', '2023-07-02 01:50:44', '2023-07-01', '', 1, 1),
(56, 'Entrada', 'Transferencia', 29, 'Indefinido', '2023-07-02 03:32:44', '2023-07-02 03:32:44', '2023-07-01', '', 1, 1),
(57, 'Entrada', 'Efectivo', 45, 'Indefinido', '2023-07-02 04:10:28', '2023-07-02 04:10:28', '2023-07-01', '', 1, 1),
(58, 'Entrada', 'Transferencia', 29, 'Indefinido', '2023-07-02 04:14:11', '2023-07-02 04:14:11', '2023-07-01', '', 1, 1),
(59, 'Entrada', 'Transferencia', 29, 'Indefinido', '2023-07-02 04:19:54', '2023-07-02 04:19:54', '2023-07-01', '', 1, 1),
(60, 'Entrada', 'Transferencia', 45, 'Indefinido', '2023-07-02 04:38:11', '2023-07-02 04:38:11', '2023-07-01', '', 1, 1),
(61, 'Entrada', 'Transferencia', 43, 'Indefinido', '2023-07-02 04:47:20', '2023-07-02 04:47:20', '2023-07-01', '', 1, 1),
(62, 'Entrada', 'Transferencia', 31, 'Indefinido', '2023-07-05 05:07:59', '2023-07-05 05:07:59', '2023-07-05', '', 1, 1),
(63, 'Entrada', 'Efectivo', 15, 'Indefinido', '2023-07-05 05:09:56', '2023-07-05 05:09:56', '2023-07-05', '', 1, 1),
(64, 'Entrada', 'Transferencia', 120, 'Indefinido', '2023-07-05 06:39:14', '2023-07-05 06:39:14', '2023-07-05', '', 1, 1),
(65, 'Entrada', 'Transferencia', 150, 'Indefinido', '2023-07-05 06:40:22', '2023-07-05 06:40:22', '2023-07-05', '', 1, 1),
(66, 'Entrada', 'Transferencia', 15, 'Indefinido', '2023-07-05 06:45:12', '2023-07-05 06:45:12', '2023-07-05', '', 1, 1),
(67, 'Entrada', 'Transferencia', 30, 'XD', '2023-07-08 23:14:49', '2023-07-08 23:14:49', '2023-07-08', '', 1, 1),
(68, 'Entrada', 'Transferencia', 40, 'xd', '2023-07-09 00:18:18', '2023-07-09 00:18:18', '2023-07-09', '', 1, 1),
(69, 'Entrada', 'Efectivo', 72, 'Indefinido', '2023-07-09 01:38:24', '2023-07-09 01:38:24', '2023-07-09', '', 1, 1),
(70, 'Entrada', 'Transferencia', 195, 'Indefinido', '2023-07-10 22:04:57', '2023-07-10 22:04:57', '2023-12-20', '', 1, 1),
(71, 'Entrada', 'Efectivo', 214, 'Indefinido', '2023-07-10 22:05:47', '2023-07-10 22:05:47', '2023-12-14', '', 1, 1),
(72, 'Entrada', 'Transferencia', 640, 'Indefinido', '2023-07-10 22:07:04', '2023-07-10 22:07:04', '2023-12-28', '', 1, 1),
(73, 'Entrada', 'Transferencia', 377, 'Indefinido', '2023-07-11 00:19:52', '2023-07-11 00:19:52', '2023-02-16', '', 1, 1),
(74, 'Entrada', 'Efectivo', 241, 'asfadfa', '2023-07-11 00:22:04', '2023-07-11 00:22:04', '2023-02-22', '', 1, 1),
(75, 'Entrada', 'Transferencia', 570, 'Indefinido', '2023-07-11 01:36:43', '2023-07-11 01:36:43', '2023-01-19', '', 1, 1),
(76, 'Entrada', 'Transferencia', 136, 'Indefinido', '2023-07-13 02:11:44', '2023-07-13 02:11:44', '2023-07-13', '', 1, 1),
(77, 'Entrada', 'Transferencia', 87, 'Indefinido', '2023-07-13 02:12:47', '2023-07-13 02:12:47', '2023-07-13', '', 1, 1),
(78, 'Entrada', 'Transferencia', 22, 'Indefinido', '2023-07-13 03:02:25', '2023-07-13 03:02:25', '2023-07-13', '', 1, 1),
(79, 'Entrada', 'Efectivo', 30, 'Indefinido', '2023-07-24 03:30:13', '2023-07-24 03:32:55', '2023-07-24', '', 1, 1),
(80, 'Entrada', 'Transferencia', 50, 'Indefinido', '2023-07-24 03:31:33', '2023-07-24 03:33:07', '2023-07-24', '', 1, 1),
(81, 'Entrada', 'Efectivo', 73, 'Indefinido', '2023-07-26 02:03:50', '2023-07-26 02:03:50', '2023-07-26', '', 1, 1),
(82, 'Entrada', 'Transferencia', 68, 'Indefinido', '2023-07-26 02:20:07', '2023-07-26 02:20:07', '2023-07-26', '', 1, 1),
(83, 'Entrada', 'Transferencia', 10, 'Indefinido', '2023-07-26 19:42:32', '2023-07-26 19:42:32', '2023-07-26', '', 1, 1),
(84, 'Entrada', 'Transferencia', 10, 'Indefinido', '2023-07-26 19:46:30', '2023-07-26 19:46:30', '2023-07-26', '', 1, 1),
(85, 'Entrada', 'Efectivo', 25, 'Indefinido', '2023-07-26 19:48:10', '2023-07-26 19:48:10', '2023-07-26', '', 1, 1),
(86, 'Entrada', 'Efectivo', 70, 'Indefinido', '2023-07-26 19:53:08', '2023-07-26 19:53:08', '2023-07-26', '', 1, 1),
(87, 'Entrada', 'Transferencia', 30, 'Indefinido', '2023-07-26 19:55:08', '2023-07-26 19:55:08', '2023-07-26', '', 1, 1),
(88, 'Entrada', 'Transferencia', 45, 'Indefinido', '2023-07-26 20:04:16', '2023-07-26 20:04:16', '2023-07-26', '', 1, 1),
(89, 'Entrada', 'Transferencia', 40, 'Indefinido', '2023-07-26 20:06:16', '2023-07-26 20:06:16', '2023-07-26', '', 1, 1),
(90, 'Entrada', 'Transferencia', 60, 'Indefinido', '2023-07-26 20:19:15', '2023-07-26 20:19:15', '2023-07-26', '', 1, 1),
(91, 'Entrada', 'Transferencia', 0, 'sgdfgfds', '2023-07-26 20:20:32', '2023-07-26 20:20:32', '2023-07-26', '', 1, 1),
(92, 'Entrada', 'Transferencia', 10, 'dfasdfdsaf', '2023-07-26 20:23:04', '2023-07-26 20:23:04', '2023-07-26', '', 1, 1),
(93, 'Entrada', 'Transferencia', 10, 'Indefinido', '2023-07-26 20:28:16', '2023-07-26 20:28:16', '2023-07-26', '', 1, 1),
(94, 'Entrada', 'Transferencia', 25, 'Indefinido', '2023-07-26 20:34:35', '2023-07-26 20:34:35', '2023-07-26', '', 1, 1),
(95, 'Entrada', 'Transferencia', 55, 'Indefinido', '2023-07-26 20:38:03', '2023-07-26 20:38:03', '2023-07-26', '', 1, 1),
(96, 'Entrada', 'Transferencia', 55, 'Indefinido', '2023-07-26 20:39:32', '2023-07-26 20:39:32', '2023-07-26', '', 1, 1),
(97, 'Entrada', 'Transferencia', 15, 'Indefinido', '2023-07-26 23:00:49', '2023-07-26 23:00:49', '2023-07-26', '', 1, 1),
(98, 'Entrada', 'Transferencia', 40, 'Indefinido', '2023-07-26 23:10:10', '2023-07-26 23:10:10', '2023-07-26', '', 1, 1),
(99, 'Entrada', 'Transferencia', 50, 'Indefinido', '2023-07-27 03:02:22', '2023-07-27 03:02:22', '2023-07-26', '', 1, 1),
(100, 'Entrada', 'Efectivo', 40, 'Indefinido', '2023-07-27 03:10:18', '2023-07-27 03:10:18', '2023-07-26', '', 1, 1),
(101, 'Entrada', 'Transferencia', 75, 'Indefinido', '2023-07-27 03:14:28', '2023-07-27 03:14:28', '2023-07-26', '', 1, 1),
(102, 'Entrada', 'Transferencia', 100, 'Indefinido', '2023-07-27 03:17:08', '2023-07-27 03:17:08', '2023-07-26', '', 1, 1),
(103, 'Entrada', 'Efectivo', 35, 'Indefinido', '2023-07-27 03:18:50', '2023-07-27 03:18:50', '2023-07-26', '', 1, 1),
(104, 'Entrada', 'Efectivo', 52, 'Indefinido', '2023-07-27 03:21:18', '2023-07-27 03:21:18', '2023-07-26', '', 1, 1),
(105, 'Entrada', 'Transferencia', 10, 'Indefinido', '2023-07-27 15:21:46', '2023-07-27 15:21:46', '2023-07-27', '', 1, 1),
(106, 'Entrada', 'Efectivo', 40, 'Indefinido', '2023-07-27 15:28:38', '2023-07-27 15:28:38', '2023-07-27', '', 1, 1),
(107, 'Salida', 'Efectivo', -5, 'Almuerzos', '2023-07-27 19:46:52', '2023-07-27 19:46:52', '2023-07-27', 'Gasto', 1, 1),
(108, 'Salida', 'Efectivo', -10, 'Merienda', '2023-07-27 19:48:42', '2023-07-27 19:48:42', '2023-07-27', 'Gasto', 1, 1),
(109, 'Entrada', 'Efectivo', 15, 'nose', '2023-07-27 19:53:05', '2023-07-27 19:53:05', '2023-07-27', '', 1, 1),
(110, 'Entrada', 'Transferencia', 24, 'Indefinido', '2023-07-27 20:04:45', '2023-07-27 20:04:45', '2023-07-27', '', 1, 1),
(111, 'Entrada', 'Efectivo', 56, 'Indefinido', '2023-07-27 20:08:24', '2023-07-27 20:08:24', '2023-07-27', '', 1, 1),
(112, 'Entrada', 'Transferencia', 60, 'Indefinido', '2023-07-27 20:10:30', '2023-07-27 20:10:30', '2023-07-27', '', 1, 1),
(113, 'Entrada', 'Transferencia', 10, 'Indefinido', '2023-07-27 23:02:57', '2023-07-27 23:02:57', '2023-07-27', '', 1, 1),
(114, 'Entrada', 'Efectivo', 5, 'Indefinido', '2023-07-27 23:10:05', '2023-07-27 23:10:05', '2023-07-27', '', 1, 1),
(115, 'Entrada', 'Transferencia', 15, 'Indefinido', '2023-07-27 23:10:30', '2023-07-27 23:10:30', '2023-07-27', '', 1, 1),
(116, 'Salida', 'Efectivo', -30, 'Compra de Articulo de oficina', '2023-07-27 23:12:01', '2023-07-27 23:12:01', '2023-07-27', 'Gasto', 1, 1),
(117, 'Salida', 'Efectivo', -17, 'Taxis', '2023-07-27 23:16:33', '2023-07-27 23:16:33', '2023-07-27', 'Gasto', 1, 1),
(118, 'Salida', 'Efectivo', -36, 'Viaticos', '2023-07-27 23:18:48', '2023-07-27 23:18:48', '2023-07-27', 'Gasto', 1, 1),
(119, 'Entrada', 'Transferencia', 120, 'Indefinido', '2023-07-27 23:31:56', '2023-07-27 23:31:56', '2023-07-27', '', 1, 1),
(120, 'Entrada', 'Efectivo', 120, 'Indefinido', '2023-07-27 23:33:16', '2023-07-27 23:33:16', '2023-07-27', '', 1, 1),
(121, 'Entrada', 'Efectivo', 10, 'Venta', '2023-07-27 23:37:05', '2023-07-27 23:37:05', '2023-07-27', '', 1, 1),
(122, 'Entrada', 'Transferencia', 13, 'Servicio Técnico', '2023-07-27 23:38:16', '2023-07-27 23:38:16', '2023-07-27', '', 1, 1),
(123, 'Entrada', 'Transferencia', 3, 'Servicio Técnico', '2023-07-28 01:25:25', '2023-07-28 01:25:25', '2023-07-27', '', 1, 1),
(124, 'Entrada', 'Efectivo', 30, 'Servicio Técnico', '2023-07-28 01:26:16', '2023-07-28 01:26:16', '2023-07-27', '', 1, 1),
(125, 'Entrada', 'Transferencia', 10, 'Servicio Técnico', '2023-07-28 02:05:47', '2023-07-28 02:05:47', '2023-07-27', '', 1, 1),
(126, 'Entrada', 'Transferencia', 30, 'Servicio Técnico', '2023-07-29 01:23:47', '2023-07-29 01:23:47', '2023-07-28', '', 1, 1),
(127, 'Entrada', 'Efectivo', 36, 'Venta', '2023-07-29 01:41:38', '2023-07-29 01:41:38', '2023-07-28', 'Venta', 1, 1),
(128, 'Entrada', 'Efectivo', 30, 'Monto Inicial', '2023-07-29 05:15:21', '2023-07-29 05:15:21', '2023-07-28', 'MontoInicial', 1, 1),
(129, 'Salida', 'Efectivo', -10, 'Almuerzos', '2023-07-29 05:23:12', '2023-07-29 05:23:12', '2023-07-29', 'Gasto', 1, 1),
(130, 'Entrada', 'Efectivo', 40, 'El ingreso de hoy 29', '2023-07-29 05:49:59', '2023-07-29 05:49:59', '2023-07-29', 'MontoInicial', 1, 1),
(131, 'Salida', 'Efectivo', -20, 'Taxis', '2023-07-29 05:50:38', '2023-07-29 05:50:38', '2023-07-29', 'Gasto', 1, 1),
(132, 'Entrada', 'Efectivo', 60, 'Venta', '2023-07-29 05:52:24', '2023-07-29 05:52:24', '2023-07-29', 'Venta', 1, 1),
(133, 'Entrada', 'Transferencia', 40, 'Venta', '2023-07-29 06:46:00', '2023-07-29 06:46:00', '2023-07-29', 'Venta', 1, 1),
(134, 'Entrada', 'Efectivo', 32, 'Servicio Técnico', '2023-07-29 06:51:56', '2023-07-29 06:51:56', '2023-07-29', 'Servicio Técnico', 1, 1),
(135, 'Entrada', 'Efectivo', 50, 'Se inicia la actividad del dia', '2023-07-30 15:13:22', '2023-07-30 15:13:22', '2023-07-30', 'MontoInicial', 1, 1),
(136, 'Salida', 'Efectivo', -10, '4 desayunos', '2023-07-30 15:16:59', '2023-07-30 15:16:59', '2023-07-30', 'Gasto', 1, 1),
(137, 'Entrada', 'Efectivo', 12, 'Venta', '2023-07-30 15:17:43', '2023-07-30 15:17:43', '2023-07-30', 'Venta', 1, 1),
(138, 'Entrada', 'Efectivo', 30, 'Se inicia con este dinero', '2023-07-31 15:39:05', '2023-07-31 15:39:05', '2023-07-31', 'MontoInicial', 1, 1),
(139, 'Entrada', 'Transferencia', 48, 'Venta', '2023-07-30 16:07:19', '2023-07-30 16:07:19', '2023-07-30', 'Venta', 1, 1),
(140, 'Entrada', 'Efectivo', 60, 'Venta', '2023-07-28 19:45:05', '2023-07-28 19:45:05', '2023-07-28', 'Venta', 1, 1),
(141, 'Entrada', 'Efectivo', 24, 'Venta', '2023-07-31 05:12:52', '2023-07-31 05:12:52', '2023-07-31', 'Venta', 1, 1),
(142, 'Entrada', 'Transferencia', 36, 'Venta', '2023-07-31 05:13:38', '2023-07-31 05:13:38', '2023-07-31', 'Venta', 1, 1),
(146, 'Entrada', 'Transferencia', 5, 'Servicio Técnico', '2023-07-31 16:16:00', '2023-07-31 16:16:00', '2023-07-31', 'Servicio Técnico', 1, 1),
(147, 'Entrada', 'Transferencia', 22, 'Servicio Técnico', '2023-12-29 00:27:07', '2023-12-29 00:27:07', '2023-12-28', 'Servicio Técnico', 1, 1),
(149, 'Salida', 'Efectivo', -30, 'Almuerzos', '2023-08-02 02:13:45', '2023-08-02 02:13:45', '2023-08-01', 'Gasto', 1, 1),
(150, 'Entrada', 'Efectivo', 12, 'Venta', '2023-08-02 02:18:21', '2023-08-02 02:18:21', '2023-08-01', 'Venta', 1, 1),
(151, 'Entrada', 'Transferencia', 60, 'N 11111', '2023-08-02 02:23:02', '2023-08-02 02:23:02', '2023-08-01', 'Venta', 1, 1),
(152, 'Entrada', 'Efectivo', 50, 'Inicio del dia con 50 dolares', '2023-08-02 03:00:55', '2023-08-02 03:00:55', '2023-08-01', 'MontoInicial', 1, 1),
(159, 'Salida', 'Efectivo', -36, 'Almuerzos', '2023-08-02 15:31:23', '2023-08-02 15:31:23', '2023-08-02', 'Gasto', 1, 1),
(164, 'Entrada', 'Efectivo', 30, 'Venta', '2023-08-02 22:28:45', '2023-08-02 22:28:45', '2023-08-02', 'Venta', 1, 1),
(167, 'Entrada', 'Efectivo', 120, 'Se inicia con 120 dolares', '2023-08-03 00:57:38', '2023-08-03 00:57:38', '2023-08-02', 'MontoInicial', 1, 1),
(168, 'Salida', 'Efectivo', -10, 'taxi', '2023-08-03 00:58:09', '2023-08-03 00:58:09', '2023-08-02', 'Gasto', 1, 1),
(169, 'Entrada', 'Efectivo', 7, 'Venta', '2023-08-03 19:57:15', '2023-08-03 19:57:15', '2023-08-03', 'Venta', 1, 1),
(170, 'Entrada', 'Efectivo', 43.5, 'Inicia el dia con 43 dolares con 50 ctvs', '2023-08-03 19:58:22', '2023-08-03 19:58:22', '2023-08-03', 'MontoInicial', 1, 1),
(171, 'Entrada', 'Efectivo', 255, 'Venta', '2023-08-03 22:34:05', '2023-08-03 22:34:05', '2023-08-03', 'Venta', 1, 1),
(172, 'Entrada', 'Transferencia', 420, 'Venta', '2023-08-03 22:38:51', '2023-08-03 22:38:51', '2023-08-03', 'Venta', 1, 1),
(173, 'Entrada', 'Efectivo', 560, 'Venta', '2023-08-03 22:39:37', '2023-08-03 22:39:37', '2023-08-03', 'Venta', 1, 1),
(174, 'Entrada', 'Transferencia', 4, 'Venta', '2023-08-03 22:46:12', '2023-08-03 22:46:12', '2023-08-03', 'Venta', 1, 1),
(175, 'Entrada', 'Transferencia', 750, 'Venta', '2023-08-03 23:12:49', '2023-08-03 23:12:49', '2023-08-03', 'Venta', 1, 1),
(176, 'Entrada', 'Transferencia', 16, 'Venta', '2023-08-03 23:16:12', '2023-08-03 23:16:12', '2023-08-03', 'Venta', 1, 1),
(177, 'Entrada', 'Transferencia', 510, 'Venta', '2023-08-03 23:17:22', '2023-08-03 23:17:22', '2023-08-03', 'Venta', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(9, 'RicardoPilozo96', 'ricardopilozo96@gmail.com', NULL, '$2y$10$Fx7jrTshuBU5NpKYRKAUheRH94FECS3Hhb0iK4PfLJ0dhnRh2r3cO', NULL, '2023-07-25 02:16:39', '2023-08-05 03:18:47'),
(11, 'admin', 'admin@example.com', NULL, '$2y$10$h15cjVXABi5LTmJbb79Vge1AypPks6WTKDfOHAHDvEec8PrdM6/gq', NULL, '2023-07-27 01:13:51', '2023-08-05 03:26:45'),
(12, 'RaulVelez99', 'raulvelez99@gmail.com', NULL, '$2y$10$.0cZ2Ptv.iEK/ZSLRU80AO1.QO/maXtP95bMYoi3rqcPrbF2bAj5G', NULL, '2023-07-28 00:18:22', '2023-07-28 00:18:22'),
(13, 'RicarZo', 'ricardo_pilozo@example.com', NULL, '$2y$10$9kPqo7vEnaWUn/tlxylzbOoGx6Ljj6pp0WnmEHkZOGj3WrzvzqhDG', NULL, '2023-08-05 07:38:03', '2023-08-05 07:38:03'),
(14, 'Jebus', 'jesusandrade@gmail.com', NULL, '$2y$10$qruG2.e7gz5UvW5PNRGvGOLLWh7zEX1ioSRs.QnWpz6ZjKWpqU6ia', NULL, '2023-08-05 08:41:32', '2023-08-05 08:41:32'),
(15, 'Mary20', 'mary2@gmail.com', NULL, '$2y$10$3bQj7k7wGHvvmQjpXB0cZOzFnZEk4jdDelnhC3uUxhbqQnEI4CRfW', NULL, '2023-08-12 04:38:57', '2023-08-12 04:38:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `nombre_usu` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `apellido_usu` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `cedula_usu` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `estado_usu` tinyint(1) NOT NULL,
  `email` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `celular_usu` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `id_rol` int(11) NOT NULL,
  `id_negocio` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `usuario`, `password`, `nombre_usu`, `apellido_usu`, `cedula_usu`, `estado_usu`, `email`, `celular_usu`, `id_rol`, `id_negocio`, `created_at`, `updated_at`) VALUES
(1, 'Jesus_Andrade', '123456789', 'Deicy', 'Andrade', '2350636441', 1, 'jdac2350636441@gmail.com', '0997264984', 2, 1, NULL, '2023-07-23 21:43:04'),
(2, 'Dayana_Herrera', '123456789', 'Dayana', 'Herrera', '2325656771', 1, 'dayana2356@gmail.com', '0937568904', 1, 1, NULL, NULL),
(12, 'Pedrito', '$2y$10$lOaj8opMhRr06Xb0R.koCuF2TyH6EZ.SnRpgjtz/30wH04xWzguYq', 'Pedro', 'Perez', '3085058334', 1, 'pedro13.pedro@example.com', '0987111111', 1, 1, '2023-07-23 06:38:04', '2023-07-23 20:55:20'),
(17, 'Luis150', '$2y$10$pFEcKZFFrFpYeehhzYI31OzF/n2k0xomCe/6fzta9cwQJ8ITNScZu', 'Luis15', 'Luis15', '1185058320', 1, 'Luis15@example.com', '0121111110', 1, 1, '2023-07-24 08:02:41', '2023-07-24 03:12:41'),
(19, 'RicardoPilozo96', '$2y$10$OEknaGRLbxaOW1dYbSqgf.045ZlHGTibV15yuOzGJ495/qs7Hzagy', 'Ricardo', 'Pilozo', '0850587924', 1, 'ricardopilozo96@gmail.com', '2365998764', 2, 1, '2023-07-25 02:16:39', '2023-08-05 03:18:47'),
(21, 'admin', '$2y$10$..Sck9z9IoaN/cK6zww5geqSL66dr21Bl98Jr5PcrAbZk/lGBHBKm', 'Admin', 'Admin', '1716323355', 1, 'admin@example.com', '0992334455', 1, 1, '2023-07-27 01:13:51', '2023-08-05 03:26:44'),
(23, 'RicarZo', '$2y$10$AAO6WFrJpuXa/Q3RxIpbYucmbB2r7.EcSDG5ClYSY6FR0aAghTHK2', 'Ricardo', 'Pilozo', '0850587948', 1, 'ricardo_pilozo@example.com', '0987111112', 1, 1, '2023-08-05 07:38:03', '2023-08-05 07:38:03'),
(24, 'Jebus', '$2y$10$UmS8okZH2tsCFN9KANACGum8KzU5lxHb5bqistJYD/dVg2M.4kihG', 'Jesus', 'Andrade', '1718668732', 1, 'jesusandrade@gmail.com', '0985658796', 1, 1, '2023-08-05 08:41:32', '2023-08-05 08:41:32'),
(25, 'Mary20', '$2y$10$JyBtf.4VK.WkrO.2vzAAfeQJJaRxNreMUJkgPvEGEASDPHvLwRvoC', 'Mary', 'Andrade', '1701366873', 1, 'mary2@gmail.com', '0921131132', 2, 1, '2023-08-12 04:38:57', '2023-08-12 04:38:57'),
(26, 'Kirsten Wade', 'PEK65LQT4HN', 'Germaine Andrews', 'Brooke Walter', '(707) 437-', 1, 'Scarlet Morgan', 'Merrill Cr', 2, 1, NULL, NULL),
(27, 'Kirk Mack', 'IKO26ORT3FK', 'Garrett Bowers', 'Freya Ballard', '1-391-411-', 1, 'Branden Mason', 'Ezra Dunca', 2, 1, NULL, NULL),
(28, 'Chava Powell', 'RSW11MOQ1DT', 'Honorato Wells', 'Grady Ramsey', '(246) 474-', 1, 'Judith Hewitt', 'Reece Woot', 1, 1, NULL, NULL),
(29, 'Abdul Cote', 'ZSX66DQN5QR', 'Nathaniel Ferguson', 'Chantale Lee', '1-487-818-', 1, 'Miriam Evans', 'Keefe Arms', 2, 1, NULL, NULL),
(30, 'Carol Howard', 'DMF28EFR9KF', 'Christian Pickett', 'Chester Bender', '1-463-177-', 1, 'Mason Hahn', 'Adara Peck', 1, 1, NULL, NULL),
(31, 'Alec Goff', 'QUH85LUG8VD', 'Jarrod Francis', 'Sydney House', '1-325-699-', 1, 'Grant Stewart', 'Murphy Moo', 1, 1, NULL, NULL),
(32, 'Shelley Garrison', 'CGX13XFF5KN', 'Olivia Townsend', 'Eagan Woodward', '(341) 574-', 1, 'Bevis Carpenter', 'Alexander ', 1, 1, NULL, NULL),
(33, 'Wayne Murphy', 'EMM99TFB5VT', 'Galvin Vasquez', 'Fatima Mcdaniel', '(441) 315-', 1, 'Lael Christensen', 'Lysandra S', 1, 1, NULL, NULL),
(34, 'Avye Waller', 'KUT62HQT5US', 'Caleb Yates', 'Avram Ferguson', '1-457-428-', 1, 'Cameron Patel', 'Nigel Bull', 1, 1, NULL, NULL),
(35, 'Zephania Bright', 'NRB13GLE1MT', 'Kareem Faulkner', 'Felicia Parker', '1-591-475-', 1, 'Ina Cannon', 'Abdul Roac', 1, 1, NULL, NULL),
(36, 'Merrill Contreras', 'XKO17YSG5GC', 'Fleur Gentry', 'Macey Miles', '1-867-348-', 1, 'Ira Hughes', 'Brenden Si', 2, 1, NULL, NULL),
(37, 'Len Goodwin', 'ILI33QLK8QM', 'Leslie Banks', 'Brielle Best', '(885) 627-', 1, 'Maisie Bentley', 'Amela Morg', 1, 1, NULL, NULL),
(38, 'Kelsie Cash', 'OUL42JOC4LW', 'Buffy Ruiz', 'Tamekah Bernard', '(826) 224-', 1, 'Gillian Morrison', 'Guy Hoffma', 1, 1, NULL, NULL),
(39, 'Amal Skinner', 'NIY85NPX7YF', 'Aaron Williamson', 'Hashim James', '1-946-726-', 1, 'Dean Conley', 'Gillian Le', 1, 1, NULL, NULL),
(40, 'Yuli Dean', 'LZJ91JAH1OW', 'Keaton Barnett', 'Aquila Lamb', '(268) 358-', 1, 'Lance Cunningham', 'Shoshana A', 1, 1, NULL, NULL),
(41, 'MacKensie Nguyen', 'HHP33JDG7YY', 'Michelle Hinton', 'Matthew Schwartz', '1-205-569-', 1, 'Zeph Mcdowell', 'Ethan Sava', 2, 1, NULL, NULL),
(42, 'Beck Stafford', 'VOO62NTN3TU', 'Jolie Weber', 'Ian Weeks', '1-458-551-', 1, 'Myra French', 'Berk Potts', 2, 1, NULL, NULL),
(43, 'Barry Kaufman', 'AVH27OPL9LT', 'Zelda Ochoa', 'Joseph Morrow', '(158) 475-', 1, 'Lucas Johnston', 'Cole Antho', 2, 1, NULL, NULL),
(44, 'Emmanuel Carson', 'KRE84IBB1LG', 'Brittany Todd', 'Zephr Reed', '1-365-435-', 1, 'Maris Crane', 'Ross Guthr', 2, 1, NULL, NULL),
(45, 'Zachery Russo', 'NLR04VLK7EO', 'Rana Compton', 'Yardley Moon', '(884) 260-', 1, 'Kitra Murphy', 'Neville Br', 2, 1, NULL, NULL),
(46, 'Fitzgerald Stephenson', 'FNK55VEG6GO', 'Zelda Castillo', 'Kirk Potter', '1-742-432-', 1, 'Idona Kerr', 'Aurelia Bu', 1, 1, NULL, NULL),
(47, 'Meredith Pearson', 'SRL60LQE2GH', 'Grace Burgess', 'Graham Burns', '(651) 263-', 1, 'Violet Buckner', 'Thomas Sha', 2, 1, NULL, NULL),
(48, 'Shannon Rivas', 'FAC63XGS6CS', 'Heather Mcneil', 'Matthew Shields', '1-494-500-', 1, 'Callie Sloan', 'Abdul Reye', 1, 1, NULL, NULL),
(49, 'Quinlan Downs', 'OQB78YYM5ZG', 'Vernon Nichols', 'Briar Long', '(504) 437-', 1, 'Sydney Good', 'Hiroko O\'d', 1, 1, NULL, NULL),
(50, 'Blythe Noel', 'TYZ94KYH1ET', 'Michael Hicks', 'Kellie Miranda', '(552) 276-', 1, 'Flynn Herring', 'Adam Dawso', 1, 1, NULL, NULL),
(51, 'Carol Becker', 'JLT94CWL1YJ', 'Keith Phelps', 'Driscoll Lee', '1-131-848-', 1, 'Kyra Dudley', 'Sandra Bla', 2, 1, NULL, NULL),
(52, 'Denton Lee', 'PAR86RCJ1GG', 'Chadwick Valentine', 'Michael Weaver', '1-617-334-', 1, 'Ima Wall', 'Kasimir Bu', 2, 1, NULL, NULL),
(53, 'Liberty Harper', 'JQC51PLF4SP', 'Matthew Blake', 'Demetrius Romero', '(256) 746-', 1, 'Vladimir Macdonald', 'Gwendolyn ', 1, 1, NULL, NULL),
(54, 'Jena Bates', 'IMZ61CQQ2JG', 'Deanna Terrell', 'Ifeoma Barnett', '(574) 468-', 1, 'Quon Good', 'Althea Spe', 2, 1, NULL, NULL),
(55, 'Lisandra Whitaker', 'YDO34INC7YE', 'Keiko Burgess', 'Rudyard Fields', '1-348-106-', 1, 'Yvette Salinas', 'Seth Barry', 1, 1, NULL, NULL),
(56, 'Quynn Simpson', 'VBP26IOR3GH', 'Candice Lopez', 'Arden Gillespie', '(432) 768-', 1, 'Hedley Ingram', 'Carter Ric', 1, 1, NULL, NULL),
(57, 'Tiger Terrell', 'QLJ60PAA2DO', 'Abra Beasley', 'Kasper Harvey', '(731) 665-', 1, 'Orson Gentry', 'Adena Irwi', 1, 1, NULL, NULL),
(58, 'Amelia Pennington', 'SKP56YMI1PD', 'Evangeline Bullock', 'Natalie Abbott', '(406) 634-', 1, 'Hayfa Bishop', 'Sylvia Kel', 1, 1, NULL, NULL),
(59, 'Clare Melendez', 'NOL77AGD8YF', 'Ross Larson', 'Constance Robertson', '1-785-229-', 1, 'Giselle Griffith', 'Sarah Dyer', 2, 1, NULL, NULL),
(60, 'Aline Hatfield', 'OTV84MHW5YC', 'Stella Sharpe', 'Grady Bradley', '1-733-478-', 1, 'Shana Hines', 'Kibo Lang', 2, 1, NULL, NULL),
(61, 'Sharon Shelton', 'IPK79SVS2EF', 'Alana Ingram', 'Lesley Hampton', '(835) 787-', 1, 'Justina Wagner', 'Hadley Bat', 1, 1, NULL, NULL),
(62, 'Cheryl Le', 'OPA76IRE6RY', 'Yvonne Moon', 'Addison Higgins', '(614) 435-', 1, 'Michelle Bush', 'Jillian Cr', 2, 1, NULL, NULL),
(63, 'Madeson Roberson', 'CLQ61SYV1SX', 'Darius Clayton', 'Eve Gregory', '(538) 361-', 1, 'Alec Castillo', 'Ignatius M', 2, 1, NULL, NULL),
(64, 'Carly Barlow', 'QGJ03VBI8LL', 'Aaron Wilkerson', 'Lester Harding', '1-760-581-', 1, 'Aspen Jacobs', 'Lucas Vaug', 1, 1, NULL, NULL),
(65, 'Helen Huff', 'KBR99GVE5YW', 'Adam Coffey', 'Hayfa Blanchard', '(334) 589-', 1, 'Simon Shaw', 'Walter Hal', 2, 1, NULL, NULL),
(66, 'Noel Lindsey', 'VIL35RBB7UI', 'Baxter Hawkins', 'Burton Graham', '(476) 882-', 1, 'Fulton Mcintosh', 'Edward Gue', 1, 1, NULL, NULL),
(67, 'Valentine Fletcher', 'PVH64NVU5QK', 'Marsden Pruitt', 'Jada Rutledge', '1-192-351-', 1, 'Azalia Steele', 'Yael Rodri', 1, 1, NULL, NULL),
(68, 'James Noble', 'MLJ65JPE3QC', 'Winifred Gallegos', 'Aurelia Baxter', '(174) 805-', 1, 'Shelby Crane', 'Jesse Ramo', 1, 1, NULL, NULL),
(69, 'Nasim Vega', 'CDH97GYO6RP', 'Merrill Travis', 'Candace Grant', '1-867-834-', 1, 'Mia Vega', 'Brenna Per', 1, 1, NULL, NULL),
(70, 'Caldwell Grimes', 'JCZ87IJF9AG', 'Chelsea Tyler', 'Ashely Joyner', '1-614-425-', 1, 'Reed Mason', 'Andrew Bar', 1, 1, NULL, NULL),
(71, 'Bryar Wiggins', 'BGJ56XYV2NU', 'Lyle Cochran', 'Lee Johns', '1-362-757-', 1, 'Abdul Gentry', 'Kareem Val', 2, 1, NULL, NULL),
(72, 'Britanney Weber', 'UWG01MJN1UV', 'Zeus Sims', 'Gavin Noble', '1-352-183-', 1, 'Austin Raymond', 'Ahmed Engl', 1, 1, NULL, NULL),
(73, 'Yoshi Holmes', 'GCS62ESB5LS', 'Devin Mccormick', 'Tyler Daniels', '1-727-875-', 1, 'Dominique Fox', 'Candace Cl', 1, 1, NULL, NULL),
(74, 'Unity Carey', 'EGT67GES3RP', 'Blaze Stephens', 'Trevor Sims', '(331) 857-', 1, 'Zane Bryan', 'Paki Kane', 1, 1, NULL, NULL),
(75, 'Dolan Hawkins', 'CRG28YFS8HU', 'Norman Decker', 'Brady Perez', '(862) 747-', 1, 'Jaden Monroe', 'Signe Samp', 1, 1, NULL, NULL),
(76, 'Gisela Lloyd', 'BWV43NQR8XC', 'Nissim Guthrie', 'Ayanna Hoffman', '(646) 829-', 1, 'Craig Snider', 'Xenos Guth', 2, 1, NULL, NULL),
(77, 'Keefe Trevino', 'WHQ47ARI5TF', 'Nathaniel Lang', 'MacKensie Maddox', '1-171-102-', 1, 'Fallon Ellis', 'Carly Anth', 2, 1, NULL, NULL),
(78, 'Delilah Olson', 'FOB54JUP7TT', 'Tanisha Meyers', 'Maia Drake', '(840) 628-', 1, 'Michelle Kent', 'Kelsie Ste', 1, 1, NULL, NULL),
(79, 'Velma Castillo', 'ITY21EUC8YW', 'Duncan Perez', 'Stephanie Hess', '(631) 350-', 1, 'Tanner Owen', 'Fulton Kir', 2, 1, NULL, NULL),
(80, 'Iris Nielsen', 'OUM88WEX5KA', 'Orli Waters', 'Xaviera Walker', '1-466-817-', 1, 'Kathleen Vang', 'Neville Ac', 2, 1, NULL, NULL),
(81, 'Ciara Zimmerman', 'VPI72NKN2CH', 'Kuame Lamb', 'Maggy Rowe', '1-202-544-', 1, 'Cyrus Stewart', 'Mara Mejia', 2, 1, NULL, NULL),
(82, 'Timon Stephenson', 'DSY45BLJ8YH', 'Jenette Hamilton', 'Dai Dyer', '1-724-668-', 1, 'Zoe Flowers', 'Kameko Mcb', 1, 1, NULL, NULL),
(83, 'Kareem Mccoy', 'KLS13LHP9OT', 'Athena Hopkins', 'Porter Clarke', '1-166-741-', 1, 'Wade Blackwell', 'Whilemina ', 2, 1, NULL, NULL),
(84, 'Clinton Ortega', 'EGE34ICE5CE', 'Levi Lang', 'Joelle Melendez', '(469) 159-', 1, 'Jocelyn Harrell', 'Alana Kell', 1, 1, NULL, NULL),
(85, 'Josiah Bradley', 'QLJ04WFE1QZ', 'Margaret Mcpherson', 'Tatiana Gregory', '1-812-357-', 1, 'Macaulay Hooper', 'Emily Mcfa', 1, 1, NULL, NULL),
(86, 'Talon Albert', 'SON44DOO6NM', 'Carson Collier', 'Amena Prince', '1-387-423-', 1, 'Bert Curry', 'Bruno Neal', 1, 1, NULL, NULL),
(87, 'Charde Benjamin', 'WBS96QPB5CB', 'Nicole Slater', 'Ezekiel Townsend', '1-615-951-', 1, 'Dorothy Ray', 'Owen Perry', 2, 1, NULL, NULL),
(88, 'Castor Lawrence', 'RGF77YJQ6VC', 'Ira Hull', 'Francesca Roberson', '1-345-740-', 1, 'Felix Thomas', 'Walter Bon', 2, 1, NULL, NULL),
(89, 'Willow Rocha', 'HIL84ROV4RR', 'Dalton Barry', 'Gregory Aguirre', '1-865-854-', 1, 'Kane Velasquez', 'Hop Fitzpa', 1, 1, NULL, NULL),
(90, 'Luke Pace', 'HXP77FXO5QN', 'Emma Fernandez', 'Slade Wong', '(371) 757-', 1, 'Ella Singleton', 'Rooney Gou', 2, 1, NULL, NULL),
(91, 'Merrill Rivera', 'JXV08DCR5MM', 'Gavin Keller', 'Macaulay Fitzpatrick', '1-657-692-', 1, 'Yoko Mckay', 'Aaron Myer', 2, 1, NULL, NULL),
(92, 'Kirsten Clark', 'POC31OCT0EW', 'Rhea Stephenson', 'Bethany Burnett', '1-388-571-', 1, 'Alec Copeland', 'Amber Kane', 2, 1, NULL, NULL),
(93, 'Lionel Harvey', 'WVV24SQQ8WF', 'Olympia Jordan', 'Dean Joseph', '(350) 771-', 1, 'Beverly Puckett', 'Rachel Gay', 2, 1, NULL, NULL),
(94, 'Kai Bender', 'DNW30ADX9XB', 'Arsenio Howe', 'Miriam Mcguire', '(539) 629-', 1, 'Sylvia Mcintosh', 'Ori Raymon', 2, 1, NULL, NULL),
(95, 'Adria Burris', 'QHK26WYY2HL', 'Hanna Stewart', 'Lila Franco', '(391) 436-', 1, 'Mason Whitfield', 'Roth Soto', 1, 1, NULL, NULL),
(96, 'Patience Luna', 'TRV82ERX4CR', 'Matthew Bartlett', 'Jared Peck', '1-379-647-', 1, 'Emi Wilkins', 'Curran Ell', 2, 1, NULL, NULL),
(97, 'Rana Chaney', 'FYE76WJL8MJ', 'Rina Briggs', 'Rosalyn Hamilton', '1-651-208-', 1, 'Portia Huff', 'Inez Rice', 1, 1, NULL, NULL),
(98, 'Carol Gamble', 'YRW53GKJ4QV', 'Kuame Mathews', 'Hilary Becker', '(788) 266-', 1, 'Ferris Long', 'Zane Lambe', 1, 1, NULL, NULL),
(99, 'Rebecca Harrison', 'LVT21FZU4XZ', 'Ivor Clarke', 'Kaseem Short', '1-614-645-', 1, 'Allistair Woods', 'Xena Kelle', 2, 1, NULL, NULL),
(100, 'Kristen Wright', 'GOF02TZF6JH', 'Audra Burgess', 'Fuller Frank', '(854) 592-', 1, 'Ciaran Becker', 'Joy Spence', 2, 1, NULL, NULL),
(101, 'Kylie Nash', 'SYN86IHR4GE', 'Azalia Waters', 'Sonya Macdonald', '1-565-464-', 1, 'Nell Marsh', 'Kadeem Del', 1, 1, NULL, NULL),
(102, 'Levi Turner', 'GAX26FNJ1CW', 'Yetta Pruitt', 'Phelan Hayes', '1-873-841-', 1, 'Joshua Mclean', 'Tanner Pad', 2, 1, NULL, NULL),
(103, 'Jin Fischer', 'DXI16RRC4NG', 'Jonas Hoover', 'Unity Wilcox', '(915) 428-', 1, 'Lester Oneil', 'Colt Le', 1, 1, NULL, NULL),
(104, 'Danielle Gamble', 'JLD57ECZ1KW', 'Prescott Herman', 'Josephine Kaufman', '(146) 602-', 1, 'TaShya Sexton', 'Vladimir W', 2, 1, NULL, NULL),
(105, 'Rhonda Wyatt', 'TKP35DDC0BP', 'Hector Bryan', 'Angela Huff', '1-562-141-', 1, 'Maya Morrow', 'Anastasia ', 2, 1, NULL, NULL),
(106, 'Fletcher Perez', 'XTJ31VQH2HU', 'Dillon Crawford', 'Xenos Macdonald', '(266) 487-', 1, 'Deanna Spencer', 'Amelia She', 1, 1, NULL, NULL),
(107, 'Olympia Warner', 'JCX23MJM8AU', 'Hedy Byers', 'Jane Glover', '1-641-848-', 1, 'Olga Hart', 'Ulla Quinn', 2, 1, NULL, NULL),
(108, 'Kimberly Schultz', 'NPT31RYB2FL', 'Kane Mcbride', 'Whilemina Nelson', '(648) 287-', 1, 'Robin Peterson', 'Victor Bal', 2, 1, NULL, NULL),
(109, 'Mollie Bowers', 'FSO12FNV7KU', 'Willow Compton', 'Keegan Farrell', '1-398-583-', 1, 'Owen Herman', 'Jade Kidd', 2, 1, NULL, NULL),
(110, 'Ruby Witt', 'JDE54JWN3PL', 'Honorato Morin', 'Noah Hull', '(443) 567-', 1, 'Valentine Sanchez', 'Stacy Albe', 2, 1, NULL, NULL),
(111, 'Nasim Castillo', 'API13SLE4UK', 'Mara Walker', 'Murphy Poole', '1-960-833-', 1, 'Josiah Frost', 'Rhona Lawr', 1, 1, NULL, NULL),
(112, 'Ulla Chan', 'ITE70OWO2DM', 'Nathaniel Rivas', 'Bernard Burris', '1-448-158-', 1, 'Jessamine Wall', 'Aphrodite ', 2, 1, NULL, NULL),
(113, 'Camille Thompson', 'XTX75PSL1IG', 'Reuben Hurley', 'Priscilla Case', '1-778-613-', 1, 'Hayley Hays', 'Declan Tay', 2, 1, NULL, NULL),
(114, 'Noelle King', 'GGY41AQR1MD', 'Irma Rios', 'Kenneth Cross', '(860) 322-', 1, 'Omar Goff', 'Byron Koch', 1, 1, NULL, NULL),
(115, 'Tamara Vang', 'URE17IEY1WF', 'Rachel Cross', 'Marvin Jacobs', '1-219-812-', 1, 'August Acevedo', 'Yoshio Flo', 2, 1, NULL, NULL),
(116, 'Abbot Lancaster', 'DVH41BPL3RD', 'Kermit Sweet', 'Imogene Lloyd', '(414) 464-', 1, 'Raja Walters', 'Noelle Far', 2, 1, NULL, NULL),
(117, 'Odette Massey', 'CNH35KSK1VW', 'Burke Lawson', 'Cora Jensen', '1-253-546-', 1, 'Quin Pittman', 'Bryar Sand', 2, 1, NULL, NULL),
(118, 'McKenzie Jones', 'IQK85CJP1TT', 'Tasha Harris', 'Zoe Serrano', '1-655-708-', 1, 'Yoshio Benjamin', 'Eric Salas', 2, 1, NULL, NULL),
(119, 'Thor Craft', 'NQD86NTD7PM', 'Josiah Tyson', 'Martin Moss', '1-759-661-', 1, 'Avram Sanders', 'Shafira Ll', 2, 1, NULL, NULL),
(120, 'Walker Harrington', 'GXE71BAB5PL', 'Joshua Mooney', 'Alexandra Ochoa', '1-670-333-', 1, 'Zenia Bennett', 'Lana Sanch', 2, 1, NULL, NULL),
(121, 'Amir Goodwin', 'SUW41JNO1UU', 'Ursula Rosario', 'Signe Rowland', '(583) 565-', 1, 'Wing Cunningham', 'Adele Stro', 2, 1, NULL, NULL),
(122, 'Cherokee Chapman', 'CNG45ORQ7YT', 'Kimberly Vance', 'Eve Bonner', '(795) 814-', 1, 'Malachi Rush', 'Emma Padil', 2, 1, NULL, NULL),
(123, 'Elmo Snyder', 'KYL08KPM3VD', 'Zia Frank', 'Rebecca Rogers', '1-695-731-', 1, 'Christian Bradshaw', 'Dawn Hardi', 1, 1, NULL, NULL),
(124, 'Vivian Villarreal', 'UML18ZWV9XF', 'Lois Lara', 'Demetrius Noel', '(698) 193-', 1, 'Marny Vincent', 'Kaitlin Ca', 2, 1, NULL, NULL),
(125, 'Myra Finley', 'MRI32FAO4HV', 'Meredith Cruz', 'Kelly Stewart', '(282) 520-', 1, 'Stephen Ramos', 'Fallon Bec', 2, 1, NULL, NULL),
(126, 'Steel Buck', 'WND13QZW1EI', 'Slade Hooper', 'Inga Banks', '(742) 914-', 1, 'Harper Gonzales', 'Samuel Bur', 2, 1, NULL, NULL),
(127, 'Patrick Galloway', 'VLC89QEC8WR', 'Briar Owens', 'Eugenia Aguilar', '1-648-112-', 1, 'Kay Mack', 'Regina Car', 2, 1, NULL, NULL),
(128, 'Axel Everett', 'XEH02AKN9ZF', 'Ursa Rush', 'Troy Brock', '1-835-985-', 1, 'Gavin Kemp', 'Hector Fre', 1, 1, NULL, NULL),
(129, 'Genevieve Hooper', 'UKF58UUA8YQ', 'Hasad Morales', 'Ivan Campbell', '(738) 663-', 1, 'Abigail Knight', 'Timothy Co', 2, 1, NULL, NULL),
(130, 'Amena Leon', 'DZK77LDM7UL', 'Chadwick Sawyer', 'Wanda Mcfarland', '(875) 426-', 1, 'Iliana Mcguire', 'Jane Gibbs', 2, 1, NULL, NULL),
(131, 'Lacota Head', 'GCD54PTI1HE', 'Alan Hawkins', 'Sarah Ward', '1-332-451-', 1, 'Francis Skinner', 'Ruby Nixon', 1, 1, NULL, NULL),
(132, 'Ferdinand Yang', 'WIV36XOM9IA', 'Stephanie Cooper', 'Mark Rivera', '(375) 405-', 1, 'Cathleen Case', 'Jasmine Ba', 1, 1, NULL, NULL),
(133, 'Xanthus Duncan', 'CRP37PLL8NM', 'August Patterson', 'Cailin Sykes', '(430) 634-', 1, 'Athena Armstrong', 'Violet She', 1, 1, NULL, NULL),
(134, 'Octavia Conner', 'LIZ34FAN1QW', 'Adrienne Steele', 'Knox Berger', '1-833-980-', 1, 'Brody Dudley', 'Jameson Hu', 1, 1, NULL, NULL),
(135, 'Erasmus Moore', 'LDL37IIB6OY', 'Guinevere Bray', 'Conan Wade', '(151) 761-', 1, 'Rajah Graves', 'Daphne Ram', 2, 1, NULL, NULL),
(136, 'Desiree Gay', 'WFL52VBC4NS', 'Dylan Bartlett', 'Elmo Wheeler', '1-639-168-', 1, 'Yuri Dominguez', 'Barclay Ma', 2, 1, NULL, NULL),
(137, 'Galvin Harper', 'TMY99BXW2MO', 'Bianca Cortez', 'Rosalyn Small', '1-455-252-', 1, 'Gwendolyn Jennings', 'Lilah Pick', 1, 1, NULL, NULL),
(138, 'Madonna Compton', 'NNG57EUE6KK', 'Kenneth Riddle', 'Elvis Boyd', '1-850-953-', 1, 'Quynn Hinton', 'Lareina Ay', 2, 1, NULL, NULL),
(139, 'Coby Wilcox', 'FBH85GAR0EO', 'Astra Mueller', 'Len Wade', '(346) 247-', 1, 'Neville Mcpherson', 'Lilah Whit', 2, 1, NULL, NULL),
(140, 'Baxter Whitley', 'JUY08VUX4VH', 'Carson Sanchez', 'Quinlan Mcknight', '(691) 737-', 1, 'Naida Carlson', 'Indigo Pet', 2, 1, NULL, NULL),
(141, 'Julian Allen', 'HVF36MFR8CB', 'Simone Figueroa', 'Bert Thompson', '(651) 626-', 1, 'Sacha Palmer', 'Drew Maddo', 2, 1, NULL, NULL),
(142, 'Uta Mcpherson', 'SCM47NST7SI', 'Plato Campbell', 'Kelly Armstrong', '1-635-516-', 1, 'Mannix Melton', 'Arthur Les', 2, 1, NULL, NULL),
(143, 'Cheryl Sargent', 'HEF41LKJ7UP', 'Hu Compton', 'Inez Forbes', '(416) 635-', 1, 'Galena Schroeder', 'Jordan Lan', 2, 1, NULL, NULL),
(144, 'Freya Franco', 'LAD52LVP8FX', 'Selma Guthrie', 'Todd Hall', '(471) 476-', 1, 'Kermit Suarez', 'Asher Melt', 1, 1, NULL, NULL),
(145, 'Brody Le', 'CQO88QJV3RK', 'Savannah Lara', 'Rana Parsons', '1-434-607-', 1, 'Cathleen Nicholson', 'Shellie Mc', 1, 1, NULL, NULL),
(146, 'Montana Carson', 'EAV35UHH2JK', 'Aphrodite Moody', 'Riley Ellison', '1-555-158-', 1, 'David Barr', 'Zenia Palm', 2, 1, NULL, NULL),
(147, 'Genevieve Avery', 'ZBB57CFD7SH', 'Ignatius Moran', 'Malcolm Cantu', '1-421-407-', 1, 'Christopher Rich', 'Buffy Trav', 1, 1, NULL, NULL),
(148, 'Abdul Sosa', 'UDR21ANP4WH', 'Orlando Bartlett', 'Dane Bernard', '(551) 376-', 1, 'Brenda Rosa', 'Craig Joyc', 1, 1, NULL, NULL),
(149, 'Gemma Perez', 'EGT55CBO8VT', 'Akeem Stephens', 'Jelani Rich', '(909) 544-', 1, 'Eric Reynolds', 'Melyssa Ri', 1, 1, NULL, NULL),
(150, 'Violet Fisher', 'MIK84MEH3BT', 'Robin Whitfield', 'Thane Ramsey', '(829) 724-', 1, 'Sierra Figueroa', 'Kalia Curt', 2, 1, NULL, NULL),
(151, 'Adria King', 'YWY58XYC8SD', 'Lael Dalton', 'Lawrence Mcmillan', '(101) 239-', 1, 'Clarke Coleman', 'Martin Bro', 2, 1, NULL, NULL),
(152, 'Tobias Francis', 'URL54MFU0BK', 'Connor Callahan', 'Vaughan West', '(295) 772-', 1, 'Nola Santana', 'Baker Hunt', 1, 1, NULL, NULL),
(153, 'Minerva Schroeder', 'SKK94OPF1EJ', 'Fleur Mcbride', 'Chaney O\'brien', '(343) 554-', 1, 'Chester Sharpe', 'Sacha Cama', 2, 1, NULL, NULL),
(154, 'Joan Cameron', 'XBF64RJF2KT', 'Hamish Holmes', 'Bruno Dunlap', '1-261-670-', 1, 'Dora Sherman', 'Xandra Lyn', 2, 1, NULL, NULL),
(155, 'Ahmed Simmons', 'RUV52KLA3FU', 'Keane Macias', 'Fredericka Cooley', '1-364-668-', 1, 'Holly Zamora', 'Cooper Day', 2, 1, NULL, NULL),
(156, 'Brittany Jenkins', 'TFT71WSO2XH', 'Alana Aguirre', 'Hadassah Bright', '(214) 384-', 1, 'Aurora Cruz', 'Quon Ware', 2, 1, NULL, NULL),
(157, 'Aileen Wilkins', 'KWG27QIV1FV', 'Linda Edwards', 'Igor Rowland', '(655) 594-', 1, 'Fritz Carrillo', 'Chantale S', 2, 1, NULL, NULL),
(158, 'Buckminster Santos', 'BAU51ZOV9VP', 'Leslie Bauer', 'Ivor Schmidt', '1-812-474-', 1, 'Kasimir Parsons', 'Edward Zim', 2, 1, NULL, NULL),
(159, 'Graiden Mcfarland', 'IEF25VME5OX', 'Juliet Conrad', 'Ebony Fox', '1-953-666-', 1, 'Petra Velez', 'Brielle Re', 2, 1, NULL, NULL),
(160, 'Keely Woods', 'LJR06WMI4ET', 'Cherokee Maxwell', 'Allistair Ross', '(480) 434-', 1, 'Jolene Nguyen', 'Emerald Ru', 1, 1, NULL, NULL),
(161, 'Hadley Eaton', 'SMW58IFI8YD', 'Christian Wilkins', 'Whilemina Nixon', '(287) 514-', 1, 'Carl Mccarty', 'Ciaran Por', 2, 1, NULL, NULL),
(162, 'Rogan Molina', 'XXH14EMA6OD', 'Amir Marshall', 'Brianna Bolton', '1-361-284-', 1, 'Curran Ortiz', 'Amos Ayers', 2, 1, NULL, NULL),
(163, 'Reagan Le', 'LDU21ODS4OF', 'Colleen Elliott', 'Chanda Charles', '1-579-543-', 1, 'Abbot Keith', 'Russell Ga', 2, 1, NULL, NULL),
(164, 'Alfreda Serrano', 'WFB03PEV5LV', 'Ainsley O\'brien', 'Irene Parks', '1-617-381-', 1, 'Fatima Bennett', 'Rhiannon S', 1, 1, NULL, NULL),
(165, 'Yuri Cooke', 'BCK20RQG5NJ', 'Lillian Velasquez', 'Kessie Merritt', '(936) 487-', 1, 'Nerea Wyatt', 'Oscar Hays', 2, 1, NULL, NULL),
(166, 'Hammett Hinton', 'HTK18XLW3TT', 'Teagan Gamble', 'Dylan Patterson', '1-476-811-', 1, 'Geoffrey Potter', 'Abel Jorda', 2, 1, NULL, NULL),
(167, 'Adria Watson', 'GOO22FKP3MI', 'Octavia Gilbert', 'Byron Molina', '(417) 375-', 1, 'Nevada Mckee', 'Driscoll W', 1, 1, NULL, NULL),
(168, 'Jonas Bennett', 'WOX26OMS0QT', 'Tiger Gill', 'Ignacia Stuart', '(855) 317-', 1, 'Vladimir Chen', 'Luke Nguye', 2, 1, NULL, NULL),
(169, 'Kristen Molina', 'DVG53RUC4OP', 'Nerea Lee', 'Dillon Santos', '(145) 698-', 1, 'Chancellor Parsons', 'Quyn Penni', 1, 1, NULL, NULL),
(170, 'Indira Ellis', 'BPK91FLJ1BS', 'Wyoming Reese', 'Anne Ruiz', '1-521-935-', 1, 'Hall Mccarty', 'Kirby Mcca', 2, 1, NULL, NULL),
(171, 'Scarlett Stevens', 'YEB28XZH4MI', 'Raven Reed', 'Abraham Foreman', '(612) 346-', 1, 'Ciaran Price', 'Fuller Sto', 2, 1, NULL, NULL),
(172, 'Quintessa Doyle', 'CWE81GUP1TZ', 'Indigo Dillard', 'Dolan Holt', '1-297-560-', 1, 'Lester Ford', 'Clark Chan', 2, 1, NULL, NULL),
(173, 'Julie Brewer', 'QBP95XTB7BF', 'Kelly Mueller', 'Christopher Acevedo', '(876) 591-', 1, 'Gavin Ashley', 'Abdul Ever', 2, 1, NULL, NULL),
(174, 'Whoopi Salinas', 'DWR40QKJ5QX', 'Nicole Dillard', 'Dahlia Sawyer', '(662) 331-', 1, 'Brian Rosales', 'Ferdinand ', 1, 1, NULL, NULL),
(175, 'Cora Hicks', 'PBK63ZTN6OP', 'Shelley Britt', 'Tyrone Day', '(461) 635-', 1, 'Indira Briggs', 'Nigel Lee', 2, 1, NULL, NULL),
(176, 'Trevor Carrillo', 'EKF33UYV9DO', 'Connor Koch', 'Tiger Lambert', '(665) 393-', 1, 'Flynn Tucker', 'Amal Mcnei', 1, 1, NULL, NULL),
(177, 'Nero Norman', 'ULO88IYV3PU', 'Benjamin David', 'Jonah Giles', '1-467-525-', 1, 'Maggy Burke', 'Gage Cohen', 1, 1, NULL, NULL),
(178, 'Demetria Mcbride', 'OCC67WWH3KX', 'Camille Martinez', 'Timothy Mclaughlin', '1-153-811-', 1, 'Karleigh Mcpherson', 'Gillian Gl', 1, 1, NULL, NULL),
(179, 'Burke Moss', 'NWS92IKW3HW', 'Risa Stevens', 'Malcolm Anderson', '(824) 663-', 1, 'Deborah Mayo', 'Duncan Boy', 1, 1, NULL, NULL),
(180, 'Cairo Atkinson', 'LMN19EPF1QI', 'Blaze Dalton', 'Buffy Waller', '1-558-589-', 1, 'Stella Mclean', 'Demetria R', 1, 1, NULL, NULL),
(181, 'Noble Maldonado', 'UCL45RAX9GT', 'Kyle Pacheco', 'Eliana Lamb', '(873) 554-', 1, 'Emmanuel Robbins', 'Lionel Mac', 1, 1, NULL, NULL),
(182, 'Gwendolyn Booker', 'VTJ47FTE5YA', 'Zeus Mcfadden', 'Fritz Wise', '1-455-574-', 1, 'Wesley Ortega', 'Blaze Carv', 2, 1, NULL, NULL),
(183, 'Zelda Moreno', 'ROK48INQ2WR', 'Gage Melendez', 'Kerry Flynn', '1-292-513-', 1, 'Berk Baird', 'Inga Hammo', 1, 1, NULL, NULL),
(184, 'Alexis Crawford', 'UAQ52AQQ4VY', 'Desiree Jackson', 'Christopher Bryan', '1-543-617-', 1, 'George Stanley', 'Melissa Ra', 2, 1, NULL, NULL),
(185, 'Willa Rosa', 'RLB00SUW1WO', 'Rajah Holt', 'Cruz Jackson', '1-362-650-', 1, 'Faith Carr', 'Beau Nicho', 2, 1, NULL, NULL),
(186, 'Warren Galloway', 'QCP55WYQ8JY', 'Conan Pierce', 'Sage Rivers', '1-797-928-', 1, 'Ignatius Vega', 'Vladimir G', 2, 1, NULL, NULL),
(187, 'Maxwell Sellers', 'HAX33GTY8GK', 'David Guerrero', 'Chanda Shaw', '(228) 317-', 1, 'Signe Stokes', 'Vernon Lit', 1, 1, NULL, NULL),
(188, 'Andrew Hull', 'YOL61SDG2RX', 'Ann Ratliff', 'Xenos Bonner', '(222) 758-', 1, 'Cora Allison', 'Hamish Gil', 2, 1, NULL, NULL),
(189, 'Mikayla Arnold', 'ZCV36MBS2TN', 'Quinn Walton', 'Maris Monroe', '1-917-424-', 1, 'Anthony Cooke', 'Phyllis Wa', 2, 1, NULL, NULL),
(190, 'Gary Mcpherson', 'MMF51NVI8HN', 'Kaitlin Fowler', 'Deborah Flynn', '1-839-648-', 1, 'Chloe Melendez', 'Fredericka', 1, 1, NULL, NULL),
(191, 'Imelda Joyce', 'CPQ15XPO1IU', 'Dolan Giles', 'Xena Michael', '1-160-664-', 1, 'Zahir Acosta', 'Serina Kin', 2, 1, NULL, NULL),
(192, 'Edan Peters', 'JIX28COZ6DV', 'Mira Arnold', 'Haviva Herrera', '1-381-446-', 1, 'Tanek Ellis', 'Clayton Bu', 1, 1, NULL, NULL),
(193, 'Mary Frye', 'JUU59DBO3ZO', 'Hiroko Gould', 'Erich Meadows', '(305) 193-', 1, 'Hadley Kim', 'Vivian Ree', 2, 1, NULL, NULL),
(194, 'Nasim Ball', 'HUW67PYU9BH', 'Delilah Bradford', 'Rajah Pearson', '(334) 770-', 1, 'Rajah Bray', 'Julian Bla', 1, 1, NULL, NULL),
(195, 'Quon Webster', 'WOY97CEC1DI', 'Joel O\'connor', 'Linus Gallegos', '1-330-593-', 1, 'Keith Buckner', 'Fay Ortiz', 2, 1, NULL, NULL),
(196, 'Bree Hodges', 'KST53IWD6OU', 'Ahmed Blackburn', 'Christian Combs', '(364) 934-', 1, 'Glenna Davidson', 'Mollie Sto', 1, 1, NULL, NULL),
(197, 'Brittany Huffman', 'ZHT72WAD2HU', 'Kirsten Oliver', 'Kellie Day', '(981) 657-', 1, 'Tanya Clay', 'Eagan Mcfa', 2, 1, NULL, NULL),
(198, 'Ayanna Strickland', 'MLY63NHE2NW', 'Ferdinand Wilkins', 'Marcia Newton', '(244) 746-', 1, 'Whoopi Vasquez', 'Ocean Rodr', 2, 1, NULL, NULL),
(199, 'Desirae Shelton', 'NHA17UTF6FT', 'Quentin Durham', 'Kyla Bean', '(602) 288-', 1, 'Jescie Parker', 'Aristotle ', 2, 1, NULL, NULL),
(200, 'Derek Crosby', 'CQH73QZH9BR', 'Miriam Oneal', 'Kadeem Shepard', '1-767-226-', 1, 'Carter French', 'Ulysses Fl', 1, 1, NULL, NULL),
(201, 'Kitra Velez', 'ANV58JKS3XR', 'Cade Holmes', 'Myra Guzman', '(333) 867-', 1, 'Ferdinand Wyatt', 'Brent Wals', 1, 1, NULL, NULL),
(202, 'Odessa Lewis', 'WNR65RNX3JB', 'Barry Hale', 'Lareina Collier', '1-361-466-', 1, 'Kyla Chapman', 'Ima Colon', 2, 1, NULL, NULL),
(203, 'Aileen Steele', 'OMN71EXG1DW', 'Rinah Lawrence', 'Keelie Hill', '(122) 458-', 1, 'Kevyn Murray', 'Darryl Dun', 1, 1, NULL, NULL),
(204, 'Rina Cash', 'GMU58LUY0ZI', 'Elliott Kramer', 'Ava Doyle', '(620) 258-', 1, 'Thor Gordon', 'Pascale Cl', 1, 1, NULL, NULL),
(205, 'Holly Talley', 'VDA36LQS1QO', 'Aquila Faulkner', 'Gisela Hull', '(621) 852-', 1, 'Brett Ward', 'Brenden Na', 2, 1, NULL, NULL),
(206, 'Griffin Lester', 'NIC70TVM6RP', 'Brianna Carpenter', 'Raphael Reilly', '(743) 461-', 1, 'Mark Berry', 'Gay Drake', 2, 1, NULL, NULL),
(207, 'Ursa Kaufman', 'IRG21YXM4OZ', 'Jessica Walker', 'Reece Combs', '(613) 322-', 1, 'Wynter Curtis', 'Orlando El', 2, 1, NULL, NULL),
(208, 'Hadley Blair', 'MSF44HXY2LE', 'Roary Marshall', 'Quinlan Coleman', '(520) 568-', 1, 'Colby Atkins', 'Yardley Ni', 1, 1, NULL, NULL),
(209, 'Charlotte Elliott', 'WSA56MNV7DW', 'Xavier Howard', 'Imani Miranda', '1-784-598-', 1, 'Aurelia Glenn', 'Rajah Cole', 1, 1, NULL, NULL),
(210, 'Burke Burnett', 'JCG74BIX5SB', 'Tatiana Joyce', 'Madonna Pope', '(865) 657-', 1, 'Iola Winters', 'Roary Huff', 2, 1, NULL, NULL),
(211, 'Nadine Mckinney', 'WRK43NSC5PO', 'Yoshi Odom', 'Slade Fulton', '1-491-672-', 1, 'Audra Ortega', 'Hop Moran', 2, 1, NULL, NULL),
(212, 'Felix Everett', 'LBB89MOW1VG', 'Darryl Maldonado', 'Edward Talley', '(438) 593-', 1, 'Deanna Waller', 'Kaye Wiggi', 1, 1, NULL, NULL),
(213, 'Martha Swanson', 'GIF45ABH7JT', 'Amy Perez', 'Octavius Leon', '1-826-827-', 1, 'Cameran Carlson', 'Vivian Car', 1, 1, NULL, NULL),
(214, 'Bradley Hunter', 'XUS24DND5OA', 'Aaron Hancock', 'Brandon Vasquez', '1-152-408-', 1, 'Cameron Deleon', 'Halee Greg', 1, 1, NULL, NULL),
(215, 'Bradley Woodard', 'PZF84DMY5NT', 'Rhona Martinez', 'Aidan Potter', '(473) 321-', 1, 'Blythe Finch', 'Fitzgerald', 1, 1, NULL, NULL),
(216, 'Kellie Walton', 'ORP35SZI5ID', 'Sarah Mendez', 'Laith Alford', '(294) 287-', 1, 'Michelle Kaufman', 'Yen Kirby', 2, 1, NULL, NULL),
(217, 'Maxine Fleming', 'RMC72ZQX8OQ', 'Cara Ward', 'Zachery Kerr', '1-428-359-', 1, 'Rigel Roach', 'Erasmus Ha', 2, 1, NULL, NULL),
(218, 'Aaron Head', 'LZB31GNF1XS', 'Joseph William', 'Drake Hurst', '(797) 510-', 1, 'Irene Gomez', 'Brenda Duf', 2, 1, NULL, NULL),
(219, 'Bradley Weaver', 'GSD86API3DW', 'Cole Gomez', 'Edan Murphy', '1-696-528-', 1, 'Jamalia Macias', 'Martha Har', 1, 1, NULL, NULL),
(220, 'Asher Nieves', 'CKX08EHD6KH', 'Ferdinand Rocha', 'Chava Barnes', '1-616-306-', 1, 'Channing Charles', 'Blaze Youn', 2, 1, NULL, NULL),
(221, 'Hannah Tucker', 'CZV76IGD1XL', 'Rhoda Fleming', 'Brielle Pollard', '1-953-364-', 1, 'Meredith Walter', 'Tamara Fig', 2, 1, NULL, NULL),
(222, 'Vernon Forbes', 'HLM61OFP5VT', 'Rowan Boyer', 'George Simpson', '(210) 446-', 1, 'Simon Morgan', 'Zia Carson', 1, 1, NULL, NULL),
(223, 'Iona Norris', 'XLP21ZZO2AP', 'Samantha Hunter', 'Raven Finley', '(942) 113-', 1, 'Lamar Hill', 'Paula Call', 2, 1, NULL, NULL),
(224, 'Amanda Berg', 'WLE15RGW2OM', 'Aidan Morrow', 'Colt Stephenson', '(585) 872-', 1, 'Lars Lambert', 'Bevis Odom', 2, 1, NULL, NULL),
(225, 'Yen Dillard', 'AGX83NIK3HJ', 'Jillian Kim', 'Germaine Griffin', '1-755-322-', 1, 'Brady Dillon', 'Ingrid Gil', 2, 1, NULL, NULL),
(226, 'Vivian Cannon', 'PJY56SYS7IT', 'Savannah Sharpe', 'Hayes Sparks', '(675) 555-', 1, 'Ila Cantrell', 'Georgia Gu', 2, 1, NULL, NULL),
(227, 'Emerson Klein', 'LSQ63VJD0JT', 'Nolan Golden', 'Xanthus Mcbride', '(525) 253-', 1, 'Felicia Mann', 'Bert Pace', 1, 1, NULL, NULL),
(228, 'Shaine Clayton', 'KVS13HKX5EI', 'Nina Carpenter', 'Dalton Humphrey', '(280) 647-', 1, 'Joseph Fitzpatrick', 'Aiko Allen', 1, 1, NULL, NULL),
(229, 'Jack Ball', 'NFU61XCY5OO', 'Francis Guthrie', 'Iris Battle', '(379) 402-', 1, 'Lyle Saunders', 'Jasmine Pr', 2, 1, NULL, NULL),
(230, 'Evelyn Hunter', 'HEE17UYQ3TL', 'Chaney Dodson', 'Noah Sears', '1-681-617-', 1, 'Steven Conrad', 'Germaine W', 2, 1, NULL, NULL),
(231, 'Tamekah Ball', 'TIP73ISL0OB', 'Mary Ingram', 'Maxine Delgado', '(165) 857-', 1, 'Angela Sharpe', 'Arsenio Mc', 1, 1, NULL, NULL),
(232, 'Iris Contreras', 'EYC68PSK2PN', 'Ralph Mccormick', 'Mason O\'donnell', '(485) 787-', 1, 'Olympia Pugh', 'Piper Park', 1, 1, NULL, NULL),
(233, 'Quynn Robinson', 'NJB58DGH7YN', 'Emily Stout', 'Halla Salas', '(337) 206-', 1, 'Mark Thompson', 'Ivan Hale', 1, 1, NULL, NULL),
(234, 'Ira Ortega', 'KVY67XMJ8KC', 'Ferris George', 'Russell Jefferson', '(729) 682-', 1, 'Fritz Sawyer', 'Brian Engl', 1, 1, NULL, NULL),
(235, 'Valentine Booker', 'RKE54VGZ7DV', 'Daniel Acosta', 'Geraldine Farmer', '(678) 578-', 1, 'Cailin Buck', 'Gabriel Mc', 1, 1, NULL, NULL),
(236, 'Orson Daniels', 'MHP63HQM1FD', 'Cally York', 'Erin Clements', '1-246-367-', 1, 'Judah Cummings', 'Jaquelyn G', 1, 1, NULL, NULL),
(237, 'Clarke Jefferson', 'ZUV10BVD2DL', 'Fallon Zamora', 'Denise Warner', '1-921-642-', 1, 'Carla Andrews', 'Lev Pace', 2, 1, NULL, NULL),
(238, 'Carissa Glass', 'FLP13GHY4II', 'Phillip Mcgowan', 'Odysseus Rocha', '(653) 621-', 1, 'Aristotle Sutton', 'Jared Burg', 2, 1, NULL, NULL),
(239, 'Vance Joyner', 'OFE86LBQ4VR', 'Leandra Richard', 'Evelyn Mclaughlin', '1-413-683-', 1, 'Price Osborne', 'Griffin Me', 1, 1, NULL, NULL),
(240, 'Cameron Washington', 'KSX45YJU6FW', 'Alfreda Small', 'Chaney Malone', '1-713-174-', 1, 'Karyn Sutton', 'Jessica Ha', 1, 1, NULL, NULL),
(241, 'Quintessa Avery', 'JBB40MQE8PO', 'Justine Hancock', 'Cheyenne Bryan', '(229) 513-', 1, 'Trevor Nelson', 'Victoria K', 2, 1, NULL, NULL),
(242, 'April Odom', 'KEV81RML1PS', 'Lynn Wagner', 'Jaden Barry', '1-143-641-', 1, 'Kermit Ramos', 'Dawn Moone', 1, 1, NULL, NULL),
(243, 'Robin Shaw', 'SJK49TQS3WF', 'Coby Stafford', 'Michael Cantrell', '1-758-380-', 1, 'Dustin Serrano', 'Oren Solis', 1, 1, NULL, NULL),
(244, 'Athena Torres', 'BIQ65TER8DP', 'Colt William', 'Althea Wooten', '1-578-955-', 1, 'Nero Floyd', 'Amela Todd', 2, 1, NULL, NULL),
(245, 'Gil Head', 'NHI74NAB9BM', 'Constance Lancaster', 'Paki Parrish', '(629) 730-', 1, 'Jaime Gould', 'Chester Oc', 1, 1, NULL, NULL),
(246, 'Callie Campbell', 'PKF85YBY7MU', 'Hedwig Ingram', 'Patricia Sellers', '1-710-850-', 1, 'Lamar Norris', 'Skyler New', 2, 1, NULL, NULL),
(247, 'Kyra Perkins', 'VRS25XDW5RM', 'Sierra Finley', 'Phillip Ellison', '(651) 306-', 1, 'Knox Reeves', 'Stewart Wa', 1, 1, NULL, NULL),
(248, 'April Ortega', 'ORO24QQE5WB', 'Jael Moran', 'Celeste Wall', '(642) 256-', 1, 'Basil Hickman', 'Thaddeus S', 1, 1, NULL, NULL),
(249, 'Meghan Sloan', 'DSA38DKA1XK', 'Hamish Duke', 'Zeus Contreras', '1-467-592-', 1, 'Sydney Page', 'Eugenia Be', 1, 1, NULL, NULL),
(250, 'Debra Fuller', 'RRD44OUK8LA', 'Kibo Puckett', 'Amethyst Zimmerman', '1-885-330-', 1, 'Quintessa Middleton', 'Cally O\'br', 2, 1, NULL, NULL),
(251, 'Rhonda Mclaughlin', 'PUH46WTS2KG', 'Mallory Livingston', 'Stephen Fuentes', '(174) 418-', 1, 'Jasper Oneil', 'May Chen', 2, 1, NULL, NULL),
(252, 'Francesca Gilliam', 'WTM10HLM6ZA', 'Willow Cherry', 'Nita Mckenzie', '(867) 643-', 1, 'Drew Stephenson', 'Daria Sala', 2, 1, NULL, NULL),
(253, 'Isabelle Joseph', 'UJF49HEZ6FG', 'Kareem Barber', 'Xander Ashley', '(965) 731-', 1, 'Zephr Cantu', 'Zorita Tor', 2, 1, NULL, NULL),
(254, 'Gabriel Horn', 'HCD21YWN1BL', 'Mufutau Fields', 'Kirestin Edwards', '(778) 778-', 1, 'Samson Lara', 'Maggie Rob', 2, 1, NULL, NULL),
(255, 'Joseph Soto', 'MLL26DSS8NX', 'Roary Dyer', 'Leroy Ellison', '1-369-703-', 1, 'Cole Koch', 'Clementine', 2, 1, NULL, NULL),
(256, 'Genevieve O\'Neill', 'POS58ATD6TH', 'Ignatius Valencia', 'Cadman Holmes', '1-486-533-', 1, 'Paul Cooley', 'Stephen Or', 1, 1, NULL, NULL),
(257, 'Mercedes Taylor', 'JSK76LCF5IC', 'Yvette Austin', 'Sonya Reid', '(411) 945-', 1, 'Amery Pollard', 'Rigel Gros', 1, 1, NULL, NULL),
(258, 'Zeph Bean', 'TIT48QKH8IF', 'Jin Harmon', 'Lani Cunningham', '1-774-626-', 1, 'Lee Rowland', 'Roanna Pit', 2, 1, NULL, NULL),
(259, 'Melanie Sears', 'VCY43DIY7FX', 'Jamal Pacheco', 'Clark Bullock', '(467) 547-', 1, 'Channing Contreras', 'Colby Kirk', 2, 1, NULL, NULL),
(260, 'Paki Hoffman', 'BRU04DON5VJ', 'Malik Keller', 'Tara Vance', '1-746-820-', 1, 'Caesar Delgado', 'Murphy Luc', 2, 1, NULL, NULL),
(261, 'Quemby Solis', 'MJX44QUF7DJ', 'Michelle Duffy', 'Robert Landry', '(897) 582-', 1, 'Ursa Munoz', 'Eliana San', 2, 1, NULL, NULL),
(262, 'Wing Burgess', 'FIN30XLB2NM', 'Mikayla Chaney', 'Wayne Hanson', '(149) 964-', 1, 'Nissim Zimmerman', 'Timon Abbo', 2, 1, NULL, NULL),
(263, 'Victor Bauer', 'YJK25GHO4RL', 'Jaime Mcknight', 'Iola Mayo', '(884) 283-', 1, 'Hashim Elliott', 'Valentine ', 2, 1, NULL, NULL),
(264, 'Simone Crawford', 'MPS31LBT1PB', 'Neil Hardin', 'Megan Guy', '1-249-243-', 1, 'Dexter Santana', 'Gage Barro', 2, 1, NULL, NULL),
(265, 'Wayne Chambers', 'BUV14QPB5CE', 'Aladdin Christensen', 'Lillian Kane', '(270) 376-', 1, 'Mohammad Farmer', 'Lesley Jac', 1, 1, NULL, NULL),
(266, 'Martin Hays', 'VUQ35KMJ3GR', 'Mariam O\'connor', 'Malik Kane', '(385) 724-', 1, 'Baker Monroe', 'Nehru Agui', 1, 1, NULL, NULL),
(267, 'Joelle Marquez', 'TFU94DBJ0GS', 'Beau Marsh', 'Brett Dixon', '1-847-458-', 1, 'Echo Short', 'Brody Rhod', 2, 1, NULL, NULL),
(268, 'Griffin Vargas', 'DCK26CRC5OR', 'Burton Roberson', 'Paloma Cox', '(620) 948-', 1, 'Lane Hunter', 'Yuli Forbe', 1, 1, NULL, NULL),
(269, 'Dennis Lancaster', 'RPD83QRL6VG', 'Hamilton Hinton', 'Addison Tyler', '(328) 462-', 1, 'Amber Jordan', 'Shaeleigh ', 1, 1, NULL, NULL),
(270, 'Bianca Donovan', 'NMR84GNY5ED', 'Wylie Barber', 'Judah Riggs', '(277) 643-', 1, 'Lawrence Dean', 'Xander Cam', 1, 1, NULL, NULL),
(271, 'Bree Madden', 'NXF55MXC5JK', 'Ray Becker', 'Edward Zimmerman', '1-321-799-', 1, 'Kalia Frank', 'Davis Lane', 1, 1, NULL, NULL),
(272, 'Burke Macdonald', 'FIZ85XYS7VK', 'Edward Mann', 'Mira Velazquez', '(443) 333-', 1, 'Yasir Abbott', 'Raymond Ri', 1, 1, NULL, NULL),
(273, 'Vincent Orr', 'EDO48XAR1UF', 'Octavia Sweeney', 'Cameron Jimenez', '(386) 672-', 1, 'Paul Joseph', 'Abra Richa', 1, 1, NULL, NULL),
(274, 'Grant Adams', 'NKO33XNG8QR', 'Janna Melendez', 'McKenzie Hicks', '1-419-487-', 1, 'Paula Barlow', 'Steel Frye', 1, 1, NULL, NULL),
(275, 'Griffin Warner', 'JRC32NTO1IO', 'Darrel Thomas', 'Brennan Nichols', '1-350-374-', 1, 'Meredith Gutierrez', 'Mia Anders', 2, 1, NULL, NULL),
(276, 'Jeremy Clements', 'JFS90DBL7OX', 'Palmer Savage', 'Nash Rice', '1-474-892-', 1, 'Mallory Mcneil', 'Madeline C', 1, 1, NULL, NULL),
(277, 'Leilani Guzman', 'PPN63KIB3OI', 'Xandra Barron', 'Reese Gomez', '(826) 268-', 1, 'Adrienne Mcfarland', 'Nyssa Cros', 1, 1, NULL, NULL),
(278, 'Ivana Dyer', 'PKI34QGK1BK', 'Flynn Kline', 'Freya Cruz', '1-270-675-', 1, 'Shelly Sherman', 'Riley Albe', 2, 1, NULL, NULL),
(279, 'Abraham Wilkerson', 'RXM47DCI6XL', 'Herman Shields', 'Tanek Wilson', '(378) 505-', 1, 'Thane Burton', 'Kadeem Mad', 1, 1, NULL, NULL),
(280, 'Jana Booker', 'MNL84CNE7XM', 'Lev Oneal', 'Madison Morris', '1-486-897-', 1, 'Alea Riggs', 'Aphrodite ', 1, 1, NULL, NULL),
(281, 'Karly Carver', 'NJF19LDL1ZV', 'William Hayes', 'Yardley Rush', '(625) 828-', 1, 'Pamela Hendricks', 'Emily Alli', 1, 1, NULL, NULL),
(282, 'Walker Carter', 'BYY04PRY2KX', 'Phillip Cantu', 'Serena Floyd', '(448) 251-', 1, 'Rhiannon Crane', 'Marshall C', 2, 1, NULL, NULL),
(283, 'Kessie Chase', 'PQE72DKI6YP', 'Sydney Shaw', 'Bianca Lee', '1-497-418-', 1, 'Fredericka Herring', 'Louis Morg', 2, 1, NULL, NULL),
(284, 'Nasim O\'donnell', 'FST55JEG6LE', 'Olga O\'Neill', 'Ariel Terry', '(672) 817-', 1, 'Kenyon Nielsen', 'Barbara Bu', 2, 1, NULL, NULL),
(285, 'Noel Hendricks', 'UQB48DXQ3KF', 'Samuel Terry', 'Walker O\'donnell', '(370) 123-', 1, 'Wyoming Clarke', 'Geoffrey G', 2, 1, NULL, NULL),
(286, 'Mark Burch', 'DIO71UNS6DD', 'Clare William', 'Demetria Wood', '1-915-297-', 1, 'Celeste Benjamin', 'Raven Guti', 1, 1, NULL, NULL),
(287, 'Chava Hopkins', 'LFE17IDD5AC', 'Beverly Kennedy', 'Candice Harper', '1-352-947-', 1, 'Madeline Levine', 'David Hans', 1, 1, NULL, NULL),
(288, 'Vaughan Hester', 'WZR27WUX1UC', 'Oren Hanson', 'Nora Holman', '(779) 712-', 1, 'Stacy Morales', 'Alana Head', 1, 1, NULL, NULL),
(289, 'Jonah Blankenship', 'BVM58WXR6MO', 'Leigh Wheeler', 'Breanna Snider', '1-595-468-', 1, 'Theodore Galloway', 'Oliver Com', 2, 1, NULL, NULL),
(290, 'Raymond Douglas', 'GSS17IQB3PG', 'Jemima Moody', 'Meghan Pennington', '1-698-664-', 1, 'Brennan Livingston', 'Leslie Irw', 2, 1, NULL, NULL),
(291, 'Tanner Flores', 'SLN97HRR2GQ', 'Jessica Abbott', 'Robert Campos', '1-697-827-', 1, 'Ishmael White', 'Myra Allen', 1, 1, NULL, NULL),
(292, 'Reece Park', 'CFX99JFB2EI', 'Wylie Powers', 'Judith Mckinney', '1-260-682-', 1, 'Caleb Carroll', 'Sean Hoope', 2, 1, NULL, NULL),
(293, 'Lacota Haney', 'WPS41HRC2QV', 'Grace Cote', 'Brynne Nielsen', '1-916-729-', 1, 'Aladdin Bauer', 'Caleb Gain', 2, 1, NULL, NULL),
(294, 'Nina Dean', 'QXQ47RVD3SJ', 'Quamar Cole', 'Dane Everett', '(594) 143-', 1, 'Steel Kelly', 'Sandra Han', 2, 1, NULL, NULL),
(295, 'Sharon Cash', 'HTJ87MDB1LC', 'Amal Weber', 'Hall Tillman', '1-417-676-', 1, 'Carol Newman', 'Dante Huff', 2, 1, NULL, NULL),
(296, 'Troy Serrano', 'VDT64RNU5BE', 'Mufutau Dixon', 'Ferdinand Dale', '(800) 536-', 1, 'Drew Hopper', 'Alice Fox', 2, 1, NULL, NULL),
(297, 'Jaime Andrews', 'EQV30WJD5JI', 'Orla Aguirre', 'Rigel Chambers', '1-444-742-', 1, 'Ariel Mccarthy', 'Ocean Cant', 2, 1, NULL, NULL),
(298, 'Chaim Zamora', 'YJF21VUC8GZ', 'Thomas Langley', 'Thomas Buck', '1-968-636-', 1, 'Harding Daugherty', 'Josephine ', 2, 1, NULL, NULL),
(299, 'Tamekah Gates', 'KPY64DLP8WP', 'Echo Middleton', 'Quentin Fry', '(163) 818-', 1, 'Aaron Cantu', 'August Flo', 1, 1, NULL, NULL),
(300, 'Chandler Flowers', 'IOW25HHC2JT', 'Brenna Weaver', 'Ryder Chavez', '(501) 669-', 1, 'Ursula Franco', 'Melinda Ca', 2, 1, NULL, NULL),
(301, 'Althea Davenport', 'KUD18SPR1QV', 'Roth Joseph', 'Xander Herman', '1-612-855-', 1, 'Quamar Hicks', 'Josiah Bri', 1, 1, NULL, NULL),
(302, 'Judith Wilder', 'QIE87JCI4WZ', 'Barrett Dale', 'Imogene Malone', '1-338-217-', 1, 'Zelda Shaw', 'Keaton Dun', 1, 1, NULL, NULL),
(303, 'Cruz Gomez', 'SWU75LJM1JK', 'Zenia Lott', 'Cameron Roberts', '1-523-310-', 1, 'Alice Elliott', 'Rogan Nort', 1, 1, NULL, NULL),
(304, 'Jackson Riley', 'LVO24MAI2EA', 'Ainsley Castillo', 'Octavius Valdez', '(226) 684-', 1, 'Adam Garner', 'Garth Whee', 2, 1, NULL, NULL),
(305, 'Aurora Lee', 'CLJ23CRC8ZG', 'Holmes Jackson', 'Chaney Carney', '(233) 741-', 1, 'Drew Watts', 'Dean May', 2, 1, NULL, NULL),
(306, 'Tatum Espinoza', 'CRP37ENE1XZ', 'Pearl Patel', 'Fatima Reyes', '1-586-566-', 1, 'Germane Dawson', 'Rhiannon R', 1, 1, NULL, NULL),
(307, 'Jonas Hester', 'VUY46RQG1IY', 'Alea Allison', 'Quentin Clayton', '(855) 842-', 1, 'Dominique Cantu', 'Zoe Allen', 2, 1, NULL, NULL),
(308, 'Karina Hunter', 'DSQ33YIW1CY', 'Blossom Compton', 'Hayley Fuller', '1-881-413-', 1, 'Aspen Ford', 'Lewis Till', 2, 1, NULL, NULL),
(309, 'Kenyon Bowen', 'JJU34EWD4JJ', 'Orli Hancock', 'Clarke Prince', '(556) 255-', 1, 'Hiroko Kerr', 'Aphrodite ', 1, 1, NULL, NULL),
(310, 'Brendan Hernandez', 'WZZ55OHS3WU', 'Julian Fox', 'Joy Bentley', '1-363-242-', 1, 'Leonard Horne', 'Dalton Cai', 1, 1, NULL, NULL),
(311, 'Howard Eaton', 'JFA13KOT1JB', 'Yetta Haney', 'Hanna Reilly', '1-327-169-', 1, 'Lydia Hurst', 'Ora Sharpe', 1, 1, NULL, NULL),
(312, 'Maris Wheeler', 'ATF47UBQ7DI', 'Vincent Ramos', 'Carter Lane', '(293) 728-', 1, 'Rhea Shannon', 'Cullen Con', 1, 1, NULL, NULL),
(313, 'Whoopi Petty', 'OWX49OYF3EH', 'Mercedes Hurst', 'Wayne Mathis', '(226) 815-', 1, 'Alexander Welch', 'Giselle Ca', 2, 1, NULL, NULL),
(314, 'Claudia Carter', 'GUH17RCJ7YN', 'Hu Cox', 'April Maddox', '(831) 881-', 1, 'Jordan Hess', 'Ayanna Pat', 1, 1, NULL, NULL),
(315, 'Jolie Lyons', 'EBQ61BFF3IX', 'Fuller Sosa', 'Josephine Phillips', '1-248-262-', 1, 'Aidan Mckee', 'Breanna Ca', 1, 1, NULL, NULL),
(316, 'Neville Fisher', 'GNV70OLS8RO', 'Caryn Mcintosh', 'Britanney Booth', '1-504-660-', 1, 'Thomas Burgess', 'Magee Forb', 2, 1, NULL, NULL),
(317, 'Cassidy Mccoy', 'CYO84GTO7OG', 'Eugenia Wong', 'Akeem Alexander', '1-403-952-', 1, 'Kennedy Coffey', 'Gwendolyn ', 1, 1, NULL, NULL),
(318, 'Gareth Kemp', 'JKU66IXS6VV', 'Ryder Craig', 'Rama Snyder', '(453) 244-', 1, 'Oliver Carlson', 'Ariana Ran', 2, 1, NULL, NULL),
(319, 'Glenna Pace', 'QMC66KUZ6VF', 'Daquan Mckinney', 'Hannah Puckett', '1-233-851-', 1, 'Lester Hyde', 'Prescott H', 1, 1, NULL, NULL),
(320, 'Jillian Hurst', 'XZT52BHQ5DD', 'Katelyn Riddle', 'Lance Kirkland', '(952) 678-', 1, 'Erasmus Raymond', 'Gillian Mo', 2, 1, NULL, NULL),
(321, 'Blake Franks', 'VQV25VEB6GL', 'Nathaniel Richards', 'Levi Mejia', '(168) 437-', 1, 'Freya Richmond', 'Troy Wolf', 2, 1, NULL, NULL),
(322, 'Jessamine Allison', 'YYV56GEI7YH', 'Bert Sparks', 'Kareem Hooper', '(418) 729-', 1, 'Conan Lynch', 'Alisa Hanc', 2, 1, NULL, NULL),
(323, 'Amery Woodard', 'SCP97QRC3VM', 'Carl Bird', 'Damon Hayes', '(515) 321-', 1, 'Gary Stuart', 'Gannon Guz', 1, 1, NULL, NULL),
(324, 'Jenna Richards', 'MFM11MTM5MR', 'Wallace Edwards', 'Elmo Ellis', '1-491-541-', 1, 'Flavia Flores', 'Sebastian ', 2, 1, NULL, NULL),
(325, 'Alexa Joyce', 'DOY23PWY8LL', 'Chelsea Blanchard', 'Bradley Herrera', '(339) 368-', 1, 'Ivan Dillon', 'Philip Wee', 2, 1, NULL, NULL),
(326, 'Barbara Tran', 'JGW83FFD5QK', 'Caldwell Hooper', 'Nathaniel Parsons', '1-859-687-', 1, 'Gillian Pittman', 'Lee Harris', 1, 1, NULL, NULL),
(327, 'Tucker Zimmerman', 'CWD66KXD3MM', 'Lawrence Valentine', 'Nola Reeves', '1-181-544-', 1, 'Cedric Cantu', 'Cain Farle', 1, 1, NULL, NULL),
(328, 'Elliott Roy', 'RBI53NFR4MP', 'Candice Tate', 'Ross Craig', '1-858-115-', 1, 'Burke Vance', 'Camden Wel', 1, 1, NULL, NULL),
(329, 'Jamal Hatfield', 'FIK64ASJ0LB', 'Ella Mullins', 'Fulton Santos', '(420) 342-', 1, 'Kuame Mckee', 'Eric Ashle', 1, 1, NULL, NULL),
(330, 'Dalton Justice', 'ISY93ELM6FW', 'Jordan Mayo', 'David Carrillo', '1-866-383-', 1, 'Ezra Dominguez', 'Astra Blac', 2, 1, NULL, NULL),
(331, 'Ignatius French', 'WUO59ERC0RU', 'Sheila Patton', 'Indigo Parsons', '(378) 489-', 1, 'Sybil Rush', 'Kyra Torre', 2, 1, NULL, NULL),
(332, 'Cameron Gillespie', 'ERV80UEO7RP', 'Armando Zimmerman', 'Kaye Kidd', '(385) 365-', 1, 'Ayanna Ellison', 'Lewis Bart', 1, 1, NULL, NULL),
(333, 'Dominic Norman', 'OEQ71WOC8AR', 'Duncan Dickson', 'Brody Mendoza', '1-837-233-', 1, 'Phoebe Blackwell', 'Chiquita B', 2, 1, NULL, NULL),
(334, 'Velma Mitchell', 'TKZ83MFL1KI', 'Athena Holden', 'Duncan Robles', '1-931-148-', 1, 'Clayton Santana', 'Carly Bond', 1, 1, NULL, NULL),
(335, 'Odette Carr', 'SJN65XXV4BQ', 'Cade Mejia', 'Celeste Calderon', '(653) 180-', 1, 'Aileen Collier', 'Eric Newma', 2, 1, NULL, NULL),
(336, 'Jenette Schultz', 'VDG92NES8NX', 'Lysandra Young', 'Dora Boyer', '(370) 291-', 1, 'Buckminster Bass', 'Branden Ba', 2, 1, NULL, NULL),
(337, 'Carol Delacruz', 'JHV55BXJ3NF', 'Oleg Olsen', 'Kasimir Slater', '(765) 431-', 1, 'Charde Vang', 'Hollee Tho', 2, 1, NULL, NULL),
(338, 'Brenden Parker', 'BUJ68HSC0YM', 'Burton Garcia', 'Wade George', '1-448-591-', 1, 'Kathleen Klein', 'Sydnee Sho', 2, 1, NULL, NULL),
(339, 'Beck Jensen', 'EFO36OOY6YM', 'Signe Hays', 'Asher Mccarty', '(486) 523-', 1, 'Jonah Cox', 'MacKensie ', 2, 1, NULL, NULL),
(340, 'Bruno Roth', 'DFC57EBT0MA', 'Ina Hood', 'Doris Carey', '(438) 868-', 1, 'Piper Bradford', 'Christian ', 2, 1, NULL, NULL),
(341, 'Priscilla Lara', 'OCF58NVQ1FT', 'Anjolie Clayton', 'Carter Garcia', '(136) 912-', 1, 'Penelope Vargas', 'Kelly Patt', 1, 1, NULL, NULL),
(342, 'Otto Mercer', 'MGY38LXR5AL', 'Phillip Roach', 'Jael Morse', '1-827-251-', 1, 'Brett Calhoun', 'Anastasia ', 1, 1, NULL, NULL),
(343, 'William Vang', 'GTO83DVJ1JH', 'Eric Woods', 'Cassidy Spence', '(521) 717-', 1, 'Walter Wilder', 'Adria Wilk', 1, 1, NULL, NULL),
(344, 'Emery Cox', 'SQQ29IIO4WX', 'Kevyn Paul', 'Emerson Dillard', '(547) 813-', 1, 'Barry Underwood', 'Oprah Bren', 1, 1, NULL, NULL),
(345, 'Kadeem Collier', 'IGL17JPM0JO', 'William Rivas', 'Fatima Bentley', '1-838-651-', 1, 'Gail Floyd', 'Hashim Bea', 2, 1, NULL, NULL),
(346, 'Hop Peters', 'QWN36QXZ7MW', 'Yolanda Baxter', 'Odysseus Howell', '(345) 923-', 1, 'Gail Bowman', 'Haviva Hay', 2, 1, NULL, NULL),
(347, 'Hakeem England', 'LKJ30WGO7OM', 'Drew Estrada', 'Kathleen Spence', '(784) 739-', 1, 'Pascale Torres', 'Mohammad R', 2, 1, NULL, NULL),
(348, 'Hedley Prince', 'YXR10HXS9XW', 'Hannah Rivas', 'Hayes Hines', '(725) 832-', 1, 'Charissa Sawyer', 'Evangeline', 2, 1, NULL, NULL),
(349, 'Paki Moreno', 'UIO76LGZ6IX', 'Cora Contreras', 'Maris Finley', '1-865-397-', 1, 'Ignacia Brock', 'Slade Mors', 1, 1, NULL, NULL),
(350, 'Indigo Buchanan', 'SQV71DQE5LH', 'Iris Nielsen', 'Kenneth Sears', '(893) 166-', 1, 'Alma Clay', 'Wang Berge', 1, 1, NULL, NULL),
(351, 'Veda Nolan', 'NHO21BYJ6PX', 'Naomi Benjamin', 'Tanek Sheppard', '1-770-927-', 1, 'Jackson Norris', 'Justine Ba', 2, 1, NULL, NULL),
(352, 'Jasper Reeves', 'UCM11WSP7DJ', 'Winter Gilliam', 'Asher Ramos', '1-516-284-', 1, 'Cynthia Preston', 'Alfonso Wh', 1, 1, NULL, NULL),
(353, 'Silas Franklin', 'VID04IDZ5LK', 'Dorothy Burnett', 'Erich Gibbs', '(873) 382-', 1, 'Wilma Pickett', 'Carolyn Al', 2, 1, NULL, NULL),
(354, 'Eleanor Pitts', 'TOL61NNZ6TY', 'Malcolm Stuart', 'Martha Ramos', '1-664-347-', 1, 'Allistair Savage', 'Leah Good', 1, 1, NULL, NULL),
(355, 'Burke Evans', 'QKS91DOD1ET', 'Remedios Reid', 'Ian Navarro', '1-819-850-', 1, 'Eagan Christensen', 'Dalton Mon', 2, 1, NULL, NULL),
(356, 'Preston Graham', 'TOB61TCX7XC', 'Lucius Maddox', 'Matthew Whitaker', '(856) 135-', 1, 'Pandora Mason', 'Demetria M', 2, 1, NULL, NULL),
(357, 'Heather Mckenzie', 'KZK94BIJ5FT', 'Jessica Burgess', 'Britanni Rutledge', '1-934-948-', 1, 'Lacota Norton', 'Maisie Hur', 1, 1, NULL, NULL),
(358, 'Madeson Hull', 'YQI58ILX4JR', 'Phoebe Bridges', 'Halla Vaughn', '(607) 510-', 1, 'Buckminster Gould', 'Tobias Car', 2, 1, NULL, NULL),
(359, 'Jessica Simpson', 'NRB72NWO2SD', 'Dara Humphrey', 'Miriam Roy', '(476) 626-', 1, 'Hilary Duncan', 'Skyler Cal', 1, 1, NULL, NULL),
(360, 'Wallace Talley', 'HDG38PSF1QM', 'Candice Parks', 'Basil Mccoy', '1-944-688-', 1, 'Hedy Downs', 'Kyle Beck', 1, 1, NULL, NULL),
(361, 'Shaine Johnson', 'FQB38LRH4NJ', 'Alice Clay', 'Denton Holder', '(376) 715-', 1, 'Jameson Park', 'Ebony Fuen', 2, 1, NULL, NULL),
(362, 'Hunter Navarro', 'XHC75AWR1TD', 'Keith Branch', 'Bertha Moss', '(601) 243-', 1, 'Sopoline Cochran', 'Iona Barr', 2, 1, NULL, NULL),
(363, 'Martha Salas', 'VCW30KRL9NM', 'Barclay Mullen', 'James Sherman', '1-662-211-', 1, 'Gabriel Fry', 'Germaine B', 2, 1, NULL, NULL),
(364, 'Dean Turner', 'CUN42ELT9AA', 'Lana Guerrero', 'Christine Phillips', '1-633-259-', 1, 'Natalie Gallagher', 'Nina Adkin', 2, 1, NULL, NULL),
(365, 'Ava Schwartz', 'FEB88BIA1PT', 'Francis Rivas', 'Graiden Ramirez', '(358) 582-', 1, 'Yardley Newman', 'Cynthia Dr', 1, 1, NULL, NULL),
(366, 'Phillip Rhodes', 'VBJ39RCR9SE', 'Orson French', 'Damian Mosley', '(198) 733-', 1, 'Adele Hodges', 'Vielka Und', 1, 1, NULL, NULL),
(367, 'Ferdinand May', 'DDQ08FUE7ZG', 'Stuart Decker', 'Beau Dunn', '1-796-568-', 1, 'Yasir Holloway', 'Shafira Ba', 1, 1, NULL, NULL),
(368, 'Damon Carter', 'ENA33FVW4TC', 'Todd Woodard', 'Jarrod Meyer', '(543) 360-', 1, 'Georgia Sexton', 'Rhonda Eme', 2, 1, NULL, NULL),
(369, 'Joy Duke', 'PTA82ETA3TW', 'Gavin Contreras', 'Caesar Keller', '1-762-639-', 1, 'Beverly Mcguire', 'Dustin Hal', 1, 1, NULL, NULL),
(370, 'Kennedy Dudley', 'XBJ57IGQ5DQ', 'Nicholas Turner', 'Rae Beck', '1-672-911-', 1, 'Lamar Huber', 'Harper Cle', 2, 1, NULL, NULL),
(371, 'Ocean Coleman', 'SWT72GOE0BQ', 'Ahmed Crane', 'Ava Fisher', '(218) 537-', 1, 'Steel Graves', 'Willow Hud', 2, 1, NULL, NULL),
(372, 'Ocean Terry', 'NER00WMW1VB', 'Lara Savage', 'Driscoll Mcknight', '(286) 925-', 1, 'Diana Morrison', 'Tyrone Dau', 1, 1, NULL, NULL),
(373, 'Doris Jenkins', 'TQD75BHR5NH', 'Chaim Patrick', 'Britanney Hayden', '(862) 431-', 1, 'Sydnee Rhodes', 'Cleo Princ', 2, 1, NULL, NULL),
(374, 'Blossom Crane', 'JMH80YNE4WE', 'Lillian Kinney', 'Cullen Cooke', '(776) 209-', 1, 'Magee Cline', 'Zena Colem', 1, 1, NULL, NULL),
(375, 'Phillip Elliott', 'YFN29TPN8PV', 'Raven Sandoval', 'Marah Carter', '1-422-311-', 1, 'Sade Santiago', 'Zenia Albe', 2, 1, NULL, NULL),
(376, 'Oren Sweeney', 'SSD87RGD7IJ', 'Amos Ward', 'Natalie Sykes', '1-722-798-', 1, 'Alfonso Gross', 'Isadora Ga', 1, 1, NULL, NULL),
(377, 'Amber Rivera', 'DQP85XVL2GW', 'Wynter Robles', 'Lana Sharpe', '(678) 416-', 1, 'Aretha Dixon', 'Francesca ', 2, 1, NULL, NULL);
INSERT INTO `usuario` (`id_usuario`, `usuario`, `password`, `nombre_usu`, `apellido_usu`, `cedula_usu`, `estado_usu`, `email`, `celular_usu`, `id_rol`, `id_negocio`, `created_at`, `updated_at`) VALUES
(378, 'Micah Booker', 'ELR49DWQ0KL', 'Jasper Gallegos', 'Reuben Vaughan', '(532) 348-', 1, 'Nathaniel Dudley', 'Edward Nea', 1, 1, NULL, NULL),
(379, 'Bo Bush', 'RVK28JLL1WC', 'Hedy Harper', 'Scott Melendez', '(334) 685-', 1, 'Zena Wilkins', 'Samson Sav', 1, 1, NULL, NULL),
(380, 'Alexander Vinson', 'FNE66VCD8DO', 'Patience Cherry', 'Harding Delgado', '(172) 115-', 1, 'Serena Paul', 'Hall Shaff', 2, 1, NULL, NULL),
(381, 'Hector Mayo', 'SBN32CGE8LE', 'Drew Webb', 'Roary Fowler', '(932) 269-', 1, 'Chelsea Turner', 'Josiah Pol', 2, 1, NULL, NULL),
(382, 'Xantha Bean', 'DXC53JZG8ON', 'Stewart Fry', 'Iola Alford', '1-796-733-', 1, 'Pearl Klein', 'Nasim Wilk', 1, 1, NULL, NULL),
(383, 'Bell Boyle', 'TVO51NUK9EC', 'Arthur Andrews', 'Chaim Brady', '(134) 563-', 1, 'Kirk Tyson', 'Ulysses Se', 2, 1, NULL, NULL),
(384, 'Damian Chan', 'MQR78HUL5JH', 'Lesley Schwartz', 'Lev Bell', '(845) 945-', 1, 'Guinevere Alston', 'Clementine', 1, 1, NULL, NULL),
(385, 'Burton Villarreal', 'UJO30QXG3QD', 'Stuart Levy', 'Quail Walls', '(806) 354-', 1, 'Davis Mitchell', 'Tanek Hick', 1, 1, NULL, NULL),
(386, 'Raphael Glover', 'FKL66LFK2IF', 'Ira Barber', 'Belle York', '(461) 653-', 1, 'Deirdre Dawson', 'Dustin Atk', 2, 1, NULL, NULL),
(387, 'Christopher Knowles', 'EJL80FYY7PF', 'Oren Walls', 'Colorado Colon', '1-381-879-', 1, 'Lyle Wiggins', 'Nigel Aver', 1, 1, NULL, NULL),
(388, 'Alan Morse', 'PBF34EHV3JG', 'Reese Cherry', 'Dale Barrett', '1-552-778-', 1, 'Jelani Cameron', 'Erich Eato', 2, 1, NULL, NULL),
(389, 'Libby Rocha', 'IDC57SFZ7HU', 'Venus Hood', 'Bradley Alexander', '1-653-722-', 1, 'Jada Miranda', 'Adena Merr', 2, 1, NULL, NULL),
(390, 'Dana Erickson', 'PAO53LWJ4KG', 'Dorian Ashley', 'Richard Kane', '(698) 517-', 1, 'Joan Mitchell', 'Xander Ber', 1, 1, NULL, NULL),
(391, 'Remedios Henson', 'ONL18SRT7IQ', 'Lamar Mueller', 'Shellie Galloway', '(246) 384-', 1, 'Madeson Casey', 'Bradley Sa', 2, 1, NULL, NULL),
(392, 'Lee Cortez', 'QHI51YMR4FQ', 'Erica Jacobson', 'Adrian Hooper', '1-432-377-', 1, 'Rinah Horton', 'Audrey Huf', 1, 1, NULL, NULL),
(393, 'Fiona Case', 'YMV91EGR8BO', 'Sawyer Holcomb', 'Tyler Neal', '(255) 474-', 1, 'Damian Sanchez', 'Unity Gran', 2, 1, NULL, NULL),
(394, 'Alec Mcleod', 'TSK17KIE9XF', 'Fallon Hull', 'Jacob Jacobson', '(274) 482-', 1, 'Jacqueline Fleming', 'Ulric Full', 2, 1, NULL, NULL),
(395, 'Cody Graves', 'WGQ35DXL7OF', 'Cherokee Burris', 'Preston Nixon', '(464) 739-', 1, 'Camilla Taylor', 'Boris Till', 2, 1, NULL, NULL),
(396, 'Sandra Matthews', 'XXG25SXX1TO', 'Freya Norton', 'Daryl Rush', '1-340-436-', 1, 'Lance Houston', 'Darryl Kel', 1, 1, NULL, NULL),
(397, 'Kennedy Valentine', 'QIX16YVJ8ZJ', 'Lynn Davis', 'Jasper Lynch', '1-946-727-', 1, 'Kasper Dean', 'Lesley Kid', 1, 1, NULL, NULL),
(398, 'Jelani Emerson', 'ACX55FWS4SF', 'Jayme Tanner', 'Nehru Dixon', '1-992-165-', 1, 'Paul Castillo', 'Perry Espi', 2, 1, NULL, NULL),
(399, 'Desiree Ayers', 'ZIG26RKI7YK', 'Cadman Chaney', 'Perry Griffith', '(265) 225-', 1, 'Aaron Turner', 'Lunea Geor', 1, 1, NULL, NULL),
(400, 'Freya Powers', 'XMD72AFO1HT', 'Katelyn Lawrence', 'Sydney Love', '1-483-667-', 1, 'Christine Cook', 'Quinlan Ro', 1, 1, NULL, NULL),
(401, 'Merritt Olsen', 'YGR76DGY2YO', 'Kiayada Baldwin', 'Acton Bradshaw', '(548) 338-', 1, 'Dieter Gallagher', 'Reagan Wea', 2, 1, NULL, NULL),
(402, 'Marcia Dejesus', 'UCL75SSY9RS', 'Rosalyn Valentine', 'Yetta Potter', '(720) 248-', 1, 'Wade Roberts', 'Kermit Hen', 2, 1, NULL, NULL),
(403, 'Beck Mcfarland', 'LHX76TVY8IN', 'Slade Mcguire', 'Connor Joyce', '(336) 664-', 1, 'Galvin Christensen', 'Willa Carr', 2, 1, NULL, NULL),
(404, 'Kieran Stein', 'CVZ52OWJ9RB', 'Lareina Stuart', 'Alea Cortez', '1-883-454-', 1, 'Latifah West', 'Paloma Boy', 2, 1, NULL, NULL),
(405, 'Preston Acevedo', 'TQC65XIS3LD', 'Cherokee Hayes', 'Todd Mccormick', '1-731-582-', 1, 'Kai Mccoy', 'Kenneth Fa', 2, 1, NULL, NULL),
(406, 'Paul Walton', 'YQU36RWX8BX', 'Kyra Pitts', 'Damon Justice', '1-767-480-', 1, 'Micah Shelton', 'Jerome One', 2, 1, NULL, NULL),
(407, 'Lucian Castillo', 'GDM08NHR5MU', 'Melyssa Jensen', 'Austin Hinton', '(736) 658-', 1, 'Tyrone Reyes', 'Timothy Sy', 2, 1, NULL, NULL),
(408, 'Farrah Torres', 'KQX03NVL8MF', 'Winter Sloan', 'Leah Sanford', '(956) 859-', 1, 'Molly Hewitt', 'Kadeem Bla', 2, 1, NULL, NULL),
(409, 'Sheila Mercer', 'BTZ85PGO0PR', 'Piper Knight', 'Colin Clements', '1-202-416-', 1, 'Ariana Mckenzie', 'Adena Hamm', 1, 1, NULL, NULL),
(410, 'Cedric Booth', 'OSN91TRU0DQ', 'Ava Browning', 'Thor Head', '1-881-384-', 1, 'Shana Price', 'Uma Holden', 1, 1, NULL, NULL),
(411, 'Rose Martinez', 'TNM83BBL8CB', 'Joshua Mullins', 'Baxter Christian', '(277) 292-', 1, 'Rigel Stone', 'Melissa Ro', 2, 1, NULL, NULL),
(412, 'Hammett Talley', 'ZJQ65IRV8PF', 'Tanner Kirk', 'Whoopi Mccullough', '(248) 142-', 1, 'Keely Montgomery', 'Cooper Fre', 1, 1, NULL, NULL),
(413, 'Illana Hayden', 'UUD77JQH9RI', 'Tarik Bentley', 'Rina Sargent', '(792) 546-', 1, 'Samantha Aguilar', 'Hedda Coop', 2, 1, NULL, NULL),
(414, 'Naida Hayes', 'KKC28WMP1QX', 'Davis Middleton', 'Raphael Barnes', '(852) 442-', 1, 'Aline Maxwell', 'Winter Sla', 1, 1, NULL, NULL),
(415, 'Maia Spence', 'JNP31ODL5QA', 'Hillary Norton', 'Raya Ingram', '1-364-223-', 1, 'Jerome Leach', 'Colby Unde', 2, 1, NULL, NULL),
(416, 'Maggie Chang', 'KKT25YFH5RP', 'Rebekah Sykes', 'Keaton Knapp', '1-746-253-', 1, 'Vielka Raymond', 'Jolene Hyd', 1, 1, NULL, NULL),
(417, 'Kuame Nixon', 'HOY51HCF6NV', 'Alexander Dillon', 'Tanisha Patton', '1-744-243-', 1, 'Moses Ingram', 'Cruz Denni', 1, 1, NULL, NULL),
(418, 'Iris Grimes', 'BTS18YKG2LL', 'Aiko Morse', 'Tyler Emerson', '1-682-315-', 1, 'Vincent Maynard', 'Anthony St', 1, 1, NULL, NULL),
(419, 'Florence Lane', 'SEY17SGO8RJ', 'Chadwick Hensley', 'Brian Quinn', '(837) 383-', 1, 'Oleg Owens', 'Raja Chand', 2, 1, NULL, NULL),
(420, 'Tanek Johnston', 'OLT64DHM4WW', 'Britanni Calderon', 'Chadwick Fulton', '1-714-828-', 1, 'Silas Lewis', 'Nero Mcint', 1, 1, NULL, NULL),
(421, 'Kenyon Bean', 'XBW29VLR3JR', 'Breanna Hyde', 'Isaac Vargas', '1-802-725-', 1, 'Wing Marks', 'Dorian San', 1, 1, NULL, NULL),
(422, 'Charles Porter', 'JSW62SME6YZ', 'Brennan Kerr', 'Lunea Joseph', '1-371-161-', 1, 'Jaquelyn Stephens', 'Frances Cr', 2, 1, NULL, NULL),
(423, 'Indira Suarez', 'QPM73EIM1OY', 'Quintessa Lowery', 'Dolan Mccarthy', '1-153-862-', 1, 'Ahmed Juarez', 'Orla Atkin', 2, 1, NULL, NULL),
(424, 'Idona Cobb', 'VAW89IAK8TL', 'Donovan Golden', 'Sean Woods', '1-746-593-', 1, 'Guy Moses', 'Dennis She', 1, 1, NULL, NULL),
(425, 'Stacy Mcdonald', 'CXS56XVU3IV', 'Marshall James', 'Preston Page', '1-445-654-', 1, 'Zeph Norman', 'Yasir Bond', 2, 1, NULL, NULL),
(426, 'Gray Collins', 'NUE37SKM6TT', 'Arsenio Oneal', 'Signe Hayden', '1-557-137-', 1, 'Tatum Woodward', 'Len Owen', 2, 1, NULL, NULL),
(427, 'Tucker Chaney', 'WVV38MRE8GD', 'Connor Underwood', 'Joseph Stevenson', '1-289-610-', 1, 'Cameran Rivers', 'Delilah Mo', 2, 1, NULL, NULL),
(428, 'Jeanette Rivas', 'WKX37LRD9SM', 'Quinn Montoya', 'Abraham Meyer', '(750) 341-', 1, 'Debra Downs', 'Teegan Dun', 1, 1, NULL, NULL),
(429, 'Hammett Murray', 'VWW96HNS9KV', 'Addison Stanton', 'Yeo Duffy', '1-361-836-', 1, 'Louis Head', 'Eleanor Br', 2, 1, NULL, NULL),
(430, 'Hyatt Ramirez', 'NOW11DEP2EX', 'Timothy Carr', 'Rinah Fitzpatrick', '1-371-685-', 1, 'Hyatt Ramsey', 'Justina Do', 2, 1, NULL, NULL),
(431, 'Jaden Park', 'IRX95CCI4TL', 'Chadwick Medina', 'Quinlan Zamora', '(876) 522-', 1, 'Justina Bradley', 'Barbara Br', 2, 1, NULL, NULL),
(432, 'Brooke Kerr', 'UMO65KNN4UO', 'Elton Klein', 'Seth Ashley', '1-565-254-', 1, 'Madaline Austin', 'Otto Fry', 2, 1, NULL, NULL),
(433, 'Ignatius Palmer', 'FNX47OUM3JA', 'Nero Mcknight', 'Bert Ball', '1-183-904-', 1, 'Octavia Terry', 'Blake Wals', 1, 1, NULL, NULL),
(434, 'Jenette Pollard', 'OJX31CEB6NP', 'Wade Henson', 'Audrey Nielsen', '1-224-290-', 1, 'Dana Soto', 'Hashim Fos', 2, 1, NULL, NULL),
(435, 'Raymond Mckenzie', 'CHM56MHX9PO', 'Isaiah Cooley', 'Karina Nash', '(423) 795-', 1, 'Melyssa Duncan', 'Keegan Sar', 1, 1, NULL, NULL),
(436, 'Rhoda Mccormick', 'TUD82PQO0HU', 'Lareina Norman', 'Boris Justice', '1-568-497-', 1, 'Sage Sweet', 'Rina Quinn', 2, 1, NULL, NULL),
(437, 'Stone Fry', 'YKY78OOS3IW', 'Alea Abbott', 'Timon Gordon', '(155) 919-', 1, 'Linus Molina', 'Solomon Ev', 1, 1, NULL, NULL),
(438, 'Michelle Hendrix', 'AGR74MML5NM', 'Brent Swanson', 'Lara Murray', '1-131-121-', 1, 'Kadeem Walters', 'Ivan Calde', 2, 1, NULL, NULL),
(439, 'Craig Osborne', 'BOJ57HOL1RG', 'Phoebe Preston', 'Berk Kelly', '(228) 666-', 1, 'Octavius Ford', 'Aurelia Wo', 1, 1, NULL, NULL),
(440, 'Gemma Robinson', 'YXD75UMO3UD', 'Gail Ruiz', 'Macon Frederick', '(488) 336-', 1, 'Venus Stanley', 'Steven Sal', 2, 1, NULL, NULL),
(441, 'Indigo Goff', 'SMZ78MSF2HE', 'Kai Mason', 'Ciaran Ruiz', '1-353-941-', 1, 'Chava Hampton', 'Peter Kinn', 1, 1, NULL, NULL),
(442, 'Erin Gilliam', 'AGD75SYW8GM', 'Keith Glover', 'Stephen Ramirez', '1-552-604-', 1, 'Joelle Lloyd', 'Carl Allis', 1, 1, NULL, NULL),
(443, 'Bevis Murphy', 'PNT00HCQ2JE', 'Dawn Edwards', 'Chaim Goff', '(415) 466-', 1, 'Kelly Pace', 'Kevyn Walt', 1, 1, NULL, NULL),
(444, 'Donna Chapman', 'VFY86LIE6XR', 'Elmo Giles', 'Elaine Delacruz', '(871) 461-', 1, 'Chandler Foster', 'Maxine Tow', 2, 1, NULL, NULL),
(445, 'Hope Mccarthy', 'SAC02NWI8QG', 'Tanisha Talley', 'Lawrence Robinson', '1-243-405-', 1, 'Sebastian Walker', 'Vanna Fros', 1, 1, NULL, NULL),
(446, 'Hiram Sweeney', 'WXH49YCJ5VM', 'Petra Weiss', 'Chloe Spence', '1-431-744-', 1, 'Constance Chase', 'Priscilla ', 1, 1, NULL, NULL),
(447, 'Sawyer Baxter', 'UCE85OLJ3JQ', 'Vielka Barry', 'Zelda Gates', '(844) 828-', 1, 'Dustin Hess', 'Lane Krame', 2, 1, NULL, NULL),
(448, 'Inga Herrera', 'RXE78QJS5SS', 'Neil Richards', 'Asher Hunt', '1-720-814-', 1, 'Gage Cochran', 'Rebekah Ka', 1, 1, NULL, NULL),
(449, 'Caleb Powers', 'HFU52MOY1LQ', 'Lunea Bond', 'Penelope Wiggins', '(481) 962-', 1, 'Lev Marks', 'MacKenzie ', 1, 1, NULL, NULL),
(450, 'Armand Guerrero', 'RDJ93YBD3MO', 'Ignatius Butler', 'Emerson Rivers', '1-513-267-', 1, 'Gabriel Schmidt', 'Kirestin D', 2, 1, NULL, NULL),
(451, 'Gil Le', 'DWN46GIS4CU', 'Nelle Wong', 'Justina Bauer', '(646) 655-', 1, 'Xantha Hopkins', 'Beatrice W', 1, 1, NULL, NULL),
(452, 'Knox Beck', 'KGK19XLJ3FU', 'Gil Benson', 'Lacey Harper', '(475) 678-', 1, 'Prescott Joyce', 'Lareina Br', 2, 1, NULL, NULL),
(453, 'Palmer Lang', 'GXC64EHF7UK', 'Dieter Richards', 'Kato Curtis', '1-251-285-', 1, 'Jeremy Bryan', 'Buckminste', 1, 1, NULL, NULL),
(454, 'Odette Flores', 'TAV66JFP2WE', 'Ifeoma Wyatt', 'Nissim Bentley', '1-629-818-', 1, 'Kiara Jensen', 'Caesar Yor', 2, 1, NULL, NULL),
(455, 'Richard Clements', 'UFC10HTR3ID', 'Russell Brock', 'Ulric Tanner', '1-367-536-', 1, 'Sierra Austin', 'Mufutau Bi', 1, 1, NULL, NULL),
(456, 'Shad Nunez', 'QHF94OEM7FJ', 'Portia Greer', 'Tanek Porter', '(136) 465-', 1, 'Arthur Mcconnell', 'Kadeem Gil', 2, 1, NULL, NULL),
(457, 'Jakeem Mathis', 'SMP35FPW7OI', 'Cody Matthews', 'Keaton Wilkins', '1-474-237-', 1, 'Myles Daugherty', 'Leila Mcke', 1, 1, NULL, NULL),
(458, 'Petra Nash', 'LBE55KUH8LE', 'Karleigh Gilmore', 'Octavius Paul', '1-894-513-', 1, 'Lester Ross', 'Hayden O\'b', 2, 1, NULL, NULL),
(459, 'Elton Grant', 'LQG60NOM2LS', 'Igor Jennings', 'Brian Bishop', '(374) 581-', 1, 'Jemima Hodges', 'Tarik Rich', 2, 1, NULL, NULL),
(460, 'Jakeem Short', 'LUV51VJJ2SO', 'Tanek Holloway', 'MacKensie O\'brien', '(524) 416-', 1, 'Whitney Chambers', 'Haley Fraz', 1, 1, NULL, NULL),
(461, 'Akeem Preston', 'NUY54VLD1BX', 'Cally Fitzpatrick', 'Vielka Rice', '(542) 257-', 1, 'Jolene Mckay', 'Aladdin Wi', 1, 1, NULL, NULL),
(462, 'Autumn Silva', 'QTU89FXR4IV', 'Thor Fitzpatrick', 'Jameson Farmer', '1-421-747-', 1, 'Lane Schroeder', 'Elmo Mcdan', 2, 1, NULL, NULL),
(463, 'Ora Prince', 'CFF41CBZ0OE', 'Kelly Gibson', 'Dara Barrett', '1-192-713-', 1, 'Hadassah Ball', 'Shelby Gra', 1, 1, NULL, NULL),
(464, 'Reuben Slater', 'FES26NFM2NU', 'Luke Koch', 'Myra Russell', '(336) 206-', 1, 'Nita Hurst', 'Vivian Pru', 1, 1, NULL, NULL),
(465, 'Harrison Nash', 'YCQ71WRD5LS', 'Martena Maldonado', 'Vielka Bailey', '(904) 608-', 1, 'Hadassah Booth', 'Dean Hayne', 1, 1, NULL, NULL),
(466, 'Andrew Mccoy', 'VOT32YYP4UQ', 'Dale Levy', 'Mufutau Garner', '1-768-162-', 1, 'Ethan Sharp', 'Ursa Morin', 2, 1, NULL, NULL),
(467, 'Kirsten Vang', 'URU45STM0UR', 'Jillian Mays', 'Tarik Peterson', '(815) 577-', 1, 'Ulla Schultz', 'Winter Moo', 2, 1, NULL, NULL),
(468, 'Cara Bernard', 'QKC08EFB6KD', 'Teegan Ramirez', 'Buckminster Moran', '(270) 723-', 1, 'Elijah Davidson', 'Tad Harrin', 2, 1, NULL, NULL),
(469, 'Edward Melton', 'RCC21DOH6JB', 'Hector Cantu', 'Teegan Weaver', '(455) 392-', 1, 'Noble Dillon', 'Winter Fle', 1, 1, NULL, NULL),
(470, 'Leah Mccarty', 'HIM84IDU9YH', 'Keith Frazier', 'Malik Morton', '1-167-792-', 1, 'Nevada Thornton', 'Kai Castan', 2, 1, NULL, NULL),
(471, 'Ulysses Bradshaw', 'SHF61IMQ4TU', 'Lucas Griffin', 'Colin Barker', '(614) 878-', 1, 'Philip Downs', 'Whilemina ', 1, 1, NULL, NULL),
(472, 'Yeo Leblanc', 'KKD09DIY3YT', 'Alyssa Reid', 'Thomas Barr', '1-373-222-', 1, 'Grace Mcfarland', 'Charissa G', 1, 1, NULL, NULL),
(473, 'Dillon Raymond', 'PPD44BRI5EV', 'Halla Nieves', 'Alexander Chaney', '(725) 822-', 1, 'Todd Graham', 'May Osborn', 2, 1, NULL, NULL),
(474, 'Perry Gibson', 'RSQ73PUC7SE', 'Shannon Durham', 'Margaret Hoover', '(564) 722-', 1, 'Erich Puckett', 'Patience F', 2, 1, NULL, NULL),
(475, 'Ivan Nolan', 'QDI99AYE1OU', 'Gabriel Potts', 'Scott Vaughan', '1-336-967-', 1, 'Suki Hubbard', 'Ann Emerso', 1, 1, NULL, NULL),
(476, 'Hadassah Bernard', 'CMY74HQM2YF', 'Theodore Ramos', 'Kasper Woodard', '(452) 246-', 1, 'Phillip Wagner', 'Chanda Ber', 2, 1, NULL, NULL),
(477, 'Winter Craft', 'YNJ15TAG7KE', 'Jane Hahn', 'Kibo Rivera', '(670) 252-', 1, 'Daphne Hampton', 'Jared Rasm', 2, 1, NULL, NULL),
(478, 'Velma Meyers', 'OCW62OCR9NN', 'Clare Irwin', 'Eve Stuart', '1-327-864-', 1, 'Stuart Diaz', 'Evelyn Flo', 2, 1, NULL, NULL),
(479, 'Chester Stanley', 'EQL58LJK4SW', 'Charles Riggs', 'Odette Wells', '1-361-283-', 1, 'Alika Camacho', 'Wayne Watt', 1, 1, NULL, NULL),
(480, 'Hasad Sweet', 'CPR77QWQ6PR', 'Wanda Ray', 'Lisandra Bridges', '(493) 441-', 1, 'Ima Davis', 'Gisela Ter', 2, 1, NULL, NULL),
(481, 'Lucas Lawson', 'SBL37HPA1OS', 'Kiona Cruz', 'Sarah Mendez', '1-697-364-', 1, 'Keane Mosley', 'Nina Hahn', 2, 1, NULL, NULL),
(482, 'Cade Carr', 'FNB11LPE2JF', 'Mira Delgado', 'Perry Chase', '1-371-351-', 1, 'Emma Williams', 'Cassidy He', 1, 1, NULL, NULL),
(483, 'Sigourney Briggs', 'UTC52XNU1EN', 'Kiara Mckinney', 'Chaney Powers', '1-589-629-', 1, 'Elijah Farmer', 'Teegan Puc', 2, 1, NULL, NULL),
(484, 'Todd Vasquez', 'FSV34KUS8NM', 'Garth Phelps', 'Isadora Norton', '1-854-777-', 1, 'Hunter Stanton', 'Alvin Gord', 1, 1, NULL, NULL),
(485, 'Darius Reeves', 'PJA16HFJ2LR', 'Keegan Munoz', 'Owen Foreman', '(644) 465-', 1, 'Matthew Boyd', 'Keaton Mat', 1, 1, NULL, NULL),
(486, 'Tad Ross', 'KNW82CGN5HC', 'Tucker Greene', 'Britanni Conrad', '(325) 547-', 1, 'Kameko Walters', 'Jena Medin', 2, 1, NULL, NULL),
(487, 'Theodore Peck', 'OKE94KMU1IO', 'Macon Lancaster', 'Ralph Schwartz', '(840) 537-', 1, 'Otto Mcmillan', 'Ainsley He', 1, 1, NULL, NULL),
(488, 'Sasha White', 'PTK82FTC7QO', 'Abdul Fields', 'Rhoda Williamson', '1-252-267-', 1, 'Amelia Shaffer', 'Maxine Sno', 2, 1, NULL, NULL),
(489, 'Lysandra Parsons', 'GOV31JXI1AJ', 'Salvador Klein', 'Preston Franco', '1-712-531-', 1, 'Deanna Allen', 'Zenia Hick', 2, 1, NULL, NULL),
(490, 'Jonas Reilly', 'LCV16RMR1XN', 'Thomas Grimes', 'Noah Bauer', '(563) 370-', 1, 'Kelly Gamble', 'Chase Dots', 1, 1, NULL, NULL),
(491, 'Wesley Benson', 'EVN28RWE5JQ', 'Ebony Fox', 'Winter Mack', '(856) 763-', 1, 'Alana Medina', 'Nina Danie', 2, 1, NULL, NULL),
(492, 'Aaron Cochran', 'XUD15XLH1BU', 'Emerson Hale', 'Slade Carey', '(110) 988-', 1, 'Hermione Reid', 'Benedict M', 2, 1, NULL, NULL),
(493, 'Nyssa Horton', 'MHW54KTK3IK', 'Reuben Pitts', 'Vincent Ingram', '(616) 757-', 1, 'Hilda Daniel', 'Baxter Spe', 2, 1, NULL, NULL),
(494, 'Audrey Battle', 'MZR24HTG6KI', 'Alden Adams', 'Kirk Houston', '1-332-753-', 1, 'Shelly Cannon', 'Jeanette F', 2, 1, NULL, NULL),
(495, 'Ira Moran', 'LYS13KKU6DK', 'Marvin Kerr', 'Jane Hayes', '1-598-348-', 1, 'Omar Farrell', 'Sigourney ', 1, 1, NULL, NULL),
(496, 'Tanner Barber', 'CFF85MLE7PJ', 'Alyssa Bush', 'Fulton Gallegos', '1-262-831-', 1, 'Iona Andrews', 'Danielle G', 1, 1, NULL, NULL),
(497, 'Iliana Lawrence', 'PMG94TOL7EW', 'Benedict Rocha', 'Ria Day', '(358) 201-', 1, 'Leroy Bernard', 'Kevyn Shep', 2, 1, NULL, NULL),
(498, 'Emerald Oneal', 'SXY31UBF7AE', 'Patricia Knapp', 'Blake Stephens', '1-830-815-', 1, 'Hillary Short', 'Gage O\'con', 2, 1, NULL, NULL),
(499, 'Lars Henderson', 'GCI79OFP7OG', 'Mohammad Farmer', 'Uriah Quinn', '(706) 506-', 1, 'Zachery Hughes', 'Brendan Hu', 2, 1, NULL, NULL),
(500, 'Savannah Romero', 'DPU84NGF4GG', 'Chancellor Rollins', 'Martina Rosales', '(484) 356-', 1, 'Fatima Pate', 'Wing Evans', 2, 1, NULL, NULL),
(501, 'Marshall Patel', 'VVP17TTH2IC', 'Cassady Odom', 'Hope Hancock', '1-752-722-', 1, 'Maxwell Byrd', 'Cruz Cohen', 1, 1, NULL, NULL),
(502, 'Carson Donaldson', 'PIE78IQX2MY', 'Salvador Mcfadden', 'Michelle Davenport', '1-623-307-', 1, 'Jessamine Burt', 'Ryder Whit', 2, 1, NULL, NULL),
(503, 'Myra Cannon', 'JVU11XIU8GM', 'Ignacia Joyner', 'Hop Meadows', '1-223-447-', 1, 'Ivan Calderon', 'Reagan Bla', 1, 1, NULL, NULL),
(504, 'Ila Byrd', 'PHU97XRV2XY', 'Kuame Cross', 'Lysandra Webster', '1-219-922-', 1, 'Aurelia Burch', 'Janna Reil', 1, 1, NULL, NULL),
(505, 'Chaney Randall', 'LHD91ALG2IE', 'Carl Spears', 'Iris Conner', '(491) 298-', 1, 'Jescie Kirkland', 'Murphy Dav', 2, 1, NULL, NULL),
(506, 'Stella Johns', 'RJV39RLR1HX', 'Dominic Ramirez', 'Colt Merrill', '(726) 649-', 1, 'Morgan Osborn', 'Leslie San', 2, 1, NULL, NULL),
(507, 'Mason Gordon', 'IEX33UCF6VJ', 'Christian Wyatt', 'Dorian Mcguire', '(601) 262-', 1, 'Callum Lloyd', 'Uta Payne', 1, 1, NULL, NULL),
(508, 'Juliet Mcguire', 'FXN73GUH6NY', 'Isabelle Pollard', 'Evan Dunlap', '1-754-403-', 1, 'Tad Gray', 'Carlos Wig', 1, 1, NULL, NULL),
(509, 'Bernard Meyer', 'IWA03ASC5KQ', 'Anne Kane', 'Illiana Preston', '(812) 636-', 1, 'Shellie Bolton', 'Russell St', 1, 1, NULL, NULL),
(510, 'Isadora Head', 'WLG76FFV1DB', 'Shaine Watts', 'Mufutau Serrano', '(318) 626-', 1, 'Clinton Stevens', 'Lydia Deje', 1, 1, NULL, NULL),
(511, 'Ria Herman', 'HCM20TWM1JX', 'Margaret Valencia', 'Nomlanga Guy', '1-482-136-', 1, 'Branden Bolton', 'Thaddeus R', 1, 1, NULL, NULL),
(512, 'Marsden Hubbard', 'IWF86MOT2EX', 'Blake Townsend', 'Gretchen Jarvis', '(682) 360-', 1, 'Theodore Cleveland', 'Zeus Marqu', 1, 1, NULL, NULL),
(513, 'Philip Koch', 'JPH17USK4BF', 'Philip Moon', 'Peter Ortega', '(261) 935-', 1, 'Lamar Guy', 'Virginia H', 1, 1, NULL, NULL),
(514, 'Clinton Cantrell', 'VTG69VHC7UC', 'Zenia Stout', 'Hu Kane', '1-868-825-', 1, 'Inga Nixon', 'Audrey Law', 2, 1, NULL, NULL),
(515, 'Maggy Hurley', 'JTP87XGH7DR', 'Alec Terry', 'Fatima Pittman', '1-564-230-', 1, 'Emery Porter', 'Demetria L', 2, 1, NULL, NULL),
(516, 'Shana Morrison', 'MDF03DCR8KM', 'Jeremy Hays', 'Jaquelyn Talley', '(678) 653-', 1, 'Darryl Hooper', 'Eleanor Fl', 2, 1, NULL, NULL),
(517, 'Gregory Romero', 'WFP16FBH0XV', 'Callie Kelly', 'Macon Cummings', '(484) 670-', 1, 'Eagan Nixon', 'Freya Kell', 2, 1, NULL, NULL),
(518, 'Alexander Contreras', 'IOH02ODB6NB', 'Walker Guthrie', 'Carl Leach', '(541) 671-', 1, 'Sopoline Barber', 'Rowan Rand', 1, 1, NULL, NULL),
(519, 'Jenette Phillips', 'MVW87ZSW5OV', 'Moana Ball', 'Paki Cameron', '(254) 289-', 1, 'May Guerrero', 'Celeste Ka', 1, 1, NULL, NULL),
(520, 'Margaret Bates', 'NFW35VBU2TB', 'Theodore Skinner', 'Noble Flowers', '1-834-264-', 1, 'Hu Farley', 'Jermaine B', 2, 1, NULL, NULL),
(521, 'Oprah Peck', 'YMJ18ZND6GP', 'Troy Travis', 'Brian Saunders', '(221) 366-', 1, 'Graiden Hensley', 'Theodore M', 2, 1, NULL, NULL),
(522, 'Lee Barlow', 'YYN27VEV9QR', 'Flynn Barron', 'Hillary Eaton', '(281) 779-', 1, 'Illana Frost', 'Aquila Irw', 2, 1, NULL, NULL),
(523, 'Kristen Boone', 'XRK21EMO6PT', 'Bevis Ray', 'Doris Perkins', '(557) 343-', 1, 'Harlan Snider', 'Simon Good', 2, 1, NULL, NULL),
(524, 'Igor Adams', 'HCN97MBY2EX', 'Allistair Payne', 'Regina Meyer', '(428) 938-', 1, 'Mohammad Jacobs', 'Margaret W', 2, 1, NULL, NULL),
(525, 'Rhona Wiley', 'FYF48HIO6SY', 'Azalia Velazquez', 'Whilemina England', '1-911-611-', 1, 'Winter Waters', 'Lionel Car', 1, 1, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `caja`
--
ALTER TABLE `caja`
  ADD PRIMARY KEY (`id_caja`),
  ADD KEY `fk_caja_negocio` (`id_negocio`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`),
  ADD KEY `fk_categoria_negocio` (`id_negocio`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `fk_cliente_negocio` (`id_negocio`);

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
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `fk_devolucion_negocio` (`id_negocio`);

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
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `fk_inventario_negocio` (`id_negocio`);

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
  ADD KEY `fk_movimiento_transacciones` (`id_transacciones`),
  ADD KEY `fk_movimiento_negocio` (`id_negocio`);

--
-- Indices de la tabla `negocio`
--
ALTER TABLE `negocio`
  ADD PRIMARY KEY (`id_negocio`);

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
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `fk_producto_negocio` (`id_negocio`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`),
  ADD KEY `fk_proveedor_negocio` (`id_negocio`);

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
  ADD KEY `fk_servicio_transacciones` (`id_transacciones`),
  ADD KEY `fk_servicio_negocio` (`id_negocio`);

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
  ADD PRIMARY KEY (`id_transacciones`),
  ADD KEY `fk_transacciones_negocio` (`id_negocio`);

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
  ADD KEY `id_rol` (`id_rol`),
  ADD KEY `fk_usuario_negocio` (`id_negocio`);

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
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id_negocio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=542;

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
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=544;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=526;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `caja`
--
ALTER TABLE `caja`
  ADD CONSTRAINT `fk_caja_negocio` FOREIGN KEY (`id_negocio`) REFERENCES `negocio` (`id_negocio`) ON DELETE CASCADE;

--
-- Filtros para la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD CONSTRAINT `fk_categoria_negocio` FOREIGN KEY (`id_negocio`) REFERENCES `negocio` (`id_negocio`) ON DELETE CASCADE;

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `fk_cliente_negocio` FOREIGN KEY (`id_negocio`) REFERENCES `negocio` (`id_negocio`) ON DELETE CASCADE;

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
  ADD CONSTRAINT `devolucion_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_devolucion_negocio` FOREIGN KEY (`id_negocio`) REFERENCES `negocio` (`id_negocio`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `fk_inventario_negocio` FOREIGN KEY (`id_negocio`) REFERENCES `negocio` (`id_negocio`) ON DELETE CASCADE,
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `movimiento`
--
ALTER TABLE `movimiento`
  ADD CONSTRAINT `fk_movimiento_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_movimiento_negocio` FOREIGN KEY (`id_negocio`) REFERENCES `negocio` (`id_negocio`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_movimiento_transacciones` FOREIGN KEY (`id_transacciones`) REFERENCES `transacciones` (`id_transacciones`) ON UPDATE CASCADE,
  ADD CONSTRAINT `movimiento_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_producto_negocio` FOREIGN KEY (`id_negocio`) REFERENCES `negocio` (`id_negocio`) ON DELETE CASCADE,
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`) ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD CONSTRAINT `fk_proveedor_negocio` FOREIGN KEY (`id_negocio`) REFERENCES `negocio` (`id_negocio`) ON DELETE CASCADE;

--
-- Filtros para la tabla `servicio_tecnico`
--
ALTER TABLE `servicio_tecnico`
  ADD CONSTRAINT `fk_servicio_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_servicio_negocio` FOREIGN KEY (`id_negocio`) REFERENCES `negocio` (`id_negocio`) ON DELETE CASCADE,
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
-- Filtros para la tabla `transacciones`
--
ALTER TABLE `transacciones`
  ADD CONSTRAINT `fk_transacciones_negocio` FOREIGN KEY (`id_negocio`) REFERENCES `negocio` (`id_negocio`) ON DELETE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_negocio` FOREIGN KEY (`id_negocio`) REFERENCES `negocio` (`id_negocio`) ON DELETE CASCADE,
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
