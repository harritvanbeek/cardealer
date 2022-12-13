CREATE TABLE `vehicle_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `version` char(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `vehicles_dealerships` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `vehicles_sell` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(50) NOT NULL,
  `vehicle` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `sellby` varchar(50) NOT NULL,
  `date` VARCHAR(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `vehicles_dealerships` (`id`, `name`, `label`) VALUES
(1, 'gta5cardealer', 'Gta 5 Car Dealer'),
(2, 'gta5boatsdealer', 'Gta 5 Boats Dealer'),
(3, 'gta5helicopterdealer', 'Gta 5 Helicopter Dealer'),
(4, 'gta5motorsdealer', 'Gta 5 Motors Dealer'),
(5, 'premium', 'Premium');


INSERT INTO `vehicle_categories` (`id`, `name`, `label`, `img`, `version`) VALUES
(1, 'compacts', 'Compacts', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2017-toyota-prius-prime-advanced-201-1599761815.jpg', 'gta5cardealer'),
(2, 'sedans', 'Sedans', 'https://vehikel.com/wp-content/uploads/2020/06/De-10-meest-exclusieve-sedans-van-2020.jpg', 'gta5cardealer'),
(3, 'suvs', 'SUVs', 'https://images.ctfassets.net/tmk3oi6u1mmf/3VunKrAKWrAKO6tOMCA8xz/aa2a8fcc37c98ea59ed452d171f4c469/ATX_M3450_F1.jpg', 'gta5cardealer'),
(4, 'coupes', 'Coupes', 'https://www.cnet.com/a/img/3kHYqvLD-7crTw2PIr_uME_trAs=/2019/08/20/d774d1cc-b665-4f86-a50a-e336b0120e04/2020-toyota-supra-1.jpg', 'gta5cardealer'),
(5, 'muscle', 'Muscle', NULL, 'gta5cardealer'),
(6, 'sports', 'Sports', NULL, 'gta5cardealer'),
(7, 'super', 'Super', NULL, 'gta5cardealer'),
(8, 'motorcycles', 'Motorcycles', NULL, 'gta5cardealer'),
(9, 'offroad', 'Off-Road', NULL, 'gta5cardealer'),
(10, 'industrial', 'Industrial', NULL, 'gta5cardealer'),
(11, 'utility', 'Utility', NULL, NULL),
(12, 'vans', 'Vans', NULL, 'gta5cardealer'),
(13, 'cycles', 'Cycles', NULL, NULL),
(14, 'boats', 'Boats', NULL, NULL),
(15, 'helicopters', 'Helicopters', NULL, NULL),
(16, 'planes', 'Planes', NULL, NULL),
(17, 'service', 'Service', NULL, NULL),
(18, 'emergency', 'Emergency', NULL, NULL),
(19, 'military', 'Military', NULL, NULL),
(20, 'commercial', 'Commercial', NULL, NULL),
(21, 'trains', 'Trains', NULL, NULL),
(22, 'tuning', 'Tuning', '', 'gta5cardealer');
(23, 'classics', 'Classics', '', 'gta5cardealer');

ALTER TABLE `server-cars`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `vehicles_dealerships`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `server-cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

ALTER TABLE `vehicles_dealerships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `vehicle_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

ALTER TABLE `vehicles_sell`
  ADD PRIMARY KEY (`id`);
  
ALTER TABLE `vehicles_sell`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `server-cars` 
  ADD `assets` varchar(1024) DEFAULT NULL;
