-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2018 at 07:11 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tutshub`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(3, NULL, 1, 'React', 'react', '2018-06-09 20:09:45', '2018-06-09 20:09:45'),
(4, NULL, 1, 'Wordpress', 'wordpress', '2018-06-09 20:09:54', '2018-06-09 20:09:54'),
(5, NULL, 1, 'Laravel', 'laravel', '2018-06-09 20:10:02', '2018-06-09 20:10:02'),
(6, NULL, 1, 'PHP', 'php', '2018-06-09 20:10:21', '2018-06-09 20:10:21'),
(7, NULL, 1, 'Javascript', 'javascript', '2018-06-09 20:10:29', '2018-06-09 20:10:29');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, '', 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '', 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, '', 9),
(23, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(24, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(25, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(26, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 4),
(27, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(28, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '', 6),
(29, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(30, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(31, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(32, 5, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, NULL, 3),
(33, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(34, 5, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, NULL, 5),
(35, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(36, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(37, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(38, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, NULL, 9),
(39, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, NULL, 10),
(40, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(41, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(42, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(43, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(44, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(58, 7, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(59, 7, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 2),
(60, 7, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 3),
(61, 7, 'header_title', 'text', 'Header Title', 1, 0, 1, 1, 1, 1, NULL, 4),
(62, 7, 'header_content', 'text_area', 'Header Content', 0, 0, 1, 1, 1, 1, NULL, 5),
(64, 7, 'meta_title', 'text', 'Meta Title', 0, 0, 1, 1, 1, 1, NULL, 6),
(65, 7, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, NULL, 7),
(66, 7, 'header_background_color', 'color', 'Header Background Color', 0, 0, 1, 1, 1, 1, NULL, 8),
(68, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 12),
(69, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 11),
(70, 7, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 10),
(71, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(72, 8, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 2),
(73, 8, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:news,slug\"}}', 3),
(74, 8, 'content', 'rich_text_box', 'Content', 0, 0, 1, 1, 1, 1, NULL, 4),
(75, 8, 'meta_title', 'text', 'Meta Title', 0, 0, 1, 1, 1, 1, NULL, 5),
(76, 8, 'meta_description', 'rich_text_box', 'Meta Description', 0, 0, 1, 1, 1, 1, NULL, 6),
(77, 8, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 7),
(78, 8, 'author_id', 'select_dropdown', 'Author Id', 0, 1, 1, 1, 1, 1, NULL, 9),
(79, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 0, NULL, 10),
(80, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 11),
(81, 8, 'news_belongsto_user_relationship', 'relationship', 'Authors', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"author_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(82, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(83, 9, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 2),
(84, 9, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:tutorials,slug\"}}', 3),
(85, 9, 'overview', 'rich_text_box', 'Overview', 0, 0, 1, 1, 1, 1, NULL, 4),
(86, 9, 'content', 'rich_text_box', 'Content', 0, 0, 1, 1, 1, 1, NULL, 5),
(87, 9, 'meta_title', 'text', 'Meta Title', 0, 0, 1, 1, 1, 1, NULL, 6),
(88, 9, 'meta_description', 'rich_text_box', 'Meta Description', 0, 0, 1, 1, 1, 1, NULL, 7),
(89, 9, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 8),
(90, 9, 'author_id', 'text', 'Author Id', 0, 1, 1, 1, 1, 1, NULL, 10),
(91, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 11),
(92, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 12),
(93, 9, 'total_likes', 'text', 'Total Likes', 0, 1, 1, 0, 0, 0, NULL, 13),
(94, 9, 'tutorial_belongsto_user_relationship', 'relationship', 'Author', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"author_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(95, 9, 'tutorial_belongstomany_category_relationship', 'relationship', 'Categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"tutorial_category\",\"pivot\":\"1\",\"taggable\":\"0\"}', 17),
(96, 9, 'guide_id', 'text', 'Guide Id', 0, 0, 1, 1, 0, 0, NULL, 14),
(97, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(98, 10, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(99, 10, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:guides,slug\"}}', 3),
(100, 10, 'overview', 'rich_text_box', 'Overview', 0, 0, 1, 1, 1, 1, NULL, 4),
(101, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 14),
(102, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 15),
(103, 10, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 7),
(104, 10, 'guide_belongstomany_category_relationship', 'relationship', 'Categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"guide_category\",\"pivot\":\"1\",\"taggable\":\"0\"}', 9),
(105, 10, 'guide_hasmany_tutorial_relationship', 'relationship', 'Associated Tutorials', 0, 0, 1, 1, 1, 1, '{\"model\":\"App\\\\Tutorial\",\"table\":\"tutorials\",\"type\":\"hasMany\",\"column\":\"guide_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(106, 9, 'tutorial_belongsto_guide_relationship', 'relationship', 'Guide', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Guide\",\"table\":\"guides\",\"type\":\"belongsTo\",\"column\":\"guide_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 18),
(107, 10, 'meta_title', 'text', 'Meta Title', 0, 0, 1, 1, 1, 1, NULL, 11),
(108, 10, 'meta_description', 'rich_text_box', 'Meta Description', 0, 0, 1, 1, 1, 1, NULL, 12),
(109, 10, 'image', 'image', 'Image', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 10),
(110, 8, 'image', 'image', 'Image', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 12),
(111, 9, 'image', 'image', 'Image', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 16),
(112, 10, 'guide_belongsto_user_relationship', 'relationship', 'Author', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"author_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(113, 10, 'author_id', 'text', 'Author Id', 0, 1, 1, 1, 1, 1, NULL, 13),
(114, 7, 'general_content', 'rich_text_box', 'General Content', 0, 0, 1, 1, 1, 1, '{\"description\":\"Optional Content for pages that only content text\"}', 9),
(115, 10, 'published_date', 'timestamp', 'Published Date', 1, 0, 1, 1, 1, 1, '{\"default\":\"2018-01-01T08:00:00\",\"placeholder\":\"2018-01-01T08:00:00\",\"format\":\"%Y-%m-%d\"}', 8),
(116, 8, 'published_date', 'timestamp', 'Published Date', 0, 0, 1, 1, 1, 1, '{\"default\":\"2018-01-01T08:00:00\",\"format\":\"%Y-%m-%d\"}', 8),
(117, 9, 'published_date', 'timestamp', 'Published Date', 0, 0, 1, 1, 1, 1, '{\"default\":\"2018-01-01T08:00:00\",\"placeholder\":\"2018-01-01T08:00:00\"}', 9);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-bookmark', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-05 06:46:25', '2018-06-09 19:59:37'),
(7, 'pages', 'pages', 'Page', 'Pages', 'voyager-documentation', 'App\\Page', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-07 03:57:33', '2018-06-09 20:03:49'),
(8, 'news', 'news', 'News', 'News', 'voyager-news', 'App\\News', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-08 05:57:48', '2018-06-09 20:03:28'),
(9, 'tutorials', 'tutorials', 'Tutorial', 'Tutorials', 'voyager-logbook', 'App\\Tutorial', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-09 06:31:05', '2018-06-09 19:58:16'),
(10, 'guides', 'guides', 'Guide', 'Guides', 'voyager-list', 'App\\Guide', NULL, NULL, 'A listed guide of tutorials aimed to teach a specific topic', 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-09 19:54:54', '2018-06-09 20:03:17');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(2, 'main', '2018-06-07 05:42:37', '2018-06-07 05:42:37'),
(3, 'footer', '2018-06-10 18:25:54', '2018-06-10 18:25:54');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-06-05 06:46:24', '2018-06-05 06:46:24', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 8, '2018-06-05 06:46:24', '2018-06-09 19:59:15', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 10, '2018-06-05 06:46:24', '2018-06-09 19:59:15', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 9, '2018-06-05 06:46:24', '2018-06-09 19:59:15', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 11, '2018-06-05 06:46:24', '2018-06-09 19:59:15', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2018-06-05 06:46:24', '2018-06-05 06:52:51', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2018-06-05 06:46:24', '2018-06-05 06:52:51', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2018-06-05 06:46:24', '2018-06-05 06:52:51', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2018-06-05 06:46:24', '2018-06-05 06:52:51', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 12, '2018-06-05 06:46:24', '2018-06-09 19:59:15', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 7, '2018-06-05 06:46:24', '2018-06-09 19:59:15', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-bookmark', '#000000', NULL, 5, '2018-06-05 06:46:25', '2018-06-09 19:59:17', 'voyager.posts.index', 'null'),
(13, 1, 'Pages', '', '_self', 'voyager-documentation', '#000000', NULL, 6, '2018-06-05 06:46:25', '2018-06-09 19:59:17', 'voyager.pages.index', 'null'),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2018-06-05 06:46:25', '2018-06-05 06:52:51', 'voyager.hooks', NULL),
(15, 2, 'Home', '', '_self', NULL, '#000000', NULL, 10, '2018-06-07 05:43:12', '2018-06-08 05:40:17', NULL, ''),
(16, 2, 'About', 'about', '_self', NULL, '#000000', NULL, 11, '2018-06-07 05:43:29', '2018-06-07 05:43:29', NULL, ''),
(17, 2, 'Guides', 'guides', '_self', NULL, '#000000', NULL, 12, '2018-06-07 05:43:42', '2018-06-07 05:43:42', NULL, ''),
(18, 2, 'Tutorials', 'tutorials', '_self', NULL, '#000000', NULL, 13, '2018-06-07 05:43:53', '2018-06-07 05:43:53', NULL, ''),
(19, 2, 'News', 'news', '_self', NULL, '#000000', NULL, 14, '2018-06-07 05:44:01', '2018-06-07 05:44:01', NULL, ''),
(20, 1, 'News', '', '_self', 'voyager-news', '#000000', NULL, 2, '2018-06-08 05:57:48', '2018-06-08 06:01:20', 'voyager.news.index', 'null'),
(21, 1, 'Tutorials', '', '_self', 'voyager-logbook', '#000000', NULL, 3, '2018-06-09 06:31:05', '2018-06-09 06:32:52', 'voyager.tutorials.index', 'null'),
(22, 1, 'Guides', '', '_self', 'voyager-list', '#000000', NULL, 4, '2018-06-09 19:54:54', '2018-06-09 20:02:43', 'voyager.guides.index', 'null'),
(23, 3, 'Terms of Use', 'terms-of-use', '_self', NULL, '#000000', NULL, 15, '2018-06-10 18:26:13', '2018-06-10 18:26:13', NULL, ''),
(24, 3, 'Privacy Policy', 'privacy-policy', '_self', NULL, '#000000', NULL, 16, '2018-06-10 18:26:27', '2018-06-10 18:26:27', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `meta_title` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` mediumtext COLLATE utf8_unicode_ci,
  `status` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `content`, `meta_title`, `meta_description`, `status`, `author_id`, `created_at`, `updated_at`, `image`, `published_date`) VALUES
