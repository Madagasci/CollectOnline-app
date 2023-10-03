-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2023 at 03:04 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `driving_entries`
--

CREATE TABLE `driving_entries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `licencePlate` varchar(9) NOT NULL,
  `drivingDate` date DEFAULT NULL,
  `driver` varchar(255) NOT NULL,
  `distance` int(10) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `driving_entries`
--

INSERT INTO `driving_entries` (`id`, `licencePlate`, `drivingDate`, `driver`, `distance`, `updated_at`, `created_at`) VALUES
(1, '2-AQG-114', '2023-10-02', 'Jef', 10, '2023-09-29 11:27:15', '2023-09-29 11:27:15'),
(2, '1-BEN-696', '2023-10-01', 'Ben', 50, '2023-09-29 11:27:30', '2023-09-29 11:27:30'),
(3, '9-AWP-666', '2023-10-03', 'No one', 32, '2023-09-29 18:33:47', '2023-09-29 18:33:47'),
(4, '1-BEN-696', '2023-09-30', 'Jef', 1234, '2023-10-01 18:52:00', '2023-10-01 18:52:00'),
(5, '2-AQG-114', '2023-10-01', 'Ben', 123654, '2023-10-01 18:56:16', '2023-10-01 18:56:16'),
(6, '1-BEN-696', '2023-10-01', 'Ken', 69, '2023-10-01 19:03:52', '2023-10-01 19:03:52'),
(7, '1-BEN-696', '2023-10-03', 'Matt', 768, '2023-10-02 08:46:11', '2023-10-02 08:46:11'),
(11, '2-AQG-114', '2023-10-02', 'Tim', 1234, '2023-10-02 08:58:18', '2023-10-02 08:58:18'),
(12, '1-BEN-696', '2023-10-02', 'Tim', 5, '2023-10-02 10:56:44', '2023-10-02 10:56:44'),
(13, '1-BEN-696', '2023-10-03', 'Tim', 150, '2023-10-02 11:00:31', '2023-10-02 11:00:31');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'qwe', 'qwe', NULL, '$2y$10$8e00h8YVsCZ3oTUEctJAy.vDH6/oa5TB.hu22f8B6y8wocfe6XM02', NULL, '2023-09-29 19:17:00', '2023-09-29 19:17:00'),
(4, 'Ben', 'ben.de.cleyn1@hotmail.com', NULL, '$2y$10$07nff.H1qCuNQRRFs0u6Gecrx1vPSuXEH9FGh0aZwNC.ErEBEmDYy', NULL, '2023-09-29 19:26:04', '2023-09-29 19:26:04'),
(5, 'Ben2', 'test', NULL, '$2y$10$HwgOEz1vM1nbE6qpp.y1w.CS8SyZd.Pt.aCkiu3Q8Wd6vwsmvmM.u', NULL, '2023-09-29 19:31:08', '2023-09-29 19:31:08'),
(6, 'Elke', 'fdsfsa', NULL, '$2y$10$qt5FyQgJ7B9TnZMuV91tZu2uoRNO72rE2vB4yLLnwZc1PazKhlxH6', NULL, '2023-09-29 19:46:44', '2023-09-29 19:46:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `driving_entries`
--
ALTER TABLE `driving_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `driving_entries`
--
ALTER TABLE `driving_entries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
