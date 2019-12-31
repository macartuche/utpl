-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 31, 2019 at 03:45 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `ecommerceDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `products_id`, `product_name`, `product_code`, `product_color`, `size`, `price`, `quantity`, `user_email`, `session_id`, `created_at`, `updated_at`) VALUES
(41, 31, 'House', 'SKU-House2', 'White and Brown', '10*10', 20.00, 2, 'weshare@gmail.com', 'bKnMoW6lH0eA6ciYTU47tgeayw5CFUzBkjkBb3F5', '2018-12-06 18:17:37', '2018-12-06 18:17:37'),
(42, 34, 'Lenovo ThinkPad', 'SKU-Lenovo X1', 'Black', '15 inch', 10.00, 2, 'weshare@gmail.com', 'bKnMoW6lH0eA6ciYTU47tgeayw5CFUzBkjkBb3F5', '2018-12-06 18:18:26', '2018-12-06 18:18:26'),
(40, 30, 'Link House New LC2', 'SKU-Link House1', 'Gray', 'Small', 10.00, 5, 'weshare@gmail.com', 'SFoV6rkDUv7y5F81nKOo5H3u0ERK3EYkcBQhUrcm', '2018-12-06 17:50:30', '2018-12-06 17:50:30'),
(39, 31, 'House', 'SKU-House1', 'White and Brown', '5*20', 25.00, 4, 'weshare@gmail.com', 'SFoV6rkDUv7y5F81nKOo5H3u0ERK3EYkcBQhUrcm', '2018-12-06 17:49:50', '2018-12-06 17:49:50'),
(36, 33, 'Cole Haan', 'SKU-Haan1', 'Brown', '25', 12.00, 1, 'weshare@gmail.com', 'OrHCEFHcACdGNXet3m2jVbzlJS0VybkkeknXXilx', '2018-12-06 02:18:10', '2018-12-06 02:18:10'),
(37, 32, 'Vionic Shoes Brand', 'SKU-Vionic3', 'All Colors', '30', 20.00, 1, 'weshare@gmail.com', 'OrHCEFHcACdGNXet3m2jVbzlJS0VybkkeknXXilx', '2018-12-06 02:30:33', '2018-12-06 02:30:33'),
(43, 35, 'Cloths', 'SKU-Red', 'Black', 'S', 2.00, 5, 'weshare@gmail.com', 'bKnMoW6lH0eA6ciYTU47tgeayw5CFUzBkjkBb3F5', '2018-12-06 18:18:31', '2018-12-06 18:18:31'),
(45, 28, 'Lexus Rx 330', 'SKU-Lexus Red', 'White', 'Size Red', 12.00, 12, 'weshare@gmail.com', 'OzYtEO34gC5RIEM5FksLTkVdN3chngeYGPueqKGt', '2019-12-31 07:51:36', '2019-12-31 07:51:36');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `description`, `url`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(12, 0, 'Car', 'Car Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:32:33', '2018-11-16 02:00:00'),
(10, 0, 'House', 'House Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:31:29', '2018-11-16 02:05:53'),
(11, 0, 'Shoes', 'Shoes Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:32:14', '2018-11-16 02:07:15'),
(13, 0, 'Computer', 'Computer Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:33:26', '2018-11-16 02:05:43'),
(14, 0, 'Cloths', 'Cloths Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:34:31', '2018-11-16 02:05:18'),
(15, 12, 'Toyota', 'Toyota Sub Category of Car', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:35:08', '2018-11-16 01:54:49'),
(16, 10, 'Link House', 'Link House Sub Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:56:56', '2018-11-16 02:07:05'),
(17, 11, 'Man Shoes', 'Man Shoes Sub Category of Shoes', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:58:13', '2018-11-16 01:53:44'),
(25, NULL, 'Computadoras', '<p>asdfasdfasdf</p>', 'adsfasdf', 1, 'asdfasdf', '2019-12-31 07:25:45', '2019-12-31 07:25:45');

-- --------------------------------------------------------

--
-- Table structure for table `cb_menus`
--

CREATE TABLE `cb_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_number` int(11) NOT NULL DEFAULT '0',
  `cb_modules_id` int(11) DEFAULT NULL,
  `parent_cb_menus_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cb_menus`
--

INSERT INTO `cb_menus` (`id`, `name`, `icon`, `path`, `type`, `sort_number`, `cb_modules_id`, `parent_cb_menus_id`) VALUES
(9, 'Galeria de productos', 'fa fa-ambulance', NULL, 'module', 3, 7, NULL),
(10, 'Productos', 'fa fa-ambulance', NULL, 'module', 1, 5, NULL),
(13, 'Categorías', 'fa fa-bicycle', NULL, 'module', 0, 9, NULL),
(20, 'Direccion de entrega', NULL, NULL, 'module', 0, 13, NULL),
(21, 'Cupones', NULL, NULL, 'module', 0, 14, NULL),
(23, 'Pedidos', NULL, NULL, 'module', 0, 15, NULL),
(25, 'Usuarios', NULL, NULL, 'module', 0, 16, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cb_modules`
--

