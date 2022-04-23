-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2022 at 08:45 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `block`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `updated_at`, `created_at`) VALUES
(1, 'admin', '$2y$10$drtc8/RCNronPROYztCFJOkt/A0cDqYrMs0LV.ImX3GlfqoKK/FEq', '2022-04-06 09:17:18', '2022-04-06 09:17:18'),
(3, 'mevivu1', '$2y$10$AWgjhIdBoofpd9Ng4UFy6uAidmp6B.O3ygweAGk4MiGpZcOdRjHoG', '2022-04-19 03:21:00', '2022-04-09 23:36:46'),
(4, 'kira', '$2y$10$RTnI8E4YrYsHlo5jLbcijOrAfsHhus0QNtpIgd6HHxUwQ0Wf7UOiq', '2022-04-19 03:26:23', '2022-04-09 23:42:26'),
(5, 'truong', '$2y$10$nwBLIcNKaIma7HltEy3X1et0w.7UFXObNnHsuFyKJVaZZgPhhil6y', '2022-04-20 20:17:19', '2022-04-19 02:17:23'),
(6, 'bingo', '$2y$10$mfKUvjTtRWdqjesOuHQvduexPClaZDZRIESveW4czP3x8pgJm0mLO', '2022-04-19 03:26:51', '2022-04-19 03:26:51');

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
  `gender` int(11) DEFAULT 1,
  `address` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`id`, `admin_id`, `fullname`, `email`, `phone`, `birthday`, `gender`, `address`, `updated_at`, `created_at`) VALUES
(1, 1, 'Kyosima', NULL, NULL, '1970-01-01', 1, NULL, '2022-04-19 03:18:36', '2022-04-10 06:35:59'),
(3, 3, 'Bùi Thế Vũ', 'btvu282@gmail.com', '0335828494', '1970-01-01', 1, '998/52/15 Quang Trung, Gò vấp', '2022-04-19 03:21:01', '2022-04-09 23:36:46'),
(4, 4, 'Kira', 'btvu282@gmail.com', '0335828494', '1970-01-01', 1, '998/52/15 Quang Trung, Gò vấp', '2022-04-19 03:26:23', '2022-04-09 23:42:26'),
(5, 5, 'Trần Văn Trường', 'trantruong1797@gmail.com', '0342909557', '1997-07-01', 1, '954, quang trung', '2022-04-20 20:17:51', '2022-04-19 02:17:23'),
(6, 6, 'Bí ngô', NULL, NULL, NULL, 1, NULL, '2022-04-19 03:26:51', '2022-04-19 03:26:51');

-- --------------------------------------------------------

--
-- Table structure for table `buildings`
--

CREATE TABLE `buildings` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `number_floor` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `owner_phone` varchar(255) NOT NULL,
  `owner_email` varchar(255) NOT NULL,
  `note` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `introduce` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `buildings`
--

