-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 29, 2022 at 06:01 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `govel`
--

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `travel_packages_id`, `image`, `created_at`, `updated_at`) VALUES
(3, 1, 'assets/gallery/hotel_1_1.jpeg', '2022-12-06 01:00:04', '2022-12-06 01:00:04'),
(4, 1, 'assets/gallery/hotel_1_2.jpeg', '2022-12-06 01:00:37', '2022-12-06 01:00:37'),
(5, 1, 'assets/gallery/hotel_1_3.jpeg', '2022-12-06 01:00:49', '2022-12-06 01:03:48'),
(6, 1, 'assets/gallery/hotel_1_4.jpeg', '2022-12-06 01:01:07', '2022-12-06 01:01:07'),
(7, 1, 'assets/gallery/hotel_1_5.jpeg', '2022-12-06 01:01:17', '2022-12-06 01:40:37'),
(8, 7, 'assets/gallery/hotel_7_1.jpeg', '2022-12-13 08:46:39', '2022-12-13 08:46:39'),
(9, 7, 'assets/gallery/hotel_7_2.jpeg', '2022-12-13 08:48:11', '2022-12-13 08:48:11'),
(10, 6, 'assets/gallery/hotel_6_1.jpeg', '2022-12-13 09:12:04', '2022-12-13 09:12:04'),
(11, 2, 'assets/gallery/hotel_2_1.jpeg', '2022-12-13 09:15:20', '2022-12-13 09:15:20'),
(12, 3, 'assets/gallery/hotel_3_1.jpeg', '2022-12-13 09:17:48', '2022-12-13 09:17:48');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_travel_packages_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_transportations_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `users_id`, `transaction_travel_packages_id`, `transaction_transportations_id`, `image`, `name`, `type`, `created_at`, `updated_at`) VALUES
(6, 14, 24, NULL, 'assets/payment/XXPldEgeUnFCuqe9TWfQfHqDLnCleFRmBNEuShZV.png', 'BCA', 'Bank Transfer', '2022-12-17 06:00:57', '2022-12-17 06:00:57'),
(9, 14, NULL, 3, 'assets/payment/OLmswDDkILf8dCa4O8CUFfU2NCd7Yky9ZB2q7VmW.png', 'BNI', 'Bank Transfer', '2022-12-17 12:36:06', '2022-12-17 12:36:06'),
(10, 16, 37, NULL, 'assets/payment/HftFU3miLUCGArE8Et8sk1jmmSYiwDdjuWINHp1O.png', 'BCA', 'Bank Transfer', '2022-02-17 21:21:02', '2022-02-17 21:21:02'),
(11, 16, NULL, 6, 'assets/payment/Rjh3qoXzZ3BusarYpva9ooNh9GcZ5wwFxJ40DsK2.png', 'BRI', 'Bank Transfer', '2022-02-17 21:29:06', '2022-02-17 21:29:06'),
(12, 17, 39, NULL, 'assets/payment/q6j33W5s9veI1AtpOIP2ZXmxoTG97PiK9Wf5DNv5.jpg', 'BRI', 'Bank Transfer', '2022-02-18 00:33:43', '2022-02-18 00:33:43'),
(13, 17, NULL, 7, 'assets/payment/UecnZlKFO3D7y2Zwu7zJqAA0nFR5Me0oDuwlP2NL.jpg', 'Mandiri', 'Bank Transfer', '2022-02-18 00:38:39', '2022-02-18 00:38:39'),
(14, 12, NULL, 8, 'assets/payment/ED5dyi8M0JO64a7TJIH7rlHhqeH8sQHdQBvXeodO.jpg', 'BCA', 'Bank Transfer', '2022-12-29 03:32:45', '2022-12-29 03:32:45'),
(15, 12, 41, NULL, 'assets/payment/5mg5KiuEYIy2zDQcD00c6AMfYgPcTwDIvhUZ5muz.webp', 'BCA', 'Bank Transfer', '2022-12-29 03:35:52', '2022-12-29 03:35:52'),
(16, 12, NULL, 12, 'assets/payment/wVAHm46HsFrlQfQLUlpKYuldjum67uFLRATnIFs0.jpg', 'Mandiri', 'Bank Transfer', '2022-12-29 03:49:03', '2022-12-29 03:49:03'),
(17, 12, NULL, 13, 'assets/payment/VBzreMW7tQZTnit7P1AUwCGv7YnbSvKgkh3KFOxE.jpg', 'BCA', 'Bank Transfer', '2022-12-29 03:50:05', '2022-12-29 03:50:05'),
(18, 12, NULL, 14, 'assets/payment/AmbFpalsBgrSiqYVzoek3JF98UvLKVp7mGDR2XJO.jpg', 'Mandiri', 'Bank Transfer', '2022-12-29 03:52:35', '2022-12-29 03:52:35'),
(19, 12, NULL, 15, 'assets/payment/k89M7rhcHzpOG5ulbNF8HfjPYuFeoEbeODOmQgTJ.jpg', 'BCA', 'Bank Transfer', '2022-12-29 03:58:56', '2022-12-29 03:58:56');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `user_id`, `travel_packages_id`, `title`, `description`, `rating`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 'Eum necessitatibus distinctio doloribus asperiores.', 'Qui accusantium ut est consequatur expedita eum. Ullam accusantium eligendi porro error. Officiis eos molestias voluptate est.', 4, '2022-12-25 04:13:50', '2022-12-25 04:13:50'),
(2, 3, 2, 'Dolor blanditiis optio et.', 'Labore et vitae eos ipsum et maiores perspiciatis. Necessitatibus veniam placeat totam. Et culpa ut deserunt sint totam ea.', 4, '2022-12-25 04:13:50', '2022-12-25 04:13:50'),
(3, 4, 6, 'Et repellendus inventore sint.', 'Ab similique modi non eligendi possimus dolore. Ab ratione deleniti eum repudiandae.', 4, '2022-12-25 04:13:50', '2022-12-25 04:13:50'),
(4, 3, 1, 'Cum blanditiis eos consequatur nostrum.', 'Consequatur neque voluptas sequi. Incidunt dignissimos est quisquam illum qui. Libero occaecati qui est et repellat.', 5, '2022-12-25 04:13:50', '2022-12-25 04:13:50'),
(5, 2, 3, 'Hotel awikwok nich', 'Dolorem quis unde neque unde et voluptas. Aperiam est et laborum omnis maiores. Quo omnis ipsa velit est sequi in nihil consequuntur.', 3, '2022-12-25 04:13:50', '2022-12-03 01:15:05'),
(13, 12, 2, 'Mari Menginap Disini Gan!', 'sdadasdfsdfhsakghsdkghskaghkdsghskghskghoorohrqohroqhhkdshfkshdksdhfkshfohewruhfwofhwofhsjfkshdfkshfkasfhasfhoefowhfhwfdfshskdfhdaskfsafshfkdhksafdlasfhdksfhaskfhas', 4, '2022-12-03 04:54:54', '2022-12-03 04:54:54');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `rooms` int(11) NOT NULL,
  `guests` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `type_room` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `travel_packages_id`, `users_id`, `transaction_code`, `name`, `email`, `phone_number`, `check_in`, `check_out`, `rooms`, `guests`, `duration`, `type_room`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(22, 1, 14, 'GF2139', 'Test Test', 'testaja@gmail.com', '6281310481842', '2022-12-19', '2022-12-22', 1, 2, 3, 'Suite Room', 184, 'SUCCESSFUL', '2022-12-24 08:21:02', '2022-12-18 04:34:30', '2022-12-24 08:21:02'),
