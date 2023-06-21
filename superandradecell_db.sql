-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-06-2023 a las 01:43:20
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

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
  `monto_total` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

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
(1, 'Prueba 3', 'Indefinido', 1, NULL, '2023-06-09 02:12:34'),
(2, 'Modulos de carga', 'Indefinido', 1, NULL, '2023-06-09 02:02:27'),
(3, 'Micas de vidrio', 'Indefinido', 1, NULL, '2023-06-09 02:02:35'),
(4, 'Ping de carga', 'Indefinido', 1, NULL, '2023-06-09 02:02:43'),
(5, 'Carro', 'Indefinido', 1, NULL, '2023-06-09 02:13:44'),
(6, 'Prueba XD', 'Esto es una prueba', 1, '2023-06-09 03:00:29', '2023-06-09 03:00:29'),
(7, 'xd', 'DASFDSF', 1, '2023-06-09 03:00:47', '2023-06-09 03:00:47'),
(8, 'Pepe', 'pepepepeppe', 1, '2023-06-09 03:01:41', '2023-06-09 03:01:49'),
(9, 'LOL', 'Indefinido', 1, '2023-06-09 03:06:42', '2023-06-09 03:06:42'),
(10, 'dafdsf', 'Indefinido', 1, '2023-06-09 03:07:13', '2023-06-09 03:07:13'),
(11, 'adsfasdfsdaf', 'Indefinido', 1, '2023-06-09 03:07:18', '2023-06-09 03:07:18'),
(12, 'afdsfdsf', 'Indefinido', 1, '2023-06-09 03:07:24', '2023-06-09 03:07:24'),
(13, 'adsfadsf', 'Indefinido', 0, '2023-06-09 03:31:48', '2023-06-09 03:42:28'),
(14, 'asdfadsfdsafdsa', 'Indefinido', 1, '2023-06-09 03:31:54', '2023-06-09 03:31:54'),
(15, 'adsfadsfdsafdsaf', 'adsfdsafadsfdasf', 1, '2023-06-09 03:41:32', '2023-06-09 06:30:21'),
(16, 'dfadsfdsaf', 'Indefinido', 1, '2023-06-09 06:29:41', '2023-06-09 06:29:41');

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
(1, 'Carlos', 'Andrade', '0850587940', '1236547980', 'carlos.andrade66@gmail.com', 'Santo Domingo', NULL, NULL),
(2, 'Jose', 'Espinoza', '0850587924', '9632587410', 'jose_espinoza2@gmail.com', 'La Union', '2023-06-12 19:20:00', '2023-06-12 19:20:00'),
(3, 'Gabriela', 'Montero', '0123456789', '0231456789', 'gabriela_montero12@gmail.com', 'Santo Domingo', '2023-06-12 19:47:50', '2023-06-12 19:47:50'),
(4, 'Andres', 'Coronel', '9865321470', '3669885740', 'andres_coronel1@gmail.com', 'La Union', '2023-06-12 20:07:13', '2023-06-12 20:07:13'),
(5, 'Maria', 'Peralta', '1236598763', '1225447888', 'mariaperalta22@gmail.com', 'Santo Domingo', '2023-06-12 20:09:55', '2023-06-12 20:09:55'),
(6, 'XXXXXXXXXX', 'XXXXXXXXXX', '9999999999', '0000000000', 'xxxxxxxxxxxx@gmail.com', 'XXXXXXXXXX', '2023-06-14 05:50:07', '2023-06-14 05:50:07');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `detalle`
--

