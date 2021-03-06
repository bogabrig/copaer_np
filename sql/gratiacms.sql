-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jul 09, 2015 at 06:18 AM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `gratia_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
`id` int(10) unsigned NOT NULL,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `tipo_menu_id` int(10) unsigned NOT NULL,
  `etiqueta` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `url` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `posicion` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `icono` varchar(35) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_rol`
--

CREATE TABLE `menu_rol` (
`id` int(10) unsigned NOT NULL,
  `menu_id` int(10) unsigned NOT NULL,
  `rol_id` int(10) unsigned NOT NULL,
  `estado` tinyint(3) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permiso`
--

CREATE TABLE `permiso` (
`id` int(10) unsigned NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre_a_mostrar` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `observacion` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permiso_rol`
--

CREATE TABLE `permiso_rol` (
`id` int(10) unsigned NOT NULL,
  `permiso_id` int(10) unsigned NOT NULL,
  `rol_id` int(10) unsigned NOT NULL,
  `estado` tinyint(3) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publicacion`
--

CREATE TABLE `publicacion` (
`id` int(10) unsigned NOT NULL,
  `taxonomia_id` int(10) unsigned NOT NULL,
  `titulo` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `contenido` text COLLATE utf8_spanish2_ci NOT NULL,
  `url` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `meta_title` varchar(60) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `meta_description` varchar(160) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `meta_keywords` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `estado` tinyint(3) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publicacion_imagen`
--

CREATE TABLE `publicacion_imagen` (
`id` int(10) unsigned NOT NULL,
  `publicacion_id` int(10) unsigned DEFAULT NULL,
  `ruta` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `titulo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `alt` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publicacion_tag`
--

CREATE TABLE `publicacion_tag` (
`id` int(10) unsigned NOT NULL,
  `publicacion_id` int(10) unsigned DEFAULT NULL,
  `tag` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publicacion_video`
--

CREATE TABLE `publicacion_video` (
`id` int(10) unsigned NOT NULL,
  `publicacion_id` int(10) unsigned DEFAULT NULL,
  `video` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rol`
--

CREATE TABLE `rol` (
`id` int(10) unsigned NOT NULL,
  `descripcion` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `observacion` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taxonomia`
--

CREATE TABLE `taxonomia` (
`id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `descripcion` varchar(5) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tipo_menu`
--

CREATE TABLE `tipo_menu` (
`id` int(10) unsigned NOT NULL,
  `descripcion` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
`id` int(10) unsigned NOT NULL,
  `usuario` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` tinyint(3) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usuario_rol`
--

CREATE TABLE `usuario_rol` (
`id` int(10) unsigned NOT NULL,
  `usuario_id` int(10) unsigned NOT NULL,
  `rol_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_menu_menu1_idx` (`menu_id`), ADD KEY `fk_menu_tipo_menu1_idx` (`tipo_menu_id`);

--
-- Indexes for table `menu_rol`
--
ALTER TABLE `menu_rol`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `validacion_menu_rol` (`menu_id`,`rol_id`), ADD KEY `fk_menu_rol_menu1_idx` (`menu_id`), ADD KEY `fk_menu_rol_rol1_idx` (`rol_id`);

--
-- Indexes for table `permiso`
--
ALTER TABLE `permiso`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `nombre_UNIQUE` (`nombre`), ADD UNIQUE KEY `nombre_a_mostrar_UNIQUE` (`nombre_a_mostrar`);

--
-- Indexes for table `permiso_rol`
--
ALTER TABLE `permiso_rol`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `validacion_permiso_rol` (`permiso_id`,`rol_id`), ADD KEY `fk_rolo_permiso_permisos1_idx` (`permiso_id`), ADD KEY `fk_permiso_rol_rol1_idx` (`rol_id`);

--
-- Indexes for table `publicacion`
--
ALTER TABLE `publicacion`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `url_UNIQUE` (`url`), ADD UNIQUE KEY `titulo_UNIQUE` (`titulo`), ADD KEY `taxonomia_id` (`taxonomia_id`);

--
-- Indexes for table `publicacion_imagen`
--
ALTER TABLE `publicacion_imagen`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `ruta_UNIQUE` (`ruta`), ADD KEY `publicacion_id` (`publicacion_id`);

--
-- Indexes for table `publicacion_tag`
--
ALTER TABLE `publicacion_tag`
 ADD PRIMARY KEY (`id`), ADD KEY `publicacion_id` (`publicacion_id`);

--
-- Indexes for table `publicacion_video`
--
ALTER TABLE `publicacion_video`
 ADD PRIMARY KEY (`id`), ADD KEY `publicacion_id` (`publicacion_id`);

--
-- Indexes for table `rol`
--
ALTER TABLE `rol`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `descripcion_UNIQUE` (`descripcion`);

--
-- Indexes for table `taxonomia`
--
ALTER TABLE `taxonomia`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `descripcion_UNIQUE` (`descripcion`), ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `tipo_menu`
--
ALTER TABLE `tipo_menu`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `descripcion_UNIQUE` (`descripcion`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `usuario_UNIQUE` (`usuario`);

--
-- Indexes for table `usuario_rol`
--
ALTER TABLE `usuario_rol`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `validacion_usuario_rol` (`rol_id`,`usuario_id`), ADD KEY `fk_usuario_rol_usuario2_idx` (`usuario_id`), ADD KEY `fk_usuario_rol_rol1_idx` (`rol_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menu_rol`
--
ALTER TABLE `menu_rol`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permiso`
--
ALTER TABLE `permiso`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permiso_rol`
--
ALTER TABLE `permiso_rol`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `publicacion`
--
ALTER TABLE `publicacion`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `publicacion_imagen`
--
ALTER TABLE `publicacion_imagen`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `publicacion_tag`
--
ALTER TABLE `publicacion_tag`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `publicacion_video`
--
ALTER TABLE `publicacion_video`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rol`
--
ALTER TABLE `rol`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `taxonomia`
--
ALTER TABLE `taxonomia`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tipo_menu`
--
ALTER TABLE `tipo_menu`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usuario_rol`
--
ALTER TABLE `usuario_rol`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
ADD CONSTRAINT `fk_menu_menu1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`),
ADD CONSTRAINT `fk_menu_tipo_menu1` FOREIGN KEY (`tipo_menu_id`) REFERENCES `tipo_menu` (`id`);

--
-- Constraints for table `menu_rol`
--
ALTER TABLE `menu_rol`
ADD CONSTRAINT `fk_menu_rol_menu1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`),
ADD CONSTRAINT `fk_menu_rol_rol1` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`);

--
-- Constraints for table `permiso_rol`
--
ALTER TABLE `permiso_rol`
ADD CONSTRAINT `fk_rolo_permiso_permisos1` FOREIGN KEY (`permiso_id`) REFERENCES `permiso` (`id`),
ADD CONSTRAINT `fk_permiso_rol_rol1` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `publicacion`
--
ALTER TABLE `publicacion`
ADD CONSTRAINT `publicacion_ibfk_1` FOREIGN KEY (`taxonomia_id`) REFERENCES `taxonomia` (`id`);

--
-- Constraints for table `publicacion_imagen`
--
ALTER TABLE `publicacion_imagen`
ADD CONSTRAINT `publicacion_imagen_ibfk_1` FOREIGN KEY (`publicacion_id`) REFERENCES `publicacion` (`id`);

--
-- Constraints for table `publicacion_tag`
--
ALTER TABLE `publicacion_tag`
ADD CONSTRAINT `publicacion_tag_ibfk_1` FOREIGN KEY (`publicacion_id`) REFERENCES `publicacion` (`id`);

--
-- Constraints for table `publicacion_video`
--
ALTER TABLE `publicacion_video`
ADD CONSTRAINT `publicacion_video_ibfk_1` FOREIGN KEY (`publicacion_id`) REFERENCES `publicacion` (`id`);

--
-- Constraints for table `taxonomia`
--
ALTER TABLE `taxonomia`
ADD CONSTRAINT `taxonomia_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `taxonomia` (`id`);

--
-- Constraints for table `usuario_rol`
--
ALTER TABLE `usuario_rol`
ADD CONSTRAINT `fk_usuario_rol_usuario2` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`),
ADD CONSTRAINT `fk_usuario_rol_rol1` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`);
