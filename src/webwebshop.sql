-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4306
-- Generation Time: Jan 04, 2024 at 03:36 AM
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
-- Database: `webwebshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `city` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `ward` varchar(255) NOT NULL,
  `apartment_number` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `city`, `district`, `ward`, `apartment_number`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, '203', '1527', '40202', 'Huyền hội', '2023-11-22 03:24:48', '2023-11-22 03:24:48', NULL),
(2, 3, '203', '1527', '40210', 'TP Trà Vinh', '2023-11-23 03:26:02', '2023-11-23 03:26:02', NULL),
(3, 1, '203', '1527', '40202', 'Trà Vinh', '2023-11-23 05:14:48', '2023-11-23 05:14:48', NULL),
(8, 9, '269', '2264', '90816', 'Trà Vinh', '2023-11-23 05:20:58', '2023-11-23 05:20:58', NULL),
(9, 10, '269', '2264', '90816', 'tp hcm', '2023-11-26 12:17:29', '2023-11-26 12:17:29', NULL),
(10, 11, '269', '2264', '90816', '222222', '2023-11-26 12:25:46', '2023-11-26 12:25:46', NULL),
(11, 12, '214', '3443', '580907', '61/1', '2023-11-26 12:20:18', '2023-11-26 12:20:18', NULL),
(12, 13, '214', '2086', '580207', '56/1', '2023-12-20 11:08:59', '2023-12-20 11:08:59', NULL),
(13, 14, '269', '2264', '90816', '77/3', '2023-12-25 10:29:59', '2023-12-25 10:29:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ashley', NULL, NULL, NULL),
(2, 'Aaron', NULL, NULL, NULL),
(3, 'Dunelm Group', NULL, NULL, NULL),
(4, 'Row', NULL, NULL, NULL),
(5, 'French Heritage', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`, `parent_id`, `slug`) VALUES
(1, 'Hiện đại', NULL, NULL, NULL, 0, 'hien-dai'),
(2, 'Cổ điển', NULL, NULL, NULL, 0, 'co-dien'),
(3, 'Tủ Đồ', NULL, '2023-11-22 07:25:46', NULL, 1, 'tu-do'),
(4, 'Ghế Sofa', NULL, NULL, NULL, 1, 'ghe-sofa'),
(5, 'Bàn gỗ', NULL, NULL, NULL, 1, 'ban-go'),
(6, 'Đèn chùm', NULL, NULL, NULL, 1, 'den-chum'),
(7, 'Kệ tivi', NULL, NULL, NULL, 1, 'ke-tivi'),
(8, 'Giường ngủ', NULL, NULL, NULL, 1, 'giuong-ngu'),
(9, 'Đèn để bàn', NULL, NULL, NULL, 2, 'den-de-ban'),
(10, 'Đồng hồ treo tường', NULL, NULL, NULL, 2, 'dong-ho-treo-tuong'),
(11, 'Tranh treo tường', NULL, NULL, NULL, 2, 'tranh-treo-tuong'),
(12, 'Nhà bếp', NULL, NULL, NULL, 2, 'nha-bep'),
(13, 'Bộ tách trà', NULL, NULL, NULL, 2, 'bo-tach-tra'),
(14, 'Lâm Chí Nhân', '2023-11-22 08:25:03', '2023-11-22 08:25:10', '2023-11-22 08:25:10', 1, 'lam-chi-nhan');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Trắng', NULL, NULL, NULL),
(2, 'Đen', NULL, NULL, NULL),
(3, 'Xám', NULL, NULL, NULL),
(4, 'Đỏ', NULL, NULL, NULL),
(5, 'Vàng', NULL, NULL, NULL),
(6, 'Xanh', NULL, NULL, NULL),
(7, 'Tím', NULL, NULL, NULL),
(8, 'XANH NHAT', '2023-11-22 08:35:12', '2023-11-22 08:35:12', NULL);

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_02_06_054552_create_roles_table', 1),
(3, '2023_02_06_093103_create_users_table', 1),
(4, '2023_02_06_093104_create_addresses_table', 1),
(5, '2023_02_09_141232_create_user_verifies_table', 1),
(6, '2023_02_17_101710_create_brands_table', 1),
(7, '2023_03_13_104142_create_colors_table', 1),
(8, '2023_03_13_104200_create_sizes_table', 1),
(9, '2023_03_15_111222_create_categories_table', 1),
(10, '2023_03_16_130121_create_products_table', 1),
(11, '2023_03_16_140642_create_products_color_table', 1),
(12, '2023_03_16_140906_create_products_size_table', 1),
(13, '2023_03_23_091419_create_payments_table', 1),
(14, '2023_03_23_095605_create_orders_table', 1),
(15, '2023_03_27_001440_create_order_details_table', 1),
(16, '2023_03_28_004112_alert_orders_table', 1),
(17, '2023_03_28_004113_alert_orders_table', 1),
(18, '2023_03_28_143413_alert_products_size_table', 1),
(19, '2023_03_28_144341_alert_products_color_table', 1),
(20, '2023_03_28_144345_alert_products_table', 1),
(21, '2023_03_28_144347_alert_orders_table', 1),
(22, '2023_03_28_144348_create_trigger_validate_quantity', 1),
(23, '2023_03_28_144349_create_trigger_group_by_quantity', 1),
(24, '2023_04_11_111222_alter_categories_table', 1),
(25, '2023_04_11_111223_alter_categories_table', 1),
(26, '2023_04_13_114627_create_product_reviews_table', 1),
(27, '2023_04_17_180428_drop_personal_access_tokens_table', 1),
(28, '2023_04_13_114628_alter_products_size_table ', 2),
(29, '2023_04_30_114628_alter_product_table ', 3),
(30, '2023_04_18_180428_create_setting_table', 4),
(31, '2023_04_19_180428_alter_setting_table', 4),
(32, '2023_03_28_144348_create_reduce_quantity_product_trigger', 5),
(33, '2023_05_1_114628_alter_payments_table ', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `total_money` double NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `transport_fee` double NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `payment_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `payment_id`, `total_money`, `order_status`, `created_at`, `updated_at`, `deleted_at`, `transport_fee`, `note`, `payment_status`) VALUES
(1701791922991, 12, 1, 3944000, 3, '2023-12-05 15:58:42', '2023-12-31 07:46:52', NULL, 44000, NULL, 0),
(1704011115701, 12, 1, 3044000, 0, '2023-12-31 08:25:15', '2023-12-31 08:26:47', '2023-12-31 08:26:47', 44000, NULL, 0),
(1704011239273, 14, 1, 3044000, 3, '2023-12-31 08:27:19', '2023-12-31 08:28:05', NULL, 44000, NULL, 0),
(1704011897629, 14, 1, 5044000, 3, '2023-12-31 08:38:17', '2023-12-31 08:38:55', NULL, 44000, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_size_id` bigint(20) UNSIGNED NOT NULL,
  `unit_price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_size_id`, `unit_price`, `quantity`, `created_at`, `updated_at`) VALUES
(33, 1701791922991, 5, 3900000, 1, '2023-12-05 15:58:42', '2023-12-05 15:58:42'),
(34, 1704011115701, 415, 3000000, 1, '2023-12-31 08:25:15', '2023-12-31 08:25:15'),
(35, 1704011239273, 415, 3000000, 1, '2023-12-31 08:27:19', '2023-12-31 08:27:19'),
(36, 1704011897629, 384, 5000000, 1, '2023-12-31 08:38:17', '2023-12-31 08:38:17');