(2, 'Program Experiences Web', 'program-experiences-web', '<h1>This is a News Title</h1>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero.</p>\r\n<p>Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. <em>Lorem ipsum dolor sit amet, consectetur adipiscing elit</em>. Maecenas mattis. <em>Lorem ipsum dolor sit amet, consectetur adipiscing elit</em>. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. <em>Lorem ipsum dolor sit amet, consectetur adipiscing elit</em>. Quisque volutpat condimentum velit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>\r\n<p>Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. Nulla facilisi.</p>', 'Program Experiences Web', '<p><strong>Lorem ipsum dolor sit</strong> amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>', 'PUBLISHED', 3, '2018-06-08 06:38:00', '2018-06-10 21:06:06', 'news\\June2018\\H0EaFofpSCcgU4x1uSmy.png', '2018-06-08 06:38:00'),
(3, 'The Latest Trend In React', 'the-latest-trend-in-react', '<h1>The Latest Trend In React</h1>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla.</p>\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum.</p>\r\n<p><em>Lorem ipsum dolor sit amet, consectetur adipiscing elit</em>. Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. <em>Pellentesque nibh</em>. Ut fringilla. Suspendisse potenti. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper.</p>\r\n<p>Nulla facilisi. Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede.</p>\r\n<p>Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci. Ut eu diam at pede suscipit sodales. <em>Curabitur sit amet mauris</em>. Aenean lectus elit, fermentum non, convallis id, sagittis at, neque. <em>Cras metus</em>. Nullam mauris orci, aliquet et, iaculis et, viverra vitae, ligula. Nulla ut felis in purus aliquam imperdiet. Maecenas aliquet mollis lectus. Vivamus consectetuer risus et tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.</p>', 'The Latest Trend in React', '<p>Ut orci risus, <strong>accumsan porttitor</strong>, cursus quis, aliquet eget, justo. Sed pretium blandit orci. Ut eu diam at pede suscipit sodales.&nbsp;<em>Curabitur sit amet mauris</em>. Aenean lectus elit, fermentum non, convallis id, sagittis at, neque.&nbsp;<em>Cras metus</em>.</p>', 'PUBLISHED', 4, '2018-06-08 06:43:00', '2018-06-10 21:05:37', 'news\\June2018\\mVCqIFdpo0HFVJfA4IFB.png', '2018-06-08 06:43:00'),
(4, 'Why Microsoft Is Willing to Pay So Much for GitHub', 'why-microsoft-is-willing-to-pay-so-much-for-github', '<h1>This is a News Title</h1>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero.</p>\r\n<p>Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. <strong>Mauris massa</strong>. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit.</p>\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. <strong>Nam nec ante</strong>. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. Nulla facilisi. Integer lacinia sollicitudin massa.</p>\r\n<p>Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. <strong>Curabitur sit amet mauris</strong>. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci. <em>Sed non quam</em>. Ut eu diam at pede suscipit sodales.</p>\r\n<p><em>Curabitur sit amet mauris</em>. Aenean lectus elit, fermentum non, convallis id, sagittis at, neque. Nullam mauris orci, aliquet et, iaculis et, viverra vitae, ligula. Nulla ut felis in purus aliquam imperdiet. Maecenas aliquet mollis lectus. Vivamus consectetuer risus et tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. <em>Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue</em>. Integer nec odio. Praesent libero. <em>Integer id quam</em>. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>\r\n<h3>Lorem ipsum dolor sit amet</h3>\r\n<p>Praesent mauris. Fusce nec tellus sed augue semper porta. <em>Nullam mauris orci, aliquet et, iaculis et, viverra vitae, ligula</em>. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. <em>Integer nec odio</em>. Pellentesque nibh. <em>Vivamus consectetuer risus et tortor</em>. Aenean quam. In scelerisque sem at dolor. Maecenas mattis. <strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor.</p>\r\n<p><strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. <em>Sed cursus ante dapibus diam</em>. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam.</p>\r\n<p><em>Fusce ac turpis quis ligula lacinia aliquet</em>. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus. Integer euismod lacus luctus magna. <strong>Nam nec ante</strong>. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. <strong>Suspendisse potenti</strong>. Praesent blandit dolor. Sed non quam. <em>Nam nec ante</em>. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim.</p>\r\n<p>Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. Nulla facilisi. <em>Suspendisse in justo eu magna luctus suscipit</em>. Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. <em>Etiam ultrices</em>. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo.</p>', 'Why Microsoft Is Willing to Pay So Much for GitHub', '<p>Curabitur sit <strong>amet mauris</strong>. Morbi in dui quis est pulvinar ullamcorper. Nulla facilisi.&nbsp;Suspendisse in justo eu magna luctus suscipit. Integer lacinia sollicitudin massa.</p>', 'PUBLISHED', 4, '2018-06-08 06:46:00', '2018-06-10 21:00:32', 'news\\June2018\\G1iIdvNGklAlYNsBWQrj.png', '2018-06-08 06:46:00'),
(5, 'Laravel 5.6.2 Is Out', 'laravel-5-6-2-is-out', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero.</p>\r\n<p>Sed dignissim lacinia nunc. <em>Lorem ipsum dolor sit amet, consectetur adipiscing elit</em>. Curabitur tortor. <em>Lorem ipsum dolor sit amet, consectetur adipiscing elit</em>. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum.</p>\r\n<p><strong>Aenean quam</strong>. Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. <strong>Maecenas mattis</strong>. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. <strong>Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh</strong>. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. <em>Proin ut ligula vel nunc egestas porttitor</em>. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper.</p>\r\n<p>Nulla facilisi. Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci.</p>\r\n<p>Ut eu diam at pede suscipit sodales. Aenean lectus elit, fermentum non, convallis id, sagittis at, neque. <em>Cras metus</em>. Nullam mauris orci, aliquet et, iaculis et, viverra vitae, ligula. Nulla ut felis in purus aliquam imperdiet. Maecenas aliquet mollis lectus. Vivamus consectetuer risus et tortor. <em>Vestibulum tincidunt malesuada tellus</em>. Lorem ipsum dolor sit amet, consectetur adipiscing elit. <em>Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue</em>. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris.</p>\r\n<p>Fusce nec tellus sed augue semper porta. <strong>Nullam mauris orci, aliquet et, iaculis et, viverra vitae, ligula</strong>. Mauris massa. Vestibulum lacinia arcu eget nulla. <em>Aenean lectus elit, fermentum non, convallis id, sagittis at, neque</em>. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. <strong>Sed cursus ante dapibus diam</strong>. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. <strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa.</p>', NULL, NULL, 'PUBLISHED', 4, '2018-06-10 21:03:00', '2018-06-10 21:08:43', 'news\\June2018\\uylP7zF0O8v2in9ztbNq.png', '2018-06-10 21:03:00');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `header_title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `header_content` mediumtext COLLATE utf8_unicode_ci,
  `meta_title` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` mediumtext COLLATE utf8_unicode_ci,
  `header_background_color` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `general_content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `header_title`, `header_content`, `meta_title`, `meta_description`, `header_background_color`, `created_at`, `updated_at`, `status`, `general_content`) VALUES
