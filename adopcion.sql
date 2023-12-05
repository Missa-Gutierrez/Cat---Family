-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-12-2023 a las 03:45:05
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
-- Base de datos: `adopcion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gatos`
--

CREATE TABLE `gatos` (
  `ID` varchar(3) NOT NULL,
  `NOMBRE_GATO` varchar(15) NOT NULL,
  `SEXO` varchar(6) NOT NULL,
  `EDAD` varchar(1) NOT NULL,
  `ENFERMEDADES` varchar(60) NOT NULL,
  `CURP` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `gatos`
--

INSERT INTO `gatos` (`ID`, `NOMBRE_GATO`, `SEXO`, `EDAD`, `ENFERMEDADES`, `CURP`) VALUES
('001', 'Milo', 'macho', '9', 'Insuficiencia renal crónica', 'CUTZ890318HPLTLG31'),
('002', 'Félix', 'hembra', '8', 'Hipertiroidismo', 'LBVG130112HJCUHN32'),
('003', 'Óscar', 'macho', '6', 'Diabetes Mellitus', 'MSGQ671225HVZPJF59'),
('004', 'Pelusa', 'macho', '7', 'Infección por retrovirus', 'NZJK821104MCSCHF72'),
('005', 'Whiskas', 'hembra', '8', 'Diabetes Mellitus', 'VDWI591102MCLWHG26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `CURP` varchar(18) NOT NULL,
  `NOMBRE` varchar(30) NOT NULL,
  `DIRECCION` varchar(60) NOT NULL,
  `FECHA_ADOPCION` varchar(10) NOT NULL,
  `TELEFONO` varchar(10) NOT NULL,
  `CORREO` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`CURP`, `NOMBRE`, `DIRECCION`, `FECHA_ADOPCION`, `TELEFONO`, `CORREO`) VALUES
('CUTZ890318HPLTLG31', 'Carlos', 'calle Paseo de Villerias #426', '2023/9/11', '4493256987', 'carlos@gmail.com'),
('GUMJ060628HGTTRHA1', 'Misael', 'Av. Colinas de San Patricio #603', '2023-12-04', '4491122978', 'misael@gmail.com'),
('GUTJ760712HJCTPN05', 'carlos', 'Av. Colinas de San Patricio #603', '2023-12-04', '4499114318', 'gutierrez.tapia.carlos@gmail.com'),
('LBVG130112HJCUHN32', 'Luis', 'calle Diego Rivera #230', '2023/11/23', '4497896541', 'luis@gmail.com'),
('MSGQ671225HVZPJF59', 'Manuel', 'calle hacienda Carboneras #188 Fracc. Haciendas de Aguascali', '2023/09/30', '4492365874', 'manuel@gmail.com'),
('NZJK821104MCSCHF72', 'Karla', 'calle Huanusco #101 Fracc. Ojocaliente 3', '2023/10/14', '4495684756', 'karla@gmail.com'),
('VDWI591102MCLWHG26', 'Valeria', 'calle Palo Alto #521 Fracc. Ojocaliente 1', '2023/09/21', '4493256874', 'valeria@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_pass`
--

CREATE TABLE `usuarios_pass` (
  `USUARIOS` varchar(20) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios_pass`
--

INSERT INTO `usuarios_pass` (`USUARIOS`, `PASSWORD`) VALUES
('Misael', '1227'),
('Charly', 'batman');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `gatos`
--
ALTER TABLE `gatos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CURP` (`CURP`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`CURP`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `gatos`
--
ALTER TABLE `gatos`
  ADD CONSTRAINT `gatos_ibfk_1` FOREIGN KEY (`CURP`) REFERENCES `usuario` (`CURP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
