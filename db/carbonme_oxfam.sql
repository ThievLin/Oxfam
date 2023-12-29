-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 15, 2023 at 09:59 AM
-- Server version: 10.5.23-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carbonme_oxfam`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `link_fb` text DEFAULT NULL,
  `link_yt` text DEFAULT NULL,
  `style` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ads_images`
--

CREATE TABLE `ads_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(300) DEFAULT NULL,
  `link` varchar(300) NOT NULL,
  `ads_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `language` varchar(220) DEFAULT NULL,
  `phone` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `category_type` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `num_of_staff` varchar(191) DEFAULT NULL,
  `block` varchar(60) DEFAULT NULL,
  `google_embeded` text DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `unpublish_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `parent_id`, `name`, `language`, `phone`, `email`, `address`, `img`, `category_type`, `user_id`, `description`, `status`, `num_of_staff`, `block`, `google_embeded`, `deleted`, `publish_date`, `unpublish_date`, `created_at`, `updated_at`) VALUES
(1, NULL, 'slidebanner', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'slidebanner', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-11 17:00:00', '2023-10-16 17:00:00'),
(2, NULL, 'welcome_sec', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'welcome_sec', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-11 17:00:00', '2023-10-11 17:00:00'),
(3, NULL, 'welcome_intro', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'welcome_intro', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-11 17:00:00', '2023-10-11 17:00:00'),
(4, NULL, 'welcome_banner', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'welcome_banner', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-11 17:00:00', '2023-10-11 17:00:00'),
(5, NULL, 'inner_banner', NULL, NULL, NULL, NULL, NULL, 'category', 1, '<p>hello</p>', 1, NULL, 'inner_banner', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-11 17:00:00', '2023-10-16 17:00:00'),
(6, NULL, 'Map', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'home', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-16 17:00:00', '2023-10-28 17:00:00'),
(7, NULL, 'About', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'about', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-16 17:00:00', '2023-10-16 17:00:00'),
(8, NULL, 'Our CPA', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'ourcpa', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-16 17:00:00', '2023-10-16 17:00:00'),
(9, NULL, 'Our CF', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'ourcf', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-16 17:00:00', '2023-10-16 17:00:00'),
(10, NULL, 'Action', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'action', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-16 17:00:00', '2023-10-16 17:00:00'),
(11, NULL, 'Stakeholder', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'stakeholder', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-16 17:00:00', '2023-10-16 17:00:00'),
(12, NULL, 'Contact', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'contact', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-16 17:00:00', '2023-10-16 17:00:00'),
(13, NULL, 'Our Mission & Vision', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'mission', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-16 17:00:00', '2023-10-16 17:00:00'),
(14, 7, 'Project Overview', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'overview', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-16 17:00:00', '2023-10-16 17:00:00'),
(15, 7, 'Get Involved', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'getinvolved', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-16 17:00:00', '2023-10-16 17:00:00'),
(16, 8, 'Aboun Lue', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'abounlue', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-16 17:00:00', '2023-10-16 17:00:00'),
(17, 8, 'O\'nglav', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'nglav', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-16 17:00:00', '2023-10-16 17:00:00'),
(18, 8, 'Yuoknamram', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'yuoknamram', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-16 17:00:00', '2023-10-16 17:00:00'),
(19, 8, 'Cham Marek', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'chammarek', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-16 17:00:00', '2023-10-16 17:00:00'),
(20, 9, 'Bos Lapaek', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'lapaek', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-16 17:00:00', '2023-10-16 17:00:00'),
(21, 9, 'Bos Yaynheb', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'yaynheb', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-16 17:00:00', '2023-10-16 17:00:00'),
(22, 9, 'Kon Seangveal', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'seangveal', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-16 17:00:00', '2023-10-16 17:00:00'),
(23, 9, 'Ou Angkobthom', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'angkobthom', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-16 17:00:00', '2023-10-16 17:00:00'),
(24, 9, 'Ou kladaek', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'kladaek', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-16 17:00:00', '2023-10-16 17:00:00'),
(25, 9, 'Ou Pongrong', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'pongrong', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-16 17:00:00', '2023-10-16 17:00:00'),
(26, 9, 'Ou Som', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'ousom', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-16 17:00:00', '2023-10-16 17:00:00'),
(27, 9, 'Tropeang Kbalkmoch', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'kbalkmoch', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-16 17:00:00', '2023-10-16 17:00:00'),
(28, NULL, 'Call Action', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'callaction', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-24 17:00:00', '2023-10-24 17:00:00'),
(29, NULL, 'parallax', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'parallax', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-24 17:00:00', '2023-10-24 17:00:00'),
(30, NULL, 'about-oxfam', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'about-oxfam', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-25 17:00:00', '2023-10-25 17:00:00'),
(31, NULL, 'about-container', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'about-container', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-25 17:00:00', '2023-10-25 17:00:00'),
(32, NULL, 'Getintouch', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'getintouch', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-25 17:00:00', '2023-10-25 17:00:00'),
(33, NULL, 'contact-us-cat', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'contact-us-cat', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-25 17:00:00', '2023-10-25 17:00:00'),
(34, NULL, 'about-addition', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'about-addition', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-26 17:00:00', '2023-10-26 17:00:00'),
(35, NULL, 'Abounlue-first', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'abounlue-first', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-27 17:00:00', '2023-10-27 17:00:00'),
(37, NULL, 'cpaplan', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'cpaplan', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-29 17:00:00', '2023-10-29 17:00:00'),
(38, NULL, 'address', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'address', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-29 17:00:00', '2023-10-29 17:00:00'),
(39, NULL, 'Include', NULL, NULL, NULL, NULL, NULL, 'category', 1, NULL, 1, NULL, 'include', NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-30 17:00:00', '2023-10-30 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cat_galleries`
--

CREATE TABLE `cat_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `footers`
--

CREATE TABLE `footers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `link` varchar(250) NOT NULL,
  `address` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `unpublish_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footers`
--

INSERT INTO `footers` (`id`, `title`, `link`, `address`, `status`, `publish_date`, `unpublish_date`, `created_at`, `updated_at`) VALUES
(1, 'Protected Area Community', 'ourcpa', NULL, 1, NULL, NULL, '2023-10-30 17:00:00', '2023-10-30 20:53:51'),
(2, 'Community Forest', 'ourcf', NULL, 1, NULL, NULL, '2023-11-03 17:00:00', '2023-11-04 08:03:50');

-- --------------------------------------------------------

--
-- Table structure for table `footer_pages`
--

CREATE TABLE `footer_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `footer_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_pages`
--

INSERT INTO `footer_pages` (`id`, `page_id`, `footer_id`, `created_at`, `updated_at`) VALUES
(77, 14, 1, NULL, NULL),
(76, 13, 1, NULL, NULL),
(75, 12, 1, NULL, NULL),
(74, 11, 1, NULL, NULL),
(73, 3, 1, NULL, NULL),
(103, 19, 2, NULL, NULL),
(102, 18, 2, NULL, NULL),
(101, 17, 2, NULL, NULL),
(100, 16, 2, NULL, NULL),
(99, 15, 2, NULL, NULL),
(98, 4, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `galleries_image`
--

CREATE TABLE `galleries_image` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(250) NOT NULL,
  `link` varchar(200) DEFAULT NULL,
  `gallery_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `feature_image` varchar(220) DEFAULT NULL,
  `language` varchar(220) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `category_gallery_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `language` varchar(220) DEFAULT NULL,
  `menu_type_id` int(11) DEFAULT NULL,
  `ordering` double(10,2) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `modul_class` varchar(255) DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `unpublish_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `link`, `language`, `menu_type_id`, `ordering`, `image`, `status`, `user_id`, `modul_class`, `deleted`, `publish_date`, `unpublish_date`, `created_at`, `updated_at`) VALUES
