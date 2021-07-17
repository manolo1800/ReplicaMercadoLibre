-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 28, 2021 at 03:30 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ReplicaMercadoLibre`
--

-- --------------------------------------------------------

--
-- Table structure for table `Answers`
--

CREATE TABLE `Answers` (
  `AnswerId` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `QuestionId` int(11) DEFAULT NULL,
  `Answer` varchar(255) NOT NULL,
  `DateOfQuestion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Categories`
--

CREATE TABLE `Categories` (
  `CategoryId` int(11) NOT NULL,
  `CategoryName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Categories`
--

INSERT INTO `Categories` (`CategoryId`, `CategoryName`) VALUES
(1, 'Accesorios para Vehículos'),
(2, 'Agro'),
(3, 'Alimentos y Bebidas'),
(4, 'Animales y Mascotas'),
(5, 'Antigüedades y Colecciones'),
(6, 'Arte, Papelería y Mercería'),
(7, 'Bebés'),
(8, 'Cámaras y Accesorios'),
(9, 'Carros, Motos y Otros'),
(10, 'Celulares y Teléfonos'),
(11, 'Computación'),
(12, 'Consolas y Videojuegos'),
(13, 'Construcción'),
(14, 'Deportes y Fitness'),
(15, 'Electrodomésticos'),
(16, 'Electrónica, Audio y Video'),
(17, 'Estética y Belleza'),
(18, 'Herramientas'),
(19, 'Hogar y Muebles'),
(20, 'Industrias'),
(21, 'Inmuebles'),
(22, 'Instrumentos Musicales'),
(23, 'Juegos y Juguetes'),
(24, 'Libros, Revistas y Comics'),
(25, 'Música, Películas y Series'),
(26, 'Recuerdos, Cotillón y Fiestas'),
(27, 'Relojes, Joyas y Bisutería'),
(28, 'Ropa, Zapatos y Accesorios'),
(29, 'Servicios'),
(30, 'Otras Categorías');

-- --------------------------------------------------------

--
-- Table structure for table `Countries`
--

CREATE TABLE `Countries` (
  `CountryId` int(11) NOT NULL,
  `Code` smallint(6) DEFAULT NULL,
  `Iso3166a1` char(2) DEFAULT NULL,
  `Iso3166a2` char(3) DEFAULT NULL,
  `CountryName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Countries`
--

INSERT INTO `Countries` (`CountryId`, `Code`, `Iso3166a1`, `Iso3166a2`, `CountryName`) VALUES
(1, 4, 'AF', 'AFG', 'Afganistán'),
(2, 248, 'AX', 'ALA', 'Islas Gland'),
(3, 8, 'AL', 'ALB', 'Albania'),
(4, 276, 'DE', 'DEU', 'Alemania'),
(5, 20, 'AD', 'AND', 'Andorra'),
(6, 24, 'AO', 'AGO', 'Angola'),
(7, 660, 'AI', 'AIA', 'Anguilla'),
(8, 10, 'AQ', 'ATA', 'Antártida'),
(9, 28, 'AG', 'ATG', 'Antigua y Barbuda'),
(10, 530, 'AN', 'ANT', 'Antillas Holandesas'),
(11, 682, 'SA', 'SAU', 'Arabia Saudí'),
(12, 12, 'DZ', 'DZA', 'Argelia'),
(13, 32, 'AR', 'ARG', 'Argentina'),
(14, 51, 'AM', 'ARM', 'Armenia'),
(15, 533, 'AW', 'ABW', 'Aruba'),
(16, 36, 'AU', 'AUS', 'Australia'),
(17, 40, 'AT', 'AUT', 'Austria'),
(18, 31, 'AZ', 'AZE', 'Azerbaiyán'),
(19, 44, 'BS', 'BHS', 'Bahamas'),
(20, 48, 'BH', 'BHR', 'Bahréin'),
(21, 50, 'BD', 'BGD', 'Bangladesh'),
(22, 52, 'BB', 'BRB', 'Barbados'),
(23, 112, 'BY', 'BLR', 'Bielorrusia'),
(24, 56, 'BE', 'BEL', 'Bélgica'),
(25, 84, 'BZ', 'BLZ', 'Belice'),
(26, 204, 'BJ', 'BEN', 'Benin'),
(27, 60, 'BM', 'BMU', 'Bermudas'),
(28, 64, 'BT', 'BTN', 'Bhután'),
(29, 68, 'BO', 'BOL', 'Bolivia'),
(30, 70, 'BA', 'BIH', 'Bosnia y Herzegovina'),
(31, 72, 'BW', 'BWA', 'Botsuana'),
(32, 74, 'BV', 'BVT', 'Isla Bouvet'),
(33, 76, 'BR', 'BRA', 'Brasil'),
(34, 96, 'BN', 'BRN', 'Brunéi'),
(35, 100, 'BG', 'BGR', 'Bulgaria'),
(36, 854, 'BF', 'BFA', 'Burkina Faso'),
(37, 108, 'BI', 'BDI', 'Burundi'),
(38, 132, 'CV', 'CPV', 'Cabo Verde'),
(39, 136, 'KY', 'CYM', 'Islas Caimán'),
(40, 116, 'KH', 'KHM', 'Camboya'),
(41, 120, 'CM', 'CMR', 'Camerún'),
(42, 124, 'CA', 'CAN', 'Canadá'),
(43, 140, 'CF', 'CAF', 'República Centroafricana'),
(44, 148, 'TD', 'TCD', 'Chad'),
(45, 203, 'CZ', 'CZE', 'República Checa'),
(46, 152, 'CL', 'CHL', 'Chile'),
(47, 156, 'CN', 'CHN', 'China'),
(48, 196, 'CY', 'CYP', 'Chipre'),
(49, 162, 'CX', 'CXR', 'Isla de Navidad'),
(50, 336, 'VA', 'VAT', 'Ciudad del Vaticano'),
(51, 166, 'CC', 'CCK', 'Islas Cocos'),
(52, 170, 'CO', 'COL', 'Colombia'),
(53, 174, 'KM', 'COM', 'Comoras'),
(54, 180, 'CD', 'COD', 'República Democrática del Congo'),
(55, 178, 'CG', 'COG', 'Congo'),
(56, 184, 'CK', 'COK', 'Islas Cook'),
(57, 408, 'KP', 'PRK', 'Corea del Norte'),
(58, 410, 'KR', 'KOR', 'Corea del Sur'),
(59, 384, 'CI', 'CIV', 'Costa de Marfil'),
(60, 188, 'CR', 'CRI', 'Costa Rica'),
(61, 191, 'HR', 'HRV', 'Croacia'),
(62, 192, 'CU', 'CUB', 'Cuba'),
(63, 208, 'DK', 'DNK', 'Dinamarca'),
(64, 212, 'DM', 'DMA', 'Dominica'),
(65, 214, 'DO', 'DOM', 'República Dominicana'),
(66, 218, 'EC', 'ECU', 'Ecuador'),
(67, 818, 'EG', 'EGY', 'Egipto'),
(68, 222, 'SV', 'SLV', 'El Salvador'),
(69, 784, 'AE', 'ARE', 'Emiratos Árabes Unidos'),
(70, 232, 'ER', 'ERI', 'Eritrea'),
(71, 703, 'SK', 'SVK', 'Eslovaquia'),
(72, 705, 'SI', 'SVN', 'Eslovenia'),
(73, 724, 'ES', 'ESP', 'España'),
(74, 581, 'UM', 'UMI', 'Islas ultramarinas de Estados Unidos'),
(75, 840, 'US', 'USA', 'Estados Unidos'),
(76, 233, 'EE', 'EST', 'Estonia'),
(77, 231, 'ET', 'ETH', 'Etiopía'),
(78, 234, 'FO', 'FRO', 'Islas Feroe'),
(79, 608, 'PH', 'PHL', 'Filipinas'),
(80, 246, 'FI', 'FIN', 'Finlandia'),
(81, 242, 'FJ', 'FJI', 'Fiyi'),
(82, 250, 'FR', 'FRA', 'Francia'),
(83, 266, 'GA', 'GAB', 'Gabón'),
(84, 270, 'GM', 'GMB', 'Gambia'),
(85, 268, 'GE', 'GEO', 'Georgia'),
(86, 239, 'GS', 'SGS', 'Islas Georgias del Sur y Sandwich del Sur'),
(87, 288, 'GH', 'GHA', 'Ghana'),
(88, 292, 'GI', 'GIB', 'Gibraltar'),
(89, 308, 'GD', 'GRD', 'Granada'),
(90, 300, 'GR', 'GRC', 'Grecia'),
(91, 304, 'GL', 'GRL', 'Groenlandia'),
(92, 312, 'GP', 'GLP', 'Guadalupe'),
(93, 316, 'GU', 'GUM', 'Guam'),
(94, 320, 'GT', 'GTM', 'Guatemala'),
(95, 254, 'GF', 'GUF', 'Guayana Francesa'),
(96, 324, 'GN', 'GIN', 'Guinea'),
(97, 226, 'GQ', 'GNQ', 'Guinea Ecuatorial'),
(98, 624, 'GW', 'GNB', 'Guinea-Bissau'),
(99, 328, 'GY', 'GUY', 'Guyana'),
(100, 332, 'HT', 'HTI', 'Haití'),
(101, 334, 'HM', 'HMD', 'Islas Heard y McDonald'),
(102, 340, 'HN', 'HND', 'Honduras'),
(103, 344, 'HK', 'HKG', 'Hong Kong'),
(104, 348, 'HU', 'HUN', 'Hungría'),
(105, 356, 'IN', 'IND', 'India'),
(106, 360, 'ID', 'IDN', 'Indonesia'),
(107, 364, 'IR', 'IRN', 'Irán'),
(108, 368, 'IQ', 'IRQ', 'Iraq'),
(109, 372, 'IE', 'IRL', 'Irlanda'),
(110, 352, 'IS', 'ISL', 'Islandia'),
(111, 376, 'IL', 'ISR', 'Israel'),
(112, 380, 'IT', 'ITA', 'Italia'),
(113, 388, 'JM', 'JAM', 'Jamaica'),
(114, 392, 'JP', 'JPN', 'Japón'),
(115, 400, 'JO', 'JOR', 'Jordania'),
(116, 398, 'KZ', 'KAZ', 'Kazajstán'),
(117, 404, 'KE', 'KEN', 'Kenia'),
(118, 417, 'KG', 'KGZ', 'Kirguistán'),
(119, 296, 'KI', 'KIR', 'Kiribati'),
(120, 414, 'KW', 'KWT', 'Kuwait'),
(121, 418, 'LA', 'LAO', 'Laos'),
(122, 426, 'LS', 'LSO', 'Lesotho'),
(123, 428, 'LV', 'LVA', 'Letonia'),
(124, 422, 'LB', 'LBN', 'Líbano'),
(125, 430, 'LR', 'LBR', 'Liberia'),
(126, 434, 'LY', 'LBY', 'Libia'),
(127, 438, 'LI', 'LIE', 'Liechtenstein'),
(128, 440, 'LT', 'LTU', 'Lituania'),
(129, 442, 'LU', 'LUX', 'Luxemburgo'),
(130, 446, 'MO', 'MAC', 'Macao'),
(131, 807, 'MK', 'MKD', 'ARY Macedonia'),
(132, 450, 'MG', 'MDG', 'Madagascar'),
(133, 458, 'MY', 'MYS', 'Malasia'),
(134, 454, 'MW', 'MWI', 'Malawi'),
(135, 462, 'MV', 'MDV', 'Maldivas'),
(136, 466, 'ML', 'MLI', 'Malí'),
(137, 470, 'MT', 'MLT', 'Malta'),
(138, 238, 'FK', 'FLK', 'Islas Malvinas'),
(139, 580, 'MP', 'MNP', 'Islas Marianas del Norte'),
(140, 504, 'MA', 'MAR', 'Marruecos'),
(141, 584, 'MH', 'MHL', 'Islas Marshall'),
(142, 474, 'MQ', 'MTQ', 'Martinica'),
(143, 480, 'MU', 'MUS', 'Mauricio'),
(144, 478, 'MR', 'MRT', 'Mauritania'),
(145, 175, 'YT', 'MYT', 'Mayotte'),
(146, 484, 'MX', 'MEX', 'México'),
(147, 583, 'FM', 'FSM', 'Micronesia'),
(148, 498, 'MD', 'MDA', 'Moldavia'),
(149, 492, 'MC', 'MCO', 'Mónaco'),
(150, 496, 'MN', 'MNG', 'Mongolia'),
(151, 500, 'MS', 'MSR', 'Montserrat'),
(152, 508, 'MZ', 'MOZ', 'Mozambique'),
(153, 104, 'MM', 'MMR', 'Myanmar'),
(154, 516, 'NA', 'NAM', 'Namibia'),
(155, 520, 'NR', 'NRU', 'Nauru'),
(156, 524, 'NP', 'NPL', 'Nepal'),
(157, 558, 'NI', 'NIC', 'Nicaragua'),
(158, 562, 'NE', 'NER', 'Níger'),
(159, 566, 'NG', 'NGA', 'Nigeria'),
(160, 570, 'NU', 'NIU', 'Niue'),
(161, 574, 'NF', 'NFK', 'Isla Norfolk'),
(162, 578, 'NO', 'NOR', 'Noruega'),
(163, 540, 'NC', 'NCL', 'Nueva Caledonia'),
(164, 554, 'NZ', 'NZL', 'Nueva Zelanda'),
(165, 512, 'OM', 'OMN', 'Omán'),
(166, 528, 'NL', 'NLD', 'Países Bajos'),
(167, 586, 'PK', 'PAK', 'Pakistán'),
(168, 585, 'PW', 'PLW', 'Palau'),
(169, 275, 'PS', 'PSE', 'Palestina'),
(170, 591, 'PA', 'PAN', 'Panamá'),
(171, 598, 'PG', 'PNG', 'Papúa Nueva Guinea'),
(172, 600, 'PY', 'PRY', 'Paraguay'),
(173, 604, 'PE', 'PER', 'Perú'),
(174, 612, 'PN', 'PCN', 'Islas Pitcairn'),
(175, 258, 'PF', 'PYF', 'Polinesia Francesa'),
(176, 616, 'PL', 'POL', 'Polonia'),
(177, 620, 'PT', 'PRT', 'Portugal'),
(178, 630, 'PR', 'PRI', 'Puerto Rico'),
(179, 634, 'QA', 'QAT', 'Qatar'),
(180, 826, 'GB', 'GBR', 'Reino Unido'),
(181, 638, 'RE', 'REU', 'Reunión'),
(182, 646, 'RW', 'RWA', 'Ruanda'),
(183, 642, 'RO', 'ROU', 'Rumania'),
(184, 643, 'RU', 'RUS', 'Rusia'),
(185, 732, 'EH', 'ESH', 'Sahara Occidental'),
(186, 90, 'SB', 'SLB', 'Islas Salomón'),
(187, 882, 'WS', 'WSM', 'Samoa'),
(188, 16, 'AS', 'ASM', 'Samoa Americana'),
(189, 659, 'KN', 'KNA', 'San Cristóbal y Nevis'),
(190, 674, 'SM', 'SMR', 'San Marino'),
(191, 666, 'PM', 'SPM', 'San Pedro y Miquelón'),
(192, 670, 'VC', 'VCT', 'San Vicente y las Granadinas'),
(193, 654, 'SH', 'SHN', 'Santa Helena'),
(194, 662, 'LC', 'LCA', 'Santa Lucía'),
(195, 678, 'ST', 'STP', 'Santo Tomé y Príncipe'),
(196, 686, 'SN', 'SEN', 'Senegal'),
(197, 891, 'CS', 'SCG', 'Serbia y Montenegro'),
(198, 690, 'SC', 'SYC', 'Seychelles'),
(199, 694, 'SL', 'SLE', 'Sierra Leona'),
(200, 702, 'SG', 'SGP', 'Singapur'),
(201, 760, 'SY', 'SYR', 'Siria'),
(202, 706, 'SO', 'SOM', 'Somalia'),
(203, 144, 'LK', 'LKA', 'Sri Lanka'),
(204, 748, 'SZ', 'SWZ', 'Suazilandia'),
(205, 710, 'ZA', 'ZAF', 'Sudáfrica'),
(206, 736, 'SD', 'SDN', 'Sudán'),
(207, 752, 'SE', 'SWE', 'Suecia'),
(208, 756, 'CH', 'CHE', 'Suiza'),
(209, 740, 'SR', 'SUR', 'Surinam'),
(210, 744, 'SJ', 'SJM', 'Svalbard y Jan Mayen'),
(211, 764, 'TH', 'THA', 'Tailandia'),
(212, 158, 'TW', 'TWN', 'Taiwán'),
(213, 834, 'TZ', 'TZA', 'Tanzania'),
(214, 762, 'TJ', 'TJK', 'Tayikistán'),
(215, 86, 'IO', 'IOT', 'Territorio Británico del Océano Índico'),
(216, 260, 'TF', 'ATF', 'Territorios Australes Franceses'),
(217, 626, 'TL', 'TLS', 'Timor Oriental'),
(218, 768, 'TG', 'TGO', 'Togo'),
(219, 772, 'TK', 'TKL', 'Tokelau'),
(220, 776, 'TO', 'TON', 'Tonga'),
(221, 780, 'TT', 'TTO', 'Trinidad y Tobago'),
(222, 788, 'TN', 'TUN', 'Túnez'),
(223, 796, 'TC', 'TCA', 'Islas Turcas y Caicos'),
(224, 795, 'TM', 'TKM', 'Turkmenistán'),
(225, 792, 'TR', 'TUR', 'Turquía'),
(226, 798, 'TV', 'TUV', 'Tuvalu'),
(227, 804, 'UA', 'UKR', 'Ucrania'),
(228, 800, 'UG', 'UGA', 'Uganda'),
(229, 858, 'UY', 'URY', 'Uruguay'),
(230, 860, 'UZ', 'UZB', 'Uzbekistán'),
(231, 548, 'VU', 'VUT', 'Vanuatu'),
(232, 862, 'VE', 'VEN', 'Venezuela'),
(233, 704, 'VN', 'VNM', 'Vietnam'),
(234, 92, 'VG', 'VGB', 'Islas Vírgenes Británicas'),
(235, 850, 'VI', 'VIR', 'Islas Vírgenes de los Estados Unidos'),
(236, 876, 'WF', 'WLF', 'Wallis y Futuna'),
(237, 887, 'YE', 'YEM', 'Yemen'),
(238, 262, 'DJ', 'DJI', 'Yibuti'),
(239, 894, 'ZM', 'ZMB', 'Zambia'),
(240, 716, 'ZW', 'ZWE', 'Zimbabue');

-- --------------------------------------------------------

--
-- Table structure for table `Images`
--

CREATE TABLE `Images` (
  `ImageId` int(11) NOT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `ImagePath` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Products`