INSERT INTO `detalle` (`id_detalle`, `cantidad`, `valor_unitario`, `id_inventario`, `id_movimiento`, `id_producto`, `created_at`, `updated_at`) VALUES
(15, 2, 14, 9, 30, 9, '2023-06-12 22:41:56', '2023-06-12 22:41:56'),
(16, 2, 10, 6, 30, 6, '2023-06-12 22:41:57', '2023-06-12 22:41:57'),
(17, 6, 9, 9, 31, 9, '2023-06-12 23:47:14', '2023-06-12 23:47:14'),
(18, 5, 12, 7, 31, 7, '2023-06-12 23:47:14', '2023-06-12 23:47:14'),
(19, 2, 14, 9, 32, 9, '2023-06-13 04:35:30', '2023-06-13 04:35:30'),
(20, 3, 14, 9, 33, 9, '2023-06-13 04:38:24', '2023-06-13 04:38:24'),
(21, 5, 14, 9, 34, 9, '2023-06-13 04:40:33', '2023-06-13 04:40:33'),
(22, 5, 10, 6, 34, 6, '2023-06-13 04:40:34', '2023-06-13 04:40:34'),
(23, 1, 14, 9, 35, 9, '2023-06-13 04:45:17', '2023-06-13 04:45:17'),
(24, 1, 10, 6, 35, 6, '2023-06-13 04:45:18', '2023-06-13 04:45:18'),
(25, 9, 14, 9, 36, 9, '2023-06-13 04:56:45', '2023-06-13 04:56:45'),
(26, 9, 10, 6, 36, 6, '2023-06-13 04:56:48', '2023-06-13 04:56:48'),
(27, 1, 10, 6, 37, 6, '2023-06-13 04:57:30', '2023-06-13 04:57:30'),
(28, 5, 14, 9, 38, 9, '2023-06-13 04:59:01', '2023-06-13 04:59:01'),
(29, 5, 14, 9, 39, 9, '2023-06-13 05:01:18', '2023-06-13 05:01:18'),
(30, 5, 14, 9, 40, 9, '2023-06-13 05:07:01', '2023-06-13 05:07:01'),
(31, 2, 14, 9, 41, 9, '2023-06-13 05:08:41', '2023-06-13 05:08:41'),
(32, 10, 10, 6, 41, 6, '2023-06-13 05:08:42', '2023-06-13 05:08:42'),
(33, 10, 14, 9, 42, 9, '2023-06-13 05:15:36', '2023-06-13 05:15:36'),
(34, 5, 14, 9, 43, 9, '2023-06-13 05:17:15', '2023-06-13 05:17:15'),
(35, 1, 10, 3, 44, 3, '2023-06-13 05:29:52', '2023-06-13 05:29:52'),
(36, 2, 14, 9, 45, 9, '2023-06-14 05:52:32', '2023-06-14 05:52:32'),
(37, 8, 14, 9, 46, 9, '2023-06-14 05:56:56', '2023-06-14 05:56:56'),
(38, 5, 12, 8, 46, 8, '2023-06-14 05:56:57', '2023-06-14 05:56:57'),
(39, 2, 14, 9, 47, 9, '2023-06-14 06:00:15', '2023-06-14 06:00:15'),
(40, 5, 10, 6, 47, 6, '2023-06-14 06:00:16', '2023-06-14 06:00:16'),
(41, 6, 8, 7, 47, 7, '2023-06-14 06:00:16', '2023-06-14 06:00:16');

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
(5, '2023-04-05', 1, 'No era el tamaño adecuado', 5, 2, NULL, NULL);

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
(1, 0, 175, '', 1, NULL, '2023-06-07 08:25:51'),
(2, 0, 120, '', 2, NULL, '2023-06-07 08:25:59'),
(3, 0, 11, '', 3, NULL, '2023-06-13 05:29:53'),
(4, 0, 13, '', 4, NULL, '2023-06-07 09:25:09'),
(5, 0, 20, '', 5, NULL, '2023-06-07 09:28:07'),
(6, 0, 45, '', 6, NULL, '2023-06-14 06:00:16'),
(7, 0, 7, '', 7, NULL, '2023-06-14 06:00:17'),
(8, 1, 12, '', 8, NULL, '2023-06-14 05:56:57'),
(9, 1, 38, '', 9, NULL, '2023-06-14 06:00:15'),
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
(20, 1, 10, '', 20, NULL, NULL),
(21, 1, 12, '', 21, NULL, NULL),
(22, 1, 15, '', 22, NULL, NULL),
(23, 1, 21, '', 23, NULL, NULL),
(24, 1, 22, '', 24, NULL, NULL),
(25, 1, 30, '', 25, NULL, NULL),
(26, 1, 26, '', 26, NULL, NULL),
(27, 1, 28, '', 27, NULL, NULL),
(28, 1, 36, '', 28, NULL, NULL),
(29, 1, 23, '', 29, NULL, NULL),
(30, 1, 20, '', 30, NULL, NULL),
(31, 1, 50, '', 31, NULL, NULL),
(32, 1, 30, 'Descripción del producto de prueba', 33, '2023-05-23 04:27:58', '2023-05-23 04:27:58'),
(33, 1, 60, 'Descripción del producto de prueba', 34, '2023-05-23 04:30:43', '2023-05-23 04:30:43'),
(34, 1, 50, 'Mica para celulares Samsung A100', 35, '2023-06-04 06:42:32', '2023-06-04 06:42:32'),
(35, 0, 505, 'asdfdsfsdaf', 36, '2023-06-05 10:01:34', '2023-06-10 20:27:34'),
(36, 0, 12, '11111111', 37, '2023-06-05 23:20:05', '2023-06-10 20:27:40'),
(37, 0, 200, 'adfdsfadsfdsf', 38, '2023-06-09 03:48:22', '2023-06-10 20:27:47');

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
  `id_transacciones` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `movimiento`