CREATE TABLE `cb_modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_column_build` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cb_modules`
--

INSERT INTO `cb_modules` (`id`, `name`, `icon`, `table_name`, `controller`, `last_column_build`) VALUES
(5, 'Productos', 'fa fa-bars', 'products', 'AdminProductosController', '[{\"column_label\":\"Categor\\u00eda\",\"column_field\":\"categories_id\",\"column_type\":\"select_table\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":\"categories\",\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":\"id\",\"column_option_display\":\"name\",\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[{\"column\":\"id\",\"primary_key\":true,\"display\":false},{\"column\":\"parent_id\",\"primary_key\":false,\"display\":false},{\"column\":\"name\",\"primary_key\":false,\"display\":true},{\"column\":\"description\",\"primary_key\":false,\"display\":false},{\"column\":\"url\",\"primary_key\":false,\"display\":false},{\"column\":\"status\",\"primary_key\":false,\"display\":false},{\"column\":\"remember_token\",\"primary_key\":false,\"display\":false},{\"column\":\"created_at\",\"primary_key\":false,\"display\":false},{\"column\":\"updated_at\",\"primary_key\":false,\"display\":false}]},{\"column_label\":\"nombre\",\"column_field\":\"p_name\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"C\\u00f3digo\",\"column_field\":\"p_code\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"color\",\"column_field\":\"p_color\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Descripci\\u00f3n\",\"column_field\":\"description\",\"column_type\":\"wysiwyg\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"precio\",\"column_field\":\"price\",\"column_type\":\"money\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Image\",\"column_field\":\"image\",\"column_type\":\"file\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Created At\",\"column_field\":\"created_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Updated At\",\"column_field\":\"updated_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]}]'),
(7, 'Galeria de productos', 'fa fa-cc-jcb', 'tblgallery', 'AdminGaleriaDeProductosController', '[{\"column_label\":\"Producto\",\"column_field\":\"products_id\",\"column_type\":\"select_table\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":\"products\",\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":\"id\",\"column_option_display\":\"p_name\",\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[{\"column\":\"id\",\"primary_key\":true,\"display\":false},{\"column\":\"categories_id\",\"primary_key\":false,\"display\":false},{\"column\":\"p_name\",\"primary_key\":false,\"display\":true},{\"column\":\"p_code\",\"primary_key\":false,\"display\":false},{\"column\":\"p_color\",\"primary_key\":false,\"display\":false},{\"column\":\"description\",\"primary_key\":false,\"display\":false},{\"column\":\"price\",\"primary_key\":false,\"display\":false},{\"column\":\"image\",\"primary_key\":false,\"display\":false},{\"column\":\"created_at\",\"primary_key\":false,\"display\":false},{\"column\":\"updated_at\",\"primary_key\":false,\"display\":false}]},{\"column_label\":\"Imagen\",\"column_field\":\"image\",\"column_type\":\"image\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Created At\",\"column_field\":\"created_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Updated At\",\"column_field\":\"updated_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]}]'),
(9, 'Categorias', 'fa fa-cc-jcb', 'categories', 'AdminCategoriasController', '[{\"column_label\":\"Padre\",\"column_field\":\"parent_id\",\"column_type\":\"select_table\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Nombre\",\"column_field\":\"name\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Descripci\\u00f3n\",\"column_field\":\"description\",\"column_type\":\"wysiwyg\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Url\",\"column_field\":\"url\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Status\",\"column_field\":\"status\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Remember Token\",\"column_field\":\"remember_token\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Created At\",\"column_field\":\"created_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Updated At\",\"column_field\":\"updated_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]}]'),
(13, 'Direccion de entrega', 'fa fa-compress', 'delivery_address', 'AdminDireccionDeEntregaController', '[{\"column_label\":\"Usuario\",\"column_field\":\"users_id\",\"column_type\":\"select_table\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":\"users\",\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":\"id\",\"column_option_display\":\"name\",\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[{\"column\":\"id\",\"primary_key\":true,\"display\":false},{\"column\":\"name\",\"primary_key\":false,\"display\":true},{\"column\":\"email\",\"primary_key\":false,\"display\":false},{\"column\":\"email_verified_at\",\"primary_key\":false,\"display\":false},{\"column\":\"password\",\"primary_key\":false,\"display\":false},{\"column\":\"admin\",\"primary_key\":false,\"display\":false},{\"column\":\"remember_token\",\"primary_key\":false,\"display\":false},{\"column\":\"created_at\",\"primary_key\":false,\"display\":false},{\"column\":\"updated_at\",\"primary_key\":false,\"display\":false},{\"column\":\"address\",\"primary_key\":false,\"display\":false},{\"column\":\"city\",\"primary_key\":false,\"display\":false},{\"column\":\"state\",\"primary_key\":false,\"display\":false},{\"column\":\"country\",\"primary_key\":false,\"display\":false},{\"column\":\"pincode\",\"primary_key\":false,\"display\":false},{\"column\":\"mobile\",\"primary_key\":false,\"display\":false},{\"column\":\"photo\",\"primary_key\":false,\"display\":false},{\"column\":\"cb_roles_id\",\"primary_key\":false,\"display\":false},{\"column\":\"ip_address\",\"primary_key\":false,\"display\":false},{\"column\":\"user_agent\",\"primary_key\":false,\"display\":false},{\"column\":\"login_at\",\"primary_key\":false,\"display\":false}]},{\"column_label\":\"Correo\",\"column_field\":\"users_email\",\"column_type\":\"email\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Nombre\",\"column_field\":\"name\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Direcci\\u00f3n\",\"column_field\":\"address\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Ciudad\",\"column_field\":\"city\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Estado\",\"column_field\":\"state\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Pa\\u00eds\",\"column_field\":\"country\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"C\\u00f3digo PIN\",\"column_field\":\"pincode\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Celular\",\"column_field\":\"mobile\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Created At\",\"column_field\":\"created_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Updated At\",\"column_field\":\"updated_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]}]'),
(14, 'Cupones', 'fa fa-address-card', 'coupons', 'AdminCuponesController', '[{\"column_label\":\"C\\u00f3digo de cup\\u00f3n\",\"column_field\":\"coupon_code\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Cantidad\",\"column_field\":\"amount\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Tipo\",\"column_field\":\"amount_type\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Fecha expiraci\\u00f3n\",\"column_field\":\"expiry_date\",\"column_type\":\"date\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Estado\",\"column_field\":\"status\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Created At\",\"column_field\":\"created_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Updated At\",\"column_field\":\"updated_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]}]');
INSERT INTO `cb_modules` (`id`, `name`, `icon`, `table_name`, `controller`, `last_column_build`) VALUES
(15, 'Pedidos', 'fa fa-cc-diners-club', 'orders', 'AdminPedidosController', '[{\"column_label\":\"Usuario\",\"column_field\":\"users_id\",\"column_type\":\"select_table\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":\"users\",\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":\"id\",\"column_option_display\":\"name\",\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[{\"column\":\"id\",\"primary_key\":true,\"display\":false},{\"column\":\"name\",\"primary_key\":false,\"display\":true},{\"column\":\"email\",\"primary_key\":false,\"display\":false},{\"column\":\"email_verified_at\",\"primary_key\":false,\"display\":false},{\"column\":\"password\",\"primary_key\":false,\"display\":false},{\"column\":\"admin\",\"primary_key\":false,\"display\":false},{\"column\":\"remember_token\",\"primary_key\":false,\"display\":false},{\"column\":\"created_at\",\"primary_key\":false,\"display\":false},{\"column\":\"updated_at\",\"primary_key\":false,\"display\":false},{\"column\":\"address\",\"primary_key\":false,\"display\":false},{\"column\":\"city\",\"primary_key\":false,\"display\":false},{\"column\":\"state\",\"primary_key\":false,\"display\":false},{\"column\":\"country\",\"primary_key\":false,\"display\":false},{\"column\":\"pincode\",\"primary_key\":false,\"display\":false},{\"column\":\"mobile\",\"primary_key\":false,\"display\":false},{\"column\":\"photo\",\"primary_key\":false,\"display\":false},{\"column\":\"cb_roles_id\",\"primary_key\":false,\"display\":false},{\"column\":\"ip_address\",\"primary_key\":false,\"display\":false},{\"column\":\"user_agent\",\"primary_key\":false,\"display\":false},{\"column\":\"login_at\",\"primary_key\":false,\"display\":false}]},{\"column_label\":\"Correo\",\"column_field\":\"users_email\",\"column_type\":\"email\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Nombre\",\"column_field\":\"name\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Direcci\\u00f3n\",\"column_field\":\"address\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Ciudad\",\"column_field\":\"city\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Estado\",\"column_field\":\"state\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"C\\u00f3digo PIN\",\"column_field\":\"pincode\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Pa\\u00eds\",\"column_field\":\"country\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Celular\",\"column_field\":\"mobile\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Costo de env\\u00edo\",\"column_field\":\"shipping_charges\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"C\\u00f3digo cup\\u00f3n\",\"column_field\":\"coupon_code\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Cantidad cup\\u00f3n\",\"column_field\":\"coupon_amount\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Estado orden\",\"column_field\":\"order_status\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"M\\u00e9todo de pago\",\"column_field\":\"payment_method\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Total\",\"column_field\":\"grand_total\",\"column_type\":\"number\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Created At\",\"column_field\":\"created_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Updated At\",\"column_field\":\"updated_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]}]'),
(16, 'Usuarios', 'fa fa-compress', 'users', 'AdminUsuariosController', '[{\"column_label\":\"Nombres\",\"column_field\":\"name\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Correo\",\"column_field\":\"email\",\"column_type\":\"email\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Email Verified At\",\"column_field\":\"email_verified_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Password\",\"column_field\":\"password\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Admin\",\"column_field\":\"admin\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Remember Token\",\"column_field\":\"remember_token\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Created At\",\"column_field\":\"created_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Updated At\",\"column_field\":\"updated_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Address\",\"column_field\":\"address\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"City\",\"column_field\":\"city\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"State\",\"column_field\":\"state\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Country\",\"column_field\":\"country\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Pincode\",\"column_field\":\"pincode\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Mobile\",\"column_field\":\"mobile\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Photo\",\"column_field\":\"photo\",\"column_type\":\"image\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Cb Role\",\"column_field\":\"cb_roles_id\",\"column_type\":\"select_table\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":\"cb_roles\",\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":\"id\",\"column_option_display\":\"name\",\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[{\"column\":\"id\",\"primary_key\":true,\"display\":false},{\"column\":\"name\",\"primary_key\":false,\"display\":true}]},{\"column_label\":\"Ip Address\",\"column_field\":\"ip_address\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"User Agent\",\"column_field\":\"user_agent\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Login At\",\"column_field\":\"login_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]}]');

-- --------------------------------------------------------

--
-- Table structure for table `cb_roles`
--

CREATE TABLE `cb_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cb_roles`
--

INSERT INTO `cb_roles` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'Cliente'),
(3, 'Vendedor');

-- --------------------------------------------------------

--
-- Table structure for table `cb_role_privileges`
--

CREATE TABLE `cb_role_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `cb_roles_id` int(11) NOT NULL,
  `cb_menus_id` int(11) NOT NULL,
  `can_browse` tinyint(4) NOT NULL DEFAULT '1',
  `can_create` tinyint(4) NOT NULL DEFAULT '1',
  `can_read` tinyint(4) NOT NULL DEFAULT '1',
  `can_update` tinyint(4) NOT NULL DEFAULT '1',
  `can_delete` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cb_role_privileges`
--

INSERT INTO `cb_role_privileges` (`id`, `cb_roles_id`, `cb_menus_id`, `can_browse`, `can_create`, `can_read`, `can_update`, `can_delete`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1),
(11, 1, 8, 1, 1, 1, 1, 1),
(13, 1, 13, 1, 1, 1, 1, 1),
(14, 1, 9, 1, 1, 1, 1, 1),
(15, 1, 10, 1, 1, 1, 1, 1),
(19, 1, 20, 1, 1, 1, 1, 1),
(20, 1, 21, 1, 1, 1, 1, 1),
(21, 1, 23, 1, 1, 1, 1, 1),
(22, 3, 13, 0, 0, 0, 0, 0),
(23, 3, 21, 0, 0, 0, 0, 0),
(24, 3, 20, 0, 0, 0, 0, 0),
(25, 3, 9, 0, 0, 0, 0, 0),
(27, 3, 23, 0, 0, 0, 0, 0),
(28, 3, 10, 0, 0, 0, 0, 0),
(29, 3, 25, 1, 1, 1, 1, 1),
(30, 1, 25, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_date` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `amount`, `amount_type`, `expiry_date`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Coupon001', 10, 'Percentage', '2019-12-06', 1, '2018-12-05 20:19:15', '2018-12-05 20:19:15');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_address`
--