INSERT INTO `buildings` (`id`, `code`, `name`, `avatar`, `slug`, `number_floor`, `address`, `owner`, `owner_phone`, `owner_email`, `note`, `introduce`, `sort`, `updated_at`, `created_at`) VALUES
(8, 'Vincom', 'VinCom', NULL, NULL, 1, '440/45 Thống nhất', 'Nguyễn Văn A1', '0342909557', 'ittranvantruong@gmail.com', NULL, NULL, 0, '2022-04-18 00:32:47', '2022-04-15 02:40:32'),
(11, 'DV000010', 'Aeon', NULL, NULL, 2, '954, quang trung', 'Nguyễn Văn A', '0342909557', 'trantruong1797@gmail.com', NULL, NULL, 0, '2022-04-18 02:29:15', '2022-04-15 02:41:58'),
(14, 'DV000010', 'VinMart', NULL, NULL, 5, '954, quang trung', 'Nguyễn Văn A', '0342909557', 'trantruong1797@gmail.com', NULL, NULL, 0, '2022-04-18 00:44:53', '2022-04-17 21:38:02'),
(15, 'CH000001', 'Landmark', NULL, NULL, 4, '26 Nguyễn Hữu Cảnh', 'Nguyễn Văn A', '0342909557', 'trantruong1797@gmail.com', NULL, NULL, 0, '2022-04-19 19:45:47', '2022-04-18 00:56:17'),
(17, 'DV000010', 'Sunhouse', NULL, NULL, 3, '954, quang trung', 'Nguyễn Văn A', '0342909557', 'trantruong1797@gmail.com', NULL, NULL, 0, '2022-04-20 01:27:26', '2022-04-20 01:24:10'),
(18, 'TN000010', 'Whitehouse', NULL, NULL, 3, '954, quang trung', 'Nguyễn Văn A', '0342909557', 'trantruong1797@gmail.com', NULL, NULL, 0, '2022-04-20 01:27:13', '2022-04-20 01:26:47'),
(19, 'pvd', 'Peal plaza', NULL, NULL, 10, 'Bình Thạnh', 'Hưng', '01123123123', 'nc.hung0806@gmail.com', NULL, NULL, 0, '2022-04-22 02:32:18', '2022-04-22 02:32:18');

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
  `is_earnest` int(11) DEFAULT 0,
  `note` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contract`
--

INSERT INTO `contract` (`id`, `id_room`, `code`, `name`, `type`, `time_start`, `time_end`, `time_charge`, `is_earnest`, `note`, `status`, `updated_at`, `created_at`) VALUES
(2, 5, 'HuTHzY', '123', 1, '2022-04-21', '2022-04-21', '2022-04-21', 1, NULL, 1, '2022-04-21 00:29:41', '2022-04-21 00:29:41'),
(4, 18, '123', '123123', 1, '2022-04-21', '2022-04-21', '2022-04-21', NULL, NULL, 1, '2022-04-21 01:59:43', '2022-04-21 01:59:43'),
(5, 74, 'thang3123', '123123', 1, '2022-04-21', '2022-04-21', '2022-04-24', 1, NULL, 1, '2022-04-21 02:05:47', '2022-04-21 02:05:47'),
(6, 75, 'thang31231231231', '123123123123', 1, '2022-04-09', '2022-04-30', '2022-04-30', NULL, NULL, 1, '2022-04-21 02:09:49', '2022-04-21 02:09:49'),
(7, 76, 'xxxxxd', 'nguyenchinhhung', 1, '2022-04-15', '2022-04-28', '2022-04-14', NULL, NULL, 1, '2022-04-21 02:13:00', '2022-04-21 02:13:00'),
(8, 77, '3123123', '12312', 1, '2022-04-10', '2022-04-13', '0123-04-10', NULL, '123', 1, '2022-04-21 02:15:05', '2022-04-21 02:15:05'),
(9, 78, 'thang31231231', '123123123', 1, '2022-03-31', '2022-04-30', '2022-04-30', NULL, NULL, 1, '2022-04-21 02:18:35', '2022-04-21 02:18:35');

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
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contract_customer`
--

INSERT INTO `contract_customer` (`id`, `id_contract`, `id_customer`, `is_representative`, `note`, `updated_at`, `created_at`) VALUES
(1, 2, 1, 1, '1', '2022-04-21 00:29:41', '2022-04-21 00:29:41'),
(2, 2, 2, 0, '2', '2022-04-21 00:29:41', '2022-04-21 00:29:41'),
(5, 4, 1, 1, '', '2022-04-21 01:59:43', '2022-04-21 01:59:43'),
(6, 5, 3, 1, '', '2022-04-21 02:05:47', '2022-04-21 02:05:47'),
(7, 5, 4, 0, '', '2022-04-21 02:05:47', '2022-04-21 02:05:47'),
(8, 6, 1, 1, '', '2022-04-21 02:09:49', '2022-04-21 02:09:49'),
(9, 7, 1, 1, '', '2022-04-21 02:13:00', '2022-04-21 02:13:00'),
(10, 8, 4, 1, '', '2022-04-21 02:15:05', '2022-04-21 02:15:05'),
(11, 9, 3, 1, '', '2022-04-21 02:18:35', '2022-04-21 02:18:35');

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
  `note` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contract_info`
--

CREATE TABLE `contract_info` (
  `id` int(11) NOT NULL,
  `id_contract` int(11) NOT NULL,
  `amount_earnest` int(11) DEFAULT 0,
  `price_room` int(11) NOT NULL,
  `price_electric` double NOT NULL DEFAULT 0,
  `price_water` double NOT NULL DEFAULT 0,
  `type_water` int(11) NOT NULL DEFAULT 1,
  `price_service` double NOT NULL DEFAULT 0,
  `number_room` int(11) DEFAULT 1,
  `number_electric` int(11) DEFAULT 1,
  `number_water` int(11) DEFAULT 1,
  `number_service` int(11) DEFAULT 1,
  `note_room` varchar(255) DEFAULT NULL,
  `note_electric` varchar(255) DEFAULT NULL,
  `note_water` varchar(255) DEFAULT NULL,
  `note_service` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contract_info`
--

