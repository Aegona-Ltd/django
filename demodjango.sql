-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 29, 2022 lúc 04:28 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `demodjango`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts_account`
--

CREATE TABLE `accounts_account` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superadmin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `accounts_account`
--

INSERT INTO `accounts_account` (`id`, `password`, `first_name`, `last_name`, `username`, `email`, `phone_number`, `date_joined`, `last_login`, `is_admin`, `is_staff`, `is_active`, `is_superadmin`) VALUES
(1, 'pbkdf2_sha256$390000$ybtz4Vv9nORxoqFJlwOwYW$e5SKa3phRIjL5JwkoO5MsIKrtJ5HLK6x6jU+0iJ4AGg=', 'Tran', 'Ngoc', 'Ngoc', 'admin@gmail.com', '', '2022-08-24 07:33:42.893363', '2022-08-24 07:59:37.313287', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add category', 6, 'add_category'),
(22, 'Can change category', 6, 'change_category'),
(23, 'Can delete category', 6, 'delete_category'),
(24, 'Can view category', 6, 'view_category'),
(25, 'Can add product', 7, 'add_product'),
(26, 'Can change product', 7, 'change_product'),
(27, 'Can delete product', 7, 'delete_product'),
(28, 'Can view product', 7, 'view_product'),
(29, 'Can add variation', 8, 'add_variation'),
(30, 'Can change variation', 8, 'change_variation'),
(31, 'Can delete variation', 8, 'delete_variation'),
(32, 'Can view variation', 8, 'view_variation'),
(33, 'Can add review rating', 9, 'add_reviewrating'),
(34, 'Can change review rating', 9, 'change_reviewrating'),
(35, 'Can delete review rating', 9, 'delete_reviewrating'),
(36, 'Can view review rating', 9, 'view_reviewrating'),
(37, 'Can add cart', 10, 'add_cart'),
(38, 'Can change cart', 10, 'change_cart'),
(39, 'Can delete cart', 10, 'delete_cart'),
(40, 'Can view cart', 10, 'view_cart'),
(41, 'Can add cart item', 11, 'add_cartitem'),
(42, 'Can change cart item', 11, 'change_cartitem'),
(43, 'Can delete cart item', 11, 'delete_cartitem'),
(44, 'Can view cart item', 11, 'view_cartitem'),
(45, 'Can add account', 12, 'add_account'),
(46, 'Can change account', 12, 'change_account'),
(47, 'Can delete account', 12, 'delete_account'),
(48, 'Can view account', 12, 'view_account'),
(49, 'Can add order', 13, 'add_order'),
(50, 'Can change order', 13, 'change_order'),
(51, 'Can delete order', 13, 'delete_order'),
(52, 'Can view order', 13, 'view_order'),
(53, 'Can add payment', 14, 'add_payment'),
(54, 'Can change payment', 14, 'change_payment'),
(55, 'Can delete payment', 14, 'delete_payment'),
(56, 'Can view payment', 14, 'view_payment'),
(57, 'Can add order product', 15, 'add_orderproduct'),
(58, 'Can change order product', 15, 'change_orderproduct'),
(59, 'Can delete order product', 15, 'delete_orderproduct'),
(60, 'Can view order product', 15, 'view_orderproduct'),
(61, 'Can add contact', 16, 'add_contact'),
(62, 'Can change contact', 16, 'change_contact'),
(63, 'Can delete contact', 16, 'delete_contact'),
(64, 'Can view contact', 16, 'view_contact');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts_cart`
--

