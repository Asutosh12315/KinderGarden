-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 28, 2023 at 02:54 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kinder_garden`
--

-- --------------------------------------------------------

--
-- Table structure for table `children_guardian_infos`
--

CREATE TABLE `children_guardian_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `person_name` varchar(255) NOT NULL,
  `relation` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `children_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `children_guardian_infos`
--

INSERT INTO `children_guardian_infos` (`id`, `person_name`, `relation`, `contact_no`, `children_id`, `created_at`, `updated_at`) VALUES
(92, '[\"Alvin Foster\",\"Ross Cox\",\"Alika Macdonald\",\"Simon Obrien\",\"Jared Ferguson\",\"Blaze Clayton\"]', '[\"mother\",\"mother\",\"sister\",\"garndmother\",\"mother\",\"sister\"]', '[\"Illo sunt deleniti e\",\"A omnis quos facere\",\"Tempore possimus e\",\"Deserunt consequatur\",\"Facilis qui deserunt\",\"Dicta deserunt nihil\"]', 53, '2023-10-28 06:48:57', '2023-10-28 06:48:57');

-- --------------------------------------------------------

--
-- Table structure for table `children_infos`
--

CREATE TABLE `children_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `photo` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zipcode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `children_infos`
--

INSERT INTO `children_infos` (`id`, `name`, `dob`, `class`, `address`, `city`, `state`, `country`, `photo`, `created_at`, `updated_at`, `zipcode`) VALUES
(53, 'Kendall Grant', '1977-09-16', 'V', 'Maxime et reprehende', '20', '12', '27', 'frontend/cdn/children_photo/children-cover-photo1781001656590428.jpeg', '2023-10-28 06:48:57', '2023-10-28 06:48:57', '90649');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city_name`, `state_id`, `created_at`, `updated_at`) VALUES
(1, 'Pennsylvania', 2, '2023-10-27 16:56:34', '2023-10-27 16:56:34'),
(2, 'Oregon', 4, '2023-10-27 16:56:34', '2023-10-27 16:56:34'),
(3, 'Massachusetts', 2, '2023-10-27 16:56:34', '2023-10-27 16:56:34'),
(4, 'South Carolina', 6, '2023-10-27 16:56:35', '2023-10-27 16:56:35'),
(5, 'South Dakota', 2, '2023-10-27 16:56:35', '2023-10-27 16:56:35'),
(6, 'Florida', 4, '2023-10-27 16:56:35', '2023-10-27 16:56:35'),
(7, 'Alabama', 7, '2023-10-27 16:56:35', '2023-10-27 16:56:35'),
(8, 'Virginia', 10, '2023-10-27 16:56:35', '2023-10-27 16:56:35'),
(9, 'New Mexico', 3, '2023-10-27 16:56:35', '2023-10-27 16:56:35'),
(10, 'Michigan', 5, '2023-10-27 16:56:35', '2023-10-27 16:56:35'),
(11, 'Trompshire', 8, '2023-10-27 16:57:06', '2023-10-27 16:57:06'),
(12, 'Selenaville', 18, '2023-10-27 16:57:06', '2023-10-27 16:57:06'),
(13, 'Quintenbury', 3, '2023-10-27 16:57:06', '2023-10-27 16:57:06'),
(14, 'Miloton', 3, '2023-10-27 16:57:06', '2023-10-27 16:57:06'),
(15, 'New Billie', 19, '2023-10-27 16:57:06', '2023-10-27 16:57:06'),
(16, 'Keelingstad', 14, '2023-10-27 16:57:06', '2023-10-27 16:57:06'),
(17, 'Doyletown', 10, '2023-10-27 16:57:06', '2023-10-27 16:57:06'),
(18, 'East Bellamouth', 16, '2023-10-27 16:57:06', '2023-10-27 16:57:06'),
(19, 'Lake Tyreestad', 4, '2023-10-27 16:57:06', '2023-10-27 16:57:06'),
(20, 'Stokesborough', 12, '2023-10-27 16:57:06', '2023-10-27 16:57:06');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES
(1, 'Ireland', '2023-10-27 16:51:24', '2023-10-27 16:51:24'),
(2, 'Heard Island and McDonald Islands', '2023-10-27 16:51:24', '2023-10-27 16:51:24'),
(3, 'Serbia', '2023-10-27 16:51:24', '2023-10-27 16:51:24'),
(4, 'Burundi', '2023-10-27 16:51:24', '2023-10-27 16:51:24'),
(5, 'Czech Republic', '2023-10-27 16:51:24', '2023-10-27 16:51:24'),
(6, 'Papua New Guinea', '2023-10-27 16:51:24', '2023-10-27 16:51:24'),
(7, 'Indonesia', '2023-10-27 16:51:25', '2023-10-27 16:51:25'),
(8, 'Northern Mariana Islands', '2023-10-27 16:51:25', '2023-10-27 16:51:25'),
(9, 'Norfolk Island', '2023-10-27 16:51:25', '2023-10-27 16:51:25'),
(10, 'Kuwait', '2023-10-27 16:51:25', '2023-10-27 16:51:25'),
(11, 'Andorra', '2023-10-27 16:56:32', '2023-10-27 16:56:32'),
(12, 'New Zealand', '2023-10-27 16:56:32', '2023-10-27 16:56:32'),
(13, 'Libyan Arab Jamahiriya', '2023-10-27 16:56:32', '2023-10-27 16:56:32'),
(14, 'Kenya', '2023-10-27 16:56:32', '2023-10-27 16:56:32'),
(15, 'Pitcairn Islands', '2023-10-27 16:56:33', '2023-10-27 16:56:33'),
(16, 'Lithuania', '2023-10-27 16:56:33', '2023-10-27 16:56:33'),
(17, 'Palestinian Territories', '2023-10-27 16:56:33', '2023-10-27 16:56:33'),
(18, 'Spain', '2023-10-27 16:56:33', '2023-10-27 16:56:33'),
(19, 'Saint Lucia', '2023-10-27 16:56:33', '2023-10-27 16:56:33'),
(20, 'Hungary', '2023-10-27 16:56:33', '2023-10-27 16:56:33'),
(21, 'Greece', '2023-10-27 16:57:04', '2023-10-27 16:57:04'),
(22, 'Nigeria', '2023-10-27 16:57:04', '2023-10-27 16:57:04'),
(23, 'Norfolk Island', '2023-10-27 16:57:04', '2023-10-27 16:57:04'),
(24, 'Israel', '2023-10-27 16:57:04', '2023-10-27 16:57:04'),
(25, 'Iceland', '2023-10-27 16:57:04', '2023-10-27 16:57:04'),
(26, 'Turkmenistan', '2023-10-27 16:57:05', '2023-10-27 16:57:05'),
(27, 'Namibia', '2023-10-27 16:57:05', '2023-10-27 16:57:05'),
(28, 'Bahamas', '2023-10-27 16:57:05', '2023-10-27 16:57:05'),
(29, 'Saint Kitts and Nevis', '2023-10-27 16:57:05', '2023-10-27 16:57:05'),
(30, 'Kuwait', '2023-10-27 16:57:05', '2023-10-27 16:57:05');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_10_27_174118_create_sessions_table', 1),
(7, '2023_10_27_202904_create_children_infos_table', 2),
(9, '2023_10_27_220223_create_counties_table', 3),
(10, '2023_10_27_220223_create_countries_table', 4),
(11, '2023_10_27_221316_create_states_table', 4),
(12, '2023_10_27_221332_create_cities_table', 4),
(13, '2023_10_28_052454_add_column_zipcode_to_children_infos_table', 5),
(14, '2023_10_28_054740_create_children_guardian_infos_table', 5);

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('S2qbJ0twZ17xgQ4iLP0nkH9Dn9PHhgEglLxUVxj8', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRzJnOHRPSGs2aWRtNmhRc0t5WXoySm0wRk16cDJnbVdZcmlYQ25rZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZGQtY2hpbGRyZW4taW5mbyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkV1VUUDF2UWg3dTRGWlVydEs1WkZZT3YzczN6cUROcDZRc1lNVXlvYThyTzdiN0NpTmlINE8iO30=', 1698497626);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(255) NOT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state_name`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'Kansas', 15, '2023-10-27 16:56:33', '2023-10-27 16:56:33'),
(2, 'Virginia', 20, '2023-10-27 16:56:33', '2023-10-27 16:56:33'),
(3, 'Kentucky', 5, '2023-10-27 16:56:33', '2023-10-27 16:56:33'),
(4, 'Tennessee', 14, '2023-10-27 16:56:33', '2023-10-27 16:56:33'),
(5, 'Washington', 20, '2023-10-27 16:56:34', '2023-10-27 16:56:34'),
(6, 'Montana', 3, '2023-10-27 16:56:34', '2023-10-27 16:56:34'),
(7, 'Indiana', 9, '2023-10-27 16:56:34', '2023-10-27 16:56:34'),
(8, 'Indiana', 5, '2023-10-27 16:56:34', '2023-10-27 16:56:34'),
(9, 'New York', 10, '2023-10-27 16:56:34', '2023-10-27 16:56:34'),
(10, 'Alaska', 2, '2023-10-27 16:56:34', '2023-10-27 16:56:34'),
(11, 'North Dakota', 22, '2023-10-27 16:57:05', '2023-10-27 16:57:05'),
(12, 'Virginia', 27, '2023-10-27 16:57:05', '2023-10-27 16:57:05'),
(13, 'Alaska', 27, '2023-10-27 16:57:05', '2023-10-27 16:57:05'),
(14, 'Ohio', 23, '2023-10-27 16:57:05', '2023-10-27 16:57:05'),
(15, 'Virginia', 9, '2023-10-27 16:57:05', '2023-10-27 16:57:05'),
(16, 'Hawaii', 20, '2023-10-27 16:57:05', '2023-10-27 16:57:05'),
(17, 'Colorado', 26, '2023-10-27 16:57:05', '2023-10-27 16:57:05'),
(18, 'North Carolina', 21, '2023-10-27 16:57:05', '2023-10-27 16:57:05'),
(19, 'Tennessee', 2, '2023-10-27 16:57:06', '2023-10-27 16:57:06'),
(20, 'Vermont', 18, '2023-10-27 16:57:06', '2023-10-27 16:57:06');

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
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Asutosh Roy', 'admin@admin.com', NULL, '$2y$10$WUTP1vQh7u4FZUrtK5ZFYOv3s3zqDNp6QsYMUyoa8rO7b7CiNiH4O', NULL, NULL, NULL, '6BCdM0C8IPqj9ZF728cu8gzPbEEaYIm2txr02rwrI7CzQtZkObgejfdXxgio', NULL, NULL, '2023-10-27 12:16:18', '2023-10-27 12:16:18'),
(2, 'Asutosh Roy', 'royasutosh7@gmail.com', NULL, '$2y$10$DJf2qF3gJyyzXVAMIJRSaeXjadNU8pVnPR7aT6btcN6SLvR3.Enf.', NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-28 05:14:59', '2023-10-28 05:14:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `children_guardian_infos`
--
ALTER TABLE `children_guardian_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `children_fk_7090456` (`children_id`);

--
-- Indexes for table `children_infos`
--
ALTER TABLE `children_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state_fk_7090523` (`state_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_fk_7090589` (`country_id`);

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
-- AUTO_INCREMENT for table `children_guardian_infos`
--
ALTER TABLE `children_guardian_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `children_infos`
--
ALTER TABLE `children_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `children_guardian_infos`
--
ALTER TABLE `children_guardian_infos`
  ADD CONSTRAINT `children_fk_7090456` FOREIGN KEY (`children_id`) REFERENCES `children_infos` (`id`);

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `state_fk_7090523` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`);

--
-- Constraints for table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `country_fk_7090589` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
