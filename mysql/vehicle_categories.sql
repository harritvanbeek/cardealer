-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2022 at 12:22 AM
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
-- Table structure for table `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `version` char(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`id`, `name`, `label`, `img`, `version`) VALUES
(1, 'compacts', 'Compacts', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2017-toyota-prius-prime-advanced-201-1599761815.jpg', 'gta5cardealer'),
(2, 'sedans', 'Sedans', 'https://vehikel.com/wp-content/uploads/2020/06/De-10-meest-exclusieve-sedans-van-2020.jpg', 'gta5cardealer'),
(3, 'suvs', 'SUVs', 'https://images.ctfassets.net/tmk3oi6u1mmf/3VunKrAKWrAKO6tOMCA8xz/aa2a8fcc37c98ea59ed452d171f4c469/ATX_M3450_F1.jpg', 'gta5cardealer'),
(4, 'coupes', 'Coupes', 'https://www.gta5rides.com/vehicleImages/cropped/zion%20cabrio.jpg.jpg', 'gta5cardealer'),
(5, 'muscle', 'Muscle', 'https://staticg.sportskeeda.com/editor/2022/04/99a96-16495303236174-1920.jpg', 'gta5cardealer'),
(6, 'sports', 'Sports', 'https://www.gtabase.com/images/gta-5/vehicles/sports/main/itali-rsx.jpg', 'gta5cardealer'),
(7, 'super', 'Super', 'https://img.gta5-mods.com/q95/images/super-gt-from-gtasa-add-on-fivem/745d1f-6.png', 'gta5cardealer'),
(8, 'motorcycles', 'Motorcycles', 'https://www.gtabase.com/igallery/5701-5800/GTA5_Bati801rr_Story-5709-360.jpg', 'gta5cardealer'),
(9, 'offroad', 'Off-Road', 'https://www.gta5rides.com/vehicleImages/cropped/kamacho.jpg.jpg', 'gta5cardealer'),
(10, 'industrial', 'Industrial', 'https://www.gtabase.com/images/gta-5/vehicles/industrial/main/tipper-2.jpg', NULL),
(11, 'utility', 'Utility', 'https://www.gtabase.com/images/gta-5/vehicles/utility/main/utility-truck-contender.jpg', NULL),
(12, 'vans', 'Vans', 'https://www.gta5rides.com/vehicleImages/cropped/GangBurrito2-GTAO-front.png.jpg', 'gta5cardealer'),
(13, 'cycles', 'Cycles', 'https://static.wikia.nocookie.net/gtawiki/images/3/3b/WhippetRaceBike-GTAV-front.png/revision/latest?cb=20161018181058', NULL),
(14, 'boats', 'Boats', NULL, NULL),
(15, 'helicopters', 'Helicopters', NULL, NULL),
(16, 'planes', 'Planes', NULL, NULL),
(17, 'service', 'Service', NULL, NULL),
(18, 'emergency', 'Emergency', NULL, NULL),
(19, 'military', 'Military', NULL, NULL),
(20, 'commercial', 'Commercial', NULL, NULL),
(21, 'trains', 'Trains', NULL, NULL),
(22, 'tuning', 'Tuning', 'https://media-rockstargames-com.akamaized.net/tina-uploads/tina-modules/3841/87a380dd4120beff3770f1b75139ab03c3842634.jpg', 'gta5cardealer'),
(23, 'classics', 'Classics', 'https://static.wikia.nocookie.net/gtawiki/images/2/2f/Tornado-GTAV-front.png/revision/latest/scale-to-width-down/1200?cb=20180331183746', 'gta5cardealer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
