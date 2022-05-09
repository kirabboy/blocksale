-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 06, 2022 at 10:23 AM
-- Server version: 5.7.30
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blocksale_sub`
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
(3, 'mevivu1', '$2y$10$AWgjhIdBoofpd9Ng4UFy6uAidmp6B.O3ygweAGk4MiGpZcOdRjHoG', '2022-04-19 03:21:00', '2022-04-09 23:36:46'),
(4, 'kira', '$2y$10$RTnI8E4YrYsHlo5jLbcijOrAfsHhus0QNtpIgd6HHxUwQ0Wf7UOiq', '2022-04-19 03:26:23', '2022-04-09 23:42:26'),
(5, 'truong', '$2y$10$nwBLIcNKaIma7HltEy3X1et0w.7UFXObNnHsuFyKJVaZZgPhhil6y', '2022-04-20 20:17:19', '2022-04-19 02:17:23'),
(6, 'bingo', '$2y$10$mfKUvjTtRWdqjesOuHQvduexPClaZDZRIESveW4czP3x8pgJm0mLO', '2022-04-19 03:26:51', '2022-04-19 03:26:51'),
(7, 'admin2', '$2y$10$ur6DEXYVzdBWA7XqJU2wsOr0N0ADzhC0o9SI5crmJ4NY9fcMqskyC', '2022-04-23 02:51:52', '2022-04-23 02:51:52');

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
  `gender` int(11) DEFAULT '1',
  `address` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`id`, `admin_id`, `fullname`, `email`, `phone`, `birthday`, `gender`, `address`, `updated_at`, `created_at`) VALUES
(1, 1, 'Kyosima', NULL, NULL, '1970-01-01', 1, NULL, '2022-04-23 02:42:38', '2022-04-10 06:35:59'),
(3, 3, 'Bùi Thế Vũ', 'btvu282@gmail.com', '0335828494', '1970-01-01', 1, '998/52/15 Quang Trung, Gò vấp', '2022-04-19 03:21:01', '2022-04-09 23:36:46'),
(4, 4, 'Kira', 'btvu282@gmail.com', '0335828494', '1970-01-01', 1, '998/52/15 Quang Trung, Gò vấp', '2022-04-19 03:26:23', '2022-04-09 23:42:26'),
(5, 5, 'Trần Văn Trường', 'trantruong1797@gmail.com', '0342909557', '1997-07-01', 1, '954, quang trung', '2022-04-20 20:17:51', '2022-04-19 02:17:23'),
(6, 6, 'Bí ngô', NULL, NULL, NULL, 1, NULL, '2022-04-19 03:26:51', '2022-04-19 03:26:51'),
(7, 7, 'Nguyễn Chính Hưng', 'nc.hung0806@gmail.com', '0338927456', '2022-04-01', 1, '28, đường số 27, phường Tân Quy', '2022-04-23 02:51:52', '2022-04-23 02:51:52');

-- --------------------------------------------------------

--
-- Table structure for table `buildings`
--

CREATE TABLE `buildings` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `number_floor` int(11) NOT NULL,
  `price_room` double NOT NULL,
  `type_water` int(11) NOT NULL DEFAULT '1',
  `address` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `owner_phone` varchar(255) NOT NULL,
  `owner_email` varchar(255) NOT NULL,
  `note` text CHARACTER SET utf8mb4,
  `introduce` text CHARACTER SET utf8mb4,
  `messenger` varchar(255) DEFAULT NULL,
  `google_map` longtext,
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `buildings`
--

INSERT INTO `buildings` (`id`, `admin_id`, `code`, `name`, `avatar`, `slug`, `number_floor`, `price_room`, `type_water`, `address`, `owner`, `owner_phone`, `owner_email`, `note`, `introduce`, `messenger`, `google_map`, `sort`, `updated_at`, `created_at`) VALUES
(1, 1, 'peal', 'Peal plaza', '/public/uploads/files/tttmai_jnqb.jpg', 'peal-plaza', 10, 5000000, 1, '28, đường số 27, phường Tân Quy', 'Nguyễn Chính Hưng', '0338927456', 'nc.hung0806@gmail.com', NULL, NULL, NULL, NULL, 0, '2022-05-06 04:16:50', '2022-04-23 01:29:25'),
(2, 1, 'etown', 'Etown', '/public/uploads/files/tttmai_jnqb.jpg', 'etown', 15, 5000000, 1, 'Quang trung', 'Bùi Thế Vũ', '0978172312', 'btv@gmail.com', 'Tòa nhà', '<p><span style=\"color:#e74c3c\">T&ograve;a nh&agrave; to lắm</span></p>', NULL, NULL, 0, '2022-05-06 04:16:50', '2022-04-23 02:29:18'),
(3, 1, 'Vincom', 'Vincom quận 9', '/public/uploads/files/Landmark81banner.jpeg', 'vincom-quan-9', 10, 5000000, 1, '998/42/15 quang trung, phường 8, Gò Vấp', 'Nguyễn Chính Hưng', '0934177422', 'anhtuan199590@gmail.com', NULL, NULL, NULL, NULL, 0, '2022-05-06 04:16:50', '2022-04-23 02:46:37'),
(4, 1, 'Vinhome', 'Vinhome Smart City', '/public/image/default-image.png', 'vinhome-smart-city', 20, 5000000, 1, 'Đường 19/5, P. Văn Quán, Hà Đông, Hà Nội, Việt Nam', 'Vương Duy Định', '0877726453', 'nguyenvantoan@gmail.com', NULL, NULL, NULL, NULL, 0, '2022-05-06 04:16:50', '2022-04-23 06:55:21'),
(5, 1, 'Vinhome Ocean Park', 'Vinhome Ocean Park', '/public/image/default-image.png', 'vinhome-ocean-park', 30, 5000000, 1, 'Gia Lâm', 'Vương Duy Định', '0961157432', 'vuongduydinh999@gmail.com', NULL, NULL, NULL, NULL, 0, '2022-05-06 04:16:50', '2022-04-23 07:56:47'),
(6, 1, 'vcctrpark', 'Vincom Central Park', '/public/uploads/files/DJI_0030-fixed2-mini-20190727T100030844048.jpeg', 'vincom-central-park', 15, 2500000, 2, '998/42/15 quang trung, phường 8, Gò Vấp', 'Nguyễn Chính Hưng', '0934177422', 'anhtuan199590@gmail.com', NULL, NULL, NULL, NULL, 0, '2022-05-05 21:43:32', '2022-05-05 21:21:35');

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `id` int(11) NOT NULL,
  `id_room` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `time_start` date NOT NULL,
  `time_end` date NOT NULL,
  `time_charge` date NOT NULL,
  `is_earnest` int(11) DEFAULT '0',
  `note` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contract`
