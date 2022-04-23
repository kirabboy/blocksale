-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 23, 2022 lúc 07:22 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `blocksale`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `updated_at`, `created_at`) VALUES
(1, 'admin', '$2y$10$drtc8/RCNronPROYztCFJOkt/A0cDqYrMs0LV.ImX3GlfqoKK/FEq', '2022-04-06 09:17:18', '2022-04-06 09:17:18'),
(3, 'mevivu1', '$2y$10$AWgjhIdBoofpd9Ng4UFy6uAidmp6B.O3ygweAGk4MiGpZcOdRjHoG', '2022-04-19 03:21:00', '2022-04-09 23:36:46'),
(4, 'kira', '$2y$10$RTnI8E4YrYsHlo5jLbcijOrAfsHhus0QNtpIgd6HHxUwQ0Wf7UOiq', '2022-04-19 03:26:23', '2022-04-09 23:42:26'),
(5, 'truong', '$2y$10$nwBLIcNKaIma7HltEy3X1et0w.7UFXObNnHsuFyKJVaZZgPhhil6y', '2022-04-20 20:17:19', '2022-04-19 02:17:23'),
(6, 'bingo', '$2y$10$mfKUvjTtRWdqjesOuHQvduexPClaZDZRIESveW4czP3x8pgJm0mLO', '2022-04-19 03:26:51', '2022-04-19 03:26:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_info`
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
-- Đang đổ dữ liệu cho bảng `admin_info`
--

INSERT INTO `admin_info` (`id`, `admin_id`, `fullname`, `email`, `phone`, `birthday`, `gender`, `address`, `updated_at`, `created_at`) VALUES
(1, 1, 'Kyosima', NULL, NULL, '1970-01-01', 1, NULL, '2022-04-19 03:18:36', '2022-04-10 06:35:59'),
(3, 3, 'Bùi Thế Vũ', 'btvu282@gmail.com', '0335828494', '1970-01-01', 1, '998/52/15 Quang Trung, Gò vấp', '2022-04-19 03:21:01', '2022-04-09 23:36:46'),
(4, 4, 'Kira', 'btvu282@gmail.com', '0335828494', '1970-01-01', 1, '998/52/15 Quang Trung, Gò vấp', '2022-04-19 03:26:23', '2022-04-09 23:42:26'),
(5, 5, 'Trần Văn Trường', 'trantruong1797@gmail.com', '0342909557', '1997-07-01', 1, '954, quang trung', '2022-04-20 20:17:51', '2022-04-19 02:17:23'),
(6, 6, 'Bí ngô', NULL, NULL, NULL, 1, NULL, '2022-04-19 03:26:51', '2022-04-19 03:26:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `buildings`
--

CREATE TABLE `buildings` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` text NOT NULL,
  `number_floor` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `avatar` text NOT NULL DEFAULT 'public/image/default-image.png',
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
-- Đang đổ dữ liệu cho bảng `buildings`
--

INSERT INTO `buildings` (`id`, `code`, `name`, `slug`, `number_floor`, `address`, `avatar`, `owner`, `owner_phone`, `owner_email`, `note`, `introduce`, `sort`, `updated_at`, `created_at`) VALUES
(8, 'Vincom', 'VinCom', 'VinCom', 1, '440/45 Thống nhất', 'public/image/binhthanh.jpeg', 'Nguyễn Văn A1', '0342909557', 'ittranvantruong@gmail.com', NULL, NULL, 0, '2022-04-22 03:58:11', '2022-04-15 02:40:32'),
(11, 'DV000010', 'Aeon', 'Aeon', 2, '954, quang trung', 'public/image/binhthanh.jpeg', 'Nguyễn Văn A', '0342909557', 'trantruong1797@gmail.com', NULL, NULL, 0, '2022-04-22 03:58:13', '2022-04-15 02:41:58'),
(14, 'DV000010', 'VinMart', 'VinMart', 5, '954, quang trung', 'public/image/binhthanh.jpeg', 'Nguyễn Văn A', '0342909557', 'trantruong1797@gmail.com', NULL, NULL, 0, '2022-04-22 03:58:16', '2022-04-17 21:38:02'),
(15, 'CH000001', 'Landmark', 'Landmark', 4, '26 Nguyễn Hữu Cảnh', 'public/image/binhthanh.jpeg', 'Nguyễn Văn A', '0342909557', 'trantruong1797@gmail.com', NULL, NULL, 0, '2022-04-22 03:58:18', '2022-04-18 00:56:17'),
(17, 'DV000010', 'Sunhouse', 'sunhouse', 3, '954, quang trung', 'public/image/binhthanh.jpeg', 'Nguyễn Văn A', '0342909557', 'trantruong1797@gmail.com', NULL, NULL, 0, '2022-04-21 21:36:44', '2022-04-20 01:24:10'),
(18, 'TN000010', 'Whitehouse', 'whitehouse', 3, '954, quang trung', 'public/image/binhthanh.jpeg', 'Nguyễn Văn A', '0342909557', 'trantruong1797@gmail.com', NULL, NULL, 0, '2022-04-21 21:36:19', '2022-04-20 01:26:47'),
(19, 'TN000010', 'MevivuHouse', 'mevivuhouse', 2, '954, quang trung', '/public/uploads/images/can-ho.jpg', 'Nguyễn Văn A', '0342909557', 'trantruong1797@gmail.com', NULL, '<pre>\r\nĐ/C: 70/15A NGUYỄN SỸ S&Aacute;CH, P.15,T&Acirc;N B&Igrave;NH\r\n👉🏻  tuyệt đối an ninh - y&ecirc;n tĩnh - gi&aacute; RẺ c&aacute;ch Etown Cộng H&ograve;a 7 ph&uacute;t l&aacute;i xe chỉ từ 2.2 triệu - 3 triệu/th.\r\n(Đối diện Coop Mart Trường Chinh).\r\n* Wifi - thang m&aacute;y FREE, giờ tự do.\r\nTiện &iacute;ch ưu điểm:\r\n- C&oacute; thang m&aacute;y (24/24h).\r\n- C&oacute; hệ thống camera đảm bảo an ninh tuyệt đối.\r\n- Trang bị hệ thống PCCC cả t&ograve;a nh&agrave; - hệ thống b&aacute;o ch&aacute;y từng ph&ograve;ng hiện đại.\r\n- C&oacute; hầm để xe (c&oacute; bảo vệ tr&ocirc;ng coi) - điện h&agrave;nh lang.\r\n- C&oacute; khu vực phơi đồ ri&ecirc;ng biệt rất th&ocirc;ng tho&aacute;ng.\r\n- DT ph&ograve;ng: 20m2 - 50m2 (c&oacute; cửa sổ - g&aacute;c lửng - c&oacute; kệ bếp - WC ri&ecirc;ng biệt).\r\n- Gi&aacute; cho thu&ecirc;: 2.2tr - 3 triệu/th&aacute;ng.\r\n\r\nChi ph&iacute; điện nước v&agrave; dịch vụ :\r\n- Điện: 3.500 KWH.\r\n- Nước: 15.000đ/m3 (nước m&aacute;y).\r\n- Giữ xe m&aacute;y: 100.000₫\r\n- R&aacute;c: 10 ngh&igrave;n/ph&ograve;ng/th&aacute;ng (khu để r&aacute;c sạch sẽ - th&ocirc;ng tho&aacute;ng).\r\nLi&ecirc;n hệ: 0936.32.32.35 (A.To&agrave;n) - 0908.296.779 (C.Ly)</pre>', 0, '2022-04-22 01:01:16', '2022-04-22 00:21:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contract`
--

CREATE TABLE `contract` (
  `id` int(11) NOT NULL,
  `id_room` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `time_start` date NOT NULL,
  `time_end` date NOT NULL,
  `time_charge` date NOT NULL,
  `is_earnest` int(11) NOT NULL DEFAULT 0,
  `note` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contract_customer`
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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contract_info`
--

CREATE TABLE `contract_info` (
  `id` int(11) NOT NULL,
  `id_contract` int(11) NOT NULL,
  `amount_earnest` int(11) NOT NULL,
  `price_room` int(11) NOT NULL,
  `price_electric` double NOT NULL DEFAULT 0,
  `price_water` double NOT NULL DEFAULT 0,
  `price_service` double NOT NULL DEFAULT 0,
  `number_room` int(11) DEFAULT 1,
  `number_electric` int(11) DEFAULT 1,
  `number_water` int(11) DEFAULT 1,
  `number_service` int(11) DEFAULT 1,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
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
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `code`, `fullname`, `type`, `phone`, `email`, `job`, `identification_number`, `identification_place`, `identification_time`, `gender`, `birthday`, `country`, `nationality`, `address`, `home_town`, `bank_number`, `bank_account`, `bank_name`, `note`, `updated_at`, `created_at`) VALUES
(1, 'kyosyma', 'Bùi Thế Vũ', 1, '03392138123', 'btv@gmail.com', 'IT', '123123123', 'Gia Lai', '2022-03-07', 1, '1994-02-28', 'Việt Nam', 'Việt Nam', '998/42/15 Quang Trung', 'Gia Lai', NULL, NULL, NULL, NULL, '2022-04-20 05:04:08', '2022-04-20 05:04:08'),
(2, 'kyosyma1', 'Bùi Thế Vũ', 1, '03392138123', 'btv@gmail.com', 'IT', '123123123', 'Gia Lai', '2022-03-07', 1, '1994-02-28', 'Việt Nam', 'Việt Nam', '998/42/15 Quang Trung', 'Gia Lai', NULL, NULL, NULL, NULL, '2022-04-20 05:04:08', '2022-04-20 05:04:08'),
(3, 'kyosyma2', 'Bùi Thế Vũ', 1, '03392138123', 'btv@gmail.com', 'IT', '123123123', 'Gia Lai', '2022-03-07', 1, '1994-02-28', 'Việt Nam', 'Việt Nam', '998/42/15 Quang Trung', 'Gia Lai', NULL, NULL, NULL, NULL, '2022-04-20 05:04:08', '2022-04-20 05:04:08'),
(4, 'kyosyma3', 'Bùi Thế Vũ', 1, '03392138123', 'btv@gmail.com', 'IT', '123123123', 'Gia Lai', '2022-03-07', 1, '1994-02-28', 'Việt Nam', 'Việt Nam', '998/42/15 Quang Trung', 'Gia Lai', NULL, NULL, NULL, NULL, '2022-04-20 05:04:08', '2022-04-20 05:04:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `floors`
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
-- Đang đổ dữ liệu cho bảng `floors`
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
(35, 19, 'TA1', 'Tầng 1', '2022-04-22 00:21:23', '2022-04-22 00:21:23'),
(36, 19, 'TA2', 'Tầng 2', '2022-04-22 00:21:23', '2022-04-22 00:21:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_19_033735_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1),
(2, 'App\\Models\\Admin', 3),
(2, 'App\\Models\\Admin', 4),
(2, 'App\\Models\\Admin', 5),
(2, 'App\\Models\\Admin', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
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
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Full Quyền', 'admin', '2022-04-19 00:59:23', '2022-04-19 00:59:23'),
(2, 'Quản lý', 'admin', '2022-04-19 01:03:19', '2022-04-20 20:21:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_has_permissions`
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
-- Cấu trúc bảng cho bảng `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `building_id` int(11) NOT NULL,
  `floor_id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_blog` text DEFAULT NULL,
  `slug` text NOT NULL,
  `avatar` text NOT NULL DEFAULT 'public/image/default-image.png',
  `type` int(11) NOT NULL,
  `price` double NOT NULL,
  `purpose` int(11) DEFAULT NULL,
  `acreage` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `note` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `rooms`
--

INSERT INTO `rooms` (`id`, `building_id`, `floor_id`, `code`, `name`, `name_blog`, `slug`, `avatar`, `type`, `price`, `purpose`, `acreage`, `status`, `note`, `description`, `updated_at`, `created_at`) VALUES
(1, 11, 1, 'dsfdsf', 'P.0.1', 'Cho thuê phòng trọ 0', 'cho-thue-phong-tro-0', 'public/image/can-ho.jpg', 1, 0, 500000, 60, 0, 'note', '<pre>\r\nĐ/C: 70/15A NGUYỄN SỸ S&Aacute;CH, P.15,T&Acirc;N B&Igrave;NH\r\n??  tuyệt đối an ninh - y&ecirc;n tĩnh - gi&aacute; RẺ c&aacute;ch Etown Cộng H&ograve;a 7 ph&uacute;t l&aacute;i xe chỉ từ 2.2 triệu - 3 triệu/th.\r\n(Đối diện Coop Mart Trường Chinh).\r\n* Wifi - thang m&aacute;y FREE, giờ tự do.\r\nTiện &iacute;ch ưu điểm:\r\n- C&oacute; thang m&aacute;y (24/24h).\r\n- C&oacute; hệ thống camera đảm bảo an ninh tuyệt đối.\r\n- Trang bị hệ thống PCCC cả t&ograve;a nh&agrave; - hệ thống b&aacute;o ch&aacute;y từng ph&ograve;ng hiện đại.\r\n- C&oacute; hầm để xe (c&oacute; bảo vệ tr&ocirc;ng coi) - điện h&agrave;nh lang.\r\n- C&oacute; khu vực phơi đồ ri&ecirc;ng biệt rất th&ocirc;ng tho&aacute;ng.\r\n- DT ph&ograve;ng: 20m2 - 50m2 (c&oacute; cửa sổ - g&aacute;c lửng - c&oacute; kệ bếp - WC ri&ecirc;ng biệt).\r\n- Gi&aacute; cho thu&ecirc;: 2.2tr - 3 triệu/th&aacute;ng.\r\n\r\nChi ph&iacute; điện nước v&agrave; dịch vụ :\r\n- Điện: 3.500 KWH.\r\n- Nước: 15.000đ/m3 (nước m&aacute;y).\r\n- Giữ xe m&aacute;y: 100.000₫\r\n- R&aacute;c: 10 ngh&igrave;n/ph&ograve;ng/th&aacute;ng (khu để r&aacute;c sạch sẽ - th&ocirc;ng tho&aacute;ng).\r\nLi&ecirc;n hệ: 0936.32.32.35 (A.To&agrave;n) - 0908.296.779 (C.Ly)</pre>', '2022-04-22 08:02:12', '2022-04-15 05:15:14'),
(2, 11, 2, 'dsfdsf', 'P.0.2', 'Cho thuê phòng trọ 1', 'cho-thue-phong-tro-1', 'public/image/can-ho.jpg', 1, 0, 500000, 60, 1, 'note', '<pre>\r\nĐ/C: 70/15A NGUYỄN SỸ S&Aacute;CH, P.15,T&Acirc;N B&Igrave;NH\r\n??  tuyệt đối an ninh - y&ecirc;n tĩnh - gi&aacute; RẺ c&aacute;ch Etown Cộng H&ograve;a 7 ph&uacute;t l&aacute;i xe chỉ từ 2.2 triệu - 3 triệu/th.\r\n(Đối diện Coop Mart Trường Chinh).\r\n* Wifi - thang m&aacute;y FREE, giờ tự do.\r\nTiện &iacute;ch ưu điểm:\r\n- C&oacute; thang m&aacute;y (24/24h).\r\n- C&oacute; hệ thống camera đảm bảo an ninh tuyệt đối.\r\n- Trang bị hệ thống PCCC cả t&ograve;a nh&agrave; - hệ thống b&aacute;o ch&aacute;y từng ph&ograve;ng hiện đại.\r\n- C&oacute; hầm để xe (c&oacute; bảo vệ tr&ocirc;ng coi) - điện h&agrave;nh lang.\r\n- C&oacute; khu vực phơi đồ ri&ecirc;ng biệt rất th&ocirc;ng tho&aacute;ng.\r\n- DT ph&ograve;ng: 20m2 - 50m2 (c&oacute; cửa sổ - g&aacute;c lửng - c&oacute; kệ bếp - WC ri&ecirc;ng biệt).\r\n- Gi&aacute; cho thu&ecirc;: 2.2tr - 3 triệu/th&aacute;ng.\r\n\r\nChi ph&iacute; điện nước v&agrave; dịch vụ :\r\n- Điện: 3.500 KWH.\r\n- Nước: 15.000đ/m3 (nước m&aacute;y).\r\n- Giữ xe m&aacute;y: 100.000₫\r\n- R&aacute;c: 10 ngh&igrave;n/ph&ograve;ng/th&aacute;ng (khu để r&aacute;c sạch sẽ - th&ocirc;ng tho&aacute;ng).\r\nLi&ecirc;n hệ: 0936.32.32.35 (A.To&agrave;n) - 0908.296.779 (C.Ly)</pre>', '2022-04-22 08:03:38', '2022-04-15 05:15:19'),
(3, 11, 2, 'dsfdsf', 'P.0.2', 'Cho thuê phòng trọ 2', 'cho-thue-phong-tro-2', 'public/image/can-ho.jpg', 1, 0, 500000, 60, 2, 'note', '<pre>\r\nĐ/C: 70/15A NGUYỄN SỸ S&Aacute;CH, P.15,T&Acirc;N B&Igrave;NH\r\n??  tuyệt đối an ninh - y&ecirc;n tĩnh - gi&aacute; RẺ c&aacute;ch Etown Cộng H&ograve;a 7 ph&uacute;t l&aacute;i xe chỉ từ 2.2 triệu - 3 triệu/th.\r\n(Đối diện Coop Mart Trường Chinh).\r\n* Wifi - thang m&aacute;y FREE, giờ tự do.\r\nTiện &iacute;ch ưu điểm:\r\n- C&oacute; thang m&aacute;y (24/24h).\r\n- C&oacute; hệ thống camera đảm bảo an ninh tuyệt đối.\r\n- Trang bị hệ thống PCCC cả t&ograve;a nh&agrave; - hệ thống b&aacute;o ch&aacute;y từng ph&ograve;ng hiện đại.\r\n- C&oacute; hầm để xe (c&oacute; bảo vệ tr&ocirc;ng coi) - điện h&agrave;nh lang.\r\n- C&oacute; khu vực phơi đồ ri&ecirc;ng biệt rất th&ocirc;ng tho&aacute;ng.\r\n- DT ph&ograve;ng: 20m2 - 50m2 (c&oacute; cửa sổ - g&aacute;c lửng - c&oacute; kệ bếp - WC ri&ecirc;ng biệt).\r\n- Gi&aacute; cho thu&ecirc;: 2.2tr - 3 triệu/th&aacute;ng.\r\n\r\nChi ph&iacute; điện nước v&agrave; dịch vụ :\r\n- Điện: 3.500 KWH.\r\n- Nước: 15.000đ/m3 (nước m&aacute;y).\r\n- Giữ xe m&aacute;y: 100.000₫\r\n- R&aacute;c: 10 ngh&igrave;n/ph&ograve;ng/th&aacute;ng (khu để r&aacute;c sạch sẽ - th&ocirc;ng tho&aacute;ng).\r\nLi&ecirc;n hệ: 0936.32.32.35 (A.To&agrave;n) - 0908.296.779 (C.Ly)</pre>', '2022-04-22 08:03:36', '2022-04-15 05:15:19'),
(4, 11, 2, 'dsfdsf', 'P.0.2', 'Cho thuê phòng trọ 3', 'cho-thue-phong-tro-3', 'public/image/can-ho.jpg', 1, 0, 500000, 60, 3, 'note', '<pre>\r\nĐ/C: 70/15A NGUYỄN SỸ S&Aacute;CH, P.15,T&Acirc;N B&Igrave;NH\r\n??  tuyệt đối an ninh - y&ecirc;n tĩnh - gi&aacute; RẺ c&aacute;ch Etown Cộng H&ograve;a 7 ph&uacute;t l&aacute;i xe chỉ từ 2.2 triệu - 3 triệu/th.\r\n(Đối diện Coop Mart Trường Chinh).\r\n* Wifi - thang m&aacute;y FREE, giờ tự do.\r\nTiện &iacute;ch ưu điểm:\r\n- C&oacute; thang m&aacute;y (24/24h).\r\n- C&oacute; hệ thống camera đảm bảo an ninh tuyệt đối.\r\n- Trang bị hệ thống PCCC cả t&ograve;a nh&agrave; - hệ thống b&aacute;o ch&aacute;y từng ph&ograve;ng hiện đại.\r\n- C&oacute; hầm để xe (c&oacute; bảo vệ tr&ocirc;ng coi) - điện h&agrave;nh lang.\r\n- C&oacute; khu vực phơi đồ ri&ecirc;ng biệt rất th&ocirc;ng tho&aacute;ng.\r\n- DT ph&ograve;ng: 20m2 - 50m2 (c&oacute; cửa sổ - g&aacute;c lửng - c&oacute; kệ bếp - WC ri&ecirc;ng biệt).\r\n- Gi&aacute; cho thu&ecirc;: 2.2tr - 3 triệu/th&aacute;ng.\r\n\r\nChi ph&iacute; điện nước v&agrave; dịch vụ :\r\n- Điện: 3.500 KWH.\r\n- Nước: 15.000đ/m3 (nước m&aacute;y).\r\n- Giữ xe m&aacute;y: 100.000₫\r\n- R&aacute;c: 10 ngh&igrave;n/ph&ograve;ng/th&aacute;ng (khu để r&aacute;c sạch sẽ - th&ocirc;ng tho&aacute;ng).\r\nLi&ecirc;n hệ: 0936.32.32.35 (A.To&agrave;n) - 0908.296.779 (C.Ly)</pre>', '2022-04-22 08:03:34', '2022-04-15 05:15:19'),
(5, 8, 3, 'p1', 'P.0.1', 'Cho thuê phòng trọ 4', 'cho-thue-phong-tro-4', 'public/image/can-ho.jpg', 1, 0, 1000000, 60, 0, 'note', '<pre>\r\nĐ/C: 70/15A NGUYỄN SỸ S&Aacute;CH, P.15,T&Acirc;N B&Igrave;NH\r\n??  tuyệt đối an ninh - y&ecirc;n tĩnh - gi&aacute; RẺ c&aacute;ch Etown Cộng H&ograve;a 7 ph&uacute;t l&aacute;i xe chỉ từ 2.2 triệu - 3 triệu/th.\r\n(Đối diện Coop Mart Trường Chinh).\r\n* Wifi - thang m&aacute;y FREE, giờ tự do.\r\nTiện &iacute;ch ưu điểm:\r\n- C&oacute; thang m&aacute;y (24/24h).\r\n- C&oacute; hệ thống camera đảm bảo an ninh tuyệt đối.\r\n- Trang bị hệ thống PCCC cả t&ograve;a nh&agrave; - hệ thống b&aacute;o ch&aacute;y từng ph&ograve;ng hiện đại.\r\n- C&oacute; hầm để xe (c&oacute; bảo vệ tr&ocirc;ng coi) - điện h&agrave;nh lang.\r\n- C&oacute; khu vực phơi đồ ri&ecirc;ng biệt rất th&ocirc;ng tho&aacute;ng.\r\n- DT ph&ograve;ng: 20m2 - 50m2 (c&oacute; cửa sổ - g&aacute;c lửng - c&oacute; kệ bếp - WC ri&ecirc;ng biệt).\r\n- Gi&aacute; cho thu&ecirc;: 2.2tr - 3 triệu/th&aacute;ng.\r\n\r\nChi ph&iacute; điện nước v&agrave; dịch vụ :\r\n- Điện: 3.500 KWH.\r\n- Nước: 15.000đ/m3 (nước m&aacute;y).\r\n- Giữ xe m&aacute;y: 100.000₫\r\n- R&aacute;c: 10 ngh&igrave;n/ph&ograve;ng/th&aacute;ng (khu để r&aacute;c sạch sẽ - th&ocirc;ng tho&aacute;ng).\r\nLi&ecirc;n hệ: 0936.32.32.35 (A.To&agrave;n) - 0908.296.779 (C.Ly)</pre>', '2022-04-22 08:03:32', '2022-04-15 05:15:19'),
(6, 11, 1, 'HuTHzY', 'P9', 'Cho thuê phòng trọ 5', 'cho-thue-phong-tro-5', 'public/image/can-ho.jpg', 1, 10000000, NULL, 123, 0, '123123123', '<pre>\r\nĐ/C: 70/15A NGUYỄN SỸ S&Aacute;CH, P.15,T&Acirc;N B&Igrave;NH\r\n??  tuyệt đối an ninh - y&ecirc;n tĩnh - gi&aacute; RẺ c&aacute;ch Etown Cộng H&ograve;a 7 ph&uacute;t l&aacute;i xe chỉ từ 2.2 triệu - 3 triệu/th.\r\n(Đối diện Coop Mart Trường Chinh).\r\n* Wifi - thang m&aacute;y FREE, giờ tự do.\r\nTiện &iacute;ch ưu điểm:\r\n- C&oacute; thang m&aacute;y (24/24h).\r\n- C&oacute; hệ thống camera đảm bảo an ninh tuyệt đối.\r\n- Trang bị hệ thống PCCC cả t&ograve;a nh&agrave; - hệ thống b&aacute;o ch&aacute;y từng ph&ograve;ng hiện đại.\r\n- C&oacute; hầm để xe (c&oacute; bảo vệ tr&ocirc;ng coi) - điện h&agrave;nh lang.\r\n- C&oacute; khu vực phơi đồ ri&ecirc;ng biệt rất th&ocirc;ng tho&aacute;ng.\r\n- DT ph&ograve;ng: 20m2 - 50m2 (c&oacute; cửa sổ - g&aacute;c lửng - c&oacute; kệ bếp - WC ri&ecirc;ng biệt).\r\n- Gi&aacute; cho thu&ecirc;: 2.2tr - 3 triệu/th&aacute;ng.\r\n\r\nChi ph&iacute; điện nước v&agrave; dịch vụ :\r\n- Điện: 3.500 KWH.\r\n- Nước: 15.000đ/m3 (nước m&aacute;y).\r\n- Giữ xe m&aacute;y: 100.000₫\r\n- R&aacute;c: 10 ngh&igrave;n/ph&ograve;ng/th&aacute;ng (khu để r&aacute;c sạch sẽ - th&ocirc;ng tho&aacute;ng).\r\nLi&ecirc;n hệ: 0936.32.32.35 (A.To&agrave;n) - 0908.296.779 (C.Ly)</pre>', '2022-04-22 08:03:30', '2022-04-18 02:02:48'),
(7, 11, 1, 'HuTHzY', 'P.99', 'Cho thuê phòng trọ 6', 'cho-thue-phong-tro-6', 'public/image/can-ho.jpg', 1, 10000000, NULL, 10, 0, NULL, '<pre>\r\nĐ/C: 70/15A NGUYỄN SỸ S&Aacute;CH, P.15,T&Acirc;N B&Igrave;NH\r\n??  tuyệt đối an ninh - y&ecirc;n tĩnh - gi&aacute; RẺ c&aacute;ch Etown Cộng H&ograve;a 7 ph&uacute;t l&aacute;i xe chỉ từ 2.2 triệu - 3 triệu/th.\r\n(Đối diện Coop Mart Trường Chinh).\r\n* Wifi - thang m&aacute;y FREE, giờ tự do.\r\nTiện &iacute;ch ưu điểm:\r\n- C&oacute; thang m&aacute;y (24/24h).\r\n- C&oacute; hệ thống camera đảm bảo an ninh tuyệt đối.\r\n- Trang bị hệ thống PCCC cả t&ograve;a nh&agrave; - hệ thống b&aacute;o ch&aacute;y từng ph&ograve;ng hiện đại.\r\n- C&oacute; hầm để xe (c&oacute; bảo vệ tr&ocirc;ng coi) - điện h&agrave;nh lang.\r\n- C&oacute; khu vực phơi đồ ri&ecirc;ng biệt rất th&ocirc;ng tho&aacute;ng.\r\n- DT ph&ograve;ng: 20m2 - 50m2 (c&oacute; cửa sổ - g&aacute;c lửng - c&oacute; kệ bếp - WC ri&ecirc;ng biệt).\r\n- Gi&aacute; cho thu&ecirc;: 2.2tr - 3 triệu/th&aacute;ng.\r\n\r\nChi ph&iacute; điện nước v&agrave; dịch vụ :\r\n- Điện: 3.500 KWH.\r\n- Nước: 15.000đ/m3 (nước m&aacute;y).\r\n- Giữ xe m&aacute;y: 100.000₫\r\n- R&aacute;c: 10 ngh&igrave;n/ph&ograve;ng/th&aacute;ng (khu để r&aacute;c sạch sẽ - th&ocirc;ng tho&aacute;ng).\r\nLi&ecirc;n hệ: 0936.32.32.35 (A.To&agrave;n) - 0908.296.779 (C.Ly)</pre>', '2022-04-22 08:03:29', '2022-04-18 02:30:58'),
(8, 11, 1, '123123', 'P11', 'Cho thuê phòng trọ 7', 'cho-thue-phong-tro-7', 'public/image/can-ho.jpg', 1, 1231, NULL, 123, 0, NULL, '<pre>\r\nĐ/C: 70/15A NGUYỄN SỸ S&Aacute;CH, P.15,T&Acirc;N B&Igrave;NH\r\n??  tuyệt đối an ninh - y&ecirc;n tĩnh - gi&aacute; RẺ c&aacute;ch Etown Cộng H&ograve;a 7 ph&uacute;t l&aacute;i xe chỉ từ 2.2 triệu - 3 triệu/th.\r\n(Đối diện Coop Mart Trường Chinh).\r\n* Wifi - thang m&aacute;y FREE, giờ tự do.\r\nTiện &iacute;ch ưu điểm:\r\n- C&oacute; thang m&aacute;y (24/24h).\r\n- C&oacute; hệ thống camera đảm bảo an ninh tuyệt đối.\r\n- Trang bị hệ thống PCCC cả t&ograve;a nh&agrave; - hệ thống b&aacute;o ch&aacute;y từng ph&ograve;ng hiện đại.\r\n- C&oacute; hầm để xe (c&oacute; bảo vệ tr&ocirc;ng coi) - điện h&agrave;nh lang.\r\n- C&oacute; khu vực phơi đồ ri&ecirc;ng biệt rất th&ocirc;ng tho&aacute;ng.\r\n- DT ph&ograve;ng: 20m2 - 50m2 (c&oacute; cửa sổ - g&aacute;c lửng - c&oacute; kệ bếp - WC ri&ecirc;ng biệt).\r\n- Gi&aacute; cho thu&ecirc;: 2.2tr - 3 triệu/th&aacute;ng.\r\n\r\nChi ph&iacute; điện nước v&agrave; dịch vụ :\r\n- Điện: 3.500 KWH.\r\n- Nước: 15.000đ/m3 (nước m&aacute;y).\r\n- Giữ xe m&aacute;y: 100.000₫\r\n- R&aacute;c: 10 ngh&igrave;n/ph&ograve;ng/th&aacute;ng (khu để r&aacute;c sạch sẽ - th&ocirc;ng tho&aacute;ng).\r\nLi&ecirc;n hệ: 0936.32.32.35 (A.To&agrave;n) - 0908.296.779 (C.Ly)</pre>', '2022-04-22 08:03:27', '2022-04-18 02:33:26'),
(9, 11, 1, '123', 'P12', 'Cho thuê phòng trọ 8', 'cho-thue-phong-tro-8', 'public/image/can-ho.jpg', 1, 123, NULL, 1123, 0, NULL, '<pre>\r\nĐ/C: 70/15A NGUYỄN SỸ S&Aacute;CH, P.15,T&Acirc;N B&Igrave;NH\r\n??  tuyệt đối an ninh - y&ecirc;n tĩnh - gi&aacute; RẺ c&aacute;ch Etown Cộng H&ograve;a 7 ph&uacute;t l&aacute;i xe chỉ từ 2.2 triệu - 3 triệu/th.\r\n(Đối diện Coop Mart Trường Chinh).\r\n* Wifi - thang m&aacute;y FREE, giờ tự do.\r\nTiện &iacute;ch ưu điểm:\r\n- C&oacute; thang m&aacute;y (24/24h).\r\n- C&oacute; hệ thống camera đảm bảo an ninh tuyệt đối.\r\n- Trang bị hệ thống PCCC cả t&ograve;a nh&agrave; - hệ thống b&aacute;o ch&aacute;y từng ph&ograve;ng hiện đại.\r\n- C&oacute; hầm để xe (c&oacute; bảo vệ tr&ocirc;ng coi) - điện h&agrave;nh lang.\r\n- C&oacute; khu vực phơi đồ ri&ecirc;ng biệt rất th&ocirc;ng tho&aacute;ng.\r\n- DT ph&ograve;ng: 20m2 - 50m2 (c&oacute; cửa sổ - g&aacute;c lửng - c&oacute; kệ bếp - WC ri&ecirc;ng biệt).\r\n- Gi&aacute; cho thu&ecirc;: 2.2tr - 3 triệu/th&aacute;ng.\r\n\r\nChi ph&iacute; điện nước v&agrave; dịch vụ :\r\n- Điện: 3.500 KWH.\r\n- Nước: 15.000đ/m3 (nước m&aacute;y).\r\n- Giữ xe m&aacute;y: 100.000₫\r\n- R&aacute;c: 10 ngh&igrave;n/ph&ograve;ng/th&aacute;ng (khu để r&aacute;c sạch sẽ - th&ocirc;ng tho&aacute;ng).\r\nLi&ecirc;n hệ: 0936.32.32.35 (A.To&agrave;n) - 0908.296.779 (C.Ly)</pre>', '2022-04-22 08:03:25', '2022-04-18 02:34:01'),
(10, 11, 1, '123', 'p13', 'Cho thuê phòng trọ 9', 'cho-thue-phong-tro-9', 'public/image/can-ho.jpg', 1, 13, NULL, 123, 0, NULL, '<pre>\r\nĐ/C: 70/15A NGUYỄN SỸ S&Aacute;CH, P.15,T&Acirc;N B&Igrave;NH\r\n??  tuyệt đối an ninh - y&ecirc;n tĩnh - gi&aacute; RẺ c&aacute;ch Etown Cộng H&ograve;a 7 ph&uacute;t l&aacute;i xe chỉ từ 2.2 triệu - 3 triệu/th.\r\n(Đối diện Coop Mart Trường Chinh).\r\n* Wifi - thang m&aacute;y FREE, giờ tự do.\r\nTiện &iacute;ch ưu điểm:\r\n- C&oacute; thang m&aacute;y (24/24h).\r\n- C&oacute; hệ thống camera đảm bảo an ninh tuyệt đối.\r\n- Trang bị hệ thống PCCC cả t&ograve;a nh&agrave; - hệ thống b&aacute;o ch&aacute;y từng ph&ograve;ng hiện đại.\r\n- C&oacute; hầm để xe (c&oacute; bảo vệ tr&ocirc;ng coi) - điện h&agrave;nh lang.\r\n- C&oacute; khu vực phơi đồ ri&ecirc;ng biệt rất th&ocirc;ng tho&aacute;ng.\r\n- DT ph&ograve;ng: 20m2 - 50m2 (c&oacute; cửa sổ - g&aacute;c lửng - c&oacute; kệ bếp - WC ri&ecirc;ng biệt).\r\n- Gi&aacute; cho thu&ecirc;: 2.2tr - 3 triệu/th&aacute;ng.\r\n\r\nChi ph&iacute; điện nước v&agrave; dịch vụ :\r\n- Điện: 3.500 KWH.\r\n- Nước: 15.000đ/m3 (nước m&aacute;y).\r\n- Giữ xe m&aacute;y: 100.000₫\r\n- R&aacute;c: 10 ngh&igrave;n/ph&ograve;ng/th&aacute;ng (khu để r&aacute;c sạch sẽ - th&ocirc;ng tho&aacute;ng).\r\nLi&ecirc;n hệ: 0936.32.32.35 (A.To&agrave;n) - 0908.296.779 (C.Ly)</pre>', '2022-04-22 08:03:22', '2022-04-18 02:35:27'),
(11, 11, 2, 'HuTHzY', 'p.03', 'Cho thuê phòng trọ 10', 'cho-thue-phong-tro-10', 'public/image/can-ho.jpg', 1, 123, NULL, 123, 0, NULL, '<pre>\r\nĐ/C: 70/15A NGUYỄN SỸ S&Aacute;CH, P.15,T&Acirc;N B&Igrave;NH\r\n??  tuyệt đối an ninh - y&ecirc;n tĩnh - gi&aacute; RẺ c&aacute;ch Etown Cộng H&ograve;a 7 ph&uacute;t l&aacute;i xe chỉ từ 2.2 triệu - 3 triệu/th.\r\n(Đối diện Coop Mart Trường Chinh).\r\n* Wifi - thang m&aacute;y FREE, giờ tự do.\r\nTiện &iacute;ch ưu điểm:\r\n- C&oacute; thang m&aacute;y (24/24h).\r\n- C&oacute; hệ thống camera đảm bảo an ninh tuyệt đối.\r\n- Trang bị hệ thống PCCC cả t&ograve;a nh&agrave; - hệ thống b&aacute;o ch&aacute;y từng ph&ograve;ng hiện đại.\r\n- C&oacute; hầm để xe (c&oacute; bảo vệ tr&ocirc;ng coi) - điện h&agrave;nh lang.\r\n- C&oacute; khu vực phơi đồ ri&ecirc;ng biệt rất th&ocirc;ng tho&aacute;ng.\r\n- DT ph&ograve;ng: 20m2 - 50m2 (c&oacute; cửa sổ - g&aacute;c lửng - c&oacute; kệ bếp - WC ri&ecirc;ng biệt).\r\n- Gi&aacute; cho thu&ecirc;: 2.2tr - 3 triệu/th&aacute;ng.\r\n\r\nChi ph&iacute; điện nước v&agrave; dịch vụ :\r\n- Điện: 3.500 KWH.\r\n- Nước: 15.000đ/m3 (nước m&aacute;y).\r\n- Giữ xe m&aacute;y: 100.000₫\r\n- R&aacute;c: 10 ngh&igrave;n/ph&ograve;ng/th&aacute;ng (khu để r&aacute;c sạch sẽ - th&ocirc;ng tho&aacute;ng).\r\nLi&ecirc;n hệ: 0936.32.32.35 (A.To&agrave;n) - 0908.296.779 (C.Ly)</pre>', '2022-04-22 08:03:20', '2022-04-18 02:35:54'),
(12, 11, 2, 'agFxFX', 'P1011', 'Cho thuê phòng trọ 11', 'cho-thue-phong-tro-11', 'public/image/can-ho.jpg', 2, 123, NULL, 123, 0, NULL, '<pre>\r\nĐ/C: 70/15A NGUYỄN SỸ S&Aacute;CH, P.15,T&Acirc;N B&Igrave;NH\r\n??  tuyệt đối an ninh - y&ecirc;n tĩnh - gi&aacute; RẺ c&aacute;ch Etown Cộng H&ograve;a 7 ph&uacute;t l&aacute;i xe chỉ từ 2.2 triệu - 3 triệu/th.\r\n(Đối diện Coop Mart Trường Chinh).\r\n* Wifi - thang m&aacute;y FREE, giờ tự do.\r\nTiện &iacute;ch ưu điểm:\r\n- C&oacute; thang m&aacute;y (24/24h).\r\n- C&oacute; hệ thống camera đảm bảo an ninh tuyệt đối.\r\n- Trang bị hệ thống PCCC cả t&ograve;a nh&agrave; - hệ thống b&aacute;o ch&aacute;y từng ph&ograve;ng hiện đại.\r\n- C&oacute; hầm để xe (c&oacute; bảo vệ tr&ocirc;ng coi) - điện h&agrave;nh lang.\r\n- C&oacute; khu vực phơi đồ ri&ecirc;ng biệt rất th&ocirc;ng tho&aacute;ng.\r\n- DT ph&ograve;ng: 20m2 - 50m2 (c&oacute; cửa sổ - g&aacute;c lửng - c&oacute; kệ bếp - WC ri&ecirc;ng biệt).\r\n- Gi&aacute; cho thu&ecirc;: 2.2tr - 3 triệu/th&aacute;ng.\r\n\r\nChi ph&iacute; điện nước v&agrave; dịch vụ :\r\n- Điện: 3.500 KWH.\r\n- Nước: 15.000đ/m3 (nước m&aacute;y).\r\n- Giữ xe m&aacute;y: 100.000₫\r\n- R&aacute;c: 10 ngh&igrave;n/ph&ograve;ng/th&aacute;ng (khu để r&aacute;c sạch sẽ - th&ocirc;ng tho&aacute;ng).\r\nLi&ecirc;n hệ: 0936.32.32.35 (A.To&agrave;n) - 0908.296.779 (C.Ly)</pre>', '2022-04-22 08:03:18', '2022-04-18 22:29:10'),
(13, 11, 1, 'thang3123', 'p123', 'Cho thuê phòng trọ 12', 'cho-thue-phong-tro-12', 'public/image/can-ho.jpg', 2, 123, NULL, 123, 0, NULL, '<pre>\r\nĐ/C: 70/15A NGUYỄN SỸ S&Aacute;CH, P.15,T&Acirc;N B&Igrave;NH\r\n??  tuyệt đối an ninh - y&ecirc;n tĩnh - gi&aacute; RẺ c&aacute;ch Etown Cộng H&ograve;a 7 ph&uacute;t l&aacute;i xe chỉ từ 2.2 triệu - 3 triệu/th.\r\n(Đối diện Coop Mart Trường Chinh).\r\n* Wifi - thang m&aacute;y FREE, giờ tự do.\r\nTiện &iacute;ch ưu điểm:\r\n- C&oacute; thang m&aacute;y (24/24h).\r\n- C&oacute; hệ thống camera đảm bảo an ninh tuyệt đối.\r\n- Trang bị hệ thống PCCC cả t&ograve;a nh&agrave; - hệ thống b&aacute;o ch&aacute;y từng ph&ograve;ng hiện đại.\r\n- C&oacute; hầm để xe (c&oacute; bảo vệ tr&ocirc;ng coi) - điện h&agrave;nh lang.\r\n- C&oacute; khu vực phơi đồ ri&ecirc;ng biệt rất th&ocirc;ng tho&aacute;ng.\r\n- DT ph&ograve;ng: 20m2 - 50m2 (c&oacute; cửa sổ - g&aacute;c lửng - c&oacute; kệ bếp - WC ri&ecirc;ng biệt).\r\n- Gi&aacute; cho thu&ecirc;: 2.2tr - 3 triệu/th&aacute;ng.\r\n\r\nChi ph&iacute; điện nước v&agrave; dịch vụ :\r\n- Điện: 3.500 KWH.\r\n- Nước: 15.000đ/m3 (nước m&aacute;y).\r\n- Giữ xe m&aacute;y: 100.000₫\r\n- R&aacute;c: 10 ngh&igrave;n/ph&ograve;ng/th&aacute;ng (khu để r&aacute;c sạch sẽ - th&ocirc;ng tho&aacute;ng).\r\nLi&ecirc;n hệ: 0936.32.32.35 (A.To&agrave;n) - 0908.296.779 (C.Ly)</pre>', '2022-04-22 08:03:16', '2022-04-19 01:21:06'),
(14, 14, 4, 'CH-123', 'P1', 'Cho thuê phòng trọ 13', 'cho-thue-phong-tro-13', 'public/image/can-ho.jpg', 1, 10000000, NULL, 50, 0, NULL, '<pre>\r\nĐ/C: 70/15A NGUYỄN SỸ S&Aacute;CH, P.15,T&Acirc;N B&Igrave;NH\r\n??  tuyệt đối an ninh - y&ecirc;n tĩnh - gi&aacute; RẺ c&aacute;ch Etown Cộng H&ograve;a 7 ph&uacute;t l&aacute;i xe chỉ từ 2.2 triệu - 3 triệu/th.\r\n(Đối diện Coop Mart Trường Chinh).\r\n* Wifi - thang m&aacute;y FREE, giờ tự do.\r\nTiện &iacute;ch ưu điểm:\r\n- C&oacute; thang m&aacute;y (24/24h).\r\n- C&oacute; hệ thống camera đảm bảo an ninh tuyệt đối.\r\n- Trang bị hệ thống PCCC cả t&ograve;a nh&agrave; - hệ thống b&aacute;o ch&aacute;y từng ph&ograve;ng hiện đại.\r\n- C&oacute; hầm để xe (c&oacute; bảo vệ tr&ocirc;ng coi) - điện h&agrave;nh lang.\r\n- C&oacute; khu vực phơi đồ ri&ecirc;ng biệt rất th&ocirc;ng tho&aacute;ng.\r\n- DT ph&ograve;ng: 20m2 - 50m2 (c&oacute; cửa sổ - g&aacute;c lửng - c&oacute; kệ bếp - WC ri&ecirc;ng biệt).\r\n- Gi&aacute; cho thu&ecirc;: 2.2tr - 3 triệu/th&aacute;ng.\r\n\r\nChi ph&iacute; điện nước v&agrave; dịch vụ :\r\n- Điện: 3.500 KWH.\r\n- Nước: 15.000đ/m3 (nước m&aacute;y).\r\n- Giữ xe m&aacute;y: 100.000₫\r\n- R&aacute;c: 10 ngh&igrave;n/ph&ograve;ng/th&aacute;ng (khu để r&aacute;c sạch sẽ - th&ocirc;ng tho&aacute;ng).\r\nLi&ecirc;n hệ: 0936.32.32.35 (A.To&agrave;n) - 0908.296.779 (C.Ly)</pre>', '2022-04-22 08:03:12', '2022-04-19 01:27:08'),
(15, 14, 4, 'thang3123', '123', 'Cho thuê phòng trọ 14', 'cho-thue-phong-tro-14', 'public/image/can-ho.jpg', 1, 123, NULL, 123, 0, NULL, '<pre>\r\nĐ/C: 70/15A NGUYỄN SỸ S&Aacute;CH, P.15,T&Acirc;N B&Igrave;NH\r\n??  tuyệt đối an ninh - y&ecirc;n tĩnh - gi&aacute; RẺ c&aacute;ch Etown Cộng H&ograve;a 7 ph&uacute;t l&aacute;i xe chỉ từ 2.2 triệu - 3 triệu/th.\r\n(Đối diện Coop Mart Trường Chinh).\r\n* Wifi - thang m&aacute;y FREE, giờ tự do.\r\nTiện &iacute;ch ưu điểm:\r\n- C&oacute; thang m&aacute;y (24/24h).\r\n- C&oacute; hệ thống camera đảm bảo an ninh tuyệt đối.\r\n- Trang bị hệ thống PCCC cả t&ograve;a nh&agrave; - hệ thống b&aacute;o ch&aacute;y từng ph&ograve;ng hiện đại.\r\n- C&oacute; hầm để xe (c&oacute; bảo vệ tr&ocirc;ng coi) - điện h&agrave;nh lang.\r\n- C&oacute; khu vực phơi đồ ri&ecirc;ng biệt rất th&ocirc;ng tho&aacute;ng.\r\n- DT ph&ograve;ng: 20m2 - 50m2 (c&oacute; cửa sổ - g&aacute;c lửng - c&oacute; kệ bếp - WC ri&ecirc;ng biệt).\r\n- Gi&aacute; cho thu&ecirc;: 2.2tr - 3 triệu/th&aacute;ng.\r\n\r\nChi ph&iacute; điện nước v&agrave; dịch vụ :\r\n- Điện: 3.500 KWH.\r\n- Nước: 15.000đ/m3 (nước m&aacute;y).\r\n- Giữ xe m&aacute;y: 100.000₫\r\n- R&aacute;c: 10 ngh&igrave;n/ph&ograve;ng/th&aacute;ng (khu để r&aacute;c sạch sẽ - th&ocirc;ng tho&aacute;ng).\r\nLi&ecirc;n hệ: 0936.32.32.35 (A.To&agrave;n) - 0908.296.779 (C.Ly)</pre>', '2022-04-22 08:03:10', '2022-04-19 22:13:03'),
(16, 14, 6, 'thang3123', '123', 'Cho thuê phòng trọ 15', 'cho-thue-phong-tro-15', 'public/image/can-ho.jpg', 1, 123, NULL, 123, 0, NULL, '<pre>\r\nĐ/C: 70/15A NGUYỄN SỸ S&Aacute;CH, P.15,T&Acirc;N B&Igrave;NH\r\n??  tuyệt đối an ninh - y&ecirc;n tĩnh - gi&aacute; RẺ c&aacute;ch Etown Cộng H&ograve;a 7 ph&uacute;t l&aacute;i xe chỉ từ 2.2 triệu - 3 triệu/th.\r\n(Đối diện Coop Mart Trường Chinh).\r\n* Wifi - thang m&aacute;y FREE, giờ tự do.\r\nTiện &iacute;ch ưu điểm:\r\n- C&oacute; thang m&aacute;y (24/24h).\r\n- C&oacute; hệ thống camera đảm bảo an ninh tuyệt đối.\r\n- Trang bị hệ thống PCCC cả t&ograve;a nh&agrave; - hệ thống b&aacute;o ch&aacute;y từng ph&ograve;ng hiện đại.\r\n- C&oacute; hầm để xe (c&oacute; bảo vệ tr&ocirc;ng coi) - điện h&agrave;nh lang.\r\n- C&oacute; khu vực phơi đồ ri&ecirc;ng biệt rất th&ocirc;ng tho&aacute;ng.\r\n- DT ph&ograve;ng: 20m2 - 50m2 (c&oacute; cửa sổ - g&aacute;c lửng - c&oacute; kệ bếp - WC ri&ecirc;ng biệt).\r\n- Gi&aacute; cho thu&ecirc;: 2.2tr - 3 triệu/th&aacute;ng.\r\n\r\nChi ph&iacute; điện nước v&agrave; dịch vụ :\r\n- Điện: 3.500 KWH.\r\n- Nước: 15.000đ/m3 (nước m&aacute;y).\r\n- Giữ xe m&aacute;y: 100.000₫\r\n- R&aacute;c: 10 ngh&igrave;n/ph&ograve;ng/th&aacute;ng (khu để r&aacute;c sạch sẽ - th&ocirc;ng tho&aacute;ng).\r\nLi&ecirc;n hệ: 0936.32.32.35 (A.To&agrave;n) - 0908.296.779 (C.Ly)</pre>', '2022-04-22 08:03:07', '2022-04-19 22:13:21'),
(17, 14, 4, '123123', '123123123', 'Cho thuê phòng trọ 16', 'cho-thue-phong-tro-16', 'public/image/can-ho.jpg', 2, 123, NULL, 123, 0, NULL, '<pre>\r\nĐ/C: 70/15A NGUYỄN SỸ S&Aacute;CH, P.15,T&Acirc;N B&Igrave;NH\r\n??  tuyệt đối an ninh - y&ecirc;n tĩnh - gi&aacute; RẺ c&aacute;ch Etown Cộng H&ograve;a 7 ph&uacute;t l&aacute;i xe chỉ từ 2.2 triệu - 3 triệu/th.\r\n(Đối diện Coop Mart Trường Chinh).\r\n* Wifi - thang m&aacute;y FREE, giờ tự do.\r\nTiện &iacute;ch ưu điểm:\r\n- C&oacute; thang m&aacute;y (24/24h).\r\n- C&oacute; hệ thống camera đảm bảo an ninh tuyệt đối.\r\n- Trang bị hệ thống PCCC cả t&ograve;a nh&agrave; - hệ thống b&aacute;o ch&aacute;y từng ph&ograve;ng hiện đại.\r\n- C&oacute; hầm để xe (c&oacute; bảo vệ tr&ocirc;ng coi) - điện h&agrave;nh lang.\r\n- C&oacute; khu vực phơi đồ ri&ecirc;ng biệt rất th&ocirc;ng tho&aacute;ng.\r\n- DT ph&ograve;ng: 20m2 - 50m2 (c&oacute; cửa sổ - g&aacute;c lửng - c&oacute; kệ bếp - WC ri&ecirc;ng biệt).\r\n- Gi&aacute; cho thu&ecirc;: 2.2tr - 3 triệu/th&aacute;ng.\r\n\r\nChi ph&iacute; điện nước v&agrave; dịch vụ :\r\n- Điện: 3.500 KWH.\r\n- Nước: 15.000đ/m3 (nước m&aacute;y).\r\n- Giữ xe m&aacute;y: 100.000₫\r\n- R&aacute;c: 10 ngh&igrave;n/ph&ograve;ng/th&aacute;ng (khu để r&aacute;c sạch sẽ - th&ocirc;ng tho&aacute;ng).\r\nLi&ecirc;n hệ: 0936.32.32.35 (A.To&agrave;n) - 0908.296.779 (C.Ly)</pre>', '2022-04-22 08:01:34', '2022-04-19 22:14:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
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
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Chỉ mục cho bảng `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contract_customer`
--
ALTER TABLE `contract_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contract_info`
--
ALTER TABLE `contract_info`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `floors`
--
ALTER TABLE `floors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `building_id` (`building_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `building_id` (`building_id`),
  ADD KEY `floor_id` (`floor_id`),
  ADD KEY `slug` (`slug`(1024));

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `buildings`
--
ALTER TABLE `buildings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `contract`
--
ALTER TABLE `contract`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `contract_customer`
--
ALTER TABLE `contract_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `contract_info`
--
ALTER TABLE `contract_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `floors`
--
ALTER TABLE `floors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `admin_info`
--
ALTER TABLE `admin_info`
  ADD CONSTRAINT `admin_info_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `floors`
--
ALTER TABLE `floors`
  ADD CONSTRAINT `floors_ibfk_1` FOREIGN KEY (`building_id`) REFERENCES `buildings` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`building_id`) REFERENCES `buildings` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `rooms_ibfk_2` FOREIGN KEY (`floor_id`) REFERENCES `floors` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
