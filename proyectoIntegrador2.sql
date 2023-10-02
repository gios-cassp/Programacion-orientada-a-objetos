-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.31 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para base_de_datos_proyecto_2
CREATE DATABASE IF NOT EXISTS `base_de_datos_proyecto_2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `base_de_datos_proyecto_2`;

-- Volcando estructura para tabla base_de_datos_proyecto_2.carrito
CREATE TABLE IF NOT EXISTS `carrito` (
  `id_carrito` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `id_producto` int NOT NULL,
  `estado` bit(1) DEFAULT NULL,
  `id_pedido` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_carrito`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_producto` (`id_producto`),
  KEY `id_pedido` (`id_pedido`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla base_de_datos_proyecto_2.carrito: 5 rows
/*!40000 ALTER TABLE `carrito` DISABLE KEYS */;
INSERT INTO `carrito` (`id_carrito`, `id_usuario`, `id_producto`, `estado`, `id_pedido`, `created_at`, `updated_at`) VALUES
	(1, 3, 1, b'0', 8, '2023-09-30 00:48:32', '2023-09-30 00:48:32'),
	(2, 5, 3, b'1', 8, '2023-09-30 00:48:32', '2023-09-30 00:48:32'),
	(3, 7, 6, b'0', 1, '2023-09-30 00:48:32', '2023-09-30 00:48:32'),
	(4, 2, 5, b'0', 1, '2023-09-30 00:48:32', '2023-09-30 00:48:32'),
	(5, 10, 9, b'1', 2, '2023-09-30 00:48:32', '2023-09-30 00:48:32');
/*!40000 ALTER TABLE `carrito` ENABLE KEYS */;

-- Volcando estructura para tabla base_de_datos_proyecto_2.categoria
CREATE TABLE IF NOT EXISTS `categoria` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(45) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_categoria`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla base_de_datos_proyecto_2.categoria: 2 rows
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` (`id_categoria`, `nombre_categoria`, `descripcion`, `estado`, `created_at`, `updated_at`) VALUES
	(1, 'Smartphones y Dispositivos Móviles', 'Esta categoría incluye smartphones, tabletas, portatiles, computadores de escritorio y relojes intel', b'1', '2023-09-29 00:31:46', '2023-09-29 00:31:46'),
	(2, 'Electrodomésticos Inteligentes', 'Esta categoria incluye estufas, neveras TV, equipos de sonidos entre otros', b'1', '2023-09-29 00:31:46', '2023-09-29 00:31:46');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;

-- Volcando estructura para tabla base_de_datos_proyecto_2.ciudad
CREATE TABLE IF NOT EXISTS `ciudad` (
  `id_ciudad` int NOT NULL AUTO_INCREMENT,
  `nombre_ciudad` varchar(45) NOT NULL,
  `cobertura` bit(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_ciudad`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla base_de_datos_proyecto_2.ciudad: 10 rows
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` (`id_ciudad`, `nombre_ciudad`, `cobertura`, `created_at`, `updated_at`) VALUES
	(1, 'Cartagena', b'1', '2023-09-27 02:10:17', '2023-09-27 02:10:17'),
	(2, 'Barranquilla', b'0', '2023-09-27 02:10:17', '2023-09-27 02:10:17'),
	(3, 'Medellin', b'1', '2023-09-27 02:10:17', '2023-09-27 02:10:17'),
	(4, 'Bogota', b'0', '2023-09-27 02:10:17', '2023-09-27 02:10:17'),
	(5, 'Cali', b'0', '2023-09-27 02:10:17', '2023-09-27 02:10:17'),
	(6, 'Valledupar', b'1', '2023-09-27 02:10:17', '2023-09-27 02:10:17'),
	(7, 'Pereira', b'0', '2023-09-27 02:10:17', '2023-09-27 02:10:17'),
	(8, 'Santa_Marta', b'1', '2023-09-27 02:10:17', '2023-09-27 02:10:17'),
	(9, 'Manizales', b'1', '2023-09-27 02:10:17', '2023-09-27 02:10:17'),
	(10, 'San_Andres', b'1', '2023-09-27 02:10:17', '2023-09-27 02:10:17');
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;

-- Volcando estructura para tabla base_de_datos_proyecto_2.oferta
CREATE TABLE IF NOT EXISTS `oferta` (
  `id_oferta` int NOT NULL AUTO_INCREMENT,
  `nombre_oferta` varchar(45) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_oferta`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla base_de_datos_proyecto_2.oferta: 2 rows
/*!40000 ALTER TABLE `oferta` DISABLE KEYS */;
INSERT INTO `oferta` (`id_oferta`, `nombre_oferta`, `descripcion`, `estado`, `fecha_inicio`, `fecha_fin`, `created_at`, `updated_at`) VALUES
	(1, 'Descuento de amor y amistad', 'Oferta especial por dia de amor y amistad', b'1', '0000-00-00', '0000-00-00', '2023-09-29 00:36:02', '2023-09-29 00:36:02'),
	(2, 'Descuento en electrodomesticos inteligentes', 'Descuento por fechas de noche buena', b'1', '0000-00-00', '0000-00-00', '2023-09-29 00:36:02', '2023-09-29 00:36:02');
