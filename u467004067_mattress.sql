-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 24, 2022 at 10:55 AM
-- Server version: 10.5.12-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u467004067_mattress`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `country_id`, `city_id`, `name`, `address`, `lat`, `lng`, `mobile`, `created_at`, `updated_at`) VALUES
(2, 2, 3, 3, 'j', '88', '37.42199797761712', '-122.08400001749396', 'j', '2022-03-02 08:18:55', '2022-03-02 08:18:55'),
(3, 2, 3, 3, 'hhhh', 'h', '37.42199797761712', '-122.08400001749396', 'hh', '2022-03-02 08:21:04', '2022-03-02 08:21:04'),
(4, 2, 3, 3, 'kkkk', 'hh', '37.42199797761712', '-122.08400001749396', 'hh', '2022-03-02 08:27:11', '2022-03-02 08:27:11'),
(5, 2, 3, 3, 'jj', 'jj', '37.42199797761712', '-122.08400001749396', 'jj', '2022-03-02 08:28:59', '2022-03-02 08:28:59'),
(9, 7, 3, 3, 'Dd', 'Www', '31.51707119494244', '34.4785132817924', '88', '2022-03-05 18:03:27', '2022-03-05 18:03:27'),
(10, 7, 2, 2, 'Gh', 'Ggg', '31.517308137425523', '34.478711765259504', '5800', '2022-03-05 18:22:10', '2022-03-05 18:22:10'),
(11, 7, 2, 2, 'Test', 'Gug', '31.51725497547315', '34.47872517630458', '12365', '2022-03-05 18:33:48', '2022-03-05 18:33:48'),
(12, 7, 3, 3, 'Hhf', 'Vhf', '31.51731499703008', '34.47872584685683', '898', '2022-03-05 18:34:42', '2022-03-05 18:34:42'),
(13, 7, 2, 2, 'Hgg', '134', '31.51731499703008', '34.478711765259504', '126', '2022-03-05 18:48:47', '2022-03-05 18:48:47'),
(14, 7, 3, 3, '46e', 'Fhf', '31.517034467445207', '34.47871880605817', '68', '2022-03-05 18:49:31', '2022-03-05 18:49:31'),
(15, 7, 2, 2, 'Wrs', 'Chc', '31.517039183366684', '34.47872517630458', '767', '2022-03-05 18:50:00', '2022-03-05 18:50:00'),
(16, 3, 2, 2, 'فهله', 'تاات', '37.78824982864545', '-121.7832400649786', '9999999999', '2022-03-10 13:21:00', '2022-03-10 13:21:00'),
(17, 1, 1, 1, 'عنواني', 'زوةرزظو', '31.5146252', '34.4489717', '00000', '2022-03-16 12:22:30', '2022-03-16 12:22:30'),
(30, 4, 1, 1, 'Aya Habeeb', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '32', '35.25', '0597982450', '2022-03-17 18:06:20', '2022-03-17 18:06:20'),
(31, 1, 5, 5, 'Add', 'Aaa', '31.514616704770788', '34.44892616942525', '111', '2022-03-21 12:51:46', '2022-03-21 12:51:46'),
(32, 1, 5, 5, 'عنوان', 'غزة شارع الشهداء', '31.514615847295484', '34.44895667955279', '111', '2022-03-21 12:52:42', '2022-03-21 12:52:42');

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `popup` tinyint(1) NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `name`, `name_ar`, `image`, `popup`, `active`, `created_at`, `updated_at`) VALUES
(1, 'اعلان 1', 'اعلان', 'storage/media/19a019d96bdce1fbe2e8ed93b10a6215.png', 1, 1, '2022-02-27 11:09:23', '2022-02-27 11:09:23'),
(2, 'اعلان3', 'اعلان', 'storage/media/2bf86db03bdab69e64ff54748142a12c.png', 1, 1, '2022-02-27 11:09:54', '2022-02-27 11:09:54');

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ref_id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `product_id`, `name`, `name_ar`, `description`, `description_ar`, `active`, `created_at`, `updated_at`) VALUES
(6, '1', 'attribute', 'attribute', 'description', 'description', 1, '2022-03-21 11:37:09', '2022-03-21 11:37:09'),
(7, '2', 'attribute', 'attribute', 'description', 'description', 1, '2022-03-21 11:37:23', '2022-03-21 11:37:23'),
(9, '3', 'attribute', 'attribute', 'description', 'description', 1, '2022-03-21 11:49:37', '2022-03-21 11:49:37'),
(10, '4', 'attribute', 'attribute', 'description', 'description', 1, '2022-03-21 11:50:31', '2022-03-21 11:50:31'),
(11, '5', 'attribute', 'attribute', 'description', 'description', 1, '2022-03-21 11:51:09', '2022-03-21 11:51:09'),
(12, '6', 'attribute', 'attribute', 'description', 'description', 1, '2022-03-21 11:52:02', '2022-03-21 11:52:02'),
(13, '7', 'attribute', 'attribute', 'description', 'description', 1, '2022-03-21 11:52:38', '2022-03-21 11:52:38'),
(14, '8', 'attribute', 'attribute', 'description', 'description', 1, '2022-03-21 11:53:16', '2022-03-21 11:53:16'),
(15, '9', 'attribute', 'attribute', 'description', 'description', 1, '2022-03-21 11:53:50', '2022-03-21 11:53:50'),
(20, '11', 'attribute', 'attribute', 'description', 'description', 1, '2022-03-21 12:19:58', '2022-03-21 12:19:58'),
(21, '11', 'attribute2', 'attribute2', 'description2', 'description2', 1, '2022-03-21 12:19:58', '2022-03-21 12:19:58'),
(24, '10', 'attribute', 'attribute', 'description', 'description', 1, '2022-03-21 12:21:47', '2022-03-21 12:21:47'),
(25, '10', 'attribute2', 'attribute2', 'description2', 'description2', 1, '2022-03-21 12:21:47', '2022-03-21 12:21:47');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `name_ar`, `image`, `active`, `created_at`, `updated_at`) VALUES
(4, 'serta', 'سيرتا', 'storage/media/12eb2c3cc2e2746c4c8ed408d60c68a6.jpg', 1, '2022-03-21 11:31:42', '2022-03-22 09:24:25'),
(5, 'sleep fine', 'سليب فاين', 'storage/media/a5dac1fbf506f071c969371a525fa91d.jpg', 1, '2022-03-21 11:32:13', '2022-03-21 11:32:13'),
(6, 'spring wall', 'سبرينج وول', 'storage/media/caa77993c38bbe0d099579d36ccdbb0c.jpg', 1, '2022-03-21 11:32:37', '2022-03-21 11:32:37');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `brand_id`, `name`, `name_ar`, `active`, `created_at`, `updated_at`) VALUES
(2, 5, 'ٌٌRoyal', 'الملكية', 1, '2022-03-21 11:39:32', '2022-03-21 11:44:53'),
(3, 5, 'Mid', 'المتوسطة', 1, '2022-03-21 11:45:10', '2022-03-21 11:45:10'),
(4, 5, 'economy', 'الاقتصادية', 1, '2022-03-21 11:45:26', '2022-03-21 11:45:57');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `name_ar`, `country_id`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Muscat', 'مسقط', 1, 1, '2022-02-27 11:07:32', '2022-02-27 11:07:32'),
(2, 'Riyadh', 'الرياض', 2, 1, '2022-02-27 11:08:05', '2022-02-27 11:08:05'),
(3, 'Dubai', 'دبي', 3, 1, '2022-02-27 11:08:27', '2022-02-27 11:08:27'),
(4, 'cairo', 'القاهرة', 5, 1, '2022-03-21 11:22:15', '2022-03-21 11:22:15'),
(5, 'alex', 'الاسكندرية', 5, 1, '2022-03-21 11:22:42', '2022-03-21 11:22:42');

-- --------------------------------------------------------

--
-- Table structure for table `coins`
--

CREATE TABLE `coins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coins`
--

INSERT INTO `coins` (`id`, `name`, `price`, `time`, `created_at`, `updated_at`) VALUES
(1, 'AED', 3.673301, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(2, 'AFN', 91.804063, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(3, 'ALL', 107.681164, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(4, 'AMD', 477.975597, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(5, 'ANG', 1.798909, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(6, 'AOA', 496.621481, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(7, 'ARS', 107.454956, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(8, 'AUD', 1.382801, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(9, 'AWG', 1.800843, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(10, 'AZN', 1.700268, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(11, 'BAM', 1.736715, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(12, 'BBD', 2.000083, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(13, 'BDT', 85.767409, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(14, 'BGN', 1.736416, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(15, 'BHD', 0.377559, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(16, 'BIF', 2013.085063, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(17, 'BMD', 1.000636, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(18, 'BND', 1.34509, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(19, 'BOB', 6.860093, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(20, 'BRL', 5.163615, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(21, 'BSD', 0.999957, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(22, 'BTC', 0.000026, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(23, 'BTN', 74.726207, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(24, 'BWP', 11.515965, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(25, 'BYN', 2.738412, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(26, 'BZD', 2.012021, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(27, 'CAD', 1.27218, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(28, 'CDF', 2014.084531, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(29, 'CHF', 0.926762, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(30, 'CLF', 0.029368, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(31, 'CLP', 802.224038, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(32, 'CNH', 6.314923, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(33, 'CNY', 6.317924, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(34, 'COP', 3898.281155, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(35, 'CRC', 639.751129, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(36, 'CUC', 1.000081, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(37, 'CUP', 25.751554, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(38, 'CVE', 98.854836, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(39, 'CZK', 21.944473, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(40, 'DJF', 176.720615, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(41, 'DKK', 6.603083, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(42, 'DOP', 55.530377, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(43, 'DZD', 141.18991, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(44, 'EGP', 15.747526, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(45, 'ERN', 15.000857, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(46, 'ETB', 50.882612, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(47, 'EUR', 0.887357, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(48, 'FJD', 2.136258, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(49, 'FKP', 0.745869, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(50, 'GBP', 0.74594, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(51, 'GEL', 3.170038, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(52, 'GGP', 0.745968, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(53, 'GHS', 6.720623, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(54, 'GIP', 0.745627, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(55, 'GMD', 53.302681, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(56, 'GNF', 8978.874626, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(57, 'GTQ', 7.698874, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(58, 'GYD', 208.722681, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(59, 'HKD', 7.809677, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(60, 'HNL', 24.516591, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(61, 'HRK', 6.717089, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(62, 'HTG', 103.43195, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(63, 'HUF', 323.919534, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(64, 'IDR', 14334.847431, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(65, 'ILS', 3.233119, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(66, 'IMP', 0.745619, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(67, 'INR', 75.058966, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(68, 'IQD', 1449.318703, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(69, 'IRR', 42251.762039, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(70, 'ISK', 125.265688, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(71, 'JEP', 0.746035, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(72, 'JMD', 154.811056, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(73, 'JOD', 0.709376, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(74, 'JPY', 115.549733, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(75, 'KES', 113.855509, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(76, 'KGS', 89.785928, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(77, 'KHR', 4065.170193, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(78, 'KMF', 438.393304, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(79, 'KPW', 900.037939, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(80, 'KRW', 1197.97044, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(81, 'KWD', 0.303953, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(82, 'KYD', 0.831684, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(83, 'KZT', 456.746852, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(84, 'LAK', 11385.475432, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(85, 'LBP', 1500.950964, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(86, 'LKR', 202.015437, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(87, 'LRD', 154.206793, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(88, 'LSL', 15.156717, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(89, 'LYD', 4.58558, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(90, 'MAD', 9.448481, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(91, 'MDL', 18.166886, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(92, 'MGA', 3985.166399, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(93, 'MKD', 54.68451, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(94, 'MMK', 1774.232496, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(95, 'MNT', 2865.726027, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(96, 'MOP', 8.025297, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(97, 'MRU', 36.103945, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(98, 'MUR', 43.678655, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(99, 'MVR', 15.451136, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(100, 'MWK', 797.767811, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(101, 'MXN', 20.351604, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(102, 'MYR', 4.200302, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(103, 'MZN', 63.833222, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(104, 'NAD', 15.200513, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(105, 'NGN', 415.57741, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(106, 'NIO', 35.195867, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(107, 'NOK', 8.828964, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(108, 'NPR', 119.561256, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(109, 'NZD', 1.485091, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(110, 'OMR', 0.385654, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(111, 'PAB', 1.000362, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(112, 'PEN', 3.76814, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(113, 'PGK', 3.516394, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(114, 'PHP', 51.320799, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(115, 'PKR', 176.250676, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(116, 'PLN', 4.110447, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(117, 'PYG', 6924.328514, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(118, 'QAR', 3.641342, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(119, 'RON', 4.390274, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(120, 'RSD', 104.359655, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(121, 'RUB', 83.866457, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(122, 'RWF', 1006.219894, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(123, 'SAR', 3.75259, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(124, 'SBD', 8.082015, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(125, 'SCR', 14.401662, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(126, 'SDG', 445.519504, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(127, 'SEK', 9.396496, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(128, 'SGD', 1.353966, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(129, 'SHP', 0.745658, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(130, 'SLL', 11531.731666, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(131, 'SOS', 574.305134, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(132, 'SRD', 20.650414, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(133, 'SSP', 130.265559, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(134, 'STD', 21147.072839, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(135, 'STN', 22.201688, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(136, 'SVC', 8.72876, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(137, 'SYP', 2512.105002, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(138, 'SZL', 15.156412, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(139, 'THB', 32.445601, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(140, 'TJS', 11.265067, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(141, 'TMT', 3.509909, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(142, 'TND', 2.889161, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(143, 'TOP', 2.280018, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(144, 'TRY', 13.825002, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(145, 'TTD', 6.748355, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(146, 'TWD', 27.97947, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(147, 'TZS', 2315.09725, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(148, 'UAH', 29.830158, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(149, 'UGX', 3520.992381, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(150, 'USD', 1, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(151, 'UYU', 42.290746, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(152, 'UZS', 10865.453191, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(153, 'VES', 4.375911, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(154, 'VND', 22832.007338, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(155, 'VUV', 113.925187, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(156, 'WST', 2.623827, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(157, 'XAF', 581.959617, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(158, 'XAG', 0.041627, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(159, 'XAU', 0.001725, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(160, 'XCD', 2.702937, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(161, 'XDR', 0.713735, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(162, 'XOF', 581.959722, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(163, 'XPD', 0.000858, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(164, 'XPF', 105.870808, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(165, 'XPT', 0.001191, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(166, 'YER', 250.260861, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(167, 'ZAR', 15.147002, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(168, 'ZMW', 17.596191, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(169, 'ZWL', 322.013499, '10:52:39', '2022-02-27 10:52:39', '2022-02-27 10:52:39');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coin_id` bigint(20) UNSIGNED NOT NULL,
  `flag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_cost` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `name_ar`, `country_code`, `coin_id`, `flag`, `delivery_cost`, `tax`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Oman', 'عمان', '+968', 103, 'storage/media/d6ae6da0dae74d1ec726bdda7ac53279.jpeg', 100, 10, 1, '2022-02-27 11:04:11', '2022-03-21 11:16:56'),
