-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 07-05-2018 a las 03:57:12
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `VotacionesUnimag`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidato`
--

CREATE TABLE `candidato` (
  `id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organo_id` int(10) UNSIGNED DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `candidato`
--

INSERT INTO `candidato` (`id`, `numero`, `organo_id`, `foto`, `created_at`, `updated_at`) VALUES
('1', '', 1, 'blanco.jpg', NULL, NULL),
('2', '', 2, 'blanco.jpg', NULL, NULL),
('2015114020', '01', 1, 'candidato_2015114020.jpg', NULL, NULL),
('2015114030', '03', 2, 'candidato_2015114030.jpg', NULL, NULL),
('2015114040', '02', 1, 'candidato_2015114040.jpg', NULL, NULL),
('2015114050', '04', 3, 'candidato_2015114050.jpg', NULL, NULL),
('2015114060', '05', 4, 'candidato_2015114060.jpg', NULL, NULL),
('3', '', 3, 'blanco.jpg', NULL, NULL),
('4', '', 4, 'blanco.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultad`
--

CREATE TABLE `facultad` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `facultad`
--

INSERT INTO `facultad` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Ingenieria', '2018-05-04 03:58:05', '2018-05-04 03:58:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugar`
--

CREATE TABLE `lugar` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lugar`
--

