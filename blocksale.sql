-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 18, 2022 lúc 06:14 AM
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
(2, 'mevivu', '$2y$10$x1zShqnj07Y.pKVglYylUe48/qo9BT4JatUa3MH/G/30Pc8DHK5DS', '2022-04-09 23:36:46', '2022-04-09 23:36:46'),
(3, 'mevivu', '$2y$10$AWgjhIdBoofpd9Ng4UFy6uAidmp6B.O3ygweAGk4MiGpZcOdRjHoG', '2022-04-09 23:36:46', '2022-04-09 23:36:46'),
(4, 'hello', '$2y$10$RTnI8E4YrYsHlo5jLbcijOrAfsHhus0QNtpIgd6HHxUwQ0Wf7UOiq', '2022-04-09 23:42:26', '2022-04-09 23:42:26');

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
  `gender` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `admin_info`
--

INSERT INTO `admin_info` (`id`, `admin_id`, `fullname`, `email`, `phone`, `birthday`, `gender`, `address`, `updated_at`, `created_at`) VALUES
(1, 1, 'Kyosima', NULL, NULL, NULL, NULL, NULL, '2022-04-10 06:36:14', '2022-04-10 06:35:59'),
(2, 2, 'Bùi Thế Vũ', 'btvu282@gmail.com', '0335828494', NULL, 1, '998/52/15 Quang Trung, Gò vấp', '2022-04-09 23:36:46', '2022-04-09 23:36:46'),
(3, 3, 'Bùi Thế Vũ', 'btvu282@gmail.com', '0335828494', NULL, 1, '998/52/15 Quang Trung, Gò vấp', '2022-04-09 23:36:46', '2022-04-09 23:36:46'),
(4, 4, 'Kira', 'btvu282@gmail.com', '0335828494', NULL, 1, '998/52/15 Quang Trung, Gò vấp', '2022-04-09 23:42:26', '2022-04-09 23:42:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `buildings`
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
  `introduce` text DEFAULT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `buildings`
--

INSERT INTO `buildings` (`id`, `code`, `name`, `number_floor`, `address`, `owner`, `owner_phone`, `owner_email`, `note`, `introduce`, `sort`, `updated_at`, `created_at`) VALUES
(1, 'HuTHzY', 'Nguyễn Chính Hưng', 10, '28, đường số 27, phường Tân Quy', '123', '0338927456', 'nc.hung0806@gmail.com', NULL, NULL, 0, '2022-04-15 10:34:47', '2022-04-07 02:32:39'),
(2, 'HuTHzY', 'Nguyễn Chính Hưng', 9, '28, đường số 27, phường Tân Quy', '123', '0338927456', 'nc.hung0806@gmail.com', NULL, NULL, 0, '2022-04-15 10:34:51', '2022-04-07 02:32:49'),
(5, 'agFxFX', 'Kim Anh Tuấn Trần', 11, '998/42/15 quang trung, phường 8, Gò Vấp', 'Hưng', '0934177422', 'anhtuan199590@gmail.com', NULL, NULL, 0, '2022-04-15 10:34:56', '2022-04-07 21:00:46'),
(7, 'VinMart', 'VinMart', 5, 'Quang trung', 'Nguyễn Văn A', '0342909557', 'trantruong1797@gmail.com', NULL, NULL, 0, '2022-04-15 02:39:49', '2022-04-15 02:39:49'),
(8, 'Vincom', 'VinCom', 6, '440/45 Thống nhất', 'Nguyễn Văn A', '0342909557', 'ittranvantruong@gmail.com', NULL, NULL, 0, '2022-04-15 02:40:32', '2022-04-15 02:40:32'),
(11, 'DV000010', 'Aeon', 6, '954, quang trung', 'Nguyễn Văn A', '0342909557', 'trantruong1797@gmail.com', NULL, NULL, 0, '2022-04-15 02:41:58', '2022-04-15 02:41:58');

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
(1, 11, 'fsfafsaf', 'Tầng 1', '2022-04-15 10:33:15', '2022-04-15 05:14:31'),
(2, 11, 'fsfafsaf', 'Tầng 2', '2022-04-15 10:33:19', '2022-04-15 05:14:52'),
(3, 8, 't1', 'Tầng 1', '2022-04-15 10:33:19', '2022-04-15 05:14:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `building_id` int(11) NOT NULL,
  `floor_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `purpose` int(11) NOT NULL,
  `acreage` int(11) NOT NULL,
  `note` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `rooms`
--

INSERT INTO `rooms` (`id`, `code`, `name`, `building_id`, `floor_id`, `type`, `purpose`, `acreage`, `note`, `status`, `updated_at`, `created_at`) VALUES
(1, 'dsfdsf', 'P.0.1', 11, 1, 1, 500000, 60, 'note', 0, '2022-04-15 10:33:37', '2022-04-15 05:15:14'),
(2, 'dsfdsf', 'P.0.2', 11, 2, 1, 500000, 60, 'note', 2, '2022-04-15 10:33:41', '2022-04-15 05:15:19'),
(3, 'dsfdsf', 'P.0.2', 11, 2, 1, 500000, 60, 'note', 0, '2022-04-15 10:33:44', '2022-04-15 05:15:19'),
(4, 'dsfdsf', 'P.0.2', 11, 2, 1, 500000, 60, 'note', 3, '2022-04-15 10:33:49', '2022-04-15 05:15:19'),
(5, 'p1', 'P.0.1', 8, 3, 1, 1000000, 60, 'note', 2, '2022-04-15 10:37:42', '2022-04-15 05:15:19');

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
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `floors`
--
ALTER TABLE `floors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `building_id` (`building_id`);

--
-- Chỉ mục cho bảng `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `building_id` (`building_id`),
  ADD KEY `floor_id` (`floor_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `buildings`
--
ALTER TABLE `buildings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `floors`
--
ALTER TABLE `floors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `floors`
--
ALTER TABLE `floors`
  ADD CONSTRAINT `floors_ibfk_1` FOREIGN KEY (`building_id`) REFERENCES `buildings` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

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