--
-- Triggers `order_details`
--
DELIMITER $$
CREATE TRIGGER `group_by_quantity` AFTER INSERT ON `order_details` FOR EACH ROW BEGIN
                declare _record int;
                declare _quantity int;
                select count(*) into _record from order_details where product_size_id = new.product_size_id and order_id = new.order_id;
                if (_record >= 2) then
                    select sum(quantity) into _quantity from order_details where product_size_id = new.product_size_id and order_id = new.order_id;
                    update order_details set quantity = _quantity where product_size_id = new.product_size_id and order_id = new.order_id;
                    SIGNAL sqlstate "45001" set message_text = "error";
                end if;
            END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `reduce_quantity_product` AFTER INSERT ON `order_details` FOR EACH ROW BEGIN
                    declare _quantity int;
                    select quantity into _quantity from products_size where id = new.product_size_id;
                    if (new.quantity <= 0 || _quantity < new.quantity) then
                        SIGNAL sqlstate "45001" set message_text = "error";
                    else
                        update products_size set quantity = _quantity - new.quantity where id = new.product_size_id;
                    end if;
            END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `validate_quantity` AFTER INSERT ON `order_details` FOR EACH ROW BEGIN
            declare _quantity int;
            select quantity into _quantity from products_size where id = new.product_size_id;
            if (new.quantity <= 0 || _quantity < new.quantity) then
                SIGNAL sqlstate "45001" set message_text = "error";
            end if;
        END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`, `status`, `img`) VALUES
(1, 'Khi nhận hàng', NULL, NULL, NULL, 1, '1682960154.png'),
(2, 'test1', NULL, '2023-12-25 10:32:03', NULL, 0, '1703500323.png'),
(3, 'test2', NULL, '2023-12-25 10:32:17', NULL, 0, '1703500337.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(100) NOT NULL,
  `price_import` double NOT NULL,
  `price_sell` double NOT NULL,
  `img` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price_import`, `price_sell`, `img`, `description`, `status`, `category_id`, `brand_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Tủ cao cấp Hàn Quốc', 3000000, 3900000, '1699375880.jpg', 'Tủ quần áo Hàn Quốc cao cấp tủ có thiết kế khá đơn giản, nhưng vẫn đảm bảo được công năng sử dụng, sức chứa lớn, đồng thời tích hợp sự tiện ích cho khách hàng trong quá trình sử dụng. Cùng Nội thất WebWebShop tìm hiểu về thông tin và những ưu điểm vượt trội của mẫu tủ quần áo này nhé.', 1, 3, 1, '2023-11-18 08:42:31', '2023-11-18 05:18:45', NULL),
(3, 'Tủ nhựa cao cấp', 300000, 399000, '1683009368.png', '', 1, 3, 2, '2023-11-18 06:36:08', '2023-11-26 04:58:37', '2023-11-26 04:58:37'),
(4, 'Tủ Promax 02', 300000, 399000, '1683009662.png', '', 1, 3, 3, '2023-11-18 06:41:02', '2023-11-26 04:58:42', '2023-11-26 04:58:42'),
(5, 'Tủ cây USA', 300000, 399000, '1683009904.png', '', 1, 3, 4, '2023-11-18 06:45:04', '2023-11-26 04:58:48', '2023-11-26 04:58:48'),
(6, 'Bàn gỗ nguyên khối GL2', 40000000, 49900000, '1700975515.jpg', '<div>Với những ai đam mê đồ gỗ phong thủy sẽ nhận ra những năm gần đây bàn ghế gỗ nguyên tấm đang ngày càng trở nên phổ biến bởi nó giữ được vẻ đẹp chân thật nhất mà thiên nhiên ban tặng. Chính sự đơn giản, mộc mạc đó tạo ra điểm nhấn đặc biệt cho phòng khách, đem lại cảm giác thư thái cho tâm hồn.<br></div>', 1, 5, 5, '2023-11-18 06:58:52', '2023-12-06 14:01:47', NULL),
(7, 'Bàn gỗ Ashley', 15000000, 19000000, '1699376193.png', '<div>Với những ai đam mê đồ gỗ phong thủy sẽ nhận ra những năm gần đây bàn ghế gỗ nguyên tấm đang ngày càng trở nên phổ biến bởi nó giữ được vẻ đẹp chân thật nhất mà thiên nhiên ban tặng. Chính sự đơn giản, mộc mạc đó tạo ra điểm nhấn đặc biệt cho phòng khách, đem lại cảm giác thư thái cho tâm hồn.<br></div>', 1, 5, 2, '2023-11-18 07:00:51', '2023-12-06 14:01:38', NULL),
(8, 'Bàn gỗ nguyên khối cao cấp', 10000000, 20000000, '1699376981.png', '<div>Với những ai đam mê đồ gỗ phong thủy sẽ nhận ra những năm gần đây bàn ghế gỗ nguyên tấm đang ngày càng trở nên phổ biến bởi nó giữ được vẻ đẹp chân thật nhất mà thiên nhiên ban tặng. Chính sự đơn giản, mộc mạc đó tạo ra điểm nhấn đặc biệt cho phòng khách, đem lại cảm giác thư thái cho tâm hồn.<br></div>', 1, 5, 2, '2023-11-18 07:04:15', '2023-12-06 14:01:23', NULL),
(9, 'Ghế sofa đơn Aaron', 1500000, 2900000, '1699376039.jpg', '<div><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.52174em; margin-left: 20px; padding: 0px; list-style-position: initial; list-style-image: initial; color: rgb(0, 0, 0); font-family: Gotu-Regular;\"><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-weight: 700;\">Sản phẩm:</span>&nbsp;Sofa đơn Aaron</li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-weight: 700;\">Kích thước:</span>&nbsp;0.78m x 0.85m x 0.4m</li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-weight: 700;\">Màu sắc:</span>&nbsp;Đa dạng</li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-weight: 700;\">Chất liệu:</span>&nbsp;Da công nghiệp/ Nỉ nhung/ Vải bố, gỗ dầu, gỗ sồi, đệm mút D40, lò xo</li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-weight: 700;\">Bảo hành:</span>&nbsp;12 tháng</li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-weight: 700;\">Xuất xứ:</span>&nbsp;Nhập khẩu</li></ul></div>', 1, 4, 2, '2023-11-18 07:09:45', '2023-12-06 14:00:33', NULL),
(10, 'Ghế sofa Aaron', 2000000, 2990000, '1699375985.jpg', '<div><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style-position: inside; list-style-image: initial; color: rgb(51, 51, 51); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; letter-spacing: 0.25px;\"><li style=\"margin-bottom: 0.4em;\">Kích thước : 1.8m</li><li style=\"margin-bottom: 0.4em;\">Chất liệu :&nbsp; Vải - Da - Nhung nỉ&nbsp;có thể thay đổi màu sắc</li><li style=\"margin-bottom: 0.4em;\">Khung: gỗ dầu (được xử lý chống mối mọt, cong vênh)</li><li style=\"margin-bottom: 0.4em;\">Nệm: mút D40 chống xẹp lún</li><li style=\"margin-bottom: 0.4em;\">Bảo hành: 3 năm</li></ul></div>', 1, 4, 2, '2023-11-18 07:13:03', '2023-12-06 13:59:48', NULL),
(11, 'Bộ ghế sofa cao cấp', 10000000, 19900000, '1699376437.jpg', '<div><p style=\"border: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida Grande&quot;, sans-serif; font-size: 15px; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(102, 102, 102); background-color: rgb(252, 252, 252);\">+ Xuất xứ: Sản xuất bởi Hàn Quốc<br></p><p style=\"border: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida Grande&quot;, sans-serif; font-size: 15px; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(102, 102, 102); background-color: rgb(252, 252, 252);\">+ Chất liệu: Bộ ghế Sofa da cao cấp được bọc bởi chất liệu da Hàn nhập khẩu. Khung xương sử dụng loại gỗ Sồi tự nhiên chắc khỏe. Hệ thống đệm mút, lò xo cao cấp …</p><p style=\"border: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida Grande&quot;, sans-serif; font-size: 15px; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(102, 102, 102); background-color: rgb(252, 252, 252);\">+ Kích thước: Ghế dài có kích thước 1m4x3m1. Ghế chủ rộng 80x1m1. Đôn to rộng 60×90</p><p style=\"border: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida Grande&quot;, sans-serif; font-size: 15px; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(102, 102, 102); background-color: rgb(252, 252, 252);\">+ Màu sắc: Có nhiều màu cho bạn lựa chọn phù hợp với không gian nhà bạn nhất.</p></div>', 1, 4, 4, '2023-11-18 07:18:15', '2023-12-06 13:59:18', NULL),
(12, 'Sofa đơn Z01', 2000000, 4000000, '1701865289.jpg', '<div><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(19, 19, 19); font-family: Roboto, sans-serif; text-align: justify;\"><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-weight: bolder;\">Kiểu dáng:</span>&nbsp;khỏe khoắn mang phong cách hiện đại</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-weight: bolder;\">Kích thước:</span>&nbsp;900 x 850 mm (thay đổi theo yêu cầu)</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Giả da cao cấp, khung gỗ tự nhiên&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-weight: bolder;\">Màu sắc:</span>&nbsp;Da malaysia da bò</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-weight: bolder;\">Bảo hành:</span>&nbsp;12 – 36 tháng</li></ul></div>', 1, 4, 4, '2023-11-18 07:22:20', '2023-12-06 13:56:09', NULL),
(13, 'Đèn thả trần hiện đại B01', 3000000, 3990000, '1700975408.jpg', '<div><ul style=\"padding: 0px; margin: 3px 3px 3px 10px; list-style-type: inherit; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: 17px; text-align: justify;\"><li style=\"padding: 0px; margin: 3px 3px 3px 10px; list-style-type: inherit;\"><span style=\"font-family: Arial;\"><span style=\"font-size: 14pt; line-height: 28px;\">Thương hiệu: Row</span></span></li><li style=\"padding: 0px; margin: 3px 3px 3px 10px; list-style-type: inherit;\"><span style=\"font-family: Arial;\"><span style=\"font-size: 14pt; line-height: 28px;\">Model: B01</span></span></li><li style=\"padding: 0px; margin: 3px 3px 3px 10px; list-style-type: inherit;\"><span style=\"font-family: Arial;\"><span style=\"font-size: 14pt; line-height: 28px;\">Kích thước:&nbsp;</span><span style=\"font-size: 14pt; line-height: 28px;\">200mm, 400mm, 600mm</span></span><span style=\"font-size: 14pt; line-height: 28px;\"><o:p></o:p></span></li><li style=\"padding: 0px; margin: 3px 3px 3px 10px; list-style-type: inherit;\"><span style=\"font-family: Arial;\"><span style=\"font-size: 14pt; line-height: 28px;\">Chất liệu:&nbsp;</span><span style=\"font-size: 14pt; line-height: 28px;\">Hợp kim sơn tĩnh điện</span></span><span style=\"font-size: 14pt; line-height: 28px;\"><o:p></o:p></span></li><li style=\"padding: 0px; margin: 3px 3px 3px 10px; list-style-type: inherit;\"><span style=\"font-family: Arial;\"><span style=\"font-size: 14pt; line-height: 28px;\">Công nghệ chiếu sáng: LED</span></span><span style=\"font-size: 14pt; line-height: 28px;\"><o:p></o:p></span></li><li style=\"padding: 0px; margin: 3px 3px 3px 10px; list-style-type: inherit;\"><span style=\"font-family: Arial;\"><span style=\"font-size: 14pt; line-height: 28px;\">Bóng đèn:&nbsp;Led tích hợp</span></span></li><li style=\"padding: 0px; margin: 3px 3px 3px 10px; list-style-type: inherit;\"><span style=\"font-family: Arial;\"><span style=\"font-size: 14pt; line-height: 28px;\">Ánh sáng: 3 màu ánh sáng</span></span><span style=\"font-size: 14pt; line-height: 28px;\"><o:p></o:p></span></li><li style=\"padding: 0px; margin: 3px 3px 3px 10px; list-style-type: inherit;\"><span style=\"font-family: Arial;\"><span style=\"font-size: 14pt; line-height: 28px;\">Điện áp sử dụng: 220v</span></span><span style=\"font-size: 14pt; line-height: 28px;\"><o:p></o:p></span></li><li style=\"padding: 0px; margin: 3px 3px 3px 10px; list-style-type: inherit;\"><span style=\"font-family: Arial;\"><span style=\"font-size: 14pt; line-height: 28px;\">Thời gian bảo hành: 2 năm</span></span><span style=\"font-size: 14pt; line-height: 28px;\"><o:p></o:p></span></li><li style=\"padding: 0px; margin: 3px 3px 3px 10px; list-style-type: inherit;\"><span style=\"font-family: Arial;\"><span style=\"font-size: 14pt; line-height: 28px;\">Thời gian bảo trì: 10 năm</span></span></li></ul></div>', 1, 6, 4, '2023-11-18 07:27:52', '2023-12-06 13:54:33', NULL),
(14, 'Đèn chùm thả trần hiện đại L02', 15000000, 20000000, '1700975314.jpg', '<div><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(1, 45, 65); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 14px; text-align: justify;\">Tính nghệ thuật và tinh tế: Họa tiết trên khung đèn được khắc họa tinh tế tạo ra điểm ấn tượng cho không gian. Tiếp tục lấy ý tưởng từ những hạt pha lê hình giọt nước được treo rủ xuống tạo độ sâu và lắng.</p><p dir=\"ltr\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(1, 45, 65); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 14px; text-align: justify;\">Khung đèn: Khung hợp kim sơn tĩnh điện bền, đẹp. Khung đèn được khéo léo mạ một lớp vàng 18k bên ngoài kết hợp với đá tự nhiên giúp làm tăng độ sang trọng của toàn thể chiếc đèn chùm.</p><p dir=\"ltr\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(1, 45, 65); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 14px; text-align: justify;\">Ánh sáng: Ánh sáng vàng nhẹ nhàng, ấm áp. Sử dụng ánh sáng màu vàng sẽ tạo ra được không gian ấm cúng và dễ chịu hơn. Bóng đèn cao cấp có tuổi thọ trung bình cao.</p><p dir=\"ltr\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(1, 45, 65); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 14px; text-align: justify;\">Đặc điểm: Hạt pha lê cao cấp lấp lánh, ngọc bích, &nbsp;thân đèn bằng gốm sứ đặc biệt bền bỉ với thời gian.</p><p dir=\"ltr\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(1, 45, 65); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 14px; text-align: justify;\">Kích thước sản phẩm: 102*75(cm) loại 15 tay</p></div>', 1, 6, 5, '2023-11-18 07:31:12', '2023-12-06 13:53:52', NULL),
(15, 'Đèn chùm thả pha lê', 200000000, 299000000, '1700975360.jpg', '<div><span style=\"font-size: 14px; font-family: arial, helvetica, sans-serif; color: rgb(51, 51, 51); font-weight: bolder;\">Kích thước :</span><span style=\"font-size: 14px; font-family: arial, helvetica, sans-serif; color: rgb(51, 51, 51);\">&nbsp;Ø600 x H1600 + dây 600mm</span><br></div><div><li style=\"color: rgb(51, 51, 51); list-style: none; font-size: 0.9em; margin-bottom: 7px; font-family: &quot;Open Sans&quot;, sans-serif;\"><p style=\"margin-bottom: 0.5rem;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 14px;\"><span style=\"font-weight: bolder;\">Bóng đèn :</span>&nbsp;E14 x 24 (chưa bao gồm)</span></span></p></li><li style=\"color: rgb(51, 51, 51); list-style: none; font-size: 0.9em; margin-bottom: 7px; font-family: &quot;Open Sans&quot;, sans-serif;\"><p style=\"margin-bottom: 0.5rem;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 14px;\"><span style=\"font-weight: bolder;\">Chất liệu :</span></span></span></p></li><li style=\"color: rgb(51, 51, 51); list-style: none; font-size: 0.9em; margin-bottom: 7px; font-family: &quot;Open Sans&quot;, sans-serif;\"><p style=\"margin-bottom: 0.5rem;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 14px;\">- Thân đèn bằng hợp kim xi mạ</span></span></p></li><li style=\"color: rgb(51, 51, 51); list-style: none; font-size: 0.9em; margin-bottom: 7px; font-family: &quot;Open Sans&quot;, sans-serif;\"><p style=\"margin-bottom: 0.5rem;\"><span style=\"font-size: 14px;\"><span style=\"font-family: arial, helvetica, sans-serif;\">- Pha lê cao cấp</span></span></p></li><li style=\"color: rgb(51, 51, 51); list-style: none; font-size: 0.9em; margin-bottom: 7px; font-family: &quot;Open Sans&quot;, sans-serif;\"><p style=\"margin-bottom: 0.5rem;\"><span style=\"font-weight: bolder; font-size: 14px; font-family: arial, helvetica, sans-serif;\">Xuất xứ :</span><span style=\"font-size: 14px; font-family: arial, helvetica, sans-serif;\">&nbsp;nhập khẩu</span></p></li><li style=\"color: rgb(51, 51, 51); list-style: none; font-size: 0.9em; margin-bottom: 7px; font-family: &quot;Open Sans&quot;, sans-serif;\"><p style=\"margin-bottom: 0.5rem;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 14px;\"><span style=\"font-weight: bolder;\">Bảo hành :</span>&nbsp;12 tháng</span></span></p></li></div>', 1, 6, 4, '2023-11-18 07:34:29', '2023-12-06 13:52:44', NULL),
(16, 'Đèn chùm thả trần hiện đại L01', 20000000, 29900000, '1700975261.jpg', '<div><ul style=\"padding: 0px; margin: 3px 3px 3px 10px; list-style-type: inherit; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: 17px; text-align: justify;\"><li style=\"padding: 0px; margin: 3px 3px 3px 10px; list-style-type: inherit;\"><span style=\"font-family: Arial;\"><span style=\"font-size: 14pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space-collapse: preserve;\">Thương hiệu: French Heritage</span></span></li><li style=\"padding: 0px; margin: 3px 3px 3px 10px; list-style-type: inherit;\"><span style=\"font-family: Arial;\"><span style=\"font-size: 14pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space-collapse: preserve;\">Model: L01</span></span></li><li style=\"padding: 0px; margin: 3px 3px 3px 10px; list-style-type: inherit;\"><span style=\"font-family: Arial;\"><span style=\"font-size: 14pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space-collapse: preserve;\">Kích thước: 15 tay</span></span></li><li style=\"padding: 0px; margin: 3px 3px 3px 10px; list-style-type: inherit;\"><span style=\"font-family: Arial;\"><span style=\"font-size: 14pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space-collapse: preserve;\">Màu sắc thân đèn: vàng titan</span></span></li><li style=\"padding: 0px; margin: 3px 3px 3px 10px; list-style-type: inherit;\"><span style=\"font-family: Arial;\"><span style=\"font-size: 14pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space-collapse: preserve;\">Công suất: 40w</span></span></li><li style=\"padding: 0px; margin: 3px 3px 3px 10px; list-style-type: inherit;\"><span style=\"font-family: Arial;\"><span style=\"font-size: 14pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space-collapse: preserve;\">Vật liệu khung đèn: Đồng cao cấp</span></span></li><li style=\"padding: 0px; margin: 3px 3px 3px 10px; list-style-type: inherit;\"><span style=\"font-family: Arial;\"><span style=\"font-size: 14pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space-collapse: preserve;\">Công nghệ chiếu sáng: LED</span></span></li><li style=\"padding: 0px; margin: 3px 3px 3px 10px; list-style-type: inherit;\"><span style=\"font-family: Arial;\"><span style=\"font-size: 14pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space-collapse: preserve;\">Bóng đèn: Bóng đui E14&nbsp;</span></span></li><li style=\"padding: 0px; margin: 3px 3px 3px 10px; list-style-type: inherit;\"><span style=\"font-family: Arial;\"><span style=\"font-size: 14pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space-collapse: preserve;\">Ánh sáng: Vàng, trắng</span></span></li><li style=\"padding: 0px; margin: 3px 3px 3px 10px; list-style-type: inherit;\"><span style=\"font-family: Arial;\"><span style=\"font-size: 14pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space-collapse: preserve;\">Điện áp sử dụng: 220V</span></span></li><li style=\"padding: 0px; margin: 3px 3px 3px 10px; list-style-type: inherit;\"><span style=\"font-family: Arial;\"><span style=\"font-size: 14pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space-collapse: preserve;\">Thời gian bảo hành: 2 năm</span></span></li><li style=\"padding: 0px; margin: 3px 3px 3px 10px; list-style-type: inherit;\"><span style=\"font-family: Arial;\"><span style=\"font-size: 14pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space-collapse: preserve;\">Thời gian bảo trì: 10 năm</span></span></li></ul></div>', 1, 6, 5, '2023-11-18 07:38:05', '2023-12-06 13:51:47', NULL),
(17, 'Kệ gỗ tivi', 5000000, 5990000, '1700975188.jpg', '<div><ul style=\"border: 0px; font-family: Roboto, sans-serif; font-size: 14px; margin-right: 0px; margin-bottom: 15px; margin-left: 20px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-position: initial; list-style-image: initial; color: rgb(61, 61, 61);\"><li style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Nguyên liệu sản xuất gỗ công nghiệp mdf phủ vân gỗ melamine nhân tạo chống trầy cao cấp.</li><li style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Bảo hành 1 năm</li><li style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Màu sắc: màu vân gỗ hoặc màu tùy chọn.</li><li style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Nhận đặt kệ tivi cao cấp kích thước theo yêu cầu.</li><li style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Rộng 2m0 x cao 2m1 x sâu 40cm</li></ul></div>', 1, 7, 3, '2023-11-18 07:42:56', '2023-12-06 13:50:46', NULL),
(18, 'Kệ tivi hiện đại (KTV2)', 4000000, 4990000, '1700975138.jpg', '<div><ul class=\"attribute-single number-one\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 13px; color: rgb(51, 62, 72); font-family: Inter, &quot;Open Sans&quot;, HelveticaNeue-Light, &quot;Helvetica Neue Light&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida Grande&quot;, sans-serif; letter-spacing: -0.14px; padding: 0px !important;\"><li class=\"sku_wrapper\" style=\"overflow: hidden; list-style: none; margin: 0px; border-bottom: 1px solid rgb(236, 236, 236); color: rgb(17, 17, 17); padding: 3px 0px;\"><span class=\"left\" style=\"float: left; margin-right: 10px; font-weight: 600; font-size: 14px; color: rgb(0, 171, 197);\">Mã:</span><span class=\"right\" itemprop=\"sku\">(KTV2)</span></li><li style=\"overflow: hidden; list-style: none; margin: 0px; border-bottom: 1px solid rgb(236, 236, 236); color: rgb(17, 17, 17); padding: 3px 0px;\"><span class=\"left\" style=\"float: left; margin-right: 10px; font-weight: 600; font-size: 14px; color: rgb(0, 171, 197);\">Màu sắc:</span><span class=\"right\" itemprop=\"sku\">9223 kết hợp cánh trắng</span></li><li style=\"overflow: hidden; list-style: none; margin: 0px; border-bottom: 1px solid rgb(236, 236, 236); color: rgb(17, 17, 17); padding: 3px 0px;\"><span class=\"left\" style=\"float: left; margin-right: 10px; font-weight: 600; font-size: 14px; color: rgb(0, 171, 197);\">Kích thước:</span><span class=\"right\" itemprop=\"sku\">D1600 x R400 x C500mm</span></li><li style=\"overflow: hidden; list-style: none; margin: 0px; border-bottom: 1px solid rgb(236, 236, 236); color: rgb(17, 17, 17); padding: 3px 0px;\"><span class=\"left\" style=\"float: left; margin-right: 10px; font-weight: 600; font-size: 14px; color: rgb(0, 171, 197);\">Chất liệu:</span><span class=\"right\" itemprop=\"sku\">Gỗ MDF phủ Melamin</span></li><li style=\"overflow: hidden; list-style: none; margin: 0px; border-bottom: 1px solid rgb(236, 236, 236); color: rgb(17, 17, 17); padding: 3px 0px;\"><span class=\"left\" style=\"float: left; margin-right: 10px; font-weight: 600; font-size: 14px; color: rgb(0, 171, 197);\">Chú ý:</span><span class=\"right\" itemprop=\"sku\">Nhận đặt theo kích thước</span></li><li style=\"overflow: hidden; list-style: none; margin: 0px; border-bottom: 1px solid rgb(236, 236, 236); color: rgb(17, 17, 17); padding: 3px 0px;\"><span class=\"left\" style=\"float: left; margin-right: 10px; font-weight: 600; font-size: 14px; color: rgb(0, 171, 197);\">Bảo hành:</span><span class=\"right\" itemprop=\"sku\">12 tháng</span></li><li style=\"overflow: hidden; list-style: none; margin: 0px; border-bottom: 1px solid rgb(236, 236, 236); color: rgb(17, 17, 17); padding: 3px 0px;\"><span class=\"left\" style=\"float: left; margin-right: 10px; font-weight: 600; font-size: 14px; color: rgb(0, 171, 197);\">Miễn phí:</span><span class=\"right\" itemprop=\"sku\">Tư vấn, lắp đặt</span></li></ul></div>', 1, 7, 4, '2023-11-18 07:44:43', '2023-12-06 13:49:22', NULL),
(19, 'Kệ ti vi phong cách (KTV1)', 3000000, 3990000, '1700975067.jpg', '<div><ul class=\"attribute-single number-one\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 13px; color: rgb(51, 62, 72); font-family: Inter, &quot;Open Sans&quot;, HelveticaNeue-Light, &quot;Helvetica Neue Light&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida Grande&quot;, sans-serif; letter-spacing: -0.14px; padding: 0px !important;\"><li class=\"sku_wrapper\" style=\"overflow: hidden; list-style: none; margin: 0px; border-bottom: 1px solid rgb(236, 236, 236); color: rgb(17, 17, 17); padding: 3px 0px;\"><span class=\"left\" style=\"float: left; margin-right: 10px; font-weight: 600; font-size: 14px; color: rgb(0, 171, 197);\">Mã:</span><span class=\"right\" itemprop=\"sku\">(KTV1)</span></li><li style=\"overflow: hidden; list-style: none; margin: 0px; border-bottom: 1px solid rgb(236, 236, 236); color: rgb(17, 17, 17); padding: 3px 0px;\"><span class=\"left\" style=\"float: left; margin-right: 10px; font-weight: 600; font-size: 14px; color: rgb(0, 171, 197);\">Màu sắc:</span><span class=\"right\" itemprop=\"sku\">9223 kết hợp cánh trắng</span></li><li style=\"overflow: hidden; list-style: none; margin: 0px; border-bottom: 1px solid rgb(236, 236, 236); color: rgb(17, 17, 17); padding: 3px 0px;\"><span class=\"left\" style=\"float: left; margin-right: 10px; font-weight: 600; font-size: 14px; color: rgb(0, 171, 197);\">Kích thước:</span><span class=\"right\" itemprop=\"sku\">D1600 x R400 x C500mm</span></li><li style=\"overflow: hidden; list-style: none; margin: 0px; border-bottom: 1px solid rgb(236, 236, 236); color: rgb(17, 17, 17); padding: 3px 0px;\"><span class=\"left\" style=\"float: left; margin-right: 10px; font-weight: 600; font-size: 14px; color: rgb(0, 171, 197);\">Chất liệu:</span><span class=\"right\" itemprop=\"sku\">Gỗ MDF phủ Melamin</span></li><li style=\"overflow: hidden; list-style: none; margin: 0px; border-bottom: 1px solid rgb(236, 236, 236); color: rgb(17, 17, 17); padding: 3px 0px;\"><span class=\"left\" style=\"float: left; margin-right: 10px; font-weight: 600; font-size: 14px; color: rgb(0, 171, 197);\">Chú ý:</span><span class=\"right\" itemprop=\"sku\">Nhận đặt theo kích thước</span></li><li style=\"overflow: hidden; list-style: none; margin: 0px; border-bottom: 1px solid rgb(236, 236, 236); color: rgb(17, 17, 17); padding: 3px 0px;\"><span class=\"left\" style=\"float: left; margin-right: 10px; font-weight: 600; font-size: 14px; color: rgb(0, 171, 197);\">Bảo hành:</span><span class=\"right\" itemprop=\"sku\">12 tháng</span></li><li style=\"overflow: hidden; list-style: none; margin: 0px; border-bottom: 1px solid rgb(236, 236, 236); color: rgb(17, 17, 17); padding: 3px 0px;\"><span class=\"left\" style=\"float: left; margin-right: 10px; font-weight: 600; font-size: 14px; color: rgb(0, 171, 197);\">Miễn phí:</span><span class=\"right\" itemprop=\"sku\">Tư vấn, lắp đặt</span></li></ul></div>', 1, 7, 5, '2023-11-18 07:47:14', '2023-12-06 13:48:24', NULL),
(20, 'Giường ngủ hiện đại (GN22)', 10000000, 19900000, '1700974650.jpg', '<div><p style=\"margin-bottom: 1.3em; font-size: medium; overflow-wrap: break-word; color: rgb(119, 119, 119); font-family: Lato, sans-serif;\">Chất liệu: Gỗ&nbsp;<em class=\"Highlight\">cô</em>ng nghiệp MDF&nbsp;<em class=\"Highlight\">cô</em>ng nghệ ván sàn chịu lực tốt,&nbsp;đã qua tẩm sấy chống mối mọt, không cong vênh.</p><p style=\"margin-bottom: 1.3em; font-size: medium; overflow-wrap: break-word; color: rgb(119, 119, 119); font-family: Lato, sans-serif;\">– Bề mặt:&nbsp;Lớp phủ Melamin giữ màu sắc luôn tươi mới, chống xước, tăng&nbsp;độ bền cho sản phẩm</p><p style=\"margin-bottom: 1.3em; font-size: medium; overflow-wrap: break-word; color: rgb(119, 119, 119); font-family: Lato, sans-serif;\">– Màu sắc: tùy chọn</p><p style=\"margin-bottom: 1.3em; font-size: medium; overflow-wrap: break-word; color: rgb(119, 119, 119); font-family: Lato, sans-serif;\">– Kiểu dáng: giường ngủ hộp đầu to bọc đệm tựa sang trọng</p><p style=\"margin-bottom: 1.3em; font-size: medium; overflow-wrap: break-word; color: rgb(119, 119, 119); font-family: Lato, sans-serif;\">–&nbsp;Xuất xứ:&nbsp;Việt Nam</p><p style=\"margin-bottom: 1.3em; font-size: medium; overflow-wrap: break-word; color: rgb(119, 119, 119); font-family: Lato, sans-serif;\">* Kích thước :</p><p style=\"margin-bottom: 1.3em; font-size: medium; overflow-wrap: break-word; color: rgb(119, 119, 119); font-family: Lato, sans-serif;\">– Rộng 160 &nbsp;x Dài 200 &nbsp;(cm)&nbsp;</p><p style=\"margin-bottom: 1.3em; font-size: medium; overflow-wrap: break-word; color: rgb(119, 119, 119); font-family: Lato, sans-serif;\">* Bảo hành: 24 tháng trong điều kiện bình thường</p></div>', 1, 8, 5, '2023-11-18 07:49:44', '2023-12-06 13:47:02', NULL),
(21, 'Giường ngủ hiện đại (GN1)', 5000000, 6900000, '1700974452.jpg', '<div><p style=\"margin-bottom: 1.3em; font-size: medium; overflow-wrap: break-word; color: rgb(119, 119, 119); font-family: Lato, sans-serif;\">Chất liệu: Gỗ&nbsp;<em class=\"Highlight\">cô</em>ng nghiệp MDF&nbsp;<em class=\"Highlight\">cô</em>ng nghệ ván sàn chịu lực tốt,&nbsp;đã qua tẩm sấy chống mối mọt, không cong vênh.</p><p style=\"margin-bottom: 1.3em; font-size: medium; overflow-wrap: break-word; color: rgb(119, 119, 119); font-family: Lato, sans-serif;\">– Bề mặt:&nbsp;Lớp phủ Melamin giữ màu sắc luôn tươi mới, chống xước, tăng&nbsp;độ bền cho sản phẩm</p><p style=\"margin-bottom: 1.3em; font-size: medium; overflow-wrap: break-word; color: rgb(119, 119, 119); font-family: Lato, sans-serif;\">– Màu sắc: tùy chọn</p><p style=\"margin-bottom: 1.3em; font-size: medium; overflow-wrap: break-word; color: rgb(119, 119, 119); font-family: Lato, sans-serif;\">– Kiểu dáng: giường ngủ hộp đầu to bọc đệm tựa sang trọng</p><p style=\"margin-bottom: 1.3em; font-size: medium; overflow-wrap: break-word; color: rgb(119, 119, 119); font-family: Lato, sans-serif;\">–&nbsp;Xuất xứ:&nbsp;Việt Nam</p><p style=\"margin-bottom: 1.3em; font-size: medium; overflow-wrap: break-word; color: rgb(119, 119, 119); font-family: Lato, sans-serif;\">* Kích thước :</p><p style=\"margin-bottom: 1.3em; font-size: medium; overflow-wrap: break-word; color: rgb(119, 119, 119); font-family: Lato, sans-serif;\">– Rộng 160 &nbsp;x Dài 200 &nbsp;(cm)&nbsp;</p><p style=\"margin-bottom: 1.3em; font-size: medium; overflow-wrap: break-word; color: rgb(119, 119, 119); font-family: Lato, sans-serif;\">* Bảo hành: 24 tháng trong điều kiện bình thường</p></div>', 1, 8, 2, '2023-11-18 07:52:34', '2023-12-06 13:46:51', NULL),
(22, 'Giường ngủ hiện đại (GN12)', 10000000, 19900000, '1700974582.jpg', '<div><p style=\"margin-bottom: 1.3em; overflow-wrap: break-word; color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;\">Chất liệu: Gỗ&nbsp;<em class=\"Highlight\">cô</em>ng nghiệp MDF&nbsp;<em class=\"Highlight\">cô</em>ng nghệ ván sàn chịu lực tốt,&nbsp;đã qua tẩm sấy chống mối mọt, không cong vênh.</p><p style=\"margin-bottom: 1.3em; overflow-wrap: break-word; color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;\">– Bề mặt:&nbsp;Lớp phủ Melamin giữ màu sắc luôn tươi mới, chống xước, tăng&nbsp;độ bền cho sản phẩm</p><p style=\"margin-bottom: 1.3em; overflow-wrap: break-word; color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;\">– Màu sắc: tùy chọn</p><p style=\"margin-bottom: 1.3em; overflow-wrap: break-word; color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;\">– Kiểu dáng: giường ngủ hộp đầu to bọc đệm tựa sang trọng</p><p style=\"margin-bottom: 1.3em; overflow-wrap: break-word; color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;\">–&nbsp;Xuất xứ:&nbsp;Việt Nam</p><p style=\"margin-bottom: 1.3em; overflow-wrap: break-word; color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;\">* Kích thước :</p><p style=\"margin-bottom: 1.3em; overflow-wrap: break-word; color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;\">– Rộng 160 &nbsp;x Dài 200 &nbsp;(cm)&nbsp;</p><p style=\"margin-bottom: 1.3em; overflow-wrap: break-word; color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;\">* Bảo hành: 24 tháng trong điều kiện bình thường</p></div>', 1, 8, 4, '2023-11-18 07:55:01', '2023-12-06 13:46:38', NULL),
(23, 'Tranh treo tường (D-493)', 2000000, 3000000, '1699377817.jpg', '<div><p style=\"margin-bottom: 0px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 14px;\">► Mã sản phẩm: (D-493)</p><p style=\"margin-bottom: 0px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 14px;\">► Quy cách chất liệu tráng gương cao cấp:</p><p style=\"margin-bottom: 0px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 14px;\">– Công nghệ in Uv in trực tiếp lên mica, mực Uv Mỹ.<br>– Bề mặt tranh được phủ thêm 1 lớp nhựa epoxy bóng siêu nét.<br>– Mặt sau được đỡ thêm tấm fomex dày 8mm,<br>– Đóng khung tranh composite: trắng, đen, vàng</p><p style=\"margin-bottom: 0px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 14px;\">► Giao hàng toàn quốc, thanh toán khi nhận hàng</p><p style=\"margin-bottom: 0px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 14px;\">► Sản xuất: Tường Xinh Việt Nam</p></div>', 1, 11, 2, '2023-11-18 08:11:59', '2023-12-06 13:45:34', NULL),
(24, 'Tranh treo tường (D-492)', 2000000, 2990000, '1699377763.jpg', '<div><p style=\"margin-bottom: 0px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 14px;\">► Mã sản phẩm: (D-492)</p><p style=\"margin-bottom: 0px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 14px;\">► Quy cách chất liệu tráng gương cao cấp:</p><p style=\"margin-bottom: 0px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 14px;\">– Công nghệ in Uv in trực tiếp lên mica, mực Uv Mỹ.<br>– Bề mặt tranh được phủ thêm 1 lớp nhựa epoxy bóng siêu nét.<br>– Mặt sau được đỡ thêm tấm fomex dày 8mm,<br>– Đóng khung tranh composite: trắng, đen, vàng</p><p style=\"margin-bottom: 0px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 14px;\">► Giao hàng toàn quốc, thanh toán khi nhận hàng</p><p style=\"margin-bottom: 0px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 14px;\">► Sản xuất: Tường Xinh Việt Nam</p></div>', 1, 11, 5, '2023-11-18 08:15:24', '2023-12-06 13:45:19', NULL),
(25, 'Tranh treo tường (D-491)', 2000000, 3500000, '1699377683.jpg', '<div><p style=\"margin-bottom: 0px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 14px;\">► Mã sản phẩm: (D-491)</p><p style=\"margin-bottom: 0px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 14px;\">► Quy cách chất liệu tráng gương cao cấp:</p><p style=\"margin-bottom: 0px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 14px;\">– Công nghệ in Uv in trực tiếp lên mica, mực Uv Mỹ.<br>– Bề mặt tranh được phủ thêm 1 lớp nhựa epoxy bóng siêu nét.<br>– Mặt sau được đỡ thêm tấm fomex dày 8mm,<br>– Đóng khung tranh composite: trắng, đen, vàng</p><p style=\"margin-bottom: 0px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 14px;\">► Giao hàng toàn quốc, thanh toán khi nhận hàng</p><p style=\"margin-bottom: 0px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 14px;\">► Sản xuất: Tường Xinh Việt Nam</p></div>', 1, 11, 2, '2023-11-18 08:20:27', '2023-12-06 13:45:07', NULL),
(26, 'Đèn trang trí TQ3', 4000000, 4990000, '1699377198.jpg', '<div><ul style=\"margin-bottom: 1.3em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(119, 119, 119); font-family: Roboto, sans-serif;\"><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 13.6px; color: rgb(0, 0, 0);\">Mã sản phẩm: TQ3</span></li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 13.6px; color: rgb(0, 0, 0);\">Kích thước: L400 x H660</span></li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 13.6px; color: rgb(0, 0, 0);\">Chất liệu: Thân hợp kim + Đá</span></li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 13.6px; color: rgb(0, 0, 0);\">Đui đèn: E27</span></li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 13.6px; color: rgb(0, 0, 0);\">Bảo hành: 5 năm</span></li></ul></div>', 1, 9, 4, '2023-11-18 08:25:21', '2023-12-06 13:44:17', NULL),
(27, 'Đèn trang trí TQ2', 3000000, 3990000, '1699377142.png', '<div><ul style=\"margin-bottom: 1.3em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(119, 119, 119); font-family: Roboto, sans-serif;\"><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 13.6px; color: rgb(0, 0, 0);\">Mã sản phẩm: TQ2</span></li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 13.6px; color: rgb(0, 0, 0);\">Kích thước: L400 x H660</span></li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 13.6px; color: rgb(0, 0, 0);\">Chất liệu: Thân hợp kim + Đá</span></li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 13.6px; color: rgb(0, 0, 0);\">Đui đèn: E27</span></li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 13.6px; color: rgb(0, 0, 0);\">Bảo hành: 5 năm</span></li></ul></div>', 1, 9, 4, '2023-11-18 08:30:55', '2023-12-06 13:44:05', NULL),
(28, 'Đèn trang trí TQ1', 2000000, 3900000, '1699377079.jpg', '<div><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(119, 119, 119); font-family: Roboto, sans-serif;\"><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 13.6px; color: rgb(0, 0, 0);\">Mã sản phẩm: TQ1</span></li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 13.6px; color: rgb(0, 0, 0);\">Kích thước: L400 x H660</span></li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 13.6px; color: rgb(0, 0, 0);\">Chất liệu: Thân hợp kim + Đá</span></li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 13.6px; color: rgb(0, 0, 0);\">Đui đèn: E27</span></li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 13.6px; color: rgb(0, 0, 0);\">Bảo hành: 5 năm</span></li></ul></div>', 1, 9, 4, '2023-11-18 08:35:23', '2023-12-06 13:43:50', NULL),
(29, 'Bộ tủ nhà bếp cao cấp (L03)', 30000000, 39900000, '1699378030.jpg', '<div><ul style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px 0px 0px 25px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;;\"><li style=\"margin: 0px; padding: 0px; list-style: inherit;\"><span style=\"margin: 0px; padding: 0px;\">Hình chữ L ôm trọn những góc chết kết hợp với màu sáng giúp không gian ngôi nhà thêm thoải mái. Đây có thể là phương pháp tốt nhất để bạn vẫn có những không gian tiện nghi nhất dù diện tích nhà có hạn.</span></li><li style=\"margin: 0px; padding: 0px; list-style: inherit;\"><span style=\"margin: 0px; padding: 0px;\">Tủ bếp trên chia 2 tầng đều là màu vân gỗ như một khối thống nhất cho bạn có thêm nhiều không gian hơn. Với nhiều tủ đựng đồ và tủ bếp như vậy, bài trí nhà bếp và các đồ vật không phải là một vấn đề khó khăn đối với bạn rồi!</span><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; vertical-align: inherit;\"></span></span></li><li style=\"margin: 0px; padding: 0px; list-style: inherit;\"><span style=\"margin: 0px; padding: 0px;\">Ngoài ra gia chủ còn kết hợp thiết kế thêm tủ gầm cầu thang để tận dụng tối đa diện tích, tăng không gian lưu trữ</span></li></ul></div>', 1, 12, 4, '2023-11-18 08:41:16', '2023-12-06 13:42:53', NULL),
(30, 'Bộ tủ nhà bếp cao cấp (L02)', 40000000, 49900000, '1699377973.png', '<div><p style=\"color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><span style=\"font-weight: bolder;\"><em>Thông số kỹ thuật của mẫu tủ bếp này:</em></span></p><p style=\"color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\">– Cánh tủ là chất liệu gỗ sồi, xoan đào tự nhiên HAGL dày 2,1 cm</p><p style=\"color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\">– Thùng gỗ verneer sồi, xoan đào HAGL dày 1,7cm</p><p style=\"color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\">– Hậu tủ nhôm aluminum tạo vân theo gỗ</p><p style=\"color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\">– Sơn phủ PU nhập khẩu Malaysia chống ngả màu,…</p></div>', 1, 12, 2, '2023-11-18 08:44:07', '2023-12-06 13:41:43', NULL),
(31, 'Bộ tủ nhà bếp cao cấp (L01)', 20000000, 29900000, '1699377911.png', '<div><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(106, 106, 106); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><li style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: 14px;\">Kích thước<strong style=\"padding: 0px; margin: 0px; font-weight: bold;\">&nbsp;tủ bếp dưới</strong>&nbsp;cao 800mm - 810mm (đã bao gồm mặt đán mặt đá dày 18mm), chiều sâu tủ bếp&nbsp;560mm (cả mặt đá rộng&nbsp;600mm).&nbsp;Với kích thước này, tủ bếp dưới phù hợp để lắp máy rửa bát âm tủ, lò nướng âm tủ, các loại bếp từ, bếp điện từ âm tủ ...</span></li><li style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: 14px;\"><strong style=\"padding: 0px; margin: 0px; font-weight: bold;\">Thùng tủ bếp&nbsp;</strong>được làm từ gỗ dổi dày&nbsp;18mm khai thác từ tự nhiên, đã qua xử lý chống mối mọt, cong vênh.</span></li><li style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: 14px;\">Hậu tủ bằng tấm hợp kim nhôm dày 3mm sản xuất tại Việt Nam.</span></li><li style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: 14px;\"><strong style=\"padding: 0px; margin: 0px; font-weight: bold;\">Thùng tủ và cánh tủ&nbsp;g</strong>ồm các ván&nbsp;thành phẩm được liên kết bằng hệ phụ kiện như: đinh vít, keo dán, Chốt gỗ để định hướng và liên kết sản phẩm.</span></li></ul></div>', 1, 12, 5, '2023-11-18 08:45:06', '2023-12-06 13:40:10', NULL),
(32, 'Đồng hồ treo tường cao cấp(LDH40)', 7000000, 7990000, '1699377573.png', '<p>                        </p><p></p><p></p><ul></ul><p></p><p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; color: rgb(45, 45, 45); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">&nbsp;Mã sản phẩm LDH40</p><p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; color: rgb(45, 45, 45); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Quy cách 1 tấm tranh</p><p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; color: rgb(45, 45, 45); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">&nbsp;Kích thước: 100cm x 55cm</p><p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; color: rgb(45, 45, 45); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Chất liệu: Thép sơn phủ Titan</p><p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; color: rgb(45, 45, 45); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Xuất xứ: Nhập Khẩu</p><p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; color: rgb(45, 45, 45); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">&nbsp;Bảo hành: 6 Năm</p><p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; color: rgb(45, 45, 45); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Giao hàng toàn quốc, thanh toán khi nhận hàng</p>\r\n                      <p></p>', 1, 10, 5, '2023-11-18 08:51:48', '2023-12-06 13:39:03', NULL),
(33, 'Đồng hồ treo tường cao cấp(LDH80)', 6000000, 6990000, '1699377446.jpg', '<div><p style=\"margin-bottom: 1.3em; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 15.84px;\">Kích thước: 60cm x 22cm</p><p style=\"margin-bottom: 1.3em; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 15.84px;\">Chất liệu: Kim loại cao cấp mạ không gỉ, bền đẹp với thời gian</p><p style=\"margin-bottom: 1.3em; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 15.84px;\">Trọng lượng: 2kg</p></div>', 1, 10, 4, '2023-11-18 08:54:13', '2023-12-06 13:37:45', NULL),
(34, 'Đồng hồ treo tường cao cấp(LDH70)', 4000000, 4990000, '1699377357.jpg', '<div><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(119, 119, 119); font-family: sans-serif; font-size: medium;\"><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Chất liệu:&nbsp;<span style=\"font-weight: bolder;\">Đồng nguyên chất</span></li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Kích thước: 35*71cm,</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Đường kính mặt đồng hồ 35cm</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Sản phẩm được bảo hành 3 năm tại <b>WebWebShop</b></li></ul></div>', 1, 10, 5, '2023-11-18 08:56:13', '2023-12-06 13:37:19', NULL),
(35, 'Bộ tách trà hoa văn cổ điển', 5000000, 8990000, '1700974806.jpg', '<div><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;-apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Helvetica Neue&amp;quot;, sans-serif&quot;, sans-serif; background-color: rgb(249, 249, 249);\"><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\"><span style=\"font-weight: bolder;\">Thương hiệu:</span>&nbsp;Lộc Tân Cương</span></li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\"><span style=\"font-weight: bolder;\">Xuất xứ thương hiệu:</span>&nbsp;Việt Nam</span></li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\"><span style=\"font-weight: bolder;\">Sản xuất tại:</span>&nbsp;Bát Tràng – Hà Nội</span></li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\"><span style=\"font-weight: bolder;\">Chất đất:</span>&nbsp;Đất tử sa gan gà</span></li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\"><span style=\"font-weight: bolder;\">Thể tích:</span>&nbsp;300ml</span></li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\"><span style=\"font-weight: bolder;\">Màu sắc:</span>&nbsp;Nâu đất</span></li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\"><span style=\"font-weight: bolder;\">Sản phẩm bao gồm:&nbsp;</span>Ấm, 6 chén và 7 đĩa</span></li></ul></div>', 1, 13, 3, '2023-11-18 09:03:59', '2023-12-06 13:36:35', NULL),
(36, 'Bộ tách trà  (TT2)', 5000000, 5990000, '1699378176.jpg', '<div><ul style=\"margin-bottom: 1em; padding-left: 25px; color: rgb(0, 0, 0); font-family: &quot;\'Times New Roman\', Times,serif&quot;, sans-serif; font-size: 14px;\"><li style=\"line-height: 30px; list-style: inherit;\"><span style=\"font-size: 14pt; font-family: &quot;times new roman&quot;, times, serif;\">Sản phẩm: Bộ trà sứ khảm vàng.</span></li><li style=\"line-height: 30px; list-style: inherit;\"><span style=\"font-size: 14pt; font-family: &quot;times new roman&quot;, times, serif;\">Mã hàng: T38</span></li><li style=\"line-height: 30px; list-style: inherit;\"><span style=\"font-size: 14pt; font-family: &quot;times new roman&quot;, times, serif;\">Xuất xứ: Tiệp Khắc.</span></li><li style=\"line-height: 30px; list-style: inherit;\"><span style=\"font-size: 14pt; font-family: &quot;times new roman&quot;, times, serif;\">Chất liệu: Sứ cao cấp.</span></li><li style=\"line-height: 30px; list-style: inherit;\"><span style=\"font-size: 14pt; font-family: &quot;times new roman&quot;, times, serif;\">Ngoại hình: Khắc hoa khảm vàng họa tiết.</span></li></ul></div>', 1, 13, 4, '2023-11-18 09:08:02', '2023-12-06 13:36:02', NULL);
INSERT INTO `products` (`id`, `name`, `price_import`, `price_sell`, `img`, `description`, `status`, `category_id`, `brand_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(37, 'Bộ tách trà  (TT1)', 4000000, 5000000, '1699378102.png', '<div><p style=\"margin-right: 0px; margin-bottom: 7px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;\">Sự tinh tế không chỉ đến từ cách bày biện bàn trà, mà ngay từ màu sắc của ấm, tách, ly, muỗng, rồi bản thân mỗi chiếc bánh cũng thể hiện rõ ràng và đầy đặn nhất sự nhã nhặn.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 7px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;\">&nbsp;Vậy chọn được một bộ ấm trà đẹp mang đến sự thư thái, và ngon miệng, cho bữa tiệc trà càng thêm phần ấn tượng.</p><p style=\"margin-right: 0px; margin-bottom: 7px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;\">Gốm Sứ Trang Trí xin giới thiệu đến các bạn BỘ TÁCH TRÀ – CHIỀU MÙA THU đẹp xuất sắc&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 7px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;\">- Mô tả sản phẩm:</p><p style=\"margin-right: 0px; margin-bottom: 7px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;\">- Chất liệu: Gốm sứ cao cấp.</p></div>', 1, 13, 2, '2023-11-18 09:10:12', '2023-12-06 13:35:35', NULL),
(38, 'Tủ var01', 400000, 499000, 'tu.png', '', 1, 3, 2, '2023-05-03 09:09:36', '2023-11-26 05:04:40', '2023-11-26 05:04:40'),
(39, 'Tủ aronC2', 200000, 299000, 'TU2.png', '', 1, 3, 2, '2023-05-03 09:38:15', '2023-11-26 04:48:50', '2023-11-26 04:48:50'),
(40, 'Tủ TA04', 5000000, 7000000, '1699376787.png', '<ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 20px; line-height: 1.5; color: rgb(51, 51, 51); font-family: Roboto, Arial, sans-serif; font-size: 14px; text-align: justify;\"><li style=\"margin: 0px; padding: 0px; line-height: 1.5; list-style: inside;\">Mã kệ: TA04</li><li style=\"margin: 0px; padding: 0px; line-height: 1.5; list-style: inside;\">Kích thước: Cao 1m75 x Rộng 1m2 x Sâu 30cm, có thể thay đổi theo yêu cầu</li><li style=\"margin: 0px; padding: 0px; line-height: 1.5; list-style: inside;\">Chất liệu: Gỗ MDF phủ melamine. Quý khách có thể yêu cầu dùng gỗ MDF lõi thường hoặc lõi xanh. Ngoài ra có thể dùng MFC phủ melamine, gỗ nhựa,…hay loại tốt phủ Laminate theo nhu cầu khách hàng.</li><li style=\"margin: 0px; padding: 0px; line-height: 1.5; list-style: inside;\">Đặc điểm nổi bật: Bề mặt chống trầy xước, không thấm nước rất được ưa chuộng cho cuộc sống hiện đại ngày nay.</li></ul>', 1, 3, 4, '2023-11-18 09:41:51', '2023-12-06 13:34:32', NULL),
(41, 'Tủ TA03', 6000000, 6990000, '1699376655.jpg', '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(35, 35, 35); font-family: Roboto, sans-serif; font-size: 15.04px;\"><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Mã sản phẩm: Tủ quần áo TA03</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Chất liệu: được làm bằng chất liệu gỗ MDF lõi xanh chống ẩm cốt Thái hàng loại 1.</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Kích thước tủ đựng áo quần: Từ 1600 – 2200 x 600 x 2600mm.</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Kích thức góc kệ kim cương: 400 x 600 x 2600mm.</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Màu sắc: màu sắc của tủ quần áo có thể thay đổi theo sở thích và phong cách nội thất phòng ngủ của khách hàng.</li></ul>', 1, 3, 5, '2023-11-18 09:45:54', '2023-12-06 13:31:38', NULL),
(42, 'Tủ Gỗ Hàn Quốc', 2000000, 3000000, '1699375789.jpg', '<p><span style=\"color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\">Tủ quần áo gỗ 2 tầng có kệ trang trí, đa năng, kích thước lớn mang đến không gian lưu trữ rộng rãi, thoải mái cho gia đình bạn, giúp cho phòng ngủ của bạn luôn ngăn nắp, gọn gàng.</span></p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><span style=\"font-weight: bolder;\">Kích thước</span>:&nbsp;Rộng 1m9 x cao 2m4 x sâu 60 cm</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;gỗ MDF phủ melamine</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><span style=\"font-weight: bolder;\">Bảo hành:</span>&nbsp;12 tháng.</p>', 1, 3, 1, '2023-11-18 01:14:32', '2023-12-06 13:30:45', NULL),
(43, 'đèn chùm 01', 213, 123, '1700978495.jpg', '<ul style=\"font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><li>Mục đích sử dụng:&nbsp;<strong style=\"font-weight: bold;\">Đèn chùm trang trí phòng khách,&nbsp;Đèn chùm trang trí phòng ngủ,&nbsp;Đèn chùm trang trí phòng ăn,&nbsp;Đèn chùm trang trí nhà hàng, khách sạn, Đèn chùm trang trí hội trường, Đèn chùm trang trí biệt thự, Đèn chùm đồng, đèn chùm pha lê,...</strong></li><li>Tuổi thọ bóng trung bình: 50000H</li><li>Màu ánh sáng: Vàng/Trắng</li><li>Điện áp: 220V</li><li>Chất liệu:&nbsp;<b style=\"font-weight: bold;\">Hợp kim+pha lê</b></li><li>Cách thức điều khiển: Ấn nút công tắc</li></ul>', 1, 6, 1, '2023-11-26 06:01:35', '2023-12-06 13:28:09', NULL),
(44, 'Giường thông minh N01', 21000000, 25000000, '1704335074.jpg', 'giường đẹp thông minh', 1, 8, 1, '2024-01-04 02:24:34', '2024-01-04 02:24:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_color`
--

CREATE TABLE `products_color` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(255) NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_color`
--

INSERT INTO `products_color` (`id`, `img`, `color_id`, `product_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'tu03.jpg', 2, 2, '2023-11-28 08:43:31', '2023-11-28 08:43:31', NULL),
(3, 'tu031.jpg', 3, 2, '2023-11-28 08:43:55', '2023-11-28 08:43:55', NULL),
(4, 'tu032.jpg', 6, 2, '2023-11-28 08:44:06', '2023-11-28 08:44:06', NULL),
(5, 'tu033.jpg', 1, 2, '2023-11-28 07:02:07', '2023-11-28 07:02:07', NULL),
(6, '1683009385.png', 1, 3, '2023-11-28 06:36:25', '2023-11-28 06:36:25', NULL),
(7, '1683009405.png', 6, 3, '2023-11-28 06:36:45', '2023-11-28 06:36:45', NULL),
(8, 'sofa2.jpg', 2, 11, '2023-11-28 06:36:53', '2023-11-28 06:36:53', NULL),
(9, 'sofa2.jpg', 1, 4, '2023-11-28 06:41:14', '2023-11-28 06:41:14', NULL),
(10, '1683009697.png', 2, 4, '2023-11-28 06:41:37', '2023-11-28 06:41:37', NULL),
(11, '1683009705.png', 3, 4, '2023-11-28 06:41:45', '2023-11-28 06:41:45', NULL),
(12, '1683009718.png', 6, 4, '2023-11-28 06:41:58', '2023-11-28 06:41:58', NULL),
(13, '1683010022.png', 4, 5, '2023-11-28 06:47:02', '2023-11-28 06:47:02', NULL),
(14, '1683010040.png', 2, 5, '2023-11-28 06:47:20', '2023-11-28 06:47:20', NULL),
(15, '1683010050.png', 1, 5, '2023-11-28 06:47:30', '2023-11-28 06:47:30', NULL),
(16, '1683010058.png', 6, 5, '2023-11-28 06:47:38', '2023-11-28 06:47:38', NULL),
(17, 'bango3.jpg', 1, 6, '2023-11-28 06:59:00', '2023-11-28 06:59:00', NULL),
(18, 'bango01.png', 1, 7, '2023-11-28 07:01:31', '2023-11-28 07:01:31', NULL),
(19, 'bango01.png', 3, 7, '2023-11-28 07:01:45', '2023-11-28 07:01:45', NULL),
(20, 'bango01.png', 6, 7, '2023-11-28 07:01:55', '2023-11-28 07:04:55', NULL),
(21, 'bango2.png', 2, 8, '2023-11-28 07:04:58', '2023-11-28 07:04:58', NULL),
(22, 'bango2.png', 3, 8, '2023-11-28 07:05:06', '2023-11-28 07:05:06', NULL),
(23, 'bango2.png', 6, 8, '2023-11-28 07:05:17', '2023-11-28 07:05:17', NULL),
(24, 'sofa1.jpg', 1, 9, '2023-11-28 07:10:09', '2023-11-28 07:10:09', NULL),
(25, 'sofa1.jpg', 2, 9, '2023-11-28 07:10:18', '2023-11-28 07:10:18', NULL),
(26, 'sofa1.jpg', 6, 9, '2023-11-28 07:10:28', '2023-11-28 07:10:28', NULL),
(27, 'sofadai1.jpg', 1, 10, '2023-11-28 07:15:25', '2023-11-28 07:15:25', NULL),
(28, 'sofadai1.jpg', 2, 10, '2023-11-28 07:15:33', '2023-11-28 07:15:33', NULL),
(29, 'sofadai1.jpg', 3, 10, '2023-11-28 07:15:41', '2023-11-28 07:15:41', NULL),
(30, 'sofadai1.jpg', 6, 10, '2023-11-28 07:15:50', '2023-11-28 07:15:50', NULL),
(31, 'sofa2.jpg', 4, 11, '2023-11-28 07:18:25', '2023-11-28 07:18:25', NULL),
(32, 'sofa2.jpg', 2, 11, '2023-11-28 07:18:34', '2023-11-28 07:18:34', NULL),
(33, 'sofa2.jpg', 6, 11, '2023-11-28 07:18:47', '2023-11-28 07:18:47', NULL),
(34, 'sofaz03.jpg', 3, 12, '2023-11-28 07:22:36', '2023-11-28 07:22:36', NULL),
(35, 'sofaz03.jpg', 2, 12, '2023-11-28 07:22:44', '2023-11-28 07:22:44', NULL),
(36, 'sofaz03.jpg', 6, 12, '2023-11-28 07:22:52', '2023-11-28 07:22:52', NULL),
(37, 'denb01.jpg', 4, 13, '2023-11-28 07:27:59', '2023-11-28 07:27:59', NULL),
(38, 'denb01.jpg', 6, 13, '2023-11-28 07:28:07', '2023-11-28 07:28:07', NULL),
(39, 'denb01.jpg', 2, 13, '2023-11-28 07:28:14', '2023-11-28 07:28:14', NULL),
(40, 'denchum2.jpg', 1, 14, '2023-11-28 07:31:22', '2023-11-28 07:31:22', NULL),
(41, 'denchum2.jpg', 2, 14, '2023-11-28 07:31:28', '2023-11-28 07:31:28', NULL),
(42, 'denchum2.jpg', 6, 14, '2023-11-28 07:31:35', '2023-11-28 07:31:35', NULL),
(43, 'denchum2.jpg', 4, 14, '2023-11-28 07:31:42', '2023-11-28 07:31:42', NULL),
(44, 'denchum2.jpg', 3, 14, '2023-11-28 07:31:51', '2023-11-28 07:31:51', NULL),
(45, 'denchum3.jpg', 1, 15, '2023-11-28 07:34:38', '2023-11-28 07:34:38', NULL),
(46, 'denchum3.jpg', 2, 15, '2023-11-28 07:34:46', '2023-11-28 07:34:46', NULL),
(47, 'denchum3.jpg', 3, 15, '2023-11-28 07:34:54', '2023-11-28 07:34:54', NULL),
(48, 'denchum3.jpg', 6, 15, '2023-11-28 07:35:02', '2023-11-28 07:35:02', NULL),
(49, 'denchum1.jpg', 1, 16, '2023-11-28 07:38:17', '2023-11-28 07:38:17', NULL),
(50, 'denchum1.jpg', 2, 16, '2023-11-28 07:38:25', '2023-11-28 07:38:25', NULL),
(51, 'denchum1.jpg', 6, 16, '2023-11-28 07:38:33', '2023-11-28 07:38:33', NULL),
(52, 'ketivi21.jpg', 2, 17, '2023-11-28 07:43:05', '2023-11-28 07:43:05', NULL),
(53, 'ketivi21.jpg', 6, 17, '2023-11-28 07:43:13', '2023-11-28 07:43:13', NULL),
(54, 'ketivi31.jpg', 2, 18, '2023-11-28 07:44:53', '2023-11-28 07:44:53', NULL),
(55, 'ketivi31.jpg', 3, 18, '2023-11-28 07:45:00', '2023-11-28 07:45:00', NULL),
(56, 'ketivi1.jpg', 2, 19, '2023-11-28 07:47:26', '2023-11-28 07:47:26', NULL),
(57, 'ketivi1.jpg', 6, 19, '2023-11-28 07:47:34', '2023-11-28 07:47:34', NULL),
(58, 'giuongG03.jpg', 2, 20, '2023-11-28 07:49:53', '2023-11-28 07:49:53', NULL),
(59, 'giuongG03.jpg', 6, 20, '2023-11-28 07:50:04', '2023-11-28 07:50:04', NULL),
(60, 'giuongG03.jpg', 3, 20, '2023-11-28 07:50:23', '2023-11-28 07:50:23', NULL),
(61, 'giuong1.jpg', 5, 21, '2023-11-28 07:52:44', '2023-11-28 07:52:44', NULL),
(62, 'giuong1.jpg', 6, 21, '2023-11-28 07:52:56', '2023-11-28 07:52:56', NULL),
(63, 'giuong1.jpg', 4, 21, '2023-11-28 07:53:04', '2023-11-28 07:53:04', NULL),
(64, 'giuongG02.jpg', 2, 22, '2023-11-28 07:55:09', '2023-11-28 07:55:09', NULL),
(65, 'giuongG02.jpg', 6, 22, '2023-11-28 07:55:18', '2023-11-28 07:55:18', NULL),
(66, 'giuongG02.jpg', 1, 22, '2023-11-28 07:55:25', '2023-11-28 07:55:25', NULL),
(67, 'tranh1.jpg', 1, 23, '2023-11-28 08:12:18', '2023-11-28 08:12:18', NULL),
(68, 'tranh1.jpg', 3, 23, '2023-11-28 08:12:51', '2023-11-28 08:12:51', NULL),
(69, 'tranh1.jpg', 6, 23, '2023-11-28 08:12:58', '2023-11-28 08:12:58', NULL),
(70, 'tranh2.jpg', 1, 24, '2023-11-28 08:16:44', '2023-11-28 08:16:45', NULL),
(71, 'tranh2.jpg', 2, 24, '2023-11-28 08:16:51', '2023-11-28 08:16:51', NULL),
(72, 'tranh2.jpg', 4, 24, '2023-11-28 08:17:04', '2023-11-28 08:17:04', NULL),
(73, 'tranh2.jpg', 3, 24, '2023-11-28 08:17:12', '2023-11-28 08:17:12', NULL),
(74, 'tranh2.jpg', 7, 24, '2023-11-28 08:17:21', '2023-11-28 08:17:21', NULL),
(75, 'tranh3.jpg', 1, 25, '2023-11-28 08:20:34', '2023-11-28 08:20:34', NULL),
(76, 'tranh3.jpg', 2, 25, '2023-11-28 08:20:44', '2023-11-28 08:20:44', NULL),
(77, 'tranh3.jpg', 4, 25, '2023-11-28 08:20:51', '2023-11-28 08:20:51', NULL),
(78, 'den1.jpg', 1, 26, '2023-11-28 08:27:56', '2023-11-28 08:27:56', NULL),
(79, 'den1.jpg', 2, 26, '2023-11-28 08:28:03', '2023-11-28 08:28:03', NULL),
(80, 'den1.jpg', 3, 26, '2023-11-28 08:28:11', '2023-11-28 08:28:11', NULL),
(81, 'den1.jpg', 6, 26, '2023-11-28 08:28:19', '2023-11-28 08:28:19', NULL),
(82, 'den1.jpg', 5, 26, '2023-11-28 08:28:27', '2023-11-28 08:28:27', NULL),
(83, 'den2.png', 1, 27, '2023-11-28 08:31:03', '2023-11-28 08:31:03', NULL),
(84, 'den2.png', 2, 27, '2023-11-28 08:31:12', '2023-11-28 08:31:12', NULL),
(85, 'den2.png', 6, 27, '2023-11-28 08:31:22', '2023-11-28 08:31:22', NULL),
(86, 'den2.png', 5, 27, '2023-11-28 08:31:45', '2023-11-28 08:31:45', NULL),
(87, 'den2.png', 4, 27, '2023-11-28 08:31:52', '2023-11-28 08:31:52', NULL),
(88, 'den3.jpg', 1, 28, '2023-11-28 08:35:36', '2023-11-28 08:35:36', NULL),
(89, 'den3.jpg', 2, 28, '2023-11-28 08:35:45', '2023-11-28 08:35:45', NULL),
(90, 'den3.jpg', 3, 28, '2023-11-28 08:35:54', '2023-11-28 08:35:54', NULL),
(91, 'den3.jpg', 4, 28, '2023-11-28 08:36:01', '2023-11-28 08:36:01', NULL),
(92, 'den3.jpg', 5, 28, '2023-11-28 08:36:08', '2023-11-28 08:36:08', NULL),
(93, 'den3.jpg', 6, 28, '2023-11-28 08:36:16', '2023-11-28 08:36:16', NULL),
(94, 'bep1.jpg', 1, 29, '2023-11-28 08:41:25', '2023-11-28 08:41:25', NULL),
(95, 'bep1.jpg', 6, 29, '2023-11-28 08:41:35', '2023-11-28 08:41:35', NULL),
(96, 'bep1.jpg', 2, 29, '2023-11-28 08:41:42', '2023-11-28 08:41:42', NULL),
(97, 'bep2.png', 3, 30, '2023-11-28 08:44:14', '2023-11-28 08:44:14', NULL),
(98, 'bep2.png', 6, 30, '2023-11-28 08:44:21', '2023-11-28 08:44:21', NULL),
(99, 'bep3.png', 1, 31, '2023-11-28 08:45:14', '2023-11-28 08:45:14', NULL),
(100, 'bep3.png', 2, 31, '2023-11-28 08:45:22', '2023-11-28 08:45:22', NULL),
(101, 'bep3.png', 3, 31, '2023-11-28 08:45:36', '2023-11-28 08:45:36', NULL),
(102, 'bep3.png', 4, 31, '2023-11-28 08:45:45', '2023-11-28 08:45:45', NULL),
(103, 'dongho1.png', 4, 32, '2023-11-28 08:52:00', '2023-11-28 08:52:00', NULL),
(104, 'dongho1.png', 6, 32, '2023-11-28 08:52:13', '2023-11-28 08:52:13', NULL),
(105, 'dongho1.png', 2, 32, '2023-11-28 08:52:19', '2023-11-28 08:52:19', NULL),
(106, 'dongho2.jpg', 6, 33, '2023-11-28 08:54:25', '2023-11-28 08:54:25', NULL),
(107, 'dongho2.jpg', 2, 33, '2023-11-28 08:54:39', '2023-11-28 08:54:39', NULL),
(108, 'dongho3.jpg', 2, 34, '2023-11-28 08:58:48', '2023-11-28 08:58:48', NULL),
(109, 'dongho3.jpg', 3, 34, '2023-11-28 08:58:59', '2023-11-28 08:58:59', NULL),
(110, 'dongho3.jpg', 6, 34, '2023-11-28 08:59:15', '2023-11-28 08:59:15', NULL),
(111, 'dongho3.jpg', 4, 34, '2023-11-28 08:59:37', '2023-11-28 08:59:37', NULL),
(112, 'tachtra1.jpg', 1, 35, '2023-11-28 09:04:08', '2023-11-28 09:04:08', NULL),
(113, 'tachtra1.jpg', 3, 35, '2023-11-28 09:04:16', '2023-11-28 09:04:16', NULL),
(114, 'tachtra1.jpg', 2, 35, '2023-11-28 09:05:01', '2023-11-28 09:05:01', NULL),
(115, 'tachtra1.jpg', 6, 35, '2023-11-28 09:05:13', '2023-11-28 09:05:13', NULL),
(116, 'tachtra2.jpg', 2, 36, '2023-11-28 09:08:15', '2023-11-28 09:08:15', NULL),
(117, 'tachtra2.jpg', 6, 36, '2023-11-28 09:08:24', '2023-11-28 09:08:24', NULL),
(118, 'tachtra3.png', 2, 37, '2023-11-28 09:10:35', '2023-11-28 09:10:35', NULL),
(119, 'tachtra3.png', 6, 37, '2023-11-28 09:10:53', '2023-11-28 09:10:53', NULL),
(120, 'tachtra3.png', 3, 37, '2023-11-28 09:11:03', '2023-11-28 09:11:03', NULL),
(121, '1683106381.png', 6, 38, '2023-11-28 09:11:54', '2023-11-28 09:33:01', NULL),
(122, '1683105180.png', 1, 38, '2023-11-28 09:13:00', '2023-11-28 09:30:00', '2023-11-28 09:30:00'),
(123, '1683106744.png', 4, 39, '2023-11-28 09:39:04', '2023-11-28 09:39:04', NULL),
(124, 'tu1.png', 1, 40, '2023-11-28 09:42:46', '2023-11-28 09:42:46', NULL),
(125, 'tu2.jpg', 6, 41, '2023-11-28 09:46:12', '2023-11-28 09:46:12', NULL),
(126, 'tu3.jpg', 4, 42, '2023-11-28 01:14:46', '2023-11-28 01:14:46', NULL),
(127, 'tu3.jpg', 6, 42, '2023-11-28 01:14:56', '2023-11-28 01:14:56', NULL),
(128, '1704335103.jpg', 3, 44, '2024-01-04 02:25:03', '2024-01-04 02:25:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_size`
--

CREATE TABLE `products_size` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_color_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_size`
--

INSERT INTO `products_size` (`id`, `product_color_id`, `size_id`, `created_at`, `updated_at`, `quantity`, `deleted_at`) VALUES
(2, 2, 1, NULL, '2023-11-19 06:34:19', 50, NULL),
(3, 2, 2, NULL, '2023-11-19 06:34:14', 50, NULL),
(4, 2, 3, NULL, '2023-11-19 06:34:09', 50, NULL),
(5, 3, 2, NULL, '2023-11-19 06:34:03', 49, NULL),
(6, 3, 4, NULL, '2023-11-19 06:33:57', 50, NULL),
(7, 5, 2, NULL, '2023-11-19 06:33:52', 50, NULL),
(8, 5, 4, NULL, '2023-11-19 06:33:44', 50, NULL),
(9, 6, 2, NULL, NULL, 50, NULL),
(10, 6, 1, NULL, NULL, 50, NULL),
(11, 6, 3, NULL, NULL, 50, NULL),
(12, 6, 4, NULL, NULL, 50, NULL),
(13, 7, 1, NULL, NULL, 50, NULL),
(14, 7, 2, NULL, NULL, 50, NULL),
(15, 7, 3, NULL, NULL, 50, NULL),
(16, 8, 1, NULL, NULL, 50, NULL),
(17, 8, 2, NULL, NULL, 50, NULL),
(18, 8, 3, NULL, NULL, 50, NULL),
(19, 8, 4, NULL, NULL, 10, NULL),
(20, 9, 1, NULL, NULL, 50, NULL),
(21, 9, 2, NULL, NULL, 50, NULL),
(22, 9, 3, NULL, NULL, 50, NULL),
(23, 9, 4, NULL, NULL, 10, NULL),
(24, 10, 1, NULL, NULL, 50, NULL),
(25, 10, 2, NULL, NULL, 50, NULL),
(26, 10, 3, NULL, NULL, 50, NULL),
(27, 10, 4, NULL, NULL, 10, NULL),
(28, 11, 1, NULL, NULL, 50, NULL),
(29, 11, 2, NULL, NULL, 50, NULL),
(30, 11, 3, NULL, NULL, 50, NULL),
(31, 12, 1, NULL, NULL, 50, NULL),
(32, 12, 2, NULL, NULL, 50, NULL),
(33, 12, 3, NULL, NULL, 50, NULL),
(34, 12, 3, NULL, NULL, 50, NULL),
(35, 13, 1, NULL, NULL, 50, NULL),
(36, 13, 2, NULL, NULL, 50, NULL),
(37, 13, 3, NULL, NULL, 50, NULL),
(38, 14, 1, NULL, NULL, 50, NULL),
(39, 14, 2, NULL, NULL, 50, NULL),
(40, 14, 3, NULL, NULL, 50, NULL),
(41, 14, 4, NULL, NULL, 10, NULL),
(42, 15, 1, NULL, NULL, 50, NULL),
(43, 15, 2, NULL, NULL, 50, NULL),
(44, 15, 3, NULL, NULL, 50, NULL),
(45, 15, 4, NULL, NULL, 10, NULL),
(46, 16, 1, NULL, NULL, 50, NULL),
(47, 16, 2, NULL, NULL, 50, NULL),
(48, 16, 3, NULL, NULL, 50, NULL),
(49, 17, 1, NULL, NULL, 50, NULL),
(50, 17, 2, NULL, NULL, 50, NULL),
(51, 17, 3, NULL, NULL, 50, NULL),
(52, 17, 4, NULL, NULL, 20, NULL),
(53, 18, 1, NULL, NULL, 50, NULL),
(54, 18, 2, NULL, NULL, 50, NULL),
(55, 18, 3, NULL, NULL, 50, NULL),
(56, 18, 4, NULL, NULL, 20, NULL),
(57, 19, 1, NULL, NULL, 50, NULL),
(58, 19, 2, NULL, NULL, 50, NULL),
(59, 19, 3, NULL, NULL, 50, NULL),
(60, 19, 4, NULL, NULL, 20, NULL),
(61, 20, 1, NULL, NULL, 50, NULL),
(62, 20, 2, NULL, NULL, 50, NULL),
(63, 20, 3, NULL, NULL, 50, NULL),
(64, 21, 1, NULL, NULL, 50, NULL),
(65, 21, 2, NULL, NULL, 50, NULL),
(66, 21, 3, NULL, NULL, 50, NULL),
(67, 21, 4, NULL, NULL, 8, NULL),
(68, 22, 1, NULL, NULL, 50, NULL),
(69, 22, 2, NULL, NULL, 50, NULL),
(70, 22, 3, NULL, NULL, 50, NULL),
(71, 22, 4, NULL, NULL, 20, NULL),
(72, 23, 1, NULL, NULL, 50, NULL),
(73, 23, 2, NULL, NULL, 50, NULL),
(74, 23, 3, NULL, NULL, 50, NULL),
(75, 24, 1, NULL, NULL, 50, NULL),
(76, 24, 2, NULL, NULL, 50, NULL),
(77, 24, 3, NULL, NULL, 50, NULL),
(78, 24, 4, NULL, NULL, 20, NULL),
(79, 25, 1, NULL, NULL, 50, NULL),
(80, 25, 2, NULL, NULL, 50, NULL),
(81, 25, 3, NULL, NULL, 50, NULL),
(82, 25, 4, NULL, NULL, 20, NULL),
(83, 26, 1, NULL, NULL, 50, NULL),
(84, 26, 2, NULL, NULL, 50, NULL),
(85, 26, 3, NULL, NULL, 50, NULL),
(86, 26, 4, NULL, NULL, 10, NULL),
(87, 27, 1, NULL, NULL, 50, NULL),
(88, 27, 2, NULL, NULL, 50, NULL),
(89, 27, 3, NULL, NULL, 50, NULL),
(90, 27, 4, NULL, NULL, 20, NULL),
(91, 28, 1, NULL, NULL, 50, NULL),
(92, 28, 2, NULL, NULL, 50, NULL),
(93, 28, 3, NULL, NULL, 50, NULL),
(94, 28, 4, NULL, NULL, 10, NULL),
(95, 29, 1, NULL, NULL, 50, NULL),
(96, 29, 2, NULL, NULL, 50, NULL),
(97, 29, 3, NULL, NULL, 50, NULL),
(98, 29, 4, NULL, NULL, 10, NULL),
(99, 30, 1, NULL, NULL, 50, NULL),
(100, 30, 2, NULL, NULL, 50, NULL),
(101, 30, 3, NULL, NULL, 50, NULL),
(102, 30, 4, NULL, NULL, 10, NULL),
(103, 31, 1, NULL, NULL, 50, NULL),
(104, 31, 2, NULL, NULL, 50, NULL),
(105, 31, 3, NULL, NULL, 50, NULL),
(106, 31, 4, NULL, NULL, 10, NULL),
(107, 32, 1, NULL, NULL, 50, NULL),
(108, 32, 2, NULL, NULL, 50, NULL),
(109, 32, 3, NULL, NULL, 50, NULL),
(110, 32, 4, NULL, NULL, 10, NULL),
(111, 33, 1, NULL, NULL, 50, NULL),
(112, 33, 2, NULL, NULL, 50, NULL),
(113, 33, 3, NULL, NULL, 50, NULL),
(114, 33, 4, NULL, NULL, 10, NULL),
(115, 34, 1, NULL, '2023-05-03 15:31:45', 32, NULL),
(116, 34, 2, NULL, NULL, 50, NULL),
(117, 34, 3, NULL, NULL, 45, NULL),
(118, 34, 4, NULL, NULL, 20, NULL),
(119, 35, 1, NULL, NULL, 50, NULL),
(120, 35, 2, NULL, NULL, 35, NULL),
(121, 35, 3, NULL, NULL, 50, NULL),
(122, 35, 4, NULL, NULL, 10, NULL),
(123, 36, 1, NULL, NULL, 50, NULL),
(124, 36, 2, NULL, NULL, 50, NULL),
(125, 36, 3, NULL, NULL, 50, NULL),
(126, 36, 4, NULL, NULL, 10, NULL),
(127, 37, 1, NULL, NULL, 50, NULL),
(128, 37, 2, NULL, NULL, 47, NULL),
(129, 37, 3, NULL, NULL, 50, NULL),
(130, 37, 4, NULL, NULL, 10, NULL),
(131, 38, 1, NULL, NULL, 50, NULL),
(132, 38, 2, NULL, NULL, 50, NULL),
(133, 38, 3, NULL, NULL, 50, NULL),
(134, 38, 4, NULL, NULL, 10, NULL),
(135, 39, 1, NULL, NULL, 50, NULL),
(136, 39, 2, NULL, NULL, 50, NULL),
(137, 39, 3, NULL, NULL, 50, NULL),
(138, 39, 4, NULL, NULL, 30, NULL),
(139, 40, 1, NULL, NULL, 50, NULL),
(140, 40, 2, NULL, NULL, 50, NULL),
(141, 40, 3, NULL, NULL, 50, NULL),
(142, 40, 4, NULL, NULL, 20, NULL),
(143, 41, 1, NULL, NULL, 50, NULL),
(144, 41, 2, NULL, NULL, 50, NULL),
(145, 41, 3, NULL, NULL, 50, NULL),
(146, 41, 4, NULL, NULL, 10, NULL),
(147, 43, 1, NULL, NULL, 50, NULL),
(148, 43, 2, NULL, NULL, 50, NULL),
(149, 44, 2, NULL, NULL, 50, NULL),
(150, 44, 3, NULL, NULL, 50, NULL),
(151, 44, 4, NULL, NULL, 10, NULL),
(152, 45, 1, NULL, NULL, 50, NULL),
(153, 45, 2, NULL, NULL, 50, NULL),
(154, 45, 3, NULL, NULL, 46, NULL),
(155, 45, 4, NULL, NULL, 10, NULL),
(156, 46, 1, NULL, NULL, 50, NULL),
(157, 46, 2, NULL, NULL, 50, NULL),
(158, 46, 3, NULL, NULL, 50, NULL),
(159, 46, 4, NULL, NULL, 10, NULL),
(160, 47, 2, NULL, NULL, 50, NULL),
(161, 47, 3, NULL, NULL, 50, NULL),
(162, 47, 4, NULL, NULL, 10, NULL),
(163, 48, 1, NULL, NULL, 50, NULL),
(164, 48, 2, NULL, NULL, 50, NULL),
(165, 48, 3, NULL, NULL, 30, NULL),
(166, 49, 1, NULL, NULL, 50, NULL),
(167, 49, 2, NULL, NULL, 50, NULL),
(168, 49, 3, NULL, NULL, 50, NULL),
(169, 49, 4, NULL, NULL, 10, NULL),
(170, 50, 1, NULL, NULL, 50, NULL),
(171, 50, 2, NULL, NULL, 50, NULL),
(172, 50, 3, NULL, NULL, 50, NULL),
(173, 50, 4, NULL, NULL, 10, NULL),
(174, 51, 1, NULL, NULL, 50, NULL),
(175, 51, 2, NULL, NULL, 50, NULL),
(176, 52, 1, NULL, NULL, 50, NULL),
(177, 52, 2, NULL, NULL, 50, NULL),
(178, 52, 3, NULL, NULL, 50, NULL),
(179, 53, 1, NULL, NULL, 50, NULL),
(180, 53, 2, NULL, NULL, 50, NULL),
(181, 53, 3, NULL, NULL, 50, NULL),
(182, 54, 1, NULL, NULL, 50, NULL),
(183, 54, 2, NULL, NULL, 50, NULL),
(184, 54, 3, NULL, NULL, 50, NULL),
(185, 54, 4, NULL, NULL, 10, NULL),
(186, 55, 1, NULL, NULL, 50, NULL),
(187, 55, 2, NULL, NULL, 49, NULL),
(188, 55, 3, NULL, NULL, 50, NULL),
(189, 56, 1, NULL, NULL, 50, NULL),
(190, 56, 2, NULL, NULL, 50, NULL),
(191, 56, 3, NULL, NULL, 50, NULL),
(192, 57, 1, NULL, NULL, 50, NULL),
(193, 57, 2, NULL, NULL, 50, NULL),
(194, 57, 3, NULL, NULL, 50, NULL),
(195, 57, 4, NULL, NULL, 10, NULL),
(196, 58, 1, NULL, NULL, 50, NULL),
(197, 58, 2, NULL, NULL, 50, NULL),
(198, 58, 3, NULL, NULL, 50, NULL),
(199, 58, 4, NULL, NULL, 10, NULL),
(200, 59, 1, NULL, NULL, 50, NULL),
(201, 59, 2, NULL, NULL, 50, NULL),
(202, 59, 3, NULL, NULL, 50, NULL),
(203, 60, 1, NULL, NULL, 50, NULL),
(204, 60, 2, NULL, NULL, 50, NULL),
(205, 60, 3, NULL, NULL, 50, NULL),
(206, 60, 4, NULL, NULL, 10, NULL),
(207, 61, 1, NULL, NULL, 30, NULL),
(208, 61, 2, NULL, NULL, 30, NULL),
(209, 61, 3, NULL, NULL, 30, NULL),
(210, 62, 1, NULL, NULL, 30, NULL),
(211, 61, 4, NULL, NULL, 30, NULL),
(212, 62, 2, NULL, NULL, 30, NULL),
(213, 62, 3, NULL, NULL, 30, NULL),
(214, 63, 1, NULL, NULL, 30, NULL),
(215, 63, 2, NULL, NULL, 30, NULL),
(216, 63, 3, NULL, NULL, 30, NULL),
(217, 63, 4, NULL, NULL, 20, NULL),
(218, 64, 1, NULL, NULL, 40, NULL),
(219, 64, 2, NULL, NULL, 40, NULL),
(220, 64, 3, NULL, NULL, 40, NULL),
(221, 65, 1, NULL, NULL, 37, NULL),
(222, 65, 2, NULL, NULL, 40, NULL),
(223, 65, 3, NULL, NULL, 40, NULL),
(224, 66, 1, NULL, NULL, 40, NULL),
(225, 66, 2, NULL, NULL, 40, NULL),
(226, 66, 3, NULL, NULL, 40, NULL),
(227, 66, 4, NULL, NULL, 5, NULL),
(228, 67, 2, NULL, NULL, 50, NULL),
(229, 67, 3, NULL, NULL, 50, NULL),
(230, 67, 1, NULL, NULL, 50, NULL),
(231, 68, 1, NULL, NULL, 50, NULL),
(232, 68, 2, NULL, NULL, 50, NULL),
(233, 68, 3, NULL, NULL, 50, NULL),
(234, 69, 1, NULL, NULL, 50, NULL),
(235, 69, 2, NULL, NULL, 50, NULL),
(236, 69, 3, NULL, NULL, 50, NULL),
(237, 70, 1, NULL, NULL, 50, NULL),
(238, 70, 2, NULL, NULL, 50, NULL),
(239, 70, 3, NULL, NULL, 50, NULL),
(240, 71, 1, NULL, NULL, 50, NULL),
(241, 71, 2, NULL, NULL, 50, NULL),
(242, 70, 4, NULL, '2023-05-02 08:18:06', 48, '2023-05-02 08:18:06'),
(243, 71, 3, NULL, NULL, 50, NULL),
(244, 72, 1, NULL, NULL, 50, NULL),
(245, 72, 2, NULL, NULL, 50, NULL),
(246, 72, 3, NULL, NULL, 50, NULL),
(247, 73, 1, NULL, NULL, 50, NULL),
(248, 73, 2, NULL, NULL, 50, NULL),
(249, 73, 3, NULL, NULL, 50, NULL),
(250, 74, 1, NULL, NULL, 50, NULL),
(251, 74, 2, NULL, NULL, 50, NULL),
(252, 74, 3, NULL, NULL, 50, NULL),
(253, 75, 1, NULL, NULL, 50, NULL),
(254, 75, 2, NULL, NULL, 50, NULL),
(255, 75, 3, NULL, NULL, 50, NULL),
(256, 76, 1, NULL, NULL, 50, NULL),
(257, 76, 2, NULL, NULL, 50, NULL),
(258, 76, 3, NULL, NULL, 50, NULL),
(259, 77, 1, NULL, NULL, 50, NULL),
(260, 77, 2, NULL, NULL, 50, NULL),
(261, 77, 3, NULL, NULL, 50, NULL),
(262, 77, 4, NULL, NULL, 10, NULL),
(263, 78, 1, NULL, NULL, 50, NULL),
(264, 78, 2, NULL, NULL, 50, NULL),
(265, 78, 3, NULL, NULL, 50, NULL),
(266, 79, 1, NULL, NULL, 50, NULL),
(267, 79, 2, NULL, NULL, 50, NULL),
(268, 79, 3, NULL, NULL, 50, NULL),
(269, 80, 1, NULL, NULL, 50, NULL),
(270, 80, 2, NULL, NULL, 50, NULL),
(271, 80, 3, NULL, NULL, 50, NULL),
(272, 81, 1, NULL, NULL, 50, NULL),
(273, 81, 2, NULL, NULL, 50, NULL),
(274, 81, 3, NULL, NULL, 50, NULL),
(275, 82, 1, NULL, NULL, 50, NULL),
(276, 82, 2, NULL, NULL, 50, NULL),
(277, 82, 3, NULL, NULL, 50, NULL),
(278, 83, 1, NULL, NULL, 50, NULL),
(279, 83, 2, NULL, NULL, 50, NULL),
(280, 83, 2, NULL, '2023-05-02 08:32:19', 50, '2023-05-02 08:32:19'),
(281, 83, 3, NULL, NULL, 50, NULL),
(282, 84, 1, NULL, NULL, 50, NULL),
(283, 84, 2, NULL, NULL, 50, NULL),
(284, 84, 3, NULL, NULL, 50, NULL),
(285, 85, 1, NULL, NULL, 50, NULL),
(286, 85, 2, NULL, NULL, 50, NULL),
(287, 85, 3, NULL, NULL, 50, NULL),
(288, 86, 1, NULL, NULL, 50, NULL),
(289, 86, 2, NULL, NULL, 50, NULL),
(290, 86, 3, NULL, NULL, 50, NULL),
(291, 87, 1, NULL, NULL, 50, NULL),
(292, 87, 2, NULL, NULL, 50, NULL),
(293, 87, 3, NULL, NULL, 50, NULL),
(294, 88, 1, NULL, NULL, 50, NULL),
(295, 88, 2, NULL, NULL, 48, NULL),
(296, 88, 3, NULL, NULL, 50, NULL),
(297, 89, 1, NULL, NULL, 50, NULL),
(298, 89, 2, NULL, NULL, 50, NULL),
(299, 89, 3, NULL, NULL, 50, NULL),
(300, 90, 1, NULL, NULL, 50, NULL),
(301, 90, 2, NULL, NULL, 50, NULL),
(302, 90, 3, NULL, NULL, 50, NULL),
(303, 91, 1, NULL, NULL, 50, NULL),
(304, 91, 2, NULL, NULL, 50, NULL),
(305, 91, 3, NULL, NULL, 50, NULL),
(306, 92, 1, NULL, NULL, 50, NULL),
(307, 92, 2, NULL, NULL, 50, NULL),
(308, 92, 3, NULL, NULL, 50, NULL),
(309, 93, 1, NULL, NULL, 50, NULL),
(310, 93, 2, NULL, NULL, 50, NULL),
(311, 93, 3, NULL, NULL, 50, NULL),
(312, 94, 1, NULL, NULL, 50, NULL),
(313, 94, 2, NULL, NULL, 50, NULL),
(314, 94, 3, NULL, NULL, 50, NULL),
(315, 95, 1, NULL, NULL, 50, NULL),
(316, 95, 2, NULL, NULL, 50, NULL),
(317, 95, 3, NULL, NULL, 50, NULL),
(318, 96, 1, NULL, NULL, 50, NULL),
(319, 96, 2, NULL, NULL, 50, NULL),
(320, 96, 3, NULL, NULL, 50, NULL),
(321, 99, 1, NULL, NULL, 50, NULL),
(322, 99, 2, NULL, NULL, 50, NULL),
(323, 99, 3, NULL, NULL, 49, NULL),
(324, 100, 1, NULL, NULL, 50, NULL),
(325, 100, 2, NULL, NULL, 50, NULL),
(326, 100, 3, NULL, NULL, 50, NULL),
(327, 100, 4, NULL, NULL, 10, NULL),
(328, 101, 1, NULL, NULL, 50, NULL),
(329, 101, 2, NULL, NULL, 50, NULL),
(330, 101, 3, NULL, NULL, 50, NULL),
(331, 102, 1, NULL, NULL, 50, NULL),
(332, 102, 2, NULL, NULL, 50, NULL),
(333, 102, 3, NULL, NULL, 50, NULL),
(334, 103, 1, NULL, NULL, 50, NULL),
(335, 103, 2, NULL, NULL, 50, NULL),
(336, 103, 3, NULL, NULL, 49, NULL),
(337, 104, 1, NULL, NULL, 50, NULL),
(338, 104, 2, NULL, NULL, 50, NULL),
(339, 104, 3, NULL, NULL, 50, NULL),
(340, 105, 1, NULL, NULL, 50, NULL),
(341, 105, 2, NULL, NULL, 50, NULL),
(342, 105, 3, NULL, NULL, 50, NULL),
(343, 106, 1, NULL, NULL, 50, NULL),
(344, 106, 2, NULL, NULL, 49, NULL),
(345, 106, 3, NULL, NULL, 50, NULL),
(346, 107, 1, NULL, NULL, 50, NULL),
(347, 107, 2, NULL, NULL, 50, NULL),
(348, 107, 3, NULL, NULL, 50, NULL),
(349, 108, 1, NULL, NULL, 50, NULL),
(350, 108, 2, NULL, NULL, 50, NULL),
(351, 108, 3, NULL, NULL, 49, NULL),
(352, 109, 1, NULL, NULL, 50, NULL),
(353, 109, 2, NULL, NULL, 50, NULL),
(354, 109, 3, NULL, NULL, 50, NULL),
(355, 110, 1, NULL, NULL, 50, NULL),
(356, 110, 2, NULL, NULL, 50, NULL),
(357, 110, 3, NULL, NULL, 50, NULL),
(358, 111, 1, NULL, NULL, 50, NULL),
(359, 111, 2, NULL, NULL, 50, NULL),
(360, 111, 3, NULL, NULL, 50, NULL),
(361, 111, 4, NULL, NULL, 10, NULL),
(362, 112, 1, NULL, NULL, 49, NULL),
(363, 112, 2, NULL, NULL, 50, NULL),
(364, 112, 3, NULL, NULL, 50, NULL),
(365, 112, 4, NULL, NULL, 20, NULL),
(366, 113, 1, NULL, NULL, 50, NULL),
(367, 113, 2, NULL, NULL, 50, NULL),
(368, 113, 3, NULL, NULL, 50, NULL),
(369, 114, 1, NULL, NULL, 50, NULL),
(370, 114, 2, NULL, NULL, 50, NULL),
(371, 114, 3, NULL, NULL, 50, NULL),
(372, 115, 1, NULL, NULL, 50, NULL),
(373, 115, 2, NULL, NULL, 50, NULL),
(374, 115, 3, NULL, NULL, 50, NULL),
(375, 115, 4, NULL, NULL, 30, NULL),
(376, 116, 1, NULL, NULL, 50, NULL),
(377, 116, 2, NULL, NULL, 50, NULL),
(378, 116, 3, NULL, NULL, 50, NULL),
(379, 116, 4, NULL, NULL, 29, NULL),
(380, 117, 1, NULL, NULL, 50, NULL),
(381, 117, 2, NULL, NULL, 50, NULL),
(382, 117, 3, NULL, NULL, 50, NULL),
(383, 117, 4, NULL, NULL, 20, NULL),
(384, 118, 1, NULL, NULL, 47, NULL),
(385, 118, 2, NULL, NULL, 50, NULL),
(386, 118, 3, NULL, NULL, 50, NULL),
(387, 119, 1, NULL, NULL, 50, NULL),
(388, 119, 2, NULL, NULL, 50, NULL),
(389, 119, 3, NULL, NULL, 50, NULL),
(390, 120, 1, NULL, NULL, 50, NULL),
(391, 120, 2, NULL, NULL, 50, NULL),
(392, 120, 3, NULL, NULL, 50, NULL),
(393, 119, 4, NULL, NULL, 30, NULL),
(394, 118, 4, NULL, NULL, 20, NULL),
(395, 120, 4, NULL, NULL, 10, NULL),
(396, 121, 1, NULL, NULL, 50, NULL),
(397, 121, 2, NULL, NULL, 49, NULL),
(398, 121, 3, NULL, NULL, 50, NULL),
(399, 122, 1, NULL, '2023-05-03 09:13:55', 50, '2023-05-03 09:13:55'),
(400, 122, 1, NULL, NULL, 50, NULL),
(401, 123, 1, NULL, NULL, 50, NULL),
(402, 123, 2, NULL, NULL, 49, NULL),
(403, 123, 3, NULL, NULL, 50, NULL),
(404, 123, 4, NULL, NULL, 10, NULL),
(405, 124, 1, NULL, NULL, 49, NULL),
(406, 124, 2, NULL, NULL, 50, NULL),
(407, 124, 3, NULL, NULL, 50, NULL),
(408, 124, 4, NULL, NULL, 5, NULL),
(409, 125, 1, NULL, NULL, 46, NULL),
(410, 125, 2, NULL, NULL, 50, NULL),
(411, 125, 3, NULL, NULL, 50, NULL),
(412, 125, 4, NULL, NULL, 20, NULL),
(413, 97, 1, NULL, NULL, 50, NULL),
(414, 97, 2, NULL, NULL, 48, NULL),
(415, 126, 1, NULL, NULL, 38, NULL),
(416, 126, 3, NULL, NULL, 10, NULL),
(417, 128, 1, NULL, NULL, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `user_id`, `product_id`, `rating`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 41, 4, 'Sản phẩm rất đẹp, chất lượng, thời gian giao hàng nhanh, đóng gói kỹ càng', '2023-11-27 10:05:42', '2023-11-27 10:05:42', NULL),
(2, 2, 37, 3, 'Sản phẩm hơi tệ, thời gian giao hàng nhanh', '2023-11-27 10:07:49', '2023-11-27 10:07:49', NULL),
(3, 2, 28, 5, 'Sản phẩm rất đẹp. Giao hàng nhanh, đóng gói kĩ càng.', '2023-11-27 10:35:36', '2023-11-27 10:35:36', NULL),
(4, 2, 8, 1, 'Sản phẩm không tốt, giao hàng lâu', '2023-11-27 11:49:08', '2023-11-27 11:49:08', NULL),
(5, 2, 12, 5, 'Sản phẩm cực tốt, giao hàng nhanh', '2023-11-27 11:49:40', '2023-11-27 11:49:40', NULL),
(6, 2, 15, 3, 'Sản phẩm khá tốt', '2023-11-27 11:52:00', '2023-11-27 11:52:00', NULL),
(7, 2, 18, 2, 'Sản phẩm không tốt, giao hàng lâu', '2023-11-27 11:52:28', '2023-11-27 11:52:28', NULL),
(8, 2, 13, 5, 'Sản phẩm cực tốt, giao hàng nhanh', '2023-11-27 11:52:47', '2023-11-27 11:52:47', NULL),
(9, 2, 22, 4, 'Sản phẩm khá tốt', '2023-11-27 11:53:22', '2023-11-27 11:53:22', NULL),
(10, 2, 30, 5, 'Sản phẩm cực tốt, giao hàng nhanh', '2023-11-27 11:54:01', '2023-11-27 11:54:01', NULL),
(11, 2, 32, 1, 'Sản phẩm không tốt, giao hàng lâu', '2023-11-27 11:54:23', '2023-11-27 11:54:23', NULL),
(12, 2, 24, 5, 'Sản phẩm cực tốt, giao hàng nhanh', '2023-11-27 11:54:39', '2023-11-27 11:54:39', NULL),
(13, 2, 40, 5, 'Sản phẩm cực tốt, giao hàng nhanh', '2023-11-27 11:59:19', '2023-11-27 11:59:19', NULL),
(14, 2, 35, 2, 'Sản phẩm không tốt, giao hàng lâu', '2023-11-27 11:59:32', '2023-11-27 11:59:32', NULL),
(15, 2, 39, 3, 'Sản phẩm khá tốt', '2023-11-27 11:59:44', '2023-11-27 11:59:44', NULL),
(16, 2, 38, 4, 'Sản phẩm cực tốt, giao hàng nhanh', '2023-11-27 11:59:57', '2023-11-27 11:59:57', NULL),
(17, 2, 33, 5, 'Sản phẩm cực tốt, giao hàng nhanh', '2023-11-27 12:00:10', '2023-11-27 12:00:10', NULL),
(18, 2, 34, 5, 'Sản phẩm cực tốt, giao hàng nhanh', '2023-11-27 12:00:23', '2023-11-27 12:00:23', NULL),
(19, 2, 31, 4, 'Sản phẩm khá tốt', '2023-11-27 12:00:34', '2023-11-27 12:00:34', NULL),
(20, 2, 36, 5, 'Sản phẩm cực tốt, giao hàng nhanh', '2023-11-27 12:00:46', '2023-11-27 12:00:46', NULL),
(21, 9, 12, 5, 'sản phẩm đánh giá', '2023-11-27 01:17:40', '2023-11-27 01:17:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Quản trị viên'),
(2, 'Nhân Viên'),
(3, 'Khách hàng');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) NOT NULL,
  `name` char(100) NOT NULL,
  `email` char(100) NOT NULL,
  `address` char(255) NOT NULL,
  `phone_number` char(20) NOT NULL,
  `maintenance` int(11) NOT NULL,
  `notification` text NOT NULL,
  `introduction` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `logo`, `name`, `email`, `address`, `phone_number`, `maintenance`, `notification`, `introduction`, `created_at`, `updated_at`) VALUES
(1, 'logo.png', 'WebWebShop', 'WebWebShop@gmail.com', 'P5, Thành phố Trà vinh', '123125934093', 2, '<b>WEBSITE tạm thời bảo trì để nâng cấp xin  quay lại sau</b>', '<h3 style=\"text-align: center; \">\r\n                            <b>GIỚI THIỆU VỀ WEBWEBSHOP</b></h3><h5><br></h5><h5>Chào mừng bạn đến với WebWebShop - điểm đến lý tưởng cho những người đam mê và đang tìm kiếm sự hoàn hảo trong việc trang trí không gian sống của mình! Tại đây, chúng tôi tự hào giới thiệu một bộ sưu tập đa dạng và phong phú về đồ nội thất, từ những bộ sofa sang trọng đến những chiếc bàn ăn tinh tế.</h5><h5><br></h5><h5>WebWebShop cam kết mang đến trải nghiệm mua sắm trực tuyến tốt nhất, với chất lượng sản phẩm hàng đầu và dịch vụ khách hàng xuất sắc. Với đội ngũ thiết kế chuyên nghiệp, chúng tôi không chỉ cung cấp những sản phẩm độc đáo và hiện đại mà còn luôn cập nhật xu hướng mới nhất trong ngành nội thất.</h5><h5><br></h5><h5>Hãy để WebWebShop là người bạn đồng hành trong việc biến đổi không gian sống của bạn thành một nơi ấm cúng và sang trọng. Bạn sẽ khám phá được không gian sống của mình với sự độc đáo và phản ánh đẳng cấp. Hãy ghé thăm website của chúng tôi ngay hôm nay và khám phá bí mật để tạo nên không gian sống mơ ước của bạn!</h5>', NULL, '2023-11-26 05:22:29');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'To', NULL, '2023-11-26 05:37:01', NULL),
(2, 'Nhỏ', NULL, '2023-11-26 05:37:07', NULL),
(3, 'Vừa', NULL, '2023-11-26 05:37:13', NULL),
(4, 'Custom', NULL, '2023-11-26 05:37:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone_number` varchar(255) NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `disable_reason` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `email_verified_at`, `phone_number`, `role_id`, `active`, `disable_reason`, `created_by`, `updated_by`, `deleted_by`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2023-04-28 04:29:18', '0000000000', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Nguyễn Nhất sang', 'sang@gmail.com', '$2y$10$Q8XcfyypiOp348/xjPVxLOVpuC00zJLgF4D5LXMLF68ymKCa.6Ho.', '2023-05-02 03:25:18', '1234567890', 3, 1, NULL, NULL, NULL, NULL, NULL, '2023-11-24 03:24:23', '2023-11-24 03:25:18', NULL),
(3, 'Sophat', 'sophat@gmail.com', '$2y$10$X2oo0TcQ1rSxRdJwFFLRCuTRD2Q/KUY4gwOa/heJtYPdMwriWe72e', '2023-05-18 10:11:58', '845 642-4326', 2, 1, NULL, 1, 1, NULL, NULL, '2023-11-24 10:11:06', '2023-11-24 15:56:08', NULL),
(9, 'Nguyễn trọng tín', 'tintv@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2023-05-04 01:10:50', '0845151117', 3, 1, NULL, NULL, NULL, 1, NULL, '2023-11-24 01:10:39', '2023-11-26 05:19:00', '2023-11-26 05:19:00'),
(10, 'test1', 'test1@gmail.com', '$2y$10$ahO52/FEOOecsWvnpcI9fO3Heu3kMNnyiIe5Pd4T9NdMh36Qsy7W.', '2023-09-21 12:55:34', '0845151117', 3, 1, NULL, NULL, NULL, 1, NULL, '2023-11-24 12:47:43', '2023-11-26 05:18:57', '2023-11-26 05:18:57'),
(11, 'test2', 'test2@gmail.com', '$2y$10$AqRDBZgakr6/En4YhwG5AeILGcPnRyqMJ4ZMFqTTIpXjQktoTTfL2', NULL, '0845151117', 3, 1, NULL, NULL, NULL, NULL, NULL, '2023-11-24 13:39:27', '2023-11-24 13:39:27', NULL),
(12, 'Lâm Chí Nhân', 'tncoptimus@gmail.com', '$2y$10$1Ip/hUbbVcLj1VruhxKejOO5rYED9QucHM8IHmTR8NwLknrV334B6', '2023-11-07 11:03:32', '0775874390', 3, 1, NULL, NULL, NULL, NULL, NULL, '2023-11-25 11:02:50', '2023-11-25 11:03:32', NULL),
(13, 'Nhựt Ninh', 'ninh123@gmail.com', '$2y$10$Nqa8hBqBudgX5TaI0Y3fB.NgjoyTiM5CQ.0bWnEVFJCLFCx.ts8h.', NULL, '098 284-9232', 2, 1, NULL, 1, NULL, NULL, NULL, '2023-12-20 11:08:48', '2023-12-20 11:08:48', NULL),
(14, 'phan van a', 'phanvana@gmail.com', '$2y$10$AC.m/bmPE9YorUUms78olew1dq3oo3ZXsCUMKpyHr5pW0rRKEr092', '2023-12-25 10:29:59', '0938364734', 3, 1, NULL, NULL, NULL, NULL, NULL, '2023-12-25 10:29:59', '2023-12-25 10:29:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_verifies`
--

CREATE TABLE `user_verifies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `email_verify` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_verifies`
--

INSERT INTO `user_verifies` (`id`, `user_id`, `token`, `expires_at`, `email_verify`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 3, 'A8TeoYsNWoLXolZ3g7uItst6cGXGdoaBxOnJXC3oCboNbc4pEwmmJJefgJuUhNwW', '2023-11-25 11:11:06', NULL, '2023-11-25 10:11:06', '2023-11-25 10:11:06', NULL),
(6, 7, 'i7cgmFkliCXdWeMYmpVtZihzyZcBy5V2ZBcI6VVbWkdgvNSbEyHpdmpNqlGm78s9', '2023-11-25 16:54:10', NULL, '2023-11-25 15:54:10', '2023-11-25 15:54:10', NULL),
(7, 8, 'aDYaSWNOs8RsfngYfP01kHpnGQuecCgyizcPKBwnPLskgtUqpXunkd0VOdadiSay', '2023-11-25 16:55:09', NULL, '2023-11-25 15:55:09', '2023-11-25 15:55:09', NULL),
(10, 11, 'aLR0fHF2jlm3r2Us06NlwXAZ2ju1uxYiWJXCYvFE0Uwp0V0SxZ66q4myE7XdOMy5', '2023-11-25 14:39:27', NULL, '2023-11-25 13:39:27', '2023-11-25 13:39:27', NULL),
(12, 12, 'K6WWKC8y7mxoIMOVqPMEQ4DfPeDrSQvoxorQrQbzRGtO0CeQg6ehx9SlCKoGHIL6', '2023-12-05 15:28:04', NULL, '2023-12-05 14:28:04', '2023-12-05 14:28:04', NULL),
(13, 13, 'ZAP2BUHOxH18dJNGoZaI3jYM3nLUmXKQX1OOFk7lYCpjVuarpy7T7HNXLV9J82Uv', '2023-12-20 12:08:48', NULL, '2023-12-20 11:08:48', '2023-12-20 11:08:48', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

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
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_size_id_foreign` (`product_size_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `products_color`
--
ALTER TABLE `products_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_color_color_id_foreign` (`color_id`),
  ADD KEY `products_color_product_id_foreign` (`product_id`);

--
-- Indexes for table `products_size`
--
ALTER TABLE `products_size`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_size_product_color_id_foreign` (`product_color_id`),
  ADD KEY `products_size_size_id_foreign` (`size_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_user_id_foreign` (`user_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_verifies`
--
ALTER TABLE `user_verifies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1704011897630;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `products_color`
--
ALTER TABLE `products_color`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `products_size`
--
ALTER TABLE `products_size`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=418;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_verifies`
--
ALTER TABLE `user_verifies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_product_size_id_foreign` FOREIGN KEY (`product_size_id`) REFERENCES `products_size` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `products_color`
--
ALTER TABLE `products_color`
  ADD CONSTRAINT `products_color_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`),
  ADD CONSTRAINT `products_color_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products_size`
--
ALTER TABLE `products_size`
  ADD CONSTRAINT `products_size_product_color_id_foreign` FOREIGN KEY (`product_color_id`) REFERENCES `products_color` (`id`),
  ADD CONSTRAINT `products_size_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`);

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