(23, 2, 14, 'GF0146', 'Harold', 'hrld@gmail.com', '1453524323232', '2022-12-18', '2022-12-20', 1, 1, 2, 'Standard Room', 197, 'FAILED', '2022-12-17 08:16:41', '2022-12-18 04:38:30', '2022-12-17 08:16:41'),
(24, 1, 14, 'GF4552', 'dasasd', 'dsadas@fafa.com', '156332432', '2022-12-19', '2022-12-20', 1, 1, 1, 'Standard Room', 185, 'FAILED', NULL, '2022-12-18 06:07:59', '2022-12-17 12:39:14'),
(33, 3, 14, 'GF3052', 'John Doe', 'john@example.com', '6321231312', '2022-12-20', '2022-12-21', 1, 1, 1, 'Standard Room', 116, 'FAILED', NULL, '2022-12-17 01:11:43', '2022-02-17 21:16:04'),
(35, 2, 14, 'GF1549', 'John Doe', 'user@gmail.com', '4242332', '2022-12-19', '2022-12-20', 1, 1, 1, 'Standard Room', 116, 'PENDING', NULL, '2022-12-17 12:14:04', '2022-12-17 12:14:04'),
(36, 7, 14, 'GF4185', 'John Doe', 'john@example.com', '879', '2022-12-20', '2022-12-23', 2, 4, 3, 'Standard Room', 136, 'PENDING', '2022-12-17 17:00:18', '2022-12-17 16:50:23', '2022-12-17 17:00:18'),
(37, 2, 16, 'GF4738', 'FutureMedia', 'das@fdssf', '5233231213', '2022-02-19', '2022-02-21', 1, 2, 2, 'Deluxe Room', 139, 'SUCCESSFUL', NULL, '2022-02-17 21:19:40', '2022-02-17 21:30:26'),
(38, 7, 16, 'GF1293', 'FutureMedia', 'birhamshidiq@gmail.com', '312123213', '2022-02-19', '2022-02-20', 1, 1, 1, 'Suite Room', 61, 'FAILED', '2022-02-17 21:33:52', '2022-02-17 21:32:08', '2022-02-17 21:33:52'),
(39, 7, 17, 'GF9777', 'John Doe', 'user@gmail.com', '1234567', '2022-02-19', '2022-02-21', 2, 2, 2, 'Deluxe Room', 123, 'SUCCESSFUL', NULL, '2022-02-18 00:32:02', '2022-02-18 00:44:42'),
(40, 6, 17, 'GF1338', 'FutureMedia', 'user1@gmail.com', '565657', '2022-02-19', '2022-02-22', 2, 2, 3, 'Standard Room', 306, 'PENDING', NULL, '2022-02-18 00:41:13', '2022-02-18 00:41:13'),
(41, 1, 12, 'GF6024', 'Dino Priyano', 'dinopriyano@gmail.com', '0123884423', '2023-01-01', '2023-01-03', 2, 2, 2, 'Deluxe Room', 262, 'WAITING', NULL, '2022-12-29 03:35:26', '2022-12-29 03:35:52');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_transportations`
--

CREATE TABLE `transaction_transportations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transportations_id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guests` int(11) NOT NULL,
  `departure_date` date NOT NULL,
  `departure_time` time NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_transportations`
