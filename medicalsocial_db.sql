-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-12-2016 a las 06:11:32
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `medicalsocial_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(20) NOT NULL,
  `dui` varchar(10) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `apellido` varchar(250) NOT NULL,
  `nickname` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nivel` varchar(20) NOT NULL,
  `estado` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id_admin`, `dui`, `nombre`, `apellido`, `nickname`, `password`, `nivel`, `estado`) VALUES
(1, '019278738', 'Dimas', 'Rovira', 'richard', '2e80a184267270fc8a50f3f9aef3902e', 'admin', 'activo'),
(2, '812631263', 'Keiry', 'Hernandez', 'keiry', '2e80a184267270fc8a50f3f9aef3902e', 'admin', 'activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultorio`
--

CREATE TABLE `consultorio` (
  `id_consultorio` int(11) NOT NULL,
  `planta` int(11) NOT NULL,
  `numero_local` varchar(11) NOT NULL,
  `direccion` varchar(500) NOT NULL,
  `telefono` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `consultorio`
--

INSERT INTO `consultorio` (`id_consultorio`, `planta`, `numero_local`, `direccion`, `telefono`) VALUES
(1, 8, '2B', 'Barrio San Antonio, Conchagua.', '26885516'),
(2, 8, '56', 'Barrio El Calvario, San Miguel.', '24545785'),
(3, 3, '2B', 'Barrio San Antonio, Conchagua.', '65135465'),
(4, 1, '23', 'San Miguel', '22090765');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id_depa` int(11) NOT NULL,
  `nombre` varchar(550) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id_depa`, `nombre`) VALUES
(1, 'Ahuachapan'),
(2, 'Cabañas'),
(3, 'Chalatenango'),
(4, 'Cuscatlán'),
(5, 'La Libertad'),
(6, 'La Paz'),
(7, 'La Unión'),
(8, 'Morazán'),
(9, 'San Miguel'),
(10, 'San Salvador'),
(11, 'San Vicente'),
(12, 'Santa Ana'),
(13, 'Sonsonate'),
(14, 'Usulután');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctores`
--

CREATE TABLE `doctores` (
  `id_doctores` int(20) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `imagen` longblob NOT NULL,
  `nit` varchar(20) NOT NULL,
  `direccion` varchar(500) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `especialidad` varchar(50) NOT NULL,
  `registro` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nivel` varchar(20) NOT NULL,
  `estado` varchar(15) NOT NULL,
  `id_consultorio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `doctores`
--

INSERT INTO `doctores` (`id_doctores`, `nombre`, `apellido`, `imagen`, `nit`, `direccion`, `telefono`, `especialidad`, `registro`, `email`, `password`, `nivel`, `estado`, `id_consultorio`) VALUES
(1, 'Bryan', 'Martinez', 0x2e2e2f2e2e2f666f746f732f, '98768709088098', 'La Paz', '22387987', 'OdontÃ³logosâ€Ž', '8987789FF', 'bryan@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 'doctor', '', 2),
(2, 'Ronny', 'Blanco', 0x2e2e2f2e2e2f666f746f732f, '12414124124124', 'CuscatlÃ¡n', '22423424', 'EpidemiÃ³logosâ€Ž', '12412ASD', 'ronnyb@hotmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 'doctor', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidad`
--