--

INSERT INTO `movimiento` (`id_movimiento`, `fecha_mov`, `numero_comprobante`, `tipo_mov`, `descripcion_mov`, `valor_total_mov`, `id_usuario`, `created_at`, `updated_at`, `id_cliente`, `id_transacciones`) VALUES
(30, '2023-06-12', 17, 'Salida', 'dfasdfdsfads', 48, 1, '2023-06-12 22:41:55', '2023-06-12 22:41:55', 1, 6),
(31, '2023-06-12', 18, 'Salida', 'fdsafadsf', 114, 1, '2023-06-12 23:47:12', '2023-06-12 23:47:12', 1, NULL),
(32, '2023-06-12', 19, 'Salida', 'fadsf', 28, 1, '2023-06-13 04:35:29', '2023-06-13 04:35:29', 2, NULL),
(33, '2023-06-12', 20, 'Salida', 'dafadsf', 42, 1, '2023-06-13 04:38:23', '2023-06-13 04:38:23', 1, NULL),
(34, '2023-06-12', 21, 'Salida', 'dsafadsf', 120, 1, '2023-06-13 04:40:31', '2023-06-13 04:40:31', 4, NULL),
(35, '2023-06-12', 22, 'Salida', 'dsafdsf', 24, 1, '2023-06-13 04:45:15', '2023-06-13 04:45:15', 5, NULL),
(36, '2023-06-12', 23, 'Salida', 'dfadsfsdf', 216, 1, '2023-06-13 04:56:43', '2023-06-13 04:56:43', 3, NULL),
(37, '2023-06-12', 24, 'Salida', 'erqewrqewrqwer', 10, 1, '2023-06-13 04:57:29', '2023-06-13 04:57:29', 1, NULL),
(38, '2023-06-12', 25, 'Salida', 'asfasdas', 70, 1, '2023-06-13 04:58:59', '2023-06-13 04:58:59', 3, NULL),
(39, '2023-06-12', 26, 'Salida', 'dafdsaf', 70, 1, '2023-06-13 05:01:17', '2023-06-13 05:01:17', 1, NULL),
(40, '2023-06-13', 27, 'Salida', 'fadsfs', 70, 1, '2023-06-13 05:07:00', '2023-06-13 05:07:00', 1, NULL),
(41, '2023-06-13', 28, 'Salida', 'fadsfads', 128, 1, '2023-06-13 05:08:39', '2023-06-13 05:08:39', 2, NULL),
(42, '2023-06-13', 29, 'Salida', 'dafdsfasdfdsafasdfadsfadsf', 140, 1, '2023-06-13 05:15:35', '2023-06-13 05:15:35', 3, NULL),
(43, '2023-06-13', 30, 'Salida', 'dafsd', 70, 1, '2023-06-13 05:17:13', '2023-06-13 05:17:13', 1, NULL),
(44, '2023-06-13', 31, 'Salida', 'adfadsfdasfadsf', 10, 1, '2023-06-13 05:29:50', '2023-06-13 05:29:50', 3, NULL),
(45, '2023-06-14', 32, 'Salida', 'Indefinido', 28, 1, '2023-06-14 05:52:30', '2023-06-14 05:52:30', 6, NULL),
(46, '2023-06-14', 33, 'Salida', 'venta de tres artículos', 172, 1, '2023-06-14 05:56:54', '2023-06-14 05:56:54', 6, NULL),
(47, '2023-06-14', 34, 'Salida', 'Indefinido', 126, 1, '2023-06-14 06:00:12', '2023-06-14 06:00:12', 1, NULL),
(48, '2023-06-13', 0, 'Gasto', 'Almuerzos', 2.5, 3, NULL, NULL, 6, NULL);

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
(4, 'Flex de carga Samsun A32 HG', 5, 12, 8, 0, 0, 'FC-000004', 'Samsum', 'A32 HG', 'FC-000004', '1', 1, 2, 3, NULL, '2023-06-07 09:25:09'),
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
(38, 'ASD', 1, 2, 3, 4, 5, 'HHN1', 'Sandsad', 'Cargador', 'HHN1', 'adfdsfadsfdsf', 0, 2, 15, '2023-06-09 03:48:22', '2023-06-10 20:27:47');

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
  `estado_prove` tinyint(1) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `nombre_prove`, `apellido_prove`, `empresa_prove`, `cargo_prove`, `ciudad_prove`, `celular_prove`, `estado_prove`, `updated_at`, `created_at`) VALUES
