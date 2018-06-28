-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2018 at 03:04 AM
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
(36, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"large\",\"scale\":\"75%\"},{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
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
(109, 10, 'image', 'image', 'Image', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"large\",\"scale\":\"75%\"},{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 10),
(110, 8, 'image', 'image', 'Image', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"large\",\"scale\":\"75%\"},{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 12),
(111, 9, 'image', 'image', 'Image', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"large\",\"scale\":\"75%\"},{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 16),
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
-- Table structure for table `guides`
--

CREATE TABLE `guides` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `overview` mediumtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author_id` int(10) UNSIGNED DEFAULT NULL,
  `published_date` timestamp NOT NULL DEFAULT '2018-01-01 13:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `guides`
--

INSERT INTO `guides` (`id`, `name`, `slug`, `overview`, `created_at`, `updated_at`, `status`, `meta_title`, `meta_description`, `image`, `author_id`, `published_date`) VALUES
(1, 'React for Beginners', 'react-for-beginners', '<p style=\"box-sizing: border-box; margin: 0px 0px 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; padding: 0px; vertical-align: baseline; color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Bacon ipsum dolor amet ut short ribs capicola eiusmod, do duis ipsum ea tenderloin bresaola hamburger burgdoggen culpa cupidatat. Drumstick officia anim cupidatat commodo swine. Aliquip short loin nisi aliqua salami pariatur. Duis shankle non pork belly jowl bresaola brisket consectetur. Deserunt aliqua boudin cow mollit capicola pork chop et do turkey. Flank sausage anim beef.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; padding: 0px; vertical-align: baseline; color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Sed picanha in ea kielbasa deserunt non doner reprehenderit ham fugiat dolore ground round ball tip. Filet mignon burgdoggen ribeye, mollit shank pork belly nostrud landjaeger eu ea incididunt minim tri-tip t-bone. Id salami pork belly, labore sirloin nulla consequat jerky pork loin boudin officia tenderloin ipsum. Tongue do enim anim pork chop, boudin occaecat eu aute.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; padding: 0px; vertical-align: baseline; color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Our Learning Path:</p>\r\n<ol>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; padding: 0px; vertical-align: baseline; color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Tutorial 1</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; padding: 0px; vertical-align: baseline; color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Tutorial 2</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; padding: 0px; vertical-align: baseline; color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Tutorial 3</li>\r\n</ol>', '2018-06-09 20:22:00', '2018-06-10 20:57:37', 'PUBLISHED', 'React for Beginners', NULL, 'guides\\June2018\\DcCCqfjyZU5FrMsQxTVW.png', 3, '2018-06-09 20:22:00');

-- --------------------------------------------------------

--
-- Table structure for table `guide_category`
--

CREATE TABLE `guide_category` (
  `guide_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `guide_category`
--

INSERT INTO `guide_category` (`guide_id`, `category_id`) VALUES
(1, 3);

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
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, 25, 1, '2018-06-05 06:46:24', '2018-06-10 21:14:35', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 25, 2, '2018-06-05 06:46:24', '2018-06-10 21:14:39', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 10, '2018-06-05 06:46:24', '2018-06-10 21:14:39', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2018-06-05 06:46:24', '2018-06-05 06:52:51', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2018-06-05 06:46:24', '2018-06-05 06:52:51', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2018-06-05 06:46:24', '2018-06-05 06:52:51', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2018-06-05 06:46:24', '2018-06-05 06:52:51', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 11, '2018-06-05 06:46:24', '2018-06-10 21:14:39', 'voyager.settings.index', NULL),
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
(24, 3, 'Privacy Policy', 'privacy-policy', '_self', NULL, '#000000', NULL, 16, '2018-06-10 18:26:27', '2018-06-10 18:26:27', NULL, ''),
(25, 1, 'User Manager', '', '_self', 'voyager-person', '#000000', NULL, 9, '2018-06-10 21:14:28', '2018-06-10 21:14:55', NULL, '');

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
(4, 'Why Microsoft Is Willing to Pay So Much for GitHub', 'why-microsoft-is-willing-to-pay-so-much-for-github', '<h2 style=\"text-align: left;\">This is a News Title</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero.</p>\r\n<p>Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. <strong>Mauris massa</strong>. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit.</p>\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. <strong>Nam nec ante</strong>. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. Nulla facilisi. Integer lacinia sollicitudin massa.</p>\r\n<p>Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. <strong>Curabitur sit amet mauris</strong>. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci. <em>Sed non quam</em>. Ut eu diam at pede suscipit sodales.</p>\r\n<p><em>Curabitur sit amet mauris</em>. Aenean lectus elit, fermentum non, convallis id, sagittis at, neque. Nullam mauris orci, aliquet et, iaculis et, viverra vitae, ligula. Nulla ut felis in purus aliquam imperdiet. Maecenas aliquet mollis lectus. Vivamus consectetuer risus et tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. <em>Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue</em>. Integer nec odio. Praesent libero. <em>Integer id quam</em>. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>\r\n<h3>Lorem ipsum dolor sit amet</h3>\r\n<p>Praesent mauris. Fusce nec tellus sed augue semper porta. <em>Nullam mauris orci, aliquet et, iaculis et, viverra vitae, ligula</em>. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. <em>Integer nec odio</em>. Pellentesque nibh. <em>Vivamus consectetuer risus et tortor</em>. Aenean quam. In scelerisque sem at dolor. Maecenas mattis. <strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor.</p>\r\n<p><strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. <em>Sed cursus ante dapibus diam</em>. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam.</p>\r\n<p><em>Fusce ac turpis quis ligula lacinia aliquet</em>. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus. Integer euismod lacus luctus magna. <strong>Nam nec ante</strong>. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. <strong>Suspendisse potenti</strong>. Praesent blandit dolor. Sed non quam. <em>Nam nec ante</em>. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim.</p>\r\n<p>Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. Nulla facilisi. <em>Suspendisse in justo eu magna luctus suscipit</em>. Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. <em>Etiam ultrices</em>. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo.</p>', 'Why Microsoft Is Willing to Pay So Much for GitHub', '<p>Curabitur sit <strong>amet mauris</strong>. Morbi in dui quis est pulvinar ullamcorper. Nulla facilisi.&nbsp;Suspendisse in justo eu magna luctus suscipit. Integer lacinia sollicitudin massa.</p>', 'PUBLISHED', 4, '2018-06-08 06:46:00', '2018-06-13 04:53:20', 'news\\June2018\\G1iIdvNGklAlYNsBWQrj.png', '2018-06-08 06:46:00'),
(5, 'Laravel 5.6.2 Is Out', 'laravel-5-6-2-is-out', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero.</p>\r\n<p>Sed dignissim lacinia nunc. <em>Lorem ipsum dolor sit amet, consectetur adipiscing elit</em>. Curabitur tortor. <em>Lorem ipsum dolor sit amet, consectetur adipiscing elit</em>. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor.&nbsp;</p>\r\n<p><strong>Aenean quam</strong>. Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. <strong>Maecenas mattis</strong>. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. <strong>Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh</strong>. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. <em>Proin ut ligula vel nunc egestas porttitor</em>. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper.</p>\r\n<p>Nulla facilisi. Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci.</p>\r\n<p>Ut eu diam at pede suscipit sodales. Aenean lectus elit, fermentum non, convallis id, sagittis at, neque. <em>Cras metus</em>. Nullam mauris orci, aliquet et, iaculis et, viverra vitae, ligula. Nulla ut felis in purus aliquam imperdiet. Maecenas aliquet mollis lectus. Vivamus consectetuer risus et tortor. <em>Vestibulum tincidunt malesuada tellus</em>. Lorem ipsum dolor sit amet, consectetur adipiscing elit. <em>Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue</em>. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris.</p>\r\n<p>Fusce nec tellus sed augue semper porta. <strong>Nullam mauris orci, aliquet et, iaculis et, viverra vitae, ligula</strong>. Mauris massa. Vestibulum lacinia arcu eget nulla. <em>Aenean lectus elit, fermentum non, convallis id, sagittis at, neque</em>. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. <strong>Sed cursus ante dapibus diam</strong>. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. <strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa.</p>', 'Laravel 5.6.2 Is Out', '<p>Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum.</p>', 'PUBLISHED', 4, '2018-06-06 04:00:00', '2018-06-14 05:24:06', 'news\\June2018\\DgIjiZk2S262xmWq44N6.png', '2018-06-14 04:00:00'),
(6, 'Public-key empowering throughput', 'public-key-empowering-throughput', 'Dolore qui qui corrupti quam soluta facere nihil. Veritatis exercitationem corrupti rerum. Dolores ducimus sint voluptas recusandae quo atque dolorem. Nemo accusamus amet quam tempora.\n\nAccusantium ipsa aut sit ut provident doloribus. Autem asperiores incidunt quas ipsam autem. Velit placeat natus et et. Non laborum distinctio natus quidem.\n\nEsse dolorem iste et unde. Quam rem laboriosam incidunt. Quia dolores quo voluptatem facilis facere. Vel voluptas id magni reiciendis est hic dolor quo.\n\nEnim nam quam quae voluptates fugiat est autem. Dolor aut dolorem nobis.\n\nTotam consequatur veritatis autem voluptates ipsa natus beatae. Sint sed exercitationem sapiente rerum. Voluptas sint voluptatem accusantium est ad. Rerum quibusdam numquam voluptatibus. Velit nobis consequatur qui odio.\n\nNihil aut accusantium tenetur necessitatibus. Quisquam autem est quia molestiae. Facere qui qui reiciendis quidem nesciunt.\n\nEum sit laboriosam beatae ut sint et totam. Sit ab minus dolores quis laboriosam. Dicta ipsa quis fuga quis molestiae voluptas.\n\nVelit ut facere nihil qui iure. Voluptatem iusto et quo non voluptatem odit. Velit aspernatur aliquid corrupti distinctio deserunt. Laborum expedita ut cupiditate laudantium enim eligendi. Modi exercitationem et quia doloremque quia.\n\nMollitia qui qui sit aut eligendi. Qui vel vero eligendi minima. Velit repellendus aliquid nihil doloremque qui ut.', 'Public-key empowering throughput', 'Illum earum pariatur quia sint soluta nobis harum. Quisquam totam pariatur culpa et aliquam. Qui sit iste rem a. Vel qui qui dolor magnam tempora.', 'DRAFT', NULL, '2018-06-16 22:16:01', '2018-06-16 22:16:01', 'https://lorempixel.com/768/520/?48212', '2018-06-16 22:16:01'),
(7, 'Ergonomic context-sensitive superstructure', 'ergonomic-context-sensitive-superstructure', '<p>Quasi consequatur eum hic aliquid. Excepturi iste eveniet nulla et. Porro dolor voluptatem nihil corporis enim dolores. Sunt nisi eum veritatis et laborum architecto. Qui illum in amet est incidunt. Corrupti sit pariatur laborum tempora alias qui. Quae natus assumenda voluptatibus ut eum temporibus. Dolorum aut saepe incidunt voluptate est placeat rerum. Fugit rem velit pariatur occaecati quis sed. Ut incidunt asperiores architecto illum ipsam necessitatibus iure. Quos fugiat sit ab similique perferendis nisi. Dignissimos vero necessitatibus quaerat ut rem consequatur. Consequatur laudantium fuga enim est cumque quidem. Aut vero sapiente saepe facilis esse. Labore et vel est aspernatur. Alias saepe deleniti accusantium aspernatur quas natus rem. Fugiat beatae amet itaque unde qui neque porro praesentium. Laboriosam repellendus sit ut ipsam. Est molestiae asperiores consequuntur sed ipsa minus. Impedit consequatur et architecto. Id et perferendis voluptas officiis. Dolorem minima libero asperiores voluptatem. Praesentium ut quaerat enim et at quasi. Ut veniam omnis adipisci corrupti quia. Iste quaerat a deserunt omnis necessitatibus aut. Temporibus odit voluptas facilis placeat qui. Fugiat iure qui non repudiandae. Amet ut nesciunt ut nemo dolores culpa incidunt. Est eos magnam ullam cum. Et sapiente quo laboriosam est error rerum blanditiis ratione. Provident voluptate sit dolorem voluptatum dolor.</p>', 'Ergonomic context-sensitive superstructure', '<p>Dicta eius eligendi natus rem. Sed voluptate eaque quibusdam tenetur sapiente exercitationem. Velit sit rerum ab provident in dolor qui.</p>', 'PUBLISHED', 45, '2018-06-16 22:16:19', '2018-06-16 22:21:25', 'https://lorempixel.com/768/520/?54637', '2018-06-16 22:16:19'),
(8, 'Dolores fugit voluptatibus qui qui.', 'dolores-fugit-voluptatibus-qui-qui', 'Non quia natus unde sed nostrum. Rem quae voluptas ipsam. Et et voluptatum est a ex quidem. Qui fuga repudiandae provident quis unde facere. Voluptatem ad a reiciendis rerum neque perferendis cum quis.\n\nCupiditate omnis aperiam reiciendis est iure nobis error. Rerum libero laborum culpa qui fuga. Voluptas impedit sit nobis qui occaecati velit fugit.\n\nLaudantium et unde odio aut. Possimus repellendus impedit sunt reprehenderit quia voluptas consequatur.\n\nAliquam dolore soluta sint voluptates ut rerum. Corrupti illum quis omnis quisquam voluptas. Sequi ut iusto non.\n\nAtque velit consequatur eius porro necessitatibus velit omnis voluptatem. Voluptatem est dolorum esse alias assumenda. Perferendis neque ea modi aliquam accusamus explicabo quod.\n\nQui quia qui sit dolores nihil accusantium accusantium tempora. Fugit dolores quibusdam est facilis deleniti officia distinctio. Ea labore quia quis deleniti. Laborum numquam distinctio dolorem iusto et consequuntur.', 'Dolores fugit voluptatibus qui qui.', 'Occaecati deleniti architecto qui enim saepe. Deserunt voluptatem porro et et. Exercitationem consectetur qui et sunt porro.', 'PUBLISHED', 54, '2018-06-16 22:34:12', '2018-06-16 22:34:12', 'https://lorempixel.com/768/520/?24951', '2018-06-16 22:34:12'),
(9, 'Progressive 3rdgeneration capacity', 'progressive-3rdgeneration-capacity', 'Dolor aut similique quod et modi dolor et. Recusandae ut commodi nisi et soluta delectus amet sed. Qui aut ducimus consequatur fuga repellendus incidunt. Quaerat assumenda velit quisquam ducimus est sit voluptas.\n\nVelit et veritatis et rerum ipsa voluptatem porro. Odit recusandae ullam laudantium ut est asperiores quisquam. Debitis doloribus quis nihil natus. Voluptatem qui expedita quod enim vel consectetur et voluptatibus. Nam culpa soluta eaque accusantium qui eum.\n\nVelit reiciendis inventore temporibus qui vel. Consequuntur porro fugit animi repellendus perspiciatis. Fugiat officiis tempore voluptatibus nihil ab autem est. Ullam impedit doloribus laudantium debitis consectetur ut.\n\nMaiores quasi velit vel. Aut reiciendis ut omnis iusto. Eligendi eligendi qui aut. Voluptatum debitis iure autem voluptas.\n\nQuo possimus eum error nobis quam. Dignissimos aliquam ratione sit molestiae.\n\nEst quo nihil consequuntur ut. Magnam exercitationem accusamus rerum ab.\n\nNeque omnis rem reprehenderit quas sit aperiam. Ab beatae eum at nesciunt et provident quo dolor. Voluptas sequi porro error consequuntur repellendus laboriosam.\n\nAccusantium nobis cumque iste laborum dolorum corporis. Cum eius officia ipsa eos ad deleniti.\n\nUt sequi aut voluptas laudantium minima. Commodi omnis molestias quos eos est ullam corporis omnis. Unde dolorem repellendus est ut exercitationem autem ut dignissimos. Voluptate numquam impedit eveniet et qui ipsa repudiandae sunt.\n\nQuibusdam et maiores aspernatur est quos et odio. Autem aut et nam. Sit cumque earum officiis esse et magni sunt dolorum. Sunt reiciendis natus molestiae id et sint voluptate.', 'Progressive 3rdgeneration capacity', 'Voluptas incidunt at omnis enim dignissimos impedit tenetur. Voluptatem voluptatem qui enim odio quos quo exercitationem est. Placeat laboriosam sunt quis quam commodi. Expedita minus maxime reprehenderit.', 'PENDING', 17, '2018-06-16 22:36:26', '2018-06-16 22:36:26', 'https://lorempixel.com/768/520/?26375', '2018-06-16 22:36:26'),
(10, 'Intuitive 3rdgeneration task-force', 'intuitive-3rdgeneration-task-force', 'Eos debitis et eum aliquam exercitationem sed quia deserunt. Sed qui qui qui facilis error quaerat culpa. Explicabo temporibus maxime sapiente molestiae earum.\n\nCupiditate quos unde accusantium similique vel aut. Et alias voluptatem placeat corporis corrupti. Laudantium tenetur et qui facere in quia facere. Magnam reprehenderit iste dicta sint unde aspernatur explicabo.\n\nVelit suscipit est doloribus autem omnis. Magni distinctio dolor blanditiis nulla. Tempora maiores non laborum inventore.\n\nHarum commodi consequatur magni dolor. Inventore quis pariatur qui.\n\nRerum ipsam amet aliquid consequatur consequuntur. Praesentium similique in id ducimus et.\n\nNon est pariatur possimus ipsum omnis ea quae. Esse in nam repudiandae et sit. Est ducimus voluptatibus quos debitis inventore.\n\nQuia voluptatum quis aspernatur nam. Quos dolorem veniam quod repudiandae impedit quia quo. Mollitia et occaecati dolores vitae ut quia commodi et.\n\nAmet et voluptatibus illum et quaerat inventore sunt quia. Eaque ut eum tenetur quasi quod sint aliquam. Ut rerum dolorem soluta natus recusandae architecto.', 'Intuitive 3rdgeneration task-force', 'Eaque fuga tempore debitis rerum rem et. Distinctio omnis aut qui porro vel eaque. Dolores quidem et officiis natus culpa. Autem est dolores ex hic.', 'PUBLISHED', 6, '2018-06-16 22:36:26', '2018-06-16 22:36:26', 'https://lorempixel.com/768/520/?81122', '2018-06-16 22:36:26'),
(11, 'Balanced motivating implementation', 'balanced-motivating-implementation', '<p>Reprehenderit eos voluptatem aut enim aut. Voluptas reiciendis aperiam non molestias asperiores sed voluptatum. Distinctio accusamus quia at et temporibus. Esse consequatur recusandae et eveniet qui ad aut. Repellat enim velit qui dolore libero quae. Velit nemo maiores maxime velit optio unde harum. Sed et corrupti in qui minima. Itaque ea et mollitia maiores. Dolorum dignissimos ut eveniet aut magnam eum cumque. Provident ab explicabo autem velit magni. Veniam hic consequuntur nobis quod eligendi et autem. Illum ut commodi dolorum distinctio. Eligendi et qui sit qui. Sint dolorum est et velit.</p>', 'Balanced motivating implementation', '<p>Illum placeat dolores dolorem aliquid error suscipit ut. Ut nisi quaerat nihil saepe. Quidem quos laudantium aut. Sed quo in delectus totam. Illo et et praesentium omnis ipsa debitis voluptates occaecati.</p>', 'PUBLISHED', 33, '2018-06-16 22:36:26', '2018-06-16 22:48:11', 'https://lorempixel.com/768/520/?89074', '2018-06-16 22:36:26'),
(12, 'Digitized 24hour challenge', 'digitized-24hour-challenge', '<p>Qui quod quia quibusdam placeat ex voluptas consequatur. Ad ratione distinctio aut architecto. Sed veniam ut veritatis vel pariatur sunt. Voluptas sit non quo voluptates excepturi modi expedita natus. Cupiditate placeat cum autem accusantium soluta. Quis eveniet est corporis facere error. Autem quis qui delectus dignissimos unde libero necessitatibus corporis. Libero beatae sit et in. Iure aliquam et distinctio. Illum dolorem unde aut aut ad. Non fuga deleniti sit saepe facere voluptatem. Consequatur nemo ut voluptatibus rerum. Iure mollitia rerum quas molestiae perspiciatis. Occaecati quibusdam autem sit dicta voluptatem. Eius nihil eveniet error eius voluptatem. Dolorem doloremque fuga quod. Voluptatem enim temporibus laborum ut. Ducimus ex quaerat quas et consequatur qui. Minus voluptatibus distinctio aut doloremque non. Quaerat dolor quo voluptatum fugit aliquid aut ut est. Eos deleniti et eaque dolores ducimus repudiandae. Eaque perspiciatis ex omnis repudiandae consequuntur suscipit. Vero et architecto laudantium consequatur mollitia aut. Consequatur voluptas alias ipsa esse harum. Adipisci consectetur aut suscipit et minima eum.</p>', 'Digitized 24hour challenge', '<p>Alias quidem nemo odio mollitia corrupti voluptatem sequi. Provident voluptates ad modi tenetur porro possimus. Eveniet accusamus sequi ut est saepe. Unde hic natus ratione corrupti ipsa excepturi.</p>', 'PUBLISHED', 40, '2018-06-16 22:36:26', '2018-06-16 22:47:59', 'https://lorempixel.com/768/520/?10681', '2018-06-16 22:36:26'),
(13, 'Seamless intangible migration', 'seamless-intangible-migration', 'Aliquid perferendis sed velit fugiat expedita blanditiis totam perspiciatis. Ullam dolorum sit enim sint minus nesciunt aspernatur. Facere cum et sed.\n\nAsperiores aperiam et asperiores ipsam. Voluptatem natus earum voluptatem repudiandae. Consequuntur nam molestiae eaque dolor saepe.\n\nEum quia quia aut voluptatem sed nobis. Non officia ut labore ea sit laborum sint. Dolorem in error quod qui eveniet quia.\n\nMinima id hic voluptas fuga laudantium incidunt illo. Ratione nam expedita recusandae et laboriosam voluptatem similique. Deserunt aliquam aliquid rerum.\n\nVoluptatem quia et ratione accusamus ut omnis. Voluptas et natus nisi repellat. Dolor error autem consequatur perferendis architecto repellendus. Sunt porro veritatis voluptas voluptatibus magni.\n\nDeleniti in velit ut quo in. Necessitatibus tempore nisi voluptatum temporibus soluta id qui.\n\nDolor deleniti tempora doloremque eveniet totam. Nesciunt quo non voluptate sint. Sed earum illo tempore at cum optio inventore. Sed ut reprehenderit et atque temporibus nam.', 'Seamless intangible migration', 'Aut odit maiores quos sequi voluptatem omnis. Eos quisquam amet asperiores facilis quasi ab. Numquam reprehenderit ea delectus omnis asperiores porro.', 'DRAFT', 33, '2018-06-16 22:56:09', '2018-06-16 22:56:09', 'https://lorempixel.com/768/520/?81587', '2018-06-16 22:56:09'),
(14, 'Realigned tertiary hardware', 'realigned-tertiary-hardware', 'Odit assumenda et quisquam. Sint dolorum ratione debitis minus ut odio. Laboriosam consequatur possimus et ea. Suscipit accusantium et earum atque odio labore repellat.\n\nAut et veritatis est officia illum ab. Fugit non velit saepe dignissimos. Ut corporis rerum id at nihil.\n\nEum soluta iusto sit illum minus corporis dolor. Dolor numquam non quidem ullam. Culpa veritatis dicta eum omnis earum. Sapiente eius consectetur animi in minima.\n\nOmnis quasi quae quasi culpa repellat magni. Non delectus voluptatem nihil laboriosam magnam rerum. Et ex aspernatur est porro labore aut expedita.\n\nDebitis porro sit temporibus et ut recusandae non. Consequatur voluptatem aut est nobis rerum repellat. Veritatis in mollitia velit atque quia aut.\n\nAut ducimus et et enim. Ut eaque voluptate voluptates rerum debitis eaque. Repellat est assumenda est ipsum fugit ut a.\n\nEa libero sunt sit tempora enim. Soluta voluptate saepe aut est quia. Quia ex voluptates eligendi rerum eius. Quo et ut commodi quisquam est. Non et quisquam qui consequuntur alias veniam.\n\nEt et sapiente quibusdam. Nesciunt dolores omnis rerum quas ut. Modi ut unde molestias ut eum. Ducimus animi quis minima.\n\nAut doloremque aut velit perspiciatis et fugiat fugiat. Accusantium deserunt dolorem ipsa. Saepe quia blanditiis inventore occaecati.', 'Realigned tertiary hardware', 'Dignissimos atque eum esse incidunt voluptates molestiae at. Quis dolorum nostrum rerum voluptate. Qui minus molestiae voluptatem quibusdam voluptatem a. Voluptatum sapiente vero consequatur reiciendis laborum quidem quia.', 'PUBLISHED', 13, '2018-06-16 22:56:09', '2018-06-16 22:56:09', 'https://lorempixel.com/768/520/?72098', '2018-06-16 22:56:09'),
(15, 'Advanced upward-trending parallelism', 'advanced-upward-trending-parallelism', 'Non dicta rerum ducimus doloribus voluptatem est sunt. Quae rerum sint enim autem. Quia aut ut qui quis sunt et fuga culpa. Qui mollitia doloremque nihil soluta nulla.\n\nMaiores cum perspiciatis non tenetur sint quidem velit. Fugiat est et repellendus deleniti. Modi possimus est minus id dolore. Repellat officiis ea explicabo tempora quia consequatur. Iure corrupti in quibusdam suscipit occaecati.\n\nSuscipit qui omnis voluptas quisquam corrupti et sit ex. Minima voluptate voluptatem explicabo rerum neque. Dolorum quia harum at quas nihil ipsam amet voluptatem. Quia vero illo inventore sint id quo.\n\nBeatae architecto ex iure culpa consectetur voluptate quia. Eum qui totam sapiente dolores et sunt. Qui dolorem corporis est doloremque at maiores reprehenderit perferendis. Fugit sunt quibusdam vero ut fugit occaecati odio.\n\nSoluta consequuntur non error illo reiciendis quam molestiae. Aperiam aut quasi error perferendis. Culpa assumenda qui alias inventore libero explicabo.\n\nDolor qui modi nam minus eligendi voluptatem. Sint est et non velit placeat. Cupiditate molestias doloribus aspernatur dolor. Autem officiis enim totam.', 'Advanced upward-trending parallelism', 'Qui nesciunt quo est porro et rerum consequatur nihil. Sapiente labore nulla facilis velit. Dignissimos sapiente voluptate ratione nostrum placeat eveniet iure. Repellat cumque minus sit temporibus praesentium.', 'DRAFT', 21, '2018-06-16 22:56:09', '2018-06-16 22:56:09', 'https://lorempixel.com/768/520/?37455', '2018-06-16 22:56:09'),
(16, 'Fundamental content-based intranet', 'fundamental-content-based-intranet', 'Iure repellat enim architecto at reprehenderit nostrum officiis. Quos ipsam a voluptas asperiores commodi ut. Et alias praesentium ut.\n\nUt sit et dicta voluptatibus nihil illo veniam. Eius nihil nemo dicta veniam nisi voluptatem facere. Eveniet provident cupiditate nihil nulla assumenda rerum.\n\nSit magnam dignissimos aut. Eligendi repudiandae mollitia sequi vel fugiat ipsa dolorem et. Eos veniam et quo nemo et corrupti asperiores qui. Ea omnis ducimus quo nihil eos sit eum.\n\nPariatur ut voluptas reiciendis. Ut quia pariatur sequi in nulla. Corrupti facilis nesciunt ipsum a aut dolores est.\n\nEt rerum hic ipsam eum vel quisquam error. Temporibus quae alias corrupti est voluptate ea enim minima. Alias aperiam fugiat qui maiores. Et amet nemo ut impedit et.\n\nModi iusto quae et nemo hic rerum voluptate. Ab sit et repudiandae id saepe. Assumenda reprehenderit beatae culpa consequatur temporibus perspiciatis accusantium. Consequatur nulla laboriosam et velit qui nihil aspernatur.\n\nQuisquam et rerum consequatur. Sit repudiandae quia id qui minus ullam eaque. Voluptatem voluptatem voluptas aliquam illum ut. Nisi expedita aut deleniti quis aut ratione.\n\nEt nihil aut ea consequatur. Reiciendis voluptates voluptatem tenetur quae nesciunt laudantium. Laborum dolores voluptas voluptate quo quia dignissimos.', 'Fundamental content-based intranet', 'At cumque facilis repudiandae reprehenderit sint itaque. Fugit aut earum sed et et. Voluptatem itaque accusantium neque dolorem. Architecto veritatis nemo eius consequatur error voluptatem dolorum sunt. Aut exercitationem aspernatur minus iusto.', 'DRAFT', 36, '2018-06-16 22:56:09', '2018-06-16 22:56:09', 'https://lorempixel.com/768/520/?63267', '2018-06-16 22:56:09'),
(17, 'Function-based asynchronous task-force', 'function-based-asynchronous-task-force', 'Itaque error dolor quis exercitationem. Magnam est repellat nesciunt culpa ad. Nisi vitae iusto tenetur saepe voluptas.\n\nQui fugiat fuga reiciendis maxime. Quo officiis ad sed earum. Ut blanditiis earum sequi iste et amet voluptatem.\n\nLaudantium id est temporibus cupiditate excepturi deserunt optio. Temporibus provident qui ut aliquid dolorem. Omnis hic dolores et quis illo dolores.\n\nNihil qui eius ut. Exercitationem commodi voluptate error maiores. Numquam nemo corrupti eum hic aliquid.\n\nEt explicabo perspiciatis porro repellendus quas. Molestiae harum tempora neque qui tenetur omnis. Optio odit laborum dicta ut delectus animi.\n\nQuod voluptate fugiat maxime libero. Et et rem aut minus minima architecto. Nobis ducimus iusto quam nostrum dolores. Alias possimus non exercitationem qui qui unde ex.', 'Function-based asynchronous task-force', 'Ratione corrupti quia labore aut sunt veniam. Ipsa consectetur commodi atque nemo est repudiandae ea. Officia sed autem architecto et omnis sunt non rerum.', 'PENDING', 33, '2018-06-16 22:56:09', '2018-06-16 22:56:09', 'https://lorempixel.com/768/520/?19834', '2018-06-16 22:56:09'),
(18, 'Multi-layered 24hour localareanetwork', 'multi-layered-24hour-localareanetwork', 'Earum iste asperiores dolor occaecati. Illum culpa consectetur debitis aliquam. Magnam dignissimos sunt aut asperiores odio voluptatem voluptas. Voluptatum expedita enim molestiae culpa magni.\n\nRecusandae molestiae quis ipsa nam. Explicabo voluptatem quod dolor aut sed beatae. Nulla eligendi nihil dolores voluptas iusto voluptatem. Aut cum reprehenderit suscipit omnis vero.\n\nVoluptatem nostrum sed explicabo sit laudantium nulla quidem. Mollitia libero aut accusantium. Culpa placeat quo et officia nemo. Natus est quia ex maiores et suscipit non porro.\n\nEst aut inventore dolorem sit excepturi maiores. Omnis excepturi quia officia quo omnis dolores. Minima nihil facere quas illo veniam ratione est. Eum ea voluptas voluptatibus sunt.\n\nQuia quidem et quasi pariatur temporibus recusandae sed. Praesentium totam et totam magni incidunt nihil. Itaque voluptatem dolores non sit quis odit. Ex molestiae tempora voluptatum unde exercitationem. Dolorum sed non et fugiat.\n\nPossimus consequatur dolorem vel sit sapiente assumenda sunt. Numquam necessitatibus quo voluptatem reiciendis laboriosam. Qui porro nisi et qui laboriosam sunt aliquam. Autem totam consequuntur voluptatem dolores id officia.', 'Multi-layered 24hour localareanetwork', 'Aperiam voluptatem eum delectus possimus. Voluptas velit veritatis perspiciatis iure. Quis earum dolorum velit et. Reiciendis necessitatibus numquam enim reiciendis perspiciatis enim occaecati.', 'PUBLISHED', 17, '2018-06-16 22:56:09', '2018-06-16 22:56:09', 'https://lorempixel.com/768/520/?33710', '2018-06-16 22:56:09'),
(19, 'User-centric eco-centric throughput', 'user-centric-eco-centric-throughput', 'Repellat harum omnis nam vero error repudiandae. Velit est mollitia quam eligendi quis autem. Eos quia quidem voluptas omnis aut.\n\nExplicabo enim quo deserunt cupiditate. Exercitationem voluptate porro velit porro. Magni illo ipsam ad possimus.\n\nSit nam aut cum odit voluptas quisquam. Totam qui enim facere soluta et quam accusamus. Ut nostrum voluptas doloremque qui dolorum iusto.\n\nRem perferendis non aliquam aut ut fugit similique. Quis voluptas qui voluptas omnis consectetur praesentium suscipit. Ullam perferendis laboriosam sit quia distinctio vel sunt corrupti.\n\nNam qui libero iste exercitationem nemo aperiam. Numquam et totam consequatur modi debitis sint fuga praesentium. Eum similique dolor perspiciatis quis maiores vero libero. Aliquam temporibus asperiores asperiores optio pariatur autem.\n\nEst est numquam qui perferendis. Culpa incidunt et quisquam impedit sunt voluptatem. Excepturi tenetur fugit voluptas omnis tempore tenetur. Et non debitis ut dicta.\n\nDolores blanditiis architecto dolorem qui dolorem et culpa. Qui quas est labore debitis maiores aut recusandae. Consequatur molestias doloremque dolorum earum ea nihil. Velit iusto laboriosam itaque autem ratione eaque aut. Aut omnis voluptatem vero maiores.\n\nNeque eveniet omnis dolorem quo minus. Doloremque quis maxime tempore qui qui. Nihil dolorum quo sint et aut rerum.\n\nQuia eos et atque omnis. Ullam sit pariatur delectus iste.\n\nAlias molestiae sit et officia consequatur consequuntur in quia. Nam accusamus possimus sapiente vel quaerat totam. Doloremque et ipsum architecto alias omnis et temporibus. Totam nostrum odit atque velit est sed consequuntur.', 'User-centric eco-centric throughput', 'Corrupti a sapiente vero maxime. Ipsa suscipit suscipit quae qui culpa dignissimos. Culpa qui suscipit deleniti voluptate non dicta officia. Voluptatem vel et dolorem quia iure.', 'PENDING', 33, '2018-06-16 22:56:09', '2018-06-16 22:56:09', 'https://lorempixel.com/768/520/?64695', '2018-06-16 22:56:09'),
(20, 'Up-sized dedicated knowledgebase', 'up-sized-dedicated-knowledgebase', 'Et alias dolor consequuntur saepe eaque voluptates. Excepturi veniam repudiandae eos veniam.\n\nOdit voluptatem repellat voluptatem voluptatem esse sunt et. Aliquam distinctio temporibus magnam velit laudantium quam sit. Harum dolorem odit et quos magnam aut voluptatem cupiditate.\n\nUt nemo eligendi amet. Nemo nostrum ut possimus. Aut corporis vitae corporis laboriosam animi. Qui dolore neque impedit explicabo perspiciatis labore hic.\n\nMinus quas et fugiat illo. Et tempora qui ea qui et magni quas. Deleniti consequatur delectus est.\n\nNobis consectetur dolores rem odio. Libero quaerat veniam suscipit ut voluptate saepe dignissimos. Maiores optio non voluptas qui.\n\nDolorem et ut deleniti aut harum omnis reprehenderit. Eius qui accusantium enim doloribus ea. Impedit sed quam blanditiis a. Et fugit velit ullam neque.\n\nEt ab explicabo occaecati quam aperiam officia. Vel ut cupiditate eos maxime nihil aut. Eos et aut dicta velit ea sapiente. Ut nihil est provident illum quis similique est.', 'Up-sized dedicated knowledgebase', 'Molestiae sequi aut repellat et molestiae dignissimos omnis sed. Debitis molestias qui eum voluptas voluptatem odio. Quo nemo et ullam quidem voluptate ea cumque.', 'DRAFT', 28, '2018-06-16 22:56:09', '2018-06-16 22:56:09', 'https://lorempixel.com/768/520/?89748', '2018-06-16 22:56:09'),
(21, 'Object-based explicit model', 'object-based-explicit-model', 'Cumque molestiae aut rem dolores quisquam. Sapiente fugit aut tempora consequatur pariatur assumenda. Ut vel necessitatibus hic accusamus. Error accusamus voluptatem possimus aliquid quasi voluptatum.\n\nPossimus quis aut qui. Ut quidem ratione nihil esse dolorem quibusdam eos. Voluptas fugit eos et repellat veniam.\n\nFugiat veritatis molestiae voluptas et voluptas quibusdam. Molestiae quidem placeat voluptatem. Incidunt minima velit voluptatem illo est blanditiis rerum. Sit cum maiores delectus molestias veniam deleniti aut assumenda.\n\nConsequatur voluptatum omnis hic impedit voluptas. Eaque veritatis et incidunt quia nostrum. Consequatur quibusdam et est deserunt eaque. Esse eos provident eum saepe beatae.\n\nDolor placeat quibusdam molestiae eum doloremque et. Ut voluptatem enim eligendi assumenda commodi similique reprehenderit. Rerum et quia voluptate quisquam.\n\nId velit ipsam incidunt eligendi doloribus. Expedita eum in ipsam pariatur non. Et rerum ut voluptas delectus iure quas repellendus. Illo ipsam culpa nihil esse fugit reprehenderit.\n\nSit alias cupiditate iure ut. Et quas voluptates doloribus id debitis. Ad quae amet sapiente consequatur.', 'Object-based explicit model', 'Et ut ipsam nam quia sed quo. Veniam earum debitis est iure quod omnis. Quaerat aspernatur molestiae aut harum similique quo quis.', 'DRAFT', 33, '2018-06-16 22:56:09', '2018-06-16 22:56:09', 'https://lorempixel.com/768/520/?83610', '2018-06-16 22:56:09'),
(22, 'Stand-alone bandwidth-monitored securedline', 'stand-alone-bandwidth-monitored-securedline', 'Itaque quia exercitationem tempore neque odit. Praesentium quia in amet ipsum consequatur sequi et. Asperiores perferendis excepturi placeat maxime quas atque quidem.\n\nVero accusantium dolores placeat nulla repellendus ut deleniti. Ab sint molestiae pariatur placeat. Rem et rerum aperiam maxime earum.\n\nEos veritatis ex nostrum vitae. Iste ipsam consequatur ut qui. Harum voluptatum quisquam non omnis. Dolor sint et non sed.\n\nDolores nisi impedit beatae ab. Non ducimus enim culpa aut aliquid. Rerum maiores reiciendis maxime alias dolorem a reprehenderit.\n\nOfficia minima ut iusto dolorum est porro. Itaque voluptatem dolorem laudantium incidunt repellat beatae qui. Tempora veritatis tenetur quo similique modi quia.\n\nPerspiciatis animi quasi velit est modi ullam. Incidunt blanditiis officiis mollitia est a et sit. Non vitae impedit cum voluptas quae beatae nobis. Illum possimus eligendi enim natus dolor adipisci nulla soluta.\n\nNobis nihil consequatur aliquam quia mollitia vitae. Impedit quo facilis omnis dolorem. Vel sapiente fugiat dolore aut.', 'Stand-alone bandwidth-monitored securedline', 'Omnis dolorem velit quidem tempore nulla quas temporibus. Quam atque maiores vitae consectetur dolore. Error deserunt odio expedita facilis vel.', 'DRAFT', 28, '2018-06-16 22:56:09', '2018-06-16 22:56:09', 'https://lorempixel.com/768/520/?31773', '2018-06-16 22:56:09'),
(23, 'Operative responsive leverage', 'operative-responsive-leverage', 'Harum distinctio aut repudiandae accusamus ratione distinctio. Dolorem quas ipsam laboriosam aut. Consequatur deserunt aut fuga a. Sint consequuntur doloremque molestiae.\n\nLaborum omnis voluptatibus et cumque qui reiciendis odio. Expedita maiores assumenda totam omnis quia aut minus. Voluptatem quia illum libero voluptates.\n\nNesciunt explicabo quo accusantium aut sit. Vero et quae placeat pariatur alias.\n\nTempore nobis sed qui minus tempora perspiciatis. Rerum porro possimus laudantium accusamus exercitationem iste. Officiis non hic repudiandae ut. Quis occaecati in totam quia. Alias sapiente praesentium repellendus illum totam veniam.\n\nCumque amet architecto ipsa minus ut. Vitae doloremque iusto id mollitia inventore eaque non expedita. Occaecati quaerat suscipit dolor vel et quaerat. In id impedit qui rem qui pariatur occaecati corporis.\n\nAut expedita modi molestiae animi voluptas. Voluptatum dignissimos non unde recusandae. Porro aut et culpa quod est laborum.\n\nMinus labore id non debitis expedita. Sint et delectus adipisci omnis quo.\n\nAb animi maiores at maiores et quia. Doloremque repellat id tenetur magnam sint modi. Sit non quas eligendi. Et ea eum minima odio rerum.', 'Operative responsive leverage', 'Quia molestias ducimus vel tempora. Rerum reiciendis voluptatem voluptatem repellat. Non eum ut laudantium dolores provident.', 'PENDING', 6, '2018-06-16 22:56:09', '2018-06-16 22:56:09', 'https://lorempixel.com/768/520/?32413', '2018-06-16 22:56:09'),
(24, 'Customizable leadingedge alliance', 'customizable-leadingedge-alliance', 'Nam vel vero ea. Sed facilis aut numquam animi. In rerum nemo nihil iusto eum voluptas. Facere delectus accusamus culpa sit inventore.\n\nSed repellat est praesentium. Sint mollitia nesciunt dolor enim eos pariatur. Beatae eum ut odio optio. Quod aliquid qui ex eveniet.\n\nAut suscipit deleniti error ad ut. Aut molestias quis sit veniam accusamus. Modi et magnam a voluptatem ullam fuga. Animi iste nulla dolores quas iusto quo dolor. Rerum saepe hic est dolores doloremque at itaque.\n\nOmnis aut in accusantium commodi quis optio necessitatibus. Nemo eius nihil nulla nihil sequi odit neque. Vitae natus hic eos ut sit. Autem voluptatem omnis eos quae dignissimos. Fugit in blanditiis aliquam soluta esse reiciendis quia.\n\nDolores et et quos fugit voluptatem veritatis. Qui dolorem occaecati quam vitae aut. Sit voluptatem veniam impedit reprehenderit praesentium tenetur non.\n\nQuam sit temporibus incidunt et nihil aut nostrum hic. Est non modi necessitatibus molestiae consequuntur quia est.\n\nAutem et necessitatibus soluta nulla. Non et voluptatem molestiae. Magnam eos labore hic sunt aut. Sed facilis velit repellendus sit omnis eos excepturi.\n\nProvident ut rem illum omnis itaque autem sint. Beatae rerum fuga voluptatem tempora omnis. Ut rem placeat qui expedita voluptas.\n\nExpedita voluptatem ab quia eaque dolores. Quod est eligendi veniam quod blanditiis molestiae ipsa. Officia occaecati ducimus perferendis eum dolores consequuntur amet asperiores.\n\nSit sed quia consequatur nihil accusamus. Deserunt quia voluptates autem omnis voluptatem ea eum. Voluptates debitis eos nulla consequatur id perspiciatis inventore. Est a qui ducimus facilis at rerum. Amet quas repudiandae fuga perferendis dolores placeat voluptatibus.', 'Customizable leadingedge alliance', 'Incidunt voluptatem nihil harum rerum beatae est iste. Adipisci voluptatem in occaecati ratione cum placeat.', 'PUBLISHED', 17, '2018-06-16 22:56:09', '2018-06-16 22:56:09', 'https://lorempixel.com/768/520/?21285', '2018-06-16 22:56:09'),
(25, 'Exclusive hybrid task-force', 'exclusive-hybrid-task-force', 'Harum qui pariatur cum quibusdam iste culpa rem. Ea vero sequi dolor deleniti eveniet quos quaerat. Aut omnis et consequatur. Soluta quos aliquid qui suscipit et veniam veritatis.\n\nNon culpa maxime eius sit sed fuga. Quibusdam sunt laudantium totam explicabo ab ea. At repellendus omnis vero earum. Fuga sapiente quidem dicta suscipit et voluptatum et dolores.\n\nEt aut sapiente voluptas veritatis blanditiis vero natus. Recusandae qui labore eos asperiores rerum natus et. Voluptatem vel qui et eligendi deleniti eum porro.\n\nIure quibusdam eligendi consequatur voluptas. Nam rerum esse fugiat quos. Culpa alias libero ex cupiditate.\n\nAut quibusdam tempora sed dignissimos. Aspernatur aut ipsum dicta dicta impedit. Repellat voluptate accusamus eaque. Consectetur nihil est et ut officiis. Omnis nisi eveniet praesentium magni.\n\nQuia voluptatem porro repellendus consequatur voluptatem quia. Rerum quis quidem quas enim tempora et et. Dicta earum dolor a et dolor quia animi quia. Voluptatem quasi magnam qui autem.', 'Exclusive hybrid task-force', 'Incidunt in debitis consequuntur vel eos. Quod dolores nemo et exercitationem et exercitationem. Quia recusandae eaque dicta in dignissimos aut laboriosam.', 'PUBLISHED', 17, '2018-06-16 22:57:14', '2018-06-16 22:57:15', 'https://lorempixel.com/768/520/?54487', '2018-06-16 22:57:14');
INSERT INTO `news` (`id`, `title`, `slug`, `content`, `meta_title`, `meta_description`, `status`, `author_id`, `created_at`, `updated_at`, `image`, `published_date`) VALUES
(26, 'Fundamental web-enabled paradigm', 'fundamental-web-enabled-paradigm', 'Alias velit quo eius sint perferendis optio. Eius enim excepturi eum non qui perspiciatis quidem. Saepe est illo molestias.\n\nId commodi aliquam minus et eaque voluptatem. Vel cum debitis voluptatibus consequatur et molestiae libero.\n\nAlias voluptates ducimus labore rem eaque qui itaque. Ea reprehenderit quas ipsam dolor ipsa. Omnis recusandae ipsa tenetur ut. Ea illum molestiae voluptatem possimus.\n\nQuas illum eos libero dolorum est. Enim tenetur explicabo dicta aut aut et nam. Officia tenetur occaecati cupiditate ipsum.\n\nIure ipsa et eius qui sed quo eos. Est veniam quia minus qui eum esse corporis numquam. Eos molestiae minus autem ratione et quia quibusdam. Distinctio repellendus fugiat deserunt iusto iure.', 'Fundamental web-enabled paradigm', 'Et pariatur expedita debitis eius ducimus itaque. Earum ipsam odit ratione laboriosam assumenda. Minus possimus distinctio perspiciatis itaque dolores. Aut asperiores mollitia sit veritatis. Veniam quo non delectus voluptatum dolores.', 'PENDING', 40, '2018-06-16 22:57:15', '2018-06-16 22:57:15', 'https://lorempixel.com/768/520/?34020', '2018-06-16 22:57:14'),
(27, 'Networked impactful neural-net', 'networked-impactful-neural-net', 'Nam doloribus incidunt qui. Et ea mollitia eos beatae quae eaque architecto. Voluptas sapiente aperiam dolorem possimus quisquam sapiente.\n\nOptio ut eos aut similique qui. Mollitia maxime asperiores sed consectetur qui doloremque voluptatibus iusto. Ut rerum quis velit eaque repellat illo enim. Facere cupiditate voluptatem eaque aut vero.\n\nConsequatur recusandae voluptatem voluptatem quia. Laboriosam corrupti et nihil reiciendis non rerum. Quasi rerum enim iusto sed. Aut est in officia in velit.\n\nDebitis qui praesentium veritatis. Quis qui tenetur et eius. Dolor eum nostrum enim amet voluptatem ullam dolores.\n\nUt soluta nulla voluptatibus beatae incidunt voluptate dolor. Et in aperiam possimus temporibus mollitia iure. Voluptas quis rerum est non iure adipisci.\n\nPerspiciatis rem recusandae expedita itaque dolores enim ratione. Exercitationem rerum dicta distinctio numquam eaque odit quaerat. Ea magni quae aperiam quo. Iure corrupti sint at vel est. Dolorum saepe at voluptatum autem enim sed voluptatem.\n\nCorporis qui aut occaecati veniam voluptate. Ea recusandae qui laborum praesentium harum illum voluptate. Sit quia cumque repellat eaque molestiae enim.', 'Networked impactful neural-net', 'Atque velit quidem temporibus molestias consequuntur eaque. Fugiat velit deserunt possimus illum. Ut occaecati illo ut dolores consequatur eligendi velit.', 'DRAFT', 3, '2018-06-16 22:57:15', '2018-06-16 22:57:15', 'https://lorempixel.com/768/520/?47392', '2018-06-16 22:57:14'),
(28, 'Fundamental zeroadministration architecture', 'fundamental-zeroadministration-architecture', 'Et quas quae voluptatem provident aspernatur omnis praesentium. Quas omnis dolore tempora nobis dolores in. Quos qui est molestiae velit sit. Qui quas incidunt molestiae corrupti dolorem est velit.\n\nUt earum quo nesciunt nam sed reprehenderit sit. Voluptates nostrum et repellendus itaque in sequi suscipit provident. Voluptas sunt excepturi consectetur laudantium quasi eligendi. Est libero rerum explicabo. Sit non vel rem ut.\n\nQuisquam et similique numquam vel. Dolorem et velit saepe. Eum deserunt non ratione et nobis excepturi.\n\nItaque deserunt mollitia ut similique magni et eaque. Facere hic ut iusto.\n\nEt quibusdam est vero dignissimos excepturi tempore debitis et. Perferendis ipsam velit iste et sapiente pariatur dicta. Eius corrupti et atque cupiditate tenetur numquam impedit. Qui reprehenderit necessitatibus quibusdam aut rerum.', 'Fundamental zeroadministration architecture', 'Expedita est voluptatem est magni quos. Laborum consequatur odio est sunt.', 'DRAFT', 49, '2018-06-16 22:57:15', '2018-06-16 22:57:15', 'https://lorempixel.com/768/520/?39359', '2018-06-16 22:57:14'),
(29, 'Assimilated clear-thinking emulation', 'assimilated-clear-thinking-emulation', 'Non fugiat similique aperiam voluptas laudantium. Minima enim incidunt beatae. Et labore alias est sapiente dolore nesciunt.\n\nSunt excepturi a rerum quo corporis beatae. Velit occaecati ullam eum ipsam non porro iure. Nemo rerum ut ut perferendis in maiores.\n\nModi rem amet quam modi corporis ipsa sapiente. In ex autem officiis. Quia deserunt maiores veniam possimus aut qui voluptates. Commodi eum distinctio nam dolorem soluta fugiat est. Consequuntur ab voluptatem occaecati aut impedit.\n\nOdit ut rerum possimus quia. Officiis ut atque sit ea sapiente dicta minus. Repudiandae dolorum unde aut amet dolorem pariatur quos.\n\nSapiente odit consequuntur eius asperiores. Quos assumenda maxime autem. Maiores consequatur porro quos ea. Earum sed illum rerum distinctio doloribus nulla molestiae.\n\nVero eveniet sint sed consequuntur iure. Tempora ab dolorem explicabo dolor quas. Corrupti modi dolorum ut eum. Corrupti autem facere voluptatem similique quia qui reprehenderit harum. Qui porro voluptatem non consequatur.\n\nDoloremque autem et eveniet reprehenderit. Distinctio dolores et et odit. Deleniti distinctio ut necessitatibus quibusdam sint quam natus. Fugit eveniet at sapiente facere modi cupiditate similique.', 'Assimilated clear-thinking emulation', 'Officiis voluptates consectetur ratione voluptas rerum. Quisquam rerum amet necessitatibus esse. Nemo omnis quia itaque nisi fugiat eos sed. Blanditiis recusandae necessitatibus qui laborum tempora eos voluptas.', 'DRAFT', 13, '2018-06-16 22:57:15', '2018-06-16 22:57:15', 'https://lorempixel.com/768/520/?56820', '2018-06-16 22:57:14'),
(30, 'Multi-layered grid-enabled superstructure', 'multi-layered-grid-enabled-superstructure', 'Qui non ullam illo rerum officia. Qui assumenda facere iure. Incidunt dolorem aut culpa nihil quam voluptas consequatur.\n\nEnim dolorum commodi sit mollitia. Debitis sint atque quo. Eos consequatur fugiat qui sint deserunt ut.\n\nNemo maiores ab molestias soluta laboriosam. Id id error rerum vel et ipsa.\n\nSapiente sit quam ad consectetur ratione maxime. Quia aut et dolorem placeat quos quos. Cupiditate numquam itaque adipisci.\n\nAnimi repellat perspiciatis inventore animi officiis quia eum. Optio atque explicabo temporibus. Sequi ex tenetur quae dolore error.\n\nEt quia modi unde adipisci ut ad voluptatibus. Nam atque natus et laborum enim. Architecto consequatur perspiciatis adipisci libero omnis. Ea qui error modi voluptatibus praesentium voluptatem et sapiente.\n\nRerum aliquam et aut officia. Incidunt ab qui assumenda architecto sed quidem. Eius ullam quo impedit aliquid voluptatem. Est sint veniam provident sed nostrum vero quia omnis.\n\nEnim cupiditate nulla modi quia facere qui aut aut. Animi alias totam culpa et blanditiis maiores. Eligendi cupiditate quia officiis. Velit non dolores qui in architecto rerum. Et autem dolores quae officia sit.\n\nNecessitatibus provident facilis qui enim. Facilis ex corporis rem asperiores. Hic veritatis dignissimos voluptatem harum. Facere fugit mollitia nemo aut iure. Magnam quia autem corrupti.\n\nId maxime unde sit voluptatibus qui praesentium. Repellendus et vel quibusdam incidunt. Ut eligendi nesciunt accusamus numquam consequatur. Qui et praesentium et mollitia non est ut. Quos ducimus quod dolor reprehenderit ex impedit ut enim.', 'Multi-layered grid-enabled superstructure', 'Aut error enim aut consectetur qui quia. Vel eligendi et mollitia odit occaecati minima. Velit soluta ut fugit voluptas animi.', 'PENDING', 34, '2018-06-16 22:57:15', '2018-06-16 22:57:15', 'https://lorempixel.com/768/520/?78681', '2018-06-16 22:57:14'),
(31, 'Function-based mobile complexity', 'function-based-mobile-complexity', 'Quidem natus placeat mollitia harum perferendis autem esse. Perspiciatis non recusandae veniam ipsum molestiae. Id rerum vitae nam rerum.\n\nVoluptatem asperiores nemo ratione rerum. Facere hic aut et ut sed maxime. Sit tempore ipsa mollitia qui eum sunt aut.\n\nSed fuga nulla ratione consequatur. Qui assumenda ea aut iusto minus nulla. Unde rem repellendus cum cupiditate dolores et excepturi. Voluptas iure ea numquam veniam voluptatibus eligendi.\n\nVoluptatibus at fugiat est accusamus. Quis rerum nihil nostrum ea. Consectetur quis iure ducimus velit quos molestiae fuga. Autem tempora pariatur laudantium optio dolores saepe.\n\nSunt sit nemo eos. Voluptates sunt ullam labore. Tenetur labore dolorem porro ut.\n\nNon necessitatibus est aperiam. Fuga id consectetur distinctio error facilis est. Nemo et aut iusto et ut commodi.\n\nAut quia corrupti molestiae blanditiis provident reprehenderit quia. Eius pariatur commodi sint ut rerum fuga. Ut ut illum facilis. Cumque deserunt magnam commodi quidem sed eum quis.', 'Function-based mobile complexity', 'Ad tempore illo numquam doloremque perspiciatis. Aut autem hic est at et ut sed. Maiores debitis temporibus ducimus et fugiat sunt.', 'PUBLISHED', 7, '2018-06-16 22:57:15', '2018-06-16 22:57:15', 'https://lorempixel.com/768/520/?99642', '2018-06-16 22:57:14'),
(32, 'Horizontal didactic circuit', 'horizontal-didactic-circuit', 'Facilis accusantium sed maxime odio sit. Iusto recusandae quaerat vel. Ut magni qui reiciendis ea quia sunt quo.\n\nNeque suscipit qui quaerat ut commodi quidem consequatur. Nesciunt maiores voluptates nisi quod id quam qui odit. Est facilis nihil beatae fugiat inventore ipsam.\n\nAtque et dignissimos recusandae quam fugit est. Repudiandae officiis officia nisi ut at tempora. Sapiente a sit molestiae sequi ducimus. Non consequatur quia provident incidunt consequatur.\n\nSint autem adipisci velit ea incidunt repudiandae minima tenetur. Quos sed omnis in et aut iste. Recusandae dolores aperiam facere consequatur fugit eum. Accusamus architecto dolore fugiat.\n\nNihil dolorem ut laboriosam provident ab in quae et. Voluptatem at velit corrupti. Magni veniam nostrum distinctio aspernatur est. Qui officiis architecto quam non est eius numquam velit.\n\nQuam consequatur voluptas error autem neque dolore qui. Sint sed ducimus quia sequi itaque. Modi sint omnis autem officiis nisi laboriosam. Dicta excepturi et reiciendis. Quisquam eius fugiat praesentium nesciunt.\n\nLaborum quia accusamus cumque incidunt reprehenderit. Doloremque qui dolores at placeat. Exercitationem assumenda eos suscipit hic.', 'Horizontal didactic circuit', 'Sapiente culpa aperiam nulla aperiam. Optio eos reprehenderit et minima dolorem et. Odit explicabo mollitia aut velit minima. Omnis odit error sed consequatur voluptas dolores.', 'PUBLISHED', 12, '2018-06-16 22:57:15', '2018-06-16 22:57:15', 'https://lorempixel.com/768/520/?27111', '2018-06-16 22:57:14'),
(33, 'Open-source multi-state adapter', 'open-source-multi-state-adapter', 'Minima quaerat sunt et rem voluptatem aliquam doloremque. Facilis eum qui temporibus totam ut. Eius dolorem ipsum quisquam minus. Dicta est molestiae ut odit non.\n\nNatus ea ut est earum praesentium reiciendis. Ut provident asperiores iure debitis voluptas consequatur. Quas eum id velit dignissimos ut incidunt voluptas. Non dolores nihil totam sed maiores.\n\nSed eum laborum animi quia blanditiis ea. Aspernatur incidunt sit nesciunt aut quia. Quo nesciunt eum laboriosam nemo possimus. Provident qui et quaerat pariatur aut debitis et.\n\nNulla molestiae debitis facere est veniam id. Illum eos corrupti magni aut. Aut quia sint et repellat cupiditate autem ut omnis.\n\nAut reprehenderit sed ipsum cum. Et rerum ab dicta quis enim unde maxime. Delectus fugit assumenda consequatur velit non voluptatem. Minima ipsa illum vero laborum tempore necessitatibus. Nisi assumenda modi cum rerum.', 'Open-source multi-state adapter', 'Voluptatem ea sunt ullam ut et. Neque sunt voluptate dolorem. Est eius et vero. Doloremque natus expedita aut accusantium minus expedita. Ea quis vitae rerum beatae. A eum iusto quidem magnam. Sed eius modi eius earum magnam doloribus praesentium.', 'DRAFT', 6, '2018-06-16 22:57:15', '2018-06-16 22:57:15', 'https://lorempixel.com/768/520/?13293', '2018-06-16 22:57:14'),
(34, 'Total upward-trending paradigm', 'total-upward-trending-paradigm', 'Eaque voluptate autem delectus. Nihil et atque sed in. Quae corrupti qui rerum voluptas.\n\nQuod dolores velit tenetur. Minus dolores deserunt repellendus et est. Nulla quos quis impedit accusamus totam et et. Nihil nulla et praesentium et laboriosam ipsa veniam.\n\nMollitia quaerat cum ipsam est. Eveniet est magnam iusto eius minima iste sunt accusantium. Consequatur quia omnis voluptatem quod sit animi. Ad voluptatem quisquam culpa.\n\nEt molestiae nesciunt hic non vel. Ut ipsum maxime modi sunt itaque rerum. Quo fugiat facilis quis veritatis enim.\n\nRecusandae ut dolor cumque occaecati sit. Magnam sed culpa soluta. Voluptatem unde quibusdam dolorem voluptas similique. Ipsum consectetur sint officia.\n\nDeserunt non ut ut consequuntur dolores perspiciatis adipisci. Aut aut debitis officia. Sed architecto enim architecto eos temporibus quisquam. Ab deserunt accusamus sit.', 'Total upward-trending paradigm', 'Iste aspernatur tempore accusantium nisi labore illo sint. Earum repudiandae temporibus omnis cum maxime. Veritatis voluptates exercitationem ut iste repellat aut.', 'DRAFT', 13, '2018-06-16 22:57:15', '2018-06-16 22:57:15', 'https://lorempixel.com/768/520/?57135', '2018-06-16 22:57:14'),
(35, 'Integrated didactic forecast', 'integrated-didactic-forecast', 'Pariatur qui dolor quam sunt architecto autem ut. Eum aut enim veritatis est dolor nihil. Error totam occaecati esse vitae ab ut natus.\n\nRem quia et laborum doloribus consectetur ipsa quo. Quia ullam ratione veniam velit libero. Autem praesentium culpa veniam cumque nihil. Impedit dolorum ut ut earum iusto et consequatur assumenda.\n\nEius est sit impedit voluptatem qui sint molestiae nihil. Reprehenderit accusantium odio possimus voluptatem sequi voluptatem. Minima aliquid qui consequatur optio iste.\n\nConsequatur sit in qui hic. Autem quia delectus aspernatur quia. Autem quaerat quasi fuga voluptatibus. Nostrum nam quo aut sapiente vitae et.\n\nVoluptas iste ut architecto blanditiis iusto a. Quibusdam rerum qui itaque qui veritatis. Quas et amet et velit sed consequuntur ut.\n\nDolorum ducimus ducimus facilis ex placeat tenetur. Suscipit ducimus quia ad debitis.\n\nCupiditate autem aliquam architecto sit ut dolores minus. Iure rem quidem consequatur laboriosam quia sed sunt. Quibusdam laudantium enim laudantium non. Est molestias quo reiciendis.', 'Integrated didactic forecast', 'Quo quam voluptate voluptates qui numquam voluptas. Animi ullam voluptas perspiciatis et iure. Excepturi dignissimos aperiam sed enim enim.', 'DRAFT', 51, '2018-06-16 22:57:15', '2018-06-16 22:57:15', 'https://lorempixel.com/768/520/?98630', '2018-06-16 22:57:14'),
(36, 'Networked dynamic knowledgeuser', 'networked-dynamic-knowledgeuser', 'Maiores voluptatum id deleniti rerum impedit explicabo omnis. Ad iusto dolor omnis earum nesciunt cupiditate. Aut temporibus aut vero. Aliquam voluptatem dolore placeat similique ea debitis possimus aspernatur.\n\nSit aut exercitationem aut dicta autem. Odit enim itaque qui est eaque rem voluptate. Alias qui sed dolorem aliquid voluptatem quisquam.\n\nAut occaecati dolor qui eum ut totam sit. In quae repellat deserunt ratione doloribus ipsum. Sequi numquam aliquid quia qui. Beatae repellendus ullam rerum tempora earum.\n\nMinus dolore asperiores ad quisquam et eos reiciendis. Qui inventore dolores eaque a. Quam at qui ex laborum. Nostrum enim eos sit accusantium cumque.\n\nOdio facilis omnis natus in excepturi minus. Earum ea ab quod eaque dolor ut. Perspiciatis eos nobis sint laboriosam asperiores sed magnam. Deleniti ut veniam esse ex ut ab.\n\nVoluptatem doloribus est iusto. Consectetur eum minima ipsa ipsa officiis. Consequatur voluptates ea voluptate nihil recusandae. Ut eligendi illum tempora. Non a ut accusamus.\n\nEt voluptatibus dolore impedit dolor eveniet. Voluptatem aspernatur voluptatem et corporis hic. Error voluptas nisi quam repellendus pariatur. Cupiditate molestiae qui reiciendis.\n\nDignissimos qui consequatur fugit ipsam sequi consequatur. Et cupiditate aut eius voluptatem occaecati quis quas. Dolore sed necessitatibus deleniti voluptatem non fuga.', 'Networked dynamic knowledgeuser', 'Quam voluptatem ipsa accusamus possimus nulla animi adipisci. Ullam accusantium cum omnis eius dolore libero. In inventore et eum quas et libero occaecati. Et blanditiis voluptates occaecati soluta ducimus.', 'PUBLISHED', 17, '2018-06-16 22:57:15', '2018-06-16 22:57:15', 'https://lorempixel.com/768/520/?22740', '2018-06-16 22:57:14'),
(37, 'Implemented analyzing complexity', 'implemented-analyzing-complexity', 'Quia et eaque neque porro. Qui dolorum pariatur eum facere necessitatibus quis. Odit ex harum qui culpa laborum tenetur praesentium quos. Distinctio est fuga debitis officiis ratione.\n\nItaque magnam voluptas necessitatibus quam occaecati aut architecto culpa. Necessitatibus et sit beatae. Ea qui enim nam in aut dolore quis. Voluptas qui earum vitae dolorum et consectetur dolor.\n\nEius vero nisi odio. Nesciunt inventore ea ut odio natus labore. Aut minus et sunt delectus perspiciatis.\n\nQui voluptatem nam excepturi. Velit cumque labore rerum hic qui ratione architecto. Magni repellendus omnis dolor quo necessitatibus aut quo voluptas. Atque ea incidunt illo dolor.\n\nDolores ducimus doloribus aliquid et. Ut neque et fugiat enim at voluptatem nisi. Non reprehenderit ex a neque. Perspiciatis corporis et culpa ex soluta quidem.\n\nAnimi porro rerum modi rem nam nisi et. Quasi voluptatem ea in qui qui et. Et numquam libero voluptates reprehenderit laborum ut. Tenetur expedita inventore aut perferendis incidunt rerum et.\n\nOmnis aut aut sit dicta voluptatem fugiat est. Voluptatem tenetur eum debitis vel explicabo ad enim. Molestiae vero dolorem aliquid nemo tenetur.\n\nVel pariatur et repellat quia odit. Alias quo blanditiis optio autem.\n\nQui voluptatem maxime qui saepe voluptatem. Dolorem iusto dolorem non porro fugit. Cupiditate vitae non amet. Error odit aut doloremque labore est.\n\nRerum qui eveniet consequatur non ipsa in voluptas. Harum vitae architecto assumenda amet consequatur ullam delectus corporis. Excepturi omnis ut itaque aliquam aperiam dolorem.\n\nVoluptas atque qui ut ea. Temporibus dolorem sed voluptate fuga ea. Corrupti vero est aut quisquam.\n\nIusto fuga omnis consequatur nostrum quia. Similique temporibus quaerat minima fugiat. Aut qui facere incidunt ea.\n\nLabore minus suscipit repudiandae blanditiis aut assumenda. Culpa enim a voluptatem tenetur est recusandae sunt incidunt. Aut laudantium et aliquam minima dolor eaque. Cum et quia repellat nihil.\n\nNulla rem dolores debitis. Modi pariatur voluptas ut enim laudantium et.\n\nDolores recusandae tempora saepe accusamus doloremque. Id veritatis ullam soluta doloremque saepe eveniet. Ratione consectetur impedit dolorum quo dolores ipsa ut. Excepturi non eveniet alias id.\n\nEst fugit rerum dignissimos illo laboriosam aperiam consequatur fuga. Quo numquam et aut error esse numquam explicabo aliquid. Saepe impedit porro et numquam amet. Dolor distinctio sunt autem nisi qui minus voluptate.\n\nQuia enim iste error eligendi cum aperiam consectetur quia. Eos temporibus deserunt ipsum esse. Atque optio sunt autem omnis sequi et. Qui rerum labore autem vel dolores ipsum.', 'Implemented analyzing complexity', 'Quidem nihil dolor non sint distinctio voluptatem qui id. Consequuntur fuga ullam voluptate expedita enim et. Optio aut beatae facilis magni in.', 'DRAFT', 17, '2018-06-16 23:18:23', '2018-06-16 23:18:23', 'https://lorempixel.com/768/520/?85591', '2018-06-16 23:18:23'),
(38, 'Enterprise-wide coherent parallelism', 'enterprise-wide-coherent-parallelism', 'Illum maiores omnis voluptas natus praesentium suscipit. Non vel voluptates esse sit earum consectetur. Quia perspiciatis ut id sit ipsa.\n\nSoluta vero atque debitis error est neque accusantium. Officiis qui aspernatur recusandae assumenda sit. Qui minima et atque sit. Consequatur voluptas perferendis nulla eveniet.\n\nDoloribus sit ut sed occaecati velit. Enim vel inventore necessitatibus magni laudantium nostrum. Aspernatur sed placeat eos aliquam saepe velit sequi. Rerum ut est aperiam ab fuga nemo.\n\nEst quibusdam maiores quaerat quasi tempore. Iste nihil et voluptatem qui. Quia explicabo illum repellendus quo ea iusto quas non. Corrupti ad qui quia nihil quos sapiente hic.\n\nQui in impedit qui. Praesentium et consequatur aut quos. Expedita consequatur praesentium minima est inventore alias. Cupiditate non fuga ea in rem recusandae. Hic tempora et explicabo enim sapiente sint ipsa esse.\n\nInventore asperiores recusandae eos assumenda ea id. Molestiae non soluta necessitatibus ipsam est voluptas. Ut accusantium sint enim repudiandae. Ipsa facere est repellat laboriosam consectetur quasi.\n\nError quibusdam sed non. Doloremque eum deleniti nisi ducimus veritatis. Quasi a incidunt soluta dolorum nihil nulla. Repellat doloremque est quia dolorum animi et ducimus eum.\n\nEt non voluptates adipisci dolorem impedit dolorem aut. Dolorum reiciendis quia amet itaque et. Eum reprehenderit sint voluptatum minus laborum. Iusto praesentium modi ratione suscipit omnis distinctio.\n\nSed ut ipsam molestiae voluptatem. Aut natus ut fugit debitis. Aut fugit in vel sed numquam assumenda et.\n\nMaiores commodi ea dignissimos dolores. Nostrum incidunt eligendi tenetur aut est. Sed consequatur labore reiciendis rerum impedit.\n\nIusto dignissimos eaque laborum ad. Qui dicta dolor explicabo facere. Cum aut architecto magni. Officiis necessitatibus aut molestias inventore nihil.\n\nQuia ut consequatur ex sed nihil. Neque quia aut tempora autem.\n\nUllam ab qui voluptatem quam ratione omnis. Quas repellat veritatis excepturi sed incidunt. Quis error possimus dicta molestiae molestias. Porro et quam doloremque et sed officia.\n\nOmnis laboriosam dolore vero earum fugiat est et. Accusamus sit qui illum illo aut accusamus. Sapiente ipsam architecto sint distinctio est perferendis et voluptate. Sunt sapiente repellendus rerum vitae dolore quia.\n\nEst est quia amet earum qui ipsum. Dolorum suscipit velit est dolorum placeat accusantium. Quia ipsam tempore sit a.\n\nUt qui unde adipisci eligendi dolorem. Odio sint illum delectus excepturi tenetur. Consequatur qui perferendis consequatur officia eveniet. Laudantium sed omnis dolore consequatur.\n\nOccaecati quas delectus consequatur debitis ea. Earum atque corrupti dolore a ex officiis reprehenderit. Iusto dolorem sit molestiae itaque delectus qui consequatur.\n\nAnimi sunt qui ipsa debitis. Vero ea non laborum sunt aliquid nisi. Veniam culpa porro eum blanditiis at. Quae et corporis numquam ut. Non nihil impedit ipsa possimus.\n\nFuga accusamus similique aliquid at. Molestiae natus eveniet voluptatem sapiente. Est ad eveniet voluptas enim non. Itaque iste sit dolore ad odio.', 'Enterprise-wide coherent parallelism', 'Et libero unde cumque quam omnis suscipit est. Rem mollitia consequuntur ut ut laboriosam eum. Quia totam autem autem quasi excepturi rerum nisi. Id aliquam deleniti consectetur sed magni.', 'DRAFT', 6, '2018-06-16 23:18:23', '2018-06-16 23:18:23', 'https://lorempixel.com/768/520/?38883', '2018-06-16 23:18:23'),
(39, 'Grass-roots exuding groupware', 'grass-roots-exuding-groupware', 'Veniam voluptatem voluptate fuga excepturi. Cum voluptatum placeat iste non qui quo quia. Ea quam minima voluptas officiis sit eos.\n\nSint nisi explicabo eum sunt sunt et dolore. Qui ut harum nihil. Nesciunt dolores suscipit odio tenetur. Et dolorem cupiditate aut veritatis soluta perferendis. Eum vero alias est itaque quo.\n\nA tempore et non veniam nihil rerum aut id. Necessitatibus et odit dolores sapiente quis possimus. Tenetur voluptate ut et quos qui veniam omnis. Aliquid eum ex et totam.\n\nFugit omnis asperiores ut reprehenderit harum excepturi voluptates ullam. At necessitatibus asperiores ex fuga incidunt. Culpa fugit qui molestiae.\n\nQuod quo amet qui placeat amet occaecati qui. Nesciunt aut rerum placeat exercitationem accusantium ab aut quam. Qui cum recusandae aperiam sunt aut repudiandae illo. Quidem qui et voluptatem odit. Temporibus earum earum magnam voluptatibus error.\n\nAtque ea laudantium quam vel et architecto non. Veniam quibusdam aut reiciendis et non corporis corrupti. Velit ratione ea ipsam repellat non. Iste amet sequi voluptas earum nostrum exercitationem.\n\nDelectus atque fugiat aut saepe pariatur minima deleniti. Beatae quia quaerat blanditiis. Assumenda veniam vitae ab beatae voluptate pariatur non. Tempore molestiae fugit libero quisquam.\n\nEaque alias nobis qui impedit vel molestiae. Reprehenderit incidunt facere beatae tempore quia et sed. Ipsum dolorum suscipit sed qui quasi autem. Veritatis eligendi explicabo et voluptas repudiandae rerum voluptas.\n\nQui et nemo animi a eum. Voluptates magni fugit praesentium provident deserunt eveniet ipsa. Atque est et veritatis aperiam cumque placeat velit. Ex ea itaque qui.\n\nEt natus enim doloremque enim consequatur. Et harum expedita perspiciatis praesentium rerum. Ullam omnis ea aut vero omnis. Et vel repudiandae sed in voluptatem magni neque.\n\nAb similique eaque laboriosam aut ipsa voluptatibus. Porro iste eius unde. Non debitis maiores quia architecto placeat.\n\nMolestiae est molestiae quia assumenda quas. Vero aperiam quisquam tempore aliquid rerum qui. Commodi similique sed temporibus quae.\n\nEx quam ab possimus id doloremque eveniet dolor. Quae minus ipsam qui distinctio aut aspernatur adipisci. Totam id eos illum magni laboriosam. Laborum eos ex soluta voluptas et neque.\n\nEligendi nisi suscipit assumenda impedit quo. Omnis dolorum temporibus earum est maiores ratione quibusdam. Ipsum quidem excepturi cum enim nostrum autem eos. Nostrum delectus aperiam sit autem aut mollitia.\n\nPraesentium autem quis enim sunt. Vel tenetur labore iure quam perferendis enim. Ut nostrum provident blanditiis numquam omnis.\n\nSaepe et eligendi optio praesentium libero qui provident. Qui repellendus tempora quo fugit fugit aspernatur. Omnis aut molestiae quisquam in.\n\nTempore fugit sint cumque et. Iure exercitationem minus ut officia officiis est. Earum voluptatem quo voluptas veniam placeat harum. Et illo quas unde omnis aliquid et ex magni.', 'Grass-roots exuding groupware', 'Id praesentium dignissimos accusantium dolorem et doloribus et molestiae. Voluptatem culpa quidem maiores maxime perferendis ab. Aperiam a non ea facere aliquid quas sed.', 'PUBLISHED', 43, '2018-06-16 23:18:23', '2018-06-16 23:18:23', 'https://lorempixel.com/768/520/?26427', '2018-06-16 23:18:23'),
(40, 'Streamlined 24hour architecture', 'streamlined-24hour-architecture', 'Necessitatibus non eius fugit et eum. Velit asperiores eius aut et. Autem sint facilis architecto excepturi eum quis. Quia mollitia corporis et illum.\n\nVel quidem saepe alias aut est sint ea. Rerum nostrum facilis harum soluta vitae et. Quo voluptatem id dignissimos voluptatem expedita mollitia voluptates.\n\nLaboriosam quia sunt tempore fuga repellendus accusantium accusantium. Est adipisci delectus qui doloremque porro quidem temporibus. Consequuntur officia facere sed.\n\nSint quidem atque dignissimos rem eos quia. Voluptas quasi ut ipsum voluptate dolorum voluptatibus ut. Ipsa architecto veritatis aut cupiditate voluptatem quo voluptatem. Quibusdam velit dolorem enim quia reprehenderit dolorem.\n\nQuae enim dolorum cum dicta reiciendis beatae quo. Aperiam reiciendis itaque officiis blanditiis deserunt earum dolores. Delectus voluptatibus id error consequatur cum doloribus eum. Doloribus ipsum tempore atque atque repellat tempora.\n\nMinus voluptatem qui sit aut et voluptas ut. Omnis quos fugit est ea. Non est enim architecto temporibus voluptate.\n\nId dolore tempora omnis vel optio sit. Alias ea ducimus sint ut ad. Voluptatem debitis provident quam molestiae velit harum repudiandae.\n\nQuia est repellendus et voluptatem at hic. Eum et est est exercitationem. Quos dolorum ut magnam ipsa molestiae pariatur eos velit. Quidem rerum illum adipisci illum.\n\nAccusamus dolorem fuga accusantium qui delectus consequatur minus. Repellendus nulla sapiente quos eum quam. Cupiditate at praesentium et vel temporibus alias. Illo recusandae soluta optio explicabo nihil itaque id.\n\nModi eum qui accusamus molestiae. Sed cumque incidunt consequatur minus est ab sit facere. Beatae soluta quia aut placeat exercitationem. Numquam officiis recusandae ea odio vero quo nulla.', 'Streamlined 24hour architecture', 'Voluptatem et omnis facere voluptatem. Deserunt eaque perferendis in sapiente voluptatem dicta et. Doloremque quia sed quos.', 'PENDING', 49, '2018-06-16 23:18:23', '2018-06-16 23:18:23', 'https://lorempixel.com/768/520/?62121', '2018-06-16 23:18:23'),
(41, 'Mandatory intangible artificialintelligence', 'mandatory-intangible-artificialintelligence', 'Impedit sunt aspernatur quae quod. Eius non officiis officiis officia quos sunt et. Doloremque dolore aliquid incidunt in illo.\n\nAmet et voluptas placeat ea commodi. Quibusdam ut nihil voluptate facere ut facilis et. Perspiciatis et sequi aut sapiente nihil voluptas quam. Explicabo dolor facere harum eos dolorem amet ab.\n\nDoloremque sed impedit quas nam. Deserunt libero alias omnis voluptatibus. Quod maxime tenetur autem sequi. Beatae iusto eveniet quos aliquid occaecati officiis molestiae.\n\nTemporibus culpa doloribus et maiores ipsam. Doloribus ut sapiente vel nobis ad earum provident maxime. Numquam enim reprehenderit aliquam minima et quis amet laudantium. Adipisci qui sed eos non repudiandae dicta quis.\n\nVoluptatem repudiandae officiis sapiente sapiente. Illum odit et ex blanditiis cum sunt. Dignissimos harum modi ea qui aspernatur quisquam nulla aspernatur. Error animi rerum eos molestias voluptas omnis quia.\n\nConsequatur dolorum iusto harum voluptatibus quasi. Beatae accusamus dolorum voluptatem rerum at totam aut. Ratione temporibus et quaerat ipsa ratione voluptatibus.\n\nBlanditiis in exercitationem minima molestiae et sit labore. Beatae ipsum quos saepe veniam in natus optio. Voluptatibus sit beatae consequatur velit. A minima tempora sit ut.\n\nIn minus ea autem et ipsa voluptatibus. Recusandae suscipit distinctio nisi necessitatibus possimus vel. Natus sit labore voluptas sint est sed rerum. Doloremque aut non est dolorem inventore.\n\nNatus architecto culpa suscipit ab. Consequatur et ut similique quis inventore in qui. Ducimus et doloribus nihil ut sunt ut dolorem. Et sequi quam et qui est necessitatibus. Omnis recusandae cupiditate qui eum omnis rerum.\n\nNobis ex praesentium quia et amet voluptatem nobis. Corporis sequi sapiente soluta perferendis id blanditiis. Et ut consequatur omnis architecto. Dolor asperiores recusandae voluptatibus accusantium. Et dignissimos placeat delectus a.\n\nAutem quaerat iure laborum id iusto molestias. Ut eligendi debitis recusandae culpa. Tempore eum consequatur non numquam. Quis ut dolore sint natus molestias tempora eveniet.\n\nVoluptatem fugit molestiae nemo veniam quis expedita. Blanditiis quas eos odio voluptatem. Nulla consequatur dignissimos voluptatum aut animi cum.\n\nOdio ut qui odit eos quisquam corporis. Cumque cumque eius nisi molestiae dolorum. In incidunt itaque facere.\n\nCorporis voluptas consequatur possimus impedit laudantium non. Vero dolorem fugit quis quisquam. Ut exercitationem eveniet vel aliquam qui occaecati. Sit rerum non ad id et harum.\n\nPariatur qui atque illum dolores quos eius maiores. Est praesentium aut temporibus magnam quia ullam at. Quos veniam est iure fugiat esse rerum voluptatibus. Blanditiis ea excepturi delectus harum ipsa rerum sequi aut. Maiores quibusdam culpa nisi consectetur.\n\nNemo laudantium et illo iure. Et quo ut quidem ipsa dolor voluptas animi. Ut ut et et similique ut assumenda fuga.\n\nEt sit nam impedit nihil consequatur asperiores. Molestiae autem voluptatum fugiat dignissimos. Veritatis fugit excepturi repellat ut eum nihil iste. Voluptatem est quis possimus eaque eos.\n\nNostrum ut voluptatibus perspiciatis. Culpa voluptates ad iste eius amet ut officiis.\n\nQui doloribus rerum et maxime eos. Qui nisi ad commodi fugiat quia nam dolores. Et nemo ipsam eius atque dolor doloremque rerum voluptate.\n\nVoluptatem quia dolorum odit in occaecati. Doloribus voluptatem a enim facere aut dolor. Sit corrupti soluta ut unde qui.', 'Mandatory intangible artificialintelligence', 'Modi architecto quia dolores est eos. Sed fuga quis beatae perferendis corporis molestias. Eveniet dicta temporibus neque omnis corrupti sit. Harum in doloribus sequi explicabo et necessitatibus.', 'PENDING', 13, '2018-06-16 23:18:23', '2018-06-16 23:18:23', 'https://lorempixel.com/768/520/?11859', '2018-06-16 23:18:23'),
(42, 'Adaptive 4thgeneration data-warehouse', 'adaptive-4thgeneration-data-warehouse', 'Labore rem officia facere voluptatem. Deleniti odio quam dolor qui illum similique. Quod provident consequatur et impedit. Rerum reprehenderit nihil sapiente libero voluptates at nobis. Et dolores nesciunt ut hic est.\n\nAtque nostrum qui quidem voluptas distinctio accusantium. Ad dignissimos ratione facere quibusdam. Maxime consequatur pariatur hic quo eius.\n\nUt harum nisi beatae ab et quidem nulla. Et dolorem voluptates aut culpa minima et. Odio et atque qui quae id non quas.\n\nSaepe sint qui fugiat. Quod omnis pariatur nihil ipsum. Asperiores voluptatem illum ducimus et quae voluptas quas.\n\nExcepturi quisquam ut porro aut. Reprehenderit id consequatur harum quis labore. Nesciunt error pariatur et error quasi ut. Nulla aliquid debitis nam quaerat omnis et sed.\n\nCulpa repellat ipsa commodi laborum. Incidunt quod illo odit natus reprehenderit sint veniam. Autem iste aut laborum voluptas atque nesciunt ea.\n\nNobis et aut minus et qui et. Qui nulla esse ut non. Et recusandae aperiam voluptatem occaecati dolore eos delectus. Ut aliquam atque autem eveniet.\n\nRepudiandae quibusdam enim sunt sed. Enim saepe dignissimos quis saepe sequi. Voluptatem et illo doloribus cupiditate expedita. Labore dignissimos reiciendis commodi vero.\n\nEx alias ut ipsum ad facere. Nemo itaque optio nemo libero magni. Rerum impedit ut possimus corporis. Deleniti libero saepe aut blanditiis occaecati.\n\nNon iste enim inventore vitae quis cum sit. Omnis cupiditate in neque. Sunt est dolorem quidem repellat ipsa aut aut. Doloremque dolor ut quae atque numquam. Laboriosam exercitationem iusto laudantium animi sunt ad.\n\nNihil veniam quos est. Commodi aliquam doloremque qui ut et. Soluta fuga necessitatibus quas totam. Veritatis officiis consectetur quibusdam neque quibusdam.\n\nEnim qui consequatur id. Ab consequatur saepe cum omnis est. Reprehenderit nam voluptatem voluptas fuga est mollitia. Rem deleniti voluptatem necessitatibus vero dolor quidem. Eligendi qui dolore occaecati est.\n\nTempora porro modi at eum labore animi. Quaerat eum mollitia facere dolorem dolores. Explicabo laudantium distinctio quod. At vel maiores modi possimus repellat a.\n\nMagni aut perspiciatis sunt cum similique sit et qui. Quia beatae autem vel ea. Numquam odio voluptatem soluta aut dicta tempora autem.\n\nAnimi atque omnis consequatur architecto quo quis ut. Sed dolores velit voluptatum a dolor. Aut fugit consequatur perspiciatis cumque libero sunt sequi. Optio eligendi reprehenderit ullam voluptas.\n\nPraesentium quibusdam rerum nemo eos. Dolores atque a est dolor nihil ut ducimus. Dolores aut quas laborum modi quam qui et. Et harum occaecati aut qui cum aut dolorem.', 'Adaptive 4thgeneration data-warehouse', 'Distinctio dicta doloribus a. Nihil quod corporis incidunt perspiciatis eos. Laudantium ad facere fugit dolorum fuga vero nesciunt. Et quia libero quis harum dignissimos non optio. Excepturi ut aliquam ut eum rem quia praesentium.', 'PUBLISHED', 49, '2018-06-16 23:18:23', '2018-06-16 23:18:23', 'https://lorempixel.com/768/520/?40953', '2018-06-16 23:18:23'),
(43, 'Seamless directional instructionset', 'seamless-directional-instructionset', 'Necessitatibus ex voluptatem harum velit incidunt vitae. Laudantium magnam at aut est voluptas in. Aut quibusdam a corporis.\n\nNecessitatibus quo omnis voluptatum et maxime architecto. Enim rem quidem debitis. Quia nulla aliquam quis quas. Consequatur ut earum exercitationem autem.\n\nPariatur aut nemo tempora blanditiis reprehenderit et cumque incidunt. Ducimus quisquam minima illo sapiente occaecati velit. Maiores reiciendis minima sint ut. Officiis provident ut ullam omnis qui voluptatem.\n\nRem ut qui quo vitae ipsum. Mollitia ea vero in ut exercitationem. Quod velit nostrum iusto sunt eveniet eaque eos. Qui amet possimus laboriosam voluptas rerum.\n\nEa repellendus ipsa vel fugit perspiciatis illo. Ea ab asperiores esse odio ex aut. Et voluptatum animi cupiditate id. Impedit veniam soluta voluptatem consequatur ea culpa.\n\nCorporis fugiat enim suscipit molestiae commodi illum. Qui facilis doloremque quae ut incidunt dolore. Accusantium doloribus voluptatibus labore. Voluptas soluta ut odio consequatur.\n\nCorrupti temporibus aliquam eius itaque non maxime. Illum qui qui illo quos repellat. Aut maiores quisquam officiis ut odit quia velit.\n\nIn magnam debitis id numquam non optio. Et dolorum cumque ad fuga quia quaerat id. Libero sunt vel velit qui autem illum debitis.\n\nSoluta cupiditate sint fugiat repellat. In officia cupiditate dolores quos sint eius. Quibusdam quas dolorum dignissimos ea. Expedita at eveniet ipsa rerum asperiores nesciunt exercitationem.\n\nQuae maxime neque aut dolorem eos consequuntur illum. Expedita beatae occaecati ut maiores. Est quam ut aut numquam architecto quaerat temporibus. In error aut sed corporis voluptate.\n\nAutem error veniam provident placeat. Illo alias quas nesciunt tempora. Quisquam eum sed dolore sunt quo nisi. Sint sequi et in magni.\n\nExpedita ipsam facere ipsum quod et placeat quas. Id aliquid rerum sit expedita quo. Aut illum totam iste dolor architecto voluptas.\n\nOdit culpa delectus praesentium impedit aspernatur. At et saepe commodi. Error eveniet voluptates optio. Vero unde natus quo rem necessitatibus illo. Facilis porro itaque deserunt quos voluptatem numquam.\n\nDolor accusantium sed deleniti qui ex. Harum mollitia et velit odit quae aliquam quis. Pariatur est aut corrupti ut. Eius ipsa illo in voluptates amet numquam ut.\n\nMagni quis quaerat nihil. Rerum atque accusantium adipisci dolores praesentium. Illum illum alias atque fuga alias voluptatum. Praesentium similique qui sit est.\n\nSequi illo autem tempore eveniet. Repudiandae nobis quia quo facilis voluptatum natus accusamus dolore. Quas numquam quae doloremque soluta deleniti.\n\nPerspiciatis eaque placeat ad explicabo alias voluptatem quo. Molestias sed in commodi.\n\nRerum quia qui dolor asperiores. Assumenda rerum nam cum eos omnis doloremque explicabo. Nobis omnis sint nihil ad eveniet occaecati vel dignissimos. Et ducimus deleniti porro quasi repellendus officia commodi.', 'Seamless directional instructionset', 'Odio qui dolorum deleniti natus. Autem in officia officiis aut aut. Alias repellat excepturi dolorem quibusdam. Expedita odit facere voluptatem dolor accusantium. Occaecati saepe assumenda eius qui ut.', 'DRAFT', 51, '2018-06-16 23:18:23', '2018-06-16 23:18:23', 'https://lorempixel.com/768/520/?51269', '2018-06-16 23:18:23'),
(44, 'Extended uniform productivity', 'extended-uniform-productivity', 'Pariatur aliquid ratione veritatis aut velit possimus dolores. Deserunt amet laborum ut ut. Et et explicabo eum harum. Ea ipsum eum saepe non et error aspernatur.\n\nEt sit sed dicta omnis dolore et. Sit inventore molestiae aut fuga quis saepe voluptatum. Voluptatem suscipit mollitia minima voluptates.\n\nEos quaerat ut possimus voluptatibus. Atque est consequatur blanditiis aliquid. Non beatae dolorum nam est dolor sint.\n\nQuos voluptatum sit voluptas. Voluptatem pariatur nobis accusantium deleniti voluptatem. Eaque qui numquam sunt. Nisi quia ut hic consequatur quia autem et.\n\nAsperiores magni quisquam aperiam delectus. Eum consectetur dicta maxime nulla iste eum. Nihil ut eaque et est voluptatem.\n\nDolores ipsam architecto soluta omnis necessitatibus quidem provident. Neque tempore mollitia quibusdam aut quaerat nostrum asperiores. Reiciendis enim et est voluptas sunt saepe.\n\nVel eos ut quod. Adipisci nostrum ea voluptatem. Rem nostrum voluptatem aut error recusandae ullam perferendis.\n\nItaque aut quia recusandae explicabo quaerat dolor. Officia eligendi et sapiente modi illum. Omnis ea fugiat ducimus dolor cumque tempore laborum molestiae. Accusantium nisi facere in praesentium.\n\nEa at velit velit mollitia molestiae minus velit. Tempora et consequuntur sed dolores odio. Repellat laudantium fuga officia ullam molestiae et placeat.\n\nDeserunt aut voluptatem nisi eos neque. Enim aliquid ratione ut corporis illo illum ullam. Ipsum provident voluptatem expedita delectus et.\n\nVeniam delectus laudantium fugit ea perspiciatis. Necessitatibus necessitatibus et reprehenderit. Eum consequuntur voluptates laborum maiores praesentium similique corporis.\n\nSequi saepe nihil saepe. Tempore molestiae molestiae quas in voluptatem saepe est. Officia reprehenderit quis saepe repellendus qui quos doloremque.\n\nUt alias fugit et porro non facere blanditiis animi. Ut eius et saepe libero provident. Ipsum incidunt odio blanditiis consequatur deserunt non. Ut fuga maxime molestiae inventore nostrum.', 'Extended uniform productivity', 'Pariatur officiis provident alias quia voluptatem rerum. Sint voluptates sint ut et maxime. Explicabo reprehenderit deleniti at et provident. Debitis est pariatur hic quibusdam.', 'PUBLISHED', 51, '2018-06-16 23:18:23', '2018-06-16 23:18:23', 'https://lorempixel.com/768/520/?44588', '2018-06-16 23:18:23'),
(45, 'Public-key zerodefect moderator', 'public-key-zerodefect-moderator', 'Labore aliquam qui impedit aliquam et. Aut quis blanditiis quod quisquam et minima doloribus. Rerum et nisi veritatis enim in optio omnis. Iure consequuntur repellendus odio inventore.\n\nVeniam qui ut labore voluptatem. Reprehenderit nihil debitis excepturi rerum totam earum. Quo quisquam veniam ea unde rem.\n\nRerum mollitia minus omnis quod non cupiditate ut. A dolorum hic voluptates architecto voluptatibus dolorem. Distinctio non iste sint quis. Dolor aut eos distinctio minus aut ex et id. Voluptatibus rerum ex ex itaque doloribus.\n\nEst reprehenderit delectus consequatur enim dicta. Reiciendis deserunt laborum voluptatibus velit odio. Voluptatem aut sit in maiores est repellat doloribus. Repudiandae in voluptatem atque magnam et laboriosam et.\n\nExplicabo debitis minima inventore dolor consequatur consequatur ea. Quasi doloribus temporibus repudiandae impedit. Aspernatur quia exercitationem asperiores. Delectus aut corporis consequatur consequuntur. Quam temporibus eligendi ipsum enim.\n\nMinima qui hic pariatur et quis accusantium voluptas hic. Ea in aut hic officiis alias. At voluptatem quo perferendis quia blanditiis delectus alias et.\n\nRem doloribus ad deleniti nemo. Illo non modi voluptatibus esse. Deserunt velit sit est fuga ab vero.\n\nVero quas voluptas enim et eos reiciendis doloremque. Qui repellat quibusdam ad asperiores id illo totam. Rerum velit ducimus quaerat voluptatibus possimus culpa quod.\n\nLaboriosam ab explicabo aut possimus omnis neque. Voluptate laboriosam animi enim pariatur porro.\n\nDolor quibusdam veniam maiores asperiores sed. Qui est numquam cumque dolore consequatur voluptates incidunt. Eveniet aut assumenda at rerum. Et deserunt odio repudiandae at aut vitae.\n\nEaque officiis aperiam molestias blanditiis. Reprehenderit earum doloribus nemo autem. Deserunt recusandae sequi quidem laborum exercitationem quo ea. Fugiat labore enim sit dolor itaque.\n\nEum sunt autem quas et omnis officia molestiae. Aut sequi repudiandae incidunt et perferendis in. Id sit consectetur velit libero tenetur dolores dolores vitae.\n\nRepudiandae facilis quod suscipit qui sit molestiae. Quia enim nostrum consequatur voluptatum possimus sint tempora consequatur. Voluptatem ut velit sit corporis est ad. Perferendis modi voluptatem corporis laboriosam nam error.\n\nIure blanditiis et blanditiis molestiae ad. Voluptatem iusto illum hic quas iste. Modi velit alias quae qui perferendis minus commodi. Excepturi sed quia soluta porro.\n\nQuidem et facilis accusantium autem. Et occaecati culpa ex rerum distinctio. Alias doloribus et at sed neque facilis. Ipsa vero dolorem non corporis ullam praesentium. Et voluptatem vero et est.\n\nVoluptas animi praesentium et sit sed. Nihil quibusdam impedit dolor rerum eligendi. Eveniet possimus fuga amet. Atque vero molestiae ipsum reprehenderit.\n\nSimilique repudiandae ducimus et quis sequi eligendi blanditiis. Perferendis beatae ducimus ducimus aut nemo.\n\nExpedita in nostrum soluta perspiciatis est id. Et quod qui molestiae sapiente. Sint omnis iusto voluptates magni assumenda labore et. Aliquid ut aut repudiandae totam eaque.', 'Public-key zerodefect moderator', 'Doloremque incidunt aut molestias in. Ab ut et ullam dolores. Aperiam iusto placeat ut et et.', 'PENDING', 28, '2018-06-16 23:18:23', '2018-06-16 23:18:23', 'https://lorempixel.com/768/520/?35857', '2018-06-16 23:18:23'),
(46, 'Up-sized background portal', 'up-sized-background-portal', 'Et quia et enim. Voluptas ipsum voluptatem commodi quod. Et laudantium consequatur ipsum delectus omnis omnis rerum dolorem.\n\nVoluptatem repellendus dolores dolores illum odio quis rem. Et expedita ex aspernatur quia nihil aliquam qui. Non sapiente est sed possimus inventore voluptas nulla. Nesciunt labore id sapiente cumque voluptatibus dolores est.\n\nAtque ducimus molestiae eos eum. Aut unde aut repudiandae id dicta dolor aut aliquid. Beatae dolorum dolorem nihil dolore labore. Sapiente voluptatum non et esse voluptas.\n\nEt eius molestias molestiae laborum. Accusantium doloribus fugiat error eveniet omnis. Tempora nihil soluta ut rerum aliquid quas mollitia.\n\nRepudiandae odio ut vitae voluptatem fuga dolorum. Quae dolore aut quia doloribus ut nihil incidunt. Non quod ullam animi qui.\n\nId rem labore vel asperiores accusamus perferendis rerum. Qui vitae vel enim sit voluptas nostrum quod. Quas ut reprehenderit et dolores facilis sint.\n\nUt quas voluptates necessitatibus error eaque illum vero ipsa. Voluptatem expedita vitae placeat qui nobis et repellendus tenetur. Sed consequatur molestias qui corporis et. Sapiente eos culpa qui ipsum error non.\n\nSint officiis cupiditate non mollitia et nam. Dolorum magnam id dolore voluptate occaecati. Repellat ipsa sapiente sed. Qui ut aut quis est facere porro aut beatae. Ut officiis quo consequatur tenetur.\n\nCumque id iusto voluptas nobis officiis et officia autem. Eaque praesentium blanditiis veniam cupiditate. Quia quis aliquid et minima magnam quo. Porro consequatur et facilis asperiores.\n\nDolores aut in voluptatem quam soluta ut. Ipsa tempora ratione aperiam eaque quo laborum vel. Qui reiciendis distinctio qui sapiente quis suscipit quisquam. In nemo accusamus atque repellat voluptates.\n\nQui pariatur asperiores provident velit. Qui omnis repellendus rerum facilis natus similique. Architecto ratione maxime quaerat est culpa quos incidunt.\n\nPerspiciatis incidunt omnis quisquam voluptatem optio inventore ipsa. Et repudiandae et aut quisquam quo eum qui. Ut earum et et placeat.\n\nEt accusamus vitae incidunt quisquam. Sit omnis ullam et est. Nisi a rerum necessitatibus optio.\n\nSint sed numquam sit perferendis neque. Culpa non qui ducimus. Voluptatem ea quae quia sed quam optio omnis voluptas. Assumenda totam maiores hic sunt aut quos.\n\nIn illum et totam dolore vitae sit explicabo. Consequuntur deserunt quis incidunt.', 'Up-sized background portal', 'Qui aut quae fugit praesentium ipsum enim. Facere ratione amet nihil voluptatem. Occaecati consequatur expedita vel cumque sint aliquam. Vitae magnam esse quae rerum vero illo qui.', 'PUBLISHED', 3, '2018-06-16 23:18:23', '2018-06-16 23:18:23', 'https://lorempixel.com/768/520/?80191', '2018-06-16 23:18:23');
INSERT INTO `news` (`id`, `title`, `slug`, `content`, `meta_title`, `meta_description`, `status`, `author_id`, `created_at`, `updated_at`, `image`, `published_date`) VALUES
(47, 'Operative regional capability', 'operative-regional-capability', 'Expedita asperiores voluptates voluptas. Ab omnis velit et molestiae adipisci. Necessitatibus voluptas officiis accusantium maxime dolor.\n\nQuas ut dolor exercitationem hic dolore et. Aspernatur excepturi sequi voluptas blanditiis. Sint modi reprehenderit doloremque odio dolor nobis et. Repellendus sint soluta repellendus. Dolore quos delectus eligendi quia.\n\nQuasi quo esse voluptatem magni. Quia est in nam nesciunt in. Dolor et aliquid optio et deleniti deleniti quae.\n\nRepudiandae repellat et quia suscipit saepe. Cupiditate qui impedit vitae dolore minima. Pariatur harum neque quod qui dolor aut in rerum.\n\nEx dolor ut natus ex quia officia vel a. Officiis excepturi iusto ducimus quo dolorem dolorem quis.\n\nLaborum vitae et earum ut. Aut repellat harum enim eum. Eius et aspernatur non veritatis architecto veritatis amet. Nisi vitae consectetur id recusandae deleniti quo.\n\nVeritatis adipisci enim ipsam voluptatem suscipit eveniet. Omnis minima laborum dignissimos quae aut nobis. Cum aut eos dolores.\n\nUnde et quis aut dolor. Possimus beatae tempore illum vel et. Reprehenderit ut vel pariatur quia est in et.\n\nEnim qui possimus consectetur assumenda quam sit perspiciatis. Ut modi ut tempora numquam. Voluptatum recusandae reiciendis est eaque sunt. Esse error molestias itaque tenetur aut dolore cumque.\n\nDeleniti rerum ad aliquam odit. Sequi quam molestias blanditiis sint quo perspiciatis atque. Magni sit non rerum commodi autem. Sunt id pariatur maxime doloremque corrupti corrupti consectetur reprehenderit. Et et repellat omnis voluptatem sed.\n\nEligendi dolor qui ut quia. Ratione eum enim nemo. Quia corporis dolorem ab aut totam necessitatibus.\n\nDeserunt ipsam doloribus eum et quia nihil. Aut temporibus illo nisi qui tempore voluptas. Suscipit aut odit ea. Quasi velit dolor ut tempore. Qui consectetur aut dolorem.\n\nQui ut nihil et voluptatem. Iure necessitatibus sequi distinctio iusto qui ut. Repellat quibusdam occaecati voluptate.\n\nSapiente commodi quae reiciendis neque ipsam libero. Eveniet est nemo et eos deserunt expedita. Voluptas illo magnam tempora voluptatum. Beatae dolor corporis nulla consequatur sit voluptatem.\n\nMaxime et sed velit quidem. Deleniti beatae ad consectetur qui tempora quas praesentium.\n\nSint alias vel eaque laudantium consequuntur. Aut dolor quis quam voluptatem rerum tempore. Et molestiae sapiente doloremque adipisci eligendi quibusdam est nihil. Perspiciatis exercitationem voluptas ut eveniet voluptatem.\n\nMagni quod aliquam aut numquam earum aperiam omnis. Ea dolores labore qui voluptates eaque vel delectus eos. Autem dolores in expedita eos molestias ad id. Aut nemo autem qui modi rem praesentium sed velit.\n\nEa reiciendis et asperiores. Harum est non inventore molestias distinctio. Sit numquam occaecati minus dolor magni eum. Autem totam in natus porro sapiente.\n\nQui architecto ut natus. Dolore consectetur quo eligendi repellat illum eveniet in. Explicabo accusantium natus officiis impedit quis qui. Incidunt modi dolores amet adipisci pariatur odio blanditiis.\n\nDoloribus quo voluptatem quaerat eaque totam perspiciatis minima. Aut quos corrupti est magnam dignissimos qui est sunt.', 'Operative regional capability', 'Et fugit quos repudiandae nihil exercitationem et provident quia. Et ea ut sunt quo totam assumenda doloremque. Ab voluptatem et provident eum.', 'PUBLISHED', 28, '2018-06-16 23:18:23', '2018-06-16 23:18:23', 'https://lorempixel.com/768/520/?94758', '2018-06-16 23:18:23'),
(48, 'Proactive analyzing hierarchy', 'proactive-analyzing-hierarchy', 'Temporibus consectetur laboriosam natus. Deleniti quidem labore sapiente voluptas inventore illum. Odit deleniti consectetur saepe.\n\nEius excepturi esse iure expedita doloribus fugiat nemo. Et a dolor quis natus repellat ab. Saepe non blanditiis a dicta qui.\n\nAliquam saepe quia sint eligendi eius quis. Est consequatur quis non magnam consequatur.\n\nSed sint nihil maxime quos in sint sequi. Quae omnis nihil a dolores sapiente aperiam aut explicabo. Dolorum consequatur corporis qui quis sunt aut ea rerum. Qui ea alias consectetur minima est voluptates.\n\nReiciendis consequatur corporis aliquid minus sequi at autem cumque. Fuga sed aut incidunt vitae. Voluptate et provident itaque maxime.\n\nDoloribus cum sunt recusandae quia. Assumenda numquam quas id et sequi ullam. Voluptas corporis aperiam corrupti et est et omnis. Blanditiis et iure libero quia molestias cumque recusandae repellendus.\n\nId et beatae repellendus cum qui facere reprehenderit. Sed eaque et corrupti occaecati consequatur dolorum ipsam velit. Perspiciatis id sint ut perferendis. A adipisci corporis esse vel aut.\n\nEt beatae esse officiis pariatur aut velit repellat. Asperiores cumque voluptate quod quibusdam ipsum qui et. Sunt necessitatibus odit sint praesentium. Non qui modi qui voluptatem. Quos quaerat incidunt est rerum.\n\nMagni quam cum id esse dolorem. Autem voluptas magni numquam aut sunt. Voluptatem quia animi in impedit doloremque ipsa in molestias. Perferendis consequatur officia asperiores eos. Doloribus voluptatem natus velit dignissimos nobis.\n\nSaepe pariatur ratione quae voluptates atque repellat tenetur. Laborum iusto laudantium omnis eum necessitatibus similique quia iusto. Numquam odit veniam iste commodi aut.\n\nSunt rerum et autem sed. Non suscipit ipsa recusandae qui. Dolores rerum omnis consequatur aut dolorem repellendus error. Sunt consequatur non laudantium quia.\n\nEt natus a explicabo maiores quisquam quis dolorem. Consectetur ut nemo est dicta eius. Laudantium incidunt eum corrupti quisquam deleniti ut sequi nam.\n\nEa dicta sunt saepe odio cum quam. Mollitia accusantium nisi non molestiae facilis voluptatum. Ea dolorem et suscipit expedita autem.\n\nQuasi vitae id voluptas nihil earum. Voluptate aut eum sed autem dolores. Libero alias ut rerum architecto illum quod. Dolorem quia quia reiciendis sed mollitia dolore itaque.\n\nEt enim aut sapiente sapiente. Dolorem voluptatem modi aliquam eligendi assumenda ipsam laboriosam. Quia quibusdam at sunt iusto natus. Aliquam sit sequi ut et consequatur expedita facere.\n\nPossimus ut saepe aut est aut. Quis quisquam ex voluptas consequatur. Nam blanditiis cum optio odit quas. Nobis numquam est dolores autem rem nesciunt deleniti.\n\nOdio ad possimus laborum ipsum qui illum. Id eius ipsam tempora voluptates dignissimos voluptatum alias. Illum sequi voluptatem dicta velit necessitatibus. Unde magni laborum ducimus consectetur veritatis id adipisci.\n\nQuia inventore aliquid modi perspiciatis. Facilis eveniet illum temporibus tempora. Quia ipsam distinctio sint officiis voluptas et voluptate. Illo est reprehenderit magnam.', 'Proactive analyzing hierarchy', 'Dolores in qui temporibus minus ipsa aut natus. Cum quam tenetur maiores quo in possimus. Est voluptatem quaerat praesentium non. Labore repellat facilis itaque non incidunt accusamus ipsam sed.', 'PUBLISHED', 49, '2018-06-16 23:18:23', '2018-06-16 23:18:23', 'https://lorempixel.com/768/520/?69861', '2018-06-16 23:18:23');

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
(42, 2),
(42, 3),
(43, 1),
(43, 2),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(45, 3),
(46, 1),
(46, 3),
(47, 1),
(47, 2),
(47, 3),
(48, 1),
(48, 2),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(50, 3),
(51, 1),
(51, 3),
(52, 1),
(52, 2),
(53, 1),
(53, 2),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(57, 2),
(58, 1),
(58, 2),
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
-- Table structure for table `tutorials`
--

CREATE TABLE `tutorials` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `overview` mediumtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `meta_title` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` mediumtext COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_likes` int(11) DEFAULT '0',
  `guide_id` int(10) UNSIGNED DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tutorials`
--

INSERT INTO `tutorials` (`id`, `title`, `slug`, `overview`, `content`, `meta_title`, `meta_description`, `status`, `author_id`, `created_at`, `updated_at`, `total_likes`, `guide_id`, `image`, `published_date`) VALUES
(1, 'React: Components', 'react-components', '<h1>Overview</h1>\r\n<ul>\r\n<li>Item 1</li>\r\n<li>Item 2</li>\r\n<li>Item 3</li>\r\n</ul>', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ultricies augue vel quam ullamcorper, eu ultrices nulla scelerisque. Integer diam ex, accumsan non finibus et, luctus eget purus. Etiam mollis elit purus, vel volutpat orci facilisis eu. Vivamus ultricies imperdiet erat vel feugiat. Proin volutpat metus ut neque facilisis, vel molestie diam tempor. Morbi lectus ipsum, maximus quis tempor in, dapibus eget orci. Donec a lectus sagittis, molestie urna a, maximus nunc. Ut commodo imperdiet mi tempor sollicitudin. Aenean cursus urna vel lorem sodales, auctor gravida lectus interdum.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Phasellus lobortis a nisi eget fringilla. Nunc sed quam hendrerit lorem viverra consequat vel sed mauris. Maecenas nec ante eu dui commodo hendrerit a vitae massa. Suspendisse lacinia faucibus elementum. Maecenas bibendum mauris velit. Sed sed laoreet urna. Suspendisse cursus, nulla tempor pharetra tristique, ligula arcu varius nunc, id ultricies lacus urna eget enim.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Integer est mauris, facilisis nec tempor quis, porta non quam. Curabitur id nisi ac mi feugiat viverra. Vivamus malesuada elit pellentesque, pharetra magna a, cursus diam. Suspendisse in dolor eu justo finibus ornare. Sed auctor eleifend mi, in accumsan ligula maximus varius. Mauris ipsum risus, fermentum vitae magna quis, rhoncus porta ante. Proin quis fermentum risus.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Integer ac tortor semper, porta mi sed, facilisis felis. Sed nec rutrum dolor, id convallis purus. Nullam tempor, nunc at tincidunt lobortis, enim diam sagittis dui, a ullamcorper magna nulla eu lorem. Quisque feugiat mattis feugiat. Curabitur ut elit ut velit viverra volutpat. Curabitur rhoncus feugiat lectus, non auctor tortor aliquet vel. Nullam augue dui, efficitur ut sodales et, auctor a lorem.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Integer non mauris bibendum tortor sollicitudin consectetur. Duis pellentesque mi et velit dignissim, eget vestibulum ligula interdum. Morbi sed metus lobortis, rutrum est id, euismod tellus. Mauris elit lectus, fringilla id auctor non, hendrerit id dolor. Proin ut condimentum libero. Nullam pretium, est quis ullamcorper dictum, arcu urna iaculis sem, sit amet blandit urna erat in nisi. Maecenas finibus congue nunc, vel pharetra nibh auctor sed. Sed molestie, turpis non congue feugiat, mi velit dapibus turpis, non iaculis orci lorem a dolor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In sit amet ligula ornare sapien ornare posuere. Sed placerat cursus mauris ut suscipit. Phasellus molestie urna in lorem dictum facilisis. Nullam venenatis dui eget turpis posuere tristique. Vivamus elit nunc, dignissim eu elit in, blandit feugiat erat. Ut ac aliquet velit.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ultricies augue vel quam ullamcorper, eu ultrices nulla scelerisque. Integer diam ex, accumsan non finibus et, luctus eget purus. Etiam mollis elit purus, vel volutpat orci facilisis eu. Vivamus ultricies imperdiet erat vel feugiat. Proin volutpat metus ut neque facilisis, vel molestie diam tempor. Morbi lectus ipsum, maximus quis tempor in, dapibus eget orci. Donec a lectus sagittis, molestie urna a, maximus nunc. Ut commodo imperdiet mi tempor sollicitudin. Aenean cursus urna vel lorem sodales, auctor gravida lectus interdum.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Phasellus lobortis a nisi eget fringilla. Nunc sed quam hendrerit lorem viverra consequat vel sed mauris. Maecenas nec ante eu dui commodo hendrerit a vitae massa. Suspendisse lacinia faucibus elementum. Maecenas bibendum mauris velit. Sed sed laoreet urna. Suspendisse cursus, nulla tempor pharetra tristique, ligula arcu varius nunc, id ultricies lacus urna eget enim.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Integer est mauris, facilisis nec tempor quis, porta non quam. Curabitur id nisi ac mi feugiat viverra. Vivamus malesuada elit pellentesque, pharetra magna a, cursus diam. Suspendisse in dolor eu justo finibus ornare. Sed auctor eleifend mi, in accumsan ligula maximus varius. Mauris ipsum risus, fermentum vitae magna quis, rhoncus porta ante. Proin quis fermentum risus.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Integer ac tortor semper, porta mi sed, facilisis felis. Sed nec rutrum dolor, id convallis purus. Nullam tempor, nunc at tincidunt lobortis, enim diam sagittis dui, a ullamcorper magna nulla eu lorem. Quisque feugiat mattis feugiat. Curabitur ut elit ut velit viverra volutpat. Curabitur rhoncus feugiat lectus, non auctor tortor aliquet vel. Nullam augue dui, efficitur ut sodales et, auctor a lorem.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Integer non mauris bibendum tortor sollicitudin consectetur. Duis pellentesque mi et velit dignissim, eget vestibulum ligula interdum. Morbi sed metus lobortis, rutrum est id, euismod tellus. Mauris elit lectus, fringilla id auctor non, hendrerit id dolor. Proin ut condimentum libero. Nullam pretium, est quis ullamcorper dictum, arcu urna iaculis sem, sit amet blandit urna erat in nisi. Maecenas finibus congue nunc, vel pharetra nibh auctor sed. Sed molestie, turpis non congue feugiat, mi velit dapibus turpis, non iaculis orci lorem a dolor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In sit amet ligula ornare sapien ornare posuere. Sed placerat cursus mauris ut suscipit. Phasellus molestie urna in lorem dictum facilisis. Nullam venenatis dui eget turpis posuere tristique. Vivamus elit nunc, dignissim eu elit in, blandit feugiat erat. Ut ac aliquet velit.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ultricies augue vel quam ullamcorper, eu ultrices nulla scelerisque. Integer diam ex, accumsan non finibus et, luctus eget purus. Etiam mollis elit purus, vel volutpat orci facilisis eu. Vivamus ultricies imperdiet erat vel feugiat. Proin volutpat metus ut neque facilisis, vel molestie diam tempor. Morbi lectus ipsum, maximus quis tempor in, dapibus eget orci. Donec a lectus sagittis, molestie urna a, maximus nunc. Ut commodo imperdiet mi tempor sollicitudin. Aenean cursus urna vel lorem sodales, auctor gravida lectus interdum.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Phasellus lobortis a nisi eget fringilla. Nunc sed quam hendrerit lorem viverra consequat vel sed mauris. Maecenas nec ante eu dui commodo hendrerit a vitae massa. Suspendisse lacinia faucibus elementum. Maecenas bibendum mauris velit. Sed sed laoreet urna. Suspendisse cursus, nulla tempor pharetra tristique, ligula arcu varius nunc, id ultricies lacus urna eget enim.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Integer est mauris, facilisis nec tempor quis, porta non quam. Curabitur id nisi ac mi feugiat viverra. Vivamus malesuada elit pellentesque, pharetra magna a, cursus diam. Suspendisse in dolor eu justo finibus ornare. Sed auctor eleifend mi, in accumsan ligula maximus varius. Mauris ipsum risus, fermentum vitae magna quis, rhoncus porta ante. Proin quis fermentum risus.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Integer ac tortor semper, porta mi sed, facilisis felis. Sed nec rutrum dolor, id convallis purus. Nullam tempor, nunc at tincidunt lobortis, enim diam sagittis dui, a ullamcorper magna nulla eu lorem. Quisque feugiat mattis feugiat. Curabitur ut elit ut velit viverra volutpat. Curabitur rhoncus feugiat lectus, non auctor tortor aliquet vel. Nullam augue dui, efficitur ut sodales et, auctor a lorem.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Integer non mauris bibendum tortor sollicitudin consectetur. Duis pellentesque mi et velit dignissim, eget vestibulum ligula interdum. Morbi sed metus lobortis, rutrum est id, euismod tellus. Mauris elit lectus, fringilla id auctor non, hendrerit id dolor. Proin ut condimentum libero. Nullam pretium, est quis ullamcorper dictum, arcu urna iaculis sem, sit amet blandit urna erat in nisi. Maecenas finibus congue nunc, vel pharetra nibh auctor sed. Sed molestie, turpis non congue feugiat, mi velit dapibus turpis, non iaculis orci lorem a dolor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In sit amet ligula ornare sapien ornare posuere. Sed placerat cursus mauris ut suscipit. Phasellus molestie urna in lorem dictum facilisis. Nullam venenatis dui eget turpis posuere tristique. Vivamus elit nunc, dignissim eu elit in, blandit feugiat erat. Ut ac aliquet velit.</p>', 'React for Beginners', '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Integer ac tortor semper, porta mi sed, facilisis felis. Sed nec rutrum dolor, id convallis purus. Nullam tempor, nunc at tincidunt lobortis, enim diam sagittis dui, a ullamcorper magna nulla eu lorem. Quisque feugiat mattis feugiat. Curabitur ut elit ut velit viverra volutpat. Curabitur rhoncus feugiat lectus, non auctor tortor aliquet vel. Nullam augue dui, efficitur ut sodales et, auctor a lorem.</span></p>', 'PUBLISHED', 3, '2018-06-09 06:43:00', '2018-06-10 21:10:56', 0, 1, 'tutorials\\June2018\\Ul7uAo8whG3x9oDYBFoe.png', '2018-06-09 06:43:00'),
(2, 'React: Prop Time', 'react-prop-time', '<p style=\"box-sizing: border-box; margin: 0px 0px 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; padding: 0px; vertical-align: baseline; color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Bacon ipsum dolor amet ut short ribs capicola eiusmod, do duis ipsum ea tenderloin bresaola hamburger burgdoggen culpa cupidatat. Drumstick officia anim cupidatat commodo swine. Aliquip short loin nisi aliqua salami pariatur. Duis shankle non pork belly jowl bresaola brisket consectetur. Deserunt aliqua boudin cow mollit capicola pork chop et do turkey. Flank sausage anim beef.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; padding: 0px; vertical-align: baseline; color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">What we\'re going to be doing</p>\r\n<ul>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; padding: 0px; vertical-align: baseline; color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Link 1</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; padding: 0px; vertical-align: baseline; color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Link 2</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; padding: 0px; vertical-align: baseline; color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Link 3</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; padding: 0px; vertical-align: baseline; color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Link 4</li>\r\n</ul>', '<p style=\"box-sizing: border-box; margin: 0px 0px 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; padding: 0px; vertical-align: baseline; color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Bacon ipsum dolor amet ut short ribs capicola eiusmod, do duis ipsum ea tenderloin bresaola hamburger burgdoggen culpa cupidatat. Drumstick officia anim cupidatat commodo swine. Aliquip short loin nisi aliqua salami pariatur. Duis shankle non pork belly jowl bresaola brisket consectetur. Deserunt aliqua boudin cow mollit capicola pork chop et do turkey. Flank sausage anim beef.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; padding: 0px; vertical-align: baseline; color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Sed picanha in ea kielbasa deserunt non doner reprehenderit ham fugiat dolore ground round ball tip. Filet mignon burgdoggen ribeye, mollit shank pork belly nostrud landjaeger eu ea incididunt minim tri-tip t-bone. Id salami pork belly, labore sirloin nulla consequat jerky pork loin boudin officia tenderloin ipsum. Tongue do enim anim pork chop, boudin occaecat eu aute.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; padding: 0px; vertical-align: baseline; color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Quis laborum nostrud landjaeger flank ipsum est biltong. Veniam filet mignon officia prosciutto consectetur flank, proident pork loin in meatloaf ipsum venison aliqua tri-tip short ribs. Alcatra pastrami ea ut ipsum eiusmod t-bone veniam. Chuck est deserunt, t-bone jowl leberkas ham pastrami ham hock. Chuck bresaola enim, mollit magna incididunt swine brisket ground round. Bresaola pork chop turkey, tongue pig qui ut shank eiusmod.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; padding: 0px; vertical-align: baseline; color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Beef ut frankfurter, aliqua dolore in ea. Spare ribs rump excepteur tempor, beef in anim swine pig shoulder. Kielbasa ham capicola leberkas sed nulla elit. Shankle pastrami elit aute meatloaf flank dolore turkey ea. Veniam dolore pig, ex sirloin filet mignon bresaola alcatra spare ribs non eu short ribs sint ullamco mollit. Culpa tri-tip shoulder ex shankle est ball tip laborum sirloin excepteur fatback bresaola beef ribs labore. T-bone qui turducken, magna eiusmod aliqua fatback brisket pork loin dolore swine chicken veniam.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; padding: 0px; vertical-align: baseline; color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Doner ut sed boudin, tenderloin chicken pork in. Corned beef aliquip prosciutto voluptate consequat biltong. Anim minim mollit short ribs picanha beef ribs. Occaecat meatball frankfurter deserunt ipsum. Hamburger shoulder quis alcatra irure venison enim andouille id prosciutto sint voluptate proident. Officia pancetta doner excepteur venison capicola culpa pork loin nulla qui. Rump adipisicing short ribs sunt boudin ipsum tenderloin pork belly officia sirloin cillum.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; padding: 0px; vertical-align: baseline; color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Ham cillum tenderloin picanha. Occaecat magna laboris, meatball esse boudin id sirloin biltong mollit turducken non deserunt picanha ad. Duis tenderloin corned beef cupidatat esse venison t-bone capicola. Turkey corned beef occaecat voluptate ex flank salami in nulla alcatra cupim tenderloin sunt.</p>', 'React: Prop Time', '<p><span style=\"color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Ham cillum tenderloin picanha. Occaecat magna laboris, meatball esse boudin id sirloin biltong mollit turducken non deserunt picanha ad. Duis tenderloin corned beef cupidatat esse venison t-bone capicola. Turkey corned beef occaecat voluptate ex flank salami in nulla alcatra cupim tenderloin sunt.</span></p>', 'PUBLISHED', 3, '2018-06-09 20:15:00', '2018-06-10 21:10:46', 0, 1, 'tutorials\\June2018\\lurDV12sSProgWYQ7LF4.png', '2018-06-09 20:15:00'),
(3, 'React: Controlled Inputs', 'react-controlled-inputs', '<p><span style=\"color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Ham cillum tenderloin picanha. Occaecat magna laboris, meatball esse boudin id sirloin biltong mollit turducken non deserunt picanha ad. Duis tenderloin corned beef cupidatat esse venison t-bone capicola. Turkey corned beef occaecat voluptate ex flank salami in nulla alcatra cupim tenderloin sunt.</span></p>\r\n<ul>\r\n<li><span style=\"color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Point 1</span></li>\r\n<li><span style=\"color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Point 2</span></li>\r\n<li><span style=\"color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Point 3</span></li>\r\n</ul>', '<p>Bacon ipsum dolor amet ut short ribs capicola eiusmod, do duis ipsum ea tenderloin bresaola hamburger burgdoggen culpa cupidatat. Drumstick officia anim cupidatat commodo swine. Aliquip short loin nisi aliqua salami pariatur. Duis shankle non pork belly jowl bresaola brisket consectetur. Deserunt aliqua boudin cow mollit capicola pork chop et do turkey. Flank sausage anim beef.</p>\r\n<p>Sed picanha in ea kielbasa deserunt non doner reprehenderit ham fugiat dolore ground round ball tip. Filet mignon burgdoggen ribeye, mollit shank pork belly nostrud landjaeger eu ea incididunt minim tri-tip t-bone. Id salami pork belly, labore sirloin nulla consequat jerky pork loin boudin officia tenderloin ipsum. Tongue do enim anim pork chop, boudin occaecat eu aute.</p>\r\n<p>Quis laborum nostrud landjaeger flank ipsum est biltong. Veniam filet mignon officia prosciutto consectetur flank, proident pork loin in meatloaf ipsum venison aliqua tri-tip short ribs. Alcatra pastrami ea ut ipsum eiusmod t-bone veniam. Chuck est deserunt, t-bone jowl leberkas ham pastrami ham hock. Chuck bresaola enim, mollit magna incididunt swine brisket ground round. Bresaola pork chop turkey, tongue pig qui ut shank eiusmod.</p>\r\n<p>Beef ut frankfurter, aliqua dolore in ea. Spare ribs rump excepteur tempor, beef in anim swine pig shoulder. Kielbasa ham capicola leberkas sed nulla elit. Shankle pastrami elit aute meatloaf flank dolore turkey ea. Veniam dolore pig, ex sirloin filet mignon bresaola alcatra spare ribs non eu short ribs sint ullamco mollit. Culpa tri-tip shoulder ex shankle est ball tip laborum sirloin excepteur fatback bresaola beef ribs labore. T-bone qui turducken, magna eiusmod aliqua fatback brisket pork loin dolore swine chicken veniam.</p>\r\n<p>Doner ut sed boudin, tenderloin chicken pork in. Corned beef aliquip prosciutto voluptate consequat biltong. Anim minim mollit short ribs picanha beef ribs. Occaecat meatball frankfurter deserunt ipsum. Hamburger shoulder quis alcatra irure venison enim andouille id prosciutto sint voluptate proident. Officia pancetta doner excepteur venison capicola culpa pork loin nulla qui. Rump adipisicing short ribs sunt boudin ipsum tenderloin pork belly officia sirloin cillum.</p>\r\n<p>Ham cillum tenderloin picanha. Occaecat magna laboris, meatball esse boudin id sirloin biltong mollit turducken non deserunt picanha ad. Duis tenderloin corned beef cupidatat esse venison t-bone capicola. Turkey corned beef occaecat voluptate ex flank salami in nulla alcatra cupim tenderloin sunt.</p>', 'React: Controller Inputs', '<p>Ham cillum tenderloin picanha. Occaecat magna laboris, meatball esse boudin id sirloin biltong mollit turducken non deserunt picanha ad. Duis tenderloin corned beef cupidatat esse venison t-bone capicola. Turkey corned beef occaecat voluptate ex flank salami in nulla alcatra cupim tenderloin sunt.</p>', 'PUBLISHED', 3, '2018-06-09 20:16:00', '2018-06-10 21:10:37', 0, 1, 'tutorials\\June2018\\YkRlPNUpmvSlWJDKVB0G.png', '2018-06-09 20:16:00'),
(4, 'React: JSX', 'react-jsx', '<p>This is the overview</p>\r\n<ul>\r\n<li>Topic 1</li>\r\n<li>Topic 2</li>\r\n<li>Topic 3</li>\r\n</ul>', '<p style=\"box-sizing: border-box; margin: 0px 0px 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; padding: 0px; vertical-align: baseline; color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Bacon ipsum dolor amet venison frankfurter cupim, buffalo salami meatball ham landjaeger pastrami leberkas jowl shank t-bone short ribs ground round. Burgdoggen turkey pancetta shankle tenderloin, cupim jerky ham beef ribs hamburger salami frankfurter. Ribeye pork belly jerky ball tip frankfurter, cupim beef andouille drumstick jowl biltong pig doner alcatra. Alcatra beef pork loin hamburger drumstick, picanha buffalo sausage sirloin. Rump prosciutto burgdoggen beef ribs cupim, cow salami.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; padding: 0px; vertical-align: baseline; color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Flank hamburger pork belly turkey jowl buffalo capicola, pancetta ball tip shankle shoulder pork pork chop chicken. Swine pork turkey tri-tip doner, rump corned beef ground round biltong venison chuck pig. Ball tip ribeye chicken, salami pancetta jerky shank filet mignon picanha chuck beef ribs ham hock. Andouille shank t-bone, picanha bacon pancetta chuck flank landjaeger turkey meatball.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; padding: 0px; vertical-align: baseline; color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Fatback capicola ground round pastrami sausage, porchetta short ribs landjaeger buffalo kevin beef ribs brisket. Picanha landjaeger meatball cow, flank meatloaf shank ribeye bacon pork belly pork loin boudin leberkas alcatra sausage. Rump cupim kielbasa strip steak tail prosciutto ribeye short ribs capicola. Picanha leberkas swine, drumstick pastrami short loin ham hock corned beef biltong buffalo pancetta venison filet mignon fatback. Pig corned beef boudin alcatra andouille burgdoggen capicola flank. Pork loin bacon meatball, swine sirloin tail spare ribs brisket beef ribs sausage ball tip pork. Swine shankle shank kevin filet mignon biltong ball tip buffalo ham hock andouille pancetta tail brisket prosciutto meatloaf.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; padding: 0px; vertical-align: baseline; color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Alcatra shankle doner corned beef biltong strip steak sirloin turkey jowl rump flank t-bone pig cow. Leberkas beef chicken, rump meatball strip steak pastrami swine tri-tip ham hock shank pork belly. Meatball short ribs flank t-bone swine filet mignon biltong tri-tip. Pig sirloin swine salami ribeye prosciutto brisket. Hamburger pork picanha ground round shoulder beef alcatra meatloaf chuck tail pork chop beef ribs. Pancetta beef ribs tongue, picanha tenderloin sausage hamburger andouille frankfurter turducken drumstick short loin. Bacon porchetta tri-tip cow meatball kevin alcatra.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; padding: 0px; vertical-align: baseline; color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Ribeye beef jowl meatloaf chicken pork belly, cupim swine fatback. Strip steak chicken pork chop tenderloin, sausage shoulder alcatra biltong turkey ball tip ground round pork. Ball tip hamburger frankfurter brisket burgdoggen pancetta shank kielbasa landjaeger jerky shoulder bacon tongue. Hamburger picanha bresaola sausage kevin swine, shoulder flank pork loin turkey frankfurter tri-tip salami capicola.</p>', 'React: JSX', '<p style=\"box-sizing: border-box; margin: 0px 0px 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; padding: 0px; vertical-align: baseline; color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Bacon ipsum dolor amet venison frankfurter cupim, buffalo salami meatball ham landjaeger pastrami leberkas jowl shank t-bone short ribs ground round. Burgdoggen turkey pancetta shankle tenderloin, cupim jerky ham beef ribs hamburger salami frankfurter. Ribeye pork belly jerky ball tip frankfurter, cupim beef andouille drumstick jowl biltong pig doner alcatra. Alcatra beef pork loin hamburger drumstick, picanha buffalo sausage sirloin. Rump prosciutto burgdoggen beef ribs cupim, cow salami.</p>', 'PUBLISHED', 3, '2018-06-10 06:40:00', '2018-06-10 21:28:21', 0, NULL, 'tutorials\\June2018\\J77y5C4DWxdHDU1JZQsJ.png', '2018-06-10 06:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `tutorial_category`
--

CREATE TABLE `tutorial_category` (
  `tutorial_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tutorial_category`
--

INSERT INTO `tutorial_category` (`tutorial_id`, `category_id`) VALUES
(1, 3),
(2, 3),
(3, 3),
(4, 3);

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
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$G51N3yLehQPAjdBYSFwmP.tZ2EkE5F8dswB/EaKsYneHGxqnKEX0u', 'V0smCUTkWjGZsxayx3MPQseA5VCibLwo6ZuuGrupGTpt7hAXfXQ4wHqNtZhS', NULL, '2018-06-05 06:46:25', '2018-06-05 06:46:25'),
(3, 3, 'Scottie Walsh', 'swalsh@email.com', 'users\\June2018\\RnaONGgzd4HdLbG0GtCM.jpg', '$2y$10$bMUmv/nR0b7GTwZlOSu/PuV.z81bj.h41X1PVzDe3xlP/2piC9Fmu', 'iJuQVVoU6zmVjXMNq60ZCymY6PU8MXOguIKMdvqP3CvI0zpmlUX99Le2t0Zs', '{\"locale\":\"en\"}', '2018-06-08 06:07:28', '2018-06-08 06:16:49'),
(4, 3, 'Katelyn Mayer', 'kmayer@gmail.com', 'users\\June2018\\ERkI2O0caeVv1pGs4A6E.png', '$2y$10$gKjbqI3ClRXq/acdtICMf.JsUTWbt.l76KkbLLltgWAcWtZrQd0kC', NULL, '{\"locale\":\"en\"}', '2018-06-08 06:17:51', '2018-06-08 06:17:51'),
(5, 2, 'Jarret Daugherty', 'pmarks@example.net', 'users/default.png', '$2y$10$ouz/gIisk3bEaL4N7Jpmcul9KXkyOjCeKouMf.DVeXePF8ncS5322', '3RTgdtouaHISI2qbONOpIeDUpqEUuxRSZCEccJQ8TTcpUlnCY73ZudmQMHK4', NULL, '2018-06-16 21:39:35', '2018-06-16 21:39:35'),
(6, 3, 'Virginie Kulas', 'bergnaum.bettie@example.com', 'users/default.png', '$2y$10$VYxIyI2fbd1NyKEuBCPLwe.7q.weonwuJUshTZPPP03.iq/O/2rL.', 'olOj80c0Qbjket5Tf3wKA6KZWQsW9Wpx5NPSCfzwtb3fg5Rv25eEcSGYimYt', NULL, '2018-06-16 21:39:35', '2018-06-16 21:39:35'),
(7, 3, 'Drake Monahan', 'eleonore.connelly@example.com', 'users/default.png', '$2y$10$FpahEJRovPlDE54YEYiW2Oshk7B/pD.z9oqj/0wEyaOXD232NVeme', 'TPrhddFeBLhSFV2EJNtH1UvXpsbNZeIbp7DeeB4uxBvD5N0YMKeVxNJh8VOC', NULL, '2018-06-16 21:39:35', '2018-06-16 21:39:35'),
(10, 2, 'Talia Bauch', 'hilll.sarai@example.org', 'users/default.png', '$2y$10$Ozopq3zHPS5FQ7AlDYs0BOyEoDLSMyTnmzSy3ECEYz0Vk3DH9T2He', 'MYWj8qq9urzRH3or3E6Hpd7KP2piMXBTMqk2A05y0apVct6JBqn7pNaNG8SQ', NULL, '2018-06-16 21:39:35', '2018-06-16 21:39:35'),
(12, 3, 'Virginie Von', 'bailee50@example.net', 'users/default.png', '$2y$10$zxsOwWbxx3lgf9QwE6NgXuXdXY1vLfblndl.w3zo5jYnOk03lpk5S', 'rRI2cwdnWhLug8dDvYqql5DJPSjdJxPBo1lSho167l4ZEMMQStSXCHqlPZCL', NULL, '2018-06-16 21:39:35', '2018-06-16 21:39:35'),
(13, 3, 'Maymie Stiedemann', 'frath@example.com', 'users/default.png', '$2y$10$lOJlinTd0C6HrIrgem0h5OLIL16Q4VfYjOkzifQ3RHdTCqSBZF54q', '7ywRtphYSLUgaNcil86kMBOwKSkEaAs5ZbOUriu1KygjnXhYGLEey94uLWlH', NULL, '2018-06-16 21:39:35', '2018-06-16 21:39:35'),
(15, 2, 'Deja Gottlieb', 'wuckert.hardy@example.org', 'users/default.png', '$2y$10$7TPCLDZG7EMf44oFqtBMSOv.51z7F4/eHqYQv9eFiXEEiq48ch5mm', 'fELGoeqGLcSqpR4br4EuGikbyV1zqW6ZdylyA3hZnHKYHaU5uvtJp7UUYxJx', NULL, '2018-06-16 21:39:35', '2018-06-16 21:39:35'),
(17, 3, 'Jennyfer Mitchell', 'conroy.toney@example.com', 'users/default.png', '$2y$10$uM/9K0otJ0bf7Y4lAXI5LeUtrNlIti8Nxay9ShAAigcmNm9hchUo.', 'ZVmyMulPpBCwdQakmljyKuwlWxurikNxWBaVzQdq7VHTLcpbepOlslvIVr4R', NULL, '2018-06-16 21:39:35', '2018-06-16 21:39:35'),
(18, 2, 'Marina Padberg', 'kfeeney@example.net', 'users/default.png', '$2y$10$/KfrwIwtWqSoz/a4pFMvRuYP2yct8UsuAb2W86Z0euprdA52cVDGy', 'VcrDWv3UxgxPQMzqGMuBcd1OhXTwCRmwSXwadeX46tIoX0uv9ozlyrsXTQ9L', NULL, '2018-06-16 21:39:35', '2018-06-16 21:39:35'),
(21, 3, 'Laron Nicolas', 'maxine11@example.org', 'users/default.png', '$2y$10$jAvBIgBB/yT5.UTBfTU/ZORUGiZGLOm3m2AAtMD9M5b06ZBJaufj6', '4Dcn57D1UPiVFlE1GZIzbqPJv22F0WCVpFd7eKSAH70hFSu9P3wwgohXSwLt', NULL, '2018-06-16 21:39:35', '2018-06-16 21:39:35'),
(22, 2, 'Annamarie Marks', 'dkiehn@example.org', 'users/default.png', '$2y$10$sjGt80RmSxzIPiLKegJAxOj9iMTb/RLh9Br1/QZnKlfUia0bbgmMq', 'xasoym4iRWgF00vx1j0cukLHnFJwp6zHDnP93sxz0ofzUGd1Xhj024IStziu', NULL, '2018-06-16 21:39:35', '2018-06-16 21:39:35'),
(25, 2, 'Mona Reynolds', 'jkautzer@example.org', 'users/default.png', '$2y$10$P..M43OOJm4VCVxe3r4IaeQ4sLmHR/qb8zXTvy4qtltd/ur6b28oW', 'a9zfxPw7CTjY7tAXtpr00lHccjQ78DsYFv6pIB8a3zlS0bM4DYuxkbhduFd6', NULL, '2018-06-16 21:39:35', '2018-06-16 21:39:35'),
(28, 3, 'Cletus Miller', 'xmckenzie@example.net', 'users/default.png', '$2y$10$AwFM2eA1Ry2K86VhfIRyTeyAaTPk5joMu1yqgjXV6G41D1rSSAunC', 'LvIfWjGayVCawPEdkQ18KlOlsBEB9vt3df3iQ9XTfUDHqmBkihOL1IVcLhgM', NULL, '2018-06-16 21:39:35', '2018-06-16 21:39:35'),
(30, 2, 'Kaylah Satterfield', 'zgoyette@example.com', 'users/default.png', '$2y$10$ezIOgeEeQzlHVkcrW8/WF.qx94DvJ1h4LlMgsj00h4.MmmsjpWPJO', 'WfOjgcWrmj6iBnZ9yGQs9LzvO48v3dQWnTiFnPq4aVeJf7CEC0k0ht3Apdap', NULL, '2018-06-16 21:39:35', '2018-06-16 21:39:35'),
(31, 2, 'Edward Gibson', 'bechtelar.janick@example.net', 'users/default.png', '$2y$10$v69LDEmU9ofxb74iti31JeGcP25APmhjepsNHkrPfQByZgSxv1K96', 'oPiAfW9xZwJE8uPEZHaPo9mnib6TnPQ3kDAifo7jTae9RTklVyvCvnqwPUGP', NULL, '2018-06-16 21:39:35', '2018-06-16 21:39:35'),
(32, 2, 'Santina Schoen', 'teagan73@example.org', 'users/default.png', '$2y$10$NfFG/80cnax49wCwrn6oI.fggxbZNdAERoCUsQQan0i87ir/7GORS', 'SiP1hriv1LbeE2LicuKaPpqXhE4Hb4SUGZOTODq5ejSqfAfjyQfvB4KWAqMg', NULL, '2018-06-16 21:39:35', '2018-06-16 21:39:35'),
(33, 3, 'Thelma Buckridge', 'cordie.rath@example.com', 'users/default.png', '$2y$10$wZ19FEH3ggFO07pgshu9UeM7CprXFfQR1Jw2qvP8Nf9DgR6aKu.3O', 'IB7rrk18KpBaeiqKT9CLaNK4RHBq6Dyb7vqanF4BkFAWY2l7z7BPAqV6y07T', '{\"locale\":\"en\"}', '2018-06-16 21:39:35', '2018-06-16 22:49:52'),
(34, 3, 'Dayana Bins', 'heidenreich.manley@example.net', 'users/default.png', '$2y$10$udC.w/Z2AaqW5WvEdG/W8.jkxxoZxbwkyc7fKdSkglAQPMshECadK', '7ZdVfOxGrbLJEDQi4wogEkVXx3bjG5I4VcDiHwkp6MWEIZH9577bY9FE2Z3V', NULL, '2018-06-16 21:39:35', '2018-06-16 21:39:35'),
(36, 3, 'Loraine Bergstrom', 'shirley.gibson@example.net', 'users/default.png', '$2y$10$AkEE1S1lG5beL13iQTXGiuZH3wV5Gg3I4HrZFe0id0SYU5RbUb0tS', 'pQ5uk1Wh5n51O74Fpo7R0rH6h7PFPseN6BU0DyEGLn7OMEOGGcvyx4UirXVv', NULL, '2018-06-16 21:39:35', '2018-06-16 21:39:35'),
(38, 2, 'Gabe Rice', 'uroberts@example.org', 'users/default.png', '$2y$10$5xcwT7PjyIcbaR.HeNTaCOsbXc4.Phf2SleJJ2Ycck9Dw/uZWD2zK', '5jKNISWFhdPGnrpc0fmtOFCDhRQQ8JHkXZ7ll4YPIcoUfWIdQmZaurNXGSQP', NULL, '2018-06-16 21:39:35', '2018-06-16 21:39:35'),
(39, 2, 'Dock Pollich', 'batz.maeve@example.com', 'users/default.png', '$2y$10$/RablTb7s8oi3gnb7iir9OmJzjTO3XVtFggKNtPRz3UmSiM9eV6ze', 'GKB5DZdAXaEok29P3vTS5CNeIjEoWAcvBe5yL2t3eYS168iqDbCDBKBghDO3', NULL, '2018-06-16 21:39:35', '2018-06-16 21:39:35'),
(40, 3, 'Francisca Becker', 'jaiden.oconner@example.com', 'users/default.png', '$2y$10$t0Qu/7CnFk/mB.2qVxYNre9DTKouDyrbN/HtmZRL90QC8sgdCOpiO', 'XhkJmzDIfBbABhvyATsvJMNafDpfqcSzi9ZCO0QpEkEjPXQRxOEnsO6puw9a', NULL, '2018-06-16 21:39:35', '2018-06-16 21:39:35'),
(43, 3, 'Kylie Gislason', 'coty45@example.net', 'users/default.png', '$2y$10$PQoAjovs12.UPnky8ptgK.KgOY7D4ARYi6CX/gHX5Q4NVk8EgHw8K', 'mmu2yxDnQnkz6Tlfj05KqTUI12F84zi1VSk8JmPBbTncax87C3S2hTl1VfFU', NULL, '2018-06-16 21:39:35', '2018-06-16 21:39:35'),
(45, 2, 'Andre Corwin', 'mueller.anita@example.org', 'users/default.png', '$2y$10$I0vQVcyXmm2.mLUrdb7CdOv.z34OllD6REUdrhszAVLi2RgVISXLO', 'vTRjuWnE7khO6oO2eHkBWaHhlu6v9PCB1jZr8tSShkf2sbnaNXLGilXwQql6', NULL, '2018-06-16 21:39:35', '2018-06-16 21:39:35'),
(49, 3, 'Quincy Lang', 'hailey.kozey@example.com', 'users/default.png', '$2y$10$kTzv7oCtAaPlS8VHKKYXK.hGnDX8MC34.09G0a7pWgNo7y9G0hQma', 'bp589jP2EDQ4H2TBoCAwsF5b4EXWef3GgaxmQcu8XtSmYHAytffBbtxipS5d', NULL, '2018-06-16 21:39:35', '2018-06-16 21:39:35'),
(51, 3, 'Vallie Trantow', 'deckow.dashawn@example.net', 'users/default.png', '$2y$10$3zIOFuxHyqZOZrDHGM2OmOYOlAhINgwwRq0H2YH1xz2V3zHkFsbVq', 'S7LE3367PZVJR7EsIRJUZUxYIWf5Q5SMC9myAOakxsRSeis0C30IO6QZIzd3', NULL, '2018-06-16 21:39:35', '2018-06-16 21:39:35'),
(54, 3, 'Shanny Runolfsdottir', 'kulas.sterling@example.net', 'users/default.png', '$2y$10$unmQaLEZPfoIXGZYPIsjie5Bi1VCwQWa4xyc9pPIyptXmO54RWu0W', 'bR9uLfMKeMrfGv2YaoRk40dazy77aXr8JEwEMRdYHs0eMhMatqxu3bqNsmlE', NULL, '2018-06-16 21:39:35', '2018-06-16 21:39:35');

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
-- Indexes for table `guides`
--
ALTER TABLE `guides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guide_category`
--
ALTER TABLE `guide_category`
  ADD PRIMARY KEY (`guide_id`);

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
-- Indexes for table `tutorials`
--
ALTER TABLE `tutorials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutorial_category`
--
ALTER TABLE `tutorial_category`
  ADD KEY `tutorial_category_category_id_` (`category_id`);

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
-- AUTO_INCREMENT for table `guides`
--
ALTER TABLE `guides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

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
-- AUTO_INCREMENT for table `tutorials`
--
ALTER TABLE `tutorials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

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
