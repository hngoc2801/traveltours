-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 04, 2023 at 01:57 PM
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
-- Database: `ve_tau`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `created_at`, `updated_at`, `name`, `description`) VALUES
(2, '2022-06-17 06:49:44', '2022-06-17 10:21:54', 'Hạng thương gia', 'Hạng thương gia'),
(7, '2022-06-17 10:24:52', '2022-06-23 08:06:18', 'Hạng thường', 'Hạng thường');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL,
  `start_date` timestamp NOT NULL,
  `end_date` timestamp NOT NULL,
  `threshold` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `created_at`, `updated_at`, `code`, `discount`, `start_date`, `end_date`, `threshold`) VALUES
(1, '2021-08-25 05:38:37', '2022-07-21 09:56:52', 'BH123', 13.00, '2022-07-12 17:00:00', '2022-07-27 17:00:00', 14.00),
(2, '2022-07-21 17:16:37', '2022-07-21 17:16:37', 'MH123', 23.00, '2022-07-03 17:00:00', '2022-08-02 17:00:00', 30.00);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2019_08_19_000000_create_failed_jobs_table', 1),
(13, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(14, '2022_04_19_133951_create_permission_tables', 1),
(15, '2022_04_24_150628_create_places_table', 1),
(16, '2022_04_24_151217_create_reviews_table', 1),
(17, '2022_04_24_151246_create_place_review_table', 1),
(18, '2022_04_24_151434_create_tours_table', 1),
(19, '2022_04_24_171558_add_status_column_to_users_table', 2),
(20, '2022_04_30_145323_create_categories_table', 3),
(21, '2022_04_30_171032_create_categories_table', 4),
(22, '2022_04_30_171340_create_tour_category_table', 5),
(23, '2022_05_01_082315_add_column_to_tours_table', 6),
(24, '2022_05_01_090910_add_place_id_column_to_reviews_table', 7),
(25, '2022_05_02_013645_add_avatar_column_to_users_table', 8),
(26, '2022_05_09_160411_add_display_name_column_to_roles_table', 9),
(27, '2022_06_17_120834_create_prices_table', 9),
(28, '2022_06_17_120954_create_tour_guides_table', 9),
(29, '2022_06_17_121142_create_coupons_table', 9),
(30, '2022_06_17_121559_alter_tours_table', 10),
(31, '2022_06_17_122405_create_category_tour_table', 11),
(32, '2022_06_17_122945_create_tour_review_table', 12),
(33, '2022_06_17_123153_create_place_review_2_table', 13),
(34, '2022_06_17_123237_create_orders_table', 14),
(35, '2022_06_17_130940_delele_tour_review_table', 15),
(36, '2022_06_17_131029_delele_place_review_table', 16),
(37, '2022_06_17_131453_alter_review_table', 17),
(38, '2022_07_04_153521_set_default_value_coupon_id_column_in_orders_table', 18),
(39, '2022_07_05_093146_add_name_to_tours', 19),
(40, '2022_07_05_103250_alter_table_tours_change_places', 20),
(41, '2022_07_13_095535_add_ward_to_places_table', 21),
(42, '2022_07_21_113239_alter_table_prices_change_adult_child', 22),
(43, '2022_07_22_010339_del_category_tour_table', 22);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 10),
(2, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 12),
(2, 'App\\Models\\User', 13),
(2, 'App\\Models\\User', 14),
(2, 'App\\Models\\User', 15),
(2, 'App\\Models\\User', 16),
(2, 'App\\Models\\User', 17),
(2, 'App\\Models\\User', 18),
(2, 'App\\Models\\User', 19),
(2, 'App\\Models\\User', 20),
(2, 'App\\Models\\User', 21),
(2, 'App\\Models\\User', 22),
(2, 'App\\Models\\User', 23),
(2, 'App\\Models\\User', 24);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tour_id` int NOT NULL,
  `coupon_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  `child_count` int NOT NULL,
  `adult_count` int NOT NULL,
  `total_price` double(8,2) NOT NULL,
  `tax` double(8,2) NOT NULL,
  `payment_method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `tour_id`, `coupon_id`, `user_id`, `child_count`, `adult_count`, `total_price`, `tax`, `payment_method`, `status`) VALUES
(4, '2022-07-16 21:10:34', '2022-07-16 21:10:34', 1, NULL, 6, 0, 1, 13.00, 10.00, 'cod', 'penning'),
(5, '2022-07-16 21:11:06', '2022-07-21 08:52:51', 1, NULL, 6, 0, 1, 13.00, 10.00, 'cod', 'active'),
(21, '2022-07-17 06:02:44', '2022-07-21 08:52:50', 1, NULL, 6, 0, 1, 13.00, 10.00, 'cod', 'active'),
(28, '2022-07-21 10:00:41', '2022-07-21 10:00:41', 2, NULL, 6, 0, 1, 11.31, 10.00, 'cod', 'penning'),
(33, '2022-07-21 10:18:54', '2022-07-21 10:18:54', 1, NULL, 6, 0, 1, 13.00, 10.00, 'cod', 'penning');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_detail` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` json NOT NULL,
  `ward` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `created_at`, `updated_at`, `province`, `district`, `address_detail`, `name`, `description`, `images`, `ward`) VALUES
(1, '2022-07-08 06:17:22', '2022-07-21 01:15:12', 'Tỉnh Bắc Giang', 'Huyện Sơn Động', 'Sơn Động, Bắc Giang', 'Tây Yên Tử', 'Khu du lịch sinh thái Tây Yên Tử', '[\"https://pystravel.vn/uploads/posts/albums/3310/a56dd85372e8a4ece692cc7e7beb5521.jpg\"]', 'Thị trấn Tây Yên Tử'),
(2, '2022-07-08 06:17:22', '2022-07-21 01:12:24', 'Tỉnh Bắc Giang', 'Huyện Lục Ngạn', 'Chũ, Lục Ngạn, Bắc Giang', 'Thị chấn Chũ', 'Trung tâm thị chấn', '[\"http://127.0.0.1:8000/uploads/place/62d90a6836bf2.jpg\"]', 'Thị trấn Chũ'),
(4, '2022-07-21 01:10:23', '2022-07-21 01:10:23', 'Thành phố Hải Phòng', 'Huyện Cát Hải', 'Cát bà, Cát Hải, Hải Phòng', 'Vịnh Hạ Long', 'Vịnh Hạ Long tươi đẹp', '[\"http://127.0.0.1:8000/uploads/place/62d909ef76139.jpg\"]', 'Thị trấn Cát Bà'),
(5, '2022-07-21 17:44:59', '2022-07-21 17:44:59', 'Tỉnh Lào Cai', 'Thị xã Sa Pa', 'Phan Si Păng, Sa Pa, Lào Cai', 'Fansipan', 'Khu du lịch Phan Si Păng', '[\"http://127.0.0.1:8000/uploads/place/62d9f30b5254e.jpg\"]', 'Phường Phan Si Păng');

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `child` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adult` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `created_at`, `updated_at`, `child`, `adult`) VALUES
(1, '2022-06-17 06:49:44', '2022-06-17 06:49:44', '12.00', '13.00'),
(2, '2022-06-17 06:49:44', '2022-07-21 10:40:46', '15.00', '30.00'),
(3, NULL, NULL, '15.00', '20.00'),
(4, NULL, NULL, '2.00', '32.00'),
(5, NULL, NULL, '17.00', '34.00');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int NOT NULL,
  `star` double NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `created_at`, `updated_at`, `user_id`, `star`, `type`, `comment`, `object_id`) VALUES
