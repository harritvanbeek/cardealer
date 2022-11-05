CREATE TABLE `vehicle_brands` (
  `uuid` char(63) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `vehicle_brands`
  ADD PRIMARY KEY (`uuid`);
COMMIT;