CREATE TABLE `carts_cart` (
  `id` int(11) NOT NULL,
  `cart_id` varchar(250) NOT NULL,
  `date_added` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `carts_cart`
--

INSERT INTO `carts_cart` (`id`, `cart_id`, `date_added`) VALUES
(1, '687r3jlhsygv6hpxfbcjedow4he209vl', '2022-08-24 07:37:34.635449'),
(2, 'hm8lrujhd70z5m0chxso4bjdhgll914p', '2022-08-24 07:59:16.766222'),
(3, 'hy7ig29cbv377bwt3vhy2edzwijlppr3', '2022-08-24 08:01:05.797435');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts_cartitem`
--

CREATE TABLE `carts_cartitem` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `carts_cartitem`
--

INSERT INTO `carts_cartitem` (`id`, `quantity`, `is_active`, `cart_id`, `product_id`, `user_id`) VALUES
(2, 6, 1, 2, 1, NULL),
(18, 11, 1, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts_cartitem_variations`
--

CREATE TABLE `carts_cartitem_variations` (
  `id` int(11) NOT NULL,
  `cartitem_id` int(11) NOT NULL,
  `variation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `carts_cartitem_variations`
--

INSERT INTO `carts_cartitem_variations` (`id`, `cartitem_id`, `variation_id`) VALUES
(39, 2, 1),
(40, 2, 2),
(139, 18, 1),
(140, 18, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_category`
--

CREATE TABLE `category_category` (
  `id` bigint(20) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `category_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category_category`
--

INSERT INTO `category_category` (`id`, `category_name`, `slug`, `description`, `category_image`) VALUES
(1, 'Cat 1', 'cat-1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 'photos/categories/img-test.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact_contact`
--

CREATE TABLE `contact_contact` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `contact_contact`
--

INSERT INTO `contact_contact` (`id`, `title`, `email`, `content`) VALUES
(1, 'admin', 'admin@gmail.com', 'test'),
(2, 'admin', 'admin@gmail.com', 'test'),
(3, 'Muốn hợp tác', 'User1@gmail.com', 'HT\r\nabcdef'),
(4, 'Ket hop', 'baba@gmail.com', 'bama\r\nout'),
(5, 'Ket hop', 'baba@gmail.com', 'bama\r\nout');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-08-24 07:36:49.509249', '1', 'Cat 1', 1, '[{\"added\": {}}]', 6, 1),
(2, '2022-08-24 07:36:58.126990', '1', 'SP 1', 1, '[{\"added\": {}}]', 7, 1),
(3, '2022-08-24 07:38:54.994049', '1', 's', 1, '[{\"added\": {}}]', 8, 1),
(4, '2022-08-24 07:39:08.384091', '2', 'red', 1, '[{\"added\": {}}]', 8, 1),
(5, '2022-08-24 07:39:18.098714', '1', 's', 2, '[{\"changed\": {\"fields\": [\"Variation category\"]}}]', 8, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(12, 'accounts', 'account'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(10, 'carts', 'cart'),
(11, 'carts', 'cartitem'),
(6, 'category', 'category'),
(16, 'contact', 'contact'),
(4, 'contenttypes', 'contenttype'),
(13, 'orders', 'order'),
(15, 'orders', 'orderproduct'),
(14, 'orders', 'payment'),
(5, 'sessions', 'session'),
(7, 'store', 'product'),
(9, 'store', 'reviewrating'),
(8, 'store', 'variation');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'accounts', '0001_initial', '2022-08-24 07:31:50.296585'),
(2, 'contenttypes', '0001_initial', '2022-08-24 07:31:50.324115'),
(3, 'admin', '0001_initial', '2022-08-24 07:31:50.412592'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-08-24 07:31:50.416594'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-08-24 07:31:50.420592'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-08-24 07:31:50.460338'),
(7, 'auth', '0001_initial', '2022-08-24 07:31:50.607165'),
(8, 'auth', '0002_alter_permission_name_max_length', '2022-08-24 07:31:50.641226'),
(9, 'auth', '0003_alter_user_email_max_length', '2022-08-24 07:31:50.647222'),
(10, 'auth', '0004_alter_user_username_opts', '2022-08-24 07:31:50.652223'),
(11, 'auth', '0005_alter_user_last_login_null', '2022-08-24 07:31:50.656224'),
(12, 'auth', '0006_require_contenttypes_0002', '2022-08-24 07:31:50.657877'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2022-08-24 07:31:50.661895'),
(14, 'auth', '0008_alter_user_username_max_length', '2022-08-24 07:31:50.666892'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2022-08-24 07:31:50.670896'),
(16, 'auth', '0010_alter_group_name_max_length', '2022-08-24 07:31:50.683060'),
(17, 'auth', '0011_update_proxy_permissions', '2022-08-24 07:31:50.690064'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2022-08-24 07:31:50.694065'),
(19, 'category', '0001_initial', '2022-08-24 07:31:50.710964'),
(20, 'store', '0001_initial', '2022-08-24 07:31:50.762432'),
(21, 'store', '0002_variation', '2022-08-24 07:31:50.811610'),
(22, 'carts', '0001_initial', '2022-08-24 07:31:50.897917'),
(23, 'carts', '0002_cartitem_variations', '2022-08-24 07:31:50.986710'),
(24, 'carts', '0003_auto_20210619_1554', '2022-08-24 07:31:51.222956'),
(25, 'category', '0002_alter_category_id', '2022-08-24 07:31:51.378614'),
(26, 'orders', '0001_initial', '2022-08-24 07:31:51.731366'),
(27, 'sessions', '0001_initial', '2022-08-24 07:31:51.755365'),
(28, 'store', '0003_reviewrating', '2022-08-24 07:31:51.830932'),
(29, 'contact', '0001_initial', '2022-08-24 08:14:44.001454');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('hy7ig29cbv377bwt3vhy2edzwijlppr3', '.eJxVjMEOwiAQRP-FsyEtLAgevfsNhF0WqRpISnsy_rtt0oMeZ96beYsQ16WEtfMcpiQuYhSn3w4jPbnuID1ivTdJrS7zhHJX5EG7vLXEr-vh_h2U2Mu2xkQ6D5ZIWwRmQO9R8xY9gQWwTgFHpdw5J-MsuBHBuGg8ZjADZBKfL_0fOBQ:1oQlIX:mIZFoDXw_RZt9U81c8FI_mY9S2Eg-BQnuMxneJ-0U8c', '2022-09-07 07:59:37.316293');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_order`
--

CREATE TABLE `orders_order` (
  `id` int(11) NOT NULL,
  `order_number` varchar(20) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address_line_1` varchar(50) NOT NULL,
  `address_line_2` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `order_note` varchar(100) NOT NULL,
  `order_total` double NOT NULL,
  `tax` double NOT NULL,
  `status` varchar(10) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `is_ordered` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders_order`
--

INSERT INTO `orders_order` (`id`, `order_number`, `first_name`, `last_name`, `phone`, `email`, `address_line_1`, `address_line_2`, `country`, `state`, `city`, `order_note`, `order_total`, `tax`, `status`, `ip`, `is_ordered`, `created_at`, `updated_at`, `payment_id`, `user_id`) VALUES
(1, '202208241', 'Ngoc', 'Tran', '123456789', 'abc@gmail.com', 'abc', 'def', 'GV', 'a', 'Hcm', 'Note lại', 2244000, 44000, 'New', '127.0.0.1', 0, '2022-08-24 07:40:55.204367', '2022-08-24 07:40:55.207372', NULL, 1),
(2, '202208242', 'Ngoc', 'Tran', '0123465789', 'asdffaf@gmail.com', 'ab', '', 'sầ', 'fsafasf', 'ádad', 'âsaffsafsaf', 2448000, 48000, 'New', '127.0.0.1', 0, '2022-08-24 08:00:13.037604', '2022-08-24 08:00:13.039403', NULL, 1),
(3, '202208263', 'Ngoc', 'Tran', '0123465789', 'demo@demo.com', 'abc', 'def', 'GV', 'a', 'Hcm', 'dsd', 2244000, 44000, 'New', '127.0.0.1', 0, '2022-08-26 09:07:05.091499', '2022-08-26 09:07:05.094511', NULL, 1),
(4, '202208264', 'Ngoc', 'Tran', '0123465789', 'demo@demo.com', 'abc', '', 'GV', 'a', 'Hcm', '4544', 2244000, 44000, 'New', '127.0.0.1', 0, '2022-08-26 09:18:25.279448', '2022-08-26 09:18:25.281447', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_orderproduct`
--

CREATE TABLE `orders_orderproduct` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_price` double NOT NULL,
  `ordered` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_orderproduct_variations`
--

CREATE TABLE `orders_orderproduct_variations` (
  `id` int(11) NOT NULL,
  `orderproduct_id` int(11) NOT NULL,
  `variation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_payment`
--

CREATE TABLE `orders_payment` (
  `id` int(11) NOT NULL,
  `payment_id` varchar(100) NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `amount_paid` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `store_product`
--

CREATE TABLE `store_product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `price` int(11) NOT NULL,
  `images` varchar(100) NOT NULL,
  `stock` int(11) NOT NULL,
  `is_available` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `store_product`
--

INSERT INTO `store_product` (`id`, `product_name`, `slug`, `description`, `price`, `images`, `stock`, `is_available`, `created_date`, `modified_date`, `category_id`) VALUES
(1, 'SP 1', 'sp-1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop p', 200000, 'photos/products/img-test.png', 120, 1, '2022-08-24 07:36:58.126990', '2022-08-24 07:36:58.126990', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `store_reviewrating`
--

CREATE TABLE `store_reviewrating` (
  `id` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `review` longtext NOT NULL,
  `rating` double NOT NULL,
  `ip` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `store_variation`
--

CREATE TABLE `store_variation` (
  `id` int(11) NOT NULL,
  `variation_category` varchar(100) NOT NULL,
  `variation_value` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `store_variation`
--

INSERT INTO `store_variation` (`id`, `variation_category`, `variation_value`, `is_active`, `created_date`, `product_id`) VALUES
(1, 'size', 's', 1, '2022-08-24 07:38:54.993052', 1),
(2, 'color', 'red', 1, '2022-08-24 07:39:08.383223', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accounts_account`
--
ALTER TABLE `accounts_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Chỉ mục cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Chỉ mục cho bảng `carts_cart`
--
ALTER TABLE `carts_cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `carts_cartitem`
--
ALTER TABLE `carts_cartitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_cartitem_product_id_acd010e4_fk_store_product_id` (`product_id`),
  ADD KEY `carts_cartitem_user_id_4d21e0d9_fk_accounts_account_id` (`user_id`),
  ADD KEY `carts_cartitem_cart_id_9cb0a756_fk_carts_cart_id` (`cart_id`);

--
-- Chỉ mục cho bảng `carts_cartitem_variations`
--
ALTER TABLE `carts_cartitem_variations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `carts_cartitem_variations_cartitem_id_variation_id_5f8efaf5_uniq` (`cartitem_id`,`variation_id`),
  ADD KEY `carts_cartitem_varia_variation_id_ef9f9ee3_fk_store_var` (`variation_id`);

--
-- Chỉ mục cho bảng `category_category`
--
ALTER TABLE `category_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name` (`category_name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Chỉ mục cho bảng `contact_contact`
--
ALTER TABLE `contact_contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_accounts_account_id` (`user_id`);

--
-- Chỉ mục cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Chỉ mục cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Chỉ mục cho bảng `orders_order`
--
ALTER TABLE `orders_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_order_payment_id_46928ccc_fk_orders_payment_id` (`payment_id`),
  ADD KEY `orders_order_user_id_e9b59eb1_fk_accounts_account_id` (`user_id`);

--
-- Chỉ mục cho bảng `orders_orderproduct`
--
ALTER TABLE `orders_orderproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_orderproduct_order_id_5022a3e2_fk_orders_order_id` (`order_id`),
  ADD KEY `orders_orderproduct_payment_id_492ed997_fk_orders_payment_id` (`payment_id`),
  ADD KEY `orders_orderproduct_product_id_4d6ac024_fk_store_product_id` (`product_id`),
  ADD KEY `orders_orderproduct_user_id_1e7a7ab7_fk_accounts_account_id` (`user_id`);

--
-- Chỉ mục cho bảng `orders_orderproduct_variations`
--
ALTER TABLE `orders_orderproduct_variations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_orderproduct_vari_orderproduct_id_variatio_8c028ee7_uniq` (`orderproduct_id`,`variation_id`),
  ADD KEY `orders_orderproduct__variation_id_5dfd0e51_fk_store_var` (`variation_id`);

--
-- Chỉ mục cho bảng `orders_payment`
--
ALTER TABLE `orders_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_payment_user_id_cfa9f321_fk_accounts_account_id` (`user_id`);

--
-- Chỉ mục cho bảng `store_product`
--
ALTER TABLE `store_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_name` (`product_name`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `store_product_category_id_574bae65_fk` (`category_id`);

--
-- Chỉ mục cho bảng `store_reviewrating`
--
ALTER TABLE `store_reviewrating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_reviewrating_product_id_2e1974d6_fk_store_product_id` (`product_id`),
  ADD KEY `store_reviewrating_user_id_da0ed849_fk_accounts_account_id` (`user_id`);

--
-- Chỉ mục cho bảng `store_variation`
--
ALTER TABLE `store_variation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_variation_product_id_e4f08cbc_fk_store_product_id` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accounts_account`
--
ALTER TABLE `accounts_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `carts_cart`
--
ALTER TABLE `carts_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `carts_cartitem`
--
ALTER TABLE `carts_cartitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `carts_cartitem_variations`
--
ALTER TABLE `carts_cartitem_variations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT cho bảng `category_category`
--
ALTER TABLE `category_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `contact_contact`
--
ALTER TABLE `contact_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `orders_order`
--
ALTER TABLE `orders_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `orders_orderproduct`
--
ALTER TABLE `orders_orderproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders_orderproduct_variations`
--
ALTER TABLE `orders_orderproduct_variations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders_payment`
--
ALTER TABLE `orders_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `store_product`
--
ALTER TABLE `store_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `store_reviewrating`
--
ALTER TABLE `store_reviewrating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `store_variation`
--
ALTER TABLE `store_variation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Các ràng buộc cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Các ràng buộc cho bảng `carts_cartitem`
--
ALTER TABLE `carts_cartitem`
  ADD CONSTRAINT `carts_cartitem_cart_id_9cb0a756_fk_carts_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `carts_cart` (`id`),
  ADD CONSTRAINT `carts_cartitem_product_id_acd010e4_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  ADD CONSTRAINT `carts_cartitem_user_id_4d21e0d9_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Các ràng buộc cho bảng `carts_cartitem_variations`
--
ALTER TABLE `carts_cartitem_variations`
  ADD CONSTRAINT `carts_cartitem_varia_cartitem_id_8be23372_fk_carts_car` FOREIGN KEY (`cartitem_id`) REFERENCES `carts_cartitem` (`id`),
  ADD CONSTRAINT `carts_cartitem_varia_variation_id_ef9f9ee3_fk_store_var` FOREIGN KEY (`variation_id`) REFERENCES `store_variation` (`id`);

--
-- Các ràng buộc cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Các ràng buộc cho bảng `orders_order`
--
ALTER TABLE `orders_order`
  ADD CONSTRAINT `orders_order_payment_id_46928ccc_fk_orders_payment_id` FOREIGN KEY (`payment_id`) REFERENCES `orders_payment` (`id`),
  ADD CONSTRAINT `orders_order_user_id_e9b59eb1_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Các ràng buộc cho bảng `orders_orderproduct`
--
ALTER TABLE `orders_orderproduct`
  ADD CONSTRAINT `orders_orderproduct_order_id_5022a3e2_fk_orders_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders_order` (`id`),
  ADD CONSTRAINT `orders_orderproduct_payment_id_492ed997_fk_orders_payment_id` FOREIGN KEY (`payment_id`) REFERENCES `orders_payment` (`id`),
  ADD CONSTRAINT `orders_orderproduct_product_id_4d6ac024_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  ADD CONSTRAINT `orders_orderproduct_user_id_1e7a7ab7_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Các ràng buộc cho bảng `orders_orderproduct_variations`
--
ALTER TABLE `orders_orderproduct_variations`
  ADD CONSTRAINT `orders_orderproduct__orderproduct_id_0f116a3b_fk_orders_or` FOREIGN KEY (`orderproduct_id`) REFERENCES `orders_orderproduct` (`id`),
  ADD CONSTRAINT `orders_orderproduct__variation_id_5dfd0e51_fk_store_var` FOREIGN KEY (`variation_id`) REFERENCES `store_variation` (`id`);

--
-- Các ràng buộc cho bảng `orders_payment`
--
ALTER TABLE `orders_payment`
  ADD CONSTRAINT `orders_payment_user_id_cfa9f321_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Các ràng buộc cho bảng `store_product`
--
ALTER TABLE `store_product`
  ADD CONSTRAINT `store_product_category_id_574bae65_fk` FOREIGN KEY (`category_id`) REFERENCES `category_category` (`id`);

--
-- Các ràng buộc cho bảng `store_reviewrating`
--
ALTER TABLE `store_reviewrating`
  ADD CONSTRAINT `store_reviewrating_product_id_2e1974d6_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  ADD CONSTRAINT `store_reviewrating_user_id_da0ed849_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Các ràng buộc cho bảng `store_variation`
--
ALTER TABLE `store_variation`
  ADD CONSTRAINT `store_variation_product_id_e4f08cbc_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
