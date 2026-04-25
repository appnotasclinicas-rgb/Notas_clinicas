-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-04-2026 a las 08:21:06
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hospital_tehuacan`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id_admi` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `sexo` varchar(15) DEFAULT NULL,
  `domicilio` varchar(255) DEFAULT NULL,
  `matricula` varchar(255) DEFAULT NULL,
  `num_telefono` varchar(20) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `RFC` varchar(13) DEFAULT NULL,
  `CURP` varchar(18) DEFAULT NULL,
  `NSS` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultas`
--

CREATE TABLE `consultas` (
  `id_consulta` int(11) NOT NULL,
  `id_paciente` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT current_timestamp(),
  `peso` varchar(10) DEFAULT NULL,
  `talla` varchar(10) DEFAULT NULL,
  `presion_arterial` varchar(15) DEFAULT NULL,
  `temperatura` varchar(10) DEFAULT NULL,
  `diagnostico` text DEFAULT NULL,
  `tratamiento` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `consultas`
--

INSERT INTO `consultas` (`id_consulta`, `id_paciente`, `fecha`, `peso`, `talla`, `presion_arterial`, `temperatura`, `diagnostico`, `tratamiento`) VALUES
(1, 1, '2026-04-22 21:04:01', '84', '1.60', '80/80', '30', 'El paciente sufre de obesidad tipo 1', 'Ir al área de nutricion para establecer una dieta estricta por 3 meses para regularizar su peso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicamentos`
--