INSERT INTO `lugar` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Sede central', '2018-05-04 04:06:01', '2018-05-04 04:06:14'),
(2, 'Sede centro', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa`
--

CREATE TABLE `mesa` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lugar_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `mesa`
--

INSERT INTO `mesa` (`id`, `nombre`, `lugar_id`, `created_at`, `updated_at`) VALUES
(1, 'Mesa 001', 1, '2018-05-04 04:07:06', '2018-05-04 04:07:06'),
(2, 'Mesa 002', 2, NULL, NULL);

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
(1, '2018_05_03_071157_create_rol_table', 1),
(2, '2018_05_03_071257_create_facultad_table', 1),
(3, '2018_05_03_071357_create_programa_table', 1),
(4, '2018_05_03_071404_create_lugar_table', 1),
(5, '2018_05_03_071557_create_mesa_table', 1),
(6, '2018_05_03_074317_create_organo_table', 1),
(7, '2020_10_12_000000_create_users_table', 1),
(8, '2020_10_12_100000_create_password_resets_table', 1),
(9, '2021_05_03_074514_create_candidato_table', 1),
(10, '2022_05_03_075334_create_voto_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `organo`
--

CREATE TABLE `organo` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `organo`
--

INSERT INTO `organo` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'consejo de facultad', 'conformado por representante docentes, estudiantil...', NULL, NULL),
(2, 'consejo academico', 'conformado por representante docentes, estudiantil...', NULL, NULL),
(3, 'consejo estudiantil', 'conformado por representante docentes, estudiantil...', NULL, NULL),
(4, 'organo Idea', 'conformado por representante docentes, estudiantil...', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa`
--

CREATE TABLE `programa` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facultad_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `programa`
--

INSERT INTO `programa` (`id`, `nombre`, `facultad_id`, `created_at`, `updated_at`) VALUES
(1, 'Ingenieria de Sistemas', 1, '2018-05-04 03:59:01', '2018-05-04 03:59:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`) VALUES
('A', 'Administrador', 'Es el que tiene el control del sitio', '2018-05-04 04:02:21', '2018-05-04 04:02:21'),
('V', 'Votante', 'Es quien puede votar', '2018-05-04 06:01:51', '2018-05-04 06:01:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `codigo` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre1` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre2` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido1` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido2` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rol_id` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `programa_id` int(10) UNSIGNED DEFAULT NULL,
  `tipo` enum('Estudiante','Docente','Egresado') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` enum('1','2','3','4') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mesa_id` int(10) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`codigo`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `email`, `password`, `rol_id`, `programa_id`, `tipo`, `estado`, `mesa_id`, `remember_token`, `created_at`, `updated_at`) VALUES
('1', 'Voto', '-', 'en blanco', '-', 'blanco1@gmail.com', '0000', 'A', 1, NULL, NULL, NULL, NULL, '2018-05-06 19:14:37', '2018-05-06 19:14:37'),
('2', 'Voto', '-', 'en blanco', '-', 'blanco2@gmail.com', '0000', 'A', 1, NULL, NULL, NULL, NULL, '2018-05-06 19:14:37', '2018-05-06 19:14:37'),
('2015114010', 'Juan', 'Jose', 'Meza', 'Gamarra', 'email@gmail.com', '$2y$10$OTHjzy2SnEHqTdFm6DnjV.6TwCQMi7XEEMKv0xGwAFbf81aERHMnq', 'A', NULL, NULL, NULL, NULL, 'y4B6b4Pphd5c1j6wrUmZ8P0NXqtNS8axUqjroJTgqVJ3rI2AcQrzsvYwb7m2', NULL, NULL),
('2015114020', 'Andres', 'David', 'Lopez', 'Martinez', 'correo@gmail.com', '$2y$10$MILN6G05F6OoPDax8SPXGuxQ26Ck4Gxkzj4AUbKLDLYgjRrR6SGu2', 'V', 1, 'Estudiante', '4', 1, 'ilckIQ8Z0laLn6qkxt75zZqpM1RI7q1ZzwOjb4xCrpyRlDB3wxI8XWfPHIHb', NULL, '2018-05-06 20:44:25'),
('2015114030', 'Ana', 'Jose', 'Meza', 'Gamarra', 'mario@gmail.com', '$2y$10$OTHjzy2SnEHqTdFm6DnjV.6TwCQMi7XEEMKv0xGwAFbf81aERHMnq', 'V', 1, 'Estudiante', '2', 1, 'KHbaubqGMHeadTugdEw5L5eBKpgnqmjmPMO43IzpSG31XTXfufttLug8ZCPP', NULL, '2018-05-06 20:44:03'),
('2015114040', 'alberto', 'David', 'Lopez', 'Martinez', 'alberto@gmail.com', '$2y$10$MILN6G05F6OoPDax8SPXGuxQ26Ck4Gxkzj4AUbKLDLYgjRrR6SGu2', 'V', 1, 'Estudiante', '1', 2, 'sAJLcQH2EMmbBVr25Moqo7TbMcl3fcrlqc1ICcdCOWxImeIgf06b02HBrQOk', NULL, '2018-05-06 20:00:14'),
('2015114050', 'jesus', 'Jose', 'Meza', 'Gamarra', 'jesus@gmail.com', '$2y$10$OTHjzy2SnEHqTdFm6DnjV.6TwCQMi7XEEMKv0xGwAFbf81aERHMnq', 'V', 1, 'Estudiante', '1', 1, 'PjCE6QNPVJVGdu9jMMjp7IF8g9u6sy7Dz0mnP1tYvGrNLBApnYTOx4THB6ek', NULL, '2018-05-06 20:39:26'),
('2015114060', 'Ivan', 'David', 'Lopez', 'Martinez', 'ivan@gmail.com', '$2y$10$MILN6G05F6OoPDax8SPXGuxQ26Ck4Gxkzj4AUbKLDLYgjRrR6SGu2', 'V', 1, 'Estudiante', '1', 2, '0ogehoCt7e3bfWcOvgu1CpVxjVqEdpXG06fCUrAynp9Nl1bCS5t1VrChV2lP', NULL, NULL),
('3', 'Voto', '-', 'en blanco', '-', 'blanco3@gmail.com', '0000', 'A', 1, NULL, NULL, NULL, NULL, '2018-05-06 19:14:37', '2018-05-06 19:14:37'),
('4', 'Voto', '-', 'en blanco', '-', 'blanco4@gmail.com', '0000', 'A', 1, NULL, NULL, NULL, NULL, '2018-05-06 19:14:37', '2018-05-06 19:14:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `voto`
--

CREATE TABLE `voto` (
  `id` int(10) UNSIGNED NOT NULL,
  `mesa_id` int(10) UNSIGNED NOT NULL,
  `candidato_id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `voto`
--

INSERT INTO `voto` (`id`, `mesa_id`, `candidato_id`, `created_at`, `updated_at`) VALUES
(14, 1, '1', '2018-05-06 20:39:26', '2018-05-06 20:39:26'),
(15, 1, '2', '2018-05-06 20:39:26', '2018-05-06 20:39:26'),
(16, 1, '3', '2018-05-06 20:39:26', '2018-05-06 20:39:26'),
(17, 1, '4', '2018-05-06 20:39:26', '2018-05-06 20:39:26'),
(18, 1, '2015114040', '2018-05-06 20:42:32', '2018-05-06 20:42:32'),
(19, 1, '2', '2018-05-06 20:42:32', '2018-05-06 20:42:32'),
(20, 1, '2015114050', '2018-05-06 20:42:32', '2018-05-06 20:42:32'),
(21, 1, '4', '2018-05-06 20:42:32', '2018-05-06 20:42:32'),
(22, 1, '1', '2018-05-06 20:44:25', '2018-05-06 20:44:25'),
(23, 1, '2', '2018-05-06 20:44:25', '2018-05-06 20:44:25'),
(24, 1, '3', '2018-05-06 20:44:25', '2018-05-06 20:44:25'),
(25, 1, '2015114060', '2018-05-06 20:44:25', '2018-05-06 20:44:25');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `candidato`
--
ALTER TABLE `candidato`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidato_organo_id_foreign` (`organo_id`);

--
-- Indices de la tabla `facultad`
--
ALTER TABLE `facultad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lugar`
--
ALTER TABLE `lugar`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mesa`
--
ALTER TABLE `mesa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mesa_lugar_id_foreign` (`lugar_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `organo`
--
ALTER TABLE `organo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `programa`
--
ALTER TABLE `programa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `programa_facultad_id_foreign` (`facultad_id`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rol_id_unique` (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`codigo`),
  ADD UNIQUE KEY `users_codigo_unique` (`codigo`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_rol_id_foreign` (`rol_id`),
  ADD KEY `users_programa_id_foreign` (`programa_id`),
  ADD KEY `users_mesa_id_foreign` (`mesa_id`);

--
-- Indices de la tabla `voto`
--
ALTER TABLE `voto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `voto_mesa_id_foreign` (`mesa_id`),
  ADD KEY `voto_candidato_id_foreign` (`candidato_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `facultad`
--
ALTER TABLE `facultad`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `lugar`
--
ALTER TABLE `lugar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `mesa`
--
ALTER TABLE `mesa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `organo`
--
ALTER TABLE `organo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `programa`
--
ALTER TABLE `programa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `voto`
--
ALTER TABLE `voto`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `candidato`
--
ALTER TABLE `candidato`
  ADD CONSTRAINT `candidato_id_foreign` FOREIGN KEY (`id`) REFERENCES `users` (`codigo`) ON DELETE CASCADE,
  ADD CONSTRAINT `candidato_organo_id_foreign` FOREIGN KEY (`organo_id`) REFERENCES `organo` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `mesa`
--
ALTER TABLE `mesa`
  ADD CONSTRAINT `mesa_lugar_id_foreign` FOREIGN KEY (`lugar_id`) REFERENCES `lugar` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `programa`
--
ALTER TABLE `programa`
  ADD CONSTRAINT `programa_facultad_id_foreign` FOREIGN KEY (`facultad_id`) REFERENCES `facultad` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_mesa_id_foreign` FOREIGN KEY (`mesa_id`) REFERENCES `mesa` (`id`),
  ADD CONSTRAINT `users_programa_id_foreign` FOREIGN KEY (`programa_id`) REFERENCES `programa` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_rol_id_foreign` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `voto`
--
ALTER TABLE `voto`
  ADD CONSTRAINT `voto_candidato_id_foreign` FOREIGN KEY (`candidato_id`) REFERENCES `candidato` (`id`),
  ADD CONSTRAINT `voto_mesa_id_foreign` FOREIGN KEY (`mesa_id`) REFERENCES `mesa` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
