-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2022 at 12:20 PM
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
-- Database: `mattress`
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
(1, 1, 1, 1, 'add1', 'address', '25', '30', '123123', '2022-03-12 10:20:06', '2022-03-12 10:20:06');

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
(1, '1', 'خاصية', 'خاصية', 'وصف الخاصية', 'وصف الخاصية', 1, '2022-03-12 10:18:55', '2022-03-12 10:18:55'),
(2, '2', 'خاصية', 'خاصية', 'وصف الخاصية', 'وصف الخاصية', 1, '2022-03-12 10:21:21', '2022-03-12 10:21:21');

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
(1, 'brand1', 'براند1', 'storage/media/f89a52758934e250548d5336e6d1b664.jpg', 1, '2022-03-12 10:18:01', '2022-03-12 10:18:01');

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
(1, 1, 'cat1', 'قسم1', 1, '2022-03-12 10:18:18', '2022-03-12 10:18:18');

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
(1, 'gaza', 'غزة', 1, 1, '2022-03-12 10:16:57', '2022-03-12 10:16:57');

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
(1, 'AED', 3.674768, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(2, 'AFN', 88.375963, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(3, 'ALL', 113.078533, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(4, 'AMD', 515.218063, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(5, 'ANG', 1.800811, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(6, 'AOA', 473.100025, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(7, 'ARS', 108.821338, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(8, 'AUD', 1.372335, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(9, 'AWG', 1.8012, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(10, 'AZN', 1.70075, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(11, 'BAM', 1.774226, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(12, 'BBD', 2.001546, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(13, 'BDT', 85.927664, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(14, 'BGN', 1.788637, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(15, 'BHD', 0.377238, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(16, 'BIF', 2015.499212, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(17, 'BMD', 1.000773, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(18, 'BND', 1.358204, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(19, 'BOB', 6.875431, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(20, 'BRL', 5.077118, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(21, 'BSD', 1.000725, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(22, 'BTC', 0.000026, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(23, 'BTN', 76.237216, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(24, 'BWP', 11.563964, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(25, 'BYN', 3.286258, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(26, 'BZD', 2.0131, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(27, 'CAD', 1.275517, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(28, 'CDF', 2014.998689, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(29, 'CHF', 0.935656, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(30, 'CLF', 0.029665, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(31, 'CLP', 806.160496, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(32, 'CNH', 6.360702, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(33, 'CNY', 6.341545, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(34, 'COP', 3856.326693, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(35, 'CRC', 648.386278, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(36, 'CUC', 1.000736, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(37, 'CUP', 25.757541, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(38, 'CVE', 101.325395, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(39, 'CZK', 23.022905, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(40, 'DJF', 178.094697, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(41, 'DKK', 6.81989, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(42, 'DOP', 54.944645, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(43, 'DZD', 143.122118, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(44, 'EGP', 15.686743, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(45, 'ERN', 15.004207, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(46, 'ETB', 50.887706, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(47, 'EUR', 0.917141, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(48, 'FJD', 2.117387, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(49, 'FKP', 0.767525, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(50, 'GBP', 0.767416, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(51, 'GEL', 3.218792, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(52, 'GGP', 0.767187, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(53, 'GHS', 7.089106, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(54, 'GIP', 0.767882, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(55, 'GMD', 53.363355, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(56, 'GNF', 8952.215053, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(57, 'GTQ', 7.696988, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(58, 'GYD', 208.895082, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(59, 'HKD', 7.831615, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(60, 'HNL', 24.486345, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(61, 'HRK', 6.938006, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(62, 'HTG', 106.436384, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(63, 'HUF', 350.397112, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(64, 'IDR', 14330.545668, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(65, 'ILS', 3.252354, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(66, 'IMP', 0.767211, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(67, 'INR', 76.779059, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(68, 'IQD', 1460.86192, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(69, 'IRR', 42310.468046, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(70, 'ISK', 132.843815, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(71, 'JEP', 0.767971, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(72, 'JMD', 153.007412, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(73, 'JOD', 0.709786, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(74, 'JPY', 117.317348, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(75, 'KES', 114.22915, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(76, 'KGS', 98.966501, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(77, 'KHR', 4056.004155, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(78, 'KMF', 451.252282, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(79, 'KPW', 900.223, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(80, 'KRW', 1237.4113, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(81, 'KWD', 0.304167, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(82, 'KYD', 0.832653, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(83, 'KZT', 524.03696, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(84, 'LAK', 11472.838714, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(85, 'LBP', 1511.078641, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(86, 'LKR', 254.603905, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(87, 'LRD', 153.888463, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(88, 'LSL', 15.084354, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(89, 'LYD', 4.637276, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(90, 'MAD', 9.740654, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(91, 'MDL', 18.422125, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(92, 'MGA', 4020.994931, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(93, 'MKD', 55.885685, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(94, 'MMK', 1775.382385, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(95, 'MNT', 2872.836524, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(96, 'MOP', 8.048834, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(97, 'MRU', 36.409193, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(98, 'MUR', 44.511011, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(99, 'MVR', 15.454576, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(100, 'MWK', 804.699086, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(101, 'MXN', 20.927686, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(102, 'MYR', 4.195806, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(103, 'MZN', 63.866399, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(104, 'NAD', 15.084327, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(105, 'NGN', 415.943672, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(106, 'NIO', 35.71489, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(107, 'NOK', 9.010177, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(108, 'NPR', 121.976535, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(109, 'NZD', 1.469917, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(110, 'OMR', 0.385287, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(111, 'PAB', 0.999973, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(112, 'PEN', 3.703774, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(113, 'PGK', 3.511328, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(114, 'PHP', 52.40014, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(115, 'PKR', 178.744467, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(116, 'PLN', 4.388001, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(117, 'PYG', 6962.628468, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(118, 'QAR', 3.642355, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(119, 'RON', 4.537463, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(120, 'RSD', 107.826408, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(121, 'RUB', 134.034164, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(122, 'RWF', 1013.559936, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(123, 'SAR', 3.752495, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(124, 'SBD', 8.050679, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(125, 'SCR', 14.419529, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(126, 'SDG', 446.611136, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(127, 'SEK', 9.750077, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(128, 'SGD', 1.362319, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(129, 'SHP', 0.767865, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(130, 'SLL', 11533.003865, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(131, 'SOS', 584.145689, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(132, 'SRD', 20.584972, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(133, 'SSP', 130.292995, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(134, 'STD', 21387.482533, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(135, 'STN', 22.656221, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(136, 'SVC', 8.737653, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(137, 'SYP', 2512.622237, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(138, 'SZL', 15.083707, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(139, 'THB', 33.373109, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(140, 'TJS', 13.035905, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(141, 'TMT', 3.501499, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(142, 'TND', 2.943136, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(143, 'TOP', 2.263099, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(144, 'TRY', 14.768633, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(145, 'TTD', 6.78269, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(146, 'TWD', 28.420076, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(147, 'TZS', 2316.572978, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(148, 'UAH', 29.355005, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(149, 'UGX', 3609.451486, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(150, 'USD', 1, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(151, 'UYU', 42.63327, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(152, 'UZS', 10957.711065, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(153, 'VES', 4.326489, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(154, 'VND', 22883.722912, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(155, 'VUV', 113.996804, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(156, 'WST', 2.619567, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(157, 'XAF', 601.172348, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(158, 'XAG', 0.038788, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(159, 'XAU', 0.001306, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(160, 'XCD', 2.704063, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(161, 'XDR', 0.719973, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(162, 'XOF', 601.172378, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(163, 'XPD', 0.000424, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(164, 'XPF', 109.365628, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(165, 'XPT', 0.001397, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(166, 'YER', 250.312916, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(167, 'ZAR', 15.03935, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(168, 'ZMW', 18.223136, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(169, 'ZWL', 322.080681, '12:03:46', '2022-03-12 10:03:46', '2022-03-12 10:03:46');

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
(1, 'Palestine', 'فلسطين', '00972', 65, 'storage/media/a4fff86fd4f17ae5c50eba33a5c9d7eb.png', 10, 10, 1, '2022-03-12 10:16:43', '2022-03-12 10:16:43');

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
(1, 'discount1', 'خصم1', 'c123', 10, 100, 3, '2022-03-26', '2022-03-12 10:19:34', '2022-03-12 10:19:34');

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
(1, 1, 1, 1, 40, '2022-03-12 10:21:40', '2022-03-12 10:21:40'),
(2, 1, 2, 1, 20, '2022-03-15 06:13:05', '2022-03-15 06:13:05');

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
(1, 'Dashboard', 'admin@admin.com', NULL, '$2y$10$SB6h61YMHM/dfKenYsERxOGdf/yAQltb5ESEzKikXjax8rFWvrjva', 1, NULL, '2022-03-12 10:03:46', '2022-03-12 10:03:46');

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
(1, 'App Management', 'إدارة التطبيق', 'app_managements', NULL, 1, NULL, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(2, 'Employees', 'الموظفين', 'employees', 'group', 2, 1, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(3, 'Roles', 'الأدوار', 'roles', 'accessibility', 3, 1, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(4, 'App Data', 'بيانات التطبيق', 'app_data', NULL, 4, NULL, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(5, 'Settings', 'الإعدادات', 'settings', 'settings', 5, 4, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(6, 'Countries', 'الدول', 'countries', 'flag', 6, 4, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(7, 'Cities', 'المدن', 'cities', 'location_city', 7, 4, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(8, 'Splash Screens', 'شاشات السبلاش', 'splash_screens', 'fit_screen', 8, 4, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(9, 'Brands', 'البراندات', 'brands', 'category', 9, 4, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(10, 'Categories', 'التصنيفات', 'categories', 'list', 10, 4, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(11, 'App Content', 'محتوى التطبيق', 'app_content', NULL, 11, NULL, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(12, 'Advertisements', 'الاعلانات', 'advertisements', 'featured_video', 12, 11, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(13, 'Products', 'المنتجات', 'products', 'inventory_2', 13, 11, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(14, 'Offers', 'العروض', 'offers', 'featured_video', 14, 11, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(15, 'orders', 'الطلبات', 'orders', 'inventory_2', 15, 11, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(16, 'Discounts', 'الخصومات', 'discounts', 'local_offer', 16, 11, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(17, 'Users Managements', 'إدارة المستخدمين', 'user_managements', NULL, 17, NULL, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(18, 'Users', 'المستخدمين', 'users', 'group', 18, 17, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(19, 'Tickets', 'التذاكر', 'tickets', 'label', 19, 17, '2022-03-12 10:03:46', '2022-03-12 10:03:46');

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
(1, 1, 1, 1, '127.0.0.1', '2022-03-12 10:16:05', '2022-03-12 10:16:05'),
(2, 1, 1, 1, '127.0.0.1', '2022-03-21 08:59:26', '2022-03-21 08:59:26'),
(3, 1, 1, 1, '127.0.0.1', '2022-03-22 07:09:58', '2022-03-22 07:09:58');

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
(1, 1, 'storage/media/9f8193a27867f5f5b5fbfaeb73170916.jpg', '1', '2022-03-12 10:18:55', '2022-03-12 10:18:55'),
(2, 2, 'storage/media/6aaabf01780aacb92c345047e19bd638.png', '1', '2022-03-12 10:21:21', '2022-03-12 10:21:21');

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
(1, 1, 1, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(2, 1, 2, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(3, 1, 3, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(4, 1, 4, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(5, 1, 5, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(6, 1, 6, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(7, 1, 7, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(8, 1, 8, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(9, 1, 9, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(10, 1, 10, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(11, 1, 11, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(12, 1, 12, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(13, 1, 13, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(14, 1, 14, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(15, 1, 15, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(16, 1, 16, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(17, 1, 17, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(18, 1, 18, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(19, 1, 19, '2022-03-12 10:03:46', '2022-03-12 10:03:46');

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
(1, 1, 1, '2022-03-12 10:03:46', '2022-03-12 10:03:46');

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
(1, 1, 1, 'Order In Progress', 'الطلب قيد المراجعة !', 'Order In Progress !', 'طلبك قيد المراجعة', 1, NULL, '2022-03-12 10:22:17', '2022-03-12 10:22:17'),
(2, 1, 1, 'Order Accepted', 'قبول الطلب !', 'Provider Accept your order !', 'قام المزود بقبول طلبك', 1, NULL, '2022-03-12 10:22:24', '2022-03-12 10:22:24'),
(3, 1, 1, 'Order In Delivery', 'الطلب قيد التوصيل !', 'Order In Delivery !', 'طلبك قيد التوصيل', 1, NULL, '2022-03-12 10:22:30', '2022-03-12 10:22:30'),
(4, 1, 1, 'Order Received', 'تم استلام الطلب !', 'Customer Received the order !', 'قام المزود بتسليم الطلب', 1, NULL, '2022-03-12 10:22:35', '2022-03-12 10:22:35');

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
('9605e3b8a3a6cec4bb2e6e7c9fec663cb81e73a402d0ad937aa20dc1221dee51931cb6b83f2fd8be', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-16 11:59:33', '2022-03-16 11:59:33', '2023-03-16 13:59:33');

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
(1, NULL, 'Laravel Personal Access Client', 'hQSX7sz29DRUpigzOxl9Tl8lgPp6iea7uPmJPB0O', NULL, 'http://localhost', 1, 0, 0, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(2, NULL, 'Laravel Password Grant Client', 'makvcuUWU8aQQgdt0CENxSFbRypTxqCKJtMX96RM', 'users', 'http://localhost', 0, 1, 0, '2022-03-12 10:03:46', '2022-03-12 10:03:46');

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
(1, 1, '2022-03-12 10:03:46', '2022-03-12 10:03:46');

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
(1, 1, 1, 1, 1, 'hadeel', 'addd', '12', '12', '123123', 1, '40', '400', '10', '10', '380', 7, '2022-03-12 10:21:40', '2022-03-12 10:22:35'),
(2, 1, 1, 1, 1, 'hadeel', 'addd', '12', '12', '123123', 1, '20', '200', '10', '10', '200', 7, '2022-03-15 06:13:05', '2022-03-15 06:13:05');

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
(1, 1, 1, 1, 'products', 'khckjscbsajb', 2, 200, 200, '200*300', 'http://localhost:8000/storage/media/9f8193a27867f5f5b5fbfaeb73170916.jpg', '2022-03-12 10:21:40', '2022-03-12 10:21:40'),
(2, 1, 2, 1, 'product2', 'khckjscbsajb', 2, 200, 200, '200*300', 'http://localhost:8000/storage/media/6aaabf01780aacb92c345047e19bd638.png', '2022-03-12 10:21:40', '2022-03-12 10:21:40'),
(3, 2, 2, 1, 'product2', 'khckjscbsajb', 2, 200, 200, '200*300', 'http://localhost:8000/storage/media/6aaabf01780aacb92c345047e19bd638.png', '2022-03-15 06:13:05', '2022-03-15 06:13:05');

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
(1, 1, 7, '2022-03-12 10:21:40', '2022-03-12 10:22:35'),
(2, 1, 3, '2022-03-12 10:22:17', '2022-03-12 10:22:17'),
(3, 1, 5, '2022-03-12 10:22:23', '2022-03-12 10:22:23'),
(4, 1, 6, '2022-03-12 10:22:29', '2022-03-12 10:22:29'),
(5, 1, 7, '2022-03-12 10:22:35', '2022-03-12 10:22:35'),
(6, 2, 1, '2022-03-15 06:13:05', '2022-03-15 06:13:05');

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
(1, 'App Management', 'إدارة التطبيق', 'app_managements', NULL, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(2, 'Employees', 'الموظفين', 'employees', 1, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(3, 'Roles', 'الأدوار', 'roles', 1, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(4, 'App Data', 'بيانات التطبيق', 'app_data', NULL, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(5, 'Settings', 'الإعدادات', 'settings', 4, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(6, 'Countries', 'الدول', 'countries', 4, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(7, 'Cities', 'المدن', 'cities', 4, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(8, 'Splash Screens', 'شاشات السبلاش', 'splash_screens', 4, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(9, 'Brands', 'البراندات', 'brands', 4, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(10, 'Categories', 'التصنيفات', 'categories', 4, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(11, 'App Content', 'محتوى التطبيق', 'app_content', NULL, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(12, 'Advertisements', 'الاعلانات', 'advertisements', 11, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(13, 'Products', 'المنتجات', 'products', 11, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(14, 'Offers', 'العروض', 'offers', 11, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(15, 'orders', 'الطلبات', 'orders', 11, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(16, 'Discounts', 'الخصومات', 'discounts', 11, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(17, 'Users Managements', 'إدارة المستخدمين', 'user_managements', NULL, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(18, 'Users', 'المستخدمين', 'users', 17, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(19, 'Tickets', 'التذاكر', 'tickets', 17, '2022-03-12 10:03:46', '2022-03-12 10:03:46');

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
(1, 1, 'ib123', 'products', 'منتج', 'khckjscbsajb', 'تسيؤايسوتؤ', 2, 1, 1, '2022-03-12 10:18:55', '2022-03-12 10:18:55'),
(2, 1, 'ib1234', 'product2', 'منتج2', 'khckjscbsajb', 'تسيؤايسوتؤ', 2, 1, 1, '2022-03-12 10:21:21', '2022-03-12 10:21:21');

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
(74, 1, 1, 1, 5, 'abc', '2022-03-14 18:57:02', '2022-03-14 18:57:02'),
(75, 1, 1, 1, 4, 'abbbc', '2022-03-14 18:57:02', '2022-03-14 18:57:02'),
(76, 1, 1, 1, 5, 'abc', '2022-03-14 18:57:54', '2022-03-14 18:57:54'),
(77, 1, 1, 1, 4, 'abbbc', '2022-03-14 18:57:54', '2022-03-14 18:57:54'),
(78, 1, 1, 1, 3, 'aaabb', '2022-03-14 18:57:54', '2022-03-14 18:57:54'),
(79, 1, 1, 1, 5, NULL, '2022-03-15 20:27:22', '2022-03-15 20:27:22'),
(80, 1, 1, 1, 4, NULL, '2022-03-15 20:27:22', '2022-03-15 20:27:22'),
(81, 1, 1, 1, 3, NULL, '2022-03-15 20:27:22', '2022-03-15 20:27:22');

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
(1, 'Super Dashboard', 'مدير عام', '2022-03-12 10:03:46', '2022-03-12 10:03:46');

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
(1, 1, 1, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(2, 1, 2, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(3, 1, 3, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(4, 1, 4, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(5, 1, 5, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(6, 1, 6, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(7, 1, 7, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(8, 1, 8, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(9, 1, 9, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(10, 1, 10, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(11, 1, 11, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(12, 1, 12, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(13, 1, 13, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(14, 1, 14, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(15, 1, 15, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(16, 1, 16, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(17, 1, 17, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(18, 1, 18, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(19, 1, 19, '2022-03-12 10:03:46', '2022-03-12 10:03:46');

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
(1, 'privacy', 'Privacy Policy', 'سياسة الخصوصية', 'Privacy Policy', 'سياسة الخصوصية', 1, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(2, 'about', 'About Us', 'من نحن', 'About Us', 'من نحن', 1, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(3, 'terms', 'Terms And Conditions', 'الشروط والأحكام', 'Terms And Conditions', 'الشروط والأحكام', 1, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(4, 'cookies', 'Cookies', 'ملفات تعريف الارتباط', 'Cookies', 'ملفات تعريف الارتباط', 1, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(5, 'support', 'Support', 'الدعم', 'Support', 'الدعم', 1, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(6, 'twitter', 'Twitter', 'حساب تويتر', '', '', 3, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(7, 'facebook', 'Facebook', 'حساب الفيسبوك', '', '', 3, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(8, 'instagram', 'Instagram', 'حساب الانستقرام', '', '', 3, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(9, 'linkedin', 'LinkedIn', 'حساب اللينكد ان', '', '', 3, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(10, 'email', 'Email', 'البريد الالكتروني', '', '', 3, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(11, 'mobile', 'Mobile', 'رقم الجوال', '', '', 3, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(12, 'app_store_link', 'App Store Link', 'رابط متجر ابل', '', '', 3, '2022-03-12 10:03:46', '2022-03-12 10:03:46'),
(13, 'play_store_link', 'Google Play Store Link', ' رابط متجر جوجل بلاي', '', '', 3, '2022-03-12 10:03:46', '2022-03-12 10:03:46');

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
(1, '200*300', '200', 1, 1, '2022-03-12 10:18:55', '2022-03-12 10:18:55'),
(2, '200*300', '200', 2, 1, '2022-03-12 10:21:21', '2022-03-12 10:21:21');

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
(1, 1, 'hhh', 'hh@gmail.com', 'ttdd', 'dddd', 'img.png', 2, '2022-03-22 09:10:29', '2022-03-22 07:11:22');

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
(1, 'hadeel', 'hadeelmikki155@gmail.com', '05956705455', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$7042RygxF4upbvzP61kZheJ43SgC1jFxhP4ij7eTfvRwLd5GMjWiK', 'en', 0, NULL, NULL, NULL, '20090', 1, NULL, '2022-03-12 10:17:03', '2022-03-12 10:17:03', NULL, NULL, NULL);

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
(1, 1, 'ieBt4P3bzZbpYreudQsmQEEYrb5buyd2nudjSR8W1647087423', '30287', 1, '2022-03-12 10:17:03', '2022-03-12 10:17:03'),
(2, 1, 'ieBt4P3bzZbpYreudQsmQEEYrb5buyd2nudjSR8W1647087423', '83921', 2, '2022-03-12 10:17:03', '2022-03-12 10:17:03');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coins`
--
ALTER TABLE `coins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `discounts_history`
--
ALTER TABLE `discounts_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offers_products`
--
ALTER TABLE `offers_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offer_size_price`
--
ALTER TABLE `offer_size_price`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `size_price`
--
ALTER TABLE `size_price`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `social_login`
--
ALTER TABLE `social_login`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `splash_screens`
--
ALTER TABLE `splash_screens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `verify_accounts`
--
ALTER TABLE `verify_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
