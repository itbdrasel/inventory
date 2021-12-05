-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2021 at 05:04 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'af4004VIKC9dOUrkENtOVANr7QQOBGzX', 1, '2021-01-14 21:55:21', '2021-01-14 21:55:21', '2021-01-14 21:55:21'),
(2, 2, 'XeYQs454WXtpgGeMQSuMAyWjcEBoJj76', 1, '2021-01-14 21:56:19', '2021-01-14 21:56:19', '2021-01-14 21:56:19'),
(3, 3, 'QB3iuaed0FFwCSrKpljve1RsIHMhN0ye', 1, '2021-01-14 23:15:32', '2021-01-14 23:15:32', '2021-01-14 23:15:32'),
(4, 4, '19ugfWmSByo1loHvO4ltuhKVtKJyAgkA', 1, '2021-01-14 23:16:26', '2021-01-14 23:16:26', '2021-01-14 23:16:26'),
(5, 5, 'id3ILzb8UzIJ4MeO9Q0KNu0H4dzLQ13g', 1, '2021-01-15 18:04:33', '2021-01-15 18:04:33', '2021-01-15 18:04:33'),
(6, 6, 'WP0SDPMjxgCPiViyZqypRbA3FHDwingM', 1, '2021-01-15 18:37:06', '2021-01-15 18:37:06', '2021-01-15 18:37:06'),
(7, 7, 'Y7bgU4bx4CXU4RRHwZloUGWwP7wbjQlz', 1, '2021-01-15 21:01:31', '2021-01-15 21:01:31', '2021-01-15 21:01:31'),
(8, 8, 'V85m5nRuCso4O2fNrHvBwzymjmFpV9ci', 1, '2021-01-15 23:23:41', '2021-01-15 23:23:41', '2021-01-15 23:23:41'),
(9, 12, '8EYjlY7Dl2T4guGm5rHtnDCtNnArBV06', 1, '2021-01-15 23:38:15', '2021-01-15 23:38:15', '2021-01-15 23:38:15'),
(10, 13, 'TyUWdKttdSwDGOXWMdqzwyZtvzpbUG8E', 1, '2021-01-15 23:58:24', '2021-01-15 23:58:24', '2021-01-15 23:58:24'),
(11, 14, '5WupcpiCxdIwsEZ03fopt0O0qND14sE1', 1, '2021-01-16 00:12:37', '2021-01-16 00:12:37', '2021-01-16 00:12:37'),
(12, 15, 'CJIl50EcNl8PrOEzIGi4KONvOZIJmewd', 1, '2021-01-16 00:40:32', '2021-01-16 00:40:32', '2021-01-16 00:40:32'),
(13, 16, '7xDnQbgsQ2sFa036uyYSYOdhhdhCTSN4', 1, '2021-01-16 00:41:24', '2021-01-16 00:41:24', '2021-01-16 00:41:24'),
(14, 17, 'CbQiIbM1ENOBr3cHXhmrPjtlaUR07e85', 1, '2021-01-17 18:03:38', '2021-01-17 18:03:38', '2021-01-17 18:03:38'),
(15, 18, 'FC7aWozq9WZOikzqWC7mXm4JM3jYEDkW', 1, '2021-01-17 18:15:43', '2021-01-17 18:15:43', '2021-01-17 18:15:43'),
(16, 19, 'Uyz9ZQ34oiFOIFscKBSig9MVRGiESCAl', 1, '2021-01-17 18:16:09', '2021-01-17 18:16:09', '2021-01-17 18:16:09'),
(17, 20, 'wVY7jbvsBDOuxPcBc4PLWe4R8R4y39ll', 1, '2021-01-17 18:32:52', '2021-01-17 18:32:52', '2021-01-17 18:32:52'),
(18, 21, 'UniTWSbijOimgCA7Tfq6PNmYYDHmdyFr', 1, '2021-01-17 18:36:02', '2021-01-17 18:36:02', '2021-01-17 18:36:02'),
(19, 22, 'nbVNNok47okD9RNRqUc16ThtUxfvCkCh', 1, '2021-01-17 18:36:16', '2021-01-17 18:36:16', '2021-01-17 18:36:16'),
(20, 23, 'aQt3e8uANXw3ogrSbEdWyxRyqFfVycJL', 1, '2021-01-18 09:06:06', '2021-01-18 09:06:06', '2021-01-18 09:06:06'),
(21, 24, 'q607tFCsWx3PF0qISnsJS0OdZGDmZAbE', 1, '2021-01-18 09:06:39', '2021-01-18 09:06:39', '2021-01-18 09:06:39'),
(22, 25, 'bnZ7qk0sqnr62PQgoRXbztatcW93Pi2t', 1, '2021-01-18 09:07:05', '2021-01-18 09:07:05', '2021-01-18 09:07:05'),
(23, 26, 'Y9mvGhW8EQXB6ZpOZRCHtoux5rsZnLm4', 1, '2021-01-18 09:07:20', '2021-01-18 09:07:20', '2021-01-18 09:07:20'),
(24, 27, 'ITdXN6CpssxRNSThxQ4nfePjGMKtabcT', 1, '2021-01-24 01:24:02', '2021-01-24 01:24:02', '2021-01-24 01:24:02'),
(25, 28, 'DCXFnfjc6dCAAAjgZ6eyjsGJJTn0EoWW', 1, '2021-01-24 01:27:06', '2021-01-24 01:27:06', '2021-01-24 01:27:06'),
(26, 29, 'HLP0nlh7oCCRHwHD5XcfGVaQ17ZZw4l2', 1, '2021-01-24 01:28:23', '2021-01-24 01:28:23', '2021-01-24 01:28:23'),
(27, 30, 'cuwI6uSQGqULRJ3wUIIp5ykUQwqhr5Rv', 1, '2021-01-24 01:29:01', '2021-01-24 01:29:01', '2021-01-24 01:29:01'),
(28, 35, '2VnhOKZWOt4uTMyt71eCLkxDcBPVZJTi', 1, '2021-04-06 11:10:41', '2021-04-06 11:10:41', '2021-04-06 11:10:41'),
(29, 36, 'qx03jUybZ40EannphAO341ekJyHeXJ2c', 1, '2021-04-06 11:12:15', '2021-04-06 11:12:15', '2021-04-06 11:12:15'),
(30, 37, '1jhsCiVT8FEWmeBWdmbvFn0M9A4DN9fN', 1, '2021-04-11 05:15:46', '2021-04-11 05:15:46', '2021-04-11 05:15:46'),
(31, 38, 'EpFmtExvZoMiVMzJNyJQjt77gM1Et9R3', 1, '2021-04-11 05:30:41', '2021-04-11 05:30:41', '2021-04-11 05:30:41'),
(32, 39, 'UdDuNc4KogYB0clx7RjzqjOZnnPuIz8L', 1, '2021-04-11 05:33:47', '2021-04-11 05:33:47', '2021-04-11 05:33:47'),
(33, 40, 'SdHAiJ6oNfWfvSxcSjIuY3gYf4c2eRYv', 1, '2021-04-11 05:35:40', '2021-04-11 05:35:40', '2021-04-11 05:35:40'),
(34, 41, 'mcJchXqgOkKf1jYqdbZiwcACfCWlIcLK', 1, '2021-04-11 05:49:29', '2021-04-11 05:49:29', '2021-04-11 05:49:29'),
(35, 42, 'IzmL302JA2XuMkXhHjVoCBRSAa2PkDzv', 1, '2021-06-05 18:28:12', '2021-06-05 18:28:12', '2021-06-05 18:28:12'),
(36, 43, 'unb6JLkSfpthasHS6PC3nOlaSqMjBJmc', 1, '2021-06-05 18:28:50', '2021-06-05 18:28:50', '2021-06-05 18:28:50'),
(37, 44, 'rxprV8Lp7dAeSEnKC7xgrfkQtUIMd3qc', 1, '2021-06-05 18:29:10', '2021-06-05 18:29:10', '2021-06-05 18:29:10'),
(38, 45, 'LXMAvnIkV8FbyeqnYbqHI6VnnUkzMHqE', 1, '2021-06-05 18:29:41', '2021-06-05 18:29:41', '2021-06-05 18:29:41'),
(39, 46, 'koYP7sSuY0OXJO4J1PAOdBx6CHwMxyQx', 1, '2021-06-15 01:48:06', '2021-06-15 01:48:06', '2021-06-15 01:48:06'),
(40, 47, 'NXMFFo7MUoPnWcepz6B8eBxRxOP5ujhn', 1, '2021-06-15 01:48:48', '2021-06-15 01:48:48', '2021-06-15 01:48:48'),
(41, 48, 'X09sl7ed5Gj8vCfGIOMHH7DF9Cgkd9oo', 1, '2021-06-16 16:43:59', '2021-06-16 16:43:59', '2021-06-16 16:43:59'),
(42, 49, 'kegwgZkhIycZzgx8DtWkV2xV0Ve9wLIU', 1, '2021-06-16 16:44:22', '2021-06-16 16:44:22', '2021-06-16 16:44:22'),
(43, 50, 'weNhF3gnjjC7VBrGicYFQGSC0909WRXP', 1, '2021-06-16 16:46:28', '2021-06-16 16:46:28', '2021-06-16 16:46:28'),
(44, 51, 'UGio9vCpfSmKSqRmPekbLcX5tEvF53wW', 1, '2021-06-16 16:46:51', '2021-06-16 16:46:51', '2021-06-16 16:46:51'),
(45, 52, '1jG7ftZoleDO0jfgVEkwJ8m9TBFuHT97', 1, '2021-06-22 04:04:29', '2021-06-22 04:04:29', '2021-06-22 04:04:29'),
(46, 53, 'RgmQZ7L0GziT4pIgMQmC2ja1leiLgImU', 1, '2021-06-22 08:27:22', '2021-06-22 08:27:22', '2021-06-22 08:27:22'),
(47, 54, 'sVfjiwm2CvdHWv6P9I86ejhGKtSXgtoX', 1, '2021-06-22 08:30:26', '2021-06-22 08:30:26', '2021-06-22 08:30:26'),
(48, 55, '8prTHJh2gGzejWTU7oeVikRy6ncGgkML', 1, '2021-06-22 08:30:57', '2021-06-22 08:30:57', '2021-06-22 08:30:57'),
(49, 56, '9MJv8ti41gJM2e6syO4voHibBw529RB3', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', '2021-06-22 08:32:31'),
(50, 57, 'uek0I1aWD50ctI46KZ0eSS3nwEZOOtNv', 1, '2021-06-22 08:33:21', '2021-06-22 08:33:21', '2021-06-22 08:33:21'),
(51, 58, 'fSwE81gQZl6bsHMUSV4Qxxqvb5SbErBr', 1, '2021-06-22 08:34:37', '2021-06-22 08:34:37', '2021-06-22 08:34:37'),
(52, 59, 'LSAhhjKLyrkl7oIpyhASWaa63PKZBEov', 1, '2021-06-22 08:35:10', '2021-06-22 08:35:10', '2021-06-22 08:35:10'),
(53, 60, '3edmQswFalYpNY4ELlgwOpLka79Xw6bh', 1, '2021-06-22 08:37:01', '2021-06-22 08:37:01', '2021-06-22 08:37:01'),
(54, 61, 'Bib4Kr4slvL16j7Jv8YUDb83a8DEy1r3', 1, '2021-06-22 08:37:45', '2021-06-22 08:37:45', '2021-06-22 08:37:45'),
(55, 62, 'qYz4LzVwr246LV9cB9k8vcRuDomO542B', 1, '2021-06-22 08:39:29', '2021-06-22 08:39:29', '2021-06-22 08:39:29'),
(56, 63, 'sAjAGiI9xvqSqqh473bkQk9DxKZislBD', 1, '2021-06-22 08:41:50', '2021-06-22 08:41:50', '2021-06-22 08:41:50'),
(57, 64, 'gVXGy2MREYe9GpgKyXoMLeyTrkAwhSV0', 1, '2021-06-22 08:43:14', '2021-06-22 08:43:14', '2021-06-22 08:43:14'),
(58, 65, 'FxIUFrF2TdhzWI774quUgGuG1oNQ51kc', 1, '2021-06-22 08:43:46', '2021-06-22 08:43:46', '2021-06-22 08:43:46'),
(59, 66, 'IyWwbzMVumVx7zsCLaB0mLb7dqrJN28e', 1, '2021-06-22 08:45:23', '2021-06-22 08:45:23', '2021-06-22 08:45:23'),
(60, 67, 'A3aoyGaJuuXxtmDF7YoUhpQkS1H3lchI', 1, '2021-06-22 08:45:51', '2021-06-22 08:45:51', '2021-06-22 08:45:51'),
(61, 68, 'gpcgEnVOO3fx8t73IuRvMeTmTyrjqcOE', 1, '2021-06-22 08:47:21', '2021-06-22 08:47:21', '2021-06-22 08:47:21'),
(62, 69, '5Uq5tk5i1xrc2aTIXbgRGZUQMDKpxL29', 1, '2021-06-22 08:47:57', '2021-06-22 08:47:57', '2021-06-22 08:47:57'),
(63, 70, 'AvLd38j0lzxzxe0ZBwwFPcC4AFJ0hwnA', 1, '2021-06-22 08:49:53', '2021-06-22 08:49:53', '2021-06-22 08:49:53'),
(64, 71, 'X7TDoykZapXdzZQPwHMJWsviGPOQeYCm', 1, '2021-06-22 08:50:27', '2021-06-22 08:50:27', '2021-06-22 08:50:27'),
(65, 72, 'xjY4xoMFDiT9xAncEeI7HQL9vcqO5jG1', 1, '2021-06-22 08:51:34', '2021-06-22 08:51:34', '2021-06-22 08:51:34'),
(66, 73, 'YWe1upxOmggmniWkPVFjMHuzROSf6OtN', 1, '2021-06-22 08:52:13', '2021-06-22 08:52:13', '2021-06-22 08:52:13'),
(67, 74, 'f2Jenjdt6pl8oUJcCGacDtmZ0LwCL1GV', 1, '2021-06-22 08:53:47', '2021-06-22 08:53:47', '2021-06-22 08:53:47'),
(68, 75, 'Xhr4xoMfuPpH4YijQ6mdaLE5XPSbOtxv', 1, '2021-06-22 08:54:33', '2021-06-22 08:54:33', '2021-06-22 08:54:33'),
(69, 76, 'ToNG8fMFftFamMLRiFzKVuFryO2N2fLP', 1, '2021-06-22 08:56:03', '2021-06-22 08:56:03', '2021-06-22 08:56:03'),
(70, 77, 'x8hyXBHUSqtFaitcCRhkWzb0wIS3AEBn', 1, '2021-06-22 08:56:35', '2021-06-22 08:56:35', '2021-06-22 08:56:35'),
(71, 78, 'LSvPWWkFNZodT7WUd5tqwIomEpEIG5ak', 1, '2021-06-22 08:58:11', '2021-06-22 08:58:11', '2021-06-22 08:58:11'),
(72, 79, 'm2TXbsAjHycIK6g11PxJDfWwtdOEJEYN', 1, '2021-06-22 08:58:44', '2021-06-22 08:58:44', '2021-06-22 08:58:44'),
(73, 80, 'tXy4wiGUymy1O2tg9AeWsZmaEMEGME8O', 1, '2021-06-22 08:59:45', '2021-06-22 08:59:45', '2021-06-22 08:59:45'),
(74, 81, 'TYkooN5P9T3tNC2by3EKr77v9HjyxVFk', 1, '2021-06-22 09:00:12', '2021-06-22 09:00:12', '2021-06-22 09:00:12'),
(75, 82, 'Ji2puHmaXU05Ds2jFE9bAxvvkj7vFnpv', 1, '2021-07-11 19:03:28', '2021-07-11 19:03:28', '2021-07-11 19:03:28'),
(76, 83, 'SmqOJuN0oboNAOatRVyn0VKkr3PFVxtY', 1, '2021-07-11 19:03:46', '2021-07-11 19:03:46', '2021-07-11 19:03:46'),
(77, 84, 'lG8vmRGUvvPZoE7CnZ8vdIIVPp7mJM30', 1, '2021-07-11 19:04:03', '2021-07-11 19:04:03', '2021-07-11 19:04:03'),
(78, 85, 'ywYWd2DCXY6ZhVFwTdgJablyIe7jCdzk', 1, '2021-07-11 19:04:52', '2021-07-11 19:04:52', '2021-07-11 19:04:52'),
(79, 86, 'dBm5kBpNODH76S8dUgjDGcSe7gCN6Sum', 1, '2021-08-17 18:52:32', '2021-08-17 18:52:32', '2021-08-17 18:52:32'),
(80, 87, 'kWR9QVYgv2urWcKo0jdTLCDoFmT3ZESp', 1, '2021-08-25 15:51:13', '2021-08-25 15:51:13', '2021-08-25 15:51:13'),
(81, 88, '2qNUQXl7Amp82ObW4h4n6F7PGftZ3ANu', 1, '2021-08-30 01:33:32', '2021-08-30 01:33:32', '2021-08-30 01:33:32'),
(82, 89, 'xE3bHytcoUceIbfJjUFk2WJ7IAl92fDb', 1, '2021-09-01 08:21:41', '2021-09-01 08:21:41', '2021-09-01 08:21:41'),
(83, 90, 'UtwQFKJDksxH46vBDRe5SygiZuftREFS', 1, '2021-10-03 12:57:39', '2021-10-03 12:57:39', '2021-10-03 12:57:39');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_brands`
--

CREATE TABLE `inv_brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent` bigint(20) NOT NULL DEFAULT 0,
  `category_id` bigint(20) DEFAULT NULL,
  `supplier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_categories`
--

CREATE TABLE `inv_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) NOT NULL DEFAULT 0,
  `mode` tinyint(4) NOT NULL DEFAULT 1,
  `used_id` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inv_categories`
--

INSERT INTO `inv_categories` (`id`, `name`, `parent`, `mode`, `used_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Test', 0, 1, 1, 1, '2021-11-23 11:32:42', '2021-11-24 10:38:19'),
(3, 'Test 2', 1, 2, 1, 1, '2021-11-23 11:46:38', '2021-11-24 11:02:11'),
(4, 'Test 3', 3, 3, 1, 1, '2021-11-24 10:39:14', '2021-11-24 11:02:11');

-- --------------------------------------------------------

--
-- Table structure for table `inv_origins`
--

CREATE TABLE `inv_origins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `origin_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_packs`
--

CREATE TABLE `inv_packs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pack_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pack_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_products`
--

CREATE TABLE `inv_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sell_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `alert_quantity` double DEFAULT NULL,
  `product_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` bigint(20) DEFAULT NULL,
  `pack_id` int(11) DEFAULT NULL,
  `origin_id` int(11) DEFAULT NULL,
  `image` int(11) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `discount_status` tinyint(4) NOT NULL DEFAULT 1,
  `vat_status` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inv_products`
--

INSERT INTO `inv_products` (`id`, `category_id`, `product_name`, `product_code`, `product_sku`, `product_unit`, `sell_unit`, `purchase_unit`, `unit_price`, `quantity`, `alert_quantity`, `product_type`, `brand_id`, `pack_id`, `origin_id`, `image`, `expiry_date`, `user_id`, `discount_status`, `vat_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'New', '545454', NULL, NULL, 'fdf', NULL, '88', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30', 1, 1, 1, 1, '2021-11-29 13:18:26', '2021-12-01 11:37:47');

-- --------------------------------------------------------

--
-- Table structure for table `inv_product_pr`
--

CREATE TABLE `inv_product_pr` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `qty` double NOT NULL DEFAULT 0,
  `pr_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=request, 2= received, 3=Cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_product_warehouse`
--

CREATE TABLE `inv_product_warehouse` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `qty` double NOT NULL DEFAULT 0,
  `requisition_status` tinyint(2) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_suppliers`
--

CREATE TABLE `inv_suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorized` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_units`
--

CREATE TABLE `inv_units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unit_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_warehouses`
--

CREATE TABLE `inv_warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inv_warehouses`
--

