-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 03, 2023 at 10:12 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `brand_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_slug`, `brand_image`, `created_at`, `updated_at`) VALUES
(1, 'new brand', 'new brand', 'upload/brand/1777536382796428.png', '2023-09-18 00:24:26', '2023-09-20 00:19:55'),
(2, 'brand1', 'brand1', 'upload/brand/1777527744019470.png', '2023-09-19 22:02:36', '2023-09-19 22:02:36'),
(3, 'brand2', 'brand2', 'upload/brand/1777530031862959.jpg', '2023-09-19 22:38:58', '2023-09-19 22:38:58'),
(8, 'brand 4 u', 'brand 4 u', 'upload/brand/1777892229404876.jpg', '2023-09-20 00:41:49', '2023-09-23 22:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `category_image`, `created_at`, `updated_at`) VALUES
(1, 'Laptop', 'laptop', 'upload/category/1777890821729392.jpg', '2023-09-23 22:13:34', '2023-09-23 22:13:34'),
(2, 'Mobile', 'mobile', 'upload/category/1777891008218424.jpg', '2023-09-23 22:16:32', '2023-09-23 22:16:32'),
(3, 'Dress', 'dress', 'upload/category/1778074615541562.jpg', '2023-09-23 22:30:27', '2023-09-25 22:54:53'),
(4, 'Furniture', 'furniture', 'upload/category/1778169542925766.jpg', '2023-09-27 00:03:43', '2023-09-27 00:03:43');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_18_035817_create_brands_table', 2),
(6, '2023_09_18_043513_create_brands_table', 3),
(7, '2023_09_21_035126_create_sliders_table', 4),
(8, '2023_09_24_034349_create_categories_table', 5),
(9, '2023_09_25_035202_create_products_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `brand_id` int NOT NULL,
  `category_id` int NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_descp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_descp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hot_deals` int DEFAULT NULL,
  `featured` int DEFAULT NULL,
  `special_offer` int DEFAULT NULL,
  `special_deals` int DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `product_name`, `product_slug`, `product_code`, `product_qty`, `product_tags`, `product_size`, `product_color`, `selling_price`, `discount_price`, `short_descp`, `long_descp`, `product_image`, `vendor_id`, `hot_deals`, `featured`, `special_offer`, `special_deals`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'Samsung up', 'samsung up', '54464', '65', '#87455', '464', 'pink', '200000', '10000', 'abcdef', 'sdfsgf', 'upload/product/1778082389234130.jpg', '2', 1, NULL, NULL, NULL, 1, '2023-09-25 22:00:56', '2023-09-26 21:29:32'),
(2, 1, 1, 'lotus new', 'lotus new', '54464', '100', '#87454', '464', 'black', '200000', '100000', 'abcdef', 'nice it is and lovely', 'upload/product/1778160340472360.jpg', '1', NULL, NULL, 1, NULL, 1, '2023-09-25 22:46:08', '2023-09-26 23:56:31'),
(3, 3, 1, 'lily', 'lily', '1212', '20', '#34', '20', 'black', '200000', '10000', 'nice', 'dsff', 'upload/product/1778079958972525.jpg', NULL, NULL, NULL, 1, NULL, 1, '2023-09-26 00:19:49', '2023-09-26 00:19:49'),
(4, 1, 3, 'Galaxy A05s', 'galaxy a05s', '1212', '20', '#1', '20', 'red', '50000', '7', 'beautiful', 'dffsfsfsfsfsfs', 'upload/product/1778168926523893.jpg', NULL, 1, NULL, NULL, NULL, 1, '2023-09-26 23:53:55', '2023-09-26 23:53:55'),
(5, 2, 2, 'lily123', 'lily123', '346', '20', '#2', '20', 'gray', '10', '5', 'beautiful', 'adadadad', 'upload/product/1778168967822748.jpg', NULL, 1, 1, NULL, NULL, 1, '2023-09-26 23:54:34', '2023-09-26 23:54:34'),
(6, 8, 2, 'Walton', 'walton', '143', '50', '#4', '60', 'purple', '5000', '10', 'abcdef', 'fdssfsf', 'upload/product/1778169082782735.jpg', NULL, NULL, NULL, 1, NULL, 1, '2023-09-26 23:56:24', '2023-09-26 23:56:24'),
(7, 2, 4, 'best Buy', 'best buy', '123', '600', '#9', '108.4', 'black', '30000', '100', 'beautiful', 'gfdgdgdgdgdg', 'upload/product/1778169684437038.jpg', NULL, 1, 1, 1, NULL, 1, '2023-09-27 00:05:58', '2023-09-27 00:05:58');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `slider_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_title`, `short_title`, `slider_image`, `created_at`, `updated_at`) VALUES
(10, 'slider1', 'slider1', 'upload/slider/1777627678603032.jpg', '2023-09-21 00:31:01', '2023-09-21 00:31:01'),
(11, 'slider2', 'slider2', 'upload/slider/1777627686773841.jpg', '2023-09-21 00:31:09', '2023-09-21 00:31:09'),
(12, 'slider3', 'slider3', 'upload/slider/1777627792454757.jpg', '2023-09-21 00:32:49', '2023-09-21 00:32:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `role` enum('admin','vendor','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, 'admin@gmail.com', NULL, '$2y$10$Qleh7iJvFHP47nOPbWMw0eNcNseFhjKLnZ.j6s1dGUTzpbGx0Z3ui', '1696229582.jpg', '0999999991', 'dada', 'admin', 'active', 'T4fBdMULIZiC7gzCLg9loTFFXISLSW50LCkK8VhRAZ4Ao00f9STjmUjcVD77', NULL, '2023-10-02 22:10:38'),
(2, 'Vendor', 'vendor', 'vendor@gmail.com', NULL, '$2y$10$FAyKyXb76jKnCnV6h9yahOs36rQalCgZ4LTEHwzfxtyanWY7IBKny', NULL, NULL, NULL, 'vendor', 'active', NULL, NULL, NULL),
(3, 'User', 'user', 'user@gmail.com', NULL, '$2y$10$QkqLUBD4Cx0FkOe60EdnquFhUEnvn9dGWTxQqASVgdF/EkSIuH5ly', NULL, NULL, NULL, 'user', 'active', NULL, NULL, NULL),
(4, 'Earnest Hintz MD', NULL, 'solon.altenwerth@example.org', '2023-09-03 21:39:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/009900?text=laborum', '+1-701-351-1869', '57026 Lockman Key Suite 816\nLailamouth, IN 75430', 'user', 'active', 'JF0Vfb4fgQ', '2023-09-03 21:39:54', '2023-09-03 21:39:54'),
(5, 'Clotilde Nolan II', NULL, 'tracy52@example.net', '2023-09-03 21:39:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/001122?text=enim', '1-281-544-9362', '166 Paige Garden\nLake Patriciaview, KS 32185', 'admin', 'inactive', '4XNx3n3PjN', '2023-09-03 21:39:54', '2023-09-03 21:39:54'),
(6, 'Myron Mohr', NULL, 'daniella05@example.net', '2023-09-03 21:39:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/0044cc?text=illum', '1-878-314-3289', '5816 VonRueden Tunnel\nLetaborough, SC 31711', 'vendor', 'inactive', 'ZjkTljqKcf', '2023-09-03 21:39:54', '2023-09-03 21:39:54'),
(7, 'Giovanna Becker', NULL, 'mcclure.georgette@example.net', '2023-09-03 21:39:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00ccdd?text=et', '(239) 676-0030', '202 Bonita Cape Apt. 099\nMozelleside, AZ 07908', 'vendor', 'active', 'EtYsJfUzPY', '2023-09-03 21:39:54', '2023-09-03 21:39:54'),
(8, 'Erin Turcotte', NULL, 'xstoltenberg@example.com', '2023-09-03 21:39:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/005555?text=eaque', '+1.480.848.3543', '14273 Alford Mount\nNorth Justice, DE 55153', 'admin', 'inactive', '95FLzGC3Jo', '2023-09-03 21:39:54', '2023-09-03 21:39:54'),
(9, 'Granville Lemke', NULL, 'rylee.mcglynn@example.org', '2023-09-03 21:39:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/0044ff?text=dignissimos', '1-432-585-0182', '497 Greenholt Fork Suite 285\nReingerton, OR 65179-8572', 'user', 'active', 'GOKy3VaWQH', '2023-09-03 21:39:54', '2023-09-03 21:39:54'),
(10, 'Mr. Gene Goodwin DDS', NULL, 'mckenzie.itzel@example.com', '2023-09-03 21:39:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/007722?text=et', '352.345.1266', '394 Kuhlman Centers\nNorth June, SC 12517', 'admin', 'active', 'd4al6sjIhP', '2023-09-03 21:39:54', '2023-09-03 21:39:54'),
(11, 'Weldon Hamill', NULL, 'gus52@example.net', '2023-09-03 21:39:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/008866?text=minima', '(220) 275-8984', '771 Marley Ridges Suite 817\nGerhardport, FL 45994', 'user', 'inactive', 'ITCMEdbF0B', '2023-09-03 21:39:54', '2023-09-03 21:39:54'),
(12, 'Anik', NULL, 'anik@gmail.com', NULL, '$2y$10$7pnyWW9RqCqLzbfwq6Ng3.kTRak/OIbKF7IUQvfAMaCIuvBaamIIm', NULL, NULL, NULL, 'user', 'active', NULL, '2023-09-03 21:45:46', '2023-09-03 21:45:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