INSERT INTO `contract_info` (`id`, `id_contract`, `amount_earnest`, `price_room`, `price_electric`, `price_water`, `type_water`, `price_service`, `number_room`, `number_electric`, `number_water`, `number_service`, `note_room`, `note_electric`, `note_water`, `note_service`, `updated_at`, `created_at`) VALUES
(1, 2, NULL, 123, 123, 123, 1, 123, 1, 1, 1, 1, '123', '123', '123', NULL, '2022-04-21 00:29:41', '2022-04-21 00:29:41'),
(3, 4, 0, 10000000, 3500, 25000, 1, 100000, 1, 1, 1, 1, NULL, NULL, NULL, NULL, '2022-04-21 01:59:43', '2022-04-21 01:59:43'),
(4, 5, 1000000, 123, 3500, 25000, 1, 100000, 1, 1, 1, 1, NULL, NULL, NULL, NULL, '2022-04-21 02:05:47', '2022-04-21 02:05:47'),
(5, 6, 0, 1000000, 3500, 25000, 1, 100000, 1, 1, 1, 1, NULL, NULL, NULL, NULL, '2022-04-21 02:09:49', '2022-04-21 02:09:49'),
(6, 7, 0, 123123123, 3500, 25000, 1, 100000, 1, 1, 1, 1, NULL, NULL, NULL, NULL, '2022-04-21 02:13:00', '2022-04-21 02:13:00'),
(7, 8, 0, 123123, 3500, 25000, 1, 100000, 1, 1, 1, 1, NULL, NULL, NULL, NULL, '2022-04-21 02:15:05', '2022-04-21 02:15:05'),
(8, 9, 0, 123123, 3500, 25000, 1, 100000, 1, 1, 1, 1, NULL, NULL, NULL, NULL, '2022-04-21 02:18:35', '2022-04-21 02:18:35');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
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
  `note` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `code`, `fullname`, `type`, `phone`, `email`, `job`, `identification_number`, `identification_place`, `identification_time`, `gender`, `birthday`, `country`, `nationality`, `address`, `home_town`, `bank_number`, `bank_account`, `bank_name`, `note`, `updated_at`, `created_at`) VALUES
(1, 'kyosyma', 'Bùi Thế Vũ', 1, '03392138123', 'btv@gmail.com', 'IT', '123123123', 'Gia Lai', '2022-03-07', 1, '1994-02-28', 'Việt Nam', 'Việt Nam', '998/42/15 Quang Trung', 'Gia Lai', NULL, NULL, NULL, NULL, '2022-04-20 05:04:08', '2022-04-20 05:04:08'),
(2, 'kyosyma1', 'Bùi Thế Vũ', 1, '03392138123', 'btv@gmail.com', 'IT', '123123123', 'Gia Lai', '2022-03-07', 1, '1994-02-28', 'Việt Nam', 'Việt Nam', '998/42/15 Quang Trung', 'Gia Lai', NULL, NULL, NULL, NULL, '2022-04-20 05:04:08', '2022-04-20 05:04:08'),
(3, 'kyosyma2', 'Bùi Thế Vũ', 1, '03392138123', 'btv@gmail.com', 'IT', '123123123', 'Gia Lai', '2022-03-07', 1, '1994-02-28', 'Việt Nam', 'Việt Nam', '998/42/15 Quang Trung', 'Gia Lai', NULL, NULL, NULL, NULL, '2022-04-20 05:04:08', '2022-04-20 05:04:08'),
(4, 'kyosyma3', 'Bùi Thế Vũ', 1, '03392138123', 'btv@gmail.com', 'IT', '123123123', 'Gia Lai', '2022-03-07', 1, '1994-02-28', 'Việt Nam', 'Việt Nam', '998/42/15 Quang Trung', 'Gia Lai', NULL, NULL, NULL, NULL, '2022-04-20 05:04:08', '2022-04-20 05:04:08');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `floors`
--