(1, 'Home', 0, 'home', NULL, NULL, 0.00, NULL, 1, 1, 'fa fa-home', 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '2023-10-11 17:00:00', '2023-10-28 17:00:00'),
(2, 'About', 0, 'about', NULL, NULL, 1.00, NULL, 1, 1, 'fa fa-book', 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '2023-10-11 17:00:00', '2023-10-28 17:00:00'),
(3, 'Our CPA', 0, 'ourcpa', NULL, NULL, 2.00, NULL, 1, 1, 'fa fa-solid fa-tree', 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '2023-10-11 17:00:00', '2023-10-29 17:00:00'),
(4, 'Our CF', 0, 'ourcf', NULL, NULL, 3.00, NULL, 1, 1, 'fa fa-solid fa-tree, fa fa-solid fa-tree', 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '2023-10-11 17:00:00', '2023-10-28 17:00:00'),
(5, 'Action', 0, 'action', NULL, NULL, 4.00, NULL, 1, 1, 'fa fa-users', 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '2023-10-16 17:00:00', '2023-10-29 17:00:00'),
(6, 'Stakeholder', 0, 'stakeholder', NULL, NULL, 5.00, NULL, 1, 1, 'fa fa-table', 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '2023-10-16 17:00:00', '2023-10-29 17:00:00'),
(7, 'Contact', 0, 'contact', NULL, NULL, 7.00, NULL, 1, 1, 'fa fa-envelope', 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '2023-10-16 17:00:00', '2023-11-09 16:00:00'),
(8, 'Our Mission & Vision', 2, 'mission', NULL, NULL, 8.00, NULL, 1, 1, 'fa fa-eye', 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '2023-10-16 17:00:00', '2023-10-28 17:00:00'),
(9, 'Project Overview', 2, 'overview', NULL, NULL, 8.00, NULL, 1, 1, 'fa fa-line-chart', 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '2023-10-16 17:00:00', '2023-10-29 17:00:00'),
(10, 'Get Involved', 2, 'getinvolved', NULL, NULL, 9.00, NULL, 1, 1, 'fa fa-share', 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '2023-10-16 17:00:00', '2023-10-29 17:00:00'),
(11, 'Aboun Lue', 3, 'abounlue', NULL, NULL, 10.00, NULL, 1, 1, 'fa fa-pagelines', 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '2023-10-16 17:00:00', '2023-10-29 17:00:00'),
(12, 'O\'nglav', 3, 'nglav', NULL, NULL, 11.00, NULL, 1, 1, 'fa fa-pagelines', 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '2023-10-16 17:00:00', '2023-10-29 17:00:00'),
(13, 'Yuoknamram', 3, 'yuoknamram', NULL, NULL, 12.00, NULL, 1, 1, 'fa fa-pagelines', 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '2023-10-16 17:00:00', '2023-10-29 17:00:00'),
(14, 'Cham Marek', 3, 'chammarek', NULL, NULL, 14.00, NULL, 1, 1, 'fa fa-pagelines', 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '2023-10-16 17:00:00', '2023-11-03 17:00:00'),
(15, 'Bos Lapaek', 4, 'lapaek', NULL, NULL, 13.00, NULL, 1, 1, 'fa fa-leaf', 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '2023-10-16 17:00:00', '2023-11-02 17:00:00'),
(16, 'Bos Yaynheb', 4, 'yaynheb', NULL, NULL, 15.00, NULL, 1, 1, 'fa fa-leaf', 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '2023-10-16 17:00:00', '2023-11-03 17:00:00'),
(17, 'Kon Seangveal', 4, 'seangveal', NULL, NULL, 16.00, NULL, 1, 1, 'fa fa-leaf', 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '2023-10-16 17:00:00', '2023-11-03 17:00:00'),
(18, 'Ou Angkobthom', 4, 'angkobthom', NULL, NULL, 18.00, NULL, 1, 1, 'fa fa-leaf', 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '2023-10-16 17:00:00', '2023-11-03 17:00:00'),
(19, 'Ou kladaek', 4, 'kladaek', NULL, NULL, 19.00, NULL, 1, 1, 'fa fa-leaf', 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '2023-10-16 17:00:00', '2023-11-03 17:00:00'),
(20, 'Ou Pongrong', 4, 'pongrong', NULL, NULL, 20.00, NULL, 1, 1, 'fa fa-leaf', 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '2023-10-16 17:00:00', '2023-11-03 17:00:00'),
(21, 'Ou Som', 4, 'ousom', NULL, NULL, 21.00, NULL, 1, 1, 'fa fa-leaf', 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '2023-10-16 17:00:00', '2023-11-03 17:00:00'),
(22, 'Tropeang Kbalkmoch', 4, 'kbalkmoch', NULL, NULL, 22.00, NULL, 1, 1, 'fa fa-leaf', 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '2023-10-16 17:00:00', '2023-11-03 17:00:00'),
(24, 'Hello', 0, 'hello', NULL, NULL, 24.00, NULL, 0, 1, NULL, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '2023-11-09 16:00:00', '2023-11-09 16:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `menu_posts`
--

CREATE TABLE `menu_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_posts`
--

INSERT INTO `menu_posts` (`id`, `menu_id`, `post_id`, `created_at`, `updated_at`) VALUES
(124, 1, 1, NULL, NULL),
(139, 2, 2, NULL, NULL),
(152, 3, 3, NULL, NULL),
(153, 4, 4, NULL, NULL),
(143, 5, 5, NULL, NULL),
(142, 6, 6, NULL, NULL),
(141, 7, 7, NULL, NULL),
(91, 8, 8, NULL, NULL),
(96, 9, 9, NULL, NULL),
(97, 10, 10, NULL, NULL),
(158, 11, 11, NULL, NULL),
(159, 12, 12, NULL, NULL),
(160, 13, 13, NULL, NULL),
(161, 14, 14, NULL, NULL),
(162, 15, 15, NULL, NULL),
(163, 16, 16, NULL, NULL),
(164, 17, 17, NULL, NULL),
(165, 18, 18, NULL, NULL),
(166, 19, 19, NULL, NULL),
(167, 20, 20, NULL, NULL),
(168, 21, 21, NULL, NULL),
(169, 22, 22, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_types`
--

CREATE TABLE `menu_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(87, '2014_10_12_000000_create_users_table', 1),
(88, '2014_10_12_100000_create_password_resets_table', 1),
(89, '2019_08_19_000000_create_failed_jobs_table', 1),
(90, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(91, '2021_12_06_034448_create_ads_table', 1),
(92, '2021_12_06_034525_create_ads_images_table', 1),
(93, '2021_12_06_034559_create_category_table', 1),
(94, '2021_12_06_034639_create_cat_galleries_table', 1),
(95, '2021_12_06_034749_create_footers_table', 1),
(96, '2021_12_06_034907_create_footer_pages_table', 1),
(97, '2021_12_06_035003_create_galleries_image_table', 1),
(98, '2021_12_06_035032_create_gallery_table', 1),
(99, '2021_12_06_035214_create_menus_table', 1),
(100, '2021_12_06_035259_create_menu_posts_table', 1),
(101, '2021_12_06_035333_create_menu_types_table', 1),
(102, '2021_12_06_035424_create_page_categories_table', 1),
(103, '2021_12_06_035456_create_posts_table', 1),
(104, '2021_12_06_035526_create_post_galleries_table', 1),
(105, '2021_12_06_035555_create_post_image_table', 1),
(106, '2021_12_06_035656_create_post_slide_table', 1),
(107, '2021_12_06_035725_create_roles_table', 1),
(108, '2021_12_06_035753_create_settings_table', 1),
(109, '2021_12_06_035831_create_slides_table', 1),
(110, '2021_12_06_035901_create_slide_image_table', 1),
(111, '2021_12_06_035943_create_slide_type_table', 1),
(112, '2021_12_06_040013_create_socials_table', 1),
(113, '2021_12_06_040130_create_user_roles_table', 1),
(114, '2021_12_06_040227_create_widget_table', 1),
(115, '2021_12_06_070549_create_post_categories_table', 1),
(116, '2021_12_06_081013_create_languages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `page_categories`
--

CREATE TABLE `page_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_categories`
--

INSERT INTO `page_categories` (`id`, `page_id`, `categorie_id`, `company_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(1, 23, 2, NULL, NULL, NULL, NULL),
(2, 24, 2, NULL, NULL, NULL, NULL),
(482, 25, 0, NULL, NULL, NULL, NULL),
(164, 26, 3, NULL, NULL, NULL, NULL),
(166, 27, 3, NULL, NULL, NULL, NULL),
(6, 28, 4, NULL, NULL, NULL, NULL),
(512, 29, 0, NULL, NULL, NULL, NULL),
(395, 30, 0, NULL, NULL, NULL, NULL),
(175, 33, 0, NULL, NULL, NULL, NULL),
(427, 32, 0, NULL, NULL, NULL, NULL),
(174, 33, 31, NULL, NULL, NULL, NULL),
(425, 34, 0, NULL, NULL, NULL, NULL),
(159, 35, 0, NULL, NULL, NULL, NULL),
(158, 35, 8, NULL, NULL, NULL, NULL),
(161, 36, 0, NULL, NULL, NULL, NULL),
(160, 36, 8, NULL, NULL, NULL, NULL),
(451, 37, 0, NULL, NULL, NULL, NULL),
(26, 38, 32, NULL, NULL, NULL, NULL),
(465, 39, 0, NULL, NULL, NULL, NULL),
(464, 39, 9, NULL, NULL, NULL, NULL),
(453, 82, 0, NULL, NULL, NULL, NULL),
(463, 81, 0, NULL, NULL, NULL, NULL),
(462, 81, 9, NULL, NULL, NULL, NULL),
(455, 86, 0, NULL, NULL, NULL, NULL),
(459, 84, 0, NULL, NULL, NULL, NULL),
(467, 80, 0, NULL, NULL, NULL, NULL),
(457, 85, 0, NULL, NULL, NULL, NULL),
(461, 83, 0, NULL, NULL, NULL, NULL),
(458, 84, 9, NULL, NULL, NULL, NULL),
(417, 47, 0, NULL, NULL, NULL, NULL),
(416, 47, 10, NULL, NULL, NULL, NULL),
(421, 48, 0, NULL, NULL, NULL, NULL),
(420, 48, 11, NULL, NULL, NULL, NULL),
(76, 50, 13, NULL, NULL, NULL, NULL),
(77, 51, 13, NULL, NULL, NULL, NULL),
(78, 52, 13, NULL, NULL, NULL, NULL),
(511, 29, 28, NULL, NULL, NULL, NULL),
(101, 53, 0, NULL, NULL, NULL, NULL),
(100, 53, 34, NULL, NULL, NULL, NULL),
(103, 54, 7, NULL, NULL, NULL, NULL),
(104, 54, 0, NULL, NULL, NULL, NULL),
(106, 55, 14, NULL, NULL, NULL, NULL),
(107, 55, 0, NULL, NULL, NULL, NULL),
(109, 56, 15, NULL, NULL, NULL, NULL),
(110, 56, 0, NULL, NULL, NULL, NULL),
(466, 80, 9, NULL, NULL, NULL, NULL),
(492, 58, 0, NULL, NULL, NULL, NULL),
(491, 58, 20, NULL, NULL, NULL, NULL),
(494, 59, 0, NULL, NULL, NULL, NULL),
(495, 60, 22, NULL, NULL, NULL, NULL),
(493, 59, 21, NULL, NULL, NULL, NULL),
(498, 61, 0, NULL, NULL, NULL, NULL),
(497, 61, 23, NULL, NULL, NULL, NULL),
(499, 62, 24, NULL, NULL, NULL, NULL),
(501, 63, 25, NULL, NULL, NULL, NULL),
(503, 64, 26, NULL, NULL, NULL, NULL),
(505, 65, 27, NULL, NULL, NULL, NULL),
(489, 66, 19, NULL, NULL, NULL, NULL),
(456, 85, 9, NULL, NULL, NULL, NULL),
(452, 82, 9, NULL, NULL, NULL, NULL),
(454, 86, 9, NULL, NULL, NULL, NULL),
(460, 83, 9, NULL, NULL, NULL, NULL),
(424, 34, 8, NULL, NULL, NULL, NULL),
(450, 37, 8, NULL, NULL, NULL, NULL),
(165, 26, 0, NULL, NULL, NULL, NULL),
(167, 27, 0, NULL, NULL, NULL, NULL),
(213, 67, 0, NULL, NULL, NULL, NULL),
(204, 68, 0, NULL, NULL, NULL, NULL),
(212, 67, 16, NULL, NULL, NULL, NULL),
(203, 68, 16, NULL, NULL, NULL, NULL),
(197, 69, 16, NULL, NULL, NULL, NULL),
(208, 70, 0, NULL, NULL, NULL, NULL),
(198, 69, 0, NULL, NULL, NULL, NULL),
(207, 70, 16, NULL, NULL, NULL, NULL),
(210, 71, 37, NULL, NULL, NULL, NULL),
(211, 71, 0, NULL, NULL, NULL, NULL),
(215, 72, 17, NULL, NULL, NULL, NULL),
(216, 72, 0, NULL, NULL, NULL, NULL),
(218, 73, 17, NULL, NULL, NULL, NULL),
(219, 73, 0, NULL, NULL, NULL, NULL),
(221, 74, 17, NULL, NULL, NULL, NULL),
(222, 74, 0, NULL, NULL, NULL, NULL),
(223, 75, 17, NULL, NULL, NULL, NULL),
(224, 76, 18, NULL, NULL, NULL, NULL),
(225, 77, 18, NULL, NULL, NULL, NULL),
(226, 78, 18, NULL, NULL, NULL, NULL),
(227, 79, 18, NULL, NULL, NULL, NULL),
(481, 25, 2, NULL, NULL, NULL, NULL),
(530, 87, 0, NULL, NULL, NULL, NULL),
(394, 30, 29, NULL, NULL, NULL, NULL),
(426, 32, 30, NULL, NULL, NULL, NULL),
(529, 87, 12, NULL, NULL, NULL, NULL),
(469, 88, 38, NULL, NULL, NULL, NULL),
(470, 88, 0, NULL, NULL, NULL, NULL),
(490, 66, 0, NULL, NULL, NULL, NULL),
(496, 60, 0, NULL, NULL, NULL, NULL),
(500, 62, 0, NULL, NULL, NULL, NULL),
(502, 63, 0, NULL, NULL, NULL, NULL),
(504, 64, 0, NULL, NULL, NULL, NULL),
(506, 65, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL,
  `action_title` varchar(220) DEFAULT '0',
  `show_image_feature` int(11) NOT NULL DEFAULT 0,
  `position` varchar(220) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `template` varchar(200) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `language` varchar(220) DEFAULT NULL,
  `link_download` varchar(400) DEFAULT NULL,
  `post_type` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `is_againt` int(11) DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL,
  `event_start_date` datetime DEFAULT NULL,
  `event_end_date` datetime DEFAULT NULL,
  `s_from_rang` double(8,2) DEFAULT NULL,
  `s_to_rang` double(8,2) DEFAULT NULL,
  `location_job` varchar(60) DEFAULT NULL,
  `job_type` varchar(60) DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `unpublish_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `action_title`, `show_image_feature`, `position`, `link`, `image`, `description`, `template`, `count`, `language`, `link_download`, `post_type`, `user_id`, `status`, `is_againt`, `deleted`, `event_start_date`, `event_end_date`, `s_from_rang`, `s_to_rang`, `location_job`, `job_type`, `publish_date`, `unpublish_date`, `created_at`, `updated_at`) VALUES
(1, 'Home', '0', 0, NULL, 'home', NULL, NULL, NULL, NULL, NULL, NULL, 'page', 1, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '2023-10-28 17:00:00', '2023-10-28 17:00:00'),
(2, 'About Us', '0', 0, NULL, 'about', NULL, NULL, NULL, NULL, NULL, NULL, 'page', 1, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-30 17:00:00', '2023-10-30 19:08:56'),
(3, 'All of Commubity Protected Area (CPA)', '0', 0, NULL, 'ourcpa', NULL, NULL, NULL, NULL, NULL, NULL, 'page', 1, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-11-03 17:00:00', '2023-11-04 08:07:03'),
(4, 'All of Community forest (CF)', '0', 0, NULL, 'ourcf', NULL, NULL, NULL, NULL, NULL, NULL, 'page', 1, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-11-03 17:00:00', '2023-11-04 08:07:46'),
(5, 'Our Action', '0', 0, NULL, 'action', NULL, NULL, NULL, NULL, NULL, NULL, 'page', 1, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-30 17:00:00', '2023-10-30 19:56:42'),
(6, 'Our Stakeholder', '0', 0, NULL, 'stakeholder', NULL, NULL, NULL, NULL, NULL, NULL, 'page', 1, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-30 17:00:00', '2023-10-30 19:56:18'),
(7, 'Contact', '0', 0, NULL, 'contact', NULL, NULL, NULL, NULL, NULL, NULL, 'page', 1, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '2023-10-30 17:00:00', '2023-11-09 16:00:00'),
(8, 'Our Mission & Vision', '0', 0, NULL, 'mission', NULL, NULL, NULL, NULL, NULL, NULL, 'page', 1, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '2023-10-25 17:00:00', '2023-10-28 17:00:00'),
(9, 'Project Overview', '0', 0, NULL, 'overview', NULL, NULL, NULL, NULL, NULL, NULL, 'page', 1, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '2023-10-26 17:00:00', '2023-10-29 17:00:00'),
(10, 'Get Involved', '0', 0, NULL, 'getinvolved', NULL, NULL, NULL, NULL, NULL, NULL, 'page', 1, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '2023-10-27 17:00:00', '2023-10-29 17:00:00'),
(11, 'Aboun Leu (CPA)', '0', 0, NULL, 'abounlue', NULL, NULL, NULL, NULL, NULL, NULL, 'page', 1, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-11-03 17:00:00', '2023-11-04 08:11:56'),
(12, 'O\'nglav (CPA)', '0', 0, NULL, 'nglav', NULL, NULL, NULL, NULL, NULL, NULL, 'page', 1, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-11-03 17:00:00', '2023-11-04 08:12:11'),
(13, 'Yuoknamram (CPA)', '0', 0, NULL, 'yuoknamram', NULL, NULL, NULL, NULL, NULL, NULL, 'page', 1, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-11-03 17:00:00', '2023-11-04 08:12:25'),
(14, 'Cham Marek (CPA)', '0', 0, NULL, 'chammarek', NULL, NULL, NULL, NULL, NULL, NULL, 'page', 1, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-11-03 17:00:00', '2023-11-04 08:12:39'),
(15, 'Bos Lapaek (CF)', '0', 0, NULL, 'lapaek', NULL, NULL, NULL, NULL, NULL, NULL, 'page', 1, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-11-03 17:00:00', '2023-11-04 08:13:04'),
(16, 'Bos Yaynheb (CF)', '0', 0, NULL, 'yaynheb', NULL, NULL, NULL, NULL, NULL, NULL, 'page', 1, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-11-03 17:00:00', '2023-11-04 08:13:12'),
(17, 'Kon Seangveal (CF)', '0', 0, NULL, 'seangveal', NULL, NULL, NULL, NULL, NULL, NULL, 'page', 1, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-11-03 17:00:00', '2023-11-04 08:13:21'),
(18, 'Ou Angkobthom (CF)', '0', 0, NULL, 'angkobthom', NULL, NULL, NULL, NULL, NULL, NULL, 'page', 1, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-11-03 17:00:00', '2023-11-04 08:13:30'),
(19, 'Ou Kladaek (CF)', '0', 0, NULL, 'kladaek', NULL, NULL, NULL, NULL, NULL, NULL, 'page', 1, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-11-03 17:00:00', '2023-11-04 08:13:49'),
(20, 'Ou Pongrong (CF)', '0', 0, NULL, 'pongrong', NULL, NULL, NULL, NULL, NULL, NULL, 'page', 1, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-11-03 17:00:00', '2023-11-04 08:14:03'),
(21, 'Ou Som (CF)', '0', 0, NULL, 'ousom', NULL, NULL, NULL, NULL, NULL, NULL, 'page', 1, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-11-03 17:00:00', '2023-11-04 08:14:11'),
(22, 'Tropeang Kbalkmoch (CF)', '0', 0, NULL, 'kbalkmoch', NULL, NULL, NULL, NULL, NULL, NULL, 'page', 1, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-11-03 17:00:00', '2023-11-04 08:14:19'),
(23, 'Welcome to Promotion Equitable Climate Actions in Cambodia Project', '1', 1, NULL, 'welcome-to-promotion-equitable-climate-actions-in-cambodia-project', '', '<p><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">The &quot;Promotion Equitable Climate Actions in Cambodia&quot; project is a project funded by Oxfam to reduce carbon emissions from agroforestry exploits in CFs and CPAs through the promotion of sustainable and alternative livelihoods and holding the RGC accountable to its Nationally Determined Contribution (NDC) commitment.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">The project is being implemented in three provinces in Cambodia: Kampong Thom, Battambang, and Pursat.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">The project will run for four years, from 2023 to 2027.</span></p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-24 17:00:00', '2023-10-24 17:00:00'),
(24, 'Climate change in Cambodia', '1', 1, NULL, 'climate-change-in-cambodia', 'climate.jpg', '<p><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">Cambodia is one of the world&#39;s most vulnerable countries to climate change. The country is already experiencing the effects of climate change, such as more frequent and severe floods, droughts, and storms. Climate change is expected to have a devastating impact on Cambodia, affecting its economy, agriculture, and infrastructure.</span></p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-24 17:00:00', '2023-10-24 17:00:00'),
(25, 'Oxfam\'s work on climate change in Cambodia', '1', 1, NULL, 'oxfams-work-on-climate-change-in-cambodia', 'oxfamwork.jpg', '<p><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">Oxfam has been working in Cambodia for over 30 years to address the challenges of climate change. Oxfam&#39;s work includes:</span></p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">+&nbsp;</span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">Supporting farmers to adopt climate-smart agriculture practices.</span></p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">+&nbsp;</span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">Promoting renewable energy.</span></p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">+&nbsp;</span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">Advocating for climate action.</span></p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-24 17:00:00', '2023-12-10 00:00:36'),
(26, 'Community Protected Area (CPA)', '1', 1, NULL, 'ourcpa', 'cpa.jpg', '<p><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">The Community Protected Area . Here is the all of Community Protected Area.</span></p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-24 17:00:00', '2023-10-29 21:09:15'),
(27, 'Community Forestry (CF)', '1', 1, NULL, 'ourcf', 'cf.jpg', '<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Community Forest can be let you know about forest. Here is the all of Community Forest.</span></p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-24 17:00:00', '2023-10-29 21:10:22'),
(28, 'Promotion Equitable Climate Actions in Cambodia Project', '1', 1, NULL, 'promotion-equitable-climate-actions-in-cambodia-project', '', NULL, NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-24 17:00:00', '2023-10-24 17:00:00'),
(29, 'Action', '1', 1, NULL, 'action', NULL, '<p><span style=\"font-size:18px\">You can get involved in the project by:</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Learning more about the project and sharing it with your friends and family</p>\r\n	</li>\r\n	<li>\r\n	<p>Donating to the project.</p>\r\n	</li>\r\n	<li>\r\n	<p>Volunteering your time to the project.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-24 17:00:00', '2023-12-11 19:30:45'),
(30, 'Promotion Equitable Climate Actions', '1', 1, NULL, 'promotion-equitable-climate-actions', 'bg1.jpg', '<p>The &quot;Promotion Equitable Climate Actions in Cambodia&quot; project<br />\r\nis a four-year project funded by Oxfam and the European Union to reduce carbon emissions from<br />\r\nagroforestry exploits in CFs and CPAs through the promotion of sustainable and alternative livelihoods<br />\r\nand holding the RGC accountable to its Nationally Determined Contribution (NDC) commitment.</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-24 17:00:00', '2023-10-30 19:32:55'),
(33, 'The project will Achieve its goals by :', '1', 1, NULL, 'the-project-will-achieve-its-goals-by', NULL, '<p><strong>+ </strong>Supporting communities to adopt sustainable agricultural practices, such as:</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;<strong>- </strong>Planting trees and shrubs to help improve soil quality and reduce erosion.<br />\r\n&nbsp; &nbsp; &nbsp;<strong>- </strong>Using cover crops to help retain moisture in the soil.<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; <strong>-&nbsp;</strong>Practicing crop rotation to help reduce the need for pesticides and fertilizers.<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; <strong>-&nbsp;</strong>Using organic farming methods to reduce pollution.</p>\r\n\r\n<p><strong>+&nbsp;</strong>Promoting the use of renewable energy, such as solar panels and biogas digesters. This will help to reduce the use of fossil fuels, which produce greenhouse gases.</p>\r\n\r\n<p><strong>+&nbsp;</strong>Advocating for climate-smart policies, such as:</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; <strong>-&nbsp;</strong>A ban on deforestation.<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; <strong>-&nbsp;</strong>A tax on carbon emissions.<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; <strong>-&nbsp;</strong>Investments in renewable energy.</p>\r\n\r\n<p><strong>+&nbsp;</strong>Building the capacity of local communities and organizations to implement and sustain climate-smart practices.</p>\r\n\r\n<p>The project is expected to reduce carbon emissions by 10,000 tons per year. It is also expected to improve the livelihoods of 1,000 households and reduce their vulnerability to climate change.</p>\r\n\r\n<p><strong>+&nbsp;</strong>The project is being implemented by Oxfam Cambodia in partnership with the following organizations:</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>-&nbsp;</strong>Ministry of Environment.<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>-&nbsp;</strong>Forestry Administration, Ministry of Agriculture, Forestry and Fisheries<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>-&nbsp;</strong>Local NGOs.</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-25 17:00:00', '2023-10-29 23:21:31'),
(32, 'Welcome to the Promotion Equitable Climate Actions in Cambodia Project', '1', 1, NULL, 'welcome-to-the-promotion-equitable-climate-actions-in-cambodia-project', 'logofam2.png', '<p>The &quot;Promotion Equitable Climate Actions in Cambodia&quot; project is a four-year project funded by Oxfam and the European Union to reduce carbon emissions from agroforestry exploits in CFs and CPAs through the promotion of sustainable and alternative livelihoods and holding the RGC accountable to its Nationally Determined Contribution (NDC) commitment.</p>\r\n\r\n<p>The project is being implemented in three provinces in Cambodia: Kampong Thom, Battambang, and Pursat. The project will target a total of 1,000 households, with a focus on women and marginalized groups.</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-25 17:00:00', '2023-11-03 01:55:57'),
(53, 'In addition to the above, the project will also:', '1', 1, NULL, 'in-addition-to-the-above-the-project-will-also', NULL, '<p>+&nbsp; &nbsp; &nbsp; Conduct research on the impact of climate change on agroforestry in CFs and CPAs.<br />\r\n+&nbsp; &nbsp; &nbsp; And disseminate educational materials about climate-smart agriculture and renewable energy Develop.<br />\r\n+&nbsp; &nbsp; &nbsp; Organize trainings and workshops for farmers, community leaders, and government officials.<br />\r\n+&nbsp; &nbsp; &nbsp; Monitor and evaluate the project&#39;s progress.</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-26 17:00:00', '2023-10-26 20:37:24'),
(34, 'Aboun Leu Protected Area Community (CPA)', '1', 1, NULL, 'abounlue', 'cpa1.jpg', '<p><strong>CPA Size :</strong>&nbsp;4781 Hectares</p>\r\n\r\n<p><strong>Type of Forest :</strong>&nbsp;Deciduous Forest</p>\r\n\r\n<p><strong>Head :</strong>&nbsp;Vil Deam</p>\r\n\r\n<p><strong>CPA Member (2022) :</strong>&nbsp;Total: 1664 people, 801 females, total family: 376 families</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-25 17:00:00', '2023-11-03 00:44:16'),
(35, 'Nglav Protected Area Community (CPA)', '1', 1, NULL, 'nglav', 'cpa2.jpg', '<p><strong>CPA Size :</strong>&nbsp;4635 hectares</p>\r\n\r\n<p><strong>Type of Forest :</strong>&nbsp;Deciduous Forest</p>\r\n\r\n<p><strong>Head :</strong>&nbsp;Keo Vanny</p>\r\n\r\n<p><strong>CPA Member (2022) :</strong>&nbsp;Total: 878 people / 429 females Family Total: 166 families</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-25 17:00:00', '2023-10-29 21:07:55'),
(36, 'Yuoknamram Protected Area Community (CPA)', '1', 1, NULL, 'yuoknamram', 'cpa3.jpg', '<p><strong>CPA Size :</strong>&nbsp;4781 Hectares</p>\r\n\r\n<p><strong>Type of Forest :</strong>&nbsp;Deciduous Forest</p>\r\n\r\n<p><strong>Head :</strong>&nbsp;Vil Deam</p>\r\n\r\n<p><strong>CPA Member (2022) :</strong>&nbsp;Total: 1664 people, 801 females, total family: 376 families</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-25 17:00:00', '2023-10-29 21:08:09'),
(37, 'Cham Marek Protected Area Community (CPA)', '1', 1, NULL, 'chammarek', 'cpa4.jpg', '<p><strong>Community Leader :</strong>&nbsp;The Community lead by<br />\r\nMrs. Tuy Kun</p>\r\n\r\n<p><strong>Contact :</strong>&nbsp;Tel: 078 21 00 56</p>\r\n\r\n<p><strong>Coordinate :</strong>&nbsp;13.0521233, 104.9819416 (Village side)</p>\r\n\r\n<p><strong>Average of income per year (if data is available) :</strong>&nbsp;3,000,000 Riels or USD 750 per year per person</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-25 17:00:00', '2023-11-04 04:30:26'),
(38, 'Include a contact form for easy communication', '1', 1, NULL, 'include-a-contact-form-for-easy-communication', '', NULL, NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-25 17:00:00', '2023-10-25 17:00:00'),
(39, 'Bos lapaek (CF)', '1', 1, NULL, 'lapaek', 'cf1.jpg', '<p><strong>Community Leader :</strong>&nbsp;The Community lead by<br />\r\nMrs. Nop Kynin</p>\r\n\r\n<p><strong>Contact :</strong>&nbsp;Tel: 097 809 5997</p>\r\n\r\n<p><strong>Coordinate :</strong>&nbsp;12.9561258, 104.9568953 (Village side)</p>\r\n\r\n<p><strong>Average of income per year (if data is available) :</strong>&nbsp;3,000,000 Riels or USD 750 per year per person</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-25 17:00:00', '2023-11-04 04:42:13'),
(47, 'Community Action', '1', 1, NULL, 'community-action', NULL, '<h5 style=\"text-align:center\">Action&nbsp;<span style=\"color:rgb(106, 175, 8)\">1</span></h5>\r\n\r\n<p style=\"text-align:center\">&nbsp;&nbsp; Institutional Strengthening Training, Facilitation, Documentation, Reporting, and Community Relations were conducted by officials from the Department of Environment and the Sre Pok Wildlife Sanctuary and Park My Village staff to the management committee. And community members, protected areas, commune authorities.</p>\r\n\r\n<h5 style=\"text-align:center\">Action&nbsp;<span style=\"color:rgb(106, 175, 8)\">2</span></h5>\r\n\r\n<p style=\"text-align:center\">&nbsp;&nbsp; Training on institutional strengthening, facilitation, documentation, reporting, and community relations by officials from the Department of Environment and the Sre Pok Wildlife Sanctuary and Park My Village staff to the management committee, community members, protected areas, and commune authorities.</p>\r\n\r\n<h5 style=\"text-align:center\">Action&nbsp;<span style=\"color:rgb(106, 175, 8)\">3</span></h5>\r\n\r\n<p style=\"text-align:center\">&nbsp;&nbsp; Training on community forest inventory for management committee and community members, protected areas, local authorities by the Department of Environment, Wildlife Sanctuary and project staff.</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-25 17:00:00', '2023-10-30 19:54:07'),
(48, 'Stakeholders', '1', 1, NULL, 'stakeholders', NULL, '<h4>Current key&nbsp;<span style=\"color:rgb(106, 175, 8)\">Stakeholders</span>&nbsp;in the protected area community development process</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table class=\"table\" style=\"border-collapse:collapse; border-spacing:0px; border:1px solid black; color:rgb(158, 158, 158); font-family:roboto,sans-serif; font-size:14px; margin-bottom:20px; max-width:100%; width:1120px\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\"text-align:left; vertical-align:top\"><span style=\"color:#000000\">Stakeholders</span></th>\r\n			<th style=\"text-align:left; vertical-align:top\"><span style=\"color:#000000\">Participation</span></th>\r\n			<th style=\"text-align:left; vertical-align:top\"><span style=\"color:#000000\">Role and support</span></th>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\"><span style=\"color:#000000\">Head of Village</span></td>\r\n			<td style=\"vertical-align:top\"><span style=\"color:#000000\">Directly in Community</span></td>\r\n			<td style=\"vertical-align:top\"><span style=\"color:#000000\">Advise, protect and manage community forests</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\"><span style=\"color:#000000\">Elder</span></td>\r\n			<td style=\"vertical-align:top\"><span style=\"color:#000000\">Directly in Community</span></td>\r\n			<td style=\"vertical-align:top\"><span style=\"color:#000000\">Advise, protect and manage community forests</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\"><span style=\"color:#000000\">Ranger</span></td>\r\n			<td style=\"vertical-align:top\"><span style=\"color:#000000\">Directly in Community</span></td>\r\n			<td style=\"vertical-align:top\"><span style=\"color:#000000\">Protect and manage community forests</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\"><span style=\"color:#000000\">Head of Commune</span></td>\r\n			<td style=\"vertical-align:top\"><span style=\"color:#000000\">Often</span></td>\r\n			<td style=\"vertical-align:top\"><span style=\"color:#000000\">Provide advice, support and other techniques</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\"><span style=\"color:#000000\">Wildlife Sanctuary</span></td>\r\n			<td style=\"vertical-align:top\"><span style=\"color:#000000\">Frequent Practice</span></td>\r\n			<td style=\"vertical-align:top\"><span style=\"color:#000000\">Coordinate, implement sustainable community forest management projects, assist in technical work, help resolve and intervene when crimes occur in the community experience</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\"><span style=\"color:#000000\">My Village (Mvi)</span></td>\r\n			<td style=\"vertical-align:top\"><span style=\"color:#000000\">Frequce</span></td>\r\n			<td style=\"vertical-align:top\"><span style=\"color:#000000\">Facilitate, provide training and provide materials to the management community Sustainable community forestry</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\"><span style=\"color:#000000\">WWF</span></td>\r\n			<td style=\"vertical-align:top\"><span style=\"color:#000000\">Frequce</span></td>\r\n			<td style=\"vertical-align:top\"><span style=\"color:#000000\">Facilitate, provide training and provide materials to the management community Protected community communities Sustainability</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\"><span style=\"color:#000000\">Legal Education Organization</span></td>\r\n			<td style=\"vertical-align:top\">&nbsp;</td>\r\n			<td style=\"vertical-align:top\"><span style=\"color:#000000\">Coordinate the preparation of legal documents and strengthen the capacity of the Legal Commission</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\"><span style=\"color:#000000\">NGOs</span></td>\r\n			<td style=\"vertical-align:top\">&nbsp;</td>\r\n			<td style=\"vertical-align:top\"><span style=\"color:#000000\">Facilitate the process of organizing and capacity building for community committees and trainers</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-25 17:00:00', '2023-10-30 19:55:55'),
(50, 'OUR MISSION', '1', 1, NULL, 'our-mission', '', '<p style=\"text-align: center;\"><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">To promote equitable climate actions by reducing carbon emissions from agroforestry exploits in CFs and CPAs through sustainable livelihoods and government accountability</span></p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-25 17:00:00', '2023-10-25 17:00:00'),
(51, 'OUR VISION', '1', 1, NULL, 'our-vision', '', '<p style=\"text-align: center;\"><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">A sustainable Cambodia with reduced carbon emissions and empowered communities</span></p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-25 17:00:00', '2023-10-25 17:00:00'),
(52, 'OUR PARTNER', '1', 1, NULL, 'our-partner', '', '<h5 style=\"text-align:center\">[ Ministry of Environment ]</h5>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h5 style=\"text-align:center\">[ Forestry Administration, Ministry of Agriculture, Forestry and Fisheries ]</h5>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h5 style=\"text-align:center\">[ Local NGOs ]</h5>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-25 17:00:00', '2023-10-25 17:00:00'),
(54, 'Promotion Equitable Climate Actions in Cambodia Project', '1', 1, NULL, 'promotion-equitable-climate-actions-in-cambodia-project', 'ab.jpg', '<p>The &quot;Promotion Equitable Climate Actions in Cambodia&quot; project is a comprehensive and ambitious project that has the potential to make a significant contribution to addressing climate change in Cambodia. The project is expected to benefit a large number of people and help to reduce carbon emissions. It is also expected to build the capacity of local communities and organizations to implement and sustain climate-smart practices.</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-26 17:00:00', '2023-10-27 00:55:06'),
(55, 'Project Overview', '1', 1, NULL, 'project-overview', NULL, '<p>The &quot;Promotion Equitable Climate Actions in Cambodia&quot; project aims to reduce carbon emissions from agroforestry exploits in CFs and CPAs through the promotion of sustainable and alternative livelihoods and holding the RGC accountable to its NDC commitment.<br />\r\n&nbsp;</p>\r\n\r\n<h5>The project will&nbsp;<span style=\"color:rgb(106, 175, 8)\">Achieve</span>&nbsp;this goal by:</h5>\r\n\r\n<p>&nbsp;<strong>-</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Supporting communities to adopt sustainable agricultural practices.<br />\r\n&nbsp;<strong>-</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Promoting the use of renewable energy.<br />\r\n&nbsp;<strong>-&nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp;Advocating for climate-smart policies.<br />\r\n&nbsp;</p>\r\n\r\n<h5><span style=\"color:rgb(106, 175, 8)\">Oxfam</span>&nbsp;Cambodia</h5>\r\n\r\n<p>Oxfam Cambodia is a member of Oxfam International, a confederation of 19 organizations working together to end poverty and injustice. Oxfam Cambodia has been working in Cambodia for over 30 years, addressing the challenges of poverty, inequality, and climate change.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h5><span style=\"color:rgb(106, 175, 8)\">Understanding&nbsp;</span>the Challenge</h5>\r\n\r\n<p>&nbsp;<strong>-&nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp;Describe Cambodia&#39;s vulnerability to climate change and its impact on the environment and communities.<br />\r\n&nbsp;<strong>-&nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp;Explain the significance of reducing carbon emissions from the forestry sector.<br />\r\n&nbsp;</p>\r\n\r\n<h5>Our<span style=\"color:rgb(106, 175, 8)\">&nbsp;Approach</span></h5>\r\n\r\n<p>&nbsp;<strong>-&nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp;Detail how the project aims to achieve its goals through sustainable livelihoods, community-led protection, and carbon measurement technology.<br />\r\n&nbsp;<strong>-&nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp;Highlight the importance of community involvement and climate policy advocacy.<br />\r\n&nbsp;</p>\r\n\r\n<h5>Our<span style=\"color:rgb(106, 175, 8)\">&nbsp;Activities</span></h5>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h5><strong>+</strong>&nbsp; &nbsp;Project&nbsp;<span style=\"color:rgb(106, 175, 8)\">Outcomes</span></h5>\r\n\r\n<h6>Outcome 1: Community Forestry and Community Protected Areas Conservation</h6>\r\n\r\n<p>&nbsp; <strong>-&nbsp;</strong> &nbsp; &nbsp; &nbsp; Describe the strategies to conserve CFs and CPAs through alternative livelihoods, community-led protection, and carbon measurement technology.<br />\r\n&nbsp; <strong>-&nbsp;</strong> &nbsp; &nbsp; &nbsp; Showcase success stories and community involvement.</p>\r\n\r\n<h6>Outcome 2: Increased Investment for Climate Change</h6>\r\n\r\n<p>&nbsp; <strong>-&nbsp;</strong> &nbsp; &nbsp; &nbsp; Explain how the project works to secure public and private investment for climate change interventions and policies.<br />\r\n&nbsp; <strong>-</strong>&nbsp; &nbsp; &nbsp; &nbsp; Highlight achievements and partnerships in this area.</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-26 17:00:00', '2023-10-27 03:00:30'),
(56, 'Get Involved', '1', 1, NULL, 'get-involved', NULL, '<h5>Join Us in Taking Action:</h5>\r\n\r\n<p><strong>-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong>Encourage visitors to get involved by volunteering, donating, or spreading awareness.<br />\r\n<strong>-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong>Provide contact information for inquiries or partnerships.<br />\r\n&nbsp;</p>\r\n\r\n<h3><span style=\"color:rgb(106, 175, 8)\">News</span>&nbsp;and<span style=\"color:rgb(106, 175, 8)\">&nbsp;Updates</span></h3>\r\n\r\n<h5><span style=\"color:rgb(106, 175, 8)\">Stay Informed</span></h5>\r\n\r\n<p>Share project updates, news articles, and success stories. Include a blog or news section for regular updates<br />\r\n&nbsp;+&nbsp; &nbsp;Recent updates :<br />\r\n&nbsp;<strong>-</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;The project has successfully supported 100 communities to adopt sustainable agricultural practices.<br />\r\n&nbsp;<strong>-</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The project has also helped to install 100 solar panels in rural communities.<br />\r\n&nbsp;<strong>-</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The project is working with the government to develop a climate-smart policy.<br />\r\n&nbsp;+&nbsp;&nbsp; RArticles and reports :<br />\r\n&nbsp;<strong>-</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Read articles and reports about climate change in Cambodia and the work of Oxfam.<br />\r\n&nbsp;+&nbsp;&nbsp; ROpportunities to get involved :<br />\r\n&nbsp;<strong>-</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Learn more about how you can get involved in the project.</p>\r\n\r\n<h3><span style=\"color:rgb(106, 175, 8)\">Oxfam</span>&nbsp;Resource</h3>\r\n\r\n<h5>Useful Documents</h5>\r\n\r\n<p>+&nbsp;&nbsp;&nbsp; Climate change in Cambodia:<br />\r\n&nbsp;<strong>-</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Learn more about climate change in Cambodia, its causes, impacts, and solutions.<br />\r\n+&nbsp;&nbsp;&nbsp; Reducing carbon emissions :<br />\r\n&nbsp;<strong>-</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Find tools and resources to help you reduce your carbon emissions.<br />\r\n+&nbsp;&nbsp;&nbsp; Oxfam&#39;s work on climate change in Cambodia:<br />\r\n&nbsp;<strong>-&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Learn more about Oxfam&#39;s work on climate change in Cambodia.</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-27 17:00:00', '2023-10-27 23:24:18'),
(58, 'General Information Bos Lapaek', '1', 1, NULL, 'general-information', NULL, '<p><strong>Community Name :</strong>&nbsp;Community Forestry Bos Lapaek<br />\r\n<strong>+&nbsp; &nbsp; Location include Coordinates on google map :</strong><br />\r\n<strong>-&nbsp; &nbsp; Village :</strong>&nbsp;Tropeang Thmor Chas<br />\r\n<strong>-&nbsp; &nbsp; Commune :</strong>&nbsp;Salavisie<br />\r\n<strong>-&nbsp; &nbsp; District :</strong>&nbsp;Prasat Balang<br />\r\n<strong>-&nbsp; &nbsp; Province :</strong>&nbsp;Khampong Thom<br />\r\n<strong>-&nbsp; &nbsp; Community Leader :</strong>&nbsp;The Community lead by Mrs. Nop Kynin<br />\r\n<strong>-&nbsp; &nbsp; Contact :</strong>&nbsp;Tel: 097 809 5997<br />\r\n<strong>-&nbsp; &nbsp; Coordinate :</strong>&nbsp;12.9561258, 104.9568953 (Village side)<br />\r\n<strong>-&nbsp; &nbsp; Average of income per year (if data is available) :</strong>&nbsp;3,000,000 Riels or USD 750 per year per person.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\">Briefly about the&nbsp;<span style=\"color:rgb(106, 175, 8)\">community</span></span><br />\r\n<strong>+&nbsp; &nbsp;Vision:</strong>&nbsp;want to see community members reduce poverty.<br />\r\n<strong>+&nbsp; &nbsp;Mission:</strong>&nbsp;implement solidarity and continue cooperation.<br />\r\n<strong>+&nbsp; &nbsp;Goal:</strong>&nbsp;strengthen capacity, continue to mobilize, increase participation.<br />\r\n<strong>+&nbsp; &nbsp;Objective:</strong>&nbsp;Participate in implementing forest policy to reduce poverty, maintain forests, wildlife, water sources, eliminate deforestation, encroach on forest land, increase effective participation, develop to increase forest cover, and meet demand for by-products Effective forestry in local communities.<br />\r\n<strong>+&nbsp; &nbsp;Tasks:</strong>&nbsp;Participate in monthly, quarterly, semi-annual and annual meetings. Review community reforestation committees, strengthen patrols, review meeting for gender action learning system (GALS), fire break in forest, implement community forest credit (CF Credit) groups, and clean up forests.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\">Status of&nbsp;<span style=\"color:rgb(106, 175, 8)\">climate change</span>&nbsp;information or data of the community</span><br />\r\n<strong>+&nbsp; &nbsp; Disaster :</strong>&nbsp;There are mechanisms of the government for disaster management exist in the community: Those are District, Commune committee for Disaster Management and Village Disaster Management Working Group. As well as Red Cross Association.<br />\r\n<strong>+&nbsp; &nbsp; Information sharing :</strong>&nbsp;Broadly disseminate forest laws, forest management, guidance, skills and impacts on mining, quarrying, and sand to local businesses.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\">Livelihood&nbsp;<span style=\"color:rgb(106, 175, 8)\">activities&nbsp;</span>which are sources of income of the community members</span><br />\r\n<strong>-&nbsp; &nbsp;&nbsp;</strong>The community mainly rely on resources from forest (NTFP) is 80%.<br />\r\n<strong>-&nbsp; &nbsp;&nbsp;</strong>On-Farm: 85% employing in Agriculture,<br />\r\n<strong>-&nbsp; &nbsp;&nbsp;</strong>Off-farm: Commercial or service 1.04%, Engaging in handicrafts 0.17%.</p>\r\n\r\n<p><br />\r\n<span style=\"font-size:22px\"><span style=\"color:rgb(106, 175, 8)\">Legal documents</span>&nbsp;(registration with Forestry Adm or Department of environment)</span><br />\r\n<strong>+&nbsp; &nbsp; Approved MoFF :</strong>&nbsp;N489-19/11/2008<br />\r\n<strong>+&nbsp; &nbsp; Agreement :</strong>&nbsp;Off-farm: 27/3/2009</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-27 17:00:00', '2023-12-10 00:51:31'),
(59, 'General Information Bos Yay Nheb', '1', 1, NULL, 'general-information-bos-yay-nheb', NULL, '<p><strong>Community Name :</strong>&nbsp;Community Forestry Yay Nheb<br />\r\n<strong>+&nbsp; &nbsp; Location include Coordinates on google map :</strong><br />\r\n<strong>-&nbsp; &nbsp; Village :</strong>&nbsp;Khmak<br />\r\n<strong>-&nbsp; &nbsp; Commune :</strong>&nbsp;Salavisie<br />\r\n<strong>-&nbsp; &nbsp; District :</strong>&nbsp;Prasat Balang<br />\r\n<strong>-&nbsp; &nbsp; Province :</strong>&nbsp;Khampong Thom<br />\r\n<strong>-&nbsp; &nbsp; Community Leader :</strong>&nbsp;The Community lead by Mrs.Hor Hout<br />\r\n<strong>-&nbsp; &nbsp; Contact :</strong>&nbsp;Tel: 097 98 35 079<br />\r\n<strong>-&nbsp; &nbsp; Coordinate :</strong>&nbsp;12.9387886, 104.9428011 (Village side)<br />\r\n<strong>-&nbsp; &nbsp; Average of income per year (if data is available) :</strong>&nbsp;3,000,000 Riels or USD 750 per year per person.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\">Briefly about the&nbsp;<span style=\"color:rgb(106, 175, 8)\">community</span></span><br />\r\n+&nbsp; &nbsp;Vision: want to see community members reduce poverty.<br />\r\n+&nbsp; &nbsp;Mission: implement solidarity and continue cooperation.<br />\r\n+&nbsp; &nbsp;Goal: strengthen capacity, continue to mobilize, increase participation.<br />\r\n+&nbsp; &nbsp;Objective: Participate in implementing forest policy to reduce poverty, maintain forests, wildlife, water sources, eliminate deforestation, encroach on forest land, increase effective participation, develop to increase forest cover, and meet demand for by-products Effective forestry in local communities.<br />\r\n+&nbsp; &nbsp;Tasks: Participate in monthly, quarterly, semi-annual and annual meetings. Review community reforestation committees, strengthen patrols, review meeting for gender action learning system (GALS), fire break in forest, implement community forest credit (CF Credit) groups, and clean up forests.</p>\r\n\r\n<p><br />\r\n<span style=\"font-size:22px\">Status of&nbsp;<span style=\"color:rgb(106, 175, 8)\">climate change</span>&nbsp;information or data of the community</span><br />\r\n<strong>+&nbsp; &nbsp; Disaster :</strong>&nbsp;There are mechanisms of the government for disaster management exist in the community: Those are District, Commune committee for Disaster Management and Village Disaster Management Working Group. As well as Red Cross Association.<br />\r\n<strong>+&nbsp; &nbsp; Information sharing :</strong>&nbsp;Broadly disseminate forest laws, forest management, guidance, skills and impacts on mining, quarrying, and sand to local businesses.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\">Livelihood&nbsp;<span style=\"color:rgb(106, 175, 8)\">activities</span>&nbsp;which are sources of income of the community members</span><br />\r\n<strong>-&nbsp; &nbsp;&nbsp;</strong>Agriculture 85% (on farm) of 55,479/28,586 female, Commercial or service 1.04%.<br />\r\n<strong>-&nbsp; &nbsp;&nbsp;</strong>The family is mainly engaged in handicrafts 0.17%.<br />\r\n<strong>-&nbsp; &nbsp;&nbsp;</strong>Community members who are Living rely on resources from forest (NTFP) 80%.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\"><span style=\"color:rgb(106, 175, 8)\">Legal documents</span>&nbsp;(registration with Forestry Adm or Department of environment)</span><br />\r\n<strong>+&nbsp; &nbsp; Approved MoFF :</strong>&nbsp;N491-10/10/2014<br />\r\n<strong>+&nbsp; &nbsp; Agreement :</strong>&nbsp;Off-farm: 26/3/201</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-27 17:00:00', '2023-12-10 00:52:29'),
(60, 'General Information Kon Seang Veal', '1', 1, NULL, 'general-information-kon-seang-veal', NULL, '<p><strong>Community Name :</strong>&nbsp;Community Forestry Konseang Veal<br />\r\n<strong>+&nbsp; &nbsp; Location include Coordinates on google map :</strong><br />\r\n<strong>-&nbsp; &nbsp; Village :</strong>&nbsp;Ou Kruch<br />\r\n<strong>-&nbsp; &nbsp; Commune :</strong>&nbsp;Salavisie<br />\r\n<strong>-&nbsp; &nbsp; District :</strong>&nbsp;Prasat Balang<br />\r\n<strong>-&nbsp; &nbsp; Province :</strong>&nbsp;Khampong Thom<br />\r\n<strong>-&nbsp; &nbsp; Community Leader :</strong>&nbsp;The Community lead by Mrs. San Chhan<br />\r\n<strong>-&nbsp; &nbsp; Contact :</strong>&nbsp;Tel: 097 989 55 08<br />\r\n<strong>-&nbsp; &nbsp; Coordinate :</strong>&nbsp;12.9985274, 104.9504305 (Village side)<br />\r\n<strong>-&nbsp; &nbsp; Average of income per year (if data is available) :</strong>&nbsp;3,000,000 Riels or USD 750 per year per person.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\">Briefly about the&nbsp;<span style=\"color:rgb(106, 175, 8)\">community</span></span><br />\r\n<strong>+&nbsp; &nbsp;Vision:</strong>&nbsp;Want to see a better income community.<br />\r\n<strong>+&nbsp; &nbsp;Mission:</strong>&nbsp;Protection, conservation, development to prevent and promote poverty in the community.<br />\r\n<strong>+&nbsp; &nbsp;Strategic Goal:</strong>&nbsp;Communities increase annual income through the enjoyment of non-timber forest products and income from ecotourism.<br />\r\n<strong>+&nbsp; &nbsp;Objective:</strong>&nbsp;participate in implementing forest policy to reduce poverty, maintain forests, wildlife, water sources, eliminate deforestation, encroach on forest land, increase effective participation, develop to increase forest cover and meet demand for by-products Effective forestry in local communities.<br />\r\n<strong>+&nbsp; &nbsp;Workplan:</strong>&nbsp;Agro-forestry, pole boundary and small sign board, fire break in forest plan, increase patrols activities, attend monthly, quarterly, semi-annual and annual meetings and review meeting for gender action learning system (GALS), fire break in forest, implement community forest credit (CF Credit), saving groups, and clean up forests.<br />\r\n&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\">Status of&nbsp;<span style=\"color:rgb(106, 175, 8)\">climate change</span>&nbsp;information or data of the community</span><br />\r\n<strong>+&nbsp; &nbsp; Disaster :</strong>&nbsp;There are many mechanisms for disaster management, such as: District, Commune Disaster Management Committee and Village Disaster Management Working Group. Disaster Management by District Red Cross Sub-Branch.<br />\r\n<strong>+&nbsp; &nbsp; Climate change :</strong>&nbsp;Broadly disseminated forest laws, management, guidance, skills and impacts on mining, quarrying, and sand to local businesses.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\">Livelihood&nbsp;<span style=\"color:rgb(106, 175, 8)\">activities</span>&nbsp;which are sources of income of the community members</span><br />\r\n-&nbsp; &nbsp; Agriculture 85% (on farm) of 55,479/28,586 female, Commercial or service 1.04%, The family is mainly engaged in handicrafts 0.17%.<br />\r\n-&nbsp; &nbsp; Community members who are Living rely on resources from forest (NTFP) 80%.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\"><span style=\"color:rgb(106, 175, 8)\">Legal documents</span>&nbsp;(registration with Forestry Adm or Department of environment)</span><br />\r\n+&nbsp; &nbsp; Approved MoFF : N489-19/11/2008<br />\r\n+&nbsp; &nbsp; Agreement : Off-farm: 27/3/2009</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-27 17:00:00', '2023-12-10 00:53:18'),
(61, 'General Information Ou Angkob Thom', '1', 1, NULL, 'general-information-ou-angkob-thom', NULL, '<p><strong>Community Name :</strong>&nbsp;Community Forestry Ou Angkob Thom<br />\r\n<strong>+&nbsp; &nbsp; Location include Coordinates on google map :</strong><br />\r\n<strong>-&nbsp; &nbsp; Village :</strong>&nbsp;Khvan Teang<br />\r\n<strong>-&nbsp; &nbsp; Commune :</strong>&nbsp;Salavisie<br />\r\n<strong>-&nbsp; &nbsp; District :</strong>&nbsp;Prasat Balang<br />\r\n<strong>-&nbsp; &nbsp; Province :</strong>&nbsp;Khampong Thom<br />\r\n<strong>-&nbsp; &nbsp; Community Leader :</strong>&nbsp;The Community lead by Mrs. Meas Phat<br />\r\n<strong>-&nbsp; &nbsp; Contact :</strong>&nbsp;Tel: 088 98 00 553/097 2513103<br />\r\n<strong>-&nbsp; &nbsp; Coordinate :</strong>&nbsp;12.9632329, 104.9430176 (Village side)<br />\r\n<strong>-&nbsp; &nbsp; Average of income per year (if data is available) :</strong>&nbsp;3,000,000 Riels or USD 750 per year per person.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\">Briefly about the&nbsp;<span style=\"color:rgb(106, 175, 8)\">community</span></span><br />\r\n<strong>+&nbsp; &nbsp;Vision:</strong>&nbsp;want to see community maintained, protected and developed to be a source of income for the community.<br />\r\n<strong>+&nbsp; &nbsp;Mission:</strong>&nbsp;Protect, conserve, develop to prevent and promote poverty in the community.<br />\r\n<strong>+&nbsp; &nbsp;Strategic Goal:</strong>&nbsp;Communities increase annual income through the enjoyment of non-timber forest products and income from ecotourism.<br />\r\n<strong>+&nbsp; &nbsp;Objective:</strong>&nbsp;participate in implementing forest policy to reduce poverty, maintain forests, wildlife, water sources, eliminate deforestation, encroach on forest land, increase effective participation, develop to increase forest cover and meet demand for by-products Effective forestry in local communities.<br />\r\n<strong>+&nbsp; &nbsp;Workplan:</strong>&nbsp;, Agro-forestry, pole boundary and small sign board, fire break in forest plan, increase patrols activities, attend monthly, quarterly, semi-annual and annual meetings and review meeting for gender action learning system (GALS), fire break in forest, implement community forest credit (CF Credit) groups, increase fishery group, vegetable group and clean up forests.</p>\r\n\r\n<p><br />\r\n<span style=\"font-size:22px\">Status of&nbsp;<span style=\"color:rgb(106, 175, 8)\">climate change</span>&nbsp;information or data of the community</span><br />\r\n<strong>+&nbsp; &nbsp; Disaster :</strong>&nbsp;There are many mechanisms for disaster management, such as: District, Commune Disaster Management Committee and Village Disaster Management Working Group. Disaster Management by District Red Cross Sub-Branch.<br />\r\n<strong>+&nbsp; &nbsp; Climate change :</strong>&nbsp;Broadly disseminated forest laws, management, guidance, skills and impacts on mining, quarrying, and sand to local businesses.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\">Livelihood&nbsp;<span style=\"color:rgb(106, 175, 8)\">activities&nbsp;</span>which are sources of income of the community members</span><br />\r\n<strong>-&nbsp; &nbsp;&nbsp;</strong>Agriculture 85% (on farm) of 55,479/28,586 female, Commercial or service 1.04%, The family is mainly engaged in handicrafts 0.17%.<br />\r\n<strong>-&nbsp; &nbsp;&nbsp;</strong>Community members who are Living rely on resources from forest (NTFP) 80%.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\"><span style=\"color:rgb(106, 175, 8)\">Legal documents</span>&nbsp;(registration with Forestry Adm or Department of environment)</span><br />\r\n<strong>+&nbsp; &nbsp; Approved MoFF :</strong>&nbsp;N491-10/10/2014<br />\r\n<strong>+&nbsp; &nbsp; Agreement :</strong>&nbsp;Off-farm: 26/3/2015</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-28 17:00:00', '2023-12-10 00:54:04');
INSERT INTO `posts` (`id`, `title`, `action_title`, `show_image_feature`, `position`, `link`, `image`, `description`, `template`, `count`, `language`, `link_download`, `post_type`, `user_id`, `status`, `is_againt`, `deleted`, `event_start_date`, `event_end_date`, `s_from_rang`, `s_to_rang`, `location_job`, `job_type`, `publish_date`, `unpublish_date`, `created_at`, `updated_at`) VALUES
(62, 'General Information Ou Kladaek', '1', 1, NULL, 'general-information-ou-kladaek', NULL, '<p><strong>Community Name :</strong>&nbsp;Community Forestry Ou Kladaek<br />\r\n<strong>+&nbsp; &nbsp; Location include Coordinates on google map :</strong><br />\r\n<strong>-&nbsp; &nbsp; Village :</strong>&nbsp;Bos Veang<br />\r\n<strong>-&nbsp; &nbsp; Commune :</strong>&nbsp;Salavisie<br />\r\n<strong>-&nbsp; &nbsp; District :</strong>&nbsp;Prasat Balang<br />\r\n<strong>-&nbsp; &nbsp; Province :</strong>&nbsp;Khampong Thom<br />\r\n<strong>-&nbsp; &nbsp; Community Leader :</strong>&nbsp;The Community lead by Mrs. Chhi Chhum<br />\r\n<strong>-&nbsp; &nbsp; Contact :</strong>&nbsp;Tel: 097 83 97 892<br />\r\n<strong>-&nbsp; &nbsp; Coordinate :&nbsp;</strong>12.8885238, 104.9438347 (Village side)<br />\r\n<strong>-&nbsp; &nbsp; Average of income per year (if data is available) :&nbsp;</strong>3,000,000 Riels or USD 750 per year per person.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\">Briefly about the&nbsp;<span style=\"color:rgb(106, 175, 8)\">community</span></span><br />\r\n<strong>+&nbsp; &nbsp;Vision:</strong>&nbsp;want to see better communities and increased forest cover.<br />\r\n<strong>+&nbsp; &nbsp;Mission:</strong>&nbsp;Collectively and Equally.<br />\r\n<strong>+&nbsp; &nbsp;Strategic Goal:</strong>&nbsp;resources mobilization, continue cooperation and capacity building.<br />\r\n<strong>+&nbsp; &nbsp;Objective:</strong>&nbsp;participate in implementing forest policy to reduce poverty, maintain forests, wildlife, water sources, eliminate deforestation, encroach on forest land, increase effective participation, develop to increase forest cover and meet demand for by-products Effective forestry in local communities.<br />\r\n<strong>+&nbsp; &nbsp;Workplan:</strong>&nbsp;Agro-forestry, fire break in forest, increase patrols activities, attend monthly, quarterly, capacity building on Community Forest credit (CF Credit) semi-annual and annual meetings and review meeting for gender action learning system (GALS).</p>\r\n\r\n<p><br />\r\n<span style=\"font-size:22px\">Status of&nbsp;<span style=\"color:rgb(106, 175, 8)\">climate change</span>&nbsp;information or data of the community</span><br />\r\n<strong>+&nbsp; &nbsp; Disaster :</strong>&nbsp;There are many mechanisms for disaster management, such as: District, Commune Disaster Management Committee and Village Disaster Management Working Group. Disaster Management by District Red Cross Sub-Branch.<br />\r\n<strong>+&nbsp; &nbsp; Climate change :</strong>&nbsp;Broadly disseminated forest laws, management, guidance, skills and impacts on mining, quarrying, and sand to local businesses.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\">Livelihood&nbsp;<span style=\"color:rgb(106, 175, 8)\">activities&nbsp;</span>which are sources of income of the community members</span><br />\r\n<strong>-&nbsp; &nbsp;&nbsp;</strong>Agriculture 85% (on farm) of 55,479/28,586 female, Commercial or service 1.04%, The family is mainly engaged in handicrafts 0.17%.<br />\r\n<strong>-&nbsp; &nbsp;&nbsp;</strong>Community members who are Living rely on resources from forest (NTFP) 80%.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\">Legal documents (registration with Forestry Adm or Department of environment)</span><br />\r\n<strong>+&nbsp; &nbsp; Approved MoFF :</strong>&nbsp;N489-19/11/2008<br />\r\n<strong>+&nbsp; &nbsp; Agreement :</strong>&nbsp;Off-farm: 27/3/2009</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-28 17:00:00', '2023-12-10 00:55:02'),
(63, 'General Information Ou Pong Rong', '1', 1, NULL, 'general-information-ou-pong-rong', NULL, '<p><strong>Community Name :</strong>&nbsp;Community Forestry Ou Pong Rong<br />\r\n<strong>+&nbsp; &nbsp; Location include Coordinates on google map :</strong><br />\r\n<strong>-&nbsp; &nbsp; Village :</strong>&nbsp;Russey Duch<br />\r\n<strong>-&nbsp; &nbsp; Commune :</strong>&nbsp;Salavisie<br />\r\n<strong>-&nbsp; &nbsp; District :</strong>&nbsp;Prasat Balang<br />\r\n<strong>-&nbsp; &nbsp; Province :</strong>&nbsp;Khampong Thom<br />\r\n<strong>-&nbsp; &nbsp; Community Leader :</strong>&nbsp;The Community lead by Mrs. Chhun Bunchhorng<br />\r\n<strong>-&nbsp; &nbsp; Contact :</strong>&nbsp;Tel: 068 848 308<br />\r\n<strong>-&nbsp; &nbsp; Coordinate :</strong>&nbsp;12.9104965, 104.9445642 (Village side)<br />\r\n<strong>-&nbsp; &nbsp; Average of income per year (if data is available) :</strong>&nbsp;3,000,000 Riels or USD 750 per year per person.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\">Briefly about the&nbsp;<span style=\"color:rgb(106, 175, 8)\">community</span></span><br />\r\n<strong>+&nbsp; &nbsp;Vision:</strong>&nbsp;Want to see better communities and increased forest cover.<br />\r\n<strong>+&nbsp; &nbsp;Mission:</strong>&nbsp;Protect, conserve, develop to prevent and promote poverty in the community.<br />\r\n<strong>+&nbsp; &nbsp;Strategic Goal:&nbsp;</strong>Communities increase annual income through the enjoyment of non-timber forest products and income from ecotourism.<br />\r\n<strong>+&nbsp; &nbsp;Objective:</strong>&nbsp;Participate in implementing forest policy to reduce poverty, maintain forests, wildlife, water sources, eliminate deforestation, encroach on forest land, increase effective participation, develop to increase forest cover and meet demand for by-products Effective forestry in local communities.<br />\r\n<strong>+&nbsp; &nbsp;Workplan:</strong>&nbsp;Agro-forestry, fire break in forest plan, increase patrols activities, attend monthly, quarterly, semi-annual and annual meetings and review meeting for gender action learning system (GALS), fire break in forest, implement community forest credit (CF Credit) groups, and clean up forests.</p>\r\n\r\n<p><br />\r\n<span style=\"font-size:22px\">Status of&nbsp;<span style=\"color:rgb(106, 175, 8)\">climate change</span>&nbsp;information or data of the community</span><br />\r\n<strong>+&nbsp; &nbsp; Disaster :&nbsp;</strong>There are many mechanisms for disaster management, such as: District, Commune Disaster Management Committee and Village Disaster Management Working Group. Disaster Management by District Red Cross Sub-Branch.<br />\r\n<strong>+&nbsp; &nbsp; Climate change :</strong>&nbsp;Broadly disseminated forest laws, management, guidance, skills and impacts on mining, quarrying, and sand to local businesses.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\">Livelihood&nbsp;<span style=\"color:rgb(106, 175, 8)\">activities&nbsp;</span>which are sources of income of the community members</span><br />\r\n<strong>-&nbsp; &nbsp;&nbsp;</strong>Agriculture 85% (on farm) of 55,479/28,586 female, Commercial or service 1.04%, The family is mainly engaged in handicrafts 0.17%.<br />\r\n<strong>-&nbsp; &nbsp;&nbsp;</strong>Community members who are Living rely on resources from forest (NTFP) 80%.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\"><span style=\"color:rgb(106, 175, 8)\">Legal documents</span>&nbsp;(registration with Forestry Adm or Department of environment)</span><br />\r\n<strong>+&nbsp; &nbsp; Approved MoFF :</strong>&nbsp;N489-19/11/2008<br />\r\n<strong>+&nbsp; &nbsp; Agreement :</strong>&nbsp;Off-farm: 27/3/2009</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-28 17:00:00', '2023-12-10 00:55:37'),
(64, 'General Information Ou Som', '1', 1, NULL, 'general-information-ou-som', NULL, '<p><strong>Community Name :</strong>&nbsp;Community Forestry Ou Som<br />\r\n<strong>+&nbsp; &nbsp; Location include Coordinates on google map :</strong><br />\r\n<strong>-&nbsp; &nbsp; Village :</strong>&nbsp;Salavisie<br />\r\n<strong>-&nbsp; &nbsp; Commune :</strong>&nbsp;Salavisie<br />\r\n<strong>-&nbsp; &nbsp; District :</strong>&nbsp;Prasat Balang<br />\r\n<strong>-&nbsp; &nbsp; Province :</strong>&nbsp;Khampong Thom<br />\r\n<strong>-&nbsp; &nbsp; Community Leader :</strong>&nbsp;The Community lead by Mrs. Chhon Chhen<br />\r\n<strong>-&nbsp; &nbsp; Contact :</strong>&nbsp;Tel: 088 392 37 45<br />\r\n<strong>-&nbsp; &nbsp; Coordinate :</strong>&nbsp;12.9524826, 104.9431638 (Village side)<br />\r\n<strong>-&nbsp; &nbsp; Average of income per year (if data is available) :</strong>&nbsp;3,000,000 Riels or USD 750 per year per person.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\">Briefly about the&nbsp;<span style=\"color:rgb(106, 175, 8)\">community</span></span><br />\r\n<strong>+&nbsp; &nbsp;Vision:</strong>&nbsp;want to see community maintained, protected and developed to be a source of income for the community.<br />\r\n<strong>+&nbsp; &nbsp;Mission:</strong>&nbsp;Protect, conserve, develop to prevent and promote poverty in the community.<br />\r\n<strong>+&nbsp; &nbsp;Strategic Goal:</strong>&nbsp;Communities increase annual income through the enjoyment of non-timber forest products and income from ecotourism.<br />\r\n<strong>+&nbsp; &nbsp;Objective:</strong>&nbsp;Participate in implementing forest policy to reduce poverty, maintain forests, wildlife, water sources, eliminate deforestation, encroach on forest land, increase effective participation, develop to increase forest cover and meet demand for by-products Effective forestry in local communities.<br />\r\n<strong>+&nbsp; &nbsp;Workplan:</strong>&nbsp;Agro-forestry, fire break in forest plan, increase patrols activities, attend monthly, quarterly, semi-annual and annual meetings and review meeting for gender action learning system (GALS), fire break in forest, implement community forest credit (CF Credit) groups, and clean up forests.</p>\r\n\r\n<p><br />\r\n<span style=\"font-size:22px\">Status of&nbsp;<span style=\"color:rgb(106, 175, 8)\">climate change</span>&nbsp;information or data of the community</span><br />\r\n<strong>+&nbsp; &nbsp; Disaster :</strong>&nbsp;There are many mechanisms for disaster management, such as: District, Commune Disaster Management Committee and Village Disaster Management Working Group. Disaster Management by District Red Cross Sub-Branch.<br />\r\n<strong>+&nbsp; &nbsp; Climate change :</strong>&nbsp;Broadly disseminated forest laws, management, guidance, skills and impacts on mining, quarrying, and sand to local businesses.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\">Livelihood&nbsp;<span style=\"color:rgb(106, 175, 8)\">activities&nbsp;</span>which are sources of income of the community members</span><br />\r\n<strong>-&nbsp; &nbsp;&nbsp;</strong>Agriculture 85% (on farm) of 55,479/28,586 female, Commercial or service 1.04%, The family is mainly engaged in handicrafts 0.17%.<br />\r\n<strong>-&nbsp; &nbsp;&nbsp;</strong>Community members who are Living rely on resources from forest (NTFP) 80%.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\"><span style=\"color:rgb(106, 175, 8)\">Legal documents</span>&nbsp;(registration with Forestry Adm or Department of environment)</span><br />\r\n<strong>+&nbsp; &nbsp; Approved MoFF :</strong>&nbsp;N491-10/10/2014<br />\r\n<strong>+&nbsp; &nbsp; Agreement :</strong>&nbsp;Off-farm: 26/3/2015</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-28 17:00:00', '2023-12-10 00:56:12'),
(65, 'General Information Tropeang Kbal kmoch', '1', 1, NULL, 'general-information-tropeang-kbal-kmoch', NULL, '<p><strong>Community Name :</strong>&nbsp;Community Forestry Tropeang Kbal kmoch<br />\r\n<strong>+&nbsp; &nbsp; Location include Coordinates on google map :</strong><br />\r\n<strong>-&nbsp; &nbsp; Village :</strong>&nbsp;Tropeang Krol<br />\r\n<strong>-&nbsp; &nbsp; Commune :</strong>&nbsp;Salavisie<br />\r\n<strong>-&nbsp; &nbsp; District :</strong>&nbsp;Prasat Balang<br />\r\n<strong>-&nbsp; &nbsp; Province :</strong>&nbsp;Khampong Thom<br />\r\n<strong>-&nbsp; &nbsp; Community Leader :</strong>&nbsp;The Community lead by Mrs. Mean Mom<br />\r\n<strong>-&nbsp; &nbsp; Contact :</strong>&nbsp;Tel: 012 772 138<br />\r\n<strong>-&nbsp; &nbsp; Coordinate :</strong>&nbsp;12.868182, 104.9443319 (Village side)<br />\r\n<strong>-&nbsp; &nbsp; Average of income per year (if data is available) :</strong>&nbsp;3,000,000 Riels or USD 750 per year per person.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\">Briefly about the&nbsp;<span style=\"color:rgb(106, 175, 8)\">community</span></span><br />\r\n<strong>+&nbsp; &nbsp;Vision:</strong>&nbsp;want to see community maintained, protected and developed to be a source of income for the community.<br />\r\n<strong>+&nbsp; &nbsp;Mission:</strong>&nbsp;Protect, conserve, develop to prevent and promote poverty in the community.<br />\r\n<strong>+&nbsp; &nbsp;Strategic Goal:</strong>&nbsp;Communities increase annual income through the enjoyment of non-timber forest products and income from ecotourism.<br />\r\n<strong>+&nbsp; &nbsp;Objective:</strong>&nbsp;Participate in implementing forest policy to reduce poverty, maintain forests, wildlife, water sources, eliminate deforestation, encroach on forest land, increase effective participation, develop to increase forest cover and meet demand for by-products Effective forestry in local communities.<br />\r\n<strong>+&nbsp; &nbsp;Workplan:</strong>&nbsp;Agro-forestry, fire break in forest plan, increase patrols activities, attend monthly, quarterly, semi-annual and annual meetings and review meeting for gender action learning system (GALS), fire break in forest, implement community forest credit (CF Credit) groups, and clean up forests.<br />\r\n&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\">Status of&nbsp;<span style=\"color:rgb(106, 175, 8)\">climate change</span>&nbsp;information or data of the community</span><br />\r\n<strong>+&nbsp; &nbsp; Disaster :</strong>&nbsp;There are many mechanisms for disaster management, such as: District, Commune Disaster Management Committee and Village Disaster Management Working Group. Disaster Management by District Red Cross Sub-Branch.<br />\r\n<strong>+&nbsp; &nbsp; Climate change :</strong>&nbsp;Broadly disseminated forest laws, management, guidance, skills and impacts on mining, quarrying, and sand to local businesses.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\">Livelihood&nbsp;<span style=\"color:rgb(106, 175, 8)\">activities</span>&nbsp;which are sources of income of the community members</span><br />\r\n<strong>-</strong>&nbsp; &nbsp; Agriculture 85% (on farm) of 55,479/28,586 female, Commercial or service 1.04%, The family is mainly engaged in handicrafts 0.17%.<br />\r\n<strong>-</strong>&nbsp; &nbsp; Community members who are Living rely on resources from forest (NTFP) 80%.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\"><span style=\"color:rgb(106, 175, 8)\">Legal documents&nbsp;</span>(registration with Forestry Adm or Department of environment)</span><br />\r\n<strong>+&nbsp; &nbsp; Approved MoFF :&nbsp;</strong>N489-19/11/2008<br />\r\n<strong>+&nbsp; &nbsp; Agreement :&nbsp;</strong>Off-farm: 27/3/2009</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-28 17:00:00', '2023-12-10 00:56:47'),
(66, 'General Information Cham Marek', '1', 1, NULL, 'general-information-cham-marek', NULL, '<p><strong>Community Name :</strong>&nbsp;Community Protection Area Cham Marek<br />\r\n<strong>+&nbsp; &nbsp; Location include Coordinates on google map :</strong><br />\r\n<strong>-&nbsp; &nbsp; Village :</strong>&nbsp;Taleak and Andas<br />\r\n<strong>-&nbsp; &nbsp; Commune :</strong>&nbsp;Salavisie<br />\r\n<strong>-&nbsp; &nbsp; District :</strong>&nbsp;Prasat Balang<br />\r\n<strong>-&nbsp; &nbsp; Province :</strong>&nbsp;Khampong Thom<br />\r\n<strong>-&nbsp; &nbsp; Community Leader :</strong>&nbsp;The Community lead by Mrs. Tuy Kun<br />\r\n<strong>-&nbsp; &nbsp; Contact :</strong>&nbsp;Tel: 078 21 00 56<br />\r\n<strong>-&nbsp; &nbsp; Coordinate :</strong>&nbsp;13.0521233, 104.9819416 (Village side)<br />\r\n<strong>-&nbsp; &nbsp; Average of income per year (if data is available) :</strong>&nbsp;3,000,000 Riels or USD 750 per year per person.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\">Briefly about the&nbsp;<span style=\"color:rgb(106, 175, 8)\">community</span></span><br />\r\n<strong>+&nbsp; &nbsp;Vision:</strong>&nbsp;want to see community maintained, protected and developed to be a source of income for the community.<br />\r\n<strong>+&nbsp; &nbsp;Mission:</strong>&nbsp;Protect, conserve, develop to prevent and promote poverty in the community.<br />\r\n<strong>+&nbsp; &nbsp;Strategic Goal:</strong>&nbsp;Communities increase annual income through the enjoyment of non-timber forest products and income from ecotourism.<br />\r\n<strong>+&nbsp; &nbsp;Objective:</strong>&nbsp;Participate in implementing forest policy to reduce poverty, maintain forests, wildlife, water sources, eliminate deforestation, encroach on forest land, increase effective participation, develop to increase forest cover and meet demand for by-products Effective forestry in local communities.<br />\r\n<strong>+&nbsp; &nbsp;Workplan:</strong>&nbsp;Agro-forestry, fire break in forest plan, increase patrols activities, attend monthly, quarterly, semi-annual and annual meetings and review meeting for gender action learning system (GALS), fire break in forest, implement community forest credit (CF Credit) groups, and clean up forests.<br />\r\n&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\">Status of&nbsp;<span style=\"color:rgb(106, 175, 8)\">climate change</span>&nbsp;information or data of the community</span><br />\r\n<strong>+&nbsp; &nbsp; Disaster :&nbsp;</strong>There are many mechanisms for disaster management, such as: District, Commune Disaster Management Committee and Village Disaster Management Working Group. Disaster Management by District Red Cross Sub-Branch.<br />\r\n<strong>+&nbsp; &nbsp; Climate change :</strong>&nbsp;Broadly disseminated forest laws, management, guidance, skills and impacts on mining, quarrying, and sand to local businesses.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\">Livelihood<span style=\"color:rgb(106, 175, 8)\">&nbsp;activities</span>&nbsp;which are sources of income of the community members</span><br />\r\n<strong>-</strong>&nbsp; &nbsp; Agriculture 85% (on farm) of 55,479/28,586 female, Commercial or service 1.04%, The family is mainly engaged in handicrafts 0.17%.<br />\r\n<strong>-</strong>&nbsp; &nbsp; Community members who are Living rely on resources from forest (NTFP) 80%.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\"><span style=\"color:rgb(106, 175, 8)\">Legal documents</span>&nbsp;(registration with Forestry Adm or Department of environment)</span><br />\r\n<strong>+&nbsp; &nbsp; Approved MoFF :</strong>&nbsp;2004<br />\r\n<strong>+&nbsp; &nbsp; Agreement : Off-farm:</strong>&nbsp;2004</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-28 17:00:00', '2023-12-10 00:50:32'),
(80, 'Konseang Veal (CF)', '1', 1, NULL, 'seangveal', 'cf2.jpg', '<p><strong>Community Leader :</strong>&nbsp;The Community lead by<br />\r\nMrs. San Chhan</p>\r\n\r\n<p><strong>Contact :</strong>&nbsp;Tel: 097 989 55 08</p>\r\n\r\n<p><strong>Coordinate :</strong>&nbsp;12.9985274, 104.9504305 (Village side)</p>\r\n\r\n<p><strong>Average of income per year (if data is available) :</strong>&nbsp;3,000,000 Riels or USD 750 per year per person</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-29 17:00:00', '2023-11-04 04:42:56'),
(67, 'Aboun Lue Information', '1', 1, NULL, 'aboun-lue-information', NULL, '<p><strong>Community Name :</strong>&nbsp;Aboun Leu Protected Area Community (CPA)</p>\r\n\r\n<p><strong>+&nbsp; &nbsp;Location :</strong><br />\r\n<strong>-&nbsp; &nbsp;Village :&nbsp;</strong>Antras Aboun Toul,<br />\r\n<strong>-&nbsp; &nbsp;Commune :&nbsp;</strong>Aboun Leu,<br />\r\n<strong>-&nbsp; &nbsp;District :&nbsp;</strong>Koh Nhek<br />\r\n<strong>-&nbsp; &nbsp;Province :</strong>&nbsp;Mondulkiri<br />\r\n<strong>-&nbsp; &nbsp;Wildlife Sanctuary :</strong>&nbsp;Srae Pok<br />\r\n<strong>-&nbsp; &nbsp;Provincial Department of Environment (PDoE) :&nbsp;</strong>Mondulkiri</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-29 17:00:00', '2023-10-30 03:20:13'),
(68, 'History', '1', 1, NULL, 'history', 'cpa111.jpg', '<p><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">The community protected area offers members and resource users the chance to take part in the management, protection, and sustainable use of NTFP.</span><br />\r\n<br />\r\n<strong>This community is recognized and approved by :</strong><br />\r\n<strong>+&nbsp;&nbsp;</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">&nbsp;A Prakas of Recognition No. 494 of the Ministry of Environment dated 28 November 2017 of the Minister of Environment.</span><br />\r\n<strong>+&nbsp;&nbsp;</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">&nbsp;Since 2018, the community has been supported by the Civil Society Organization for Sustainable Development (ACCESS) project, which is funded by the WWW and implemented by My Village (MVi) and the Sre Pok Wildlife Sanctuary of the Department of Environment, Mondulkiri Province, to develop and manage community forests.</span><br />\r\n<strong>+&nbsp;&nbsp;</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">&nbsp;In 2022, Project Promotes Equitable Climate Actions in Indigenous Communities (P-CAIP), funded by Oxfam and coordinated by My Village.</span></p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-29 17:00:00', '2023-10-30 02:58:05'),
(69, 'About Community?', '1', 1, 'about-community', 'trbrtb5br', NULL, '<p><strong>CPA Size :</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">&nbsp;</span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">4,528 hectares</span><br />\r\n<strong>Type Of Forest :</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">&nbsp;</span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Semi-evergreen forest and Deciduous Forest</span><br />\r\n<strong>Situation :</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">&nbsp;</span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Before to the establishment of the community, Aboun Leu Nature Reserve was a mixed forest and semi-dense forest covered with forests and many species of rosewood, as well as areas rich in wildlife.</span><br />\r\n<strong>Main Resources :</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">&nbsp;</span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">(House construction, firewood) (Honey and Bamboo) (Grapes, wild potatoes, vegetables, wild fruits) (Traditional medicine).</span><br />\r\n<strong>Situation :</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">&nbsp;</span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\"><strong>Head :</strong>Mr. Thoeun Nget (1),&nbsp;<strong>Committee :&nbsp;</strong>Lan Ratha (2), Kong Sothea(3), Pure sut(4), Mon Sreymich(5), Anpoy(6), Chea Phal(7), Si Soktho(8), Nhors Tom(9), Biv Chou(10), Phan Srey Noy(11), E EL(12), Le Chrip(13).</span><br />\r\n<strong>Population :</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">&nbsp;</span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Total: 2029 people, 1029 females Family Total: 487 families.</span><br />\r\n<strong>CPA Member (2022) :</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">&nbsp;</span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Total: 1736 people, 697 females Family Total: 832 families</span></p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-29 17:00:00', '2023-10-30 02:51:52'),
(70, 'About CPA Development', '1', 1, NULL, 'about-cpa-development', NULL, '<p><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Step 1 : General Provisions : Consultation and decision to establish a protected area community.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Step 2 : Study by Participatory (August 10, 2017) : The community has prepared a letter requesting the establishment of a community.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Step 3 : Community Application (November 28, 2017) : Recognized by the provincial governor and approved by the Minister of Environment.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Step 4 : Organize Management Structure (2018) : The second election in 2019 has an order recognizing the composition of the commission from the commune chief Or Buon Leu.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Step 5 : Prepare Community Statutes : Minutes signed by the Sre Pok Wildlife Sanctuary Office.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Step 6 : Management Planning (August 8, 2018) : Recognized by the Chairman of the Governor of Pech Reada District, the Director of Sre Pok Wildlife Sanctuary Office, the Director of the Provincial Department of Environment and the Provincial Governor.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Step 7 : Agreement (2019-2023) : Processed data collection and verification.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Step 8 : Monitoring and Control Mechanism (December 19, 2019) :</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Signed an agreement between the community of Aboun Leu Nature Reserve and the Ministry of Environment.</span></p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-29 17:00:00', '2023-10-30 03:12:41'),
(71, 'About CPA Planning', '1', 1, NULL, 'about-cpa-planning', NULL, '<p><strong>Step 1 :</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">&nbsp;Meetings with the Community Management Committee for Protected Areas and members to develop community forest management plans(2017)&nbsp;</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">-&nbsp; &nbsp; </span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">Review the committee structure, including roles and responsibilities.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">-&nbsp; &nbsp; </span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">Disseminate project plans, the community forest management plan, the business plan, and processes to the management committee and community members, protected areas, local authorities, the Department of Environment, and Sre Pok Wildlife Sanctuary.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">-&nbsp; &nbsp; </span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">Review community documents and compiling.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">-&nbsp; &nbsp; </span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">Collect preliminary data on non-timber forest product potential for business plan.</span><br />\r\n<strong>Step 2 :</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">&nbsp;Evaluate community resources, protected areas, and divide community forests into management areas on a map(2017):</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">-&nbsp; &nbsp;</span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">&nbsp;Achieve village map, current community forest map and future forest map, obtain data on trend analysis, calendar, season, match classification, species, diagram.</span><br />\r\n<strong>Step 3 :</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">&nbsp;Survey of community forests in management areas (2017) :</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">-&nbsp; &nbsp; </span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">Through the verification of the community forest management areas&#39; boundaries with the participants, as well as the actual resource situation in each area, as well as the demarcation of the people&#39;s farmland on a scale map.</span><br />\r\n<strong>Step 4 :</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">&nbsp;Demarcation of community forests as areas (2017) :</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">-&nbsp; &nbsp; </span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">After disseminating forest resource assessment results Community demarcation of community forest management area.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">-&nbsp; &nbsp; </span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">The Aboun Leu community has defined five management areas:</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">1. Masot rice field covers an area of 1108 hectares, a type of rainforest, rich in wood species.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">2. Andrach area: It covers an area of 406 hectares, which is a semi-dense forest and a small part of the rainforest forest, which is divided into sub-areas rich in species of klong chhlik, phchek rang, sralao, Sokrom. The first sub-region covers an area of 265 hectares, while the second sub-region covers an area of 141 hectares.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">3. Anlong Chrouk Prey Souy area: 1399 hectares, a kind of klong chhlik, pheuk, pheuk, rang, sralao, Sokrom, especially bamboo.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">4. Chong Kral area: 1038 hectares, rich in species of klong chhlik, pek phchek, rang sralao, Sokrom, especially odd bamboo.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">5. Sre Nai area: 577 hectares, a kind of klong chhlik tree, Phchek phchek, Reang Sokrom.</span><br />\r\n<strong>Step 5 :</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">&nbsp;Community Forest Inventory(2017) :</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">-&nbsp; </span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">&nbsp;Based on the results of the community forest inventory, the top five protected areas are as follows:</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">1. Ochong Tral area, size 1038, has 388,212 seedlings, 20 to 29 cm in diameter, 40,3782 trees, 30 cm in diameter, up to 38,406 trees.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">2. Land size: 406, there are 643916 seedlings, 10 to 29 trees, 198940 trees, 30 cm trees, up to 23954 trees.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">3. Sre Masot, size 1108, has 245976 seedlings, 10 to 29 trees, 69804 trees. Ore Sre Nay, size 577, has 246956 seedlings, 10 to 29 trees, 132710 trees, 30 cm trees, up to 28273 trees. 5. Anlong Chrouk Prey Suy has a land size of 1399 hectares, has 941527 seedlings, 10 to 29 trees, 48,4054 trees, 30 trees up to 88,137 trees.</span><br />\r\n<strong>Step 6 :</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">&nbsp;Presentation of community forest inventory results to members(2018) :</span><br />\r\n<strong>Step 7 :</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">&nbsp;Writing a community forest management plan(2018) :</span><br />\r\n<strong>Step 8 :</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">&nbsp;Submit for review(2019) :</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">-&nbsp; &nbsp;</span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:16px\">&nbsp;Consultation with you, the local authority, the director of the local community development office, the Department of Environment and the Ministry of Environment, and other stakeholders, review and revise the content of the plan and submit it to the General Department of Local Community Livelihood of the Ministry of Environment for approval.</span></p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-29 17:00:00', '2023-10-30 03:16:12'),
(72, 'O\'Nglav Information', '1', 1, NULL, 'onglav-information', NULL, '<p><strong>Community Name :</strong>&nbsp;Nglav Protected Area Community (CPA)</p>\r\n\r\n<p><strong>+&nbsp; &nbsp;Location :</strong><br />\r\n<strong>-&nbsp; &nbsp;Village :&nbsp;</strong>Srae Huy,<br />\r\n<strong>-&nbsp; &nbsp;Commune :&nbsp;</strong>Srae Huy,<br />\r\n<strong>-&nbsp; &nbsp;District :&nbsp;</strong>Koh Nhek<br />\r\n<strong>-&nbsp; &nbsp;Province :</strong>&nbsp;Mondulkiri<br />\r\n<strong>-&nbsp; &nbsp;Wildlife Sanctuary :</strong>&nbsp;Srae Pok<br />\r\n<strong>-&nbsp; &nbsp;Provincial Department of Environment (PDoE) :&nbsp;</strong>Mondulkiri</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-29 17:00:00', '2023-10-30 03:22:05'),
(73, 'History', '1', 1, NULL, 'history', 'cpa222.jpg', '<p><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">During the 1960s-1970s, O&rsquo; Nglav Protected Area&rsquo;s community forest flourished with diverse wildlife and valuable trees. However, deforestation by newcomers gradually caused its disappearance from 1970-1990. The influx of migrants exacerbated the issue, leading to illegal logging, housing construction, and firewood extraction. In 2008, with support from Po Chrey commune authorities, the provincial environment department, and NGOs, the villagers of Pu Chrey commune initiated the establishment of the Trapeang Keum Protected Area community. This initiative aimed to involve local people and resource users in the sustainable management, protection, and utilization of the area, addressing the imminent threat to forest resources.</span><br />\r\n<br />\r\n<strong>This community is recognized and approved by :</strong><br />\r\n<strong>-&nbsp;&nbsp;</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">&nbsp;Prakas of Recognition No. 494, dated 28 November 2017, by the Ministry of Environment.</span><br />\r\n<strong>-&nbsp;&nbsp;</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">&nbsp;Since 2018, supported by the ACCESS project funded by WWW/EU and implemented by My Village (MVi) and the Sre Pok Wildlife Sanctuary.</span><br />\r\n<strong>-&nbsp;&nbsp;</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">&nbsp;In 2022, supported by the P-CAIP project funded by Oxfam and coordinated by My Village.</span></p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-29 17:00:00', '2023-10-30 03:23:28'),
(74, 'About Community?', '1', 1, NULL, 'about-community', NULL, '<p><strong>CPA Size :</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">&nbsp;</span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">4635 hectares</span><br />\r\n<strong>Type Of Forest :</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">&nbsp;</span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Deciduous Forest</span><br />\r\n<strong>Situation :</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">&nbsp;</span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Before to the establishment of the community, Aboun Leu Nature Reserve was a mixed forest and semi-dense forest covered with forests and many species of rosewood, as well as areas rich in wildlife.</span><br />\r\n<strong>Main Resources :</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">&nbsp;</span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">(Construction wood, firewood) (Honey and Bamboo) (Grapes, wild potatoes, vegetables, wild fruits) (Traditional medicine).</span><br />\r\n<strong>Situation :</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">&nbsp;</span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\"><strong>Head :</strong>Keo Vanny,&nbsp;<strong>Committee :&nbsp;</strong>Khe SreyPin, Bak Mom, Nhean Khin, Kreurn Channtry, Chorn Sinat, Team Buntheourn, Mnhol Nhy, Ken Ela, Thav Seorung, Nhen Romani.</span><br />\r\n<strong>Population :</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">&nbsp;</span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Total: 1681 people, 800 females Family Total: 402 families.</span><br />\r\n<strong>CPA Member (2022) :</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">&nbsp;</span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Total: 878 people, 429 females Family Total: 166 families</span></p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-29 17:00:00', '2023-10-30 03:24:35'),
(75, 'About CPA Development', '1', 1, NULL, 'about-cpa-development', '', '<p><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Step 1 : General Provisions :</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Step 2 : Study by Participatory :</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Step 3 : Community Application (October 18, 2017) : Recognized by the provincial governor and approved by the Minister of Environment.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Step 4 : Organize Management Structure (November 11, 2022) : The third election has an order recognizing the composition of the commission from Sre Huy commune chief.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Step 5 : Prepare Community Statutes(November 28, 2017) : Recognized by the Chairman of Sre Huy Commune Council.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Step 6 : Management Planning (September 06, 2018) : A community management plan was developed for CPA, divided into three management areas:</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Zone 1: Thang Leum Torm Nhav or Trapeang Chambok, spanning 999.27 hectares, focuses on reforestation and child-rearing planting in a rainforest and grassland environment.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Zone 2: Lao Tum Nam or Trapeang Russey, covering 1,508.48 hectares, serves as a conservation area, including features such as Sdao.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Zone 3: O Cheang Chek, spanning 2,049.82 hectares, is the utilization area, comprising 10% semi-dense forest and semi-dense forest. It allows for sustainable resin and bamboo removal and features trees like sokrum, pteuk, klong sralao, and others.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">The management plan has been approved by local authorities, including Sre Pok Wildlife Sanctuary, the Office of Local Community Livelihood, Bisthan Department, and the General Department of Local Community of the Ministry of Environment.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Step 7 : MOU or Agreement (December 19, 2019) : An agreement was signed with the Ministry of Environment.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Step 8 : Monitoring and Control Mechanism</span></p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-29 17:00:00', '2023-10-29 17:00:00'),
(76, 'Yuoknamram Information', '1', 1, NULL, 'yuoknamram-information', '', '<p><strong>Community Name :</strong>&nbsp;Yuoknamram Protected Area Community (CPA)</p>\r\n\r\n<p><strong>+&nbsp; &nbsp;Location :</strong><br />\r\n<strong>-&nbsp; &nbsp;Village :&nbsp;</strong>Anhor, Klong Le, Chiklob ,<br />\r\n<strong>-&nbsp; &nbsp;Commune :&nbsp;</strong>Sokh Sant,<br />\r\n<strong>-&nbsp; &nbsp;District :&nbsp;</strong>Koh Nhek<br />\r\n<strong>-&nbsp; &nbsp;Province :</strong>&nbsp;Mondulkiri<br />\r\n<strong>-&nbsp; &nbsp;Wildlife Sanctuary :</strong>&nbsp;Srae Pok<br />\r\n<strong>-&nbsp; &nbsp;Provincial Department of Environment (PDoE) :&nbsp;</strong>Mondulkiri</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-29 17:00:00', '2023-10-29 17:00:00'),
(77, 'History', '1', 1, NULL, 'history', 'cpa333.jpg', '<p><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">In the 1960s-1970s, the Yok Nam Ream Protected Area&rsquo;s community forest thrived with diverse trees and wildlife. However, from 1970-1990, deforestation by newcomers led to its gradual disappearance.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Recognizing the threat to forest resources, in 2008, the villagers of Sok San commune, with support from authorities and NGOs, initiated the Yok Nam Ream Protected Area Community. Their goal was to involve locals in the management, protection, and sustainable use of the area. Together, they aimed to preserve the valuable ecosystem and create a harmonious relationship between people and nature.</span><br />\r\n&nbsp;</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-29 17:00:00', '2023-10-29 17:00:00'),
(78, 'About Community?', '1', 1, NULL, 'about-community', '', '<p><strong>CPA Size :</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">&nbsp;</span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">4781 hectares</span><br />\r\n<strong>Type Of Forest :</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">&nbsp;</span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Deciduous forest</span><br />\r\n<strong>Situation :</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">&nbsp;</span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Deforestation.</span><br />\r\n<strong>Main Resources :</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">&nbsp;</span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">(Timber forest, Fuel wood) (NTFP: honey, rattan, Bamboo, wild potato, wild vegetable ) (Traditional medicine).</span><br />\r\n<strong>Situation :</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">&nbsp;</span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\"><strong>Head :</strong>Vil Deam&nbsp;<strong>Committee :&nbsp;</strong>Khvan Chhrung, Chak Ren, Chanthaw Krev, Than Ros, Chanda, Yey Krong, Kab Chhong, Sanoeun Muon, Srey Leng, Nhel Poeun, Poeun Phlak, Lerk Pek.</span><br />\r\n<strong>Population :</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">&nbsp;</span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Total: 1670 people, 851 females Family Total: 401 families.</span><br />\r\n<strong>CPA Member (2022) :</strong><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">&nbsp;</span><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Total: 1664 people, 801 females Family Total: 376 families</span></p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-29 17:00:00', '2023-10-29 17:00:00'),
(79, 'About CPA Development', '1', 1, NULL, 'about-cpa-development', '', '<p><span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Step 1 : General Provisions :</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Step 2 : Study by Participatory (August 10, 2017) :</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Step 3 : Community Application (28 Nov 2017) : Recognized by the provincial governor and approved by the Minister of Environment.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Step 4 : Organize Management Structure (25 Jan 2022) : The third election in 2019 has an order recognizing the composition of the commission from Sok San commune chief.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Step 5 : Prepare Community Statutes : Memorandum signed by Sre Pok Wildlife Sanctuary Office Director.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Step 6 : Management Planning (2018) : Recognized by Chairman of Pou Chrey Commune Council, Governor of Pech Reada District, Director of Sre Pok Wildlife Sanctuary Office, Director of Provincial Department of Environment and Provincial Governor.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px\">Step 7 : MOU or Agreement (2019-2023) : Processed data collection and verification.</span></p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-29 17:00:00', '2023-10-29 17:00:00'),
(81, 'Bos Yay Nheb (CF)', '1', 1, NULL, 'yaynheb', 'cf3.jpg', '<p><strong>Community Leader :</strong>&nbsp;The Community lead by<br />\r\nMrs. Hor Hout</p>\r\n\r\n<p><strong>Contact :</strong>&nbsp;Tel: 097 98 35 079</p>\r\n\r\n<p><strong>Coordinate :</strong>&nbsp;12.9387886, 104.9428011 (Village side)</p>\r\n\r\n<p><strong>Average of income per year (if data is available) :</strong>&nbsp;3,000,000 Riels or USD 750 per year per person</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-29 17:00:00', '2023-11-04 04:39:25');
INSERT INTO `posts` (`id`, `title`, `action_title`, `show_image_feature`, `position`, `link`, `image`, `description`, `template`, `count`, `language`, `link_download`, `post_type`, `user_id`, `status`, `is_againt`, `deleted`, `event_start_date`, `event_end_date`, `s_from_rang`, `s_to_rang`, `location_job`, `job_type`, `publish_date`, `unpublish_date`, `created_at`, `updated_at`) VALUES
(82, 'Ou Angkob Thom (CF)', '1', 1, NULL, 'angkobthom', 'cf4.jpg', '<p><strong>Community Leader :</strong>&nbsp;The Community lead by<br />\r\nMrs. Meas Phat</p>\r\n\r\n<p><strong>Contact :</strong>&nbsp;Tel: 088 98 00 553/097 2513103</p>\r\n\r\n<p><strong>Coordinate :</strong>&nbsp;12.9632329, 104.9430176 (Village side)</p>\r\n\r\n<p><strong>Average of income per year (if data is available) :</strong>&nbsp;3,000,000 Riels or USD 750 per year per person</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-29 17:00:00', '2023-11-04 04:37:44'),
(83, 'Ou Kla daek (CF)', '1', 1, NULL, 'kladaek', 'cf5.jpg', '<p><strong>Community Leader :</strong>&nbsp;The Community lead by<br />\r\nMrs. Chhi Chhum</p>\r\n\r\n<p><strong>Contact :</strong>&nbsp;Tel: 097 83 97 892</p>\r\n\r\n<p><strong>Coordinate :</strong>&nbsp;12.8885238, 104.9438347 (Village side)</p>\r\n\r\n<p><strong>Average of income per year (if data is available) :</strong>&nbsp;3,000,000 Riels or USD 750 per year per person</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-29 17:00:00', '2023-11-04 04:39:11'),
(84, 'Ou Pong Rong (CF)', '1', 1, NULL, 'pongrong', 'cf6.jpg', '<p><strong>Community Leader :</strong>&nbsp;The Community lead by<br />\r\nMrs. Chhun Bunchhorng</p>\r\n\r\n<p><strong>Contact :</strong>&nbsp;Tel: 068 848 308</p>\r\n\r\n<p><strong>Coordinate :</strong>&nbsp;12.9104965, 104.9445642 (Village side)</p>\r\n\r\n<p><strong>Average of income per year (if data is available) :</strong>&nbsp;3,000,000 Riels or USD 750 per year per person</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-29 17:00:00', '2023-11-04 04:38:54'),
(85, 'Ou Som (CF)', '1', 1, NULL, 'ousom', 'cf7.jpg', '<p><strong>Community Leader :</strong>&nbsp;The Community lead by<br />\r\nMrs. Chhon Chhen</p>\r\n\r\n<p><strong>Contact :</strong>&nbsp;Tel: 088 392 37 45</p>\r\n\r\n<p><strong>Coordinate :</strong>&nbsp;12.9524826, 104.9431638 (Village side)</p>\r\n\r\n<p><strong>Average of income per year (if data is available) :</strong>&nbsp;3,000,000 Riels or USD 750 per year per person</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-29 17:00:00', '2023-11-04 04:38:22'),
(86, 'Tropeang Kbal Kmoch (CF)', '1', 1, NULL, 'kbalkmoch', 'cf8.jpg', '<p><strong>Community Leader :</strong>&nbsp;The Community lead by<br />\r\nMrs. Mean Mom</p>\r\n\r\n<p><strong>Contact :</strong>&nbsp;Tel: 012 772 138</p>\r\n\r\n<p><strong>Coordinate :</strong>&nbsp;12.868182, 104.9443319 (Village side)</p>\r\n\r\n<p><strong>Average of income per year (if data is available) :</strong>&nbsp;3,000,000 Riels or USD 750 per year per person</p>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-29 17:00:00', '2023-11-04 04:38:03'),
(88, 'Need Our Service Or Have Queries ?', '1', 1, NULL, 'adress', NULL, NULL, NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-11-03 17:00:00', '2023-11-03 20:39:16'),
(87, 'Mr. SINA YUN', '1', 1, NULL, 'mr-sina-yun', NULL, '<h5>Program coordintor | climate Resilience Oxfam | Phnom Penh | Cambodia</h5>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Provide contact information for project inquiries, partnerships, and collaborations.</p>\r\n	</li>\r\n	<li>\r\n	<p>Include a contact form for easy communication.</p>\r\n	</li>\r\n</ol>', NULL, NULL, NULL, NULL, 'post', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '2023-10-29 17:00:00', '2023-12-11 19:45:08'),
(91, 'Hello', '0', 0, NULL, 'hello', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', NULL, '2023-11-09 16:00:00'),
(92, 'Hello', '0', 0, NULL, 'hello', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', NULL, '2023-11-09 16:00:00'),
(93, 'Hello', '0', 0, NULL, 'hello', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', NULL, '2023-11-09 16:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `position` varchar(60) DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `post_id`, `position`, `categorie_id`, `created_at`, `updated_at`) VALUES
(370, 13, 'position_3', 37, NULL, NULL),
(168, 9, 'position_2', 14, NULL, NULL),
(306, 2, 'position_6', 29, NULL, NULL),
(260, 1, 'position_7', 6, NULL, NULL),
(259, 1, 'position_6', 29, NULL, NULL),
(258, 1, 'position_5', 28, NULL, NULL),
(257, 1, 'position_4', 4, NULL, NULL),
(305, 2, 'position_5', 7, NULL, NULL),
(346, 3, 'position_3', 32, NULL, NULL),
(349, 4, 'position_3', 32, NULL, NULL),
(348, 4, 'position_2', 9, NULL, NULL),
(319, 5, 'position_3', 29, NULL, NULL),
(316, 6, 'position_3', 29, NULL, NULL),
(313, 7, 'position_5', 6, NULL, NULL),
(145, 8, 'position_2', 13, NULL, NULL),
(170, 10, 'position_2', 15, NULL, NULL),
(367, 12, 'position_3', 37, NULL, NULL),
(366, 12, 'position_2', 17, NULL, NULL),
(369, 13, 'position_2', 18, NULL, NULL),
(376, 15, 'position_3', 32, NULL, NULL),
(379, 16, 'position_3', 32, NULL, NULL),
(373, 14, 'position_3', 32, NULL, NULL),
(382, 17, 'position_3', 32, NULL, NULL),
(385, 18, 'position_3', 32, NULL, NULL),
(388, 19, 'position_3', 32, NULL, NULL),
(391, 20, 'position_3', 32, NULL, NULL),
(394, 21, 'position_3', 32, NULL, NULL),
(397, 22, 'position_3', 32, NULL, NULL),
(256, 1, 'position_3', 3, NULL, NULL),
(255, 1, 'position_2', 2, NULL, NULL),
(304, 2, 'position_4', 34, NULL, NULL),
(303, 2, 'position_3', 31, NULL, NULL),
(345, 3, 'position_2', 8, NULL, NULL),
(344, 3, 'position_1', 5, NULL, NULL),
(318, 5, 'position_2', 10, NULL, NULL),
(317, 5, 'position_1', 5, NULL, NULL),
(315, 6, 'position_2', 11, NULL, NULL),
(314, 6, 'position_1', 5, NULL, NULL),
(312, 7, 'position_4', 29, NULL, NULL),
(311, 7, 'position_3', 38, NULL, NULL),
(146, 8, 'position_1', 5, NULL, NULL),
(147, 8, 'position_3', 29, NULL, NULL),
(302, 2, 'position_2', 30, NULL, NULL),
(301, 2, 'position_1', 5, NULL, NULL),
(167, 9, 'position_1', 5, NULL, NULL),
(169, 9, 'position_3', 29, NULL, NULL),
(171, 10, 'position_1', 5, NULL, NULL),
(364, 11, 'position_3', 37, NULL, NULL),
(363, 11, 'position_2', 16, NULL, NULL),
(375, 15, 'position_2', 20, NULL, NULL),
(374, 15, 'position_1', 5, NULL, NULL),
(378, 16, 'position_2', 21, NULL, NULL),
(377, 16, 'position_1', 5, NULL, NULL),
(381, 17, 'position_2', 22, NULL, NULL),
(380, 17, 'position_1', 5, NULL, NULL),
(384, 18, 'position_2', 23, NULL, NULL),
(383, 18, 'position_1', 5, NULL, NULL),
(387, 19, 'position_2', 24, NULL, NULL),
(386, 19, 'position_1', 5, NULL, NULL),
(390, 20, 'position_2', 25, NULL, NULL),
(389, 20, 'position_1', 5, NULL, NULL),
(393, 21, 'position_2', 26, NULL, NULL),
(392, 21, 'position_1', 5, NULL, NULL),
(396, 22, 'position_2', 27, NULL, NULL),
(395, 22, 'position_1', 5, NULL, NULL),
(372, 14, 'position_2', 19, NULL, NULL),
(371, 14, 'position_1', 5, NULL, NULL),
(310, 7, 'position_2', 12, NULL, NULL),
(254, 1, 'position_1', 1, NULL, NULL),
(362, 11, 'position_1', 5, NULL, NULL),
(365, 12, 'position_1', 5, NULL, NULL),
(368, 13, 'position_1', 5, NULL, NULL),
(309, 7, 'position_1', 5, NULL, NULL),
(347, 4, 'position_1', 5, NULL, NULL),
(399, 89, 'position_1', 5, NULL, NULL),
(400, 89, 'position_1', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_galleries`
--

CREATE TABLE `post_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `gallerie_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_image`
--

CREATE TABLE `post_image` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_image`
--

INSERT INTO `post_image` (`id`, `post_id`, `image`, `created_at`, `updated_at`) VALUES
(21, 33, 'spon33.png', NULL, NULL),
(20, 33, 'spon22.png', NULL, NULL),
(19, 33, 'spon11.png', NULL, NULL),
(49, 67, 'cf88.jpg', NULL, NULL),
(48, 67, 'cpa44.jpg', NULL, NULL),
(24, 58, 'cf11.jpg', NULL, NULL),
(25, 58, 'cf1.jpg', NULL, NULL),
(29, 59, 'cf2.jpg', NULL, NULL),
(28, 59, 'cf22.jpg', NULL, NULL),
(30, 60, 'cf33.jpg', NULL, NULL),
(31, 60, 'cf3.jpg', NULL, NULL),
(32, 61, 'cf44.jpg', NULL, NULL),
(33, 61, 'cf4.jpg', NULL, NULL),
(37, 62, 'cf5.jpg', NULL, NULL),
(36, 62, 'cf55.jpg', NULL, NULL),
(38, 63, 'cf66.jpg', NULL, NULL),
(39, 63, 'cf6.jpg', NULL, NULL),
(40, 64, 'cf77.jpg', NULL, NULL),
(41, 64, 'cf7.jpg', NULL, NULL),
(42, 65, 'cf88.jpg', NULL, NULL),
(43, 65, 'cf8.jpg', NULL, NULL),
(44, 66, 'cpa44.jpg', NULL, NULL),
(45, 66, 'cpa4.jpg', NULL, NULL),
(50, 72, 'cpa22.jpg', NULL, NULL),
(51, 72, 'cpa2.jpg', NULL, NULL),
(52, 76, 'cpa33.jpg', NULL, NULL),
(53, 76, 'cpa3.jpg', NULL, NULL),
(57, 39, 'cf1.jpg', NULL, NULL),
(56, 39, 'cf11.jpg', NULL, NULL),
(61, 80, 'cf2.jpg', NULL, NULL),
(60, 80, 'cf22.jpg', NULL, NULL),
(62, 81, 'cf33.jpg', NULL, NULL),
(63, 81, 'cf3.jpg', NULL, NULL),
(64, 82, 'cf44.jpg', NULL, NULL),
(65, 82, 'cf4.jpg', NULL, NULL),
(66, 83, 'cf55.jpg', NULL, NULL),
(67, 83, 'cf5.jpg', NULL, NULL),
(68, 84, 'cf66.jpg', NULL, NULL),
(69, 84, 'cf6.jpg', NULL, NULL),
(70, 85, 'cf88.jpg', NULL, NULL),
(71, 85, 'cf8.jpg', NULL, NULL),
(72, 86, 'cf88.jpg', NULL, NULL),
(73, 86, 'cf8.jpg', NULL, NULL),
(81, 37, 'cf4.jpg', NULL, NULL),
(80, 37, 'cpa44.jpg', NULL, NULL),
(82, 34, 'cpa11.jpg', NULL, NULL),
(83, 34, 'cpa1.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_slide`
--

CREATE TABLE `post_slide` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slide_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `display_name` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'administrator', 'Administrator', 'administrator', NULL, '2021-12-31 00:28:23', '2022-01-02 23:01:14'),
(2, 'admin', 'Admin', 'admin', NULL, '2021-12-31 00:28:30', '2021-12-31 00:28:30'),
(3, 'user', 'User', 'user', NULL, '2021-12-31 00:28:36', '2021-12-31 00:28:36');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `website_name` varchar(250) NOT NULL,
  `website_url` varchar(250) DEFAULT NULL,
  `language` varchar(220) DEFAULT NULL,
  `work_time` varchar(220) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `logo_image` varchar(250) DEFAULT NULL,
  `logo_text` varchar(250) DEFAULT NULL,
  `favicon_image` varchar(250) DEFAULT NULL,
  `copyright` varchar(200) DEFAULT NULL,
  `address_site` text DEFAULT NULL,
  `is_slide_only_page` int(11) DEFAULT NULL,
  `link_fb` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `google_map` text DEFAULT NULL,
  `facebooklink` text DEFAULT NULL,
  `visitor_counter` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `website_name`, `website_url`, `language`, `work_time`, `description`, `address`, `phone`, `email`, `logo_image`, `logo_text`, `favicon_image`, `copyright`, `address_site`, `is_slide_only_page`, `link_fb`, `user_id`, `google_map`, `facebooklink`, `visitor_counter`, `created_at`, `updated_at`) VALUES
(1, 'OXFAM', 'https://cambodia-redd.org, https://moe.gov.kh', NULL, '<p>Mon - Sun 8.00 - 18.00</p>', '<p><span style=\"color:#9e9e9e\">The &quot;Promotion Equitable Climate Actions in Cambodia&quot; project is a project funded by Oxfam to reduce carbon emissions from agroforestry exploits in CFs and CPAs through the promotion of sustainable and alternative livelihoods and holding the RGC accountable to its Nationally Determined Contribution (NDC) commitment.</span></p>', '<p>Techo Heritage Building, Lot 503, Bassac River, Sangkat Tonle Bassac, Khan Chamkarmon, Phnom Penh</p>', '(+855) 23 885 412, (+855) 23 885 413, (+855) 23 213 908, (+855) 23 220 369', 'sina.yun@oxfam.org', 'logooxfam.png', NULL, '', '<p>Designed And developed By <a href=\"https://titb.biz\">TITB</a>.</p>', '<p>The Point, 3rd Floor, U08-09, No 113C, Mao Tse Tung Boulevard, Tuol Svay Prey I, Beung Keng Kang Phnom Penh, Cambodia</p>', NULL, NULL, 1, NULL, NULL, NULL, '2023-11-03 17:00:00', '2023-11-04 08:23:39');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `language` varchar(220) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `slide_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `unpublish_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `name`, `language`, `description`, `status`, `slide_type_id`, `user_id`, `deleted`, `publish_date`, `unpublish_date`, `created_at`, `updated_at`) VALUES
(1, 'First Slide', NULL, '<h1>COMMUNITY-BASED FOREST</h1>\r\n\r\n<h1>CARBON MEASUREMENT</h1>', 1, NULL, 1, NULL, '2023-10-30 00:00:00', '2023-10-30 00:00:00', '2023-10-28 17:00:00', '2023-10-29 17:00:00'),
(2, 'Second Slide', NULL, '<h1>COMMUNITY-BASED FOREST</h1>\r\n\r\n<h1>CARBON MEASUREMENT</h1>', 1, NULL, 1, NULL, '2023-10-30 00:00:00', '2023-10-30 00:00:00', '2023-10-28 17:00:00', '2023-10-29 17:00:00'),
(3, 'thirt slide', NULL, '<h1>COMMUNITY-BASED FOREST</h1>\r\n\r\n<h1>CARBON MEASUREMENT</h1>', 1, NULL, 1, NULL, NULL, NULL, '2023-10-29 17:00:00', '2023-10-29 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `slide_image`
--

CREATE TABLE `slide_image` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `slide_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slide_image`
--

INSERT INTO `slide_image` (`id`, `image`, `link`, `slide_id`, `created_at`, `updated_at`) VALUES
(1, 'silde1.jpg', NULL, 1, NULL, NULL),
(3, 'bg2.jpg', NULL, 2, NULL, NULL),
(5, 'bg1.jpg', NULL, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slide_type`
--

CREATE TABLE `slide_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `class` varchar(200) DEFAULT NULL,
  `image_icon` varchar(250) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `name`, `class`, `image_icon`, `link`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', NULL, 'facebook.png', 'https://www.facebook.com/OxfaminCambodia/?ref=hl', 1, 1, '2023-10-28 17:00:00', NULL),
(2, 'Twitter', NULL, 'twitter.png', 'https://twitter.com/OxfamKH', 1, 1, '2023-10-28 17:00:00', NULL),
(3, 'Youtube', NULL, 'youtube.png', 'https://www.youtube.com/user/OxfamKH', 1, 1, '2023-10-28 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `branch_id` bigint(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` bigint(20) DEFAULT NULL,
  `password` varchar(200) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `phone`, `image`, `branch_id`, `address`, `status`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sokchea', 'sokchea', 'sokchea@titb.biz', '016920587', '', NULL, NULL, 1, '$2y$10$31mXYGoYWoHhX4Ni5BdaH.ETNd8SFAQ8DLVkiOBzKVFDWyDYY.ESK', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `widget`
--

CREATE TABLE `widget` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `limit_show` int(11) DEFAULT NULL,
  `position` varchar(60) DEFAULT NULL,
  `page_side` varchar(60) DEFAULT NULL,
  `title` varchar(60) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads_images`
--
ALTER TABLE `ads_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_email_unique` (`email`);

--
-- Indexes for table `cat_galleries`
--
ALTER TABLE `cat_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_pages`
--
ALTER TABLE `footer_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries_image`
--
ALTER TABLE `galleries_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_posts`
--
ALTER TABLE `menu_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_types`
--
ALTER TABLE `menu_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_categories`
--
ALTER TABLE `page_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_galleries`
--
ALTER TABLE `post_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_image`
--
ALTER TABLE `post_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_slide`
--
ALTER TABLE `post_slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slide_image`
--
ALTER TABLE `slide_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slide_type`
--
ALTER TABLE `slide_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `widget`
--
ALTER TABLE `widget`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ads_images`
--
ALTER TABLE `ads_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `cat_galleries`
--
ALTER TABLE `cat_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footers`
--
ALTER TABLE `footers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `footer_pages`
--
ALTER TABLE `footer_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `galleries_image`
--
ALTER TABLE `galleries_image`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `menu_posts`
--
ALTER TABLE `menu_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `menu_types`
--
ALTER TABLE `menu_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `page_categories`
--
ALTER TABLE `page_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=531;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT for table `post_galleries`
--
ALTER TABLE `post_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post_image`
--
ALTER TABLE `post_image`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `post_slide`
--
ALTER TABLE `post_slide`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slide_image`
--
ALTER TABLE `slide_image`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slide_type`
--
ALTER TABLE `slide_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `widget`
--
ALTER TABLE `widget`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
