-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2023 at 06:53 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(15, 'Automotive Supplies'),
(12, 'Electrical Supplies'),
(11, 'Paint and Finishing Supplies'),
(10, 'Plumbing Supplies'),
(9, 'Tool Supplies');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) UNSIGNED NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `file_name`, `file_type`) VALUES
(2, 'Wrench.png', 'image/png'),
(3, 'Tape Measure.png', 'image/png'),
(4, 'Star_Screwdriver.png', 'image/png'),
(5, 'Pliers.png', 'image/png'),
(6, 'Hammer.png', 'image/png'),
(7, 'Flat_screw.png', 'image/png'),
(8, 'Toilet Plunger.png', 'image/png'),
(9, 'PVC Pipes and Fittings.png', 'image/png'),
(10, 'Pipe Wrenches.jpg', 'image/jpeg'),
(11, 'Pipe Cutters.png', 'image/png'),
(12, 'Copper Pipes and Fittings.png', 'image/png'),
(13, 'Sandpaper.jpg', 'image/jpeg'),
(14, 'Primer.png', 'image/png'),
(15, 'Paint.png', 'image/png'),
(16, 'Paint Trays.jpg', 'image/jpeg'),
(17, 'Brush.jpg', 'image/jpeg'),
(18, 'Light Switches.jpg', 'image/jpeg'),
(19, 'Junction Box.png', 'image/png'),
(20, 'Electrical Tape.jpg', 'image/jpeg'),
(21, 'Electrical Outlet.jpg', 'image/jpeg'),
(22, 'Circuit Breaker.png', 'image/png'),
(23, 'Tire Pressure Gauge.png', 'image/png'),
(24, 'SAE Wrench.png', 'image/png'),
(25, 'Oil Filter Wrench.png', 'image/png'),
(26, 'Jumper Cable.png', 'image/jpeg'),
(27, 'Hydraulics Jack Crane Elevator.png', 'image/png');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `buy_price` decimal(25,2) DEFAULT NULL,
  `sale_price` decimal(25,2) NOT NULL,
  `categorie_id` int(11) UNSIGNED NOT NULL,
  `media_id` int(11) DEFAULT 0,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `quantity`, `buy_price`, `sale_price`, `categorie_id`, `media_id`, `date`) VALUES
(14, 'Wrench', '50', 95.00, 159.00, 9, 2, '2023-08-30 18:21:32'),
(15, 'Tape Measure', '50', 220.00, 439.00, 9, 3, '2023-08-30 18:22:15'),
(16, 'Star Screwdriver', '50', 105.00, 179.00, 9, 4, '2023-08-30 18:22:40'),
(17, 'Pliers', '50', 175.00, 289.00, 9, 5, '2023-08-30 18:23:04'),
(18, 'Hammer', '50', 300.00, 499.00, 9, 6, '2023-08-30 18:23:18'),
(19, 'Flat Screwdriver', '50', 105.00, 179.00, 9, 7, '2023-08-30 18:23:44'),
(20, 'Toilet Plunger', '50', 150.00, 249.00, 10, 8, '2023-08-30 18:24:36'),
(21, 'PVC Pipes and Fittings', '100', 210.00, 350.00, 10, 9, '2023-08-30 18:25:00'),
(22, 'Pipe Wrenches', '50', 190.00, 315.00, 10, 10, '2023-08-30 18:25:17'),
(23, 'Pipe Cutters', '50', 540.00, 899.00, 10, 11, '2023-08-30 18:26:05'),
(24, 'Copper Pipes and Fittings', '100', 530.00, 880.00, 10, 12, '2023-08-30 18:26:45'),
(25, 'Sandpaper', '50', 6.00, 15.00, 11, 13, '2023-08-30 18:27:55'),
(26, 'Primer Paint', '50', 111.00, 278.00, 11, 14, '2023-08-30 18:28:42'),
(27, 'Paint', '50', 137.00, 228.00, 11, 15, '2023-08-30 18:29:06'),
(28, 'Paint Trays', '50', 23.00, 59.00, 11, 16, '2023-08-30 18:29:28'),
(29, 'Brush', '50', 10.00, 25.00, 11, 17, '2023-08-30 18:29:53'),
(30, 'Light Switches', '50', 71.00, 179.00, 12, 18, '2023-08-30 18:42:04'),
(31, 'Junction Box', '50', 712.00, 1780.00, 12, 19, '2023-08-30 18:43:27'),
(32, 'Electrical Tape', '50', 10.00, 26.00, 12, 20, '2023-08-30 18:43:59'),
(33, 'Electrical Outlet', '50', 66.00, 164.00, 12, 21, '2023-08-30 18:44:27'),
(34, 'Circuit Breaker', '50', 104.00, 259.00, 12, 22, '2023-08-30 18:44:53'),
(35, 'Tire Pressure Gauge', '50', 35.00, 88.00, 15, 23, '2023-08-30 18:45:59'),
(36, 'SAE Wrench', '50', 248.00, 619.00, 15, 24, '2023-08-30 18:46:31'),
(37, 'Oil Filter Wrench', '50', 66.00, 165.00, 15, 25, '2023-08-30 18:46:55'),
(38, 'Jumper Cable', '50', 160.00, 400.00, 15, 26, '2023-08-30 18:47:31'),
(39, 'Hydraulics Jack Crane Elevator', '50', 2206.00, 3676.00, 15, 27, '2023-08-30 18:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(25,2) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_level` int(11) NOT NULL,
  `image` varchar(255) DEFAULT 'no_image.jpg',
  `status` int(1) NOT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `user_level`, `image`, `status`, `last_login`) VALUES
(1, 'Jan Wayne Sepe', 'Jan', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1, 'no_image.png', 1, '2023-08-30 17:43:28'),
(4, 'Rex Baldos', 'Rex', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1, 'no_image.png', 1, NULL),
(5, 'Bostjan Zymmer Rogero', 'Bostjan', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1, 'no_image.png', 1, '2021-04-04 19:54:29');

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(150) NOT NULL,
  `group_level` int(11) NOT NULL,
  `group_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `group_name`, `group_level`, `group_status`) VALUES
(1, 'Admin', 1, 1),
(3, 'User', 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `categorie_id` (`categorie_id`),
  ADD KEY `media_id` (`media_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_level` (`user_level`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_level` (`group_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_products` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `SK` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_user` FOREIGN KEY (`user_level`) REFERENCES `user_groups` (`group_level`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
