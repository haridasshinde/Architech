-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2019 at 06:41 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `architech`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responses` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2019-09-07 12:13:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/item_type/add-save', 'Add New Data  at Item Type', '', 1, '2019-09-07 12:47:48', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/uom/add-save', 'Add New Data  at Unit of Major', '', 1, '2019-09-07 12:51:03', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/uom/edit-save/1', 'Update data  at Unit of Major', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>updated_by</td><td></td><td>1</td></tr></tbody></table>', 1, '2019-09-07 12:51:15', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/item_type/edit-save/1', 'Update data  at Item Type', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>updated_by</td><td></td><td>1</td></tr></tbody></table>', 1, '2019-09-07 12:51:26', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/item/add-save', 'Add New Data  at Items', '', 1, '2019-09-07 12:59:42', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/vendors/add-save', 'Add New Data Test Vendor at Vendor', '', 1, '2019-09-07 13:15:46', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/raw_material/add-save', 'Add New Data  at Raw Material', '', 1, '2019-09-07 13:16:48', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/raw_material_vendor_mapping/add-save', 'Add New Data  at Vendor Raw Material Map', '', 1, '2019-09-07 13:23:08', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/item__raw_material_mapping/add-save', 'Add New Data  at Item Raw Material Map', '', 1, '2019-09-07 13:31:07', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/item__raw_material_mapping/edit-save/1', 'Update data  at Item Raw Material Map', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>updated_by</td><td></td><td>1</td></tr></tbody></table>', 1, '2019-09-07 13:32:47', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/gs_client/add-save', 'Add New Data Client 1 at Client', '', 1, '2019-09-07 13:43:14', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/gs_client_site/add-save', 'Add New Data Akurdi at Client Site', '', 1, '2019-09-07 13:48:06', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/gs_client_site_project/add-save', 'Add New Data jljkljlkj at Client Site Project', '', 1, '2019-09-07 13:58:06', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/gs_company/add-save', 'Add New Data Software at Company', '', 1, '2019-09-07 14:04:29', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/gs_company/edit-save/1', 'Update data Software at Company', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>address2</td><td></td><td>dsfdfsdf</td></tr><tr><td>updated_by</td><td></td><td>1</td></tr></tbody></table>', 1, '2019-09-07 14:05:32', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/gs_payment_template/add-save', 'Add New Data Montly First Monday at Payment Template', '', 1, '2019-09-07 14:43:20', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-09-07 22:41:12', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2019-09/project.png</td></tr><tr><td>password</td><td>$2y$10$fdQraUwSdOkQ1vZqjMwk2umXZH31ID.rg/HIwaIZ2AGugH5tVpL36</td><td>$2y$10$IJy4IvbnpqHu4riY56BqJepSiuCHshbuYIslTjTh6KMPy2TuAOE8m</td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2019-09-07 22:42:01', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-09-07 22:42:13', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-09-07 22:42:16', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/gs_payment_template/add-save', 'Add New Data Every Friday at Payment Template', '', 1, '2019-09-07 22:46:35', NULL),
(22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/vendors/edit-save/1', 'Update data Test Vendor at Vendor', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>address2</td><td></td><td></td></tr><tr><td>payment_template_id</td><td></td><td>1</td></tr><tr><td>updated_by</td><td></td><td>1</td></tr></tbody></table>', 1, '2019-09-07 22:53:29', NULL),
(23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/items/edit-save/1', 'Update data  at Items', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-09-07 23:38:49', NULL),
(24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/items/edit-save/1', 'Update data  at Items', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-09-07 23:42:01', NULL),
(25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/items/edit-save/1', 'Update data  at Items', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-09-08 00:13:33', NULL),
(26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/items/edit-save/1', 'Update data  at Items', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-09-08 00:15:53', NULL),
(27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/raw_material/edit-save/1', 'Update data  at Raw Material', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-09-08 00:52:30', NULL),
(28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/raw_material/edit-save/1', 'Update data  at Raw Material', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-09-08 00:52:55', NULL),
(29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-09-08 01:04:05', NULL),
(30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/uom/add-save', 'Add New Data  at Unit of Major', '', 1, '2019-09-08 01:27:57', NULL),
(31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/vendors/edit-save/1', 'Update data Test Vendor at Vendor', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>address2</td><td></td><td></td></tr></tbody></table>', 1, '2019-09-08 01:28:36', NULL),
(32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/raw_material/add-save', 'Add New Data  at Raw Material', '', 1, '2019-09-08 01:29:38', NULL),
(33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/vendors/edit-save/1', 'Update data Test Vendor at Vendor', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>address2</td><td></td><td></td></tr></tbody></table>', 1, '2019-09-08 01:30:03', NULL),
(34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/12', 'Update data Quotation Header at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>12</td><td></td></tr></tbody></table>', 1, '2019-09-08 02:28:46', NULL),
(35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Masters at Menu Management', '', 1, '2019-09-08 02:30:17', NULL),
(36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/15', 'Update data Masters at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-09-08 02:30:37', NULL),
(37, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/gs_quotation_list/edit-save/1', 'Update data  at Quotation List', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>attachment_details</td><td></td><td>uploads/1/2019-09/screenshot_2019_09_08_crudbooster_edit_vendor.png</td></tr></tbody></table>', 1, '2019-09-08 03:39:43', NULL),
(38, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/gs_quotation_list/edit-save/1', 'Update data  at Quotation List', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-09-08 03:55:41', NULL),
(39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-09-08 05:40:18', NULL),
(40, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-09-08 05:40:22', NULL),
(41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/gs_quotation_list/edit-save/1', 'Update data  at Quotation List', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-09-08 06:40:53', NULL),
(42, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-09-09 08:22:07', NULL),
(43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36 OPR/63.0.3368.71', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-09-09 08:24:18', NULL),
(44, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/gs_quotation_list/delete-image', 'Delete the image of 1 at Quotation List', '', 1, '2019-09-09 08:31:21', NULL),
(45, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/gs_quotation_list/edit-save/1', 'Update data  at Quotation List', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-09-09 08:32:06', NULL),
(46, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/boq/edit-save/2', 'Update data  at BOQ', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-09-09 08:43:55', NULL),
(47, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/boq/edit-save/2', 'Update data  at BOQ', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>is_active</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2019-09-09 08:48:36', NULL),
(48, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/boq/edit-save/1', 'Update data  at BOQ', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-09-09 08:49:23', NULL),
(49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/boq/edit-save/2', 'Update data  at BOQ', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-09-09 08:49:32', NULL),
(50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/boq/edit-save/2', 'Update data  at BOQ', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>is_active</td><td>N</td><td>Y</td></tr></tbody></table>', 1, '2019-09-09 08:50:42', NULL),
(51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/boq/edit-save/2', 'Update data  at BOQ', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-09-09 08:52:33', NULL),
(52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/boq/edit-save/2', 'Update data  at BOQ', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-09-09 08:52:41', NULL),
(53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/boq/edit-save/2', 'Update data  at BOQ', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>is_active</td><td>Y</td><td>N</td></tr></tbody></table>', 1, '2019-09-09 08:53:03', NULL),
(54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/boq/edit-save/2', 'Update data  at BOQ', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>is_active</td><td>N</td><td>Y</td></tr></tbody></table>', 1, '2019-09-09 08:53:26', NULL),
(55, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/boq/edit-save/2', 'Update data  at BOQ', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-09-09 09:03:58', NULL),
(56, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/boq/edit-save/1', 'Update data  at BOQ', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-09-09 09:04:10', NULL),
(57, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-09-10 07:47:53', NULL),
(58, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/gs_quotation_list/edit-save/1', 'Update data  at Quotation List', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>customer_po_no</td><td></td><td>123</td></tr></tbody></table>', 1, '2019-09-10 07:58:43', NULL),
(59, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-09-11 03:39:34', NULL),
(60, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-09-12 09:21:08', NULL),
(61, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 'http://127.0.0.1:8000/admin/vendor_raw_material_mapping/edit-save/2', 'Update data  at Vendor Raw Material Map', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>created_by</td><td></td><td></td></tr><tr><td>updated_by</td><td></td><td>1</td></tr></tbody></table>', 1, '2019-09-12 09:59:46', NULL),
(62, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 'http://127.0.0.1:8000/admin/item__raw_material_mapping/edit-save/2', 'Update data  at Item Raw Material Map', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>created_by</td><td></td><td></td></tr><tr><td>updated_by</td><td></td><td>1</td></tr></tbody></table>', 1, '2019-09-12 10:00:57', NULL),
(63, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 'http://127.0.0.1:8000/admin/item__raw_material_mapping/edit-save/1', 'Update data  at Item Raw Material Map', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>created_by</td><td></td><td></td></tr><tr><td>updated_by</td><td></td><td>1</td></tr></tbody></table>', 1, '2019-09-12 10:01:04', NULL),
(64, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 'http://127.0.0.1:8000/admin/item__raw_material_mapping/edit-save/1', 'Update data  at Item Raw Material Map', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>created_by</td><td></td><td></td></tr></tbody></table>', 1, '2019-09-12 10:01:11', NULL),
(65, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 'http://127.0.0.1:8000/admin/raw_material/edit-save/2', 'Update data  at Raw Material', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-09-12 10:01:40', NULL),
(66, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 'http://127.0.0.1:8000/admin/vendors/edit-save/1', 'Update data Test Vendor at Vendor', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>address2</td><td></td><td></td></tr></tbody></table>', 1, '2019-09-12 10:01:54', NULL),
(67, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 'http://127.0.0.1:8000/admin/items/edit-save/3', 'Update data  at Items', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-09-12 10:57:41', NULL),
(68, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 'http://127.0.0.1:8000/admin/vendor_raw_material_mapping/edit-save/2', 'Update data  at Vendor Raw Material Map', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>created_by</td><td></td><td></td></tr><tr><td>updated_by</td><td></td><td>1</td></tr></tbody></table>', 1, '2019-09-12 10:57:58', NULL),
(69, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 'http://127.0.0.1:8000/admin/item__raw_material_mapping/edit-save/1', 'Update data  at Item Raw Material Map', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>created_by</td><td></td><td></td></tr></tbody></table>', 1, '2019-09-12 10:58:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'Item Type', 'Route', 'AdminItemTypeControllerGetIndex', NULL, 'fa fa-star', 15, 1, 0, 1, 1, '2019-09-07 12:44:54', NULL),
(2, 'Unit of Major', 'Route', 'AdminUomControllerGetIndex', NULL, 'fa fa-star', 15, 1, 0, 1, 2, '2019-09-07 12:48:47', NULL),
(3, 'Items', 'Route', 'AdminItemControllerGetIndex', NULL, 'fa fa-star', 15, 1, 0, 1, 3, '2019-09-07 12:52:30', NULL),
(4, 'Raw Material', 'Route', 'AdminRawMaterialControllerGetIndex', NULL, 'fa fa-star', 15, 1, 0, 1, 5, '2019-09-07 13:02:04', NULL),
(5, 'Vendor', 'Route', 'AdminVendorsControllerGetIndex', NULL, 'fa fa-star', 15, 1, 0, 1, 4, '2019-09-07 13:09:42', NULL),
(6, 'Vendor Raw Material Map', 'Route', 'AdminRawMaterialVendorMappingControllerGetIndex', NULL, 'fa fa-star', 15, 1, 0, 1, 6, '2019-09-07 13:18:12', NULL),
(7, 'Item Raw Material Map', 'Route', 'AdminItemRawMaterialMappingControllerGetIndex', NULL, 'fa fa-star', 15, 1, 0, 1, 7, '2019-09-07 13:26:36', NULL),
(8, 'Client', 'Route', 'AdminGsClientControllerGetIndex', NULL, 'fa fa-star', 15, 1, 0, 1, 8, '2019-09-07 13:37:35', NULL),
(9, 'Client Site', 'Route', 'AdminGsClientSiteControllerGetIndex', NULL, 'fa fa-star', 15, 1, 0, 1, 9, '2019-09-07 13:44:57', NULL),
(10, 'Client Site Project', 'Route', 'AdminGsClientSiteProjectControllerGetIndex', NULL, 'fa fa-star', 15, 1, 0, 1, 10, '2019-09-07 13:54:47', NULL),
(11, 'Company', 'Route', 'AdminGsCompanyControllerGetIndex', NULL, 'fa fa-star', 15, 1, 0, 1, 11, '2019-09-07 13:59:08', NULL),
(12, 'Quotation List', 'Route', 'AdminGsQuotationHeaderControllerGetIndex', 'normal', 'fa fa-star', 0, 1, 0, 1, 2, '2019-09-07 14:13:58', '2019-09-08 02:28:46'),
(13, 'Quotation Details', 'Route', 'AdminQuotationDetailControllerGetIndex', NULL, 'fa fa-star', 0, 0, 0, 1, 1, '2019-09-07 14:17:48', NULL),
(14, 'Payment Template', 'Route', 'AdminGsPaymentTemplateControllerGetIndex', NULL, 'fa fa-star', 15, 1, 0, 1, 12, '2019-09-07 14:40:24', NULL),
(15, 'Masters', 'Route', 'a', 'normal', 'fa fa-star', 0, 1, 0, 1, 1, '2019-09-08 02:30:17', '2019-09-08 02:30:37'),
(16, 'BOQ', 'Route', 'AdminBoqControllerGetIndex', NULL, 'fa fa-star', 0, 1, 0, 1, 4, '2019-09-09 08:39:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(13, 13, 1),
(14, 14, 1),
(15, 12, 1),
(16, NULL, 1),
(17, 15, 1),
(18, 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2019-09-07 12:13:09', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2019-09-07 12:13:09', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2019-09-07 12:13:09', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2019-09-07 12:13:09', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2019-09-07 12:13:09', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2019-09-07 12:13:09', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2019-09-07 12:13:09', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2019-09-07 12:13:09', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2019-09-07 12:13:09', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2019-09-07 12:13:09', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2019-09-07 12:13:09', NULL, NULL),
(12, 'Item Type', 'fa fa-star', 'item_type', 'gs_item_type', 'AdminItemTypeController', 0, 0, '2019-09-07 12:44:53', NULL, NULL),
(13, 'Unit of Major', 'fa fa-star', 'uom', 'gs_uom', 'AdminUomController', 0, 0, '2019-09-07 12:48:47', NULL, NULL),
(14, 'Items', 'fa fa-cog', 'items', 'gs_item', 'AdminItemController', 0, 0, '2019-09-07 12:52:30', NULL, NULL),
(15, 'Raw Material', 'fa fa-glass', 'raw_material', 'gs_raw_material', 'AdminRawMaterialController', 0, 0, '2019-09-07 13:02:03', NULL, NULL),
(16, 'Vendor', 'fa fa-star', 'vendors', 'gs_vendor', 'AdminVendorsController', 0, 0, '2019-09-07 13:09:41', NULL, NULL),
(17, 'Vendor Raw Material Map', 'fa fa-star', 'vendor_raw_material_mapping', 'gs_raw_material_vendor_mapping', 'AdminRawMaterialVendorMappingController', 0, 0, '2019-09-07 13:18:11', NULL, NULL),
(18, 'Item Raw Material Map', 'fa fa-star', 'item__raw_material_mapping', 'gs_raw_material_item_mapping', 'AdminItemRawMaterialMappingController', 0, 0, '2019-09-07 13:26:36', NULL, NULL),
(19, 'Client', 'fa fa-star', 'clients', 'gs_client', 'AdminGsClientController', 0, 0, '2019-09-07 13:37:32', NULL, NULL),
(20, 'Client Site', 'fa fa-star', 'client_site', 'gs_client_site', 'AdminGsClientSiteController', 0, 0, '2019-09-07 13:44:56', NULL, NULL),
(21, 'Client Site Project', 'fa fa-star', 'gs_client_site_project', 'gs_client_site_project', 'AdminGsClientSiteProjectController', 0, 0, '2019-09-07 13:54:47', NULL, NULL),
(22, 'Company', 'fa fa-star', 'gs_company', 'gs_company', 'AdminGsCompanyController', 0, 0, '2019-09-07 13:59:08', NULL, NULL),
(23, 'Quotation List', 'fa fa-star', 'gs_quotation_list', 'gs_quotation_header', 'AdminGsQuotationHeaderController', 0, 0, '2019-09-07 14:13:57', NULL, NULL),
(24, 'Quotation Details', 'fa fa-star', 'quotation_detail', 'gs_quotation_detail', 'AdminQuotationDetailController', 0, 0, '2019-09-07 14:17:47', NULL, NULL),
(25, 'Payment Template', 'fa fa-star', 'gs_payment_template', 'gs_payment_template', 'AdminGsPaymentTemplateController', 0, 0, '2019-09-07 14:40:23', NULL, NULL),
(26, 'BOQ', 'fa fa-star', 'boq', 'gs_boq', 'AdminBoqController', 0, 0, '2019-09-09 08:39:16', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-red', '2019-09-07 12:13:09', NULL),
(2, 'Vendor', 0, 'skin-blue', NULL, NULL),
(3, 'Clint (Customer)', 0, 'skin-blue', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2019-09-07 12:13:10', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2019-09-07 12:13:10', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2019-09-07 12:13:10', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2019-09-07 12:13:10', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2019-09-07 12:13:10', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2019-09-07 12:13:10', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2019-09-07 12:13:10', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2019-09-07 12:13:10', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2019-09-07 12:13:10', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2019-09-07 12:13:11', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2019-09-07 12:13:11', NULL),
(12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(14, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(16, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(17, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(18, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(19, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(20, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(21, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(22, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
(23, 1, 1, 1, 1, 1, 1, 23, NULL, NULL),
(24, 1, 1, 1, 1, 1, 1, 24, NULL, NULL),
(25, 1, 1, 1, 1, 1, 1, 25, NULL, NULL),
(26, 1, 1, 1, 1, 1, 1, 26, NULL, NULL),
(27, 1, 1, 1, 1, 0, 2, 26, NULL, NULL),
(28, 1, 1, 1, 1, 0, 2, 19, NULL, NULL),
(29, 1, 1, 1, 1, 0, 2, 20, NULL, NULL),
(30, 1, 1, 1, 1, 0, 2, 21, NULL, NULL),
(31, 1, 1, 1, 1, 0, 2, 22, NULL, NULL),
(32, 1, 1, 1, 1, 0, 2, 18, NULL, NULL),
(33, 1, 1, 1, 1, 0, 2, 12, NULL, NULL),
(34, 1, 1, 1, 1, 0, 2, 14, NULL, NULL),
(35, 1, 1, 1, 1, 0, 2, 25, NULL, NULL),
(36, 1, 1, 1, 1, 0, 2, 24, NULL, NULL),
(37, 1, 1, 1, 1, 0, 2, 23, NULL, NULL),
(38, 1, 1, 1, 1, 0, 2, 15, NULL, NULL),
(39, 1, 1, 1, 1, 0, 2, 13, NULL, NULL),
(40, 1, 1, 1, 1, 0, 2, 4, NULL, NULL),
(41, 1, 1, 1, 1, 0, 2, 16, NULL, NULL),
(42, 1, 1, 1, 1, 0, 2, 17, NULL, NULL),
(43, 1, 1, 1, 1, 1, 3, 26, NULL, NULL),
(44, 1, 1, 1, 1, 1, 3, 19, NULL, NULL),
(45, 1, 1, 1, 1, 1, 3, 20, NULL, NULL),
(46, 1, 1, 1, 1, 1, 3, 21, NULL, NULL),
(47, 1, 1, 1, 1, 1, 3, 22, NULL, NULL),
(48, 1, 1, 1, 1, 1, 3, 18, NULL, NULL),
(49, 1, 1, 1, 1, 1, 3, 12, NULL, NULL),
(50, 1, 1, 1, 1, 1, 3, 14, NULL, NULL),
(51, 1, 1, 1, 1, 1, 3, 25, NULL, NULL),
(52, 1, 1, 1, 1, 1, 3, 24, NULL, NULL),
(53, 1, 1, 1, 1, 1, 3, 23, NULL, NULL),
(54, 1, 1, 1, 1, 1, 3, 15, NULL, NULL),
(55, 1, 1, 1, 1, 1, 3, 13, NULL, NULL),
(56, 1, 1, 1, 1, 1, 3, 4, NULL, NULL),
(57, 1, 1, 1, 1, 1, 3, 16, NULL, NULL),
(58, 1, 1, 1, 1, 1, 3, 17, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2019-09-07 12:13:11', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2019-09-07 12:13:11', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2019-09-07 12:13:11', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2019-09-07 12:13:11', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2019-09-07 12:13:11', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2019-09-07 12:13:11', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2019-09-07 12:13:11', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2019-09-07 12:13:11', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2019-09-07 12:13:11', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'CRUDBooster', 'text', NULL, NULL, '2019-09-07 12:13:11', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2019-09-07 12:13:11', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', '', 'upload_image', NULL, NULL, '2019-09-07 12:13:11', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', '', 'upload_image', NULL, NULL, '2019-09-07 12:13:11', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2019-09-07 12:13:11', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', '', 'text', NULL, NULL, '2019-09-07 12:13:11', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', '', 'text', NULL, NULL, '2019-09-07 12:13:11', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', 'uploads/1/2019-09/project.png', 'admin@crudbooster.com', '$2y$10$IJy4IvbnpqHu4riY56BqJepSiuCHshbuYIslTjTh6KMPy2TuAOE8m', 1, '2019-09-07 12:13:08', '2019-09-07 22:42:01', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `gs_boq`
--

CREATE TABLE `gs_boq` (
  `id` int(10) UNSIGNED NOT NULL,
  `quotation_header_id` int(11) NOT NULL,
  `raw_material_id` int(11) NOT NULL,
  `make_model` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uom_id` int(11) NOT NULL,
  `total_qty` double(20,2) NOT NULL,
  `total_order_qty` double(20,2) NOT NULL,
  `is_active` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gs_client`
--

CREATE TABLE `gs_client` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_no` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst_no` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan_no` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gs_client`
--

INSERT INTO `gs_client` (`id`, `client_name`, `address1`, `address2`, `city`, `state`, `pincode`, `contact_no`, `mobile_no`, `reference_by`, `gst_no`, `email_id`, `pan_no`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Client 1', 'Pune', NULL, 'Pune', 'Maharashtra', '411033', NULL, '9028281468', 'John Doe', '123456789012345', 'harishinde2@gmail.com', 'fasdf', 'Y', 1, NULL, '2019-09-07 13:43:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gs_client_site`
--