INSERT INTO `floors` (`id`, `building_id`, `code`, `name`, `updated_at`, `created_at`) VALUES
(1, 11, 'TA0001', 'Tầng 1', '2022-04-18 02:33:34', '2022-04-15 05:14:31'),
(2, 11, 'TA00002', 'Tầng 2', '2022-04-20 01:23:44', '2022-04-15 05:14:52'),
(3, 8, 't1', 'Tầng 1', '2022-04-15 10:33:19', '2022-04-15 05:14:52'),
(4, 14, 'TA1', 'Tầng 1', '2022-04-17 21:38:02', '2022-04-17 21:38:02'),
(5, 14, 'TA2', 'Tầng 2', '2022-04-17 21:38:02', '2022-04-17 21:38:02'),
(6, 14, 'TA3', 'Tầng 3', '2022-04-17 21:38:02', '2022-04-17 21:38:02'),
(7, 14, 'TA4', 'Tầng 4', '2022-04-17 21:38:02', '2022-04-17 21:38:02'),
(8, 14, 'TA5', 'Tầng 5', '2022-04-17 21:38:02', '2022-04-17 21:38:02'),
(9, 15, 'TA1', 'Tầng 1', '2022-04-19 19:46:05', '2022-04-18 00:56:17'),
(10, 15, 'TA2', 'Tầng 2', '2022-04-18 00:56:17', '2022-04-18 00:56:17'),
(11, 15, 'TA3', 'Tầng 3', '2022-04-18 00:56:17', '2022-04-18 00:56:17'),
(13, 15, 'TA4', 'Tầng 4', '2022-04-18 02:44:07', '2022-04-18 00:56:17'),
(29, 17, 'TA1', 'Tầng 1', '2022-04-20 01:24:10', '2022-04-20 01:24:10'),
(30, 17, 'TA2', 'Tầng 2', '2022-04-20 01:24:10', '2022-04-20 01:24:10'),
(31, 17, 'TA3', 'Tầng 3', '2022-04-20 01:24:10', '2022-04-20 01:24:10'),
(32, 18, 'TA1', 'Tầng 1', '2022-04-20 01:26:47', '2022-04-20 01:26:47'),
(33, 18, 'TA2', 'Tầng 2', '2022-04-20 01:26:47', '2022-04-20 01:26:47'),
(34, 18, 'TA3', 'Tầng 3', '2022-04-20 01:26:47', '2022-04-20 01:26:47'),
(35, 19, 'TA1', 'Tầng 1', '2022-04-22 02:32:18', '2022-04-22 02:32:18'),
(36, 19, 'TA2', 'Tầng 2', '2022-04-22 02:32:18', '2022-04-22 02:32:18'),
(37, 19, 'TA3', 'Tầng 3', '2022-04-22 02:32:18', '2022-04-22 02:32:18'),
(38, 19, 'TA4', 'Tầng 4', '2022-04-22 02:32:18', '2022-04-22 02:32:18'),
(39, 19, 'TA5', 'Tầng 5', '2022-04-22 02:32:18', '2022-04-22 02:32:18'),
(40, 19, 'TA6', 'Tầng 6', '2022-04-22 02:32:18', '2022-04-22 02:32:18'),
(41, 19, 'TA7', 'Tầng 7', '2022-04-22 02:32:18', '2022-04-22 02:32:18'),
(42, 19, 'TA8', 'Tầng 8', '2022-04-22 02:32:18', '2022-04-22 02:32:18'),
(43, 19, 'TA9', 'Tầng 9', '2022-04-22 02:32:18', '2022-04-22 02:32:18'),
(44, 19, 'TA10', 'Tầng 10', '2022-04-22 02:32:18', '2022-04-22 02:32:18');

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
(2, 'App\\Models\\Admin', 6);

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
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(2, 'Quản lý', 'admin', '2022-04-19 01:03:19', '2022-04-20 20:21:57');

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
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
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
  `note` text DEFAULT NULL,
  `name_blog` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `code`, `name`, `building_id`, `floor_id`, `type`, `price`, `purpose`, `acreage`, `note`, `name_blog`, `slug`, `avatar`, `description`, `status`, `updated_at`, `created_at`) VALUES