(1, 'Andres', 'Arriaga', 'Full Battery', 'Gerente', 'Santo Domingo', '9825623542', 1, '2023-06-13 04:17:28', NULL),
(2, 'Rene', 'Sanchez', 'Mega', 'Gerente', 'Santo Domingo', '9762081543', 1, '2023-06-13 04:18:15', NULL),
(3, 'Juan', 'Lopez', 'Coperat', 'Vendedor', 'Guayaquil', '9815549620', 1, '2023-06-13 04:18:36', NULL),
(4, 'Nuevo nombre', 'Nuevo apellido', 'Nueva empresa', 'Nuevo cargo', 'Nueva ciudad', '0256987463', 0, '2023-06-09 08:10:26', '2023-06-09 05:24:16'),
(5, 'Ricardo', 'Nuevo apellido', 'Nueva empresa', 'Nuevo cargo', 'Nueva ciudad', '0256987463', 1, '2023-06-13 04:18:51', '2023-06-09 05:25:45'),
(6, 'Christian', 'Perez', 'Espe', 'Docente', 'Santo domingo', '0123456789', 1, '2023-06-09 07:39:06', '2023-06-09 06:37:28'),
(7, 'daf', 'dasfads', 'adsfads', 'adsfadsf', 'dsaf', '0123456788', 0, '2023-06-09 08:10:17', '2023-06-09 07:16:46');

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
(1, 1, 'Gerente'),
(2, 1, 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio_tecnico`
--

CREATE TABLE `servicio_tecnico` (
  `id_servicio` int(11) NOT NULL,
  `fecha_ingreso_serv` date DEFAULT NULL,
  `fecha_salida_serv` date DEFAULT NULL,
  `descripcion_serv` varchar(200) DEFAULT NULL,
  `estado_serv` tinyint(1) DEFAULT NULL,
  `precio_serv` float NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_transacciones` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio_tecnico_producto`
--

CREATE TABLE `servicio_tecnico_producto` (
  `id_servicio_tecnico_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `valor_unitario` float NOT NULL,
  `id_inventario` int(11) NOT NULL,
  `id_servicio` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transacciones`
--

CREATE TABLE `transacciones` (
  `id_transacciones` int(11) NOT NULL,
  `tipo_transaccion` varchar(100) NOT NULL,
  `tipo_pago` varchar(100) NOT NULL,
  `monto_transaccion` float NOT NULL,
  `descripción` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `transacciones`
--

INSERT INTO `transacciones` (`id_transacciones`, `tipo_transaccion`, `tipo_pago`, `monto_transaccion`, `descripción`, `created_at`, `updated_at`) VALUES
(6, 'Salida', 'Efectivo', 48, 'dfasdfdsfads', NULL, NULL);

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
(1, 'Jesus_Andrade', '123456789', 'Jesús', 'Andrade', '2350636441', 1, 'jdac2350636441@gmail.com', '0997264984', 2, NULL, NULL),
(2, 'Dayana_Herrera', '123456789', 'Dayana', 'Herrera', '2325656771', 1, 'dayana2356@gmail.com', '0937568904', 1, NULL, NULL),
(3, 'RENE', 'RENE', 'RENE', 'PILOZO', '1234567811', 1, 'rene.pilozo@example.com', '0987154320', 1, '2023-05-24 05:05:01', '2023-05-24 05:05:01'),
(5, 'RENE1', 'RENE1', 'RENE1', 'PILOZO1', '1234567812', 1, 'rene1.pilozo@example.com', '0987154320', 1, '2023-05-26 05:46:49', '2023-05-26 05:46:49');

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
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id_inventario`),
  ADD KEY `id_producto` (`id_producto`);

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
  MODIFY `id_caja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `detalle`
--
ALTER TABLE `detalle`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `devolucion`
--
ALTER TABLE `devolucion`
  MODIFY `id_devolucion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id_inventario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `movimiento`
--
ALTER TABLE `movimiento`
  MODIFY `id_movimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `negocio`
--
ALTER TABLE `negocio`
  MODIFY `id_negocio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

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
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `servicio_tecnico_producto`
--
ALTER TABLE `servicio_tecnico_producto`
  MODIFY `id_servicio_tecnico_producto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `transacciones`
--
ALTER TABLE `transacciones`
  MODIFY `id_transacciones` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