--

INSERT INTO `transaction_transportations` (`id`, `transportations_id`, `users_id`, `transaction_code`, `name`, `email`, `phone_number`, `from`, `to`, `guests`, `departure_date`, `departure_time`, `class`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 5, 14, 'GF7139', 'xcxzdas', 'das@fdssf', '31', 'Jakarta', 'Bandung', 1, '2022-12-19', '13:00:00', 'Economy', 73, 'SUCCESSFUL', '2022-02-17 21:31:05', '2022-12-17 12:26:27', '2022-02-17 21:31:05'),
(6, 6, 16, 'GF8480', 'Media Verse', 'john@example.com', '1234567', 'Jakarta', 'Bandung', 2, '2022-02-19', '09:30:00', 'Economy', 143, 'WAITING', NULL, '2022-02-17 21:27:54', '2022-02-17 21:29:07'),
(7, 4, 17, 'GF8934', 'John Doe', 'user@gmail.com', '22312131213232', 'Bandung', 'Jakarta', 2, '2022-02-19', '13:00:00', 'Economy', 143, 'WAITING', NULL, '2022-02-18 00:36:54', '2022-02-18 00:38:39'),
(8, 6, 12, 'GF4993', 'Dino Priyano', 'dinopriyano@gmail.com', '081237728843', 'Bandung', 'Jakarta', 2, '2023-01-01', '06:00:00', 'Bussiness', 143, 'WAITING', NULL, '2022-12-29 03:32:08', '2022-12-29 03:32:45'),
(9, 5, 12, 'GF3472', 'Dino Priyano', 'dinopriyano@gmail.com', '203082032', 'Jakarta', 'Bandung', 2, '2023-01-01', '07:30:00', 'Bussiness', 143, 'PENDING', '2022-12-29 03:59:10', '2022-12-29 03:36:22', '2022-12-29 03:59:10'),
(10, 4, 12, 'GF4504', 'Dino Priyano', 'dinopriyano@gmail.com', '08123747434', 'Bandung', 'Bandung', 2, '2023-01-01', '07:30:00', 'Bussiness', 143, 'PENDING', NULL, '2022-12-29 03:38:08', '2022-12-29 03:38:08'),
(11, 4, 12, 'GF9070', 'Dino Priyano', 'dinopriyano@gmail.com', '0812674788234', 'Surabaya', 'Bandung', 2, '2023-01-01', '11:30:00', 'Bussiness', 143, 'PENDING', NULL, '2022-12-29 03:39:41', '2022-12-29 03:39:41'),
(12, 5, 12, 'GF7150', 'Dino Priyano', 'dinopriyano@gmail.com', '2323331133', 'Bandung', 'Yogyakarta', 3, '2023-01-01', '06:00:00', 'Premium', 213, 'WAITING', NULL, '2022-12-29 03:48:45', '2022-12-29 03:49:03'),
(13, 6, 12, 'GF5926', 'Dino Priyano', 'dinopriyano@gmail.com', '2323232323', 'Bandung', 'Surabaya', 4, '2023-01-02', '10:00:00', 'Premium', 283, 'WAITING', NULL, '2022-12-29 03:49:55', '2022-12-29 03:50:05'),
(14, 4, 12, 'GF1096', 'Dino Priyano', 'dinopriyano@gmail.com', '3232323', 'Bandung', 'Surabaya', 3, '2023-01-01', '10:00:00', 'Bussiness', 213, 'WAITING', NULL, '2022-12-29 03:52:23', '2022-12-29 03:52:35'),
(15, 6, 12, 'GF2639', 'Dino Priyano', 'dinopriyano@gmail.com', '2323233', 'Surabaya', 'Surabaya', 4, '2023-01-01', '13:00:00', 'Bussiness', 283, 'WAITING', NULL, '2022-12-29 03:58:43', '2022-12-29 03:58:56');

