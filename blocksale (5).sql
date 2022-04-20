-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 20, 2022 at 02:34 AM
-- Server version: 5.7.30
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blocksale`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `updated_at`, `created_at`) VALUES
(1, 'admin', '$2y$10$drtc8/RCNronPROYztCFJOkt/A0cDqYrMs0LV.ImX3GlfqoKK/FEq', '2022-04-06 09:17:18', '2022-04-06 09:17:18'),
(2, 'mevivu', '$2y$10$x1zShqnj07Y.pKVglYylUe48/qo9BT4JatUa3MH/G/30Pc8DHK5DS', '2022-04-09 23:36:46', '2022-04-09 23:36:46'),
(3, 'mevivu', '$2y$10$AWgjhIdBoofpd9Ng4UFy6uAidmp6B.O3ygweAGk4MiGpZcOdRjHoG', '2022-04-09 23:36:46', '2022-04-09 23:36:46'),
(4, 'hello', '$2y$10$RTnI8E4YrYsHlo5jLbcijOrAfsHhus0QNtpIgd6HHxUwQ0Wf7UOiq', '2022-04-09 23:42:26', '2022-04-09 23:42:26');

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`id`, `admin_id`, `fullname`, `email`, `phone`, `birthday`, `gender`, `address`, `updated_at`, `created_at`) VALUES
(1, 1, 'Kyosima', NULL, NULL, NULL, NULL, NULL, '2022-04-10 06:36:14', '2022-04-10 06:35:59'),
(2, 2, 'Bùi Thế Vũ', 'btvu282@gmail.com', '0335828494', NULL, 1, '998/52/15 Quang Trung, Gò vấp', '2022-04-09 23:36:46', '2022-04-09 23:36:46'),
(3, 3, 'Bùi Thế Vũ', 'btvu282@gmail.com', '0335828494', NULL, 1, '998/52/15 Quang Trung, Gò vấp', '2022-04-09 23:36:46', '2022-04-09 23:36:46'),
(4, 4, 'Kira', 'btvu282@gmail.com', '0335828494', NULL, 1, '998/52/15 Quang Trung, Gò vấp', '2022-04-09 23:42:26', '2022-04-09 23:42:26');

-- --------------------------------------------------------

--
-- Table structure for table `buildings`
--

CREATE TABLE `buildings` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number_floor` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `owner_phone` varchar(255) NOT NULL,
  `owner_email` varchar(255) NOT NULL,
  `note` int(11) DEFAULT NULL,
  `introduce` text,
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `buildings`
--