--

INSERT INTO `contract` (`id`, `id_room`, `code`, `name`, `type`, `time_start`, `time_end`, `time_charge`, `is_earnest`, `note`, `status`, `updated_at`, `created_at`) VALUES
(1, 6, 'HuTHzY', 'CÔNG TY TNHH MEVIVU', 1, '2022-05-06', '2022-05-06', '2022-05-06', 1, NULL, 1, '2022-05-05 20:37:22', '2022-05-04 23:35:27'),
(2, 8, 'HuTHzY', 'CÔNG TY TNHH MEVIVU', 1, '2022-05-06', '2022-05-06', '2022-05-06', 1, NULL, 1, '2022-05-05 20:36:48', '2022-05-05 20:36:48'),
(3, 9, 'hd001', 'Hợp đồng thuê 001', 1, '2022-05-06', '2022-05-06', '2022-05-06', 0, NULL, 1, '2022-05-05 22:23:16', '2022-05-05 22:23:16');

-- --------------------------------------------------------

--
-- Table structure for table `contract_customer`
--

CREATE TABLE `contract_customer` (
  `id` int(11) NOT NULL,
  `id_contract` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `is_representative` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contract_customer`
--

INSERT INTO `contract_customer` (`id`, `id_contract`, `id_customer`, `is_representative`, `note`, `updated_at`, `created_at`) VALUES
(56, 2, 6, 1, 'ở dơ', '2022-05-05 20:36:48', '2022-05-05 20:36:48'),
(57, 2, 5, 0, 'sạch sẽ', '2022-05-05 20:36:48', '2022-05-05 20:36:48'),
(67, 1, 6, 1, 'bồ ngu vl', '2022-05-05 20:38:21', '2022-05-05 20:38:21'),
(68, 1, 5, 0, NULL, '2022-05-05 20:38:21', '2022-05-05 20:38:21'),
(69, 3, 6, 1, '', '2022-05-05 22:23:16', '2022-05-05 22:23:16');

-- --------------------------------------------------------

--
-- Table structure for table `contract_earnest`
--

CREATE TABLE `contract_earnest` (
  `id` int(11) NOT NULL,
  `id_room` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `price` double NOT NULL,
  `time_start` date NOT NULL,
  `time_end` date NOT NULL,
  `note` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contract_info`
--

CREATE TABLE `contract_info` (
  `id` int(11) NOT NULL,
  `id_contract` int(11) DEFAULT NULL,
  `amount_earnest` int(11) DEFAULT '0',
  `price_room` int(11) NOT NULL,
  `price_electric` double NOT NULL DEFAULT '0',
  `price_water` double NOT NULL DEFAULT '0',
  `type_water` int(11) NOT NULL DEFAULT '1',
  `price_service` double NOT NULL DEFAULT '0',
  `number_room` int(11) DEFAULT '1',
  `number_electric` int(11) DEFAULT '1',
  `number_water` int(11) DEFAULT '1',
  `number_service` int(11) DEFAULT '1',
  `note_room` varchar(255) DEFAULT NULL,
  `note_electric` varchar(255) DEFAULT NULL,
  `note_water` varchar(255) DEFAULT NULL,
  `note_service` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contract_info`
--

INSERT INTO `contract_info` (`id`, `id_contract`, `amount_earnest`, `price_room`, `price_electric`, `price_water`, `type_water`, `price_service`, `number_room`, `number_electric`, `number_water`, `number_service`, `note_room`, `note_electric`, `note_water`, `note_service`, `updated_at`, `created_at`) VALUES
(1, 1, 0, 10000000, 3500, 25000, 1, 100000, 1, 1, 1, 1, 'Phí chung', 'cọc', NULL, 'giữ xe', '2022-05-05 20:37:22', '2022-05-04 23:35:27'),
(2, 2, 150000, 10000000, 3500, 25000, 1, 100000, 1, 1, 1, 1, 'Phí chung', 'cọc', NULL, 'giữ xe', '2022-05-05 20:36:48', '2022-05-05 20:36:48'),
(3, 3, 0, 2500000, 3500, 25000, 2, 100000, 1, 1, 1, 1, NULL, NULL, NULL, NULL, '2022-05-05 22:23:16', '2022-05-05 22:23:16');

-- --------------------------------------------------------

--
-- Table structure for table `contract_service_detail`
--

CREATE TABLE `contract_service_detail` (
  `id` int(11) NOT NULL,
  `id_contract` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `start_number` double DEFAULT '0',
  `end_number` double DEFAULT '0',
  `month` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `input_date` date DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `is_confirm` int(11) NOT NULL DEFAULT '0',
  `confirm_date` date DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contract_service_detail`
--

INSERT INTO `contract_service_detail` (`id`, `id_contract`, `type`, `start_number`, `end_number`, `month`, `year`, `input_date`, `status`, `is_confirm`, `confirm_date`, `updated_at`, `created_at`) VALUES
(5, 3, 1, 2000, 30000, 5, 2022, NULL, 1, 0, NULL, '2022-05-06 01:59:20', '2022-05-06 01:48:51'),
(6, 3, 2, 200, 300, 5, 2022, NULL, 1, 0, NULL, '2022-05-06 01:59:20', '2022-05-06 01:49:53'),
(7, 1, 1, 1000, 10000, 5, 2022, NULL, 1, 1, '2022-05-06', '2022-05-06 02:23:43', '2022-05-06 02:17:52');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1',
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `job` varchar(255) NOT NULL,
  `identification_number` varchar(255) NOT NULL,
  `identification_place` varchar(255) NOT NULL,
  `identification_time` date NOT NULL,
  `identification_address` varchar(255) DEFAULT NULL,
  `bank_branch` varchar(255) DEFAULT NULL,
  `gender` int(11) NOT NULL,
  `birthday` date NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `home_town` varchar(255) DEFAULT NULL,
  `bank_number` varchar(255) DEFAULT NULL,
  `bank_account` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `note` text,
  `admin_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `code`, `fullname`, `type`, `phone`, `email`, `job`, `identification_number`, `identification_place`, `identification_time`, `identification_address`, `bank_branch`, `gender`, `birthday`, `country`, `nationality`, `address`, `home_town`, `bank_number`, `bank_account`, `bank_name`, `note`, `admin_id`, `updated_at`, `created_at`) VALUES
(1, 'kyosyma', 'Vương Duy Định', 1, '0961157432', 'vuongduydinh999@gmail.com', 'IT', '123123123', 'Gia Lai', '2022-03-07', 'HN', NULL, 1, '1994-02-28', 'Việt Nam', 'Việt Nam', '998/42/15 Quang Trung', 'Gia Lai', NULL, NULL, NULL, NULL, 1, '2022-05-05 09:08:53', '2022-04-20 05:04:08'),
(2, 'kyosyma1', 'Vương Duy Định', 1, '0961157432', 'vuongduydinh999@gmail.com', 'IT', '123123123', 'Gia Lai', '2022-03-07', 'hn', NULL, 1, '1994-02-28', 'Việt Nam', 'Việt Nam', '998/42/15 Quang Trung', 'Gia Lai', NULL, NULL, NULL, NULL, 1, '2022-05-05 09:08:53', '2022-04-20 05:04:08'),
(3, 'kyosyma2', 'Vương Duy Định', 1, '0961157432', 'vuongduydinh999@gmail.com', 'IT', '123123123', 'Gia Lai', '2022-03-07', 'hn', NULL, 1, '1994-02-28', 'Việt Nam', 'Việt Nam', '998/42/15 Quang Trung', 'Gia Lai', NULL, NULL, NULL, NULL, 1, '2022-05-05 09:08:53', '2022-04-20 05:04:08'),
(4, 'kyosyma3', 'Vương Duy Định', 1, '0961157432', 'vuongduydinh999@gmail.com', 'IT', '123123123', 'Gia Lai', '2022-03-07', 'hn', NULL, 1, '1994-02-28', 'Việt Nam', 'Việt Nam', '998/42/15 Quang Trung', 'Gia Lai', NULL, NULL, NULL, NULL, 1, '2022-05-05 09:08:53', '2022-04-20 05:04:08'),
(5, 'nch', 'Nguyễn Chính Hưng', 1, '0338927456', 'nc.hung0806@gmail.com', 'Nhân viên', '1123123', 'Gia Lai', '2022-02-11', 'Gia Lai', 'gialai', 1, '1998-07-08', NULL, NULL, NULL, NULL, '123', 'hung', 'agribank', NULL, 1, '2022-05-05 09:08:53', '2022-04-23 02:42:10'),
(6, 'HuTHzY', 'Kim Anh Tuấn Trần', 1, '0934177422', 'anhtuan199590@gmail.com', 'Nhân viên', '1123123', 'Gia Lai', '2022-04-21', 'Gia Lai', NULL, 1, '2022-04-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-05-05 09:08:53', '2022-04-23 02:51:04');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 1, 'TA1', 'Tầng 1', '2022-04-23 01:29:25', '2022-04-23 01:29:25'),
(2, 1, 'TA2', 'Tầng 2', '2022-04-23 01:29:25', '2022-04-23 01:29:25'),
(3, 1, 'TA3', 'Tầng 3', '2022-04-23 01:29:25', '2022-04-23 01:29:25'),
(4, 1, 'TA4', 'Tầng 4', '2022-04-23 01:29:25', '2022-04-23 01:29:25'),
(5, 1, 'TA5', 'Tầng 5', '2022-04-23 01:29:25', '2022-04-23 01:29:25'),
(6, 1, 'TA6', 'Tầng 6', '2022-04-23 01:29:25', '2022-04-23 01:29:25'),
(7, 1, 'TA7', 'Tầng 7', '2022-04-23 01:29:25', '2022-04-23 01:29:25'),
(8, 1, 'TA8', 'Tầng 8', '2022-04-23 01:29:25', '2022-04-23 01:29:25'),
(9, 1, 'TA9', 'Tầng 9', '2022-04-23 01:29:25', '2022-04-23 01:29:25'),
(10, 1, 'TA10', 'Tầng 10', '2022-04-23 01:29:25', '2022-04-23 01:29:25'),
(11, 2, 'TA1', 'Tầng trệt', '2022-04-23 02:29:39', '2022-04-23 02:29:18'),
(12, 2, 'TA2', 'Tầng 2', '2022-04-23 02:29:18', '2022-04-23 02:29:18'),
(13, 2, 'TA3', 'Tầng 3', '2022-04-23 02:29:18', '2022-04-23 02:29:18'),
(14, 2, 'TA4', 'Tầng 4', '2022-04-23 02:29:18', '2022-04-23 02:29:18'),
(15, 2, 'TA5', 'Tầng 5', '2022-04-23 02:29:18', '2022-04-23 02:29:18'),
(16, 2, 'TA6', 'Tầng 6', '2022-04-23 02:29:18', '2022-04-23 02:29:18'),
(17, 2, 'TA7', 'Tầng 7', '2022-04-23 02:29:18', '2022-04-23 02:29:18'),
(18, 2, 'TA8', 'Tầng 8', '2022-04-23 02:29:18', '2022-04-23 02:29:18'),
(19, 2, 'TA9', 'Tầng 9', '2022-04-23 02:29:18', '2022-04-23 02:29:18'),
(20, 2, 'TA10', 'Tầng 10', '2022-04-23 02:29:18', '2022-04-23 02:29:18'),
(21, 2, 'TA11', 'Tầng 11', '2022-04-23 02:29:18', '2022-04-23 02:29:18'),
(22, 2, 'TA12', 'Tầng 12', '2022-04-23 02:29:18', '2022-04-23 02:29:18'),
(23, 2, 'TA13', 'Tầng 13', '2022-04-23 02:29:18', '2022-04-23 02:29:18'),
(24, 2, 'TA14', 'Tầng 14', '2022-04-23 02:29:18', '2022-04-23 02:29:18'),
(25, 2, 'TA15', 'Tầng 15', '2022-04-23 02:29:18', '2022-04-23 02:29:18'),
(26, 3, 'TA1', 'Tầng lửng', '2022-04-23 02:46:50', '2022-04-23 02:46:37'),
(27, 3, 'TA2', 'Tầng 2', '2022-04-23 02:46:37', '2022-04-23 02:46:37'),
(28, 3, 'TA3', 'Tầng 3', '2022-04-23 02:46:37', '2022-04-23 02:46:37'),
(29, 3, 'TA4', 'Tầng 4', '2022-04-23 02:46:37', '2022-04-23 02:46:37'),
(30, 3, 'TA5', 'Tầng 5', '2022-04-23 02:46:37', '2022-04-23 02:46:37'),
(31, 3, 'TA6', 'Tầng 6', '2022-04-23 02:46:37', '2022-04-23 02:46:37'),
(32, 3, 'TA7', 'Tầng 7', '2022-04-23 02:46:37', '2022-04-23 02:46:37'),
(33, 3, 'TA8', 'Tầng 8', '2022-04-23 02:46:37', '2022-04-23 02:46:37'),
(34, 3, 'TA9', 'Tầng 9', '2022-04-23 02:46:37', '2022-04-23 02:46:37'),
(35, 3, 'TA10', 'Tầng 10', '2022-04-23 02:46:37', '2022-04-23 02:46:37'),
(36, 4, 'TA1', 'Tầng 1', '2022-04-23 06:55:21', '2022-04-23 06:55:21'),
(37, 4, 'TA2', 'Tầng 2', '2022-04-23 06:55:21', '2022-04-23 06:55:21'),
(38, 4, 'TA3', 'Tầng 3', '2022-04-23 06:55:21', '2022-04-23 06:55:21'),
(39, 4, 'TA4', 'Tầng 4', '2022-04-23 06:55:21', '2022-04-23 06:55:21'),
(40, 4, 'TA5', 'Tầng 5', '2022-04-23 06:55:21', '2022-04-23 06:55:21'),
(41, 4, 'TA6', 'Tầng 6', '2022-04-23 06:55:21', '2022-04-23 06:55:21'),
(42, 4, 'TA7', 'Tầng 7', '2022-04-23 06:55:21', '2022-04-23 06:55:21'),
(43, 4, 'TA8', 'Tầng 8', '2022-04-23 06:55:21', '2022-04-23 06:55:21'),
(44, 4, 'TA9', 'Tầng 9', '2022-04-23 06:55:21', '2022-04-23 06:55:21'),
(45, 4, 'TA10', 'Tầng 10', '2022-04-23 06:55:21', '2022-04-23 06:55:21'),
(46, 4, 'TA11', 'Tầng 11', '2022-04-23 06:55:21', '2022-04-23 06:55:21'),
(47, 4, 'TA12', 'Tầng 12', '2022-04-23 06:55:21', '2022-04-23 06:55:21'),
(48, 4, 'TA13', 'Tầng 13', '2022-04-23 06:55:21', '2022-04-23 06:55:21'),
(49, 4, 'TA14', 'Tầng 14', '2022-04-23 06:55:21', '2022-04-23 06:55:21'),
(50, 4, 'TA15', 'Tầng 15', '2022-04-23 06:55:21', '2022-04-23 06:55:21'),
(51, 4, 'TA16', 'Tầng 16', '2022-04-23 06:55:21', '2022-04-23 06:55:21'),
(52, 4, 'TA17', 'Tầng 17', '2022-04-23 06:55:21', '2022-04-23 06:55:21'),
(53, 4, 'TA18', 'Tầng 18', '2022-04-23 06:55:21', '2022-04-23 06:55:21'),
(54, 4, 'TA19', 'Tầng 19', '2022-04-23 06:55:21', '2022-04-23 06:55:21'),
(55, 4, 'TA20', 'Tầng 20', '2022-04-23 06:55:21', '2022-04-23 06:55:21'),
(56, 5, 'TA1', 'Tầng 1', '2022-04-23 07:56:47', '2022-04-23 07:56:47'),
(57, 5, 'TA2', 'Tầng 2', '2022-04-23 07:56:47', '2022-04-23 07:56:47'),
(58, 5, 'TA3', 'Tầng 3', '2022-04-23 07:56:47', '2022-04-23 07:56:47'),
(59, 5, 'TA4', 'Tầng 4', '2022-04-23 07:56:47', '2022-04-23 07:56:47'),
(60, 5, 'TA5', 'Tầng 5', '2022-04-23 07:56:47', '2022-04-23 07:56:47'),
(61, 5, 'TA6', 'Tầng 6', '2022-04-23 07:56:47', '2022-04-23 07:56:47'),
(62, 5, 'TA7', 'Tầng 7', '2022-04-23 07:56:47', '2022-04-23 07:56:47'),
(63, 5, 'TA8', 'Tầng 8', '2022-04-23 07:56:47', '2022-04-23 07:56:47'),
(64, 5, 'TA9', 'Tầng 9', '2022-04-23 07:56:47', '2022-04-23 07:56:47'),
(65, 5, 'TA10', 'Tầng 10', '2022-04-23 07:56:47', '2022-04-23 07:56:47'),
(66, 5, 'TA11', 'Tầng 11', '2022-04-23 07:56:47', '2022-04-23 07:56:47'),
(67, 5, 'TA12', 'Tầng 12', '2022-04-23 07:56:47', '2022-04-23 07:56:47'),
(68, 5, 'TA13', 'Tầng 13', '2022-04-23 07:56:47', '2022-04-23 07:56:47'),
(69, 5, 'TA14', 'Tầng 14', '2022-04-23 07:56:47', '2022-04-23 07:56:47'),
(70, 5, 'TA15', 'Tầng 15', '2022-04-23 07:56:47', '2022-04-23 07:56:47'),
(71, 5, 'TA16', 'Tầng 16', '2022-04-23 07:56:47', '2022-04-23 07:56:47'),
(72, 5, 'TA17', 'Tầng 17', '2022-04-23 07:56:47', '2022-04-23 07:56:47'),
(73, 5, 'TA18', 'Tầng 18', '2022-04-23 07:56:47', '2022-04-23 07:56:47'),
(74, 5, 'TA19', 'Tầng 19', '2022-04-23 07:56:47', '2022-04-23 07:56:47'),
(75, 5, 'TA20', 'Tầng 20', '2022-04-23 07:56:47', '2022-04-23 07:56:47'),
(76, 5, 'TA21', 'Tầng 21', '2022-04-23 07:56:47', '2022-04-23 07:56:47'),
(77, 5, 'TA22', 'Tầng 22', '2022-04-23 07:56:47', '2022-04-23 07:56:47'),
(78, 5, 'TA23', 'Tầng 23', '2022-04-23 07:56:47', '2022-04-23 07:56:47'),
(79, 5, 'TA24', 'Tầng 24', '2022-04-23 07:56:47', '2022-04-23 07:56:47'),
(80, 5, 'TA25', 'Tầng 25', '2022-04-23 07:56:47', '2022-04-23 07:56:47'),
(81, 5, 'TA26', 'Tầng 26', '2022-04-23 07:56:47', '2022-04-23 07:56:47'),
(82, 5, 'TA27', 'Tầng 27', '2022-04-23 07:56:48', '2022-04-23 07:56:48'),
(83, 5, 'TA28', 'Tầng 28', '2022-04-23 07:56:48', '2022-04-23 07:56:48'),
(84, 5, 'TA29', 'Tầng 29', '2022-04-23 07:56:48', '2022-04-23 07:56:48'),
(85, 5, 'TA30', 'Tầng 30', '2022-04-23 07:56:48', '2022-04-23 07:56:48'),
(86, 6, 'TA1', 'Tầng 1', '2022-05-05 21:21:35', '2022-05-05 21:21:35'),
(87, 6, 'TA2', 'Tầng 2', '2022-05-05 21:21:36', '2022-05-05 21:21:36'),
(88, 6, 'TA3', 'Tầng 3', '2022-05-05 21:21:36', '2022-05-05 21:21:36'),
(89, 6, 'TA4', 'Tầng 4', '2022-05-05 21:21:36', '2022-05-05 21:21:36'),
(90, 6, 'TA5', 'Tầng 5', '2022-05-05 21:21:36', '2022-05-05 21:21:36'),
(91, 6, 'TA6', 'Tầng 6', '2022-05-05 21:21:36', '2022-05-05 21:21:36'),
(92, 6, 'TA7', 'Tầng 7', '2022-05-05 21:21:36', '2022-05-05 21:21:36'),
(93, 6, 'TA8', 'Tầng 8', '2022-05-05 21:21:36', '2022-05-05 21:21:36'),
(94, 6, 'TA9', 'Tầng 9', '2022-05-05 21:21:36', '2022-05-05 21:21:36'),
(95, 6, 'TA10', 'Tầng 10', '2022-05-05 21:21:36', '2022-05-05 21:21:36'),
(96, 6, 'TA11', 'Tầng 11', '2022-05-05 21:21:36', '2022-05-05 21:21:36'),
(97, 6, 'TA12', 'Tầng 12', '2022-05-05 21:21:36', '2022-05-05 21:21:36'),
(98, 6, 'TA13', 'Tầng 13', '2022-05-05 21:21:36', '2022-05-05 21:21:36'),
(99, 6, 'TA14', 'Tầng 14', '2022-05-05 21:21:36', '2022-05-05 21:21:36'),
(100, 6, 'TA15', 'Tầng 15', '2022-05-05 21:21:36', '2022-05-05 21:21:36');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `id_contract` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_create` date NOT NULL,
  `date_expired` date NOT NULL,
  `amount_room` double NOT NULL DEFAULT '0',
  `amount_electric` double NOT NULL DEFAULT '0',
  `amount_water` double NOT NULL DEFAULT '0',
  `amount_service` double NOT NULL DEFAULT '0',
  `total` double NOT NULL DEFAULT '0',
  `amount_paid` double NOT NULL DEFAULT '0',
  `amount_rest` double NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `id_contract`, `code`, `name`, `date_create`, `date_expired`, `amount_room`, `amount_electric`, `amount_water`, `amount_service`, `total`, `amount_paid`, `amount_rest`, `updated_at`, `created_at`) VALUES
(1, 3, 'HOADON-hd001-05/2022', 'Hóa đơn hợp đồng hd001 05/2022', '2022-05-06', '2022-05-06', 2500000, 98000000, 2500000, 100000, 103100000, 0, 0, '2022-05-06 01:59:20', '2022-05-06 01:59:20'),
(2, 1, 'HOADON-HuTHzY-05/2022', 'Hóa đơn hợp đồng HuTHzY 05/2022', '2022-05-06', '2022-05-06', 10000000, 31500000, 25000, 100000, 41625000, 0, 0, '2022-05-06 02:23:43', '2022-05-06 02:23:43');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_19_033735_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1),
(2, 'App\\Models\\Admin', 3),
(2, 'App\\Models\\Admin', 4),
(2, 'App\\Models\\Admin', 5),
(2, 'App\\Models\\Admin', 6),
(1, 'App\\Models\\Admin', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Bảng quản trị', 'admin', '2022-04-19 00:40:48', '2022-04-19 00:42:53'),
(2, 'Bàn làm việc', 'admin', '2022-04-19 00:42:15', '2022-04-20 19:48:29'),
(3, 'Hồ sơ khách hàng', 'admin', '2022-04-19 00:43:51', '2022-04-19 00:43:51'),
(4, 'Hợp đồng', 'admin', '2022-04-19 00:43:58', '2022-04-19 00:43:58'),
(5, 'Vai trò', 'admin', '2022-04-19 00:44:10', '2022-04-19 00:44:10'),
(6, 'Người dùng', 'admin', '2022-04-19 00:44:13', '2022-04-19 00:44:13'),
(7, 'Quản trị cơ sở', 'admin', '2022-04-19 00:44:29', '2022-04-19 00:44:29');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Full Quyền', 'admin', '2022-04-19 00:59:23', '2022-04-19 00:59:23'),
(2, 'Quản lý', 'admin', '2022-04-19 01:03:19', '2022-04-23 02:51:26');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(1, 2),
(3, 2),
(7, 2);

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
  `name_blog` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `description` text,
  `asset` longtext,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `code`, `name`, `building_id`, `floor_id`, `type`, `price`, `purpose`, `acreage`, `note`, `name_blog`, `slug`, `avatar`, `description`, `asset`, `status`, `updated_at`, `created_at`) VALUES