(2, 'Saudi Arabia', 'المملكة العربية السعودية', '+966', 123, 'storage/media/7c880c6a6e2c113da8cdaf0b04d3322a.png', 100, 10, 1, '2022-02-27 11:05:47', '2022-02-27 11:05:47'),
(3, 'United Arab Emirates', 'الامارات', '+971', 1, 'storage/media/fef3f21d5b7232936902ce9c4561192b.png', 100, 10, 1, '2022-02-27 11:07:07', '2022-02-27 11:07:07'),
(4, 'Jordan', 'الأردن', 'JOD', 73, 'storage/media/03393d2e1eabd21e9db015e5fd8b2cb8.png', 20, 0, 1, '2022-03-02 05:10:20', '2022-03-02 05:10:20'),
(5, 'egypt', 'مصر', '001', 26, 'storage/media/2ad09d8148e6c1502de00ef980f6c16b.jpg', 10, 10, 1, '2022-03-21 11:21:10', '2022-03-21 11:21:10');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double NOT NULL,
  `limit` double NOT NULL,
  `use_limit` tinyint(4) NOT NULL,
  `expire_at` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `name`, `name_ar`, `code`, `rate`, `limit`, `use_limit`, `expire_at`, `created_at`, `updated_at`) VALUES
(1, 'discount1', 'خصم1', 'c123', 10, 100, 3, '2022-03-30', '2022-02-27 13:17:55', '2022-03-21 12:15:01');

-- --------------------------------------------------------

--
-- Table structure for table `discounts_history`
--

CREATE TABLE `discounts_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `discount_id` bigint(20) UNSIGNED NOT NULL,
  `value` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discounts_history`
--

INSERT INTO `discounts_history` (`id`, `user_id`, `order_id`, `discount_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 1, 60, '2022-02-27 13:31:57', '2022-02-27 13:31:57'),
(2, 4, 11, 1, 20, '2022-03-02 19:04:53', '2022-03-02 19:04:53'),
(3, 4, 12, 1, 60, '2022-03-02 19:16:15', '2022-03-02 19:16:15'),
(4, 4, 13, 1, 20, '2022-03-02 19:16:51', '2022-03-02 19:16:51'),
(5, 1, 64, 1, 50, '2022-03-21 12:15:18', '2022-03-21 12:15:18'),
(6, 1, 65, 1, 100, '2022-03-21 12:46:03', '2022-03-21 12:46:03');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `image`, `password`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'admin@admin.com', 'storage/media/ea93798ad919ed71bd6749ea2649e0bc.jpg', '$2y$10$NC9YtEWvorJokDLT6VFKE.lv/QywRettvke6BKty/jixp34Vp.Ee6', 1, NULL, '2022-02-27 10:52:39', '2022-03-21 11:10:10');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(5, 3, 2, '2022-03-02 12:33:50', '2022-03-02 12:33:50'),
(6, 4, 2, '2022-03-02 17:33:53', '2022-03-02 17:33:53'),
(7, 4, 1, '2022-03-02 17:36:31', '2022-03-02 17:36:31'),
(16, 7, 2, '2022-03-15 12:39:38', '2022-03-15 12:39:38'),
(18, 1, 5, '2022-03-21 12:53:19', '2022-03-21 12:53:19'),
(19, 1, 7, '2022-03-21 12:53:43', '2022-03-21 12:53:43'),
(20, 1, 3, '2022-03-22 10:53:10', '2022-03-22 10:53:10');

-- --------------------------------------------------------

--
-- Table structure for table `gmail_social_accounts`
--

CREATE TABLE `gmail_social_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission_id` bigint(20) UNSIGNED DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `name`, `name_ar`, `url`, `icon`, `permission_id`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'App Management', 'إدارة التطبيق', 'app_managements', NULL, 1, NULL, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(2, 'Employees', 'الموظفين', 'employees', 'group', 2, 1, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(3, 'Roles', 'الأدوار', 'roles', 'accessibility', 3, 1, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(4, 'App Data', 'بيانات التطبيق', 'app_data', NULL, 4, NULL, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(5, 'Settings', 'الإعدادات', 'settings', 'settings', 5, 4, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(6, 'Countries', 'الدول', 'countries', 'flag', 6, 4, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(7, 'Cities', 'المدن', 'cities', 'location_city', 7, 4, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(8, 'Splash Screens', 'شاشات السبلاش', 'splash_screens', 'fit_screen', 8, 4, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(9, 'Brands', 'البراندات', 'brands', 'category', 9, 4, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(10, 'Categories', 'التصنيفات', 'categories', 'list', 10, 4, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(11, 'App Content', 'محتوى التطبيق', 'app_content', NULL, 11, NULL, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(12, 'Advertisements', 'الاعلانات', 'advertisements', 'featured_video', 12, 11, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(13, 'Products', 'المنتجات', 'products', 'inventory_2', 13, 11, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(14, 'Offers', 'العروض', 'offers', 'featured_video', 14, 11, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(15, 'orders', 'الطلبات', 'orders', 'inventory_2', 15, 11, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(16, 'Discounts', 'الخصومات', 'discounts', 'local_offer', 16, 11, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(17, 'Users Managements', 'إدارة المستخدمين', 'user_managements', NULL, 17, NULL, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(18, 'Users', 'المستخدمين', 'users', 'group', 18, 17, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(19, 'Tickets', 'التذاكر', 'tickets', 'label', 19, 17, '2022-02-27 10:52:39', '2022-02-27 10:52:39');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `ref_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `employee_id`, `type`, `ref_id`, `ip`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '188.225.251.54', '2022-02-27 11:02:18', '2022-02-27 11:02:18'),
(2, 1, 1, 1, '5.11.47.107', '2022-03-01 19:13:39', '2022-03-01 19:13:39'),
(3, 1, 1, 1, '185.97.67.222', '2022-03-02 04:33:07', '2022-03-02 04:33:07'),
(4, 1, 1, 1, '188.225.251.4', '2022-03-02 12:13:09', '2022-03-02 12:13:09'),
(5, 1, 1, 1, '85.114.125.155', '2022-03-02 18:51:38', '2022-03-02 18:51:38'),
(6, 1, 1, 1, '85.114.127.10', '2022-03-03 04:43:30', '2022-03-03 04:43:30'),
(7, 1, 1, 1, '188.225.251.82', '2022-03-09 13:57:57', '2022-03-09 13:57:57'),
(8, 1, 1, 1, '85.114.113.133', '2022-03-10 09:46:55', '2022-03-10 09:46:55'),
(9, 1, 1, 1, '85.114.113.133', '2022-03-10 13:22:30', '2022-03-10 13:22:30'),
(10, 1, 1, 1, '188.225.251.232', '2022-03-12 12:35:29', '2022-03-12 12:35:29'),
(11, 1, 1, 1, '5.11.47.107', '2022-03-14 20:41:05', '2022-03-14 20:41:05'),
(12, 1, 1, 1, '85.114.113.241', '2022-03-15 12:44:38', '2022-03-15 12:44:38'),
(13, 1, 1, 1, '158.140.98.122', '2022-03-15 22:48:31', '2022-03-15 22:48:31'),
(14, 1, 1, 1, '85.114.122.198', '2022-03-15 22:48:46', '2022-03-15 22:48:46'),
(15, 1, 1, 1, '188.225.251.43', '2022-03-16 11:54:17', '2022-03-16 11:54:17'),
(16, 1, 1, 1, '188.225.251.100', '2022-03-17 09:34:02', '2022-03-17 09:34:02'),
(17, 1, 1, 1, '188.225.251.249', '2022-03-21 11:07:37', '2022-03-21 11:07:37'),
(18, 1, 2, 1, '188.225.251.249', '2022-03-21 11:08:38', '2022-03-21 11:08:38'),
(19, 1, 1, 1, '188.225.251.249', '2022-03-21 11:09:09', '2022-03-21 11:09:09'),
(20, 1, 1, 1, '94.185.26.154', '2022-03-21 11:09:30', '2022-03-21 11:09:30'),
(21, 1, 1, 1, '94.185.26.154', '2022-03-21 11:13:21', '2022-03-21 11:13:21'),
(22, 2, 1, 2, '188.225.251.248', '2022-03-22 08:54:48', '2022-03-22 08:54:48'),
(23, 2, 2, 2, '188.225.251.248', '2022-03-22 08:55:22', '2022-03-22 08:55:22'),
(24, 2, 1, 2, '188.225.251.248', '2022-03-22 08:55:24', '2022-03-22 08:55:24'),
(25, 2, 2, 2, '188.225.251.248', '2022-03-22 08:55:49', '2022-03-22 08:55:49'),
(26, 1, 1, 1, '188.225.251.248', '2022-03-22 08:56:08', '2022-03-22 08:56:08'),
(27, 1, 2, 1, '188.225.251.248', '2022-03-22 09:11:41', '2022-03-22 09:11:41'),
(28, 1, 1, 1, '188.225.251.248', '2022-03-22 09:11:42', '2022-03-22 09:11:42'),
(29, 1, 2, 1, '188.225.251.248', '2022-03-22 09:16:22', '2022-03-22 09:16:22'),
(30, 1, 1, 1, '188.225.251.248', '2022-03-22 09:16:44', '2022-03-22 09:16:44'),
(31, 1, 1, 1, '188.225.251.248', '2022-03-22 09:16:57', '2022-03-22 09:16:57');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ref_id` bigint(20) UNSIGNED DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `ref_id`, `file`, `media_type`, `created_at`, `updated_at`) VALUES
(1, 1, 'storage/media/9a3fec9265931544e8e1e5eab00ca065.jpg', '1', '2022-02-27 11:13:33', '2022-02-27 11:13:33'),
(3, 2, 'storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '1', '2022-02-27 13:08:31', '2022-02-27 13:08:31'),
(4, 3, 'storage/media/deacebb937540e4033c914e9468a947a.jpg', '1', '2022-03-21 11:47:13', '2022-03-21 11:47:13'),
(5, 4, 'storage/media/44e651ef2be3c8e440e149af9f6ab66a.jpg', '1', '2022-03-21 11:50:31', '2022-03-21 11:50:31'),
(6, 5, 'storage/media/9d01f458e8db6c9f0006c0e5e47575bd.jpg', '1', '2022-03-21 11:51:09', '2022-03-21 11:51:09'),
(7, 6, 'storage/media/9a51d4bda3836ca7223537a6b86d002e.jpg', '1', '2022-03-21 11:52:02', '2022-03-21 11:52:02'),
(8, 7, 'storage/media/ea8b4a19156db7856afbf06c0743d613.jpg', '1', '2022-03-21 11:52:38', '2022-03-21 11:52:38'),
(9, 8, 'storage/media/e17e3667de2745d3cb84b2d642a3c58d.jpg', '1', '2022-03-21 11:53:16', '2022-03-21 11:53:16'),
(10, 9, 'storage/media/5808cbd2888f77c981939408206ebf5f.jpg', '1', '2022-03-21 11:53:50', '2022-03-21 11:53:50'),
(11, 10, 'storage/media/256d26e019575edef740bf6c1fdd4fe3.jpg', '1', '2022-03-21 11:54:30', '2022-03-21 11:54:30'),
(12, 11, 'storage/media/55b3ba14b941f8f87da25d1ffc64a974.jpg', '1', '2022-03-21 11:55:07', '2022-03-21 11:55:07'),
(14, 10, 'storage/media/1de1740e123666af1f89b627c97c7056.mp4', '1', '2022-03-21 12:21:47', '2022-03-21 12:21:47');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_08_24_064917_create_attachments_table', 1),
(10, '2019_09_18_063746_create_social_login_tabel', 1),
(11, '2019_10_26_094614_create_employees_table', 1),
(12, '2019_10_26_095424_create_verify_accounts_table', 1),
(13, '2019_10_27_021941_create_notifications_table', 1),
(14, '2019_11_11_144224_create_settings_table', 1),
(15, '2019_11_27_010230_create_logs_table', 1),
(16, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(17, '2020_02_21_050142_create_roles_table', 1),
(18, '2020_02_21_050211_create_permissions_table', 1),
(19, '2020_02_21_050321_create_role_permissions_table', 1),
(20, '2020_02_21_051526_create_model_roles_table', 1),
(21, '2020_02_21_051756_create_model_permissions_table', 1),
(22, '2020_07_08_055015_create_tickets_table', 1),
(23, '2020_09_14_143722_create_ticket_responses_table', 1),
(24, '2020_10_03_171141_create_media_table', 1),
(25, '2021_04_08_083526_create_links_table', 1),
(26, '2021_08_19_094018_create_coins_table', 1),
(27, '2021_10_10_092333_create_splash_screens_table', 1),
(28, '2021_10_10_092607_create_countries_table', 1),
(29, '2021_10_10_092620_create_cities_table', 1),
(30, '2021_10_14_003416_create_brands_table', 1),
(31, '2021_10_14_003917_create_products_table', 1),
(32, '2021_10_14_005019_create_favorites_table', 1),
(33, '2021_10_14_005049_create_addresses_table', 1),
(34, '2021_10_14_005945_create_advertisements_table', 1),
(35, '2021_10_14_010254_create_orders_table', 1),
(36, '2021_10_14_010609_create_discounts_table', 1),
(37, '2021_10_14_011138_create_discounts_history_table', 1),
(38, '2021_10_14_011502_create_orders_products_table', 1),
(39, '2021_10_16_123021_create_categories_table', 1),
(40, '2021_10_16_133000_create_reviews_table', 1),
(41, '2021_10_16_141010_create_offers_table', 1),
(42, '2021_10_16_145656_create_offers_products_table', 1),
(43, '2021_11_02_190809_create_gmail_social_accounts_table', 1),
(44, '2021_11_02_191347_make_password_and_email_fields_nullable_in_users_table', 1),
(45, '2021_11_03_064926_add_fb_id_column_in_users_table', 1),
(46, '2021_11_03_071917_add_provider_name_column_and_provider_id_column_in_users_table', 1),
(47, '2021_11_07_124453_create_order_status_table', 1),
(48, '2021_11_07_130047_create_transaction_table', 1),
(49, '2021_11_16_102821_create_cart_table', 1),
(50, '2021_12_05_064709_create_attributes_table', 1),
(51, '2021_12_05_125627_create_offer_size_price_table', 1),
(52, '2021_12_05_125627_create_size_price_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_permissions`
--