INSERT INTO `buildings` (`id`, `code`, `name`, `number_floor`, `address`, `owner`, `owner_phone`, `owner_email`, `note`, `introduce`, `sort`, `updated_at`, `created_at`) VALUES
(1, 'HuTHzY', 'Nguyễn Chính Hưng', 10, '28, đường số 27, phường Tân Quy', '123', '0338927456', 'nc.hung0806@gmail.com', NULL, NULL, 0, '2022-04-15 10:34:47', '2022-04-07 02:32:39'),
(2, 'HuTHzY', 'Nguyễn Chính Hưng', 9, '28, đường số 27, phường Tân Quy', '123', '0338927456', 'nc.hung0806@gmail.com', NULL, NULL, 0, '2022-04-15 10:34:51', '2022-04-07 02:32:49'),
(5, 'agFxFX', 'Kim Anh Tuấn Trần', 11, '998/42/15 quang trung, phường 8, Gò Vấp', 'Hưng', '0934177422', 'anhtuan199590@gmail.com', NULL, NULL, 0, '2022-04-15 10:34:56', '2022-04-07 21:00:46'),
(7, 'VinMart', 'VinMart', 5, 'Quang trung', 'Nguyễn Văn A', '0342909557', 'trantruong1797@gmail.com', NULL, NULL, 0, '2022-04-15 02:39:49', '2022-04-15 02:39:49'),
(8, 'Vincom', 'VinCom', 6, '440/45 Thống nhất', 'Nguyễn Văn A', '0342909557', 'ittranvantruong@gmail.com', NULL, NULL, 0, '2022-04-15 02:40:32', '2022-04-15 02:40:32'),
(11, 'DV000010', 'Aeon', 6, '954, quang trung', 'Nguyễn Văn A', '0342909557', 'trantruong1797@gmail.com', NULL, NULL, 0, '2022-04-15 02:41:58', '2022-04-15 02:41:58'),
(12, 'pppp', 'Peal plaza', 5, '998/42/15 quang trung, phường 8, Gò Vấp', 'Hưng', '0934177422', 'anhtuan199590@gmail.com', NULL, NULL, 0, '2022-04-19 01:23:04', '2022-04-19 01:23:04'),
(13, 'et', 'E-town', 10, '144/18, âu cơ, tân bình, hồ chí minh', 'Trường', '1638927456', 'nc.hung0806@gmail.com', NULL, NULL, 0, '2022-04-19 01:25:36', '2022-04-19 01:25:36');

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `id` int(11) NOT NULL,
  `id_room` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `time_start` date NOT NULL,
  `time_end` date NOT NULL,
  `time_charge` date NOT NULL,
  `is_earnest` int(11) NOT NULL DEFAULT '0',
  `amount_is_earnest` double DEFAULT NULL,
  `note` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contract_customer`
--

CREATE TABLE `contract_customer` (
  `id` int(11) NOT NULL,
  `id_contract` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `is_representative` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contract_info`
--