(1, 'p01', 'P-01', 2, 11, 1, 10000000, NULL, 70, NULL, 'Phòng master etown giá rẻ', 'phong-master-etown-gia-re', '/public/uploads/files/Landmark81banner.jpeg', '<p>Ph&ograve;ng gi&aacute; rẻ v&ocirc; c&ugrave;ng&nbsp;</p>\r\n\r\n<p>Tiện &iacute;ch:</p>\r\n\r\n<ul>\r\n	<li>B&atilde;i giữ xe rộng</li>\r\n	<li>Cửa v&acirc;n tay</li>\r\n	<li>M&aacute;y lạnh</li>\r\n</ul>', NULL, 2, '2022-04-23 02:34:06', '2022-04-23 02:32:37'),
(2, 'p01', 'P-01', 2, 12, 1, 10000000, NULL, 50, NULL, 'Phòng master etown tầng 2 giá rẻ', 'phong-master-etown-tang-2-gia-re', '/public/uploads/files/tttmai_jnqb.jpg', '<p>Tiện &iacute;ch</p>\r\n\r\n<ul>\r\n	<li>B&atilde;i giữ xe</li>\r\n	<li>Nh&agrave; ăn</li>\r\n</ul>', NULL, 0, '2022-04-23 02:35:44', '2022-04-23 02:35:44'),
(3, 'p01', 'P-01', 1, 1, 2, 10000000, NULL, 70, NULL, 'Phòng cho thuê ở Pearl Plaza giá rẻ', 'phong-cho-thue-o-pearl-plaza-gia-re', '/public/uploads/files/tttmai_jnqb.jpg', '<p>Ph&ograve;ng gi&aacute; rẻ</p>', NULL, 0, '2022-04-23 02:36:53', '2022-04-23 02:36:53'),
(4, 'HuTHzY', 'P01', 3, 26, 1, 10000000, NULL, 50, NULL, 'Phòng studio Vincom quận 9 giá rẻ', 'phong-studio-vincom-quan-9-gia-re', '/public/uploads/files/tttmai_jnqb.jpg', '<p>Tiện &iacute;ch:</p>\r\n\r\n<ul>\r\n	<li>Nh&agrave; xe</li>\r\n	<li>Cửa v&acirc;n tay</li>\r\n	<li>Nước n&oacute;ng</li>\r\n</ul>', NULL, 2, '2022-04-23 02:49:07', '2022-04-23 02:48:22'),
(5, '123123', 'P-02', 3, 26, 1, 150000000, NULL, 20, NULL, 'Phòng cho thuê ở Pearl Plaza giá rẻ 2', 'phong-cho-thue-o-pearl-plaza-gia-re-2', '/public/uploads/files/Landmark81banner.jpeg', '<p>Tiện &iacute;ch:</p>\r\n\r\n<p>Hồ Bơi</p>', NULL, 0, '2022-04-23 02:50:16', '2022-04-23 02:50:16'),
(6, 'Vinhome', 'P01', 4, 36, 2, 12000000, NULL, 100, NULL, 'Vinhome Smart City', 'vinhome-smart-city', '/public/uploads/files/Landmark81banner.jpeg', NULL, NULL, 2, '2022-05-04 23:35:27', '2022-04-23 06:56:45'),
(7, 'VH1', 'P01', 5, 57, 2, 12000000, NULL, 100, NULL, 'Vinhome Smart City', 'vinhome-smart-city-1', '/public/uploads/files/Landmark81banner.jpeg', NULL, NULL, 0, '2022-04-23 08:00:01', '2022-04-23 08:00:01'),
(8, 'p002', 'P.02', 4, 36, 1, 10000000, NULL, 40, NULL, 'Phòng master etown tầng 2 giá rẻ bèo', 'phong-master-etown-tang-2-gia-re-beo', '/public/uploads/files/DJI_0030-fixed2-mini-20190727T100030844048.jpeg', NULL, NULL, 2, '2022-05-05 20:36:48', '2022-05-04 23:47:37'),
(9, 'p001', 'P-01', 6, 86, 1, 2500000, NULL, 50, NULL, 'Phòng master etown tầng 2 giá rẻ nhất', 'phong-master-etown-tang-2-gia-re-nhat', '/public/uploads/files/DJI_0030-fixed2-mini-20190727T100030844048.jpeg', NULL, NULL, 2, '2022-05-05 22:23:16', '2022-05-05 21:48:42');