(1, '2022-07-19 06:59:01', '2022-07-19 06:59:01', 6, 5, 'tour', 'Hướng dẫn viên chuyên nghiệp', 1),
(2, '2022-07-19 06:59:01', '2022-07-19 06:59:01', 9, 4, 'tour', 'Chu đáo, tận ', 1),
(3, '2022-07-19 06:59:01', '2022-07-19 06:59:01', 21, 4, 'tour', 'Tốt ', 1),
(4, '2022-07-19 07:01:01', '2022-07-19 07:01:01', 10, 4, 'tour', 'Tốt', 1),
(5, '2022-07-19 08:23:26', '2022-07-19 08:23:26', 20, 4, 'place', 'Đẹp nhưng vẫn còn đang xây dựng', 1),
(6, '2022-07-19 08:24:51', '2022-07-19 08:24:51', 6, 4, 'place', 'Thử lại một lần nữa', 1),
(7, '2022-07-21 17:33:15', '2022-07-21 17:33:15', 10, 4, 'place', 'Khu vực tuyệt đẹp', 4);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `display_name`) VALUES
(1, 'admin', 'api', NULL, NULL, NULL),
(2, 'member', 'api', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tours`
--

CREATE TABLE `tours` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `dest` int NOT NULL,
  `tour_guide_id` int NOT NULL,
  `price_id` int NOT NULL,
  `range` int NOT NULL,
  `start_date` timestamp NOT NULL,
  `vehicle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hotel_star` int NOT NULL,
  `schedule` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `places` json NOT NULL,
  `max_slot` int NOT NULL,
  `slot` int NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tours`
--

INSERT INTO `tours` (`id`, `created_at`, `updated_at`, `dest`, `tour_guide_id`, `price_id`, `range`, `start_date`, `vehicle`, `hotel_star`, `schedule`, `places`, `max_slot`, `slot`, `name`) VALUES
(1, '2022-06-17 06:49:44', '2022-06-17 06:49:44', 1, 1, 1, 5, '2022-06-17 06:49:44', 'Ô tô 16 chỗ ngồi', 4, 'aa', '[1, 2]', 3, 1, 'Tham quan mùa xuân'),
(2, '2022-06-17 06:49:44', '2022-06-17 06:49:44', 4, 1, 1, 7, '2022-06-17 06:49:44', 'Ô tô 16 chỗ ngồi', 5, 'aa', '[1, 4]', 3, 0, 'Tham quan khu du lịch sinh thái Vịnh Hạ Long'),
(3, '2022-06-17 06:49:44', '2022-06-17 06:49:44', 4, 1, 2, 14, '2022-06-27 06:49:44', 'Ô tô 30 chỗ ngồi', 5, 'aa', '[1, 4]', 20, 0, 'Tham quan khu du lịch sinh thái Vịnh Hạ Long'),
(4, '2022-07-21 10:44:38', '2022-07-21 10:44:38', 1, 2, 3, 5, '2022-07-25 17:00:00', 'Máy bay', 5, 'Đi khắp nơi', '[2, 1]', 50, 0, 'Bán đảo Triều Tiên'),
(5, '2022-07-21 10:45:52', '2022-07-21 18:05:05', 2, 2, 4, 5, '2022-07-18 17:00:00', 'Thuyền, bè', 5, 'Đi Nhât Lệ', '[4, 2]', 50, 0, 'Bán đảo Nhật Lệ'),
(6, '2022-07-21 17:46:14', '2022-07-21 18:06:12', 5, 2, 5, 5, '2022-07-28 17:00:00', 'Ô tô 16 chỗ', 5, 'Đi tham quan khu du lịch miền quê Fansipan', '[2, 5]', 50, 0, 'Du lịch miền núi Fansipan');

-- --------------------------------------------------------

--
-- Table structure for table `tour_category`
--

CREATE TABLE `tour_category` (
  `tour_id` int NOT NULL,
  `category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tour_category`
--

INSERT INTO `tour_category` (`tour_id`, `category_id`) VALUES
(1, 3),
(1, 7),
(4, 3),
(4, 7),
(5, 3),
(5, 7),
(6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tour_guides`
--

CREATE TABLE `tour_guides` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tour_guides`
--

INSERT INTO `tour_guides` (`id`, `created_at`, `updated_at`, `name`, `phone_number`, `address`) VALUES
(1, '2022-06-17 06:49:44', '2022-07-21 01:19:40', 'Davies', '09123123', 'Núi Hiểu, Quang Châu'),
(2, '2022-06-17 06:49:44', '2022-06-17 10:43:09', 'Jonny', '12312321', 'Da Nang, Lam Dong'),
(3, '2022-06-17 10:41:08', '2022-06-17 10:43:02', 'Hoàng Ngọc Lâm', 'HDV tài năng', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `username`, `status`, `avatar`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$l247C8kmbLLPc61qTZ1TFeLssK8P5XaGi24EjVQp8j4W0AiTo9T/u', NULL, NULL, '2022-07-04 08:23:55', 'admin123', 'active', 'http://localhost:8000/uploads/62c3060ba73c9.jpg'),
(6, 'Nguyễn Quang Huy', 'xinchao@gmail.com', NULL, '$2y$10$Geta5OxcLfEN3O4KCNgIMuWB5B/lIXGbPzQDae1IEwA2WFUSMupRO', NULL, '2022-04-24 10:20:39', '2022-07-16 21:08:12', 'nqhhh', 'active', 'http://localhost:8000/uploads/user/62d38b2c9bab8.png'),
(8, 'Chu Hiểu ', 'three@gmail.cm', NULL, '$2y$10$X/h2OcobkKGcOh9a3Sc4dOdl0i0WWwh2St8lbO.epGCawasGymeyu', NULL, '2022-05-03 18:43:49', '2022-05-03 18:43:49', 'cls_130871_20183554', 'active', NULL),
(9, 'Phạm Huy Hoàng', 'contact@pigroupco.com', NULL, '$2y$10$1Y04DTky4F5O1javUAyhZeipwWwVvFhtrwFN6uAf7ifpBuhBOT4vC', NULL, '2022-05-03 18:44:55', '2022-05-03 18:44:55', 'pigroupco', 'active', NULL),
(10, 'Dương Công Hậu', 'aa@a.c', NULL, '$2y$10$JcIoR9f9ly40OJJ/I4wr/uSREN5KkWFbabLp/VOaDUqfXmtUQty5e', NULL, '2022-05-03 18:45:41', '2022-07-21 17:33:52', 'mmstemplate', 'active', 'http://localhost:8000/uploads/user/62d9f0706d2f3.jpg'),
(20, 'Dương Lê', 'aaaaaaa@a.a', NULL, '$2y$10$AiReXm61opyMPdvfeyn/TefHWZHkhsvA8ODX/aYd5xIgEdN8VE9Mm', NULL, '2022-05-03 19:10:51', '2022-05-03 19:10:51', 'aaaaaaa', 'active', NULL),
(21, 'Vân Vân', 'test@mail', NULL, '$2y$10$y0xAcggVuLe4TS9KsFYEHeZC2rVheRm6Aa7JhKnrLOdkp5jhdTbty', NULL, '2022-06-17 11:36:26', '2022-06-17 11:36:26', 'test12345', 'active', NULL),
(22, 'Hoàng Lẽ Phải', 'asdfasdf@123', NULL, '$2y$10$mkpDgR29FfNBHAn91XIPoeYYA/v1u5EpHJN0HK/ruQaX.RlkKHwMq', NULL, '2022-06-17 11:37:48', '2022-06-17 11:37:48', 'test123456', 'active', NULL),
(23, 'ngoc2001', 'ngoc2001@gmail.com', NULL, '$2y$10$hA2uZC3c2aOSe4AtDBKE6e5NoTvBlUr1QH9RUytPAs0yJVQGXmegO', NULL, '2023-07-04 06:37:39', '2023-07-04 06:37:39', 'ngoc2001', 'active', NULL),
(24, 'phuongle', 'phuonghole121201@gmail.com', NULL, '$2y$10$l247C8kmbLLPc61qTZ1TFeLssK8P5XaGi24EjVQp8j4W0AiTo9T/u', NULL, '2023-07-04 06:50:47', '2023-07-04 06:50:47', 'phuongle', 'active', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tour_category`
--
ALTER TABLE `tour_category`
  ADD PRIMARY KEY (`tour_id`,`category_id`);

--
-- Indexes for table `tour_guides`
--
ALTER TABLE `tour_guides`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tours`
--
ALTER TABLE `tours`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tour_guides`
--
ALTER TABLE `tour_guides`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
