-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Out-2020 às 00:56
-- Versão do servidor: 10.4.8-MariaDB
-- versão do PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `drogarimfull`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `idCategoria` smallint(6) DEFAULT NULL,
  `nome` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`idCategoria`, `nome`) VALUES
(18, 'Ernser'),
(83, 'Treutel'),
(27, 'Kuhlman'),
(51, 'Frami'),
(95, 'Hackett'),
(17, 'Wilderman'),
(100, 'McKenzie'),
(56, 'White'),
(2, 'Hilpert'),
(37, 'Altenwerth'),
(34, 'Purdy'),
(52, 'Adams'),
(76, 'Waelchi'),
(73, 'Rice'),
(60, 'Mayer'),
(84, 'Breitenberg'),
(91, 'Powlowski'),
(40, 'Ritchie'),
(32, 'Brown'),
(64, 'Kuhlman'),
(81, 'Wunsch'),
(53, 'Leannon'),
(57, 'Lemke'),
(39, 'Rogahn'),
(99, 'Goodwin'),
(77, 'Hand'),
(14, 'Sporer'),
(68, 'Breitenberg'),
(12, 'Lindgren'),
(3, 'Wiegand'),
(63, 'Kautzer'),
(19, 'Walter'),
(61, 'Tillman'),
(62, 'Labadie'),
(46, 'Hills'),
(13, 'Farrell'),
(20, 'Gutmann'),
(75, 'Kirlin'),
(97, 'Boyer'),
(66, 'Keebler'),
(33, 'Schimmel'),
(79, 'Windler'),
(42, 'Grady'),
(94, 'Cruickshank'),
(74, 'Medhurst'),
(89, 'Ebert'),
(82, 'Braun'),
(47, 'Hyatt'),
(0, 'Hackett'),
(65, 'Jakubowski'),
(22, 'Kunze'),
(25, 'Kilback'),
(54, 'O\'Hara'),
(43, 'Wuckert'),
(4, 'Smith'),
(50, 'Kuphal'),
(44, 'Koch'),
(6, 'Doyle'),
(98, 'Swaniawski'),
(11, 'Schumm'),
(96, 'O\'Connell'),
(30, 'Gutkowski'),
(21, 'Bauch'),
(29, 'Braun'),
(85, 'Kutch'),
(72, 'Ratke'),
(35, 'Abbott'),
(23, 'Hodkiewicz'),
(1, 'Stoltenberg'),
(71, 'Ruecker'),
(45, 'Herzog'),
(26, 'Brown'),
(31, 'Herzog'),
(48, 'Rau'),
(16, 'Krajcik'),
(41, 'Pollich'),
(10, 'Koss'),
(67, 'Feil'),
(69, 'Schneider'),
(7, 'Stracke'),
(70, 'Bosco'),
(49, 'Schneider'),
(5, 'Paucek'),
(55, 'Gleichner'),
(59, 'Franecki'),
(93, 'Ziemann'),
(88, 'Altenwerth'),
(86, 'Corkery'),
(92, 'Huels'),
(78, 'Schamberger'),
(87, 'Keeling'),
(58, 'Morar'),
(80, 'Ruecker'),
(28, 'McKenzie'),
(8, 'Wiegand'),
(36, 'West'),
(24, 'Haag'),
(9, 'Herzog'),
(90, 'Stark'),
(38, 'Murphy');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` smallint(6) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `numeroCasa` varchar(45) DEFAULT NULL,
  `complemento` varchar(45) DEFAULT NULL,
  `data_nascimento` varchar(45) DEFAULT NULL,
  `sexo` tinyint(1) DEFAULT NULL,
  `cep` varchar(45) DEFAULT NULL,
  `logradouro` varchar(45) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `uf` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nome`, `cpf`, `telefone`, `email`, `numeroCasa`, `complemento`, `data_nascimento`, `sexo`, `cep`, `logradouro`, `bairro`, `cidade`, `uf`) VALUES