CREATE TABLE `delivery_address` (
  `id` int(10) UNSIGNED NOT NULL,
  `users_id` int(11) NOT NULL,
  `users_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_address`
--

INSERT INTO `delivery_address` (`id`, `users_id`, `users_email`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `created_at`, `updated_at`) VALUES
(2, 4, 'weshare@gmail.com', 'weshare', 'address', 'city', 'state', 'Cambodia', 'pincode', 'mobile', NULL, NULL),
(3, 1, 'demo@gmail.com', 'WeShare', '123 Street', 'Phnom Penh', 'PP', 'Cambodia', '12252', '010313234', NULL, NULL),
(4, 5, 'pjaramillo@gmail.com', 'Pablo Jaramillo', 'Loja', 'Loja', 'Loja', 'Ecuador', 'Loja', 'Loja', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2014_10_12_000000_create_users_table', 2),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2018_10_20_040609_create_categories_table', 3),
(9, '2018_10_24_075802_create_products_table', 4),
(10, '2018_11_08_024109_create_product_att_table', 5),
(11, '2018_11_20_055123_create_tblgallery_table', 6),
(12, '2018_11_26_070031_create_cart_table', 7),
(13, '2018_11_28_072535_create_coupons_table', 8),
(15, '2018_12_01_042342_create_countries_table', 10),
(19, '2018_12_03_043804_add_more_fields_to_users_table', 14),
(17, '2018_12_03_093548_create_delivery_address_table', 12),
(18, '2018_12_05_024718_create_orders_table', 13),
(20, '2016_08_07_152421_modify_users', 15),
(21, '2016_08_07_152421_table_menus', 15),
(22, '2016_08_07_152421_table_modules', 15),
(23, '2016_08_07_152421_table_role_privileges', 15),
(24, '2016_08_07_152421_table_roles', 15);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `users_id` int(11) NOT NULL,
  `users_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_charges` double(8,2) NOT NULL,
  `coupon_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_amount` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grand_total` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `users_id`, `users_email`, `name`, `address`, `city`, `state`, `pincode`, `country`, `mobile`, `shipping_charges`, `coupon_code`, `coupon_amount`, `order_status`, `payment_method`, `grand_total`, `created_at`, `updated_at`) VALUES
(7, 1, 'demo@gmail.com', 'WeShare', '123 Street', 'Phnom Penh', 'PP', '12252', 'Cambodia', '010313234', 0.00, 'NO Coupon', '0', 'success', 'Paypal', '70', '2018-12-06 18:20:18', '2018-12-06 18:20:18'),
(6, 4, 'weshare@gmail.com', 'weshare', 'address', 'city', 'state', 'pincode', 'Cambodia', 'mobile', 0.00, 'Coupon001', '2', 'success', 'Paypal', '18', '2018-12-06 01:45:09', '2018-12-06 01:45:09'),
(8, 5, 'pjaramillo@gmail.com', 'Pablo Jaramillo', 'Loja', 'Loja', 'Loja', 'Loja', 'Ecuador', 'Loja', 0.00, 'NO Coupon', '0', 'success', 'COD', '144', '2019-12-31 08:25:35', '2019-12-31 08:25:35');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `categories_id` int(11) NOT NULL,
  `p_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `categories_id`, `p_name`, `p_code`, `p_color`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
(28, 15, 'Lexus Rx 330', '12152', 'White', 'EXCELLENT SAFETY FOR YOUR FAMILY<br>Child Safety Locks, Electronic Stability Control, Brake Assist, 4-Wheel ABS, Tire Pressure Monitoring System, 4-Wheel Disc Brakes Safety equipment includes Child Safety Locks', 15.00, '1544063712-lexus-rx-330.jpg', '2018-12-05 19:35:12', '2018-12-05 19:43:48'),
(27, 15, '2019 New Toyota Highlander XLE V6', 'XLE V6 FWD', 'White', 'Sunroof, Heated Leather Seats, NAV, 3rd Row Seat, Alloy Wheels, Quad Seats, Rear Air, Power Liftgate. XLE trim. Warranty 5 yrs/60k Miles - Drivetrain Warranty; AND MORE!', 20.00, '1544063425-2019-new-toyota-highlander-xle-v6.jpg', '2018-12-05 19:30:25', '2018-12-05 19:43:57'),
(29, 12, '2018 Toyota Prius', '1252', 'Red', 'VEHICLE FEATURES<br>Rear Spoiler, MP3 Player, Remote Trunk Release, Keyless Entry, Privacy Glass.&nbsp;', 5.00, '1544063924-2018-toyota-prius.jpg', '2018-12-05 19:38:44', '2018-12-05 19:43:38'),
(30, 16, 'Link House New LC2', 'L_1252', 'Gray', 'Borey Peng Huoth Cambodia', 10.00, '1544064142-link-house-new-lc2.jpg', '2018-12-05 19:42:22', '2018-12-05 19:42:22'),
(31, 10, 'House', '5214', 'White and Brown', 'House For Sale', 10.00, '1544064430-house.jpg', '2018-12-05 19:47:10', '2018-12-05 19:47:10'),
(32, 11, 'Vionic Shoes Brand', '5265', 'All Colors', 'Women Shoes', 12.00, '1544064607-vionic-shoes-brand.jpg', '2018-12-05 19:50:07', '2018-12-05 19:50:07'),
(33, 17, 'Cole Haan', 'KHR 775659.29', 'Brown', 'Men\'s Original Grand Wingtip Oxfords', 5.00, '1544064903-cole-haan.jpg', '2018-12-05 19:55:03', '2018-12-05 19:55:03'),
(34, 13, 'Lenovo ThinkPad', '1252', 'Black', 'Lenovo Thinkpad From China', 2.00, '1544065331-lenovo-thinkpad.jpg', '2018-12-05 20:02:12', '2018-12-05 20:02:12'),
(35, 14, 'Cloths', 'The Man', 'Black', 'Cloths Description here', 2.00, '1544065493-cloths.png', '2018-12-05 20:04:54', '2018-12-05 20:04:54');

-- --------------------------------------------------------

--
-- Table structure for table `product_att`
--

CREATE TABLE `product_att` (
  `id` int(10) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_att`
--

INSERT INTO `product_att` (`id`, `products_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(14, 34, 'SKU-Lenovo X1', '15 inch', 10.00, 2, '2018-12-05 20:08:43', '2018-12-05 20:08:43'),
(13, 35, 'SKU-Red', 'S', 2.00, 5, '2018-12-05 20:08:08', '2018-12-05 20:08:08'),
(12, 35, 'SKU-White', 'L', 6.00, 2, '2018-12-05 20:07:42', '2018-12-05 20:07:42'),
(11, 35, 'SKU-Black', 'M', 5.00, 10, '2018-12-05 20:07:11', '2018-12-05 20:07:11'),
(15, 34, 'SKU-Carbon', '14 inch', 4.00, 5, '2018-12-05 20:09:05', '2018-12-05 20:09:05'),
(16, 33, 'SKU-Haan1', '25', 12.00, 3, '2018-12-05 20:09:45', '2018-12-05 20:09:45'),
(17, 33, 'SKU-Haan2', '22', 10.00, 1, '2018-12-05 20:09:58', '2018-12-05 20:09:58'),
(18, 33, 'SKU-Haan3', '19', 2.00, 3, '2018-12-05 20:10:16', '2018-12-05 20:10:16'),
(19, 32, 'SKU-Vionic1', '20', 10.00, 5, '2018-12-05 20:11:02', '2018-12-05 20:11:02'),
(20, 32, 'SKU-Vionic2', '20', 15.00, 4, '2018-12-05 20:11:24', '2018-12-05 20:11:24'),
(21, 32, 'SKU-Vionic3', '30', 20.00, 1, '2018-12-05 20:11:38', '2018-12-05 20:11:38'),
(22, 31, 'SKU-House1', '5*20', 25.00, 4, '2018-12-05 20:12:13', '2018-12-05 20:12:13'),
(23, 31, 'SKU-House2', '10*10', 20.00, 2, '2018-12-05 20:12:30', '2018-12-05 20:12:30'),
(24, 31, 'SKU-House3', '20*20', 20.00, 5, '2018-12-05 20:12:46', '2018-12-05 20:12:46'),
(25, 30, 'SKU-Link House1', 'Small', 10.00, 5, '2018-12-05 20:13:06', '2018-12-05 20:13:06'),
(26, 30, 'SKU-House2', 'Medium', 15.00, 23, '2018-12-05 20:13:23', '2018-12-05 20:13:23'),
(27, 30, 'SKU-House3', 'Large', 5.00, 2, '2018-12-05 20:14:55', '2018-12-05 20:14:55'),
(28, 29, 'SKU-Prius1', 'One Size', 12.00, 2, '2018-12-05 20:15:43', '2018-12-05 20:15:43'),
(29, 28, 'SKU-Lexus Red', 'Size Red', 12.00, 12, '2018-12-05 20:16:28', '2018-12-05 20:16:28'),
(30, 28, 'SKU-Lexus2', 'Size Black', 11.00, 22, '2018-12-05 20:16:48', '2018-12-05 20:16:48'),
(31, 28, 'SKU-Lexus3', 'Size White', 12.00, 2, '2018-12-05 20:17:02', '2018-12-05 20:17:02'),
(32, 27, 'SKU-Hilander', 'Size Black', 50.00, 10, '2018-12-05 20:17:35', '2018-12-05 20:17:35'),
(33, 27, 'SKU-Hilander1', 'Size White', 20.00, 10, '2018-12-05 20:17:46', '2018-12-05 20:17:46'),
(34, 27, 'SKU-Hilande3', 'Size Red', 20.00, 10, '2018-12-05 20:18:01', '2018-12-05 20:18:01');

-- --------------------------------------------------------

--
-- Table structure for table `tblgallery`
--

CREATE TABLE `tblgallery` (
  `id` int(10) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblgallery`
--

INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
(8, 27, '7664271544063472.jpg', '2018-12-05 19:31:12', '2018-12-05 19:31:12'),
(9, 27, '6768551544063472.jpg', '2018-12-05 19:31:13', '2018-12-05 19:31:13'),
(10, 27, '4131281544063473.jpg', '2018-12-05 19:31:13', '2018-12-05 19:31:13'),
(11, 28, '6720891544063734.jpg', '2018-12-05 19:35:34', '2018-12-05 19:35:34'),
(12, 28, '4686631544063734.jpg', '2018-12-05 19:35:34', '2018-12-05 19:35:34'),
(13, 28, '5960611544063759.jpeg', '2018-12-05 19:35:59', '2018-12-05 19:35:59'),
(14, 29, '5146071544063935.JPG', '2018-12-05 19:38:55', '2018-12-05 19:38:55'),
(15, 29, '762811544063935.jpg', '2018-12-05 19:38:55', '2018-12-05 19:38:55'),
(16, 29, '3716041544063935.jpg', '2018-12-05 19:38:56', '2018-12-05 19:38:56'),
(17, 30, '6832831544064156.jpg', '2018-12-05 19:42:37', '2018-12-05 19:42:37'),
(18, 30, '1655391544064157.jpg', '2018-12-05 19:42:37', '2018-12-05 19:42:37'),
(19, 30, '4693601544064157.jpg', '2018-12-05 19:42:37', '2018-12-05 19:42:37'),
(20, 31, '9233341544064441.jpg', '2018-12-05 19:47:21', '2018-12-05 19:47:21'),
(21, 31, '8167501544064441.jpg', '2018-12-05 19:47:22', '2018-12-05 19:47:22'),
(22, 31, '3887071544064442.jpg', '2018-12-05 19:47:22', '2018-12-05 19:47:22'),
(23, 32, '3998691544064618.jpg', '2018-12-05 19:50:18', '2018-12-05 19:50:18'),
(24, 32, '1159141544064618.jpg', '2018-12-05 19:50:18', '2018-12-05 19:50:18'),
(25, 32, '2035101544064618.jpg', '2018-12-05 19:50:18', '2018-12-05 19:50:18'),
(26, 33, '2128501544064917.jpg', '2018-12-05 19:55:17', '2018-12-05 19:55:17'),
(27, 33, '5649911544064917.jpg', '2018-12-05 19:55:17', '2018-12-05 19:55:17'),
(28, 33, '3704141544064917.jpg', '2018-12-05 19:55:17', '2018-12-05 19:55:17'),
(29, 34, '3899431544065346.JPG', '2018-12-05 20:02:26', '2018-12-05 20:02:26'),
(30, 34, '119131544065346.jpg', '2018-12-05 20:02:27', '2018-12-05 20:02:27'),
(31, 34, '6905491544065347.jpg', '2018-12-05 20:02:27', '2018-12-05 20:02:27'),
(32, 35, '981591544065510.jpeg', '2018-12-05 20:05:10', '2018-12-05 20:05:10'),
(33, 35, '5320811544065510.jpg', '2018-12-05 20:05:11', '2018-12-05 20:05:11'),
(34, 35, '1153181544065511.jpg', '2018-12-05 20:05:11', '2018-12-05 20:05:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(4) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cb_roles_id` int(11) NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `photo`, `cb_roles_id`, `ip_address`, `user_agent`, `login_at`) VALUES
(1, 'WeShare', 'demo@gmail.com', NULL, '$2y$10$m9fNpTgwyBVqqVfsJ9bXUensvx5iqlYhzqmL3khhSpKpgqNQnW0t2', 1, 'eXRJYaZCo6qXgGfTHiOFvShGWta2eLgaIhcBVfa9ppQnN5SFFH7yo516DQs1', '2018-10-15 02:32:54', '2018-12-05 01:39:52', '123 Street', 'Phnom Penh', 'PP', 'Cambodia', '12252', '010313234', NULL, 0, NULL, NULL, NULL),
(4, 'weshare', 'weshare@gmail.com', NULL, '$2y$10$3Ccxg17LYw/.qS7ib5Xcr.T5po6AXUsnjEcEI4IHcQ0MGkcuRfO.O', NULL, 'za7FtmzYvfzBYmkQtE5tfvStl7dY3Z6uZKSpuRtBRIvlbXzM0csZEQYzjuEb', '2018-12-06 01:40:27', '2018-12-06 01:40:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(5, 'Pablo Jaramillo', 'pjaramillo@gmail.com', NULL, '$2y$10$duxwUQPM.bAzJ39Uiz0TN.ex97IOrk2s47HA8WltQy5mYu3jVAgjG', NULL, NULL, NULL, NULL, 'Loja', 'Loja', 'Loja', 'Ecuador', 'Loja', 'Loja', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.2 Safari/605.1.15', '2019-12-31 07:31:18'),
(6, 'Manuel Cartuche', 'macartuche@gmail.com', NULL, '$2y$10$V38KzZn4F2SNB40PXnjnpeEXVaTGJg2uIDmtNUQQ28wvgaHEMLMoy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.2 Safari/605.1.15', '2019-12-31 07:23:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`name`);

--
-- Indexes for table `cb_menus`
--
ALTER TABLE `cb_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cb_modules`
--
ALTER TABLE `cb_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cb_roles`
--
ALTER TABLE `cb_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cb_role_privileges`
--
ALTER TABLE `cb_role_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_address`
--
ALTER TABLE `delivery_address`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_att`
--
ALTER TABLE `product_att`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblgallery`
--
ALTER TABLE `tblgallery`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `cb_menus`
--
ALTER TABLE `cb_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `cb_modules`
--
ALTER TABLE `cb_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cb_roles`
--
ALTER TABLE `cb_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cb_role_privileges`
--
ALTER TABLE `cb_role_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `delivery_address`
--
ALTER TABLE `delivery_address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `product_att`
--
ALTER TABLE `product_att`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tblgallery`
--
ALTER TABLE `tblgallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
