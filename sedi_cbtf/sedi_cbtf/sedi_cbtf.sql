-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2024 at 01:01 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sedi_cbtf`
--

-- --------------------------------------------------------

--
-- Table structure for table `actividades_complementarias`
--

CREATE TABLE `actividades_complementarias` (
  `id_actividad_complementaria` int(4) NOT NULL,
  `tipo_actividad` varchar(30) COLLATE utf32_spanish_ci NOT NULL,
  `nombre_actividad` varchar(30) COLLATE utf32_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `alumnos`
--

CREATE TABLE `alumnos` (
  `id_alumno` int(11) NOT NULL,
  `nombre_alumno` varchar(30) COLLATE utf32_spanish_ci NOT NULL,
  `apellido_paterno` varchar(20) COLLATE utf32_spanish_ci NOT NULL,
  `apellido_materno` varchar(20) COLLATE utf32_spanish_ci DEFAULT NULL,
  `semestre` int(1) NOT NULL,
  `grupo` varchar(1) COLLATE utf32_spanish_ci NOT NULL,
  `CURP` varchar(18) COLLATE utf32_spanish_ci NOT NULL,
  `genero` varchar(20) COLLATE utf32_spanish_ci NOT NULL,
  `edad` int(3) NOT NULL,
  `fecha_naci` date NOT NULL,
  `lugar_nacimiento` varchar(30) COLLATE utf32_spanish_ci NOT NULL,
  `nacionalidad` varchar(30) COLLATE utf32_spanish_ci NOT NULL,
  `ayuda_español` varchar(2) COLLATE utf32_spanish_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf32_spanish_ci NOT NULL,
  `correo` varchar(50) COLLATE utf32_spanish_ci NOT NULL,
  `secundaria_egreso` varchar(50) COLLATE utf32_spanish_ci NOT NULL,
  `promedio_secundaria` double(2,2) NOT NULL,
  `beca_bancomer` varchar(2) COLLATE utf32_spanish_ci NOT NULL,
  `nss_issste` varchar(2) COLLATE utf32_spanish_ci NOT NULL,
  `discapacidad_mo_psi` varchar(2) COLLATE utf32_spanish_ci NOT NULL,
  `detalles_discapacidad` varchar(100) COLLATE utf32_spanish_ci DEFAULT NULL,
  `documento_validacion_discapacidad` varchar(2) COLLATE utf32_spanish_ci DEFAULT NULL,
  `alergia` varchar(2) COLLATE utf32_spanish_ci NOT NULL,
  `detalles_alergias` varchar(100) COLLATE utf32_spanish_ci DEFAULT NULL,
  `requiere_medicacion` varchar(2) COLLATE utf32_spanish_ci NOT NULL,
  `medicacion_necesaria` varchar(100) COLLATE utf32_spanish_ci DEFAULT NULL,
  `lentes_graduados` varchar(2) COLLATE utf32_spanish_ci NOT NULL,
  `aparatos_asistencia` varchar(2) COLLATE utf32_spanish_ci NOT NULL,
  `detalles_aparatos_asistencia` varchar(100) COLLATE utf32_spanish_ci DEFAULT NULL,
  `calle_numero` varchar(100) COLLATE utf32_spanish_ci NOT NULL,
  `colonia` varchar(50) COLLATE utf32_spanish_ci NOT NULL,
  `codigo_postal` int(5) NOT NULL,
  `dispositivo_internet` varchar(2) COLLATE utf32_spanish_ci NOT NULL,
  `numero_dispositivos` int(3) NOT NULL,
  `nombre_tutor` varchar(100) COLLATE utf32_spanish_ci NOT NULL,
  `telefono_tutor` varchar(15) COLLATE utf32_spanish_ci NOT NULL,
  `nombre_madre` varchar(100) COLLATE utf32_spanish_ci DEFAULT NULL,
  `telefono_madre` varchar(15) COLLATE utf32_spanish_ci DEFAULT NULL,
  `nombre_padre` varchar(100) COLLATE utf32_spanish_ci DEFAULT NULL,
  `telefono_padre` varchar(15) COLLATE utf32_spanish_ci DEFAULT NULL,
  `EP_acta_nacimiento` varchar(2) COLLATE utf32_spanish_ci NOT NULL,
  `EP_CURP` varchar(2) COLLATE utf32_spanish_ci NOT NULL,
  `EP_comprobante_domicilio` varchar(2) COLLATE utf32_spanish_ci NOT NULL,
  `EP_nss_issste` varchar(2) COLLATE utf32_spanish_ci NOT NULL,
  `EP_certificado_secundaria` varchar(2) COLLATE utf32_spanish_ci NOT NULL,
  `EP_ficha_psicopedagogica` varchar(2) COLLATE utf32_spanish_ci NOT NULL,
  `EP_ficha_buena_conducta` varchar(2) COLLATE utf32_spanish_ci NOT NULL,
  `EP_fotografias` varchar(2) COLLATE utf32_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asignatura`