--

CREATE TABLE `Products` (
  `ProductId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `Name` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `stock` int(255) NOT NULL,
  `Price` int(255) NOT NULL,
  `DateOfRegistration` datetime DEFAULT NULL,
  `DateOfUpdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Questions`
--

CREATE TABLE `Questions` (
  `QuestionId` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `Question` varchar(255) NOT NULL,
  `DateOfQuestion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Roles`
--

CREATE TABLE `Roles` (
  `RoleId` int(11) NOT NULL,
  `RoleName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Roles`
--

INSERT INTO `Roles` (`RoleId`, `RoleName`) VALUES
(1, 'user'),
(2, 'store'),
(3, 'official store');

-- --------------------------------------------------------

--
-- Table structure for table `Sales`
--

CREATE TABLE `Sales` (
  `SaleId` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `Cost` int(255) DEFAULT NULL,
  `Status` enum('done','sending','sent','received') DEFAULT NULL,
  `DateOfSale` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `SalesDetails`
--

CREATE TABLE `SalesDetails` (
  `SaleDetailId` int(11) NOT NULL,
  `SaleId` int(11) DEFAULT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `Units` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `SubCategories`
--

CREATE TABLE `SubCategories` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubcategoryName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `SubCategories`
--

INSERT INTO `SubCategories` (`SubCategoryId`, `CategoryId`, `SubcategoryName`) VALUES
(1, 1, 'Acc. para Carros y Camionetas'),
(2, 1, 'Acc. para Motos y Cuatrimotos'),
(3, 1, 'Acc. y Repuestos Náuticos'),
(4, 1, 'Accesorios para Camiones'),
(5, 1, 'Audio para Vehículos'),
(6, 1, 'Cauchos'),
(7, 1, 'GNC'),
(8, 1, 'Herramientas'),
(9, 1, 'Limpieza de Vehículos'),
(10, 1, 'Navegadores GPS'),
(11, 1, 'Performance'),
(12, 1, 'Repuestos Carros y Camionetas'),
(13, 1, 'Repuestos de Línea Pesada'),
(14, 1, 'Repuestos Motos y Cuatrimotos'),
(15, 1, 'Rines'),
(16, 1, 'Seguridad Vehicular'),
(17, 1, 'Service Programado'),
(18, 1, 'Tuning'),
(19, 1, 'Otros'),
(20, 2, 'Animales'),
(21, 2, 'Generadores de Energía'),
(22, 2, 'Infraestructura Rural'),
(23, 2, 'Insumos Agrícolas'),
(24, 2, 'Insumos Agroganaderos'),
(25, 2, 'Máquinas y Herramientas'),
(26, 2, 'Repuestos de Maquinaria Pesada'),
(27, 2, 'Otros'),
(30, 3, 'Almacén'),
(31, 3, 'Bebidas'),
(32, 3, 'Comida Preparada'),
(33, 3, 'Comidas Calientes'),
(34, 3, 'Congelados'),
(35, 3, 'Kéfir'),
(36, 3, 'Otros'),
(37, 4, 'Aves'),
(38, 4, 'Caballos'),
(39, 4, 'Conejos'),
(40, 4, 'Gatos'),
(41, 4, 'Insectos'),
(42, 4, 'Peces'),
(43, 4, 'Perros'),
(44, 4, 'Reptiles y Anfibios'),
(45, 4, 'Roedores'),
(46, 4, 'Otros Accesorios para Animales'),
(47, 5, 'Afiches de Películas y Libros'),
(48, 5, 'Antigüedades\r\n'),
(49, 5, 'Coleccionables de Deportes'),
(50, 5, 'Figuras y Esculturas'),
(51, 5, 'Filatelia'),
(52, 5, 'Militaría y Afines'),
(53, 5, 'Monedas y Billetes'),
(54, 5, 'Otros'),
(55, 6, 'Arte'),
(56, 6, 'Espejos Venecitas'),
(57, 6, 'Insumos para Hacer Velas'),
(58, 6, 'Mercería'),
(59, 6, 'Moldes para Jabones'),
(60, 6, 'Papelería'),
(61, 6, 'Piezas para Llaveros'),
(62, 6, 'Otros'),
(63, 7, 'Andaderas y Vehículos de Bebés'),
(64, 7, 'Artículos de Bebés para Baño'),
(65, 7, 'Artículos de Maternidad'),
(66, 7, 'Chupones y Mordedores'),
(67, 7, 'Comida para Bebés'),
(68, 7, 'Corrales'),
(69, 7, 'Cuarto del Bebé'),
(70, 7, 'Higiene y Cuidado del Bebé\r\n'),
(71, 7, 'Juguetes para Bebés'),
(72, 7, 'Lactancia y Alimentación'),
(73, 7, 'Paseo del Bebé'),
(74, 7, 'Ropa de Bebé'),
(75, 7, 'Salud del Bebé'),
(76, 7, 'Seguridad para Bebés'),
(77, 7, 'Otros'),
(78, 8, 'Accesorios para Cámaras'),
(79, 8, 'Álbumes y Portarretratos'),
(80, 8, 'Cables\r\n'),
(81, 8, 'Cámaras'),
(82, 8, 'Drones y Accesorios'),
(83, 8, 'Instrumentos Ópticos\r\n'),
(84, 8, 'Lentes y Filtros'),
(85, 8, 'Repuestos para Cámaras'),
(86, 8, 'Revelado y Laboratorio'),
(87, 8, 'Video Cámaras'),
(88, 8, 'Otros'),
(93, 9, 'Carros y Camionetas'),
(94, 9, 'Motos'),
(95, 9, 'Náutica\r\n'),
(96, 9, 'Otros Vehículos'),
(97, 10, 'Accesorios para Celulares\r\n'),
(98, 10, 'Celulares y Smartphones'),
(99, 10, 'Lentes de Realidad Virtual'),
(100, 10, 'Radios y WalkieTalkies'),
(101, 10, 'Repuestos para Celulares'),
(102, 10, 'Smartwatches y Accesorios'),
(103, 10, 'Tarifadores y Cabinas'),
(104, 10, 'Telefonía Fija e Inalámbrica'),
(105, 10, 'Telefonía VoIP'),
(106, 10, 'Otros'),
(107, 11, 'Accesorios de Antiestática'),
(108, 11, 'Accesorios para PC Gaming\r\n'),
(109, 11, 'Almacenamiento'),
(110, 11, 'Cables y Hubs USB'),
(111, 11, 'Componentes de PC\r\n'),
(112, 11, 'Conectividad y Redes'),
(113, 11, 'Impresión'),
(114, 11, 'Laptops y Accesorios'),
(115, 11, 'Lectores y Scanners'),
(116, 11, 'Limpieza y Cuidado de PCs'),
(117, 11, 'Monitores y Accesorios'),
(118, 11, 'Palms y Pocket PCs'),
(119, 11, 'PC de Escritorio'),
(120, 11, 'PC de Escritorio'),
(121, 11, 'Porta CDs, Cajas y Sobres'),
(122, 11, 'Protectores y UPS'),
(123, 11, 'Proyectores y Pantallas'),
(124, 11, 'Software'),
(125, 11, 'Tablets y Accesorios'),
(126, 11, 'Otros'),
(141, 12, 'Accesorios para Consolas'),
(142, 12, 'Accesorios para PC Gaming'),
(143, 12, 'Consolas'),
(144, 12, 'Pinballs y Arcade'),
(145, 12, 'Repuestos para Consolas'),
(146, 12, 'Videojuegos'),
(147, 12, 'Otros'),
(148, 13, 'Aberturas'),
(149, 13, 'Accesorios de Construcción'),
(150, 13, 'Baños y Sanitarios'),
(151, 13, 'Electricidad'),
(152, 13, 'Máquinas'),
(153, 13, 'Materiales de Obra'),
(154, 13, 'Mobiliario para Cocinas'),
(155, 13, 'Pinturería'),
(156, 13, 'Pisos y Revestimientos'),
(157, 13, 'Plomería'),
(158, 13, 'Otros'),
(159, 14, 'Artes Marciales y Boxeo'),
(160, 14, 'Bádminton'),
(161, 14, 'Balonmano'),
(162, 14, 'Básquet'),
(163, 14, 'Buceo'),
(164, 14, 'Camping, Caza y Pesca'),
(165, 14, 'Canoas, Kayaks e Inflables'),
(166, 14, 'Ciclismo'),
(167, 14, 'Equitación y Polo'),
(168, 14, 'Esgrima'),
(169, 14, 'Esqui y Snowboard'),
(170, 14, 'Fitness y Aerobics'),
(171, 14, 'Fútbol'),
(172, 14, 'Fútbol Americano'),
(173, 14, 'Golf'),
(174, 14, 'Hockey'),
(175, 14, 'Juegos de Salón'),
(176, 14, 'Kitesurf'),
(177, 14, 'Monopatines y Scooters'),
(178, 14, 'Montañismo y Trekking\r\n'),
(179, 14, 'Natación'),
(180, 14, 'Paintball'),
(181, 14, 'Parapente'),
(182, 14, 'Patín y Skateboard'),
(183, 14, 'Pilates y Yoga'),
(184, 14, 'Pulsómetros y Cronómetros'),
(185, 14, 'Ropa Deportiva'),
(186, 14, 'Rugby'),
(187, 14, 'Slackline'),
(188, 14, 'Softball y Beisbol'),
(189, 14, 'Suplementos y Shakers'),
(190, 14, 'Surf y Bodyboard'),
(191, 14, 'Tenis, Pádel y Squash'),
(192, 14, 'Tiro Deportivo\r\n'),
(193, 14, 'Voley'),
(194, 14, 'Wakeboard y Esqui Acuático'),
(195, 14, 'Windsurf'),
(196, 14, 'Zapatos Deportivos'),
(197, 14, 'Otros'),
(237, 15, 'Artefactos de Cuidado Personal'),
(238, 15, 'Climatización'),
(239, 15, 'Cocción'),
(240, 15, 'Dispensadores y Filtros'),
(241, 15, 'Lavado'),
(242, 15, 'Pequeños Electrodomésticos'),
(243, 15, 'Refrigeración'),
(244, 15, 'Otros'),
(253, 16, 'Accesorios para Audio y Video'),
(254, 16, 'Accesorios para TV'),
(255, 16, 'Audio'),
(256, 16, 'Cables'),
(257, 16, 'Componentes Electrónicos'),
(258, 16, 'Controles Remoto'),
(259, 16, 'Drones y Accesorios'),
(260, 16, 'Estuches y Bolsos'),
(261, 16, 'Media Streaming'),
(262, 16, 'Pilas y Cargadores\r\n'),
(263, 16, 'Proyectores y Pantallas'),
(264, 16, 'Repuestos para TV'),
(265, 16, 'TVs'),
(266, 16, 'Video'),
(267, 16, 'Otros'),
(283, 17, 'Alcoholes en Aerosol'),
(284, 17, 'Alcoholes en Gel'),
(285, 17, 'Alcoholes Etílicos'),
(286, 17, 'Artículos de Peluquería'),
(287, 17, 'Barbería'),
(288, 17, 'Cuidado de la Piel'),
(289, 17, 'Cuidado del Cabello'),
(290, 17, 'Depilación'),
(291, 17, 'Electrodomésticos de Belleza'),
(292, 17, 'Higiene Personal'),
(293, 17, 'Manicuría y Pedicuría'),
(294, 17, 'Maquillaje'),
(295, 17, 'Perfumes y Fragancias'),
(296, 17, 'Salud'),
(297, 17, 'Tratamientos de Belleza'),
(298, 17, 'Otros'),
(315, 18, 'Accesorios para Herramientas'),
(316, 18, 'Cajas y Organizadores'),
(317, 18, 'Herramientas Eléctricas'),
(318, 18, 'Herramientas Industriales'),
(319, 18, 'Herramientas Manuales'),
(320, 18, 'Herramientas Neumáticas'),
(321, 18, 'Herramientas para Jardín'),
(322, 18, 'Testers y Equipos de Medición'),
(323, 18, 'Otros'),
(345, 19, 'Adornos y Decoración del Hogar'),
(346, 19, 'Baños'),
(347, 19, 'Camas, Colchones y Accesorios'),
(348, 19, 'Cocina'),
(349, 19, 'Cuidado del Hogar y Lavandería'),
(350, 19, 'Iluminación para el Hogar'),
(351, 19, 'Jardines y Exteriores'),
(352, 19, 'Muebles para el Hogar'),
(353, 19, 'Organización para el Hogar'),
(354, 19, 'Seguridad para el Hogar'),
(355, 19, 'Textiles de Hogar y Decoración'),
(356, 19, 'Otros'),
(357, 20, 'Arquitectura y Diseño'),
(358, 20, 'Embalaje y Logística'),
(359, 20, 'Equipamiento para Comercios'),
(360, 20, 'Equipamiento para Oficinas'),
(361, 20, 'Gastronomía y Hotelería'),
(362, 20, 'Gráfica e Impresión'),
(363, 20, 'Herramientas Industriales'),
(364, 20, 'Publicidad y Promoción'),
(365, 20, 'Seguridad Laboral'),
(366, 20, 'Textil y Calzado'),
(367, 20, 'Uniformes y Ropa de Trabajo'),
(368, 20, 'Otros'),
(381, 21, 'Acción de Club'),
(382, 21, 'Anexos'),
(383, 21, 'Apartamentos'),
(384, 21, 'Casas'),
(385, 21, 'Edificios'),
(386, 21, 'Galpones'),
(387, 21, 'Habitaciones'),
(388, 21, 'Haciendas - Fincas'),
(389, 21, 'Hoteles y Resorts'),
(390, 21, 'Locales\r\n'),
(391, 21, 'Negocios'),
(392, 21, 'Oficinas'),
(393, 21, 'Parcelas de Cementerio'),
(394, 21, 'Terrenos'),
(395, 21, 'Townhouses'),
(423, 22, 'Baterías y Percusión'),
(424, 22, 'Cornetas'),
(425, 22, 'Equipos de DJ y Accesorios'),
(426, 22, 'Estudio de Grabación'),
(427, 22, 'Instrumentos de Cuerdas'),
(428, 22, 'Instrumentos de Viento'),
(429, 22, 'Metrónomos'),
(430, 22, 'Micrófonos y Amplificadores'),
(431, 22, 'Partituras y Letras'),
(432, 22, 'Pedaleras y Accesorios'),
(433, 22, 'Teclados y Pianos'),
(434, 22, 'Otros'),
(435, 23, 'Arte y Manualidades'),
(436, 23, 'Barajitas, Álbumes y Cromos'),
(437, 23, 'Casas y Carpas para Niños'),
(438, 23, 'Electrónicos para Niños'),
(439, 23, 'Hobbies'),
(440, 23, 'Instrumentos Musicales'),
(441, 23, 'Juegos de Agua y Playa'),
(442, 23, 'Juegos de Construcción'),
(443, 23, 'Juegos de Mesa y Cartas'),
(444, 23, 'Juegos de Parque y Aire Libre'),
(445, 23, 'Juegos de Salón'),
(446, 23, 'Juegos Inflables'),
(447, 23, 'Juguetes Antiestrés e Ingenio'),
(448, 23, 'Juguetes de Bromas'),
(449, 23, 'Juguetes de Oficios'),
(450, 23, 'Juguetes para Bebés'),
(451, 23, 'Mesas y Sillas para Niños'),
(452, 23, 'Muñecos y Muñecas'),
(453, 23, 'Patines y Patinetas'),
(454, 23, 'Peluches'),
(455, 23, 'Títeres y Marionetas'),
(456, 23, 'Vehículos de Juguete'),
(457, 23, 'Vehículos Montables para Niños'),
(458, 23, 'Otros'),
(489, 24, 'Catálogos'),
(490, 24, 'Comics'),
(491, 24, 'Libros'),
(492, 24, 'Manga'),
(493, 24, 'Revistas'),
(494, 24, 'Otros'),
(495, 25, 'Cursos'),
(496, 25, 'Música'),
(497, 25, 'Películas'),
(498, 25, 'Series de TV y Telenovelas'),
(499, 25, 'Otros'),
(515, 26, 'Cotillón'),
(516, 26, 'Decoración para Fiestas'),
(517, 26, 'Desechables para Fiestas'),
(518, 26, 'Disfraces'),
(519, 26, 'Espuma, Serpentina y Confeti'),
(520, 26, 'Kits Imprimibles para Fiestas'),
(521, 26, 'Props para Photo Booths'),
(522, 26, 'Regalos y Recuerdos'),
(523, 26, 'Tarjetas y Papelería'),
(524, 26, 'Otros'),
(525, 27, 'Exhibidores y Joyeros'),
(526, 27, 'Insumos para Joyería'),
(527, 27, 'Joyería y Bisutería'),
(528, 27, 'Piedras Preciosas'),
(529, 27, 'Piercings'),
(530, 27, 'Plumas y Lapiceras de Lujo'),
(531, 27, 'Relojes'),
(532, 27, 'Repuestos para Relojes'),
(533, 27, 'Otros'),
(543, 28, 'Abrigos'),
(544, 28, 'Accesorios de Moda'),
(545, 28, 'Blusas'),
(546, 28, 'Calzado'),
(547, 28, 'Camisas'),
(548, 28, 'Enteritos'),
(549, 28, 'Equipaje y Bolsos'),
(550, 28, 'Faldas'),
(551, 28, 'Franelas y Chemises'),
(552, 28, 'Indumentaria Laboral y Escolar'),
(553, 28, 'Kimonos'),
(554, 28, 'Leggings'),
(555, 28, 'Lotes de Ropa'),
(556, 28, 'Pantalones'),
(557, 28, 'Ropa Deportiva'),
(558, 28, 'Ropa Interior y de Dormir'),
(559, 28, 'Ropa para Bebés'),
(560, 28, 'Shorts y Bermudas'),
(561, 28, 'Trajes'),
(562, 28, 'Trajes de Baño'),
(563, 28, 'Trajes de Baño'),
(564, 28, 'Otros'),
(587, 29, 'Belleza e Higiene Personal'),
(588, 29, 'Cursos y Clases'),
(589, 29, 'Fiestas y Eventos'),
(590, 29, 'Gastronomía'),
(591, 29, 'Hogar'),
(592, 29, 'Imprenta'),
(593, 29, 'Mantenimiento de Vehículos'),
(594, 29, 'Oficios'),
(595, 29, 'Profesionales'),
(596, 29, 'Profesionales Médicos'),
(597, 29, 'Reparaciones e Instalaciones'),
(598, 29, 'Ropa y Moda'),
(599, 29, 'Servicios para Mascotas'),
(600, 29, 'Transporte'),
(601, 29, 'Viajes y Turismo'),
(602, 29, 'Otros Servicios'),
(619, 30, 'Ácido Clorhídrico'),
(620, 30, 'Adultos'),
(621, 30, 'Artículos para Fumadores'),
(622, 30, 'Coberturas Extendidas'),
(623, 30, 'Esoterismo'),
(624, 30, 'Eventos y Conciertos'),
(625, 30, 'Hornos Crematorios'),
(626, 30, 'Insumos para Tatuajes'),
(627, 30, 'Kits de Criminalística'),
(628, 30, 'Licencias para Taxis'),
(629, 30, 'Mangas de Viento'),
(630, 30, 'Otros');

-- --------------------------------------------------------

--
-- Table structure for table `TechnicalDetails`
--

CREATE TABLE `TechnicalDetails` (
  `TechnicalDetailId` int(11) NOT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `NameDetail` varchar(255) NOT NULL,
  `Detail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `UserId` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `PhoneNumber` varchar(255) NOT NULL,
  `CountryId` int(11) DEFAULT NULL,
  `Password` varchar(255) NOT NULL,
  `DateOfRegistration` date DEFAULT NULL,
  `Address` varchar(255) NOT NULL,
  `Score` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`UserId`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `CountryId`, `Password`, `DateOfRegistration`, `Address`, `Score`) VALUES
