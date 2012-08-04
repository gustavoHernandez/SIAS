-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 01-08-2012 a las 16:56:32
-- Versión del servidor: 5.1.44
-- Versión de PHP: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `proyectoPrimaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivo`
--

CREATE TABLE IF NOT EXISTS `archivo` (
  `archivo_id` varchar(50) NOT NULL,
  `archivo_denominacion` varchar(50) DEFAULT NULL,
  `archivo_descripcion` varchar(200) DEFAULT NULL,
  `archivo_url` varchar(150) DEFAULT NULL,
  `archivo` longblob,
  PRIMARY KEY (`archivo_id`),
  UNIQUE KEY `archivo_id` (`archivo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `archivo`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('becc69300d1cb2e21a621afc5a9f3b4a', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) App', 1343532324, 'a:4:{s:8:"loggedIn";s:1:"1";s:12:"loggedUserId";s:5:"USU01";s:14:"loggedUserName";s:18:"Gustavo Hernández";s:7:"control";s:3:"all";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conectados_chat`
--

CREATE TABLE IF NOT EXISTS `conectados_chat` (
  `conectados_chat_personaid` varchar(50) NOT NULL,
  `conectados_chat_nombre` varchar(120) NOT NULL,
  PRIMARY KEY (`conectados_chat_personaid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `conectados_chat`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `correo`
--

CREATE TABLE IF NOT EXISTS `correo` (
  `correo_id` varchar(50) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `correo_etiqueta` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`correo_id`),
  UNIQUE KEY `correo_id` (`correo_id`),
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `correo`
--

INSERT INTO `correo` (`correo_id`, `correo`, `correo_etiqueta`) VALUES
('CORREO01', 'volaverunt@live.com.mx', 'Personal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE IF NOT EXISTS `curso` (
  `idcurso` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `curso` varchar(100) NOT NULL,
  `descripcion` varchar(128) NOT NULL,
  PRIMARY KEY (`idcurso`),
  UNIQUE KEY `Index_2` (`curso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `curso`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE IF NOT EXISTS `direccion` (
  `direccion_id` varchar(50) NOT NULL,
  `direccion_calle` varchar(100) DEFAULT NULL,
  `direccion_noext` bigint(20) DEFAULT NULL,
  `direccion_noint` bigint(20) DEFAULT NULL,
  `direccion_colonia` varchar(100) DEFAULT NULL,
  `direccion_cp` varchar(10) DEFAULT NULL,
  `direccion_delegacion` varchar(100) DEFAULT NULL,
  `direccion_estado` varchar(50) DEFAULT NULL,
  `direccion_pais` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`direccion_id`),
  UNIQUE KEY `direccion_id` (`direccion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `direccion`
--

INSERT INTO `direccion` (`direccion_id`, `direccion_calle`, `direccion_noext`, `direccion_noint`, `direccion_colonia`, `direccion_cp`, `direccion_delegacion`, `direccion_estado`, `direccion_pais`) VALUES
('DIR01', 'Rio Grande', 17, NULL, 'Lomas de Tepeolulco', '54193', 'Tlalnepantla de Baz', 'México', 'México');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `foro`
--

CREATE TABLE IF NOT EXISTS `foro` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rfc` varchar(10) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `mensaje` text NOT NULL,
  `fecha` datetime NOT NULL,
  `respuestas` int(10) unsigned NOT NULL DEFAULT '0',
  `identificador` int(10) unsigned NOT NULL DEFAULT '0',
  `ult_respuesta` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `foro`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE IF NOT EXISTS `grupo` (
  `grupo_id` varchar(30) NOT NULL,
  `grupo_parent` varchar(30) NOT NULL,
  `grupo_clave` varchar(20) NOT NULL,
  PRIMARY KEY (`grupo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `grupo`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE IF NOT EXISTS `mensajes` (
  `mensajes_mensajeid` varchar(50) NOT NULL,
  `mensajes_emisorid` varchar(50) NOT NULL,
  `mensajes_receptorid` varchar(50) NOT NULL,
  `mensajes_mensaje` varchar(250) NOT NULL,
  `mensajes_status` varchar(255) NOT NULL DEFAULT 'NUEVO',
  PRIMARY KEY (`mensajes_mensajeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `mensajes`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE IF NOT EXISTS `pais` (
  `PAIS_ID` varchar(50) NOT NULL,
  `PAIS_ISONUM` smallint(6) NOT NULL,
  `PAIS_ISO2` char(2) NOT NULL,
  `PAIS_ISO3` char(3) NOT NULL,
  `PAIS_DENOMINACION` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`PAIS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `pais`
--

INSERT INTO `pais` (`PAIS_ID`, `PAIS_ISONUM`, `PAIS_ISO2`, `PAIS_ISO3`, `PAIS_DENOMINACION`) VALUES
('1', 4, 'AF', 'AFG', 'Afganistán'),
('10', 530, 'AN', 'ANT', 'Antillas Holandesas'),
('100', 332, 'HT', 'HTI', 'Haití'),
('101', 334, 'HM', 'HMD', 'Islas Heard y McDonald'),
('102', 340, 'HN', 'HND', 'Honduras'),
('103', 344, 'HK', 'HKG', 'Hong Kong'),
('104', 348, 'HU', 'HUN', 'Hungría'),
('105', 356, 'IN', 'IND', 'India'),
('106', 360, 'ID', 'IDN', 'Indonesia'),
('107', 364, 'IR', 'IRN', 'Irán'),
('108', 368, 'IQ', 'IRQ', 'Iraq'),
('109', 372, 'IE', 'IRL', 'Irlanda'),
('11', 682, 'SA', 'SAU', 'Arabia Saudí'),
('110', 352, 'IS', 'ISL', 'Islandia'),
('111', 376, 'IL', 'ISR', 'Israel'),
('112', 380, 'IT', 'ITA', 'Italia'),
('113', 388, 'JM', 'JAM', 'Jamaica'),
('114', 392, 'JP', 'JPN', 'Japón'),
('115', 400, 'JO', 'JOR', 'Jordania'),
('116', 398, 'KZ', 'KAZ', 'Kazajstán'),
('117', 404, 'KE', 'KEN', 'Kenia'),
('118', 417, 'KG', 'KGZ', 'Kirguistán'),
('119', 296, 'KI', 'KIR', 'Kiribati'),
('12', 12, 'DZ', 'DZA', 'Argelia'),
('120', 414, 'KW', 'KWT', 'Kuwait'),
('121', 418, 'LA', 'LAO', 'Laos'),
('122', 426, 'LS', 'LSO', 'Lesotho'),
('123', 428, 'LV', 'LVA', 'Letonia'),
('124', 422, 'LB', 'LBN', 'Líbano'),
('125', 430, 'LR', 'LBR', 'Liberia'),
('126', 434, 'LY', 'LBY', 'Libia'),
('127', 438, 'LI', 'LIE', 'Liechtenstein'),
('128', 440, 'LT', 'LTU', 'Lituania'),
('129', 442, 'LU', 'LUX', 'Luxemburgo'),
('13', 32, 'AR', 'ARG', 'Argentina'),
('130', 446, 'MO', 'MAC', 'Macao'),
('131', 807, 'MK', 'MKD', 'ARY Macedonia'),
('132', 450, 'MG', 'MDG', 'Madagascar'),
('133', 458, 'MY', 'MYS', 'Malasia'),
('134', 454, 'MW', 'MWI', 'Malawi'),
('135', 462, 'MV', 'MDV', 'Maldivas'),
('136', 466, 'ML', 'MLI', 'Malí'),
('137', 470, 'MT', 'MLT', 'Malta'),
('138', 238, 'FK', 'FLK', 'Islas Malvinas'),
('139', 580, 'MP', 'MNP', 'Islas Marianas del Norte'),
('14', 51, 'AM', 'ARM', 'Armenia'),
('140', 504, 'MA', 'MAR', 'Marruecos'),
('141', 584, 'MH', 'MHL', 'Islas Marshall'),
('142', 474, 'MQ', 'MTQ', 'Martinica'),
('143', 480, 'MU', 'MUS', 'Mauricio'),
('144', 478, 'MR', 'MRT', 'Mauritania'),
('145', 175, 'YT', 'MYT', 'Mayotte'),
('146', 484, 'MX', 'MEX', 'México'),
('147', 583, 'FM', 'FSM', 'Micronesia'),
('148', 498, 'MD', 'MDA', 'Moldavia'),
('149', 492, 'MC', 'MCO', 'Mónaco'),
('15', 533, 'AW', 'ABW', 'Aruba'),
('150', 496, 'MN', 'MNG', 'Mongolia'),
('151', 500, 'MS', 'MSR', 'Montserrat'),
('152', 508, 'MZ', 'MOZ', 'Mozambique'),
('153', 104, 'MM', 'MMR', 'Myanmar'),
('154', 516, 'NA', 'NAM', 'Namibia'),
('155', 520, 'NR', 'NRU', 'Nauru'),
('156', 524, 'NP', 'NPL', 'Nepal'),
('157', 558, 'NI', 'NIC', 'Nicaragua'),
('158', 562, 'NE', 'NER', 'Níger'),
('159', 566, 'NG', 'NGA', 'Nigeria'),
('16', 36, 'AU', 'AUS', 'Australia'),
('160', 570, 'NU', 'NIU', 'Niue'),
('161', 574, 'NF', 'NFK', 'Isla Norfolk'),
('162', 578, 'NO', 'NOR', 'Noruega'),
('163', 540, 'NC', 'NCL', 'Nueva Caledonia'),
('164', 554, 'NZ', 'NZL', 'Nueva Zelanda'),
('165', 512, 'OM', 'OMN', 'Omán'),
('166', 528, 'NL', 'NLD', 'Países Bajos'),
('167', 586, 'PK', 'PAK', 'Pakistán'),
('168', 585, 'PW', 'PLW', 'Palau'),
('169', 275, 'PS', 'PSE', 'Palestina'),
('17', 40, 'AT', 'AUT', 'Austria'),
('170', 591, 'PA', 'PAN', 'Panamá'),
('171', 598, 'PG', 'PNG', 'Papúa Nueva Guinea'),
('172', 600, 'PY', 'PRY', 'Paraguay'),
('173', 604, 'PE', 'PER', 'Perú'),
('174', 612, 'PN', 'PCN', 'Islas Pitcairn'),
('175', 258, 'PF', 'PYF', 'Polinesia Francesa'),
('176', 616, 'PL', 'POL', 'Polonia'),
('177', 620, 'PT', 'PRT', 'Portugal'),
('178', 630, 'PR', 'PRI', 'Puerto Rico'),
('179', 634, 'QA', 'QAT', 'Qatar'),
('18', 31, 'AZ', 'AZE', 'Azerbaiyán'),
('180', 826, 'GB', 'GBR', 'Reino Unido'),
('181', 638, 'RE', 'REU', 'Reunión'),
('182', 646, 'RW', 'RWA', 'Ruanda'),
('183', 642, 'RO', 'ROU', 'Rumania'),
('184', 643, 'RU', 'RUS', 'Rusia'),
('185', 732, 'EH', 'ESH', 'Sahara Occidental'),
('186', 90, 'SB', 'SLB', 'Islas Salomón'),
('187', 882, 'WS', 'WSM', 'Samoa'),
('188', 16, 'AS', 'ASM', 'Samoa Americana'),
('189', 659, 'KN', 'KNA', 'San Cristóbal y Nevis'),
('19', 44, 'BS', 'BHS', 'Bahamas'),
('190', 674, 'SM', 'SMR', 'San Marino'),
('191', 666, 'PM', 'SPM', 'San Pedro y Miquelón'),
('192', 670, 'VC', 'VCT', 'San Vicente y las Granadinas'),
('193', 654, 'SH', 'SHN', 'Santa Helena'),
('194', 662, 'LC', 'LCA', 'Santa Lucía'),
('195', 678, 'ST', 'STP', 'Santo Tomé y Príncipe'),
('196', 686, 'SN', 'SEN', 'Senegal'),
('197', 891, 'CS', 'SCG', 'Serbia y Montenegro'),
('198', 690, 'SC', 'SYC', 'Seychelles'),
('199', 694, 'SL', 'SLE', 'Sierra Leona'),
('2', 248, 'AX', 'ALA', 'Islas Gland'),
('20', 48, 'BH', 'BHR', 'Bahréin'),
('200', 702, 'SG', 'SGP', 'Singapur'),
('201', 760, 'SY', 'SYR', 'Siria'),
('202', 706, 'SO', 'SOM', 'Somalia'),
('203', 144, 'LK', 'LKA', 'Sri Lanka'),
('204', 748, 'SZ', 'SWZ', 'Suazilandia'),
('205', 710, 'ZA', 'ZAF', 'Sudáfrica'),
('206', 736, 'SD', 'SDN', 'Sudán'),
('207', 752, 'SE', 'SWE', 'Suecia'),
('208', 756, 'CH', 'CHE', 'Suiza'),
('209', 740, 'SR', 'SUR', 'Surinam'),
('21', 50, 'BD', 'BGD', 'Bangladesh'),
('210', 744, 'SJ', 'SJM', 'Svalbard y Jan Mayen'),
('211', 764, 'TH', 'THA', 'Tailandia'),
('212', 158, 'TW', 'TWN', 'Taiwán'),
('213', 834, 'TZ', 'TZA', 'Tanzania'),
('214', 762, 'TJ', 'TJK', 'Tayikistán'),
('215', 86, 'IO', 'IOT', 'Territorio Británico del Océano Índico'),
('216', 260, 'TF', 'ATF', 'Territorios Australes Franceses'),
('217', 626, 'TL', 'TLS', 'Timor Oriental'),
('218', 768, 'TG', 'TGO', 'Togo'),
('219', 772, 'TK', 'TKL', 'Tokelau'),
('22', 52, 'BB', 'BRB', 'Barbados'),
('220', 776, 'TO', 'TON', 'Tonga'),
('221', 780, 'TT', 'TTO', 'Trinidad y Tobago'),
('222', 788, 'TN', 'TUN', 'Túnez'),
('223', 796, 'TC', 'TCA', 'Islas Turcas y Caicos'),
('224', 795, 'TM', 'TKM', 'Turkmenistán'),
('225', 792, 'TR', 'TUR', 'Turquía'),
('226', 798, 'TV', 'TUV', 'Tuvalu'),
('227', 804, 'UA', 'UKR', 'Ucrania'),
('228', 800, 'UG', 'UGA', 'Uganda'),
('229', 858, 'UY', 'URY', 'Uruguay'),
('23', 112, 'BY', 'BLR', 'Bielorrusia'),
('230', 860, 'UZ', 'UZB', 'Uzbekistán'),
('231', 548, 'VU', 'VUT', 'Vanuatu'),
('232', 862, 'VE', 'VEN', 'Venezuela'),
('233', 704, 'VN', 'VNM', 'Vietnam'),
('234', 92, 'VG', 'VGB', 'Islas Vírgenes Británicas'),
('235', 850, 'VI', 'VIR', 'Islas Vírgenes de los Estados Unidos'),
('236', 876, 'WF', 'WLF', 'Wallis y Futuna'),
('237', 887, 'YE', 'YEM', 'Yemen'),
('238', 262, 'DJ', 'DJI', 'Yibuti'),
('239', 894, 'ZM', 'ZMB', 'Zambia'),
('24', 56, 'BE', 'BEL', 'Bélgica'),
('240', 716, 'ZW', 'ZWE', 'Zimbabue'),
('25', 84, 'BZ', 'BLZ', 'Belice'),
('26', 204, 'BJ', 'BEN', 'Benin'),
('27', 60, 'BM', 'BMU', 'Bermudas'),
('28', 64, 'BT', 'BTN', 'Bhután'),
('29', 68, 'BO', 'BOL', 'Bolivia'),
('3', 8, 'AL', 'ALB', 'Albania'),
('30', 70, 'BA', 'BIH', 'Bosnia y Herzegovina'),
('31', 72, 'BW', 'BWA', 'Botsuana'),
('32', 74, 'BV', 'BVT', 'Isla Bouvet'),
('33', 76, 'BR', 'BRA', 'Brasil'),
('34', 96, 'BN', 'BRN', 'Brunéi'),
('35', 100, 'BG', 'BGR', 'Bulgaria'),
('36', 854, 'BF', 'BFA', 'Burkina Faso'),
('37', 108, 'BI', 'BDI', 'Burundi'),
('38', 132, 'CV', 'CPV', 'Cabo Verde'),
('39', 136, 'KY', 'CYM', 'Islas Caimán'),
('4', 276, 'DE', 'DEU', 'Alemania'),
('40', 116, 'KH', 'KHM', 'Camboya'),
('41', 120, 'CM', 'CMR', 'Camerún'),
('42', 124, 'CA', 'CAN', 'Canadá'),
('43', 140, 'CF', 'CAF', 'República Centroafricana'),
('44', 148, 'TD', 'TCD', 'Chad'),
('45', 203, 'CZ', 'CZE', 'República Checa'),
('46', 152, 'CL', 'CHL', 'Chile'),
('47', 156, 'CN', 'CHN', 'China'),
('48', 196, 'CY', 'CYP', 'Chipre'),
('49', 162, 'CX', 'CXR', 'Isla de Navidad'),
('5', 20, 'AD', 'AND', 'Andorra'),
('50', 336, 'VA', 'VAT', 'Ciudad del Vaticano'),
('51', 166, 'CC', 'CCK', 'Islas Cocos'),
('52', 170, 'CO', 'COL', 'Colombia'),
('53', 174, 'KM', 'COM', 'Comoras'),
('54', 180, 'CD', 'COD', 'República Democrática del Congo'),
('55', 178, 'CG', 'COG', 'Congo'),
('56', 184, 'CK', 'COK', 'Islas Cook'),
('57', 408, 'KP', 'PRK', 'Corea del Norte'),
('58', 410, 'KR', 'KOR', 'Corea del Sur'),
('59', 384, 'CI', 'CIV', 'Costa de Marfil'),
('6', 24, 'AO', 'AGO', 'Angola'),
('60', 188, 'CR', 'CRI', 'Costa Rica'),
('61', 191, 'HR', 'HRV', 'Croacia'),
('62', 192, 'CU', 'CUB', 'Cuba'),
('63', 208, 'DK', 'DNK', 'Dinamarca'),
('64', 212, 'DM', 'DMA', 'Dominica'),
('65', 214, 'DO', 'DOM', 'República Dominicana'),
('66', 218, 'EC', 'ECU', 'Ecuador'),
('67', 818, 'EG', 'EGY', 'Egipto'),
('68', 222, 'SV', 'SLV', 'El Salvador'),
('69', 784, 'AE', 'ARE', 'Emiratos Árabes Unidos'),
('7', 660, 'AI', 'AIA', 'Anguilla'),
('70', 232, 'ER', 'ERI', 'Eritrea'),
('71', 703, 'SK', 'SVK', 'Eslovaquia'),
('72', 705, 'SI', 'SVN', 'Eslovenia'),
('73', 724, 'ES', 'ESP', 'España'),
('74', 581, 'UM', 'UMI', 'Islas ultramarinas de Estados Unidos'),
('75', 840, 'US', 'USA', 'Estados Unidos'),
('76', 233, 'EE', 'EST', 'Estonia'),
('77', 231, 'ET', 'ETH', 'Etiopía'),
('78', 234, 'FO', 'FRO', 'Islas Feroe'),
('79', 608, 'PH', 'PHL', 'Filipinas'),
('8', 10, 'AQ', 'ATA', 'Antártida'),
('80', 246, 'FI', 'FIN', 'Finlandia'),
('81', 242, 'FJ', 'FJI', 'Fiyi'),
('82', 250, 'FR', 'FRA', 'Francia'),
('83', 266, 'GA', 'GAB', 'Gabón'),
('84', 270, 'GM', 'GMB', 'Gambia'),
('85', 268, 'GE', 'GEO', 'Georgia'),
('86', 239, 'GS', 'SGS', 'Islas Georgias del Sur y Sandwich del Sur'),
('87', 288, 'GH', 'GHA', 'Ghana'),
('88', 292, 'GI', 'GIB', 'Gibraltar'),
('89', 308, 'GD', 'GRD', 'Granada'),
('9', 28, 'AG', 'ATG', 'Antigua y Barbuda'),
('90', 300, 'GR', 'GRC', 'Grecia'),
('91', 304, 'GL', 'GRL', 'Groenlandia'),
('92', 312, 'GP', 'GLP', 'Guadalupe'),
('93', 316, 'GU', 'GUM', 'Guam'),
('94', 320, 'GT', 'GTM', 'Guatemala'),
('95', 254, 'GF', 'GUF', 'Guayana Francesa'),
('96', 324, 'GN', 'GIN', 'Guinea'),
('97', 226, 'GQ', 'GNQ', 'Guinea Ecuatorial'),
('98', 624, 'GW', 'GNB', 'Guinea-Bissau'),
('99', 328, 'GY', 'GUY', 'Guyana');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE IF NOT EXISTS `persona` (
  `persona_id` varchar(50) NOT NULL,
  `persona_nombres` varchar(50) NOT NULL,
  `persona_ap_paterno` varchar(50) NOT NULL,
  `persona_ap_materno` varchar(50) DEFAULT NULL,
  `persona_fecha_nacimiento` date DEFAULT NULL,
  `persona_sexo` varchar(255) DEFAULT NULL,
  `persona_rfc` varchar(50) DEFAULT NULL,
  `persona_curp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`persona_id`),
  UNIQUE KEY `persona_id` (`persona_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `persona`
--

INSERT INTO `persona` (`persona_id`, `persona_nombres`, `persona_ap_paterno`, `persona_ap_materno`, `persona_fecha_nacimiento`, `persona_sexo`, `persona_rfc`, `persona_curp`) VALUES
('PER01', 'Gustavo', 'Hernández', 'Hernández', '2012-02-17', 'MASCULINO', 'HEHG900217L2', 'HEHG900217HMCRRS02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona_correo`
--

CREATE TABLE IF NOT EXISTS `persona_correo` (
  `persona_id` varchar(50) NOT NULL DEFAULT '',
  `correo_id` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`persona_id`,`correo_id`),
  KEY `rel_persona_correo_correo_id_correo_correo_id` (`correo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `persona_correo`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona_direccion`
--

CREATE TABLE IF NOT EXISTS `persona_direccion` (
  `persona_id` varchar(50) NOT NULL DEFAULT '',
  `direccion_id` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`persona_id`,`direccion_id`),
  KEY `rdrd` (`direccion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `persona_direccion`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona_grupo`
--

CREATE TABLE IF NOT EXISTS `persona_grupo` (
  `persona_id` varchar(50) NOT NULL,
  `grupo_id` varchar(30) NOT NULL,
  PRIMARY KEY (`persona_id`,`grupo_id`),
  KEY `grupo_id` (`grupo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `persona_grupo`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona_telefono`
--

CREATE TABLE IF NOT EXISTS `persona_telefono` (
  `persona_id` varchar(50) NOT NULL DEFAULT '',
  `telefono_id` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`persona_id`,`telefono_id`),
  KEY `telefono_id` (`telefono_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `persona_telefono`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proceso`
--

CREATE TABLE IF NOT EXISTS `proceso` (
  `proceso_id` varchar(50) NOT NULL,
  `proceso_id_parent` varchar(50) DEFAULT NULL,
  `proceso_denominacion` varchar(50) DEFAULT NULL,
  `proceso_descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`proceso_id`),
  UNIQUE KEY `proceso_id` (`proceso_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `proceso`
--

INSERT INTO `proceso` (`proceso_id`, `proceso_id_parent`, `proceso_denominacion`, `proceso_descripcion`) VALUES
('LEXS001', '', 'Asuntos', 'Acceso a Asuntos'),
('LEXS002', 'LEXS001', 'Altas', 'Agregar Asuntos'),
('LEXS003', 'LEXS001', 'Eliminaciones', 'Eliminar Asuntos'),
('LEXS004', 'LEXS001', 'Cambios', 'Editar Informacion de Asuntos'),
('LEXS005', 'LEXS001', 'Altas', 'Subir Archivos'),
('LEXS006', 'LEXS001', 'Eliminaciones', 'Eliminar Archivos'),
('LEXS007', 'LEXS001', 'Altas', 'Agregar Actividades'),
('LEXS008', 'LEXS001', 'Cambios', 'Editar Actividades'),
('LEXS009', 'LEXS001', 'Exportar', 'Exportar a PDF'),
('LEXS010', 'LEXS001', 'Eliminaciones', 'Eliminar Actividades'),
('LEXS011', '', 'Litigios', 'Acceso a Litigios'),
('LEXS012', 'LEXS011', 'Altas', 'Agregar Litigios'),
('LEXS013', 'LEXS011', 'Eliminaciones', 'Eliminar Litigios'),
('LEXS014', 'LEXS011', 'Cambios', 'Editar Litigios'),
('LEXS015', '', 'Asambleas', 'Acceso a Asambleas'),
('LEXS016', 'LEXS015', 'Altas', 'Agregar Asambleas'),
('LEXS017', 'LEXS015', 'Eliminaciones', 'Eliminar asambleas'),
('LEXS018', 'LEXS015', 'Cambios', 'Editar Asambleas'),
('LEXS019', '', 'Poderes', 'Acceso a Poderes'),
('LEXS020', 'LEXS019', 'Altas', 'Agregar Poderes'),
('LEXS021', 'LEXS019', 'Eliminaciones', 'Eliminar Poderes'),
('LEXS022', 'LEXS019', 'Cambios', 'Editar Poderes'),
('LEXS023', '', 'Control de Horas', 'Acceso a Control de Horas'),
('LEXS024', 'LEXS023', 'Altas', 'Agregar Actividades del Dia'),
('LEXS025', 'LEXS023', 'Visualizar', 'Registro Diario de Actividades'),
('LEXS026', 'LEXS023', 'Visualizar', 'Registro Semanal de Actividades'),
('LEXS027', 'LEXS023', 'Visualizar', 'Registro Mensual de Actividades'),
('LEXS028', '', 'Templates', 'Acceso a Templates'),
('LEXS029', 'LEXS028', 'Altas', 'Agregar Template.'),
('LEXS030', 'LEXS028', 'Eliminaciones', 'Eliminar Template'),
('LEXS031', 'LEXS028', 'Cambios', 'Editar Templates'),
('LEXS032', ' ', 'Tipos de Asunto', 'Acceso a Tipos de Asunto'),
('LEXS033', 'LEXS032', 'Alta', 'Agregar Tipos de Asunto'),
('LEXS034', 'LEXS032', 'Modificar', 'Editar Tipos de Asunto'),
('LEXS035', ' ', 'Categorias', 'Acceso a Categorias'),
('LEXS036', 'LEXS035', 'Altas', 'Ingresar Categorias'),
('LEXS037', 'LEXS035', 'Editar', 'Editar Categorias'),
('LEXS038', 'LEXS035', 'Eliminar', 'Eliminar Categorias'),
('LEXS039', ' ', 'Facultades', 'Acceso a Facultades'),
('LEXS040', 'LEXS039', 'Altas ', 'Ingresar Facultades'),
('LEXS041', 'LEXS039', 'Editar', 'Editar Facultades'),
('LEXS042', 'LEXS039', 'Eliminar', 'Eliminar Facultades'),
('LEXS043', 'LEXS023', 'Visualizar', 'Registro Horas - Abogado'),
('LEXS044', 'LEXS023', 'Visualizar', 'Registro Horas - Cliente'),
('RHEA001', '', 'ME', 'Acceso a Despacho'),
('RHEA002', 'RHEA001', 'Visualizar', 'Ver Abogados.'),
('RHEA003', 'RHEA001', 'Altas', 'Agregar Abogados.'),
('RHEA004', 'RHEA001', 'Cambios', 'Editar Datos de Mi Despacho'),
('RHEA005', 'RHEA001', 'Visualizar', 'Ver Entidades Fiscales.'),
('RHEA006', 'RHEA001', 'Altas', 'Agregar Entidades Fiscales'),
('RHEA007', 'RHEA001', 'Cambios', 'Editar Entidades Fiscales'),
('RHEA008', 'RHEA001', 'Visualizar', 'Ver Roles.'),
('RHEA009', 'RHEA001', 'Altas', 'Agregar Roles'),
('RHEA010', 'RHEA001', 'Cambios', 'Editar Roles'),
('RHEA011', '', 'Clientes', 'Acceso a Clientes'),
('RHEA012', 'RHEA011', 'Altas', 'Agregar Clientes'),
('RHEA013', 'RHEA011', 'Cambios', 'Editar Informacion de los Clientes'),
('RHEA014', '', 'Usuarios', 'Acceso a usuarios'),
('RHEA015', 'RHEA014', 'Altas', 'Alta de Usuarios'),
('RHEA016', 'RHEA014', 'Modificaciones', 'Modificar Usuarios'),
('RHEA017', 'RHEA014', 'Eliminaciones', 'Eliminar Usuarios'),
('RHEA018', 'RHEA001', 'Cambios', 'Editar Abogados.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proceso_rol`
--

CREATE TABLE IF NOT EXISTS `proceso_rol` (
  `proceso_id` varchar(50) NOT NULL DEFAULT '',
  `rol_id` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`proceso_id`,`rol_id`),
  KEY `rol_id` (`rol_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `proceso_rol`
--

INSERT INTO `proceso_rol` (`proceso_id`, `rol_id`) VALUES
('LEXS001', 'ROL1'),
('LEXS002', 'ROL1'),
('LEXS003', 'ROL1'),
('LEXS004', 'ROL1'),
('LEXS005', 'ROL1'),
('LEXS006', 'ROL1'),
('LEXS007', 'ROL1'),
('LEXS008', 'ROL1'),
('LEXS009', 'ROL1'),
('LEXS010', 'ROL1'),
('LEXS011', 'ROL1'),
('LEXS012', 'ROL1'),
('LEXS013', 'ROL1'),
('LEXS014', 'ROL1'),
('LEXS015', 'ROL1'),
('LEXS016', 'ROL1'),
('LEXS017', 'ROL1'),
('LEXS018', 'ROL1'),
('LEXS019', 'ROL1'),
('LEXS020', 'ROL1'),
('LEXS021', 'ROL1'),
('LEXS022', 'ROL1'),
('LEXS023', 'ROL1'),
('LEXS024', 'ROL1'),
('LEXS025', 'ROL1'),
('LEXS026', 'ROL1'),
('LEXS027', 'ROL1'),
('LEXS028', 'ROL1'),
('LEXS029', 'ROL1'),
('LEXS030', 'ROL1'),
('LEXS031', 'ROL1'),
('LEXS032', 'ROL1'),
('LEXS033', 'ROL1'),
('LEXS034', 'ROL1'),
('LEXS035', 'ROL1'),
('LEXS036', 'ROL1'),
('LEXS037', 'ROL1'),
('LEXS038', 'ROL1'),
('LEXS039', 'ROL1'),
('LEXS040', 'ROL1'),
('LEXS041', 'ROL1'),
('LEXS042', 'ROL1'),
('LEXS043', 'ROL1'),
('LEXS044', 'ROL1'),
('RHEA001', 'ROL1'),
('RHEA002', 'ROL1'),
('RHEA003', 'ROL1'),
('RHEA004', 'ROL1'),
('RHEA005', 'ROL1'),
('RHEA006', 'ROL1'),
('RHEA007', 'ROL1'),
('RHEA008', 'ROL1'),
('RHEA009', 'ROL1'),
('RHEA010', 'ROL1'),
('RHEA011', 'ROL1'),
('RHEA012', 'ROL1'),
('RHEA013', 'ROL1'),
('RHEA014', 'ROL1'),
('RHEA015', 'ROL1'),
('RHEA016', 'ROL1'),
('RHEA017', 'ROL1'),
('RHEA018', 'ROL1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quiz`
--

CREATE TABLE IF NOT EXISTS `quiz` (
  `idquiz` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idcurso` int(10) unsigned NOT NULL,
  `quiz` varchar(45) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`idquiz`) USING BTREE,
  KEY `FK_cuestionario_1` (`idcurso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `quiz`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reactivo`
--

CREATE TABLE IF NOT EXISTS `reactivo` (
  `idreactivo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reactivotxt` text NOT NULL,
  `reactivoimg` mediumblob NOT NULL,
  `mime` varchar(30) NOT NULL,
  `idquiz` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idreactivo`),
  KEY `FK_reactivo_1` (`idquiz`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `reactivo`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reactivo_respuesta`
--

CREATE TABLE IF NOT EXISTS `reactivo_respuesta` (
  `idrespuesta` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idreactivo` int(10) unsigned NOT NULL,
  `respuesta` mediumblob NOT NULL,
  `mime` varchar(30) NOT NULL,
  `correcto` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`idrespuesta`),
  KEY `FK_reactivo_respuesta_1` (`idreactivo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `reactivo_respuesta`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recurso_aprendizaje`
--

CREATE TABLE IF NOT EXISTS `recurso_aprendizaje` (
  `idrecurso` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` text NOT NULL,
  `nivel` tinyint(1) unsigned NOT NULL,
  `idcurso` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idrecurso`),
  KEY `FK_recurso_aprendizaje_1` (`idcurso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `recurso_aprendizaje`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE IF NOT EXISTS `rol` (
  `rol_id` varchar(50) NOT NULL,
  `rol_tipo_id` varchar(50) NOT NULL,
  `rol_denominacion` varchar(50) DEFAULT NULL,
  `rol_descripcion` varchar(45) DEFAULT NULL,
  `rol_status` varchar(255) DEFAULT 'ACTIVO',
  PRIMARY KEY (`rol_id`,`rol_tipo_id`),
  UNIQUE KEY `rol_id` (`rol_id`),
  KEY `rol_rol_tipo_id_rol_tipo_rol_tipo_id` (`rol_tipo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `rol`
--

INSERT INTO `rol` (`rol_id`, `rol_tipo_id`, `rol_denominacion`, `rol_descripcion`, `rol_status`) VALUES
('ROL1', 'RT0', 'Super Administrador', 'Notarios', 'ACTIVO'),
('ROL2', 'RT1', 'Profesor', 'Personal docente del plantel.', 'ACTIVO'),
('ROL3', 'RT2', 'Padre de Familia', 'Padre de familia.', 'ACTIVO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_persona`
--

CREATE TABLE IF NOT EXISTS `rol_persona` (
  `rol_persona_id` varchar(50) NOT NULL,
  `persona_id` varchar(50) NOT NULL DEFAULT '',
  `rol_id` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`rol_persona_id`,`persona_id`,`rol_id`),
  UNIQUE KEY `rel_rol_persona_id` (`rol_persona_id`),
  KEY `rel_rol_persona_rol_id_rol_rol_id` (`rol_id`),
  KEY `rel_rol_persona_persona_id_persona_persona_id` (`persona_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `rol_persona`
--

INSERT INTO `rol_persona` (`rol_persona_id`, `persona_id`, `rol_id`) VALUES
('RP01', 'PER01', 'ROL1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_persona_usuario`
--

CREATE TABLE IF NOT EXISTS `rol_persona_usuario` (
  `rol_persona_id` varchar(50) NOT NULL DEFAULT '',
  `usuario_id` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`rol_persona_id`,`usuario_id`),
  KEY `usuario_id` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `rol_persona_usuario`
--

INSERT INTO `rol_persona_usuario` (`rol_persona_id`, `usuario_id`) VALUES
('RP01', 'USU01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_tipo`
--

CREATE TABLE IF NOT EXISTS `rol_tipo` (
  `rol_tipo_id` varchar(50) NOT NULL,
  `rol_tipo_denominacion` varchar(50) DEFAULT NULL,
  `rol_tipo_descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`rol_tipo_id`),
  UNIQUE KEY `rol_tipo_id` (`rol_tipo_id`),
  UNIQUE KEY `rol_tipo_denominacion` (`rol_tipo_denominacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `rol_tipo`
--

INSERT INTO `rol_tipo` (`rol_tipo_id`, `rol_tipo_denominacion`, `rol_tipo_descripcion`) VALUES
('RT0', 'root', 'Desarrolladores'),
('RT1', 'SISTEMA', 'Usuarios Administrativos.'),
('RT2', 'EXTERNO', 'Usuario Normales del sistema.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono`
--

CREATE TABLE IF NOT EXISTS `telefono` (
  `telefono_id` varchar(50) NOT NULL,
  `telefono_numero` varchar(100) NOT NULL,
  `telefono_etiqueta` varchar(50) DEFAULT NULL,
  `telefono_compania` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`telefono_id`),
  UNIQUE KEY `telefono_id` (`telefono_id`),
  UNIQUE KEY `telefono_numero` (`telefono_numero`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `telefono`
--

INSERT INTO `telefono` (`telefono_id`, `telefono_numero`, `telefono_etiqueta`, `telefono_compania`) VALUES
('TEL01', '5515402037', 'Casa', 'Telmex');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `usuario_id` varchar(50) NOT NULL,
  `usuario_nombre` varchar(50) DEFAULT NULL,
  `usuario_password` varchar(50) DEFAULT NULL,
  `usuario_facebook_id` varchar(50) DEFAULT NULL,
  `sessionKey` varchar(45) NOT NULL,
  `usuario_status` varchar(255) DEFAULT 'ACTIVO',
  PRIMARY KEY (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario_id`, `usuario_nombre`, `usuario_password`, `usuario_facebook_id`, `sessionKey`, `usuario_status`) VALUES
('USU01', 'Admin', 'Admin', '77777', '77777', 'ACTIVO');

--
-- Filtros para las tablas descargadas (dump)
--

--
-- Filtros para la tabla `conectados_chat`
--
ALTER TABLE `conectados_chat`
  ADD CONSTRAINT `conectados_chat_ibfk_1` FOREIGN KEY (`conectados_chat_personaid`) REFERENCES `persona` (`persona_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona_correo`
--
ALTER TABLE `persona_correo`
  ADD CONSTRAINT `rel_persona_correo_correo_id_correo_correo_id` FOREIGN KEY (`correo_id`) REFERENCES `correo` (`correo_id`),
  ADD CONSTRAINT `rel_persona_correo_persona_id_persona_persona_id` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`persona_id`);

--
-- Filtros para la tabla `persona_direccion`
--
ALTER TABLE `persona_direccion`
  ADD CONSTRAINT `rdrd` FOREIGN KEY (`direccion_id`) REFERENCES `direccion` (`direccion_id`),
  ADD CONSTRAINT `rel_persona_direccion_persona_id_persona_persona_id` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`persona_id`);

--
-- Filtros para la tabla `persona_grupo`
--
ALTER TABLE `persona_grupo`
  ADD CONSTRAINT `persona_grupo_ibfk_1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`persona_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `persona_grupo_ibfk_2` FOREIGN KEY (`grupo_id`) REFERENCES `grupo` (`grupo_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona_telefono`
--
ALTER TABLE `persona_telefono`
  ADD CONSTRAINT `persona_telefono_ibfk_1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`persona_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `persona_telefono_ibfk_2` FOREIGN KEY (`telefono_id`) REFERENCES `telefono` (`telefono_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `proceso_rol`
--
ALTER TABLE `proceso_rol`
  ADD CONSTRAINT `proceso_rol_ibfk_1` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`rol_id`),
  ADD CONSTRAINT `rel_proceso_rol_proceso_id_proceso_proceso_id` FOREIGN KEY (`proceso_id`) REFERENCES `proceso` (`proceso_id`);

--
-- Filtros para la tabla `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `FK_quiz_1` FOREIGN KEY (`idcurso`) REFERENCES `curso` (`idcurso`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reactivo`
--
ALTER TABLE `reactivo`
  ADD CONSTRAINT `FK_reactivo_1` FOREIGN KEY (`idquiz`) REFERENCES `quiz` (`idquiz`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reactivo_respuesta`
--
ALTER TABLE `reactivo_respuesta`
  ADD CONSTRAINT `FK_reactivo_respuesta_1` FOREIGN KEY (`idreactivo`) REFERENCES `reactivo` (`idreactivo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `recurso_aprendizaje`
--
ALTER TABLE `recurso_aprendizaje`
  ADD CONSTRAINT `FK_recurso_aprendizaje_1` FOREIGN KEY (`idcurso`) REFERENCES `curso` (`idcurso`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `rol`
--
ALTER TABLE `rol`
  ADD CONSTRAINT `rol_ibfk_1` FOREIGN KEY (`rol_tipo_id`) REFERENCES `rol_tipo` (`rol_tipo_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `rol_persona`
--
ALTER TABLE `rol_persona`
  ADD CONSTRAINT `rol_persona_ibfk_1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`persona_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rol_persona_ibfk_2` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`rol_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `rol_persona_usuario`
--
ALTER TABLE `rol_persona_usuario`
  ADD CONSTRAINT `rol_persona_usuario_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`usuario_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rol_persona_usuario_ibfk_2` FOREIGN KEY (`rol_persona_id`) REFERENCES `rol_persona` (`rol_persona_id`) ON DELETE CASCADE ON UPDATE CASCADE;