/*!40000 ALTER TABLE `oferta` ENABLE KEYS */;

-- Volcando estructura para tabla base_de_datos_proyecto_2.pedido
CREATE TABLE IF NOT EXISTS `pedido` (
  `id_pedido` int NOT NULL AUTO_INCREMENT,
  `fecha_pago` date NOT NULL,
  `metodo_pago` varchar(45) NOT NULL,
  `estado` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_pedido`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla base_de_datos_proyecto_2.pedido: 10 rows
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` (`id_pedido`, `fecha_pago`, `metodo_pago`, `estado`) VALUES
	(1, '2023-07-08', 'efectivo', 'cancelado'),
	(2, '2023-09-21', 'cheque', 'no pago'),
	(3, '2023-05-14', 'transaccion', 'pagó'),
	(4, '2023-01-25', 'cheque', 'cancelado'),
	(5, '2023-06-21', 'efectivo', 'pagó'),
	(6, '2023-07-01', 'transaccion', 'cancelado'),
	(7, '2022-12-10', 'cheque', 'pagó'),
	(8, '2022-11-07', 'cheque', 'cancelado'),
	(9, '2021-05-08', 'efectivo', 'pagó'),
	(10, '2021-09-23', 'efectivo', 'pagó');
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;

-- Volcando estructura para tabla base_de_datos_proyecto_2.producto
CREATE TABLE IF NOT EXISTS `producto` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `descripcion_producto` varchar(45) DEFAULT NULL,
  `id_categoria` int NOT NULL,
  `precio` int NOT NULL,
  `cantidad` int DEFAULT NULL,
  `id_oferta` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_producto`),
  KEY `id_categoria` (`id_categoria`),
  KEY `id_oferta` (`id_oferta`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla base_de_datos_proyecto_2.producto: 9 rows
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` (`id_producto`, `descripcion_producto`, `id_categoria`, `precio`, `cantidad`, `id_oferta`, `created_at`, `updated_at`) VALUES
	(1, 'smartphone Android, Ios', 1, 1000, 25, 1, '2023-09-30 00:39:32', '2023-09-30 00:39:32'),
	(2, 'Tablet y Ipad', 1, 750, 13, 1, '2023-09-30 00:39:32', '2023-09-30 00:39:32'),
	(3, 'Portatiles Windows y Macbook', 1, 1500, 30, 1, '2023-09-30 00:39:32', '2023-09-30 00:39:32'),
	(4, 'Computadores de escritorio Windows y Mac', 1, 2000, 23, 0, '2023-09-30 00:39:32', '2023-09-30 00:39:32'),
	(5, 'Smartwacth', 1, 640, 9, 0, '2023-09-30 00:39:32', '2023-09-30 00:39:32'),
	(6, 'Lavadora', 2, 320, 5, 1, '2023-09-30 00:39:32', '2023-09-30 00:39:32'),
	(7, 'SmartTv', 2, 700, 18, 0, '2023-09-30 00:39:32', '2023-09-30 00:39:32'),
	(8, 'Neveras', 2, 680, 7, 1, '2023-09-30 00:39:32', '2023-09-30 00:39:32'),
	(9, 'Equipos de sonido', 2, 520, 12, 0, '2023-09-30 00:39:32', '2023-09-30 00:39:32');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;

-- Volcando estructura para tabla base_de_datos_proyecto_2.rol
CREATE TABLE IF NOT EXISTS `rol` (
  `id_rol` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_rol`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla base_de_datos_proyecto_2.rol: 10 rows
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` (`id_rol`, `descripcion`, `nombre`, `created_at`, `updated_at`) VALUES
	(1, 'Responsable de identificar y cerrar oportunid', 'Ejecutivo de Ventas', '2023-09-28 01:14:30', '2023-09-28 01:14:30'),
	(2, 'Supervisa y dirige al equipo de ventas', 'Gerente de venta', '2023-09-28 01:14:30', '2023-09-28 01:14:30'),
	(3, 'Proporciona soporte y asistencia a los client', 'Servicio al cliente', '2023-09-28 01:14:30', '2023-09-28 01:14:30'),
	(4, 'Gestiona relaciones comerciales clave', 'Cartera', '2023-09-28 01:14:30', '2023-09-28 01:14:30'),
	(5, 'Analiza datos de ventas y tendencias del merc', 'Analista de datos de venta', '2023-09-28 01:14:30', '2023-09-28 01:14:30'),
	(6, 'Busca nuevas oportunidades de mercado', 'Desarrollo de negocios', '2023-09-28 01:14:30', '2023-09-28 01:14:30'),
	(7, 'Realiza ventas por teléfono o en línea', 'Ventas internas', '2023-09-28 01:14:30', '2023-09-28 01:14:30'),
	(8, 'Colabora con el equipo de marketing para crea', 'Marketing de ventas', '2023-09-28 01:14:30', '2023-09-28 01:14:30'),
	(9, 'Supervisa los procesos internos de ventas', 'Operaciones de ventas', '2023-09-28 01:14:30', '2023-09-28 01:14:30'),
	(10, 'Colabora con el equipo de ventas para identif', 'Desarrollo de productos', '2023-09-28 01:14:30', '2023-09-28 01:14:30');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;

-- Volcando estructura para tabla base_de_datos_proyecto_2.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(50) NOT NULL,
  `id_ciudad` int NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `rol` int NOT NULL,
  `id_refiere` int DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL,
  `contraseña_usuario` varchar(10) NOT NULL,
  `corre_usuario` varchar(45) NOT NULL,
  `telefono_usuario` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_usuario`),
  KEY `id_ciudad` (`id_ciudad`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla base_de_datos_proyecto_2.usuario: 10 rows
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id_usuario`, `nombre_usuario`, `id_ciudad`, `direccion`, `rol`, `id_refiere`, `estado`, `contraseña_usuario`, `corre_usuario`, `telefono_usuario`, `created_at`, `updated_at`) VALUES
	(1, 'Cindy Doria', 1, 'Calle 123', 0, NULL, b'1', 'Cdwuytdf', 'cindy@email.com', 123, '2023-09-28 01:11:34', '2023-09-28 01:11:34'),
	(2, 'Carlos Puerta', 2, 'Avenida XYZ', 0, 1, b'1', 'Xcvbnmkj', 'carl@email.com', 987, '2023-09-28 01:11:34', '2023-09-28 01:11:34'),
	(3, 'Daviana Casseres', 3, 'Calle Principal', 0, 2, b'1', 'Kloietud', 'daviana@email.com', 555, '2023-09-28 01:11:34', '2023-09-28 01:11:34'),
	(4, 'Jose A Correa', 4, 'Calle del ampo', 0, 3, b'1', 'Pdheyatgeb', 'jcorrea@email.com', 524, '2023-09-28 01:11:34', '2023-09-28 01:11:34'),
	(5, 'Pedro Segovia', 5, 'Calle de las flores', 0, 4, b'1', 'Iyeudgetmn', 'segovia@email.com', 12, '2023-09-28 01:11:34', '2023-09-28 01:11:34'),
	(6, 'Rodolfo Peña', 6, 'Avenida santander', 0, 5, b'1', 'Mnbsgwhju', 'peña@email.com', 324, '2023-09-28 01:11:34', '2023-09-28 01:11:34'),
	(7, 'Isabel Matos', 7, 'Manga cr i', 0, 6, b'1', 'Vbwyzb', 'isamatos@email.com', 876, '2023-09-28 01:11:34', '2023-09-28 01:11:34'),
	(8, 'Leonor Arrieta', 8, 'Calle del tamarindo', 0, 7, b'1', 'Zaqerysdh', 'larrieta@email.com', 146, '2023-09-28 01:11:34', '2023-09-28 01:11:34'),
	(9, 'Luis Puerta', 9, 'Calle negra', 0, 8, b'1', 'Gjekdlwosn', 'lpuerta@email.com', 281, '2023-09-28 01:11:34', '2023-09-28 01:11:34'),
	(10, 'Cantalicio Lopez', 10, 'Avenida pedro romero', 0, 9, b'1', 'Qwertuyi', 'cantalopez@email.com', 23, '2023-09-28 01:11:34', '2023-09-28 01:11:34');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

-- Volcando estructura para tabla base_de_datos_proyecto_2.usuario_rol
CREATE TABLE IF NOT EXISTS `usuario_rol` (
  `id_usuario` int NOT NULL,
  `id_rol` int NOT NULL,
  `estado` bit(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `id_usuario` (`id_usuario`),
  KEY `id_rol` (`id_rol`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla base_de_datos_proyecto_2.usuario_rol: 10 rows
/*!40000 ALTER TABLE `usuario_rol` DISABLE KEYS */;
INSERT INTO `usuario_rol` (`id_usuario`, `id_rol`, `estado`, `created_at`, `updated_at`) VALUES
	(1, 2, b'0', '2023-09-28 01:22:37', '2023-09-28 01:22:37'),
	(2, 3, b'1', '2023-09-28 01:22:37', '2023-09-28 01:22:37'),
	(3, 5, b'1', '2023-09-28 01:22:37', '2023-09-28 01:22:37'),
	(4, 1, b'0', '2023-09-28 01:22:37', '2023-09-28 01:22:37'),
	(5, 4, b'0', '2023-09-28 01:22:37', '2023-09-28 01:22:37'),
	(6, 8, b'1', '2023-09-28 01:22:37', '2023-09-28 01:22:37'),
	(7, 9, b'1', '2023-09-28 01:22:37', '2023-09-28 01:22:37'),
	(8, 6, b'0', '2023-09-28 01:22:37', '2023-09-28 01:22:37'),
	(9, 10, b'1', '2023-09-28 01:22:37', '2023-09-28 01:22:37'),
	(10, 7, b'0', '2023-09-28 01:22:37', '2023-09-28 01:22:37');
/*!40000 ALTER TABLE `usuario_rol` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
