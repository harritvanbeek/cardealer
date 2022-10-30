-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2022 at 12:25 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fivem-framework`
--

-- --------------------------------------------------------

--
-- Table structure for table `server-cars`
--

CREATE TABLE `server-cars` (
  `id` int(11) NOT NULL,
  `vehiclename` varchar(50) DEFAULT 'blista',
  `vehicledisplayname` varchar(50) DEFAULT 'Blista',
  `vehiclebrand` varchar(50) DEFAULT 'dinka',
  `vehicleclass` varchar(50) DEFAULT 'compacts',
  `stock` int(11) DEFAULT 3,
  `price` int(11) DEFAULT 10000,
  `assets` varchar(1024) NOT NULL,
  `type` varchar(50) DEFAULT 'premium'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `server-cars`
--

INSERT INTO `server-cars` (`id`, `vehiclename`, `vehicledisplayname`, `vehiclebrand`, `vehicleclass`, `stock`, `price`, `assets`, `type`) VALUES
(69, 'comet6', 'comet 6', 'Tuning', 'tuning', 1000, 2000, 'https://gtamag.com/images/photo/gta-mag-pfister-comet-s2-cabrio-gtao-487835.jpg', 'gta5cardealer'),
(72, 'dominator7', 'dominator 7', 'Tuning', 'tuning', 100, 2000, 'https://static.wikia.nocookie.net/gtawiki/images/7/75/DominatorASP-GTAO-front.png/revision/latest?cb=20210720164436', 'gta5cardealer'),
(73, 'dominator8', 'dominator 8', 'tuning', 'tuning', 100, 20000, 'https://static.wikia.nocookie.net/gtawiki/images/7/78/Dominator-GTAV-front.png/revision/latest?cb=20160702195350', 'gta5cardealer'),
(74, 'euros', 'Euros', 'Tuning', 'tuning', 100, 2000, 'https://static.wikia.nocookie.net/gtawiki/images/7/78/Dominator-GTAV-front.png/revision/latest?cb=20160702195350', 'gta5cardealer'),
(75, 'futo2', 'Futo 2', 'Tuning', 'tuning', 100, 2000, 'https://static.wikia.nocookie.net/gtawiki/images/6/67/Futo-GTAV-front.PNG/revision/latest?cb=20180726155611', 'gta5cardealer'),
(76, 'rt3000', 'rt 3000', 'Tuning', 'tuning', 100, 2000, 'https://static.wikia.nocookie.net/gtawiki/images/e/ea/RT3000-GTAO-front.png/revision/latest?cb=20210720164513', 'gta5cardealer'),
(77, 'sultan3', 'Sultan 3', 'Tuning', 'tuning', 100, 2000, 'https://static.wikia.nocookie.net/gtawiki/images/4/45/SultanRSClassic-GTAO-front.png/revision/latest?cb=20210720164518', 'gta5cardealer'),
(78, 'tailgater2', 'Tailgater 2', 'Tuning', 'tuning', 100, 2000, 'https://static.wikia.nocookie.net/gtawiki/images/e/e1/Tailgater-GTAV-front.png/revision/latest?cb=20160917232330', 'gta5cardealer'),
(79, 'growler', 'Growler', 'Tuning', 'tuning', 100, 2000, 'https://static.wikia.nocookie.net/gtawiki/images/7/78/Growler-GTAO-front.png/revision/latest?cb=20210720164457', 'gta5cardealer'),
(80, 'vectre', 'vectre', 'Tuning', 'tuning', 100, 2000, 'https://static.wikia.nocookie.net/gtawiki/images/8/8a/Vectre-GTAO-front.png/revision/latest?cb=20210720164526', 'gta5cardealer'),
(81, 'remus', 'Remus', 'Tuning', 'tuning', 100, 2000, 'https://static.wikia.nocookie.net/gtawiki/images/8/88/Remus-GTAO-front.png/revision/latest?cb=20210720164509', 'gta5cardealer'),
(82, 'calico', 'Calico', 'Tuning', 'tuning', 100, 2000, 'https://static.wikia.nocookie.net/gtawiki/images/a/ad/CalicoGTF-GTAO-front.png/revision/latest?cb=20210720164424', 'gta5cardealer'),
(83, 'cypher', 'Cypher', 'Tuning', 'tuning', 100, 2000, 'https://static.wikia.nocookie.net/gtawiki/images/5/57/Cypher-GTAO-front.png/revision/latest?cb=20210720164432', 'gta5cardealer'),
(84, 'jester4', 'Jester 4', 'Tuning', 'tuning', 100, 2000, 'https://static.wikia.nocookie.net/gtawiki/images/a/af/Jester-GTAV-front.png/revision/latest?cb=20160917231438', 'gta5cardealer'),
(85, 'zr350', 'zr 350', 'Tuning', 'tuning', 100, 2000, 'https://static.wikia.nocookie.net/gtawiki/images/3/3b/ZR350-GTAO-front.png/revision/latest?cb=20210720164536', 'gta5cardealer'),
(86, 'previon', 'Previon', 'Tuning', 'tuning', 100, 2000, 'https://static.wikia.nocookie.net/gtawiki/images/d/d9/Previon-GTAO-front.png/revision/latest?cb=20210720164506', 'gta5cardealer'),
(87, 'revolter', 'Revolter', 'Ubermacht', 'sports', 100, 195000, 'https://vignette.wikia.nocookie.net/gtawiki/images/e/e8/Revolter-GTAO-front.png/revision/latest?cb=20171218203456', 'gta5cardealer'),
(88, 'blade', 'Blade', 'Vapid', 'muscle', 100, 19000, 'https://vignette.wikia.nocookie.net/gtawiki/images/f/f3/Blade-GTAV-front.png', 'gta5cardealer'),
(89, 'buccaneer', 'Buccaneer', 'Albany', 'muscle', 100, 19500, 'https://vignette.wikia.nocookie.net/gtawiki/images/9/9f/Buccaneer-GTAV-front.png', 'gta5cardealer'),
(90, 'buccaneer2', 'Buccaneer Rider', 'Albany', 'muscle', 100, 22500, 'https://vignette.wikia.nocookie.net/gtawiki/images/a/a2/BuccaneerCustom-GTAO-front.png', 'gta5cardealer'),
(91, 'chino', 'Chino', 'Vapid', 'muscle', 100, 20000, 'https://vignette.wikia.nocookie.net/gtawiki/images/1/17/Chino-GTAV-front.png', 'gta5cardealer'),
(92, 'chino2', 'Chino Luxe', 'Vapid', 'muscle', 100, 35000, 'https://vignette.wikia.nocookie.net/gtawiki/images/3/3f/ChinoCustom-GTAO-front.png', 'gta5cardealer'),
(93, 'coquette3', 'Coquette BlackFin', 'Invetero', 'muscle', 100, 45000, 'https://vignette.wikia.nocookie.net/gtawiki/images/d/df/CoquetteBlackFin-GTAV-front.png', 'gta5cardealer'),
(94, 'dominator', 'Dominator', 'Vapid', 'muscle', 100, 53000, 'https://vignette.wikia.nocookie.net/gtawiki/images/7/78/Dominator-GTAV-front.png', 'gta5cardealer'),
(95, 'dukes', 'Dukes', 'Imponte', 'muscle', 100, 15000, 'https://vignette.wikia.nocookie.net/gtawiki/images/5/53/Dukes-GTAV-front.png', 'gta5cardealer'),
(96, 'gauntlet', 'Gauntlet', 'Bravado', 'muscle', 100, 39500, 'https://vignette.wikia.nocookie.net/gtawiki/images/d/dd/Gauntlet-GTAV-front.png', 'gta5cardealer'),
(97, 'hotknife', 'Hotknife', 'Vapid', 'muscle', 100, 95000, 'https://vignette.wikia.nocookie.net/gtawiki/images/0/07/Hotknife-GTAV-front.png', 'gta5cardealer'),
(98, 'faction', 'Faction', 'Willard', 'muscle', 100, 20000, 'https://vignette.wikia.nocookie.net/gtawiki/images/0/07/Faction-GTAO-front.png', 'gta5cardealer'),
(99, 'faction2', 'Faction Rider', 'Willard', 'muscle', 100, 22500, 'https://vignette.wikia.nocookie.net/gtawiki/images/f/f0/FactionCustom-GTAO-front.png', 'gta5cardealer'),
(100, 'nightshade', 'Nightshade', 'Imponte', 'muscle', 100, 84000, 'https://vignette.wikia.nocookie.net/gtawiki/images/3/3e/Nightshade-GTAO-front.png', 'gta5cardealer'),
(101, 'phoenix', 'Phoenix', 'Imponte', 'muscle', 100, 25000, 'https://vignette.wikia.nocookie.net/gtawiki/images/a/af/Phoenix-GTAV-front.png', 'gta5cardealer'),
(102, 'picador', 'Picador', 'Cheval', 'muscle', 100, 18000, 'https://vignette.wikia.nocookie.net/gtawiki/images/5/5a/Picador-GTAV-front.png', 'gta5cardealer'),
(103, 'sabregt', 'Sabre Turbo', 'Declasse', 'muscle', 100, 25000, 'https://vignette.wikia.nocookie.net/gtawiki/images/e/e6/SabreTurbo-GTAV-front.png', 'gta5cardealer'),
(104, 'sabregt2', 'Sabre GT', 'Declasse', 'muscle', 100, 29500, 'https://vignette.wikia.nocookie.net/gtawiki/images/1/18/SabreTurboCustom-GTAO-front.png', 'gta5cardealer'),
(105, 'slamvan3', 'Slam Van', 'Vapid', 'muscle', 100, 35000, 'https://vignette.wikia.nocookie.net/gtawiki/images/9/96/SlamvanCustom-GTAO-front.png', 'gta5cardealer'),
(106, 'tampa', 'tampa', 'Declasse', 'muscle', 100, 27500, 'https://vignette.wikia.nocookie.net/gtawiki/images/d/d8/Tampa-GTAO-front.png', 'gta5cardealer'),
(107, 'tampa2', 'Drift Tampa', 'Declasse', 'muscle', 100, 50500, 'https://vignette.wikia.nocookie.net/gtawiki/images/5/51/DriftTampa-GTAO-front.png', 'gta5cardealer'),
(108, 'virgo', 'Virgo', 'Albany', 'muscle', 100, 19700, 'https://vignette.wikia.nocookie.net/gtawiki/images/2/24/Virgo-GTAV-front.png', 'gta5cardealer'),
(109, 'vigero', 'Vigero', 'Declasse', 'muscle', 100, 16500, 'https://vignette.wikia.nocookie.net/gtawiki/images/c/c4/Vigero-GTAV-front.png', 'gta5cardealer'),
(110, 'voodoo', 'Voodoo', 'Declasse', 'muscle', 100, 21000, 'https://vignette.wikia.nocookie.net/gtawiki/images/f/fc/VoodooCustom-GTAO-front.png', 'gta5cardealer'),
(111, 'blista', 'Blista', 'Dinka', 'compacts', 100, 8000, 'https://vignette.wikia.nocookie.net/gtawiki/images/c/c0/Blista-GTAV-front.png', 'gta5cardealer'),
(112, 'brioso', 'Brioso R/A', 'Grotti', 'compacts', 100, 14500, 'https://vignette.wikia.nocookie.net/gtawiki/images/8/80/BriosoRA-GTAO-front.png', 'gta5cardealer'),
(113, 'issi2', 'issi2', 'Weeny', 'compacts', 100, 12000, 'https://vignette.wikia.nocookie.net/gtawiki/images/9/9c/IssiDown-GTAV-front.png', 'gta5cardealer'),
(114, 'panto', 'Panto', 'Benefactor', 'compacts', 100, 8500, 'https://vignette.wikia.nocookie.net/gtawiki/images/a/ad/Panto-GTAV-front.png', 'gta5cardealer'),
(115, 'prairie', 'Prairie', 'Bollokan', 'compacts', 100, 15000, 'https://vignette.wikia.nocookie.net/gtawiki/images/0/06/Prairie-GTAV-front.png', 'gta5cardealer'),
(116, 'sanchez', 'Sanchez Livery', 'Maibatsu', 'motorcycles', 100, 14500, 'https://static.wikia.nocookie.net/gtawiki/images/e/e9/Sanchez-GTAV-front-Atomic.png/revision/latest?cb=20160222220849', 'gta5cardealer'),
(117, 'sanchez2', 'Sanchez', 'Maibatsu', 'motorcycles', 100, 14500, 'https://static.wikia.nocookie.net/gtawiki/images/9/93/Sanchez2-GTAV-front.png/revision/latest?cb=20160222221404', 'gta5cardealer'),
(118, 'bison', 'Bravado', 'Bravado', 'vans', 100, 34000, 'https://vignette.wikia.nocookie.net/gtawiki/images/6/69/Bison-GTAV-front.png', 'gta5cardealer'),
(119, 'bobcatxl', 'Bobcat XL Open', 'Vapid', 'vans', 100, 23000, 'https://vignette.wikia.nocookie.net/gtawiki/images/3/37/BobcatXL-GTAV-front.png', 'gta5cardealer'),
(120, 'bobcatxl2', 'Bobcat XL Closed', 'Vapid', 'vans', 100, 23000, 'https://vignette.wikia.nocookie.net/gtawiki/images/3/37/BobcatXL-GTAV-front.png', 'gta5cardealer'),
(121, 'burrito3', 'Burrito', 'Declasse', 'vans', 100, 38500, 'https://vignette.wikia.nocookie.net/gtawiki/images/8/80/Burrito3-GTAV-front.png', 'gta5cardealer'),
(122, 'gburrito2', 'Burrito Custom', 'Declasse', 'vans', 100, 65000, 'https://vignette.wikia.nocookie.net/gtawiki/images/4/4f/GangBurrito2-GTAO-front.png', 'gta5cardealer'),
(123, 'moonbeam', 'Moonbeam', 'Declasse', 'vans', 100, 29500, 'https://vignette.wikia.nocookie.net/gtawiki/images/b/b3/Moonbeam-GTAO-front.png', 'gta5cardealer'),
(124, 'rumpo', 'Rumpo', 'Bravado', 'vans', 100, 30000, 'https://vignette.wikia.nocookie.net/gtawiki/images/d/d3/Rumpo-GTAV-front.png', 'gta5cardealer'),
(125, 'asea', 'Asea', 'Declasse', 'sedans', 100, 13000, 'https://vignette.wikia.nocookie.net/gtawiki/images/5/58/Asea-GTAV-front.png', 'gta5cardealer'),
(126, 'cognoscenti', 'Cognoscenti', 'Enus', 'sedans', 100, 40000, 'https://vignette.wikia.nocookie.net/gtawiki/images/f/ff/Cognoscenti-GTAO-front.png', 'gta5cardealer'),
(127, 'emperor', 'Emperor', 'Albany', 'sedans', 100, 14500, 'https://vignette.wikia.nocookie.net/gtawiki/images/4/4c/Emperor-GTAV-front.png', 'gta5cardealer'),
(128, 'fugitive', 'Fugitive', 'Cheval', 'sedans', 100, 22500, 'https://vignette.wikia.nocookie.net/gtawiki/images/5/5c/Fugitive-GTAV-front.png', 'gta5cardealer'),
(129, 'glendale', 'Glendale', 'Benefactor', 'sedans', 100, 11500, 'https://vignette.wikia.nocookie.net/gtawiki/images/4/47/Glendale-GTAV-front.png', 'gta5cardealer'),
(130, 'intruder', 'Intruder', 'Karin', 'sedans', 100, 15000, 'https://vignette.wikia.nocookie.net/gtawiki/images/7/7c/Intruder-GTAV-front.png', 'gta5cardealer'),
(131, 'premier', 'Premier', 'Declasse', 'sedans', 100, 16500, 'https://vignette.wikia.nocookie.net/gtawiki/images/c/ca/Premier-GTAV-front.png', 'gta5cardealer'),
(132, 'primo2', 'Primo Custom', 'Albany', 'sedans', 100, 14500, 'https://vignette.wikia.nocookie.net/gtawiki/images/c/ca/PrimoCustom-GTAO-front.png', 'gta5cardealer'),
(133, 'regina', 'Regina', 'Dundreary', 'sedans', 100, 10000, 'https://vignette.wikia.nocookie.net/gtawiki/images/7/71/Regina-GTAV-front.png', 'gta5cardealer'),
(134, 'schafter2', 'Schafter', 'Benefactor', 'sedans', 100, 32000, 'https://vignette.wikia.nocookie.net/gtawiki/images/5/57/Schafter-GTAV-front.png', 'gta5cardealer'),
(135, 'superd', 'Super Diamond', 'Enus', 'sedans', 100, 108000, 'https://vignette.wikia.nocookie.net/gtawiki/images/d/d8/SuperDiamond-GTAV-front.png', 'gta5cardealer'),
(136, 'tailgater', 'Tailgater', 'Obey', 'sedans', 100, 45000, 'https://vignette.wikia.nocookie.net/gtawiki/images/e/e1/Tailgater-GTAV-front.png', 'gta5cardealer'),
(137, 'washington', 'Washington', 'Albany', 'sedans', 100, 19000, 'https://vignette.wikia.nocookie.net/gtawiki/images/1/12/Washington-GTAV-front.png', 'gta5cardealer'),
(138, 'baller2', 'Baller', 'Gallivanter', 'suvs', 100, 79000, 'https://vignette.wikia.nocookie.net/gtawiki/images/e/ef/Baller2-GTAV-front.png', 'gta5cardealer'),
(139, 'baller3', 'Baller LE', 'Gallivanter', 'suvs', 100, 90000, 'https://vignette.wikia.nocookie.net/gtawiki/images/7/71/BallerLE-GTAO-front.png', 'gta5cardealer'),
(140, 'cavalcade2', 'Cavalcade', 'Albany', 'suvs', 100, 45000, 'https://vignette.wikia.nocookie.net/gtawiki/images/0/08/Cavalcade2-GTAV-front.png', 'gta5cardealer'),
(141, 'dubsta2', 'Dubsta Luxuary', 'Benefactor', 'suvs', 100, 165000, 'https://vignette.wikia.nocookie.net/gtawiki/images/f/fa/Dubsta2-GTAV-front.png', 'gta5cardealer'),
(142, 'fq2', 'FQ2', 'Fathom', 'suvs', 100, 38000, 'https://vignette.wikia.nocookie.net/gtawiki/images/6/6e/FQ2-GTAV-front.png', 'gta5cardealer'),
(143, 'granger', 'Granger', 'Declasse', 'suvs', 100, 43500, 'https://vignette.wikia.nocookie.net/gtawiki/images/d/de/Granger-GTAV-front.png', 'gta5cardealer'),
(144, 'gresley', 'Gresley', 'Bravado', 'suvs', 100, 47000, 'https://vignette.wikia.nocookie.net/gtawiki/images/f/ff/Gresley-GTAV-front.png', 'gta5cardealer'),
(145, 'landstalker', 'Landstalker', 'Dundreary', 'suvs', 100, 27000, 'https://vignette.wikia.nocookie.net/gtawiki/images/7/77/Landstalker-GTAV-front.png', 'gta5cardealer'),
(146, 'patriot', 'Patriot', 'Mammoth', 'suvs', 100, 32000, 'https://vignette.wikia.nocookie.net/gtawiki/images/9/90/Patriot-GTAV-front.PNG', 'gta5cardealer'),
(147, 'radi', 'Radius', 'Vapid', 'suvs', 100, 24000, 'https://vignette.wikia.nocookie.net/gtawiki/images/b/b6/Radius-GTAV-front.png', 'gta5cardealer'),
(148, 'rocoto', 'Rocoto', 'Obey', 'suvs', 100, 48500, 'https://vignette.wikia.nocookie.net/gtawiki/images/2/28/Rocoto-GTAV-front.png', 'gta5cardealer'),
(149, 'seminole', 'Seminole', 'Canis', 'suvs', 100, 29500, 'https://vignette.wikia.nocookie.net/gtawiki/images/a/a0/Seminole-GTAV-front.png', 'gta5cardealer'),
(150, 'xls', 'XLS', 'Benefactor', 'suvs', 100, 75000, 'https://vignette.wikia.nocookie.net/gtawiki/images/8/8c/XLS-GTAO-front.png', 'gta5cardealer'),
(151, 'btype', 'Roosevelt', 'Albany', 'classics', 100, 325000, 'https://vignette.wikia.nocookie.net/gtawiki/images/b/b4/Roosevelt-GTAV-front.png', 'gta5cardealer'),
(152, 'btype3', 'Roosevelt Valor', 'Albany', 'classics', 100, 375000, 'https://vignette.wikia.nocookie.net/gtawiki/images/2/2a/RooseveltValor-GTAO-front.png', 'gta5cardealer'),
(153, 'btype2', 'Franken Stange', 'Albany', 'classics', 100, 350000, 'https://vignette.wikia.nocookie.net/gtawiki/images/6/63/Fr%C3%A4nkenStange-GTAV-front.png', 'gta5cardealer'),
(154, 'casco', 'Casco', 'Lampadati', 'classics', 100, 102000, 'https://vignette.wikia.nocookie.net/gtawiki/images/8/86/Casco-GTAO-front.png', 'gta5cardealer'),
(155, 'coquette2', 'Coquette Classic', 'Invetero', 'classics', 100, 125000, 'https://vignette.wikia.nocookie.net/gtawiki/images/0/0b/CoquetteClassic-GTAV-front.png', 'gta5cardealer'),
(156, 'monroe', 'Monroe', 'Pegassi', 'classics', 100, 98500, 'https://vignette.wikia.nocookie.net/gtawiki/images/4/44/Monroe-GTAV-front.png', 'gta5cardealer'),
(157, 'pigalle', 'Pigalle', 'Lampadati', 'classics', 100, 135000, 'https://vignette.wikia.nocookie.net/gtawiki/images/d/d4/Pigalle-GTAV-front.png', 'gta5cardealer'),
(158, 'stingergt', 'Stinger GT', 'Grotti', 'classics', 100, 184000, 'https://vignette.wikia.nocookie.net/gtawiki/images/c/c5/StingerGT-GTAO-front.png', 'gta5cardealer'),
(159, 'feltzer3', 'Stirling GT', 'Benefactor', 'classics', 100, 195000, 'https://vignette.wikia.nocookie.net/gtawiki/images/d/d2/StirlingGT-GTAV-front.png', 'gta5cardealer'),
(160, 'ztype', 'Z-Type', 'Truffade', 'classics', 100, 2500000, 'https://vignette.wikia.nocookie.net/gtawiki/images/9/9d/Z-Type-GTAV-front.png', 'gta5cardealer'),
(161, 'cogcabrio', 'Cognoscenti Cabrio', 'Enus', 'coupes', 100, 45500, 'https://vignette.wikia.nocookie.net/gtawiki/images/2/28/CognoscentiCabrioUp-GTAV-front.png', 'gta5cardealer'),
(162, 'exemplar', 'Exemplar', 'Dewbauchee', 'coupes', 100, 65000, 'https://vignette.wikia.nocookie.net/gtawiki/images/d/de/Exemplar-GTAV-front.png', 'gta5cardealer'),
(163, 'f620', 'F620', 'Ocelot', 'coupes', 100, 37500, 'https://vignette.wikia.nocookie.net/gtawiki/images/f/f8/F620-GTAV-front.png', 'gta5cardealer'),
(164, 'felon', 'Felon', 'Lampadati', 'coupes', 100, 31000, 'https://vignette.wikia.nocookie.net/gtawiki/images/d/de/Felon-GTAV-front.png', 'gta5cardealer'),
(165, 'felon2', 'Felon GT', 'Lampadati', 'coupes', 100, 37000, 'https://vignette.wikia.nocookie.net/gtawiki/images/0/0f/FelonGTDown-GTAV-front.png', 'gta5cardealer'),
(166, 'jackal', 'Jackal', 'Ocelot', 'coupes', 100, 29000, 'https://vignette.wikia.nocookie.net/gtawiki/images/4/48/Jackal-GTAV-front.png', 'gta5cardealer'),
(167, 'oracle2', 'Oracle XS', '&Uuml;bermacht', 'coupes', 100, 28000, 'https://vignette.wikia.nocookie.net/gtawiki/images/2/22/OracleXS-GTAV-front.png', 'gta5cardealer'),
(168, 'sentinel', 'Sentinel', '&Uuml;bermacht', 'coupes', 100, 30000, 'https://vignette.wikia.nocookie.net/gtawiki/images/7/75/SentinelUp-GTAV-front.png', 'gta5cardealer'),
(169, 'sentinel2', 'Sentinel XS', '&Uuml;bermacht', 'coupes', 100, 36500, 'https://vignette.wikia.nocookie.net/gtawiki/images/d/d0/SentinelXS-GTAV-front.png', 'gta5cardealer'),
(170, 'windsor', 'Windsor', 'Enus', 'coupes', 100, 325000, 'https://vignette.wikia.nocookie.net/gtawiki/images/2/26/Windsor-GTAV-front.png', 'gta5cardealer'),
(171, 'windsor2', 'Windsor Drop', 'Enus', 'coupes', 100, 355000, 'https://vignette.wikia.nocookie.net/gtawiki/images/3/31/WindsorDropUp-GTAO-front.png', 'gta5cardealer'),
(172, 'zion', 'Zion', '&Uuml;bermacht', 'coupes', 100, 25500, 'https://vignette.wikia.nocookie.net/gtawiki/images/c/cc/Zion-GTAV-front.png', 'gta5cardealer'),
(173, 'zion2', 'Zion Cabrio', '&Uuml;bermacht', 'coupes', 100, 27000, 'https://vignette.wikia.nocookie.net/gtawiki/images/c/cb/ZionCabrioDown-GTAV-front.png', 'gta5cardealer'),
(174, 'futo', 'Futo', 'Karin', 'coupes', 100, 20000, 'https://static.wikia.nocookie.net/gtawiki/images/6/67/Futo-GTAV-front.PNG/revision/latest?cb=20180726155611', 'gta5cardealer'),
(175, 'jugular', 'Jugular', 'Maibatsu', 'sports', 100, 90000, 'https://static.wikia.nocookie.net/gtawiki/images/9/98/Jugular-GTAO-front.png/revision/latest?cb=20190723230439', 'gta5cardealer'),
(176, 'hotring', 'hotring', 'Maibatsu', 'classics', 100, 70000, 'https://static.wikia.nocookie.net/gtawiki/images/8/8f/HotringSabre-GTAO-front.png/revision/latest?cb=20180325152713', 'gta5cardealer'),
(177, 'verus', 'Verus', 'Maibatsu', 'classics', 100, 120000, 'https://static.wikia.nocookie.net/gtawiki/images/6/62/Verus-GTAO-front.png/revision/latest?cb=20201216100307', 'gta5cardealer'),
(178, 'novak', 'Novak', 'Maibatsu', 'classics', 100, 90000, 'https://static.wikia.nocookie.net/gtawiki/images/e/ec/Novak-GTAO-front.png/revision/latest?cb=20190723230516', 'gta5cardealer'),
(179, 'winky', 'Winky', 'Maibatsu', 'suvs', 100, 80000, 'https://static.wikia.nocookie.net/gtawiki/images/5/59/Winky-GTAO-front.png/revision/latest?cb=20201216100324', 'gta5cardealer'),
(180, 'ninef', '9F', 'Obey', 'sports', 100, 135000, 'https://vignette.wikia.nocookie.net/gtawiki/images/2/2d/9F-GTAV-front.png', 'gta5cardealer'),
(181, 'ninef2', '9F Cabrio', 'Obey', 'sports', 100, 142000, 'https://vignette.wikia.nocookie.net/gtawiki/images/a/a1/9FCabrio-GTAV-front.png', 'gta5cardealer'),
(182, 'alpha', 'Alpha', 'Albany', 'sports', 100, 38000, 'https://vignette.wikia.nocookie.net/gtawiki/images/9/94/Alpha-GTAV-front.png', 'gta5cardealer'),
(183, 'banshee', 'Banshee', 'Bravado', 'sports', 100, 98000, 'https://vignette.wikia.nocookie.net/gtawiki/images/8/82/Banshee-GTAV-front.png', 'gta5cardealer'),
(184, 'bestiagts', 'Bestia GTS', 'Grotti', 'sports', 100, 197000, 'https://vignette.wikia.nocookie.net/gtawiki/images/a/a5/BestiaGTS-GTAO-front.png', 'gta5cardealer'),
(185, 'buffalo', 'Buffalo', 'Bravado', 'sports', 100, 32000, 'https://vignette.wikia.nocookie.net/gtawiki/images/7/7d/Buffalo-GTAV-front.png', 'gta5cardealer'),
(186, 'buffalo2', 'Buffalo S', 'sports', 'sports', 100, 39500, 'https://vignette.wikia.nocookie.net/gtawiki/images/e/e1/BuffaloS-GTAV-front.png', 'gta5cardealer'),
(187, 'carbonizzare', 'Carbonizzare', 'Grotti', 'sports', 100, 219000, 'https://vignette.wikia.nocookie.net/gtawiki/images/7/7b/CarbonizzareDown-GTAV-front.png', 'gta5cardealer'),
(188, 'comet2', 'Comet', 'Pfister', 'sports', 100, 142000, 'https://vignette.wikia.nocookie.net/gtawiki/images/d/d2/Comet-GTAV-front.png', 'gta5cardealer'),
(189, 'coquette', 'Coquette', 'Invetero', 'sports', 100, 97000, 'https://vignette.wikia.nocookie.net/gtawiki/images/0/08/Coquette-GTAV-front.png', 'gta5cardealer'),
(190, 'elegy2', 'Elegy RH8', 'Annis', 'sports', 100, 68500, 'https://vignette.wikia.nocookie.net/gtawiki/images/4/4f/ElegyRH8-GTAV-front.png', 'gta5cardealer'),
(191, 'feltzer2', 'Feltzer', 'Benefactor', 'sports', 100, 83500, 'https://vignette.wikia.nocookie.net/gtawiki/images/8/8f/Feltzer-GTAVPC-Front.png', 'gta5cardealer'),
(192, 'furoregt', 'Furore GT', 'Lampadati', 'sports', 100, 115000, 'https://vignette.wikia.nocookie.net/gtawiki/images/5/56/FuroreGT-GTAV-front.png', 'gta5cardealer'),
(193, 'fusilade', 'Fusilade', 'Schyster', 'sports', 100, 50000, 'https://vignette.wikia.nocookie.net/gtawiki/images/a/a0/Fusilade-GTAV-front.png', 'gta5cardealer'),
(194, 'jester', 'Jester', 'Dinka', 'sports', 100, 265000, 'https://vignette.wikia.nocookie.net/gtawiki/images/a/af/Jester-GTAV-front.png', 'gta5cardealer'),
(195, 'khamelion', 'Khamelion', 'Hijak', 'sports', 100, 202000, 'https://vignette.wikia.nocookie.net/gtawiki/images/1/1f/Khamelion-GTAV-front.png', 'gta5cardealer'),
(196, 'kuruma', 'Kuruma', 'Karin', 'sports', 100, 59500, 'https://vignette.wikia.nocookie.net/gtawiki/images/5/53/Kuruma-GTAO-front.png', 'gta5cardealer'),
(197, 'lynx', 'Lynx', 'Ocelot', 'sports', 100, 68500, 'https://vignette.wikia.nocookie.net/gtawiki/images/a/a7/Lynx-GTAO-front.png', 'gta5cardealer'),
(198, 'mamba', 'Mamba', 'Declasse', 'classics', 100, 86000, 'https://vignette.wikia.nocookie.net/gtawiki/images/d/d4/Mamba-GTAO-front.png', 'gta5cardealer'),
(199, 'massacro', 'Massacro', 'Dewbauchee', 'sports', 100, 165000, 'https://vignette.wikia.nocookie.net/gtawiki/images/1/12/Massacro-GTAV-front.png', 'gta5cardealer'),
(200, 'rapidgt', 'Rapid GT', 'Dewbauchee', 'sports', 100, 60000, 'https://vignette.wikia.nocookie.net/gtawiki/images/4/42/RapidGT-GTAV-front.png', 'gta5cardealer'),
(201, 'rapidgt2', 'Rapid GT Convertible', 'Dewbauchee', 'sports', 100, 65000, 'https://vignette.wikia.nocookie.net/gtawiki/images/f/f8/RapidGT2-GTAV-front.png', 'gta5cardealer'),
(202, 'schafter3', 'Schafter V12', 'Benefactor', 'sports', 100, 69000, 'https://vignette.wikia.nocookie.net/gtawiki/images/a/a6/SchafterV12-GTAO-front.png', 'gta5cardealer'),
(203, 'seven70', 'Seven-70', 'Dewbauchee', 'sports', 100, 85000, 'https://vignette.wikia.nocookie.net/gtawiki/images/2/21/Seven70-GTAO-front.png', 'gta5cardealer'),
(204, 'sultan', 'Sultan', 'Karin', 'sports', 100, 56500, 'https://vignette.wikia.nocookie.net/gtawiki/images/b/bb/Sultan-GTAV-front.png', 'gta5cardealer'),
(205, 'surano', 'Surano', 'Benefactor', 'sports', 100, 89000, 'https://vignette.wikia.nocookie.net/gtawiki/images/f/fd/SuranoDown-GTAV-front.png', 'gta5cardealer'),
(206, 'verlierer2', 'Verlierer', 'Bravado', 'sports', 100, 90500, 'https://vignette.wikia.nocookie.net/gtawiki/images/8/8c/Verlierer-GTAO-front.png', 'gta5cardealer'),
(207, 'adder', 'Adder', 'Truffade', 'super', 100, 1000000, 'https://vignette.wikia.nocookie.net/gtawiki/images/9/9e/Adder-GTAV-front.png', 'gta5cardealer'),
(208, 'banshee2', 'Banshee 900R', 'Bravado', 'super', 100, 178000, 'https://vignette.wikia.nocookie.net/gtawiki/images/e/e2/Banshee900RTopless-GTAO-front.png', 'gta5cardealer'),
(209, 'bullet', 'Bullet', 'Vapid', 'super', 100, 190000, 'https://vignette.wikia.nocookie.net/gtawiki/images/3/3d/Bullet-GTAV-front.png', 'gta5cardealer'),
(210, 'cheetah', 'Cheetah', 'Grotti', 'super', 100, 395000, 'https://vignette.wikia.nocookie.net/gtawiki/images/1/1e/Cheetah-GTAV-Front.png', 'gta5cardealer'),
(211, 'entityxf', 'Entity XF', '&Ouml;verfl&ouml;d', 'super', 100, 825000, 'https://vignette.wikia.nocookie.net/gtawiki/images/9/95/EntityXF-GTAV-front.png', 'gta5cardealer'),
(212, 'fmj', 'FMJ', 'Vapid', 'super', 100, 335000, 'https://vignette.wikia.nocookie.net/gtawiki/images/8/8c/FMJ-GTAO-front.png', 'gta5cardealer'),
(213, 'cheburek', 'Cheburek', 'Cheburek', 'super', 100, 15000, 'https://vignette.wikia.nocookie.net/gtawiki/images/8/8c/FMJ-GTAO-front.png', 'gta5cardealer'),
(214, 'infernus', 'Infernus', 'Pegassi', 'super', 100, 285000, 'https://vignette.wikia.nocookie.net/gtawiki/images/0/0e/Infernus-GTAV-front.png', 'gta5cardealer'),
(215, 'pfister811', '811', 'Pfister', 'super', 100, 583000, 'https://vignette.wikia.nocookie.net/gtawiki/images/c/c7/811A-GTAO-front.png', 'gta5cardealer'),
(216, 'reaper', 'Reaper', 'Pegassi', 'super', 100, 365000, 'https://vignette.wikia.nocookie.net/gtawiki/images/5/5f/Reaper-GTAO-front.png', 'gta5cardealer'),
(217, 't20', 'T20', 'Progen', 'super', 100, 1680000, 'https://vignette.wikia.nocookie.net/gtawiki/images/2/20/T20-GTAV-front.png', 'gta5cardealer'),
(218, 'turismor', 'Turismo R', 'Grotti', 'super', 100, 750000, 'https://vignette.wikia.nocookie.net/gtawiki/images/6/61/TurismoR-GTAV-front.png', 'gta5cardealer'),
(219, 'vacca', 'Vacca', 'Pegassi', 'super', 100, 255000, 'https://vignette.wikia.nocookie.net/gtawiki/images/b/b4/Vacca-GTAV-front.png', 'gta5cardealer'),
(220, 'voltic', 'Voltic', 'Coil', 'super', 100, 120000, 'https://vignette.wikia.nocookie.net/gtawiki/images/8/87/Voltic-GTAV-front.png', 'gta5cardealer'),
(221, 'prototipo', 'X80 Proto', 'Grotti', 'super', 100, 1430000, 'https://vignette.wikia.nocookie.net/gtawiki/images/b/b3/X80Proto-GTAO-front.png', 'gta5cardealer'),
(222, 'zentorno', 'Zentorno', 'Pegassi', 'super', 100, 1250000, 'https://vignette.wikia.nocookie.net/gtawiki/images/6/60/Zentorno-GTAV-front.png', 'gta5cardealer'),
(223, 'sultanrs', 'Sultan RS', 'Karin', 'sports', 100, 76500, 'https://vignette.wikia.nocookie.net/gtawiki/images/c/c1/SultanRS-GTAO-front.png', 'gta5cardealer'),
(224, 'avarus', 'LCC', 'Avarus', 'motorcycles', 100, 6500, 'https://vignette.wikia.nocookie.net/gtawiki/images/1/1a/Avarus-GTAO-front.png', 'gta5cardealer'),
(225, 'bagger', 'Bagger', 'WMC', 'motorcycles', 100, 7000, 'https://vignette.wikia.nocookie.net/gtawiki/images/1/10/Bagger-GTAV-front.png', 'gta5cardealer'),
(226, 'rumpo2', 'Rumpo 2', 'Bravado', 'vans', 100, 20451, 'https://vignette.wikia.nocookie.net/gtawiki/images/d/d3/Rumpo-GTAV-front.png', 'gta5cardealer'),
(227, 'rumpo3', 'Rumpo 3', 'Bravado', 'vans', 100, 30000, 'https://vignette.wikia.nocookie.net/gtawiki/images/d/d3/Rumpo-GTAV-front.png', 'gta5cardealer'),
(228, 'tractor2', 'Tractor', 'tractor2', 'suvs', 100, 6000, 'https://vignette.wikia.nocookie.net/gtawiki/images/e/ef/Baller2-GTAV-front.png', 'gta5cardealer'),
(229, 'sovereign', 'Sovereign', 'WMC', 'motorcycles', 100, 27000, 'https://vignette.wikia.nocookie.net/gtawiki/images/9/98/Sovereign-GTAV-front.png', 'gta5cardealer'),
(230, 'bati', 'Bati 801', 'Pegassi', 'motorcycles', 100, 17500, 'https://vignette.wikia.nocookie.net/gtawiki/images/6/65/Bati801-GTAV-FrontQuarter.png', 'gta5cardealer'),
(231, 'carbonrs', 'Carbon RS', 'Nagasaki', 'motorcycles', 100, 14500, 'https://vignette.wikia.nocookie.net/gtawiki/images/2/2d/CarbonRS-GTAV-front.png', 'gta5cardealer'),
(232, 'chimera', 'Chimera', 'Nagasaki', 'motorcycles', 100, 15000, 'https://vignette.wikia.nocookie.net/gtawiki/images/8/8a/Chimera-GTAO-front.png', 'gta5cardealer'),
(233, 'daemon', 'Daemon', 'WMC', 'motorcycles', 100, 12500, 'https://vignette.wikia.nocookie.net/gtawiki/images/6/6b/Daemon2-GTAO-front.png', 'gta5cardealer'),
(234, 'defiler', 'Defiler', 'Shitzu', 'motorcycles', 100, 13500, 'https://vignette.wikia.nocookie.net/gtawiki/images/f/f5/Defiler-GTAO-front.png', 'gta5cardealer'),
(235, 'esskey', 'Esskey', 'Pegassi', 'motorcycles', 100, 6000, 'https://vignette.wikia.nocookie.net/gtawiki/images/4/4e/Esskey-GTAO-front.png', 'gta5cardealer'),
(236, 'faggio', 'Faggio Sport', 'Pegassi', 'motorcycles', 100, 1100, 'https://vignette.wikia.nocookie.net/gtawiki/images/5/50/FaggioSport-GTAO-front.png', 'gta5cardealer'),
(237, 'hakuchou', 'Hakuchou', 'Shitzu', 'motorcycles', 100, 16000, 'https://vignette.wikia.nocookie.net/gtawiki/images/a/ab/Hakuchou-GTAV-front.png', 'gta5cardealer'),
(238, 'hakuchou2', 'Hakuchou Drag', 'Shitzu', 'motorcycles', 100, 25000, 'https://static.wikia.nocookie.net/gtawiki/images/f/fd/HakuchouDrag-GTAO-front.png/revision/latest?cb=20190921155821', 'gta5cardealer'),
(239, 'cliffhanger', 'Cliffhanger', 'Western', 'motorcycles', 100, 18230, 'https://static.wikia.nocookie.net/gtawiki/images/7/78/Cliffhanger-GTAO-front.png/revision/latest?cb=20161014164545', 'gta5cardealer'),
(240, 'clique', 'Clique', 'Vapid', 'muscle', 100, 12300, 'https://static.wikia.nocookie.net/gtawiki/images/c/c6/Clique-GTAO-front.png/revision/latest?cb=20181214181626', 'gta5cardealer'),
(241, 'hexer', 'Hexer', 'LCC', 'motorcycles', 100, 7500, 'https://vignette.wikia.nocookie.net/gtawiki/images/6/64/Hexer-GTAV-front.png', 'gta5cardealer'),
(242, 'nemesis', 'Nemesis', 'Principe', 'motorcycles', 100, 12000, 'https://vignette.wikia.nocookie.net/gtawiki/images/4/4b/Nemesis-GTAV-front.png', 'gta5cardealer'),
(243, 'nightblade', 'Nightblade', 'WMC', 'motorcycles', 100, 14500, 'https://vignette.wikia.nocookie.net/gtawiki/images/6/6b/Nightblade-GTAO-front.png', 'gta5cardealer'),
(244, 'pcj', 'PCJ-600', 'Shitzu', 'motorcycles', 100, 13500, 'https://vignette.wikia.nocookie.net/gtawiki/images/7/74/PCJ600-GTAV-front.png', 'gta5cardealer'),
(245, 'ruffian', 'Ruffian', 'Pegassi', 'motorcycles', 100, 14000, 'https://vignette.wikia.nocookie.net/gtawiki/images/7/70/Ruffian-GTAV-front-variant2.png', 'gta5cardealer'),
(246, 'sanctus', 'Sanctus', 'LLC', 'motorcycles', 100, 23000, 'https://static.wikia.nocookie.net/gtawiki/images/b/be/Sanctus-GTAO-front.png/revision/latest?cb=20161004182302', 'gta5cardealer'),
(247, 'thrust', 'Dinka', 'Thrust', 'motorcycles', 100, 16000, 'https://vignette.wikia.nocookie.net/gtawiki/images/4/4e/Thrust-GTAV-front.png', 'gta5cardealer'),
(248, 'visione', 'Visione', 'Grotti', 'sports', 100, 1750000, 'https://vignette.wikia.nocookie.net/gtawiki/images/5/57/Visione-GTAO-front.png', 'gta5cardealer'),
(249, 'gt500', 'GT500', 'Grotti', 'classics', 100, 255000, 'https://vignette.wikia.nocookie.net/gtawiki/images/2/25/GT500-GTAO-front.png', 'gta5cardealer'),
(250, 'cyclone', 'Cyclone', 'Coil', 'super', 100, 1200000, 'https://vignette.wikia.nocookie.net/gtawiki/images/0/07/Cyclone-GTAO-front.png', 'gta5cardealer'),
(251, 'comet5', 'Comet SR', 'Pfister', 'sports', 100, 252000, 'https://vignette.wikia.nocookie.net/gtawiki/images/0/0f/CometSR-GTAO-front.png', 'gta5cardealer'),
(252, 'rapidgt3', 'Rapid GT', 'Dewbauchee', 'classics', 100, 445000, 'https://vignette.wikia.nocookie.net/gtawiki/images/1/13/RapidGTClassic-GTAO-front.png', 'gta5cardealer'),
(253, 'streiter', 'Streiter', 'Benefactor', 'sports', 100, 98000, 'https://vignette.wikia.nocookie.net/gtawiki/images/3/38/Streiter-GTAO-front.png', 'gta5cardealer'),
(254, 'pariah', 'Pariah', 'Ocelot', 'sports', 100, 395000, 'https://vignette.wikia.nocookie.net/gtawiki/images/f/ff/Pariah-GTAO-front.png', 'gta5cardealer'),
(255, 'raiden', 'Raiden', 'Coil', 'sports', 100, 150000, 'https://vignette.wikia.nocookie.net/gtawiki/images/b/b5/Raiden-GTAO-front.png', 'gta5cardealer'),
(256, 'hustler', 'Hustler', 'Vapid', 'muscle', 100, 75500, 'https://vignette.wikia.nocookie.net/gtawiki/images/f/f1/Hustler-GTAO-front.png', 'gta5cardealer'),
(257, 'yosemite', 'Yosemite', 'Declasse', 'muscle', 100, 19500, 'https://vignette.wikia.nocookie.net/gtawiki/images/0/09/Yosemite-GTAO-front.png', 'gta5cardealer'),
(258, 'sc1', 'SC1', '&Uuml;bermacht', 'super', 100, 750000, 'https://vignette.wikia.nocookie.net/gtawiki/images/3/3a/SC1-GTAO-front.png', 'gta5cardealer'),
(259, 'z190', '190Z', 'Karin', 'classics', 100, 330000, 'https://vignette.wikia.nocookie.net/gtawiki/images/b/be/190z-GTAO-front.png', 'gta5cardealer'),
(260, 'neon', 'Neon', 'Pfister', 'sports', 100, 185000, 'https://vignette.wikia.nocookie.net/gtawiki/images/c/c0/Neon-GTAO-front.png', 'gta5cardealer'),
(261, 'autarch', 'Autarch', '&Ouml;verfl&ouml;d', 'super', 100, 1800000, 'https://vignette.wikia.nocookie.net/gtawiki/images/6/6c/Autarch-GTAO-front.png', 'gta5cardealer'),
(262, 'blista2', 'Blista Compact', 'Dinka', 'compacts', 100, 12500, 'https://vignette.wikia.nocookie.net/gtawiki/images/0/06/BlistaCompact-GTAV-front.png', 'gta5cardealer'),
(263, 'issi3', 'Issi Classic', 'Weeny', 'compacts', 100, 11000, 'https://vignette.wikia.nocookie.net/gtawiki/images/9/9f/IssiClassic-GTAO-front.png', 'gta5cardealer'),
(264, 'dilettante', 'Dilettante', 'Karin', 'compacts', 100, 13000, 'https://vignette.wikia.nocookie.net/gtawiki/images/8/80/Dilettante-GTAV-front.png', 'gta5cardealer'),
(265, 'rhapsody', 'Rhapsody', 'Declasse', 'compacts', 100, 10000, 'https://vignette.wikia.nocookie.net/gtawiki/images/c/cc/Rhapsody-GTAV-front.png', 'gta5cardealer'),
(266, 'stalion', 'Stallion', 'Declasse', 'muscle', 100, 23500, 'https://vignette.wikia.nocookie.net/gtawiki/images/0/00/Stallion-GTAV-front.png', 'gta5cardealer'),
(267, 'infernus2', 'Infernus Classic', 'Pegassi', 'classics', 100, 200000, 'https://vignette.wikia.nocookie.net/gtawiki/images/7/73/InfernusClassic-GTAO-front.png', 'gta5cardealer'),
(268, 'ruston', 'Ruston', 'Hijak', 'sports', 100, 165000, 'https://vignette.wikia.nocookie.net/gtawiki/images/2/2c/Ruston-GTAO-front.png', 'gta5cardealer'),
(269, 'specter', 'Specter', 'Dewbauchee', 'sports', 100, 155000, 'https://vignette.wikia.nocookie.net/gtawiki/images/7/7b/Specter-GTAO-front.png', 'gta5cardealer'),
(270, 'cheetah2', 'Cheetah Classic', 'Grotti', 'sports', 100, 220000, 'https://vignette.wikia.nocookie.net/gtawiki/images/3/38/CheetahClassic-GTAO-front.png', 'gta5cardealer'),
(271, 'torero', 'Torero', 'Pegassi', 'classics', 100, 285500, 'https://vignette.wikia.nocookie.net/gtawiki/images/4/47/Torero-GTAO-front.png', 'gta5cardealer'),
(272, 'gp1', 'GP1', 'Progen', 'super', 100, 462000, 'https://vignette.wikia.nocookie.net/gtawiki/images/8/8a/GP1-GTAO-front.png', 'gta5cardealer'),
(273, 'penetrator', 'Penetrator', 'Ocelot', 'super', 100, 567000, 'https://vignette.wikia.nocookie.net/gtawiki/images/9/9c/Penetrator-GTAO-front.png', 'gta5cardealer'),
(274, 'tempesta', 'Tempesta', 'Pegassi', 'super', 100, 400000, 'https://vignette.wikia.nocookie.net/gtawiki/images/3/35/Tempesta-GTAO-front.png', 'gta5cardealer'),
(275, 'vagner', 'Vagner', 'Dewbauchee', 'super', 100, 1460000, 'https://vignette.wikia.nocookie.net/gtawiki/images/1/14/Vagner-GTAO-front.png', 'gta5cardealer'),
(276, 'italigtb', 'Itali GTB', 'Progen', 'super', 100, 1200000, 'https://vignette.wikia.nocookie.net/gtawiki/images/4/44/ItaliGTB-GTAO-front.png', 'gta5cardealer'),
(277, 'xa21', 'XA-21', 'Ocelot', 'super', 100, 2150000, 'https://vignette.wikia.nocookie.net/gtawiki/images/6/69/XA21-GTAO-front.png', 'gta5cardealer'),
(278, 'jester3', 'Jester Classic', 'Dinka', 'sports', 100, 70000, 'https://vignette.wikia.nocookie.net/gtawiki/images/1/1a/JesterClassic-GTAO-front.png', 'gta5cardealer'),
(279, 'elegy', 'Elegy Retro Custom', 'Annis', 'sports', 100, 60000, 'https://vignette.wikia.nocookie.net/gtawiki/images/6/68/ElegyRetroCustom-GTAO-front.png', 'gta5cardealer'),
(280, 'dominator3', 'Dominator GTX', 'Vapid', 'muscle', 100, 87500, 'https://vignette.wikia.nocookie.net/gtawiki/images/8/8b/DominatorGTX-GTAO-front.png', 'gta5cardealer'),
(281, 'tezeract', 'Tezeract', 'Pegassi', 'super', 100, 2350000, 'https://vignette.wikia.nocookie.net/gtawiki/images/c/ca/Tezeract-GTAO-front.png', 'gta5cardealer'),
(282, 'entity2', 'Entity XXR', '&Ouml;verfl&ouml;d', 'super', 100, 1532000, 'https://vignette.wikia.nocookie.net/gtawiki/images/9/9a/EntityXXR-GTAO-front.png', 'gta5cardealer'),
(283, 'nero', 'Nero', 'Truffade', 'super', 100, 2352000, 'https://vignette.wikia.nocookie.net/gtawiki/images/5/5e/Nero-GTAO-front.png', 'gta5cardealer'),
(284, 'comet3', 'Comet Retro Custom', 'Pfister', 'sports', 100, 125000, 'https://vignette.wikia.nocookie.net/gtawiki/images/a/a0/CometRetroCustom-GTAO-front.png', 'gta5cardealer'),
(285, 'comet4', 'Comet Pfister', 'Pfister', 'sports', 100, 125000, 'https://vignette.wikia.nocookie.net/gtawiki/images/a/a0/CometRetroCustom-GTAO-front.png', 'gta5cardealer'),
(286, 'taipan', 'Cheval', 'Cheval', 'super', 100, 1650000, 'https://vignette.wikia.nocookie.net/gtawiki/images/4/4c/Taipan-GTAO-front.png', 'gta5cardealer'),
(287, 'tyrant', 'Tyrant', '&Ouml;verfl&ouml;d', 'super', 100, 2100000, 'https://vignette.wikia.nocookie.net/gtawiki/images/f/f7/Tyrant-GTAO-front.png', 'gta5cardealer'),
(288, 'osiris', 'Osiris', 'Pegassi', 'super', 100, 1400000, 'https://vignette.wikia.nocookie.net/gtawiki/images/5/53/Osiris-GTAV-front.png', 'gta5cardealer'),
(289, 'flashgt', 'Flash GT', 'Vapid', 'sports', 100, 111000, 'https://vignette.wikia.nocookie.net/gtawiki/images/3/3b/FlashGT-GTAO-front.png', 'gta5cardealer'),
(290, 'specter2', 'Specter Custom', 'Dewbauchee', 'sports', 100, 178000, 'https://vignette.wikia.nocookie.net/gtawiki/images/0/01/SpecterCustom-GTAO-front.png', 'gta5cardealer'),
(291, 'surge', 'Surge', 'Cheval', 'sedans', 100, 28500, 'https://vignette.wikia.nocookie.net/gtawiki/images/c/c2/Surge-GTAV-front.png', 'gta5cardealer'),
(292, 'ellie', 'Ellie', 'Vapid', 'muscle', 100, 50000, 'https://vignette.wikia.nocookie.net/gtawiki/images/6/6b/Ellie-GTAO-front.png', 'gta5cardealer'),
(293, 'bjxl', 'BeeJay XL', 'Karin', 'suvs', 100, 47000, 'https://vignette.wikia.nocookie.net/gtawiki/images/d/da/BeeJayXL-GTAV-front.png', 'gta5cardealer'),
(294, 'faggio3', 'Faggio Mod', 'Pegassi', 'motorcycles', 100, 900, 'https://vignette.wikia.nocookie.net/gtawiki/images/0/07/FaggioMod-GTAO-front.png', 'gta5cardealer'),
(295, 'emerus', 'Emerus', 'Progen', 'super', 100, 1100000, 'https://vignette.wikia.nocookie.net/gtawiki/images/0/07/FaggioMod-GTAO-front.png', 'gta5cardealer'),
(296, 'italirsx', 'Itali RSX', 'Progen', 'super', 100, 1100000, 'https://vignette.wikia.nocookie.net/gtawiki/images/4/44/ItaliGTB-GTAO-front.png', 'gta5cardealer'),
(297, 'sentinelc1', 'Sentinel Custom XR', 'Ubermach', 'tuning', 100, 250000, 'https://static.wikia.nocookie.net/gtawiki/images/a/ab/Sentinel-GTAV-front.png/revision/latest?cb=20190814131005', 'gta5cardealer'),
(298, 'bifta', 'Bifta', 'Annis', 'offroad', 100, 12000, 'https://static.wikia.nocookie.net/gtawiki/images/0/07/Bifta-GTAV-front.png/revision/latest?cb=20160302170310', 'gta5cardealer'),
(299, 'bfinjection', 'Bf Injection', 'Annis', 'offroad', 100, 16000, 'https://static.wikia.nocookie.net/gtawiki/images/8/80/Injection-GTAV-front.png/revision/latest?cb=20160626144335', 'gta5cardealer'),
(300, 'blazer', 'blazer', 'blazer', 'offroad', 100, 6500, 'https://static.wikia.nocookie.net/gtawiki/images/3/35/Blazer-GTAV-front.png/revision/latest?cb=20161018175627', 'gta5cardealer'),
(301, 'blazer4', 'Blazer Sport', 'Annis', 'offroad', 100, 8500, 'https://static.wikia.nocookie.net/gtawiki/images/6/6e/StreetBlazer-GTAO-front.png/revision/latest?cb=20161004180649', 'gta5cardealer'),
(302, 'brawler', 'Brawler', 'Annis', 'offroad', 100, 45000, 'https://static.wikia.nocookie.net/gtawiki/images/6/6c/Brawler-GTAV-front.png/revision/latest?cb=20160929162450', 'gta5cardealer'),
(303, 'dubsta3', 'Bubsta 6x6', 'Annis', 'offroad', 100, 120000, 'https://libertycity.net/uploads/download/gta5_mercedesbenz/fulls/p3pk8qm3ap90o8dmkr1ht2e626/15705285094521_53935f-9.jpg', 'gta5cardealer'),
(304, 'dune', 'Dune Buggy', 'Annis', 'offroad', 100, 8000, 'https://static.wikia.nocookie.net/gtawiki/images/4/46/Dune-GTAO-front.png/revision/latest?cb=20160712123223', 'gta5cardealer'),
(305, 'guardian', 'Guardian', 'Annis', 'offroad', 100, 45000, 'https://static.wikia.nocookie.net/gtawiki/images/5/57/Guardian-GTAO-front.png/revision/latest?cb=20160929163508', 'gta5cardealer'),
(306, 'rebel2', 'Rebel', 'Annis', 'offroad', 100, 35000, 'https://static.wikia.nocookie.net/gtawiki/images/6/6a/Rebel2-GTAV-front.png/revision/latest?cb=20160702195655', 'gta5cardealer'),
(307, 'sandking', 'Sandking', 'Annis', 'offroad', 100, 55000, 'https://static.wikia.nocookie.net/gtawiki/images/3/39/SandkingXL-GTAV-front.png/revision/latest?cb=20160626150711', 'gta5cardealer'),
(308, 'trophytruck', 'Trophy Truck', 'Annis', 'offroad', 100, 60000, 'https://static.wikia.nocookie.net/gtawiki/images/e/ec/TrophyTruck-GTAO-front.png/revision/latest?cb=20160712122948', 'gta5cardealer'),
(309, 'trophytruck2', 'Trophy Truck Limited', 'Annis', 'offroad', 100, 80000, 'https://static.wikia.nocookie.net/gtawiki/images/e/ec/TrophyTruck-GTAO-front.png/revision/latest?cb=20160712122948', 'gta5cardealer'),
(310, 'kamacho', 'Kamacho', 'Annis', 'offroad', 100, 200000, 'https://static.wikia.nocookie.net/gtawiki/images/4/47/Kamacho-GTAO-front.png/revision/latest?cb=20190128192114', 'gta5cardealer'),
(311, 'sentinel3', 'Sentinel Classic', 'Ubermacht', 'coupes', 100, 40000, 'https://static.wikia.nocookie.net/gtawiki/images/d/dc/SentinelClassic-GTAO-front.png/revision/latest?cb=20190531084620', 'gta5cardealer'),
(312, 'gauntlet3', 'Gauntlet 3', 'Ubermacht', 'coupes', 100, 70000, 'https://static.wikia.nocookie.net/gtawiki/images/f/fa/GauntletClassic-GTAO-front.png/revision/latest?cb=20190723230521', 'gta5cardealer'),
(313, 'gauntlet4', 'Gauntlet 4', 'Ubermacht', 'coupes', 100, 90000, 'https://static.wikia.nocookie.net/gtawiki/images/4/40/GauntletHellfire-GTAO-front.png/revision/latest?cb=20190723230556', 'gta5cardealer'),
(314, 'slamtruck', 'Slamtruck', 'Ubermacht', 'coupes', 100, 120000, 'https://static.wikia.nocookie.net/gtawiki/images/7/79/Slamtruck-GTAO-front.png/revision/latest?cb=20201216100334', 'gta5cardealer'),
(315, 'stryder', 'Stryder', 'Ubermacht', 'coupes', 100, 55000, 'https://static.wikia.nocookie.net/gtawiki/images/3/3b/Stryder-GTAO-front.png/revision/latest?cb=20200414194041', 'gta5cardealer'),
(316, 'oracle', 'Oracle', 'Ubermacht', 'sedans', 100, 25000, 'https://static.wikia.nocookie.net/gtawiki/images/a/a4/Oracle-GTAV-front.png/revision/latest?cb=20160406180530', 'gta5cardealer'),
(317, 'ardent', 'Ardent', 'Ocelot', 'classics', 100, 100000, 'https://static.wikia.nocookie.net/gtawiki/images/8/80/Ardent-GTAO-front.png/revision/latest?cb=20170614143447', 'gta5cardealer'),
(318, 'fagaloa', 'Fagaloa', 'Vulcar', 'classics', 100, 35000, 'https://static.wikia.nocookie.net/gtawiki/images/1/14/Fagaloa-GTAO-front.png/revision/latest?cb=20180325162804', 'gta5cardealer'),
(319, 'stafford', 'Stafford', 'Enus', 'sedans', 100, 45000, 'https://static.wikia.nocookie.net/gtawiki/images/3/38/Stafford-GTAO-front.png/revision/latest?cb=20190126213908', 'gta5cardealer'),
(320, 'zombieb', 'Zombie Chopper', 'zombieb', 'motorcycles', 100, 17000, 'https://static.wikia.nocookie.net/gtawiki/images/7/70/ZombieChopper-GTAO-front.png/revision/latest?cb=20161004181804', 'gta5cardealer'),
(321, 'omnis', 'Omnis', 'Wow', 'sports', 100, 120000, 'https://static.wikia.nocookie.net/gtawiki/images/e/e7/Omnis-GTAO-front.png/revision/latest?cb=20160712122549', 'gta5cardealer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `server-cars`
--
ALTER TABLE `server-cars`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `server-cars`
--
ALTER TABLE `server-cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
