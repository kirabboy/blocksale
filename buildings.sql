-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th4 18, 2022 lúc 09:52 AM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `server33_blocksale`
--

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

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `buildings`
--
ALTER TABLE `buildings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