(0, 'Ettie Johnson Jr.', '44561000', '04688327689', 'mschinner@example.net', '390', 'Suite 589', '1993-10-21', 0, '92291-3527', 'Roxanne Causeway', 'Lake', 'North Claude', 'Washington'),
(1, 'Dr. Loma Herzog PhD', '31216098', '940.617.7672x517', 'rsteuber@example.com', '721', 'Apt. 930', '1989-03-27', 1, '19258', 'McLaughlin Orchard', 'New', 'Port Janice', 'Vermont'),
(2, 'Lilian Miller', '92318144', '+57(5)3443653513', 'marvin.ervin@example.org', '440', 'Apt. 729', '2002-08-12', 0, '34304-3226', 'Braun Hollow', 'East', 'Ozellachester', 'Ohio'),
(3, 'Dr. Torrey Hayes', '24493529', '215.838.8279', 'zieme.alena@example.com', '01471', 'Suite 475', '1993-11-28', 0, '98204-8673', 'Rau Branch', 'South', 'Armstrongmouth', 'Idaho'),
(4, 'Prof. Rhiannon Fisher', '54770560', '(987)710-0406', 'wilhelm.pouros@example.net', '970', 'Apt. 358', '1989-02-09', 1, '43808', 'Carroll Place', 'West', 'New Cydneyburgh', 'Florida'),
(5, 'Madaline Kub', '22139962', '+82(6)0859775061', 'qmills@example.net', '73437', 'Suite 511', '2014-01-20', 0, '94424', 'Bashirian Crossing', 'North', 'Lake Marianoside', 'Iowa'),
(6, 'Moises Greenfelder', '14530524', '07793127184', 'novella02@example.net', '4552', 'Apt. 522', '1998-09-15', 1, '60073', 'Lowe Rapids', 'East', 'Thompsonberg', 'Pennsylvania'),
(7, 'Alejandrin Kertzmann', '33747620', '+46(6)7527853174', 'litzy.casper@example.com', '0060', 'Suite 344', '1983-12-19', 1, '75361', 'Carter Plain', 'Lake', 'East Mozellebury', 'NewYork'),
(8, 'Arianna Russel DDS', '02854458', '02550004171', 'keenan01@example.net', '1068', 'Apt. 674', '2018-05-20', 0, '49888', 'Lambert Roads', 'North', 'New Filomena', 'SouthCarolina'),
(9, 'Sheridan Tillman I', '10613146', '1-133-667-6861x1710', 'electa.cummings@example.com', '34260', 'Apt. 512', '1981-04-22', 0, '75078', 'Athena Place', 'East', 'New Chanel', 'Tennessee'),
(10, 'Angela Reilly', '65029404', '(758)504-0312', 'friedrich34@example.org', '424', 'Apt. 422', '2012-07-25', 1, '62469', 'Volkman Trail', 'South', 'South Kayceeshire', 'Nebraska'),
(11, 'Taurean Mraz Jr.', '50553297', '(392)926-7593x042', 'harmon82@example.com', '67831', 'Suite 034', '2017-01-07', 0, '69051-9580', 'Ari Skyway', 'East', 'Port Vicentafurt', 'Wisconsin'),
(12, 'Antonia Herzog', '69271366', '09974173277', 'lakin.tressie@example.com', '126', 'Apt. 123', '1998-01-20', 1, '75945', 'Johnston Cape', 'Lake', 'New Joannieshire', 'Michigan'),
(13, 'Sebastian Ondricka V', '33611860', '(843)151-6702x46072', 'devon.gislason@example.org', '78772', 'Apt. 308', '1977-11-05', 0, '14323', 'Norwood Union', 'West', 'Roelville', 'Connecticut'),
(14, 'Jarrell Steuber', '41498866', '1-404-244-8508x281', 'muller.loraine@example.org', '305', 'Suite 274', '2018-08-21', 0, '36691', 'Satterfield Plaza', 'North', 'South Kane', 'Tennessee'),
(15, 'Gussie Bergnaum', '42281962', '536.980.4120', 'ursula00@example.net', '6667', 'Apt. 759', '1970-10-15', 1, '58953-4423', 'Larkin Rapid', 'Port', 'West Kathryn', 'Oklahoma'),
(16, 'Allan Zemlak', '04913535', '+29(4)4591527107', 'crutherford@example.org', '6316', 'Suite 379', '1996-08-04', 0, '22031-8660', 'Lorenz Meadow', 'Lake', 'Manuelville', 'Illinois'),
(17, 'Kenyatta Hamill', '13423131', '(013)697-2424x86292', 'jerod.kuhlman@example.net', '8320', 'Suite 047', '1983-07-19', 0, '05644-5661', 'Larson Roads', 'East', 'O\'Keefechester', 'Montana'),
(18, 'Mabelle Gutkowski', '79582834', '385.271.9553x529', 'astehr@example.net', '628', 'Apt. 808', '2000-09-21', 1, '14407-7233', 'Keenan Ridge', 'Port', 'Lake Juanitamouth', 'Missouri'),
(19, 'Terrance Mayert', '07289347', '620-185-3975x3050', 'wfisher@example.org', '14320', 'Suite 915', '2011-04-27', 1, '55827-3067', 'Wilkinson Expressway', 'Port', 'Lake Ardenmouth', 'Pennsylvania'),
(20, 'Elaina Kuhlman', '10995730', '(018)056-2957x584', 'kuvalis.bethel@example.com', '3439', 'Suite 342', '1980-05-02', 1, '14498-9772', 'Meta Mission', 'Port', 'Marksmouth', 'Delaware'),
(21, 'Holly Hirthe', '26214023', '1-514-946-4111x5498', 'micaela.wyman@example.org', '3708', 'Suite 229', '2002-09-19', 0, '84391', 'Amber Pike', 'West', 'Stiedemannland', 'Mississippi'),
(22, 'Mr. Myles Armstrong V', '10629673', '(551)909-4974x03514', 'christa21@example.org', '5272', 'Suite 927', '2006-08-01', 1, '56193-1858', 'Brannon Canyon', 'New', 'West Marcosmouth', 'Vermont'),
(23, 'Philip Huels', '40251233', '464.945.2046x1302', 'lamont13@example.org', '746', 'Apt. 406', '2010-10-02', 0, '78104', 'Fatima Trail', 'New', 'Kayleighton', 'District of Columbia'),
(24, 'Rylan Lubowitz', '94026955', '007.668.9146x78109', 'vicenta.larkin@example.com', '8093', 'Suite 338', '2008-12-20', 1, '00926', 'Kathleen Light', 'Port', 'Cassinton', 'RhodeIsland'),
(25, 'Lesley Schoen', '72959732', '(017)043-0086', 'wilkinson.aliza@example.com', '3804', 'Suite 448', '2005-10-17', 1, '53558', 'Bechtelar Pines', 'North', 'Lake Imamouth', 'Connecticut'),
(26, 'Mrs. Mckayla Mayert I', '71489476', '1-267-683-4404', 'luisa57@example.com', '21424', 'Suite 392', '1979-03-05', 0, '63734-2295', 'Beahan Station', 'Port', 'Bauchhaven', 'SouthDakota'),
(27, 'Freddie McCullough II', '50879748', '04647936820', 'damien.kuhic@example.com', '323', 'Suite 205', '1970-10-26', 0, '86594-1632', 'Torey Ridges', 'South', 'Johnstonton', 'Montana'),
(28, 'Lucy Jaskolski', '29209392', '(849)721-8199x127', 'hschmeler@example.com', '787', 'Apt. 591', '1975-11-05', 1, '80711', 'Jacobson Plain', 'Lake', 'Tobyton', 'Louisiana'),
(29, 'Miss Rosalind Pfannerstill Sr.', '39457509', '06379164428', 'jamil.ward@example.net', '30359', 'Apt. 193', '2012-05-11', 0, '42016', 'Boyer Summit', 'East', 'Moenland', 'Missouri'),
(30, 'Princess Kuhic', '33824222', '345-460-5114x2232', 'rowe.keagan@example.net', '294', 'Suite 459', '1970-08-12', 0, '38487-6884', 'Roob Center', 'East', 'Krajcikchester', 'Utah'),
(31, 'Amie Kuhic', '14507588', '+69(9)5275681093', 'borer.horace@example.com', '42664', 'Apt. 508', '1982-05-01', 1, '57001', 'Haag Shores', 'New', 'Vonberg', 'Indiana'),
(32, 'Mr. Elwyn Schiller MD', '04741138', '05709661369', 'wuckert.saul@example.net', '986', 'Apt. 613', '1974-07-21', 1, '89350', 'Chris Crossing', 'South', 'New Kody', 'Maine'),
(33, 'Enoch Homenick', '19246710', '174.646.2604x9313', 'river83@example.com', '72117', 'Apt. 250', '2008-01-25', 1, '05565', 'General Mountain', 'New', 'South Katlynnton', 'WestVirginia'),
(34, 'Dean Torp', '96837238', '1-332-773-3093x24353', 'freddy.hoeger@example.com', '29112', 'Apt. 583', '1993-08-25', 1, '28046', 'Jamal Lights', 'New', 'Roobstad', 'Virginia'),
(35, 'Dr. Monserrate Rice', '22987099', '(236)153-5258', 'jace.breitenberg@example.org', '786', 'Suite 327', '1989-02-27', 1, '72067', 'Meta Village', 'West', 'Olgaburgh', 'Idaho'),
(36, 'Betty O\'Conner', '09659391', '099.768.5881x988', 'adrianna.rowe@example.com', '69200', 'Apt. 861', '1972-05-29', 1, '15423', 'Bella Keys', 'New', 'Port Nicolette', 'Idaho'),
(37, 'Calista McClure', '31977135', '(736)090-2741', 'rmurray@example.com', '567', 'Suite 263', '2017-05-19', 1, '51087-3381', 'Jerrod Views', 'South', 'Madalynfurt', 'NorthDakota'),
(38, 'Eula Willms', '93821964', '+50(6)7260697157', 'bogisich.jaiden@example.com', '020', 'Apt. 301', '1973-02-11', 0, '24712-8803', 'Madalyn Run', 'North', 'Felicityshire', 'Georgia'),
(39, 'Mallie Will Sr.', '85016712', '1-384-426-0770x68256', 'florian.harvey@example.com', '309', 'Apt. 373', '1988-08-17', 1, '71355-8427', 'Gaylord Street', 'Port', 'Port Madisynton', 'Kansas'),
(40, 'Rachel Rutherford Sr.', '31679282', '1-595-285-3991x817', 'dana.abernathy@example.org', '69443', 'Apt. 097', '1996-05-05', 0, '55301-7665', 'Connor Vista', 'West', 'Port Aracelyville', 'Wyoming'),
(41, 'Prof. Claudine Lynch', '15003447', '584.370.1209', 'yabshire@example.com', '01075', 'Suite 320', '2015-11-26', 0, '95404', 'Lindgren Stravenue', 'New', 'Denesikshire', 'NewMexico'),
(42, 'Dr. Vidal Kuhlman', '79794480', '1-722-503-9783', 'ryder.champlin@example.org', '58478', 'Apt. 099', '1987-04-29', 1, '19478-7809', 'Waylon Divide', 'West', 'North Nicole', 'Massachusetts'),
(43, 'Lindsay Wisozk', '56270372', '1-159-883-5989', 'tking@example.net', '148', 'Suite 174', '2001-03-05', 0, '57298', 'Roxane Cape', 'South', 'New Pearlinemouth', 'Minnesota'),
(44, 'Claudia Mitchell II', '30825222', '882-360-5881', 'abbigail14@example.net', '1991', 'Suite 377', '1989-04-03', 0, '76043-3652', 'Hessel Stream', 'Port', 'Jakubowskibury', 'Louisiana'),
(45, 'Jordan Vandervort', '49477030', '1-359-459-7967x5174', 'kurt.konopelski@example.net', '824', 'Suite 132', '1989-01-03', 0, '91471', 'Holden Light', 'Port', 'North Yasmeen', 'NewYork'),
(46, 'Mr. Terry Ryan', '90312755', '377-071-4938', 'azieme@example.net', '956', 'Apt. 825', '2001-04-08', 0, '94347', 'Larissa Mountains', 'East', 'West Leonie', 'SouthCarolina'),
(47, 'Enoch Kuhn', '85113954', '(339)131-3913', 'aharris@example.com', '74600', 'Apt. 867', '1986-06-24', 1, '55020-7909', 'Alexandrine Plains', 'Lake', 'Bertashire', 'Delaware'),
(48, 'Moses Wiegand', '56413755', '(266)696-8953x71628', 'dangelo.gorczany@example.org', '992', 'Suite 064', '1997-09-21', 1, '94431-8958', 'Gail Coves', 'South', 'Port Edaville', 'Montana'),
(49, 'Armani Boyer IV', '37534806', '(401)866-5826', 'pasquale.reichert@example.org', '4341', 'Suite 523', '1985-12-10', 1, '97122-5250', 'Marjorie Village', 'East', 'Port Leon', 'Kansas'),
(50, 'Janet Gusikowski', '98150618', '(589)990-1829', 'filiberto38@example.com', '346', 'Apt. 841', '1996-10-23', 1, '27906', 'Vesta Route', 'East', 'New Milohaven', 'Idaho'),
(51, 'Stephan Rowe', '76739057', '225.497.8506x1470', 'jacques.trantow@example.com', '1332', 'Apt. 336', '2009-12-29', 1, '77095', 'Meaghan Shores', 'Lake', 'Port Nikko', 'Louisiana'),
(52, 'Ms. Marjory Bahringer', '10125335', '663.417.7799', 'cormier.chelsea@example.com', '2214', 'Suite 951', '1998-10-07', 1, '62923-5555', 'Parisian Mills', 'Lake', 'Emmerichville', 'Louisiana'),
(53, 'Woodrow Haley', '02823294', '(538)726-2727x9299', 'immanuel31@example.net', '8855', 'Suite 028', '1993-04-25', 1, '29219', 'Little Station', 'New', 'West Kole', 'SouthDakota'),
(54, 'Mrs. Carmella Towne Jr.', '89217474', '(922)452-2047x779', 'allene11@example.net', '53403', 'Suite 230', '1998-03-11', 1, '63186', 'Tillman Path', 'Port', 'Ernaville', 'Connecticut'),
(55, 'Dr. Genesis Bosco', '89758441', '734-475-1459x87163', 'rollin.hoppe@example.org', '28171', 'Suite 969', '1973-02-17', 0, '32676', 'Mack Common', 'Port', 'East Marjolaine', 'Michigan'),
(56, 'Aniyah Goldner', '17387309', '(566)779-3511', 'roob.newell@example.com', '1014', 'Apt. 711', '1970-05-22', 1, '62453-2016', 'Hand Port', 'South', 'Bartolettiburgh', 'Hawaii'),
(57, 'Rubie Conroy', '54836693', '1-627-107-0096x966', 'agustin26@example.com', '07995', 'Suite 612', '1986-11-06', 1, '44534', 'Schneider Mews', 'West', 'Schmelershire', 'NewMexico'),
(58, 'Alana Herzog', '88686493', '022.322.8659x955', 'rtoy@example.net', '89929', 'Apt. 526', '1971-10-18', 1, '66234', 'Hertha Avenue', 'Lake', 'Rauport', 'SouthDakota'),
(59, 'Yasmeen Schaefer', '37303372', '07903294958', 'rhaag@example.org', '89854', 'Suite 857', '1981-05-01', 1, '43295', 'Jodie Corners', 'North', 'South Brooks', 'NewMexico'),
(60, 'Mrs. Eveline Beer III', '24506045', '1-876-618-1539', 'xavier39@example.org', '9321', 'Suite 461', '1994-04-11', 0, '13841', 'Kuhn Cove', 'West', 'South Fatimaport', 'Kentucky'),
(61, 'Cassandre Brakus', '74425020', '332-345-5812', 'fay.rolando@example.org', '33246', 'Apt. 413', '1974-11-28', 1, '78599-3810', 'Ignatius Wells', 'Port', 'Borertown', 'Maryland'),
(62, 'Joaquin Senger', '00353809', '(893)286-6123x5598', 'gkohler@example.net', '169', 'Apt. 570', '2001-05-30', 1, '47466', 'Augusta Route', 'Lake', 'Herminaville', 'Arkansas'),
(63, 'Prof. Nichole Jast V', '37101787', '(540)441-7111', 'tatyana.beier@example.net', '7260', 'Suite 909', '2017-08-02', 0, '95555', 'Lonzo Rapid', 'West', 'Port Jasen', 'Nevada'),
(64, 'Melany McCullough', '13629687', '106-702-3499', 'franco72@example.net', '7191', 'Suite 252', '1975-06-05', 0, '15428-5777', 'Neil Run', 'West', 'West Berryview', 'NewJersey'),
(65, 'Lera Schinner', '10026076', '381.636.6140', 'cschuster@example.net', '875', 'Apt. 894', '1999-07-14', 1, '30218', 'Alfredo Stravenue', 'West', 'Bodeview', 'Indiana'),
(66, 'Shanon Dietrich', '39453853', '06113915583', 'hessel.dangelo@example.net', '76177', 'Apt. 982', '1975-05-30', 1, '58439-5051', 'Nash Shoal', 'North', 'Kshlerinfurt', 'NewYork'),
(67, 'Richmond West', '47164918', '06716920620', 'kertzmann.monserrate@example.net', '838', 'Suite 937', '2015-05-09', 1, '88706', 'Flavie Station', 'Lake', 'Joelbury', 'Indiana'),
(68, 'Leopold Kilback', '08952400', '524-449-6924', 'awelch@example.org', '970', 'Suite 072', '2007-01-16', 0, '94378-3841', 'Werner Cape', 'New', 'Misaelside', 'Maine'),
(69, 'Adelia Reynolds', '83746949', '417.567.3719x5906', 'vonrueden.brisa@example.org', '56994', 'Apt. 600', '1996-09-21', 1, '45670', 'Roxanne Park', 'East', 'Alphonsoport', 'Illinois'),
(70, 'Shyanne Champlin Jr.', '84678195', '(729)723-2963x4618', 'sawayn.jarvis@example.com', '728', 'Suite 700', '1993-04-27', 0, '37118-4707', 'Randal Drives', 'West', 'West Oma', 'Tennessee'),
(71, 'Dr. Samanta Turcotte', '35455981', '151-551-1973x26640', 'irolfson@example.com', '86896', 'Apt. 919', '1973-08-05', 0, '80933-6452', 'Kip View', 'South', 'New Zita', 'Massachusetts'),
(72, 'Joey Rath', '94040005', '1-400-734-0008', 'madison46@example.org', '99850', 'Apt. 107', '1976-06-24', 1, '34467-2045', 'Candice Roads', 'Port', 'East Aliciaview', 'Kansas'),
(73, 'Karen Ebert MD', '01763836', '338-996-4636x39575', 'imelda69@example.org', '21671', 'Apt. 451', '2010-11-24', 1, '35241', 'Thiel Extension', 'South', 'Port Pattie', 'SouthDakota'),
(74, 'Prof. Celestino Ziemann II', '18286335', '(849)450-4569x78806', 'gblanda@example.org', '3871', 'Apt. 357', '1993-06-26', 1, '93119-5527', 'Gabe Crescent', 'South', 'Sandrineland', 'Idaho'),
(76, 'Mrs. Yvonne Rodriguez V', '98675197', '(639)517-0116', 'gislason.ali@example.net', '2069', 'Suite 546', '2011-02-23', 0, '28685-2625', 'Zechariah Heights', 'East', 'Hackettfurt', 'Louisiana'),
(77, 'Treva Jenkins', '55274739', '(526)501-7916', 'reyna.bernhard@example.net', '9828', 'Apt. 661', '2011-10-04', 0, '63659-0786', 'Crystal Squares', 'South', 'North Flo', 'Nebraska'),
(78, 'Titus O\'Conner', '93083478', '(810)624-7735x67548', 'travis74@example.org', '87734', 'Suite 199', '2018-05-15', 0, '41526', 'Lela Mission', 'South', 'Cummingsfort', 'Louisiana'),
(79, 'Melyna Oberbrunner', '83056529', '1-363-166-8033', 'kerluke.alycia@example.com', '591', 'Apt. 419', '1988-12-06', 0, '42552-9675', 'Cara Park', 'Lake', 'Port Gabrielletown', 'WestVirginia'),
(80, 'Russell Bayer', '05498086', '(296)000-6294', 'crooks.rickey@example.net', '98672', 'Suite 761', '2012-11-19', 0, '84034-0079', 'Rahsaan Brooks', 'West', 'West Krystina', 'California'),
(81, 'Prof. Donato Mills MD', '62977661', '00860329171', 'ambrose.cruickshank@example.net', '72189', 'Suite 904', '1971-02-26', 0, '02246', 'Chadrick Forges', 'New', 'Wadeborough', 'Colorado'),
(82, 'Nat Ziemann', '67259304', '261.952.8946x03964', 'griffin.cremin@example.org', '6092', 'Apt. 478', '1976-03-31', 0, '81659', 'Maggio Landing', 'West', 'Aufderharbury', 'Nebraska'),
(83, 'Genoveva Collins', '33419534', '1-997-787-6850', 'fmckenzie@example.com', '7482', 'Suite 136', '1994-02-11', 0, '44114-9657', 'Barrows Locks', 'West', 'Lebsackton', 'Kentucky'),
(84, 'Jadon Barton', '96325803', '974-628-5279x747', 'percival48@example.net', '25363', 'Suite 014', '1976-11-29', 1, '88625-4679', 'Garnet Court', 'Port', 'West Laurinemouth', 'Nebraska'),
(85, 'Buster Howell II', '81927852', '341-941-9606x471', 'martina04@example.com', '635', 'Apt. 787', '1970-09-19', 1, '02102', 'Alexandro Point', 'New', 'Lake Myrtlestad', 'Massachusetts'),
(86, 'Muriel Block', '15825841', '1-537-310-3539', 'hettinger.ara@example.com', '8472', 'Apt. 488', '1993-12-05', 1, '39661', 'Amanda Corners', 'North', 'North Rusty', 'Florida'),
(87, 'Easter Osinski II', '99952693', '1-867-388-8389', 'pwolf@example.net', '471', 'Suite 239', '1983-07-21', 1, '49627', 'Johns Forks', 'South', 'South Tyson', 'Minnesota'),
(88, 'Uriah VonRueden Jr.', '40459226', '207-986-0665x9146', 'raven.hessel@example.org', '5106', 'Apt. 740', '2007-10-18', 0, '94642-8048', 'Wilkinson Way', 'Lake', 'South Giles', 'Hawaii'),
(89, 'Mario Boyle', '03962015', '(548)756-6832', 'cory.kulas@example.com', '58302', 'Suite 507', '1980-09-14', 0, '60066', 'Mona Loop', 'North', 'East Sincere', 'NewJersey'),
(90, 'Mrs. Alysha Pollich', '68824648', '(009)459-0848', 'marjorie.kirlin@example.org', '28508', 'Apt. 358', '1971-01-24', 0, '89105-2861', 'Cremin Bypass', 'West', 'South Vicky', 'Nebraska'),
(91, 'Dandre Cormier', '55112116', '761.174.4582x15438', 'stamm.clemens@example.org', '50944', 'Apt. 171', '2006-04-02', 1, '53073', 'Schmitt Pines', 'South', 'Port Hugh', 'Arkansas'),
(92, 'Jed Pagac', '73452751', '964.355.7909x14476', 'neha.schimmel@example.net', '37627', 'Apt. 522', '2004-01-21', 0, '32919', 'Daugherty Pass', 'Lake', 'West Maurinetown', 'RhodeIsland'),
(93, 'Aniyah Stehr', '23754003', '081-772-1679x43209', 'kamron.borer@example.org', '71535', 'Apt. 579', '2002-05-25', 1, '49735-6878', 'Satterfield Station', 'West', 'Bergstromview', 'Illinois'),
(94, 'Prof. Peter Dach Sr.', '42216070', '417.709.5908x16942', 'kris.noe@example.com', '267', 'Apt. 246', '1984-08-18', 1, '38262', 'Upton Neck', 'Lake', 'Dexterfort', 'Hawaii'),
(95, 'Rodrick Lueilwitz', '02950792', '04363497041', 'keegan.koelpin@example.net', '857', 'Apt. 481', '2002-08-12', 0, '35884', 'Osinski Ridges', 'New', 'Summerhaven', 'Delaware'),
(96, 'Giovanna Boehm', '07056765', '671.044.1239', 'ggerlach@example.com', '478', 'Suite 271', '2005-03-25', 1, '42996', 'Blanda Falls', 'South', 'North Idella', 'SouthDakota'),
(97, 'Prof. Mariane Bruen', '69630927', '1-207-981-4595x413', 'maybell.rohan@example.com', '847', 'Apt. 198', '1977-07-02', 0, '84213', 'Kayli Grove', 'North', 'Urbanbury', 'NorthCarolina'),
(98, 'Greg Wuckert', '09869738', '(892)099-5155', 'crist.jazmyne@example.org', '1181', 'Suite 031', '2005-06-08', 0, '55736', 'Vicente Spring', 'South', 'McClurebury', 'Virginia'),
(99, 'Dawson Lockman', '15947451', '586.542.3203', 'kaley.stehr@example.com', '946', 'Apt. 090', '2015-03-26', 1, '32549-2993', 'Edd Road', 'South', 'North Harveyshire', 'Mississippi'),
(100, 'Manley Beier', '07290213', '1-311-661-3352x6674', 'eunice19@example.com', '47603', 'Apt. 670', '2000-10-02', 0, '70652', 'Dakota Point', 'Port', 'Cindyborough', 'Louisiana');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoque`
--

CREATE TABLE `estoque` (
  `idEstoque` smallint(6) NOT NULL,
  `quant_min` int(11) DEFAULT NULL,
  `quant_max` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `estoque`
--

INSERT INTO `estoque` (`idEstoque`, `quant_min`, `quant_max`) VALUES
(123, 5, 12),
(1112, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fabricante`
--