-- --------------------------------------------------------

--
-- Table structure for table `transportations`
--

CREATE TABLE `transportations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transportations`
--

INSERT INTO `transportations` (`id`, `image`, `company_name`, `slug`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'assets/transportations/citilink.jpeg', 'Citilink', 'citilink', 'Flights', 'Unavailable', '2022-12-06 10:50:31', '2022-12-08 09:26:51'),
(4, 'assets/transportations/malabar.jpeg', 'Malabar', 'malabar', 'Trains', 'Available', '2022-12-08 09:13:56', '2022-12-08 09:13:56'),
(5, 'assets/transportations/lion-air.jpeg', 'Lion Air', 'lion-air', 'Flights', 'Available', '2022-12-08 09:14:44', '2022-12-08 09:14:44'),
(6, 'assets/transportations/jackal-holidays.jpeg', 'Jackal Holidays', 'jackal-holidays', 'Bus', 'Available', '2022-12-08 09:20:35', '2022-12-08 09:20:35');

-- --------------------------------------------------------

--
-- Table structure for table `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` float NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant` int(11) NOT NULL DEFAULT '0',
  `wifi` int(11) NOT NULL DEFAULT '0',
  `elevator` int(11) NOT NULL DEFAULT '0',
  `breakfast` int(11) NOT NULL DEFAULT '0',
  `parking` int(11) NOT NULL DEFAULT '0',
  `laundry` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `title`, `slug`, `description`, `rating`, `city`, `area`, `country`, `type`, `price`, `restaurant`, `wifi`, `elevator`, `breakfast`, `parking`, `laundry`, `created_at`, `updated_at`) VALUES
(1, 'APA Hotel Shinjuku Kabukicho Tower', 'apa-hotel-shinjuku-kabukicho-tower', 'Travel is the movement of people between distant geographical locations. Travel can be done by foot, bicycle, automobile, train, boat, bus, airplane, ship or other means, with or without luggage, and can be one way or round trip. Travel can also include r', 4.5, 'Shinjuku', 'Tokyo', 'Japanese', 'Hotels', '90', 1, 1, 1, 0, 1, 1, '2022-12-25 11:27:00', '2022-12-06 02:16:39'),
(2, 'Sakura Hostel Asakusa', 'sakura-hostel-asakusa', 'Travel is the movement of people between distant geographical locations. Travel can be done by foot, bicycle, automobile, train, boat, bus, airplane, ship or other means, with or without luggage, and can be one way or round trip. Travel can also include', 4.2, 'Asakusa', 'Tokyo', 'Japanese', 'Hostels', '80', 0, 1, 1, 0, 1, 0, '2022-12-25 14:12:00', '2022-12-06 02:17:20'),
(3, 'Eatone Residences', 'eatone-residences', 'Travel is the movement of people between distant geographical locations. Travel can be done by foot, bicycle, automobile, train, boat, bus, airplane, ship or other means, with or without luggage, and can be one way or round trip. Travel can also include', 3.6, 'Wan Chai Gap Road', 'Wan Chai', 'Hong Kong', 'Apartments', '80', 0, 1, 1, 0, 1, 1, NULL, '2022-12-06 02:17:36'),
(6, 'Platzl Hotel', 'platzl-hotel', 'Hotel yang sangat cocok untuk anda berlibur di German bersama keluarga maupun teman', 4.3, 'Sparkassenstrasse', 'Munich', 'Germany', 'Hotels', '96', 1, 1, 1, 0, 1, 0, '2022-12-02 22:49:19', '2022-12-06 02:17:46'),
(7, 'Batavia Apartments', 'batavia-apartments', 'big apartment. wifi was a on a good connection. breakfast was nice. has a very nice view from window. very comfortable.', 4.1, 'Tanah Abang', 'Jakarta Pusat', 'Indonesia', 'Apartments', '42', 1, 1, 1, 0, 1, 1, '2022-12-13 08:44:59', '2022-12-13 08:44:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `job`, `image`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Andreanne O\'Hara', 'kertzmann.allan@example.org', 'Telephone Station Installer and Repairer', 'assets/user_image/default-user.jpeg', '2022-12-25 04:13:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SXCuOf1gMa', '2022-12-25 04:13:50', '2022-12-25 04:13:50', 'USER'),
(2, 'Nash Boehm', 'alejandra87@example.com', 'Computer Specialist', 'assets/user_image/default-user.jpeg', '2022-12-25 04:13:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ghs3YadMgb', '2022-12-25 04:13:50', '2022-12-25 04:13:50', 'USER'),
(3, 'Dr. Sydney Schinner Sr.', 'wcasper@example.net', 'Crossing Guard', 'assets/user_image/default-user.jpeg', '2022-12-25 04:13:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7BvP1eZZ9N', '2022-12-25 04:13:50', '2022-12-25 04:13:50', 'USER'),
(4, 'Mrs. Emie Herman Sr.', 'johns.ana@example.net', 'Floor Finisher', 'assets/user_image/default-user.jpeg', '2022-12-25 04:13:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fi7OIYsZF0', '2022-12-25 04:13:50', '2022-12-25 04:13:50', 'USER'),
(5, 'Tyrel Leannon', 'xhyatt@example.org', 'Market Research Analyst', 'assets/user_image/default-user.jpeg', '2022-12-25 04:13:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ReELUAz8I5', '2022-12-25 04:13:50', '2022-12-25 04:13:50', 'USER'),
(12, 'Admin', 'admin@gmail.com', 'Developer', 'assets/user_image/default-user.jpeg', '2022-12-26 08:02:41', '$2y$10$frCGyYdp1cmMuSfl8HD/UOkQC3nwe5lYSmUXmmPOJOaSAqP0U4fei', 'vM5Vyxs1fxm15gAPhYZwJZ7hI5A2LmKY6FVsh7cAJDKWAvK5uAuuKgsiedhv', '2022-12-26 08:02:22', '2022-06-27 04:10:09', 'ADMIN'),
(14, 'User Website', 'user@gmail.com', 'Freelancer', 'assets/user_image/default-user.jpeg', '2022-12-27 07:00:37', '$2y$10$bIOdXjkx5pGfDO96h99hs.utmuVgMjZX1jWjrFki94mm.s9YyHM1u', 'B7sBjk9nkGYIRuMcNbHTbxWqpR0YLUk0E7Faoz6U4idR3mY42zcOUHm7j2NN', '2022-12-27 07:00:15', '2022-06-27 04:42:10', 'USER'),
(16, 'userbaru', 'user1@gmail.com', 'Developer', 'assets/user_image/default-user.jpeg', NULL, '$2y$10$hs2BX5mCMG8znwQu6Pw6qOVe.Xuwbx1bBH9sHFTBDE/AJwuVKPtsK', NULL, '2022-02-17 21:11:14', '2022-02-17 21:11:14', 'USER'),
(17, 'User Terbaru', 'user2@gmail.com', 'Developer', 'assets/user_image/default-user.jpeg', NULL, '$2y$10$UfVbHkS0ffqpVynH/CnLW.NBiy5QFXVlFaegTubUm9otbXzs5KaCG', NULL, '2022-02-18 00:22:22', '2022-02-18 00:22:22', 'USER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `GALLERY TRAVEL PACKAGE ID BELONGS TO` (`travel_packages_id`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `PAYMENT USER ID BELONGS TO` (`users_id`) USING BTREE,
  ADD KEY `PAYMENT TRANSACTION TRAVEL PACKAGE ID BELONGS TO` (`transaction_travel_packages_id`) USING BTREE,
  ADD KEY `PAYMENT TRANSACTION TRANSPORTATION ID BELONGS TO` (`transaction_transportations_id`) USING BTREE;

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `TESTIMONIAL TRAVEL PACKAGE ID BELONGS TO` (`travel_packages_id`),
  ADD KEY `TESTIMONIAL USER ID BELONGS TO` (`user_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `TRANSACTION TRAVEL PACKAGE TRAVEL PACKAGE ID BELONGS TO` (`travel_packages_id`),
  ADD KEY `TRANSACTION TRAVEL PACKAGE USER ID BELONGS TO` (`users_id`);