CREATE TABLE `medicamentos` (
  `id_medicamento` int(11) NOT NULL,
  `nombre_generico` varchar(100) NOT NULL,
  `presentacion` varchar(100) DEFAULT NULL,
  `via_administracion` varchar(50) DEFAULT NULL,
  `indicacion_principal` text DEFAULT NULL,
  `categoria` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medicamentos`
--

INSERT INTO `medicamentos` (`id_medicamento`, `nombre_generico`, `presentacion`, `via_administracion`, `indicacion_principal`, `categoria`) VALUES
(1, 'Paracetamol', 'Tabletas 500 mg', 'Oral', 'Dolor leve a moderado, fiebre', 'Analgésicos'),
(2, 'Ibuprofeno', 'Grageas 400 mg', 'Oral', 'Inflamación, dolor muscular', 'Antiinflamatorios'),
(3, 'Amoxicilina', 'Cápsulas 500 mg', 'Oral', 'Infecciones respiratorias, de piel', 'Antibióticos'),
(4, 'Loratadina', 'Tabletas 10 mg', 'Oral', 'Alergias, rinitis', 'Antialérgicos'),
(5, 'Omeprazol', 'Cápsulas 20 mg', 'Oral', 'Gastritis, acidez, reflujo', 'Antiácidos/Antiulcerosos'),
(6, 'Ketorolaco', 'Tabletas 10 mg', 'Oral', 'Dolor moderado a severo', 'Analgésicos'),
(7, 'Tramadol', 'Cápsulas 50 mg', 'Oral', 'Dolor de moderado a severo', 'Analgésicos'),
(8, 'Metamizol sódico', 'Tabletas 500 mg', 'Oral', 'Dolor severo y fiebre', 'Analgésicos'),
(9, 'Clonixinato de Lisina', 'Tabletas 250 mg', 'Oral', 'Dolor agudo, cólicos', 'Analgésicos'),
(10, 'Diclofenaco', 'Grageas 100 mg', 'Oral', 'Inflamación y dolor articular', 'Antiinflamatorios'),
(11, 'Naproxeno', 'Tabletas 250 mg', 'Oral', 'Dolor leve a moderado, inflamación', 'Antiinflamatorios'),
(12, 'Meloxicam', 'Tabletas 15 mg', 'Oral', 'Artritis, inflamación severa', 'Antiinflamatorios'),
(13, 'Piroxicam', 'Cápsulas 20 mg', 'Oral', 'Dolor reumático, inflamación', 'Antiinflamatorios'),
(14, 'Ciprofloxacino', 'Tabletas 500 mg', 'Oral', 'Infecciones de vías urinarias', 'Antibióticos'),
(15, 'Azitromicina', 'Tabletas 500 mg', 'Oral', 'Infecciones respiratorias', 'Antibióticos'),
(16, 'Ceftriaxona', 'Solución inyectable 1 g', 'Intramuscular', 'Infecciones severas', 'Antibióticos'),
(17, 'Trimetoprima con Sulfametoxazol', 'Tabletas 80/400 mg', 'Oral', 'Infecciones gastrointestinales y respiratorias', 'Antibióticos'),
(18, 'Ácido Acetilsalicílico', 'Tabletas 500 mg', 'Oral', 'Fiebre, dolor leve', 'Antipiréticos'),
(19, 'Paracetamol Pediátrico', 'Suspensión 100 mg/ml', 'Oral', 'Fiebre en niños', 'Antipiréticos'),
(20, 'Ibuprofeno Infantil', 'Suspensión 2 g/100 ml', 'Oral', 'Fiebre y dolor infantil', 'Antipiréticos'),
(21, 'Cetirizina', 'Tabletas 10 mg', 'Oral', 'Rinitis alérgica, urticaria', 'Antialérgicos'),
(22, 'Clorfenamina', 'Jarabe 0.5 mg/ml', 'Oral', 'Alergias respiratorias, resfriado', 'Antialérgicos'),
(23, 'Desloratadina', 'Tabletas 5 mg', 'Oral', 'Alergias severas', 'Antialérgicos'),
(24, 'Dexametasona', 'Solución inyectable 8 mg', 'Intramuscular', 'Reacciones alérgicas graves', 'Antialérgicos'),
(25, 'Pantoprazol', 'Tabletas 40 mg', 'Oral', 'Reflujo, úlceras gástricas', 'Antiácidos/Antiulcerosos'),
(26, 'Famotidina', 'Tabletas 20 mg', 'Oral', 'Acidez estomacal, gastritis', 'Antiácidos/Antiulcerosos'),
(27, 'Magaldrato con Dimeticona', 'Suspensión oral', 'Oral', 'Acidez, agruras, gases', 'Antiácidos/Antiulcerosos'),
(28, 'Subcitrato de Bismuto', 'Tabletas 120 mg', 'Oral', 'Úlcera péptica, erradicación de H. pylori', 'Antiácidos/Antiulcerosos'),
(29, 'Loperamida', 'Tabletas 2 mg', 'Oral', 'Diarrea aguda', 'Antidiarreicos y Laxantes'),
(30, 'Subsalicilato de Bismuto', 'Suspensión oral', 'Oral', 'Diarrea, malestar estomacal', 'Antidiarreicos y Laxantes'),
(31, 'Senósidos A y B', 'Tabletas 8.6 mg', 'Oral', 'Estreñimiento', 'Antidiarreicos y Laxantes'),
(32, 'Plantago Psyllium', 'Polvo', 'Oral', 'Estreñimiento crónico', 'Antidiarreicos y Laxantes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `id_paciente` int(11) NOT NULL,
  `numero_expediente` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `sexo` varchar(15) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `direccion` text DEFAULT NULL,
  `curp` varchar(18) DEFAULT NULL,
  `fecha_registro` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`id_paciente`, `numero_expediente`, `nombre`, `fecha_nacimiento`, `sexo`, `telefono`, `direccion`, `curp`, `fecha_registro`) VALUES
(1, 'EXP-10024', 'Pérez García Juan', '1985-05-15', 'Masculino', '2381234567', 'Centro, Tehuacán', 'PEGA850515HPLRXX09', '2026-04-18 16:49:46'),
(2, 'EXP-10002', 'Hernandez Reyes Jocelin', '2013-07-13', 'Femenino', '2227929007', 'Sta. Inés 9, Zona Sin Asignación de Nombre de Col 94, 72350 Heroica Puebla de Zaragoza, Pue.', 'HERJ130707HPLYRRA1', '2026-04-22 20:51:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` varchar(50) DEFAULT 'medico',
  `fecha_creacion` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `correo`, `password`, `rol`, `fecha_creacion`) VALUES
(1, 'Dr. Jair', 'jair@hospital.com', '12345678', 'medico', '2026-04-17 00:37:56');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admi`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD UNIQUE KEY `RFC` (`RFC`),
  ADD UNIQUE KEY `CURP` (`CURP`);

--
-- Indices de la tabla `consultas`
--
ALTER TABLE `consultas`
  ADD PRIMARY KEY (`id_consulta`);

--
-- Indices de la tabla `medicamentos`
--
ALTER TABLE `medicamentos`
  ADD PRIMARY KEY (`id_medicamento`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id_paciente`),
  ADD UNIQUE KEY `numero_expediente` (`numero_expediente`),
  ADD UNIQUE KEY `curp` (`curp`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `consultas`
--
ALTER TABLE `consultas`
  MODIFY `id_consulta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `medicamentos`
--
ALTER TABLE `medicamentos`
  MODIFY `id_medicamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id_paciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