-- --------------------------------------------------------

--
-- Table structure for table `service_index`
--

CREATE TABLE `service_index` (
  `id` int(11) NOT NULL,
  `id_contract` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `index_from` int(11) NOT NULL,
  `index_to` int(11) DEFAULT NULL,
  `date_start` date NOT NULL,
  `date_end` date DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

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
-- Indexes for table `contract_earnest`
--
ALTER TABLE `contract_earnest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contract_info`
--
ALTER TABLE `contract_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contract_service_detail`
--
ALTER TABLE `contract_service_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `floors`
--
ALTER TABLE `floors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `building_id` (`building_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `building_id` (`building_id`),
  ADD KEY `floor_id` (`floor_id`);

--
-- Indexes for table `service_index`
--
ALTER TABLE `service_index`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `buildings`
--
ALTER TABLE `buildings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contract`
--
ALTER TABLE `contract`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contract_customer`
--
ALTER TABLE `contract_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `contract_earnest`
--
ALTER TABLE `contract_earnest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contract_info`
--
ALTER TABLE `contract_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contract_service_detail`
--
ALTER TABLE `contract_service_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `floors`
--
ALTER TABLE `floors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `service_index`
--
ALTER TABLE `service_index`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD CONSTRAINT `admin_info_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `floors`
--
ALTER TABLE `floors`
  ADD CONSTRAINT `floors_ibfk_1` FOREIGN KEY (`building_id`) REFERENCES `buildings` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`building_id`) REFERENCES `buildings` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `rooms_ibfk_2` FOREIGN KEY (`floor_id`) REFERENCES `floors` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