(1, 'Home', 'home', 'This is a Header', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel tellus eu neque congue mollis. Nam dapibus massa non vestibulum venenatis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sit amet.', NULL, NULL, '#000000', '2018-06-07 04:04:00', '2018-06-07 05:36:19', 'PUBLISHED', NULL),
(2, 'Tutorials', 'tutorials', 'Our Tutorials', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel tellus eu neque congue mollis. Nam dapibus massa non vestibulum venenatis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sit amet.', 'Tutorials', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel tellus eu neque congue mollis. Nam dapibus massa non vestibulum venenatis.', '#7c5dac', '2018-06-07 05:35:39', '2018-06-07 05:35:39', 'PUBLISHED', NULL),
(3, 'Guides', 'guides', 'Our Guides', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel tellus eu neque congue mollis. Nam dapibus massa non vestibulum venenatis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sit amet.', 'Our Guides | TutsHub', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel tellus eu neque congue mollis. Nam dapibus massa non vestibulum venenatis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sit amet.', '#15bfb1', '2018-06-08 05:46:01', '2018-06-08 05:46:01', 'PUBLISHED', NULL),
(4, 'News', 'news', 'News', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel tellus eu neque congue mollis. Nam dapibus massa non vestibulum venenatis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sit amet.', 'News | TutsHub', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel tellus eu neque congue mollis. Nam dapibus massa non vestibulum venenatis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sit amet.', '#0086bb', '2018-06-08 05:47:00', '2018-06-08 05:47:36', 'PUBLISHED', NULL),
(5, 'About', 'about', 'About TutsHub', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel tellus eu neque congue mollis. Nam dapibus massa non vestibulum venenatis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sit amet.', 'About | TutsHub', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel tellus eu neque congue mollis. Nam dapibus massa non vestibulum venenatis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sit amet.', '#ffa17a', '2018-06-08 05:48:45', '2018-06-08 05:48:45', 'PUBLISHED', NULL),
(6, 'Terms Of Use', 'terms-of-use', 'Terms of Use', NULL, 'Terms of Use | TutsHub', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sit amet consectetur quam, non ornare orci. Praesent convallis augue fermentum, sagittis dui a, ultricies urna. Cras nulla purus, lacinia eget dapibus id, condimentum et mi. Nullam sed.', '#15bfb1', '2018-06-10 18:22:00', '2018-06-10 20:29:21', 'PUBLISHED', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta.&nbsp;<strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero.</p>\r\n<p>Sed dignissim lacinia nunc.&nbsp;<em>Lorem ipsum dolor sit amet, consectetur adipiscing elit</em>. Curabitur tortor.&nbsp;<em>Lorem ipsum dolor sit amet, consectetur adipiscing elit</em>. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum.</p>\r\n<p><strong>Aenean quam</strong>. Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.&nbsp;<strong>Maecenas mattis</strong>. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices.&nbsp;<strong>Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh</strong>. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam.&nbsp;<em>Proin ut ligula vel nunc egestas porttitor</em>. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper.</p>\r\n<p>Nulla facilisi. Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci.</p>\r\n<p>Ut eu diam at pede suscipit sodales. Aenean lectus elit, fermentum non, convallis id, sagittis at, neque.&nbsp;<em>Cras metus</em>. Nullam mauris orci, aliquet et, iaculis et, viverra vitae, ligula. Nulla ut felis in purus aliquam imperdiet. Maecenas aliquet mollis lectus. Vivamus consectetuer risus et tortor.&nbsp;<em>Vestibulum tincidunt malesuada tellus</em>. Lorem ipsum dolor sit amet, consectetur adipiscing elit.&nbsp;<em>Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue</em>. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris.</p>\r\n<p>Fusce nec tellus sed augue semper porta.&nbsp;<strong>Nullam mauris orci, aliquet et, iaculis et, viverra vitae, ligula</strong>. Mauris massa. Vestibulum lacinia arcu eget nulla.&nbsp;<em>Aenean lectus elit, fermentum non, convallis id, sagittis at, neque</em>. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor.&nbsp;<strong>Sed cursus ante dapibus diam</strong>. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor.&nbsp;<strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa.</p>\r\n<p>Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis.&nbsp;<strong>Fusce ac turpis quis ligula lacinia aliquet</strong>. Nulla facilisi. Ut fringilla. Suspendisse potenti. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices.</p>\r\n<p>Suspendisse in justo eu magna luctus suscipit. Sed lectus. Integer euismod lacus luctus magna.&nbsp;<strong>Ut fringilla</strong>. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui.&nbsp;<strong>Ut fringilla</strong>. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim.</p>\r\n<p><strong>Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam</strong>. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. Nulla facilisi. Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue.&nbsp;<strong>Curabitur sit amet mauris</strong>. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo.</p>'),
(7, 'Privacy Policy', 'privacy-policy', 'Privacy Policy', NULL, 'Privacy Policy | TutsHub', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sit amet consectetur quam, non ornare orci. Praesent convallis augue fermentum, sagittis dui a, ultricies urna. Cras nulla purus, lacinia eget dapibus id, condimentum et mi. Nullam sed.', '#15bfb1', '2018-06-10 18:25:00', '2018-06-10 20:25:41', 'PUBLISHED', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero.</p>\r\n<p>Sed dignissim lacinia nunc. <em>Lorem ipsum dolor sit amet, consectetur adipiscing elit</em>. Curabitur tortor. <em>Lorem ipsum dolor sit amet, consectetur adipiscing elit</em>. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum.</p>\r\n<p><strong>Aenean quam</strong>. Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. <strong>Maecenas mattis</strong>. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. <strong>Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh</strong>. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. <em>Proin ut ligula vel nunc egestas porttitor</em>. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper.</p>\r\n<p>Nulla facilisi. Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci.</p>\r\n<p>Ut eu diam at pede suscipit sodales. Aenean lectus elit, fermentum non, convallis id, sagittis at, neque. <em>Cras metus</em>. Nullam mauris orci, aliquet et, iaculis et, viverra vitae, ligula. Nulla ut felis in purus aliquam imperdiet. Maecenas aliquet mollis lectus. Vivamus consectetuer risus et tortor. <em>Vestibulum tincidunt malesuada tellus</em>. Lorem ipsum dolor sit amet, consectetur adipiscing elit. <em>Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue</em>. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris.</p>\r\n<p>Fusce nec tellus sed augue semper porta. <strong>Nullam mauris orci, aliquet et, iaculis et, viverra vitae, ligula</strong>. Mauris massa. Vestibulum lacinia arcu eget nulla. <em>Aenean lectus elit, fermentum non, convallis id, sagittis at, neque</em>. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. <strong>Sed cursus ante dapibus diam</strong>. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. <strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa.</p>\r\n<p>Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. <strong>Fusce ac turpis quis ligula lacinia aliquet</strong>. Nulla facilisi. Ut fringilla. Suspendisse potenti. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices.</p>\r\n<p>Suspendisse in justo eu magna luctus suscipit. Sed lectus. Integer euismod lacus luctus magna. <strong>Ut fringilla</strong>. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. <strong>Ut fringilla</strong>. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim.</p>\r\n<p><strong>Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam</strong>. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. Nulla facilisi. Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. <strong>Curabitur sit amet mauris</strong>. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(2, 'browse_bread', NULL, '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(3, 'browse_database', NULL, '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(4, 'browse_media', NULL, '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(5, 'browse_compass', NULL, '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(6, 'browse_menus', 'menus', '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(7, 'read_menus', 'menus', '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(8, 'edit_menus', 'menus', '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(9, 'add_menus', 'menus', '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(10, 'delete_menus', 'menus', '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(11, 'browse_roles', 'roles', '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(12, 'read_roles', 'roles', '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(13, 'edit_roles', 'roles', '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(14, 'add_roles', 'roles', '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(15, 'delete_roles', 'roles', '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(16, 'browse_users', 'users', '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(17, 'read_users', 'users', '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(18, 'edit_users', 'users', '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(19, 'add_users', 'users', '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(20, 'delete_users', 'users', '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(21, 'browse_settings', 'settings', '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(22, 'read_settings', 'settings', '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(23, 'edit_settings', 'settings', '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(24, 'add_settings', 'settings', '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(25, 'delete_settings', 'settings', '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(26, 'browse_categories', 'categories', '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(27, 'read_categories', 'categories', '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(28, 'edit_categories', 'categories', '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(29, 'add_categories', 'categories', '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(30, 'delete_categories', 'categories', '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(31, 'browse_posts', 'posts', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(32, 'read_posts', 'posts', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(33, 'edit_posts', 'posts', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(34, 'add_posts', 'posts', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(35, 'delete_posts', 'posts', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(41, 'browse_hooks', NULL, '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(42, 'browse_pages', 'pages', '2018-06-07 03:57:33', '2018-06-07 03:57:33'),
(43, 'read_pages', 'pages', '2018-06-07 03:57:33', '2018-06-07 03:57:33'),
(44, 'edit_pages', 'pages', '2018-06-07 03:57:33', '2018-06-07 03:57:33'),
(45, 'add_pages', 'pages', '2018-06-07 03:57:33', '2018-06-07 03:57:33'),
(46, 'delete_pages', 'pages', '2018-06-07 03:57:33', '2018-06-07 03:57:33'),
(47, 'browse_news', 'news', '2018-06-08 05:57:48', '2018-06-08 05:57:48'),
(48, 'read_news', 'news', '2018-06-08 05:57:48', '2018-06-08 05:57:48'),
(49, 'edit_news', 'news', '2018-06-08 05:57:48', '2018-06-08 05:57:48'),
(50, 'add_news', 'news', '2018-06-08 05:57:48', '2018-06-08 05:57:48'),
(51, 'delete_news', 'news', '2018-06-08 05:57:48', '2018-06-08 05:57:48'),
(52, 'browse_tutorials', 'tutorials', '2018-06-09 06:31:05', '2018-06-09 06:31:05'),
(53, 'read_tutorials', 'tutorials', '2018-06-09 06:31:05', '2018-06-09 06:31:05'),
(54, 'edit_tutorials', 'tutorials', '2018-06-09 06:31:05', '2018-06-09 06:31:05'),
(55, 'add_tutorials', 'tutorials', '2018-06-09 06:31:05', '2018-06-09 06:31:05'),
(56, 'delete_tutorials', 'tutorials', '2018-06-09 06:31:05', '2018-06-09 06:31:05'),
(57, 'browse_guides', 'guides', '2018-06-09 19:54:54', '2018-06-09 19:54:54'),
(58, 'read_guides', 'guides', '2018-06-09 19:54:54', '2018-06-09 19:54:54'),
(59, 'edit_guides', 'guides', '2018-06-09 19:54:54', '2018-06-09 19:54:54'),
(60, 'add_guides', 'guides', '2018-06-09 19:54:54', '2018-06-09 19:54:54'),
(61, 'delete_guides', 'guides', '2018-06-09 19:54:54', '2018-06-09 19:54:54');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(4, 3),
(5, 1),
(6, 1),
(6, 3),
(7, 1),
(7, 3),
(8, 1),
(8, 3),
(9, 1),
(9, 3),
(10, 1),
(10, 3),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 3),
(17, 1),
(17, 3),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(21, 3),
(22, 1),
(22, 3),
(23, 1),
(23, 3),
(24, 1),
(25, 1),
(26, 1),
(26, 2),
(26, 3),
(27, 1),
(27, 2),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(30, 3),
(31, 1),
(31, 2),
(31, 3),
(32, 1),
(32, 2),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(34, 3),
(35, 1),
(35, 3),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(45, 3),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(50, 3),
(51, 1),
(51, 3),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-06-05 06:46:25', '2018-06-05 06:46:25');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(2, 'user', 'Normal User', '2018-06-05 06:46:24', '2018-06-05 06:46:24'),
(3, 'content editor', 'Content Editor', '2018-06-08 06:05:13', '2018-06-08 06:05:13');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'TutsHub', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\June2018\\sWZpXMSZsmm8D1oyA6wy.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'TutsHub', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2018-06-05 06:46:25', '2018-06-05 06:46:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$G51N3yLehQPAjdBYSFwmP.tZ2EkE5F8dswB/EaKsYneHGxqnKEX0u', '7JAL4dpI0TEUxHjHOOkp0RXU3FqBh5u5VM3M59iuKoDIgpeEM4dIoXaX5hGL', NULL, '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(3, 3, 'Scottie Walsh', 'swalsh@email.com', 'users\\June2018\\RnaONGgzd4HdLbG0GtCM.jpg', '$2y$10$bMUmv/nR0b7GTwZlOSu/PuV.z81bj.h41X1PVzDe3xlP/2piC9Fmu', 'iJuQVVoU6zmVjXMNq60ZCymY6PU8MXOguIKMdvqP3CvI0zpmlUX99Le2t0Zs', '{\"locale\":\"en\"}', '2018-06-08 06:07:28', '2018-06-08 06:16:49'),
(4, 3, 'Katelyn Mayer', 'kmayer@gmail.com', 'users\\June2018\\ERkI2O0caeVv1pGs4A6E.png', '$2y$10$gKjbqI3ClRXq/acdtICMf.JsUTWbt.l76KkbLLltgWAcWtZrQd0kC', NULL, '{\"locale\":\"en\"}', '2018-06-08 06:17:51', '2018-06-08 06:17:51');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
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
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