--
-- Indexes for table `transaction_transportations`
--
ALTER TABLE `transaction_transportations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `TESTIMONIAL TRANSPORTATION TRANSPORTATION ID BELONGS TO` (`transportations_id`),
  ADD KEY `TESTIMONIAL TRANSPORTATION USER ID BELONGS TO` (`users_id`);

--
-- Indexes for table `transportations`
--
ALTER TABLE `transportations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_packages`
--
ALTER TABLE `travel_packages`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `transaction_transportations`
--
ALTER TABLE `transaction_transportations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `transportations`
--
ALTER TABLE `transportations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `BELONGS TO` FOREIGN KEY (`travel_packages_id`) REFERENCES `travel_packages` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `PAYMENT TRANSACTION_TRANSPORTATION ID BELONGS TO` FOREIGN KEY (`transaction_transportations_id`) REFERENCES `transaction_transportations` (`id`),
  ADD CONSTRAINT `PAYMENT TRANSACTION_TRAVEL PACKAGE ID BELONGS TO` FOREIGN KEY (`transaction_travel_packages_id`) REFERENCES `transactions` (`id`),
  ADD CONSTRAINT `PAYMENT USER_ID BELONGS TO` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD CONSTRAINT `TESTIMONIAL TRAVEL PACKAGE ID BELONGS TO` FOREIGN KEY (`travel_packages_id`) REFERENCES `travel_packages` (`id`),
  ADD CONSTRAINT `TESTIMONIAL USER ID BELONGS TO` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `TRANSACTION TRAVEL PACKAGE TRAVEL PACKAGE ID BELONGS TO` FOREIGN KEY (`travel_packages_id`) REFERENCES `travel_packages` (`id`),
  ADD CONSTRAINT `TRANSACTION TRAVEL PACKAGE USER ID BELONGS TO` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transaction_transportations`
--
ALTER TABLE `transaction_transportations`
  ADD CONSTRAINT `TESTIMONIAL TRANSPORTATION TRANSPORTATION ID BELONGS TO` FOREIGN KEY (`transportations_id`) REFERENCES `transportations` (`id`),
  ADD CONSTRAINT `TESTIMONIAL TRANSPORTATION USER ID BELONGS TO` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