(1, 'dsfdsf', 'P.0.1', 11, 1, 1, 0, 500000, 60, 'note', NULL, NULL, NULL, NULL, 0, '2022-04-15 10:33:37', '2022-04-15 05:15:14'),
(2, 'dsfdsf', 'P.0.2', 11, 2, 1, 0, 500000, 60, 'note', NULL, NULL, NULL, NULL, 0, '2022-04-21 03:46:38', '2022-04-15 05:15:19'),
(3, 'dsfdsf', 'P.0.2', 11, 2, 1, 0, 500000, 60, 'note', NULL, NULL, NULL, NULL, 0, '2022-04-15 10:33:44', '2022-04-15 05:15:19'),
(4, 'dsfdsf', 'P.0.2', 11, 2, 1, 0, 500000, 60, 'note', NULL, NULL, NULL, NULL, 3, '2022-04-15 10:33:49', '2022-04-15 05:15:19'),
(5, 'p1', 'P.0.1', 8, 3, 1, 0, 1000000, 60, 'note', NULL, NULL, NULL, NULL, 2, '2022-04-21 07:38:38', '2022-04-15 05:15:19'),
(6, 'HuTHzY', 'P9', 11, 1, 1, 10000000, NULL, 123, '123123123', NULL, NULL, NULL, NULL, 0, '2022-04-18 09:35:13', '2022-04-18 02:02:48'),
(7, 'HuTHzY', 'P.99', 11, 1, 1, 10000000, NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, '2022-04-18 02:30:58', '2022-04-18 02:30:58'),
(8, '123123', 'P11', 11, 1, 1, 1231, NULL, 123, NULL, NULL, NULL, NULL, NULL, 0, '2022-04-21 03:46:42', '2022-04-18 02:33:26'),
(9, '123', 'P12', 11, 1, 1, 123, NULL, 1123, NULL, NULL, NULL, NULL, NULL, 0, '2022-04-18 02:34:01', '2022-04-18 02:34:01'),
(10, '123', 'p13', 11, 1, 1, 13, NULL, 123, NULL, NULL, NULL, NULL, NULL, 0, '2022-04-18 02:35:27', '2022-04-18 02:35:27'),
(11, 'HuTHzY', 'p.03', 11, 2, 1, 123, NULL, 123, NULL, NULL, NULL, NULL, NULL, 0, '2022-04-18 02:35:54', '2022-04-18 02:35:54'),
(12, 'agFxFX', 'P1011', 11, 2, 2, 123, NULL, 123, NULL, NULL, NULL, NULL, NULL, 0, '2022-04-18 22:29:10', '2022-04-18 22:29:10'),
(13, 'thang3123', 'p123', 11, 1, 2, 123, NULL, 123, NULL, NULL, NULL, NULL, NULL, 0, '2022-04-19 01:21:06', '2022-04-19 01:21:06'),
(14, 'CH-123', 'P1', 14, 4, 1, 10000000, NULL, 50, NULL, NULL, NULL, NULL, NULL, 0, '2022-04-21 03:44:48', '2022-04-19 01:27:08'),
(15, 'thang3123', '123', 14, 4, 1, 123, NULL, 123, NULL, NULL, NULL, NULL, NULL, 0, '2022-04-21 03:45:08', '2022-04-19 22:13:03'),
(16, 'thang3123', '123', 14, 6, 1, 123, NULL, 123, NULL, NULL, NULL, NULL, NULL, 0, '2022-04-21 03:45:06', '2022-04-19 22:13:21'),
(17, '123123', '123123123', 14, 4, 2, 123, NULL, 123, NULL, NULL, NULL, NULL, NULL, 0, '2022-04-21 03:45:03', '2022-04-19 22:14:39'),
(18, '123123', 'Nguyễn Chính Hưng', 8, 3, 1, 10000000, NULL, 1231, NULL, NULL, NULL, NULL, NULL, 2, '2022-04-21 01:59:43', '2022-04-20 21:54:50'),
(74, 'HuTHzY', '123', 8, 3, 1, 123, NULL, 123, NULL, NULL, NULL, NULL, NULL, 2, '2022-04-21 02:05:47', '2022-04-20 22:37:23'),
(75, '123123123', 'p30', 8, 3, 1, 1000000, NULL, 10, NULL, NULL, NULL, NULL, NULL, 2, '2022-04-21 02:09:49', '2022-04-21 02:06:39'),
(76, '123123123', '123123123', 8, 3, 1, 123123123, NULL, 123, NULL, NULL, NULL, NULL, NULL, 2, '2022-04-21 02:13:00', '2022-04-21 02:12:12'),
(77, '123123', '123', 8, 3, 1, 123123, NULL, 123123, NULL, NULL, NULL, NULL, NULL, 2, '2022-04-21 02:15:05', '2022-04-21 02:14:32'),
(78, 'aaaaa', '123123', 8, 3, 1, 123123, NULL, 20, NULL, NULL, NULL, NULL, NULL, 2, '2022-04-21 02:18:35', '2022-04-21 02:18:16'),
(79, 'agFxFX1', 'P001', 8, 3, 1, 10000000, NULL, 100000, NULL, NULL, NULL, NULL, NULL, 0, '2022-04-22 02:30:31', '2022-04-22 02:30:31'),
(80, '123123123', 'ádas', 19, 35, 1, 123, NULL, 123, NULL, NULL, NULL, NULL, NULL, 0, '2022-04-22 02:32:44', '2022-04-22 02:32:44');

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
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `buildings`
--
ALTER TABLE `buildings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `contract`
--
ALTER TABLE `contract`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contract_customer`
--
ALTER TABLE `contract_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contract_earnest`
--
ALTER TABLE `contract_earnest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contract_info`
--
ALTER TABLE `contract_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `floors`
--
ALTER TABLE `floors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