CREATE TABLE `especialidad` (
  `id_especialidad` int(11) NOT NULL,
  `especialidad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `especialidad`
--

INSERT INTO `especialidad` (`id_especialidad`, `especialidad`) VALUES
(1, 'Anatomopatólogos'),
(2, 'Anestesiólogos'),
(3, 'Cardiologos'),
(5, 'Cirujanos'),
(6, 'Dermatólogos'),
(7, 'Diabetólogos'),
(8, 'Endocrinólogos'),
(9, 'Epidemiólogos'),
(10, 'Fisiólogos'),
(11, 'Gastroenterólogos'),
(12, 'Gerontólogos'),
(13, 'Ginecólogos'),
(14, 'Hematólogos'),
(15, 'Higienistas'),
(16, 'Neumólogos'),
(17, 'Neurocirujanos'),
(18, 'Neurólogos'),
(19, 'Nutricionistas'),
(20, 'Medicina General'),
(21, 'Obstetras'),
(22, 'Odontólogos'),
(23, 'Oftalmólogos'),
(24, 'Oncólogos'),
(25, 'Optometristas'),
(26, 'Otorrinolaringólogos'),
(27, 'Pediatras'),
(28, 'Psiquiatras'),
(29, 'Radiólogos'),
(30, 'Reumatólogos'),
(31, 'Tisiólogos'),
(32, 'Toxicólogos'),
(33, 'Urólogos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `id_pacientes` int(20) NOT NULL,
  `dui` varchar(10) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `imagen` longblob NOT NULL,
  `nit` varchar(14) NOT NULL,
  `direccion` varchar(1000) NOT NULL,
  `telefono` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `nickname` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `estado_civil` varchar(50) NOT NULL,
  `nivel` varchar(20) NOT NULL,
  `estado` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`id_pacientes`, `dui`, `nombre`, `apellido`, `imagen`, `nit`, `direccion`, `telefono`, `email`, `nickname`, `password`, `genero`, `estado_civil`, `nivel`, `estado`) VALUES
(2, '782198371', 'Beatriz', 'Zuniga', 0x2e2e2f2e2e2f666f746f732f, '28374628394762', 'San Miguel', '29784613', 'beatrizzuniga@edu.sv', 'bea', '4d186321c1a7f0f354b297e8914ab240', 'Masculino', 'Soltero/a', 'paciente', 'activo'),
(3, '982734890', 'Lisseth', 'Bran', 0x2e2e2f2e2e2f666f746f732f31333733373733385f3937373939343039353635323236315f383538323930393831313930353734383632385f6f2e6a7067, '93847394867393', 'San Miguel', '21278898', 'lisseth@hotmail.com', 'liss', '2e80a184267270fc8a50f3f9aef3902e', 'Femenino', 'Soltero/a', 'paciente', 'activo'),
(4, '009128309', 'Ronny', 'Blanco', 0x2e2e2f2e2e2f666f746f732f32303134313232335f3136313031302e6a7067, '87129847109284', 'San Miguel', '22223131', 'ronnyblanco19@gmail.com', 'ronny', '2e80a184267270fc8a50f3f9aef3902e', 'Masculino', 'Soltero/a', 'paciente', 'activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `super_admin`
--

CREATE TABLE `super_admin` (
  `id_super_admin` int(20) NOT NULL,
  `dui` varchar(10) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `apellido` varchar(250) NOT NULL,
  `nickname` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nivel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `super_admin`
--

INSERT INTO `super_admin` (`id_super_admin`, `dui`, `nombre`, `apellido`, `nickname`, `password`, `nivel`) VALUES
(1, '6516515085', 'Willian', 'MelÃ©ndez', 'will', '2e80a184267270fc8a50f3f9aef3902e', 'super_admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `consultorio`
--
ALTER TABLE `consultorio`
  ADD PRIMARY KEY (`id_consultorio`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_depa`);

--
-- Indices de la tabla `doctores`
--
ALTER TABLE `doctores`
  ADD PRIMARY KEY (`id_doctores`);

--
-- Indices de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  ADD PRIMARY KEY (`id_especialidad`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id_pacientes`);

--
-- Indices de la tabla `super_admin`
--
ALTER TABLE `super_admin`
  ADD PRIMARY KEY (`id_super_admin`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `consultorio`
--
ALTER TABLE `consultorio`
  MODIFY `id_consultorio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id_depa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `doctores`
--
ALTER TABLE `doctores`
  MODIFY `id_doctores` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  MODIFY `id_especialidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id_pacientes` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `super_admin`
--
ALTER TABLE `super_admin`
  MODIFY `id_super_admin` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
