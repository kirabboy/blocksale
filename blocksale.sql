-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 09, 2022 at 05:10 AM
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
(1, 'admin', '$2y$10$drtc8/RCNronPROYztCFJOkt/A0cDqYrMs0LV.ImX3GlfqoKK/FEq', '2022-04-06 09:17:18', '2022-04-06 09:17:18');

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
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `buildings`
--

INSERT INTO `buildings` (`id`, `code`, `name`, `number_floor`, `address`, `owner`, `owner_phone`, `owner_email`, `note`, `introduce`, `updated_at`, `created_at`) VALUES
(1, 'HuTHzY', 'Nguyễn Chính Hưng', 123, '28, đường số 27, phường Tân Quy', '123', '0338927456', 'nc.hung0806@gmail.com', NULL, NULL, '2022-04-07 02:32:39', '2022-04-07 02:32:39'),
(2, 'HuTHzY', 'Nguyễn Chính Hưng', 123, '28, đường số 27, phường Tân Quy', '123', '0338927456', 'nc.hung0806@gmail.com', NULL, NULL, '2022-04-07 02:32:49', '2022-04-07 02:32:49'),
(3, '12311231as', 'Nguyễn Chính Hưng', 234423, '28, đường số 27, phường Tân Quy', '234', '0338927456', 'nc.hung0806@gmail.com', NULL, NULL, '2022-04-07 02:35:26', '2022-04-07 02:35:26'),
(4, 'HuTHzY', 'Nguyễn Chính Hưng', 123123, '28, đường số 27, phường Tân Quy', '123', '0338927456', 'nc.hung0806@gmail.com', NULL, NULL, '2022-04-07 20:31:45', '2022-04-07 20:31:45'),
(5, 'agFxFX', 'Kim Anh Tuấn Trần', 12312, '998/42/15 quang trung, phường 8, Gò Vấp', 'Hưng', '0934177422', 'anhtuan199590@gmail.com', NULL, NULL, '2022-04-07 21:00:46', '2022-04-07 21:00:46');

-- --------------------------------------------------------

--
-- Table structure for table `floor`
--

CREATE TABLE `floor` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_floor` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `purpose` int(11) NOT NULL,
  `acreage` int(11) NOT NULL,
  `note` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buildings`
--
ALTER TABLE `buildings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