(10, 'manuel', 'cisneros', 'manuelredescalcisneros@gmail.com', '+584143149027', 232, '$2y$04$bSU5nvNdk9KwZUk4MFodm.Um58XkttjID5O79Lyi3AwaBkG6W.v8O', '2021-05-28', 'no es tu peo', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `UsersRoles`
--

CREATE TABLE `UsersRoles` (
  `UserRoleId` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `RoleId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `UsersRoles`
--

INSERT INTO `UsersRoles` (`UserRoleId`, `UserId`, `RoleId`) VALUES
(3, 10, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Answers`
--
ALTER TABLE `Answers`
  ADD PRIMARY KEY (`AnswerId`),
  ADD KEY `FK_Answers_UserId` (`UserId`),
  ADD KEY `FK_Answers_Questions` (`QuestionId`);

--
-- Indexes for table `Categories`
--
ALTER TABLE `Categories`
  ADD PRIMARY KEY (`CategoryId`);

--
-- Indexes for table `Countries`
--
ALTER TABLE `Countries`
  ADD PRIMARY KEY (`CountryId`);

--
-- Indexes for table `Images`
--
ALTER TABLE `Images`
  ADD PRIMARY KEY (`ImageId`),
  ADD KEY `FK_Images_Products` (`ProductId`);

--
-- Indexes for table `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`ProductId`),
  ADD KEY `FK_Products_Categories` (`CategoryId`),
  ADD KEY `fk_Products_SubCategories` (`SubCategoryId`);

--
-- Indexes for table `Questions`
--
ALTER TABLE `Questions`
  ADD PRIMARY KEY (`QuestionId`),
  ADD KEY `FK_Questions_Users` (`UserId`),
  ADD KEY `FK_Questions_Products` (`ProductId`);

--
-- Indexes for table `Roles`
--
ALTER TABLE `Roles`
  ADD PRIMARY KEY (`RoleId`);

--
-- Indexes for table `Sales`
--
ALTER TABLE `Sales`
  ADD PRIMARY KEY (`SaleId`),
  ADD KEY `FK_Sales_Users` (`UserId`);

--
-- Indexes for table `SalesDetails`
--
ALTER TABLE `SalesDetails`
  ADD PRIMARY KEY (`SaleDetailId`),
  ADD KEY `FK_SalesDetails_Products` (`ProductId`),
  ADD KEY `FK_SalesDetails_Sales` (`SaleId`);

--
-- Indexes for table `SubCategories`
--
ALTER TABLE `SubCategories`
  ADD PRIMARY KEY (`SubCategoryId`),
  ADD KEY `fk_SubCategories_Categories` (`CategoryId`);

--
-- Indexes for table `TechnicalDetails`
--
ALTER TABLE `TechnicalDetails`
  ADD PRIMARY KEY (`TechnicalDetailId`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`UserId`),
  ADD KEY `FK_Users_Countries` (`CountryId`);

--
-- Indexes for table `UsersRoles`
--
ALTER TABLE `UsersRoles`
  ADD PRIMARY KEY (`UserRoleId`),
  ADD KEY `FK_UserRoles` (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Answers`
--
ALTER TABLE `Answers`
  MODIFY `AnswerId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Categories`
--
ALTER TABLE `Categories`
  MODIFY `CategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `Countries`
--
ALTER TABLE `Countries`
  MODIFY `CountryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `Images`
--
ALTER TABLE `Images`
  MODIFY `ImageId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Products`
--
ALTER TABLE `Products`
  MODIFY `ProductId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Questions`
--
ALTER TABLE `Questions`
  MODIFY `QuestionId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Roles`
--
ALTER TABLE `Roles`
  MODIFY `RoleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Sales`
--
ALTER TABLE `Sales`
  MODIFY `SaleId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SalesDetails`
--
ALTER TABLE `SalesDetails`
  MODIFY `SaleDetailId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SubCategories`
--
ALTER TABLE `SubCategories`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=643;

--
-- AUTO_INCREMENT for table `TechnicalDetails`
--
ALTER TABLE `TechnicalDetails`
  MODIFY `TechnicalDetailId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `UsersRoles`
--
ALTER TABLE `UsersRoles`
  MODIFY `UserRoleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Answers`
--
ALTER TABLE `Answers`
  ADD CONSTRAINT `FK_Answers_Questions` FOREIGN KEY (`QuestionId`) REFERENCES `Questions` (`QuestionId`),
  ADD CONSTRAINT `FK_Answers_UserId` FOREIGN KEY (`UserId`) REFERENCES `Users` (`UserId`);

--
-- Constraints for table `Images`
--
ALTER TABLE `Images`
  ADD CONSTRAINT `FK_Images_Products` FOREIGN KEY (`ProductId`) REFERENCES `Products` (`ProductId`);

--
-- Constraints for table `Products`
--
ALTER TABLE `Products`
  ADD CONSTRAINT `FK_Products_Categories` FOREIGN KEY (`CategoryId`) REFERENCES `Categories` (`CategoryId`),
  ADD CONSTRAINT `fk_Products_SubCategories` FOREIGN KEY (`SubCategoryId`) REFERENCES `SubCategories` (`SubCategoryId`);

--
-- Constraints for table `Questions`
--
ALTER TABLE `Questions`
  ADD CONSTRAINT `FK_Questions_Products` FOREIGN KEY (`ProductId`) REFERENCES `Products` (`ProductId`),
  ADD CONSTRAINT `FK_Questions_Users` FOREIGN KEY (`UserId`) REFERENCES `Users` (`UserId`);

--
-- Constraints for table `Sales`
--
ALTER TABLE `Sales`
  ADD CONSTRAINT `FK_Sales_Users` FOREIGN KEY (`UserId`) REFERENCES `Users` (`UserId`);

--
-- Constraints for table `SalesDetails`
--
ALTER TABLE `SalesDetails`
  ADD CONSTRAINT `FK_SalesDetails_Products` FOREIGN KEY (`ProductId`) REFERENCES `Products` (`ProductId`),
  ADD CONSTRAINT `FK_SalesDetails_Sales` FOREIGN KEY (`SaleId`) REFERENCES `Sales` (`SaleId`);

--
-- Constraints for table `SubCategories`
--
ALTER TABLE `SubCategories`
  ADD CONSTRAINT `fk_SubCategories_Categories` FOREIGN KEY (`CategoryId`) REFERENCES `Categories` (`CategoryId`);

--
-- Constraints for table `Users`
--
ALTER TABLE `Users`
  ADD CONSTRAINT `FK_Users_Countries` FOREIGN KEY (`CountryId`) REFERENCES `Countries` (`CountryId`);

--
-- Constraints for table `UsersRoles`
--
ALTER TABLE `UsersRoles`
  ADD CONSTRAINT `FK_UserRoles` FOREIGN KEY (`UserId`) REFERENCES `Users` (`UserId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
