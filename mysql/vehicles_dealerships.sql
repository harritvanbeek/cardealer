-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2022 at 12:24 AM
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
-- Table structure for table `vehicles_dealerships`
--

CREATE TABLE `vehicles_dealerships` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicles_dealerships`
--

INSERT INTO `vehicles_dealerships` (`id`, `name`, `label`) VALUES
(1, 'gta5cardealer', 'Gta 5 Car Dealer'),
(2, 'gta5boatsdealer', 'Gta 5 Boats Dealer'),
(3, 'gta5helicopterdealer', 'Gta 5 Helicopter Dealer'),
(4, 'gta5motorsdealer', 'Gta 5 Motors Dealer'),
(5, 'premium', 'Premium');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vehicles_dealerships`
--
ALTER TABLE `vehicles_dealerships`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vehicles_dealerships`
--
ALTER TABLE `vehicles_dealerships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
