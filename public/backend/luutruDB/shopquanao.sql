-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 11, 2021 lúc 09:03 AM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopquanao`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(27, '2014_10_12_000000_create_users_table', 1),
(28, '2014_10_12_100000_create_password_resets_table', 1),
(29, '2019_08_19_000000_create_failed_jobs_table', 1),
(30, '2021_05_24_082002_create_tbl_admin_table', 1),
(31, '2021_05_24_140536_create_sessions_table', 1),
(35, '2021_05_25_164925_create_tbl_category_product_table', 2),
(36, '2021_05_27_084059_create_tbl_brand_product_table', 2),
(41, '2021_05_30_094720_create_tbl_product_table', 3),
(44, '2021_06_06_141735_create_tbl_customer_table', 4),
(47, '2021_06_08_173227_create_tbl_payment_table', 6),
(50, '2021_06_08_173553_create_tbl_order_table', 7),
(52, '2021_06_06_171304_create_tbl_shipping_table', 8),
(54, '2021_06_16_013515_create_tbl_gallery_table', 10),
(59, '2021_06_20_044324_create_tbl_wishlist_table', 11),
(61, '2021_06_08_173639_create_tbl_order_details_table', 12),
(63, '2021_06_24_000717_create_tbl_sliderbanner_table', 13),
(65, '2021_06_24_143600_create_tbl_news_table', 14),
(66, '2021_06_24_163047_create_tbl_cate_news_table', 15),
(67, '2021_06_26_133441_create_tbl_rating_table', 16),
(68, '2021_06_26_181450_create_tbl_contact_table', 17),
(69, '2021_07_10_035857_create_tbl_get_email_table', 18);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `admin_name`, `admin_email`, `admin_password`, `admin_phone`, `created_at`, `updated_at`) VALUES
(3, 'Hoàng Đình Hanh', 'hoangdinhhanh1@gmail.com', '25f9e794323b453885f5181f1b624d0b', '', NULL, NULL),
(4, 'Hoàng Đình Hanh', 'chithethoi0003@gmail.com', '25f9e794323b453885f5181f1b624d0b', '0368661392', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand_product`
--

CREATE TABLE `tbl_brand_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand_product`
--

