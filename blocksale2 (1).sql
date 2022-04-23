-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 21, 2022 lúc 05:35 AM
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
-- Cơ sở dữ liệu: `blocksale2`
--

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
-- Cấu trúc bảng cho bảng `rooms`
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
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `rooms`
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
(14, 'CH-123', 'P1', 13, 4, 1, 10000000, NULL, 50, NULL, 0, '2022-04-19 01:27:08', '2022-04-19 01:27:08'),
(15, 'thang3123', '123', 13, 4, 1, 123, NULL, 123, NULL, 0, '2022-04-19 22:13:03', '2022-04-19 22:13:03'),
(16, 'thang3123', '123', 13, 6, 1, 123, NULL, 123, NULL, 0, '2022-04-19 22:13:21', '2022-04-19 22:13:21'),
(17, '123123', '123123123', 13, 4, 2, 123, NULL, 123, NULL, 0, '2022-04-19 22:14:39', '2022-04-19 22:14:39');

--
-- Chỉ mục cho các bảng đã đổ
--

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
-- AUTO_INCREMENT cho bảng `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Các ràng buộc cho các bảng đã đổ
--

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