CREATE TABLE `contract_info` (
  `id` int(11) NOT NULL,
  `id_contract` int(11) NOT NULL,
  `amount_earnest` int(11) NOT NULL,
  `price_room` int(11) NOT NULL,
  `price_electric` double NOT NULL DEFAULT '0',
  `price_water` double NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `job` varchar(255) NOT NULL,
  `identification_number` varchar(255) NOT NULL,
  `identification_place` varchar(255) NOT NULL,
  `identification_time` date NOT NULL,
  `gender` int(11) NOT NULL,
  `birthday` date NOT NULL,
  `country` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `home_town` varchar(255) DEFAULT NULL,
  `bank_number` varchar(255) DEFAULT NULL,
  `bank_account` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `note` text,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `floors`
--

CREATE TABLE `floors` (
  `id` int(11) NOT NULL,
  `building_id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `floors`
--

INSERT INTO `floors` (`id`, `building_id`, `code`, `name`, `updated_at`, `created_at`) VALUES
(1, 11, 'fsfafsaf', 'Tầng 1', '2022-04-15 10:33:15', '2022-04-15 05:14:31'),
(2, 11, 'fsfafsaf', 'Tầng 2', '2022-04-15 10:33:19', '2022-04-15 05:14:52'),
(3, 8, 't1', 'Tầng 1', '2022-04-15 10:33:19', '2022-04-15 05:14:52'),
(4, 13, 'TA1', 'Tầng 1', '2022-04-19 01:25:36', '2022-04-19 01:25:36'),
(5, 13, 'TA2', 'Tầng 2', '2022-04-19 01:25:36', '2022-04-19 01:25:36'),
(6, 13, 'TA3', 'Tầng 3', '2022-04-19 01:25:36', '2022-04-19 01:25:36'),
(7, 13, 'TA4', 'Tầng 4', '2022-04-19 01:25:36', '2022-04-19 01:25:36'),
(8, 13, 'TA5', 'Tầng 5', '2022-04-19 01:25:36', '2022-04-19 01:25:36'),
(9, 13, 'TA6', 'Tầng 6', '2022-04-19 01:25:36', '2022-04-19 01:25:36'),
(10, 13, 'TA71', 'Tầng 71', '2022-04-19 01:26:02', '2022-04-19 01:25:36'),
(11, 13, 'TA8', 'Tầng 8', '2022-04-19 01:25:36', '2022-04-19 01:25:36'),
(12, 13, 'TA9', 'Tầng 9', '2022-04-19 01:25:36', '2022-04-19 01:25:36'),
(13, 13, 'TA10', 'Tầng 10', '2022-04-19 01:25:36', '2022-04-19 01:25:36');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `building_id` int(11) NOT NULL,
  `floor_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `price` double NOT NULL,
  `purpose` int(11) DEFAULT NULL,
  `acreage` int(11) NOT NULL,
  `note` text,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `code`, `name`, `building_id`, `floor_id`, `type`, `price`, `purpose`, `acreage`, `note`, `status`, `updated_at`, `created_at`) VALUES
(1, 'dsfdsf', 'P.0.1', 11, 1, 1, 0, 500000, 60, 'note', 0, '2022-04-15 10:33:37', '2022-04-15 05:15:14'),
(2, 'dsfdsf', 'P.0.2', 11, 2, 1, 0, 500000, 60, 'note', 2, '2022-04-15 10:33:41', '2022-04-15 05:15:19'),
(3, 'dsfdsf', 'P.0.2', 11, 2, 1, 0, 500000, 60, 'note', 0, '2022-04-15 10:33:44', '2022-04-15 05:15:19'),
(4, 'dsfdsf', 'P.0.2', 11, 2, 1, 0, 500000, 60, 'note', 3, '2022-04-15 10:33:49', '2022-04-15 05:15:19'),
(5, 'p1', 'P.0.1', 8, 3, 1, 0, 1000000, 60, 'note', 2, '2022-04-15 10:37:42', '2022-04-15 05:15:19'),
(6, 'HuTHzY', 'P9', 11, 1, 1, 10000000, NULL, 123, '123123123', 0, '2022-04-18 09:35:13', '2022-04-18 02:02:48'),
(7, 'HuTHzY', 'P.99', 11, 1, 1, 10000000, NULL, 10, NULL, 0, '2022-04-18 02:30:58', '2022-04-18 02:30:58'),
(8, '123123', 'P11', 11, 1, 1, 1231, NULL, 123, NULL, 2, '2022-04-19 03:31:29', '2022-04-18 02:33:26'),
(9, '123', 'P12', 11, 1, 1, 123, NULL, 1123, NULL, 0, '2022-04-18 02:34:01', '2022-04-18 02:34:01'),
(10, '123', 'p13', 11, 1, 1, 13, NULL, 123, NULL, 0, '2022-04-18 02:35:27', '2022-04-18 02:35:27'),
(11, 'HuTHzY', 'p.03', 11, 2, 1, 123, NULL, 123, NULL, 0, '2022-04-18 02:35:54', '2022-04-18 02:35:54'),
(12, 'agFxFX', 'P1011', 11, 2, 2, 123, NULL, 123, NULL, 0, '2022-04-18 22:29:10', '2022-04-18 22:29:10'),
(13, 'thang3123', 'p123', 11, 1, 2, 123, NULL, 123, NULL, 0, '2022-04-19 01:21:06', '2022-04-19 01:21:06'),
(14, 'CH-123', 'P1', 13, 4, 1, 10000000, NULL, 50, NULL, 0, '2022-04-19 01:27:08', '2022-04-19 01:27:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contract_customer`
--
ALTER TABLE `contract_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contract_info`
--
ALTER TABLE `contract_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `floors`
--
ALTER TABLE `floors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `building_id` (`building_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `building_id` (`building_id`),
  ADD KEY `floor_id` (`floor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `buildings`
--
ALTER TABLE `buildings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contract`
--
ALTER TABLE `contract`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contract_customer`
--
ALTER TABLE `contract_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contract_info`
--
ALTER TABLE `contract_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `floors`
--
ALTER TABLE `floors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `floors`
--
ALTER TABLE `floors`
  ADD CONSTRAINT `floors_ibfk_1` FOREIGN KEY (`building_id`) REFERENCES `buildings` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`building_id`) REFERENCES `buildings` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `rooms_ibfk_2` FOREIGN KEY (`floor_id`) REFERENCES `floors` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