INSERT INTO `tbl_brand_product` (`id`, `brand_name`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(3, 'Niki', 'sdfas', 1, '2021-05-27 10:21:18', '2021-05-27 10:21:18'),
(4, 'The Men', 'dfasd', 1, '2021-05-27 10:21:24', '2021-05-27 10:21:24'),
(5, 'PRADA', 'các loại đầm', 1, '2021-05-28 00:47:36', '2021-05-28 00:47:36'),
(6, 'Louis Vuitton', 'nổi tiếng thế giới', 1, '2021-05-28 00:55:58', '2021-05-28 00:55:58'),
(8, 'Chanel', 'là ngành thời trang', 1, '2021-05-31 08:49:23', '2021-05-31 08:49:23'),
(9, 'Hermès', 'kinh doanh bơi người pháp', 1, '2021-05-31 08:49:54', '2021-05-31 08:49:54'),
(10, 'Gucci', 'la biểu tượng thời trang cưa italia', 1, '2021-05-31 08:50:32', '2021-05-31 08:50:32'),
(11, 'Owen', 'của việt nam', 1, '2021-05-31 08:51:43', '2021-05-31 08:51:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`id`, `category_name`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'Áo vest', 'các loại áo vest', 1, '2021-05-27 06:43:15', '2021-05-27 06:43:15'),
(2, 'Áo sơ mi', 'các loại áo', 1, '2021-05-28 00:46:55', '2021-05-28 00:46:55'),
(4, 'Đầm Nữ', 'fwqwq', 1, '2021-05-30 08:38:02', '2021-05-30 08:38:02'),
(5, 'Quẩn áo nam', 'các loại quân áo   nam', 1, '2021-05-31 08:20:29', '2021-05-31 08:20:29'),
(6, 'QUẦN ÁO THỂ THAO', 'các loại quan áo thể thao', 1, '2021-05-31 08:22:56', '2021-05-31 08:22:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cate_news`
--

CREATE TABLE `tbl_cate_news` (
  `cate_news_id` int(10) UNSIGNED NOT NULL,
  `cate_news_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_news_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cate_news`
--

INSERT INTO `tbl_cate_news` (`cate_news_id`, `cate_news_name`, `cate_news_status`, `created_at`, `updated_at`) VALUES
(1, 'Thời trang trong nước', 1, '2021-06-24 09:57:52', '2021-06-24 10:15:06'),
(2, 'Thời trang nước ngoài', 1, '2021-06-24 09:58:27', '2021-06-24 10:15:04'),
(3, 'Thời trang  showbiz', 1, '2021-06-24 09:58:49', '2021-06-24 10:15:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `contact_id` int(10) UNSIGNED NOT NULL,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_address`, `customer_phone`, `created_at`, `updated_at`) VALUES
(2, 'Hoàng Đình Hanh', 'chithethoi0003@gmail.com', '25f9e794323b453885f5181f1b624d0b', '149 Lạc Long Quân', '0368661392', NULL, NULL),
(3, 'Hoàng Đình Hanh', 'hoangdinhhanh@gmail.com', '25f9e794323b453885f5181f1b624d0b', '149 Lạc Long Quân', '0368661392', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `gallery_id` int(10) UNSIGNED NOT NULL,
  `gallery_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`gallery_id`, `gallery_name`, `gallery_image`, `product_id`, `created_at`, `updated_at`) VALUES
(14, 'ao-vest-nazafu-den-1107-9866-slide-products-5b3af822d75995122310.jpg', 'ao-vest-nazafu-den-1107-9866-slide-products-5b3af822d75995122310.jpg', 2, '2021-06-19 09:02:30', '2021-06-19 09:02:30'),
(15, 'ao-vest-nazafu-den-1107-9866-slide-products-5b3af827def134216772.jpg', 'ao-vest-nazafu-den-1107-9866-slide-products-5b3af827def134216772.jpg', 2, '2021-06-19 09:02:31', '2021-06-19 09:02:31'),
(16, 'ao-vest-nazafu-den-1107-9866-slide-products-5b3af82571db22897984.jpg', 'ao-vest-nazafu-den-1107-9866-slide-products-5b3af82571db22897984.jpg', 2, '2021-06-19 09:02:31', '2021-06-19 09:02:31'),
(17, 'ao-vest-nazafu-xanh-duong-dam-1128-10129-slide-products-5bc45707c603f2261551.jpg', 'ao-vest-nazafu-xanh-duong-dam-1128-10129-slide-products-5bc45707c603f2261551.jpg', 8, '2021-06-19 09:07:35', '2021-06-19 09:07:35'),
(18, 'ao-vest-nazafu-xanh-duong-dam-1128-10129-slide-products-5bc457077da753767076.jpg', 'ao-vest-nazafu-xanh-duong-dam-1128-10129-slide-products-5bc457077da753767076.jpg', 8, '2021-06-19 09:07:35', '2021-06-19 09:07:35'),
(19, 'ao-vest-nazafu-xanh-duong-dam-1128-10129-slide-products-5bc4570709fb98527505.jpg', 'ao-vest-nazafu-xanh-duong-dam-1128-10129-slide-products-5bc4570709fb98527505.jpg', 8, '2021-06-19 09:07:35', '2021-06-19 09:07:35'),
(20, 'ao-vest-nazafu-xanh-duong-dam-1128-10129-slide-products-5bc4570741253182185.jpg', 'ao-vest-nazafu-xanh-duong-dam-1128-10129-slide-products-5bc4570741253182185.jpg', 8, '2021-06-19 09:07:35', '2021-06-19 09:07:35'),
(21, 'ao-vest-nazafu-xanh-den-1127-10127-slide-products-5bc45506d292e1827161.jpg', 'ao-vest-nazafu-xanh-den-1127-10127-slide-products-5bc45506d292e1827161.jpg', 9, '2021-06-19 09:10:18', '2021-06-19 09:10:18'),
(22, 'ao-vest-nazafu-xanh-den-1127-10127-slide-products-5bc45507ca6775984770.jpg', 'ao-vest-nazafu-xanh-den-1127-10127-slide-products-5bc45507ca6775984770.jpg', 9, '2021-06-19 09:10:18', '2021-06-19 09:10:18'),
(23, 'ao-vest-nazafu-xanh-den-1127-10127-slide-products-5bc455078c4b14186989.jpg', 'ao-vest-nazafu-xanh-den-1127-10127-slide-products-5bc455078c4b14186989.jpg', 9, '2021-06-19 09:10:18', '2021-06-19 09:10:18'),
(24, 'ao-vest-nazafu-xanh-den-1127-10127-slide-products-5bc45507174497648869.jpg', 'ao-vest-nazafu-xanh-den-1127-10127-slide-products-5bc45507174497648869.jpg', 9, '2021-06-19 09:10:18', '2021-06-19 09:10:18'),
(25, 'ao-vest-nazafu-xanh-den-1127-10127-slide-products-5bc45507550786846689.jpg', 'ao-vest-nazafu-xanh-den-1127-10127-slide-products-5bc45507550786846689.jpg', 9, '2021-06-19 09:10:18', '2021-06-19 09:10:18'),
(26, 'ao-vest-do-man-av1102-9841-slide-products-5b3466d3a80e04646744.jpg', 'ao-vest-do-man-av1102-9841-slide-products-5b3466d3a80e04646744.jpg', 10, '2021-06-19 09:20:20', '2021-06-19 09:20:20'),
(27, 'ao-vest-do-man-av1102-9841-slide-products-5b3466d3deeae8166655.jpg', 'ao-vest-do-man-av1102-9841-slide-products-5b3466d3deeae8166655.jpg', 10, '2021-06-19 09:20:20', '2021-06-19 09:20:20'),
(28, 'ao-vest-do-man-av1102-9841-slide-products-5b3466d375d318410800.jpg', 'ao-vest-do-man-av1102-9841-slide-products-5b3466d375d318410800.jpg', 10, '2021-06-19 09:20:20', '2021-06-19 09:20:20'),
(29, 'ao-vest-nazafu-xanh-den-1103-9847-slide-products-5b346c18a797a9329343.jpg', 'ao-vest-nazafu-xanh-den-1103-9847-slide-products-5b346c18a797a9329343.jpg', 11, '2021-06-19 09:25:21', '2021-06-19 09:25:21'),
(30, 'ao-vest-nazafu-xanh-den-1103-9847-slide-products-5b346c18dca9c5153199.jpg', 'ao-vest-nazafu-xanh-den-1103-9847-slide-products-5b346c18dca9c5153199.jpg', 11, '2021-06-19 09:25:21', '2021-06-19 09:25:21'),
(31, 'ao-vest-nazafu-xanh-den-1103-9847-slide-products-5b346c1838b1b4599696.jpg', 'ao-vest-nazafu-xanh-den-1103-9847-slide-products-5b346c1838b1b4599696.jpg', 11, '2021-06-19 09:25:21', '2021-06-19 09:25:21'),
(32, 'ao-vest-nazafu-xanh-den-1103-9847-slide-products-5b346c1874bff1816210.jpg', 'ao-vest-nazafu-xanh-den-1103-9847-slide-products-5b346c1874bff1816210.jpg', 11, '2021-06-19 09:25:21', '2021-06-19 09:25:21'),
(33, 'ao-vest-nazafu-den-1124-10663-slide-products-5c493f1eae5a52758930.jpg', 'ao-vest-nazafu-den-1124-10663-slide-products-5c493f1eae5a52758930.jpg', 12, '2021-06-19 09:29:17', '2021-06-19 09:29:17'),
(34, 'ao-vest-nazafu-den-1124-10663-slide-products-5c493f1f7de983675687.jpg', 'ao-vest-nazafu-den-1124-10663-slide-products-5c493f1f7de983675687.jpg', 12, '2021-06-19 09:29:17', '2021-06-19 09:29:17'),
(35, 'ao-vest-nazafu-den-1124-10663-slide-products-5c493f1f039d55368279.jpg', 'ao-vest-nazafu-den-1124-10663-slide-products-5c493f1f039d55368279.jpg', 12, '2021-06-19 09:29:17', '2021-06-19 09:29:17'),
(36, 'ao-vest-nazafu-den-1124-10663-slide-products-5c493f1f421a77971171.jpg', 'ao-vest-nazafu-den-1124-10663-slide-products-5c493f1f421a77971171.jpg', 12, '2021-06-19 09:29:17', '2021-06-19 09:29:17'),
(37, 'ao-vest-nazafu-den-1124-10663-slide-products-5c493f1fb79d55871705.jpg', 'ao-vest-nazafu-den-1124-10663-slide-products-5c493f1fb79d55871705.jpg', 12, '2021-06-19 09:29:17', '2021-06-19 09:29:17'),
(38, 'ao-vest-nazafu-xam-1113-10664-slide-products-5c494047c249e2217591.jpg', 'ao-vest-nazafu-xam-1113-10664-slide-products-5c494047c249e2217591.jpg', 13, '2021-06-19 09:31:49', '2021-06-19 09:31:49'),
(39, 'ao-vest-nazafu-xam-1113-10664-slide-products-5c4940471dab42296031.jpg', 'ao-vest-nazafu-xam-1113-10664-slide-products-5c4940471dab42296031.jpg', 13, '2021-06-19 09:31:49', '2021-06-19 09:31:49'),
(40, 'ao-vest-nazafu-xam-1113-10664-slide-products-5c4940476b7b39856491.jpg', 'ao-vest-nazafu-xam-1113-10664-slide-products-5c4940476b7b39856491.jpg', 13, '2021-06-19 09:31:49', '2021-06-19 09:31:49'),
(41, 'ao-vest-nazafu-xam-1113-10664-slide-products-5c49404812a482330896.jpg', 'ao-vest-nazafu-xam-1113-10664-slide-products-5c49404812a482330896.jpg', 13, '2021-06-19 09:31:49', '2021-06-19 09:31:49'),
(42, 'ao-vest-nazafu-den-1109-10112-slide-products-5bc4443ef279a6641885.jpg', 'ao-vest-nazafu-den-1109-10112-slide-products-5bc4443ef279a6641885.jpg', 14, '2021-06-19 09:44:02', '2021-06-19 09:44:02'),
(43, 'ao-vest-nazafu-den-1109-10112-slide-products-5bc4443f3cb0a1052518.jpg', 'ao-vest-nazafu-den-1109-10112-slide-products-5bc4443f3cb0a1052518.jpg', 14, '2021-06-19 09:44:02', '2021-06-19 09:44:02'),
(44, 'ao-vest-nazafu-den-1109-10112-slide-products-5bc4443f713f87560662.jpg', 'ao-vest-nazafu-den-1109-10112-slide-products-5bc4443f713f87560662.jpg', 14, '2021-06-19 09:44:02', '2021-06-19 09:44:02'),
(45, 'ao-vest-nazafu-den-1109-10112-slide-products-5bc4443fa5cc18102032.jpg', 'ao-vest-nazafu-den-1109-10112-slide-products-5bc4443fa5cc18102032.jpg', 14, '2021-06-19 09:44:02', '2021-06-19 09:44:02'),
(46, 'ao-vest-nazafu-den-1109-10112-slide-products-5bc4443fedabc3559908.jpg', 'ao-vest-nazafu-den-1109-10112-slide-products-5bc4443fedabc3559908.jpg', 14, '2021-06-19 09:44:02', '2021-06-19 09:44:02'),
(47, '16220228237a868dfede1903c498b80f72cfe2c35c_thumbnail_600x1882251.webp', '16220228237a868dfede1903c498b80f72cfe2c35c_thumbnail_600x1882251.webp', 15, '2021-06-19 09:56:19', '2021-06-19 09:56:19'),
(48, '16220228301d845b83e8172cb29d8c88d326689ac6_thumbnail_600x4346256.webp', '16220228301d845b83e8172cb29d8c88d326689ac6_thumbnail_600x4346256.webp', 15, '2021-06-19 09:56:19', '2021-06-19 09:56:19'),
(49, '16220228336b0f2814b5dd3fc6423016bed07a780c_thumbnail_600x6659557.webp', '16220228336b0f2814b5dd3fc6423016bed07a780c_thumbnail_600x6659557.webp', 15, '2021-06-19 09:56:19', '2021-06-19 09:56:19'),
(50, '16220228387ea18ea5da99e627917c083bdaa418bc_thumbnail_600x739430.webp', '16220228387ea18ea5da99e627917c083bdaa418bc_thumbnail_600x739430.webp', 15, '2021-06-19 09:56:19', '2021-06-19 09:56:19'),
(51, '16220228429ad77d34b5e9cb21755b5b013645b9f2_thumbnail_600x3062911.webp', '16220228429ad77d34b5e9cb21755b5b013645b9f2_thumbnail_600x3062911.webp', 15, '2021-06-19 09:56:19', '2021-06-19 09:56:19'),
(52, '1622022827264d82c5265807c36d3e277ffb502c57_thumbnail_600x7226784.webp', '1622022827264d82c5265807c36d3e277ffb502c57_thumbnail_600x7226784.webp', 15, '2021-06-19 09:56:19', '2021-06-19 09:56:19'),
(53, '16220228351496e47d9ab5badac3a4e19b4761e923_thumbnail_600x5394904.webp', '16220228351496e47d9ab5badac3a4e19b4761e923_thumbnail_600x5394904.webp', 15, '2021-06-19 09:56:19', '2021-06-19 09:56:19'),
(55, '-16117-slide-products-60af224b7586c8618123.jpg', '-16117-slide-products-60af224b7586c8618123.jpg', 4, '2021-06-27 19:25:17', '2021-06-27 19:25:17'),
(56, '-16117-slide-products-60af224f50cf59559607.jpg', '-16117-slide-products-60af224f50cf59559607.jpg', 4, '2021-06-27 19:25:17', '2021-06-27 19:25:17'),
(57, '-16117-slide-products-60af2246c7dc89291413.jpg', '-16117-slide-products-60af2246c7dc89291413.jpg', 4, '2021-06-27 19:25:17', '2021-06-27 19:25:17'),
(58, '-16117-slide-products-60af2243312cb2976045.jpg', '-16117-slide-products-60af2243312cb2976045.jpg', 4, '2021-06-27 19:25:17', '2021-06-27 19:25:17'),
(59, 'ao-so-mi-caro-brushed-twill-asm026-15944-slide-products-60179c76b38824354381.png', 'ao-so-mi-caro-brushed-twill-asm026-15944-slide-products-60179c76b38824354381.png', 3, '2021-06-27 19:30:30', '2021-06-27 19:30:30'),
(60, 'ao-so-mi-caro-brushed-twill-asm026-15944-slide-products-60179c77a36444492596.png', 'ao-so-mi-caro-brushed-twill-asm026-15944-slide-products-60179c77a36444492596.png', 3, '2021-06-27 19:30:30', '2021-06-27 19:30:30'),
(61, 'ao-so-mi-caro-brushed-twill-asm026-15944-slide-products-60179c761a8fc6289757.png', 'ao-so-mi-caro-brushed-twill-asm026-15944-slide-products-60179c761a8fc6289757.png', 3, '2021-06-27 19:30:30', '2021-06-27 19:30:30'),
(62, 'ao-so-mi-caro-brushed-twill-asm026-15944-slide-products-60179c773f1304464583.png', 'ao-so-mi-caro-brushed-twill-asm026-15944-slide-products-60179c773f1304464583.png', 3, '2021-06-27 19:30:30', '2021-06-27 19:30:30'),
(63, '-16078-slide-products-609ca8a40fc054952494.png', '-16078-slide-products-609ca8a40fc054952494.png', 6, '2021-06-27 19:32:20', '2021-06-27 19:32:20'),
(64, '-16078-slide-products-609ca89b19a3b314311.png', '-16078-slide-products-609ca89b19a3b314311.png', 6, '2021-06-27 19:32:20', '2021-06-27 19:32:20'),
(65, '-16078-slide-products-609ca89e6ba1f7576019.png', '-16078-slide-products-609ca89e6ba1f7576019.png', 6, '2021-06-27 19:32:20', '2021-06-27 19:32:20'),
(66, '-16078-slide-products-609ca897b343c9278588.png', '-16078-slide-products-609ca897b343c9278588.png', 6, '2021-06-27 19:32:20', '2021-06-27 19:32:20'),
(67, '-16116-slide-products-60af218d6077a6457742.jpg', '-16116-slide-products-60af218d6077a6457742.jpg', 7, '2021-06-27 19:33:58', '2021-06-27 19:33:58'),
(68, '-16116-slide-products-60af2188ecb038602716.jpg', '-16116-slide-products-60af2188ecb038602716.jpg', 7, '2021-06-27 19:33:58', '2021-06-27 19:33:58'),
(69, '-16116-slide-products-60af2191c8ced9440511.jpg', '-16116-slide-products-60af2191c8ced9440511.jpg', 7, '2021-06-27 19:33:58', '2021-06-27 19:33:58'),
(70, '-16116-slide-products-60af2196e7c412659811.jpg', '-16116-slide-products-60af2196e7c412659811.jpg', 7, '2021-06-27 19:33:58', '2021-06-27 19:33:58'),
(71, 'asm-hoa-tiet-la-cay-mau-den-asm062-16114-slide-products-60af1e8fcd5e65445774.jpg', 'asm-hoa-tiet-la-cay-mau-den-asm062-16114-slide-products-60af1e8fcd5e65445774.jpg', 5, '2021-06-27 19:49:37', '2021-06-27 19:49:37'),
(72, 'asm-hoa-tiet-la-cay-mau-den-asm062-16114-slide-products-60af1e93278378353254.jpg', 'asm-hoa-tiet-la-cay-mau-den-asm062-16114-slide-products-60af1e93278378353254.jpg', 5, '2021-06-27 19:49:37', '2021-06-27 19:49:37'),
(73, 'asm-hoa-tiet-la-cay-mau-den-asm062-16114-slide-products-60af1ea2b09e55779210.jpg', 'asm-hoa-tiet-la-cay-mau-den-asm062-16114-slide-products-60af1ea2b09e55779210.jpg', 5, '2021-06-27 19:49:37', '2021-06-27 19:49:37'),
(74, 'asm-hoa-tiet-la-cay-mau-den-asm062-16114-slide-products-60af1ee0d7d7e3494549.jpg', 'asm-hoa-tiet-la-cay-mau-den-asm062-16114-slide-products-60af1ee0d7d7e3494549.jpg', 5, '2021-06-27 19:49:37', '2021-06-27 19:49:37'),
(75, '16220228237a868dfede1903c498b80f72cfe2c35c_thumbnail_600x460560.webp', '16220228237a868dfede1903c498b80f72cfe2c35c_thumbnail_600x460560.webp', 15, '2021-06-27 19:59:39', '2021-06-27 19:59:39'),
(76, '16220228301d845b83e8172cb29d8c88d326689ac6_thumbnail_600x6895536.png', '16220228301d845b83e8172cb29d8c88d326689ac6_thumbnail_600x6895536.png', 15, '2021-06-27 19:59:39', '2021-06-27 19:59:39'),
(77, '16220228336b0f2814b5dd3fc6423016bed07a780c_thumbnail_600x8534370.png', '16220228336b0f2814b5dd3fc6423016bed07a780c_thumbnail_600x8534370.png', 15, '2021-06-27 19:59:39', '2021-06-27 19:59:39'),
(78, '16220228387ea18ea5da99e627917c083bdaa418bc_thumbnail_600x9591540.png', '16220228387ea18ea5da99e627917c083bdaa418bc_thumbnail_600x9591540.png', 15, '2021-06-27 19:59:39', '2021-06-27 19:59:39'),
(79, '16220228429ad77d34b5e9cb21755b5b013645b9f2_thumbnail_600x6846587.png', '16220228429ad77d34b5e9cb21755b5b013645b9f2_thumbnail_600x6846587.png', 15, '2021-06-27 19:59:39', '2021-06-27 19:59:39'),
(80, '1622022827264d82c5265807c36d3e277ffb502c57_thumbnail_600x7892353.png', '1622022827264d82c5265807c36d3e277ffb502c57_thumbnail_600x7892353.png', 15, '2021-06-27 19:59:39', '2021-06-27 19:59:39'),
(81, '16220228351496e47d9ab5badac3a4e19b4761e923_thumbnail_600x287517.png', '16220228351496e47d9ab5badac3a4e19b4761e923_thumbnail_600x287517.png', 15, '2021-06-27 19:59:39', '2021-06-27 19:59:39'),
(82, 'ao-so-mi-hoa-tiet-trang-asm771-10074-slide-products-5bae02d1bcbf64736670.jpg', 'ao-so-mi-hoa-tiet-trang-asm771-10074-slide-products-5bae02d1bcbf64736670.jpg', 16, '2021-06-27 20:04:28', '2021-06-27 20:04:28'),
(83, 'ao-so-mi-hoa-tiet-trang-asm771-10074-slide-products-5bae02d26f6208063824.jpg', 'ao-so-mi-hoa-tiet-trang-asm771-10074-slide-products-5bae02d26f6208063824.jpg', 16, '2021-06-27 20:04:28', '2021-06-27 20:04:28'),
(84, 'ao-so-mi-hoa-tiet-trang-asm771-10074-slide-products-5bae02d202fe09469978.jpg', 'ao-so-mi-hoa-tiet-trang-asm771-10074-slide-products-5bae02d202fe09469978.jpg', 16, '2021-06-27 20:04:28', '2021-06-27 20:04:28'),
(85, 'ao-so-mi-hoa-tiet-trang-asm771-10074-slide-products-5bae02d237f589971465.jpg', 'ao-so-mi-hoa-tiet-trang-asm771-10074-slide-products-5bae02d237f589971465.jpg', 16, '2021-06-27 20:04:28', '2021-06-27 20:04:28'),
(86, 'ao-so-mi-hoa-tiet-trang-asm771-10074-slide-products-5bae02d18589b (1)6465122.jpg', 'ao-so-mi-hoa-tiet-trang-asm771-10074-slide-products-5bae02d18589b (1)6465122.jpg', 16, '2021-06-27 20:04:28', '2021-06-27 20:04:28'),
(87, '1622603908c26628fcae033cbc784e9522e534316c_thumbnail_600x6664290.png', '1622603908c26628fcae033cbc784e9522e534316c_thumbnail_600x6664290.png', 17, '2021-06-27 20:23:40', '2021-06-27 20:23:40'),
(88, '1622603912b5457d5633ca4c844fef3ac48c24efbc_thumbnail_600x3813074.png', '1622603912b5457d5633ca4c844fef3ac48c24efbc_thumbnail_600x3813074.png', 17, '2021-06-27 20:23:40', '2021-06-27 20:23:40'),
(89, '1622603926e5784436371e4a2b6e00b9fabbad43c1_thumbnail_600x4180566.png', '1622603926e5784436371e4a2b6e00b9fabbad43c1_thumbnail_600x4180566.png', 17, '2021-06-27 20:23:40', '2021-06-27 20:23:40'),
(90, '1622603929ee1e7edaafff751b89be403e2868fe77_thumbnail_600x8438366.png', '1622603929ee1e7edaafff751b89be403e2868fe77_thumbnail_600x8438366.png', 17, '2021-06-27 20:23:40', '2021-06-27 20:23:40'),
(91, '16226039207c841c183414add8be007f40fe519070_thumbnail_600x7887212.png', '16226039207c841c183414add8be007f40fe519070_thumbnail_600x7887212.png', 17, '2021-06-27 20:23:40', '2021-06-27 20:23:40'),
(92, '16226039234fd56df18cdbf609b47981f8adf6ed3c_thumbnail_600x7890119.png', '16226039234fd56df18cdbf609b47981f8adf6ed3c_thumbnail_600x7890119.png', 17, '2021-06-27 20:23:40', '2021-06-27 20:23:40'),
(93, '162260391455754ab314c19c0a488657a1ef77f599_thumbnail_600x1230923.png', '162260391455754ab314c19c0a488657a1ef77f599_thumbnail_600x1230923.png', 17, '2021-06-27 20:23:40', '2021-06-27 20:23:40'),
(94, '1622697395db14be111b64dfc212e758e062e27891_thumbnail_600x7435358.webp', '1622697395db14be111b64dfc212e758e062e27891_thumbnail_600x7435358.webp', 18, '2021-06-27 20:27:20', '2021-06-27 20:27:20'),
(95, '16226973893e1c4caac1911955ff7446778d5fa038_thumbnail_600x4067417.webp', '16226973893e1c4caac1911955ff7446778d5fa038_thumbnail_600x4067417.webp', 18, '2021-06-27 20:27:20', '2021-06-27 20:27:20'),
(96, '16226973928a02eaff34295b1c78c1f543dd58777c_thumbnail_600x7456702.webp', '16226973928a02eaff34295b1c78c1f543dd58777c_thumbnail_600x7456702.webp', 18, '2021-06-27 20:27:20', '2021-06-27 20:27:20'),
(97, '162269738614ca32c89a85064f48aba0f9d24a0d16_thumbnail_600x635757.webp', '162269738614ca32c89a85064f48aba0f9d24a0d16_thumbnail_600x635757.webp', 18, '2021-06-27 20:27:20', '2021-06-27 20:27:20'),
(98, '162269739915cd34420799daf14303c9d37ea145fd_thumbnail_600x4191383.webp', '162269739915cd34420799daf14303c9d37ea145fd_thumbnail_600x4191383.webp', 18, '2021-06-27 20:27:20', '2021-06-27 20:27:20'),
(99, '1622697380090e83b762d2ec9d3e572f08ce14e1b6_thumbnail_600x2671663.webp', '1622697380090e83b762d2ec9d3e572f08ce14e1b6_thumbnail_600x2671663.webp', 18, '2021-06-27 20:27:20', '2021-06-27 20:27:20'),
(100, '1622697383859bbec96ddf4e2297b3a6b1d237dce2_thumbnail_600x757771.webp', '1622697383859bbec96ddf4e2297b3a6b1d237dce2_thumbnail_600x757771.webp', 18, '2021-06-27 20:27:20', '2021-06-27 20:27:20'),
(101, 'ao-so-mi-hoa-tiet-xanh-bien-asm997-9921-slide-products-5b67b4d6c70104766604.jpg', 'ao-so-mi-hoa-tiet-xanh-bien-asm997-9921-slide-products-5b67b4d6c70104766604.jpg', 19, '2021-06-27 20:34:08', '2021-06-27 20:34:08'),
(102, 'ao-so-mi-hoa-tiet-xanh-bien-asm997-9921-slide-products-5b67b4d60bf0f9573818.jpg', 'ao-so-mi-hoa-tiet-xanh-bien-asm997-9921-slide-products-5b67b4d60bf0f9573818.jpg', 19, '2021-06-27 20:34:08', '2021-06-27 20:34:08'),
(103, 'ao-so-mi-hoa-tiet-xanh-bien-asm997-9921-slide-products-5b67b4d64b14a1911644.jpg', 'ao-so-mi-hoa-tiet-xanh-bien-asm997-9921-slide-products-5b67b4d64b14a1911644.jpg', 19, '2021-06-27 20:34:08', '2021-06-27 20:34:08'),
(104, 'ao-so-mi-hoa-tiet-xanh-bien-asm997-9921-slide-products-5b67b4d70fba6 (1)5785668.jpg', 'ao-so-mi-hoa-tiet-xanh-bien-asm997-9921-slide-products-5b67b4d70fba6 (1)5785668.jpg', 19, '2021-06-27 20:34:08', '2021-06-27 20:34:08'),
(105, 'ao-so-mi-hoa-tiet-xanh-bien-asm997-9921-slide-products-5b67b4d70fba6905171.jpg', 'ao-so-mi-hoa-tiet-xanh-bien-asm997-9921-slide-products-5b67b4d70fba6905171.jpg', 19, '2021-06-27 20:34:08', '2021-06-27 20:34:08'),
(106, 'ao-so-mi-hoa-tiet-xanh-bien-asm997-9921-slide-products-5b67b4d75c1e09013109.jpg', 'ao-so-mi-hoa-tiet-xanh-bien-asm997-9921-slide-products-5b67b4d75c1e09013109.jpg', 19, '2021-06-27 20:34:08', '2021-06-27 20:34:08'),
(107, '1622440819e7cd158fcafbeef6eb9a8e247af83a1a_thumbnail_600x7268634.webp', '1622440819e7cd158fcafbeef6eb9a8e247af83a1a_thumbnail_600x7268634.webp', 20, '2021-06-27 20:38:14', '2021-06-27 20:38:14'),
(108, '1622440820fd06ff3bc469fab18305a7e30c95bdf4_thumbnail_600x6990716.webp', '1622440820fd06ff3bc469fab18305a7e30c95bdf4_thumbnail_600x6990716.webp', 20, '2021-06-27 20:38:14', '2021-06-27 20:38:14'),
(109, '1622440833d9b621730149e247de452275ae538470_thumbnail_600x1647523.webp', '1622440833d9b621730149e247de452275ae538470_thumbnail_600x1647523.webp', 20, '2021-06-27 20:38:14', '2021-06-27 20:38:14'),
(110, '16224408235aef1454994a2c60346afda98658d9c9_thumbnail_600x6881832.webp', '16224408235aef1454994a2c60346afda98658d9c9_thumbnail_600x6881832.webp', 20, '2021-06-27 20:38:14', '2021-06-27 20:38:14'),
(111, '16224408351c5f85a7e736f07330b20e7f287c2dff6838314.webp', '16224408351c5f85a7e736f07330b20e7f287c2dff6838314.webp', 20, '2021-06-27 20:38:14', '2021-06-27 20:38:14'),
(112, '162244082556a88283020af3bd4301d0b089166eac_thumbnail_600x3369011.webp', '162244082556a88283020af3bd4301d0b089166eac_thumbnail_600x3369011.webp', 20, '2021-06-27 20:38:14', '2021-06-27 20:38:14'),
(113, 'dam-xoe-hoa-nhi-30796596020.jpg', 'dam-xoe-hoa-nhi-30796596020.jpg', 21, '2021-06-27 20:48:15', '2021-06-27 20:48:15'),
(114, 'dam-xoe-hoa-nhi-3079-17656196.jpg', 'dam-xoe-hoa-nhi-3079-17656196.jpg', 21, '2021-06-27 20:48:15', '2021-06-27 20:48:15'),
(115, 'dam-xoe-hoa-nhi-3079-27505071.jpg', 'dam-xoe-hoa-nhi-3079-27505071.jpg', 21, '2021-06-27 20:48:15', '2021-06-27 20:48:15'),
(116, 'dam-xoe-hoa-nhi-3079-39440170.jpg', 'dam-xoe-hoa-nhi-3079-39440170.jpg', 21, '2021-06-27 20:48:15', '2021-06-27 20:48:15'),
(117, 'dam-xoe-hoa-nhi-3079-lg9375675.jpg', 'dam-xoe-hoa-nhi-3079-lg9375675.jpg', 21, '2021-06-27 20:48:16', '2021-06-27 20:48:16'),
(118, 'dam-xoe-hoa-30757528047.jpg', 'dam-xoe-hoa-30757528047.jpg', 22, '2021-06-28 01:35:29', '2021-06-28 01:35:29'),
(119, 'dam-xoe-hoa-3075-18400970.jpg', 'dam-xoe-hoa-3075-18400970.jpg', 22, '2021-06-28 01:35:29', '2021-06-28 01:35:29'),
(120, 'dam-xoe-hoa-3075-23375799.jpg', 'dam-xoe-hoa-3075-23375799.jpg', 22, '2021-06-28 01:35:29', '2021-06-28 01:35:29'),
(121, 'dam-xoe-hoa-3075-34468355.jpg', 'dam-xoe-hoa-3075-34468355.jpg', 22, '2021-06-28 01:35:29', '2021-06-28 01:35:29'),
(122, 'dam-xoe-hoa-3075-lg5743771.jpg', 'dam-xoe-hoa-3075-lg5743771.jpg', 22, '2021-06-28 01:35:29', '2021-06-28 01:35:29'),
(123, 'dam-xoe-dao-pho-2197-co-in-hoa2798094.jpg', 'dam-xoe-dao-pho-2197-co-in-hoa2798094.jpg', 23, '2021-06-28 01:41:06', '2021-06-28 01:41:06'),
(124, 'dam-xoe-dao-pho-2197-co-in-hoa-11340639.jpg', 'dam-xoe-dao-pho-2197-co-in-hoa-11340639.jpg', 23, '2021-06-28 01:41:06', '2021-06-28 01:41:06'),
(125, 'dam-xoe-dao-pho-2197-co-in-hoa-25684222.jpg', 'dam-xoe-dao-pho-2197-co-in-hoa-25684222.jpg', 23, '2021-06-28 01:41:06', '2021-06-28 01:41:06'),
(126, 'dam-xoe-dao-pho-2197-co-in-hoa-lg2771952.jpg', 'dam-xoe-dao-pho-2197-co-in-hoa-lg2771952.jpg', 23, '2021-06-28 01:41:06', '2021-06-28 01:41:06'),
(127, 'dam-xoe-1873-mau-xanh-den8087082.jpg', 'dam-xoe-1873-mau-xanh-den8087082.jpg', 24, '2021-06-28 01:53:12', '2021-06-28 01:53:12'),
(128, 'dam-xoe-1873-mau-xanh-den-18343384.jpg', 'dam-xoe-1873-mau-xanh-den-18343384.jpg', 24, '2021-06-28 01:53:12', '2021-06-28 01:53:12'),
(129, 'dam-xoe-1873-mau-xanh-den-23575501.jpg', 'dam-xoe-1873-mau-xanh-den-23575501.jpg', 24, '2021-06-28 01:53:12', '2021-06-28 01:53:12'),
(130, 'dam-xoe-1873-mau-xanh-den-lg7422516.jpg', 'dam-xoe-1873-mau-xanh-den-lg7422516.jpg', 24, '2021-06-28 01:53:12', '2021-06-28 01:53:12'),
(131, 'dam-xoe-dap-ly-1668-mau-xanh3695883.jpg', 'dam-xoe-dap-ly-1668-mau-xanh3695883.jpg', 25, '2021-06-28 01:59:41', '2021-06-28 01:59:41'),
(132, 'dam-xoe-dap-ly-1668-mau-xanh-14722646.jpg', 'dam-xoe-dap-ly-1668-mau-xanh-14722646.jpg', 25, '2021-06-28 01:59:41', '2021-06-28 01:59:41'),
(133, 'dam-xoe-dap-ly-1668-mau-xanh-251091.jpg', 'dam-xoe-dap-ly-1668-mau-xanh-251091.jpg', 25, '2021-06-28 01:59:41', '2021-06-28 01:59:41'),
(134, 'dam-xoe-dap-ly-1668-mau-xanh-lg9389129.jpg', 'dam-xoe-dap-ly-1668-mau-xanh-lg9389129.jpg', 25, '2021-06-28 01:59:41', '2021-06-28 01:59:41'),
(135, 'dam-om-dinh-cuom-30254958460.jpg', 'dam-om-dinh-cuom-30254958460.jpg', 26, '2021-06-28 02:04:38', '2021-06-28 02:04:38'),
(136, 'dam-om-dinh-cuom-3025-16385655.jpg', 'dam-om-dinh-cuom-3025-16385655.jpg', 26, '2021-06-28 02:04:38', '2021-06-28 02:04:38'),
(137, 'dam-om-dinh-cuom-3025-23002510.jpg', 'dam-om-dinh-cuom-3025-23002510.jpg', 26, '2021-06-28 02:04:38', '2021-06-28 02:04:38'),
(138, 'dam-om-dinh-cuom-3025-lg7681235.jpg', 'dam-om-dinh-cuom-3025-lg7681235.jpg', 26, '2021-06-28 02:04:38', '2021-06-28 02:04:38'),
(139, 'dam-peplum-3030-sang-trong6285369.jpg', 'dam-peplum-3030-sang-trong6285369.jpg', 27, '2021-06-28 02:08:02', '2021-06-28 02:08:02'),
(140, 'dam-peplum-3030-sang-trong-19455492.jpg', 'dam-peplum-3030-sang-trong-19455492.jpg', 27, '2021-06-28 02:08:02', '2021-06-28 02:08:02'),
(141, 'dam-peplum-3030-sang-trong-29735489.jpg', 'dam-peplum-3030-sang-trong-29735489.jpg', 27, '2021-06-28 02:08:02', '2021-06-28 02:08:02'),
(142, 'dam-peplum-3030-sang-trong-lg4912925.jpg', 'dam-peplum-3030-sang-trong-lg4912925.jpg', 27, '2021-06-28 02:08:02', '2021-06-28 02:08:02'),
(143, 'dam-xoe-in-logo-guco-30148662330.jpg', 'dam-xoe-in-logo-guco-30148662330.jpg', 28, '2021-06-28 02:11:39', '2021-06-28 02:11:39'),
(144, 'dam-xoe-in-logo-guco-3014-17384451.jpg', 'dam-xoe-in-logo-guco-3014-17384451.jpg', 28, '2021-06-28 02:11:39', '2021-06-28 02:11:39'),
(145, 'dam-xoe-in-logo-guco-3014-2622170.jpg', 'dam-xoe-in-logo-guco-3014-2622170.jpg', 28, '2021-06-28 02:11:40', '2021-06-28 02:11:40'),
(146, 'dam-xoe-in-logo-guco-3014-lg8000669.jpg', 'dam-xoe-in-logo-guco-3014-lg8000669.jpg', 28, '2021-06-28 02:11:40', '2021-06-28 02:11:40'),
(147, 'dam-xoe-hoa-3062-mau-xanh5093710.jpg', 'dam-xoe-hoa-3062-mau-xanh5093710.jpg', 29, '2021-06-28 02:17:13', '2021-06-28 02:17:13'),
(148, 'dam-xoe-hoa-3062-mau-xanh-16425697.jpg', 'dam-xoe-hoa-3062-mau-xanh-16425697.jpg', 29, '2021-06-28 02:17:13', '2021-06-28 02:17:13'),
(149, 'dam-xoe-hoa-3062-mau-xanh-25901750.jpg', 'dam-xoe-hoa-3062-mau-xanh-25901750.jpg', 29, '2021-06-28 02:17:13', '2021-06-28 02:17:13'),
(150, 'dam-xoe-hoa-3062-mau-xanh-37398979.jpg', 'dam-xoe-hoa-3062-mau-xanh-37398979.jpg', 29, '2021-06-28 02:17:13', '2021-06-28 02:17:13'),
(151, 'dam-xoe-hoa-3062-mau-xanh-lg2115845.jpg', 'dam-xoe-hoa-3062-mau-xanh-lg2115845.jpg', 29, '2021-06-28 02:17:13', '2021-06-28 02:17:13'),
(152, 'quan-jean-slimfit-qj1645-mau-den-14615-slide-products-5ecb3f55ef9c3831939.png', 'quan-jean-slimfit-qj1645-mau-den-14615-slide-products-5ecb3f55ef9c3831939.png', 30, '2021-06-28 03:25:56', '2021-06-28 03:25:56'),
(153, 'quan-jean-slimfit-qj1645-mau-den-14615-slide-products-5ecb3f546edb66405910.png', 'quan-jean-slimfit-qj1645-mau-den-14615-slide-products-5ecb3f546edb66405910.png', 30, '2021-06-28 03:25:56', '2021-06-28 03:25:56'),
(154, 'quan-jean-slimfit-qj1645-mau-den-14615-slide-products-5ecb3f558c9355332420.png', 'quan-jean-slimfit-qj1645-mau-den-14615-slide-products-5ecb3f558c9355332420.png', 30, '2021-06-28 03:25:56', '2021-06-28 03:25:56'),
(155, 'quan-jean-slimfit-qj1645-mau-den-14615-slide-products-5ecb3f55076287560876.png', 'quan-jean-slimfit-qj1645-mau-den-14615-slide-products-5ecb3f55076287560876.png', 30, '2021-06-28 03:25:56', '2021-06-28 03:25:56'),
(156, 'quan-jean-slimfit-qj1645-mau-den-14615-slide-products-5ecb3f56896409758103.png', 'quan-jean-slimfit-qj1645-mau-den-14615-slide-products-5ecb3f56896409758103.png', 30, '2021-06-28 03:25:56', '2021-06-28 03:25:56'),
(157, 'quan-jean-slimfit-qj1645-mau-den-14615-slide-products-5ecc8964a7e2e177273.png', 'quan-jean-slimfit-qj1645-mau-den-14615-slide-products-5ecc8964a7e2e177273.png', 30, '2021-06-28 03:25:56', '2021-06-28 03:25:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_get_email`
--

CREATE TABLE `tbl_get_email` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_news`
--

CREATE TABLE `tbl_news` (
  `news_id` int(10) UNSIGNED NOT NULL,
  `cate_new_id` int(11) NOT NULL,
  `news_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_meta_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_news`
--

INSERT INTO `tbl_news` (`news_id`, `cate_new_id`, `news_title`, `news_desc`, `news_content`, `news_meta_desc`, `news_meta_keyword`, `news_image`, `news_status`, `created_at`, `updated_at`) VALUES
(5, 3, 'Thời trang sân khiến bao người ngẩn ngơ của Phạm Hương và Jolie Nguyễn', '<p>Hoa hậu Ho&agrave;n vũ Việt Nam Phạm Hương đ&atilde; l&ecirc;n đường sang Mỹ để c&ocirc;ng t&aacute;c v&agrave; kết hợp nghỉ dưỡng dịp Noel 2017. C&ocirc; g&acirc;y ch&uacute; &yacute; tại s&acirc;n bay khi diện set đồ hiệu sang trọng với set đồ của Dior b&ecirc;n cạnh t&uacute;i Hermes Birkin đắt tiền v&agrave; đ&ocirc;i&nbsp;gi&agrave;y boot nữ cao 7cm. Bộ c&aacute;nh n&agrave;y c&oacute; gi&aacute; trị &iacute;t nhất l&agrave; nửa tỷ đồng!<span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"> </span></span></p>', '<p style=\"text-align:center\"><img alt=\"\" src=\"blob:http://127.0.0.1:8000/96ed0acb-21c6-48ec-9eb1-a0ba94321679\" style=\"width:500px\" /></p>\r\n\r\n<p style=\"text-align:center\">Thời trang s&acirc;n bay của c&ocirc; Hoa hậu quốc d&acirc;n đ&atilde; khiến nhiều người phải bất ngờ, thật đẹp, thật sang chảnh.<strong>&nbsp;ZSTYLE</strong>&nbsp;thấy rằng danh hiệu hoa hậu quốc d&acirc;n quả thật kh&ocirc;ng sai ch&uacute;t n&agrave;o! C&ocirc; n&agrave;ng rất chỉ cần diện nguy&ecirc;n c&acirc;y đen l&agrave; đ&atilde; tr&ocirc;ng qu&aacute; tuyệt vời.&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thời trang sân khiến bao người ngẩn ngơ của Phạm Hương và Jolie Nguyễn\" src=\"https://www.zstyle.vn/hoanghung/5/images/tin-zstyle/thoi-trang-san-khien-bao-nguoi-ngan-ngo-cua-pham-huong-va-jolie-nguyen-ZSTYLE-0.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\">Trưa ng&agrave;y 24/12, Hoa hậu Ho&agrave;n vũ Việt Nam Phạm Hương đ&atilde; l&ecirc;n đường sang Mỹ để c&ocirc;ng t&aacute;c v&agrave; kết hợp nghỉ dưỡng dịp Noel 2017. C&ocirc; g&acirc;y ch&uacute; &yacute; tại s&acirc;n bay khi diện set đồ hiệu sang trọng với set đồ của Dior b&ecirc;n cạnh t&uacute;i Hermes Birkin đắt tiền v&agrave; đ&ocirc;i&nbsp;<a href=\"https://www.zstyle.vn/giay-boot-nu/?idst=469\"><strong>gi&agrave;y boot nữ cao 7cm</strong></a>. Bộ c&aacute;nh n&agrave;y c&oacute; gi&aacute; trị &iacute;t nhất l&agrave; nửa tỷ đồng!</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thời trang sân khiến bao người ngẩn ngơ của Phạm Hương và Jolie Nguyễn\" src=\"https://www.zstyle.vn/hoanghung/5/images/tin-zstyle/thoi-trang-san-khien-bao-nguoi-ngan-ngo-cua-pham-huong-va-jolie-nguyen-ZSTYLE-1.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\">Kh&ocirc;ng hổ danh l&agrave; &quot;Hoa hậu con nh&agrave; gi&agrave;u&quot;, Jolie Nguyễn cũng chẳng hề k&eacute;m cạnh Phạm Hương khi ra s&acirc;n bay với cả set đồ gồm to&agrave;n c&aacute;c thương hiệu nổi tiếng, dễ thấy nhất l&agrave; nguy&ecirc;n set t&uacute;i - balo - vali từ Louis Vuitton.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thời trang sân khiến bao người ngẩn ngơ của Phạm Hương và Jolie Nguyễn\" src=\"https://www.zstyle.vn/hoanghung/5/images/tin-zstyle/thoi-trang-san-khien-bao-nguoi-ngan-ngo-cua-pham-huong-va-jolie-nguyen-ZSTYLE-2.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\">H&agrave; Hồ lại đ&agrave;i c&aacute;c với kiểu &aacute;o kho&aacute;c c&aacute;nh dơi m&agrave;u xanh nhạt nh&atilde; nhặn, phối c&ugrave;ng chiếc clutch ton-sur-ton của Valentino. K&egrave;m theo đ&oacute; l&agrave; đ&ocirc;i&nbsp;<a href=\"https://www.zstyle.vn/giay-bup-be-nu/?idst=435\"><strong>gi&agrave;y b&uacute;p b&ecirc; nữ g&oacute;t nhọn</strong></a>&nbsp;nhiều họa tiết gi&uacute;p H&agrave; Hồ c&agrave;ng n&ocirc;t bật.&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thời trang sân khiến bao người ngẩn ngơ của Phạm Hương và Jolie Nguyễn\" src=\"https://www.zstyle.vn/hoanghung/5/images/tin-zstyle/thoi-trang-san-khien-bao-nguoi-ngan-ngo-cua-pham-huong-va-jolie-nguyen-ZSTYLE-3.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\">Cũng chọn sắc xanh dương cho m&ugrave;a lễ hội, Ngọc Trinh diện &aacute;o blazer phối c&ugrave;ng sơmi v&agrave; ch&acirc;n v&aacute;y ngắn - tạo n&ecirc;n tổng thể xinh xắn tươi trẻ như một n&agrave;ng nữ sinh. Người đẹp cũng kh&ocirc;ng qu&ecirc;n khẳng định đẳng cấp với chiếc t&uacute;i Diorama.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thời trang sân khiến bao người ngẩn ngơ của Phạm Hương và Jolie Nguyễn\" src=\"https://www.zstyle.vn/hoanghung/5/images/tin-zstyle/thoi-trang-san-khien-bao-nguoi-ngan-ngo-cua-pham-huong-va-jolie-nguyen-ZSTYLE-4.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\">Hoa hậu Kỳ Duy&ecirc;n lại cao tay ứng dụng c&aacute;c sắc độ kh&aacute;c nhau của m&agrave;u xanh dương. Phong c&aacute;ch menswear vẫn được n&agrave;ng Hậu ưa chuộng tuyệt đối cho thời trang street style.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thời trang sân khiến bao người ngẩn ngơ của Phạm Hương và Jolie Nguyễn\" src=\"https://www.zstyle.vn/hoanghung/5/images/tin-zstyle/thoi-trang-san-khien-bao-nguoi-ngan-ngo-cua-pham-huong-va-jolie-nguyen-ZSTYLE-5.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\">Si&ecirc;u mẫu Lan Khu&ecirc; lại đề cao tinh thần m&ugrave;a lễ hội với ch&uacute;t sắc đỏ nhấn nh&aacute; tr&ecirc;n trang phục v&agrave; t&uacute;i hiệu Dior.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thời trang sân khiến bao người ngẩn ngơ của Phạm Hương và Jolie Nguyễn\" src=\"https://www.zstyle.vn/hoanghung/5/images/tin-zstyle/thoi-trang-san-khien-bao-nguoi-ngan-ngo-cua-pham-huong-va-jolie-nguyen-ZSTYLE-6.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\">Tạo cho m&igrave;nh sự kh&aacute;c biệt, Midu lại lựa chọn bộ suit m&agrave;u xanh l&aacute; c&acirc;y để đổi mới phong c&aacute;ch. Đ&acirc;y cũng l&agrave; h&igrave;nh ảnh mới lạ so với thời trang street style vốn rất &quot;b&aacute;nh b&egrave;o&quot; v&agrave; một m&agrave;u của người đẹp n&agrave;y.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thời trang sân khiến bao người ngẩn ngơ của Phạm Hương và Jolie Nguyễn\" src=\"https://www.zstyle.vn/hoanghung/5/images/tin-zstyle/thoi-trang-san-khien-bao-nguoi-ngan-ngo-cua-pham-huong-va-jolie-nguyen-ZSTYLE-7.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\">&Aacute;o len d&aacute;ng d&agrave;i kết hợp c&ugrave;ng đầm xuy&ecirc;n thấu như Văn Mai Hương l&agrave; gợi &yacute; tuyệt vời cho những c&ocirc; n&agrave;ng n&agrave;o muốn điệu đ&agrave; trong ng&agrave;y gi&aacute; lạnh.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thời trang sân khiến bao người ngẩn ngơ của Phạm Hương và Jolie Nguyễn\" src=\"https://www.zstyle.vn/hoanghung/5/images/tin-zstyle/thoi-trang-san-khien-bao-nguoi-ngan-ngo-cua-pham-huong-va-jolie-nguyen-ZSTYLE-8.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\">&Aacute; hậu T&uacute; Anh tr&ocirc;ng kh&aacute; &quot;men&quot; trong trang phục menswear tối giản với sắc đen l&agrave;m chủ đạo. Một đ&ocirc;i&nbsp;<a href=\"https://www.zstyle.vn/giay-boot-nu/\"><strong>gi&agrave;y boot nữ h&agrave;ng hiệu</strong></a>&nbsp;c&ugrave;ng t&ocirc;ng đ&atilde; l&agrave;m T&uacute; Anh tr&ocirc;ng thật mạnh mẽ.&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thời trang sân khiến bao người ngẩn ngơ của Phạm Hương và Jolie Nguyễn\" src=\"https://www.zstyle.vn/hoanghung/5/images/tin-zstyle/thoi-trang-san-khien-bao-nguoi-ngan-ngo-cua-pham-huong-va-jolie-nguyen-ZSTYLE-11.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\">Vốn rất chịu kh&oacute; biến h&oacute;a trong street style, n&agrave;o ngờ bộ c&aacute;nh mới nhất của Yến Trang lại hết mực giản dị v&agrave; hiền dịu.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thời trang sân khiến bao người ngẩn ngơ của Phạm Hương và Jolie Nguyễn\" src=\"https://www.zstyle.vn/hoanghung/5/images/tin-zstyle/thoi-trang-san-khien-bao-nguoi-ngan-ngo-cua-pham-huong-va-jolie-nguyen-ZSTYLE-12.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\">Quỳnh Anh Shyn vẫn lu&ocirc;n khiến giới mộ điệu th&iacute;ch m&ecirc; với những trang phục vintage v&ocirc; c&ugrave;ng c&aacute; t&iacute;nh v&agrave; c&oacute; chất ri&ecirc;ng.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thời trang sân khiến bao người ngẩn ngơ của Phạm Hương và Jolie Nguyễn\" src=\"https://www.zstyle.vn/hoanghung/5/images/tin-zstyle/thoi-trang-san-khien-bao-nguoi-ngan-ngo-cua-pham-huong-va-jolie-nguyen-ZSTYLE-9.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\">Bộ c&aacute;nh street style của Lưu Hương Giang lại mang đến sự ấm &aacute;p cho người đối diện bởi kiểu &aacute;o kho&aacute;c d&aacute;ng d&agrave;i v&agrave; mũ beret đều c&ugrave;ng m&agrave;u hồng đất.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thời trang sân khiến bao người ngẩn ngơ của Phạm Hương và Jolie Nguyễn\" src=\"https://www.zstyle.vn/hoanghung/5/images/tin-zstyle/thoi-trang-san-khien-bao-nguoi-ngan-ngo-cua-pham-huong-va-jolie-nguyen-ZSTYLE-10.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\">Chắc kh&ocirc;ng ai tự tin được như Kh&aacute;nh Linh The Face khi x&aacute;ch... t&uacute;i r&aacute;c ra phố thay cho v&ocirc; v&agrave;n kiểu t&uacute;i x&aacute;ch h&agrave;ng hiệu.</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thời trang sân khiến bao người ngẩn ngơ của Phạm Hương và Jolie Nguyễn\" src=\"https://www.zstyle.vn/hoanghung/5/images/tin-zstyle/thoi-trang-san-khien-bao-nguoi-ngan-ngo-cua-pham-huong-va-jolie-nguyen-ZSTYLE-13.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\">Đồng &Aacute;nh Quỳnh c&oacute; bộ c&aacute;nh street style rất đ&uacute;ng chất m&ugrave;a đ&ocirc;ng ở H&agrave; Nội, chỉn chu - đơn giản m&agrave; kh&ocirc;ng k&eacute;m phần thanh lịch.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thời trang sân khiến bao người ngẩn ngơ của Phạm Hương và Jolie Nguyễn\" src=\"https://www.zstyle.vn/hoanghung/5/images/tin-zstyle/thoi-trang-san-khien-bao-nguoi-ngan-ngo-cua-pham-huong-va-jolie-nguyen-ZSTYLE-14.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\">&Aacute;o c&oacute; ấm đến đ&acirc;u, vải c&oacute; d&agrave;y đến đ&acirc;u cũng kh&ocirc;ng ngăn được &yacute; muốn ph&ocirc; trương v&ograve;ng 1 &quot;phồn thực&quot; của Rihanna.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thời trang sân khiến bao người ngẩn ngơ của Phạm Hương và Jolie Nguyễn\" src=\"https://www.zstyle.vn/hoanghung/5/images/tin-zstyle/thoi-trang-san-khien-bao-nguoi-ngan-ngo-cua-pham-huong-va-jolie-nguyen-ZSTYLE-15.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\">Ứng dụng sắc xanh dương từ trang phục cho đến m&aacute;i t&oacute;c, Kim Kardashian l&agrave; sao nữ c&oacute; street style ấn tượng nhất tuần qua.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thời trang sân khiến bao người ngẩn ngơ của Phạm Hương và Jolie Nguyễn\" src=\"https://www.zstyle.vn/hoanghung/5/images/tin-zstyle/thoi-trang-san-khien-bao-nguoi-ngan-ngo-cua-pham-huong-va-jolie-nguyen-ZSTYLE-16.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\">Blac Chyna- c&ocirc; em d&acirc;u của chị em nh&agrave; Kim Kardashian đ&igrave;nh đ&aacute;m - với m&aacute;i t&oacute;c ombra m&agrave;u xanh nổi bật chẳng hề k&eacute;m cạnh đ&agrave;n chị.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thời trang sân khiến bao người ngẩn ngơ của Phạm Hương và Jolie Nguyễn\" src=\"https://www.zstyle.vn/hoanghung/5/images/tin-zstyle/thoi-trang-san-khien-bao-nguoi-ngan-ngo-cua-pham-huong-va-jolie-nguyen-ZSTYLE-19.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\">Lu&ocirc;n gợi cảm tr&ecirc;n thảm đỏ, n&agrave;o ngờ street style đời thường của mỹ nh&acirc;n &quot;ngực khủng&quot; Kate Upton lại k&iacute;n đ&aacute;o v&agrave; giản dị đến nhường n&agrave;y.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thời trang sân khiến bao người ngẩn ngơ của Phạm Hương và Jolie Nguyễn\" src=\"https://www.zstyle.vn/hoanghung/5/images/tin-zstyle/thoi-trang-san-khien-bao-nguoi-ngan-ngo-cua-pham-huong-va-jolie-nguyen-ZSTYLE-20.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\">Quan trọng nhất l&agrave; khoản giữ ấm n&ecirc;n Rita Ora diện l&ecirc;n người to&agrave;n những trang phục d&agrave;y cộm m&agrave;u đen.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thời trang sân khiến bao người ngẩn ngơ của Phạm Hương và Jolie Nguyễn\" src=\"https://www.zstyle.vn/hoanghung/5/images/tin-zstyle/thoi-trang-san-khien-bao-nguoi-ngan-ngo-cua-pham-huong-va-jolie-nguyen-ZSTYLE-17.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\">Chị em nh&agrave; Hadid diện đồ đ&ocirc;i với những set đồ street style lấy cảm hứng từ trang phục trượt tuyết.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thời trang sân khiến bao người ngẩn ngơ của Phạm Hương và Jolie Nguyễn\" src=\"https://www.zstyle.vn/hoanghung/5/images/tin-zstyle/thoi-trang-san-khien-bao-nguoi-ngan-ngo-cua-pham-huong-va-jolie-nguyen-ZSTYLE-18.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\">Vẫn giữ vững phong độ, bộ c&aacute;nh street style đầy sắc m&agrave;u nhiệt đới của Beyonce thu h&uacute;t được đến gần... 2 triệu lượt th&iacute;ch từ cư d&acirc;n mạng.</p>', 'Thời trang sân khiến bao người ngẩn ngơ của Phạm Hương và Jolie Nguyễn', 'Thời trang sân khiến bao người ngẩn ngơ của Phạm Hương và Jolie Nguyễn', 'thoi-trang-san-khien-bao-nguoi-ngan-ngo-cua-pham-huong-va-jolie-nguyen-ZSTYLE-04672975.jpg', 1, '2021-06-25 02:54:06', '2021-06-25 19:13:19'),
(6, 3, 'Khám Phá Thời Trang Sân Bay Của Dàn Sao Hoa Ngữ', '<p>Thời trang s&acirc;n bay của c&aacute;c ng&ocirc;i sao lu&ocirc;n l&agrave; điểm ch&uacute; &yacute; của c&aacute;nh nh&agrave; b&aacute;o cũng như fan h&acirc;m mộ. Đặc biệt l&agrave; với những t&iacute;n đồ thời trang th&igrave; h&igrave;nh ảnh của những ng&ocirc;i sao ra s&acirc;n bay sẽ được chăm ch&uacute;t v&agrave; kỹ lưỡng n&ecirc;n c&oacute; thể học hỏi được rất nhiều từ xu hướng thời trang mới.</p>', '<p style=\"text-align:center\">Thời trang s&acirc;n bay của c&aacute;c ng&ocirc;i sao lu&ocirc;n l&agrave; điểm ch&uacute; &yacute; của c&aacute;nh nh&agrave; b&aacute;o cũng như fan h&acirc;m mộ. Đặc biệt l&agrave; với những t&iacute;n đồ thời trang th&igrave; h&igrave;nh ảnh của những ng&ocirc;i sao ra s&acirc;n bay sẽ được chăm ch&uacute;t v&agrave; kỹ lưỡng n&ecirc;n c&oacute; thể học hỏi được rất nhiều từ xu hướng thời trang mới.</p>\r\n\r\n<p style=\"text-align:center\">Đồng thời kh&ocirc;ng giống như thời trang ở những buổi tiệc hay sự kiện m&agrave; thời trang s&acirc;n bay của c&aacute;c ng&ocirc;i sao lu&ocirc;n thể hiện sự năng động, thoải m&aacute;i n&ecirc;n rất th&iacute;ch hợp với nhiều bạn trẻ.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Khám Phá Thời Trang Sân Bay Của Dàn Sao Hoa Ngữ\" src=\"https://www.zstyle.vn/hoanghung/29/images/b-1513796375927.jpg\" title=\"Khám Phá Thời Trang Sân Bay Của Dàn Sao Hoa Ngữ\" /></p>\r\n\r\n<p style=\"text-align:center\">Ch&iacute;nh v&igrave; l&yacute; do tr&ecirc;n m&agrave; gi&agrave;y nữ&nbsp;<strong>ZSTYLE</strong>&nbsp;xin giới thiệu với c&aacute;c bạn một xu hướng thời trang s&acirc;n b&acirc;y của c&aacute;c sao nữ Hoa Ngữ lu&ocirc;n được nhiều người đ&aacute;nh gi&aacute; cao v&igrave; sự nổi bật v&agrave; chất của họ nh&eacute;.</p>\r\n\r\n<p style=\"text-align:center\"><strong>Dương Mịch</strong></p>\r\n\r\n<p style=\"text-align:center\">Từ đồ b&igrave;nh d&acirc;n hay những m&oacute;n h&agrave;ng hiệu bạc tỷ, c&aacute;c set đồ được kết hợp kh&eacute;o l&eacute;o nhưng lại v&ocirc; c&ugrave;ng tinh tế. Đ&oacute; cũng ch&iacute;nh l&agrave; l&iacute; do m&agrave; kh&ocirc;ng chỉ những t&iacute;n đồ thời trang hay học hỏi phong c&aacute;ch thời trang của Dương Mịch m&agrave; ngay cả c&aacute;c đồng nghiệp cũng &ldquo;học lỏm&rdquo; kha kh&aacute;.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Khám Phá Thời Trang Sân Bay Của Dàn Sao Hoa Ngữ\" src=\"https://www.zstyle.vn/hoanghung/29/images/duong-mich-5-1493349639460.jpg\" title=\"Khám Phá Thời Trang Sân Bay Của Dàn Sao Hoa Ngữ\" /></p>\r\n\r\n<p style=\"text-align:center\">C&ocirc; n&agrave;ng diễn vi&ecirc;n Dương Mịch xuất hiện tại s&acirc;n bay. Thời trang m&agrave; c&ocirc; lựa chọn ch&iacute;nh l&agrave; diện v&aacute;y ngắn, &aacute;o crop top khoe eo v&agrave; &aacute;o kho&aacute;c jeans rộng th&ugrave;ng th&igrave;nh. C&ocirc; kết hợp cả bộ trang phục trẻ trung v&agrave; c&aacute; t&iacute;nh của m&igrave;nh với đ&ocirc;i gi&agrave;y thể thao khỏe khoắn.</p>\r\n\r\n<p style=\"text-align:center\"><strong>Địch L&ecirc; Nhiệt Ba</strong></p>\r\n\r\n<p style=\"text-align:center\">Địch L&ecirc; Nhiệt Ba l&agrave; một diễn vi&ecirc;n nữ mới nổi tiếng những năm gần đ&acirc;y nhưng n&eacute;t đẹp như ti&ecirc;n nữ của c&ocirc; đ&atilde; thu được nhiều fan h&acirc;m mộ. Biết được vẻ đẹp của m&igrave;nh n&ecirc;n thời trang của Nhiệt Ba lu&ocirc;n nổi bật v&agrave; thu h&uacute;t sự quan t&acirc;m của nhiều người. &nbsp;Thời gian gần đ&acirc;y, mỹ nh&acirc;n T&acirc;n Cương đ&atilde; thu h&uacute;t mọi người bằng phong c&aacute;ch street style đẹp long lanh, đầy kh&iacute; chất tại s&acirc;n bay của m&igrave;nh.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Khám Phá Thời Trang Sân Bay Của Dàn Sao Hoa Ngữ\" src=\"https://www.zstyle.vn/hoanghung/29/images/AZy0-fymesmp1678469.jpg\" title=\"Khám Phá Thời Trang Sân Bay Của Dàn Sao Hoa Ngữ\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Phong c&aacute;ch street style của Địch L&ecirc; Nhiệt Ba</em></p>\r\n\r\n<p style=\"text-align:center\">Một chiếc &aacute;o thun trắng c&ugrave;ng với quần short b&igrave;nh thường nhưng lại nổi bật nhờ vẻ đ&aacute;ng y&ecirc;u. Hơn hết Địch L&ecirc; Nhiệt Ba c&ograve;n kho&aacute;c th&ecirc;m một chiếc &aacute;o b&ocirc;ng m&agrave;u t&iacute;m để l&agrave;m t&ocirc;n l&ecirc;n m&agrave;u sắc.&nbsp; Phối c&ugrave;ng với đ&oacute; l&agrave; t&uacute;i x&aacute;ch v&agrave; điểm nhấn l&agrave; đ&ocirc;i&nbsp;<a href=\"https://www.zstyle.vn/giay-boot-nu/\" title=\"giày boot nữ\"><strong>gi&agrave;y boot nữ&nbsp;</strong></a>m&agrave;u đen c&oacute; đ&iacute;nh hạt tạo n&ecirc;n sự năng động nhưng kh&ocirc;ng mất đi sự sang trọng của một c&ocirc; g&aacute;i trẻ.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Khám Phá Thời Trang Sân Bay Của Dàn Sao Hoa Ngữ\" src=\"https://www.zstyle.vn/hoanghung/29/images/dich-le-nhiet-ba-gay-bao-tuan-le-milan-ss-2018-voi-nhan-sac-va-khi-chat-dinh-cao-236-152628.jpg\" title=\"Khám Phá Thời Trang Sân Bay Của Dàn Sao Hoa Ngữ\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Phong c&aacute;ch vừa thoải m&aacute;i vừa thể hiện được n&eacute;t đẹp của m&igrave;nh</em></p>\r\n\r\n<p style=\"text-align:center\"><strong>Victoria Song</strong></p>\r\n\r\n<p style=\"text-align:center\">C&ocirc; n&agrave;ng thủ lĩnh của nh&oacute;m nhạc f(x) của &ldquo;&ocirc;ng lớn SM&rdquo; lu&ocirc;n ch&uacute; trọng vẻ ngo&agrave;i của m&igrave;nh mỗi khi c&ocirc; xuất hiện trước c&ocirc;ng ch&uacute;ng. D&ugrave; c&ocirc; đang sống v&agrave; hoạt động tại H&agrave;n nhưng với gốc g&aacute;c Trung Quốc, c&ocirc; cũng nổi tiếng tại qu&ecirc; nh&agrave; kh&ocirc;ng thua ng&ocirc;i sao n&agrave;o.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Khám Phá Thời Trang Sân Bay Của Dàn Sao Hoa Ngữ\" src=\"https://www.zstyle.vn/hoanghung/29/images/1-1502719532292.jpg\" title=\"Khám Phá Thời Trang Sân Bay Của Dàn Sao Hoa Ngữ\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Thời trang phong c&aacute;ch đơn giản</em></p>\r\n\r\n<p style=\"text-align:center\">Thời trang s&acirc;n bay của c&ocirc; n&agrave;ng l&agrave; &aacute;o sơ mi sọc, quần jean c&ugrave;ng&nbsp;<a href=\"https://www.zstyle.vn/giay-cao-got-nu/\" title=\"giày cao gót nữ\"><strong>gi&agrave;y cao g&oacute;t nữ</strong></a>&nbsp;m&agrave;u hồng đơn giản nhưng vẫn to&aacute;t ra được kh&iacute; chất m&agrave; một ng&ocirc;i sao lớn mang lại. Những ai theo d&otilde;i Victoria sẽ &ldquo;nằm l&ograve;ng&rdquo; ngay phong c&aacute;ch thời trang s&acirc;n bay m&agrave; c&ocirc; n&agrave;ng y&ecirc;u th&iacute;ch đ&oacute; ch&iacute;nh l&agrave; những set đồ thanh lịch, tối giản nhưng v&ocirc; c&ugrave;ng bắt mắt v&agrave; tinh tế.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Khám Phá Thời Trang Sân Bay Của Dàn Sao Hoa Ngữ\" src=\"https://www.zstyle.vn/hoanghung/29/images/thoi-trang-san-bay-sao-hoa---han-tuan-nay-don-gian-ma-dep-ngat-ngay-236-145632.jpg\" title=\"Khám Phá Thời Trang Sân Bay Của Dàn Sao Hoa Ngữ\" /></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:48px; text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:48px; text-align:center\">&nbsp;</p>', 'Khám Phá Thời Trang Sân Bay Của Dàn Sao Hoa Ngữ', 'Khám Phá Thời Trang Sân Bay Của Dàn Sao Hoa Ngữ', 'AZy0-fymesmp16784698620060.jpg', 1, '2021-06-25 06:31:51', '2021-06-25 10:37:41'),
(8, 3, 'Tìm Hiểu Về Phong Cách Thời Trang Của Nữ Diễn Viên Park Shin Hye', '<p>Thời trang tại xứ sở Kim Chi lu&ocirc;n thu h&uacute;t được nhiều giới trẻ, đặc biệt l&agrave; giới trẻ tại Việt Nam lu&ocirc;n y&ecirc;u th&iacute;ch nền văn h&oacute;a H&agrave;n Quốc. Ch&iacute;nh v&igrave; thế m&agrave; c&aacute;c diễn viễn nổi tiếng với c&aacute;c bộ phim đ&igrave;nh đ&aacute;m cũng g&acirc;y ảnh hưởng &iacute;t nhiều đến l&agrave;n s&oacute;ng thời trang của giới trẻ Việt Nam.</p>', '<p style=\"text-align:center\"><span style=\"font-family:Courier New,Courier,monospace\">Thời trang tại xứ sở Kim Chi lu&ocirc;n thu h&uacute;t được nhiều giới trẻ, đặc biệt l&agrave; giới trẻ tại Việt Nam lu&ocirc;n y&ecirc;u th&iacute;ch nền văn h&oacute;a H&agrave;n Quốc. Ch&iacute;nh v&igrave; thế m&agrave; c&aacute;c diễn viễn nổi tiếng với c&aacute;c bộ phim đ&igrave;nh đ&aacute;m cũng g&acirc;y ảnh hưởng &iacute;t nhiều đến l&agrave;n s&oacute;ng thời trang của giới trẻ Việt Nam.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Courier New,Courier,monospace\">Ở b&agrave;i viết h&ocirc;m nay của&nbsp;<strong>ZSTYE</strong>, ch&uacute;ng ta h&atilde;y c&ugrave;ng kh&aacute;m ph&aacute; về phong c&aacute;ch thời trang của nữ diễn vi&ecirc;n nổi tiếng Park Shi Hye để xem nữ diễn vi&ecirc;n nổi tiếng n&agrave;y c&oacute; phong c&aacute;ch thời trang như thế n&agrave;o khiến c&aacute;c bạn trẻ m&ecirc; mẫn nh&eacute;.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Courier New,Courier,monospace\"><img alt=\"Tìm Hiểu Về Phong Cách Thời Trang Của Nữ Diễn Viên Park Shin Hye\" src=\"https://www.zstyle.vn/hoanghung/29/images/14345_13730_0.jpg\" title=\"Tìm Hiểu Về Phong Cách Thời Trang Của Nữ Diễn Viên Park Shin Hye\" /></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Courier New,Courier,monospace\">Thu h&uacute;t nhờ những th&agrave;nh c&ocirc;ng của những bộ phim nổi tiếng với sự kết hợp c&ugrave;ng bao ch&agrave;ng trai khiến ph&aacute;i nữ say đắm, nữ diễn vi&ecirc;n Park Shin Hye c&ograve;n thu h&uacute;t kh&aacute;n giả với gu thời trang sang trọng v&agrave; qu&yacute; ph&aacute;i mỗi khi bước ra đường hoặc trong những buổi dự thảm đỏ. Phong c&aacute;ch của c&ocirc; lu&ocirc;n mang d&aacute;ng vẻ thanh lịch nhưng vẫn hết phần sang trọng n&ecirc;n c&agrave;ng t&ocirc;n l&ecirc;n vẻ đẹp của nữ diễn vi&ecirc;n n&agrave;y.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Courier New,Courier,monospace\"><img alt=\"Tìm Hiểu Về Phong Cách Thời Trang Của Nữ Diễn Viên Park Shin Hye\" src=\"https://www.zstyle.vn/hoanghung/29/images/3ab0a740f025672468461ecae92362cf--park-shin-hye--fall-winter-.jpg\" title=\"Tìm Hiểu Về Phong Cách Thời Trang Của Nữ Diễn Viên Park Shin Hye\" /></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Courier New,Courier,monospace\"><em>Phong c&aacute;ch thời trang tạp ch&iacute;</em></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Courier New,Courier,monospace\">&Aacute;o kho&aacute;c c&ugrave;ng quần b&oacute; mang m&agrave;u sắc sang trọng, ph&ugrave; hợp với những bạn g&aacute;i c&oacute; nước da trắng. Đồng thời Park Shin Hye c&ograve;n kết hợp với đ&ocirc;i&nbsp;<a href=\"https://www.zstyle.vn/giay-cao-got-nu/\" title=\"giày cao gót nữ\"><strong>gi&agrave;y cao g&oacute;t nữ&nbsp;</strong></a>b&iacute;ch mũi c&oacute; d&acirc;y như loại gi&agrave;y c&oacute; ở&nbsp;<strong>Zstyle</strong>&nbsp;c&agrave;ng t&ocirc;n l&ecirc;n n&eacute;t đẹp của phụ nữ thời hiện đại năng động v&agrave; c&aacute; t&iacute;nh.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Courier New,Courier,monospace\"><img alt=\"Tìm Hiểu Về Phong Cách Thời Trang Của Nữ Diễn Viên Park Shin Hye\" src=\"https://www.zstyle.vn/hoanghung/29/images/park-shin-hye-at-chanel-fashion-show-at-paris-fashion-week-10-03-2017-6.jpg\" title=\"Tìm Hiểu Về Phong Cách Thời Trang Của Nữ Diễn Viên Park Shin Hye\" /></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Courier New,Courier,monospace\"><em>Phong c&aacute;ch thời trang sự kiện</em></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Courier New,Courier,monospace\">Tại sự kiện của Chanel Fashion c&oacute; sự hội tụ của nhiều diễn vi&ecirc;n cũng như nhiều người nổi tiếng nhưng Park Shin Hye vẫn thu h&uacute;t với thời trang thanh lịch v&agrave; sang trọng m&agrave; m&igrave;nh mang đến. Sự kết hợp của &aacute;o sơ mi trắng trang nh&atilde; kết hợp với v&aacute;y v&agrave; t&uacute;i đồng điệu nhau tạo n&ecirc;n sức h&uacute;t đến kỳ lạ đối với những t&iacute;n đồ thời trang.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Courier New,Courier,monospace\"><img alt=\"Tìm Hiểu Về Phong Cách Thời Trang Của Nữ Diễn Viên Park Shin Hye\" src=\"https://www.zstyle.vn/hoanghung/29/images/Park_Shin_Hye_4.jpg\" title=\"Tìm Hiểu Về Phong Cách Thời Trang Của Nữ Diễn Viên Park Shin Hye\" /></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Courier New,Courier,monospace\"><em>Phong c&aacute;ch thời trang s&acirc;n bay</em></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Courier New,Courier,monospace\">Thời trang s&acirc;n bay của nhiều ng&ocirc;i sao lu&ocirc;n được c&aacute;nh b&aacute;o ch&iacute; cũng như nhiều người quan t&acirc;m v&igrave; s&acirc;n bay giống như một nơi để tr&igrave;nh diễn thời trang với phong c&aacute;ch trẻ trung v&agrave; năng động. Ch&iacute;nh v&igrave; thế m&agrave; ngo&agrave;i c&aacute;c sự kiện với phong c&aacute;ch thanh lịch v&agrave; sang trọng th&igrave; bạn c&oacute; thể thấy tại s&acirc;n bay một phong c&aacute;ch thời trang tươi mới v&agrave; đầy sức sống của nữ diễn vi&ecirc;n Park Shin Hye</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Courier New,Courier,monospace\"><img alt=\"Tìm Hiểu Về Phong Cách Thời Trang Của Nữ Diễn Viên Park Shin Hye\" src=\"https://www.zstyle.vn/hoanghung/29/images/c16472db151dfa7c097a65af4d7cb6be.jpg\" title=\"Tìm Hiểu Về Phong Cách Thời Trang Của Nữ Diễn Viên Park Shin Hye\" /></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Courier New,Courier,monospace\"><em>Phong c&aacute;ch thời trang ngọt ng&agrave;o v&agrave; nữ t&iacute;nh</em></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Courier New,Courier,monospace\"><img alt=\"Tìm Hiểu Về Phong Cách Thời Trang Của Nữ Diễn Viên Park Shin Hye\" src=\"https://www.zstyle.vn/hoanghung/29/images/929597d26e71157007550ffcaaefe211--park-shin-hye-girl-style.jpg\" title=\"Tìm Hiểu Về Phong Cách Thời Trang Của Nữ Diễn Viên Park Shin Hye\" /></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Courier New,Courier,monospace\"><em>Phong c&aacute;ch thể thao năng động</em></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Courier New,Courier,monospace\">Hi vọng sau những chia sẻ của Zstyle c&aacute;c bạn sẽ biết th&ecirc;m nhiều về phong c&aacute;ch thời trang của nữ vi&ecirc;n H&agrave;n Quốc Park Shin Hye để học hỏi v&agrave; phối hợp với phong c&aacute;ch thời trang của bản th&acirc;n gi&uacute;p bạn tự tin mỗi khi bước ra đường nh&eacute;.</span></p>\r\n\r\n<p>&nbsp;</p>', 'Tìm Hiểu Về Phong Cách Thời Trang Của Nữ Diễn Viên Park Shin Hye', 'Tìm Hiểu Về Phong Cách Thời Trang Của Nữ Diễn Viên Park Shin Hye', 'Park_Shin_Hye_41450806.jpg', 1, '2021-06-25 08:17:26', '2021-06-25 19:13:29'),
(9, 3, '4 COMBO TRANG PHỤC MÙA HÈ VỪA TIỆN DỤNG LẠI PHONG CÁCH', '<p>Chuy&ecirc;n mục&nbsp;<strong>Thời trang Showbiz</strong>&nbsp;&ndash; 4 combo trang phục m&ugrave;a h&egrave; vừa tiện dụng lại phong c&aacute;ch, gi&uacute;p chị em khỏi đau đầu suy nghĩ &ldquo;h&ocirc;m nay mặc g&igrave;&rdquo;V&agrave;o m&ugrave;a h&egrave; n&oacute;ng nực, chị em rất cần những trang phục thoải m&aacute;i, tho&aacute;ng m&aacute;t dễ di chuyển dể hoạt động dễ tiện hơn. B&agrave;i viết dưới đ&acirc;y sẽ chỉ ra 4 combo tiện &ndash; đẹp &ndash; sang cho chị em lựa chọn!</p>', '<h3 style=\"text-align:center\">Chuy&ecirc;n mục&nbsp;<strong>Thời trang Showbiz</strong>&nbsp;&ndash; 4 combo trang phục m&ugrave;a h&egrave; vừa tiện dụng lại phong c&aacute;ch, gi&uacute;p chị em khỏi đau đầu suy nghĩ &ldquo;h&ocirc;m nay mặc g&igrave;&rdquo;</h3>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">V&agrave;o m&ugrave;a h&egrave; n&oacute;ng nực, chị em rất cần những trang phục thoải m&aacute;i, tho&aacute;ng m&aacute;t dễ di chuyển dể hoạt động dễ tiện hơn. B&agrave;i viết dưới đ&acirc;y sẽ chỉ ra 4 combo tiện &ndash; đẹp &ndash; sang cho chị em lựa chọn!</p>\r\n\r\n<h3 style=\"text-align:center\">1. &Aacute;o ph&ocirc;ng, v&aacute;y midi v&agrave; gi&agrave;y thể thao</h3>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img src=\"https://images.guucdn.net/full/2019/06/07/07bb11a3a8d2d44bbc95e13e1e917c808c41ad4e.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\">&Aacute;o ph&ocirc;ng, gi&agrave;y thể thao năng động, mạnh mẽ kết hợp với v&aacute;y midi nữ t&iacute;nh, ngọt ng&agrave;o, sự phối hợp c&oacute; phần đối lập n&agrave;y sẽ khiến chị em tr&ocirc;ng cực ấn tượng, thoải m&aacute;i đơn giản nhưng vẫn thanh lịch. Với kiểu trang phục n&agrave;y, chị em c&oacute; thể đi hẹn h&ograve;, đi chơi hay dạo phố đều được hết.</p>\r\n\r\n<h3 style=\"text-align:center\">2. V&aacute;y trắng v&agrave; gi&agrave;y bệt</h3>\r\n\r\n<p style=\"text-align:center\"><img src=\"https://images.guucdn.net/full/2019/06/07/a724acd974519fd2abc25d431b7892d5f62e02d9.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\"><img src=\"https://images.guucdn.net/full/2019/06/07/1bf5d442a2c00108f8f8937aba58ac32a3e5d483.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\">Giữa chiều h&egrave; nắng v&agrave;ng, bộ v&aacute;y trắng sẽ khiến chị em trở n&ecirc;n duy&ecirc;n d&aacute;ng quyến rũ hơn hẳn, như n&agrave;ng c&ocirc;ng ch&uacute;a bước ra từ truyện cổ t&iacute;ch. Đ&ocirc;i gi&agrave;y bệt thoải m&aacute;i gi&uacute;p chị em di chuyển dễ d&agrave;ng, cực tiện lợi trong c&aacute;c hoạt động ngo&agrave;i trời.</p>\r\n\r\n<h3 style=\"text-align:center\">3. Sơ mi, quần jeans v&agrave; gi&agrave;y mules</h3>\r\n\r\n<p style=\"text-align:center\"><img src=\"https://images.guucdn.net/full/2019/06/07/a852daafc9762451a0f354a93e98b1627361c0d4.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\"><img src=\"https://images.guucdn.net/full/2019/06/07/8d0384b16796218321fb24ae509f7d542b559f5f.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\">Sơ mi v&agrave; quần jeans dường như l&agrave; một combo chẳng bao giờ sợ lỗi mốt, lại rất tiện dụng, hợp mốt. Kết hợp với gi&agrave;y mules kiểu c&aacute;ch xinh xắn, đ&acirc;y l&agrave; lựa chọn tuyệt vời cho c&aacute;c chị em đang ph&acirc;n v&acirc;n kh&ocirc;ng biết mặc g&igrave; đi hẹn h&ograve; hay đi chơi.</p>\r\n\r\n<h3 style=\"text-align:center\">4. &Aacute;o sọc, v&aacute;y ngắn v&agrave; sandal</h3>\r\n\r\n<p style=\"text-align:center\"><img src=\"https://images.guucdn.net/full/2019/06/07/b980ffb5be567ab0370ed258a9cdddfab2d9eb02.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\"><img src=\"https://images.guucdn.net/full/2019/06/07/d43a3442adaa912d0f31c831a26bd8ffb06444fd.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\">Với combo &aacute;o sọc v&aacute;y ngắn n&agrave;y, chị em nh&igrave;n cực kỳ chất chơi v&agrave; c&oacute; phần bụi bặm, hoang d&atilde;. Để th&ecirc;m phần c&aacute; t&iacute;nh, bạn c&oacute; thể đeo th&ecirc;m k&iacute;nh r&acirc;m. Nhớ đừng qu&ecirc;n trang sức v&agrave; t&uacute;i x&aacute;ch xinh xắn đi k&egrave;m nh&eacute;!</p>', '4 COMBO TRANG PHỤC MÙA HÈ VỪA TIỆN DỤNG LẠI PHONG CÁCH', '4 COMBO TRANG PHỤC MÙA HÈ VỪA TIỆN DỤNG LẠI PHONG CÁCH', 'b980ffb5be567ab0370ed258a9cdddfab2d9eb02284616.jpg', 1, '2021-06-27 03:39:29', '2021-06-27 03:39:29'),
(10, 3, '4 MẪU DÉP HÈ KHIẾN CHỊ EM PHẢI SẮM-PHỐI ĐỒ – MẶC ĐẸP', '<p>Trong m&ugrave;a h&egrave; nắng n&oacute;ng, việc ho&agrave;n thiện set đồ xinh xẻo xuống phố bằng một đ&ocirc;i gi&agrave;y thi thoảng sẽ khiến đ&ocirc;i ch&acirc;n trở n&ecirc;n v&ocirc; c&ugrave;ng b&iacute; b&aacute;ch, kh&oacute; chịu. Tr&aacute;i lại, c&oacute; lẽ sẽ chẳng n&agrave;ng n&agrave;o d&aacute;m l&ecirc;n đồ ho&agrave;n chỉnh rồi loẹt quẹt đ&ocirc;i t&ocirc;ng cho tho&aacute;ng c&aacute;i ch&acirc;n đ&acirc;u nhỉ! L&uacute;c n&agrave;y, để vừa bảo to&agrave;n vẻ thanh lịch,</p>', '<h3>Chuy&ecirc;n mục&nbsp;<strong>Phối đồ &ndash; Mặc đẹp</strong>&nbsp;&ndash; Gọi l&agrave; d&eacute;p m&agrave; chẳng xuề xo&agrave;, đ&acirc;y l&agrave; 4 mẫu d&eacute;p h&egrave; khiến chị em phải sắm</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Trong m&ugrave;a h&egrave; nắng n&oacute;ng, việc ho&agrave;n thiện set đồ xinh xẻo xuống phố bằng một đ&ocirc;i gi&agrave;y thi thoảng sẽ khiến đ&ocirc;i ch&acirc;n trở n&ecirc;n v&ocirc; c&ugrave;ng b&iacute; b&aacute;ch, kh&oacute; chịu. Tr&aacute;i lại, c&oacute; lẽ sẽ chẳng n&agrave;ng n&agrave;o d&aacute;m l&ecirc;n đồ ho&agrave;n chỉnh rồi loẹt quẹt đ&ocirc;i t&ocirc;ng cho tho&aacute;ng c&aacute;i ch&acirc;n đ&acirc;u nhỉ! L&uacute;c n&agrave;y, để vừa bảo to&agrave;n vẻ thanh lịch, s&agrave;nh điệu cho set đồ, vừa tạo cho đ&ocirc;i ch&acirc;n sự th&ocirc;ng tho&aacute;ng v&agrave; thoải m&aacute;i, c&aacute;c n&agrave;ng, đặc biệt l&agrave; hội chị em tuổi băm, nhất định đừng bỏ qua 1 trong 4 mẫu d&eacute;p đang được c&aacute;c qu&yacute; c&ocirc; s&agrave;nh mặc trưng dụng nhiệt t&igrave;nh dưới đ&acirc;y.</p>\r\n\r\n<p><strong>D&eacute;p quai ngang basic</strong></p>\r\n\r\n<p>Mang thiết kế cơ bản nhất trong c&aacute;c mẫu d&eacute;p đơn giản ngo&agrave;i kia, d&eacute;p quai ngang với kiểu d&aacute;ng cực basic l&agrave; item chắc chắn n&ecirc;n c&oacute; mặt trong tủ đồ của chị em. Đ&acirc;y l&agrave; mẫu d&eacute;p đơn giản nhưng kh&ocirc;ng hề nh&agrave;m ch&aacute;n, với rất nhiều những biến tấu xinh xắn c&ugrave;ng c&aacute;c chất liệu như da, da lộn, vải đục lỗ,&hellip; cho c&aacute;c n&agrave;ng tha hồ lựa chọn. Với khả năng ho&agrave;n thiện gần như mọi set đồ, từ v&aacute;y v&oacute;c đến c&aacute;c set quần &aacute;o, d&eacute;p quai ngang sẽ đem tới cho diện mạo c&aacute;c n&agrave;ng vẻ thời thượng, s&agrave;nh điệu chứ kh&ocirc;ng hề xuề xo&agrave; hay k&eacute;m sang.</p>\r\n\r\n<p>D&eacute;p quai ngang đơn giản m&agrave; kh&ocirc;ng hề nh&agrave;m ch&aacute;n lu&ocirc;n l&agrave;m tốt nhiệm vụ gi&uacute;p ho&agrave;n thiện một set đồ thanh lịch v&agrave; thời thượng.</p>\r\n\r\n<p>Những đ&ocirc;i d&eacute;p quai ngang với gam m&agrave;u cơ bản như n&acirc;u, be, trắng, đen l&agrave; lựa chọn ho&agrave;n hảo hơn cả để ho&agrave;n thiện mọi set đồ.</p>\r\n\r\n<p>C&aacute;c n&agrave;ng c&oacute; thể lựa chọn rất nhiều những biến tấu hay ho của d&eacute;p quai ngang d&aacute;ng basic để nhấn nh&aacute; cho diện mạo th&ecirc;m phần h&uacute;t mắt.</p>\r\n\r\n<p>D&eacute;p quai ngang với phần quai mảnh đem tới vẻ thanh tho&aacute;t v&agrave; ph&oacute;ng kho&aacute;ng cho đ&ocirc;i ch&acirc;n.</p>\r\n\r\n<p>D&eacute;p quai ngang đế c&oacute;i l&agrave; mẫu d&eacute;p cực kỳ ph&ugrave; hợp để diện trong m&ugrave;a h&egrave;.</p>\r\n\r\n<p><strong>D&eacute;p quai chữ X</strong></p>\r\n\r\n<p>Độc đ&aacute;o hơn một ch&uacute;t, những đ&ocirc;i d&eacute;p l&ecirc; c&oacute; thiết kế quai chữ X cũng l&agrave; item cực kỳ được l&ograve;ng c&aacute;c qu&yacute; c&ocirc; ngo&agrave;i 30. Theo đ&oacute;, phần quai chữ X vắt ch&eacute;o qua ch&acirc;n tạo cảm gi&aacute;c b&agrave;n ch&acirc;n trở n&ecirc;n nhỏ nhắn, thanh tho&aacute;t hơn, đồng thời tạo điểm nhấn cho đ&ocirc;i ch&acirc;n th&ecirc;m phần h&uacute;t mắt hơn. C&aacute;c n&agrave;ng c&oacute; thể lựa chọn những mẫu d&eacute;p quai chữ X to bản đơn giản để ho&agrave;n thiện set đồ. Hoặc kh&ocirc;ng, những n&agrave;ng ưa th&iacute;ch phong c&aacute;ch c&aacute; t&iacute;nh hơn c&oacute; thể t&igrave;m tới c&aacute;c mẫu với biến tấu đan xen giữa quai nhỏ v&agrave; to để tăng phần độc đ&aacute;o cho set đồ.</p>\r\n\r\n<p>D&eacute;p quai chữ X tối giản cũng l&agrave; một gợi &yacute; kh&ocirc;ng tồi để ho&agrave;n thiện một set đồ chuẩn thanh lịch.</p>\r\n\r\n<p>Những đ&ocirc;i d&eacute;p quai chữ X với nhiều thiết kế độc đ&aacute;o kh&aacute;c nhau sẽ cho c&aacute;c n&agrave;ng nhiều hơn sự lựa chọn cho ph&ugrave; hợp với sở th&iacute;ch c&aacute; nh&acirc;n.</p>\r\n\r\n<p>D&eacute;p quai chữ X c&oacute; thiết kế độc đ&aacute;o như thế n&agrave;y sẽ trở th&agrave;nh điểm nhấn cho set đồ của c&aacute;c n&agrave;ng trở n&ecirc;n thời thượng v&agrave; bắt mắt hơn.</p>\r\n\r\n<p>D&eacute;p quai chữ X với quần quai mảnh c&ugrave;ng g&oacute;t cao vừa phải l&agrave; kiểu d&eacute;p ho&agrave;n to&agrave;n ph&ugrave; hợp để c&aacute;c n&agrave;ng c&ocirc;ng sở diện đi l&agrave;m.</p>\r\n\r\n<p><strong>D&eacute;p xỏ ng&oacute;n</strong></p>\r\n\r\n<p>Trước ti&ecirc;n phải khẳng định rằng, d&eacute;p xỏ ng&oacute;n ở đ&acirc;y kh&ocirc;ng phải l&agrave; mấy đ&ocirc;i t&ocirc;ng ọp ẹp, mỏng d&iacute;nh, đi lại cứ ph&aacute;t ra tiếng loẹt quẹt cực k&eacute;m sang đ&acirc;u nh&eacute; c&aacute;c n&agrave;ng. D&eacute;p xỏ ng&oacute;n ở đ&acirc;y l&agrave; những mẫu d&eacute;p c&oacute; thiết kế chắc chắn, d&agrave;y dặn v&agrave; cầu kỳ hơn với phần lớn c&aacute;c mẫu đều mang chất liệu da c&ugrave;ng rất nhiều c&aacute;c phi&ecirc;n bản biến tấu cực th&uacute; vị. Diện l&ecirc;n kiểu d&eacute;p n&agrave;y, phong c&aacute;ch c&aacute;c n&agrave;ng chẳng những kh&ocirc;ng bị tụt hạng m&agrave; thậm ch&iacute; c&ograve;n trở n&ecirc;n v&ocirc; c&ugrave;ng trẻ trung v&agrave; s&agrave;nh điệu.</p>\r\n\r\n<p>Kh&ocirc;ng hề xuề xo&agrave; như những đ&ocirc;i d&eacute;p xỏ ng&oacute;n th&ocirc;ng thường, d&eacute;p xỏ ng&oacute;n với phần lớn l&agrave; chất liệu da c&ugrave;ng thiết kế cầu kỳ, tinh tế cũng l&agrave; một lựa chọn hay ho d&agrave;nh cho chị em trong m&ugrave;a h&egrave; n&agrave;y.</p>\r\n\r\n<p>D&eacute;p xỏ ng&oacute;n pha giữa quai bản to v&agrave; bản nhỏ đem tới n&eacute;t độc đ&aacute;o v&agrave; c&aacute; t&iacute;nh cho phong c&aacute;ch người diện.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; mẫu d&eacute;p xỏ ng&oacute;n đơn giản nhưng kh&ocirc;ng k&eacute;m phần thời thượng m&agrave; chị em c&oacute; thể lựa chọn để ho&agrave;n thiện mọi set đồ.</p>\r\n\r\n<p>Với những thiết kế d&eacute;p xỏ ng&oacute;n n&agrave;y, chị em c&ocirc;ng sở c&oacute; thể tha hồ m&agrave; diện tới chỗ l&agrave;m, kh&ocirc;ng lo bị k&eacute;m duy&ecirc;n hay k&eacute;m chỉn chu.</p>\r\n\r\n<p><strong>D&eacute;p quai trong suốt</strong></p>\r\n\r\n<p>Lạ mắt nhất trong c&aacute;c mẫu d&eacute;p đang g&acirc;y sốt m&ugrave;a h&egrave; n&agrave;y ch&iacute;nh l&agrave; d&eacute;p quai trong suốt. Trong đ&oacute;, điểm cộng đầu ti&ecirc;n phải nhắc tới ở mẫu d&eacute;p n&agrave;y l&agrave; cảm gi&aacute;c th&ocirc;ng tho&aacute;ng c&ugrave;ng n&eacute;t ph&oacute;ng kho&aacute;ng m&agrave; n&oacute; đem tới cho người diện. Ngo&agrave;i ra, d&eacute;p trong suốt với những biến tấu th&uacute; vị ở phần đế trong c&ugrave;ng c&aacute;c lựa chọn như đế bệt hoặc cao g&oacute;t từ 2-5cm chắc chắn sẽ kh&ocirc;ng l&agrave;m kh&oacute; c&aacute;c n&agrave;ng trong việc chọn ra một mẫu ph&ugrave; hợp với sở th&iacute;ch của bản th&acirc;n.</p>\r\n\r\n<p>D&eacute;p quai trong suốt l&agrave; mẫu d&eacute;p đang cực kỳ được l&ograve;ng c&aacute;c qu&yacute; c&ocirc; s&agrave;nh mặc bởi vẻ độc đ&aacute;o m&agrave; n&oacute; đem tới cho diện mạo c&aacute;c n&agrave;ng.</p>\r\n\r\n<p>D&eacute;p quai trong suốt với phần g&oacute;t thấp khiến đ&ocirc;i ch&acirc;n người diện tr&ocirc;ng thanh tho&aacute;t hơn.</p>\r\n\r\n<p>Những đ&ocirc;i d&eacute;p quai trong suốt với phần đế m&agrave;u be l&agrave; lựa chọn an to&agrave;n d&agrave;nh cho c&aacute;c c&ocirc; g&aacute;i.</p>\r\n\r\n<p>C&aacute;c n&agrave;ng kh&ocirc;ng ngại nổi bật c&oacute; thể sắm th&ecirc;m đ&ocirc;i ba mẫu d&eacute;p trong suốt với phần đế mang gam m&agrave;u rực rỡ.</p>', '4 MẪU DÉP HÈ KHIẾN CHỊ EM PHẢI SẮM-PHỐI ĐỒ – MẶC ĐẸP', '4 MẪU DÉP HÈ KHIẾN CHỊ EM PHẢI SẮM-PHỐI ĐỒ – MẶC ĐẸP', 'timthumb6485435.jpg', 1, '2021-06-27 04:03:29', '2021-06-27 04:03:29'),
(11, 3, '6 kiểu túi, giày, áo quần hứa hẹn ‘bá chủ’ tủ đồ hè này', '<p>Elizabeth von der Goltz, gi&aacute;m đốc mua h&agrave;ng to&agrave;n cầu của Net A Porter cho biết:<em>&quot;Ch&uacute;ng t&ocirc;i y&ecirc;u sự rung cảm mang hơi thở m&ugrave;a h&egrave; m&aacute;t mẻ ở California cho những th&aacute;ng ấm &aacute;p hơn, bao gồm c&aacute;c xu hướng lạc quan v&agrave; giản dị như &aacute;o sơ mi Hawaii, mũ x&ocirc;, &aacute;o tank top racer v&agrave; bất cứ thứ g&igrave; nhuộm m&agrave;u loang&rdquo;.</em></p>', '<h3>Chuy&ecirc;n mục&nbsp;<strong>Thời trang Showbiz</strong>&nbsp;&ndash; 6 kiểu t&uacute;i, gi&agrave;y, &aacute;o quần hứa hẹn &lsquo;b&aacute; chủ&rsquo; tủ đồ h&egrave; n&agrave;y</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Phong c&aacute;ch Cali</strong></p>\r\n\r\n<p><img alt=\"6 kiểu túi, giày, áo quần hứa hẹn \'bá chủ\' tủ đồ hè này\" src=\"https://images.guucdn.net/full/2019/06/07/acf8b069aa312a1e09fd55c7956491146dade20f.jpg\" /></p>\r\n\r\n<p>Elizabeth von der Goltz, gi&aacute;m đốc mua h&agrave;ng to&agrave;n cầu của Net A Porter cho biết:<em>&quot;Ch&uacute;ng t&ocirc;i y&ecirc;u sự rung cảm mang hơi thở m&ugrave;a h&egrave; m&aacute;t mẻ ở California cho những th&aacute;ng ấm &aacute;p hơn, bao gồm c&aacute;c xu hướng lạc quan v&agrave; giản dị như &aacute;o sơ mi Hawaii, mũ x&ocirc;, &aacute;o tank top racer v&agrave; bất cứ thứ g&igrave; nhuộm m&agrave;u loang&rdquo;.</em></p>\r\n\r\n<p>Chuy&ecirc;n gia cho hay c&ocirc; th&iacute;ch những khoảnh khắc mang đậm t&iacute;nh chất ảo thị, ảo gi&aacute;c được thấy tr&ecirc;n đường băng của Chloe, R13 v&agrave; Prada. Stephanie Schafer, gi&aacute;m đốc thời trang cao cấp của Nordstrom cũng ca ngợi vải nhuộm m&agrave;u loang đang l&agrave; xu hướng, nhưng gợi &yacute; c&aacute;ch để ứng dụng ch&uacute;ng trong m&ugrave;a n&agrave;y:&quot;<em>Kỹ thuật in đẹp tạo cảm gi&aacute;c tươi mới cho trang phục.&quot;</em></p>\r\n\r\n<p><strong>Trang sức mang hơi thở của biển</strong></p>\r\n\r\n<p><img alt=\"6 kiểu túi, giày, áo quần hứa hẹn \'bá chủ\' tủ đồ hè này\" src=\"https://images.guucdn.net/full/2019/06/07/f73a995880c1860c78ddb21b3c920757aa4142e0.jpg\" /></p>\r\n\r\n<p>Theo von der Goltz, xu hướng đại dương&nbsp;<em>&quot;dường như c&oacute; ở khắp mọi nơi v&agrave;o m&ugrave;a h&egrave; năm ngo&aacute;i, ngọc trai v&agrave; chuỗi hạt trong m&ugrave;a n&agrave;y cũng đang được ưa chuộng.&quot;</em>&nbsp;N&oacute; li&ecirc;n quan đến xu hướng &quot;California Cool&quot; đ&atilde; n&oacute;i ở tr&ecirc;n, nhưng một phần cũng v&igrave; guồng quay của thời trang.</p>\r\n\r\n<p>Được mệnh danh l&agrave; &quot;trang sức lưu niệm&quot; một c&aacute;ch tr&igrave;u mến, xu hướng n&agrave;y cũng &quot;bao gồm bất cứ thứ g&igrave; c&oacute; vỏ, ngọc trai, tiền xu hoặc đ&aacute;. Đ&oacute; l&agrave; một m&oacute;n đồ trang sức phi&ecirc;n bản cao cấp hơn thử m&agrave; người ta sẽ t&igrave;m thấy ở một cửa h&agrave;ng địa phương&quot;. Trang sức vỏ s&ograve; đ&atilde; biến đổi từ b&atilde;i biển cơ bản sang thanh lịch đẳng cấp hơn. Vỏ đinh t&aacute;n, trang sức khiểu b&ugrave;a ch&uacute; v&agrave; mặt d&acirc;y l&agrave; những phụ kiện đ&aacute;ng th&egrave;m muốn trong m&ugrave;a h&egrave; n&agrave;y.</p>\r\n\r\n<p><strong>Đồ mỹ nghệ</strong></p>\r\n\r\n<p><img alt=\"6 kiểu túi, giày, áo quần hứa hẹn \'bá chủ\' tủ đồ hè này\" src=\"https://images.guucdn.net/full/2019/06/07/e52cc6af99911fbae3dc07cfe6dd71bc383d8e51.jpg\" /></p>\r\n\r\n<p>Khi n&oacute;i đến t&uacute;i m&ugrave;a h&egrave;, t&acirc;m tr&iacute; của ch&uacute;ng ta nghĩ ngay đến những chiếc ống h&uacute;t. V&agrave; phụ kiện cảm hứng từ ống h&uacute;t đang thực sự l&agrave; một m&oacute;n hot h&egrave; n&agrave;y. Lisa Aiken, gi&aacute;m đốc thời trang của ModaOperandi, đ&atilde; mổ xẻ l&yacute; do tại sao giới fashionista y&ecirc;u th&iacute;ch n&oacute;.&nbsp;<em>&quot;Những chiếc t&uacute;i được kết bởi chất liệu n&agrave;y gợi ra một tư duy kỳ nghỉ, ngay cả khi sử dụng ch&uacute;ng trong th&agrave;nh phố,&quot;</em>&nbsp;c&ocirc; n&oacute;i.&nbsp;<em>&quot;L&agrave; một mặt h&agrave;ng chủ lực cho m&ugrave;a h&egrave; linh hoạt, n&oacute; được b&oacute;ng bẩy h&oacute;a l&ecirc;n nhưng kh&ocirc;ng ngột ngạt v&agrave; thực sự c&oacute; thể gắn kết th&agrave;nh c&aacute;c sản phẩm thời trang. Nhưng phong c&aacute;ch kh&ocirc;ng giới hạn ở m&acirc;y c&oacute;i, m&agrave; l&agrave; tất cả h&agrave;ng dệt may sắc sảo&quot;,</em>&nbsp;Schafer n&oacute;i th&ecirc;m,&nbsp;<em>&quot;Đồ thủ c&ocirc;ng đang trở th&agrave;nh một xu hướng quanh năm trong t&uacute;i,&quot; rơm, m&oacute;c, len v&agrave; c&aacute;c chi tiết thủ c&ocirc;ng l&agrave; tất cả xu hướng m&agrave; bạn cần biết trong h&egrave; n&agrave;y. &quot;</em></p>\r\n\r\n<p>Nếu bạn đang t&igrave;m kiếm một chiếc t&uacute;i da, Aiken gợi &yacute; chiếc t&uacute;i đeo ch&eacute;o mới của Bottega Veneta. D&ugrave; qu&aacute; khổ hoặc mini, n&oacute; l&agrave; mảnh gh&eacute;p ho&agrave;n hảo để c&ugrave;ng bạn bạn đi từ ng&agrave;y n&agrave;y sang đ&ecirc;m kh&aacute;c v&agrave; trở th&agrave;nh một thứ thiết yếu trong tủ quần &aacute;o t&uacute;i x&aacute;ch của bạn.</p>\r\n\r\n<p><strong>V&aacute;y tiệc tr&agrave; biến tấu</strong></p>\r\n\r\n<p><img alt=\"6 kiểu túi, giày, áo quần hứa hẹn \'bá chủ\' tủ đồ hè này\" src=\"https://images.guucdn.net/full/2019/06/07/38d4c374294789d15b8166859facd99f7f317581.jpg\" /></p>\r\n\r\n<p>M&ugrave;a h&egrave; n&agrave;y, h&atilde;y đ&aacute;nh đổi những bộ đồ lửng vừa vặn v&agrave; ph&ugrave; hợp với phong c&aacute;ch retro. Schafer cho biết: &quot;Chiếc v&aacute;y d&agrave;i v&agrave; mềm oặt mang h&igrave;nh b&oacute;ng của m&ugrave;a h&egrave;&quot;. Những phong c&aacute;ch n&agrave;y khoe một ch&uacute;t mắt c&aacute; ch&acirc;n, nhưng vẫn giữ một ch&uacute;t &yacute; nhị. Xu hướng ngủ n&agrave;y l&agrave;&nbsp;<em>&quot;si&ecirc;u phẳng phiu v&agrave; một chiều d&agrave;i tuyệt vời. N&oacute; ph&ugrave; hợp với một xu hướng cổ điển được l&agrave;m mới mẻ lại.</em>&quot;</p>\r\n\r\n<p><em>&quot;T&igrave;m những chiếc v&aacute;y c&oacute; chiều d&agrave;i trung b&igrave;nh v&agrave; chảy ra khỏi cơ thể, giống như một chiếc thắt lưng thả xuống. Chọn m&agrave;u sắc trung t&iacute;nh đến những chiếc in b&ocirc;ng hoa cổ điển.&rdquo;-</em>&nbsp;Chuy&ecirc;n gia gợi &yacute;.</p>\r\n\r\n<p><img alt=\"6 kiểu túi, giày, áo quần hứa hẹn \'bá chủ\' tủ đồ hè này\" src=\"https://images.guucdn.net/full/2019/06/07/84139c4424557f8faa20cfbb5401def8d10a70c9.jpg\" /></p>\r\n\r\n<p><em>&quot;Một chủ đề thực dụng được ch&agrave;o đ&oacute;n cho m&ugrave;a h&egrave; n&agrave;y l&agrave; trang phục bảo hộ&quot;,</em>&nbsp;Aiken n&oacute;i. Trang phục phong c&aacute;ch vận chuyển h&agrave;ng h&oacute;a đ&atilde; trở lại. Nếu ưa th&iacute;ch sự kh&aacute;c biệt biệt kh&ocirc;ng phải l&agrave; style của bạn, th&igrave; theo chuy&ecirc;n gia Von der Goltz gợi &yacute;:&nbsp;<em>&quot;Bộ đồ &aacute;o liền quần k&iacute;n m&iacute;t theo chủ đề lao động n&agrave;y rất hiệu quả, thoải m&aacute;i, m&aacute;t mẻ v&agrave; phong c&aacute;ch.&quot;</em></p>\r\n\r\n<p><strong>Gi&agrave;y mũi vu&ocirc;ng</strong></p>\r\n\r\n<p><img alt=\"6 kiểu túi, giày, áo quần hứa hẹn \'bá chủ\' tủ đồ hè này\" src=\"https://images.guucdn.net/full/2019/06/07/4d58bfe01f8a250fa7af1808ebaa7acac2b6a73f.jpg\" /></p>\r\n\r\n<p>Theo cả Scafer v&agrave; Aiken, đ&atilde; đến l&uacute;c đi vu&ocirc;ng với gi&agrave;y mũi vu&ocirc;ng.<em>&quot;C&aacute;c h&igrave;nh dạng h&igrave;nh học ấn tượng th&iacute;ch hợp với kiểu gi&agrave;y hiện đại,&quot;</em>&nbsp;Aiken n&oacute;i.<em>&quot;N&oacute; đẹp v&agrave; hợp một chiếc v&aacute;y nữ t&iacute;nh.&quot;</em>&nbsp;Đối với Schafer, d&eacute;p tối giản l&agrave; một điều bắt buộc nếu muốn bắt trend h&egrave; n&agrave;y. H&atilde;y t&igrave;m những chiếc d&acirc;y mảnh khảnh để c&acirc;n bằng sự th&ocirc; của g&oacute;t ch&acirc;n h&igrave;nh khối v&agrave; mũi vu&ocirc;ng.</p>', '6 kiểu túi, giày, áo quần hứa hẹn ‘bá chủ’ tủ đồ hè này', '6 kiểu túi, giày, áo quần hứa hẹn ‘bá chủ’ tủ đồ hè này', 'acf8b069aa312a1e09fd55c7956491146dade20f9923766.jpg', 1, '2021-06-27 04:06:55', '2021-06-27 04:06:55');
INSERT INTO `tbl_news` (`news_id`, `cate_new_id`, `news_title`, `news_desc`, `news_content`, `news_meta_desc`, `news_meta_keyword`, `news_image`, `news_status`, `created_at`, `updated_at`) VALUES
(12, 3, '4 KIỂU TRANG PHỤC GIÚP NGƯỜI MẶC ĂN GIAN TỚI CHỤC PHÂN CHIỀU CAO,', '<p>Chuy&ecirc;n mục&nbsp;<strong>Thời trang Showbiz</strong>&nbsp;&ndash; 4 kiểu trang phục gi&uacute;p người mặc ăn gian tới chục ph&acirc;n chiều cao, hội chị em nấm l&ugrave;n cần &ldquo;khắc cốt ghi t&acirc;m&rdquo;</p>\r\n\r\n<p>Ai cũng muốn c&oacute; th&acirc;n h&igrave;nh cao r&aacute;o, mảnh dẻ, c&acirc;n đối, song kh&ocirc;ng phải ai cũng c&oacute; được những may mắn đ&oacute;. B&agrave;i viết dưới đ&acirc;y sẽ chỉ ra 4 kiểu trang phục gi&uacute;p những chị em đau khổ v&igrave; &quot;chiều cao c&oacute; hạn&quot; tự tin hơn hẳn khi diện đồ.</p>', '<h3 style=\"text-align:center\"><cite><tt>Chuy&ecirc;n mục&nbsp;Thời trang Showbiz&nbsp;&ndash; 4 kiểu trang phục gi&uacute;p người mặc ăn gian tới chục ph&acirc;n chiều cao, hội chị em nấm l&ugrave;n cần &ldquo;khắc cốt ghi t&acirc;m&rdquo;</tt></cite></h3>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><cite>Ai cũng muốn c&oacute; th&acirc;n h&igrave;nh cao r&aacute;o, mảnh dẻ, c&acirc;n đối, song kh&ocirc;ng phải ai cũng c&oacute; được những may mắn đ&oacute;. B&agrave;i viết dưới đ&acirc;y sẽ chỉ ra 4 kiểu trang phục gi&uacute;p những chị em đau khổ v&igrave; &quot;chiều cao c&oacute; hạn&quot; tự tin hơn hẳn khi diện đồ.</cite></p>\r\n\r\n<h3 style=\"text-align:center\"><cite>1. Ch&acirc;n v&aacute;y c&agrave;i khuy trước</cite></h3>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><cite><img src=\"https://images.guucdn.net/full/2019/06/07/09a18d42b2562e75c7b4f4bc22344dc3fd9f34f7.jpeg\" /></cite></p>\r\n\r\n<p style=\"text-align:center\"><cite>Ch&acirc;n v&aacute;y c&agrave;i khuy trước với h&agrave;ng c&uacute;c dọc trải d&agrave;i ph&iacute;a trước, tạo điểm nhấn nh&aacute; ấn tượng cho bộ đồ. B&ecirc;n cạnh đ&oacute;, đường c&uacute;c d&agrave;i c&ograve;n tạo ảo ảnh thị gi&aacute;c khiến ch&acirc;n bạn như d&agrave;i hơn. Nếu muốn bộ v&aacute;y trở n&ecirc;n quyến rũ hơn, chị em c&oacute; thể th&aacute;o c&uacute;c từ phần tr&ecirc;n đầu gối để tạo th&agrave;nh đường xẻ cực duy&ecirc;n d&aacute;ng quyến rũ. Ch&acirc;n v&aacute;y c&agrave;i khuy trước c&oacute; thể phối hợp với &aacute;o sơ mi, &aacute;o ph&ocirc;ng rất linh hoạt.</cite></p>\r\n\r\n<h3 style=\"text-align:center\"><cite>2. V&aacute;y quấn</cite></h3>\r\n\r\n<p style=\"text-align:center\"><cite><img src=\"https://images.guucdn.net/full/2019/06/07/6e0bbb84392c05f1f54158e963910bb3630caeb9.jpeg\" /></cite></p>\r\n\r\n<p style=\"text-align:center\"><cite><img src=\"https://images.guucdn.net/full/2019/06/07/7d2ded1b34c4a9e0559df1911e5fabcf206167d9.jpg\" /></cite></p>\r\n\r\n<p style=\"text-align:center\"><cite><img src=\"https://images.guucdn.net/full/2019/06/07/6603f1863a7520b5dad1c37c33f23394f2eab0c8.jpg\" /></cite></p>\r\n\r\n<p style=\"text-align:center\"><cite><img src=\"https://images.guucdn.net/full/2019/06/07/8a3e9e338f66c6ab251ab9953d77f4c1ea3f54a6.jpg\" /></cite></p>\r\n\r\n<p style=\"text-align:center\"><cite>V&aacute;y quấn năng động v&agrave; quyến rũ đ&atilde; chẳng c&ograve;n xa lạ g&igrave; với chị em. Với vạt v&aacute;y được siết chặt ở eo, mọi người sẽ kh&ocirc;ng thể rời mắt khỏi v&ograve;ng eo của bạn, đồng thời t&agrave; v&aacute;y v&aacute;t ch&eacute;o cũng tạo cảm gi&aacute;c ch&acirc;n bạn nh&igrave;n d&agrave;i hơn. V&aacute;y quấn cũng rất linh hoạt v&agrave; c&oacute; thể phối được với đủ kiểu trang phục kh&aacute;c nhau.</cite></p>\r\n\r\n<h3 style=\"text-align:center\"><cite>3. Quần ống su&ocirc;ng</cite></h3>\r\n\r\n<p style=\"text-align:center\"><cite><img src=\"https://images.guucdn.net/full/2019/06/07/d51330b76663f35f230c6bba24d900070dfcf049.jpeg\" /></cite></p>\r\n\r\n<p style=\"text-align:center\"><cite><img src=\"https://images.guucdn.net/full/2019/06/07/f5ddb70b0a11449a10c43a19f084304514d01e2c.jpeg\" /></cite></p>\r\n\r\n<p style=\"text-align:center\"><cite>Khỏi phải nghi ngờ t&aacute;c dụng k&eacute;o d&agrave;i ch&acirc;n của quần ống su&ocirc;ng. Với ống quần bu&ocirc;ng d&agrave;i, người nh&igrave;n sẽ kh&ocirc;ng tự chủ lia mắt từ tr&ecirc;n xuống dưới theo chiều d&agrave;i của ống quần, đ&ocirc;i ch&acirc;n bạn ngay lập tức nh&igrave;n như d&agrave;i hơn tới chục ph&acirc;n.</cite></p>\r\n\r\n<h3 style=\"text-align:center\"><cite>4. Quần cạp cao</cite></h3>\r\n\r\n<p style=\"text-align:center\"><cite><img src=\"https://images.guucdn.net/full/2019/06/07/8505a34e8fd3bf1d2b19cf8ee788da01ae00004c.jpeg\" /></cite></p>\r\n\r\n<p style=\"text-align:center\"><cite><img src=\"https://images.guucdn.net/full/2019/06/07/9873f1a583dc7640db3476e44d45d1faba6cab94.jpeg\" /></cite></p>\r\n\r\n<p style=\"text-align:center\"><cite>Với cạp quần cực cao của m&igrave;nh, chiếc quần cạp cao sẽ khiến chị em ăn gian chiều cao một c&aacute;ch ngoạn mục, đ&ocirc;i ch&acirc;n bạn nh&igrave;n thon d&agrave;i, nuột n&agrave; hơn hẳn. Để tăng th&ecirc;m hiệu quả, chị em n&ecirc;n chọn những chiếc quần tối m&agrave;u, &ocirc;m ch&acirc;n, như vậy vừa t&ocirc;n l&ecirc;n đường cong cơ thể lại vừa khiến h&igrave;nh ảnh bạn gọn g&agrave;ng, thanh lịch.</cite></p>', '4 KIỂU TRANG PHỤC GIÚP NGƯỜI MẶC ĂN GIAN TỚI CHỤC PHÂN CHIỀU CAO,', '4 KIỂU TRANG PHỤC GIÚP NGƯỜI MẶC ĂN GIAN TỚI CHỤC PHÂN CHIỀU CAO,', '8505a34e8fd3bf1d2b19cf8ee788da01ae00004c1405665.jpeg', 1, '2021-06-27 04:09:33', '2021-06-27 04:09:33'),
(13, 3, 'Top 10 thương hiệu thời trang quốc tế', '<p>Xu&ocirc;i theo d&ograve;ng chảy mạnh mẽ của những cơn b&atilde;o thời trang tr&ecirc;n to&agrave;n thế giới, thị trường b&aacute;n lẻ những mặt h&agrave;ng thời trang hiện nay đang ng&agrave;y c&agrave;ng nhộn nhịp v&agrave; mới mẻ hơn bao giờ hết bởi kh&ocirc;ng chỉ c&oacute; sự xuất hiện của những thương hiệu quốc gia m&agrave; c&ograve;n c&oacute; sự &quot;x&acirc;m nhập&quot; của c&aacute;c thương hiệu quốc tế.</p>', '<p>Xu&ocirc;i theo d&ograve;ng chảy mạnh mẽ của những cơn b&atilde;o thời trang tr&ecirc;n to&agrave;n thế giới, thị trường b&aacute;n lẻ những mặt h&agrave;ng thời trang hiện nay đang ng&agrave;y c&agrave;ng nhộn nhịp v&agrave; mới mẻ hơn bao giờ hết bởi kh&ocirc;ng chỉ c&oacute; sự xuất hiện của những thương hiệu quốc gia m&agrave; c&ograve;n c&oacute; sự &quot;x&acirc;m nhập&quot; của c&aacute;c thương hiệu quốc tế. Để cập nhật những phong c&aacute;ch thịnh h&agrave;nh nhất, c&aacute;c t&iacute;n đồ thời trang cũng kh&ocirc;ng ngần ngại lựa chọn những mặt h&agrave;ng thời trang từ c&aacute;c thương hiệu nước ngo&agrave;i b&ecirc;n cạnh c&aacute;c thương hiệu trong nước, khiến cho vị thế của những thương hiệu quốc tế n&agrave;y tại Việt Nam kh&ocirc;ng ngừng được n&acirc;ng cao. V&igrave; vậy, Toplist sẽ giới thiệu đến c&aacute;c bạn top 10 thương hiệu thời trang quốc tế nổi tiếng, được ưa chuộng nhất tại Việt Nam.</p>\r\n\r\n<h3>Zara</h3>\r\n\r\n<p>C&aacute;i t&ecirc;n&nbsp;<strong>Zara</strong>&nbsp;chắc chắn kh&ocirc;ng xa lạ với người y&ecirc;u thời trang tr&ecirc;n to&agrave;n thế giới.&nbsp;<strong>Zara</strong>&nbsp;l&agrave; thương hiệu đến từ T&acirc;y Ban Nha v&agrave; được mệnh danh l&agrave; g&atilde; khổng lồ trong ph&acirc;n kh&uacute;c b&igrave;nh d&acirc;n của l&agrave;ng thời trang thế giới. &Ocirc;ng chủ Inditex Group (tập đo&agrave;n sở hữu thương hiệu Zara) đ&atilde; vượt mặt Bill Gates trở th&agrave;nh người gi&agrave;u nhất thế giới c&agrave;ng chứng tỏ sự h&ugrave;ng mạnh của thương hiệu n&agrave;y. Ng&agrave;y 8 th&aacute;ng 9 năm 2016, cửa h&agrave;ng&nbsp;<strong>Zara</strong>&nbsp;đầu ti&ecirc;n ở Việt Nam với diện t&iacute;ch hơn 2,400 m2 mở tại Vincom Đồng Khởi, th&agrave;nh phố Hồ Ch&iacute; Minh đ&atilde; g&acirc;y tiếng vang lớn trong thị trường b&aacute;n lẻ Việt Nam.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&aacute;c chủng loại h&agrave;ng h&oacute;a v&ocirc; c&ugrave;ng phong ph&uacute; với đầy đủ c&aacute;c d&ograve;ng c&ugrave;ng với gi&aacute; cả kh&ocirc;ng ch&ecirc;nh lệch nhiều so với c&aacute;c nước trong khu vực đ&atilde; gi&uacute;p cửa h&agrave;ng n&agrave;y thu h&uacute;t h&agrave;ng ng&agrave;n lượt kh&aacute;ch mỗi ng&agrave;y. Doanh thu ng&agrave;y đầu ti&ecirc;n của cửa h&agrave;ng n&agrave;y cũng đạt đến con số kỷ lục: 5,5 tỷ đồng. Sau hơn 1 th&aacute;ng khai trương, sức n&oacute;ng của&nbsp;<strong>Zara</strong>&nbsp;gần như vẫn chưa c&oacute; dấu hiệu giảm s&uacute;t.</p>\r\n\r\n<p><br />\r\n<strong><u>TH&Ocirc;NG TIN CHI TIẾT:</u></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Địa chỉ:</strong></p>\r\n\r\n<ul>\r\n	<li>VINCOM CENTER 191 B&agrave; Triệu, L&ecirc; Đại H&agrave;nh, Hai B&agrave; Trưng, H&agrave; Nội.</li>\r\n	<li>VINCOM CENTER, L1-2B &amp; M06, 72 L&ecirc; Th&aacute;nh T&ocirc;n, Bến Ngh&eacute;, quận 1, TP.HCM.</li>\r\n</ul>\r\n\r\n<p><strong>Website:</strong>&nbsp;www.zara.com/vn</p>\r\n\r\n<p><img alt=\"Cửa hàng Zara ở Vincom Đồng Khởi\" src=\"https://toplist.vn/images/800px/zara-tay-ban-nha-14462.jpg\" /></p>\r\n\r\n<p><em>Cửa h&agrave;ng Zara ở Vincom Đồng Khởi</em></p>\r\n\r\n<p><img alt=\"Không khí tấp nập trong ngày đầu khai trương cửa hàng Zara ở Việt Nam\" src=\"https://toplist.vn/images/800px/zara-tay-ban-nha-14558.jpg\" /></p>\r\n\r\n<p><em>Kh&ocirc;ng kh&iacute; tấp nập trong ng&agrave;y đầu khai trương cửa h&agrave;ng Zara ở Việt Nam</em></p>', 'Top 10 thương hiệu thời trang quốc tế', 'Top 10 thương hiệu thời trang quốc tế', 'zara-tay-ban-nha-144622607531.jpg', 1, '2021-07-06 08:12:21', '2021-07-06 08:12:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(25, 2, 16, 32, '605,000.00', 0, NULL, NULL),
(26, 2, 17, 33, '411,400.00', 0, NULL, NULL),
(27, 2, 18, 34, '363,000.00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `shipping_id`, `customer_id`, `product_id`, `payment_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(6, 25, 16, 2, 9, 32, 'ÁO VEST NAZAFU XANH ĐEN', '605,000.00', 1, NULL, NULL),
(7, 26, 17, 2, 6, 33, 'ÁO SƠ MI HỌA TIẾT ASM059', '411,400.00', 1, NULL, NULL),
(8, 27, 18, 2, 4, 34, 'ÁO SƠ MI LOANG ASM065', '363,000.00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(32, '2', 1, NULL, NULL),
(33, '2', 1, NULL, NULL),
(34, '2', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `category_id`, `brand_id`, `product_name`, `product_desc`, `product_price`, `product_size`, `product_content`, `product_image`, `product_color`, `product_status`, `created_at`, `updated_at`) VALUES
(2, 1, 5, 'prolayer', 'dfasfs', 4000000, 'XL', 'ádfsdaf', 'ao-vest-nazafu-den-1107-9866-slide-products-5b3af822d7599408403.jpg', 'blue', '1', NULL, NULL),
(3, 2, 4, 'ÁO SƠ MI CARO ASM041 MÀU ĐEN', 'mặc đi giã ngoại', 4000000, 'M', 'mặc đi giã ngoại', 'ao-so-mi-caro-brushed-twill-asm026-15944-slide-products-60179c761a8fc5785280.png', 'xanh', '1', NULL, NULL),
(4, 2, 5, 'ÁO SƠ MI LOANG ASM065', 'đàasdfsd', 300000, 'L', 'dsafas', '-16117-slide-products-60af2243312cb6315660.jpg', 'xanh', '1', NULL, NULL),
(5, 2, 3, 'ASM HỌA TIẾT LÁ CÂY MÀU ĐEN ASM062', 'hgahdasf', 300000, 'L', 'dfasdfasdf', '-16113-slide-products-60af1c31959211494126.jpg', 'đèn xám', '0', NULL, NULL),
(6, 2, 4, 'ÁO SƠ MI HỌA TIẾT ASM059', 'áo sơ mi nam hoa văn danh cho người đi chơi', 340000, 'M', 'áo sơ mi nam hoa văn trắng', '-16078-slide-products-609ca897b343c4422951.png', 'trắng hoa văn', '1', NULL, NULL),
(7, 2, 4, 'ÁO SƠ MI HOA XÁM ASM064', 'Áo xanh sơ mi nam', 300000, 'M', 'Áo xanh sơ mi nam', '-16116-slide-products-60af2188ecb031040387.jpg', 'xanh', '1', NULL, NULL),
(8, 1, 4, 'ÁO VEST NAZAFU', 'ÁO VEST NAZAFU  giam gia 10%', 500000, 'M', 'ÁO VEST NAZAFU  giam gia 10%', 'ao-vest-nazafu-xanh-duong-dam-1128-10129-slide-products-5bc4570709fb99062103.jpg', 'trang', '1', NULL, NULL),
(9, 1, 4, 'ÁO VEST NAZAFU XANH ĐEN', 'sadshgfafa', 500000, 'S', 'dsfa', 'ao-vest-nazafu-xanh-den-1127-10127-slide-products-5bc45506d292e2669772.jpg', 'den', '1', NULL, NULL),
(10, 1, 4, 'ÁO VEST NAZAFU ĐỎ ĐÔ', 'casdfas', 500000, 'S', 'fasdfas', 'ao-vest-do-man-av1102-9841-slide-products-5b3466d375d311603464.jpg', 'do', '1', NULL, NULL),
(11, 1, 3, 'ÁO VEST NAZAFU ĐEN', 'Kiểu dáng thanh lịch,', 600000, 'S', 'dsafa', 'ao-vest-nazafu-xanh-den-1103-9847-slide-products-5b346c1838b1b5655565.jpg', 'black', '1', NULL, NULL),
(12, 1, 3, 'ÁO VEST NAZAFU XÁM', 'Thời trang thời thượng', 1000000, 'S', 'Thời trang thời thượng', 'ao-vest-nazafu-den-1124-10663-slide-products-5c493f1eae5a52483596.jpg', 'xam', '1', NULL, NULL),
(13, 1, 3, 'ÁO VEST NAZAFU XANH ĐEN', 'Phong cách thời thượng', 1000000, 'S', 'Phong cách thời thượng', 'ao-vest-nazafu-xam-1113-10664-slide-products-5c4940471dab42309663.jpg', 'XANH ĐEN', '1', NULL, NULL),
(14, 1, 3, 'ÁO VEST NAZAFU XANH ĐEN', 'Phong cách thời thượng', 1000000, 'S', 'Phong cách thời thượng', 'ao-vest-nazafu-den-1109-10112-slide-products-5bc4443f3cb0a8556620.jpg', 'XANH ĐEN', '1', NULL, NULL),
(15, 2, 9, 'DAZY Áo sơ mi Hoa Giải trí', 'phong cách mùa hè', 200000, 'S', 'phong cách mùa hè', '16220228237a868dfede1903c498b80f72cfe2c35c_thumbnail_600x3265799.webp', 'trang hoa', '1', NULL, NULL),
(16, 2, 3, 'ÁO SƠ MI HỌA TIẾT TRẮNG ASM1207', '<p>phong c&aacute;ch thời trang mua h&egrave;</p>', 300000, 'S', 'phong cách thời trang mua hè', 'ao-so-mi-hoa-tiet-trang-asm771-10074-slide-products-5bae02d18589b (1)3515634.jpg', 'trắng chấm bi', '1', NULL, NULL),
(17, 2, 3, 'DAZY Áo sơ mi Xù Hoa Giải trí', '<p>phong c&aacute;ch cuốn h&uacute;t&nbsp;</p>', 300000, 'S', 'phong cách cuốn hút ', '1622603908c26628fcae033cbc784e9522e534316c_thumbnail_600x246770.png', 'xanh hoa', '1', NULL, NULL),
(18, 2, 3, 'DAZY Áo sơ mi Nút phía trước Họa tiết hoa Boho', '<p>phong c&aacute;ch c&ocirc;ng sở</p>', 500000, 'M', 'phong cách công sở', '1622697380090e83b762d2ec9d3e572f08ce14e1b6_thumbnail_600x3265314.webp', 'xanh châm bi', '1', NULL, NULL),
(19, 2, 4, 'ÁO SƠ MI HỌA TIẾT XÁM XANH ASM997', '<p>phong c&aacute;ch mua h&egrave;</p>', 500000, 'M', 'phong cách mua hè', 'ao-so-mi-hoa-tiet-xanh-bien-asm997-9921-slide-products-5b67b4d60bf0f5556727.jpg', 'mau xanh', '1', NULL, NULL),
(20, 2, 3, 'DAZY Áo sơ mi Dây kéo màu trơn Giải trí', '<p>thời trang phong c&aacute;ch</p>', 340000, 'S', 'thời trang phong cách', '162244082556a88283020af3bd4301d0b089166eac_thumbnail_600x8380057.webp', 'trắng', '1', NULL, NULL),
(21, 4, 3, 'Đầm xòe hoa nhí 3079', '<p>Đầm x&ograve;e 3079 duy&ecirc;n d&aacute;ng với họa tiết hoa nh&iacute; sang trọng, chất liệu voan g&acirc;n c&oacute; may 2 lớp, c&oacute; t&uacute;i tiện dụng. Đầm th&iacute;ch hợp cho c&aacute;c chị em mặc đi dạo phố, mua sắm, đi l&agrave;m c&ocirc;ng sở. Một thiết kế mới v&agrave; độc quyền của thương hiệu thời trang</p>', 299, 'S', 'Đầm xòe 3079 duyên dáng với họa tiết hoa nhí sang trọng, chất liệu voan gân có may 2 lớp, có túi tiện dụng. Đầm thích hợp cho các chị em mặc đi dạo phố, mua sắm, đi làm công sở. Một thiết kế mới và độc quyền của thương hiệu thời trang', 'dam-xoe-hoa-nhi-30798097703.jpg', 'tím', '1', NULL, NULL),
(22, 4, 3, 'Đầm xòe hoa 3075', '<p>Đầm hoa 3075 d&aacute;ng x&ograve;e nữ t&iacute;nh chất liệu lụa v&acirc;n Ph&aacute;p, c&oacute; l&oacute;t &aacute;o co gi&atilde;n nhẹ. Họa tiết hoa nổi bật nh&igrave;n sang trọng, đầm c&oacute; thể diện đi dạo phố, những buổi tiệc nhẹ hoặc l&agrave;m c&ocirc;ng sở</p>', 349000, 'M', 'Đầm hoa 3075 dáng xòe nữ tính chất liệu lụa vân Pháp, có lót áo co giãn nhẹ. Họa tiết hoa nổi bật nhìn sang trọng, đầm có thể diện đi dạo phố, những buổi tiệc nhẹ hoặc làm công sở', 'dam-xoe-hoa-3075-14549408.jpg', 'xanh', '1', NULL, NULL),
(23, 4, 10, 'Đầm xòe dạo phố 2197 có in hoa', 'Đầm xòe công sở in hoa mã số 2197 xinh xắn, các nàng có thể mặc dạo phố, xem phim hẹn hò vẫn đẹp.', 340000, 'M', 'Đầm xòe công sở in hoa mã số 2197 xinh xắn, các nàng có thể mặc dạo phố, xem phim hẹn hò vẫn đẹp.', 'dam-xoe-dao-pho-2197-co-in-hoa-12755498.jpg', 'Nâu', '1', NULL, NULL),
(24, 4, 10, 'Đầm xòe 1873 màu xanh đen', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Size S: Ngực 82-84, Eo 64-66, M&ocirc;ng 84-86 (43-47kg)</li>\r\n	<li>+ Size M: Ngực 86-88, Eo 68-70, M&ocirc;ng 88-90 (48-53kg)</li>\r\n	<li>+ Size L: Ngực 90-92, Eo 72-74, M&ocirc;ng 92-94 (55-58kg)</li>\r\n	<li>+ Size XL: Ngực 94-96, Eo 76-78, M&ocirc;ng 96-98 (60-64kg)</li>\r\n	<li>+ Size XXL: Ngực 98-100, Eo 80-84, M&ocirc;ng 100-104 (65-70kg)</li>\r\n</ul>', 343000, 'M', 'Đầm xòe màu xanh đen 1873 thiết kế hiện đại, nữ tính. Chất liệu vải Cotton lạnh cao cấp co giãn nhẹ có thể mặc trong nhiều dịp, có may túi, ít nhăn.', 'dam-xoe-1873-mau-xanh-den-29169321.jpg', 'XANH ĐEN', '1', NULL, NULL),
(25, 4, 5, 'Đầm xòe dập ly 1668 màu xanh', '<p><span style=\"font-family:Georgia,serif\"><span style=\"font-size:14px\">Đầm x&ograve;e 1668 m&agrave;u xanh thiết kế nữ t&iacute;nh, t&ugrave;ng dập ly tinh tế duy&ecirc;n d&aacute;ng. Chất liệu l&agrave; voan H&agrave;n cao cấp nhẹ m&aacute;t c&oacute; may 2 lớp, &iacute;t bị nhăn.&nbsp;</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-family:Georgia,serif\"><span style=\"font-size:14px\">Size S: Ngực 82-84, Eo 64-66, M&ocirc;ng 84-86 (43-47kg)</span></span></li>\r\n	<li><span style=\"font-family:Georgia,serif\"><span style=\"font-size:14px\">+ Size M: Ngực 86-88, Eo 68-70, M&ocirc;ng 88-90 (48-53kg)</span></span></li>\r\n	<li><span style=\"font-family:Georgia,serif\"><span style=\"font-size:14px\">+ Size L: Ngực 90-92, Eo 72-74, M&ocirc;ng 92-94 (55-58kg)</span></span></li>\r\n	<li><span style=\"font-family:Georgia,serif\"><span style=\"font-size:14px\">+ Size XL: Ngực 94-96, Eo 76-78, M&ocirc;ng 96-98 (60-64kg)</span></span></li>\r\n	<li><span style=\"font-family:Georgia,serif\"><span style=\"font-size:14px\">+ Size XXL: Ngực 98-100, Eo 80-84, M&ocirc;ng 100-104 (65-70kg)</span></span></li>\r\n</ul>', 434000, 'M', '<p>Đầm x&ograve;e 1668 m&agrave;u xanh thiết kế nữ t&iacute;nh, t&ugrave;ng dập ly tinh tế duy&ecirc;n d&aacute;ng. Chất liệu l&agrave; voan H&agrave;n cao cấp nhẹ m&aacute;t c&oacute; may 2 lớp, &iacute;t bị nhăn.&nbsp;</p>', 'dam-xoe-dap-ly-1668-mau-xanh-18422900.jpg', 'blue', '1', NULL, NULL),
(26, 4, 5, 'Đầm ôm đính cườm 3025', '<ul>\r\n	<li>+ Size S: Ngực 82-84, Eo 64-66, M&ocirc;ng 84-86 (43-47kg)</li>\r\n	<li>+ Size M: Ngực 86-88, Eo 68-70, M&ocirc;ng 88-90 (48-53kg)</li>\r\n	<li>+ Size L: Ngực 90-92, Eo 72-74, M&ocirc;ng 92-94 (55-58kg)</li>\r\n	<li>+ Size XL: Ngực 94-96, Eo 76-78, M&ocirc;ng 96-98 (60-64kg)</li>\r\n	<li>+ Size XXL: Ngực 98-100, Eo 80-84, M&ocirc;ng 100-104 (65-70kg)</li>\r\n</ul>', 4000000, 'S', '<p>Đầm c&ocirc;ng sở &ocirc;m body 3025 m&agrave;u cam, c&oacute; kết cườm tay &aacute;o, d&aacute;ng &ocirc;m nhẹ t&ocirc;n l&ecirc;n n&eacute;t đẹp h&igrave;nh thể, thiết kế c&oacute; peplum che được v&ograve;ng 2.</p>', 'dam-om-dinh-cuom-3025-lg6917347.jpg', 'đỏ đô', '1', NULL, NULL),
(27, 4, 6, 'Đầm peplum 3030 sang trọng', '<ul>\r\n	<li>Size S: Ngực 82-84, Eo 64-66, M&ocirc;ng 84-86 (43-47kg)</li>\r\n	<li>+ Size M: Ngực 86-88, Eo 68-70, M&ocirc;ng 88-90 (48-53kg)</li>\r\n	<li>+ Size L: Ngực 90-92, Eo 72-74, M&ocirc;ng 92-94 (55-58kg)</li>\r\n	<li>+ Size XL: Ngực 94-96, Eo 76-78, M&ocirc;ng 96-98 (60-64kg)</li>\r\n	<li>+ Size XXL: Ngực 98-100, Eo 80-84, M&ocirc;ng 100-104 (65-70kg)</li>\r\n</ul>', 450000, 'S', '<p>Đầm cao cấp 3030 thiết kế thanh lịch, c&oacute; peplum - tay phồng - phối n&uacute;t. Chất liệu cotton lạnh, co gi&atilde;n nhẹ, &iacute;t nhăn. Đầm vừa sang v&agrave; chỉn chu v&agrave; t&ugrave;y ho&agrave;n cảnh như đi tiệc nhẹ, đi l&agrave;m đi chơi n&agrave;ng c&oacute; thể mặc được.</p>', 'dam-peplum-3030-sang-trong-lg5746448.jpg', 'hông cánh sen', '1', NULL, NULL),
(28, 4, 6, 'Đầm xòe in thông điệp độc quyền', '<ul>\r\n	<li>Size S: Ngực 82-84, Eo 64-66, M&ocirc;ng 84-86 (43-47kg)</li>\r\n	<li>+ Size M: Ngực 86-88, Eo 68-70, M&ocirc;ng 88-90 (48-53kg)</li>\r\n	<li>+ Size L: Ngực 90-92, Eo 72-74, M&ocirc;ng 92-94 (55-58kg)</li>\r\n	<li>+ Size XL: Ngực 94-96, Eo 76-78, M&ocirc;ng 96-98 (60-64kg)</li>\r\n	<li>+ Size XXL: Ngực 98-100, Eo 80-84, M&ocirc;ng 100-104 (65-70kg)</li>\r\n</ul>', 455000, 'S', '<p>Đầm x&ograve;e in tem GUCO 3014 thiết kế nữ t&iacute;nh, duy&ecirc;n d&aacute;ng qua chất liệu lụa tằm &Yacute;, may 2 lớp d&agrave;y dặn c&oacute; co gi&atilde;n nhẹ, c&oacute; may t&uacute;i. Đầm đẹp sang trọng thiết kế độc quyền</p>', 'dam-xoe-in-logo-guco-3014-lg8455857.jpg', 'trắng hoa văn', '1', NULL, NULL),
(29, 4, 5, 'Đầm xòe in hoa độc quyền', '<ul>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><big>Size S: Ngực 82-84, Eo 64-66, M&ocirc;ng 84-86 (43-47kg)</big></div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><big>+ Size M: Ngực 86-88, Eo 68-70, M&ocirc;ng 88-90 (48-53kg)</big></div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><big>+ Size L: Ngực 90-92, Eo 72-74, M&ocirc;ng 92-94 (55-58kg)</big></div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><big>+ Size XL: Ngực 94-96, Eo 76-78, M&ocirc;ng 96-98 (60-64kg)</big></div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><big>+ Size XXL: Ngực 98-100, Eo 80-84, M&ocirc;ng 100-104 (65-70kg</big>)</div>\r\n	</li>\r\n</ul>', 455000, 'S', '<p>Đầm x&ograve;e hoa 3062 tay cột nơ m&agrave;u xanh chất liệu lụa hồng ngọc may 2 lớp bền đẹp. Sản phẩm trẻ trung duy&ecirc;n d&aacute;ng để mặc đi chơi, dạo phố c&ugrave;ng bạn b&egrave;.</p>', 'dam-xoe-hoa-3062-mau-xanh-lg3395780.jpg', 'xanh', '1', NULL, NULL),
(30, 5, 5, 'QUẦN JEAN SLIMFIT QJ1645 MÀU ĐEN', '<p>Thoải m&aacute;i khi vận động&nbsp;</p>', 340000, 'S', '<p>Thoải m&aacute;i khi vận động</p>', 'quan-jean-slimfit-qj1645-mau-den-14615-slide-products-5ecb3f55ef9c35726520.png', 'đen', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `rating_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_rating`
--

INSERT INTO `tbl_rating` (`rating_id`, `product_id`, `rating`, `created_at`, `updated_at`) VALUES
(1, 15, 4, NULL, NULL),
(2, 15, 2, NULL, NULL),
(3, 15, 1, NULL, NULL),
(4, 15, 5, NULL, NULL),
(5, 15, 1, NULL, NULL),
(6, 15, 1, NULL, NULL),
(7, 30, 4, '2021-07-09 02:39:43', '2021-07-09 02:39:43'),
(8, 30, 4, '2021-07-09 02:39:44', '2021-07-09 02:39:44'),
(9, 30, 5, '2021-07-09 02:42:15', '2021-07-09 02:42:15'),
(10, 30, 5, '2021-07-09 02:42:19', '2021-07-09 02:42:19'),
(11, 30, 5, '2021-07-09 02:42:23', '2021-07-09 02:42:23'),
(12, 29, 3, '2021-07-09 02:44:43', '2021-07-09 02:44:43'),
(13, 29, 3, '2021-07-09 02:44:47', '2021-07-09 02:44:47'),
(14, 29, 3, '2021-07-09 02:44:55', '2021-07-09 02:44:55'),
(15, 29, 4, '2021-07-09 02:46:51', '2021-07-09 02:46:51'),
(16, 29, 4, '2021-07-09 02:46:55', '2021-07-09 02:46:55'),
(17, 29, 4, '2021-07-09 02:46:57', '2021-07-09 02:46:57'),
(18, 29, 4, '2021-07-09 02:47:00', '2021-07-09 02:47:00'),
(19, 11, 1, '2021-07-09 05:55:32', '2021-07-09 05:55:32'),
(20, 11, 2, '2021-07-09 05:55:35', '2021-07-09 05:55:35'),
(21, 11, 2, '2021-07-09 05:55:36', '2021-07-09 05:55:36'),
(22, 11, 3, '2021-07-09 05:55:37', '2021-07-09 05:55:37'),
(23, 11, 4, '2021-07-09 05:55:38', '2021-07-09 05:55:38'),
(24, 11, 4, '2021-07-09 05:55:39', '2021-07-09 05:55:39'),
(25, 11, 4, '2021-07-09 05:55:40', '2021-07-09 05:55:40'),
(26, 11, 4, '2021-07-09 05:55:41', '2021-07-09 05:55:41'),
(27, 11, 5, '2021-07-09 05:56:43', '2021-07-09 05:56:43'),
(28, 11, 5, '2021-07-09 05:56:44', '2021-07-09 05:56:44'),
(29, 11, 5, '2021-07-09 05:56:44', '2021-07-09 05:56:44'),
(30, 11, 5, '2021-07-09 05:56:45', '2021-07-09 05:56:45'),
(31, 11, 5, '2021-07-09 05:56:45', '2021-07-09 05:56:45'),
(32, 11, 5, '2021-07-09 05:56:46', '2021-07-09 05:56:46'),
(33, 11, 5, '2021-07-09 05:56:46', '2021-07-09 05:56:46'),
(34, 11, 5, '2021-07-09 05:56:47', '2021-07-09 05:56:47'),
(35, 11, 5, '2021-07-09 05:56:47', '2021-07-09 05:56:47'),
(36, 11, 2, '2021-07-09 05:58:19', '2021-07-09 05:58:19'),
(37, 11, 3, '2021-07-09 05:58:24', '2021-07-09 05:58:24'),
(38, 11, 3, '2021-07-09 05:58:29', '2021-07-09 05:58:29'),
(39, 8, 5, '2021-07-09 05:58:50', '2021-07-09 05:58:50'),
(40, 8, 5, '2021-07-09 05:58:53', '2021-07-09 05:58:53'),
(41, 8, 5, '2021-07-09 05:58:56', '2021-07-09 05:58:56'),
(42, 8, 5, '2021-07-09 05:58:59', '2021-07-09 05:58:59'),
(43, 8, 2, '2021-07-09 06:33:27', '2021-07-09 06:33:27'),
(44, 8, 3, '2021-07-09 06:33:33', '2021-07-09 06:33:33'),
(45, 8, 4, '2021-07-09 06:43:29', '2021-07-09 06:43:29'),
(46, 8, 5, '2021-07-09 06:43:37', '2021-07-09 06:43:37'),
(47, 8, 5, '2021-07-09 06:43:44', '2021-07-09 06:43:44'),
(48, 8, 5, '2021-07-09 06:43:50', '2021-07-09 06:43:50'),
(49, 9, 4, '2021-07-09 06:44:06', '2021-07-09 06:44:06'),
(50, 9, 5, '2021-07-09 06:44:12', '2021-07-09 06:44:12'),
(51, 9, 5, '2021-07-09 06:44:48', '2021-07-09 06:44:48'),
(52, 9, 4, '2021-07-09 06:45:06', '2021-07-09 06:45:06'),
(53, 9, 5, '2021-07-09 06:45:25', '2021-07-09 06:45:25'),
(54, 10, 5, '2021-07-09 06:45:50', '2021-07-09 06:45:50'),
(55, 12, 5, '2021-07-09 06:46:33', '2021-07-09 06:46:33'),
(56, 12, 2, '2021-07-09 06:46:59', '2021-07-09 06:46:59'),
(57, 19, 4, '2021-07-09 06:47:39', '2021-07-09 06:47:39'),
(58, 4, 5, '2021-07-09 06:48:36', '2021-07-09 06:48:36'),
(59, 20, 5, '2021-07-09 07:18:14', '2021-07-09 07:18:14'),
(60, 20, 1, '2021-07-09 07:18:24', '2021-07-09 07:18:24'),
(61, 20, 4, '2021-07-09 07:18:31', '2021-07-09 07:18:31'),
(62, 20, 5, '2021-07-09 07:18:37', '2021-07-09 07:18:37'),
(63, 18, 5, '2021-07-09 08:28:05', '2021-07-09 08:28:05'),
(64, 18, 5, '2021-07-09 08:28:15', '2021-07-09 08:28:15'),
(65, 4, 5, '2021-07-09 08:28:25', '2021-07-09 08:28:25'),
(66, 4, 5, '2021-07-09 08:29:03', '2021-07-09 08:29:03'),
(67, 4, 5, '2021-07-09 08:29:21', '2021-07-09 08:29:21'),
(68, 4, 5, '2021-07-09 08:29:27', '2021-07-09 08:29:27'),
(69, 4, 5, '2021-07-09 08:29:32', '2021-07-09 08:29:32'),
(70, 16, 5, '2021-07-09 08:29:46', '2021-07-09 08:29:46'),
(71, 16, 5, '2021-07-09 08:29:54', '2021-07-09 08:29:54'),
(72, 16, 3, '2021-07-09 08:30:04', '2021-07-09 08:30:04'),
(73, 7, 5, '2021-07-09 08:30:40', '2021-07-09 08:30:40'),
(74, 7, 1, '2021-07-09 08:30:54', '2021-07-09 08:30:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_name`, `shipping_size`, `shipping_color`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_note`, `created_at`, `updated_at`) VALUES
(16, 'Hoàng Đình Hanh123', 'L', 'Vàng', 'chithethoi0003@gmail.com', '0368661392', '149 Lặc Long Quân', 'giao hang khi ddi choi', NULL, NULL),
(17, 'Hoàng Đình Hanh123', 'M', 'Xanh da trời', 'chithethoi0003@gmail.com', '0368661392', '149 Lặc Long Quân', 'giao hang ko nhan', NULL, NULL),
(18, 'Hoàng Đình Hanh', 'L', 'Đỏ', 'chithethoi0003@gmail.com', '0368661392', '149 Lặc Long Quân', 'hgahfja', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sliderbanner`
--

CREATE TABLE `tbl_sliderbanner` (
  `slider_id` int(10) UNSIGNED NOT NULL,
  `slider_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_sliderbanner`
--

INSERT INTO `tbl_sliderbanner` (`slider_id`, `slider_title`, `slider_image`, `slider_desc`, `slider_status`, `created_at`, `updated_at`) VALUES
(19, 'Thỏa Sức Mua Sắm Với Các Mẫu Chính Hãng', 'pngtree-shopping-woman-shopping-discounts-element-png-image_1069160772034.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 1, '2021-07-07 19:07:58', '2021-07-07 19:07:58'),
(20, 'Dịch Vụ Trăm Sóc Khách Hàng Chu Đáo', 'tranh-dan-tuong-han-quoc-co-gai-dang-di-shopping-w0078-thumbnail-198629315158.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 1, '2021-07-07 19:09:18', '2021-07-07 19:09:18'),
(21, 'Có Chế Độ Ưu Đãi Với Tất Cả Khách Hàng', '307d0a660f4ee33a0e4ab8394be80b4b9845296.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 1, '2021-07-07 19:10:24', '2021-07-07 19:10:24'),
(22, 'Mang Phong Cách Sống Thượng Lưu Đến Với Bạn', 'I-3-shopping-shopping-5520538-1920-12002385999.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 1, '2021-07-07 19:11:33', '2021-07-07 19:11:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `wishlist_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`wishlist_id`, `product_id`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, 5, 2, NULL, NULL),
(2, 30, 2, NULL, NULL),
(3, 25, 2, NULL, NULL),
(4, 30, 2, NULL, NULL),
(5, 30, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_brand_product`
--
ALTER TABLE `tbl_brand_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_cate_news`
--
ALTER TABLE `tbl_cate_news`
  ADD PRIMARY KEY (`cate_news_id`);

--
-- Chỉ mục cho bảng `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Chỉ mục cho bảng `tbl_get_email`
--
ALTER TABLE `tbl_get_email`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Chỉ mục cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Chỉ mục cho bảng `tbl_sliderbanner`
--
ALTER TABLE `tbl_sliderbanner`
  ADD PRIMARY KEY (`slider_id`);

--
-- Chỉ mục cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_brand_product`
--
ALTER TABLE `tbl_brand_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_cate_news`
--
ALTER TABLE `tbl_cate_news`
  MODIFY `cate_news_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `contact_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `gallery_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT cho bảng `tbl_get_email`
--
ALTER TABLE `tbl_get_email`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `news_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `rating_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tbl_sliderbanner`
--
ALTER TABLE `tbl_sliderbanner`
  MODIFY `slider_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `wishlist_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