CREATE TABLE `gs_client_site` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `site_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gs_client_site`
--

INSERT INTO `gs_client_site` (`id`, `client_id`, `site_name`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Akurdi', 'Y', 1, NULL, '2019-09-07 13:48:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gs_client_site_project`
--

CREATE TABLE `gs_client_site_project` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `client_site_id` int(11) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `is_active` char(1) NOT NULL DEFAULT 'X',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gs_client_site_project`
--

INSERT INTO `gs_client_site_project` (`id`, `client_id`, `client_site_id`, `project_name`, `is_active`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(2, 1, 1, 'Akurdi Project', 'Y', 1, '2019-09-07 13:58:06', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gs_company`
--

CREATE TABLE `gs_company` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `pincode` int(11) NOT NULL,
  `gst_no` varchar(15) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `bank_acc_no` int(11) NOT NULL,
  `ifsc_code` varchar(255) NOT NULL,
  `branch_name` text NOT NULL,
  `is_active` char(1) NOT NULL DEFAULT 'X',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gs_company`
--

INSERT INTO `gs_company` (`id`, `name`, `address1`, `address2`, `city`, `state`, `pincode`, `gst_no`, `bank_name`, `bank_acc_no`, `ifsc_code`, `branch_name`, `is_active`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Software', 'dsfjlkjlkjlkjl', 'dsfdfsdf', 'Pune', 'Maharashtra', 411033, '123456789012345', 'asdf', 2342423, 'sadfasdf', 'fdasfd', 'Y', 1, '2019-09-07 14:04:29', 1, '2019-09-07 14:05:32');

-- --------------------------------------------------------

--
-- Table structure for table `gs_item`
--

CREATE TABLE `gs_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `nm` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uom_id` int(11) DEFAULT NULL,
  `is_active` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `amount` double(10,2) NOT NULL DEFAULT 0.00,
  `photo` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gs_item`
--

INSERT INTO `gs_item` (`id`, `nm`, `description`, `uom_id`, `is_active`, `amount`, `photo`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Item 3', 'adfadsf', 1, 'Y', 1030.00, NULL, 1, 1, '2019-09-07 12:59:42', '2019-09-08 00:15:52'),
(2, 'Item 2', 'Item 2', 1, 'Y', 90090.00, NULL, 1, NULL, '2019-09-07 23:26:04', NULL),
(3, 'Item 1', 'item description', 1, 'Y', 5455.00, NULL, 1, 1, '2019-09-07 23:27:53', '2019-09-12 10:57:41');

-- --------------------------------------------------------

--
-- Table structure for table `gs_item_type`
--

CREATE TABLE `gs_item_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `nm` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gs_item_type`
--

INSERT INTO `gs_item_type` (`id`, `nm`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Test', 'Y', 1, 1, '2019-09-07 12:47:48', '2019-09-07 12:51:26');

-- --------------------------------------------------------

--
-- Table structure for table `gs_payment_template`
--

CREATE TABLE `gs_payment_template` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_consider_for_payment` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_of_payment` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_days` int(11) DEFAULT NULL,
  `payment_day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gs_payment_template`
--

INSERT INTO `gs_payment_template` (`id`, `name`, `date_consider_for_payment`, `type_of_payment`, `min_days`, `payment_day`, `remark`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Montly First Monday', '2019-09-02', '55', 5, '2019-09-06', NULL, 1, NULL, NULL, '2019-09-07 14:43:20', NULL),
(2, 'Every Friday', '2019-09-06', '55', 7, '2019-09-20', NULL, 1, NULL, NULL, '2019-09-07 22:46:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gs_quotation_detail`
--

CREATE TABLE `gs_quotation_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `quotation_header_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `uom_id` int(11) DEFAULT NULL,
  `rate` double(10,2) NOT NULL DEFAULT 0.00,
  `amount` double(10,2) NOT NULL DEFAULT 0.00,
  `tax_amount` double(10,2) NOT NULL DEFAULT 0.00,
  `product_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gs_quotation_detail`
--

INSERT INTO `gs_quotation_detail` (`id`, `quotation_header_id`, `item_id`, `qty`, `uom_id`, `rate`, `amount`, `tax_amount`, `product_img`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 1, NULL, 1.00, 5455.00, 1.00, 'http://127.0.0.1:8000/uploads/1/2019-09/7f09c7452d18f668b5278af6567afc50.png', '1', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gs_quotation_header`
--

CREATE TABLE `gs_quotation_header` (
  `id` int(10) UNSIGNED NOT NULL,
  `quotation_date` date NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quotation_approval_date` datetime DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `customer_po_no` int(11) DEFAULT NULL,
  `attachment_details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gs_quotation_header`
--

INSERT INTO `gs_quotation_header` (`id`, `quotation_date`, `status`, `quotation_approval_date`, `project_id`, `client_id`, `site_id`, `customer_po_no`, `attachment_details`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '2019-09-08', '1', '2019-09-08 14:18:10', 2, 1, 1, 123, 'uploads/1/2019-09/project.png', 'Y', 1, 1, '2019-09-08 08:48:34', '2019-09-10 07:58:43');

-- --------------------------------------------------------

--
-- Table structure for table `gs_raw_material`
--

CREATE TABLE `gs_raw_material` (
  `id` int(10) UNSIGNED NOT NULL,
  `nm` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_nm` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uom_id` int(11) DEFAULT NULL,
  `qty` decimal(10,2) DEFAULT NULL,
  `default_vendor` int(11) DEFAULT NULL,
  `is_active` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gs_raw_material`
--

INSERT INTO `gs_raw_material` (`id`, `nm`, `model_nm`, `uom_id`, `qty`, `default_vendor`, `is_active`, `photo`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Laptop', 'ideapad 320', 1, '5.00', 1, 'Y', NULL, 1, 1, '2019-09-07 13:16:47', '2019-09-08 00:52:54'),
(2, 'Plywood', 'Ply', 2, '888.00', 1, 'Y', NULL, 1, 1, '2019-09-08 01:29:38', '2019-09-12 10:01:39');

-- --------------------------------------------------------

--
-- Table structure for table `gs_raw_material_item_mapping`
--

CREATE TABLE `gs_raw_material_item_mapping` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_id` int(11) NOT NULL,
  `raw_material_id` int(11) DEFAULT NULL,
  `uom_ids` int(11) DEFAULT NULL,
  `qty` decimal(10,2) NOT NULL DEFAULT 0.00,
  `is_active` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gs_raw_material_item_mapping`
--

INSERT INTO `gs_raw_material_item_mapping` (`id`, `item_id`, `raw_material_id`, `uom_ids`, `qty`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '70.00', 'Y', NULL, 1, NULL, '2019-09-12 10:58:49'),
(2, 2, 1, 1, '90.00', 'Y', NULL, 1, NULL, '2019-09-12 10:00:57');

-- --------------------------------------------------------

--
-- Table structure for table `gs_raw_material_vendor_mapping`
--

CREATE TABLE `gs_raw_material_vendor_mapping` (
  `id` int(10) UNSIGNED NOT NULL,
  `raw_material_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `uom_ids` int(11) DEFAULT NULL,
  `is_active` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gs_raw_material_vendor_mapping`
--

INSERT INTO `gs_raw_material_vendor_mapping` (`id`, `raw_material_id`, `vendor_id`, `rate`, `uom_ids`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '90909.00', 2, 'Y', NULL, NULL, NULL, NULL),
(2, 1, 1, '5000.00', 1, 'Y', NULL, 1, NULL, '2019-09-12 10:57:58');

-- --------------------------------------------------------

--
-- Table structure for table `gs_status_master`
--

CREATE TABLE `gs_status_master` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gs_status_master`
--

INSERT INTO `gs_status_master` (`id`, `name`) VALUES
(1, 'New'),
(2, 'Accept'),
(3, 'Reject'),
(4, 'Paid'),
(5, 'Pending'),
(6, 'Drop'),
(7, 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `gs_uom`
--

CREATE TABLE `gs_uom` (
  `id` int(10) UNSIGNED NOT NULL,
  `nm` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gs_uom`
--

INSERT INTO `gs_uom` (`id`, `nm`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Unit 1', 'Y', 1, 1, '2019-09-07 12:51:03', '2019-09-07 12:51:15'),
(2, 'Unit 2', 'Y', 1, NULL, '2019-09-08 01:27:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gs_vendor`
--

CREATE TABLE `gs_vendor` (
  `id` int(10) UNSIGNED NOT NULL,
  `vendor_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst_no` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_template_id` int(11) DEFAULT NULL,
  `bank_acc_no` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ifsc_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_no` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan_no` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gs_vendor`
--

INSERT INTO `gs_vendor` (`id`, `vendor_name`, `address1`, `address2`, `city`, `state`, `pincode`, `gst_no`, `payment_template_id`, `bank_acc_no`, `ifsc_code`, `branch_name`, `phone_no`, `contact_person`, `pan_no`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Test Vendor', 'jafldjl', NULL, 'Pune', 'Maharashtra', '411033', '123456789012345', 1, 'dfadf', 'asdfads', 'adfadf', 'sdfad', 'asfasdf', 'fasdf', 'Y', 1, 1, '2019-09-07 13:15:46', '2019-09-12 10:01:53');

-- --------------------------------------------------------

--
-- Table structure for table `gs_yes_no`
--

CREATE TABLE `gs_yes_no` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gs_yes_no`
--

INSERT INTO `gs_yes_no` (`id`, `name`) VALUES
(1, 'Yes'),
(0, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(96, '2016_08_07_145904_add_table_cms_apicustom', 1),
(97, '2016_08_07_150834_add_table_cms_dashboard', 1),
(98, '2016_08_07_151210_add_table_cms_logs', 1),
(99, '2016_08_07_151211_add_details_cms_logs', 1),
(100, '2016_08_07_152014_add_table_cms_privileges', 1),
(101, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(102, '2016_08_07_152320_add_table_cms_settings', 1),
(103, '2016_08_07_152421_add_table_cms_users', 1),
(104, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(105, '2016_08_07_154624_add_table_cms_moduls', 1),
(106, '2016_08_17_225409_add_status_cms_users', 1),
(107, '2016_08_20_125418_add_table_cms_notifications', 1),
(108, '2016_09_04_033706_add_table_cms_email_queues', 1),
(109, '2016_09_16_035347_add_group_setting', 1),
(110, '2016_09_16_045425_add_label_setting', 1),
(111, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(112, '2016_10_01_141740_add_method_type_apicustom', 1),
(113, '2016_10_01_141846_add_parameters_apicustom', 1),
(114, '2016_10_01_141934_add_responses_apicustom', 1),
(115, '2016_10_01_144826_add_table_apikey', 1),
(116, '2016_11_14_141657_create_cms_menus', 1),
(117, '2016_11_15_132350_create_cms_email_templates', 1),
(118, '2016_11_15_190410_create_cms_statistics', 1),
(119, '2016_11_17_102740_create_cms_statistic_components', 1),
(120, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
(121, '2019_09_04_150943_create_gs_item_type_table', 1),
(122, '2019_09_04_151753_create_gs_item_table', 1),
(123, '2019_09_04_152536_create_gs_uom_table', 1),
(124, '2019_09_04_152801_create_gs_raw_material_table', 1),
(125, '2019_09_04_160532_create_gs_raw_material_vendor_mapping_table', 1),
(126, '2019_09_04_161112_create_gs_raw_material_item_mapping_table', 1),
(127, '2019_09_04_161443_create_gs_client_master_table', 1),
(128, '2019_09_07_174359_create_gs_client_site_table', 2),
(129, '2019_09_07_174950_create_gs_client_site_project_table', 2),
(130, '2019_09_07_175017_create_gs_company_table', 2),
(131, '2019_09_07_175112_create_gs_vendor_table', 2),
(132, '2019_09_07_180230_create_gs_quotation_header_table', 2),
(133, '2019_09_07_180711_create_gs_quotation_detail_table', 2),
(134, '2019_09_07_181035_create_gs_boq_table', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_boq`
--
ALTER TABLE `gs_boq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_client`
--
ALTER TABLE `gs_client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_client_site`
--
ALTER TABLE `gs_client_site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_client_site_project`
--
ALTER TABLE `gs_client_site_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_company`
--
ALTER TABLE `gs_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_item`
--
ALTER TABLE `gs_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_item_type`
--
ALTER TABLE `gs_item_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_payment_template`
--
ALTER TABLE `gs_payment_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_quotation_detail`
--
ALTER TABLE `gs_quotation_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_quotation_header`
--
ALTER TABLE `gs_quotation_header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_raw_material`
--
ALTER TABLE `gs_raw_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_raw_material_item_mapping`
--
ALTER TABLE `gs_raw_material_item_mapping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_raw_material_vendor_mapping`
--
ALTER TABLE `gs_raw_material_vendor_mapping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_status_master`
--
ALTER TABLE `gs_status_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_uom`
--
ALTER TABLE `gs_uom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_vendor`
--
ALTER TABLE `gs_vendor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gs_boq`
--
ALTER TABLE `gs_boq`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gs_client`
--
ALTER TABLE `gs_client`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gs_client_site`
--
ALTER TABLE `gs_client_site`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gs_client_site_project`
--
ALTER TABLE `gs_client_site_project`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gs_company`
--
ALTER TABLE `gs_company`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gs_item`
--
ALTER TABLE `gs_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gs_item_type`
--
ALTER TABLE `gs_item_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gs_payment_template`
--
ALTER TABLE `gs_payment_template`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gs_quotation_detail`
--
ALTER TABLE `gs_quotation_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gs_quotation_header`
--
ALTER TABLE `gs_quotation_header`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gs_raw_material`
--
ALTER TABLE `gs_raw_material`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gs_raw_material_item_mapping`
--
ALTER TABLE `gs_raw_material_item_mapping`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gs_raw_material_vendor_mapping`
--
ALTER TABLE `gs_raw_material_vendor_mapping`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gs_status_master`
--
ALTER TABLE `gs_status_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `gs_uom`
--
ALTER TABLE `gs_uom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gs_vendor`
--
ALTER TABLE `gs_vendor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