INSERT INTO `inv_warehouses` (`id`, `name`, `phone`, `address`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Warehouse 1', NULL, NULL, 1, NULL, NULL),
(2, 'Warehouse 2', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inv_warehouse_pr`
--

CREATE TABLE `inv_warehouse_pr` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `pr_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=request, 2= received, 3=Cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2021_10_23_174235_create_users_table', 1),
(3, '2021_10_23_175355_create_roles_table', 1),
(4, '2021_10_23_175806_create_role_users_table', 1),
(5, '2021_10_23_180615_create_tbl_module_sections_table', 1),
(6, '2021_10_23_180929_create_persistences_table', 1),
(7, '2021_10_23_181129_create_activations_table', 1),
(8, '2021_10_23_181711_create_password_resets_table', 1),
(9, '2021_10_23_183552_create_throttle_table', 1),
(11, '2021_11_21_184921_create_inv_categories_table', 2),
(13, '2021_11_24_173751_create_module_name_table', 3),
(14, '2021_11_25_173958_create_inv_products_table', 4),
(15, '2021_11_29_173700_create_inv_units_table', 4),
(16, '2021_11_29_174203_create_inv_brands_table', 4),
(17, '2021_11_29_175014_create_inv_packs_table', 4),
(18, '2021_11_29_175158_create_inv_origins_table', 4),
(19, '2021_11_29_175343_create_inv_suppliers_table', 4),
(20, '2021_12_03_063304_create_inv_warehouses_table', 5),
(21, '2021_12_03_063449_create_inv_product_warehouse_table', 5),
(22, '2021_12_05_032450_create_inv_product_pr_table', 6),
(23, '2021_12_05_033555_create_inv_warehouse_pr_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `module_name`
--

CREATE TABLE `module_name` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `module_name`
--

INSERT INTO `module_name` (`id`, `name`, `module_code`, `module_url`, `created_at`, `updated_at`) VALUES
(1, 'system', 'system', NULL, NULL, NULL),
(2, 'Inventory', 'inv', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 1 COMMENT '1=Admin, 2= Frontend ',
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `persistences`
--

CREATE TABLE `persistences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `persistences`
--

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(2, 2, 'mOcxEKkizYQkav4K6h7mlKoR8JtCimcQ', '2021-01-14 22:17:09', '2021-01-14 22:17:09'),
(4, 2, 'LYE9f1KnXvrkypqyQCkm0GAkfSzvrgvk', '2021-01-14 22:21:57', '2021-01-14 22:21:57'),
(8, 1, 'GKBbbh80jkldjiRz0hXTootLkyNJpO6j', '2021-01-15 18:36:06', '2021-01-15 18:36:06'),
(24, 16, 'GdW8LKQAozN5RQT1IoPwDBjWzMY9AurF', '2021-01-16 00:59:05', '2021-01-16 00:59:05'),
(28, 16, 'NVdHbTgs5xc0pVsMAd09rehTftjt4Hmb', '2021-01-16 05:40:20', '2021-01-16 05:40:20'),
(30, 6, 'hwsA5tkZiJehdvbOEqucb64T7PemupXj', '2021-01-17 17:14:11', '2021-01-17 17:14:11'),
(31, 6, 'c4y2oJXTo0t3ZvqwhbqgOAEICmnA28bu', '2021-01-17 17:22:33', '2021-01-17 17:22:33'),
(32, 6, 'tbf19OtjAtHb3z8IgDqrkmLLiPplrZMc', '2021-01-17 21:20:00', '2021-01-17 21:20:00'),
(35, 6, '80Ev6oWiDtS4aoU0Yylt4XEBYagUyWMR', '2021-01-18 09:43:21', '2021-01-18 09:43:21'),
(40, 23, 'V3W6pT9KOrVGxIRwKUvsJ0QkUwjaqQ6N', '2021-01-19 04:53:57', '2021-01-19 04:53:57'),
(58, 6, 'IgYoyVFwfH55hj8flX0jyYFQkVk1fGFA', '2021-01-19 19:38:35', '2021-01-19 19:38:35'),
(61, 6, '33NUPlLJo8ZNYUIoMrT95ZqhiDgfJhTy', '2021-01-20 10:53:20', '2021-01-20 10:53:20'),
(63, 6, 'W5bOb7CNFAFkEmBRrfomBdqyKv9IDgCk', '2021-01-20 22:46:34', '2021-01-20 22:46:34'),
(64, 6, 'zfjZ7Cc5m3yQqnb7u3HmunRaV3Plbsan', '2021-01-21 04:48:12', '2021-01-21 04:48:12'),
(65, 6, 'BTiv9xXDy4bldojM5h86Rd8hc7BhIYlG', '2021-01-22 22:55:49', '2021-01-22 22:55:49'),
(68, 6, 'h0S0TrFkXkVvuAm2EdHOW2DsQyNS8mc2', '2021-01-23 05:40:16', '2021-01-23 05:40:16'),
(69, 6, 'LrBQ7xOUQcOK0KE1YOquJJ3gHFxwwelp', '2021-01-23 23:19:36', '2021-01-23 23:19:36'),
(71, 6, 'IRtQTCCEBTdqXhjIB9ZTpCe799MTB3o8', '2021-01-24 05:52:10', '2021-01-24 05:52:10'),
(72, 6, '2hgQmdGcdSolOgDQJteeI6cypy8cJizR', '2021-01-24 23:09:14', '2021-01-24 23:09:14'),
(73, 6, 'uMAJT8TBSF9sBqKLDCCoZplVVORwwUiM', '2021-01-27 05:15:11', '2021-01-27 05:15:11'),
(75, 6, 'YgmmDP3FbtkVgcNu1j78RlE1AzsCBWXB', '2021-01-27 08:15:50', '2021-01-27 08:15:50'),
(76, 6, '1xTuzz2Nzbl5AzndLxsZR8wfDY7OtODc', '2021-01-27 23:33:33', '2021-01-27 23:33:33'),
(77, 6, 'Y7z7XFG6A6zXAWthf0KkuhdT4DDZ7NAI', '2021-01-28 02:48:51', '2021-01-28 02:48:51'),
(78, 6, 'AtC0kSXjsdgUOR1VIFeRmEqPdsMX9eUZ', '2021-01-29 23:33:17', '2021-01-29 23:33:17'),
(79, 6, 't32FPCMj0myuj9XMlbNHRYFbpQTDWYa0', '2021-01-30 03:28:52', '2021-01-30 03:28:52'),
(80, 6, 'IQJRDKdRRYWxdN3DzmRIuu6xG4MPj5jQ', '2021-01-30 22:59:44', '2021-01-30 22:59:44'),
(83, 6, 'yAa4B4WQIjZpQ0YZ05DcjVlWmhaaLgUG', '2021-02-01 07:53:28', '2021-02-01 07:53:28'),
(84, 6, 'beG2D1R0L9BY7x8U8OkCmggdWO4y2ECK', '2021-02-01 23:14:11', '2021-02-01 23:14:11'),
(85, 6, 'EzBjj2XWzrKlHy7K1fbUn2nPPK4WsW5x', '2021-02-02 23:31:11', '2021-02-02 23:31:11'),
(86, 6, '96iESDVvAU7lm3qMZrK362YRhl87AqLP', '2021-02-03 09:00:16', '2021-02-03 09:00:16'),
(87, 6, '7qiFlbnoj0A2d1Mpb9vMmyKpMcfk9Eb4', '2021-02-03 23:06:37', '2021-02-03 23:06:37'),
(88, 6, 'QJVGxG3TYnGu3AHEr0EoPnq7AAmeQqAM', '2021-02-05 23:04:33', '2021-02-05 23:04:33'),
(89, 6, 'VhniZxpUOB4OAxhFgsEAtY2rDuHpOPxh', '2021-02-07 05:43:02', '2021-02-07 05:43:02'),
(90, 6, 'Lqb892QwFw5ZkmLXlAyImqC4hi579c1P', '2021-02-07 10:39:50', '2021-02-07 10:39:50'),
(91, 6, 'Z9RfAGpZaJvYxYFOVL0ulcmR8AucQ2Wv', '2021-02-08 04:59:04', '2021-02-08 04:59:04'),
(92, 6, 'ZBQvFbyUpUZTqrbIAH9qWYNoqF6t1uN5', '2021-02-09 05:18:20', '2021-02-09 05:18:20'),
(95, 6, 'Smxj6FtKkSs4YjKq3Zh2rmlY7aZlqJeU', '2021-02-10 08:40:54', '2021-02-10 08:40:54'),
(96, 6, '4VJsYXH425tgoRyHZi6tnwF51Az62iRb', '2021-02-11 05:47:49', '2021-02-11 05:47:49'),
(97, 6, 'mbqxkLsfvjgQoIF4DtjtISIvzZZlVOqt', '2021-02-11 10:17:30', '2021-02-11 10:17:30'),
(98, 6, 'XZlQMNqOuEUumxvXpLyPtXiCfnWMvKII', '2021-02-11 12:17:55', '2021-02-11 12:17:55'),
(99, 6, 'ZsJMhJWTn4UPrxhTsNOqQI9QM0DEMHe5', '2021-02-13 04:35:55', '2021-02-13 04:35:55'),
(100, 6, 'FQg4E3qti38LaN8RdtQxMB33VBSYSZob', '2021-02-13 10:45:40', '2021-02-13 10:45:40'),
(101, 6, 'JazInljZ5VEWIawa2YnjE04vgaZIAJOT', '2021-02-14 05:12:27', '2021-02-14 05:12:27'),
(102, 6, 'lo0ARBSxWEwbLni36O3HrrdUUS3vw57v', '2021-02-15 06:02:36', '2021-02-15 06:02:36'),
(103, 6, 'NNuwpCo69xDzc9yAjMsyg5QfwkfAANrg', '2021-02-15 06:41:15', '2021-02-15 06:41:15'),
(104, 6, 'Zc0QHoxgY6H97z05wgIgZ30UuZLdCSKL', '2021-02-16 07:27:25', '2021-02-16 07:27:25'),
(105, 6, 'KtzLwwLtxykyKvKdNbhaFtM1lPeX4oI9', '2021-02-17 05:25:18', '2021-02-17 05:25:18'),
(106, 6, 'qu9BOEwyqYHwTwbVI8dwRJYnovaWxkzL', '2021-02-17 11:49:08', '2021-02-17 11:49:08'),
(107, 6, 'Irz0zxutoB5BEMjyj9SsNOYOzR6flkG7', '2021-02-18 05:20:52', '2021-02-18 05:20:52'),
(108, 6, 'J7SXxCADQ3mAuNLeE6LjwTfaCpcGJ0PK', '2021-02-20 04:42:03', '2021-02-20 04:42:03'),
(109, 6, 'tY1uqY8jbcLRYU2BWx9ocP3lZeXWGQdC', '2021-02-22 05:18:43', '2021-02-22 05:18:43'),
(110, 6, 'vCAVmg7a7Gg74zluaPNRgl5SjjMxYO2k', '2021-02-23 05:28:50', '2021-02-23 05:28:50'),
(111, 6, 'x0lZUzjUjOH3XUoipZPlwSpwejBXSpvL', '2021-02-24 05:35:23', '2021-02-24 05:35:23'),
(112, 6, 'qZQIUn1Me0FwVGIlWMRbqBzDpfO2CZOV', '2021-02-24 12:31:44', '2021-02-24 12:31:44'),
(113, 6, 'vj9lhU1TsJX0n8QgGZ1s2sPMZCSrWXO3', '2021-02-25 05:11:49', '2021-02-25 05:11:49'),
(114, 6, 'FQLhP4bWLBZ19qGiWuG7AWSjQzlGYLDy', '2021-02-25 07:12:28', '2021-02-25 07:12:28'),
(116, 6, 'OwpCVStuGJfyY9ENFs2l5vYFXSIyBLth', '2021-02-27 15:57:07', '2021-02-27 15:57:07'),
(117, 6, 'nmU12edH4CvmQ9PgpQyNPYQ3lGPWd1CF', '2021-02-28 05:26:16', '2021-02-28 05:26:16'),
(118, 6, 'BsEM4RLPIvA5OwGFk6kEcvhFUx7VyIBq', '2021-03-01 05:20:19', '2021-03-01 05:20:19'),
(119, 6, 'VOa5NJx1ZmfCwww8Gx57z5sOcAuMTJKp', '2021-03-02 05:21:17', '2021-03-02 05:21:17'),
(120, 6, '4dQtgUI3NAcDaJ2372NSgEvh2sALgXJC', '2021-03-02 09:55:30', '2021-03-02 09:55:30'),
(121, 6, 'vesJbwssF2iVRcReAda3WH1YqRNGw6c5', '2021-03-03 05:50:29', '2021-03-03 05:50:29'),
(122, 6, 'QAv7iayBcaLxwV3EwDrHk6HyIYblfgsY', '2021-03-04 05:23:30', '2021-03-04 05:23:30'),
(123, 6, 'zjHFXvjOcFrY9A6ribaqKFH1uzVFoSe5', '2021-03-06 05:02:26', '2021-03-06 05:02:26'),
(124, 6, 'sR4VD0SHbws6qN2q870yllv6n1WiRICc', '2021-03-07 05:37:35', '2021-03-07 05:37:35'),
(125, 6, '0HwzRb6WYSIp7uxe2nd6Dp1QjVbdt0oy', '2021-03-08 05:55:38', '2021-03-08 05:55:38'),
(126, 6, 'slB3QSLJOdMlwxrrfAcBNxe1nyV1r2PW', '2021-03-08 10:59:43', '2021-03-08 10:59:43'),
(127, 6, 'kCMal1Q5nkchq8sFpU0ePfQk6VbC3p9R', '2021-03-08 13:29:31', '2021-03-08 13:29:31'),
(131, 6, 'zv1Myg61YiRdFnNVZzuXdMNwtpAEQ85j', '2021-03-09 05:32:32', '2021-03-09 05:32:32'),
(132, 6, 'Xx1RmsdoohoaESH846kiR9l7F5yypqEO', '2021-03-10 04:53:25', '2021-03-10 04:53:25'),
(133, 6, 'InIdvwKQZ54O1ocWRtr89KGOuTlgvnTt', '2021-03-10 12:43:11', '2021-03-10 12:43:11'),
(134, 6, 'oiGn99ZPlm2w6msxHLtd2OdKPuABKjHy', '2021-03-11 04:44:47', '2021-03-11 04:44:47'),
(137, 6, 'tdJvwswO9sWRTQ80os7IWBPnVtGakxV1', '2021-03-13 13:02:49', '2021-03-13 13:02:49'),
(138, 6, 'jjlgTCLF66s3e3aDfo1HZ11CGcrxySg1', '2021-03-14 05:21:42', '2021-03-14 05:21:42'),
(139, 6, 'HigAss9ogPorQ8bajcAlaN6tV0CcuY75', '2021-03-15 05:08:56', '2021-03-15 05:08:56'),
(142, 6, 'iSuDX5e7Ea6h5TN8eXkU7gsbP4zrbfkM', '2021-03-16 13:16:58', '2021-03-16 13:16:58'),
(144, 6, 'LirKLVGasfoxRCXOqiFxLxbgFz4TgiU9', '2021-03-17 05:58:46', '2021-03-17 05:58:46'),
(146, 6, 'ioDMhNhbwof5yb3enrJYBELQzjOxgb3t', '2021-03-17 13:02:09', '2021-03-17 13:02:09'),
(148, 6, 'tfZvaZOZQEf1JMooCt6hTn7nycNj5dzD', '2021-03-18 12:19:26', '2021-03-18 12:19:26'),
(149, 6, 'kWWSNDORx2oWIzSSRPBYGmSpc9Lzufx0', '2021-03-19 06:14:08', '2021-03-19 06:14:08'),
(150, 6, 'jo3J00laeoDpNIx5ovvsiDflqG5OfFz2', '2021-03-20 05:45:36', '2021-03-20 05:45:36'),
(158, 6, 'jyuLk8YqQ2LGTIgBpHa8X3PZy6e0HmVT', '2021-03-21 13:48:48', '2021-03-21 13:48:48'),
(161, 6, 'xaovNihYzliRr0vlyao9LzyuE7arLY1u', '2021-03-22 13:12:43', '2021-03-22 13:12:43'),
(162, 6, '92VB3aZzHxaXKpSfyhLCtjBXsvl2paLO', '2021-03-23 05:56:15', '2021-03-23 05:56:15'),
(163, 6, 'wZoqnK9woDwNq6cP4Nhiw22qHDgKqDjH', '2021-03-23 10:08:17', '2021-03-23 10:08:17'),
(164, 6, 'cXWJYPzpfnNsCDm40Iuh5IFat6W1HCht', '2021-03-24 05:31:13', '2021-03-24 05:31:13'),
(165, 6, 'kAZpEkTPMoR9ZqxphjrKbAzNP3EcBrwD', '2021-03-24 08:30:00', '2021-03-24 08:30:00'),
(166, 6, 'Sc3G8R3nxBIuZbOXsKqEQ27xhrLDkGIZ', '2021-03-25 05:21:14', '2021-03-25 05:21:14'),
(167, 6, 'vVQlYeWBBRJvyR0w1LIZLkBMfhGviaKF', '2021-03-25 09:39:01', '2021-03-25 09:39:01'),
(169, 6, 'D6xUxwiHEmZ76x59ASkrdO4IPThTtTHg', '2021-03-27 08:28:02', '2021-03-27 08:28:02'),
(171, 6, '5dqO3uu2Px7XoSClxiFzfx1vbju8emqN', '2021-03-28 12:23:31', '2021-03-28 12:23:31'),
(172, 6, 'fA6asf06dWaFlmyP8g1pli83jYrNaZF2', '2021-03-29 06:35:09', '2021-03-29 06:35:09'),
(173, 6, 'JC6PPutL9SCJQPNIRTf3Gh0A9kdH2FRZ', '2021-03-29 10:36:02', '2021-03-29 10:36:02'),
(174, 6, '9y7LYdmG1WzcfhY8nGUNs7RslT1A3KP1', '2021-03-31 05:34:44', '2021-03-31 05:34:44'),
(175, 6, 'wWGU8n1Y22KpFQjeu4M7JR91tdTa1ikL', '2021-03-31 07:42:23', '2021-03-31 07:42:23'),
(176, 6, '6J5sy5FrlXNDwJGm3Bv0QhmHuP8lm7Ag', '2021-04-01 06:26:42', '2021-04-01 06:26:42'),
(177, 6, '8Zw99VO8hNzBiDIPPgottgYcVCN3LBzj', '2021-04-01 12:03:40', '2021-04-01 12:03:40'),
(178, 6, 'MWJAaPtcByZwKOjWgmUliSqpe3PaOQZd', '2021-04-01 13:49:08', '2021-04-01 13:49:08'),
(179, 6, 'rBNxwhi98vSxmqTwIaVEwDR15yYKiswv', '2021-04-03 10:37:31', '2021-04-03 10:37:31'),
(180, 6, '3cin0aV25Jk8J2D2JCUsSYnj9elpEJHq', '2021-04-03 12:55:58', '2021-04-03 12:55:58'),
(181, 6, 'ayMucGAhpwpDcugExzeGI9DC8LLOoMQ9', '2021-04-04 05:16:30', '2021-04-04 05:16:30'),
(182, 6, 'jpLyXiSssSwg696JAv8cr0EeXnCqWEsw', '2021-04-05 06:20:05', '2021-04-05 06:20:05'),
(184, 34, '3UBUTYc80LGpthkJOSDxCw13rlOj35Cu', '2021-04-06 11:06:00', '2021-04-06 11:06:00'),
(187, 36, 'bbh4CnNOndpU64LTuclzrrInRJoQByoR', '2021-04-06 11:12:38', '2021-04-06 11:12:38'),
(192, 6, 'BLKzzugQBDOHUMLnCQAbmBo9XVZEVVa9', '2021-04-07 09:43:24', '2021-04-07 09:43:24'),
(200, 6, 'Ho6G7Bv93YaYg4oxjFr41O4SKXc57mSP', '2021-04-07 11:34:23', '2021-04-07 11:34:23'),
(201, 6, 'qA0gTY5CtfHo0eibdfnAnQxjUKfyy2Zv', '2021-04-08 03:54:39', '2021-04-08 03:54:39'),
(205, 6, 'tuJXMBFbPoLsVJBaMlHQygizaxMLlCl0', '2021-04-10 08:32:48', '2021-04-10 08:32:48'),
(222, 6, 'w0SAARAJuaCgNSoNGc6GHh2oMuwoICku', '2021-04-12 11:15:49', '2021-04-12 11:15:49'),
(223, 6, 'QBsFzkiHn8fdjv8Gpri4wF6UsENAFJaL', '2021-04-14 06:27:55', '2021-04-14 06:27:55'),
(224, 6, 'mo3wmpQe7TAlOrGsti9sbpLqSQFZgKjJ', '2021-04-15 03:03:13', '2021-04-15 03:03:13'),
(225, 6, '0ug1MJPGwP64xJJn1jcJCiDfOFnTm7yR', '2021-04-15 09:17:35', '2021-04-15 09:17:35'),
(226, 6, 'RqeSaLuh0iU47qvmFJ0JxNE6g3P8RTd0', '2021-04-15 09:24:08', '2021-04-15 09:24:08'),
(227, 6, 'g7h6vGhoX5sTkyTeDGIEFnrl9HqJUxdp', '2021-04-15 09:35:53', '2021-04-15 09:35:53'),
(228, 6, '1W2kDtBkslqwd6TFRrqFBs7tNpHrGz0W', '2021-04-16 21:26:17', '2021-04-16 21:26:17'),
(229, 6, 'k4Cy5CQBbjhbzefLu6al19uV17pzecDB', '2021-04-17 03:32:38', '2021-04-17 03:32:38'),
(234, 6, '4XYsS3N1nE1ARnZ7wxD3jjYWFlj2RhwF', '2021-04-18 07:44:04', '2021-04-18 07:44:04'),
(235, 6, 'RUosyU3h40P6iNxC4z7kSW8P7LfbzRmz', '2021-04-19 03:14:41', '2021-04-19 03:14:41'),
(236, 6, '41MHXLBSLLXbFmVp3K9hkFWkhgtxS1iX', '2021-04-20 03:25:57', '2021-04-20 03:25:57'),
(237, 6, 'LoEEibiOZepQyrjO2agDh7oJN98HjMbw', '2021-04-21 04:02:44', '2021-04-21 04:02:44'),
(238, 6, 't9zTSbhh7aeKexRWsgeVs1DK3uyIj5qs', '2021-04-24 03:53:44', '2021-04-24 03:53:44'),
(239, 6, 'Lm10EdkXNvh38p72rXLfeDg3P1hSdT3G', '2021-04-25 04:18:08', '2021-04-25 04:18:08'),
(240, 6, 'ZTf6VyB4WNs5ZqH60k2h5Ta3qGdA28ud', '2021-04-26 03:58:06', '2021-04-26 03:58:06'),
(241, 6, 'STK1vpp1AE2dw13Agqn7U0PSuoh0vegt', '2021-04-27 04:23:42', '2021-04-27 04:23:42'),
(242, 6, 'OyM8HATQ5owrr7JDeKTbca3L7NJtgPm7', '2021-04-28 04:06:45', '2021-04-28 04:06:45'),
(243, 6, 'TCuWN27PfSL7UKwxRpX1IRLnUbCmfRZ3', '2021-04-29 04:21:58', '2021-04-29 04:21:58'),
(244, 6, 'qmwRtygtUDCGIy5Y0wpqFQgRBiGIG59M', '2021-05-02 04:33:17', '2021-05-02 04:33:17'),
(245, 6, '0waZUtJoMrexmOPXpO03xx4OK10p6fno', '2021-05-03 05:17:16', '2021-05-03 05:17:16'),
(246, 6, 'OkQw9ijOHwaaZ40Ah5EiE5q0kMbmHg4i', '2021-05-04 04:59:44', '2021-05-04 04:59:44'),
(247, 6, 'H4UoATVOAtfz2W5QbS0ztbYk7mFZNCBa', '2021-05-05 04:31:54', '2021-05-05 04:31:54'),
(248, 6, 'w97iBMrVlIimwjxzfTnZm54hiM89dZWM', '2021-05-06 05:01:09', '2021-05-06 05:01:09'),
(249, 6, 'BcpRlS82Gkqq0NxwFZohnxayjEWimEvf', '2021-05-08 04:12:42', '2021-05-08 04:12:42'),
(250, 6, 'u8kxZHcP1ktsW96N1uL0H53kxnJVKCS3', '2021-05-09 05:43:07', '2021-05-09 05:43:07'),
(251, 6, 'KjA3qQes8SgqFYBoNvhZFS0ZJqCsGDsG', '2021-05-11 05:55:10', '2021-05-11 05:55:10'),
(252, 6, 'XpWwUksMh4k91PbaA0KJl8svdISNCI57', '2021-05-22 06:12:20', '2021-05-22 06:12:20'),
(253, 6, '0MSL2h1GQ7hvR6RObBrFOUJbs33ern8r', '2021-05-23 05:17:47', '2021-05-23 05:17:47'),
(254, 6, '87mCBB2IxjNMKDu3O8YDwHG9rJ3ipQ4T', '2021-05-24 05:50:10', '2021-05-24 05:50:10'),
(255, 6, '0a1kgES5FfD00uFpZ3gHvfDehI7XWaq3', '2021-05-25 05:03:44', '2021-05-25 05:03:44'),
(256, 6, 's6LZTJZQFPdM7xLgjrIo8TTQ4o6M8Kt4', '2021-05-26 05:57:53', '2021-05-26 05:57:53'),
(257, 6, '26u7eU3ZqnLRqYiVAiBEoXXkbqswgqFY', '2021-05-27 05:39:57', '2021-05-27 05:39:57'),
(258, 6, 'gppquk4JScRZrjE6CrFTLe0Ys6D9MQMO', '2021-05-28 05:08:42', '2021-05-28 05:08:42'),
(259, 6, 'deGEh55ApGLVxwEL0rfOayd0xgvlLizI', '2021-05-29 05:23:58', '2021-05-29 05:23:58'),
(260, 6, 'xbkFRnnWmkFK2HOaO91eigtmHBZhNZzx', '2021-05-30 05:26:14', '2021-05-30 05:26:14'),
(261, 6, 'uQOKkgLWEzJW8DSuv6OdDnVaArcaZrD4', '2021-05-31 06:01:17', '2021-05-31 06:01:17'),
(262, 6, '93iAhgR2N0RtqFtkeLQ70V2IkUv5Rho5', '2021-05-31 18:00:03', '2021-05-31 18:00:03'),
(263, 6, 'UN3AuTgyiPoGt8Zr59srxlLmLIlokkyN', '2021-05-31 23:01:00', '2021-05-31 23:01:00'),
(264, 6, 'FLGCxZBzpBDnMsTeAQg6bf3xRYLRkvr6', '2021-05-31 23:05:53', '2021-05-31 23:05:53'),
(265, 6, 'qf8tvvBBBPwu1QcHYyPMF77LgdSDqIoW', '2021-06-01 00:06:48', '2021-06-01 00:06:48'),
(266, 6, 'irpmrPevf9omVMsMTklszwjUuSBBzs14', '2021-05-30 01:33:34', '2021-05-30 01:33:34'),
(267, 6, 'CkKMSONmZV6yxQxkC3jekSnXPit7do6S', '2021-05-31 01:34:31', '2021-05-31 01:34:31'),
(268, 6, 'tiI00c8x5QkzKJk991OtEHfxdGfwapKZ', '2021-05-31 01:35:49', '2021-05-31 01:35:49'),
(269, 6, '4JKW0Nbxkg1nZSuLd5Hu59T7uP6MHYvm', '2021-05-31 17:15:06', '2021-05-31 17:15:06'),
(270, 6, 'lomG87eQO1KMyNU4HZxOw5HutUhrW76C', '2021-05-31 17:17:11', '2021-05-31 17:17:11'),
(272, 6, 'toE7XqsVNPr2lDQvsogdz5Zw91dgTM66', '2021-05-30 14:02:35', '2021-05-30 14:02:35'),
(273, 6, 'a4EoRbXX6GCWR3Jn4U7AmwDSCQ9r8CBF', '2021-05-31 16:10:31', '2021-05-31 16:10:31'),
(274, 6, 'U0IGWMxRY8t44UyUUgPD3XW3fDY4mYrO', '2021-05-31 17:36:22', '2021-05-31 17:36:22'),
(275, 6, 'UGSWlge3IcdLJKqtLctWgDOzSlcktzgj', '2021-06-01 03:49:13', '2021-06-01 03:49:13'),
(277, 6, '1agRi7hLWqPMbF6o3UdLzs4VUHAzRwq5', '2021-06-01 14:19:05', '2021-06-01 14:19:05'),
(278, 6, 'v9RyA3nI9CY4S7vgIcWQGkDGzLttqpU3', '2021-06-01 14:28:31', '2021-06-01 14:28:31'),
(289, 6, 'fMS3Fu4tl1By5BZX0G4xVc2E7SUuGBU6', '2021-06-01 16:04:53', '2021-06-01 16:04:53'),
(292, 6, 'GnSyph7vIqQXlDMek9WL9zm3Tw5gMIRo', '2021-06-01 16:17:02', '2021-06-01 16:17:02'),
(293, 6, 'NQbdKUKsZGvlg6vqeajQyHaBadUqen8z', '2021-06-01 16:37:30', '2021-06-01 16:37:30'),
(294, 6, 'gymoX2JeZ7OSbNibBi5QldtQXz69HlfR', '2021-06-01 21:27:59', '2021-06-01 21:27:59'),
(295, 6, '0NzQQUtdd2GNx91BxHMB1uaEHGlprur1', '2021-06-02 16:28:46', '2021-06-02 16:28:46'),
(296, 6, 'QWGQOeGpmpcqTQOiTEgEyHGzBg8RWDXI', '2021-06-02 16:29:10', '2021-06-02 16:29:10'),
(298, 6, 'k12KBLA5iruEtmnczR4NqCk018VcpbCo', '2021-06-02 19:40:31', '2021-06-02 19:40:31'),
(299, 6, 'uSVpJ534TuAceq5ClCvU298ESVVOu8N6', '2021-06-02 22:42:57', '2021-06-02 22:42:57'),
(301, 6, '0syqUKVaAw1sMl5TQLo0OBEtbrEJbGc6', '2021-06-03 18:35:56', '2021-06-03 18:35:56'),
(302, 6, 'VJjTBYCbbfZdWT5CqrF4g996ZOM4W1YW', '2021-06-03 21:10:28', '2021-06-03 21:10:28'),
(303, 6, 'GwdZMNDo9vBge4OpqfCAIDTG9lOhskbI', '2021-06-03 21:55:13', '2021-06-03 21:55:13'),
(304, 6, 'W5Atyw6mMyLWVeXqsbaKk4vHLiPFOMSl', '2021-06-04 05:08:45', '2021-06-04 05:08:45'),
(305, 6, 'aQklRBltf6FZ8rYR9hulXez7zDMMvcb0', '2021-06-04 15:38:26', '2021-06-04 15:38:26'),
(307, 6, 'FQPefp0DDJyGbkRNFGzdlyHuXttX9bnu', '2021-06-05 17:31:48', '2021-06-05 17:31:48'),
(332, 6, 'wxvoxyi6GD9MGWc1jT70TilNxjHiltq7', '2021-06-06 00:17:39', '2021-06-06 00:17:39'),
(336, 6, 'b7eaPx2eiMvyRGd5XGsCcseiXEEUnvcY', '2021-06-06 16:45:37', '2021-06-06 16:45:37'),
(348, 43, 'ymr69KmiGakwUkTomxH5MVg6xgyGRdGb', '2021-06-06 18:28:50', '2021-06-06 18:28:50'),
(349, 6, 'dldpLBuXlOn9fMbOrssuve46nbRrnFGW', '2021-06-06 18:51:43', '2021-06-06 18:51:43'),
(350, 43, 'fE5HdOouwkFLzDzU27P3j6RvL4xwueIp', '2021-06-06 19:31:49', '2021-06-06 19:31:49'),
(351, 43, '1yB5azyZmM0G45gdRT8SBsNbCLqQmBcr', '2021-06-06 19:35:48', '2021-06-06 19:35:48'),
(358, 44, 'haRQH2XaFP8Jci7MaevHkGCEmaCFnoZV', '2021-06-06 20:21:19', '2021-06-06 20:21:19'),
(361, 43, 'JZjcoprHJwW5KvToRf5vvIDytsGqKQKT', '2021-06-06 21:30:51', '2021-06-06 21:30:51'),
(362, 44, '9kj0XW5ajGzmesBCB9U0PJaLCbYHQxEr', '2021-06-07 14:33:55', '2021-06-07 14:33:55'),
(363, 44, '1ED5uOl7JhMNlCRCs0JQXK0z6uHl3PTx', '2021-06-07 19:01:15', '2021-06-07 19:01:15'),
(364, 44, 'pE1rBSvzssu9Hat3QCAJNYZ2T0LcKMEC', '2021-06-08 23:45:39', '2021-06-08 23:45:39'),
(365, 44, '9H0Csymi74VIBIB4ylFv9CAHRTvcrvKU', '2021-06-09 11:34:21', '2021-06-09 11:34:21'),
(366, 44, 'q4XzPqtkrJ6N1Zx1HckO3yOGraYYFxyJ', '2021-06-09 17:31:25', '2021-06-09 17:31:25'),
(369, 44, 'DRmbGUfghXHEAx27oP5IdlsRnvse471x', '2021-06-09 22:40:53', '2021-06-09 22:40:53'),
(370, 44, 'coiMtnukvBN19FSsJINQnscuYZybCLEl', '2021-06-11 01:14:52', '2021-06-11 01:14:52'),
(371, 44, 't2zaxJw7VDGmM8xSXNv2GDll50smrLbC', '2021-06-11 16:13:49', '2021-06-11 16:13:49'),
(372, 44, 'GczDSVz3y9djfD57Zhu9zYhvcAAQ7eEP', '2021-06-11 19:54:32', '2021-06-11 19:54:32'),
(373, 44, 'ELuNDueRubOrMsD33EnxdoErhR4SqSKz', '2021-06-12 01:08:44', '2021-06-12 01:08:44'),
(374, 44, 'be8sAPzJA4UCDJBy2d2tWYI7hlirgoso', '2021-06-12 15:42:41', '2021-06-12 15:42:41'),
(375, 6, 'TIAi0o9oOkRmFhmauA4GFx97XVMUfbNL', '2021-06-12 19:49:40', '2021-06-12 19:49:40'),
(377, 44, 'vWe0TUGSWBllC2bU6hTjxOsjlZirGYRQ', '2021-06-13 00:02:01', '2021-06-13 00:02:01'),
(378, 44, 'UpwQwYXvTTot7dEDFLK2GQTvQ9nw0TFB', '2021-06-13 11:36:26', '2021-06-13 11:36:26'),
(379, 44, 'R24JGSlKpx5oaoBbgqyRwZYW2Bla8rUW', '2021-06-13 11:36:51', '2021-06-13 11:36:51'),
(380, 44, 'tYp6AP51K910wqRWXVXzZ9KXPjmQIO8d', '2021-06-13 16:32:49', '2021-06-13 16:32:49'),
(381, 44, 'Ys5fUmrU0C50tpM16mV2e4ZPVyXqvngr', '2021-06-13 21:50:39', '2021-06-13 21:50:39'),
(382, 44, 'JJsCdKmSsaQvgBwAwPKZLe6UTl7yiVLP', '2021-06-14 12:55:30', '2021-06-14 12:55:30'),
(383, 6, 'FxK5w2bysbixeQtXJoDQyhx9moUu8coY', '2021-06-15 01:43:47', '2021-06-15 01:43:47'),
(384, 44, '5dCel62P0F4A611RYmNKFHTiXTbuVaxS', '2021-06-15 12:43:54', '2021-06-15 12:43:54'),
(385, 47, 'JRuYTC3Lkd0UeGJCNKgQsIepTCf2eAJw', '2021-06-15 16:20:23', '2021-06-15 16:20:23'),
(387, 47, 'npGDfWPfJ6WaNMd4rTLDkEWgxcN8uozA', '2021-06-15 16:29:15', '2021-06-15 16:29:15'),
(389, 47, 'JROcefeATeMvjIx2uLYugyc6ZoRU6vsP', '2021-06-15 17:52:30', '2021-06-15 17:52:30'),
(391, 6, '4tu6yg7nCgv7JB5raUOiyGnSRiz6FT3g', '2021-06-15 19:37:59', '2021-06-15 19:37:59'),
(394, 44, '3NXqw4Kk8FUklul8mRYtNtg69SSkaNOE', '2021-06-16 11:16:09', '2021-06-16 11:16:09'),
(395, 47, 'IM8akcTCADBdCtNCGourLUfOVlhgqJWR', '2021-06-16 13:39:52', '2021-06-16 13:39:52'),
(398, 47, 'kUu3mIROvg2OzC9BBu8mQrrNeAB98uZx', '2021-06-16 14:36:42', '2021-06-16 14:36:42'),
(400, 44, 'yOTpSdq5pVVtQzfq271Pnt5l95Zg0y8t', '2021-06-16 15:59:17', '2021-06-16 15:59:17'),
(401, 6, 'uW30kwq7eAnOHgf5rC8qa2SlxZcQJl7I', '2021-06-16 16:41:25', '2021-06-16 16:41:25'),
(402, 44, 'PfKntohbA3niL4MpfA0oVwprrqgMLlhm', '2021-06-16 20:20:32', '2021-06-16 20:20:32'),
(404, 6, 'k3iNqDz3Ep111Rx6XO3Qotf3nWimE9lu', '2021-06-16 21:40:55', '2021-06-16 21:40:55'),
(405, 47, 'DX2Zsbi1XjmuzUAiUnl7QBkZmCxd6Ayt', '2021-06-16 22:09:32', '2021-06-16 22:09:32'),
(406, 47, '3FE7WVL659MmEIvv55kWJrxa6PUb3xHg', '2021-06-16 22:21:10', '2021-06-16 22:21:10'),
(409, 47, 'M9ZI6bPKt3Zs5kAQQdBbnaBIRg7c4su1', '2021-06-16 22:30:09', '2021-06-16 22:30:09'),
(410, 47, 'Eqowd04mZnUxgS2DWmLiS1UPhfXlSpmn', '2021-06-16 22:43:16', '2021-06-16 22:43:16'),
(411, 44, 'qWKb0sysaSdeZFeALtVANL8QQ3FBrQUR', '2021-06-16 23:39:30', '2021-06-16 23:39:30'),
(412, 44, 'Q5eyJMtW18vkrIy54dyHEebm0funqQBn', '2021-06-17 11:50:47', '2021-06-17 11:50:47'),
(413, 44, '5BOueWQ0FcbAU6DEt8Uy3UaBDfHdxjpW', '2021-06-17 11:51:57', '2021-06-17 11:51:57'),
(414, 44, 'YkRr5FjT3g1HCkHj0VU59x9nXjaRWCQ3', '2021-06-17 15:58:12', '2021-06-17 15:58:12'),
(418, 50, 'JQ7FFTZHobq2Vir6KeUZTtMAczBVymxF', '2021-06-17 17:16:42', '2021-06-17 17:16:42'),
(421, 47, 'jPqkCkMHdC4mYAoXbygiatWxrNWxoI5g', '2021-06-17 17:57:50', '2021-06-17 17:57:50'),
(422, 44, 'qeVKgXzIWwCPAlhooxpAquokXVvF3RyG', '2021-06-17 22:15:29', '2021-06-17 22:15:29'),
(423, 44, 'cHXiIsFCrLQPuKsYQl3zBlpNarZVFubV', '2021-06-18 11:36:31', '2021-06-18 11:36:31'),
(424, 47, 'IrgJ0O19va7CpKTda9WNxgbChA2lvva6', '2021-06-18 11:45:57', '2021-06-18 11:45:57'),
(425, 44, 'THC96xbUSQDl5r5nwihkyvwRXnqAMaU1', '2021-06-18 16:08:09', '2021-06-18 16:08:09'),
(426, 47, 'QQ37wL7GK4NAsnFWIC2DURieWILQaYdA', '2021-06-18 22:17:48', '2021-06-18 22:17:48'),
(427, 44, 'JgaG42sFKG1WNCARLyRvH6JlOhnJF2AH', '2021-06-18 23:36:22', '2021-06-18 23:36:22'),
(428, 47, 'HwWn9DEQv6ciqV2Af9gyDYT5bniSxU3S', '2021-06-19 10:34:06', '2021-06-19 10:34:06'),
(429, 44, '4vUOoclyoandsnOnKpoADECCcY5R4SVc', '2021-06-19 13:03:40', '2021-06-19 13:03:40'),
(430, 44, 'Y8Td7EG5a4V86Vzzip6PNJf1G2SqWJu9', '2021-06-19 21:24:19', '2021-06-19 21:24:19'),
(431, 44, 'Rwj2mpttBKKkeOUL4XRfGa2COqlIL8AO', '2021-06-20 13:20:54', '2021-06-20 13:20:54'),
(434, 47, 'hdWdb5npHjFkGV0ks1vkjC7McXEGYfbd', '2021-06-20 15:01:34', '2021-06-20 15:01:34'),
(435, 44, 'mbCDTT6p4UDww0mtCTYmqIOaGEHlM06D', '2021-06-20 16:09:20', '2021-06-20 16:09:20'),
(436, 44, '968AAndhBI510x1vClblcRZRfNLUTggP', '2021-06-20 20:45:04', '2021-06-20 20:45:04'),
(439, 46, 'f7z0ssOw0sUeCr2jbHAZO1iEFLshxg6D', '2021-06-20 22:56:00', '2021-06-20 22:56:00'),
(440, 6, 'OARDxiR2wjhRirILMt58dGJJF98ZgmN1', '2021-06-20 23:37:11', '2021-06-20 23:37:11'),
(441, 6, 'vd38hniWshC4xudBlsh0KFHk9mWAt7o3', '2021-06-20 23:45:55', '2021-06-20 23:45:55'),
(443, 6, 'q21l061usai2RzPAqTTLLbuielHdBENv', '2021-06-21 00:35:14', '2021-06-21 00:35:14'),
(444, 46, 'DzjoWrccNnQSRUlmCbUcY2s7emhCs7Rs', '2021-06-21 01:33:39', '2021-06-21 01:33:39'),
(445, 44, 'ayPZdYb7qe8JwXX96VGMzb0dCM8wKQsJ', '2021-06-21 02:13:33', '2021-06-21 02:13:33'),
(446, 47, 'kimQ53QLX1YcmibI8iX5EZrqFzrY4uDY', '2021-06-21 10:51:15', '2021-06-21 10:51:15'),
(447, 6, '7Vt2jXoXNJjJoKVr9DTIDUW2t6gsOqEd', '2021-06-21 15:33:30', '2021-06-21 15:33:30'),
(448, 44, '0rZyFGjtTUQ26oA3caP1Z4eg56veNwYW', '2021-06-21 16:01:53', '2021-06-21 16:01:53'),
(449, 6, '6YbrmgkdLLtrJhkQCsNHjwwYGNGDehAU', '2021-06-21 16:04:35', '2021-06-21 16:04:35'),
(450, 51, '9Fw4BVCOvhvFKb57xJrW77hLb5qg6QmG', '2021-06-21 16:17:09', '2021-06-21 16:17:09'),
(452, 51, 'vcD3gFhjqH9JSzGF3BhZA3Y2nH0U0Ltm', '2021-06-21 16:35:22', '2021-06-21 16:35:22'),
(454, 51, 'KhWsRK1zlfUmyg9uOvmOoRawJMfqclKI', '2021-06-21 16:39:49', '2021-06-21 16:39:49'),
(455, 51, 'h4IuhJRa8JBAP12P2ocr1L0a3knU092t', '2021-06-21 17:02:20', '2021-06-21 17:02:20'),
(456, 51, 'B3gCpMK1McJig8lDTz7ZBA0IjiQ1th79', '2021-06-21 17:11:17', '2021-06-21 17:11:17'),
(458, 6, 'EdWLpROc4PPHw7qXgHaNuJOImLZka1HK', '2021-06-21 19:05:38', '2021-06-21 19:05:38'),
(459, 51, 'dNiLVgAguqyvNwoLGXpT16N4Ad7w2AW6', '2021-06-21 21:48:05', '2021-06-21 21:48:05'),
(460, 51, 'iiaZ1Si7kZnHxaZWAz3tmPTDhz90m8Ua', '2021-06-21 21:59:13', '2021-06-21 21:59:13'),
(461, 6, 'AVD3vZeREjCEzpxZm8ezQl8AXUtidVGL', '2021-06-21 22:31:28', '2021-06-21 22:31:28'),
(462, 44, 'h5Ze7AoFGD2AXkaUGfuUTlY0EhpbdF0V', '2021-06-21 22:48:22', '2021-06-21 22:48:22'),
(463, 47, 'DNIgl5wzsGVJuDs1AP7KUTYaC2wa1y6W', '2021-06-22 00:20:49', '2021-06-22 00:20:49'),
(465, 6, 'nWrzwANHSwnzIBxpcdA0iBMFb4JG4nVj', '2021-06-22 03:58:21', '2021-06-22 03:58:21'),
(466, 6, 'HU3Tt12SPvMSMAdpwYoTernHEKiT9dNt', '2021-06-22 03:59:04', '2021-06-22 03:59:04'),
(467, 52, 'yrBglOWfvbwXKHuNhnukzJR8k8himlP9', '2021-06-22 04:05:22', '2021-06-22 04:05:22'),
(469, 6, 'RcBa34L2ah4oeH8heXn7nLuRXOwIm3am', '2021-06-22 08:25:40', '2021-06-22 08:25:40'),
(486, 80, '7OZQUkONlyt0nh4skIwQCV4XPlQkzEjt', '2021-06-22 09:00:38', '2021-06-22 09:00:38'),
(487, 44, 'rcyh3BjApILLaob7qzUKxje4jY5wdduT', '2021-06-22 11:56:05', '2021-06-22 11:56:05'),
(488, 51, 'dWjNOp4HQiPPZjXXcUX3KsOxotxqnB06', '2021-06-22 12:21:39', '2021-06-22 12:21:39'),
(489, 47, 'LmJsPJBZJYl7VsKfcqQDyYzvqHH9mg93', '2021-06-22 12:31:12', '2021-06-22 12:31:12'),
(491, 6, 'TX4oraDXpCPnf3Lc6i9U1h6GKV6C0mjW', '2021-06-22 17:23:39', '2021-06-22 17:23:39'),
(492, 6, 'CSSbBxqlfryCfV8CxfrfT7YTHqk7PkfR', '2021-06-22 17:26:08', '2021-06-22 17:26:08'),
(493, 51, 'Cu93ti2WZGMjsKzUkRqci6R8SNzQJCOp', '2021-06-22 17:37:40', '2021-06-22 17:37:40'),
(495, 49, 'OOPouN5MLPx556VYCTjQWdXMb8cte9LC', '2021-06-22 18:56:02', '2021-06-22 18:56:02'),
(497, 51, 'HeU6bPs9JyCtNsxo03mSNDYSXJFDxPHM', '2021-06-22 23:00:00', '2021-06-22 23:00:00'),
(498, 51, '5luRmC5w6ebzJuUGs71stNiEz8Rl6Jij', '2021-06-23 01:40:54', '2021-06-23 01:40:54'),
(499, 44, '5kNGMCuiKZ0E1W8vzkYMC4d3fUJI5CxL', '2021-06-23 01:57:20', '2021-06-23 01:57:20'),
(500, 51, 'EiaXBIxxsdzxels3IizusVDBRWly40rw', '2021-06-23 10:35:57', '2021-06-23 10:35:57'),
(501, 47, 'aA3LGPig4wiZOsdY08mF8yzQps3t6CJW', '2021-06-23 11:43:58', '2021-06-23 11:43:58'),
(505, 49, 'r8NCG4lHJujc1vV10itQzA8tqAu4hLDa', '2021-06-23 15:04:30', '2021-06-23 15:04:30'),
(506, 44, 't1KRqqG5rIsoRgUoYzFutY2gA7DsQYsW', '2021-06-23 15:44:34', '2021-06-23 15:44:34'),
(507, 51, 'DcLlOdTDsovEdclHfDTm0nYAH947YD6j', '2021-06-23 17:17:12', '2021-06-23 17:17:12'),
(508, 49, 'oVzU03GNAFHOfCVpmL1ulj4o5Q400w6D', '2021-06-23 17:56:56', '2021-06-23 17:56:56'),
(509, 6, 'cWwMZ9HCQMfvUNlvJv40Qa74Qqj2oyqp', '2021-06-23 19:10:09', '2021-06-23 19:10:09'),
(510, 48, 'dZogSHLUXsV7jKLlYfGHOiYQK7t0t9gC', '2021-06-23 19:30:05', '2021-06-23 19:30:05'),
(514, 44, 'Uxr8wp01jYhKuTQxK3C416bgSV59uwqM', '2021-06-23 23:50:13', '2021-06-23 23:50:13'),
(515, 47, 'wBwUVdiDx4ihKtL7HgJqgUnySrQkiPaK', '2021-06-24 00:36:25', '2021-06-24 00:36:25'),
(517, 6, 'DDkqy0MZ9StQ4nk1RdSFekcn3lgLfOQj', '2021-06-24 06:34:48', '2021-06-24 06:34:48'),
(519, 51, 'lMR1hLlzXMkS8FxD7YACCmAyGlP2YlsU', '2021-06-24 12:37:52', '2021-06-24 12:37:52'),
(520, 44, 'FstAXTTHx2GrXlSIXqjtqPF5u24GnsSs', '2021-06-24 12:55:37', '2021-06-24 12:55:37'),
(521, 44, '6eyhSIcQGV5dqZGPAWyqoyAeNSaA3mCx', '2021-06-24 16:03:13', '2021-06-24 16:03:13'),
(522, 51, 'xoDB5qIYAyWAfOtcKpjEANQez4UViF2n', '2021-06-24 16:30:34', '2021-06-24 16:30:34'),
(523, 47, 'f5yMOICKhq1t0CutdqR87U2e3ataDX2l', '2021-06-24 17:42:48', '2021-06-24 17:42:48'),
(524, 63, '04ZO6COcOvDQMuU30E2Yc5qaEWkY3Brv', '2021-06-24 17:51:36', '2021-06-24 17:51:36'),
(525, 6, 'uaBumnJEruhP92HxYeggYkva2R8Wc6GU', '2021-06-24 20:54:38', '2021-06-24 20:54:38'),
(526, 46, 'F2Jt8u54ICkGYCNwaX1CJX0nTeyp1wAQ', '2021-06-24 22:21:11', '2021-06-24 22:21:11'),
(528, 63, 'xLuoKjAEZYLOr0oRXxzSJSV3jBB7jYv4', '2021-06-25 00:01:37', '2021-06-25 00:01:37'),
(529, 47, 'zRuDTXQgwIMteq2pWF2S01VaqYDixzuM', '2021-06-25 00:23:03', '2021-06-25 00:23:03'),
(530, 63, 'nXGa5QwN9gTVKWA029DWZwOddDA3CDmM', '2021-06-25 00:24:03', '2021-06-25 00:24:03'),
(531, 6, 'EhqJxL5Gg3B8s6rHXErumRGxysKhM29O', '2021-06-25 00:24:04', '2021-06-25 00:24:04'),
(532, 6, 'Rv8BIcekef39gKlz5hwSKSP6tKWCHLFs', '2021-06-25 00:28:17', '2021-06-25 00:28:17'),
(533, 44, '1ZhS4WTcR6Rv0TpF84Qd0nQ8EtVDdpgG', '2021-06-25 01:29:24', '2021-06-25 01:29:24'),
(535, 47, 'OKlgyYEqnZTQVTfsRnc2gbYhw0Fg4B4z', '2021-06-25 11:04:47', '2021-06-25 11:04:47'),
(536, 47, 'f8WNPfb91Jt8EOYtqa5pEuNWNwoWGP7N', '2021-06-25 11:12:35', '2021-06-25 11:12:35'),
(537, 44, 'enwiPqTZNpIw5NEVt2Vl2MQtZN8jAvtj', '2021-06-25 11:44:38', '2021-06-25 11:44:38'),
(538, 51, 'gmhiZqsuCwM23ixGG2BMN312BRWm7pXB', '2021-06-25 12:26:13', '2021-06-25 12:26:13'),
(539, 63, 'cxkhzA3ju049evf7d4CW49Tjn1qz8S4U', '2021-06-25 13:33:37', '2021-06-25 13:33:37'),
(540, 6, 'jvj5wXqs2uxyz4Byc92LILHpcXUgssj3', '2021-06-25 16:53:51', '2021-06-25 16:53:51'),
(541, 44, 'WZ90u0VU5pjLtNkuUivRHB8G17nVImve', '2021-06-25 18:13:56', '2021-06-25 18:13:56'),
(542, 63, 'm8DBNtT5mh4RJIrmUIuwMtokT3UuxEgJ', '2021-06-25 22:18:31', '2021-06-25 22:18:31'),
(543, 6, 'rH46YPlr4Tij8CYR6x8DQDrlwFAjI9fa', '2021-06-25 23:35:36', '2021-06-25 23:35:36'),
(546, 63, 'oqxWX1n2tcmYUoMtNZ10KBbH8BJqkwi3', '2021-06-26 01:28:13', '2021-06-26 01:28:13'),
(547, 63, 'uvWMkMHklqlC1VVs3kpbwzDLiXZFgScM', '2021-06-26 02:06:21', '2021-06-26 02:06:21'),
(548, 63, 'g87vUNIxOkhWQ1Jex5nffHpRN2mVJ7CE', '2021-06-26 02:20:04', '2021-06-26 02:20:04'),
(549, 44, 'yostuxMvvnCyPOQGnh46FO9VlJ0fWNQd', '2021-06-26 02:20:36', '2021-06-26 02:20:36'),
(550, 6, 'cH2JcqcovvINQh0XuldhwmubNjQs4rwP', '2021-06-26 02:50:46', '2021-06-26 02:50:46'),
(551, 63, 'ZMcdypX5Vy116zKPeShx3hYVpq2PJfey', '2021-06-26 03:16:23', '2021-06-26 03:16:23'),
(552, 6, '9OnF0b5kzjoWbZU9WtOmUZIstVevrYUO', '2021-06-26 03:39:37', '2021-06-26 03:39:37'),
(553, 6, 'eAFE7Z88Q6eKHLx4chsYPrCtm1P8mLpN', '2021-06-26 03:39:39', '2021-06-26 03:39:39'),
(554, 51, 'MJXOCdoqRSybjCEzSubSXywmQ4QbOUpN', '2021-06-26 11:25:36', '2021-06-26 11:25:36'),
(555, 44, 'Mc5A5gkKuBIC0Sh1mprn8dyyXlByCdf5', '2021-06-26 12:22:09', '2021-06-26 12:22:09'),
(556, 51, 'LeKzkzyvTCwURoBmgf82aVogioIYsYIr', '2021-06-26 16:08:10', '2021-06-26 16:08:10'),
(557, 63, 'buPyILqgkJsWcyrzRKdEebHsIhoxu8PG', '2021-06-26 16:39:28', '2021-06-26 16:39:28'),
(560, 44, '05vHol2hesJQwrxhmW06fokNo6BKkdOx', '2021-06-26 18:02:22', '2021-06-26 18:02:22'),
(561, 79, 'bBWjEXJKHWpMnHxRSp86YQ1hERU2RZIG', '2021-06-26 18:10:54', '2021-06-26 18:10:54'),
(562, 63, '2jeHpO31VrD9TVsJZ7sJkm3XEjM0McP7', '2021-06-26 18:52:18', '2021-06-26 18:52:18'),
(563, 6, 'nYw4N5dJs0Clo7IOAkKUBYxo8yDUMVmL', '2021-06-26 19:22:12', '2021-06-26 19:22:12'),
(565, 47, 'Wjk1pq7qsNeNWF13iAz8WtV5ZpT9bW6B', '2021-06-26 20:43:37', '2021-06-26 20:43:37'),
(566, 63, 'W7FmJ27gi9Ki6CL0pOLPmyTuHGaMPtHy', '2021-06-26 20:52:19', '2021-06-26 20:52:19'),
(567, 63, '08Su5Yx1Fd4t7nKb9NBHZ68OaJf9CHT9', '2021-06-26 21:52:45', '2021-06-26 21:52:45'),
(568, 44, 'jnR0jNEPOl7xppsDjj8ROygmxL4nqZFj', '2021-06-26 23:02:45', '2021-06-26 23:02:45'),
(571, 6, 'rv9nUcT5803qirZlru8fYxA8zpFq1tCL', '2021-06-27 00:13:37', '2021-06-27 00:13:37'),
(573, 77, 'kbHj8fBbEjFhB6HUj7082ISTRmGwPQzn', '2021-06-27 00:38:04', '2021-06-27 00:38:04'),
(574, 6, 'dexiIBflW8PvFxbIV5KMcvkeNpseIUDu', '2021-06-27 00:39:07', '2021-06-27 00:39:07'),
(575, 6, 'qKV7CRvHyGlALD32tComCCol3qglNjRK', '2021-06-27 01:20:26', '2021-06-27 01:20:26'),
(576, 51, 'uyAksSrYjwKIJyfc33iLwt1k66NJlgig', '2021-06-27 01:30:48', '2021-06-27 01:30:48'),
(578, 44, 'eK7Dl2OmJxRQ7f7L62L0ISOYwtP3AbI4', '2021-06-27 11:43:06', '2021-06-27 11:43:06'),
(579, 51, '2qqED55npF67wge6AfSrfHhhyi6etH3X', '2021-06-27 11:54:46', '2021-06-27 11:54:46'),
(580, 6, 'YZmSw4OMyiMAhWOhEZqkNOHIKYjm9FsQ', '2021-06-27 12:31:57', '2021-06-27 12:31:57'),
(581, 47, '7vkjFz73nD8zolzyM0j2yEgwe3AupF9f', '2021-06-27 13:27:00', '2021-06-27 13:27:00'),
(582, 63, 'BCtMcZrl23hTFfCF07tK35TzLIWyas2r', '2021-06-27 13:36:48', '2021-06-27 13:36:48'),
(583, 63, '31mCZHb9nbLvKC1JQsTG50YtqHj3Rmvl', '2021-06-27 13:46:15', '2021-06-27 13:46:15'),
(584, 63, 'IZi0oau2VdSa6ygRS7ferYCJnNx33faV', '2021-06-27 15:16:12', '2021-06-27 15:16:12'),
(585, 77, 'X7eDAZO89IrKe1JqvJfWgE1rN2CTi2sT', '2021-06-27 16:33:00', '2021-06-27 16:33:00'),
(587, 51, 'bSzwPrgAfy7n5XhrUesdBUlSv5ORfsNc', '2021-06-27 16:45:55', '2021-06-27 16:45:55'),
(588, 44, 'cSt1QDkwwxn9zHwCR5JZZiNHL68av2xb', '2021-06-27 16:57:55', '2021-06-27 16:57:55'),
(589, 79, 'ANsh2AbeDVnI2qEsXtKvTJsP391plrEu', '2021-06-27 18:16:05', '2021-06-27 18:16:05'),
(590, 6, 'tW72gCf7Ln9IV0lC6JsMc9wognDYqVOl', '2021-06-27 18:25:50', '2021-06-27 18:25:50'),
(591, 63, 'wp3m1TEBw2pneLxlwwS1EKYloJZZiUjJ', '2021-06-27 18:32:48', '2021-06-27 18:32:48'),
(592, 63, 'MhhooTyD8c43dFrDa5IYqZc73EViqDTh', '2021-06-27 18:44:42', '2021-06-27 18:44:42'),
(593, 49, 'MmEOTqZGDsLsq04SxGVsqOfPqhjIWK9c', '2021-06-27 19:03:47', '2021-06-27 19:03:47'),
(594, 44, '80fJNGWpzvo850yxo2gNcaid5SUHesrl', '2021-06-27 19:54:43', '2021-06-27 19:54:43'),
(595, 6, '2wnRpGUj7Mmo2hXaHE3RJWVKQ4GG9JYS', '2021-06-27 21:00:04', '2021-06-27 21:00:04'),
(596, 6, 'IjyLt9VbvH49CwSWKjnBsq7pjjqBDfza', '2021-06-27 21:21:09', '2021-06-27 21:21:09'),
(597, 63, 'ic8pVVvZkGCERtvjiFLzvndcU6imWauw', '2021-06-27 21:42:23', '2021-06-27 21:42:23'),
(599, 49, 'Rk5IguHpfGLZZAvayNVqC6Bpcn5xtA9f', '2021-06-27 21:44:24', '2021-06-27 21:44:24'),
(601, 63, 'FDm2n1Z0AiNx9jriMRP1iHsN1Qkhj6DG', '2021-06-27 22:26:13', '2021-06-27 22:26:13'),
(602, 51, 'FN41FZnvVPGkw7UYRcTfAo2kYNUNC8D4', '2021-06-27 22:59:13', '2021-06-27 22:59:13'),
(603, 63, '0GFizT7xPKt8VyhO9A1FTT0dmO34klug', '2021-06-27 23:05:33', '2021-06-27 23:05:33'),
(604, 79, '977IkU2c6YGaKgj9Tn8akUMIWKWHXSnN', '2021-06-27 23:34:41', '2021-06-27 23:34:41'),
(605, 6, 'TwNgZs9QuWPaHALPv9U08Pq1RdGgHPVS', '2021-06-27 23:55:36', '2021-06-27 23:55:36'),
(606, 63, '1saFEOUQiAklL0LoeLJATMD5vjYIdAff', '2021-06-28 01:50:03', '2021-06-28 01:50:03'),
(607, 79, 'QgwxNspioPwQ9v9AXUdCRze7nfzbL8E4', '2021-06-28 02:57:05', '2021-06-28 02:57:05'),
(608, 63, '39y557JTTG7c1m5tjMhmwHnx3MrTnbfn', '2021-06-28 03:03:11', '2021-06-28 03:03:11'),
(609, 63, 'Yt2RSkWvgmje94n9P8BzaQvhcXYFGlpv', '2021-06-28 10:36:27', '2021-06-28 10:36:27'),
(610, 51, 'SDaYwaK20a8xKPGYi04Rpo3czwjFiXuE', '2021-06-28 11:10:00', '2021-06-28 11:10:00'),
(611, 44, 'J0JSTGMzGyzz63F8agvp1jNWG8jmsLA4', '2021-06-28 11:30:06', '2021-06-28 11:30:06'),
(612, 49, 'FiVJbEzJ6lGMyRjnx5LaZapuMXKHfdgI', '2021-06-28 12:47:23', '2021-06-28 12:47:23'),
(613, 63, '2sSGsBBmLivRbjmklKSntEexR46auPF3', '2021-06-28 13:26:24', '2021-06-28 13:26:24'),
(614, 6, 'dTgW6vErRcaC530U6RErGiC1VK4b0F2q', '2021-06-28 13:47:51', '2021-06-28 13:47:51'),
(615, 44, 'TBafGQuuI3Js2OqxMpKBNh3tvkXh6qAa', '2021-06-28 14:19:57', '2021-06-28 14:19:57'),
(616, 63, '2cDvil3IyaNqHERaOK7AJ1FaDo0jLaXD', '2021-06-28 16:00:33', '2021-06-28 16:00:33'),
(617, 6, 'Z7AXbVX4uIXEFF62mh337hCDATO2zKhr', '2021-06-28 16:01:14', '2021-06-28 16:01:14'),
(618, 44, 'Kfm4wghcuIwmkFs2ibxSX7p98y2nEXUT', '2021-06-28 16:41:43', '2021-06-28 16:41:43'),
(619, 51, 'Aloc49K60kOzuPj3YVhyQ4JHrLoaT3yv', '2021-06-28 17:08:20', '2021-06-28 17:08:20'),
(620, 6, 'ctnF4VylpcBWCqYBPUlVnzlX86NwojrK', '2021-06-28 17:25:11', '2021-06-28 17:25:11'),
(622, 79, 'EtVnAhPtBCkcTYP8YmFGL5zi80e09bMk', '2021-06-28 19:03:51', '2021-06-28 19:03:51'),
(623, 6, 'fdLI9ICpebZSi21Zi98NyRxNXuyYpyKm', '2021-06-28 19:26:53', '2021-06-28 19:26:53'),
(625, 6, 'Po20lCXg6WANW1sygbkt0i0dtAn6Mizw', '2021-06-28 19:46:45', '2021-06-28 19:46:45'),
(626, 6, 'LUHN0G2kumARzwsHaYjjULJ5iAlbiQwW', '2021-06-28 21:01:47', '2021-06-28 21:01:47'),
(627, 6, 'nCKCTmbCVdq78ZQh8fXFEdIGqcc1bz8g', '2021-06-28 21:32:03', '2021-06-28 21:32:03'),
(628, 44, '5NkZkYCUCG04cfCX4bU9TEp1gKjeUobA', '2021-06-28 22:47:33', '2021-06-28 22:47:33'),
(629, 63, 'Bkq46VutlcV1S6Ql3rBUIgEOOgyHh1vr', '2021-06-28 23:40:34', '2021-06-28 23:40:34'),
(630, 63, 'aJxAGHJ626mpe1zqboR4eSiN4NifKFzZ', '2021-06-29 01:00:18', '2021-06-29 01:00:18'),
(631, 47, '4nmxwMvVn41WfiTYe0x03i8fpLuOYTU3', '2021-06-29 01:22:07', '2021-06-29 01:22:07'),
(632, 51, 'QVCxHpolskN47tqMXjGVoKe31PjQK3R8', '2021-06-29 11:06:22', '2021-06-29 11:06:22'),
(634, 44, 'XXfBVseXGlkXKwvi9IBSeU2INDEwYd9q', '2021-06-29 12:17:48', '2021-06-29 12:17:48'),
(635, 47, 'IBcAX0tpXc0w5EnJKky6jYFfcKNe7VBB', '2021-06-29 12:33:44', '2021-06-29 12:33:44'),
(636, 63, 'DQoZPaV7gMNSNteWTNzvBfeNUQ75rG3A', '2021-06-29 14:01:44', '2021-06-29 14:01:44'),
(637, 63, 'gbxoUjmNQVQgR6y2TKOQ1R4XrQvhBKdu', '2021-06-29 15:53:18', '2021-06-29 15:53:18'),
(638, 79, 'VzeFGJ8Pbn7eauH1IefBQLJ4AVFU5d0t', '2021-06-29 16:32:19', '2021-06-29 16:32:19'),
(639, 51, 'OmszNZvYgBf4lWjzWceaKPXwQ037lyXb', '2021-06-29 16:41:34', '2021-06-29 16:41:34'),
(640, 44, 'voXxd61icp8n8PpDDtmkSEy0E58DogzR', '2021-06-29 17:41:59', '2021-06-29 17:41:59'),
(641, 63, 'TBGHrHy4n8BORu075gJzTjPLcl2enO6i', '2021-06-29 21:20:44', '2021-06-29 21:20:44'),
(642, 63, 'UjXLOXnPYLzcWwL5aNRrRhPGk8Ka7kQY', '2021-06-29 21:33:35', '2021-06-29 21:33:35'),
(643, 6, 'iKReUONoz4HO3ZaBZXQYvRPrairDj8mo', '2021-06-29 21:57:30', '2021-06-29 21:57:30'),
(644, 51, 'NCkQeTuMVwgW5ssVe6P7Q5h3kHzRrtE6', '2021-06-30 02:58:16', '2021-06-30 02:58:16'),
(645, 51, '03Gm3G3qQzAZX5RykwxzegtyAYBHzOsX', '2021-06-30 11:36:17', '2021-06-30 11:36:17'),
(646, 63, 'RF9xcJCjUrTyB8diNvPA0IlWuet15Qq4', '2021-06-30 13:34:17', '2021-06-30 13:34:17'),
(647, 63, 'udwZpwijSDRYgkj9EfzLg3O1rl850I3i', '2021-06-30 14:34:32', '2021-06-30 14:34:32'),
(648, 79, 'MokoBxEJujiOCVOiMZ4XbkSnDJucOovP', '2021-06-30 15:08:44', '2021-06-30 15:08:44'),
(649, 44, 'N10NCjQxy9eAZ0OC6Wn9tsL6VNcss1AV', '2021-06-30 17:10:25', '2021-06-30 17:10:25'),
(650, 6, 'TkBJ2lxlBbddlTFwXy31cq1gKYgaE65b', '2021-06-30 18:53:49', '2021-06-30 18:53:49'),
(651, 79, '8oP6aSS2bgOv55TACn6kdXG1jUrQPAVa', '2021-06-30 19:29:50', '2021-06-30 19:29:50'),
(652, 6, 'BGKjVsnPCHEX7O2XLw1C0cXnkYK3hV5l', '2021-06-30 20:06:23', '2021-06-30 20:06:23'),
(653, 47, 'BfgKbq4OqKLl2IAY7Uo8vS37mq3lhOtD', '2021-06-30 22:03:27', '2021-06-30 22:03:27'),
(654, 44, 'c5XvUL9zyAqxpeYR3EpHTatvviTmT1CN', '2021-06-30 23:23:51', '2021-06-30 23:23:51'),
(655, 6, 'F5amByk0AzDY1vL5iF3ymzrgNzFoGKgd', '2021-07-01 00:43:35', '2021-07-01 00:43:35'),
(656, 6, 'hsoQuBDjqkLjlhxhSVehgdpeP90m4CHp', '2021-07-01 01:08:26', '2021-07-01 01:08:26'),
(657, 51, '73DyItCl7pOt6A4sfHXxjlQYZXdA6imx', '2021-07-01 11:55:41', '2021-07-01 11:55:41'),
(658, 63, 'DfbiLJYRc9tKzJgDEKJDjkPCnrA90Djl', '2021-07-01 14:34:33', '2021-07-01 14:34:33'),
(659, 63, '3EYvvZjrtlrfQst7sDhMrWn6ak8OjbgJ', '2021-07-01 15:13:21', '2021-07-01 15:13:21'),
(660, 6, 'Lg13GBHdI7xbrUstpqz40YnOFKTjczyO', '2021-07-01 15:44:43', '2021-07-01 15:44:43'),
(661, 63, 'ttUBDYnOKSMlkjyMqezFVg7FJuQKPxai', '2021-07-01 15:45:20', '2021-07-01 15:45:20'),
(662, 51, 'y5dwanD5OT2iZranRfplJK7lebzmlBMi', '2021-07-01 16:10:03', '2021-07-01 16:10:03'),
(663, 6, 'CX82irFNmE0Gu782pTM2Jjv6AZQiiOW0', '2021-07-01 16:25:21', '2021-07-01 16:25:21'),
(664, 44, '30GIQnWJzt8GfByoCQ0U9u5mRBhqy5a7', '2021-07-01 17:28:32', '2021-07-01 17:28:32'),
(665, 47, 'WjfXuSGquRAfTLKSMZ7cZx14e433n7aE', '2021-07-01 18:53:59', '2021-07-01 18:53:59'),
(666, 6, 'DkZV3pEmwEEfnIKjf42QZcNUGBUB0l2G', '2021-07-01 19:45:01', '2021-07-01 19:45:01'),
(667, 63, 'PkCVyfy6xjci8QUvVLL4j6XThkEWRPI2', '2021-07-02 11:12:48', '2021-07-02 11:12:48'),
(668, 49, 'K6ORh2piQmoEnlmGk0C4gynfXCUAHgri', '2021-07-02 12:25:02', '2021-07-02 12:25:02'),
(669, 47, 'uds07hfZGIuULKXNux232HVrFoIrYv4n', '2021-07-02 12:32:29', '2021-07-02 12:32:29'),
(670, 63, '2EowGwUL2zCwEJ61I01bygnkbFlOAeAD', '2021-07-02 14:54:54', '2021-07-02 14:54:54'),
(671, 51, 'Lr02gAZ7GV8DlX3BJFL03ztnMXP41iin', '2021-07-02 16:15:46', '2021-07-02 16:15:46'),
(672, 51, 'WFQwcJnjK9xNtKBeamueRGJewKk0tj5f', '2021-07-02 22:30:57', '2021-07-02 22:30:57'),
(673, 47, 'L21BltoKfhyHLPC3rA5t2LfoFNe1ex8d', '2021-07-03 00:08:39', '2021-07-03 00:08:39'),
(674, 63, 'xGEHk3KYxBWQvaCFKTluJ9GE9EuVvi16', '2021-07-03 02:09:22', '2021-07-03 02:09:22'),
(675, 63, '8WktbqsuAxCMtydNivGZdkkJfQtc4vZ5', '2021-07-03 02:20:34', '2021-07-03 02:20:34'),
(676, 44, 'UyNhoxb9UVsOxz2zNhaMLmt5rKoQPiNp', '2021-07-03 11:42:09', '2021-07-03 11:42:09'),
(677, 51, '0Fbt73QcHmvmnMxc7Sdbtaein7NlxaPM', '2021-07-03 12:03:50', '2021-07-03 12:03:50'),
(678, 63, '66BpmKjxjmflJFfyDrycKZTVDllgysX5', '2021-07-03 14:49:04', '2021-07-03 14:49:04'),
(679, 6, 'P4cZhJAoJuDc1qrJftVFdjPvdglDZW97', '2021-07-03 17:19:04', '2021-07-03 17:19:04'),
(680, 51, 'r5ryiFOe5tbV73nKlQ7isg1JiLqZI1yQ', '2021-07-03 17:56:29', '2021-07-03 17:56:29'),
(681, 6, 'a50xrI19Pi4jpEuw6ciTy5PyFvwX6n8P', '2021-07-03 19:24:27', '2021-07-03 19:24:27'),
(682, 47, 'WvXnFjygC9PUOl6yvUB9NHuha45qdYLI', '2021-07-03 19:55:19', '2021-07-03 19:55:19'),
(683, 44, 'CqJHxt76Oo7rDWWWN7WYObP4wGvvZS9d', '2021-07-03 19:55:21', '2021-07-03 19:55:21'),
(685, 63, '2dDcoj6V0a2MjSW6n2qd69VCshAwI0rm', '2021-07-03 21:48:42', '2021-07-03 21:48:42'),
(686, 6, 'OHw5KEVr0kYxTd8LNfPu0crZtq2g2Pn9', '2021-07-03 22:17:09', '2021-07-03 22:17:09'),
(687, 6, 'rMZkbATjMO5pxB0lxSns2EP4pr0oeMK1', '2021-07-03 22:40:29', '2021-07-03 22:40:29'),
(688, 6, 'EJPl6RlpqRhxDuT3lc5NXqjRZprFecPX', '2021-07-04 03:08:30', '2021-07-04 03:08:30'),
(690, 44, 'P8LYvxvim4wtJbtYvJWUSgflkZEShw69', '2021-07-04 11:46:39', '2021-07-04 11:46:39'),
(691, 51, 'VaV3B1dUFZCn2WgvTy1vnJMDXicgDnMh', '2021-07-04 12:43:54', '2021-07-04 12:43:54'),
(692, 47, 'daXcJbQxYzOrYFwdbdbiTx1tSun6jNB2', '2021-07-04 14:14:37', '2021-07-04 14:14:37'),
(693, 63, '3WCdqkoiF9W0DfoCKDl66ER9kDVpClGJ', '2021-07-04 14:32:27', '2021-07-04 14:32:27'),
(694, 51, 'WWhAomjyMIrJCfc8vx2o9meD6jBw5RuQ', '2021-07-04 16:26:59', '2021-07-04 16:26:59'),
(695, 44, 'oZJWqZ28Qa88WZ502R7HOvuxps5z0mZc', '2021-07-04 16:28:49', '2021-07-04 16:28:49'),
(696, 63, 'IVY7bcG0JYMmgSZ6NDe8GHcdoPUgS7RG', '2021-07-04 18:30:50', '2021-07-04 18:30:50'),
(698, 6, '59qUQaPIUmSxnAKmrgJR8Vlg0obH75Ce', '2021-07-04 18:58:21', '2021-07-04 18:58:21'),
(699, 63, 'ahgHWh18L3t8MyciEjK2MmRpuPZryBSx', '2021-07-05 01:22:38', '2021-07-05 01:22:38'),
(700, 63, 'CB2pjjcT6XwCJk7Cp3JIrkPR9P8NYBt2', '2021-07-05 01:24:47', '2021-07-05 01:24:47'),
(701, 63, 'xNTqEyOA7v6R9xkiAL8pfj0AnpfdtOKJ', '2021-07-05 01:26:33', '2021-07-05 01:26:33'),
(702, 47, 'h3K7ipfASdo1XwuyOSIsw2Q2GDiZhwVl', '2021-07-05 11:03:52', '2021-07-05 11:03:52'),
(703, 44, 'j1yCGJc107d2VhipxYckqcolXjshbKM5', '2021-07-05 11:59:34', '2021-07-05 11:59:34'),
(704, 51, 'tDJK8NTy5shXwBwRmMlDTr2GQKUhp5QN', '2021-07-05 12:38:29', '2021-07-05 12:38:29'),
(706, 63, 'E7fTpIUffjUrvTzfe4lrBOfyTu9fRKXq', '2021-07-05 15:08:40', '2021-07-05 15:08:40'),
(708, 44, '1qloAHrxmxSDVcbAfeIaJcodr5WfgtZ8', '2021-07-05 17:24:05', '2021-07-05 17:24:05'),
(709, 51, 'm7IMHS7yNh5IYsp8JPUtj60g6enUuTfA', '2021-07-05 17:54:45', '2021-07-05 17:54:45'),
(710, 56, 'Anq9v0qOKlcS0hvxBKk4j7uy7Lpzdp6v', '2021-07-05 19:42:36', '2021-07-05 19:42:36'),
(711, 47, '6N6c4v49HWoJR4xVrYajOMdWYFBrkDeY', '2021-07-05 22:33:45', '2021-07-05 22:33:45'),
(712, 44, 'VwhaS3CZj3Yj7EYxbMYVtBX6DopTcP9s', '2021-07-05 23:36:56', '2021-07-05 23:36:56'),
(715, 51, '6BBbTSXHVxUYVOcI0t6TnFZx8VMDljoZ', '2021-07-06 10:31:37', '2021-07-06 10:31:37'),
(716, 47, 'yAO3PHYsRatd2pLouCV5116Xgv8ybv0E', '2021-07-06 10:54:51', '2021-07-06 10:54:51'),
(717, 63, '4yGKOT9v2lPHE3T0bovXOEcBorHNI5Bw', '2021-07-06 13:00:15', '2021-07-06 13:00:15'),
(718, 44, 'DiSEwgr3wkhOTfl0eUd7d2W94re9bRqe', '2021-07-06 13:03:55', '2021-07-06 13:03:55'),
(719, 6, 'TxPE8YlxOgOmAW5bo2iTT1pus6UKP4Yc', '2021-07-06 14:31:45', '2021-07-06 14:31:45'),
(720, 6, 'u6ulYiNqn7aGbr13TF0106BugZnT56G6', '2021-07-06 15:05:10', '2021-07-06 15:05:10'),
(721, 6, 'yLg4yW8GUfVpjADHWINwjQeUDus8wtlH', '2021-07-06 15:07:06', '2021-07-06 15:07:06'),
(723, 63, 'tkGO25WGdbFpbPxsOnV7cJG643WfBF4z', '2021-07-06 16:12:55', '2021-07-06 16:12:55'),
(724, 51, 'eRfkbrQbqM7EzJYwwhSgCvEJ9BszgzzT', '2021-07-06 16:23:09', '2021-07-06 16:23:09'),
(725, 44, 'Muc1rxXtmlhd6aTvncVojm3SXA5P3euc', '2021-07-06 16:57:07', '2021-07-06 16:57:07'),
(726, 49, 'ZjkNR97x0eM1UlazTgLmJpQ8837lb5YR', '2021-07-06 17:53:10', '2021-07-06 17:53:10'),
(727, 63, 'Mc28HGsI4PiVokhJAlGT87UvysGvRy0C', '2021-07-06 18:31:53', '2021-07-06 18:31:53'),
(728, 63, 'TOKiEUqBg0HbaRFLVRKI36KNUvp07UeV', '2021-07-06 18:59:55', '2021-07-06 18:59:55'),
(729, 63, 'UwUW3exxL1WGJoUaqdVrHxnHNy3gNVKC', '2021-07-06 19:00:39', '2021-07-06 19:00:39'),
(730, 6, 'tDlGJzAOWgtBcI9eGjsbiT61oKfF7V8V', '2021-07-06 20:11:45', '2021-07-06 20:11:45'),
(732, 52, '6o1bEWnolalgc6d5g2tw4TODrYKyODdE', '2021-07-06 20:19:38', '2021-07-06 20:19:38'),
(733, 6, 'j5qSPI0GMwo1HZ0PMQ9chSeyIw4TVo6t', '2021-07-06 23:57:11', '2021-07-06 23:57:11'),
(734, 44, '58FMnZL4gVFg5Yy2j3UXcvYICWKmgcqr', '2021-07-07 12:15:06', '2021-07-07 12:15:06'),
(735, 49, '1gJNT2Nyv5blz3gK8cr3ViNSmlsX55CR', '2021-07-07 12:50:52', '2021-07-07 12:50:52'),
(736, 63, 'EGNDMDNjPYSEE9iJOjXKeHNQv7C7ZfWm', '2021-07-07 13:17:09', '2021-07-07 13:17:09'),
(737, 47, '2bDy8NDAYqpzXL9s7KokW5QvHFyYKhKu', '2021-07-07 13:28:12', '2021-07-07 13:28:12'),
(738, 51, 'Sop6f0NDdZxsu3LOE6JTNf0pSDe1EQf7', '2021-07-07 15:33:18', '2021-07-07 15:33:18'),
(739, 63, '5XQIGi1gVlPSwyJ7IJWcg5qyggZT0DdY', '2021-07-07 16:05:17', '2021-07-07 16:05:17'),
(740, 44, 'a42BNlKkpE23TDqwfEq0VDSVsdDjZt8Q', '2021-07-07 16:37:49', '2021-07-07 16:37:49'),
(741, 6, 'N9x7CkKkQEMAukNRcPqJ0yWGPvqY7w3C', '2021-07-07 19:31:46', '2021-07-07 19:31:46'),
(743, 6, 'ODg6kkBr4huIIRoWFUbR7Vr2Ff1lw4gB', '2021-07-07 22:30:00', '2021-07-07 22:30:00'),
(744, 51, 'C5ZPRAtzTxmbjxl9APkbJlgtPYjmpJRM', '2021-07-08 11:16:11', '2021-07-08 11:16:11'),
(745, 44, 'sIPti4zqgTT5zZSV352NwKDUS0CtMQSk', '2021-07-08 11:32:02', '2021-07-08 11:32:02'),
(746, 47, 'xUs0F4WmSiaWxP721seA9WhRSMaUDHGN', '2021-07-08 12:32:35', '2021-07-08 12:32:35'),
(747, 63, 'YJl4i5C8HChblJA8BpZsW0lTCFZ2l0tB', '2021-07-08 13:35:54', '2021-07-08 13:35:54'),
(748, 6, 'zBMeeihfxApeApq18KH6a2EDCR47uLYe', '2021-07-08 13:48:31', '2021-07-08 13:48:31'),
(749, 49, 'qb8agfZDbjeoZjd2MpGHCTwxmGdNtlzN', '2021-07-08 13:58:30', '2021-07-08 13:58:30'),
(750, 51, 'GaxdNkVOWJiRhcuJ7Hr3magc4JdEPU4s', '2021-07-08 15:11:04', '2021-07-08 15:11:04'),
(751, 44, 'WJPU6gl6A7eUJ5BwcgXp1d1RVK5XL27j', '2021-07-08 16:32:48', '2021-07-08 16:32:48'),
(752, 6, 'sOs4y5dAPctAlZbkIlKM4MiDEnrS2yH0', '2021-07-08 16:56:29', '2021-07-08 16:56:29'),
(753, 51, 'jloIvIqULXs2tnehTaLxsG0ZrvgxtOm8', '2021-07-08 17:28:21', '2021-07-08 17:28:21'),
(754, 49, 'TYcLD0Vy9sUIYhQDjBKsqxY47ePWREhv', '2021-07-08 18:44:14', '2021-07-08 18:44:14'),
(755, 63, 'ubgwPYZj5tmwLrqkXxOH7yQX6iF53cGX', '2021-07-08 20:17:10', '2021-07-08 20:17:10'),
(756, 6, 'KGyLAvvlwFOWtGZUbrh7xFpPV5NruPFI', '2021-07-08 20:42:50', '2021-07-08 20:42:50'),
(757, 47, 'VCtuWuGT93kQWsIHOlNvrMnzEwlItyNV', '2021-07-08 22:05:56', '2021-07-08 22:05:56'),
(758, 6, '9zHZ7kYxUNIGUcvQW1cYxjNViFmEaGn1', '2021-07-09 02:26:15', '2021-07-09 02:26:15'),
(760, 51, 'x8J2OCiRj0ZAgs8gWkLSGOlpQQkBd4SV', '2021-07-09 11:30:24', '2021-07-09 11:30:24'),
(761, 44, 'Wpk1zZveWXOdEGZV2dgin83SRN5ZVPt1', '2021-07-09 11:43:29', '2021-07-09 11:43:29'),
(763, 63, 'LmXQ4EqVahwMbyBYdgCJoXDmvYTlnToI', '2021-07-09 13:31:53', '2021-07-09 13:31:53'),
(764, 63, 'BzGbizznaKCz61C2084lUIct6RzKmTAq', '2021-07-09 14:20:34', '2021-07-09 14:20:34'),
(765, 47, 'amhkbz4wMwTQHcvTpbZI7CwoJbuPL616', '2021-07-09 15:21:05', '2021-07-09 15:21:05'),
(766, 51, 'iOeDIaI6dbmWfpTqNOTegLwgsX8hvbFP', '2021-07-09 16:48:29', '2021-07-09 16:48:29'),
(767, 63, 'o3ZGKMO5Fk6IJyfSp5FrL4OfZxp4Pg5N', '2021-07-09 18:36:27', '2021-07-09 18:36:27'),
(768, 62, 'IiWAih591UgFOMSQ8bvxfpqBJf8ogexn', '2021-07-09 18:50:23', '2021-07-09 18:50:23'),
(769, 44, 'Rhc1WaPRdorGLfOP1CIpoZf6XwnskpE9', '2021-07-10 00:57:53', '2021-07-10 00:57:53'),
(770, 63, 'mc1IDF9FS3FV2ls25Ik8dHAjF80NpbsT', '2021-07-10 09:47:35', '2021-07-10 09:47:35'),
(771, 49, 'oDqkZuQ5VgPwEBsglsktchpjbXksyq3M', '2021-07-10 11:03:20', '2021-07-10 11:03:20'),
(773, 44, 'H4vEgAHMwL7U0yrGcyXTQdxWSApdmC8p', '2021-07-10 12:16:53', '2021-07-10 12:16:53'),
(774, 6, '9TbPsik0QdU0o07hPN7EsR6Sv9OjAj4I', '2021-07-10 14:50:03', '2021-07-10 14:50:03'),
(775, 62, 'krdwEb4DElQmdoviRTI1TLUQTIkXejn0', '2021-07-10 15:06:29', '2021-07-10 15:06:29'),
(776, 47, 'UItt9fb2JiCAn51uelXqS4amVygj9mXl', '2021-07-10 15:53:47', '2021-07-10 15:53:47'),
(778, 6, '2EcnGgVXFs2mXpgMsasUfPa5XFrHFMEV', '2021-07-10 17:00:25', '2021-07-10 17:00:25'),
(779, 44, 'REYbuArkbPauEFSRv8x2DCcYJfQKWPDm', '2021-07-10 17:19:47', '2021-07-10 17:19:47'),
(781, 6, 'PAr54MEsVaQeSe0InmBAXsZc3gLlXE65', '2021-07-10 17:57:48', '2021-07-10 17:57:48'),
(790, 62, 'cl5WvGqPjWi1fGyN3ffK3jncAamZR4v1', '2021-07-10 19:05:17', '2021-07-10 19:05:17'),
(793, 6, '0UJo1bhSFLMfYcPVKugiAQnTpM4JCNQn', '2021-07-10 21:33:12', '2021-07-10 21:33:12'),
(794, 6, 'X8wvgO2UyEMagKrW38BrGiYWcs2dOaSM', '2021-07-10 21:37:46', '2021-07-10 21:37:46'),
(798, 51, 'EieSgVTRwYLeT35GVaS4U5qVfUC90nYE', '2021-07-10 23:53:51', '2021-07-10 23:53:51'),
(799, 63, 'm5DhfSsc9ONuBwWXOUhvBx6CYh7b7Ctf', '2021-07-11 06:36:36', '2021-07-11 06:36:36'),
(801, 44, 'tQVXK5E9OpcOKw46oQ6SGiySKrAj5p4q', '2021-07-11 10:50:57', '2021-07-11 10:50:57'),
(802, 47, 'yg7oML9JquVVfn8hNsT0cqTuTLjjIInc', '2021-07-11 11:40:20', '2021-07-11 11:40:20'),
(803, 49, 'dYZA1AIi4FKHfbn8xjlhQF7um9m9tr2e', '2021-07-11 13:18:48', '2021-07-11 13:18:48'),
(804, 49, 'eOZCKdKiShKe7lKXbmPEzHwgqeyBLNkF', '2021-07-11 13:25:30', '2021-07-11 13:25:30'),
(805, 6, 'qcotVvYUco2LVPhjURKVHRiFdGrw43iH', '2021-07-11 14:04:06', '2021-07-11 14:04:06'),
(806, 44, 'J20LyoGtQXddgAdBFKLZYG25QU5kN8bh', '2021-07-11 16:44:37', '2021-07-11 16:44:37'),
(812, 6, 'D0tQDv9nVfKHqMkHru0BwQXk7JgRjONu', '2021-07-11 17:21:24', '2021-07-11 17:21:24'),
(814, 51, 's93JprCMiZk89bqxwO8FXGv0ZJtfZsjn', '2021-07-11 18:02:44', '2021-07-11 18:02:44'),
(816, 6, 'DteI0O7WFV2XUi5xD3MUNUdOR6TZLAEd', '2021-07-11 18:57:45', '2021-07-11 18:57:45'),
(825, 6, 'H3oW5dPmQ49VaGZYLRZEn1InIZL5NqpD', '2021-07-11 19:29:26', '2021-07-11 19:29:26'),
(829, 6, 'tCIjSkdXN2dcTCcz5CxfXLUbXUpKl92v', '2021-07-12 03:07:03', '2021-07-12 03:07:03'),
(832, 84, 'bHtgzt6gyeZu2J8zYtsGO5zednAdhZhn', '2021-07-12 03:09:27', '2021-07-12 03:09:27'),
(833, 82, 'HAm3eoPCIoIzgJe8ukvj4G1q9J5pOHvJ', '2021-07-12 03:20:10', '2021-07-12 03:20:10'),
(834, 63, '1pxhBZV7WnyVVWaK2yXcjLMLbGf4OhUx', '2021-07-12 03:49:46', '2021-07-12 03:49:46'),
(835, 44, 'WYVvX7T9iF9AL8rSKnyTCbNhN5T9TI4i', '2021-07-12 11:36:44', '2021-07-12 11:36:44'),
(836, 47, 'MQfPrhFlre7QvMrbtyDIPfyx0ymbQ980', '2021-07-12 11:47:22', '2021-07-12 11:47:22'),
(837, 49, 'ZHlfyG81UHxmPZmdjnN98os7u1deWU0Z', '2021-07-12 13:04:59', '2021-07-12 13:04:59'),
(838, 6, 'viY7FwZZ1zhKfYkgBgKR5Mx3KN3E0EdC', '2021-07-12 14:12:25', '2021-07-12 14:12:25'),
(839, 6, '30pHZ5YkiX85HLl8rpHtDm2SMaSbK8xp', '2021-07-12 14:41:47', '2021-07-12 14:41:47'),
(845, 63, 'yKJZgiOkIc1r3lyNyu5xFiFrpmnf0rK7', '2021-07-12 18:23:47', '2021-07-12 18:23:47'),
(849, 6, '6CNed3lRN1D9jc1qB7qrmlDB7LljZFgU', '2021-07-12 19:49:38', '2021-07-12 19:49:38'),
(850, 62, '6ca0puCR8gnGQssS3F571Vkeo4voKjoC', '2021-07-12 20:03:02', '2021-07-12 20:03:02'),
(851, 6, 'dE6sXPTpPM6o46nFIYasEd2wEQtsbXts', '2021-07-12 21:05:49', '2021-07-12 21:05:49'),
(854, 51, 'QKXcrq7K2p6K9vuFtjNWBAn0m9BCNRMn', '2021-07-12 21:13:18', '2021-07-12 21:13:18'),
(855, 47, 'H7hiAEodqzgWpj6mPsCLSfCrHb4Q3ghM', '2021-07-12 23:06:51', '2021-07-12 23:06:51'),
(856, 82, 'PVtSAWBpLItxR9XiC51amYacoUMXFAMa', '2021-07-13 01:12:29', '2021-07-13 01:12:29'),
(857, 6, 'Q5sNF6KBb0k7tHENI7uC8GyqHrbWYNoS', '2021-07-13 01:27:52', '2021-07-13 01:27:52'),
(858, 63, '4NVl62NqUYOyReVOELOHanhH7CsH5TFV', '2021-07-13 02:22:57', '2021-07-13 02:22:57'),
(859, 63, 'nFPeNzZIyzTwij5qVCkgveulh6V6Czzq', '2021-07-13 02:25:09', '2021-07-13 02:25:09'),
(860, 6, 'teaw8k02ZtOQWK0t46KElJ7XFnigAgXL', '2021-07-13 03:44:20', '2021-07-13 03:44:20'),
(861, 49, 'Xe8Wm3MliM73JYeBkfLz4ntmlHbIHfL6', '2021-07-13 10:52:10', '2021-07-13 10:52:10'),
(862, 47, 'qjw3nN8ug6PrAZXCek5hKWHUgOQjW4mI', '2021-07-13 11:45:02', '2021-07-13 11:45:02'),
(864, 44, '35jlTjvI7w8I9ZiUC7shsYsjvZW3AtHl', '2021-07-13 12:14:16', '2021-07-13 12:14:16');
INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(865, 63, '3m80Tzibo255xPLyZ0y2ObARZEWiuZJT', '2021-07-13 13:40:26', '2021-07-13 13:40:26'),
(866, 44, 'Tle7Nd7CNviPkIEKuipdCAho19dwzSFs', '2021-07-13 14:48:02', '2021-07-13 14:48:02'),
(867, 63, 'gVJzS07teuj1klZtDNcZO7hjLd3JFt0O', '2021-07-13 14:57:01', '2021-07-13 14:57:01'),
(868, 6, '0ImpLtcapvIbR4laarwNb5ZmFNuhHmjk', '2021-07-13 16:05:17', '2021-07-13 16:05:17'),
(869, 6, 'DRQ7psZ0bvsqEGbnTP6Qw2brJuehxN06', '2021-07-13 18:16:36', '2021-07-13 18:16:36'),
(875, 6, 'pZKzuEYTBzHScARv58CLvLRGA3rEgmAN', '2021-07-13 20:24:35', '2021-07-13 20:24:35'),
(882, 51, 'Pj7eHl8e3oySs328OrdJ7AZFyhckKvTc', '2021-07-14 01:26:25', '2021-07-14 01:26:25'),
(883, 63, 'ikRIUoXRzXrtC2zWs31nCw2nyTm9aNvY', '2021-07-14 01:27:09', '2021-07-14 01:27:09'),
(884, 62, 'Bf3dwbavNXNp5HxzGewml4UXA2MeUIMn', '2021-07-14 01:28:51', '2021-07-14 01:28:51'),
(885, 62, 'uhBd5ib5OKpSZYLH6IE6bi88JpUfbVfR', '2021-07-14 01:37:35', '2021-07-14 01:37:35'),
(886, 63, 'jemgVojntdbEQUL90Cr4vDRxY1EAL7zi', '2021-07-14 09:25:20', '2021-07-14 09:25:20'),
(888, 47, 'qJRdbhSE9XITPKWe2KhsCzuuOT3NpsMB', '2021-07-14 12:30:50', '2021-07-14 12:30:50'),
(889, 44, 'CC03e7S5sIuDZbvueZLKg4MfngDKsJr4', '2021-07-14 12:45:37', '2021-07-14 12:45:37'),
(890, 63, 'tVL14Un0sn0JNo4aaubZettuqyJIPNOa', '2021-07-14 14:21:58', '2021-07-14 14:21:58'),
(891, 63, 'H42tiA0F2swffOxu7lgDg5F3AyilxW54', '2021-07-14 14:29:56', '2021-07-14 14:29:56'),
(892, 77, 'h3OeXpOInTWBpdUPEbqZdlB2w4sQ2tes', '2021-07-14 15:39:57', '2021-07-14 15:39:57'),
(894, 47, 'SHrLEtdVTB7UpXyrjQGxw64uGl0bIyca', '2021-07-14 17:19:53', '2021-07-14 17:19:53'),
(896, 44, 'xuYqZFM8NldXD46gPXuw8Ew7Vilcn4vE', '2021-07-14 18:19:13', '2021-07-14 18:19:13'),
(897, 6, '9RBAMtwScD5zVgqlB45e1aMie8dO9R7P', '2021-07-14 19:33:42', '2021-07-14 19:33:42'),
(898, 49, 'EpwnKuSsu7YZnr1KrwXSUGWCBshXzmiS', '2021-07-14 19:49:15', '2021-07-14 19:49:15'),
(899, 49, '5z3Q2PoVnNJBsmdWo5dvMfOGbQyMzYCh', '2021-07-14 19:54:35', '2021-07-14 19:54:35'),
(902, 63, '1xDm0fPit99ogNm8xrbMd0L32zIFk9yT', '2021-07-14 20:25:19', '2021-07-14 20:25:19'),
(903, 6, 'J3peIqgOSwguC4WEUSY6T6a8lECkrrXf', '2021-07-14 23:44:50', '2021-07-14 23:44:50'),
(906, 51, '51J9Be8LEg8G1f9CM28Qw4VKzMQm9HJv', '2021-07-15 02:24:34', '2021-07-15 02:24:34'),
(907, 63, 'NRyveNAbJiJHNmJO9NTzEqA6QwJ3WoaJ', '2021-07-15 10:33:42', '2021-07-15 10:33:42'),
(908, 49, 'Q1b3xf6zLII4KE1DH20kEjqkk3DVRAUK', '2021-07-15 11:31:08', '2021-07-15 11:31:08'),
(910, 44, 'pg5zJY6rTvqQCPlXqwfqN1KmrCRcRYSn', '2021-07-15 12:58:59', '2021-07-15 12:58:59'),
(911, 63, 's8CqblxJrHx10icCzLwAkuGjoUZkKmzp', '2021-07-15 15:20:54', '2021-07-15 15:20:54'),
(912, 47, '262Wj8OmeT6zpoBjnR6YAvltB4n5OEsx', '2021-07-15 15:49:38', '2021-07-15 15:49:38'),
(913, 44, 'D9qvkhbDuPc9WMnaqinN2R1vgv109qdJ', '2021-07-15 16:22:22', '2021-07-15 16:22:22'),
(915, 6, '41X8e59ZlZkSzVcfbVDsKp9up4jiNnfW', '2021-07-15 19:37:28', '2021-07-15 19:37:28'),
(917, 6, 'U9h1PUiPbubxczhNxjKcD845XU5DvCCz', '2021-07-15 22:17:06', '2021-07-15 22:17:06'),
(920, 63, 'D2ONTvnungFdCh0Yy69Wn8AE56VNxQn3', '2021-07-15 23:15:31', '2021-07-15 23:15:31'),
(922, 51, 'srs9zX9DIZ1sqjJ4kLf5UxUcNeIgHweV', '2021-07-16 00:12:22', '2021-07-16 00:12:22'),
(923, 6, 'wD0w9xjLD8SK4Ox5gej1GhNGnwytQvan', '2021-07-16 00:26:13', '2021-07-16 00:26:13'),
(925, 82, '4PHQ8S1KJKaMe5NsZInxL23pxLnTBQeE', '2021-07-16 01:46:54', '2021-07-16 01:46:54'),
(926, 83, 'eV6NbWfvrxSQNZKCvhnBhQdU58yrOxTM', '2021-07-16 02:50:54', '2021-07-16 02:50:54'),
(927, 63, 'RTnlhY7QKTt3pJU5SWD5Il8qWskGHA8e', '2021-07-16 09:53:31', '2021-07-16 09:53:31'),
(928, 82, 'rdGLcQWVRQmdckQaGDX7eEQL1alXTh8m', '2021-07-16 10:20:20', '2021-07-16 10:20:20'),
(934, 44, 'RR0rsAH0QK7budO825oV0Hw3wBpOY06e', '2021-07-16 12:02:18', '2021-07-16 12:02:18'),
(935, 47, '2vZkQWhKWTBVBzEAlclwYMOg6zGdbwO1', '2021-07-16 14:08:03', '2021-07-16 14:08:03'),
(936, 6, 'EIFiYCqhS7ABjXojEGKVPH7gxPl4KINC', '2021-07-16 16:30:57', '2021-07-16 16:30:57'),
(939, 6, 'MRafCBJnXhSjlQlULCGzOAEGKkCo0wE2', '2021-07-16 21:29:33', '2021-07-16 21:29:33'),
(940, 47, 'BeLWnQaeAllwxsBBcV7dHPJlt5ntDICG', '2021-07-16 21:40:41', '2021-07-16 21:40:41'),
(941, 82, 'Y4cQucO2DFh8Spyxw2soA2fnByyzsljh', '2021-07-16 22:03:09', '2021-07-16 22:03:09'),
(942, 63, 'vNosMXht7eyKAjiCVaf1cHbqGZI4q3wI', '2021-07-17 01:02:11', '2021-07-17 01:02:11'),
(943, 63, 'PT5qU78M325x30pUyUllN8THtDRGSHrT', '2021-07-17 01:08:30', '2021-07-17 01:08:30'),
(945, 51, 'G1VEIgFx7j70C3VVbeBOIrRXyYdhBMp1', '2021-07-17 01:47:11', '2021-07-17 01:47:11'),
(946, 63, 'BfZr1iBDdnomtXDPe2cEWLTW363EkgDY', '2021-07-17 09:13:33', '2021-07-17 09:13:33'),
(950, 44, 'vlJnDT8Bt1GxdNKABi65JIDqXmo03sW2', '2021-07-17 11:52:10', '2021-07-17 11:52:10'),
(951, 49, 'cqUXorMrShmqYlZgLPQ0iqBwcr06M3RM', '2021-07-17 12:01:53', '2021-07-17 12:01:53'),
(952, 47, 'Rkx9JambnSetr31aUoGtopFRfs6uRLWP', '2021-07-17 14:40:36', '2021-07-17 14:40:36'),
(953, 44, 'I0gPc1LOGdOfRKKYXOQBenY2HCB2ZGXC', '2021-07-17 16:13:13', '2021-07-17 16:13:13'),
(954, 49, 'NKMHyIve6mnfnWyq5hp3xHLXpOCfkquo', '2021-07-17 22:08:12', '2021-07-17 22:08:12'),
(957, 82, 'b5jtq7eL1BMJ58H9fC4OBf4bdPCi958f', '2021-07-18 00:06:08', '2021-07-18 00:06:08'),
(958, 51, 'hMPDXPjCNOFMw19MPe0u3B3SkHbc22S5', '2021-07-18 00:06:10', '2021-07-18 00:06:10'),
(959, 82, 'RQsvpotJFH4GZMqoFYiSK31IJ1lQlKnz', '2021-07-18 00:06:44', '2021-07-18 00:06:44'),
(960, 82, 'djnC8LtSRy0wd4nKduS1NXjEbBrcAWAH', '2021-07-18 00:07:15', '2021-07-18 00:07:15'),
(961, 83, 'JCogNiTrMhPFND1dsszrfwHPH2IIYYrZ', '2021-07-18 00:07:28', '2021-07-18 00:07:28'),
(962, 82, 'x82SPf05tUcnFUDL19i388wQU4xK63gU', '2021-07-18 00:12:00', '2021-07-18 00:12:00'),
(963, 85, 'KnJljVzm7UvqKYKOl1iJdQZztLmuomfu', '2021-07-18 00:12:57', '2021-07-18 00:12:57'),
(964, 63, 'nIjLia8JuSGESGGVqA0a6dnMyUifz5zG', '2021-07-18 04:56:28', '2021-07-18 04:56:28'),
(966, 63, 'uD1XhomNKrhcdYWVMO2Ay6DtjVsqe1xO', '2021-07-18 11:54:41', '2021-07-18 11:54:41'),
(967, 44, '7b4hV4ivuYUAFC3Bdkc531a1UTbwts1K', '2021-07-18 11:54:41', '2021-07-18 11:54:41'),
(968, 47, 'plvsTklA7MdsnzPNYbXZcSn6hMsXtInY', '2021-07-18 13:04:53', '2021-07-18 13:04:53'),
(970, 82, 'J6V0GCj1lKE7EOqjqu5QOApKH0EVL0o1', '2021-07-18 14:40:36', '2021-07-18 14:40:36'),
(971, 82, 'd2uIT2oWCXSCH8Ma0ENl0RPn0bXTjBz3', '2021-07-18 14:41:39', '2021-07-18 14:41:39'),
(972, 83, 'jj98Nt9WVKDOnhegeL4v99Xz5zabSi2U', '2021-07-18 14:42:42', '2021-07-18 14:42:42'),
(973, 82, 'LRnQkjQxa6WSbFNoxlwiEqfWumeQLKzu', '2021-07-18 14:53:45', '2021-07-18 14:53:45'),
(974, 82, 'Td56UsEUaznd1xv4xTqss2yZV41nFAJu', '2021-07-18 16:49:30', '2021-07-18 16:49:30'),
(975, 6, '5AdHQukkfoz4LfJPHHm4B7kExw3h6lHb', '2021-07-18 17:22:25', '2021-07-18 17:22:25'),
(976, 82, 'm9gcPonRDm5qaKbBphSkMm48kIVozGjS', '2021-07-18 17:35:21', '2021-07-18 17:35:21'),
(979, 51, 'Ha20Q02ZIrCeAGhsCwZtpBmj3bVYLN22', '2021-07-18 18:26:20', '2021-07-18 18:26:20'),
(980, 6, 'cKx41PwfKJS3IPRfgApdtxooNIVJlbgo', '2021-07-18 19:37:26', '2021-07-18 19:37:26'),
(981, 6, '5yMdBGnX4dDOFbhunqTlWsOZmfaPirFD', '2021-07-18 22:40:53', '2021-07-18 22:40:53'),
(982, 84, 'cZAL8r1Y7n15uqKTmRAVyKlOflpkzKMX', '2021-07-19 01:48:38', '2021-07-19 01:48:38'),
(984, 85, '5VSmjD75KygFIsGb7YfZhEPHnDy3kD4w', '2021-07-19 04:18:40', '2021-07-19 04:18:40'),
(985, 63, 'pM8SfdXCUBFh0WPZl5aWiOk3BZgtQbVF', '2021-07-19 11:25:25', '2021-07-19 11:25:25'),
(986, 51, '3cE90WrBKqpTJh37TPUUKeZbkGSjpdJP', '2021-07-19 11:29:49', '2021-07-19 11:29:49'),
(987, 47, 'fhFxz2Cs90Pyc4CgwTibuI6hTLt76QpF', '2021-07-19 11:31:13', '2021-07-19 11:31:13'),
(988, 44, '3Ikrqc9u3hUFSkNnyC3nOUtXhluSHY7W', '2021-07-19 12:17:42', '2021-07-19 12:17:42'),
(989, 84, 'wgWwvyx9VpjiIBp0zAzhIMf700M247e7', '2021-07-19 13:06:17', '2021-07-19 13:06:17'),
(990, 85, 'ahcgK5nK5HjJKARyITqvdCoCyZJPxcFS', '2021-07-19 14:44:48', '2021-07-19 14:44:48'),
(991, 6, 'Z2wzPIEfEgpDuI6bXOkdlpfX9hLtybMb', '2021-07-19 14:53:37', '2021-07-19 14:53:37'),
(998, 6, 'djVfzkDIswdD61TVSFlxkxBz52J3FkoX', '2021-07-19 17:37:04', '2021-07-19 17:37:04'),
(1000, 44, 'a9bh8bS8nERta316oDvz5D3hBeeHUQsN', '2021-07-19 18:37:40', '2021-07-19 18:37:40'),
(1001, 6, 'liShBqKQkchl0EMfmNBXOE4zlTsAATb2', '2021-07-19 20:18:22', '2021-07-19 20:18:22'),
(1002, 51, 'XZB1xJBE3xWCqEmPtf3wXuOuiPN5DzhM', '2021-07-20 00:24:43', '2021-07-20 00:24:43'),
(1003, 47, 'uAywAC9sMPaMzsDolGBytCQkBxpYa0Dr', '2021-07-20 12:32:46', '2021-07-20 12:32:46'),
(1005, 63, 'JB5qcHmFO75X6cp2fvpRzwmSFQfZZIew', '2021-07-20 14:50:44', '2021-07-20 14:50:44'),
(1008, 47, 'y9Pa0e8psunzzHBHGZdrktNv0xWf3RoZ', '2021-07-20 23:48:19', '2021-07-20 23:48:19'),
(1011, 63, 'eQPm0j3VEtdn8Z7Ew0xLtyb5PsCzQWuQ', '2021-07-21 01:44:27', '2021-07-21 01:44:27'),
(1013, 51, 'GprK4nn3qS28Ez2XmKf2e0lqxfcLkIgq', '2021-07-21 01:51:16', '2021-07-21 01:51:16'),
(1014, 63, 'EvHLTxJICGGSfZk9K5I3oV3dAwpnwdsC', '2021-07-21 09:42:59', '2021-07-21 09:42:59'),
(1015, 51, 'RsMEwA84EkrFcUTiLO18dSRyM3oe4osZ', '2021-07-21 12:48:06', '2021-07-21 12:48:06'),
(1016, 47, 'gfr3vge9wZvhzsmCww9W6GqnCWeopTAw', '2021-07-21 13:12:51', '2021-07-21 13:12:51'),
(1017, 49, 'bctEG3DslctedY29RgCNNOcJTQQg4BJj', '2021-07-21 14:39:25', '2021-07-21 14:39:25'),
(1018, 44, 'GzBNWmjBOxjR9xijOMblAKYdwxgqK9xJ', '2021-07-21 14:43:12', '2021-07-21 14:43:12'),
(1019, 63, 'ryj3S2JPv1f5bENsUW6INn4wQD5sIPBJ', '2021-07-21 15:56:38', '2021-07-21 15:56:38'),
(1022, 51, 'XEEXg9zoG4m5M6wKMbbHPGJngFgITCJ1', '2021-07-21 20:06:46', '2021-07-21 20:06:46'),
(1023, 63, 'FJHi3fevYJLphzj0HcKOdWp2eQiakuC3', '2021-07-22 10:21:36', '2021-07-22 10:21:36'),
(1024, 47, 'JFXGXsB6Pyg5WzZ5NM2nk2KXQJ20dbBL', '2021-07-22 11:51:19', '2021-07-22 11:51:19'),
(1025, 44, 'PobA3cA3jszQZrFJVPze5hVfe1VCyLZ6', '2021-07-22 12:43:09', '2021-07-22 12:43:09'),
(1027, 44, 'Ah1Kl8GDjqGNuWxUXB3tGDH6YOp5BJOu', '2021-07-22 17:24:13', '2021-07-22 17:24:13'),
(1047, 51, 'YljBlKJhRMOnxcgztkljNsc81udEajb4', '2021-07-22 23:43:09', '2021-07-22 23:43:09'),
(1048, 63, 'OQ3bNF8UjhuIzBbXSgdrT0RhKEaRK5TT', '2021-07-23 06:16:23', '2021-07-23 06:16:23'),
(1051, 51, 'TV4gqbQzGSMTkMcF4FPOu1STXHGUpdgQ', '2021-07-23 11:14:18', '2021-07-23 11:14:18'),
(1052, 47, 'lczxaASxLsJAEjlOS9BQ1l0Ahm8ZO1DT', '2021-07-23 11:32:37', '2021-07-23 11:32:37'),
(1053, 49, '5XcVOwDBuriNuSe0Y3PDlWpWSjHRbe93', '2021-07-23 11:39:04', '2021-07-23 11:39:04'),
(1054, 63, 'RP55bd0gZwYRNVKt9RK9Z8XMxNWo8EtY', '2021-07-23 12:55:03', '2021-07-23 12:55:03'),
(1055, 44, '6uZDOBJF4bLgTQCume73jTZtZRsPkxIj', '2021-07-23 15:08:26', '2021-07-23 15:08:26'),
(1058, 51, 'jpUgdzrZKFBwXewBWWMB4a7rGLhejXz0', '2021-07-23 19:19:12', '2021-07-23 19:19:12'),
(1059, 63, 'DrQw2qnxX8fTeGl4nii51HkOXVSmSfvg', '2021-07-23 22:14:11', '2021-07-23 22:14:11'),
(1062, 6, '6TvrxyiMVH2zNQMaEOsucjSnbskLTqFK', '2021-07-24 01:56:42', '2021-07-24 01:56:42'),
(1063, 6, 'DZE1YfEu58ZqgZn17Yszdw1Vb5HLIrbS', '2021-07-24 02:43:14', '2021-07-24 02:43:14'),
(1064, 6, 'fwjKoa03WKeaIN7t5f8G8zfPotZNOx0c', '2021-07-24 10:58:12', '2021-07-24 10:58:12'),
(1065, 51, '1NC8BD9Japb2Edz85dHotW0DovSpqWnv', '2021-07-24 11:11:31', '2021-07-24 11:11:31'),
(1066, 44, 'qIajWqjlSd5gXdqYwW0m3uvLYqLILEDP', '2021-07-24 12:30:00', '2021-07-24 12:30:00'),
(1067, 47, 'x5IjsakmKx1SgJSCtBU0PcHNGkNVJhNe', '2021-07-24 12:57:47', '2021-07-24 12:57:47'),
(1068, 63, 'A7tm6U6E79DFTT5ZD8Yrjo4HCMcI4NrP', '2021-07-24 13:39:07', '2021-07-24 13:39:07'),
(1070, 6, 'jQLP0JI6phuy0UxYmmUu3HAYjRihfPl2', '2021-07-24 14:21:37', '2021-07-24 14:21:37'),
(1073, 6, 'n82q8Nj5EnQrmRZbCWO7r71fLowfHd9k', '2021-07-24 15:01:46', '2021-07-24 15:01:46'),
(1079, 49, 'exvTN33TtETMZI0ztHjO7GfWZuAL0iK9', '2021-07-24 18:39:24', '2021-07-24 18:39:24'),
(1080, 49, 'w0Wm1SKnN9zooCw4geo4HfsZTJktS4iP', '2021-07-24 18:42:00', '2021-07-24 18:42:00'),
(1081, 62, 'V9MdzA0oa9gn6gKci5q5SnUeylOKus4H', '2021-07-24 21:30:29', '2021-07-24 21:30:29'),
(1084, 49, 'uvsALr7ZILJirC5NRLWS0CyN1zDqzML2', '2021-07-24 23:38:03', '2021-07-24 23:38:03'),
(1086, 51, 'E5COClYjov80LKpM4oqSluDIwshWRnTV', '2021-07-25 01:32:24', '2021-07-25 01:32:24'),
(1087, 63, 'vmPI0hNRncK3aZ5T2m4dJeoBgAqfIlQt', '2021-07-25 10:25:03', '2021-07-25 10:25:03'),
(1089, 47, 'y3Vj62Z8YRfbhozd5rcL2WuT5yBsC5Mi', '2021-07-25 11:45:58', '2021-07-25 11:45:58'),
(1090, 44, 'oDTK1OG2R28argkLnarVpJSl2iDw5Ae8', '2021-07-25 13:10:03', '2021-07-25 13:10:03'),
(1091, 49, 'LTwUaMuGw4pZzJn50uBIKAmTF5cUC8WN', '2021-07-25 13:15:07', '2021-07-25 13:15:07'),
(1092, 6, 'z2gJMpfsO80CpbGEpNJc0gCBJORIWS6L', '2021-07-25 14:20:43', '2021-07-25 14:20:43'),
(1093, 63, 'DzrYfOzjkqR0q31pRGq6AgKHcr40GhFz', '2021-07-25 14:27:24', '2021-07-25 14:27:24'),
(1096, 6, 'yByHIXXrtdEKoedrnVWLIvDKkra1626z', '2021-07-25 16:23:51', '2021-07-25 16:23:51'),
(1099, 44, 'VkO6jFMZ4xbZHiAoCEVvMooThMavVm21', '2021-07-25 18:02:27', '2021-07-25 18:02:27'),
(1100, 6, 'QR4rzIxgfl4CBSkY9XrqX6D4Y2HXrkgY', '2021-07-25 18:06:08', '2021-07-25 18:06:08'),
(1101, 6, 'SIwh3NwIaq0wJbyM8vLARcsdPQzLMtbJ', '2021-07-25 18:07:03', '2021-07-25 18:07:03'),
(1107, 51, 'twG9Ofrt7rHPpHoqL90ibLlBj60sbypD', '2021-07-25 19:22:52', '2021-07-25 19:22:52'),
(1108, 6, 'pbXpgQC77sjOZPbmYKIBmLjgZy7tyFpd', '2021-07-25 20:48:11', '2021-07-25 20:48:11'),
(1109, 6, 'LXI51lEEe8asxhbFbg5AMN3JKc70GtrY', '2021-07-25 22:21:50', '2021-07-25 22:21:50'),
(1110, 63, 'ZOmjybQjvEa2nRV43GNuiOEgw1d2fKtM', '2021-07-26 10:50:40', '2021-07-26 10:50:40'),
(1112, 47, 'VYSkn1mxHtSXnVJBRisvjNdfGSF5Q6HE', '2021-07-26 11:50:42', '2021-07-26 11:50:42'),
(1113, 44, 'mo3NtzhAjr7qq4X08qWxVcy3n54xjRSL', '2021-07-26 12:05:04', '2021-07-26 12:05:04'),
(1115, 51, 'rY5pXqJnLqcYUpTgeVhfaDkCAp3K1zzn', '2021-07-26 17:05:11', '2021-07-26 17:05:11'),
(1116, 44, 'YPb5V2v1VcJb6YrexEPClPpYbVBHauRw', '2021-07-26 17:07:55', '2021-07-26 17:07:55'),
(1117, 6, 'ctuAouM3GcpSM7i75KJjZgz3sh49Dqjc', '2021-07-26 19:55:36', '2021-07-26 19:55:36'),
(1118, 6, 'pMctzbfCnmnFyBN2Tn8muG1ytbKEhnS7', '2021-07-27 00:15:27', '2021-07-27 00:15:27'),
(1119, 63, 'GCGLHiKmPmIaThE6xSlkI6u99VDMSasv', '2021-07-27 00:28:11', '2021-07-27 00:28:11'),
(1120, 44, 'g8MpIX8AKohSzsH5QVVXcxyhSKIG7zqL', '2021-07-27 00:33:27', '2021-07-27 00:33:27'),
(1122, 47, 'iRi14NF2LRzDaVif1QRFfehYSSIS1KNC', '2021-07-27 01:06:06', '2021-07-27 01:06:06'),
(1123, 6, 'DXPYfgvVHaP5JLpQp0SWpSJMMGnD2UZZ', '2021-07-27 03:05:53', '2021-07-27 03:05:53'),
(1124, 63, '5aYjCyLMZAznaILq08I2YWBNeFoQ44Uc', '2021-07-27 10:09:06', '2021-07-27 10:09:06'),
(1126, 44, 'CCLoi0Yn09qJBkqGCWutbUg2F0PUFGEP', '2021-07-27 12:48:21', '2021-07-27 12:48:21'),
(1127, 49, 'UJLQ7zqSuReKljYCgDhVlW6nGIsgnUql', '2021-07-27 12:55:37', '2021-07-27 12:55:37'),
(1128, 47, 'hMSq27mk5jHpBynzQ1vXYx7L25BZoENF', '2021-07-27 13:28:53', '2021-07-27 13:28:53'),
(1129, 44, 'tV2DXiZ0oZ8VFLcAM59sMir6zAy4IVF8', '2021-07-27 15:27:29', '2021-07-27 15:27:29'),
(1132, 6, 'zAKrsI1WkLu9ksLI25AWWUhb5UHGvlD6', '2021-07-27 17:25:28', '2021-07-27 17:25:28'),
(1143, 6, 'lOwlnlrzdJAfFt4k7k7wLg5yz7pCqz5z', '2021-07-27 21:31:22', '2021-07-27 21:31:22'),
(1146, 51, 'AZ5dHvzV2UkfiT5amJleJoSpAFRjpfhf', '2021-07-27 22:34:58', '2021-07-27 22:34:58'),
(1147, 63, 'EDVLvxOCUlznIrGskGsufMTM6RvmZkyd', '2021-07-28 09:32:07', '2021-07-28 09:32:07'),
(1148, 63, 'r1CMigVkPBMTWbCbHVoernqaf3QOxZ8q', '2021-07-28 09:35:21', '2021-07-28 09:35:21'),
(1150, 44, '6vomqrcLYsSWLmurJy9iE9WcqCuTFWo5', '2021-07-28 12:00:30', '2021-07-28 12:00:30'),
(1151, 63, '0aNIAHWKSgR3PKHPZQOWz9O61FVk0xaj', '2021-07-28 13:32:51', '2021-07-28 13:32:51'),
(1154, 6, 'teXLN4TKFhyNiJhmmV38nKfaSjuzuEcp', '2021-07-28 15:27:36', '2021-07-28 15:27:36'),
(1158, 51, 'oWhS4dPO57JgaNm9n75qKLEMJh7QI0CK', '2021-07-28 17:45:03', '2021-07-28 17:45:03'),
(1159, 6, 'VS6jQMGSYKn7eyjsA0IExylEn9OsUnbP', '2021-07-28 18:02:31', '2021-07-28 18:02:31'),
(1161, 44, 'ztGRXq4UZoV4oBLMS1kKC7c1ZwiKuBY1', '2021-07-28 19:18:23', '2021-07-28 19:18:23'),
(1162, 47, 'mKPdKsVv4YvZ9dOXXitn6rwVLPAKEu1E', '2021-07-28 19:28:23', '2021-07-28 19:28:23'),
(1165, 44, 'Ah9fPtIfBYUutXy87BQE6hwq1nFwGHht', '2021-07-29 12:39:57', '2021-07-29 12:39:57'),
(1167, 47, 'MMbg3H6adZrmr8LrjOzRnHFL7tgbbbB5', '2021-07-29 14:05:14', '2021-07-29 14:05:14'),
(1168, 63, '7ipppNnumxzUPdnNBefLtkng4DvGuBlG', '2021-07-29 15:45:26', '2021-07-29 15:45:26'),
(1169, 6, 'UlQ277PJSzcBJq1iMEQc0WY1H2J9SYEe', '2021-07-29 16:16:26', '2021-07-29 16:16:26'),
(1170, 44, '4sNoFsOzTCeepCT5zDcpZVPgs8ahfBYh', '2021-07-29 16:23:10', '2021-07-29 16:23:10'),
(1171, 63, 'vHagM2wr6Uo68EM5E0T2QP9ziJ1Q195W', '2021-07-29 16:46:49', '2021-07-29 16:46:49'),
(1172, 6, 'CyfCbwh3DoZ7CNOPIr39L8lJz01PRxXF', '2021-07-29 17:04:44', '2021-07-29 17:04:44'),
(1176, 51, 'X4C16HB6qvotamIaPMP3hZPau2uFceWu', '2021-07-29 20:40:58', '2021-07-29 20:40:58'),
(1177, 6, 'GRRutvnFzKu66AFlcY4dpTGLNlZRwL15', '2021-07-29 22:31:33', '2021-07-29 22:31:33'),
(1178, 63, 'IToXn8PAnDvJJeBqGiTiWkhylAoN9vrY', '2021-07-30 10:16:00', '2021-07-30 10:16:00'),
(1182, 44, 'PY2huZKs7oVk4WAKbnXmjx9qRtRiRQFF', '2021-07-30 12:04:51', '2021-07-30 12:04:51'),
(1183, 47, 'kL2VIjdGTda7ZRfjZATHIohU2ip864Sw', '2021-07-30 12:52:53', '2021-07-30 12:52:53'),
(1191, 63, '0mhhE6ZgYyqVyxZ2METyGeOXH39cZZl4', '2021-07-30 14:49:50', '2021-07-30 14:49:50'),
(1197, 6, 'g4oSyhO41tpJ61fkD5CyQWr6P7wEZoCe', '2021-07-30 16:16:47', '2021-07-30 16:16:47'),
(1202, 44, 'BhGrdJ9fP3Zr7BkLzT3Caq2DUgmhINI1', '2021-07-30 16:55:27', '2021-07-30 16:55:27'),
(1206, 51, 'tGcDENKRHe8uWFarNiriSMIkaQheudvr', '2021-07-30 21:04:18', '2021-07-30 21:04:18'),
(1207, 44, 'bhbEhrO1LF39vMxLRGl1Udk9Sg9ThiDT', '2021-07-30 21:06:03', '2021-07-30 21:06:03'),
(1208, 47, 'bLGMJq2zGzyqEOOs7fR87JHSFxKlunrl', '2021-07-31 01:37:27', '2021-07-31 01:37:27'),
(1212, 63, 'tONHqNONhbxx4vvD7zT7GJDzgET4AS1Q', '2021-07-31 10:48:44', '2021-07-31 10:48:44'),
(1213, 49, '3H4ewmfEsxCWINWbh0Zy0n3fnUxoVBPd', '2021-07-31 11:45:18', '2021-07-31 11:45:18'),
(1214, 44, 'jdppFpfkrb6mhkBBFxb2jjjYB1vnGhHl', '2021-07-31 12:53:10', '2021-07-31 12:53:10'),
(1217, 63, 'VVMYV23JpkDrrwG9VEjVRLaU1IJLwJqg', '2021-07-31 13:38:32', '2021-07-31 13:38:32'),
(1218, 6, 'YACYPdNIMuGXqadtkjmyVpGlELXukh4z', '2021-07-31 13:56:43', '2021-07-31 13:56:43'),
(1219, 47, 'nqq1dAqwnMbURw1cy8Rm8JoCHDUZI02T', '2021-07-31 14:05:33', '2021-07-31 14:05:33'),
(1226, 6, 'OwQi1zQFGRtpowFdavp7kCmdYgUNq4bh', '2021-07-31 17:07:54', '2021-07-31 17:07:54'),
(1233, 51, 'nBGubEf3kq2f8bji3Qw73yWgOYoXHmbz', '2021-07-31 20:13:38', '2021-07-31 20:13:38'),
(1234, 6, 'C5lOy0bmwfVLWE3J4QoyqayhA2BNdWpg', '2021-07-31 21:46:16', '2021-07-31 21:46:16'),
(1235, 82, 'JdrovpoWCvs4CAwoQBVpyGGoC8ByBmlj', '2021-08-01 07:57:23', '2021-08-01 07:57:23'),
(1236, 51, 'EZiL1RPOFXpTJyAxu0aXU0lWCZsgsugY', '2021-08-01 10:24:40', '2021-08-01 10:24:40'),
(1237, 47, 'HHC2HjdHReC4QNpM0Z3k6JouoDw118OS', '2021-08-01 11:21:28', '2021-08-01 11:21:28'),
(1238, 44, 'aBZrNhk7yr7aC6Imh56PujY0tjKzzxHj', '2021-08-01 12:14:29', '2021-08-01 12:14:29'),
(1239, 49, 'banssVbesv9AnW8BbVvRb9k9lmLSmSrA', '2021-08-01 12:44:37', '2021-08-01 12:44:37'),
(1240, 51, '7tiXdRtWvYA2Zc4dCw6xsi64nZHS9Lsa', '2021-08-01 13:33:13', '2021-08-01 13:33:13'),
(1241, 63, '1yhHQDGPsQEIYKn0ReEL345wcfgc47NA', '2021-08-01 15:35:01', '2021-08-01 15:35:01'),
(1242, 63, '6QspZ9QyWbhk3B5VzpZz6me0cgTBpeGT', '2021-08-01 15:41:13', '2021-08-01 15:41:13'),
(1243, 63, 'OTmdVTXubMKLUD5SBM8wyIm54fmwmPIN', '2021-08-01 16:28:39', '2021-08-01 16:28:39'),
(1246, 44, 'ZWg4hCDSDEkcJYV9Tf2IeHYu8OddXu1t', '2021-08-01 16:58:57', '2021-08-01 16:58:57'),
(1248, 6, 'xoBLPyyR7OmeZ4EFZyiVrG3DPoyNh8lQ', '2021-08-01 17:49:57', '2021-08-01 17:49:57'),
(1252, 51, 'Njie9kg9B8qxV0HuWweWCZ1f0TQcdzD2', '2021-08-01 21:11:04', '2021-08-01 21:11:04'),
(1253, 62, 'mbNuArtwPP2HFIgeUUSnxYOsjoUGLI8p', '2021-08-02 00:59:48', '2021-08-02 00:59:48'),
(1254, 62, '6yZpIcwBwSFvJsmh14vG54YYs8N5U1Ww', '2021-08-02 01:13:21', '2021-08-02 01:13:21'),
(1255, 62, 'WGcx6RO2MRbE2FlzVm4C1iGH1HSi8AGG', '2021-08-02 01:17:59', '2021-08-02 01:17:59'),
(1256, 63, 'KkdYCgcU5LoaAg3tHKm5zMG6TWJHgpPU', '2021-08-02 02:38:58', '2021-08-02 02:38:58'),
(1257, 63, 'D7xhoJc831lPOlzA2i9eAVZkezo856PT', '2021-08-02 10:15:23', '2021-08-02 10:15:23'),
(1259, 47, '43M7mqa09hQZavRXbHK3xD7SmqjRbAUd', '2021-08-02 12:26:41', '2021-08-02 12:26:41'),
(1262, 49, 'k4NGMvVn9tCzjDPu5UODVCZhjS5GKu2T', '2021-08-02 13:03:31', '2021-08-02 13:03:31'),
(1263, 44, 'hMpblwV1pvLAECBNuc1ehtwp0Xbcfl72', '2021-08-02 13:49:14', '2021-08-02 13:49:14'),
(1264, 62, 'Hl2I5EyrkVTx1yYELg1qyAGRp02SaFor', '2021-08-02 14:37:23', '2021-08-02 14:37:23'),
(1265, 62, 'sPByNEonhNQEgdPejxzOvk4DNGxaOLKD', '2021-08-02 14:43:02', '2021-08-02 14:43:02'),
(1266, 62, 'OnCjnip0dQn5JWQxvFZXrV6zNAzPXJjZ', '2021-08-02 15:12:59', '2021-08-02 15:12:59'),
(1267, 63, 'S3xNssrnwfjt0vIVSCt9eGOelFc8GPi1', '2021-08-02 15:57:23', '2021-08-02 15:57:23'),
(1268, 44, 'RKntkxkpJk5BgxcKdBUWc0hIG0DggLnv', '2021-08-02 16:53:53', '2021-08-02 16:53:53'),
(1270, 51, 'zMcutMH0ogbKjVdXfiyELCFRiQWQY42c', '2021-08-02 18:10:15', '2021-08-02 18:10:15'),
(1272, 62, 'nooy0AinaC5k4v6lTjru3rIBAL9m1nDi', '2021-08-03 00:48:40', '2021-08-03 00:48:40'),
(1273, 63, '8rlgl6VgXEpLIGwteONNVKk5BU8xRX9T', '2021-08-03 09:11:07', '2021-08-03 09:11:07'),
(1274, 49, 'i513muMoRqypqnWh7mOjuWNT91Y7OraU', '2021-08-03 11:07:24', '2021-08-03 11:07:24'),
(1276, 63, 'SmHG8rSVPAwXJL9UE4YLWh4eKNTIgHj4', '2021-08-03 11:36:31', '2021-08-03 11:36:31'),
(1277, 44, 'CgZyPFtumA9lfittiU3PQ1VlUjc68tzI', '2021-08-03 12:13:19', '2021-08-03 12:13:19'),
(1280, 47, 'IAJWs2rT4AdmCLpcByVjaBSDZXQtRdmc', '2021-08-03 12:57:08', '2021-08-03 12:57:08'),
(1281, 62, 'lr31bg37aIiPk6IwY4tmNzRLReDTKbBD', '2021-08-03 14:16:55', '2021-08-03 14:16:55'),
(1284, 63, '9Uh1RtrfnqxTHUROrGOYq87rIzw7pJO4', '2021-08-03 15:09:03', '2021-08-03 15:09:03'),
(1286, 51, 'zDrPQSBH7q4fTCBa9iisOkYX7urbS5xH', '2021-08-03 17:28:04', '2021-08-03 17:28:04'),
(1287, 44, 'jMBwaJRhGtFhaV22QF0QTo0yKljChHsi', '2021-08-03 18:21:12', '2021-08-03 18:21:12'),
(1288, 62, 'jXIALEim4HdkMkXjSMHgvO2vu16meAgd', '2021-08-03 21:45:49', '2021-08-03 21:45:49'),
(1289, 63, 'f43JohxyGhQbehsEipp1ZPW0SOwCrXFF', '2021-08-03 22:11:03', '2021-08-03 22:11:03'),
(1290, 63, 'VV0RN7joxk7g1qKODm2sNnfxQB47iN0J', '2021-08-04 06:03:43', '2021-08-04 06:03:43'),
(1291, 51, 'PmVCfgYEpwhV2C6S9NlhiOZfsYbAWKfW', '2021-08-04 10:37:33', '2021-08-04 10:37:33'),
(1292, 47, 'IUi10zOylAev7id5IZ3FsMwLOHD6G7D1', '2021-08-04 11:18:55', '2021-08-04 11:18:55'),
(1293, 63, 'awFq6pAXApJv1rVC0uDaOzWjQ2nH3omQ', '2021-08-04 11:56:59', '2021-08-04 11:56:59'),
(1294, 63, 'ZqAsSiHRg1fLnyHXACrhmwtND9Gw5Di3', '2021-08-04 12:06:59', '2021-08-04 12:06:59'),
(1295, 44, 'vi8RCuX4yo2xIubsgY5lHloA5H6Lpih8', '2021-08-04 12:25:12', '2021-08-04 12:25:12'),
(1296, 63, 'EbbFFgl5I4LZH2pLnpYwKYgZqmDhnoaN', '2021-08-04 13:09:49', '2021-08-04 13:09:49'),
(1297, 62, '5HTCGd8XzDgnWiQ7u7sgy7iBfK6ptLqs', '2021-08-04 13:40:52', '2021-08-04 13:40:52'),
(1298, 63, 'IC3nWaMCnrDesA8lscq79rexu0vHs9qe', '2021-08-04 15:21:30', '2021-08-04 15:21:30'),
(1299, 47, 'C1pBMe6IFgtWnbrF8LIujaiZt8XkWzXK', '2021-08-04 17:35:13', '2021-08-04 17:35:13'),
(1300, 44, 'NerXoTH3NxJYl9ptqZ7NOpf96W5EObSc', '2021-08-04 18:22:18', '2021-08-04 18:22:18'),
(1302, 47, 'eb4oRCKzwcPgvIcjvCWup2xe5I4zkGa7', '2021-08-04 22:54:17', '2021-08-04 22:54:17'),
(1303, 62, 'wBbKfCai60gXofQO64XJo4dm72cZIDKL', '2021-08-04 22:58:15', '2021-08-04 22:58:15'),
(1304, 62, 'wXiE0eUhP9Cw2DQXfwxADnQYGABQ4QzK', '2021-08-05 00:49:26', '2021-08-05 00:49:26'),
(1306, 44, 'GZO8KHyWQdHUFX8LKIGE61QVniDFUbmu', '2021-08-05 12:05:18', '2021-08-05 12:05:18'),
(1307, 63, 'xPozs58AP3vH0AU5hm0EDmcV2IORDDdg', '2021-08-05 12:14:10', '2021-08-05 12:14:10'),
(1308, 47, 'opBBh1Q1ficABZ4dQgqe2TqZ9PgMPA7r', '2021-08-05 13:22:47', '2021-08-05 13:22:47'),
(1309, 62, 'b12jF2wKXbt07OEA8DRMYNT8lkxOJOw8', '2021-08-05 13:43:08', '2021-08-05 13:43:08'),
(1310, 44, 'YUiPphtC0gr3PcCkOZncqqT6jI7MJWFn', '2021-08-05 16:20:30', '2021-08-05 16:20:30'),
(1312, 63, 'IgUaogfOLxvbpWI8k9lIc9sXZpdxabEA', '2021-08-05 17:03:00', '2021-08-05 17:03:00'),
(1315, 44, 'EaNNootVTh78d1eRMRtO3rjbf67s4UWt', '2021-08-05 23:48:36', '2021-08-05 23:48:36'),
(1316, 62, 'f0l3kLZsICivaTZk7k2jwWHfA8S3e3KB', '2021-08-06 00:50:27', '2021-08-06 00:50:27'),
(1320, 51, 'ZIkHu5rP29eSoZkueEr89Fpi2pNP0jZ3', '2021-08-06 02:12:49', '2021-08-06 02:12:49'),
(1321, 47, 'sSz5BJ4rnzLFE6jX4gUhQZmd4ydmmxTV', '2021-08-06 11:19:37', '2021-08-06 11:19:37'),
(1322, 63, '5QBi9jOZUlLEc72DJhLdUEoftsiooo5A', '2021-08-06 11:24:21', '2021-08-06 11:24:21'),
(1323, 51, 'RTucHR1SAxKF5AMGrxylEGwAwgGJqK4L', '2021-08-06 11:52:17', '2021-08-06 11:52:17'),
(1324, 44, 'LcFxisCRVrTm2mkzfDUfNJ6rk5Jh1S3W', '2021-08-06 14:06:08', '2021-08-06 14:06:08'),
(1325, 62, 'Lu1UPwQtifS0uoS0X7MXlbO7mCnatjj1', '2021-08-06 15:30:43', '2021-08-06 15:30:43'),
(1326, 63, 'MP5PskPqgjZdXp7IFD87TYUQmVrNop0Y', '2021-08-06 15:48:51', '2021-08-06 15:48:51'),
(1327, 44, 'zzfMibPoUhVIn0cvxE2llzEhDMUWqsTB', '2021-08-06 16:18:40', '2021-08-06 16:18:40'),
(1331, 51, 'Uz8kl2X7gjHAf79Wl3nEzwzBjBcKoyLn', '2021-08-06 16:55:02', '2021-08-06 16:55:02'),
(1332, 47, 'SR8ViAiroagImB21pDYIr50efLxcs3k6', '2021-08-06 17:47:46', '2021-08-06 17:47:46'),
(1334, 63, 'KA4PpknnHsC1oHYAwfjCvZIGgYb4FhQw', '2021-08-06 22:57:11', '2021-08-06 22:57:11'),
(1335, 47, 'GxBR3St33Hew02mELzmhgDMbRhNoymGH', '2021-08-07 01:48:39', '2021-08-07 01:48:39'),
(1336, 47, 'tFgDa3o2x5xErJooMOsXpypgl8HzBfHy', '2021-08-07 01:48:58', '2021-08-07 01:48:58'),
(1338, 63, 'iLQc53KITCqqMUPPs6TrsTbVPX1WQUCC', '2021-08-07 11:57:57', '2021-08-07 11:57:57'),
(1340, 44, 'fizRBvNitviyVikWTy9iHseh01BZx7XN', '2021-08-07 12:49:01', '2021-08-07 12:49:01'),
(1341, 62, 'wagnk6drj5R97ZSxSRXC8Lm8CK1PwMWW', '2021-08-07 13:50:50', '2021-08-07 13:50:50'),
(1342, 47, 'I7l8KQed4NUWMDAZvWRMt7ylaN48B22u', '2021-08-07 14:51:00', '2021-08-07 14:51:00'),
(1343, 63, 'tHPWvtmLO6tRTUo8THDfhkAA7asq4Y6o', '2021-08-07 16:29:36', '2021-08-07 16:29:36'),
(1350, 51, 'u3iPEXydpRXQvOHAXxYKV4l063YcLs8d', '2021-08-07 17:46:08', '2021-08-07 17:46:08'),
(1351, 44, 'hCPczEFTKl96aY2smbaxwKY3hNleWBEP', '2021-08-07 19:00:45', '2021-08-07 19:00:45'),
(1352, 63, 'f00W4UsSaTokidtJfRfDy9GyOnddpLxw', '2021-08-07 23:47:39', '2021-08-07 23:47:39'),
(1354, 47, 'vge2U1Di9Xndv3yLoWEaek2hux9HvDnd', '2021-08-08 01:10:26', '2021-08-08 01:10:26'),
(1355, 47, 'pCtPxpOtoNkotIVmRWtrRqgYXyFp8FtV', '2021-08-08 01:10:52', '2021-08-08 01:10:52'),
(1356, 62, 'Ez5qOGNvKyqrIEN0XcKKpnA71Ptubxyb', '2021-08-08 01:17:55', '2021-08-08 01:17:55'),
(1358, 44, '9i4cTpSVJHYUe6dTQ5VHtRiq69A727Q9', '2021-08-08 02:14:10', '2021-08-08 02:14:10'),
(1361, 47, 'jRtbS5UX9OYZcFrGtIQrJG5MVwnwjASl', '2021-08-08 14:03:10', '2021-08-08 14:03:10'),
(1362, 62, 'oGwPfyuwikHZRa0TJNnzXdu8Gll3Y7xa', '2021-08-08 15:46:10', '2021-08-08 15:46:10'),
(1365, 44, 'Xjxm5PvZomUQMn3ggWxAHH1IS1LVjVd2', '2021-08-08 17:45:56', '2021-08-08 17:45:56'),
(1368, 63, '38QSjVper7HEpuzI3ePICqVZDmIrqtTP', '2021-08-08 18:53:42', '2021-08-08 18:53:42'),
(1369, 6, 'dh8Ga4922Dm2XjlehmNr42yaA7ZyLub0', '2021-08-08 19:13:44', '2021-08-08 19:13:44'),
(1370, 6, 'ECFd7dWMQeTeV0FGa2ZjvlArjnEPZO89', '2021-08-08 19:27:06', '2021-08-08 19:27:06'),
(1372, 51, 'A0twQM5OO1q69VPv698BvThMXwBfm5hK', '2021-08-08 21:01:57', '2021-08-08 21:01:57'),
(1373, 44, 'l1u4X9mB1s5AovvEFL6tPBgKv28I4a2m', '2021-08-09 00:12:38', '2021-08-09 00:12:38'),
(1374, 63, 'tO1SE3Q3zNtjFPirx1M5bvfPZsRYqCpW', '2021-08-09 08:35:48', '2021-08-09 08:35:48'),
(1375, 47, 'LaKmzRiXonjHG1L9t4dFZBrvdqdsrcKc', '2021-08-09 11:44:44', '2021-08-09 11:44:44'),
(1377, 63, '48Y4kdcclvIdCW93KYlVwyCGhY0NKJq2', '2021-08-09 12:44:59', '2021-08-09 12:44:59'),
(1378, 44, 'FPijgZI2vmzqoWCRicUDelO8Brw2RjKz', '2021-08-09 13:53:03', '2021-08-09 13:53:03'),
(1379, 62, 'QWS8QPEG0Hvgiknfk4XJhL2KDw9vxlV8', '2021-08-09 14:40:31', '2021-08-09 14:40:31'),
(1380, 44, 'SqgctupWod1oCV1X2lYnscMDuZ1RYkbq', '2021-08-09 16:25:54', '2021-08-09 16:25:54'),
(1382, 63, 'Xvh78az0dPXXugpenmq9hDJNhbF7VOEB', '2021-08-09 16:51:30', '2021-08-09 16:51:30'),
(1388, 51, 'x8ONz93OHR4VJF6Tof5JTrxbSNctDO0r', '2021-08-09 20:23:35', '2021-08-09 20:23:35'),
(1389, 44, 'VfKsAPtXruSYeIBPh4AHZAY4Oz1aD26u', '2021-08-09 21:12:49', '2021-08-09 21:12:49'),
(1390, 63, 'YWKToHjdZM9NukRZAHL2BuDccP8NwDDz', '2021-08-10 02:09:18', '2021-08-10 02:09:18'),
(1391, 63, 'w5fP6mgL8JbIypPP2klhThvrs1qZzOaT', '2021-08-10 06:43:04', '2021-08-10 06:43:04'),
(1396, 63, 'xJOnz1kq6sMg3oVaXJJVkXnOmm2jiHYW', '2021-08-10 12:04:07', '2021-08-10 12:04:07'),
(1397, 63, 'BpWYOk8Eu34QWHH7iH9sneRS5vDQyHSN', '2021-08-10 12:46:44', '2021-08-10 12:46:44'),
(1398, 63, 'W8PjaTfiImI7MGVkVmocU0fczzCajJSO', '2021-08-10 13:12:46', '2021-08-10 13:12:46'),
(1399, 62, 'C06AErkCUmfdyl1HNK3S1kkNzkbEOcJm', '2021-08-10 13:20:11', '2021-08-10 13:20:11'),
(1400, 44, 'Yrh5nTxLNG4CitxgKvLNhyXZhQfVEn5r', '2021-08-10 13:28:21', '2021-08-10 13:28:21'),
(1402, 47, 'IwJEzdwXmOIcyFLTbn0qFD5RP6miKBpK', '2021-08-10 15:25:52', '2021-08-10 15:25:52'),
(1403, 63, 'geb8ESh2YwsNelG0qdGZ61M7XcmD4OAD', '2021-08-10 15:28:08', '2021-08-10 15:28:08'),
(1404, 44, 'DWDyOor96mYyDmp4QPg2g0BKqhbkDHzT', '2021-08-10 16:34:01', '2021-08-10 16:34:01'),
(1409, 44, '9kgVZ5pYH8trren2z9gNq2iavpIGDOwW', '2021-08-10 22:46:00', '2021-08-10 22:46:00'),
(1410, 63, 'lkWx8JNF8i55AAuskHBqIaQs2Gbm4AoO', '2021-08-10 22:51:40', '2021-08-10 22:51:40'),
(1413, 6, 'Y3crOK0W1B6te7UGXTHaMkOv2pjuMjRq', '2021-08-11 00:46:30', '2021-08-11 00:46:30'),
(1414, 62, '4MwkV1vNnPyiu2gIWkO74I79GZVbbyvI', '2021-08-11 00:47:12', '2021-08-11 00:47:12'),
(1420, 51, 'iU59auLaqi8G9whdLBhTQSqmxH1296jg', '2021-08-11 02:55:38', '2021-08-11 02:55:38'),
(1421, 63, 'uvoEj1svMR5iMYeBZ5wvE1WDMK5dMVb3', '2021-08-11 09:59:49', '2021-08-11 09:59:49'),
(1423, 47, 'O0eBIzUh1kKQmd6HE4kHt2AiHgTfCSJJ', '2021-08-11 12:45:07', '2021-08-11 12:45:07'),
(1424, 44, 'YFcSV67UcFVhsFIZDHpKFy44UxfIhl4R', '2021-08-11 12:49:15', '2021-08-11 12:49:15'),
(1426, 62, 'JTQbKeSL28ZE3Pvh5UNEWkl5R3BGJW2q', '2021-08-11 15:19:53', '2021-08-11 15:19:53'),
(1432, 44, 'EJwX2ZjzyDbBtzAHSk4ks9X1QXovzQ0b', '2021-08-11 18:44:57', '2021-08-11 18:44:57'),
(1436, 6, 'fzf6BWVsVJ8J8n9FqnmbPdcWqB2uOkm4', '2021-08-11 20:20:35', '2021-08-11 20:20:35'),
(1439, 44, 'oGLoYb0OMoKgXhfQdGSC8nVlyytkMP6W', '2021-08-11 23:34:59', '2021-08-11 23:34:59'),
(1440, 47, 'oZLyANSCulSSeK2Ik6zAYvbARZr4NFi6', '2021-08-11 23:47:32', '2021-08-11 23:47:32'),
(1441, 63, 'mXxOZqDgbDhJJ321fy97tlZxANcJbXgb', '2021-08-12 00:17:00', '2021-08-12 00:17:00'),
(1442, 62, 'MiKQsJzYIrg85NFJF2wEB4akWVgNbNnO', '2021-08-12 00:58:06', '2021-08-12 00:58:06'),
(1444, 51, 'AhZw4X5YflQnyYtGrxU1vlOSSCgOkpSV', '2021-08-12 02:32:21', '2021-08-12 02:32:21'),
(1445, 63, 'gPAxTVEAIkp9gtcpGqEuLYhVuvWPkWxS', '2021-08-12 10:29:14', '2021-08-12 10:29:14'),
(1447, 63, '6R98inexOYnqkDAzgbLvpHpXgsnWBM8e', '2021-08-12 10:45:46', '2021-08-12 10:45:46'),
(1448, 47, 'KxwjWS5fHBnhklInKFWamxIdOBuEyT0a', '2021-08-12 12:03:54', '2021-08-12 12:03:54'),
(1450, 44, 'O7hk4qkTU79PKn1rPyglTRc1rFchojvB', '2021-08-12 13:08:17', '2021-08-12 13:08:17'),
(1451, 62, 'D4dA3h43kNyIhwUp0RYYar2kznyEUxn6', '2021-08-12 15:47:22', '2021-08-12 15:47:22'),
(1452, 44, '1AvJtHsT9fSH8UqQAhlU8WBGm8gPFB8n', '2021-08-12 16:13:19', '2021-08-12 16:13:19'),
(1456, 51, 'FfY6pQMrUmTe0mmFz2EeMeTaiktAQzBF', '2021-08-12 18:00:20', '2021-08-12 18:00:20'),
(1457, 6, 'JaubbdmOaj4IJWfQyBVC9h6RnICrTlpB', '2021-08-12 19:37:12', '2021-08-12 19:37:12'),
(1458, 63, 'lQ6IUdqroMCb1apG8Lmcvvy8WFJvtmmO', '2021-08-12 19:44:43', '2021-08-12 19:44:43'),
(1459, 63, 'OZKO1wXKxqT8Q033Saym3pqyMBo4cKuI', '2021-08-13 00:39:53', '2021-08-13 00:39:53'),
(1460, 47, 'OeZN3urPaibBwMpddmft34kKrMhZgWJ5', '2021-08-13 03:03:05', '2021-08-13 03:03:05'),
(1461, 63, 'c9hK6bRcmgx4sAtrxe6vcFhrla4DXtPT', '2021-08-13 03:39:00', '2021-08-13 03:39:00'),
(1462, 63, '7zXQIOMXe1wudHQqz2NxrN0gOldBOD8J', '2021-08-13 11:12:17', '2021-08-13 11:12:17'),
(1463, 51, 'gqvbka8h614bpgRIjtmHxxPDKRvb6Cd6', '2021-08-13 12:16:52', '2021-08-13 12:16:52'),
(1464, 44, 'OTacIeFrZYcZlDghyzbwZNEarse349P5', '2021-08-13 13:04:38', '2021-08-13 13:04:38'),
(1465, 47, '2YBPJkkudy3y8WkfT4jIRx9PqWNGEKjL', '2021-08-13 13:37:58', '2021-08-13 13:37:58'),
(1466, 62, 'jm719PP0ZdK7S5IjONf7sXlExTN1GQzp', '2021-08-13 14:09:53', '2021-08-13 14:09:53'),
(1468, 44, 'RGZOtwv1IXFC6JrzcBXtB3Kk7ejUtEi0', '2021-08-13 17:02:38', '2021-08-13 17:02:38'),
(1469, 62, 'CZJhBGlq9omPGsjOOtCMJeijW5xnS2rG', '2021-08-13 18:18:04', '2021-08-13 18:18:04'),
(1470, 82, 'Tkd4CtezsNImhH3kEodgbZ4YcQgexgQC', '2021-08-13 18:55:23', '2021-08-13 18:55:23'),
(1472, 44, 'kxGxLElpAZIqUnDQv2AcHp5ToBepIj6a', '2021-08-13 22:00:37', '2021-08-13 22:00:37'),
(1473, 44, 'uU1UKe0GD4kH4qtRVkDmXBjkWHRY6M6s', '2021-08-13 22:00:37', '2021-08-13 22:00:37'),
(1474, 63, 'MxxZ72yYNRQnTFT6QMnJ8RNB1tAaSt1H', '2021-08-13 22:02:59', '2021-08-13 22:02:59'),
(1475, 62, '0eC9yeiDqFIq3M0KAOK1MxgnQCQ9DL0D', '2021-08-13 22:05:37', '2021-08-13 22:05:37'),
(1483, 51, 'S9VsNyN4hMH3y4OrexZOulF4ULOydR00', '2021-08-14 01:41:51', '2021-08-14 01:41:51'),
(1484, 63, '0CdYPOG7V60abfIwXhDW7jTKDvdoiwer', '2021-08-14 10:43:07', '2021-08-14 10:43:07'),
(1485, 49, 'fQh9VEwbsNysB0VJn1Zooxv8VoN4giGk', '2021-08-14 10:44:53', '2021-08-14 10:44:53'),
(1487, 44, 'kiZEh9SJtR972zHncR63Ji3PbtEyB7HA', '2021-08-14 12:43:06', '2021-08-14 12:43:06'),
(1489, 47, 'tfJSL9YiapKQmTQLtZmh496ETJLjohws', '2021-08-14 14:36:08', '2021-08-14 14:36:08'),
(1490, 6, 'y1Jzg16wpvyUj0TGlvrRmiksmowiFcxH', '2021-08-14 15:32:34', '2021-08-14 15:32:34'),
(1492, 62, 'oepMR6SSHD8OvmptYv7jxc9ksTov1tPA', '2021-08-14 15:57:13', '2021-08-14 15:57:13'),
(1493, 63, 'lKJkgpwOVe0ApUgNn1n2nFYoZf1HYX3c', '2021-08-14 16:01:57', '2021-08-14 16:01:57'),
(1499, 44, 'kTqiLszQygoAZYtHpq3QZkp6Fm5liprE', '2021-08-14 19:51:30', '2021-08-14 19:51:30'),
(1508, 63, 'FjKDcjxzYEvMptDOILE3oL7nPhMg8dGJ', '2021-08-14 23:01:23', '2021-08-14 23:01:23'),
(1510, 51, 'S0VGV88Fctqaw8qYH2o0OBjZDZhKd1N4', '2021-08-15 00:38:41', '2021-08-15 00:38:41'),
(1511, 44, 'fpLbjIloXB4dtbfnELTgWpaFl9Y605ke', '2021-08-15 00:41:26', '2021-08-15 00:41:26'),
(1512, 63, '23wIC70uFC6uxmlcP8E06Y480SBrr4nE', '2021-08-15 02:33:23', '2021-08-15 02:33:23'),
(1513, 63, 'GhTxSnQCYoQdm9VWbb5TAO2fKjOrIQnh', '2021-08-15 10:05:18', '2021-08-15 10:05:18'),
(1515, 47, 'nQySwdQTnK96YUCEjoIPKZvpqcsTl1pM', '2021-08-15 11:57:26', '2021-08-15 11:57:26'),
(1516, 62, '1lXUyFfiqOyMtgJe4VJGgJz2XD2osDCN', '2021-08-15 13:37:28', '2021-08-15 13:37:28'),
(1517, 44, 'A9kNbcM875yOdP9fjFTLX1rhZ9TVpEIj', '2021-08-15 14:09:21', '2021-08-15 14:09:21'),
(1518, 44, 'hZhZYW7Jqj4wBNFjIrRj65isEVS3Q3jb', '2021-08-15 16:24:43', '2021-08-15 16:24:43'),
(1520, 63, 'uri3VfEBRmsizQMYbbrpkur7tsrzT57T', '2021-08-15 17:16:08', '2021-08-15 17:16:08'),
(1522, 44, '1C1OD9LOAdhiYybBC8Y2xRHi0LiXl5Zz', '2021-08-15 18:50:31', '2021-08-15 18:50:31'),
(1523, 63, 'RrsiFZDxXqmr5N6X78mQD7cp8nnHsbro', '2021-08-15 22:17:59', '2021-08-15 22:17:59'),
(1525, 51, 'WSDvQV9yoGEWXidj569Bal7QcN92Urun', '2021-08-15 23:45:43', '2021-08-15 23:45:43'),
(1526, 44, 'kKoPbnQTAX5n6klVeeqxhFxMPzC7Tqoi', '2021-08-16 00:07:29', '2021-08-16 00:07:29'),
(1527, 62, '1dqyhRG8aLcQXBOoeZVhqyezGDxMIVDo', '2021-08-16 00:53:33', '2021-08-16 00:53:33'),
(1528, 63, 'PdHN7ZvYhxVz1oJIn2ReTaw7RMDUDW9P', '2021-08-16 01:42:18', '2021-08-16 01:42:18'),
(1529, 47, '68M7ls7bwgsl91wAoozHy9IdTKOgExTt', '2021-08-16 02:05:19', '2021-08-16 02:05:19'),
(1530, 63, '5fo5aauQIfn0SSZbQVCzh65iDKeCxr5P', '2021-08-16 03:37:01', '2021-08-16 03:37:01'),
(1531, 63, 'rZLgyxlEzUzJByzz836Pf44xzf1Kuzwb', '2021-08-16 10:10:38', '2021-08-16 10:10:38'),
(1535, 62, 'IkzM3JZYGJqTMiGMzsqloMEfL9pRShDW', '2021-08-16 13:39:26', '2021-08-16 13:39:26'),
(1536, 44, 'RP5oAtkuWPE72PGlsiqKxrxGQldXmbur', '2021-08-16 13:41:37', '2021-08-16 13:41:37'),
(1537, 47, 'WXJzCNGjeBlJB7U6A0RHkf7U2a6FmTes', '2021-08-16 13:48:17', '2021-08-16 13:48:17'),
(1538, 63, 'WMKcxVRTHRDZJM7keP25GmxBTxoSsHNM', '2021-08-16 16:03:03', '2021-08-16 16:03:03'),
(1543, 44, '7YB8LwT01eUscOXuChAzxWGHwrX94bcC', '2021-08-16 17:21:48', '2021-08-16 17:21:48'),
(1549, 51, 'NsC7m92jZQRUj6tgNNyAVGaG0IpOZaUy', '2021-08-16 17:59:57', '2021-08-16 17:59:57'),
(1550, 44, 'yNrCkVmVhaN4CaNhTkhO2Jdgv4qwwiMS', '2021-08-16 19:23:59', '2021-08-16 19:23:59'),
(1552, 63, '2KNaQqkRoRyATwJ90cMrsFaZ1uWxBxc6', '2021-08-16 19:28:42', '2021-08-16 19:28:42'),
(1553, 6, 'neocfTw4L5TefD0UAy0ZpTb42rtSxxCk', '2021-08-16 21:42:28', '2021-08-16 21:42:28'),
(1554, 63, 'dLIYv3PItEpT6HfPAcMCDnFvY7cxGrpI', '2021-08-16 22:18:58', '2021-08-16 22:18:58'),
(1556, 47, '4BMOS4mB91yp9QEI14woDLqHBGzto4AN', '2021-08-17 01:12:45', '2021-08-17 01:12:45'),
(1558, 63, 'pkeEcOKEJkpd0Q0eHkEDgFM41xJePQno', '2021-08-17 03:47:14', '2021-08-17 03:47:14'),
(1559, 63, 'CKcOoPnX0bTjxhyPVTmp1InWJfD0qB79', '2021-08-17 06:07:52', '2021-08-17 06:07:52'),
(1560, 51, 'bUEWwPPlq0icmuZxOtIaVKglHbX7olT3', '2021-08-17 11:08:29', '2021-08-17 11:08:29'),
(1561, 62, 'Ki6AykgLHwAmKW7qqbuHsGgS1z0DZ0nk', '2021-08-17 11:57:55', '2021-08-17 11:57:55'),
(1562, 63, 'AfU1UvK8US2KYwDyDVXCuId05dkSQSO7', '2021-08-17 12:18:43', '2021-08-17 12:18:43'),
(1563, 44, 'OmgSgcPtIjdd0gm8mRWFOuqWLJqosLW9', '2021-08-17 13:16:46', '2021-08-17 13:16:46'),
(1564, 47, 'hRPZC1pRV5IUjeur1MWwy8mSFuX4zneR', '2021-08-17 13:42:10', '2021-08-17 13:42:10'),
(1565, 44, 'vrsi9ouziPeUJVWYWkqYzEDIoZ9UHzZs', '2021-08-17 16:03:01', '2021-08-17 16:03:01'),
(1566, 63, 'VbZ151w47ef96fuSIERN9Ru9A93ptNHB', '2021-08-17 16:11:09', '2021-08-17 16:11:09'),
(1567, 63, 'BoweEKRBNlsM13imKFE6sES2hkp1kF4m', '2021-08-17 16:11:22', '2021-08-17 16:11:22'),
(1568, 6, 'uXNTEjdMZLlDrqN14nYGbVwqld8cB1qp', '2021-08-17 18:08:09', '2021-08-17 18:08:09'),
(1570, 63, 'M9lH18zByP07YCQJKQuLwl92I5uo4GGW', '2021-08-17 18:42:38', '2021-08-17 18:42:38'),
(1572, 44, 'bGoTUYRuqEJiBL9eFaCY1jOnQ6tRfXUL', '2021-08-17 18:51:29', '2021-08-17 18:51:29'),
(1583, 86, 'P2VI3Mg4b7OGv2Pl6OYl99nuk3YEEBk3', '2021-08-17 19:20:39', '2021-08-17 19:20:39'),
(1584, 86, '3dWYwug2NYEfUlwABgV4pfVUKUeSO5B2', '2021-08-17 19:20:44', '2021-08-17 19:20:44'),
(1589, 86, '9cnQ5TC9XG4sHIRWbDO46FH3IxczRJ24', '2021-08-17 19:33:08', '2021-08-17 19:33:08'),
(1590, 86, 'MPjGtYDGPxRD9FZNnhrV9xQTXZArnb9s', '2021-08-17 21:36:19', '2021-08-17 21:36:19'),
(1591, 6, 'SPEJQN86LKDkWVyuwfj8ZGAD09IF6zjg', '2021-08-17 22:38:30', '2021-08-17 22:38:30'),
(1592, 63, 'lnlwdwIQeak3rgWaEa48oZkEYo7QzwUK', '2021-08-18 00:13:51', '2021-08-18 00:13:51'),
(1593, 62, 'AZYUUtwYwrsBJiHjwMn4q1uyVW5U3tw1', '2021-08-18 04:18:10', '2021-08-18 04:18:10'),
(1594, 63, 'ZGUDKbThOUaW346uLT9xuhG2dWtTIgkv', '2021-08-18 07:54:53', '2021-08-18 07:54:53'),
(1598, 63, 'EaL3wkUncUg82cefXn9LeXIbXKl9ZPkx', '2021-08-18 11:42:08', '2021-08-18 11:42:08'),
(1599, 44, 'XiGyATsksybBznO4afbzSgt3IoqL1umT', '2021-08-18 12:25:46', '2021-08-18 12:25:46'),
(1604, 47, '176Z9h1Gq6IuMpYqUL186s1ZnFardlYJ', '2021-08-18 14:09:41', '2021-08-18 14:09:41'),
(1605, 62, 'WFoSVizSvpGGuNSOxc2nFgj56ZYfkeJa', '2021-08-18 15:51:15', '2021-08-18 15:51:15'),
(1608, 44, 'tjGSFfilZL6z8oUNCfjwP423OABi7ZUB', '2021-08-18 16:59:24', '2021-08-18 16:59:24'),
(1610, 51, 'ZCG3kS3ok8ZvB01ka3AOU4puXEp64LI5', '2021-08-18 17:43:20', '2021-08-18 17:43:20'),
(1611, 86, 'FvXuPJK3zDF0X8uZvxY4ts1Yjat8RlNp', '2021-08-18 18:39:32', '2021-08-18 18:39:32'),
(1612, 6, 'kx5OHM5sysp1rIEfV0XLYGyBXDvnZm2K', '2021-08-18 19:10:30', '2021-08-18 19:10:30'),
(1613, 79, 'HrPrxIaH5DmK8CyMIq2LLbbUTuaIbIKj', '2021-08-18 20:46:02', '2021-08-18 20:46:02'),
(1614, 49, 'Hu0manpHbNXbtdlRFiz5Qaj6NZfiMXkM', '2021-08-18 21:53:51', '2021-08-18 21:53:51'),
(1615, 63, '3IctUBCAMNCIiva9XqqSapDrAeFzCLJH', '2021-08-18 23:00:19', '2021-08-18 23:00:19'),
(1616, 63, '7YezqbNsU02UQPhBZpzoZrCFEO3CWsin', '2021-08-18 23:00:36', '2021-08-18 23:00:36'),
(1617, 47, 'udxWogdMB1PtHO0rSZfvQPEDEsrMo6Ch', '2021-08-18 23:34:48', '2021-08-18 23:34:48'),
(1618, 44, 'lBUttew9Z9GqECzT8smg9lj8X4zlubBX', '2021-08-19 01:54:28', '2021-08-19 01:54:28'),
(1619, 62, 'Usdn5qNvDDpZzkuXRMyFkH8WMMHf3hSX', '2021-08-19 03:07:12', '2021-08-19 03:07:12'),
(1620, 63, 'xD5CRuGoGACb8buNbcjP0O4312sjvFQT', '2021-08-19 09:44:40', '2021-08-19 09:44:40'),
(1623, 44, 'civmO6w2jxlHMC4AqzEtBRrreKdDD6kh', '2021-08-19 12:52:36', '2021-08-19 12:52:36'),
(1624, 62, 'p3llauadQpbxWMPwXMEc13XJgX8bOoLt', '2021-08-19 13:22:44', '2021-08-19 13:22:44'),
(1625, 63, 'M9oceZfYQhM8Ztb410mN8pW9Ybbapd5p', '2021-08-19 15:08:09', '2021-08-19 15:08:09'),
(1626, 47, 'v5UOxVPJbHjgWTs3CYEgYp8n7A8CsYTt', '2021-08-19 15:14:44', '2021-08-19 15:14:44'),
(1630, 44, '675OUgdH4tRSA4IQUDIBYWPRibcBM5Dy', '2021-08-19 17:06:44', '2021-08-19 17:06:44'),
(1635, 86, 'cbzZoXtYHTC7S6YbaBmFMzKSL29LxoSv', '2021-08-19 18:57:38', '2021-08-19 18:57:38'),
(1638, 6, 'TYKx8MbdI39CSVPR7n4RdqbaiC4MFtPz', '2021-08-19 21:36:27', '2021-08-19 21:36:27'),
(1639, 44, 'GVrGIv7J2LR2UBi5VxZzppepDVBhEuVw', '2021-08-19 21:41:48', '2021-08-19 21:41:48'),
(1641, 51, 'zP3FLmPzkyfvIsnPFmhzPLjx84OYprf4', '2021-08-20 00:25:31', '2021-08-20 00:25:31'),
(1642, 63, 'aHpCnsIVO7ISSD0UiPtl525pp7VkpcsX', '2021-08-20 02:58:17', '2021-08-20 02:58:17'),
(1643, 63, '0HXpbcMDeKAcqgI22KyJsKh6EtUU3kFx', '2021-08-20 09:52:50', '2021-08-20 09:52:50'),
(1644, 63, 'VZxT8MI9NsECILSTYnqslFEE2YzC3gNb', '2021-08-20 10:26:14', '2021-08-20 10:26:14'),
(1646, 62, 'V9KYvDzwXagUKNyw85krMIxAh2ICsdtP', '2021-08-20 10:57:10', '2021-08-20 10:57:10'),
(1647, 44, 'vpmqUOEWukf2souN5YXqWgOzHXqhVG1j', '2021-08-20 12:43:34', '2021-08-20 12:43:34'),
(1648, 62, 'PWoRb6XnnkXz56aaxcgL0PmTNRC6rTqw', '2021-08-20 13:09:11', '2021-08-20 13:09:11'),
(1651, 47, 'bqjDzwED9eARLMdxRM38J5SqF2s8bbTk', '2021-08-20 14:52:39', '2021-08-20 14:52:39'),
(1658, 44, 'N5z5W6eYibTrpFTNkzawFKR0evMHJ44s', '2021-08-20 17:25:07', '2021-08-20 17:25:07'),
(1661, 44, 'sDz9OrQx7cXgERUrUZU6uSmhAjRGDNan', '2021-08-20 21:31:17', '2021-08-20 21:31:17'),
(1664, 6, '2Au2c9hViJS7yJOU7JMb1fYqNJTYWlVI', '2021-08-21 00:26:50', '2021-08-21 00:26:50'),
(1665, 44, '4meRlkuC618W38OnAmItNM63C2xoiWKJ', '2021-08-21 00:30:33', '2021-08-21 00:30:33'),
(1667, 47, 'cBHZpfYEQmSjdV58IbTJKAb6zwoAla7d', '2021-08-21 01:07:36', '2021-08-21 01:07:36'),
(1669, 51, '36Odm802Y0IhwRyDzBK5Zaggey0r6NE2', '2021-08-21 01:13:18', '2021-08-21 01:13:18'),
(1670, 62, 'LNWW9FD7V7Yt6G74fF3wDaVGAhBVSKre', '2021-08-21 01:15:25', '2021-08-21 01:15:25'),
(1671, 79, 'KpSGD4UjmlxZQ0oWoABupxDQZ5JxabSh', '2021-08-21 01:35:41', '2021-08-21 01:35:41'),
(1672, 63, '9hZMlkkfRjkn7CfKi38JlBPdif6ZiaL2', '2021-08-21 05:03:12', '2021-08-21 05:03:12'),
(1676, 63, 'upAaqs7H6mupLyPGL1OycleHqOvOtdJI', '2021-08-21 10:46:28', '2021-08-21 10:46:28'),
(1677, 63, 'M5HCGGMujuT7OzujBCB6iDZ8WGb2Ahox', '2021-08-21 10:48:18', '2021-08-21 10:48:18'),
(1680, 44, 'xLykXk8NNscT6js4XAOu7jKyYm9lCSJB', '2021-08-21 12:44:36', '2021-08-21 12:44:36'),
(1681, 47, 'ex6ntZ5cxBNGUesDvDROl00GqlgpYYka', '2021-08-21 14:30:05', '2021-08-21 14:30:05'),
(1682, 79, 'xMJGG5p6FlphzMFXZYzJvuHkURyMstyD', '2021-08-21 14:33:47', '2021-08-21 14:33:47'),
(1685, 62, 'UVepRy7WBu1w7hLAHtkTLtiRd1Bj4gZZ', '2021-08-21 15:22:06', '2021-08-21 15:22:06'),
(1691, 63, 'jiwVdmtk32B9Z81Md1D7zM8o6xgQwwRr', '2021-08-21 17:43:02', '2021-08-21 17:43:02'),
(1698, 44, '7phBI7XaQiqKFWOCyHQSuTb4VHgCPs3j', '2021-08-21 18:54:45', '2021-08-21 18:54:45'),
(1699, 63, 'ekhYlmJ9kDv6w9WTjPNL6Dho4q9Q2BxE', '2021-08-21 19:36:11', '2021-08-21 19:36:11'),
(1700, 77, 'uGvRe7fDjSPLE2BGJDVhHTS97YvI2Kmx', '2021-08-21 20:17:32', '2021-08-21 20:17:32'),
(1702, 46, 'H2nbfl5awKVMkE8HGd5ASrxmFU7y3K75', '2021-08-21 21:35:51', '2021-08-21 21:35:51'),
(1703, 46, 'Lgwax8v26k7x8dth9KF0tMGRz2NZMPBG', '2021-08-21 21:55:02', '2021-08-21 21:55:02'),
(1705, 51, 'C20Qzy5LolX3dwsXB0ZCPq3DzIgAZYGv', '2021-08-21 23:38:10', '2021-08-21 23:38:10'),
(1706, 69, 'lfYPG41hJ16lWYNjR6WxktTTn9MDJoCA', '2021-08-21 23:57:15', '2021-08-21 23:57:15'),
(1707, 69, 'HxYyNdQUcMMJBa1mnXB82rzk7mqbbton', '2021-08-22 00:06:51', '2021-08-22 00:06:51'),
(1708, 68, 'qvsFSROeuuAnPnWwBJhOZTSJFVXB79LC', '2021-08-22 00:23:42', '2021-08-22 00:23:42'),
(1709, 59, 'a5peDqmxQDNT3NbWm7IZUXznkHelwg3F', '2021-08-22 01:50:22', '2021-08-22 01:50:22'),
(1710, 44, 'Yt4hlNtfFN6NzTt39RKly64HkpHYTBa2', '2021-08-22 02:05:54', '2021-08-22 02:05:54'),
(1711, 63, 'quVu3vu18ZY9MflXf7YUVIIL0fB6GoTB', '2021-08-22 08:03:08', '2021-08-22 08:03:08'),
(1712, 62, 'swcrRNxAOiJhl2FkgHmOQ0bC76xFytk0', '2021-08-22 09:51:54', '2021-08-22 09:51:54'),
(1713, 63, 'rn5lfeCUbpCTkQZ9IgDB92oBeKcZnNCq', '2021-08-22 10:59:19', '2021-08-22 10:59:19'),
(1715, 69, 'sm8fETyXkz9puqQQXW2TAEENO4dz6w6q', '2021-08-22 11:40:29', '2021-08-22 11:40:29'),
(1716, 59, '3CL1W4wGeeCNvbxsnrGkHMmtPJsfqNca', '2021-08-22 11:54:17', '2021-08-22 11:54:17'),
(1717, 47, 'ONmwfU1zxARCw0IQvDFKFWLz28MEM7us', '2021-08-22 12:06:07', '2021-08-22 12:06:07'),
(1718, 77, 'sVnIgsLHpsX9rDqbNaLzwh0nPR7jvaHV', '2021-08-22 12:25:26', '2021-08-22 12:25:26'),
(1719, 44, 'RDxpC84qxZ0L08UOzSChXemjHgwmz6Dp', '2021-08-22 13:14:00', '2021-08-22 13:14:00'),
(1720, 62, '2tJJpNGvA7YUAJ0H4hnAn6Vez2IbVsuu', '2021-08-22 14:29:58', '2021-08-22 14:29:58'),
(1721, 69, 'Tfmsf9u7EtozudjlZA5uNNNSa0G5zMd3', '2021-08-22 14:31:05', '2021-08-22 14:31:05'),
(1722, 69, '6bEXkRpM3gLJEz7Vv8WJl2XfE0BO6kzG', '2021-08-22 14:49:49', '2021-08-22 14:49:49'),
(1723, 63, 'Z6gakRLvhqkD9CWAHXrsB73F5xmsXl2R', '2021-08-22 15:57:02', '2021-08-22 15:57:02'),
(1724, 44, 'EzlOEC5LhwqVWmKR0p0m2Npa3fOWGfcy', '2021-08-22 17:03:08', '2021-08-22 17:03:08'),
(1730, 56, '7ZsNYKPjhX1QpW8tDoscuGDii1NvPrzH', '2021-08-22 18:39:00', '2021-08-22 18:39:00'),
(1731, 77, '5LV9IrAyiRj5A946i5kBCm8xYfhhFsJk', '2021-08-22 18:49:05', '2021-08-22 18:49:05'),
(1732, 86, 'VkMFjWRF3FXGAyl1vCgFIsDcUprkwFyJ', '2021-08-22 19:23:34', '2021-08-22 19:23:34'),
(1733, 6, 'gkY610phHtL9jHfPFQM3PhvmqjtToUp2', '2021-08-22 19:26:20', '2021-08-22 19:26:20'),
(1735, 51, '4T3svrc64ffGdH9SkPbhZTDSI78vDud6', '2021-08-22 19:45:06', '2021-08-22 19:45:06'),
(1736, 57, 'v4IXmcqmbYtU2KwSRejIedYtVoJBlKJt', '2021-08-22 20:26:06', '2021-08-22 20:26:06'),
(1737, 59, 'wZwJBMXkr8CQwUOrmGgXp1PnUrqOu4pk', '2021-08-22 20:40:26', '2021-08-22 20:40:26'),
(1738, 44, 'xCytGK1ONNRYtQEt5qDNRsyQdwYMu9ye', '2021-08-22 22:28:07', '2021-08-22 22:28:07'),
(1739, 59, 'dILX6VoXLSujKVg9zXGDhnyqbCSzQDdC', '2021-08-23 00:37:26', '2021-08-23 00:37:26'),
(1740, 77, 'b7fUZv7xJmamyN7aqGbXNibPYrPPJVMi', '2021-08-23 00:58:03', '2021-08-23 00:58:03'),
(1743, 63, '0sQ77NKv8i1ZO7496MliF1YnNEFY68c5', '2021-08-23 03:05:01', '2021-08-23 03:05:01'),
(1744, 63, 'T8CXB9MT7DOMT75v6uU5ifiLPSnPxd6e', '2021-08-23 10:10:56', '2021-08-23 10:10:56'),
(1746, 47, 'GkKDLnc0gbrHlCRGVTh8KFi5gnkWPmAA', '2021-08-23 11:01:28', '2021-08-23 11:01:28'),
(1747, 63, 'QOfaGE6SAanuZTUG1SquZceF1XhzkIF5', '2021-08-23 11:15:48', '2021-08-23 11:15:48'),
(1748, 62, '7gyGvQ7MDDoLAX8eL5xYudkrTke9L1Hx', '2021-08-23 11:57:05', '2021-08-23 11:57:05'),
(1749, 77, 'HNd2eiIifaCnmAWjKNsER6gIQWcHeogO', '2021-08-23 12:22:54', '2021-08-23 12:22:54'),
(1750, 44, 'dZLtRv6JBq0Mjd4zvwatNeDqxtQumJiI', '2021-08-23 12:29:48', '2021-08-23 12:29:48'),
(1752, 57, 'VkivNNludRfGymOViMOlPsIn5dvlV5Pe', '2021-08-23 14:15:25', '2021-08-23 14:15:25'),
(1753, 65, 'Pma0vmauuVQFmojcNl5ZF4Nf8p7tJWZ0', '2021-08-23 14:29:33', '2021-08-23 14:29:33'),
(1754, 63, 'VhtN7yfGFbMerptRufVXI7vxKdMLt9XL', '2021-08-23 15:00:14', '2021-08-23 15:00:14'),
(1756, 56, 'N6uefxCRNAumarHafMacm8uFv5GVqUqM', '2021-08-23 15:36:50', '2021-08-23 15:36:50'),
(1757, 76, '8xKyuP9e81ZDzkQxTn77Vdp2lmaY416S', '2021-08-23 15:39:29', '2021-08-23 15:39:29'),
(1758, 59, 'D4VX6o31s56LVc6M9mbqNYaCSFJcyjsF', '2021-08-23 16:18:20', '2021-08-23 16:18:20'),
(1761, 44, 'MwwvjNz7mdZX4vE0aoHm6cb0TvOf7dt3', '2021-08-23 17:09:05', '2021-08-23 17:09:05'),
(1765, 51, 'N8YHkP12cOoj2Z9d35qP3tPrXA5vDfv7', '2021-08-23 18:20:27', '2021-08-23 18:20:27'),
(1766, 69, 'dtAU33mEI4fmZNHMJKwKoHEzlmqut3Xp', '2021-08-23 18:47:20', '2021-08-23 18:47:20'),
(1767, 69, '3ks6Il0apxzoWjnKWDxQSKmWkn6MNxTh', '2021-08-23 19:09:08', '2021-08-23 19:09:08'),
(1768, 59, '90DiLpT9stfOyMeu9mE5Z5YkcRxqrPa6', '2021-08-23 20:25:54', '2021-08-23 20:25:54'),
(1769, 47, 'gYdRLOlk4RnwgZPcgUa7NcxYefL4kA0u', '2021-08-23 22:32:16', '2021-08-23 22:32:16'),
(1770, 69, 'mNEq8M7nbg1xh2CMJRvwphMOOeW4NHUY', '2021-08-23 22:54:53', '2021-08-23 22:54:53'),
(1771, 56, 'LOSP8EeY4ZIFTtnRDJVCietaxdTfwwVC', '2021-08-23 23:22:47', '2021-08-23 23:22:47'),
(1772, 56, 'kU3W6Tqye3nCIUhVsMZqAz0rubhazm4A', '2021-08-23 23:28:46', '2021-08-23 23:28:46'),
(1773, 65, 'wkuTspqZQDnlwjU6Ywvvqc61qhUf2Njq', '2021-08-23 23:33:17', '2021-08-23 23:33:17'),
(1774, 44, '6XlxBWvwQtEbXsE4n4Tde9AOm1yF7r2E', '2021-08-23 23:53:03', '2021-08-23 23:53:03'),
(1781, 74, 'V5bBxgQsA8b6tXFZnrIh7mmAlw2dmkVv', '2021-08-24 00:09:22', '2021-08-24 00:09:22'),
(1782, 65, 'v7F8Z1GKc0yc6stTj56Yi2Gsh1TmR7W8', '2021-08-24 00:28:07', '2021-08-24 00:28:07'),
(1783, 63, 'Whs9BlDlDITEAPT0NVxoFbceTUrv4f68', '2021-08-24 00:41:00', '2021-08-24 00:41:00'),
(1796, 81, 'Nu6eF8eJ1JhMwM2I72xdn7Y3LNNgurWU', '2021-08-24 01:51:04', '2021-08-24 01:51:04'),
(1797, 6, 'u6c8N2piFTcoT2FgV71V7G5z6LsBh1q9', '2021-08-24 02:07:10', '2021-08-24 02:07:10'),
(1798, 51, '5c9ezFkCN0UJSnGldAywOVqVwFks3fdC', '2021-08-24 02:17:03', '2021-08-24 02:17:03'),
(1799, 63, 'TZ24sVoXyoMfADbs6Heq0Sgkect0QEV1', '2021-08-24 09:56:49', '2021-08-24 09:56:49'),
(1800, 49, 'AGj8Tzcut4ffqt6fs4gSOGBF9o4QMEwa', '2021-08-24 10:44:35', '2021-08-24 10:44:35'),
(1802, 62, 'Q7zcbp0c6LFAByruF8rKf7Omb47XG7kG', '2021-08-24 11:21:12', '2021-08-24 11:21:12'),
(1805, 47, 'st56HqfQVdvTapI1bdoMxV9Dhk2xvlRJ', '2021-08-24 11:48:08', '2021-08-24 11:48:08'),
(1806, 69, 'qoEpu2keaWLg6XAuoS5V83IyuD9rgJhA', '2021-08-24 12:09:14', '2021-08-24 12:09:14'),
(1807, 59, 'hBXBloCsg7r47rCURJLyXagf2of3Aouw', '2021-08-24 12:45:46', '2021-08-24 12:45:46'),
(1808, 44, '2Dv5Y3omErquvZKhVl0dketDoa6I35AS', '2021-08-24 12:56:39', '2021-08-24 12:56:39'),
(1811, 73, '02wkfVkdIFqyaFMoVNuD8MPVHmhrNBnF', '2021-08-24 13:46:59', '2021-08-24 13:46:59'),
(1812, 65, 'z4cJG79uauAL5t1wOHtsjrvG6ko47e9U', '2021-08-24 13:48:18', '2021-08-24 13:48:18'),
(1813, 68, 'wEGkbLUAqs40u7aGQRsPtOcA5osS18RV', '2021-08-24 14:41:50', '2021-08-24 14:41:50'),
(1814, 70, 'xThJO97G3cxVfwlx8jR1jjJZKYvpOA8R', '2021-08-24 14:43:39', '2021-08-24 14:43:39'),
(1815, 57, 'iRh57vvidoDV2UYpWv53WvUKiE4k68Pc', '2021-08-24 15:07:51', '2021-08-24 15:07:51'),
(1816, 86, 'RP0xflioueg2N9sUzL6GatFmSUmoJKGz', '2021-08-24 15:52:19', '2021-08-24 15:52:19'),
(1818, 6, 'hN7edJLpV2K9xHSChrB5Xmr0VAWaeef6', '2021-08-24 16:26:40', '2021-08-24 16:26:40'),
(1823, 63, 'NqZgiCNXjM6zG6YqzoIllLzsR3KVeo5i', '2021-08-24 17:13:02', '2021-08-24 17:13:02'),
(1824, 65, 'gAkGyRfQ5ujsq6svVqNTNOn3VzEEJsxg', '2021-08-24 17:30:57', '2021-08-24 17:30:57'),
(1825, 44, 'KhVwSnAfUO4HDSx4nSeq4ZnqrZsJwqaj', '2021-08-24 17:57:14', '2021-08-24 17:57:14'),
(1828, 69, 'iLac1ns11g8yV01RAvir08WSA8ve522L', '2021-08-24 18:24:14', '2021-08-24 18:24:14'),
(1829, 50, 'g8xcRnoA2O7Uo4Vm1OgUrztrNxORsNyM', '2021-08-24 20:03:04', '2021-08-24 20:03:04'),
(1832, 6, 'Y46wfSV0vvSP6sZoREtSEKNc8SrSnOdF', '2021-08-24 22:01:07', '2021-08-24 22:01:07'),
(1833, 69, 'qhipFT1VAmJWNDe9TTyeqYpYRUEvAocm', '2021-08-24 22:04:10', '2021-08-24 22:04:10'),
(1834, 6, 'C2lPqt4IWWVBizHNywHdiFQIy6q8nQnu', '2021-08-24 22:40:33', '2021-08-24 22:40:33'),
(1835, 61, 'hpuEOO0qKhoJg5VWH5YKd9Rb6qmNiYJX', '2021-08-24 23:57:48', '2021-08-24 23:57:48'),
(1836, 44, 'fVhbS7jOOenyjanjYwAl9ayAieyOt2d6', '2021-08-25 00:17:28', '2021-08-25 00:17:28'),
(1837, 69, 'qacxnm37rcIG0i887Dw5N6gg0vB9tb15', '2021-08-25 00:43:46', '2021-08-25 00:43:46');
INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(1838, 46, 'NIHvKoz7vHim0UwdadTtEB9mrtuxFvWe', '2021-08-25 01:07:51', '2021-08-25 01:07:51'),
(1841, 62, 'XiJXLmIVErUSM4FTVny1V03ept9lsfv8', '2021-08-25 09:12:35', '2021-08-25 09:12:35'),
(1844, 47, '6664WnvmG2BnWSzyZrjxJZPW4pBf0eb2', '2021-08-25 11:02:39', '2021-08-25 11:02:39'),
(1845, 63, 'Esuy5nG2GJZt2NCuxMsCgDMIoW7N07OK', '2021-08-25 11:32:27', '2021-08-25 11:32:27'),
(1846, 65, 'Ln1zbURtq7Pq83aEZHrf7BJBBrp52D6V', '2021-08-25 12:26:49', '2021-08-25 12:26:49'),
(1847, 73, 'nKztEXVOHBXW3LwrydjIM2qWJ1U4jYaj', '2021-08-25 12:43:04', '2021-08-25 12:43:04'),
(1848, 73, '6HoeMcIbw38L084sqC8rcZFwBDmIkTdd', '2021-08-25 12:43:45', '2021-08-25 12:43:45'),
(1849, 81, 'DbtIkimPjSD15SR2baa0S9vWXO2GZym4', '2021-08-25 13:04:24', '2021-08-25 13:04:24'),
(1850, 57, 'NoQPCL1r20P69JTGk13UQ7B6k8A7Imb9', '2021-08-25 13:44:52', '2021-08-25 13:44:52'),
(1853, 44, '2u709VNz5Yow4DncZwn85HeDFZKRiL4s', '2021-08-25 13:54:37', '2021-08-25 13:54:37'),
(1855, 61, 'gFmqmF5UyxA1FzQPmvOF8kMEU0rOduJo', '2021-08-25 13:57:50', '2021-08-25 13:57:50'),
(1856, 68, 'ymsjKkvCfqcLOlzgJfRq6HNiyD4185o0', '2021-08-25 14:08:05', '2021-08-25 14:08:05'),
(1857, 69, 'fCgTos5GGEm2f9blj0LJcQch6jyMTYrl', '2021-08-25 14:16:27', '2021-08-25 14:16:27'),
(1858, 65, 'yaVZX6CXIFa4WM4S6nNDp5FKwE10Xacu', '2021-08-25 14:19:25', '2021-08-25 14:19:25'),
(1865, 86, 'lVNQE2LLwGvGlqyiCQMtfzWPY4lmDLmW', '2021-08-25 15:51:39', '2021-08-25 15:51:39'),
(1870, 77, 'XzB9oayoSme5CYTeewpgmveMN72QqJLg', '2021-08-25 16:08:41', '2021-08-25 16:08:41'),
(1871, 70, 'MhbGQyMjCmVnK2iowNgwPfBVra6MQt8N', '2021-08-25 16:22:09', '2021-08-25 16:22:09'),
(1872, 79, 'gNX0kks5hHlZ3xKkY4ma7drz24HPThw0', '2021-08-25 16:22:12', '2021-08-25 16:22:12'),
(1873, 74, 'I8yJlpChYyxVTa3NrqDOKNl1j7NLx8Uq', '2021-08-25 16:47:29', '2021-08-25 16:47:29'),
(1874, 44, 'PxTJSjj9zEAiwGw3JwsJqsPeJV4ZFrb3', '2021-08-25 16:52:13', '2021-08-25 16:52:13'),
(1876, 73, 'GcmN4q7RUXCYuwRgc7jRsNpkgMJq0vq6', '2021-08-25 18:22:37', '2021-08-25 18:22:37'),
(1879, 81, 'mi55Sfhju47q5b6NW8xUb4RJ4ltpFd3o', '2021-08-25 18:37:01', '2021-08-25 18:37:01'),
(1885, 86, '8dqo7GGgHUYzdAezs585SWmw6ifoUBVp', '2021-08-25 19:03:30', '2021-08-25 19:03:30'),
(1888, 57, 'HwUYWzP6uUgEia74YRjlyBMiM6u2HNeM', '2021-08-25 19:27:30', '2021-08-25 19:27:30'),
(1891, 77, '4tSAvdEKiONfTsyrjfRl1Z2Ieml8AJ3c', '2021-08-25 20:21:45', '2021-08-25 20:21:45'),
(1893, 64, 'zbnaxWt5443C0GPb2epsfrJcURA8t03L', '2021-08-25 20:25:41', '2021-08-25 20:25:41'),
(1899, 86, 'BwY6yoI1qMV2jkbhcwvmNqFgMEtRtS8E', '2021-08-25 20:53:29', '2021-08-25 20:53:29'),
(1900, 59, 'JDTDTbG7s9OVfiqujHXajyswCr3nbojj', '2021-08-25 21:22:51', '2021-08-25 21:22:51'),
(1901, 78, 'bfptidnSBmr5Z8iHiM2AIq5i1qwKHUAO', '2021-08-25 21:42:21', '2021-08-25 21:42:21'),
(1902, 61, '0gTDnPCxKHeGiD4YvgQ3zaQmhpUtMA3j', '2021-08-25 21:47:35', '2021-08-25 21:47:35'),
(1903, 65, 'zDJHkocr3nZIyFsAhZkq8HyF7bWjMlim', '2021-08-25 22:06:53', '2021-08-25 22:06:53'),
(1904, 79, 'T08WRsPg2smhMEl03aTwpBDH5TBzivUJ', '2021-08-25 22:13:20', '2021-08-25 22:13:20'),
(1905, 49, 'YY2lC5h2uVzoW83LyqHgBwKGIJVREdix', '2021-08-25 22:54:17', '2021-08-25 22:54:17'),
(1906, 81, 'HHasGSqOZHcth30DLwnmbO7zip0473GG', '2021-08-25 23:45:33', '2021-08-25 23:45:33'),
(1907, 52, 'ceQG1kP5tMwVUBeFCIb2yl5hwVfosekz', '2021-08-26 00:06:34', '2021-08-26 00:06:34'),
(1909, 78, 'FZN1JhwqfeaEc5PWiXa3ADWfuhMMxXLX', '2021-08-26 00:15:59', '2021-08-26 00:15:59'),
(1911, 44, 'hFwuXnOrPeXLCxktwmK5yy0Zk1yxBfl3', '2021-08-26 00:45:20', '2021-08-26 00:45:20'),
(1915, 66, 'Ih0kNOCoZ7mYwu7NRCh5EJojw32NeQR6', '2021-08-26 01:41:32', '2021-08-26 01:41:32'),
(1916, 66, '5fJO7TfbMssArdQ1QRUBFIuIE4JDfDrT', '2021-08-26 01:41:36', '2021-08-26 01:41:36'),
(1917, 68, 'uKIeeVIrb9l03jb7T13VreyM8bVAIvv9', '2021-08-26 01:44:21', '2021-08-26 01:44:21'),
(1918, 66, 'g68SeGHTynmV2UxMqTtb5xCs4DJXP2jx', '2021-08-26 02:42:42', '2021-08-26 02:42:42'),
(1919, 50, 'rTt2TbEeJFdyiV0eRUVRIqj1JRT1Iqcq', '2021-08-26 02:54:46', '2021-08-26 02:54:46'),
(1920, 78, '2Mts76oWXTgDCfokWr45o0hiAqMRYaPo', '2021-08-26 02:57:13', '2021-08-26 02:57:13'),
(1921, 47, 'KMXsTgVi5MtXmg9IEISvtQuxcDxuDIrl', '2021-08-26 05:02:25', '2021-08-26 05:02:25'),
(1922, 62, 'J7gKW0vtX6H7KFUjX22cNBqPYkgniJue', '2021-08-26 10:35:38', '2021-08-26 10:35:38'),
(1923, 49, '7XmFmDkq0gKLTWYGTYe1DuQ1hOUP4Med', '2021-08-26 10:42:38', '2021-08-26 10:42:38'),
(1924, 47, 'wv5MTBEt1HW1pi7jq6LVLlvDaBq0nTVS', '2021-08-26 10:43:12', '2021-08-26 10:43:12'),
(1926, 66, 'uNvNVK6R3oJ3Puz7YnsAeB77QlGNDRfK', '2021-08-26 10:56:22', '2021-08-26 10:56:22'),
(1929, 59, 'Cf4siWPBzwU82lHOI5kZEL3uVodPqqnZ', '2021-08-26 11:55:51', '2021-08-26 11:55:51'),
(1930, 69, 'nLxGpwh8NqRmyGyBgBky0aR9L56MTjUi', '2021-08-26 12:07:11', '2021-08-26 12:07:11'),
(1931, 73, 'tDbM4zUnrd8udPoWPOpiqkmp96KDAFzJ', '2021-08-26 12:19:51', '2021-08-26 12:19:51'),
(1932, 77, 'htPge0XBNTAUNxT9TPhaos9E0RpJBOPC', '2021-08-26 12:28:26', '2021-08-26 12:28:26'),
(1934, 56, 'ZOrbgP3yDS1ebywCYdisHaNoj0Kr3w04', '2021-08-26 12:54:35', '2021-08-26 12:54:35'),
(1935, 66, 'IsPB1YmL3EPV9Q40j7rPSIrh30aGsYNf', '2021-08-26 12:56:28', '2021-08-26 12:56:28'),
(1936, 44, 'H3ev61BqHVyopE1fYprIiDQnEsGASSnS', '2021-08-26 12:56:49', '2021-08-26 12:56:49'),
(1937, 69, 'fLcvk6iiDfwwIG6UBHJFuvLlgppUANrM', '2021-08-26 13:26:12', '2021-08-26 13:26:12'),
(1939, 79, 'WVy9tkSSlMHOh1lT3ljEpBb9hGQaoNz9', '2021-08-26 13:54:01', '2021-08-26 13:54:01'),
(1940, 57, 't8MTBMoRl180tnNRMDxjI0shWtSpVyh6', '2021-08-26 14:02:05', '2021-08-26 14:02:05'),
(1941, 6, 'GwqQxDIKgbtLhOQsjYBgozrAK0GIqcxb', '2021-08-26 14:18:15', '2021-08-26 14:18:15'),
(1942, 58, '4SkGAVetl2uO6gEqdsFafZ74Q2jYgGw5', '2021-08-26 14:23:10', '2021-08-26 14:23:10'),
(1945, 61, 'A5rahK8jksBLcPdbjBbnkHnbbbwuk472', '2021-08-26 14:42:14', '2021-08-26 14:42:14'),
(1946, 66, 'pbIyCIj5moIngyBiN8J8VZ2rIYIXFrkQ', '2021-08-26 14:48:27', '2021-08-26 14:48:27'),
(1947, 62, '78p4tClUUYA1o6z5uyjHNUJPQ6xeBf2A', '2021-08-26 14:55:10', '2021-08-26 14:55:10'),
(1948, 62, 'kKYnVJDKw10eLJ0U0DBkZai0NA9eDgAW', '2021-08-26 14:55:11', '2021-08-26 14:55:11'),
(1950, 74, 'PigkiJp8rRrjTCVQHBUtOFi80N0VDl2e', '2021-08-26 15:04:55', '2021-08-26 15:04:55'),
(1951, 6, 'wBx5dBAk5DgGFYFte9aMyHb0kzEWoeQP', '2021-08-26 15:57:20', '2021-08-26 15:57:20'),
(1952, 66, 'Pnhn0g1uns2WhW4iRCZxWU8lVkLEFCyK', '2021-08-26 16:25:19', '2021-08-26 16:25:19'),
(1953, 44, 'kdrg9cvF2y4GJoR9svPHGO9NH8KQ00UN', '2021-08-26 16:43:55', '2021-08-26 16:43:55'),
(1954, 57, 'y1zrnMLwHcrhtXBRxuS7VK0Ez89AcDPA', '2021-08-26 17:01:01', '2021-08-26 17:01:01'),
(1955, 6, '1gfUq31fgYDlWzD5Za0OB6T6aX42P9kw', '2021-08-26 17:42:30', '2021-08-26 17:42:30'),
(1956, 63, '3EQ9EMV3WqcbfXcP2ODqD7iNuf0dwu5e', '2021-08-26 17:46:08', '2021-08-26 17:46:08'),
(1959, 51, 'X6zMVcYgjdYoJQ8zG1HO5cxay1HBvO5Z', '2021-08-26 18:00:31', '2021-08-26 18:00:31'),
(1961, 84, 'g3oPQWlaRkZG8rfa6Wb55SB115KiuKI3', '2021-08-26 18:16:28', '2021-08-26 18:16:28'),
(1963, 70, 'RNFGsd4SVgRb4GLFdSId3HlQNWKfwvGF', '2021-08-26 18:30:38', '2021-08-26 18:30:38'),
(1966, 6, 'QtDKfS6Tetw6VEQNovSKvQNlqskkOfq2', '2021-08-26 19:50:05', '2021-08-26 19:50:05'),
(1967, 69, 'x9GNNoerNwjQWckpIwFjM26k0m1wlTit', '2021-08-26 19:50:27', '2021-08-26 19:50:27'),
(1969, 53, 'l9F76gpi6C3xBm8gy5lJReV40BXUI2ju', '2021-08-26 20:20:35', '2021-08-26 20:20:35'),
(1970, 73, 'j8MIau3hYABjZHP3CL7Vmg58hcJFlTJZ', '2021-08-26 21:34:35', '2021-08-26 21:34:35'),
(1971, 79, 'aUVLRBikt4IlUXBj7LExXOtvw4Uxb1sa', '2021-08-26 21:58:01', '2021-08-26 21:58:01'),
(1972, 69, 'r9aSCWUpQJei2S7ubBABesDm9w80Q8YZ', '2021-08-26 22:16:21', '2021-08-26 22:16:21'),
(1973, 44, '0OuS2txArArNXrCncCwWUeaeTpDfn5F0', '2021-08-26 22:30:28', '2021-08-26 22:30:28'),
(1974, 58, '28go6GgBjiLcRJZWk0kM298nbwgpbv02', '2021-08-26 23:07:25', '2021-08-26 23:07:25'),
(1975, 61, 'jo6zuDymX4GOUn9FbjCoROEjuEAlUzob', '2021-08-26 23:17:18', '2021-08-26 23:17:18'),
(1976, 63, 'pMsjJEfa4aXo5jXEzPdNQ6SxbSH0jPsM', '2021-08-27 00:01:24', '2021-08-27 00:01:24'),
(1977, 81, 'lQm8uyAUygWnpAcNsTcF2LkCCqARWFGo', '2021-08-27 00:48:12', '2021-08-27 00:48:12'),
(1986, 66, 'YWQwDlVlyBbyfwlnnu35505qNhNNE2O5', '2021-08-27 02:01:21', '2021-08-27 02:01:21'),
(1988, 68, 'Ld7AP036kA2kDsad91PRkZwy3eFmyRQC', '2021-08-27 02:03:50', '2021-08-27 02:03:50'),
(1989, 53, 'j1Ie3pl9nGUTPTimQZ6WGIb93OlPCdWm', '2021-08-27 02:07:57', '2021-08-27 02:07:57'),
(1990, 66, 'TScqWJWUgVUD0WpLhDVYGbLMhvrHQaFx', '2021-08-27 02:10:02', '2021-08-27 02:10:02'),
(1992, 62, 'bUQ6nJb1ZJ2GWKv2s94JjLUvbJG7XXc0', '2021-08-27 10:29:29', '2021-08-27 10:29:29'),
(1998, 67, 'ZzoXGfTIhjdOw8YYyigOmrL4uLtHbzr4', '2021-08-27 10:58:50', '2021-08-27 10:58:50'),
(1999, 66, 'khJ2RXunUhRcMYEgAOx5Twyc2Eyw47Kt', '2021-08-27 11:01:41', '2021-08-27 11:01:41'),
(2000, 59, 'bxWtQGanelIHLMOhNnvlIsbkk9dTZzhM', '2021-08-27 11:23:31', '2021-08-27 11:23:31'),
(2002, 77, 'uU8b2qTnbZyvkdgm3NDPo9QvAd6UaIlR', '2021-08-27 11:40:53', '2021-08-27 11:40:53'),
(2003, 47, 'bA4mn5ZgeEbnGAZ7i7cokmapivzdzVpG', '2021-08-27 11:53:33', '2021-08-27 11:53:33'),
(2005, 73, 'yzw7fWSkVL9I3JSLAPZuvlwA3FYDWe6S', '2021-08-27 11:59:14', '2021-08-27 11:59:14'),
(2007, 69, 'K09O4C9WyRMSR2bycR6folN5xcfxUlgV', '2021-08-27 12:15:22', '2021-08-27 12:15:22'),
(2008, 74, 'KaKOfbPO9X5GJESB4SE3lCL1MuPKO3Ma', '2021-08-27 12:17:41', '2021-08-27 12:17:41'),
(2010, 57, 'ajm7isyr6QLtTzYeMfur3ZHPQNjYgLy0', '2021-08-27 13:51:12', '2021-08-27 13:51:12'),
(2011, 66, 'cVOPjuSZDS88FsmgpO3SW3OXzXGIbEIb', '2021-08-27 13:57:47', '2021-08-27 13:57:47'),
(2013, 61, 'L8HP4Sb3JUGSw5BNLC5Nao2SJks9TnFN', '2021-08-27 14:00:55', '2021-08-27 14:00:55'),
(2014, 81, 'kRfXaensqMmzUOfWOJ3EuhfKwK3aaQXL', '2021-08-27 14:04:27', '2021-08-27 14:04:27'),
(2015, 53, '9NwFIpPY2ZcAX9uQoJNlJ6zQq3GZWFGq', '2021-08-27 14:10:09', '2021-08-27 14:10:09'),
(2016, 44, 'o6Ol661PSkpjMiIRItxbNS0TlCq6UAbj', '2021-08-27 14:29:49', '2021-08-27 14:29:49'),
(2021, 6, 'ZPnD7YbVSLXkQu2BMCQuUVLwjwjW3kqI', '2021-08-27 15:08:38', '2021-08-27 15:08:38'),
(2024, 79, 'rWEmosFSCpPA5qvvmsYkrAZA19khOk2o', '2021-08-27 15:19:25', '2021-08-27 15:19:25'),
(2025, 65, 'f06n51T6lno8QiL0QbEbxsKldprdYv6z', '2021-08-27 15:19:33', '2021-08-27 15:19:33'),
(2026, 74, 'a40qVdP5CVRGZBe9nGepDqymqXGVQ9I2', '2021-08-27 15:33:30', '2021-08-27 15:33:30'),
(2027, 63, 'thzXnlYuFxEv6Rc63mZTQIVGak4mq4PH', '2021-08-27 15:39:31', '2021-08-27 15:39:31'),
(2028, 70, 'at1CRa1OMe8mU1dATDXOA9RtJtvUYJ3m', '2021-08-27 15:44:13', '2021-08-27 15:44:13'),
(2029, 63, 'uTzmMFIHqx1kxtpFphEMTCN8Xa6eXF5D', '2021-08-27 15:52:46', '2021-08-27 15:52:46'),
(2030, 73, 'ERzK10VlgnL2qPU9bKc1jM1errZcKi07', '2021-08-27 16:17:40', '2021-08-27 16:17:40'),
(2031, 44, '9A2gDk8UOrNngApCffispW54AXu2jG8x', '2021-08-27 16:50:16', '2021-08-27 16:50:16'),
(2033, 51, '9JiHPGIDYdOqzAEeIBPShpwgwNGH4Mx3', '2021-08-27 17:58:19', '2021-08-27 17:58:19'),
(2037, 81, 'oxIWsgQSFjy5IvkCrH2t3XWAMislk3hd', '2021-08-27 18:24:44', '2021-08-27 18:24:44'),
(2038, 81, 'jB568IL0M8t0reZkhNUldKY9vAsao37J', '2021-08-27 18:24:46', '2021-08-27 18:24:46'),
(2039, 78, '2isDx5i5ybPGDTZGxLDRrsdVamCwzp8K', '2021-08-27 18:32:55', '2021-08-27 18:32:55'),
(2040, 66, 'LGobQDWNzLsQO77PLtEHeRnbA98gChjy', '2021-08-27 20:00:51', '2021-08-27 20:00:51'),
(2047, 74, '779nxzcyqQlYBdhNs4b9qN8TpuGeASq6', '2021-08-27 21:51:21', '2021-08-27 21:51:21'),
(2048, 6, 'Zmg19Gl6313Wk5PHlppf5cJaNiXhqxhF', '2021-08-27 21:52:24', '2021-08-27 21:52:24'),
(2050, 44, 'FtQK5rEnj8vSE5QUZs0Vh0v5rILpJbzu', '2021-08-27 22:42:48', '2021-08-27 22:42:48'),
(2052, 59, '4tTglFjLJ4qMlqtupoyY8rzdqlnjXkPJ', '2021-08-27 23:07:52', '2021-08-27 23:07:52'),
(2053, 67, 'o8sCAw2xgh7vQnWnau21JRXcp6VY6xvG', '2021-08-27 23:13:43', '2021-08-27 23:13:43'),
(2054, 67, '5Wo4VMgDygLUlLoBlL8TjVPCip3BfFKk', '2021-08-27 23:13:44', '2021-08-27 23:13:44'),
(2055, 70, 'cY7idIDUnjnTKbgAINA9ATgRgfTAezqF', '2021-08-27 23:16:03', '2021-08-27 23:16:03'),
(2056, 66, '40cnlyJWJSgiOGZEjHfKbxfCQKv6FS4t', '2021-08-27 23:34:15', '2021-08-27 23:34:15'),
(2059, 77, '7L6ATctKLRe4jv4xbLbtQDBbLpqHRlGP', '2021-08-27 23:49:32', '2021-08-27 23:49:32'),
(2060, 69, 'if70gwHJMn2MK4q10MEq0Jxh1tZ1f8S5', '2021-08-27 23:52:03', '2021-08-27 23:52:03'),
(2061, 62, 'H6voB1ga7XtYhKex2eZg8nXsALGum9j8', '2021-08-28 00:12:45', '2021-08-28 00:12:45'),
(2062, 81, '11I8QknVQppAqKcWsEOkWK8suoUhXCHy', '2021-08-28 01:03:13', '2021-08-28 01:03:13'),
(2064, 53, '45kFXXjkFBpuyUP88qTupzs125252pKV', '2021-08-28 01:59:03', '2021-08-28 01:59:03'),
(2065, 78, 'S0lMuSrHdqIbnTzIUY18ubDNW7hB6mRo', '2021-08-28 02:56:27', '2021-08-28 02:56:27'),
(2066, 63, 'KO815mHri2lWJNXDoExEKGgaXoPkjZfq', '2021-08-28 07:18:13', '2021-08-28 07:18:13'),
(2067, 63, 'fZqVhSzo8AG7K1rxdD1Z5P6VYENBiDlJ', '2021-08-28 09:42:31', '2021-08-28 09:42:31'),
(2068, 67, 'UBZZwXMtv0xZSLKEWrRspHpIJAxpdLpG', '2021-08-28 10:35:51', '2021-08-28 10:35:51'),
(2069, 49, '5tniMFQ5Rr5fw1TY6zpYlA7Hfjo3MUyW', '2021-08-28 10:48:37', '2021-08-28 10:48:37'),
(2070, 47, 'WdnCCKNR412wyOyx8WPqAI3hxgrxC1AM', '2021-08-28 10:55:04', '2021-08-28 10:55:04'),
(2071, 66, 'cg2NKii8j5jfuTOe8qElcjPST2Df7l8B', '2021-08-28 11:12:55', '2021-08-28 11:12:55'),
(2073, 44, 'Y3eukbDoyTGVeAaWYXVMOyieaib1XToI', '2021-08-28 11:32:20', '2021-08-28 11:32:20'),
(2074, 79, 'JAvZMCqtmRAdXuc2mdUSw9c1HQMktjMi', '2021-08-28 11:41:03', '2021-08-28 11:41:03'),
(2075, 62, 'uxfQ0z5HLTpJHBs84IuORWDW3g0QwT2L', '2021-08-28 11:48:26', '2021-08-28 11:48:26'),
(2076, 63, 'D3QO1y7Thqt40rQZMDXDQHuSkiuaLTTA', '2021-08-28 12:02:31', '2021-08-28 12:02:31'),
(2077, 59, 'TT7dfLsXEvqEGt7Cfjpf0h5cCUNoC9z3', '2021-08-28 12:12:12', '2021-08-28 12:12:12'),
(2080, 77, 'ELuWeuBi6EOVk58hyY0JDebIumh4jO9w', '2021-08-28 12:29:07', '2021-08-28 12:29:07'),
(2081, 77, 'y4pYvtfxND2rRuqTfZ93ig0ddF4YexoN', '2021-08-28 12:29:24', '2021-08-28 12:29:24'),
(2082, 74, 'Onqpw2UEsxIsMswSHYVQqqgXopL16Ery', '2021-08-28 12:51:51', '2021-08-28 12:51:51'),
(2086, 81, 'WSzdmRZJfBxz0wmDB7YQeUR6MIRQeqYq', '2021-08-28 13:23:06', '2021-08-28 13:23:06'),
(2088, 57, 'ZLEFCWKsZBhU2RpRQd63MmnzE6A2PFz1', '2021-08-28 13:26:00', '2021-08-28 13:26:00'),
(2089, 70, 'CQIlAtdIbUD94u4fhFNgfrWaEXTBlzuL', '2021-08-28 13:33:28', '2021-08-28 13:33:28'),
(2090, 6, '4DGYKZbitGJjkg6KYMcNdHsmt2qAa8z0', '2021-08-28 13:49:01', '2021-08-28 13:49:01'),
(2091, 68, 'teLOGdxsLGgtO21fFhiBMAfuTuOKQCam', '2021-08-28 14:07:10', '2021-08-28 14:07:10'),
(2092, 69, 'boaFIUgZoyzEOaMm0TXhLI91SGYRKRYJ', '2021-08-28 14:11:12', '2021-08-28 14:11:12'),
(2094, 67, 'B9PWD68yWTsgdfiZjSrIRy3BJynIsPkv', '2021-08-28 15:02:42', '2021-08-28 15:02:42'),
(2096, 60, 'kSQbithYBrgjVvEhjrymhr0fG44ZBuAZ', '2021-08-28 15:35:04', '2021-08-28 15:35:04'),
(2097, 59, '0fAx4fJyJYEbtmOfPiy8p6KVQxyRJch7', '2021-08-28 15:36:33', '2021-08-28 15:36:33'),
(2098, 65, 'ADi1J6qXXmniAdxhgtrhCdek29GtTYvZ', '2021-08-28 16:20:50', '2021-08-28 16:20:50'),
(2099, 44, 'AliOSrHZJgldXafeNM4df6q3bb14yGlO', '2021-08-28 16:26:26', '2021-08-28 16:26:26'),
(2100, 63, 'x1xwayPnhuADW5mouY29BvLTqZKAZ7fe', '2021-08-28 16:47:29', '2021-08-28 16:47:29'),
(2103, 67, 'QNm2tuD5Cio3iUFUsednI9sGaj2b8lqT', '2021-08-28 18:46:19', '2021-08-28 18:46:19'),
(2108, 51, '2HfgMeWR07RdriPoWaanq0aKZrabYcya', '2021-08-28 20:22:07', '2021-08-28 20:22:07'),
(2109, 70, 'Ib7ko1mvRSD64HZfs6l5FfGLjl55evjj', '2021-08-28 20:24:06', '2021-08-28 20:24:06'),
(2110, 44, 'HtgTQWgR6QdwEM0NVryzjnDZpJedIa8k', '2021-08-28 20:24:36', '2021-08-28 20:24:36'),
(2111, 77, 'JvLX6JGAJZKmUxMMrV6NSseNVpCJGE3l', '2021-08-28 20:56:28', '2021-08-28 20:56:28'),
(2113, 53, 'PojM3lmj100gbPDIaayDfkEEgvS3GzjZ', '2021-08-28 21:18:07', '2021-08-28 21:18:07'),
(2114, 46, 'GTbQmIb0XPGqEfCkL4OhVuK3s0zvKUmv', '2021-08-28 21:19:37', '2021-08-28 21:19:37'),
(2115, 66, 'K3uwOPJBtgL0NHOJvTuLaXeUkakA3WTQ', '2021-08-28 21:34:55', '2021-08-28 21:34:55'),
(2116, 66, 'qj4yFc4j5upVeuZjzH1HuN3kN7KRYXjr', '2021-08-28 21:35:08', '2021-08-28 21:35:08'),
(2120, 62, '1Wxg30tUNvnfG6vGOCfHQxtwqfol1lDn', '2021-08-28 22:00:54', '2021-08-28 22:00:54'),
(2121, 6, '9YD8Ucub6BI7Gj5mIBlQ4HC09GWnGMmr', '2021-08-28 22:13:11', '2021-08-28 22:13:11'),
(2122, 74, 'vs4sOYoMaEU72ieCsYdNOEfZ6Z1A2UAK', '2021-08-28 22:40:10', '2021-08-28 22:40:10'),
(2123, 44, 'O0h327nzzcRiuiibVGIeEnV5Z5tWBrOM', '2021-08-28 23:13:55', '2021-08-28 23:13:55'),
(2124, 59, 'Infj2xjxbFE2FO0mqLnFMADfAtC44OAx', '2021-08-28 23:39:12', '2021-08-28 23:39:12'),
(2125, 53, '0i2K4JjwEuuask4ghzUUYxWoweduCd9o', '2021-08-28 23:57:30', '2021-08-28 23:57:30'),
(2129, 73, 'gniyZs7XYbS43ExEUo1IU4IDalR66X6z', '2021-08-29 01:03:01', '2021-08-29 01:03:01'),
(2131, 69, 'YKUXPLH9Z6vVNYXw3n6xnfocmvpeReFh', '2021-08-29 01:26:48', '2021-08-29 01:26:48'),
(2133, 53, 'zZm2Zsw62UbvHw3ERfT6a2WX8MPjmZFt', '2021-08-29 02:31:33', '2021-08-29 02:31:33'),
(2134, 69, 's3ue9K1nMlNI2dLmGY0ZchBHo67tngRD', '2021-08-29 03:22:30', '2021-08-29 03:22:30'),
(2135, 69, 'EuodS93mbKOeXUaCtN7ST0D0yqGXDsyn', '2021-08-29 03:22:35', '2021-08-29 03:22:35'),
(2136, 63, '2Sxn5ox7Gk38H8puuBxcOS0CVvh9swnC', '2021-08-29 08:31:19', '2021-08-29 08:31:19'),
(2137, 66, 'AghDtTd9wW9ORAvqoTw2pp9ow5VIhgia', '2021-08-29 10:32:21', '2021-08-29 10:32:21'),
(2141, 49, 'Tlx2pu7rhsBWV50Vqa39b1mvWOVHHiPl', '2021-08-29 11:00:17', '2021-08-29 11:00:17'),
(2142, 47, 'qLAbi2n6q5Ave4Lwr5Yzq9lqh922FNJ9', '2021-08-29 11:17:11', '2021-08-29 11:17:11'),
(2143, 69, 'af3NW5IOVCR1ICi7n6nfRAyoxb0lwB1a', '2021-08-29 11:22:09', '2021-08-29 11:22:09'),
(2144, 79, 'HlEJ4AX46doG6E0hFOXvEWKipHnExl7m', '2021-08-29 11:22:54', '2021-08-29 11:22:54'),
(2145, 74, 'tnXd2ojw6IhPWwOHk8zu4LUT1gFWfz9B', '2021-08-29 11:33:15', '2021-08-29 11:33:15'),
(2146, 77, 'RX2XJOrYJJLniLUvIIlMHAZT5foO44pw', '2021-08-29 12:02:48', '2021-08-29 12:02:48'),
(2147, 59, 'tiAIypzwuztzdFnAt0Pny6A71RXWVGik', '2021-08-29 12:24:36', '2021-08-29 12:24:36'),
(2149, 44, 'dSNfvUrSlCAaTTD7gknVwwJtgis7WYHv', '2021-08-29 12:58:45', '2021-08-29 12:58:45'),
(2150, 60, 'XJ2H2k3wH9Fvg6twKLZG6h2VSWSzShAB', '2021-08-29 13:25:24', '2021-08-29 13:25:24'),
(2151, 62, 'K7uNpRzNBfsbzpeovRwEHMYnUbbWnDoS', '2021-08-29 13:34:03', '2021-08-29 13:34:03'),
(2152, 81, 'IwlvfNIlnCkbOnOchTH7Sug8QwehXUlh', '2021-08-29 13:48:34', '2021-08-29 13:48:34'),
(2153, 57, 'fA9YaHyzZFIU3lZ4nK8V1eZqOeFIo8ZL', '2021-08-29 13:48:59', '2021-08-29 13:48:59'),
(2154, 79, 'ckoWfKAQv4m9KaAzU7dupdhS3rqVQwin', '2021-08-29 14:08:00', '2021-08-29 14:08:00'),
(2155, 70, 'z5W4jaQUzvJYiiOTtVtHqq3TB4GTgQ6P', '2021-08-29 14:11:05', '2021-08-29 14:11:05'),
(2156, 87, 'VHlmakKtyya20AUoxh6j2oRmso5uZbuh', '2021-08-29 14:16:34', '2021-08-29 14:16:34'),
(2157, 66, 'MGSe71XbCidAvt6zPj4zAGhrYtc4yDdM', '2021-08-29 14:28:00', '2021-08-29 14:28:00'),
(2159, 87, '5R0RlSQefrp9c6MNpsanbiRxy2Y8DQoT', '2021-08-29 14:38:39', '2021-08-29 14:38:39'),
(2160, 65, 'wQWmxaiMlHhNVgMZ19R9MEbvqLBzkcBf', '2021-08-29 14:58:35', '2021-08-29 14:58:35'),
(2168, 63, '9dR6XkSMaxd5aNktymBOCXQJLf3RDETx', '2021-08-29 15:13:47', '2021-08-29 15:13:47'),
(2170, 87, 'm7BH1HSyYvsJnhjVLabtK7ISTZsX2NOK', '2021-08-29 15:43:51', '2021-08-29 15:43:51'),
(2174, 79, 'rrzKN80IvsoLQtU0SABbMKBxzHywLN83', '2021-08-29 17:00:01', '2021-08-29 17:00:01'),
(2175, 44, 'AsKgMAWNvA2214woiEkAO3gRBKd8r7hD', '2021-08-29 17:32:45', '2021-08-29 17:32:45'),
(2180, 53, 'RGB1fqnTCE3RumcVDE5J4lHJF0dRi9xS', '2021-08-29 19:22:48', '2021-08-29 19:22:48'),
(2181, 79, 'z8FrfQAY11AAlJIO1lXg8MpAtMB9cTvw', '2021-08-29 19:39:16', '2021-08-29 19:39:16'),
(2182, 44, '8U1TSolxH8zGPp2nPWdd8tKvLia0uaUS', '2021-08-29 19:56:33', '2021-08-29 19:56:33'),
(2183, 86, '63GLLEu3jsZi58WePlYRxZcNB121pn1c', '2021-08-29 20:00:14', '2021-08-29 20:00:14'),
(2185, 67, 'G7q5CRp0onsAHhwhO94AfvTtNxqh4lMp', '2021-08-29 20:08:41', '2021-08-29 20:08:41'),
(2186, 66, 'spPW89qBbRZPmvWJQvlD53xi8klXtH7W', '2021-08-29 20:36:51', '2021-08-29 20:36:51'),
(2189, 6, '9vL4QVE2KaP6vPakUCKFnm157qQLTmvG', '2021-08-29 20:48:45', '2021-08-29 20:48:45'),
(2191, 67, 'Qv9YFiSq4Ko1YSIHUK7QnaL8bIRroO68', '2021-08-29 20:56:40', '2021-08-29 20:56:40'),
(2193, 6, 'Ib54voxjQfQstqeIrosVrf8aVbDcx9fQ', '2021-08-29 21:16:13', '2021-08-29 21:16:13'),
(2198, 74, 'OmjG1CcuwaqrbDobwA4tgwavx1NEW5VY', '2021-08-29 22:23:50', '2021-08-29 22:23:50'),
(2199, 69, 'ePVbHCCJDPNKSrjekl3QkRw8dDaAegJU', '2021-08-29 23:01:44', '2021-08-29 23:01:44'),
(2204, 63, 'EvF4r2MJD2WrO1G7rSP3gkr2O6OTtmsR', '2021-08-29 23:40:18', '2021-08-29 23:40:18'),
(2208, 51, 'cIQ5TuDqdBaubbeJcUo0aBrDDnl8ND6t', '2021-08-29 23:50:25', '2021-08-29 23:50:25'),
(2210, 53, 'Y5bzUy4WnsXWEdfuut4tvvGQ8k4C66P7', '2021-08-29 23:52:29', '2021-08-29 23:52:29'),
(2214, 77, '4Zn307K1EQ28OroLQxRXwXhHGWFMU0r7', '2021-08-30 00:12:19', '2021-08-30 00:12:19'),
(2215, 79, 'yquKUmivfNJF5PiGBMaBLrf3lEiwqgdU', '2021-08-30 00:47:01', '2021-08-30 00:47:01'),
(2221, 44, 'wUZeQP3fltoLtFyYXZ5qheL8bKVBrFCV', '2021-08-30 01:50:59', '2021-08-30 01:50:59'),
(2222, 73, '5Qd1AFhGM1iSHmkr62RKwQzDQ82lsPQo', '2021-08-30 01:52:59', '2021-08-30 01:52:59'),
(2224, 61, 'kvD6aCe1qEaHFRV656rcP3hIIa5XS98s', '2021-08-30 02:03:09', '2021-08-30 02:03:09'),
(2225, 51, 'WXIo5yEfI22YBciYG9h3qYPAqo9GAVQc', '2021-08-30 11:08:02', '2021-08-30 11:08:02'),
(2227, 44, 'DTURbsL1LZ70gXzCgUGj9hxWWi9DIQgh', '2021-08-30 11:31:08', '2021-08-30 11:31:08'),
(2229, 69, 'KR0yQyl15MrQc5MWOvSRPA341YsX3YPF', '2021-08-30 11:47:55', '2021-08-30 11:47:55'),
(2230, 62, 'NejwOLF7wM0Ywhv9xtRI4Mc5QpWM8z8a', '2021-08-30 12:14:08', '2021-08-30 12:14:08'),
(2231, 47, 'svw9zIHSj2UVFpFnHbjtzBFwS4ZdLVUU', '2021-08-30 12:28:47', '2021-08-30 12:28:47'),
(2233, 67, 'uyGpyzaGZcUJ4aWMsvFNkOknqBPVVhjL', '2021-08-30 12:54:40', '2021-08-30 12:54:40'),
(2234, 74, 'XHbyZlqcX67uWJm7PrBNQFx1ufwnHdHw', '2021-08-30 12:56:36', '2021-08-30 12:56:36'),
(2235, 53, 'Mknt0Ifgtd92TxCsKP304YOoVQYWmu4o', '2021-08-30 13:03:50', '2021-08-30 13:03:50'),
(2236, 79, 'C4aGHT4rRzOaZRheSavQYwNr67DKmBIA', '2021-08-30 13:05:08', '2021-08-30 13:05:08'),
(2237, 59, 'VyDmxARFs61OPD7JIg4aKfY9i73m9kxd', '2021-08-30 13:50:19', '2021-08-30 13:50:19'),
(2238, 81, 'Y2FNigIbL5bTAyeg0bMjNfvzCMTRzuRs', '2021-08-30 13:53:14', '2021-08-30 13:53:14'),
(2240, 61, 'JbuwxutZy9dN1DnKsun20qqchlcdRez0', '2021-08-30 14:33:14', '2021-08-30 14:33:14'),
(2243, 64, 'YliZsq6dHCHy6Gb5bGlTx3W1foy6Aknf', '2021-08-30 15:09:29', '2021-08-30 15:09:29'),
(2245, 67, 'CsQKy2S2VlCRaRZoGLGTyYaIaIT8qh7A', '2021-08-30 15:58:49', '2021-08-30 15:58:49'),
(2246, 6, 'hyMDrxK41dQFz7rbFCR5MMs0acXMlFIQ', '2021-08-30 16:32:56', '2021-08-30 16:32:56'),
(2247, 44, 'lQmBV2MEj2jpIpPnI87sFsgs2yiVHk7q', '2021-08-30 16:37:02', '2021-08-30 16:37:02'),
(2248, 6, 'W0CK3yC0UqElyXBS3Knkr5WHtWbdWoYU', '2021-08-30 16:58:25', '2021-08-30 16:58:25'),
(2249, 74, 'jkrZbNE2840VfXgme9MnDJr3gvorq7uA', '2021-08-30 17:10:48', '2021-08-30 17:10:48'),
(2250, 63, 'txc3D07GkE82TFyFsV4KEBKUbiINnm44', '2021-08-30 17:12:54', '2021-08-30 17:12:54'),
(2251, 57, '8AvegcmyV6zXy7LikqXtGMH1kjkD5BpN', '2021-08-30 17:18:47', '2021-08-30 17:18:47'),
(2252, 79, '5K6KrGWVhFn5ABYzTxjuR0Y5EeZLmOR9', '2021-08-30 17:27:14', '2021-08-30 17:27:14'),
(2254, 49, 'fsNwQUES3ePtlLY8lZ4jCYSAVbbq7TR7', '2021-08-30 18:51:20', '2021-08-30 18:51:20'),
(2255, 67, '7s50SjVjgbdg6yIUA6DNiMyxy5WhIezL', '2021-08-30 19:54:34', '2021-08-30 19:54:34'),
(2256, 77, 'RAeaNh4dFIXPBNQleFYrCjDzWXn6ewUg', '2021-08-30 20:04:36', '2021-08-30 20:04:36'),
(2257, 67, 'T1eMGnFAqW4z0bpcWjmibm6LasEMhi9t', '2021-08-30 20:06:22', '2021-08-30 20:06:22'),
(2258, 53, '9K0mtkirQzdrVJyIpGas3aGqazqHQ8hL', '2021-08-30 20:35:02', '2021-08-30 20:35:02'),
(2259, 61, 'aPQyQyFUXdAj2XJWQwngO2h4OAhwrbOM', '2021-08-30 20:41:45', '2021-08-30 20:41:45'),
(2260, 6, 'nYY5eQtFvCDSoCp3p4tIspQv6OuIsT02', '2021-08-30 21:31:19', '2021-08-30 21:31:19'),
(2267, 6, 'oPTSWbzijpbazET7auUMXMM8Ud4HHTEV', '2021-09-01 09:45:46', '2021-09-01 09:45:46'),
(2268, 6, 'QxkHKlqKsz6KdA5XTGkqVCQWoGYFRmvT', '2021-09-01 13:47:40', '2021-09-01 13:47:40'),
(2269, 6, 'OH4RiqcPM7sN17HhdqNi00vjZEu2JkTc', '2021-09-02 06:57:53', '2021-09-02 06:57:53'),
(2270, 6, 'CX4jN0kgtVnwwkA1gz6jl2kYqwIOZB0Y', '2021-09-02 04:38:32', '2021-09-02 04:38:32'),
(2271, 6, 'JjStwAPxwG1T1BJrNjqq6bslUvxnj96k', '2021-09-02 04:39:23', '2021-09-02 04:39:23'),
(2272, 6, 'aigFY2h13IXTfFTWvP3QOGDJ6mkvIfH4', '2021-09-02 10:41:14', '2021-09-02 10:41:14'),
(2273, 6, '2JY6aIG0wmm7zrSGMKuhpw0AoXmlhKlu', '2021-09-02 10:41:28', '2021-09-02 10:41:28'),
(2274, 6, 'qeFdAtfypnPz9qXxtMiUcvwjnbJ3756c', '2021-09-04 05:40:37', '2021-09-04 05:40:37'),
(2275, 6, 'mtFsincd8sAwQzGRi8lHNfMYACUYPaO4', '2021-09-04 11:37:38', '2021-09-04 11:37:38'),
(2276, 6, 'HoVWGvkcfRiGu2WTlTFXIaZoBmFdkdkW', '2021-09-05 01:32:08', '2021-09-05 01:32:08'),
(2277, 6, 'g94tYy4M7bCZjjr3IZRqhHIbsfLgnhZx', '2021-09-05 17:43:57', '2021-09-05 17:43:57'),
(2278, 6, '2ENxpMFfstAPOCkiSNM8L1v0ok9G4Ses', '2021-09-05 21:26:37', '2021-09-05 21:26:37'),
(2279, 6, 'GZxwDo1qpGjzfE71Pse0O5Jxo0zPkp6j', '2021-09-07 18:16:31', '2021-09-07 18:16:31'),
(2280, 6, 'KoGnNkItkeEKyGosuCGqE8E8EW1uECvA', '2021-09-08 00:21:01', '2021-09-08 00:21:01'),
(2281, 6, '79AbXOF5XljunzJorvt1kAx1t7j0A95t', '2021-09-08 18:07:02', '2021-09-08 18:07:02'),
(2282, 6, 'v3cxwDgM3BFyWHb0shKk9ICnXOYv3P6S', '2021-09-08 23:01:41', '2021-09-08 23:01:41'),
(2283, 6, 'AjEE14jcZqSAb0nBROIZGeeQN5QSuBRl', '2021-09-09 17:56:33', '2021-09-09 17:56:33'),
(2284, 6, 'oJEABYwNp4njhFH1TRhe81fJ9VcnsSLG', '2021-09-09 22:26:30', '2021-09-09 22:26:30'),
(2285, 6, 'vJAszltuQ2XPClrscoVV8M3VkHd4js2x', '2021-09-11 18:00:37', '2021-09-11 18:00:37'),
(2286, 6, '98AU5apcAe2g2ad22ikOEzFURPPfBl7I', '2021-09-13 18:03:36', '2021-09-13 18:03:36'),
(2287, 6, 'CUYzlJYQTqHmmk6QRXXy7zWSsddgOZce', '2021-09-13 22:06:48', '2021-09-13 22:06:48'),
(2288, 6, 'ktXjV6snEjlINK0Nq0qYKSAtVhkWlVcV', '2021-09-14 17:59:30', '2021-09-14 17:59:30'),
(2289, 6, 'gzojJZzHSXWoAWGn6hEOsv95ypimkPkb', '2021-09-14 11:06:23', '2021-09-14 11:06:23'),
(2290, 6, 'HxDJ6OdRqUMedmQRIbnylqlHupD8Dm1m', '2021-09-15 05:30:01', '2021-09-15 05:30:01'),
(2291, 6, 'R2Sr0yu7FxUv9z2i2BOAl15FjY9Ie7gD', '2021-09-16 05:12:19', '2021-09-16 05:12:19'),
(2292, 6, '28w0QvEJuJJhX2c2VZqHJcLoYaGV8xMU', '2021-09-16 09:53:49', '2021-09-16 09:53:49'),
(2293, 6, '2YxiQ1ZAOOllBykplQtPRwVjxsUMcWUm', '2021-09-18 05:11:47', '2021-09-18 05:11:47'),
(2295, 6, '1FQkB8uuVN4J1Bn266Wbe9gsTU0zA26R', '2021-09-18 11:42:34', '2021-09-18 11:42:34'),
(2296, 6, 'uat2PVn3NY6h3dfb8KjSv8nitmojRz0a', '2021-09-20 05:38:43', '2021-09-20 05:38:43'),
(2297, 6, '8kRiAbbcvyqtSlPmox316tljm2msqLgK', '2021-09-20 05:39:09', '2021-09-20 05:39:09'),
(2298, 6, 'yKua5R0hXTSBAK2VTYLYwTiwNB9hLJ0b', '2021-09-20 05:54:59', '2021-09-20 05:54:59'),
(2299, 6, 'yRb4d1dBc5GKgXS8nbo16e96h4l2O8Jf', '2021-09-21 05:27:52', '2021-09-21 05:27:52'),
(2300, 6, 'ugmgzULGw1kLH2EG1wTUJ18BgS4gLDJN', '2021-09-22 06:08:13', '2021-09-22 06:08:13'),
(2301, 6, 'TCxOwB7aNkvL6DaivGcacl8fX1N8CorT', '2021-09-25 09:47:13', '2021-09-25 09:47:13'),
(2302, 6, 'ZcxseEhgLernn18WVUnpqbsmVaeUUHAK', '2021-09-26 10:59:43', '2021-09-26 10:59:43'),
(2303, 6, 'qiEucaC2s6DwWy9CFQ8Or6h9buVfcVeb', '2021-09-30 09:01:14', '2021-09-30 09:01:14'),
(2304, 6, 'cJBZmyPA6EhnszrLYvRGIfuTXCYSsgsr', '2021-09-30 13:30:41', '2021-09-30 13:30:41'),
(2305, 6, 'qNHOYqoR1M8IDrcT1mOR6UKJt6iNQsuK', '2021-10-02 05:45:30', '2021-10-02 05:45:30'),
(2315, 6, 'RScDJUVSP44KKfHb0ytzVwcd5nbyjGZr', '2021-10-03 13:05:05', '2021-10-03 13:05:05'),
(2316, 6, 'k56JXdjjnJqhh2DZPAQ9xxwCh3ORlmLc', '2021-10-04 05:52:47', '2021-10-04 05:52:47'),
(2317, 6, 'PZGC6vmH2xDukPO8QqaRathMrBzf9NnS', '2021-10-05 05:41:53', '2021-10-05 05:41:53'),
(2318, 6, 'DHvbtm1V76XFLWHofk0rqcUx3tuS80mn', '2021-10-05 04:00:10', '2021-10-05 04:00:10'),
(2323, 6, 'L9HkJV98SAreVp5hD70naxRZBPZuhySD', '2021-10-05 06:10:54', '2021-10-05 06:10:54'),
(2324, 6, 'lrdbkMdtJczaEBOuOa5O380OZdhzSX1K', '2021-10-06 01:46:37', '2021-10-06 01:46:37'),
(2328, 6, 'MJSptZ7yE5juy8u1Ch6lrOoVtrr30zY6', '2021-10-11 06:30:37', '2021-10-11 06:30:37'),
(2332, 6, 'CN8xyS5q9fTfnObJXghiMMMZvLivFtGY', '2021-10-12 05:23:49', '2021-10-12 05:23:49'),
(2333, 6, 'aFxC3xd5WFhhoiI014vgOD4Pd7msU1c1', '2021-10-13 01:05:39', '2021-10-13 01:05:39'),
(2334, 1, '6jsLskVjhabIP8evibejLPqXpJnKPkxP', '2021-10-13 01:15:59', '2021-10-13 01:15:59'),
(2335, 1, 'yLYrUcmeUTfH7AHM9RD7lzedANg6oypE', '2021-10-18 02:33:15', '2021-10-18 02:33:15'),
(2336, 1, 'x9VbXyUmNiaI6CK4Mea7OVNfXykZhOE2', '2021-10-18 11:26:24', '2021-10-18 11:26:24'),
(2338, 1, '5bRglLhRtAfLpVik5dkUAUOkg88CrtAt', '2021-10-20 00:38:37', '2021-10-20 00:38:37'),
(2339, 1, 'N3khxxmyOBzlW4pCl0GNTxdIT33oceQt', '2021-10-20 09:30:19', '2021-10-20 09:30:19'),
(2340, 1, 'GRctFUzgvj4FFUunku4UPr6YU2TCd5oy', '2021-10-22 09:31:32', '2021-10-22 09:31:32'),
(2341, 1, 'jqtXB8rfdsiKus4jhCfopycfaf4Npdkq', '2021-10-22 11:26:10', '2021-10-22 11:26:10'),
(2342, 1, 'BFubk5LMT5dybL1mxw8wjUN2MVTPaFeX', '2021-10-23 12:31:17', '2021-10-23 12:31:17'),
(2343, 1, '0zRymwUQx5hrunjuY5Stn4Vj7J30158B', '2021-11-19 08:28:00', '2021-11-19 08:28:00'),
(2344, 1, 'bko58hPXHp9UDiDBayvGJ1IsVcVNDIIO', '2021-11-19 08:32:34', '2021-11-19 08:32:34'),
(2345, 1, 'rTuttMaSLQO44hWpcdKGsyaGBXtcLl2A', '2021-11-19 11:58:31', '2021-11-19 11:58:31'),
(2346, 1, 'kOzG5eKbjcsgtJE4v2DUKyvzweCLgGRL', '2021-11-20 12:46:21', '2021-11-20 12:46:21'),
(2347, 1, 'E1CFTgab4FZKTpPjmctI3y49b9bw8rCR', '2021-11-21 11:59:22', '2021-11-21 11:59:22'),
(2348, 1, 'SWnhCpGctiPIaV42AdTsSCwh1gtCxeX6', '2021-11-22 11:55:46', '2021-11-22 11:55:46'),
(2349, 1, 'rRJPzNh1W7VvDi8HeeeR5xFYg5uwRShf', '2021-11-23 10:46:44', '2021-11-23 10:46:44'),
(2350, 1, 'ImxsB5Pyv7IKsRRCmYVYNg68mnckekul', '2021-11-24 10:37:58', '2021-11-24 10:37:58'),
(2351, 1, 'vlCgiA8lqnC8iMMIrDLOJhqZgBTucenQ', '2021-11-27 11:54:48', '2021-11-27 11:54:48'),
(2352, 1, 'lnKADfaiMrAmvutwrHwyh6DwIETWaeHO', '2021-11-29 11:18:48', '2021-11-29 11:18:48'),
(2353, 1, 'wCaXZRcyYePgtQAohqozaXz9ZaJWr011', '2021-12-01 11:10:30', '2021-12-01 11:10:30'),
(2354, 1, 'YJCQ2qeITqEdOCcwCDZwBmiqBgcpghS5', '2021-12-04 22:03:01', '2021-12-04 22:03:01');

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
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `redirect_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_at`, `updated_at`, `redirect_url`) VALUES
(1, 'admin', 'Administrator', '{\"author.users\":true,\"author.user_edit\":true,\"author.user_delete\":true,\"author.permission\":true,\"author.permission_register\":true,\"author.ajax.permission_check\":true,\"author.roles\":true,\"base_setting\":true,\"author.logs\":true,\"author.category\":true,\"author.category.store\":true,\"category.delete\":true,\"author.category.create\":true,\"author.logs_show\":true,\"base_setting.store\":true,\"author.role_create\":true,\"author.permission_edit\":true,\"author.assign_permission\":true,\"author.change_password\":true,\"author.user_store\":true,\"author.user_profile\":true,\"author.user_create\":true,\"author.user_update\":true,\"author.change_password_store\":true,\"author.user_permission\":true,\"author.ajax.permission_remove\":true,\"author.role_store\":true,\"base_setting.logo\":true,\"author.category.edit\":true}', '2021-01-15 05:01:15', '2021-10-13 01:42:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-01-15 12:37:06', '2021-01-15 12:37:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_module_sections`
--

CREATE TABLE `tbl_module_sections` (
  `section_id` int(11) NOT NULL,
  `section_name` varchar(255) NOT NULL,
  `section_module_name` varchar(255) DEFAULT NULL,
  `section_action_route` text DEFAULT NULL,
  `section_roles_permission` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_module_sections`
--

INSERT INTO `tbl_module_sections` (`section_id`, `section_name`, `section_module_name`, `section_action_route`, `section_roles_permission`, `created_at`, `updated_at`) VALUES
(1, 'Users', 'system', '{\"author.users\":[\"1\"],\"author.user_profile\":[\"1\"],\"author.user_create\":[\"1\"],\"author.user_edit\":[\"1\"],\"author.user_store\":[\"1\"],\"author.user_update\":[\"1\"],\"author.user_delete\":[\"1\"],\"author.change_password\":[\"1\"],\"author.change_password_store\":[\"1\"]}', '[\"1\"]', '2021-10-13 07:28:15', '2021-10-13 07:28:15'),
(2, 'Permissions', 'system', '{\"author.permission\":[\"1\"],\"author.assign_permission\":[\"1\"],\"author.user_permission\":[\"1\"],\"author.permission_register\":[\"1\"],\"author.permission_edit\":[\"1\"],\"author.ajax.permission_remove\":[\"1\"],\"author.ajax.permission_check\":[\"1\"]}', '[\"1\"]', '2021-10-13 07:30:32', '2021-10-13 07:30:32'),
(3, 'User Roles', 'system', '{\"author.roles\":[\"1\"],\"author.role_create\":[\"1\"],\"author.role_store\":[\"1\"]}', '[\"1\"]', '2021-10-13 07:35:03', '2021-10-13 07:35:03'),
(4, 'Settings', 'system', '{\"base_setting\":[\"1\"],\"base_setting.store\":[\"1\"],\"base_setting.logo\":[\"1\"],\"author.logs\":[\"1\"],\"author.logs_show\":[\"1\"]}', '[\"1\"]', '2021-10-13 07:39:15', '2021-10-13 07:39:15'),
(5, 'Category', 'system', '{\"author.category\":[\"1\"],\"author.category.create\":[\"1\"],\"author.category.edit\":[\"1\"],\"author.category.store\":[\"1\"],\"category.delete\":[\"1\"]}', '[\"1\"]', '2021-10-13 07:40:26', '2021-10-13 07:40:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(100) NOT NULL,
  `s_value` varchar(250) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`s_id`, `s_name`, `s_value`, `updated_at`) VALUES
(1, 'appName', 'BPC', '2021-04-10 11:16:55'),
(2, 'appTitle', 'Bangladesh Parjatan Corporation', '2021-04-10 09:26:04'),
(3, 'url', 'https://hotels.gov.bd', '2021-04-10 10:45:08'),
(4, 'email', 'admin@hotels.gov.bd', '2021-04-10 10:45:08'),
(5, 'appAddress', 'E-5 C/1, West Agargaon, Sher-e-Bangla Nagar Administrative Area, Dhaka - 1207', '2021-04-10 10:45:08'),
(8, 'contact', '+880-2-44826527', '2021-04-10 10:45:08'),
(9, 'logo', '/images/base_setting/logo.png', '2021-04-15 06:58:12'),
(10, 'c_symbol', 'BDT', '2021-10-05 06:07:37'),
(11, 'c_order', 'left', '2021-04-10 07:28:05'),
(12, 'date_format', 'd-m-Y', '2021-11-23 12:35:21'),
(16, 'usd_rate', '85', '2021-04-10 07:28:05');

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `permissions`, `last_login`, `full_name`, `phone`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin@mail.com', '$2y$10$n9xS8/8yiEHEVzs2fPyhWuCjxgHF3CjPTF59bUhZBTUV2Cc/Q3Hx6', NULL, '2021-12-04 22:03:01', 'BPC', NULL, 1, '2021-01-15 12:37:06', '2021-12-04 22:03:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_brands`
--
ALTER TABLE `inv_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_categories`
--
ALTER TABLE `inv_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_origins`
--
ALTER TABLE `inv_origins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_packs`
--
ALTER TABLE `inv_packs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_products`
--
ALTER TABLE `inv_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_product_pr`
--
ALTER TABLE `inv_product_pr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_product_warehouse`
--
ALTER TABLE `inv_product_warehouse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_suppliers`
--
ALTER TABLE `inv_suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_units`
--
ALTER TABLE `inv_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_warehouses`
--
ALTER TABLE `inv_warehouses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_warehouse_pr`
--
ALTER TABLE `inv_warehouse_pr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_name`
--
ALTER TABLE `module_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `persistences`
--
ALTER TABLE `persistences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `persistences_code_unique` (`code`);

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
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_module_sections`
--
ALTER TABLE `tbl_module_sections`
  ADD PRIMARY KEY (`section_id`),
  ADD UNIQUE KEY `section_name` (`section_name`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `s_name` (`s_name`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_index` (`user_id`);

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
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_brands`
--
ALTER TABLE `inv_brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_categories`
--
ALTER TABLE `inv_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inv_origins`
--
ALTER TABLE `inv_origins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_packs`
--
ALTER TABLE `inv_packs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_products`
--
ALTER TABLE `inv_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inv_product_pr`
--
ALTER TABLE `inv_product_pr`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_product_warehouse`
--
ALTER TABLE `inv_product_warehouse`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_suppliers`
--
ALTER TABLE `inv_suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_units`
--
ALTER TABLE `inv_units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_warehouses`
--
ALTER TABLE `inv_warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inv_warehouse_pr`
--
ALTER TABLE `inv_warehouse_pr`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `module_name`
--
ALTER TABLE `module_name`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `persistences`
--
ALTER TABLE `persistences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2355;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_module_sections`
--
ALTER TABLE `tbl_module_sections`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