--

CREATE TABLE `asignatura` (
  `id_asignatura` int(4) NOT NULL,
  `nombre_asignatura` varchar(100) COLLATE utf32_spanish_ci NOT NULL,
  `tipo_programa` varchar(30) COLLATE utf32_spanish_ci NOT NULL,
  `horas` int(3) NOT NULL,
  `semestre` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `docentes`
--

CREATE TABLE `docentes` (
  `id_docente` int(11) NOT NULL,
  `nombre_docente` varchar(30) COLLATE utf32_spanish_ci NOT NULL,
  `apellido_paterno` varchar(20) COLLATE utf32_spanish_ci NOT NULL,
  `apellido_materno` varchar(20) COLLATE utf32_spanish_ci DEFAULT NULL,
  `RFC` varchar(13) COLLATE utf32_spanish_ci NOT NULL,
  `grupo_edad` varchar(20) COLLATE utf32_spanish_ci NOT NULL,
  `tipo_plaza` varchar(20) COLLATE utf32_spanish_ci NOT NULL,
  `formacion_academica` varchar(50) COLLATE utf32_spanish_ci NOT NULL,
  `antiguedad` varchar(30) COLLATE utf32_spanish_ci NOT NULL,
  `nivel_estudios` varchar(30) COLLATE utf32_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `especialidad`
--

CREATE TABLE `especialidad` (
  `id_especialidad` int(4) NOT NULL,
  `nombre_especialidad` varchar(100) COLLATE utf32_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grupo`
--

CREATE TABLE `grupo` (
  `id_grupo` int(11) NOT NULL,
  `id_especialidad` varchar(20) COLLATE utf32_spanish_ci NOT NULL,
  `semestre` int(2) NOT NULL,
  `modalidad` varchar(15) COLLATE utf32_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modulos`
--

CREATE TABLE `modulos` (
  `id_modulo` int(4) NOT NULL,
  `nombre_modulo` varchar(100) COLLATE utf32_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `submodulo`
--

CREATE TABLE `submodulo` (
  `id_submodulo` int(4) NOT NULL,
  `nombre_submodulo` varchar(100) COLLATE utf32_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tipo_programa`
--

CREATE TABLE `tipo_programa` (
  `id_tipo_programa` int(4) NOT NULL,
  `tipo_programa` varchar(30) COLLATE utf32_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(4) NOT NULL,
  `perfil` varchar(20) COLLATE utf32_spanish_ci NOT NULL,
  `usuario` varchar(30) COLLATE utf32_spanish_ci NOT NULL,
  `password` varchar(30) COLLATE utf32_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actividades_complementarias`
--
ALTER TABLE `actividades_complementarias`
  ADD PRIMARY KEY (`id_actividad_complementaria`);

--
-- Indexes for table `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id_alumno`);

--
-- Indexes for table `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`id_asignatura`);

--
-- Indexes for table `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`id_docente`);

--
-- Indexes for table `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`id_grupo`);

--
-- Indexes for table `modulos`
--
ALTER TABLE `modulos`
  ADD PRIMARY KEY (`id_modulo`);

--
-- Indexes for table `submodulo`
--
ALTER TABLE `submodulo`
  ADD PRIMARY KEY (`id_submodulo`);

--
-- Indexes for table `tipo_programa`
--
ALTER TABLE `tipo_programa`
  ADD PRIMARY KEY (`id_tipo_programa`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