CREATE TABLE `fabricante` (
  `idFabricante` smallint(6) NOT NULL,
  `nome` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `fabricante`
--

INSERT INTO `fabricante` (`idFabricante`, `nome`) VALUES
(0, 'Dedrick'),
(1, 'Rodrick'),
(3, 'Misael'),
(4, 'Nathen'),
(5, 'Kurtis'),
(6, 'Felipe'),
(7, 'Justyn'),
(8, 'Raymundo'),
(9, 'Ellsworth'),
(10, 'Hugh'),
(11, 'Wilton'),
(12, 'Skye'),
(13, 'Jace'),
(14, 'Deshawn'),
(15, 'Candido'),
(16, 'Eric'),
(17, 'Jameson'),
(18, 'Jaden'),
(19, 'Torrance'),
(20, 'Lukas'),
(21, 'Theo'),
(22, 'Webster'),
(23, 'Neil'),
(24, 'Mervin'),
(25, 'Norwood'),
(26, 'Jeromy'),
(27, 'Erling'),
(28, 'Scot'),
(29, 'Ari'),
(30, 'Percy'),
(31, 'Darien'),
(32, 'Camryn'),
(33, 'Isaias'),
(34, 'Reginald'),
(35, 'Brendan'),
(36, 'Ibrahim'),
(37, 'Kim'),
(38, 'Kenyon'),
(39, 'Wallace'),
(40, 'Jamey'),
(41, 'Demond'),
(42, 'Mitchell'),
(43, 'Gerson'),
(44, 'Emanuel'),
(45, 'Pierce'),
(46, 'Pedro'),
(47, 'Roscoe'),
(48, 'Reyes'),
(49, 'Vito'),
(50, 'Lee'),
(51, 'Sage'),
(52, 'Tony'),
(53, 'Johnny'),
(54, 'Brannon'),
(55, 'Gabriel'),
(56, 'Cruz'),
(57, 'Armand'),
(58, 'Malcolm'),
(59, 'Donny'),
(60, 'Mauricio'),
(61, 'Wyman'),
(62, 'Candido'),
(63, 'Lonny'),
(64, 'Marvin'),
(65, 'D\'angelo'),
(66, 'Dario'),
(67, 'Hazel'),
(68, 'Mack'),
(69, 'Miguel'),
(70, 'Garfield'),
(71, 'Hollis'),
(72, 'Deon'),
(73, 'Cale'),
(74, 'Pietro'),
(75, 'Prince'),
(76, 'Jaren'),
(77, 'Terence'),
(78, 'Uriah'),
(79, 'Demario'),
(80, 'Johnnie'),
(81, 'Jordyn'),
(82, 'Christ'),
(83, 'Colton'),
(84, 'Cesar'),
(85, 'Gustave'),
(86, 'Hillard'),
(87, 'Halle'),
(88, 'Nolan'),
(89, 'Bartholome'),
(91, 'Cortez'),
(92, 'Dameon'),
(93, 'Omer'),
(94, 'Brennan'),
(95, 'Travis'),
(96, 'Christop'),
(97, 'Domenic'),
(98, 'Sigmund'),
(99, 'Kiley'),
(100, 'Ezekiel');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `idFuncionario` smallint(6) NOT NULL,
  `login` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `funcao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`idFuncionario`, `login`, `senha`, `funcao`) VALUES
(0, 'et', '1949', 'f'),
(1, 'molestiae', '2792', 'g'),
(2, 'consequatur', '1103', 'c'),
(3, 'est', '2577', 'c'),
(4, 'est', '1712', 'q'),
(5, 'aut', '2529', 'n'),
(6, 'amet', '835', 'e'),
(7, 'iure', '1403', 'o'),
(8, 'omnis', '1786', 'q'),
(9, 'itaque', '2695', 'k'),
(10, 'in', '2610', 'j'),
(11, 'esse', '2170', 'q'),
(12, 'ducimus', '1771', 'm'),
(13, 'nesciunt', '1179', 'w'),
(14, 'provident', '893', 'y'),
(15, 'eveniet', '2240', 'c'),
(16, 'aut', '1491', 'j'),
(17, 'eligendi', '941', 'j'),
(18, 'quia', '1876', 'p'),
(20, 'odit', '2795', 'n'),
(21, 'suscipit', '2301', 'm'),
(22, 'tenetur', '1898', 'x'),
(23, 'sit', '2333', 'q'),
(24, 'sed', '2394', 'q'),
(25, 'placeat', '2425', 'e'),
(26, 'officia', '593', 'v'),
(27, 'nesciunt', '2598', 'a'),
(28, 'quis', '1550', 'm'),
(29, 'ullam', '901', 'm'),
(30, 'odit', '1371', 'w'),
(31, 'itaque', '1098', 'a'),
(32, 'velit', '650', 'j'),
(33, 'sit', '1181', 's'),
(34, 'aut', '894', 'g'),
(35, 'assumenda', '2936', 'v'),
(36, 'deleniti', '904', 'm'),
(37, 'architecto', '2394', 'j'),
(38, 'hic', '2327', 's'),
(39, 'voluptas', '2465', 'q'),
(40, 'molestias', '2600', 'r'),
(41, 'sit', '2488', 'f'),
(42, 'vitae', '1095', 'm'),
(43, 'consequuntur', '609', 'g'),
(44, 'non', '2568', 'e'),
(45, 'illum', '1856', 'v'),
(46, 'molestiae', '1918', 'c'),
(47, 'dicta', '1957', 'u'),
(48, 'corrupti', '757', 'p'),
(49, 'unde', '1189', 'v'),
(50, 'nam', '2978', 'a'),
(51, 'consequatur', '1814', 'p'),
(52, 'sed', '2942', 's'),
(53, 'qui', '1175', 'y'),
(54, 'quaerat', '2730', 'd'),
(55, 'ab', '2327', 'b'),
(56, 'eligendi', '633', 'p'),
(57, 'adipisci', '2163', 'q'),
(58, 'necessitatibus', '2827', 'o'),
(59, 'quis', '1446', 'd'),
(60, 'quo', '1122', 'n'),
(61, 'cumque', '781', 'b'),
(62, 'in', '2013', 'y'),
(63, 'perferendis', '515', 'd'),
(64, 'perferendis', '2236', 'w'),
(65, 'facilis', '1060', 'm'),
(66, 'autem', '2423', 'p'),
(67, 'excepturi', '2349', 'l'),
(68, 'ducimus', '917', 'v'),
(69, 'iusto', '674', 'j'),
(70, 'a', '1828', 'd'),
(71, 'esse', '1360', 'b'),
(72, 'et', '2958', 'x'),
(73, 'dolor', '1832', 'e'),
(74, 'aut', '896', 'f'),
(75, 'laboriosam', '837', 'f'),
(76, 'id', '1426', 'f'),
(77, 'voluptas', '2814', 'c'),
(78, 'deserunt', '1177', 'k'),
(79, 'mollitia', '2292', 'd'),
(80, 'reiciendis', '2658', 'c'),
(81, 'dolorem', '1818', 'l'),
(82, 'et', '767', 'i'),
(83, 'similique', '2012', 't'),
(84, 'sed', '1308', 't'),
(85, 'ut', '1245', 'b'),
(86, 'in', '1874', 'x'),
(87, 'eos', '907', 't'),
(88, 'voluptatem', '1310', 'a'),
(89, 'enim', '670', 'l'),
(90, 'modi', '1496', 'd'),
(91, 'quis', '2226', 'v'),
(92, 'recusandae', '1879', 'm'),
(93, 'ex', '2325', 'p'),
(94, 'eveniet', '2676', 'j'),
(95, 'eaque', '500', 'q'),
(96, 'ut', '1716', 'z'),
(97, 'sapiente', '1552', 'x'),
(98, 'nihil', '807', 'd'),
(99, 'ut', '2846', 'v'),
(100, 'dignissimos', '2415', 'b');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagamento`
--

CREATE TABLE `pagamento` (
  `idPagamento` smallint(6) NOT NULL,
  `tipo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pagamento`
--

INSERT INTO `pagamento` (`idPagamento`, `tipo`) VALUES
(0, 'Visa'),
(1, 'MasterCard'),
(2, 'MasterCard');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `idProduto` smallint(6) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `nome_farmaco` varchar(45) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `receita` tinyint(1) DEFAULT NULL,
  `medicamento` tinyint(1) DEFAULT NULL,
  `lote` varchar(10) DEFAULT NULL,
  `quantidade` int(11) DEFAULT 0,
  `idFabricante` int(11) DEFAULT NULL,
  `idCategoria` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`idProduto`, `nome`, `nome_farmaco`, `preco`, `tipo`, `receita`, `medicamento`, `lote`, `quantidade`, `idFabricante`, `idCategoria`) VALUES
(0, 'Johann', 'Franecki', 17, 'm', 1, 1, '1983-08-27', 70, 37, 29),
(1, 'Erwin', 'Ruecker', 129, 'i', 1, 1, '1985-06-13', 51, 93, 4),
(2, 'Tabitha', 'Little', 147, 'p', 0, 0, '1979-11-21', 99, 1, 94),
(3, 'William', 'Heller', 107, 'v', 1, 1, '1999-12-09', 79, 83, 3),
(4, 'Emilio', 'Ryan', 147, 'e', 0, 1, '1991-05-07', 138, 26, 0),
(5, 'Fiona', 'Terry', 174, 'q', 1, 1, '1986-04-11', 118, 97, 94),
(6, 'Jaren', 'Shanahan', 169, 's', 1, 1, '1992-10-28', 112, 100, 36),
(7, 'Lacy', 'Murazik', 38, 'y', 0, 0, '2004-06-06', 132, 67, 91),
(8, 'Llewellyn', 'Goyette', 38, 'c', 0, 1, '1996-07-18', 96, 95, 83),
(9, 'Taurean', 'Langosh', 18, 'h', 0, 1, '1980-01-26', 21, 77, 5),
(10, 'Kira', 'Senger', 160, 'h', 1, 0, '1979-07-05', 71, 77, 100),
(11, 'Ressie', 'Schmidt', 89, 'z', 1, 0, '1974-10-21', 78, 100, 91),
(12, 'Cristina', 'Conn', 115, 'b', 0, 1, '1997-10-28', 84, 13, 16),
(13, 'Kasey', 'Schaefer', 128, 'm', 1, 1, '2019-02-07', 128, 37, 99),
(14, 'Jaquelin', 'Adams', 23, 'm', 0, 1, '2005-08-11', 72, 71, 82),
(15, 'Alexandra', 'West', 33, 's', 0, 0, '1972-09-13', 42, 14, 40),
(16, 'Orland', 'Kshlerin', 32, 'n', 1, 1, '1983-08-08', 36, 72, 32),
(17, 'Louisa', 'Gorczany', 125, 'h', 0, 0, '1990-03-16', 137, 81, 62),
(18, 'Geoffrey', 'Orn', 117, 'z', 1, 0, '1990-04-01', 30, 92, 53),
(19, 'Cary', 'Schiller', 131, 'n', 0, 0, '2003-06-22', 58, 27, 78),
(20, 'Gilberto', 'Raynor', 178, 'y', 1, 1, '1982-10-13', 130, 53, 71),
(21, 'Jamar', 'Schinner', 15, 'q', 0, 1, '2017-12-14', 148, 43, 95),
(22, 'Vena', 'Wiza', 20, 'b', 1, 0, '1976-04-18', 77, 61, 1),
(23, 'Josianne', 'Langworth', 113, 'c', 0, 0, '2002-09-22', 116, 42, 54),
(24, 'Leonel', 'Toy', 94, 'p', 1, 0, '2006-12-27', 51, 24, 73),
(25, 'Erika', 'Gulgowski', 110, 't', 1, 0, '1995-12-29', 66, 79, 10),
(26, 'Louie', 'Lesch', 119, 'a', 0, 0, '1989-01-01', 61, 95, 87),
(27, 'Jennifer', 'Barrows', 52, 'u', 1, 0, '1990-08-22', 58, 96, 69),
(28, 'Kelsi', 'Hand', 81, 'm', 1, 0, '1971-11-22', 80, 28, 76),
(29, 'Julie', 'Anderson', 173, 'o', 1, 1, '1985-06-15', 37, 8, 70),
(30, 'Sabina', 'Breitenberg', 175, 'z', 1, 1, '1971-10-07', 12, 2, 41),
(31, 'Jany', 'Bartoletti', 127, 'z', 1, 1, '2013-05-24', 16, 41, 45),
(32, 'Karelle', 'Schuppe', 14, 'y', 1, 1, '1992-02-21', 113, 33, 75),
(33, 'Kendra', 'Kulas', 156, 'c', 0, 1, '1990-03-22', 2, 87, 19),
(34, 'Diego', 'Little', 94, 'w', 0, 0, '2008-08-16', 4, 61, 63),
(35, 'Titus', 'Schultz', 21, 'j', 0, 0, '2011-01-03', 52, 70, 3),
(36, 'Ruth', 'Hirthe', 74, 'l', 0, 0, '1971-07-31', 80, 53, 77),
(37, 'Eleanora', 'Rolfson', 151, 'h', 1, 0, '1993-11-16', 77, 69, 11),
(38, 'Willard', 'Aufderhar', 47, 'b', 1, 0, '1985-03-05', 92, 9, 29),
(39, 'Camren', 'Bode', 20, 'y', 0, 1, '1972-04-21', 2, 50, 38),
(40, 'Raymond', 'Braun', 31, 's', 0, 1, '2017-08-01', 144, 12, 50),
(41, 'Lyda', 'Bartell', 75, 'x', 0, 0, '1991-06-24', 70, 18, 55),
(42, 'Isadore', 'Rutherford', 116, 'v', 1, 1, '1997-08-11', 130, 84, 27),
(43, 'Carole', 'Koelpin', 95, 'd', 1, 1, '1976-10-15', 13, 61, 13),
(44, 'Ericka', 'Morar', 128, 'q', 1, 0, '1979-01-10', 41, 7, 62),
(45, 'Linnie', 'Heller', 166, 'n', 1, 1, '2017-11-23', 59, 84, 69),
(46, 'Bud', 'Reilly', 40, 'z', 0, 0, '1997-01-27', 23, 78, 36),
(47, 'Paris', 'Schuster', 137, 's', 1, 1, '2012-11-14', 52, 43, 76),
(48, 'Elwyn', 'Leannon', 70, 'z', 1, 1, '2002-10-29', 3, 14, 72),
(49, 'Delbert', 'Ledner', 106, 'i', 1, 0, '1992-12-03', 146, 24, 67),
(50, 'Erin', 'Lang', 131, 't', 0, 1, '2012-07-03', 110, 4, 1),
(51, 'Roxanne', 'Kertzmann', 33, 'k', 0, 0, '2015-01-03', 99, 70, 96),
(52, 'Verona', 'Ziemann', 64, 'v', 0, 0, '1971-07-23', 95, 91, 49),
(53, 'Skylar', 'Block', 61, 'p', 0, 1, '1980-10-02', 101, 59, 4),
(54, 'Adrienne', 'Runte', 36, 't', 0, 1, '2015-03-18', 30, 95, 3),
(55, 'Eulah', 'Fritsch', 97, 'x', 0, 1, '1990-03-14', 37, 8, 94),
(56, 'Royal', 'Towne', 122, 'l', 0, 0, '2000-08-30', 61, 89, 45),
(57, 'Myrtie', 'Rogahn', 93, 'u', 1, 1, '1978-08-26', 94, 74, 73),
(58, 'Osbaldo', 'Koepp', 40, 'k', 1, 1, '2017-01-12', 106, 19, 14),
(59, 'Jadyn', 'Waters', 19, 'g', 0, 0, '2006-03-14', 76, 55, 29),
(60, 'Toney', 'O\'Reilly', 137, 'r', 0, 0, '2001-12-18', 114, 18, 45),
(61, 'Kelly', 'Krajcik', 38, 'm', 0, 1, '1977-02-04', 121, 14, 2),
(62, 'Renee', 'Hintz', 75, 'd', 0, 0, '1982-08-22', 24, 50, 41),
(63, 'Geo', 'Bailey', 111, 'o', 1, 0, '2015-04-27', 59, 64, 65),
(64, 'Pauline', 'Powlowski', 31, 'f', 1, 1, '2013-08-08', 8, 93, 69),
(65, 'Jarrod', 'Jast', 27, 'g', 1, 1, '2002-07-10', 36, 96, 98),
(66, 'Newell', 'Miller', 129, 'o', 1, 0, '1970-10-29', 60, 24, 75),
(67, 'Emma', 'Okuneva', 10, 'r', 1, 0, '2001-09-05', 75, 75, 52),
(68, 'Ruth', 'Ernser', 78, 'j', 1, 0, '1981-09-25', 124, 99, 22),
(69, 'Cyrus', 'Cremin', 162, 'l', 1, 1, '1971-10-28', 149, 95, 30),
(70, 'Ima', 'Grant', 73, 'f', 0, 0, '2014-08-02', 6, 41, 36),
(71, 'Adolfo', 'Dicki', 51, 't', 0, 0, '1982-11-05', 105, 94, 28),
(72, 'Easter', 'Doyle', 39, 'h', 1, 1, '2008-07-11', 26, 54, 99),
(73, 'Khalil', 'Lebsack', 110, 'b', 1, 1, '1988-08-18', 69, 42, 87),
(74, 'Riley', 'Cremin', 166, 'u', 1, 0, '1974-09-23', 73, 94, 30),
(75, 'Torey', 'Willms', 71, 'a', 0, 0, '1984-04-15', 60, 72, 58),
(76, 'Aliya', 'Ernser', 147, 'z', 1, 0, '2008-05-20', 12, 99, 42),
(77, 'Birdie', 'Casper', 118, 's', 1, 0, '1999-08-11', 35, 1, 42),
(78, 'Lesly', 'Nikolaus', 7, 'e', 1, 0, '2003-02-07', 64, 49, 46),
(79, 'Jairo', 'Gislason', 27, 'm', 1, 0, '2011-12-08', 48, 0, 18),
(80, 'Lelia', 'Schneider', 113, 'q', 0, 0, '2000-02-05', 133, 63, 47),
(81, 'Marlee', 'Hermann', 28, 'f', 0, 0, '2009-05-02', 26, 37, 72),
(82, 'Delta', 'Schmidt', 90, 'b', 1, 0, '1993-02-09', 115, 49, 97),
(83, 'Jalon', 'Streich', 174, 'm', 0, 0, '1991-05-08', 91, 2, 31),
(84, 'Andy', 'Bahringer', 176, 'd', 0, 1, '1971-03-14', 123, 43, 82),
(85, 'Lorena', 'Schuster', 41, 'r', 0, 1, '1985-05-22', 57, 80, 94),
(86, 'Raymond', 'Hansen', 60, 'x', 1, 0, '2015-03-01', 94, 96, 66),
(87, 'Lenore', 'Fritsch', 166, 'f', 0, 1, '1974-09-15', 150, 6, 69),
(88, 'Ernestina', 'Wilderman', 161, 'w', 0, 1, '1998-07-28', 42, 56, 62),
(89, 'Frederick', 'Mertz', 99, 'h', 0, 0, '1982-01-13', 52, 46, 25),
(90, 'Deborah', 'Paucek', 95, 'i', 1, 0, '1978-05-05', 20, 0, 69),
(91, 'Laury', 'Yost', 94, 'd', 1, 1, '2007-09-12', 82, 97, 24),
(92, 'Frieda', 'Jerde', 167, 'q', 0, 0, '1986-12-07', 36, 21, 36),
(93, 'Lemuel', 'DuBuque', 111, 'h', 1, 0, '2018-08-11', 140, 67, 27),
(94, 'Kian', 'Schuppe', 65, 'n', 0, 0, '2006-12-31', 5, 39, 75),
(95, 'Helmer', 'Stoltenberg', 154, 'f', 1, 0, '1996-07-04', 120, 19, 55),
(96, 'Vicenta', 'Torp', 148, 'x', 0, 0, '2005-06-10', 6, 87, 26),
(97, 'Amelia', 'Hoppe', 62, 'm', 1, 0, '2006-06-14', 34, 67, 43),
(98, 'Julien', 'Graham', 26, 't', 1, 1, '1982-03-04', 43, 8, 25),
(99, 'Marisa', 'Ullrich', 7, 'p', 1, 1, '2012-05-17', 116, 92, 45),
(100, 'Barton', 'Wisoky', 57, 't', 1, 1, '1992-07-30', 56, 18, 57),
(101, 'Nannie', 'Kohler', 170, 'l', 0, 1, '2001-03-17', 58, 29, 36),
(102, 'Alayna', 'Auer', 110, 'g', 1, 0, '2014-06-11', 8, 23, 27),
(103, 'Kristian', 'Zboncak', 172, 'f', 1, 0, '1998-12-11', 88, 58, 62),
(104, 'Nichole', 'Reinger', 136, 'v', 1, 1, '1993-11-13', 12, 65, 50),
(105, 'Oceane', 'Kuphal', 109, 'c', 0, 1, '2012-02-03', 115, 48, 73),
(106, 'Jamil', 'Kertzmann', 20, 'b', 1, 0, '2015-06-02', 30, 34, 80),
(107, 'Garrick', 'Trantow', 34, 'b', 1, 0, '1971-11-12', 128, 85, 78),
(108, 'Ruby', 'Grady', 80, 'j', 1, 0, '1987-02-24', 96, 61, 16),
(109, 'Gussie', 'Block', 153, 'h', 0, 1, '1993-11-09', 59, 7, 41),
(110, 'Hardy', 'Bartoletti', 40, 'w', 1, 1, '2019-08-25', 127, 9, 63),
(112, 'Jace', 'Ernser', 144, 'e', 1, 1, '1993-12-26', 32, 40, 21),
(113, 'Jeanette', 'Predovic', 75, 'j', 1, 1, '2014-04-18', 80, 57, 95),
(114, 'Sanford', 'Howell', 173, 'a', 1, 1, '2009-12-18', 2, 0, 48),
(115, 'Amara', 'Bechtelar', 81, 'x', 1, 1, '1999-12-21', 131, 96, 9),
(116, 'Kaylie', 'Kovacek', 131, 'a', 0, 0, '2009-08-15', 1, 70, 59),
(117, 'Deven', 'Schroeder', 136, 'x', 0, 1, '2016-07-17', 87, 61, 98),
(118, 'Beaulah', 'Howell', 154, 'v', 1, 1, '2007-08-30', 139, 4, 21),
(119, 'Carley', 'Senger', 85, 'p', 0, 0, '2009-07-05', 33, 23, 68),
(120, 'Desmond', 'Okuneva', 110, 'n', 0, 1, '1970-02-15', 91, 62, 66),
(121, 'Nia', 'Beier', 87, 's', 0, 1, '2013-09-10', 4, 5, 37),
(122, 'Delbert', 'Hoppe', 71, 'r', 0, 1, '2019-06-13', 63, 20, 52),
(123, 'Stevie', 'Lind', 170, 'l', 1, 0, '2001-11-13', 91, 35, 18),
(124, 'Elbert', 'Metz', 130, 'a', 0, 0, '1996-02-24', 53, 22, 5),
(125, 'Erin', 'Luettgen', 154, 'p', 1, 0, '1988-05-02', 134, 89, 60),
(126, 'Lera', 'Macejkovic', 48, 'z', 0, 0, '1973-07-30', 119, 9, 55),
(127, 'Dameon', 'Metz', 8, 'r', 0, 1, '2017-06-04', 47, 10, 59),
(128, 'Michel', 'Tremblay', 24, 'm', 0, 0, '1977-02-06', 52, 54, 57),
(129, 'Veronica', 'Bauch', 178, 's', 0, 0, '2016-12-11', 108, 88, 43),
(130, 'Rupert', 'Wisoky', 95, 'a', 0, 1, '1977-12-18', 51, 25, 18),
(131, 'Jorge', 'Konopelski', 167, 'z', 0, 1, '2018-11-23', 55, 62, 49),
(132, 'Cassidy', 'Parisian', 100, 'q', 0, 1, '1997-08-09', 14, 35, 79),
(133, 'Ruthe', 'Lockman', 31, 'h', 0, 0, '1992-06-06', 87, 43, 94),
(134, 'Maurine', 'Shields', 73, 'w', 0, 1, '1990-05-09', 92, 41, 14),
(135, 'Zane', 'Kulas', 127, 't', 0, 0, '2017-01-30', 15, 16, 3),
(136, 'Keenan', 'Donnelly', 92, 'j', 0, 1, '2012-01-13', 45, 86, 53),
(137, 'Maxie', 'Schneider', 49, 'x', 1, 1, '1975-02-02', 72, 49, 5),
(138, 'Mireya', 'Feest', 134, 'a', 0, 1, '1997-04-03', 45, 77, 70),
(139, 'Preston', 'Pouros', 118, 'r', 1, 0, '1976-04-17', 88, 79, 7),
(140, 'Alvina', 'Gerhold', 84, 'a', 1, 1, '1998-12-15', 116, 46, 83),
(141, 'Pete', 'Berge', 11, 'p', 1, 1, '1978-02-20', 41, 44, 73),
(142, 'Euna', 'Kertzmann', 35, 'o', 1, 0, '2018-05-11', 113, 41, 16),
(143, 'Vena', 'Kutch', 12, 'w', 0, 1, '2005-04-17', 21, 82, 22),
(144, 'Olaf', 'Bauch', 39, 'z', 1, 1, '1997-01-04', 61, 10, 98),
(145, 'Odessa', 'Crooks', 31, 'f', 0, 0, '1988-09-17', 32, 24, 49),
(146, 'Mohamed', 'Buckridge', 75, 'f', 0, 1, '1990-05-04', 32, 15, 35),
(147, 'Wava', 'Macejkovic', 40, 'x', 1, 0, '1976-05-28', 38, 33, 90),
(148, 'Martin', 'Hammes', 94, 'c', 1, 1, '1985-09-07', 51, 98, 39),
(149, 'Eliane', 'Schamberger', 39, 'b', 1, 1, '1984-05-02', 9, 11, 91),
(150, 'Malachi', 'Cartwright', 104, 'm', 1, 1, '1980-02-07', 35, 18, 85);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto_vendido`
--

CREATE TABLE `produto_vendido` (
  `idProdutoVendido` smallint(6) NOT NULL,
  `preco` double DEFAULT NULL,
  `idVenda` smallint(6) NOT NULL,
  `idProduto` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto_vendido`
--

INSERT INTO `produto_vendido` (`idProdutoVendido`, `preco`, `idVenda`, `idProduto`) VALUES
(0, 76, 66, 35),
(1, 80, 84, 59),
(2, 78, 42, 41),
(3, 49, 82, 68),
(4, 79, 16, 50),
(5, 34, 50, 21),
(6, 67, 20, 85),
(7, 61, 19, 20),
(8, 81, 12, 72),
(9, 68, 64, 64),
(10, 26, 65, 66),
(11, 26, 73, 11),
(12, 80, 44, 27),
(13, 80, 75, 24),
(14, 27, 49, 45),
(15, 18, 62, 87),
(16, 21, 32, 100),
(17, 17, 31, 99),
(18, 31, 4, 81),
(19, 42, 89, 7),
(20, 78, 8, 64),
(21, 44, 35, 41),
(22, 66, 80, 73),
(23, 85, 33, 77),
(24, 23, 72, 49),
(25, 58, 9, 30),
(26, 37, 39, 18),
(27, 44, 97, 70),
(28, 54, 3, 63),
(29, 49, 40, 7),
(30, 60, 66, 26),
(31, 49, 80, 22),
(32, 72, 11, 33),
(33, 73, 66, 72),
(34, 26, 100, 86),
(35, 61, 83, 67),
(36, 58, 33, 17),
(37, 58, 14, 95),
(38, 58, 62, 53),
(39, 78, 64, 95),
(40, 34, 79, 3),
(41, 20, 18, 53),
(42, 34, 99, 4),
(43, 46, 27, 10),
(44, 78, 36, 18),
(45, 43, 80, 71),
(46, 24, 51, 13),
(47, 35, 2, 57),
(48, 70, 42, 85),
(49, 56, 29, 89),
(50, 65, 1, 73),
(51, 49, 100, 46),
(52, 33, 4, 98),
(53, 25, 95, 56),
(54, 48, 81, 33),
(55, 70, 41, 38),
(56, 53, 36, 99),
(57, 60, 26, 17),
(58, 53, 2, 32),
(59, 31, 76, 9),
(60, 27, 74, 10),
(61, 17, 4, 6),
(62, 57, 53, 60),
(63, 30, 54, 36),
(64, 71, 45, 77),
(65, 84, 60, 89),
(66, 29, 44, 29),
(67, 72, 82, 87),
(68, 21, 41, 71),
(69, 30, 74, 66),
(70, 78, 48, 22),
(71, 83, 51, 9),
(72, 42, 27, 31),
(73, 19, 5, 86),
(74, 22, 80, 19),
(75, 21, 43, 45),
(76, 44, 51, 77),
(77, 65, 75, 31),
(78, 24, 4, 47),
(79, 30, 90, 72),
(80, 64, 11, 6),
(81, 77, 28, 25),
(82, 55, 47, 60),
(83, 56, 81, 73),
(84, 29, 61, 96),
(85, 57, 12, 43),
(86, 79, 28, 25),
(87, 80, 17, 72),
(88, 49, 66, 49),
(89, 68, 68, 8),
(90, 51, 61, 80),
(91, 80, 95, 9),
(92, 20, 53, 32),
(93, 68, 73, 42),
(94, 19, 98, 68),
(95, 52, 90, 99),
(96, 75, 100, 65),
(97, 76, 42, 25),
(98, 47, 30, 94),
(99, 28, 88, 43),
(100, 21, 3, 55),
(101, 44, 96, 16),
(102, 32, 10, 19),
(103, 77, 29, 73),
(104, 82, 37, 34),
(105, 49, 92, 53),
(106, 72, 17, 76),
(107, 54, 36, 32),
(108, 23, 93, 8),
(109, 59, 74, 2),
(110, 48, 87, 4),
(111, 71, 15, 64),
(112, 39, 28, 41),
(113, 44, 32, 1),
(114, 29, 78, 37),
(115, 21, 37, 93),
(116, 39, 22, 77),
(117, 62, 46, 94),
(118, 46, 64, 77),
(119, 26, 99, 53),
(120, 53, 89, 10),
(121, 15, 53, 12),
(122, 29, 42, 23),
(123, 53, 77, 25),
(124, 59, 18, 11),
(125, 31, 34, 73),
(126, 79, 47, 23),
(127, 27, 14, 18),
(128, 49, 61, 52),
(129, 79, 96, 15),
(130, 16, 66, 66),
(131, 72, 21, 38),
(132, 85, 6, 100),
(133, 74, 18, 39),
(135, 65, 86, 23),
(136, 32, 19, 67),
(137, 18, 11, 70),
(138, 55, 58, 16),
(139, 42, 66, 75),
(140, 69, 41, 97),
(141, 82, 73, 93),
(142, 24, 77, 24),
(143, 38, 65, 95),
(144, 35, 84, 56),
(145, 72, 82, 17),
(146, 36, 18, 97),
(147, 18, 24, 0),
(148, 85, 72, 83),
(149, 47, 24, 99),
(150, 21, 21, 96);

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

CREATE TABLE `venda` (
  `idVenda` smallint(6) NOT NULL,
  `preco_total` double DEFAULT NULL,
  `data_venda` varchar(45) DEFAULT NULL,
  `valor_recebido` double DEFAULT NULL,
  `troco` double DEFAULT NULL,
  `idFuncionario` smallint(6) DEFAULT NULL,
  `idCliente` smallint(6) DEFAULT NULL,
  `idPagamento` smallint(6) DEFAULT NULL,
  `idProduto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `venda`
--

INSERT INTO `venda` (`idVenda`, `preco_total`, `data_venda`, `valor_recebido`, `troco`, `idFuncionario`, `idCliente`, `idPagamento`, `idProduto`) VALUES
(0, 144, '2003-05-08', 258, 337, 2, 11, 0, 11),
(1, 136, '2005-08-30', 267, 214, 44, 41, 1, 75),
(2, 69, '2012-07-25', 347, 166, 73, 16, 0, 6),
(3, 42, '1996-09-09', 174, 329, 63, 92, 1, 52),
(4, 109, '2015-11-05', 201, 307, 21, 65, 1, 23),
(5, 93, '2001-07-31', 26, 158, 4, 71, 1, 55),
(6, 231, '1985-11-14', 104, 222, 76, 98, 0, 82),
(7, 102, '2001-06-29', 124, 338, 3, 19, 1, 12),
(8, 284, '1992-07-30', 28, 154, 3, 81, 1, 26),
(9, 96, '1983-02-13', 318, 298, 4, 29, 0, 86),
(10, 25, '2018-11-22', 338, 145, 3, 42, 1, 39),
(11, 218, '2018-09-13', 86, 128, 88, 9, 0, 64),
(12, 213, '1971-11-08', 385, 124, 41, 40, 0, 63),
(13, 227, '1980-07-25', 345, 92, 47, 75, 0, 8),
(14, 129, '1983-12-21', 292, 373, 38, 17, 1, 79),
(15, 265, '1985-08-19', 356, 192, 43, 88, 1, 49),
(16, 182, '1972-10-14', 198, 322, 27, 73, 0, 96),
(17, 190, '1974-11-19', 395, 218, 66, 74, 0, 33),
(18, 144, '1996-10-07', 369, 221, 8, 94, 1, 33),
(19, 126, '1982-01-15', 238, 143, 99, 52, 1, 6),
(20, 78, '1974-07-29', 68, 204, 97, 58, 1, 51),
(21, 134, '2001-02-14', 188, 371, 1, 18, 0, 86),
(22, 133, '1970-07-06', 383, 113, 80, 80, 0, 38),
(23, 57, '2003-05-22', 331, 395, 18, 18, 0, 5),
(24, 231, '1989-04-05', 315, 175, 79, 7, 1, 83),
(25, 99, '1979-06-01', 150, 377, 1, 34, 0, 93),
(26, 141, '2017-05-04', 295, 180, 72, 92, 1, 74),
(27, 28, '1981-05-02', 48, 189, 65, 48, 1, 80),
(29, 37, '2013-06-25', 35, 398, 79, 19, 0, 100),
(30, 146, '1978-01-25', 254, 228, 7, 39, 0, 22),
(31, 94, '2004-04-10', 299, 337, 8, 23, 1, 94),
(32, 216, '2006-10-26', 326, 245, 36, 50, 0, 69),
(33, 42, '2018-12-05', 71, 321, 60, 75, 0, 65),
(34, 100, '1995-03-19', 275, 396, 23, 51, 0, 77),
(35, 78, '1995-05-17', 200, 340, 86, 31, 1, 63),
(36, 36, '2009-06-27', 241, 387, 33, 76, 1, 60),
(37, 32, '2009-08-23', 87, 224, 92, 0, 0, 35),
(38, 40, '1992-03-24', 327, 355, 1, 58, 1, 62),
(39, 134, '2011-06-14', 263, 145, 80, 71, 1, 44),
(40, 269, '2016-10-18', 349, 281, 88, 8, 1, 79),
(41, 126, '1994-10-12', 176, 240, 88, 6, 1, 51),
(42, 202, '2012-03-17', 241, 115, 55, 31, 0, 16),
(43, 184, '2009-11-13', 347, 175, 58, 69, 1, 45),
(44, 185, '2018-12-17', 174, 245, 19, 69, 0, 3),
(45, 218, '1981-09-06', 41, 275, 40, 67, 1, 3),
(46, 43, '2018-10-05', 35, 169, 62, 40, 1, 53),
(47, 71, '2016-07-22', 60, 130, 40, 26, 1, 46),
(48, 179, '1999-06-14', 391, 197, 44, 29, 1, 48),
(49, 61, '1985-01-29', 114, 206, 1, 44, 0, 73),
(50, 248, '2000-03-03', 202, 153, 11, 38, 1, 92),
(51, 275, '2008-11-11', 357, 113, 5, 22, 1, 26),
(52, 235, '2010-10-22', 173, 309, 46, 73, 0, 7),
(53, 130, '1990-12-04', 59, 106, 99, 89, 1, 21),
(54, 164, '1981-01-25', 66, 356, 98, 95, 1, 49),
(55, 209, '1988-03-12', 156, 301, 77, 83, 0, 2),
(56, 258, '2004-10-20', 161, 389, 21, 95, 1, 12),
(57, 175, '1978-11-23', 370, 274, 54, 78, 1, 89),
(58, 55, '1980-07-25', 123, 278, 28, 43, 0, 51),
(59, 106, '2012-04-17', 209, 185, 14, 90, 0, 27),
(60, 132, '2016-07-02', 124, 291, 92, 93, 1, 13),
(61, 115, '2017-04-02', 82, 355, 1, 54, 0, 47),
(62, 94, '1997-06-05', 338, 248, 100, 62, 0, 37),
(63, 217, '1989-07-16', 182, 134, 10, 81, 1, 65),
(64, 33, '2017-11-13', 110, 331, 96, 38, 0, 9),
(65, 186, '1982-11-09', 69, 187, 22, 74, 1, 20),
(66, 110, '2002-08-05', 136, 252, 69, 27, 0, 87),
(67, 125, '1987-03-06', 374, 233, 11, 2, 1, 86),
(68, 69, '1972-08-03', 138, 94, 67, 73, 1, 90),
(69, 214, '2016-04-28', 131, 144, 20, 26, 0, 92),
(70, 101, '1995-10-12', 287, 321, 66, 58, 1, 30),
(71, 283, '1979-08-20', 367, 219, 13, 32, 0, 74),
(72, 172, '2001-04-13', 125, 166, 74, 45, 0, 22),
(73, 230, '1986-03-04', 318, 319, 82, 77, 1, 100),
(74, 133, '2016-06-28', 232, 390, 89, 91, 1, 91),
(75, 110, '2015-11-07', 309, 128, 17, 69, 1, 30),
(76, 116, '2018-03-09', 217, 101, 0, 63, 0, 3),
(77, 149, '2007-05-10', 29, 157, 24, 77, 0, 7),
(78, 241, '1996-07-02', 186, 363, 91, 37, 0, 56),
(79, 283, '1993-08-28', 85, 143, 98, 61, 0, 39),
(80, 49, '1997-11-12', 353, 150, 43, 22, 1, 82),
(81, 43, '1971-06-14', 393, 315, 88, 20, 1, 23),
(82, 209, '2012-09-14', 356, 269, 37, 7, 0, 33),
(83, 152, '2000-07-12', 319, 373, 68, 39, 0, 72),
(84, 205, '1984-07-16', 118, 196, 15, 61, 0, 33),
(85, 249, '1998-07-20', 255, 273, 0, 56, 1, 96),
(86, 71, '1980-04-22', 215, 368, 20, 47, 0, 27),
(87, 297, '2000-05-28', 267, 200, 96, 17, 0, 99),
(88, 150, '2009-06-28', 324, 359, 73, 78, 0, 54),
(89, 163, '2003-10-05', 37, 259, 91, 42, 1, 86),
(90, 214, '2004-01-06', 261, 352, 23, 90, 0, 13),
(91, 206, '1987-04-08', 375, 236, 7, 17, 0, 61),
(92, 151, '1978-11-22', 36, 110, 41, 20, 0, 32),
(93, 169, '1983-08-22', 171, 345, 75, 89, 1, 2),
(94, 273, '1976-01-20', 143, 184, 61, 46, 1, 83),
(95, 27, '2000-05-20', 83, 123, 51, 8, 0, 41),
(96, 153, '1975-05-19', 349, 189, 62, 22, 0, 67),
(97, 114, '2011-10-14', 104, 378, 82, 76, 0, 11),
(98, 184, '2002-04-24', 249, 327, 89, 22, 0, 35),
(99, 113, '1989-05-01', 204, 106, 82, 49, 1, 87),
(100, 132, '1995-06-03', 271, 279, 80, 42, 0, 20);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Índices para tabela `estoque`
--
ALTER TABLE `estoque`
  ADD PRIMARY KEY (`idEstoque`);

--
-- Índices para tabela `fabricante`
--
ALTER TABLE `fabricante`
  ADD PRIMARY KEY (`idFabricante`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`idFuncionario`);

--
-- Índices para tabela `pagamento`
--
ALTER TABLE `pagamento`
  ADD PRIMARY KEY (`idPagamento`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`idProduto`);

--
-- Índices para tabela `produto_vendido`
--
ALTER TABLE `produto_vendido`
  ADD PRIMARY KEY (`idProdutoVendido`);

--
-- Índices para tabela `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`idVenda`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