CREATE TABLE `model_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_permissions`
--

INSERT INTO `model_permissions` (`id`, `model_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(2, 1, 2, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(3, 1, 3, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(4, 1, 4, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(5, 1, 5, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(6, 1, 6, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(7, 1, 7, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(8, 1, 8, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(9, 1, 9, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(10, 1, 10, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(11, 1, 11, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(12, 1, 12, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(13, 1, 13, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(14, 1, 14, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(15, 1, 15, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(16, 1, 16, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(17, 1, 17, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(18, 1, 18, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(19, 1, 19, '2022-02-27 10:52:39', '2022-02-27 10:52:39');

-- --------------------------------------------------------

--
-- Table structure for table `model_roles`
--

CREATE TABLE `model_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_roles`
--

INSERT INTO `model_roles` (`id`, `model_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-02-27 10:52:39', '2022-02-27 10:52:39');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `ref_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `ref_id`, `title`, `title_ar`, `message`, `message_ar`, `type`, `read_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Order In Progress', 'الطلب قيد المراجعة !', 'Order In Progress !', 'طلبك قيد المراجعة', 1, NULL, '2022-02-27 11:17:16', '2022-02-27 11:17:16'),
(2, 1, 1, 'Order Accepted', 'قبول الطلب !', 'Provider Accept your order !', 'قام المزود بقبول طلبك', 1, NULL, '2022-02-27 11:17:51', '2022-02-27 11:17:51'),
(3, 1, 1, 'Order In Delivery', 'الطلب قيد التوصيل !', 'Order In Delivery !', 'طلبك قيد التوصيل', 1, NULL, '2022-02-27 11:19:13', '2022-02-27 11:19:13'),
(4, 1, 1, 'Order Received', 'تم استلام الطلب !', 'Customer Received the order !', 'قام المزود بتسليم الطلب', 1, NULL, '2022-02-27 11:19:55', '2022-02-27 11:19:55'),
(5, 3, 7, 'Order In Progress', 'الطلب قيد المراجعة !', 'Order In Progress !', 'طلبك قيد المراجعة', 1, NULL, '2022-03-02 12:27:57', '2022-03-02 12:27:57'),
(6, 3, 7, 'Order Accepted', 'قبول الطلب !', 'Provider Accept your order !', 'قام المزود بقبول طلبك', 1, NULL, '2022-03-02 12:28:03', '2022-03-02 12:28:03'),
(7, 3, 7, 'Order In Delivery', 'الطلب قيد التوصيل !', 'Order In Delivery !', 'طلبك قيد التوصيل', 1, NULL, '2022-03-02 12:29:05', '2022-03-02 12:29:05'),
(8, 3, 7, 'Order Received', 'تم استلام الطلب !', 'Customer Received the order !', 'قام المزود بتسليم الطلب', 1, NULL, '2022-03-02 12:29:11', '2022-03-02 12:29:11'),
(9, 1, 8, 'Order In Progress', 'الطلب قيد المراجعة !', 'Order In Progress !', 'طلبك قيد المراجعة', 1, NULL, '2022-03-02 12:34:26', '2022-03-02 12:34:26'),
(10, 1, 8, 'Order Accepted', 'قبول الطلب !', 'Provider Accept your order !', 'قام المزود بقبول طلبك', 1, '2022-03-21 13:05:19', '2022-03-02 12:34:31', '2022-03-21 13:05:19'),
(11, 1, 8, 'Order In Delivery', 'الطلب قيد التوصيل !', 'Order In Delivery !', 'طلبك قيد التوصيل', 1, '2022-03-21 13:05:17', '2022-03-02 12:34:57', '2022-03-21 13:05:17'),
(12, 1, 8, 'Order Received', 'تم استلام الطلب !', 'Customer Received the order !', 'قام المزود بتسليم الطلب', 1, NULL, '2022-03-02 12:35:33', '2022-03-02 12:35:33'),
(13, 3, 24, 'Order In Progress', 'الطلب قيد المراجعة !', 'Order In Progress !', 'طلبك قيد المراجعة', 1, NULL, '2022-03-10 13:23:37', '2022-03-10 13:23:37'),
(14, 3, 24, 'Order Accepted', 'قبول الطلب !', 'Provider Accept your order !', 'قام المزود بقبول طلبك', 1, NULL, '2022-03-10 13:24:01', '2022-03-10 13:24:01'),
(15, 3, 24, 'Order In Delivery', 'الطلب قيد التوصيل !', 'Order In Delivery !', 'طلبك قيد التوصيل', 1, NULL, '2022-03-10 13:24:20', '2022-03-10 13:24:20'),
(16, 3, 24, 'Order Received', 'تم استلام الطلب !', 'Customer Received the order !', 'قام المزود بتسليم الطلب', 1, NULL, '2022-03-10 13:24:34', '2022-03-10 13:24:34'),
(17, 7, 26, 'Order In Progress', 'الطلب قيد المراجعة !', 'Order In Progress !', 'طلبك قيد المراجعة', 1, NULL, '2022-03-15 12:44:59', '2022-03-15 12:44:59'),
(18, 7, 18, 'Order In Progress', 'الطلب قيد المراجعة !', 'Order In Progress !', 'طلبك قيد المراجعة', 1, NULL, '2022-03-15 12:45:14', '2022-03-15 12:45:14'),
(19, 7, 18, 'Order Accepted', 'قبول الطلب !', 'Provider Accept your order !', 'قام المزود بقبول طلبك', 1, NULL, '2022-03-15 12:45:24', '2022-03-15 12:45:24'),
(20, 7, 18, 'Order In Delivery', 'الطلب قيد التوصيل !', 'Order In Delivery !', 'طلبك قيد التوصيل', 1, NULL, '2022-03-15 12:45:32', '2022-03-15 12:45:32'),
(21, 7, 18, 'Order Received', 'تم استلام الطلب !', 'Customer Received the order !', 'قام المزود بتسليم الطلب', 1, NULL, '2022-03-15 12:45:40', '2022-03-15 12:45:40'),
(22, 7, 19, 'Order In Progress', 'الطلب قيد المراجعة !', 'Order In Progress !', 'طلبك قيد المراجعة', 1, NULL, '2022-03-15 12:46:02', '2022-03-15 12:46:02'),
(23, 7, 19, 'Order Accepted', 'قبول الطلب !', 'Provider Accept your order !', 'قام المزود بقبول طلبك', 1, NULL, '2022-03-15 12:46:13', '2022-03-15 12:46:13'),
(24, 7, 19, 'Order In Delivery', 'الطلب قيد التوصيل !', 'Order In Delivery !', 'طلبك قيد التوصيل', 1, NULL, '2022-03-15 12:46:26', '2022-03-15 12:46:26'),
(25, 7, 19, 'Order Received', 'تم استلام الطلب !', 'Customer Received the order !', 'قام المزود بتسليم الطلب', 1, NULL, '2022-03-15 12:46:37', '2022-03-15 12:46:37'),
(26, 7, 20, 'Order In Progress', 'الطلب قيد المراجعة !', 'Order In Progress !', 'طلبك قيد المراجعة', 1, NULL, '2022-03-15 12:46:49', '2022-03-15 12:46:49'),
(27, 7, 21, 'Order In Progress', 'الطلب قيد المراجعة !', 'Order In Progress !', 'طلبك قيد المراجعة', 1, NULL, '2022-03-15 12:47:48', '2022-03-15 12:47:48'),
(28, 7, 21, 'Order Rejected', 'الرفض على الطلب !', 'Provider Rejected your order !', 'قام المزود برفض طلبك', 1, NULL, '2022-03-15 12:48:01', '2022-03-15 12:48:01'),
(29, 7, 31, 'Order Accepted', 'قبول الطلب !', 'Provider Accept your order !', 'قام المزود بقبول طلبك', 1, NULL, '2022-03-15 22:50:09', '2022-03-15 22:50:09'),
(30, 7, 31, 'Order In Delivery', 'الطلب قيد التوصيل !', 'Order In Delivery !', 'طلبك قيد التوصيل', 1, NULL, '2022-03-15 22:50:23', '2022-03-15 22:50:23'),
(31, 7, 31, 'Order Received', 'تم استلام الطلب !', 'Customer Received the order !', 'قام المزود بتسليم الطلب', 1, NULL, '2022-03-15 22:50:34', '2022-03-15 22:50:34'),
(32, 1, 44, 'Order In Progress', 'الطلب قيد المراجعة !', 'Order In Progress !', 'طلبك قيد المراجعة', 1, NULL, '2022-03-16 12:24:32', '2022-03-16 12:24:32'),
(33, 1, 44, 'Order Accepted', 'قبول الطلب !', 'Provider Accept your order !', 'قام المزود بقبول طلبك', 1, NULL, '2022-03-16 12:24:39', '2022-03-16 12:24:39'),
(34, 1, 44, 'Order In Delivery', 'الطلب قيد التوصيل !', 'Order In Delivery !', 'طلبك قيد التوصيل', 1, NULL, '2022-03-16 12:24:49', '2022-03-16 12:24:49'),
(35, 1, 44, 'Order Received', 'تم استلام الطلب !', 'Customer Received the order !', 'قام المزود بتسليم الطلب', 1, NULL, '2022-03-16 12:24:55', '2022-03-16 12:24:55'),
(36, 3, 46, 'Order In Progress', 'الطلب قيد المراجعة !', 'Order In Progress !', 'طلبك قيد المراجعة', 1, NULL, '2022-03-16 12:44:54', '2022-03-16 12:44:54'),
(37, 3, 46, 'Order Accepted', 'قبول الطلب !', 'Provider Accept your order !', 'قام المزود بقبول طلبك', 1, NULL, '2022-03-16 12:45:09', '2022-03-16 12:45:09'),
(38, 3, 46, 'Order In Delivery', 'الطلب قيد التوصيل !', 'Order In Delivery !', 'طلبك قيد التوصيل', 1, NULL, '2022-03-16 12:45:18', '2022-03-16 12:45:18'),
(39, 3, 46, 'Order Received', 'تم استلام الطلب !', 'Customer Received the order !', 'قام المزود بتسليم الطلب', 1, NULL, '2022-03-16 12:45:25', '2022-03-16 12:45:25'),
(40, 1, 63, 'Order In Progress', 'الطلب قيد المراجعة !', 'Order In Progress !', 'طلبك قيد المراجعة', 1, '2022-03-21 13:05:14', '2022-03-21 12:09:07', '2022-03-21 13:05:14'),
(41, 1, 63, 'Order Accepted', 'قبول الطلب !', 'Provider Accept your order !', 'قام المزود بقبول طلبك', 1, '2022-03-21 13:05:11', '2022-03-21 12:09:41', '2022-03-21 13:05:11'),
(42, 1, 63, 'Order In Delivery', 'الطلب قيد التوصيل !', 'Order In Delivery !', 'طلبك قيد التوصيل', 1, '2022-03-21 13:05:09', '2022-03-21 12:10:29', '2022-03-21 13:05:09'),
(43, 1, 63, 'Order Received', 'تم استلام الطلب !', 'Customer Received the order !', 'قام المزود بتسليم الطلب', 1, '2022-03-21 13:05:03', '2022-03-21 12:10:54', '2022-03-21 13:05:03'),
(44, 1, 65, 'Order In Progress', 'الطلب قيد المراجعة !', 'Order In Progress !', 'طلبك قيد المراجعة', 1, '2022-03-21 13:04:34', '2022-03-21 12:47:39', '2022-03-21 13:04:34'),
(45, 1, 65, 'Order Accepted', 'قبول الطلب !', 'Provider Accept your order !', 'قام المزود بقبول طلبك', 1, '2022-03-21 13:04:33', '2022-03-21 12:47:57', '2022-03-21 13:04:33'),
(46, 1, 65, 'Order In Delivery', 'الطلب قيد التوصيل !', 'Order In Delivery !', 'طلبك قيد التوصيل', 1, '2022-03-21 13:04:31', '2022-03-21 12:49:06', '2022-03-21 13:04:31'),
(47, 1, 65, 'Order Received', 'تم استلام الطلب !', 'Customer Received the order !', 'قام المزود بتسليم الطلب', 1, '2022-03-21 13:04:29', '2022-03-21 12:49:20', '2022-03-21 13:04:29');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('7df6ce33272356cb8945bef59a6fb743e0765fe49f750699092b4138cda8a419698d1fe7da396d91', 4, 1, 'Personal Access Token', '[]', 0, '2022-03-19 08:53:25', '2022-03-19 08:53:25', '2023-03-19 08:53:25'),
('be31fb24b698c553dfc967ae0ce4204c77e76548ae4d981586174c0c9f4343a8b6b89f63a8243109', 6, 1, 'Personal Access Token', '[]', 0, '2022-03-03 04:49:23', '2022-03-03 04:49:23', '2023-03-03 04:49:23'),
('d0764892703a8441672a583fffeb6ff44ad8940cf7be669c5afafec82ef56da25e7e510c63f1d9ce', 2, 1, 'Personal Access Token', '[]', 0, '2022-03-02 08:25:10', '2022-03-02 08:25:10', '2023-03-02 08:25:10'),
('dec15a2003deaba5e8f218447ef37d22614b622e603122aecfbaa72069bf35c50bacd79e6c9837ae', 7, 1, 'Personal Access Token', '[]', 0, '2022-03-10 13:41:49', '2022-03-10 13:41:49', '2023-03-10 13:41:49'),
('e5832633b01c54a1b43dc16ff1a53c94a66ebbb20d610caab91334fa9278eba7995093f65de38ed7', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-22 10:52:26', '2022-03-22 10:52:26', '2023-03-22 10:52:26');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'J7yCXm7RGAM0KkyAUR8LgUuqylYU7w8d41T6O5TN', NULL, 'http://localhost', 1, 0, 0, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(2, NULL, 'Laravel Password Grant Client', 'KZHswhMr1RSuvyPzCZPDsrYWjDV9YNBg4vZP6Zn7', 'users', 'http://localhost', 0, 1, 0, '2022-02-27 10:52:39', '2022-02-27 10:52:39');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-02-27 10:52:39', '2022-02-27 10:52:39');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `name`, `name_ar`, `product_id`, `image`, `active`, `created_at`, `updated_at`) VALUES
(1, 'discount1', 'منتج', 1, 'storage/media/899d2ad5118df51affd596dd38606094.jpg', 1, '2022-02-27 13:15:04', '2022-02-27 13:15:04'),
(2, 'products', 'منتج', 2, 'storage/media/5fd5b29c5d1607c7701d9140463d07ea.jpg', 1, '2022-03-02 12:17:17', '2022-03-02 12:17:17'),
(3, 'souversion', 'سوفرجن', 4, 'storage/media/acebf46e0cb9dae7c2b710d2223589ef.png', 1, '2022-03-21 12:05:21', '2022-03-21 12:06:42');

-- --------------------------------------------------------

--
-- Table structure for table `offers_products`
--

CREATE TABLE `offers_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offer_size_price`
--

CREATE TABLE `offer_size_price` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offer_size_price`
--

INSERT INTO `offer_size_price` (`id`, `size`, `price`, `product_id`, `active`, `created_at`, `updated_at`) VALUES
(1, '200*300', '200', 1, 1, '2022-02-27 13:15:04', '2022-02-27 13:15:04'),
(2, '200*300', '200', 2, 1, '2022-03-02 12:17:17', '2022-03-02 12:17:17'),
(3, '200*300', '500', 3, 1, '2022-03-21 12:05:21', '2022-03-21 12:05:21'),
(4, '200*300', '500', 3, 1, '2022-03-21 12:06:42', '2022-03-21 12:06:42');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address_id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_id` bigint(20) UNSIGNED DEFAULT NULL,
  `discount_amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `address_id`, `country_id`, `city_id`, `name`, `address`, `lat`, `lng`, `mobile`, `discount_id`, `discount_amount`, `amount`, `tax`, `delivery`, `total`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 2, 'hadeel', 'زوةرزظو', '31.5162624', '34.4489984', '00000', NULL, '0', '500', '10', '100', '610', 7, '2022-02-27 11:16:29', '2022-02-27 11:19:55'),
(2, 1, 1, 1, 2, 'hadeel', 'زوةرزظو', '31.5162624', '34.4489984', '00000', NULL, '0', '400', '10', '100', '510', 1, '2022-02-27 13:19:47', '2022-02-27 13:19:47'),
(3, 1, 1, 1, 1, 'hadeel', 'addd', '12', '12', '123123', NULL, '0', '600', '10', '100', '710', 1, '2022-02-27 13:21:49', '2022-02-27 13:21:49'),
(4, 1, 1, 1, 1, 'hadeel', 'addd', '12', '12', '123123', 1, '60', '600', '10', '100', '650', 1, '2022-02-27 13:31:57', '2022-02-27 13:31:57'),
(5, 1, 1, 1, 2, 'hadeel', 'زوةرزظو', '31.5162624', '34.4489984', '00000', NULL, '0', '200', '10', '100', '310', 1, '2022-03-01 19:21:25', '2022-03-01 19:21:25'),
(6, 1, 1, 1, 1, 'hadeel', 'addd', '12', '12', '123123', 1, '0', '1300', '10', '100', '1410', 1, '2022-03-02 12:24:35', '2022-03-02 12:24:35'),
(7, 3, 7, 2, 2, 'Ahmed', 'Hhhh', '31.514671011523937', '34.44891845807433', '6666', NULL, '0', '200', '10', '100', '310', 7, '2022-03-02 12:27:23', '2022-03-02 12:29:11'),
(8, 1, 1, 1, 2, 'hadeel', 'زوةرزظو', '31.5162624', '34.4489984', '00000', NULL, '0', '200', '10', '100', '310', 7, '2022-03-02 12:34:15', '2022-03-02 12:35:33'),
(9, 4, 8, 2, 2, 'ayaTest', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '31.5019', '34.4666', '0597982450', 1, '0', '200', '10', '100', '310', 1, '2022-03-02 18:52:00', '2022-03-02 18:52:00'),
(10, 4, 8, 2, 2, 'ayaTest', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '31.5019', '34.4666', '0597982450', NULL, '0', '1200', '10', '100', '1310', 1, '2022-03-02 19:01:43', '2022-03-02 19:01:43'),
(11, 4, 8, 2, 2, 'ayaTest', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '31.5019', '34.4666', '0597982450', 1, '20', '200', '10', '100', '290', 1, '2022-03-02 19:04:53', '2022-03-02 19:04:53'),
(12, 4, 8, 2, 2, 'ayaTest', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '31.5019', '34.4666', '0597982450', 1, '60', '600', '10', '100', '650', 1, '2022-03-02 19:16:15', '2022-03-02 19:16:15'),
(13, 4, 8, 2, 2, 'ayaTest', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '31.5019', '34.4666', '0597982450', 1, '20', '200', '10', '100', '290', 1, '2022-03-02 19:16:51', '2022-03-02 19:16:51'),
(14, 4, 8, 2, 2, 'ayaTest', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '31.5019', '34.4666', '0597982450', 1, '0', '600', '10', '100', '710', 1, '2022-03-02 19:17:57', '2022-03-02 19:17:57'),
(15, 4, 8, 2, 2, 'ayaTest', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '31.5019', '34.4666', '0597982450', 1, '0', '400', '10', '100', '510', 1, '2022-03-02 19:21:51', '2022-03-02 19:21:51'),
(16, 4, 8, 2, 2, 'ayaTest', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '31.5019', '34.4666', '0597982450', 1, '0', '200', '10', '100', '310', 1, '2022-03-02 19:22:22', '2022-03-02 19:22:22'),
(17, 4, 8, 2, 2, 'ayaTest', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '31.5019', '34.4666', '0597982450', NULL, '0', '200', '10', '100', '310', 1, '2022-03-02 19:22:48', '2022-03-02 19:22:48'),
(18, 7, 9, 3, 3, 'Alaa', 'Www', '31.51707119494244', '34.4785132817924', '88', NULL, '0', '200', '10', '100', '310', 7, '2022-03-05 18:04:00', '2022-03-15 12:45:40'),
(19, 7, 9, 3, 3, 'Alaa', 'Www', '31.51707119494244', '34.4785132817924', '88', NULL, '0', '200', '10', '100', '310', 7, '2022-03-05 18:21:33', '2022-03-15 12:46:37'),
(20, 7, 11, 2, 2, 'Alaa', 'Gug', '31.51725497547315', '34.47872517630458', '12365', NULL, '0', '200', '10', '100', '310', 3, '2022-03-05 18:33:54', '2022-03-15 12:46:49'),
(21, 7, 12, 3, 3, 'Alaa', 'Vhf', '31.51731499703008', '34.47872584685683', '898', NULL, '0', '200', '10', '100', '310', 4, '2022-03-05 18:49:37', '2022-03-15 12:48:01'),
(22, 1, 1, 1, 2, 'hadeel', 'زوةرزظو', '31.5162624', '34.4489984', '00000', NULL, '0', '6600', '10', '100', '6710', 1, '2022-03-10 09:50:08', '2022-03-10 09:50:08'),
(23, 1, 1, 1, 2, 'hadeel', 'زوةرزظو', '31.5162624', '34.4489984', '00000', 1, '0', '200', '10', '100', '310', 1, '2022-03-10 09:50:43', '2022-03-10 09:50:43'),
(24, 3, 16, 2, 2, 'Ahmed', 'تاات', '37.78824982864545', '-121.7832400649786', '9999999999', NULL, '0', '200', '10', '100', '310', 7, '2022-03-10 13:21:03', '2022-03-10 13:24:34'),
(25, 3, 16, 2, 2, 'Ahmed', 'تاات', '37.78824982864545', '-121.7832400649786', '9999999999', NULL, '0', '200', '10', '100', '310', 1, '2022-03-10 13:23:10', '2022-03-10 13:23:10'),
(26, 7, 13, 2, 2, 'Alaa', '134', '31.51731499703008', '34.478711765259504', '126', NULL, '0', '200', '10', '100', '310', 3, '2022-03-15 12:39:50', '2022-03-15 12:44:59'),
(27, 4, 8, 2, 2, 'ayaTest', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '31.5019', '34.4666', '0597982450', NULL, '0', '600', '10', '100', '710', 1, '2022-03-15 20:39:49', '2022-03-15 20:39:49'),
(28, 4, 8, 2, 2, 'ayaTest', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '31.5019', '34.4666', '0597982450', NULL, '0', '200', '10', '100', '310', 1, '2022-03-15 20:40:40', '2022-03-15 20:40:40'),
(29, 4, 8, 2, 2, 'ayaTest', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '31.5019', '34.4666', '0597982450', NULL, '0', '200', '10', '100', '310', 1, '2022-03-15 20:41:54', '2022-03-15 20:41:54'),
(30, 4, 8, 2, 2, 'ayaTest', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '31.5019', '34.4666', '0597982450', NULL, '0', '200', '10', '100', '310', 1, '2022-03-15 20:42:34', '2022-03-15 20:42:34'),
(31, 7, 12, 3, 3, 'Alaa', 'Vhf', '31.51731499703008', '34.47872584685683', '898', NULL, '0', '1800', '10', '100', '1910', 7, '2022-03-15 22:37:17', '2022-03-15 22:50:34'),
(32, 4, 8, 2, 2, 'ayaTest', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '31.5019', '34.4666', '0597982450', NULL, '0', '200', '10', '100', '310', 1, '2022-03-16 02:44:20', '2022-03-16 02:44:20'),
(33, 4, 8, 2, 2, 'ayaTest', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '31.5019', '34.4666', '0597982450', NULL, '0', '1000', '10', '100', '1110', 1, '2022-03-16 03:19:10', '2022-03-16 03:19:10'),
(34, 4, 8, 2, 2, 'ayaTest', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '31.5019', '34.4666', '0597982450', NULL, '0', '600', '10', '100', '710', 1, '2022-03-16 03:21:29', '2022-03-16 03:21:29'),
(35, 4, 8, 2, 2, 'ayaTest', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '31.5019', '34.4666', '0597982450', NULL, '0', '200', '10', '100', '310', 1, '2022-03-16 03:22:33', '2022-03-16 03:22:33'),
(36, 4, 8, 2, 2, 'ayaTest', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '31.5019', '34.4666', '0597982450', NULL, '0', '800', '10', '100', '910', 1, '2022-03-16 03:23:02', '2022-03-16 03:23:02'),
(37, 4, 8, 2, 2, 'ayaTest', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '31.5019', '34.4666', '0597982450', NULL, '0', '400', '10', '100', '510', 1, '2022-03-16 03:23:39', '2022-03-16 03:23:39'),
(38, 4, 8, 2, 2, 'ayaTest', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '31.5019', '34.4666', '0597982450', NULL, '0', '400', '10', '100', '510', 1, '2022-03-16 03:25:14', '2022-03-16 03:25:14'),
(39, 4, 8, 2, 2, 'ayaTest', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '31.5019', '34.4666', '0597982450', NULL, '0', '600', '10', '100', '710', 1, '2022-03-16 03:29:41', '2022-03-16 03:29:41'),
(40, 4, 8, 2, 2, 'ayaTest', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '31.5019', '34.4666', '0597982450', NULL, '0', '600', '10', '100', '710', 1, '2022-03-16 03:34:25', '2022-03-16 03:34:25'),
(41, 4, 8, 2, 2, 'ayaTest', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '31.5019', '34.4666', '0597982450', NULL, '0', '400', '10', '100', '510', 1, '2022-03-16 03:37:22', '2022-03-16 03:37:22'),
(42, 4, 8, 2, 2, 'ayaTest', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '31.5019', '34.4666', '0597982450', NULL, '0', '200', '10', '100', '310', 1, '2022-03-16 03:41:28', '2022-03-16 03:41:28'),
(43, 4, 8, 2, 2, 'ayaTest', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '31.5019', '34.4666', '0597982450', NULL, '0', '800', '10', '100', '910', 1, '2022-03-16 03:42:36', '2022-03-16 03:42:36'),
(44, 1, 17, 1, 1, 'hadeel', 'زوةرزظو', '31.5146252', '34.4489717', '00000', NULL, '0', '600', '10', '100', '710', 7, '2022-03-16 12:23:23', '2022-03-16 12:24:55'),
(45, 1, 17, 1, 1, 'hadeel', 'زوةرزظو', '31.5146252', '34.4489717', '00000', 1, '0', '200', '10', '100', '310', 1, '2022-03-16 12:25:25', '2022-03-16 12:25:25'),
(46, 3, 16, 2, 2, 'Ahmed', 'تاات', '37.78824982864545', '-121.7832400649786', '9999999999', NULL, '0', '400', '10', '100', '510', 7, '2022-03-16 12:43:27', '2022-03-16 12:45:25'),
(47, 1, 8, 2, 2, 'hadeel', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '31.5019', '34.4666', '0597982450', NULL, '0', '800', '10', '100', '910', 1, '2022-03-16 14:42:13', '2022-03-16 14:42:14'),
(48, 4, 18, 1, 1, 'ayaTest', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '31.5019', '34.4666', '0597982450', NULL, '0', '200', '10', '100', '310', 1, '2022-03-16 15:20:55', '2022-03-16 15:20:55'),
(49, 4, 18, 1, 1, 'ayaTest', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '31.5019', '34.4666', '0597982450', NULL, '0', '800', '10', '100', '910', 1, '2022-03-16 15:21:49', '2022-03-16 15:21:49'),
(50, 4, 18, 1, 1, 'ayaTest', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '31.5019', '34.4666', '0597982450', NULL, '0', '200', '10', '100', '310', 1, '2022-03-16 15:22:16', '2022-03-16 15:22:16'),
(51, 4, 18, 1, 1, 'ayaTest', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '31.5019', '34.4666', '0597982450', NULL, '0', '200', '10', '100', '310', 1, '2022-03-16 15:24:08', '2022-03-16 15:24:08'),
(52, 1, 17, 1, 1, 'hadeel', 'زوةرزظو', '31.5146252', '34.4489717', '00000', NULL, '0', '200', '10', '100', '310', 1, '2022-03-16 19:18:06', '2022-03-16 19:18:06'),
(53, 4, 19, 1, 1, 'ayaTest', 'Palestine, Gaza', '31.5019', '34.4666', '0597982450', NULL, '0', '200', '10', '100', '310', 1, '2022-03-17 03:27:51', '2022-03-17 03:27:51'),
(54, 4, 18, 1, 1, 'ayaTest', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '31.5019', '34.4666', '0597982450', NULL, '0', '200', '10', '100', '310', 1, '2022-03-17 03:33:10', '2022-03-17 03:33:10'),
(55, 4, 18, 1, 1, 'ayaTest', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '31.5019', '34.4666', '0597982450', NULL, '0', '200', '10', '100', '310', 1, '2022-03-17 03:42:14', '2022-03-17 03:42:14'),
(56, 4, 18, 1, 1, 'ayaTest', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '31.5019', '34.4666', '0597982450', NULL, '0', '200', '10', '100', '310', 1, '2022-03-17 03:42:29', '2022-03-17 03:42:29'),
(57, 4, 24, 1, 1, 'ayaTest', 'Palestine, Gaza', '31.5019', '34.4666', '0000000000', NULL, '0', '200', '10', '100', '310', 1, '2022-03-17 03:49:39', '2022-03-17 03:49:39'),
(58, 4, 25, 1, 1, 'ayaTest', 'أبها', '31.5019', '34.4666', '0000000000', NULL, '0', '200', '10', '100', '310', 1, '2022-03-17 03:50:26', '2022-03-17 03:50:26'),
(59, 4, 26, 1, 1, 'ayaTest', 'Palestine, Gaza', '32', '35.25', '0000000000', NULL, '0', '200', '10', '100', '310', 1, '2022-03-17 17:46:47', '2022-03-17 17:46:47'),
(60, 4, 27, 1, 1, 'ayaTest', 'Palestine, Gaza', '32', '35.25', '0000000000', NULL, '0', '200', '10', '100', '310', 1, '2022-03-17 17:53:27', '2022-03-17 17:53:27'),
(61, 4, 30, 1, 1, 'ayaTest', 'الكويت - شارع عمر المختار - بلوك ٩٩ - مفترق الكرامة', '32', '35.25', '0597982450', NULL, '0', '200', '10', '100', '310', 1, '2022-03-17 18:06:24', '2022-03-17 18:06:24'),
(62, 1, 17, 1, 1, 'hadeel', 'زوةرزظو', '31.5146252', '34.4489717', '00000', NULL, '0', '200', '10', '100', '310', 1, '2022-03-17 19:20:03', '2022-03-17 19:20:03'),
(63, 1, 17, 1, 1, 'hadeel', 'زوةرزظو', '31.5146252', '34.4489717', '00000', NULL, '0', '500', '10', '100', '610', 7, '2022-03-21 12:08:44', '2022-03-21 12:10:54'),
(64, 1, 17, 1, 1, 'hadeel', 'زوةرزظو', '31.5146252', '34.4489717', '00000', 1, '50', '500', '10', '100', '560', 1, '2022-03-21 12:15:18', '2022-03-21 12:15:18'),
(65, 1, 17, 1, 1, 'hadeel', 'زوةرزظو', '31.5146252', '34.4489717', '00000', 1, '100', '1000', '10', '100', '1010', 7, '2022-03-21 12:46:03', '2022-03-21 12:49:20'),
(66, 1, 17, 1, 1, 'hadeel', 'زوةرزظو', '31.5146252', '34.4489717', '00000', 1, '0', '500', '10', '100', '610', 1, '2022-03-21 12:50:27', '2022-03-21 12:50:27'),
(67, 1, 32, 5, 5, 'hadeel', 'غزة شارع الشهداء', '31.514615847295484', '34.44895667955279', '111', NULL, '0', '500', '10', '10', '520', 1, '2022-03-21 13:00:29', '2022-03-21 13:00:29'),
(68, 1, 32, 5, 5, 'hadeel', 'غزة شارع الشهداء', '31.514615847295484', '34.44895667955279', '111', 1, '0', '1000', '10', '10', '1020', 1, '2022-03-21 13:03:16', '2022-03-21 13:03:16');

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quality` tinyint(4) NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_products`
--

INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `quantity`, `name`, `description`, `quality`, `price`, `total`, `size`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'انجلندر', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 2, 500, 500, '200', 'https://dashboard.mattressesapp.com/storage/media/9a3fec9265931544e8e1e5eab00ca065.jpg', '2022-02-27 11:16:29', '2022-02-27 11:16:29'),
(2, 2, 2, 2, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 400, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-02-27 13:19:47', '2022-02-27 13:19:47'),
(3, 3, 1, 3, 'انجلندر', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 2, 200, 600, '200*300', 'https://dashboard.mattressesapp.com/storage/media/9a3fec9265931544e8e1e5eab00ca065.jpg', '2022-02-27 13:21:49', '2022-02-27 13:21:49'),
(4, 4, 2, 3, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 600, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-02-27 13:31:57', '2022-02-27 13:31:57'),
(5, 5, 1, 1, 'انجلندر', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 2, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/9a3fec9265931544e8e1e5eab00ca065.jpg', '2022-03-01 19:21:25', '2022-03-01 19:21:25'),
(6, 6, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-02 12:24:35', '2022-03-02 12:24:35'),
(7, 6, 1, 1, 'انجلندر', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 2, 500, 500, '300*300', 'https://dashboard.mattressesapp.com/storage/media/9a3fec9265931544e8e1e5eab00ca065.jpg', '2022-03-02 12:24:35', '2022-03-02 12:24:35'),
(8, 6, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-02 12:24:35', '2022-03-02 12:24:35'),
(9, 6, 2, 2, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 400, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-02 12:24:35', '2022-03-02 12:24:35'),
(10, 7, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-02 12:27:23', '2022-03-02 12:27:23'),
(11, 8, 1, 1, 'انجلندر', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 2, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/9a3fec9265931544e8e1e5eab00ca065.jpg', '2022-03-02 12:34:15', '2022-03-02 12:34:15'),
(12, 9, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-02 18:52:00', '2022-03-02 18:52:00'),
(13, 10, 2, 2, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 400, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-02 19:01:43', '2022-03-02 19:01:43'),
(14, 10, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-02 19:01:43', '2022-03-02 19:01:43'),
(15, 10, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-02 19:01:43', '2022-03-02 19:01:43'),
(16, 10, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-02 19:01:43', '2022-03-02 19:01:43'),
(17, 10, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-02 19:01:43', '2022-03-02 19:01:43'),
(18, 11, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-02 19:04:53', '2022-03-02 19:04:53'),
(19, 12, 2, 3, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 600, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-02 19:16:15', '2022-03-02 19:16:15'),
(20, 13, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-02 19:16:51', '2022-03-02 19:16:51'),
(21, 14, 2, 3, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 600, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-02 19:17:57', '2022-03-02 19:17:57'),
(22, 15, 2, 2, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 400, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-02 19:21:51', '2022-03-02 19:21:51'),
(23, 16, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-02 19:22:22', '2022-03-02 19:22:22'),
(24, 17, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-02 19:22:48', '2022-03-02 19:22:48'),
(25, 18, 1, 1, 'انجلندر', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 2, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/9a3fec9265931544e8e1e5eab00ca065.jpg', '2022-03-05 18:04:00', '2022-03-05 18:04:00'),
(26, 19, 1, 1, 'انجلندر', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 2, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/9a3fec9265931544e8e1e5eab00ca065.jpg', '2022-03-05 18:21:33', '2022-03-05 18:21:33'),
(27, 20, 1, 1, 'انجلندر', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 2, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/9a3fec9265931544e8e1e5eab00ca065.jpg', '2022-03-05 18:33:54', '2022-03-05 18:33:54'),
(28, 21, 1, 1, 'انجلندر', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 2, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/9a3fec9265931544e8e1e5eab00ca065.jpg', '2022-03-05 18:49:37', '2022-03-05 18:49:37'),
(29, 22, 2, 33, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 6600, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-10 09:50:08', '2022-03-10 09:50:08'),
(30, 23, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-10 09:50:43', '2022-03-10 09:50:43'),
(31, 24, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-10 13:21:03', '2022-03-10 13:21:03'),
(32, 25, 1, 1, 'انجلندر', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 2, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/9a3fec9265931544e8e1e5eab00ca065.jpg', '2022-03-10 13:23:10', '2022-03-10 13:23:10'),
(33, 26, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-15 12:39:50', '2022-03-15 12:39:50'),
(34, 27, 1, 1, 'انجلندر', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 2, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/9a3fec9265931544e8e1e5eab00ca065.jpg', '2022-03-15 20:39:49', '2022-03-15 20:39:49'),
(35, 27, 1, 2, 'انجلندر', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 2, 200, 400, '200*300', 'https://dashboard.mattressesapp.com/storage/media/9a3fec9265931544e8e1e5eab00ca065.jpg', '2022-03-15 20:39:49', '2022-03-15 20:39:49'),
(36, 28, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-15 20:40:40', '2022-03-15 20:40:40'),
(37, 29, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-15 20:41:54', '2022-03-15 20:41:54'),
(38, 30, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-15 20:42:34', '2022-03-15 20:42:34'),
(39, 31, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-15 22:37:17', '2022-03-15 22:37:17'),
(40, 31, 1, 1, 'انجلندر', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 2, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/9a3fec9265931544e8e1e5eab00ca065.jpg', '2022-03-15 22:37:17', '2022-03-15 22:37:17'),
(41, 31, 2, 3, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 600, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-15 22:37:17', '2022-03-15 22:37:17'),
(42, 31, 1, 4, 'انجلندر', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 2, 200, 800, '200*300', 'https://dashboard.mattressesapp.com/storage/media/9a3fec9265931544e8e1e5eab00ca065.jpg', '2022-03-15 22:37:17', '2022-03-15 22:37:17'),
(43, 32, 1, 1, 'انجلندر', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 2, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/9a3fec9265931544e8e1e5eab00ca065.jpg', '2022-03-16 02:44:20', '2022-03-16 02:44:20'),
(44, 33, 1, 1, 'انجلندر', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 2, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/9a3fec9265931544e8e1e5eab00ca065.jpg', '2022-03-16 03:19:10', '2022-03-16 03:19:10'),
(45, 33, 1, 2, 'انجلندر', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 2, 200, 400, '200*300', 'https://dashboard.mattressesapp.com/storage/media/9a3fec9265931544e8e1e5eab00ca065.jpg', '2022-03-16 03:19:10', '2022-03-16 03:19:10'),
(46, 33, 2, 2, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 400, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-16 03:19:10', '2022-03-16 03:19:10'),
(47, 34, 1, 1, 'انجلندر', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 2, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/9a3fec9265931544e8e1e5eab00ca065.jpg', '2022-03-16 03:21:29', '2022-03-16 03:21:29'),
(48, 34, 2, 2, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 400, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-16 03:21:29', '2022-03-16 03:21:29'),
(49, 35, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-16 03:22:33', '2022-03-16 03:22:33'),
(50, 36, 2, 2, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 400, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-16 03:23:02', '2022-03-16 03:23:02'),
(51, 36, 1, 2, 'انجلندر', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 2, 200, 400, '200*300', 'https://dashboard.mattressesapp.com/storage/media/9a3fec9265931544e8e1e5eab00ca065.jpg', '2022-03-16 03:23:02', '2022-03-16 03:23:02'),
(52, 37, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-16 03:23:39', '2022-03-16 03:23:39'),
(53, 37, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-16 03:23:39', '2022-03-16 03:23:39'),
(54, 38, 1, 1, 'انجلندر', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 2, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/9a3fec9265931544e8e1e5eab00ca065.jpg', '2022-03-16 03:25:14', '2022-03-16 03:25:14'),
(55, 38, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-16 03:25:14', '2022-03-16 03:25:14'),
(56, 39, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-16 03:29:41', '2022-03-16 03:29:41'),
(57, 39, 1, 2, 'انجلندر', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 2, 200, 400, '200*300', 'https://dashboard.mattressesapp.com/storage/media/9a3fec9265931544e8e1e5eab00ca065.jpg', '2022-03-16 03:29:41', '2022-03-16 03:29:41'),
(58, 40, 2, 2, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 400, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-16 03:34:25', '2022-03-16 03:34:25'),
(59, 40, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-16 03:34:25', '2022-03-16 03:34:25'),
(60, 41, 1, 1, 'انجلندر', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 2, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/9a3fec9265931544e8e1e5eab00ca065.jpg', '2022-03-16 03:37:22', '2022-03-16 03:37:22'),
(61, 41, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-16 03:37:22', '2022-03-16 03:37:22'),
(62, 42, 1, 1, 'انجلندر', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 2, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/9a3fec9265931544e8e1e5eab00ca065.jpg', '2022-03-16 03:41:28', '2022-03-16 03:41:28'),
(63, 43, 1, 2, 'انجلندر', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 2, 200, 400, '200*300', 'https://dashboard.mattressesapp.com/storage/media/9a3fec9265931544e8e1e5eab00ca065.jpg', '2022-03-16 03:42:36', '2022-03-16 03:42:36'),
(64, 43, 2, 2, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 400, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-16 03:42:36', '2022-03-16 03:42:36'),
(65, 44, 2, 3, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 600, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-16 12:23:23', '2022-03-16 12:23:23'),
(66, 45, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-16 12:25:25', '2022-03-16 12:25:25'),
(67, 46, 1, 2, 'انجلندر', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 2, 200, 400, '200*300', 'https://dashboard.mattressesapp.com/storage/media/9a3fec9265931544e8e1e5eab00ca065.jpg', '2022-03-16 12:43:27', '2022-03-16 12:43:27'),
(68, 47, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-16 14:42:14', '2022-03-16 14:42:14'),
(69, 47, 2, 3, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 600, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-16 14:42:14', '2022-03-16 14:42:14'),
(70, 48, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-16 15:20:55', '2022-03-16 15:20:55'),
(71, 49, 1, 3, 'انجلندر', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 2, 200, 600, '200*300', 'https://dashboard.mattressesapp.com/storage/media/9a3fec9265931544e8e1e5eab00ca065.jpg', '2022-03-16 15:21:49', '2022-03-16 15:21:49'),
(72, 49, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-16 15:21:49', '2022-03-16 15:21:49'),
(73, 50, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-16 15:22:16', '2022-03-16 15:22:16'),
(74, 51, 1, 1, 'انجلندر', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 2, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/9a3fec9265931544e8e1e5eab00ca065.jpg', '2022-03-16 15:24:08', '2022-03-16 15:24:08'),
(75, 52, 1, 1, 'انجلندر', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 2, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/9a3fec9265931544e8e1e5eab00ca065.jpg', '2022-03-16 19:18:06', '2022-03-16 19:18:06'),
(76, 53, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-17 03:27:51', '2022-03-17 03:27:51'),
(77, 54, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-17 03:33:10', '2022-03-17 03:33:10'),
(78, 55, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-17 03:42:14', '2022-03-17 03:42:14'),
(79, 56, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-17 03:42:29', '2022-03-17 03:42:29'),
(80, 57, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-17 03:49:39', '2022-03-17 03:49:39'),
(81, 58, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-17 03:50:26', '2022-03-17 03:50:26'),
(82, 59, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-17 17:46:47', '2022-03-17 17:46:47'),
(83, 60, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-17 17:53:27', '2022-03-17 17:53:27'),
(84, 61, 2, 1, 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 1, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/69cc118bab41de4f6f0dd2f6bc764b1f.jpg', '2022-03-17 18:06:24', '2022-03-17 18:06:24'),
(85, 62, 1, 1, 'انجلندر', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 2, 200, 200, '200*300', 'https://dashboard.mattressesapp.com/storage/media/9a3fec9265931544e8e1e5eab00ca065.jpg', '2022-03-17 19:20:03', '2022-03-17 19:20:03'),
(86, 63, 4, 1, 'souversion', 'description', 2, 500, 500, '200*300', 'https://dashboard.mattressesapp.com/storage/media/44e651ef2be3c8e440e149af9f6ab66a.jpg', '2022-03-21 12:08:44', '2022-03-21 12:08:44'),
(87, 64, 8, 1, 'index', 'description', 1, 500, 500, '200*300', 'https://dashboard.mattressesapp.com/storage/media/e17e3667de2745d3cb84b2d642a3c58d.jpg', '2022-03-21 12:15:18', '2022-03-21 12:15:18'),
(88, 65, 10, 2, 'trigger', 'description', 0, 500, 1000, '200*300', 'https://dashboard.mattressesapp.com/storage/media/256d26e019575edef740bf6c1fdd4fe3.jpg', '2022-03-21 12:46:03', '2022-03-21 12:46:03'),
(89, 66, 5, 1, 'memortouch', 'description', 2, 500, 500, '200*300', 'https://dashboard.mattressesapp.com/storage/media/9d01f458e8db6c9f0006c0e5e47575bd.jpg', '2022-03-21 12:50:27', '2022-03-21 12:50:27'),
(90, 67, 10, 1, 'trigger', 'description', 0, 500, 500, '200*300', 'https://dashboard.mattressesapp.com/storage/media/256d26e019575edef740bf6c1fdd4fe3.jpg', '2022-03-21 13:00:29', '2022-03-21 13:00:29'),
(91, 68, 7, 1, 'nervana', 'description', 1, 500, 500, '200*300', 'https://dashboard.mattressesapp.com/storage/media/ea8b4a19156db7856afbf06c0743d613.jpg', '2022-03-21 13:03:16', '2022-03-21 13:03:16'),
(92, 68, 10, 1, 'trigger', 'description', 0, 500, 500, '200*300', 'https://dashboard.mattressesapp.com/storage/media/256d26e019575edef740bf6c1fdd4fe3.jpg', '2022-03-21 13:03:16', '2022-03-21 13:03:16');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `order_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 7, '2022-02-27 11:16:29', '2022-02-27 11:19:55'),
(2, 1, 3, '2022-02-27 11:17:16', '2022-02-27 11:17:16'),
(3, 1, 5, '2022-02-27 11:17:51', '2022-02-27 11:17:51'),
(4, 1, 6, '2022-02-27 11:19:12', '2022-02-27 11:19:12'),
(5, 1, 7, '2022-02-27 11:19:55', '2022-02-27 11:19:55'),
(6, 2, 1, '2022-02-27 13:19:47', '2022-02-27 13:19:47'),
(7, 3, 1, '2022-02-27 13:21:49', '2022-02-27 13:21:49'),
(8, 4, 1, '2022-02-27 13:31:57', '2022-02-27 13:31:57'),
(9, 5, 1, '2022-03-01 19:21:25', '2022-03-01 19:21:25'),
(10, 6, 1, '2022-03-02 12:24:35', '2022-03-02 12:24:35'),
(11, 7, 7, '2022-03-02 12:27:23', '2022-03-02 12:29:11'),
(12, 11, 3, '2022-03-02 12:27:57', '2022-03-02 12:27:57'),
(13, 11, 5, '2022-03-02 12:28:03', '2022-03-02 12:28:03'),
(14, 11, 6, '2022-03-02 12:29:05', '2022-03-02 12:29:05'),
(15, 11, 7, '2022-03-02 12:29:11', '2022-03-02 12:29:11'),
(16, 8, 7, '2022-03-02 12:34:15', '2022-03-02 12:35:33'),
(17, 16, 3, '2022-03-02 12:34:26', '2022-03-02 12:34:26'),
(18, 16, 5, '2022-03-02 12:34:31', '2022-03-02 12:34:31'),
(19, 16, 6, '2022-03-02 12:34:57', '2022-03-02 12:34:57'),
(20, 16, 7, '2022-03-02 12:35:33', '2022-03-02 12:35:33'),
(21, 9, 1, '2022-03-02 18:52:00', '2022-03-02 18:52:00'),
(22, 10, 1, '2022-03-02 19:01:43', '2022-03-02 19:01:43'),
(23, 11, 1, '2022-03-02 19:04:53', '2022-03-02 19:04:53'),
(24, 12, 1, '2022-03-02 19:16:15', '2022-03-02 19:16:15'),
(25, 13, 1, '2022-03-02 19:16:51', '2022-03-02 19:16:51'),
(26, 14, 1, '2022-03-02 19:17:57', '2022-03-02 19:17:57'),
(27, 15, 1, '2022-03-02 19:21:51', '2022-03-02 19:21:51'),
(28, 16, 1, '2022-03-02 19:22:22', '2022-03-02 19:22:22'),
(29, 17, 1, '2022-03-02 19:22:48', '2022-03-02 19:22:48'),
(30, 18, 7, '2022-03-05 18:04:00', '2022-03-15 12:45:40'),
(31, 19, 7, '2022-03-05 18:21:33', '2022-03-15 12:46:37'),
(32, 20, 3, '2022-03-05 18:33:54', '2022-03-15 12:46:49'),
(33, 21, 4, '2022-03-05 18:49:37', '2022-03-15 12:48:01'),
(34, 22, 1, '2022-03-10 09:50:08', '2022-03-10 09:50:08'),
(35, 23, 1, '2022-03-10 09:50:43', '2022-03-10 09:50:43'),
(36, 24, 7, '2022-03-10 13:21:03', '2022-03-10 13:24:34'),
(37, 25, 1, '2022-03-10 13:23:10', '2022-03-10 13:23:10'),
(38, 36, 3, '2022-03-10 13:23:37', '2022-03-10 13:23:37'),
(39, 36, 5, '2022-03-10 13:24:01', '2022-03-10 13:24:01'),
(40, 36, 6, '2022-03-10 13:24:20', '2022-03-10 13:24:20'),
(41, 36, 7, '2022-03-10 13:24:34', '2022-03-10 13:24:34'),
(42, 26, 3, '2022-03-15 12:39:50', '2022-03-15 12:44:59'),
(43, 42, 3, '2022-03-15 12:44:59', '2022-03-15 12:44:59'),
(44, 30, 3, '2022-03-15 12:45:14', '2022-03-15 12:45:14'),
(45, 30, 5, '2022-03-15 12:45:24', '2022-03-15 12:45:24'),
(46, 30, 6, '2022-03-15 12:45:32', '2022-03-15 12:45:32'),
(47, 30, 7, '2022-03-15 12:45:40', '2022-03-15 12:45:40'),
(48, 31, 7, '2022-03-15 12:46:02', '2022-03-15 22:50:34'),
(49, 31, 5, '2022-03-15 12:46:13', '2022-03-15 12:46:13'),
(50, 31, 6, '2022-03-15 12:46:26', '2022-03-15 12:46:26'),
(51, 31, 7, '2022-03-15 12:46:37', '2022-03-15 12:46:37'),
(52, 32, 3, '2022-03-15 12:46:49', '2022-03-15 12:46:49'),
(53, 33, 3, '2022-03-15 12:47:48', '2022-03-15 12:47:48'),
(54, 33, 4, '2022-03-15 12:48:01', '2022-03-15 12:48:01'),
(55, 27, 1, '2022-03-15 20:39:49', '2022-03-15 20:39:49'),
(56, 28, 1, '2022-03-15 20:40:40', '2022-03-15 20:40:40'),
(57, 29, 1, '2022-03-15 20:41:54', '2022-03-15 20:41:54'),
(58, 30, 1, '2022-03-15 20:42:34', '2022-03-15 20:42:34'),
(59, 31, 1, '2022-03-15 22:37:17', '2022-03-15 22:37:17'),
(60, 48, 5, '2022-03-15 22:50:09', '2022-03-15 22:50:09'),
(61, 48, 6, '2022-03-15 22:50:23', '2022-03-15 22:50:23'),
(62, 48, 7, '2022-03-15 22:50:34', '2022-03-15 22:50:34'),
(63, 32, 1, '2022-03-16 02:44:20', '2022-03-16 02:44:20'),
(64, 33, 1, '2022-03-16 03:19:10', '2022-03-16 03:19:10'),
(65, 34, 1, '2022-03-16 03:21:29', '2022-03-16 03:21:29'),
(66, 35, 1, '2022-03-16 03:22:33', '2022-03-16 03:22:33'),
(67, 36, 1, '2022-03-16 03:23:02', '2022-03-16 03:23:02'),
(68, 37, 1, '2022-03-16 03:23:39', '2022-03-16 03:23:39'),
(69, 38, 1, '2022-03-16 03:25:14', '2022-03-16 03:25:14'),
(70, 39, 1, '2022-03-16 03:29:41', '2022-03-16 03:29:41'),
(71, 40, 1, '2022-03-16 03:34:25', '2022-03-16 03:34:25'),
(72, 41, 1, '2022-03-16 03:37:22', '2022-03-16 03:37:22'),
(73, 42, 1, '2022-03-16 03:41:28', '2022-03-16 03:41:28'),
(74, 43, 1, '2022-03-16 03:42:36', '2022-03-16 03:42:36'),
(75, 44, 7, '2022-03-16 12:23:23', '2022-03-16 12:24:55'),
(76, 75, 3, '2022-03-16 12:24:32', '2022-03-16 12:24:32'),
(77, 75, 5, '2022-03-16 12:24:39', '2022-03-16 12:24:39'),
(78, 75, 6, '2022-03-16 12:24:49', '2022-03-16 12:24:49'),
(79, 75, 7, '2022-03-16 12:24:55', '2022-03-16 12:24:55'),
(80, 45, 1, '2022-03-16 12:25:25', '2022-03-16 12:25:25'),
(81, 46, 7, '2022-03-16 12:43:27', '2022-03-16 12:45:25'),
(82, 81, 3, '2022-03-16 12:44:54', '2022-03-16 12:44:54'),
(83, 81, 5, '2022-03-16 12:45:09', '2022-03-16 12:45:09'),
(84, 81, 6, '2022-03-16 12:45:18', '2022-03-16 12:45:18'),
(85, 81, 7, '2022-03-16 12:45:25', '2022-03-16 12:45:25'),
(86, 47, 1, '2022-03-16 14:42:14', '2022-03-16 14:42:14'),
(87, 48, 1, '2022-03-16 15:20:55', '2022-03-16 15:20:55'),
(88, 49, 1, '2022-03-16 15:21:49', '2022-03-16 15:21:49'),
(89, 50, 1, '2022-03-16 15:22:16', '2022-03-16 15:22:16'),
(90, 51, 1, '2022-03-16 15:24:08', '2022-03-16 15:24:08'),
(91, 52, 1, '2022-03-16 19:18:06', '2022-03-16 19:18:06'),
(92, 53, 1, '2022-03-17 03:27:51', '2022-03-17 03:27:51'),
(93, 54, 1, '2022-03-17 03:33:10', '2022-03-17 03:33:10'),
(94, 55, 1, '2022-03-17 03:42:14', '2022-03-17 03:42:14'),
(95, 56, 1, '2022-03-17 03:42:29', '2022-03-17 03:42:29'),
(96, 57, 1, '2022-03-17 03:49:39', '2022-03-17 03:49:39'),
(97, 58, 1, '2022-03-17 03:50:26', '2022-03-17 03:50:26'),
(98, 59, 1, '2022-03-17 17:46:47', '2022-03-17 17:46:47'),
(99, 60, 1, '2022-03-17 17:53:27', '2022-03-17 17:53:27'),
(100, 61, 1, '2022-03-17 18:06:24', '2022-03-17 18:06:24'),
(101, 62, 1, '2022-03-17 19:20:03', '2022-03-17 19:20:03'),
(102, 63, 7, '2022-03-21 12:08:44', '2022-03-21 12:10:54'),
(103, 102, 3, '2022-03-21 12:09:07', '2022-03-21 12:09:07'),
(104, 102, 5, '2022-03-21 12:09:41', '2022-03-21 12:09:41'),
(105, 102, 6, '2022-03-21 12:10:29', '2022-03-21 12:10:29'),
(106, 102, 7, '2022-03-21 12:10:54', '2022-03-21 12:10:54'),
(107, 64, 1, '2022-03-21 12:15:18', '2022-03-21 12:15:18'),
(108, 65, 7, '2022-03-21 12:46:03', '2022-03-21 12:49:20'),
(109, 108, 3, '2022-03-21 12:47:39', '2022-03-21 12:47:39'),
(110, 108, 5, '2022-03-21 12:47:57', '2022-03-21 12:47:57'),
(111, 108, 6, '2022-03-21 12:49:06', '2022-03-21 12:49:06'),
(112, 108, 7, '2022-03-21 12:49:20', '2022-03-21 12:49:20'),
(113, 66, 1, '2022-03-21 12:50:27', '2022-03-21 12:50:27'),
(114, 67, 1, '2022-03-21 13:00:29', '2022-03-21 13:00:29'),
(115, 68, 1, '2022-03-21 13:03:16', '2022-03-21 13:03:16');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `name_ar`, `key`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'App Management', 'إدارة التطبيق', 'app_managements', NULL, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(2, 'Employees', 'الموظفين', 'employees', 1, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(3, 'Roles', 'الأدوار', 'roles', 1, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(4, 'App Data', 'بيانات التطبيق', 'app_data', NULL, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(5, 'Settings', 'الإعدادات', 'settings', 4, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(6, 'Countries', 'الدول', 'countries', 4, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(7, 'Cities', 'المدن', 'cities', 4, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(8, 'Splash Screens', 'شاشات السبلاش', 'splash_screens', 4, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(9, 'Brands', 'البراندات', 'brands', 4, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(10, 'Categories', 'التصنيفات', 'categories', 4, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(11, 'App Content', 'محتوى التطبيق', 'app_content', NULL, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(12, 'Advertisements', 'الاعلانات', 'advertisements', 11, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(13, 'Products', 'المنتجات', 'products', 11, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(14, 'Offers', 'العروض', 'offers', 11, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(15, 'orders', 'الطلبات', 'orders', 11, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(16, 'Discounts', 'الخصومات', 'discounts', 11, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(17, 'Users Managements', 'إدارة المستخدمين', 'user_managements', NULL, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(18, 'Users', 'المستخدمين', 'users', 17, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(19, 'Tickets', 'التذاكر', 'tickets', 17, '2022-02-27 10:52:39', '2022-02-27 10:52:39');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `product_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quality` tinyint(4) NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `product_no`, `name`, `name_ar`, `description`, `description_ar`, `quality`, `country_id`, `active`, `created_at`, `updated_at`) VALUES
(1, 4, '2001', 'انجلندر', 'انجلندر', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 'مرتبة SleepX المزدوجة المريحة مقاس 5 بوصات مقاس سرير مفرد ، عالية الكثافة (HD) إسفنج - متوسط ​​النعومة والصلب', 2, 1, 1, '2022-02-27 11:13:33', '2022-03-21 11:37:09'),
(2, 6, '2001', 'يانسن', 'يانسن', 'SleepX Dual Comfort Mattress 5 inch Single Bed Size, High Density (HD) Foam- Medium Soft & Hard', 'مرتبة SleepX المزدوجة المريحة مقاس 5 بوصات مقاس سرير مفرد ، عالية الكثافة (HD) إسفنج - متوسط ​​النعومة والصلب', 1, 2, 1, '2022-02-27 11:14:38', '2022-03-21 11:37:23'),
(3, 5, 'ab123', 'سليب فاين بلس', 'منتج1', 'description', 'وصف المنتج', 2, 5, 1, '2022-03-21 11:47:13', '2022-03-21 11:49:37'),
(4, 5, 'a123', 'souversion', 'سوفرجن', 'description', 'وصف المنتج', 2, 5, 1, '2022-03-21 11:50:31', '2022-03-21 11:50:31'),
(5, 5, 'ac123', 'memortouch', 'ميمور تاتش', 'description', 'وصف المنتج', 2, 5, 1, '2022-03-21 11:51:09', '2022-03-21 11:51:09'),
(6, 5, 'as123', 'liberty', 'ليبرتى', 'description', 'وصف المنتج', 1, 5, 1, '2022-03-21 11:52:02', '2022-03-21 11:52:02'),
(7, 5, 'ad123', 'nervana', 'نيرفانا', 'description', 'وصف المنتج', 1, 5, 1, '2022-03-21 11:52:38', '2022-03-21 11:52:38'),
(8, 5, 'az123', 'index', 'انديكس', 'description', 'وصف المنتج', 1, 5, 1, '2022-03-21 11:53:16', '2022-03-21 11:53:16'),
(9, 5, 'af123', 'cendrella', 'سندريلا', 'description', 'وصف المنتج', 0, 5, 1, '2022-03-21 11:53:50', '2022-03-21 11:53:50'),
(10, 5, 'qa123', 'trigger', 'ترجر', 'description', 'وصف المنتج', 0, 5, 1, '2022-03-21 11:54:30', '2022-03-21 11:54:30'),
(11, 5, 'ba123', 'dana', 'دانا', 'description', 'وصف المنتج', 0, 5, 1, '2022-03-21 11:55:07', '2022-03-21 11:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `rate` tinyint(4) NOT NULL,
  `review` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `order_id`, `product_id`, `user_id`, `rate`, `review`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 1, 5, 'سيبسيب', '2022-03-10 09:55:15', '2022-03-10 09:55:15'),
(2, 5, 1, 1, 5, 'سيبسيب', '2022-03-12 11:43:27', '2022-03-12 11:43:27'),
(3, 5, 1, 1, 5, 'سيبسيب', '2022-03-12 12:01:47', '2022-03-12 12:01:47'),
(4, 1, 1, 1, 4, 'سيبسيب', '2022-03-12 12:35:01', '2022-03-12 12:35:01'),
(5, 1, 1, 1, 1, 'سيبسيب', '2022-03-12 12:38:57', '2022-03-12 12:38:57'),
(6, 1, 1, 1, 5, 'abc', '2022-03-14 20:46:07', '2022-03-14 20:46:07'),
(7, 1, 1, 1, 4, 'abbbc', '2022-03-14 20:46:07', '2022-03-14 20:46:07'),
(8, 1, 1, 1, 5, 'abc', '2022-03-14 20:59:21', '2022-03-14 20:59:21'),
(9, 1, 1, 1, 4, 'abbbc', '2022-03-14 20:59:21', '2022-03-14 20:59:21'),
(10, 1, 1, 1, 3, 'aaabb', '2022-03-14 20:59:21', '2022-03-14 20:59:21'),
(11, 18, 1, 7, 3, 'test', '2022-03-15 21:51:38', '2022-03-15 21:51:38'),
(12, 18, 1, 7, 1, 'Test product', '2022-03-15 22:06:24', '2022-03-15 22:06:24'),
(13, 18, 1, 7, 3, 'T', '2022-03-15 22:07:50', '2022-03-15 22:07:50'),
(14, 19, 1, 7, 2, 'Ttt', '2022-03-15 22:10:38', '2022-03-15 22:10:38'),
(15, 1, 1, 1, 5, NULL, '2022-03-15 22:29:33', '2022-03-15 22:29:33'),
(16, 1, 1, 1, 4, NULL, '2022-03-15 22:29:33', '2022-03-15 22:29:33'),
(17, 1, 1, 1, 3, NULL, '2022-03-15 22:29:33', '2022-03-15 22:29:33'),
(18, 18, 1, 7, 3, NULL, '2022-03-15 22:36:07', '2022-03-15 22:36:07'),
(19, 31, 2, 7, 4, NULL, '2022-03-15 22:51:07', '2022-03-15 22:51:07'),
(20, 31, 1, 7, 5, NULL, '2022-03-15 22:51:07', '2022-03-15 22:51:07'),
(21, 31, 2, 7, 3, NULL, '2022-03-15 22:51:07', '2022-03-15 22:51:07'),
(22, 31, 1, 7, 3, NULL, '2022-03-15 22:51:07', '2022-03-15 22:51:07'),
(23, 42, 1, 4, 4, NULL, '2022-03-16 03:41:32', '2022-03-16 03:41:32'),
(24, 43, 1, 4, 4, NULL, '2022-03-16 03:42:42', '2022-03-16 03:42:42'),
(25, 43, 2, 4, 5, NULL, '2022-03-16 03:42:42', '2022-03-16 03:42:42'),
(26, 18, 1, 7, 3, NULL, '2022-03-16 10:01:39', '2022-03-16 10:01:39'),
(27, 7, 2, 3, 5, NULL, '2022-03-16 12:45:40', '2022-03-16 12:45:40'),
(28, 8, 1, 1, 3, NULL, '2022-03-16 14:56:27', '2022-03-16 14:56:27'),
(29, 63, 4, 1, 5, NULL, '2022-03-21 12:11:35', '2022-03-21 12:11:35'),
(30, 65, 10, 1, 5, NULL, '2022-03-21 12:49:44', '2022-03-21 12:49:44');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `name_ar`, `created_at`, `updated_at`) VALUES
(1, 'Super Dashboard', 'مدير عام', '2022-02-27 10:52:39', '2022-02-27 10:52:39');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(2, 1, 2, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(3, 1, 3, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(4, 1, 4, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(5, 1, 5, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(6, 1, 6, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(7, 1, 7, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(8, 1, 8, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(9, 1, 9, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(10, 1, 10, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(11, 1, 11, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(12, 1, 12, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(13, 1, 13, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(14, 1, 14, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(15, 1, 15, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(16, 1, 16, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(17, 1, 17, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(18, 1, 18, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(19, 1, 19, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(20, 1, 1, '2022-03-21 11:15:05', '2022-03-21 11:15:05'),
(21, 1, 2, '2022-03-21 11:15:05', '2022-03-21 11:15:05'),
(22, 1, 3, '2022-03-21 11:15:05', '2022-03-21 11:15:05'),
(23, 1, 4, '2022-03-21 11:15:05', '2022-03-21 11:15:05'),
(24, 1, 5, '2022-03-21 11:15:05', '2022-03-21 11:15:05'),
(25, 1, 6, '2022-03-21 11:15:05', '2022-03-21 11:15:05'),
(26, 1, 7, '2022-03-21 11:15:05', '2022-03-21 11:15:05'),
(27, 1, 8, '2022-03-21 11:15:05', '2022-03-21 11:15:05'),
(28, 1, 9, '2022-03-21 11:15:05', '2022-03-21 11:15:05'),
(29, 1, 10, '2022-03-21 11:15:05', '2022-03-21 11:15:05'),
(30, 1, 11, '2022-03-21 11:15:05', '2022-03-21 11:15:05'),
(31, 1, 12, '2022-03-21 11:15:05', '2022-03-21 11:15:05'),
(32, 1, 13, '2022-03-21 11:15:05', '2022-03-21 11:15:05'),
(33, 1, 14, '2022-03-21 11:15:05', '2022-03-21 11:15:05'),
(34, 1, 15, '2022-03-21 11:15:05', '2022-03-21 11:15:05'),
(35, 1, 16, '2022-03-21 11:15:05', '2022-03-21 11:15:05'),
(36, 1, 17, '2022-03-21 11:15:05', '2022-03-21 11:15:05'),
(37, 1, 18, '2022-03-21 11:15:05', '2022-03-21 11:15:05'),
(38, 1, 19, '2022-03-21 11:15:05', '2022-03-21 11:15:05');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value_ar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 3,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `name`, `name_ar`, `value`, `value_ar`, `type`, `created_at`, `updated_at`) VALUES
(1, 'privacy', 'Privacy Policy', 'سياسة الخصوصية', 'Privacy Policy', 'سياسة الخصوصية', 1, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(2, 'about', 'About Us', 'من نحن', 'About Us', 'من نحن', 1, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(3, 'terms', 'Terms And Conditions', 'الشروط والأحكام', 'Terms And Conditions', 'الشروط والأحكام', 1, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(4, 'cookies', 'Cookies', 'ملفات تعريف الارتباط', 'Cookies', 'ملفات تعريف الارتباط', 1, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(5, 'support', 'Support', 'الدعم', 'Support', 'الدعم', 1, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(6, 'twitter', 'Twitter', 'حساب تويتر', '', '', 3, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(7, 'facebook', 'Facebook', 'حساب الفيسبوك', '', '', 3, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(8, 'instagram', 'Instagram', 'حساب الانستقرام', 'https://www.instagram.com/', 'https://www.instagram.com/', 3, '2022-02-27 10:52:39', '2022-03-22 08:56:34'),
(9, 'linkedin', 'LinkedIn', 'حساب اللينكد ان', '', '', 3, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(10, 'email', 'Email', 'البريد الالكتروني', '', '', 3, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(11, 'mobile', 'Mobile', 'رقم الجوال', '', '', 3, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(12, 'app_store_link', 'App Store Link', 'رابط متجر ابل', '', '', 3, '2022-02-27 10:52:39', '2022-02-27 10:52:39'),
(13, 'play_store_link', 'Google Play Store Link', ' رابط متجر جوجل بلاي', '', '', 3, '2022-02-27 10:52:39', '2022-02-27 10:52:39');

-- --------------------------------------------------------

--
-- Table structure for table `size_price`
--

CREATE TABLE `size_price` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `size_price`
--

INSERT INTO `size_price` (`id`, `size`, `price`, `product_id`, `active`, `created_at`, `updated_at`) VALUES
(7, '200*300', '500', 1, 1, '2022-03-21 11:37:09', '2022-03-21 11:37:09'),
(8, '300*400', '700', 1, 1, '2022-03-21 11:37:09', '2022-03-21 11:37:09'),
(9, '200*300', '500', 2, 1, '2022-03-21 11:37:23', '2022-03-21 11:37:23'),
(11, '200*300', '500', 3, 1, '2022-03-21 11:49:37', '2022-03-21 11:49:37'),
(12, '200*300', '500', 4, 1, '2022-03-21 11:50:31', '2022-03-21 11:50:31'),
(13, '200*300', '500', 5, 1, '2022-03-21 11:51:09', '2022-03-21 11:51:09'),
(14, '200*300', '500', 6, 1, '2022-03-21 11:52:02', '2022-03-21 11:52:02'),
(15, '200*300', '500', 7, 1, '2022-03-21 11:52:38', '2022-03-21 11:52:38'),
(16, '200*300', '500', 8, 1, '2022-03-21 11:53:16', '2022-03-21 11:53:16'),
(17, '200*300', '500', 9, 1, '2022-03-21 11:53:50', '2022-03-21 11:53:50'),
(22, '200*300', '500', 11, 1, '2022-03-21 12:19:58', '2022-03-21 12:19:58'),
(24, '200*300', '500', 10, 1, '2022-03-21 12:21:47', '2022-03-21 12:21:47');

-- --------------------------------------------------------

--
-- Table structure for table `social_login`
--

CREATE TABLE `social_login` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `splash_screens`
--

CREATE TABLE `splash_screens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint(4) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `splash_screens`
--

INSERT INTO `splash_screens` (`id`, `title`, `title_ar`, `description`, `description_ar`, `image`, `order`, `active`, `created_at`, `updated_at`) VALUES
(1, 'splash1', 'سبلاش1', 'description whatever', 'وصف تحريري', 'storage/media/d4dcb6d4b0f8c07a941682355ac4876b.jpg', 1, 1, '2022-03-21 11:28:40', '2022-03-21 11:28:40');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `user_id`, `name`, `email`, `title`, `message`, `attachment`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'hadeel', 'hadeelmikki155@gmail.com', 'ticket1', 'hello', NULL, 2, '2022-03-22 09:04:25', '2022-03-22 09:17:22');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_responses`
--

CREATE TABLE `ticket_responses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `response` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_type` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `ref_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` tinyint(4) NOT NULL,
  `value` double(8,2) NOT NULL,
  `payment_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `points` int(11) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `mobile_verified_at` timestamp NULL DEFAULT NULL,
  `ref_affiltiate_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affiltiate_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fb_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `country_id`, `city_id`, `address`, `lat`, `lng`, `device_type`, `device_token`, `image`, `password`, `app_locale`, `points`, `email_verified_at`, `mobile_verified_at`, `ref_affiltiate_code`, `affiltiate_code`, `active`, `remember_token`, `created_at`, `updated_at`, `fb_id`, `provider_name`, `provider_id`) VALUES
(1, 'hadeel', 'hadeelmikki155@gmail.com', '05956705455', 5, 1, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$QMJMj0ReRY1FjbKz5KISXuXrnFbAOFhIiNhSMboPiPYw46z4ygIC6', 'en', 0, NULL, NULL, NULL, '80714', 1, NULL, '2022-02-27 11:15:09', '2022-03-21 12:56:07', NULL, NULL, NULL),
(2, 'alaa', 'al@gmail.com', '1234', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$AYUaBMVG2FhkbgNBvcFONOWoHQ18sFnLoH3Q3RsO2DdSywbf1erAG', 'en', 0, NULL, NULL, NULL, '28609', 1, NULL, '2022-03-02 08:13:48', '2022-03-02 08:23:23', NULL, NULL, NULL),
(3, 'Ahmed', 'Hadeel@gmail.com', '0592106341', 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ZLXcQ3V.eh49h2n7zf1HTOIXNIX.nLOcqbwJbzXExUAM4IFwP8G0q', 'en', 0, NULL, NULL, NULL, '15187', 1, NULL, '2022-03-02 12:24:59', '2022-03-21 12:40:19', NULL, NULL, NULL),
(4, 'ayaTest', 'aya.r.h98@gmail.com', '0597982450', 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$wR8C0yNDcbQZrzik5/6XPuuwru8j4sCX0IaRP1j4bMy.mn1X/aLd.', 'en', 0, NULL, NULL, NULL, '69324', 1, NULL, '2022-03-02 17:32:13', '2022-03-02 17:32:13', NULL, NULL, NULL),
(6, 'ayaTest22', 'ayahabeeb02@gmail.com', '0597982451', 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$MxQf1M36odZWT.HusUV9meq2Vy0j1lAQl6knhw2KIDw3VWAnPwXw.', 'en', 0, NULL, NULL, NULL, '58241', 1, NULL, '2022-03-03 04:49:23', '2022-03-03 04:49:23', NULL, NULL, NULL),
(7, 'Alaa', 'sh@gmail.com', '12345', 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$13ENENn8mQbZPkk6/wCa5.5r9R/SQ3Ab8NKTDLLCN2Gk5K4Rjkuii', 'en', 0, NULL, NULL, NULL, '83249', 1, NULL, '2022-03-05 17:57:23', '2022-03-17 10:37:12', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `verify_accounts`
--

CREATE TABLE `verify_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `verify_accounts`
--

INSERT INTO `verify_accounts` (`id`, `user_id`, `token`, `code`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 'EdiczIFOitoISY4Lkh4Cnh6NRACm7240NFfjrvp21645960509', '76558', 1, '2022-02-27 11:15:09', '2022-02-27 11:15:09'),
(2, 1, 'EdiczIFOitoISY4Lkh4Cnh6NRACm7240NFfjrvp21645960509', '39231', 2, '2022-02-27 11:15:09', '2022-02-27 11:15:09'),
(3, 2, 'MzsM2M0fEPPLb0GIWPhaeXQoVG12TUBlKbQvIY6n1646208828', '85898', 1, '2022-03-02 08:13:48', '2022-03-02 08:13:48'),
(4, 2, 'MzsM2M0fEPPLb0GIWPhaeXQoVG12TUBlKbQvIY6n1646208828', '90003', 2, '2022-03-02 08:13:48', '2022-03-02 08:13:48'),
(5, 3, 'GXeLpfyCIn2THuyi5xOqLtbjj1kD02ZsrSglTinI1646223899', '11393', 1, '2022-03-02 12:24:59', '2022-03-02 12:24:59'),
(6, 3, 'GXeLpfyCIn2THuyi5xOqLtbjj1kD02ZsrSglTinI1646223899', '82673', 2, '2022-03-02 12:24:59', '2022-03-02 12:24:59'),
(7, 4, '9h9u2ZGtmak0jZQveu6noTL4Y2EtIUkJ5mKyA7Zu1646242333', '50121', 1, '2022-03-02 17:32:13', '2022-03-02 17:32:13'),
(8, 4, '9h9u2ZGtmak0jZQveu6noTL4Y2EtIUkJ5mKyA7Zu1646242333', '93016', 2, '2022-03-02 17:32:13', '2022-03-02 17:32:13'),
(9, 5, '1FWeyVc62WoeZs6rqDjYNmTE6V8qlpqYXtr03VQp1646282301', '89434', 1, '2022-03-03 04:38:21', '2022-03-03 04:38:21'),
(10, 5, '1FWeyVc62WoeZs6rqDjYNmTE6V8qlpqYXtr03VQp1646282301', '79773', 2, '2022-03-03 04:38:21', '2022-03-03 04:38:21'),
(11, 6, 'eLIlKaccbQgBaVBMas1wIaeyT9RrZ6bltrcU4K2W1646282963', '71724', 1, '2022-03-03 04:49:23', '2022-03-03 04:49:23'),
(12, 6, 'eLIlKaccbQgBaVBMas1wIaeyT9RrZ6bltrcU4K2W1646282963', '46435', 2, '2022-03-03 04:49:23', '2022-03-03 04:49:23'),
(13, 7, 'i0XV8oWOosrLbu4nPNGR7NdPVOBFfqGlU0coUO1U1646503043', '26718', 1, '2022-03-05 17:57:23', '2022-03-05 17:57:23'),
(14, 7, 'i0XV8oWOosrLbu4nPNGR7NdPVOBFfqGlU0coUO1U1646503043', '42959', 2, '2022-03-05 17:57:23', '2022-03-05 17:57:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coins`
--
ALTER TABLE `coins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coins_name_unique` (`name`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `discounts_code_unique` (`code`);

--
-- Indexes for table `discounts_history`
--
ALTER TABLE `discounts_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmail_social_accounts`
--
ALTER TABLE `gmail_social_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_permissions`
--
ALTER TABLE `model_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `model_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `model_roles`
--
ALTER TABLE `model_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers_products`
--
ALTER TABLE `offers_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer_size_price`
--
ALTER TABLE `offer_size_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `size_price`
--
ALTER TABLE `size_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_login`
--
ALTER TABLE `social_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `splash_screens`
--
ALTER TABLE `splash_screens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_responses`
--
ALTER TABLE `ticket_responses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `users_affiltiate_code_unique` (`affiltiate_code`);

--
-- Indexes for table `verify_accounts`
--
ALTER TABLE `verify_accounts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `coins`
--
ALTER TABLE `coins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `discounts_history`
--
ALTER TABLE `discounts_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `gmail_social_accounts`
--
ALTER TABLE `gmail_social_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `model_permissions`
--
ALTER TABLE `model_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `model_roles`
--
ALTER TABLE `model_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `offers_products`
--
ALTER TABLE `offers_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offer_size_price`
--
ALTER TABLE `offer_size_price`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `size_price`
--
ALTER TABLE `size_price`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `social_login`
--
ALTER TABLE `social_login`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `splash_screens`
--
ALTER TABLE `splash_screens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ticket_responses`
--
ALTER TABLE `ticket_responses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `verify_accounts`
--
ALTER TABLE `verify_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_permissions`
--
ALTER TABLE `model_permissions`
  ADD CONSTRAINT `model_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
