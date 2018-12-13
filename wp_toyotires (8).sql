-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2018 at 01:50 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wp_toyotires`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_cars`
--

CREATE TABLE `tb_cars` (
  `car_id` int(11) NOT NULL,
  `maker` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_cars`
--

INSERT INTO `tb_cars` (`car_id`, `maker`) VALUES
(1, 'isuzu'),
(2, 'mitsubishi'),
(3, 'toyota'),
(4, 'nissan'),
(5, 'mazda'),
(0, 'marcedes');

-- --------------------------------------------------------

--
-- Table structure for table `tb_model`
--

CREATE TABLE `tb_model` (
  `model_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `model` varchar(50) NOT NULL,
  `default_size` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_model`
--

INSERT INTO `tb_model` (`model_id`, `car_id`, `model`, `default_size`) VALUES
(1, 1, 'mu-x', '265/65 R 17'),
(2, 2, 'montero-sport', '265/60 R 18'),
(3, 3, 'avanza', '185/65 R 15'),
(4, 3, 'fortuner', '265/60 R 18'),
(5, 5, 'cx-3', '215/50 R 18'),
(6, 5, '3', '205/60 R 16'),
(0, 0, 'car2', '265/60 R 18');

-- --------------------------------------------------------

--
-- Table structure for table `tb_oitm`
--

CREATE TABLE `tb_oitm` (
  `item_id` int(11) NOT NULL,
  `item_code` varchar(50) NOT NULL,
  `item_desc` varchar(50) NOT NULL,
  `item_stocks` int(11) NOT NULL,
  `item_size` varchar(50) NOT NULL,
  `item_LISR` varchar(50) NOT NULL,
  `pattern_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_oitm`
--

INSERT INTO `tb_oitm` (`item_id`, `item_code`, `item_desc`, `item_stocks`, `item_size`, `item_LISR`, `pattern_id`) VALUES
(1, 'A10440041', '265/65 R 17 65 6 OPAT2 LTR TL TOYO r17', 10, '265/65 R 17', '110 / T', 2),
(2, 'A12859', '265/65 R 17 65 6 OPHT LTR TL TOYO r17', 10, '265/65 R 17', '110 / S', 1),
(3, 'M18850362', '265/65 R 17 65 6 OPUT-M LTR TL TOYO r17', 10, '265/65 R 17', '112 / H', 3),
(4, 'M22083', '265/60 R 18 60 6 OPA32-M LTR TL TOYO r18', 10, '265/60 R 18', 'BLANK', 4),
(5, 'M19950344', '265/60 R 18 60 6 OPUT-M LTR TL TOYO r18', 10, '265/60 R 18', '112 / H', 3),
(6, 'A14615', '265/60 R 18 60 6 PXTSS LTR TL TOYO r18', 10, '265/60 R 18', 'BLANK', 5),
(7, 'M13122210', '185/65 R 15 65 4 NEO3-M PCR TL TOYO r15', 10, '185/65 R 15', 'BLANK', 6),
(8, 'A13350132', '215/50 R 18 50 4 PXR40 PCR TL TOYO r18', 10, '215/50 R 18', 'BLANK', 7),
(9, 'A14703', '205/60 R 16 60 4 NER38 PCR TL TOYO r16', 10, '205/60 R 16', 'BLANK', 8),
(10, 'A14241', '195 R 15 8 H07 LTR TL TOYO r15', 10, '195 R 15', 'BLANK', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pairings`
--

CREATE TABLE `tb_pairings` (
  `pairing_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `item_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pairings`
--

INSERT INTO `tb_pairings` (`pairing_id`, `car_id`, `model_id`, `item_code`) VALUES
(1, 1, 1, 'A10440041'),
(2, 1, 1, 'A12859'),
(3, 1, 1, 'M18850362'),
(4, 2, 2, 'M22083'),
(5, 2, 2, 'M19950344'),
(6, 2, 2, 'A14615'),
(7, 3, 3, 'M13122210'),
(8, 3, 4, 'M22083'),
(9, 3, 4, 'M19950344'),
(10, 3, 4, 'A14615'),
(11, 5, 5, 'A13350132'),
(12, 5, 6, 'A14703'),
(13, 0, 0, 'M22083'),
(14, 0, 0, 'M19950344'),
(15, 0, 0, 'A14615');

-- --------------------------------------------------------

--
-- Table structure for table `tb_patterns`
--

CREATE TABLE `tb_patterns` (
  `pattern_id` int(11) NOT NULL,
  `pattern` varchar(50) NOT NULL,
  `pattern_code` varchar(50) NOT NULL,
  `pattern_fullDesc` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_patterns`
--

INSERT INTO `tb_patterns` (`pattern_id`, `pattern`, `pattern_code`, `pattern_fullDesc`) VALUES
(1, 'Open Country HT ', 'OPHT', '<span>The Open Country Highway Terrain (Open Country H/T) 4x4 tire provides high levels of grip on wet or dry sealed roads, very low levels of tread noise and superior ride comfort.</span>'),
(2, 'Open Country AT II', 'OPATII', '<span>This versattle all-terrain tire offers excellent traction and tread life along with a blantantly aggressive tread design and quiet ride.</span><span>The Open Country All-Terrain (Open Country A/T II) is an industry-leading all-terrain 4WD tyre for drivers of 4x4s and SUVs looking for superior on-and-off-road performance.</span>'),
(3, 'Open Country UT ', 'OPUT', '<span>The all-new Open COuntry Urban-Terrain (Open Country U/T) represents Toyo Tire\'s best highway-terrain tyre yet, delivering safety, performance and value to a wide range of everday utes, 4x4s and SUVs.</span>'),
(4, 'Open Country A32', 'OPA32', '<span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><span>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span>'),
(5, 'Proxes T1 Sports', 'PROXEST1S', '<span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span>  <span>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span>'),
(6, 'Nano Energy 3', 'NE03', '<span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span>  <span>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span>'),
(7, 'Proxes R40', 'PROXESR40', '<span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span>  <span>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span>'),
(8, 'Nano Energy R 38', 'NER38', '<span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span>  <span>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span>'),
(9, 'Toyo H07', 'TOYO-H07', '<span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span>  <span>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sizeoptions`
--

CREATE TABLE `tb_sizeoptions` (
  `id` int(11) NOT NULL,
  `Twidth` varchar(500) NOT NULL,
  `Tratio` varchar(500) NOT NULL,
  `Trim` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_sizeoptions`
--

INSERT INTO `tb_sizeoptions` (`id`, `Twidth`, `Tratio`, `Trim`) VALUES
(1, '145,155,175,185,195,205,215,225,235,245,255,265,275,285,295,305,315,325,335,345,385,30,31,33,35,37,38,40', '45,50,55,60,65,70,75', '15,16,17,18,50,60');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-10-07 17:27:55', '2018-10-07 17:27:55', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://toyotires.localhost', 'yes'),
(2, 'home', 'http://toyotires.localhost', 'yes'),
(3, 'blogname', 'Toyo Tires', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'ibitswebsolutions@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:150:{s:41:\"um-api/([^/]+)/([^/]+)/([^/]+)/([^/]+)/?$\";s:111:\"index.php?um_page=api&um_action=$matches[1]&um_resource=$matches[2]&um_method=$matches[3]&um_verify=$matches[4]\";s:46:\"um-download/([^/]+)/([^/]+)/([^/]+)/([^/]+)/?$\";s:111:\"index.php?um_action=download&um_form=$matches[1]&um_field=$matches[2]&um_user=$matches[3]&um_verify=$matches[4]\";s:18:\"profile/([^/]+)/?$\";s:47:\"index.php?page_id=142&um_user=$matches[1]&lang=\";s:17:\"profile/([^/]+)?$\";s:46:\"index.php?page_id=142&um_tab=$matches[1]&lang=\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/um-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&um-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/um-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&um-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"um_form/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"um_form/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"um_form/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"um_form/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"um_form/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"um_form/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"um_form/([^/]+)/embed/?$\";s:40:\"index.php?um_form=$matches[1]&embed=true\";s:28:\"um_form/([^/]+)/trackback/?$\";s:34:\"index.php?um_form=$matches[1]&tb=1\";s:36:\"um_form/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?um_form=$matches[1]&paged=$matches[2]\";s:43:\"um_form/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?um_form=$matches[1]&cpage=$matches[2]\";s:33:\"um_form/([^/]+)/um-api(/(.*))?/?$\";s:48:\"index.php?um_form=$matches[1]&um-api=$matches[3]\";s:39:\"um_form/[^/]+/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:50:\"um_form/[^/]+/attachment/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:32:\"um_form/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?um_form=$matches[1]&page=$matches[2]\";s:24:\"um_form/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"um_form/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"um_form/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"um_form/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"um_form/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"um_form/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"um_directory/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"um_directory/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"um_directory/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"um_directory/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"um_directory/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"um_directory/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"um_directory/([^/]+)/embed/?$\";s:45:\"index.php?um_directory=$matches[1]&embed=true\";s:33:\"um_directory/([^/]+)/trackback/?$\";s:39:\"index.php?um_directory=$matches[1]&tb=1\";s:41:\"um_directory/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?um_directory=$matches[1]&paged=$matches[2]\";s:48:\"um_directory/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?um_directory=$matches[1]&cpage=$matches[2]\";s:38:\"um_directory/([^/]+)/um-api(/(.*))?/?$\";s:53:\"index.php?um_directory=$matches[1]&um-api=$matches[3]\";s:44:\"um_directory/[^/]+/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:55:\"um_directory/[^/]+/attachment/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:37:\"um_directory/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?um_directory=$matches[1]&page=$matches[2]\";s:29:\"um_directory/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"um_directory/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"um_directory/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"um_directory/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"um_directory/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"um_directory/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=45&cpage=$matches[1]\";s:17:\"um-api(/(.*))?/?$\";s:29:\"index.php?&um-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/um-api(/(.*))?/?$\";s:29:\"index.php?&um-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/um-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&um-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/um-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&um-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/um-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&um-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/um-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&um-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/um-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&um-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/um-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&um-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/um-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&um-api=$matches[3]\";s:31:\".?.+?/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:2;s:25:\"menu-image/menu-image.php\";i:3;s:35:\"ultimate-member/ultimate-member.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:53:\"C:\\xampp\\htdocs\\toyo/wp-content/themes/toyo/style.css\";i:2;s:57:\"C:\\xampp\\htdocs\\toyo/wp-content/themes/toyo/page-cars.php\";i:3;s:0:\"\";}', 'no'),
(40, 'template', 'toyo', 'yes'),
(41, 'stylesheet', 'toyo', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '45', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '32', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:79:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:24:\"manage_user_registration\";b:1;s:22:\"edit_user_registration\";b:1;s:22:\"read_user_registration\";b:1;s:24:\"delete_user_registration\";b:1;s:23:\"edit_user_registrations\";b:1;s:30:\"edit_others_user_registrations\";b:1;s:26:\"publish_user_registrations\";b:1;s:31:\"read_private_user_registrations\";b:1;s:25:\"delete_user_registrations\";b:1;s:33:\"delete_private_user_registrations\";b:1;s:35:\"delete_published_user_registrations\";b:1;s:32:\"delete_others_user_registrations\";b:1;s:31:\"edit_private_user_registrations\";b:1;s:33:\"edit_published_user_registrations\";b:1;s:30:\"manage_user_registration_terms\";b:1;s:28:\"edit_user_registration_terms\";b:1;s:30:\"delete_user_registration_terms\";b:1;s:30:\"assign_user_registration_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:9:{i:1544707675;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1544708855;a:1:{s:26:\"um_hourly_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1544716055;a:1:{s:30:\"um_twicedaily_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1544722075;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1544722084;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1544757444;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1544759255;a:2:{s:26:\"um_weekly_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:25:\"um_daily_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1544790230;a:1:{s:28:\"um_check_extensions_licenses\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1539054743;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.1\";s:7:\"version\";s:5:\"5.0.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.1\";s:7:\"version\";s:5:\"5.0.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.9.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.9.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.9-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.9-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9.9-partial-8.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.9-rollback-8.zip\";}s:7:\"current\";s:5:\"4.9.9\";s:7:\"version\";s:5:\"4.9.9\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:5:\"4.9.8\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1544705123;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(121, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1544705132;s:7:\"checked\";a:1:{s:4:\"toyo\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(125, 'can_compress_scripts', '1', 'no'),
(158, 'current_theme', 'Toyo Theme', 'yes'),
(159, 'theme_mods_toyo', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:2;s:12:\"primary-menu\";i:2;s:14:\"secondary-menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:157;}', 'yes'),
(160, 'theme_switched', '', 'yes'),
(161, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(166, 'recently_activated', 'a:0:{}', 'yes'),
(167, 'acf_version', '5.6.7', 'yes'),
(178, 'category_children', 'a:0:{}', 'yes'),
(259, 'user_registration_general_setting_login_options', 'admin_approval', 'yes'),
(260, 'user_registration_general_setting_disabled_user_roles', 'a:1:{i:0;s:10:\"subscriber\";}', 'yes'),
(261, 'user_registration_myaccount_page_id', '', 'yes'),
(262, 'user_registration_my_account_layout', 'horizontal', 'yes'),
(263, 'user_registration_myaccount_edit_profile_endpoint', 'edit-profile', 'yes'),
(264, 'user_registration_myaccount_change_password_endpoint', 'edit-password', 'yes'),
(265, 'user_registration_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(266, 'user_registration_logout_endpoint', 'user-logout', 'yes'),
(267, 'user_registration_integration_setting_recaptcha_site_key', '', 'yes'),
(268, 'user_registration_integration_setting_recaptcha_site_secret', '', 'yes'),
(269, 'user_registration_email_setting_disable_email', 'no', 'no'),
(270, 'user_registration_email_from_name', 'Toyo Tires', 'no'),
(271, 'user_registration_email_from_address', 'ibitswebsolutions@gmail.com', 'no'),
(272, 'user_registration_default_form_page_id', '135', 'yes'),
(277, 'user_registration_admin_notices', 'a:0:{}', 'yes'),
(282, 'user_registration_general_setting_redirect_options', '', 'yes'),
(283, 'WPLANG', '', 'yes'),
(284, 'new_admin_email', 'ibitswebsolutions@gmail.com', 'yes'),
(316, 'user_registration_login_options_form_template', 'default', 'yes'),
(317, 'user_registration_login_options_remember_me', 'yes', 'yes'),
(318, 'user_registration_login_options_lost_password', 'yes', 'yes'),
(319, 'user_registration_login_options_enable_recaptcha', 'no', 'yes'),
(320, 'user_registration_general_setting_registration_url_options', '', 'yes'),
(321, 'user_registration_general_setting_registration_label', 'Not a member yet? Register now.', 'yes'),
(335, 'user_registration_version', '1.4.9', 'yes'),
(336, 'user_registration_db_version', '1.4.9', 'yes'),
(339, 'um_last_version_upgrade', '2.0.29', 'yes'),
(340, 'um_first_activation_date', '1540525630', 'yes'),
(341, 'um_version', '2.0.29', 'yes'),
(342, '__ultimatemember_sitekey', 'toyotires.localhost-2TaK6mAu7BV1ubsw2ixJ', 'yes'),
(343, 'um_is_installed', '1', 'yes'),
(344, 'um_core_forms', 'a:3:{s:8:\"register\";i:137;s:5:\"login\";i:138;s:7:\"profile\";i:139;}', 'yes'),
(345, 'um_core_directories', 'a:1:{s:7:\"members\";i:140;}', 'yes'),
(346, 'um_options', 'a:152:{s:30:\"restricted_access_post_metabox\";a:2:{s:4:\"post\";i:1;s:4:\"page\";i:1;}s:19:\"uninstall_on_delete\";i:0;s:14:\"permalink_base\";s:10:\"user_login\";s:12:\"display_name\";s:9:\"full_name\";s:18:\"display_name_field\";s:0:\"\";s:15:\"author_redirect\";i:1;s:12:\"members_page\";i:1;s:13:\"use_gravatars\";i:0;s:37:\"use_um_gravatar_default_builtin_image\";s:7:\"default\";s:29:\"use_um_gravatar_default_image\";i:0;s:24:\"reset_require_strongpass\";i:0;s:20:\"account_tab_password\";i:1;s:19:\"account_tab_privacy\";i:1;s:25:\"account_tab_notifications\";i:1;s:18:\"account_tab_delete\";i:1;s:19:\"delete_account_text\";s:150:\"Are you sure you want to delete your account? This will erase all of your account data from the site. To delete your account enter your password below\";s:12:\"account_name\";i:1;s:20:\"account_name_disable\";i:0;s:20:\"account_name_require\";i:1;s:13:\"account_email\";i:1;s:25:\"account_hide_in_directory\";i:1;s:26:\"account_require_strongpass\";i:0;s:17:\"photo_thumb_sizes\";a:3:{i:0;i:40;i:1;i:80;i:2;i:190;}s:17:\"cover_thumb_sizes\";a:2:{i:0;i:300;i:1;i:600;}s:10:\"accessible\";i:0;s:15:\"access_redirect\";s:0:\"\";s:19:\"access_exclude_uris\";a:0:{}s:20:\"home_page_accessible\";i:1;s:24:\"category_page_accessible\";i:1;s:27:\"enable_reset_password_limit\";i:1;s:27:\"reset_password_limit_number\";i:3;s:14:\"blocked_emails\";s:0:\"\";s:13:\"blocked_words\";s:47:\"admin\r\nadministrator\r\nwebmaster\r\nsupport\r\nstaff\";s:14:\"default_avatar\";s:0:\"\";s:13:\"default_cover\";s:0:\"\";s:21:\"profile_show_metaicon\";i:0;s:12:\"profile_menu\";i:1;s:24:\"profile_menu_default_tab\";s:4:\"main\";s:18:\"profile_menu_icons\";i:1;s:13:\"form_asterisk\";i:0;s:13:\"profile_title\";s:28:\"{display_name} | {site_name}\";s:12:\"profile_desc\";s:83:\"{display_name} is on {site_name}. Join {site_name} to view {display_name}\'s profile\";s:11:\"admin_email\";s:27:\"ibitswebsolutions@gmail.com\";s:9:\"mail_from\";s:10:\"Toyo Tires\";s:14:\"mail_from_addr\";s:27:\"ibitswebsolutions@gmail.com\";s:10:\"email_html\";i:1;s:17:\"image_compression\";i:60;s:15:\"image_max_width\";i:1000;s:15:\"cover_min_width\";i:1000;s:22:\"profile_photo_max_size\";i:999999999;s:20:\"cover_photo_max_size\";i:999999999;s:22:\"custom_roles_increment\";i:1;s:16:\"profile_tab_main\";i:1;s:24:\"profile_tab_main_privacy\";i:0;s:22:\"profile_tab_main_roles\";s:0:\"\";s:17:\"profile_tab_posts\";i:1;s:25:\"profile_tab_posts_privacy\";i:0;s:23:\"profile_tab_posts_roles\";s:0:\"\";s:20:\"profile_tab_comments\";i:1;s:28:\"profile_tab_comments_privacy\";i:0;s:26:\"profile_tab_comments_roles\";s:0:\"\";s:16:\"welcome_email_on\";b:1;s:17:\"welcome_email_sub\";s:23:\"Welcome to {site_name}!\";s:13:\"welcome_email\";s:365:\"Hi {display_name},<br /><br />Thank you for signing up with {site_name}! Your account is now active.<br /><br />To login please visit the following url:<br /><br />{login_url} <br /><br />Your account e-mail: {email} <br />Your account username: {username} <br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}\";s:18:\"checkmail_email_on\";b:0;s:19:\"checkmail_email_sub\";s:28:\"Please activate your account\";s:15:\"checkmail_email\";s:304:\"Hi {display_name},<br /><br />Thank you for signing up with {site_name}! To activate your account, please click the link below to confirm your email address:<br /><br />{account_activation_link} <br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks, <br />{site_name}\";s:16:\"pending_email_on\";s:1:\"1\";s:17:\"pending_email_sub\";s:30:\"[{site_name}] New user account\";s:13:\"pending_email\";s:309:\"Hi {display_name}, <br /><br />Thank you for signing up with {site_name}! Your account is currently being reviewed by a member of our team.<br /><br />Please allow us some time to process your request.<br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}\";s:17:\"approved_email_on\";b:0;s:18:\"approved_email_sub\";s:41:\"Your account at {site_name} is now active\";s:14:\"approved_email\";s:438:\"Hi {display_name},<br /><br />Thank you for signing up with {site_name}! Your account has been approved and is now active.<br /><br />To login please visit the following url:<br /><br />{login_url}<br /><br />Your account e-mail: {email}<br />Your account username: {username}<br />Set your account password: {password_reset_link}<br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}\";s:17:\"rejected_email_on\";b:0;s:18:\"rejected_email_sub\";s:30:\"Your account has been rejected\";s:14:\"rejected_email\";s:288:\"Hi {display_name},<br /><br />Thank you for applying for membership to {site_name}! We have reviewed your information and unfortunately we are unable to accept you as a member at this moment.<br /><br />Please feel free to apply again at a future date.<br /><br />Thanks,<br />{site_name}\";s:17:\"inactive_email_on\";b:1;s:18:\"inactive_email_sub\";s:33:\"Your account has been deactivated\";s:14:\"inactive_email\";s:250:\"Hi {display_name},<br /><br />This is an automated email to let you know your {site_name} account has been deactivated.<br /><br />If you would like your account to be reactivated please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}\";s:17:\"deletion_email_on\";b:1;s:18:\"deletion_email_sub\";s:29:\"Your account has been deleted\";s:14:\"deletion_email\";s:355:\"Hi {display_name},<br /><br />This is an automated email to let you know your {site_name} account has been deleted. All of your personal information has been permanently deleted and you will no longer be able to login to {site_name}.<br /><br />If your account has been deleted by accident please contact us at {admin_email} <br />Thanks,<br />{site_name}\";s:16:\"resetpw_email_on\";b:1;s:17:\"resetpw_email_sub\";s:19:\"Reset your password\";s:13:\"resetpw_email\";s:303:\"Hi {display_name},<br /><br />We received a request to reset the password for your account. If you made this request, click the link below to change your password:<br /><br />{password_reset_link}<br /><br />If you didn\'t make this request, you can ignore this email <br /><br />Thanks,<br />{site_name}\";s:18:\"changedpw_email_on\";b:1;s:19:\"changedpw_email_sub\";s:42:\"Your {site_name} password has been changed\";s:15:\"changedpw_email\";s:307:\"Hi {display_name},<br /><br />You recently changed the password associated with your {site_name} account.<br /><br />If you did not make this change and believe your {site_name} account has been compromised, please contact us at the following email address: {admin_email}<br /><br />Thanks,<br />{site_name}\";s:23:\"changedaccount_email_on\";b:1;s:24:\"changedaccount_email_sub\";s:39:\"Your account at {site_name} was updated\";s:20:\"changedaccount_email\";s:278:\"Hi {display_name},<br /><br />You recently updated your {site_name} account.<br /><br />If you did not make this change and believe your {site_name} account has been compromised, please contact us at the following email address: {admin_email}<br /><br />Thanks,<br />{site_name}\";s:24:\"notification_new_user_on\";b:1;s:25:\"notification_new_user_sub\";s:30:\"[{site_name}] New user account\";s:21:\"notification_new_user\";s:211:\"{display_name} has just created an account on {site_name}. To view their profile click here:<br /><br />{user_profile_link}<br /><br />Here is the submitted registration form:<br /><br />{submitted_registration}\";s:22:\"notification_review_on\";s:1:\"1\";s:23:\"notification_review_sub\";s:38:\"[{site_name}] New user awaiting review\";s:19:\"notification_review\";s:277:\"{display_name} has just applied for membership to {site_name} and is waiting to be reviewed.<br /><br />To review this member please click the following link:<br /><br />{user_profile_link}<br /><br />Here is the submitted registration form:<br /><br />{submitted_registration}\";s:24:\"notification_deletion_on\";b:0;s:25:\"notification_deletion_sub\";s:29:\"[{site_name}] Account deleted\";s:21:\"notification_deletion\";s:58:\"{display_name} has just deleted their {site_name} account.\";s:9:\"core_user\";s:3:\"142\";s:10:\"core_login\";s:3:\"115\";s:13:\"core_register\";s:3:\"117\";s:12:\"core_members\";s:3:\"144\";s:11:\"core_logout\";s:3:\"146\";s:12:\"core_account\";s:3:\"142\";s:19:\"core_password-reset\";s:3:\"146\";s:17:\"profile_show_name\";i:1;s:25:\"profile_show_social_links\";i:0;s:16:\"profile_show_bio\";i:1;s:21:\"profile_show_html_bio\";i:0;s:20:\"profile_bio_maxchars\";i:180;s:19:\"profile_header_menu\";s:2:\"bc\";s:18:\"profile_empty_text\";i:1;s:22:\"profile_empty_text_emo\";i:1;s:12:\"profile_role\";a:0:{}s:16:\"profile_template\";s:7:\"profile\";s:17:\"profile_max_width\";s:6:\"1000px\";s:22:\"profile_area_max_width\";s:5:\"600px\";s:13:\"profile_align\";s:6:\"center\";s:13:\"profile_icons\";s:5:\"label\";s:21:\"profile_cover_enabled\";i:1;s:19:\"profile_cover_ratio\";s:5:\"2.7:1\";s:17:\"profile_photosize\";s:5:\"190px\";s:19:\"profile_photocorner\";s:1:\"1\";s:17:\"profile_header_bg\";s:0:\"\";s:24:\"profile_primary_btn_word\";s:14:\"Update Profile\";s:21:\"profile_secondary_btn\";s:1:\"1\";s:26:\"profile_secondary_btn_word\";s:6:\"Cancel\";s:13:\"register_role\";s:1:\"0\";s:17:\"register_template\";s:8:\"register\";s:18:\"register_max_width\";s:5:\"450px\";s:14:\"register_align\";s:6:\"center\";s:14:\"register_icons\";s:5:\"label\";s:25:\"register_primary_btn_word\";s:8:\"Register\";s:22:\"register_secondary_btn\";i:1;s:27:\"register_secondary_btn_word\";s:5:\"Login\";s:26:\"register_secondary_btn_url\";s:0:\"\";s:14:\"login_template\";s:5:\"login\";s:15:\"login_max_width\";s:5:\"450px\";s:11:\"login_align\";s:6:\"center\";s:11:\"login_icons\";s:5:\"label\";s:22:\"login_primary_btn_word\";s:5:\"Login\";s:22:\"login_forgot_pass_link\";s:1:\"1\";s:21:\"login_show_rememberme\";s:1:\"1\";s:19:\"login_secondary_btn\";s:1:\"1\";s:24:\"login_secondary_btn_word\";s:8:\"Register\";s:23:\"login_secondary_btn_url\";s:0:\"\";s:18:\"directory_template\";s:7:\"members\";s:16:\"directory_header\";s:21:\"{total_users} Members\";s:23:\"directory_header_single\";s:20:\"{total_users} Member\";s:14:\"pages_settings\";s:0:\"\";}', 'yes'),
(347, 'um_role_subscriber_meta', 'a:14:{s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}', 'yes'),
(348, 'um_role_author_meta', 'a:14:{s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}', 'yes'),
(349, 'um_role_contributor_meta', 'a:14:{s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}', 'yes'),
(350, 'um_role_editor_meta', 'a:14:{s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}', 'yes'),
(351, 'um_role_administrator_meta', 'a:14:{s:22:\"_um_can_access_wpadmin\";i:1;s:24:\"_um_can_not_see_adminbar\";i:0;s:21:\"_um_can_edit_everyone\";i:1;s:23:\"_um_can_delete_everyone\";i:1;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:20:\"_um_default_homepage\";i:1;s:15:\"_um_after_login\";s:14:\"redirect_admin\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:1;s:30:\"_um_can_access_private_profile\";i:1;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}', 'yes'),
(352, 'widget_um_search_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(357, 'um_cache_fonticons', 'a:1218:{i:0;s:13:\"um-icon-alert\";i:1;s:21:\"um-icon-alert-circled\";i:2;s:19:\"um-icon-android-add\";i:3;s:26:\"um-icon-android-add-circle\";i:4;s:27:\"um-icon-android-alarm-clock\";i:5;s:21:\"um-icon-android-alert\";i:6;s:20:\"um-icon-android-apps\";i:7;s:23:\"um-icon-android-archive\";i:8;s:26:\"um-icon-android-arrow-back\";i:9;s:26:\"um-icon-android-arrow-down\";i:10;s:30:\"um-icon-android-arrow-dropdown\";i:11;s:37:\"um-icon-android-arrow-dropdown-circle\";i:12;s:30:\"um-icon-android-arrow-dropleft\";i:13;s:37:\"um-icon-android-arrow-dropleft-circle\";i:14;s:31:\"um-icon-android-arrow-dropright\";i:15;s:38:\"um-icon-android-arrow-dropright-circle\";i:16;s:28:\"um-icon-android-arrow-dropup\";i:17;s:35:\"um-icon-android-arrow-dropup-circle\";i:18;s:29:\"um-icon-android-arrow-forward\";i:19;s:24:\"um-icon-android-arrow-up\";i:20;s:22:\"um-icon-android-attach\";i:21;s:19:\"um-icon-android-bar\";i:22;s:23:\"um-icon-android-bicycle\";i:23;s:20:\"um-icon-android-boat\";i:24;s:24:\"um-icon-android-bookmark\";i:25;s:20:\"um-icon-android-bulb\";i:26;s:19:\"um-icon-android-bus\";i:27;s:24:\"um-icon-android-calendar\";i:28;s:20:\"um-icon-android-call\";i:29;s:22:\"um-icon-android-camera\";i:30;s:22:\"um-icon-android-cancel\";i:31;s:19:\"um-icon-android-car\";i:32;s:20:\"um-icon-android-cart\";i:33;s:20:\"um-icon-android-chat\";i:34;s:24:\"um-icon-android-checkbox\";i:35;s:30:\"um-icon-android-checkbox-blank\";i:36;s:32:\"um-icon-android-checkbox-outline\";i:37;s:38:\"um-icon-android-checkbox-outline-blank\";i:38;s:32:\"um-icon-android-checkmark-circle\";i:39;s:25:\"um-icon-android-clipboard\";i:40;s:21:\"um-icon-android-close\";i:41;s:21:\"um-icon-android-cloud\";i:42;s:28:\"um-icon-android-cloud-circle\";i:43;s:26:\"um-icon-android-cloud-done\";i:44;s:29:\"um-icon-android-cloud-outline\";i:45;s:29:\"um-icon-android-color-palette\";i:46;s:23:\"um-icon-android-compass\";i:47;s:23:\"um-icon-android-contact\";i:48;s:24:\"um-icon-android-contacts\";i:49;s:24:\"um-icon-android-contract\";i:50;s:22:\"um-icon-android-create\";i:51;s:22:\"um-icon-android-delete\";i:52;s:23:\"um-icon-android-desktop\";i:53;s:24:\"um-icon-android-document\";i:54;s:20:\"um-icon-android-done\";i:55;s:24:\"um-icon-android-done-all\";i:56;s:24:\"um-icon-android-download\";i:57;s:22:\"um-icon-android-drafts\";i:58;s:20:\"um-icon-android-exit\";i:59;s:22:\"um-icon-android-expand\";i:60;s:24:\"um-icon-android-favorite\";i:61;s:32:\"um-icon-android-favorite-outline\";i:62;s:20:\"um-icon-android-film\";i:63;s:22:\"um-icon-android-folder\";i:64;s:27:\"um-icon-android-folder-open\";i:65;s:22:\"um-icon-android-funnel\";i:66;s:21:\"um-icon-android-globe\";i:67;s:20:\"um-icon-android-hand\";i:68;s:23:\"um-icon-android-hangout\";i:69;s:21:\"um-icon-android-happy\";i:70;s:20:\"um-icon-android-home\";i:71;s:21:\"um-icon-android-image\";i:72;s:22:\"um-icon-android-laptop\";i:73;s:20:\"um-icon-android-list\";i:74;s:22:\"um-icon-android-locate\";i:75;s:20:\"um-icon-android-lock\";i:76;s:20:\"um-icon-android-mail\";i:77;s:19:\"um-icon-android-map\";i:78;s:20:\"um-icon-android-menu\";i:79;s:26:\"um-icon-android-microphone\";i:80;s:30:\"um-icon-android-microphone-off\";i:81;s:31:\"um-icon-android-more-horizontal\";i:82;s:29:\"um-icon-android-more-vertical\";i:83;s:24:\"um-icon-android-navigate\";i:84;s:29:\"um-icon-android-notifications\";i:85;s:34:\"um-icon-android-notifications-none\";i:86;s:33:\"um-icon-android-notifications-off\";i:87;s:20:\"um-icon-android-open\";i:88;s:23:\"um-icon-android-options\";i:89;s:22:\"um-icon-android-people\";i:90;s:22:\"um-icon-android-person\";i:91;s:26:\"um-icon-android-person-add\";i:92;s:31:\"um-icon-android-phone-landscape\";i:93;s:30:\"um-icon-android-phone-portrait\";i:94;s:19:\"um-icon-android-pin\";i:95;s:21:\"um-icon-android-plane\";i:96;s:25:\"um-icon-android-playstore\";i:97;s:21:\"um-icon-android-print\";i:98;s:32:\"um-icon-android-radio-button-off\";i:99;s:31:\"um-icon-android-radio-button-on\";i:100;s:23:\"um-icon-android-refresh\";i:101;s:22:\"um-icon-android-remove\";i:102;s:29:\"um-icon-android-remove-circle\";i:103;s:26:\"um-icon-android-restaurant\";i:104;s:19:\"um-icon-android-sad\";i:105;s:22:\"um-icon-android-search\";i:106;s:20:\"um-icon-android-send\";i:107;s:24:\"um-icon-android-settings\";i:108;s:21:\"um-icon-android-share\";i:109;s:25:\"um-icon-android-share-alt\";i:110;s:20:\"um-icon-android-star\";i:111;s:25:\"um-icon-android-star-half\";i:112;s:28:\"um-icon-android-star-outline\";i:113;s:25:\"um-icon-android-stopwatch\";i:114;s:22:\"um-icon-android-subway\";i:115;s:21:\"um-icon-android-sunny\";i:116;s:20:\"um-icon-android-sync\";i:117;s:23:\"um-icon-android-textsms\";i:118;s:20:\"um-icon-android-time\";i:119;s:21:\"um-icon-android-train\";i:120;s:22:\"um-icon-android-unlock\";i:121;s:22:\"um-icon-android-upload\";i:122;s:27:\"um-icon-android-volume-down\";i:123;s:27:\"um-icon-android-volume-mute\";i:124;s:26:\"um-icon-android-volume-off\";i:125;s:25:\"um-icon-android-volume-up\";i:126;s:20:\"um-icon-android-walk\";i:127;s:23:\"um-icon-android-warning\";i:128;s:21:\"um-icon-android-watch\";i:129;s:20:\"um-icon-android-wifi\";i:130;s:16:\"um-icon-aperture\";i:131;s:15:\"um-icon-archive\";i:132;s:20:\"um-icon-arrow-down-a\";i:133;s:20:\"um-icon-arrow-down-b\";i:134;s:20:\"um-icon-arrow-down-c\";i:135;s:20:\"um-icon-arrow-expand\";i:136;s:29:\"um-icon-arrow-graph-down-left\";i:137;s:30:\"um-icon-arrow-graph-down-right\";i:138;s:27:\"um-icon-arrow-graph-up-left\";i:139;s:28:\"um-icon-arrow-graph-up-right\";i:140;s:20:\"um-icon-arrow-left-a\";i:141;s:20:\"um-icon-arrow-left-b\";i:142;s:20:\"um-icon-arrow-left-c\";i:143;s:18:\"um-icon-arrow-move\";i:144;s:20:\"um-icon-arrow-resize\";i:145;s:25:\"um-icon-arrow-return-left\";i:146;s:26:\"um-icon-arrow-return-right\";i:147;s:21:\"um-icon-arrow-right-a\";i:148;s:21:\"um-icon-arrow-right-b\";i:149;s:21:\"um-icon-arrow-right-c\";i:150;s:20:\"um-icon-arrow-shrink\";i:151;s:18:\"um-icon-arrow-swap\";i:152;s:18:\"um-icon-arrow-up-a\";i:153;s:18:\"um-icon-arrow-up-b\";i:154;s:18:\"um-icon-arrow-up-c\";i:155;s:16:\"um-icon-asterisk\";i:156;s:10:\"um-icon-at\";i:157;s:17:\"um-icon-backspace\";i:158;s:25:\"um-icon-backspace-outline\";i:159;s:11:\"um-icon-bag\";i:160;s:24:\"um-icon-battery-charging\";i:161;s:21:\"um-icon-battery-empty\";i:162;s:20:\"um-icon-battery-full\";i:163;s:20:\"um-icon-battery-half\";i:164;s:19:\"um-icon-battery-low\";i:165;s:14:\"um-icon-beaker\";i:166;s:12:\"um-icon-beer\";i:167;s:17:\"um-icon-bluetooth\";i:168;s:15:\"um-icon-bonfire\";i:169;s:16:\"um-icon-bookmark\";i:170;s:14:\"um-icon-bowtie\";i:171;s:17:\"um-icon-briefcase\";i:172;s:11:\"um-icon-bug\";i:173;s:18:\"um-icon-calculator\";i:174;s:16:\"um-icon-calendar\";i:175;s:14:\"um-icon-camera\";i:176;s:12:\"um-icon-card\";i:177;s:12:\"um-icon-cash\";i:178;s:15:\"um-icon-chatbox\";i:179;s:23:\"um-icon-chatbox-working\";i:180;s:17:\"um-icon-chatboxes\";i:181;s:18:\"um-icon-chatbubble\";i:182;s:26:\"um-icon-chatbubble-working\";i:183;s:19:\"um-icon-chatbubbles\";i:184;s:17:\"um-icon-checkmark\";i:185;s:25:\"um-icon-checkmark-circled\";i:186;s:23:\"um-icon-checkmark-round\";i:187;s:20:\"um-icon-chevron-down\";i:188;s:20:\"um-icon-chevron-left\";i:189;s:21:\"um-icon-chevron-right\";i:190;s:18:\"um-icon-chevron-up\";i:191;s:17:\"um-icon-clipboard\";i:192;s:13:\"um-icon-clock\";i:193;s:13:\"um-icon-close\";i:194;s:21:\"um-icon-close-circled\";i:195;s:19:\"um-icon-close-round\";i:196;s:25:\"um-icon-closed-captioning\";i:197;s:13:\"um-icon-cloud\";i:198;s:12:\"um-icon-code\";i:199;s:21:\"um-icon-code-download\";i:200;s:20:\"um-icon-code-working\";i:201;s:14:\"um-icon-coffee\";i:202;s:15:\"um-icon-compass\";i:203;s:15:\"um-icon-compose\";i:204;s:23:\"um-icon-connection-bars\";i:205;s:16:\"um-icon-contrast\";i:206;s:12:\"um-icon-crop\";i:207;s:12:\"um-icon-cube\";i:208;s:12:\"um-icon-disc\";i:209;s:16:\"um-icon-document\";i:210;s:21:\"um-icon-document-text\";i:211;s:12:\"um-icon-drag\";i:212;s:13:\"um-icon-earth\";i:213;s:13:\"um-icon-easel\";i:214;s:12:\"um-icon-edit\";i:215;s:11:\"um-icon-egg\";i:216;s:13:\"um-icon-eject\";i:217;s:13:\"um-icon-email\";i:218;s:20:\"um-icon-email-unread\";i:219;s:24:\"um-icon-erlenmeyer-flask\";i:220;s:32:\"um-icon-erlenmeyer-flask-bubbles\";i:221;s:11:\"um-icon-eye\";i:222;s:20:\"um-icon-eye-disabled\";i:223;s:14:\"um-icon-female\";i:224;s:14:\"um-icon-filing\";i:225;s:19:\"um-icon-film-marker\";i:226;s:16:\"um-icon-fireball\";i:227;s:12:\"um-icon-flag\";i:228;s:13:\"um-icon-flame\";i:229;s:13:\"um-icon-flash\";i:230;s:17:\"um-icon-flash-off\";i:231;s:14:\"um-icon-folder\";i:232;s:12:\"um-icon-fork\";i:233;s:17:\"um-icon-fork-repo\";i:234;s:15:\"um-icon-forward\";i:235;s:14:\"um-icon-funnel\";i:236;s:14:\"um-icon-gear-a\";i:237;s:14:\"um-icon-gear-b\";i:238;s:12:\"um-icon-grid\";i:239;s:14:\"um-icon-hammer\";i:240;s:13:\"um-icon-happy\";i:241;s:21:\"um-icon-happy-outline\";i:242;s:17:\"um-icon-headphone\";i:243;s:13:\"um-icon-heart\";i:244;s:20:\"um-icon-heart-broken\";i:245;s:12:\"um-icon-help\";i:246;s:17:\"um-icon-help-buoy\";i:247;s:20:\"um-icon-help-circled\";i:248;s:12:\"um-icon-home\";i:249;s:16:\"um-icon-icecream\";i:250;s:13:\"um-icon-image\";i:251;s:14:\"um-icon-images\";i:252;s:19:\"um-icon-information\";i:253;s:27:\"um-icon-information-circled\";i:254;s:13:\"um-icon-ionic\";i:255;s:17:\"um-icon-ios-alarm\";i:256;s:25:\"um-icon-ios-alarm-outline\";i:257;s:18:\"um-icon-ios-albums\";i:258;s:26:\"um-icon-ios-albums-outline\";i:259;s:28:\"um-icon-ios-americanfootball\";i:260;s:36:\"um-icon-ios-americanfootball-outline\";i:261;s:21:\"um-icon-ios-analytics\";i:262;s:29:\"um-icon-ios-analytics-outline\";i:263;s:22:\"um-icon-ios-arrow-back\";i:264;s:22:\"um-icon-ios-arrow-down\";i:265;s:25:\"um-icon-ios-arrow-forward\";i:266;s:22:\"um-icon-ios-arrow-left\";i:267;s:23:\"um-icon-ios-arrow-right\";i:268;s:27:\"um-icon-ios-arrow-thin-down\";i:269;s:27:\"um-icon-ios-arrow-thin-left\";i:270;s:28:\"um-icon-ios-arrow-thin-right\";i:271;s:25:\"um-icon-ios-arrow-thin-up\";i:272;s:20:\"um-icon-ios-arrow-up\";i:273;s:14:\"um-icon-ios-at\";i:274;s:22:\"um-icon-ios-at-outline\";i:275;s:19:\"um-icon-ios-barcode\";i:276;s:27:\"um-icon-ios-barcode-outline\";i:277;s:20:\"um-icon-ios-baseball\";i:278;s:28:\"um-icon-ios-baseball-outline\";i:279;s:22:\"um-icon-ios-basketball\";i:280;s:30:\"um-icon-ios-basketball-outline\";i:281;s:16:\"um-icon-ios-bell\";i:282;s:24:\"um-icon-ios-bell-outline\";i:283;s:16:\"um-icon-ios-body\";i:284;s:24:\"um-icon-ios-body-outline\";i:285;s:16:\"um-icon-ios-bolt\";i:286;s:24:\"um-icon-ios-bolt-outline\";i:287;s:16:\"um-icon-ios-book\";i:288;s:24:\"um-icon-ios-book-outline\";i:289;s:21:\"um-icon-ios-bookmarks\";i:290;s:29:\"um-icon-ios-bookmarks-outline\";i:291;s:15:\"um-icon-ios-box\";i:292;s:23:\"um-icon-ios-box-outline\";i:293;s:21:\"um-icon-ios-briefcase\";i:294;s:29:\"um-icon-ios-briefcase-outline\";i:295;s:20:\"um-icon-ios-browsers\";i:296;s:28:\"um-icon-ios-browsers-outline\";i:297;s:22:\"um-icon-ios-calculator\";i:298;s:30:\"um-icon-ios-calculator-outline\";i:299;s:20:\"um-icon-ios-calendar\";i:300;s:28:\"um-icon-ios-calendar-outline\";i:301;s:18:\"um-icon-ios-camera\";i:302;s:26:\"um-icon-ios-camera-outline\";i:303;s:16:\"um-icon-ios-cart\";i:304;s:24:\"um-icon-ios-cart-outline\";i:305;s:21:\"um-icon-ios-chatboxes\";i:306;s:29:\"um-icon-ios-chatboxes-outline\";i:307;s:22:\"um-icon-ios-chatbubble\";i:308;s:30:\"um-icon-ios-chatbubble-outline\";i:309;s:21:\"um-icon-ios-checkmark\";i:310;s:27:\"um-icon-ios-checkmark-empty\";i:311;s:29:\"um-icon-ios-checkmark-outline\";i:312;s:25:\"um-icon-ios-circle-filled\";i:313;s:26:\"um-icon-ios-circle-outline\";i:314;s:17:\"um-icon-ios-clock\";i:315;s:25:\"um-icon-ios-clock-outline\";i:316;s:17:\"um-icon-ios-close\";i:317;s:23:\"um-icon-ios-close-empty\";i:318;s:25:\"um-icon-ios-close-outline\";i:319;s:17:\"um-icon-ios-cloud\";i:320;s:26:\"um-icon-ios-cloud-download\";i:321;s:34:\"um-icon-ios-cloud-download-outline\";i:322;s:25:\"um-icon-ios-cloud-outline\";i:323;s:24:\"um-icon-ios-cloud-upload\";i:324;s:32:\"um-icon-ios-cloud-upload-outline\";i:325;s:18:\"um-icon-ios-cloudy\";i:326;s:24:\"um-icon-ios-cloudy-night\";i:327;s:32:\"um-icon-ios-cloudy-night-outline\";i:328;s:26:\"um-icon-ios-cloudy-outline\";i:329;s:15:\"um-icon-ios-cog\";i:330;s:23:\"um-icon-ios-cog-outline\";i:331;s:24:\"um-icon-ios-color-filter\";i:332;s:32:\"um-icon-ios-color-filter-outline\";i:333;s:22:\"um-icon-ios-color-wand\";i:334;s:30:\"um-icon-ios-color-wand-outline\";i:335;s:19:\"um-icon-ios-compose\";i:336;s:27:\"um-icon-ios-compose-outline\";i:337;s:19:\"um-icon-ios-contact\";i:338;s:27:\"um-icon-ios-contact-outline\";i:339;s:16:\"um-icon-ios-copy\";i:340;s:24:\"um-icon-ios-copy-outline\";i:341;s:16:\"um-icon-ios-crop\";i:342;s:23:\"um-icon-ios-crop-strong\";i:343;s:20:\"um-icon-ios-download\";i:344;s:28:\"um-icon-ios-download-outline\";i:345;s:16:\"um-icon-ios-drag\";i:346;s:17:\"um-icon-ios-email\";i:347;s:25:\"um-icon-ios-email-outline\";i:348;s:15:\"um-icon-ios-eye\";i:349;s:23:\"um-icon-ios-eye-outline\";i:350;s:23:\"um-icon-ios-fastforward\";i:351;s:31:\"um-icon-ios-fastforward-outline\";i:352;s:18:\"um-icon-ios-filing\";i:353;s:26:\"um-icon-ios-filing-outline\";i:354;s:16:\"um-icon-ios-film\";i:355;s:24:\"um-icon-ios-film-outline\";i:356;s:16:\"um-icon-ios-flag\";i:357;s:24:\"um-icon-ios-flag-outline\";i:358;s:17:\"um-icon-ios-flame\";i:359;s:25:\"um-icon-ios-flame-outline\";i:360;s:17:\"um-icon-ios-flask\";i:361;s:25:\"um-icon-ios-flask-outline\";i:362;s:18:\"um-icon-ios-flower\";i:363;s:26:\"um-icon-ios-flower-outline\";i:364;s:18:\"um-icon-ios-folder\";i:365;s:26:\"um-icon-ios-folder-outline\";i:366;s:20:\"um-icon-ios-football\";i:367;s:28:\"um-icon-ios-football-outline\";i:368;s:29:\"um-icon-ios-game-controller-a\";i:369;s:37:\"um-icon-ios-game-controller-a-outline\";i:370;s:29:\"um-icon-ios-game-controller-b\";i:371;s:37:\"um-icon-ios-game-controller-b-outline\";i:372;s:16:\"um-icon-ios-gear\";i:373;s:24:\"um-icon-ios-gear-outline\";i:374;s:19:\"um-icon-ios-glasses\";i:375;s:27:\"um-icon-ios-glasses-outline\";i:376;s:21:\"um-icon-ios-grid-view\";i:377;s:29:\"um-icon-ios-grid-view-outline\";i:378;s:17:\"um-icon-ios-heart\";i:379;s:25:\"um-icon-ios-heart-outline\";i:380;s:16:\"um-icon-ios-help\";i:381;s:22:\"um-icon-ios-help-empty\";i:382;s:24:\"um-icon-ios-help-outline\";i:383;s:16:\"um-icon-ios-home\";i:384;s:24:\"um-icon-ios-home-outline\";i:385;s:20:\"um-icon-ios-infinite\";i:386;s:28:\"um-icon-ios-infinite-outline\";i:387;s:23:\"um-icon-ios-information\";i:388;s:29:\"um-icon-ios-information-empty\";i:389;s:31:\"um-icon-ios-information-outline\";i:390;s:25:\"um-icon-ios-ionic-outline\";i:391;s:18:\"um-icon-ios-keypad\";i:392;s:26:\"um-icon-ios-keypad-outline\";i:393;s:21:\"um-icon-ios-lightbulb\";i:394;s:29:\"um-icon-ios-lightbulb-outline\";i:395;s:16:\"um-icon-ios-list\";i:396;s:24:\"um-icon-ios-list-outline\";i:397;s:20:\"um-icon-ios-location\";i:398;s:28:\"um-icon-ios-location-outline\";i:399;s:18:\"um-icon-ios-locked\";i:400;s:26:\"um-icon-ios-locked-outline\";i:401;s:16:\"um-icon-ios-loop\";i:402;s:23:\"um-icon-ios-loop-strong\";i:403;s:19:\"um-icon-ios-medical\";i:404;s:27:\"um-icon-ios-medical-outline\";i:405;s:18:\"um-icon-ios-medkit\";i:406;s:26:\"um-icon-ios-medkit-outline\";i:407;s:15:\"um-icon-ios-mic\";i:408;s:19:\"um-icon-ios-mic-off\";i:409;s:23:\"um-icon-ios-mic-outline\";i:410;s:17:\"um-icon-ios-minus\";i:411;s:23:\"um-icon-ios-minus-empty\";i:412;s:25:\"um-icon-ios-minus-outline\";i:413;s:19:\"um-icon-ios-monitor\";i:414;s:27:\"um-icon-ios-monitor-outline\";i:415;s:16:\"um-icon-ios-moon\";i:416;s:24:\"um-icon-ios-moon-outline\";i:417;s:16:\"um-icon-ios-more\";i:418;s:24:\"um-icon-ios-more-outline\";i:419;s:24:\"um-icon-ios-musical-note\";i:420;s:25:\"um-icon-ios-musical-notes\";i:421;s:20:\"um-icon-ios-navigate\";i:422;s:28:\"um-icon-ios-navigate-outline\";i:423;s:21:\"um-icon-ios-nutrition\";i:424;s:29:\"um-icon-ios-nutrition-outline\";i:425;s:17:\"um-icon-ios-paper\";i:426;s:25:\"um-icon-ios-paper-outline\";i:427;s:22:\"um-icon-ios-paperplane\";i:428;s:30:\"um-icon-ios-paperplane-outline\";i:429;s:23:\"um-icon-ios-partlysunny\";i:430;s:31:\"um-icon-ios-partlysunny-outline\";i:431;s:17:\"um-icon-ios-pause\";i:432;s:25:\"um-icon-ios-pause-outline\";i:433;s:15:\"um-icon-ios-paw\";i:434;s:23:\"um-icon-ios-paw-outline\";i:435;s:18:\"um-icon-ios-people\";i:436;s:26:\"um-icon-ios-people-outline\";i:437;s:18:\"um-icon-ios-person\";i:438;s:26:\"um-icon-ios-person-outline\";i:439;s:21:\"um-icon-ios-personadd\";i:440;s:29:\"um-icon-ios-personadd-outline\";i:441;s:18:\"um-icon-ios-photos\";i:442;s:26:\"um-icon-ios-photos-outline\";i:443;s:15:\"um-icon-ios-pie\";i:444;s:23:\"um-icon-ios-pie-outline\";i:445;s:16:\"um-icon-ios-pint\";i:446;s:24:\"um-icon-ios-pint-outline\";i:447;s:16:\"um-icon-ios-play\";i:448;s:24:\"um-icon-ios-play-outline\";i:449;s:16:\"um-icon-ios-plus\";i:450;s:22:\"um-icon-ios-plus-empty\";i:451;s:24:\"um-icon-ios-plus-outline\";i:452;s:20:\"um-icon-ios-pricetag\";i:453;s:28:\"um-icon-ios-pricetag-outline\";i:454;s:21:\"um-icon-ios-pricetags\";i:455;s:29:\"um-icon-ios-pricetags-outline\";i:456;s:19:\"um-icon-ios-printer\";i:457;s:27:\"um-icon-ios-printer-outline\";i:458;s:17:\"um-icon-ios-pulse\";i:459;s:24:\"um-icon-ios-pulse-strong\";i:460;s:17:\"um-icon-ios-rainy\";i:461;s:25:\"um-icon-ios-rainy-outline\";i:462;s:21:\"um-icon-ios-recording\";i:463;s:29:\"um-icon-ios-recording-outline\";i:464;s:16:\"um-icon-ios-redo\";i:465;s:24:\"um-icon-ios-redo-outline\";i:466;s:19:\"um-icon-ios-refresh\";i:467;s:25:\"um-icon-ios-refresh-empty\";i:468;s:27:\"um-icon-ios-refresh-outline\";i:469;s:18:\"um-icon-ios-reload\";i:470;s:26:\"um-icon-ios-reverse-camera\";i:471;s:34:\"um-icon-ios-reverse-camera-outline\";i:472;s:18:\"um-icon-ios-rewind\";i:473;s:26:\"um-icon-ios-rewind-outline\";i:474;s:16:\"um-icon-ios-rose\";i:475;s:24:\"um-icon-ios-rose-outline\";i:476;s:18:\"um-icon-ios-search\";i:477;s:25:\"um-icon-ios-search-strong\";i:478;s:20:\"um-icon-ios-settings\";i:479;s:27:\"um-icon-ios-settings-strong\";i:480;s:19:\"um-icon-ios-shuffle\";i:481;s:26:\"um-icon-ios-shuffle-strong\";i:482;s:24:\"um-icon-ios-skipbackward\";i:483;s:32:\"um-icon-ios-skipbackward-outline\";i:484;s:23:\"um-icon-ios-skipforward\";i:485;s:31:\"um-icon-ios-skipforward-outline\";i:486;s:17:\"um-icon-ios-snowy\";i:487;s:23:\"um-icon-ios-speedometer\";i:488;s:31:\"um-icon-ios-speedometer-outline\";i:489;s:16:\"um-icon-ios-star\";i:490;s:21:\"um-icon-ios-star-half\";i:491;s:24:\"um-icon-ios-star-outline\";i:492;s:21:\"um-icon-ios-stopwatch\";i:493;s:29:\"um-icon-ios-stopwatch-outline\";i:494;s:17:\"um-icon-ios-sunny\";i:495;s:25:\"um-icon-ios-sunny-outline\";i:496;s:21:\"um-icon-ios-telephone\";i:497;s:29:\"um-icon-ios-telephone-outline\";i:498;s:22:\"um-icon-ios-tennisball\";i:499;s:30:\"um-icon-ios-tennisball-outline\";i:500;s:24:\"um-icon-ios-thunderstorm\";i:501;s:32:\"um-icon-ios-thunderstorm-outline\";i:502;s:16:\"um-icon-ios-time\";i:503;s:24:\"um-icon-ios-time-outline\";i:504;s:17:\"um-icon-ios-timer\";i:505;s:25:\"um-icon-ios-timer-outline\";i:506;s:18:\"um-icon-ios-toggle\";i:507;s:26:\"um-icon-ios-toggle-outline\";i:508;s:17:\"um-icon-ios-trash\";i:509;s:25:\"um-icon-ios-trash-outline\";i:510;s:16:\"um-icon-ios-undo\";i:511;s:24:\"um-icon-ios-undo-outline\";i:512;s:20:\"um-icon-ios-unlocked\";i:513;s:28:\"um-icon-ios-unlocked-outline\";i:514;s:18:\"um-icon-ios-upload\";i:515;s:26:\"um-icon-ios-upload-outline\";i:516;s:20:\"um-icon-ios-videocam\";i:517;s:28:\"um-icon-ios-videocam-outline\";i:518;s:23:\"um-icon-ios-volume-high\";i:519;s:22:\"um-icon-ios-volume-low\";i:520;s:21:\"um-icon-ios-wineglass\";i:521;s:29:\"um-icon-ios-wineglass-outline\";i:522;s:17:\"um-icon-ios-world\";i:523;s:25:\"um-icon-ios-world-outline\";i:524;s:12:\"um-icon-ipad\";i:525;s:14:\"um-icon-iphone\";i:526;s:12:\"um-icon-ipod\";i:527;s:11:\"um-icon-jet\";i:528;s:11:\"um-icon-key\";i:529;s:13:\"um-icon-knife\";i:530;s:14:\"um-icon-laptop\";i:531;s:12:\"um-icon-leaf\";i:532;s:14:\"um-icon-levels\";i:533;s:17:\"um-icon-lightbulb\";i:534;s:12:\"um-icon-link\";i:535;s:14:\"um-icon-load-a\";i:536;s:14:\"um-icon-load-b\";i:537;s:14:\"um-icon-load-c\";i:538;s:14:\"um-icon-load-d\";i:539;s:16:\"um-icon-location\";i:540;s:24:\"um-icon-lock-combination\";i:541;s:14:\"um-icon-locked\";i:542;s:14:\"um-icon-log-in\";i:543;s:15:\"um-icon-log-out\";i:544;s:12:\"um-icon-loop\";i:545;s:14:\"um-icon-magnet\";i:546;s:12:\"um-icon-male\";i:547;s:11:\"um-icon-man\";i:548;s:11:\"um-icon-map\";i:549;s:14:\"um-icon-medkit\";i:550;s:13:\"um-icon-merge\";i:551;s:13:\"um-icon-mic-a\";i:552;s:13:\"um-icon-mic-b\";i:553;s:13:\"um-icon-mic-c\";i:554;s:13:\"um-icon-minus\";i:555;s:21:\"um-icon-minus-circled\";i:556;s:19:\"um-icon-minus-round\";i:557;s:15:\"um-icon-model-s\";i:558;s:15:\"um-icon-monitor\";i:559;s:12:\"um-icon-more\";i:560;s:13:\"um-icon-mouse\";i:561;s:18:\"um-icon-music-note\";i:562;s:15:\"um-icon-navicon\";i:563;s:21:\"um-icon-navicon-round\";i:564;s:16:\"um-icon-navigate\";i:565;s:15:\"um-icon-network\";i:566;s:18:\"um-icon-no-smoking\";i:567;s:15:\"um-icon-nuclear\";i:568;s:14:\"um-icon-outlet\";i:569;s:18:\"um-icon-paintbrush\";i:570;s:19:\"um-icon-paintbucket\";i:571;s:22:\"um-icon-paper-airplane\";i:572;s:17:\"um-icon-paperclip\";i:573;s:13:\"um-icon-pause\";i:574;s:14:\"um-icon-person\";i:575;s:18:\"um-icon-person-add\";i:576;s:22:\"um-icon-person-stalker\";i:577;s:17:\"um-icon-pie-graph\";i:578;s:11:\"um-icon-pin\";i:579;s:16:\"um-icon-pinpoint\";i:580;s:13:\"um-icon-pizza\";i:581;s:13:\"um-icon-plane\";i:582;s:14:\"um-icon-planet\";i:583;s:12:\"um-icon-play\";i:584;s:19:\"um-icon-playstation\";i:585;s:12:\"um-icon-plus\";i:586;s:20:\"um-icon-plus-circled\";i:587;s:18:\"um-icon-plus-round\";i:588;s:14:\"um-icon-podium\";i:589;s:13:\"um-icon-pound\";i:590;s:13:\"um-icon-power\";i:591;s:16:\"um-icon-pricetag\";i:592;s:17:\"um-icon-pricetags\";i:593;s:15:\"um-icon-printer\";i:594;s:20:\"um-icon-pull-request\";i:595;s:18:\"um-icon-qr-scanner\";i:596;s:13:\"um-icon-quote\";i:597;s:19:\"um-icon-radio-waves\";i:598;s:14:\"um-icon-record\";i:599;s:15:\"um-icon-refresh\";i:600;s:13:\"um-icon-reply\";i:601;s:17:\"um-icon-reply-all\";i:602;s:16:\"um-icon-ribbon-a\";i:603;s:16:\"um-icon-ribbon-b\";i:604;s:11:\"um-icon-sad\";i:605;s:19:\"um-icon-sad-outline\";i:606;s:16:\"um-icon-scissors\";i:607;s:14:\"um-icon-search\";i:608;s:16:\"um-icon-settings\";i:609;s:13:\"um-icon-share\";i:610;s:15:\"um-icon-shuffle\";i:611;s:21:\"um-icon-skip-backward\";i:612;s:20:\"um-icon-skip-forward\";i:613;s:22:\"um-icon-social-android\";i:614;s:30:\"um-icon-social-android-outline\";i:615;s:22:\"um-icon-social-angular\";i:616;s:30:\"um-icon-social-angular-outline\";i:617;s:20:\"um-icon-social-apple\";i:618;s:28:\"um-icon-social-apple-outline\";i:619;s:22:\"um-icon-social-bitcoin\";i:620;s:30:\"um-icon-social-bitcoin-outline\";i:621;s:21:\"um-icon-social-buffer\";i:622;s:29:\"um-icon-social-buffer-outline\";i:623;s:21:\"um-icon-social-chrome\";i:624;s:29:\"um-icon-social-chrome-outline\";i:625;s:22:\"um-icon-social-codepen\";i:626;s:30:\"um-icon-social-codepen-outline\";i:627;s:19:\"um-icon-social-css3\";i:628;s:27:\"um-icon-social-css3-outline\";i:629;s:27:\"um-icon-social-designernews\";i:630;s:35:\"um-icon-social-designernews-outline\";i:631;s:23:\"um-icon-social-dribbble\";i:632;s:31:\"um-icon-social-dribbble-outline\";i:633;s:22:\"um-icon-social-dropbox\";i:634;s:30:\"um-icon-social-dropbox-outline\";i:635;s:19:\"um-icon-social-euro\";i:636;s:27:\"um-icon-social-euro-outline\";i:637;s:23:\"um-icon-social-facebook\";i:638;s:31:\"um-icon-social-facebook-outline\";i:639;s:25:\"um-icon-social-foursquare\";i:640;s:33:\"um-icon-social-foursquare-outline\";i:641;s:28:\"um-icon-social-freebsd-devil\";i:642;s:21:\"um-icon-social-github\";i:643;s:29:\"um-icon-social-github-outline\";i:644;s:21:\"um-icon-social-google\";i:645;s:29:\"um-icon-social-google-outline\";i:646;s:25:\"um-icon-social-googleplus\";i:647;s:33:\"um-icon-social-googleplus-outline\";i:648;s:25:\"um-icon-social-hackernews\";i:649;s:33:\"um-icon-social-hackernews-outline\";i:650;s:20:\"um-icon-social-html5\";i:651;s:28:\"um-icon-social-html5-outline\";i:652;s:24:\"um-icon-social-instagram\";i:653;s:32:\"um-icon-social-instagram-outline\";i:654;s:25:\"um-icon-social-javascript\";i:655;s:33:\"um-icon-social-javascript-outline\";i:656;s:23:\"um-icon-social-linkedin\";i:657;s:31:\"um-icon-social-linkedin-outline\";i:658;s:23:\"um-icon-social-markdown\";i:659;s:21:\"um-icon-social-nodejs\";i:660;s:22:\"um-icon-social-octocat\";i:661;s:24:\"um-icon-social-pinterest\";i:662;s:32:\"um-icon-social-pinterest-outline\";i:663;s:21:\"um-icon-social-python\";i:664;s:21:\"um-icon-social-reddit\";i:665;s:29:\"um-icon-social-reddit-outline\";i:666;s:18:\"um-icon-social-rss\";i:667;s:26:\"um-icon-social-rss-outline\";i:668;s:19:\"um-icon-social-sass\";i:669;s:20:\"um-icon-social-skype\";i:670;s:28:\"um-icon-social-skype-outline\";i:671;s:23:\"um-icon-social-snapchat\";i:672;s:31:\"um-icon-social-snapchat-outline\";i:673;s:21:\"um-icon-social-tumblr\";i:674;s:29:\"um-icon-social-tumblr-outline\";i:675;s:18:\"um-icon-social-tux\";i:676;s:21:\"um-icon-social-twitch\";i:677;s:29:\"um-icon-social-twitch-outline\";i:678;s:22:\"um-icon-social-twitter\";i:679;s:30:\"um-icon-social-twitter-outline\";i:680;s:18:\"um-icon-social-usd\";i:681;s:26:\"um-icon-social-usd-outline\";i:682;s:20:\"um-icon-social-vimeo\";i:683;s:28:\"um-icon-social-vimeo-outline\";i:684;s:23:\"um-icon-social-whatsapp\";i:685;s:31:\"um-icon-social-whatsapp-outline\";i:686;s:22:\"um-icon-social-windows\";i:687;s:30:\"um-icon-social-windows-outline\";i:688;s:24:\"um-icon-social-wordpress\";i:689;s:32:\"um-icon-social-wordpress-outline\";i:690;s:20:\"um-icon-social-yahoo\";i:691;s:28:\"um-icon-social-yahoo-outline\";i:692;s:18:\"um-icon-social-yen\";i:693;s:26:\"um-icon-social-yen-outline\";i:694;s:22:\"um-icon-social-youtube\";i:695;s:30:\"um-icon-social-youtube-outline\";i:696;s:16:\"um-icon-soup-can\";i:697;s:24:\"um-icon-soup-can-outline\";i:698;s:20:\"um-icon-speakerphone\";i:699;s:19:\"um-icon-speedometer\";i:700;s:13:\"um-icon-spoon\";i:701;s:12:\"um-icon-star\";i:702;s:18:\"um-icon-stats-bars\";i:703;s:13:\"um-icon-steam\";i:704;s:12:\"um-icon-stop\";i:705;s:19:\"um-icon-thermometer\";i:706;s:18:\"um-icon-thumbsdown\";i:707;s:16:\"um-icon-thumbsup\";i:708;s:14:\"um-icon-toggle\";i:709;s:21:\"um-icon-toggle-filled\";i:710;s:19:\"um-icon-transgender\";i:711;s:15:\"um-icon-trash-a\";i:712;s:15:\"um-icon-trash-b\";i:713;s:14:\"um-icon-trophy\";i:714;s:14:\"um-icon-tshirt\";i:715;s:22:\"um-icon-tshirt-outline\";i:716;s:16:\"um-icon-umbrella\";i:717;s:18:\"um-icon-university\";i:718;s:16:\"um-icon-unlocked\";i:719;s:14:\"um-icon-upload\";i:720;s:11:\"um-icon-usb\";i:721;s:19:\"um-icon-videocamera\";i:722;s:19:\"um-icon-volume-high\";i:723;s:18:\"um-icon-volume-low\";i:724;s:21:\"um-icon-volume-medium\";i:725;s:19:\"um-icon-volume-mute\";i:726;s:12:\"um-icon-wand\";i:727;s:17:\"um-icon-waterdrop\";i:728;s:12:\"um-icon-wifi\";i:729;s:17:\"um-icon-wineglass\";i:730;s:13:\"um-icon-woman\";i:731;s:14:\"um-icon-wrench\";i:732;s:12:\"um-icon-xbox\";i:733;s:15:\"um-faicon-glass\";i:734;s:15:\"um-faicon-music\";i:735;s:16:\"um-faicon-search\";i:736;s:20:\"um-faicon-envelope-o\";i:737;s:15:\"um-faicon-heart\";i:738;s:14:\"um-faicon-star\";i:739;s:16:\"um-faicon-star-o\";i:740;s:14:\"um-faicon-user\";i:741;s:14:\"um-faicon-film\";i:742;s:18:\"um-faicon-th-large\";i:743;s:12:\"um-faicon-th\";i:744;s:17:\"um-faicon-th-list\";i:745;s:15:\"um-faicon-check\";i:746;s:15:\"um-faicon-times\";i:747;s:21:\"um-faicon-search-plus\";i:748;s:22:\"um-faicon-search-minus\";i:749;s:19:\"um-faicon-power-off\";i:750;s:16:\"um-faicon-signal\";i:751;s:13:\"um-faicon-cog\";i:752;s:17:\"um-faicon-trash-o\";i:753;s:14:\"um-faicon-home\";i:754;s:16:\"um-faicon-file-o\";i:755;s:17:\"um-faicon-clock-o\";i:756;s:14:\"um-faicon-road\";i:757;s:18:\"um-faicon-download\";i:758;s:29:\"um-faicon-arrow-circle-o-down\";i:759;s:27:\"um-faicon-arrow-circle-o-up\";i:760;s:15:\"um-faicon-inbox\";i:761;s:23:\"um-faicon-play-circle-o\";i:762;s:16:\"um-faicon-repeat\";i:763;s:17:\"um-faicon-refresh\";i:764;s:18:\"um-faicon-list-alt\";i:765;s:14:\"um-faicon-lock\";i:766;s:14:\"um-faicon-flag\";i:767;s:20:\"um-faicon-headphones\";i:768;s:20:\"um-faicon-volume-off\";i:769;s:21:\"um-faicon-volume-down\";i:770;s:19:\"um-faicon-volume-up\";i:771;s:16:\"um-faicon-qrcode\";i:772;s:17:\"um-faicon-barcode\";i:773;s:13:\"um-faicon-tag\";i:774;s:14:\"um-faicon-tags\";i:775;s:14:\"um-faicon-book\";i:776;s:18:\"um-faicon-bookmark\";i:777;s:15:\"um-faicon-print\";i:778;s:16:\"um-faicon-camera\";i:779;s:14:\"um-faicon-font\";i:780;s:14:\"um-faicon-bold\";i:781;s:16:\"um-faicon-italic\";i:782;s:21:\"um-faicon-text-height\";i:783;s:20:\"um-faicon-text-width\";i:784;s:20:\"um-faicon-align-left\";i:785;s:22:\"um-faicon-align-center\";i:786;s:21:\"um-faicon-align-right\";i:787;s:23:\"um-faicon-align-justify\";i:788;s:14:\"um-faicon-list\";i:789;s:17:\"um-faicon-outdent\";i:790;s:16:\"um-faicon-indent\";i:791;s:22:\"um-faicon-video-camera\";i:792;s:19:\"um-faicon-picture-o\";i:793;s:16:\"um-faicon-pencil\";i:794;s:20:\"um-faicon-map-marker\";i:795;s:16:\"um-faicon-adjust\";i:796;s:14:\"um-faicon-tint\";i:797;s:25:\"um-faicon-pencil-square-o\";i:798;s:24:\"um-faicon-share-square-o\";i:799;s:24:\"um-faicon-check-square-o\";i:800;s:16:\"um-faicon-arrows\";i:801;s:23:\"um-faicon-step-backward\";i:802;s:23:\"um-faicon-fast-backward\";i:803;s:18:\"um-faicon-backward\";i:804;s:14:\"um-faicon-play\";i:805;s:15:\"um-faicon-pause\";i:806;s:14:\"um-faicon-stop\";i:807;s:17:\"um-faicon-forward\";i:808;s:22:\"um-faicon-fast-forward\";i:809;s:22:\"um-faicon-step-forward\";i:810;s:15:\"um-faicon-eject\";i:811;s:22:\"um-faicon-chevron-left\";i:812;s:23:\"um-faicon-chevron-right\";i:813;s:21:\"um-faicon-plus-circle\";i:814;s:22:\"um-faicon-minus-circle\";i:815;s:22:\"um-faicon-times-circle\";i:816;s:22:\"um-faicon-check-circle\";i:817;s:25:\"um-faicon-question-circle\";i:818;s:21:\"um-faicon-info-circle\";i:819;s:20:\"um-faicon-crosshairs\";i:820;s:24:\"um-faicon-times-circle-o\";i:821;s:24:\"um-faicon-check-circle-o\";i:822;s:13:\"um-faicon-ban\";i:823;s:20:\"um-faicon-arrow-left\";i:824;s:21:\"um-faicon-arrow-right\";i:825;s:18:\"um-faicon-arrow-up\";i:826;s:20:\"um-faicon-arrow-down\";i:827;s:15:\"um-faicon-share\";i:828;s:16:\"um-faicon-expand\";i:829;s:18:\"um-faicon-compress\";i:830;s:14:\"um-faicon-plus\";i:831;s:15:\"um-faicon-minus\";i:832;s:18:\"um-faicon-asterisk\";i:833;s:28:\"um-faicon-exclamation-circle\";i:834;s:14:\"um-faicon-gift\";i:835;s:14:\"um-faicon-leaf\";i:836;s:14:\"um-faicon-fire\";i:837;s:13:\"um-faicon-eye\";i:838;s:19:\"um-faicon-eye-slash\";i:839;s:30:\"um-faicon-exclamation-triangle\";i:840;s:15:\"um-faicon-plane\";i:841;s:18:\"um-faicon-calendar\";i:842;s:16:\"um-faicon-random\";i:843;s:17:\"um-faicon-comment\";i:844;s:16:\"um-faicon-magnet\";i:845;s:20:\"um-faicon-chevron-up\";i:846;s:22:\"um-faicon-chevron-down\";i:847;s:17:\"um-faicon-retweet\";i:848;s:23:\"um-faicon-shopping-cart\";i:849;s:16:\"um-faicon-folder\";i:850;s:21:\"um-faicon-folder-open\";i:851;s:18:\"um-faicon-arrows-v\";i:852;s:18:\"um-faicon-arrows-h\";i:853;s:19:\"um-faicon-bar-chart\";i:854;s:24:\"um-faicon-twitter-square\";i:855;s:25:\"um-faicon-facebook-square\";i:856;s:22:\"um-faicon-camera-retro\";i:857;s:13:\"um-faicon-key\";i:858;s:14:\"um-faicon-cogs\";i:859;s:18:\"um-faicon-comments\";i:860;s:21:\"um-faicon-thumbs-o-up\";i:861;s:23:\"um-faicon-thumbs-o-down\";i:862;s:19:\"um-faicon-star-half\";i:863;s:17:\"um-faicon-heart-o\";i:864;s:18:\"um-faicon-sign-out\";i:865;s:25:\"um-faicon-linkedin-square\";i:866;s:20:\"um-faicon-thumb-tack\";i:867;s:23:\"um-faicon-external-link\";i:868;s:17:\"um-faicon-sign-in\";i:869;s:16:\"um-faicon-trophy\";i:870;s:23:\"um-faicon-github-square\";i:871;s:16:\"um-faicon-upload\";i:872;s:17:\"um-faicon-lemon-o\";i:873;s:15:\"um-faicon-phone\";i:874;s:18:\"um-faicon-square-o\";i:875;s:20:\"um-faicon-bookmark-o\";i:876;s:22:\"um-faicon-phone-square\";i:877;s:17:\"um-faicon-twitter\";i:878;s:18:\"um-faicon-facebook\";i:879;s:16:\"um-faicon-github\";i:880;s:16:\"um-faicon-unlock\";i:881;s:21:\"um-faicon-credit-card\";i:882;s:13:\"um-faicon-rss\";i:883;s:15:\"um-faicon-hdd-o\";i:884;s:18:\"um-faicon-bullhorn\";i:885;s:14:\"um-faicon-bell\";i:886;s:21:\"um-faicon-certificate\";i:887;s:22:\"um-faicon-hand-o-right\";i:888;s:21:\"um-faicon-hand-o-left\";i:889;s:19:\"um-faicon-hand-o-up\";i:890;s:21:\"um-faicon-hand-o-down\";i:891;s:27:\"um-faicon-arrow-circle-left\";i:892;s:28:\"um-faicon-arrow-circle-right\";i:893;s:25:\"um-faicon-arrow-circle-up\";i:894;s:27:\"um-faicon-arrow-circle-down\";i:895;s:15:\"um-faicon-globe\";i:896;s:16:\"um-faicon-wrench\";i:897;s:15:\"um-faicon-tasks\";i:898;s:16:\"um-faicon-filter\";i:899;s:19:\"um-faicon-briefcase\";i:900;s:20:\"um-faicon-arrows-alt\";i:901;s:15:\"um-faicon-users\";i:902;s:14:\"um-faicon-link\";i:903;s:15:\"um-faicon-cloud\";i:904;s:15:\"um-faicon-flask\";i:905;s:18:\"um-faicon-scissors\";i:906;s:17:\"um-faicon-files-o\";i:907;s:19:\"um-faicon-paperclip\";i:908;s:18:\"um-faicon-floppy-o\";i:909;s:16:\"um-faicon-square\";i:910;s:14:\"um-faicon-bars\";i:911;s:17:\"um-faicon-list-ul\";i:912;s:17:\"um-faicon-list-ol\";i:913;s:23:\"um-faicon-strikethrough\";i:914;s:19:\"um-faicon-underline\";i:915;s:15:\"um-faicon-table\";i:916;s:15:\"um-faicon-magic\";i:917;s:15:\"um-faicon-truck\";i:918;s:19:\"um-faicon-pinterest\";i:919;s:26:\"um-faicon-pinterest-square\";i:920;s:28:\"um-faicon-google-plus-square\";i:921;s:21:\"um-faicon-google-plus\";i:922;s:15:\"um-faicon-money\";i:923;s:20:\"um-faicon-caret-down\";i:924;s:18:\"um-faicon-caret-up\";i:925;s:20:\"um-faicon-caret-left\";i:926;s:21:\"um-faicon-caret-right\";i:927;s:17:\"um-faicon-columns\";i:928;s:14:\"um-faicon-sort\";i:929;s:19:\"um-faicon-sort-desc\";i:930;s:18:\"um-faicon-sort-asc\";i:931;s:18:\"um-faicon-envelope\";i:932;s:18:\"um-faicon-linkedin\";i:933;s:14:\"um-faicon-undo\";i:934;s:15:\"um-faicon-gavel\";i:935;s:20:\"um-faicon-tachometer\";i:936;s:19:\"um-faicon-comment-o\";i:937;s:20:\"um-faicon-comments-o\";i:938;s:14:\"um-faicon-bolt\";i:939;s:17:\"um-faicon-sitemap\";i:940;s:18:\"um-faicon-umbrella\";i:941;s:19:\"um-faicon-clipboard\";i:942;s:21:\"um-faicon-lightbulb-o\";i:943;s:18:\"um-faicon-exchange\";i:944;s:24:\"um-faicon-cloud-download\";i:945;s:22:\"um-faicon-cloud-upload\";i:946;s:17:\"um-faicon-user-md\";i:947;s:21:\"um-faicon-stethoscope\";i:948;s:18:\"um-faicon-suitcase\";i:949;s:16:\"um-faicon-bell-o\";i:950;s:16:\"um-faicon-coffee\";i:951;s:17:\"um-faicon-cutlery\";i:952;s:21:\"um-faicon-file-text-o\";i:953;s:20:\"um-faicon-building-o\";i:954;s:20:\"um-faicon-hospital-o\";i:955;s:19:\"um-faicon-ambulance\";i:956;s:16:\"um-faicon-medkit\";i:957;s:21:\"um-faicon-fighter-jet\";i:958;s:14:\"um-faicon-beer\";i:959;s:18:\"um-faicon-h-square\";i:960;s:21:\"um-faicon-plus-square\";i:961;s:27:\"um-faicon-angle-double-left\";i:962;s:28:\"um-faicon-angle-double-right\";i:963;s:25:\"um-faicon-angle-double-up\";i:964;s:27:\"um-faicon-angle-double-down\";i:965;s:20:\"um-faicon-angle-left\";i:966;s:21:\"um-faicon-angle-right\";i:967;s:18:\"um-faicon-angle-up\";i:968;s:20:\"um-faicon-angle-down\";i:969;s:17:\"um-faicon-desktop\";i:970;s:16:\"um-faicon-laptop\";i:971;s:16:\"um-faicon-tablet\";i:972;s:16:\"um-faicon-mobile\";i:973;s:18:\"um-faicon-circle-o\";i:974;s:20:\"um-faicon-quote-left\";i:975;s:21:\"um-faicon-quote-right\";i:976;s:17:\"um-faicon-spinner\";i:977;s:14:\"um-faicon-spin\";i:978;s:16:\"um-faicon-circle\";i:979;s:15:\"um-faicon-reply\";i:980;s:20:\"um-faicon-github-alt\";i:981;s:18:\"um-faicon-folder-o\";i:982;s:23:\"um-faicon-folder-open-o\";i:983;s:17:\"um-faicon-smile-o\";i:984;s:17:\"um-faicon-frown-o\";i:985;s:15:\"um-faicon-meh-o\";i:986;s:17:\"um-faicon-gamepad\";i:987;s:20:\"um-faicon-keyboard-o\";i:988;s:16:\"um-faicon-flag-o\";i:989;s:24:\"um-faicon-flag-checkered\";i:990;s:18:\"um-faicon-terminal\";i:991;s:14:\"um-faicon-code\";i:992;s:19:\"um-faicon-reply-all\";i:993;s:21:\"um-faicon-star-half-o\";i:994;s:24:\"um-faicon-location-arrow\";i:995;s:14:\"um-faicon-crop\";i:996;s:19:\"um-faicon-code-fork\";i:997;s:22:\"um-faicon-chain-broken\";i:998;s:18:\"um-faicon-question\";i:999;s:14:\"um-faicon-info\";i:1000;s:21:\"um-faicon-exclamation\";i:1001;s:21:\"um-faicon-superscript\";i:1002;s:19:\"um-faicon-subscript\";i:1003;s:16:\"um-faicon-eraser\";i:1004;s:22:\"um-faicon-puzzle-piece\";i:1005;s:20:\"um-faicon-microphone\";i:1006;s:26:\"um-faicon-microphone-slash\";i:1007;s:16:\"um-faicon-shield\";i:1008;s:20:\"um-faicon-calendar-o\";i:1009;s:27:\"um-faicon-fire-extinguisher\";i:1010;s:16:\"um-faicon-rocket\";i:1011;s:16:\"um-faicon-maxcdn\";i:1012;s:29:\"um-faicon-chevron-circle-left\";i:1013;s:30:\"um-faicon-chevron-circle-right\";i:1014;s:27:\"um-faicon-chevron-circle-up\";i:1015;s:29:\"um-faicon-chevron-circle-down\";i:1016;s:15:\"um-faicon-html5\";i:1017;s:14:\"um-faicon-css3\";i:1018;s:16:\"um-faicon-anchor\";i:1019;s:20:\"um-faicon-unlock-alt\";i:1020;s:18:\"um-faicon-bullseye\";i:1021;s:20:\"um-faicon-ellipsis-h\";i:1022;s:20:\"um-faicon-ellipsis-v\";i:1023;s:20:\"um-faicon-rss-square\";i:1024;s:21:\"um-faicon-play-circle\";i:1025;s:16:\"um-faicon-ticket\";i:1026;s:22:\"um-faicon-minus-square\";i:1027;s:24:\"um-faicon-minus-square-o\";i:1028;s:18:\"um-faicon-level-up\";i:1029;s:20:\"um-faicon-level-down\";i:1030;s:22:\"um-faicon-check-square\";i:1031;s:23:\"um-faicon-pencil-square\";i:1032;s:30:\"um-faicon-external-link-square\";i:1033;s:22:\"um-faicon-share-square\";i:1034;s:17:\"um-faicon-compass\";i:1035;s:29:\"um-faicon-caret-square-o-down\";i:1036;s:27:\"um-faicon-caret-square-o-up\";i:1037;s:30:\"um-faicon-caret-square-o-right\";i:1038;s:13:\"um-faicon-eur\";i:1039;s:13:\"um-faicon-gbp\";i:1040;s:13:\"um-faicon-usd\";i:1041;s:13:\"um-faicon-inr\";i:1042;s:13:\"um-faicon-jpy\";i:1043;s:13:\"um-faicon-rub\";i:1044;s:13:\"um-faicon-krw\";i:1045;s:13:\"um-faicon-btc\";i:1046;s:14:\"um-faicon-file\";i:1047;s:19:\"um-faicon-file-text\";i:1048;s:24:\"um-faicon-sort-alpha-asc\";i:1049;s:25:\"um-faicon-sort-alpha-desc\";i:1050;s:25:\"um-faicon-sort-amount-asc\";i:1051;s:26:\"um-faicon-sort-amount-desc\";i:1052;s:26:\"um-faicon-sort-numeric-asc\";i:1053;s:27:\"um-faicon-sort-numeric-desc\";i:1054;s:19:\"um-faicon-thumbs-up\";i:1055;s:21:\"um-faicon-thumbs-down\";i:1056;s:24:\"um-faicon-youtube-square\";i:1057;s:17:\"um-faicon-youtube\";i:1058;s:14:\"um-faicon-xing\";i:1059;s:21:\"um-faicon-xing-square\";i:1060;s:22:\"um-faicon-youtube-play\";i:1061;s:17:\"um-faicon-dropbox\";i:1062;s:24:\"um-faicon-stack-overflow\";i:1063;s:19:\"um-faicon-instagram\";i:1064;s:16:\"um-faicon-flickr\";i:1065;s:13:\"um-faicon-adn\";i:1066;s:19:\"um-faicon-bitbucket\";i:1067;s:26:\"um-faicon-bitbucket-square\";i:1068;s:16:\"um-faicon-tumblr\";i:1069;s:23:\"um-faicon-tumblr-square\";i:1070;s:25:\"um-faicon-long-arrow-down\";i:1071;s:23:\"um-faicon-long-arrow-up\";i:1072;s:25:\"um-faicon-long-arrow-left\";i:1073;s:26:\"um-faicon-long-arrow-right\";i:1074;s:15:\"um-faicon-apple\";i:1075;s:17:\"um-faicon-windows\";i:1076;s:17:\"um-faicon-android\";i:1077;s:15:\"um-faicon-linux\";i:1078;s:18:\"um-faicon-dribbble\";i:1079;s:15:\"um-faicon-skype\";i:1080;s:20:\"um-faicon-foursquare\";i:1081;s:16:\"um-faicon-trello\";i:1082;s:16:\"um-faicon-female\";i:1083;s:14:\"um-faicon-male\";i:1084;s:16:\"um-faicon-gittip\";i:1085;s:15:\"um-faicon-sun-o\";i:1086;s:16:\"um-faicon-moon-o\";i:1087;s:17:\"um-faicon-archive\";i:1088;s:13:\"um-faicon-bug\";i:1089;s:12:\"um-faicon-vk\";i:1090;s:15:\"um-faicon-weibo\";i:1091;s:16:\"um-faicon-renren\";i:1092;s:19:\"um-faicon-pagelines\";i:1093;s:24:\"um-faicon-stack-exchange\";i:1094;s:30:\"um-faicon-arrow-circle-o-right\";i:1095;s:29:\"um-faicon-arrow-circle-o-left\";i:1096;s:29:\"um-faicon-caret-square-o-left\";i:1097;s:22:\"um-faicon-dot-circle-o\";i:1098;s:20:\"um-faicon-wheelchair\";i:1099;s:22:\"um-faicon-vimeo-square\";i:1100;s:13:\"um-faicon-try\";i:1101;s:23:\"um-faicon-plus-square-o\";i:1102;s:23:\"um-faicon-space-shuttle\";i:1103;s:15:\"um-faicon-slack\";i:1104;s:25:\"um-faicon-envelope-square\";i:1105;s:19:\"um-faicon-wordpress\";i:1106;s:16:\"um-faicon-openid\";i:1107;s:20:\"um-faicon-university\";i:1108;s:24:\"um-faicon-graduation-cap\";i:1109;s:15:\"um-faicon-yahoo\";i:1110;s:16:\"um-faicon-google\";i:1111;s:16:\"um-faicon-reddit\";i:1112;s:23:\"um-faicon-reddit-square\";i:1113;s:28:\"um-faicon-stumbleupon-circle\";i:1114;s:21:\"um-faicon-stumbleupon\";i:1115;s:19:\"um-faicon-delicious\";i:1116;s:14:\"um-faicon-digg\";i:1117;s:20:\"um-faicon-pied-piper\";i:1118;s:24:\"um-faicon-pied-piper-alt\";i:1119;s:16:\"um-faicon-drupal\";i:1120;s:16:\"um-faicon-joomla\";i:1121;s:18:\"um-faicon-language\";i:1122;s:13:\"um-faicon-fax\";i:1123;s:18:\"um-faicon-building\";i:1124;s:15:\"um-faicon-child\";i:1125;s:13:\"um-faicon-paw\";i:1126;s:15:\"um-faicon-spoon\";i:1127;s:14:\"um-faicon-cube\";i:1128;s:15:\"um-faicon-cubes\";i:1129;s:17:\"um-faicon-behance\";i:1130;s:24:\"um-faicon-behance-square\";i:1131;s:15:\"um-faicon-steam\";i:1132;s:22:\"um-faicon-steam-square\";i:1133;s:17:\"um-faicon-recycle\";i:1134;s:13:\"um-faicon-car\";i:1135;s:14:\"um-faicon-taxi\";i:1136;s:14:\"um-faicon-tree\";i:1137;s:17:\"um-faicon-spotify\";i:1138;s:20:\"um-faicon-deviantart\";i:1139;s:20:\"um-faicon-soundcloud\";i:1140;s:18:\"um-faicon-database\";i:1141;s:20:\"um-faicon-file-pdf-o\";i:1142;s:21:\"um-faicon-file-word-o\";i:1143;s:22:\"um-faicon-file-excel-o\";i:1144;s:27:\"um-faicon-file-powerpoint-o\";i:1145;s:22:\"um-faicon-file-image-o\";i:1146;s:24:\"um-faicon-file-archive-o\";i:1147;s:22:\"um-faicon-file-audio-o\";i:1148;s:22:\"um-faicon-file-video-o\";i:1149;s:21:\"um-faicon-file-code-o\";i:1150;s:14:\"um-faicon-vine\";i:1151;s:17:\"um-faicon-codepen\";i:1152;s:18:\"um-faicon-jsfiddle\";i:1153;s:19:\"um-faicon-life-ring\";i:1154;s:24:\"um-faicon-circle-o-notch\";i:1155;s:15:\"um-faicon-rebel\";i:1156;s:16:\"um-faicon-empire\";i:1157;s:20:\"um-faicon-git-square\";i:1158;s:13:\"um-faicon-git\";i:1159;s:21:\"um-faicon-hacker-news\";i:1160;s:23:\"um-faicon-tencent-weibo\";i:1161;s:12:\"um-faicon-qq\";i:1162;s:16:\"um-faicon-weixin\";i:1163;s:21:\"um-faicon-paper-plane\";i:1164;s:23:\"um-faicon-paper-plane-o\";i:1165;s:17:\"um-faicon-history\";i:1166;s:21:\"um-faicon-circle-thin\";i:1167;s:16:\"um-faicon-header\";i:1168;s:19:\"um-faicon-paragraph\";i:1169;s:17:\"um-faicon-sliders\";i:1170;s:19:\"um-faicon-share-alt\";i:1171;s:26:\"um-faicon-share-alt-square\";i:1172;s:14:\"um-faicon-bomb\";i:1173;s:18:\"um-faicon-futbol-o\";i:1174;s:13:\"um-faicon-tty\";i:1175;s:20:\"um-faicon-binoculars\";i:1176;s:14:\"um-faicon-plug\";i:1177;s:20:\"um-faicon-slideshare\";i:1178;s:16:\"um-faicon-twitch\";i:1179;s:14:\"um-faicon-yelp\";i:1180;s:21:\"um-faicon-newspaper-o\";i:1181;s:14:\"um-faicon-wifi\";i:1182;s:20:\"um-faicon-calculator\";i:1183;s:16:\"um-faicon-paypal\";i:1184;s:23:\"um-faicon-google-wallet\";i:1185;s:17:\"um-faicon-cc-visa\";i:1186;s:23:\"um-faicon-cc-mastercard\";i:1187;s:21:\"um-faicon-cc-discover\";i:1188;s:17:\"um-faicon-cc-amex\";i:1189;s:19:\"um-faicon-cc-paypal\";i:1190;s:19:\"um-faicon-cc-stripe\";i:1191;s:20:\"um-faicon-bell-slash\";i:1192;s:22:\"um-faicon-bell-slash-o\";i:1193;s:15:\"um-faicon-trash\";i:1194;s:19:\"um-faicon-copyright\";i:1195;s:12:\"um-faicon-at\";i:1196;s:20:\"um-faicon-eyedropper\";i:1197;s:21:\"um-faicon-paint-brush\";i:1198;s:23:\"um-faicon-birthday-cake\";i:1199;s:20:\"um-faicon-area-chart\";i:1200;s:19:\"um-faicon-pie-chart\";i:1201;s:20:\"um-faicon-line-chart\";i:1202;s:16:\"um-faicon-lastfm\";i:1203;s:23:\"um-faicon-lastfm-square\";i:1204;s:20:\"um-faicon-toggle-off\";i:1205;s:19:\"um-faicon-toggle-on\";i:1206;s:17:\"um-faicon-bicycle\";i:1207;s:13:\"um-faicon-bus\";i:1208;s:17:\"um-faicon-ioxhost\";i:1209;s:19:\"um-faicon-angellist\";i:1210;s:12:\"um-faicon-cc\";i:1211;s:13:\"um-faicon-ils\";i:1212;s:18:\"um-faicon-meanpath\";i:1213;s:14:\"um-faicon-spin\";i:1214;s:14:\"um-faicon-spin\";i:1215;s:14:\"um-faicon-spin\";i:1216;s:14:\"um-faicon-spin\";i:1217;s:14:\"um-faicon-spin\";}', 'yes'),
(371, 'um_existing_rows_138', 'a:1:{i:0;s:9:\"_um_row_1\";}', 'yes'),
(372, 'um_form_rowdata_138', 'a:1:{s:9:\"_um_row_1\";a:5:{s:4:\"type\";s:3:\"row\";s:2:\"id\";s:9:\"_um_row_1\";s:8:\"sub_rows\";s:1:\"1\";s:4:\"cols\";s:1:\"1\";s:6:\"origin\";s:9:\"_um_row_1\";}}', 'yes'),
(381, 'um_existing_rows_137', 'a:1:{i:0;s:9:\"_um_row_1\";}', 'yes'),
(382, 'um_form_rowdata_137', 'a:1:{s:9:\"_um_row_1\";a:5:{s:4:\"type\";s:3:\"row\";s:2:\"id\";s:9:\"_um_row_1\";s:8:\"sub_rows\";s:1:\"1\";s:4:\"cols\";s:1:\"1\";s:6:\"origin\";s:9:\"_um_row_1\";}}', 'yes'),
(532, 'um_existing_rows_139', 'a:1:{i:0;s:9:\"_um_row_1\";}', 'yes'),
(533, 'um_form_rowdata_139', 'a:1:{s:9:\"_um_row_1\";a:5:{s:4:\"type\";s:3:\"row\";s:2:\"id\";s:9:\"_um_row_1\";s:8:\"sub_rows\";s:1:\"1\";s:4:\"cols\";s:1:\"1\";s:6:\"origin\";s:9:\"_um_row_1\";}}', 'yes'),
(561, 'um_existing_rows_151', 'a:1:{i:0;s:9:\"_um_row_1\";}', 'yes'),
(562, 'um_form_rowdata_151', 'a:1:{s:9:\"_um_row_1\";a:5:{s:4:\"type\";s:3:\"row\";s:2:\"id\";s:9:\"_um_row_1\";s:8:\"sub_rows\";s:1:\"1\";s:4:\"cols\";s:1:\"2\";s:6:\"origin\";s:9:\"_um_row_1\";}}', 'yes'),
(636, 'um_cache_userdata_5', 'a:55:{s:2:\"ID\";i:5;s:10:\"user_login\";s:6:\"julius\";s:9:\"user_pass\";s:34:\"$P$BT71e3OUlHrYagYeB8ir6PIrrpW/4..\";s:13:\"user_nicename\";s:6:\"julius\";s:10:\"user_email\";s:20:\"partanduls@gmail.com\";s:8:\"user_url\";s:0:\"\";s:15:\"user_registered\";s:19:\"2018-10-26 05:24:26\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:12:\"julius mateo\";s:10:\"subscriber\";b:1;s:8:\"wp_roles\";s:10:\"subscriber\";s:4:\"read\";b:1;s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;s:8:\"nickname\";s:6:\"julius\";s:10:\"first_name\";s:6:\"julius\";s:9:\"last_name\";s:5:\"mateo\";s:11:\"description\";s:0:\"\";s:12:\"rich_editing\";s:4:\"true\";s:19:\"syntax_highlighting\";s:4:\"true\";s:17:\"comment_shortcuts\";s:5:\"false\";s:11:\"admin_color\";s:5:\"fresh\";s:7:\"use_ssl\";s:1:\"0\";s:20:\"show_admin_bar_front\";s:4:\"true\";s:6:\"locale\";s:0:\"\";s:25:\"synced_gravatar_hashed_id\";s:32:\"97a996600e204d6f8907470d3d2f7296\";s:9:\"submitted\";s:300:\"a:9:{s:7:\"form_id\";s:3:\"137\";s:9:\"timestamp\";s:10:\"1540531411\";s:7:\"request\";s:0:\"\";s:8:\"_wpnonce\";s:10:\"2fccf1cc09\";s:16:\"_wp_http_referer\";s:14:\"/registration/\";s:10:\"user_login\";s:6:\"julius\";s:10:\"first_name\";s:6:\"julius\";s:9:\"last_name\";s:5:\"mateo\";s:10:\"user_email\";s:20:\"partanduls@gmail.com\";}\";s:7:\"form_id\";s:3:\"137\";s:9:\"timestamp\";s:10:\"1540531411\";s:7:\"request\";s:0:\"\";s:8:\"_wpnonce\";s:10:\"2fccf1cc09\";s:16:\"_wp_http_referer\";s:14:\"/registration/\";s:35:\"um_user_profile_url_slug_user_login\";s:6:\"julius\";s:9:\"full_name\";s:6:\"julius\";s:14:\"account_status\";s:8:\"approved\";s:14:\"_um_last_login\";s:10:\"1540531468\";s:24:\"um_account_secure_fields\";s:6:\"a:0:{}\";s:19:\"account_status_name\";s:8:\"Approved\";s:4:\"role\";s:10:\"subscriber\";s:5:\"roles\";a:1:{i:0;s:10:\"subscriber\";}s:18:\"can_access_wpadmin\";i:0;s:20:\"can_not_see_adminbar\";i:1;s:17:\"can_edit_everyone\";i:0;s:19:\"can_delete_everyone\";i:0;s:16:\"can_edit_profile\";i:1;s:18:\"can_delete_profile\";i:1;s:11:\"after_login\";s:16:\"redirect_profile\";s:12:\"after_logout\";s:13:\"redirect_home\";s:16:\"default_homepage\";i:1;s:12:\"can_view_all\";i:1;s:24:\"can_make_private_profile\";i:0;s:26:\"can_access_private_profile\";i:0;s:6:\"status\";s:8:\"approved\";s:16:\"auto_approve_act\";s:16:\"redirect_profile\";s:11:\"super_admin\";i:0;}', 'no'),
(1022, 'ai1wm_secret_key', 'FpSIxoV699cq', 'yes'),
(1023, 'ai1wm_updater', 'a:0:{}', 'yes'),
(1038, 'ai1wm_status', 'a:2:{s:4:\"type\";s:8:\"download\";s:7:\"message\";s:217:\"<a href=\"http://toyotires.localhost/wp-content/ai1wm-backups/toyotires.localhost-20181027-135756-466.wpress\" class=\"ai1wm-button-green ai1wm-emphasize\"><span>Download toyotires.localhost</span><em>Size: 77 MB</em></a>\";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1042, 'um_cache_userdata_1', 'a:119:{s:2:\"ID\";i:1;s:10:\"user_login\";s:9:\"toyotires\";s:9:\"user_pass\";s:34:\"$P$BHx50MvUctQ/uGeq1XQYpFILlkOpNB.\";s:13:\"user_nicename\";s:9:\"toyotires\";s:10:\"user_email\";s:27:\"ibitswebsolutions@gmail.com\";s:8:\"user_url\";s:0:\"\";s:15:\"user_registered\";s:19:\"2018-10-07 17:27:55\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:9:\"toyotires\";s:13:\"administrator\";b:1;s:8:\"wp_roles\";s:13:\"administrator\";s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:24:\"manage_user_registration\";b:1;s:22:\"edit_user_registration\";b:1;s:22:\"read_user_registration\";b:1;s:24:\"delete_user_registration\";b:1;s:23:\"edit_user_registrations\";b:1;s:30:\"edit_others_user_registrations\";b:1;s:26:\"publish_user_registrations\";b:1;s:31:\"read_private_user_registrations\";b:1;s:25:\"delete_user_registrations\";b:1;s:33:\"delete_private_user_registrations\";b:1;s:35:\"delete_published_user_registrations\";b:1;s:32:\"delete_others_user_registrations\";b:1;s:31:\"edit_private_user_registrations\";b:1;s:33:\"edit_published_user_registrations\";b:1;s:30:\"manage_user_registration_terms\";b:1;s:28:\"edit_user_registration_terms\";b:1;s:30:\"delete_user_registration_terms\";b:1;s:30:\"assign_user_registration_terms\";b:1;s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;s:8:\"nickname\";s:9:\"toyotires\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"rich_editing\";s:4:\"true\";s:19:\"syntax_highlighting\";s:4:\"true\";s:17:\"comment_shortcuts\";s:5:\"false\";s:11:\"admin_color\";s:5:\"fresh\";s:7:\"use_ssl\";s:1:\"0\";s:20:\"show_admin_bar_front\";s:5:\"false\";s:6:\"locale\";s:0:\"\";s:18:\"show_welcome_panel\";s:1:\"1\";s:37:\"wp_dashboard_quick_press_last_post_id\";s:3:\"141\";s:17:\"acf_user_settings\";s:37:\"a:1:{s:15:\"show_field_keys\";s:1:\"1\";}\";s:15:\"ur_first_access\";s:1:\"1\";s:14:\"account_status\";s:8:\"approved\";s:24:\"um_account_secure_fields\";s:6:\"a:0:{}\";s:35:\"um_user_profile_url_slug_user_login\";s:9:\"toyotires\";s:14:\"_um_last_login\";s:10:\"1540621109\";s:13:\"profile_photo\";s:17:\"profile_photo.png\";s:19:\"account_status_name\";s:8:\"Approved\";s:4:\"role\";s:13:\"administrator\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:18:\"can_access_wpadmin\";i:1;s:20:\"can_not_see_adminbar\";i:0;s:17:\"can_edit_everyone\";i:1;s:19:\"can_delete_everyone\";i:1;s:16:\"can_edit_profile\";i:1;s:18:\"can_delete_profile\";i:1;s:16:\"default_homepage\";i:1;s:11:\"after_login\";s:14:\"redirect_admin\";s:12:\"after_logout\";s:13:\"redirect_home\";s:12:\"can_view_all\";i:1;s:24:\"can_make_private_profile\";i:1;s:26:\"can_access_private_profile\";i:1;s:6:\"status\";s:8:\"approved\";s:16:\"auto_approve_act\";s:16:\"redirect_profile\";s:11:\"super_admin\";i:1;}', 'no'),
(1141, 'um_hidden_admin_notices', 'a:2:{i:0;s:13:\"opt_in_notice\";i:1;s:14:\"reviews_notice\";}', 'yes'),
(3464, 'um_cached_users_queue', '0', 'no'),
(3468, '_site_transient_timeout_theme_roots', '1544706930', 'no'),
(3469, '_site_transient_theme_roots', 'a:1:{s:4:\"toyo\";s:7:\"/themes\";}', 'no'),
(3470, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1544705136;s:7:\"checked\";a:6:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.6.7\";s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"6.78\";s:9:\"hello.php\";s:3:\"1.7\";s:25:\"menu-image/menu-image.php\";s:5:\"2.9.1\";s:35:\"ultimate-member/ultimate-member.php\";s:6:\"2.0.29\";}s:8:\"response\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.0\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"6.81\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.6.81.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=1985064\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=1985064\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=1985064\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=1985064\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.0\";s:12:\"requires_php\";s:6:\"5.2.17\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:35:\"ultimate-member/ultimate-member.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:29:\"w.org/plugins/ultimate-member\";s:4:\"slug\";s:15:\"ultimate-member\";s:6:\"plugin\";s:35:\"ultimate-member/ultimate-member.php\";s:11:\"new_version\";s:6:\"2.0.35\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/ultimate-member/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/ultimate-member.2.0.35.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/ultimate-member/assets/icon-256x256.png?rev=1667029\";s:2:\"1x\";s:68:\"https://ps.w.org/ultimate-member/assets/icon-128x128.png?rev=1667029\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/ultimate-member/assets/banner-1544x500.png?rev=1667029\";s:2:\"1x\";s:70:\"https://ps.w.org/ultimate-member/assets/banner-772x250.png?rev=1667029\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.0\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.7.8\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:5:\"4.9.9\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"menu-image/menu-image.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/menu-image\";s:4:\"slug\";s:10:\"menu-image\";s:6:\"plugin\";s:25:\"menu-image/menu-image.php\";s:11:\"new_version\";s:5:\"2.9.1\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/menu-image/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/menu-image.2.9.1.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:61:\"https://s.w.org/plugins/geopattern-icon/menu-image_d8ebf6.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:64:\"https://ps.w.org/menu-image/assets/banner-772x250.png?rev=916173\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(99, 17, '_edit_last', '1'),
(100, 17, '_edit_lock', '1542416404:1'),
(101, 19, '_edit_last', '1'),
(102, 19, '_edit_lock', '1544621407:1'),
(103, 21, '_edit_last', '1'),
(104, 21, '_edit_lock', '1540532443:1'),
(105, 23, '_edit_last', '1'),
(106, 23, '_edit_lock', '1542416736:1'),
(109, 27, '_edit_last', '1'),
(110, 27, '_edit_lock', '1542416989:1'),
(111, 29, '_wp_attached_file', '2018/10/Untitled.png'),
(112, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:20:\"2018/10/Untitled.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Untitled-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Untitled-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"Untitled-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"Untitled-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(113, 30, '_wp_attached_file', '2018/10/cropped-Untitled.png'),
(114, 30, '_wp_attachment_context', 'custom-logo'),
(115, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:179;s:6:\"height\";i:100;s:4:\"file\";s:28:\"2018/10/cropped-Untitled.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-Untitled-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(118, 32, '_wp_attached_file', '2018/10/cropped-Untitled-1.png'),
(119, 32, '_wp_attachment_context', 'site-icon'),
(120, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:30:\"2018/10/cropped-Untitled-1.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-Untitled-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"cropped-Untitled-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:30:\"cropped-Untitled-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:30:\"cropped-Untitled-1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:30:\"cropped-Untitled-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:28:\"cropped-Untitled-1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(123, 34, '_menu_item_type', 'post_type'),
(124, 34, '_menu_item_menu_item_parent', '0'),
(125, 34, '_menu_item_object_id', '27'),
(126, 34, '_menu_item_object', 'page'),
(127, 34, '_menu_item_target', ''),
(128, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(129, 34, '_menu_item_xfn', ''),
(130, 34, '_menu_item_url', ''),
(141, 36, '_menu_item_type', 'post_type'),
(142, 36, '_menu_item_menu_item_parent', '0'),
(143, 36, '_menu_item_object_id', '23'),
(144, 36, '_menu_item_object', 'page'),
(145, 36, '_menu_item_target', ''),
(146, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(147, 36, '_menu_item_xfn', ''),
(148, 36, '_menu_item_url', ''),
(150, 37, '_menu_item_type', 'post_type'),
(151, 37, '_menu_item_menu_item_parent', '0'),
(152, 37, '_menu_item_object_id', '21'),
(153, 37, '_menu_item_object', 'page'),
(154, 37, '_menu_item_target', ''),
(155, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(156, 37, '_menu_item_xfn', ''),
(157, 37, '_menu_item_url', ''),
(168, 39, '_menu_item_type', 'post_type'),
(169, 39, '_menu_item_menu_item_parent', '0'),
(170, 39, '_menu_item_object_id', '17'),
(171, 39, '_menu_item_object', 'page'),
(172, 39, '_menu_item_target', ''),
(173, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(174, 39, '_menu_item_xfn', ''),
(175, 39, '_menu_item_url', ''),
(177, 40, '_menu_item_type', 'custom'),
(178, 40, '_menu_item_menu_item_parent', '0'),
(179, 40, '_menu_item_object_id', '40'),
(180, 40, '_menu_item_object', 'custom'),
(181, 40, '_menu_item_target', ''),
(182, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(183, 40, '_menu_item_xfn', ''),
(184, 40, '_menu_item_url', 'http://test'),
(186, 41, '_menu_item_type', 'custom'),
(187, 41, '_menu_item_menu_item_parent', '0'),
(188, 41, '_menu_item_object_id', '41'),
(189, 41, '_menu_item_object', 'custom'),
(190, 41, '_menu_item_target', ''),
(191, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(192, 41, '_menu_item_xfn', ''),
(193, 41, '_menu_item_url', 'http://test'),
(195, 42, '_menu_item_type', 'custom'),
(196, 42, '_menu_item_menu_item_parent', '0'),
(197, 42, '_menu_item_object_id', '42'),
(198, 42, '_menu_item_object', 'custom'),
(199, 42, '_menu_item_target', ''),
(200, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(201, 42, '_menu_item_xfn', ''),
(202, 42, '_menu_item_url', 'http://test'),
(206, 40, '_thumbnail_id', '73'),
(207, 40, '_menu_item_image_size', 'full'),
(208, 40, '_menu_item_image_title_position', 'after'),
(209, 41, '_menu_item_image_size', 'full'),
(210, 41, '_menu_item_image_title_position', 'after'),
(211, 42, '_menu_item_image_size', 'full'),
(212, 42, '_menu_item_image_title_position', 'after'),
(213, 45, '_edit_last', '1'),
(214, 45, '_edit_lock', '1541254548:1'),
(215, 44, '_edit_last', '1'),
(216, 44, '_edit_lock', '1541690070:1'),
(217, 45, 'page_background', '64'),
(218, 45, '_page_background', 'field_5bbc2baf4e805'),
(219, 48, 'page_background', '29'),
(220, 48, '_page_background', 'field_5bbc2baf4e805'),
(221, 49, '_edit_last', '1'),
(222, 49, '_edit_lock', '1542212292:1'),
(223, 45, 'home_menu_bottom_0_home_menu_bottom_title', 'FIND A DEALER'),
(224, 45, '_home_menu_bottom_0_home_menu_bottom_title', 'field_5bbc2cf74d6ba'),
(225, 45, 'home_menu_bottom_0_home_menu_bottom_image', '67'),
(226, 45, '_home_menu_bottom_0_home_menu_bottom_image', 'field_5bbc2d1d4d6bb'),
(227, 45, 'home_menu_bottom_0_home_menu_bottom_link', '21'),
(228, 45, '_home_menu_bottom_0_home_menu_bottom_link', 'field_5bbc2d4b4d6bc'),
(229, 45, 'home_menu_bottom', '3'),
(230, 45, '_home_menu_bottom', 'field_5bbc2ce24d6b9'),
(231, 54, 'page_background', '29'),
(232, 54, '_page_background', 'field_5bbc2baf4e805'),
(233, 54, 'home_menu_bottom_0_home_menu_bottom_title', 'Find a dealer'),
(234, 54, '_home_menu_bottom_0_home_menu_bottom_title', 'field_5bbc2cf74d6ba'),
(235, 54, 'home_menu_bottom_0_home_menu_bottom_image', '29'),
(236, 54, '_home_menu_bottom_0_home_menu_bottom_image', 'field_5bbc2d1d4d6bb'),
(237, 54, 'home_menu_bottom_0_home_menu_bottom_link', '21'),
(238, 54, '_home_menu_bottom_0_home_menu_bottom_link', 'field_5bbc2d4b4d6bc'),
(239, 54, 'home_menu_bottom', '1'),
(240, 54, '_home_menu_bottom', 'field_5bbc2ce24d6b9'),
(241, 55, 'page_background', '29'),
(242, 55, '_page_background', 'field_5bbc2baf4e805'),
(243, 55, 'home_menu_bottom_0_home_menu_bottom_title', 'Find a dealer'),
(244, 55, '_home_menu_bottom_0_home_menu_bottom_title', 'field_5bbc2cf74d6ba'),
(245, 55, 'home_menu_bottom_0_home_menu_bottom_image', '29'),
(246, 55, '_home_menu_bottom_0_home_menu_bottom_image', 'field_5bbc2d1d4d6bb'),
(247, 55, 'home_menu_bottom_0_home_menu_bottom_link', '21'),
(248, 55, '_home_menu_bottom_0_home_menu_bottom_link', 'field_5bbc2d4b4d6bc'),
(249, 55, 'home_menu_bottom', '1'),
(250, 55, '_home_menu_bottom', 'field_5bbc2ce24d6b9'),
(251, 56, '_edit_last', '1'),
(252, 56, '_edit_lock', '1541521832:1'),
(253, 45, '_wp_page_template', 'index.php'),
(254, 21, '_wp_page_template', 'page-dealers.php'),
(255, 21, 'dealers_information_0_dealers_name', 'Toyo Tires Driven'),
(256, 21, '_dealers_information_0_dealers_name', 'field_5bbc2ed8e2340'),
(257, 21, 'dealers_information_0_dealers_address', '1113 Banawe St, Quezon City, Metro Manila'),
(258, 21, '_dealers_information_0_dealers_address', 'field_5bbc2f0be2341'),
(259, 21, 'dealers_information_0_dealers_contact', ''),
(260, 21, '_dealers_information_0_dealers_contact', 'field_5bbc2f1be2342'),
(261, 21, 'dealers_information_0_dealers_longitude', '121.0060365'),
(262, 21, '_dealers_information_0_dealers_longitude', 'field_5bbc2f2de2343'),
(263, 21, 'dealers_information_0_dealers_latitude', '14.6191054'),
(264, 21, '_dealers_information_0_dealers_latitude', 'field_5bbc2f3de2344'),
(265, 21, 'dealers_information_1_dealers_name', 'Toyo Tires Philippines'),
(266, 21, '_dealers_information_1_dealers_name', 'field_5bbc2ed8e2340'),
(267, 21, 'dealers_information_1_dealers_address', '347 Ortigas Ave, Greenhills East, Mandaluyong, 1554, Mandaluyong, Metro Manila'),
(268, 21, '_dealers_information_1_dealers_address', 'field_5bbc2f0be2341'),
(269, 21, 'dealers_information_1_dealers_contact', ''),
(270, 21, '_dealers_information_1_dealers_contact', 'field_5bbc2f1be2342'),
(271, 21, 'dealers_information_1_dealers_longitude', '121.0558002'),
(272, 21, '_dealers_information_1_dealers_longitude', 'field_5bbc2f2de2343'),
(273, 21, 'dealers_information_1_dealers_latitude', '14.5947099'),
(274, 21, '_dealers_information_1_dealers_latitude', 'field_5bbc2f3de2344'),
(275, 21, 'dealers_information', '3'),
(276, 21, '_dealers_information', 'field_5bbc2f4fe2345'),
(277, 63, 'dealers_information_0_dealers_name', 'Toyo Tires JMK Building'),
(278, 63, '_dealers_information_0_dealers_name', 'field_5bbc2ed8e2340'),
(279, 63, 'dealers_information_0_dealers_address', 'JMK Building , West Avenue, Bungad , 1105 Quezon City , Metro Manila, Project 7, Quezon City, Metro Manila'),
(280, 63, '_dealers_information_0_dealers_address', 'field_5bbc2f0be2341'),
(281, 63, 'dealers_information_0_dealers_contact', '09559160218'),
(282, 63, '_dealers_information_0_dealers_contact', 'field_5bbc2f1be2342'),
(283, 63, 'dealers_information_0_dealers_longitude', '14.8696063'),
(284, 63, '_dealers_information_0_dealers_longitude', 'field_5bbc2f2de2343'),
(285, 63, 'dealers_information_0_dealers_latitude', '120.8822504'),
(286, 63, '_dealers_information_0_dealers_latitude', 'field_5bbc2f3de2344'),
(287, 63, 'dealers_information_1_dealers_name', 'Toyo Tires Congressional Ave'),
(288, 63, '_dealers_information_1_dealers_name', 'field_5bbc2ed8e2340'),
(289, 63, 'dealers_information_1_dealers_address', 'Congressional Ave, Project 8, Quezon City, Metro Manila'),
(290, 63, '_dealers_information_1_dealers_address', 'field_5bbc2f0be2341'),
(291, 63, 'dealers_information_1_dealers_contact', '09559160218'),
(292, 63, '_dealers_information_1_dealers_contact', 'field_5bbc2f1be2342'),
(293, 63, 'dealers_information_1_dealers_longitude', '14.8699712'),
(294, 63, '_dealers_information_1_dealers_longitude', 'field_5bbc2f2de2343'),
(295, 63, 'dealers_information_1_dealers_latitude', '120.8786204'),
(296, 63, '_dealers_information_1_dealers_latitude', 'field_5bbc2f3de2344'),
(297, 63, 'dealers_information', '2'),
(298, 63, '_dealers_information', 'field_5bbc2f4fe2345'),
(299, 64, '_wp_attached_file', '2018/10/bg-min.jpg'),
(300, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:897;s:4:\"file\";s:18:\"2018/10/bg-min.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"bg-min-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"bg-min-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"bg-min-768x431.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:431;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"bg-min-1024x574.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:574;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:16:\"bg-min-24x13.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:13;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:16:\"bg-min-36x20.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:20;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:16:\"bg-min-48x27.jpg\";s:5:\"width\";i:48;s:6:\"height\";i:27;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(301, 65, '_wp_attached_file', '2018/10/blue.png'),
(302, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:236;s:6:\"height\";i:114;s:4:\"file\";s:16:\"2018/10/blue.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"blue-150x114.png\";s:5:\"width\";i:150;s:6:\"height\";i:114;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:14:\"blue-24x12.png\";s:5:\"width\";i:24;s:6:\"height\";i:12;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:14:\"blue-36x17.png\";s:5:\"width\";i:36;s:6:\"height\";i:17;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:14:\"blue-48x23.png\";s:5:\"width\";i:48;s:6:\"height\";i:23;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(303, 66, '_wp_attached_file', '2018/10/car.png'),
(304, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:220;s:6:\"height\";i:105;s:4:\"file\";s:15:\"2018/10/car.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"car-150x105.png\";s:5:\"width\";i:150;s:6:\"height\";i:105;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:13:\"car-24x11.png\";s:5:\"width\";i:24;s:6:\"height\";i:11;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:13:\"car-36x17.png\";s:5:\"width\";i:36;s:6:\"height\";i:17;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:13:\"car-48x23.png\";s:5:\"width\";i:48;s:6:\"height\";i:23;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(305, 67, '_wp_attached_file', '2018/10/ph.png'),
(306, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:64;s:6:\"height\";i:100;s:4:\"file\";s:14:\"2018/10/ph.png\";s:5:\"sizes\";a:3:{s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:12:\"ph-15x24.png\";s:5:\"width\";i:15;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:12:\"ph-23x36.png\";s:5:\"width\";i:23;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:12:\"ph-31x48.png\";s:5:\"width\";i:31;s:6:\"height\";i:48;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(307, 68, '_wp_attached_file', '2018/10/tire.png'),
(308, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:130;s:6:\"height\";i:110;s:4:\"file\";s:16:\"2018/10/tire.png\";s:5:\"sizes\";a:3:{s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:14:\"tire-24x20.png\";s:5:\"width\";i:24;s:6:\"height\";i:20;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:14:\"tire-36x30.png\";s:5:\"width\";i:36;s:6:\"height\";i:30;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:14:\"tire-48x41.png\";s:5:\"width\";i:48;s:6:\"height\";i:41;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(309, 45, 'home_menu_bottom_1_home_menu_bottom_title', 'SELECT TIRES'),
(310, 45, '_home_menu_bottom_1_home_menu_bottom_title', 'field_5bbc2cf74d6ba'),
(311, 45, 'home_menu_bottom_1_home_menu_bottom_image', '68'),
(312, 45, '_home_menu_bottom_1_home_menu_bottom_image', 'field_5bbc2d1d4d6bb'),
(313, 45, 'home_menu_bottom_1_home_menu_bottom_link', '19'),
(314, 45, '_home_menu_bottom_1_home_menu_bottom_link', 'field_5bbc2d4b4d6bc'),
(315, 45, 'home_menu_bottom_2_home_menu_bottom_title', 'SELECT BY CARS'),
(316, 45, '_home_menu_bottom_2_home_menu_bottom_title', 'field_5bbc2cf74d6ba'),
(317, 45, 'home_menu_bottom_2_home_menu_bottom_image', '66'),
(318, 45, '_home_menu_bottom_2_home_menu_bottom_image', 'field_5bbc2d1d4d6bb'),
(319, 45, 'home_menu_bottom_2_home_menu_bottom_link', '102'),
(320, 45, '_home_menu_bottom_2_home_menu_bottom_link', 'field_5bbc2d4b4d6bc'),
(321, 69, 'page_background', '29'),
(322, 69, '_page_background', 'field_5bbc2baf4e805'),
(323, 69, 'home_menu_bottom_0_home_menu_bottom_title', 'FIND A DEALER'),
(324, 69, '_home_menu_bottom_0_home_menu_bottom_title', 'field_5bbc2cf74d6ba'),
(325, 69, 'home_menu_bottom_0_home_menu_bottom_image', '67'),
(326, 69, '_home_menu_bottom_0_home_menu_bottom_image', 'field_5bbc2d1d4d6bb'),
(327, 69, 'home_menu_bottom_0_home_menu_bottom_link', '21'),
(328, 69, '_home_menu_bottom_0_home_menu_bottom_link', 'field_5bbc2d4b4d6bc'),
(329, 69, 'home_menu_bottom', '3'),
(330, 69, '_home_menu_bottom', 'field_5bbc2ce24d6b9'),
(331, 69, 'home_menu_bottom_1_home_menu_bottom_title', 'SELECT A TIRES'),
(332, 69, '_home_menu_bottom_1_home_menu_bottom_title', 'field_5bbc2cf74d6ba'),
(333, 69, 'home_menu_bottom_1_home_menu_bottom_image', '68'),
(334, 69, '_home_menu_bottom_1_home_menu_bottom_image', 'field_5bbc2d1d4d6bb'),
(335, 69, 'home_menu_bottom_1_home_menu_bottom_link', '19'),
(336, 69, '_home_menu_bottom_1_home_menu_bottom_link', 'field_5bbc2d4b4d6bc'),
(337, 69, 'home_menu_bottom_2_home_menu_bottom_title', 'SELECT BY CARS'),
(338, 69, '_home_menu_bottom_2_home_menu_bottom_title', 'field_5bbc2cf74d6ba'),
(339, 69, 'home_menu_bottom_2_home_menu_bottom_image', '66'),
(340, 69, '_home_menu_bottom_2_home_menu_bottom_image', 'field_5bbc2d1d4d6bb'),
(341, 69, 'home_menu_bottom_2_home_menu_bottom_link', '19'),
(342, 69, '_home_menu_bottom_2_home_menu_bottom_link', 'field_5bbc2d4b4d6bc'),
(343, 70, 'page_background', '29'),
(344, 70, '_page_background', 'field_5bbc2baf4e805'),
(345, 70, 'home_menu_bottom_0_home_menu_bottom_title', 'FIND A DEALER'),
(346, 70, '_home_menu_bottom_0_home_menu_bottom_title', 'field_5bbc2cf74d6ba'),
(347, 70, 'home_menu_bottom_0_home_menu_bottom_image', '67'),
(348, 70, '_home_menu_bottom_0_home_menu_bottom_image', 'field_5bbc2d1d4d6bb'),
(349, 70, 'home_menu_bottom_0_home_menu_bottom_link', '21'),
(350, 70, '_home_menu_bottom_0_home_menu_bottom_link', 'field_5bbc2d4b4d6bc'),
(351, 70, 'home_menu_bottom', '3'),
(352, 70, '_home_menu_bottom', 'field_5bbc2ce24d6b9'),
(353, 70, 'home_menu_bottom_1_home_menu_bottom_title', 'SELECT TIRES'),
(354, 70, '_home_menu_bottom_1_home_menu_bottom_title', 'field_5bbc2cf74d6ba'),
(355, 70, 'home_menu_bottom_1_home_menu_bottom_image', '68'),
(356, 70, '_home_menu_bottom_1_home_menu_bottom_image', 'field_5bbc2d1d4d6bb'),
(357, 70, 'home_menu_bottom_1_home_menu_bottom_link', '19'),
(358, 70, '_home_menu_bottom_1_home_menu_bottom_link', 'field_5bbc2d4b4d6bc'),
(359, 70, 'home_menu_bottom_2_home_menu_bottom_title', 'SELECT BY CARS'),
(360, 70, '_home_menu_bottom_2_home_menu_bottom_title', 'field_5bbc2cf74d6ba'),
(361, 70, 'home_menu_bottom_2_home_menu_bottom_image', '66'),
(362, 70, '_home_menu_bottom_2_home_menu_bottom_image', 'field_5bbc2d1d4d6bb'),
(363, 70, 'home_menu_bottom_2_home_menu_bottom_link', '19'),
(364, 70, '_home_menu_bottom_2_home_menu_bottom_link', 'field_5bbc2d4b4d6bc'),
(365, 45, 'home_menu_bottom_0_home_menu_bottom_class', 'location'),
(366, 45, '_home_menu_bottom_0_home_menu_bottom_class', 'field_5bc03665b4027'),
(367, 45, 'home_menu_bottom_1_home_menu_bottom_class', 'tires'),
(368, 45, '_home_menu_bottom_1_home_menu_bottom_class', 'field_5bc03665b4027'),
(369, 45, 'home_menu_bottom_2_home_menu_bottom_class', 'cars'),
(370, 45, '_home_menu_bottom_2_home_menu_bottom_class', 'field_5bc03665b4027'),
(371, 72, 'page_background', '29'),
(372, 72, '_page_background', 'field_5bbc2baf4e805'),
(373, 72, 'home_menu_bottom_0_home_menu_bottom_title', 'FIND A DEALER'),
(374, 72, '_home_menu_bottom_0_home_menu_bottom_title', 'field_5bbc2cf74d6ba'),
(375, 72, 'home_menu_bottom_0_home_menu_bottom_image', '67'),
(376, 72, '_home_menu_bottom_0_home_menu_bottom_image', 'field_5bbc2d1d4d6bb'),
(377, 72, 'home_menu_bottom_0_home_menu_bottom_link', '21'),
(378, 72, '_home_menu_bottom_0_home_menu_bottom_link', 'field_5bbc2d4b4d6bc'),
(379, 72, 'home_menu_bottom', '3'),
(380, 72, '_home_menu_bottom', 'field_5bbc2ce24d6b9'),
(381, 72, 'home_menu_bottom_1_home_menu_bottom_title', 'SELECT TIRES'),
(382, 72, '_home_menu_bottom_1_home_menu_bottom_title', 'field_5bbc2cf74d6ba'),
(383, 72, 'home_menu_bottom_1_home_menu_bottom_image', '68'),
(384, 72, '_home_menu_bottom_1_home_menu_bottom_image', 'field_5bbc2d1d4d6bb'),
(385, 72, 'home_menu_bottom_1_home_menu_bottom_link', '19'),
(386, 72, '_home_menu_bottom_1_home_menu_bottom_link', 'field_5bbc2d4b4d6bc'),
(387, 72, 'home_menu_bottom_2_home_menu_bottom_title', 'SELECT BY CARS'),
(388, 72, '_home_menu_bottom_2_home_menu_bottom_title', 'field_5bbc2cf74d6ba'),
(389, 72, 'home_menu_bottom_2_home_menu_bottom_image', '66'),
(390, 72, '_home_menu_bottom_2_home_menu_bottom_image', 'field_5bbc2d1d4d6bb'),
(391, 72, 'home_menu_bottom_2_home_menu_bottom_link', '19'),
(392, 72, '_home_menu_bottom_2_home_menu_bottom_link', 'field_5bbc2d4b4d6bc'),
(393, 72, 'home_menu_bottom_0_home_menu_bottom_class', 'location'),
(394, 72, '_home_menu_bottom_0_home_menu_bottom_class', 'field_5bc03665b4027'),
(395, 72, 'home_menu_bottom_1_home_menu_bottom_class', 'tires'),
(396, 72, '_home_menu_bottom_1_home_menu_bottom_class', 'field_5bc03665b4027'),
(397, 72, 'home_menu_bottom_2_home_menu_bottom_class', 'cars'),
(398, 72, '_home_menu_bottom_2_home_menu_bottom_class', 'field_5bc03665b4027'),
(399, 73, '_wp_attached_file', '2018/10/fb-blue.png'),
(400, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:17;s:6:\"height\";i:17;s:4:\"file\";s:19:\"2018/10/fb-blue.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(401, 74, '_wp_attached_file', '2018/10/ig-blue.png'),
(402, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:17;s:6:\"height\";i:18;s:4:\"file\";s:19:\"2018/10/ig-blue.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(403, 75, '_wp_attached_file', '2018/10/tireshakk.png'),
(404, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:80;s:6:\"height\";i:11;s:4:\"file\";s:21:\"2018/10/tireshakk.png\";s:5:\"sizes\";a:3:{s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:18:\"tireshakk-24x3.png\";s:5:\"width\";i:24;s:6:\"height\";i:3;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:18:\"tireshakk-36x5.png\";s:5:\"width\";i:36;s:6:\"height\";i:5;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:18:\"tireshakk-48x7.png\";s:5:\"width\";i:48;s:6:\"height\";i:7;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(405, 76, '_wp_attached_file', '2018/10/logo.png'),
(406, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:197;s:6:\"height\";i:48;s:4:\"file\";s:16:\"2018/10/logo.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x48.png\";s:5:\"width\";i:150;s:6:\"height\";i:48;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:13:\"logo-24x6.png\";s:5:\"width\";i:24;s:6:\"height\";i:6;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:13:\"logo-36x9.png\";s:5:\"width\";i:36;s:6:\"height\";i:9;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:14:\"logo-48x12.png\";s:5:\"width\";i:48;s:6:\"height\";i:12;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(407, 77, 'page_background', '76'),
(408, 77, '_page_background', 'field_5bbc2baf4e805'),
(409, 77, 'home_menu_bottom_0_home_menu_bottom_title', 'FIND A DEALER'),
(410, 77, '_home_menu_bottom_0_home_menu_bottom_title', 'field_5bbc2cf74d6ba'),
(411, 77, 'home_menu_bottom_0_home_menu_bottom_image', '67'),
(412, 77, '_home_menu_bottom_0_home_menu_bottom_image', 'field_5bbc2d1d4d6bb'),
(413, 77, 'home_menu_bottom_0_home_menu_bottom_link', '21'),
(414, 77, '_home_menu_bottom_0_home_menu_bottom_link', 'field_5bbc2d4b4d6bc'),
(415, 77, 'home_menu_bottom', '3'),
(416, 77, '_home_menu_bottom', 'field_5bbc2ce24d6b9'),
(417, 77, 'home_menu_bottom_1_home_menu_bottom_title', 'SELECT TIRES'),
(418, 77, '_home_menu_bottom_1_home_menu_bottom_title', 'field_5bbc2cf74d6ba'),
(419, 77, 'home_menu_bottom_1_home_menu_bottom_image', '68'),
(420, 77, '_home_menu_bottom_1_home_menu_bottom_image', 'field_5bbc2d1d4d6bb'),
(421, 77, 'home_menu_bottom_1_home_menu_bottom_link', '19'),
(422, 77, '_home_menu_bottom_1_home_menu_bottom_link', 'field_5bbc2d4b4d6bc'),
(423, 77, 'home_menu_bottom_2_home_menu_bottom_title', 'SELECT BY CARS'),
(424, 77, '_home_menu_bottom_2_home_menu_bottom_title', 'field_5bbc2cf74d6ba'),
(425, 77, 'home_menu_bottom_2_home_menu_bottom_image', '66'),
(426, 77, '_home_menu_bottom_2_home_menu_bottom_image', 'field_5bbc2d1d4d6bb'),
(427, 77, 'home_menu_bottom_2_home_menu_bottom_link', '19'),
(428, 77, '_home_menu_bottom_2_home_menu_bottom_link', 'field_5bbc2d4b4d6bc'),
(429, 77, 'home_menu_bottom_0_home_menu_bottom_class', 'location'),
(430, 77, '_home_menu_bottom_0_home_menu_bottom_class', 'field_5bc03665b4027'),
(431, 77, 'home_menu_bottom_1_home_menu_bottom_class', 'tires'),
(432, 77, '_home_menu_bottom_1_home_menu_bottom_class', 'field_5bc03665b4027'),
(433, 77, 'home_menu_bottom_2_home_menu_bottom_class', 'cars'),
(434, 77, '_home_menu_bottom_2_home_menu_bottom_class', 'field_5bc03665b4027'),
(435, 78, 'page_background', '64'),
(436, 78, '_page_background', 'field_5bbc2baf4e805'),
(437, 78, 'home_menu_bottom_0_home_menu_bottom_title', 'FIND A DEALER'),
(438, 78, '_home_menu_bottom_0_home_menu_bottom_title', 'field_5bbc2cf74d6ba'),
(439, 78, 'home_menu_bottom_0_home_menu_bottom_image', '67'),
(440, 78, '_home_menu_bottom_0_home_menu_bottom_image', 'field_5bbc2d1d4d6bb'),
(441, 78, 'home_menu_bottom_0_home_menu_bottom_link', '21'),
(442, 78, '_home_menu_bottom_0_home_menu_bottom_link', 'field_5bbc2d4b4d6bc'),
(443, 78, 'home_menu_bottom', '3'),
(444, 78, '_home_menu_bottom', 'field_5bbc2ce24d6b9'),
(445, 78, 'home_menu_bottom_1_home_menu_bottom_title', 'SELECT TIRES'),
(446, 78, '_home_menu_bottom_1_home_menu_bottom_title', 'field_5bbc2cf74d6ba'),
(447, 78, 'home_menu_bottom_1_home_menu_bottom_image', '68'),
(448, 78, '_home_menu_bottom_1_home_menu_bottom_image', 'field_5bbc2d1d4d6bb'),
(449, 78, 'home_menu_bottom_1_home_menu_bottom_link', '19'),
(450, 78, '_home_menu_bottom_1_home_menu_bottom_link', 'field_5bbc2d4b4d6bc'),
(451, 78, 'home_menu_bottom_2_home_menu_bottom_title', 'SELECT BY CARS'),
(452, 78, '_home_menu_bottom_2_home_menu_bottom_title', 'field_5bbc2cf74d6ba'),
(453, 78, 'home_menu_bottom_2_home_menu_bottom_image', '66'),
(454, 78, '_home_menu_bottom_2_home_menu_bottom_image', 'field_5bbc2d1d4d6bb'),
(455, 78, 'home_menu_bottom_2_home_menu_bottom_link', '19'),
(456, 78, '_home_menu_bottom_2_home_menu_bottom_link', 'field_5bbc2d4b4d6bc'),
(457, 78, 'home_menu_bottom_0_home_menu_bottom_class', 'location'),
(458, 78, '_home_menu_bottom_0_home_menu_bottom_class', 'field_5bc03665b4027'),
(459, 78, 'home_menu_bottom_1_home_menu_bottom_class', 'tires'),
(460, 78, '_home_menu_bottom_1_home_menu_bottom_class', 'field_5bc03665b4027'),
(461, 78, 'home_menu_bottom_2_home_menu_bottom_class', 'cars'),
(462, 78, '_home_menu_bottom_2_home_menu_bottom_class', 'field_5bc03665b4027'),
(465, 42, '_thumbnail_id', '75'),
(466, 41, '_thumbnail_id', '74'),
(467, 80, '_wp_attached_file', '2018/10/bg.jpg'),
(468, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:897;s:4:\"file\";s:14:\"2018/10/bg.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"bg-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"bg-768x431.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:431;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"bg-1024x574.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:574;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:12:\"bg-24x13.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:13;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:12:\"bg-36x20.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:20;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:12:\"bg-48x27.jpg\";s:5:\"width\";i:48;s:6:\"height\";i:27;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(469, 17, '_wp_page_template', 'page-about.php'),
(470, 84, '_wp_attached_file', '2018/10/driven-to-perform.png'),
(471, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:242;s:6:\"height\";i:32;s:4:\"file\";s:29:\"2018/10/driven-to-perform.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"driven-to-perform-150x32.png\";s:5:\"width\";i:150;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:26:\"driven-to-perform-24x3.png\";s:5:\"width\";i:24;s:6:\"height\";i:3;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:26:\"driven-to-perform-36x5.png\";s:5:\"width\";i:36;s:6:\"height\";i:5;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:26:\"driven-to-perform-48x6.png\";s:5:\"width\";i:48;s:6:\"height\";i:6;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(472, 85, '_wp_attached_file', '2018/10/toyo-logo.png'),
(473, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:245;s:6:\"height\";i:25;s:4:\"file\";s:21:\"2018/10/toyo-logo.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"toyo-logo-150x25.png\";s:5:\"width\";i:150;s:6:\"height\";i:25;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:18:\"toyo-logo-24x2.png\";s:5:\"width\";i:24;s:6:\"height\";i:2;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:18:\"toyo-logo-36x4.png\";s:5:\"width\";i:36;s:6:\"height\";i:4;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:18:\"toyo-logo-48x5.png\";s:5:\"width\";i:48;s:6:\"height\";i:5;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(474, 39, '_menu_item_image_size', 'menu-36x36'),
(475, 39, '_menu_item_image_title_position', 'after'),
(478, 36, '_menu_item_image_size', 'menu-36x36'),
(479, 36, '_menu_item_image_title_position', 'after'),
(480, 37, '_menu_item_image_size', 'menu-36x36'),
(481, 37, '_menu_item_image_title_position', 'after'),
(484, 34, '_menu_item_image_size', 'menu-36x36'),
(485, 34, '_menu_item_image_title_position', 'after'),
(486, 27, '_wp_page_template', 'page-contact.php'),
(487, 19, '_wp_page_template', 'tires.php'),
(491, 88, 'dealers_information_0_dealers_name', 'Toyo Tires Driven'),
(492, 88, '_dealers_information_0_dealers_name', 'field_5bbc2ed8e2340'),
(493, 88, 'dealers_information_0_dealers_address', '1113 Banawe St, Quezon City, Metro Manila'),
(494, 88, '_dealers_information_0_dealers_address', 'field_5bbc2f0be2341'),
(495, 88, 'dealers_information_0_dealers_contact', '09559160218'),
(496, 88, '_dealers_information_0_dealers_contact', 'field_5bbc2f1be2342'),
(497, 88, 'dealers_information_0_dealers_longitude', '14.8696063'),
(498, 88, '_dealers_information_0_dealers_longitude', 'field_5bbc2f2de2343'),
(499, 88, 'dealers_information_0_dealers_latitude', '120.8822504'),
(500, 88, '_dealers_information_0_dealers_latitude', 'field_5bbc2f3de2344'),
(501, 88, 'dealers_information_1_dealers_name', 'Toyo Tires Congressional Ave'),
(502, 88, '_dealers_information_1_dealers_name', 'field_5bbc2ed8e2340'),
(503, 88, 'dealers_information_1_dealers_address', 'Congressional Ave, Project 8, Quezon City, Metro Manila'),
(504, 88, '_dealers_information_1_dealers_address', 'field_5bbc2f0be2341'),
(505, 88, 'dealers_information_1_dealers_contact', '09559160218'),
(506, 88, '_dealers_information_1_dealers_contact', 'field_5bbc2f1be2342'),
(507, 88, 'dealers_information_1_dealers_longitude', '14.8699712'),
(508, 88, '_dealers_information_1_dealers_longitude', 'field_5bbc2f2de2343'),
(509, 88, 'dealers_information_1_dealers_latitude', '120.8786204'),
(510, 88, '_dealers_information_1_dealers_latitude', 'field_5bbc2f3de2344'),
(511, 88, 'dealers_information', '2'),
(512, 88, '_dealers_information', 'field_5bbc2f4fe2345'),
(513, 21, 'dealers_information_2_dealers_name', 'Ayala Triangle Park'),
(514, 21, '_dealers_information_2_dealers_name', 'field_5bbc2ed8e2340'),
(515, 21, 'dealers_information_2_dealers_address', 'Makati City'),
(516, 21, '_dealers_information_2_dealers_address', 'field_5bbc2f0be2341'),
(517, 21, 'dealers_information_2_dealers_contact', ''),
(518, 21, '_dealers_information_2_dealers_contact', 'field_5bbc2f1be2342'),
(519, 21, 'dealers_information_2_dealers_latitude', '14.5571'),
(520, 21, '_dealers_information_2_dealers_latitude', 'field_5bbc2f3de2344'),
(521, 21, 'dealers_information_2_dealers_longitude', '121.0207707'),
(522, 21, '_dealers_information_2_dealers_longitude', 'field_5bbc2f2de2343'),
(523, 89, 'dealers_information_0_dealers_name', 'Toyo Tires Driven'),
(524, 89, '_dealers_information_0_dealers_name', 'field_5bbc2ed8e2340'),
(525, 89, 'dealers_information_0_dealers_address', '1113 Banawe St, Quezon City, Metro Manila'),
(526, 89, '_dealers_information_0_dealers_address', 'field_5bbc2f0be2341'),
(527, 89, 'dealers_information_0_dealers_contact', ''),
(528, 89, '_dealers_information_0_dealers_contact', 'field_5bbc2f1be2342'),
(529, 89, 'dealers_information_0_dealers_longitude', '121.0060365'),
(530, 89, '_dealers_information_0_dealers_longitude', 'field_5bbc2f2de2343'),
(531, 89, 'dealers_information_0_dealers_latitude', '14.6191054'),
(532, 89, '_dealers_information_0_dealers_latitude', 'field_5bbc2f3de2344'),
(533, 89, 'dealers_information_1_dealers_name', 'Toyo Tires Philippines'),
(534, 89, '_dealers_information_1_dealers_name', 'field_5bbc2ed8e2340'),
(535, 89, 'dealers_information_1_dealers_address', '347 Ortigas Ave, Greenhills East, Mandaluyong, 1554, Mandaluyong, Metro Manila'),
(536, 89, '_dealers_information_1_dealers_address', 'field_5bbc2f0be2341'),
(537, 89, 'dealers_information_1_dealers_contact', ''),
(538, 89, '_dealers_information_1_dealers_contact', 'field_5bbc2f1be2342'),
(539, 89, 'dealers_information_1_dealers_longitude', '121.0558002'),
(540, 89, '_dealers_information_1_dealers_longitude', 'field_5bbc2f2de2343'),
(541, 89, 'dealers_information_1_dealers_latitude', '14.5947099'),
(542, 89, '_dealers_information_1_dealers_latitude', 'field_5bbc2f3de2344'),
(543, 89, 'dealers_information', '3'),
(544, 89, '_dealers_information', 'field_5bbc2f4fe2345'),
(545, 89, 'dealers_information_2_dealers_name', 'Ayala Triangle Park'),
(546, 89, '_dealers_information_2_dealers_name', 'field_5bbc2ed8e2340'),
(547, 89, 'dealers_information_2_dealers_address', 'Makati City'),
(548, 89, '_dealers_information_2_dealers_address', 'field_5bbc2f0be2341'),
(549, 89, 'dealers_information_2_dealers_contact', ''),
(550, 89, '_dealers_information_2_dealers_contact', 'field_5bbc2f1be2342'),
(551, 89, 'dealers_information_2_dealers_latitude', '14.5571'),
(552, 89, '_dealers_information_2_dealers_latitude', 'field_5bbc2f3de2344'),
(553, 89, 'dealers_information_2_dealers_longitude', '121.0207707'),
(554, 89, '_dealers_information_2_dealers_longitude', 'field_5bbc2f2de2343'),
(561, 21, 'dealers_information_0_dealers_icon', '94'),
(562, 21, '_dealers_information_0_dealers_icon', 'field_5bc419fa6b398'),
(563, 21, 'dealers_information_1_dealers_icon', '94'),
(564, 21, '_dealers_information_1_dealers_icon', 'field_5bc419fa6b398'),
(565, 21, 'dealers_information_2_dealers_icon', '94'),
(566, 21, '_dealers_information_2_dealers_icon', 'field_5bc419fa6b398'),
(567, 93, 'dealers_information_0_dealers_name', 'Toyo Tires Driven'),
(568, 93, '_dealers_information_0_dealers_name', 'field_5bbc2ed8e2340'),
(569, 93, 'dealers_information_0_dealers_address', '1113 Banawe St, Quezon City, Metro Manila'),
(570, 93, '_dealers_information_0_dealers_address', 'field_5bbc2f0be2341'),
(571, 93, 'dealers_information_0_dealers_contact', ''),
(572, 93, '_dealers_information_0_dealers_contact', 'field_5bbc2f1be2342'),
(573, 93, 'dealers_information_0_dealers_longitude', '121.0060365'),
(574, 93, '_dealers_information_0_dealers_longitude', 'field_5bbc2f2de2343'),
(575, 93, 'dealers_information_0_dealers_latitude', '14.6191054'),
(576, 93, '_dealers_information_0_dealers_latitude', 'field_5bbc2f3de2344'),
(577, 93, 'dealers_information_1_dealers_name', 'Toyo Tires Philippines'),
(578, 93, '_dealers_information_1_dealers_name', 'field_5bbc2ed8e2340'),
(579, 93, 'dealers_information_1_dealers_address', '347 Ortigas Ave, Greenhills East, Mandaluyong, 1554, Mandaluyong, Metro Manila'),
(580, 93, '_dealers_information_1_dealers_address', 'field_5bbc2f0be2341'),
(581, 93, 'dealers_information_1_dealers_contact', ''),
(582, 93, '_dealers_information_1_dealers_contact', 'field_5bbc2f1be2342'),
(583, 93, 'dealers_information_1_dealers_longitude', '121.0558002'),
(584, 93, '_dealers_information_1_dealers_longitude', 'field_5bbc2f2de2343'),
(585, 93, 'dealers_information_1_dealers_latitude', '14.5947099'),
(586, 93, '_dealers_information_1_dealers_latitude', 'field_5bbc2f3de2344'),
(587, 93, 'dealers_information', '3'),
(588, 93, '_dealers_information', 'field_5bbc2f4fe2345'),
(589, 93, 'dealers_information_2_dealers_name', 'Ayala Triangle Park'),
(590, 93, '_dealers_information_2_dealers_name', 'field_5bbc2ed8e2340'),
(591, 93, 'dealers_information_2_dealers_address', 'Makati City'),
(592, 93, '_dealers_information_2_dealers_address', 'field_5bbc2f0be2341'),
(593, 93, 'dealers_information_2_dealers_contact', ''),
(594, 93, '_dealers_information_2_dealers_contact', 'field_5bbc2f1be2342'),
(595, 93, 'dealers_information_2_dealers_latitude', '14.5571'),
(596, 93, '_dealers_information_2_dealers_latitude', 'field_5bbc2f3de2344'),
(597, 93, 'dealers_information_2_dealers_longitude', '121.0207707'),
(598, 93, '_dealers_information_2_dealers_longitude', 'field_5bbc2f2de2343'),
(599, 93, 'dealers_information_0_dealers_icon', ''),
(600, 93, '_dealers_information_0_dealers_icon', 'field_5bc419fa6b398'),
(601, 93, 'dealers_information_1_dealers_icon', ''),
(602, 93, '_dealers_information_1_dealers_icon', 'field_5bc419fa6b398'),
(603, 93, 'dealers_information_2_dealers_icon', '68'),
(604, 93, '_dealers_information_2_dealers_icon', 'field_5bc419fa6b398'),
(605, 94, '_wp_attached_file', '2018/10/download.png'),
(606, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:20:\"2018/10/download.png\";s:5:\"sizes\";a:3:{s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:18:\"download-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:18:\"download-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:18:\"download-48x48.png\";s:5:\"width\";i:48;s:6:\"height\";i:48;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(619, 95, 'dealers_information_0_dealers_name', 'Toyo Tires Driven'),
(620, 95, '_dealers_information_0_dealers_name', 'field_5bbc2ed8e2340'),
(621, 95, 'dealers_information_0_dealers_address', '1113 Banawe St, Quezon City, Metro Manila'),
(622, 95, '_dealers_information_0_dealers_address', 'field_5bbc2f0be2341'),
(623, 95, 'dealers_information_0_dealers_contact', ''),
(624, 95, '_dealers_information_0_dealers_contact', 'field_5bbc2f1be2342'),
(625, 95, 'dealers_information_0_dealers_longitude', '121.0060365'),
(626, 95, '_dealers_information_0_dealers_longitude', 'field_5bbc2f2de2343'),
(627, 95, 'dealers_information_0_dealers_latitude', '14.6191054'),
(628, 95, '_dealers_information_0_dealers_latitude', 'field_5bbc2f3de2344'),
(629, 95, 'dealers_information_1_dealers_name', 'Toyo Tires Philippines'),
(630, 95, '_dealers_information_1_dealers_name', 'field_5bbc2ed8e2340'),
(631, 95, 'dealers_information_1_dealers_address', '347 Ortigas Ave, Greenhills East, Mandaluyong, 1554, Mandaluyong, Metro Manila'),
(632, 95, '_dealers_information_1_dealers_address', 'field_5bbc2f0be2341'),
(633, 95, 'dealers_information_1_dealers_contact', ''),
(634, 95, '_dealers_information_1_dealers_contact', 'field_5bbc2f1be2342'),
(635, 95, 'dealers_information_1_dealers_longitude', '121.0558002'),
(636, 95, '_dealers_information_1_dealers_longitude', 'field_5bbc2f2de2343'),
(637, 95, 'dealers_information_1_dealers_latitude', '14.5947099'),
(638, 95, '_dealers_information_1_dealers_latitude', 'field_5bbc2f3de2344'),
(639, 95, 'dealers_information', '4'),
(640, 95, '_dealers_information', 'field_5bbc2f4fe2345'),
(641, 95, 'dealers_information_2_dealers_name', 'Ayala Triangle Park'),
(642, 95, '_dealers_information_2_dealers_name', 'field_5bbc2ed8e2340'),
(643, 95, 'dealers_information_2_dealers_address', 'Makati City'),
(644, 95, '_dealers_information_2_dealers_address', 'field_5bbc2f0be2341'),
(645, 95, 'dealers_information_2_dealers_contact', ''),
(646, 95, '_dealers_information_2_dealers_contact', 'field_5bbc2f1be2342'),
(647, 95, 'dealers_information_2_dealers_latitude', '14.5571'),
(648, 95, '_dealers_information_2_dealers_latitude', 'field_5bbc2f3de2344'),
(649, 95, 'dealers_information_2_dealers_longitude', '121.0207707'),
(650, 95, '_dealers_information_2_dealers_longitude', 'field_5bbc2f2de2343'),
(651, 95, 'dealers_information_0_dealers_icon', ''),
(652, 95, '_dealers_information_0_dealers_icon', 'field_5bc419fa6b398'),
(653, 95, 'dealers_information_1_dealers_icon', ''),
(654, 95, '_dealers_information_1_dealers_icon', 'field_5bc419fa6b398'),
(655, 95, 'dealers_information_2_dealers_icon', '68'),
(656, 95, '_dealers_information_2_dealers_icon', 'field_5bc419fa6b398'),
(657, 95, 'dealers_information_3_dealers_name', 'Sm Makati Test'),
(658, 95, '_dealers_information_3_dealers_name', 'field_5bbc2ed8e2340'),
(659, 95, 'dealers_information_3_dealers_address', 'Sm makati'),
(660, 95, '_dealers_information_3_dealers_address', 'field_5bbc2f0be2341'),
(661, 95, 'dealers_information_3_dealers_contact', ''),
(662, 95, '_dealers_information_3_dealers_contact', 'field_5bbc2f1be2342'),
(663, 95, 'dealers_information_3_dealers_latitude', '14.5497324'),
(664, 95, '_dealers_information_3_dealers_latitude', 'field_5bbc2f3de2344'),
(665, 95, 'dealers_information_3_dealers_longitude', '121.0245813'),
(666, 95, '_dealers_information_3_dealers_longitude', 'field_5bbc2f2de2343'),
(667, 95, 'dealers_information_3_dealers_icon', '94'),
(668, 95, '_dealers_information_3_dealers_icon', 'field_5bc419fa6b398'),
(669, 96, 'dealers_information_0_dealers_name', 'Toyo Tires Driven'),
(670, 96, '_dealers_information_0_dealers_name', 'field_5bbc2ed8e2340'),
(671, 96, 'dealers_information_0_dealers_address', '1113 Banawe St, Quezon City, Metro Manila'),
(672, 96, '_dealers_information_0_dealers_address', 'field_5bbc2f0be2341'),
(673, 96, 'dealers_information_0_dealers_contact', ''),
(674, 96, '_dealers_information_0_dealers_contact', 'field_5bbc2f1be2342'),
(675, 96, 'dealers_information_0_dealers_longitude', '121.0060365'),
(676, 96, '_dealers_information_0_dealers_longitude', 'field_5bbc2f2de2343'),
(677, 96, 'dealers_information_0_dealers_latitude', '14.6191054'),
(678, 96, '_dealers_information_0_dealers_latitude', 'field_5bbc2f3de2344'),
(679, 96, 'dealers_information_1_dealers_name', 'Toyo Tires Philippines'),
(680, 96, '_dealers_information_1_dealers_name', 'field_5bbc2ed8e2340'),
(681, 96, 'dealers_information_1_dealers_address', '347 Ortigas Ave, Greenhills East, Mandaluyong, 1554, Mandaluyong, Metro Manila'),
(682, 96, '_dealers_information_1_dealers_address', 'field_5bbc2f0be2341'),
(683, 96, 'dealers_information_1_dealers_contact', ''),
(684, 96, '_dealers_information_1_dealers_contact', 'field_5bbc2f1be2342'),
(685, 96, 'dealers_information_1_dealers_longitude', '121.0558002'),
(686, 96, '_dealers_information_1_dealers_longitude', 'field_5bbc2f2de2343'),
(687, 96, 'dealers_information_1_dealers_latitude', '14.5947099'),
(688, 96, '_dealers_information_1_dealers_latitude', 'field_5bbc2f3de2344'),
(689, 96, 'dealers_information', '4'),
(690, 96, '_dealers_information', 'field_5bbc2f4fe2345'),
(691, 96, 'dealers_information_2_dealers_name', 'Ayala Triangle Park'),
(692, 96, '_dealers_information_2_dealers_name', 'field_5bbc2ed8e2340'),
(693, 96, 'dealers_information_2_dealers_address', 'Makati City'),
(694, 96, '_dealers_information_2_dealers_address', 'field_5bbc2f0be2341'),
(695, 96, 'dealers_information_2_dealers_contact', ''),
(696, 96, '_dealers_information_2_dealers_contact', 'field_5bbc2f1be2342'),
(697, 96, 'dealers_information_2_dealers_latitude', '14.5571'),
(698, 96, '_dealers_information_2_dealers_latitude', 'field_5bbc2f3de2344'),
(699, 96, 'dealers_information_2_dealers_longitude', '121.0207707'),
(700, 96, '_dealers_information_2_dealers_longitude', 'field_5bbc2f2de2343'),
(701, 96, 'dealers_information_0_dealers_icon', ''),
(702, 96, '_dealers_information_0_dealers_icon', 'field_5bc419fa6b398'),
(703, 96, 'dealers_information_1_dealers_icon', ''),
(704, 96, '_dealers_information_1_dealers_icon', 'field_5bc419fa6b398'),
(705, 96, 'dealers_information_2_dealers_icon', '68'),
(706, 96, '_dealers_information_2_dealers_icon', 'field_5bc419fa6b398'),
(707, 96, 'dealers_information_3_dealers_name', 'Sm Makati Test'),
(708, 96, '_dealers_information_3_dealers_name', 'field_5bbc2ed8e2340'),
(709, 96, 'dealers_information_3_dealers_address', 'Sm makati'),
(710, 96, '_dealers_information_3_dealers_address', 'field_5bbc2f0be2341'),
(711, 96, 'dealers_information_3_dealers_contact', ''),
(712, 96, '_dealers_information_3_dealers_contact', 'field_5bbc2f1be2342'),
(713, 96, 'dealers_information_3_dealers_latitude', '14.5499599');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(714, 96, '_dealers_information_3_dealers_latitude', 'field_5bbc2f3de2344'),
(715, 96, 'dealers_information_3_dealers_longitude', '121.0260589'),
(716, 96, '_dealers_information_3_dealers_longitude', 'field_5bbc2f2de2343'),
(717, 96, 'dealers_information_3_dealers_icon', '94'),
(718, 96, '_dealers_information_3_dealers_icon', 'field_5bc419fa6b398'),
(719, 97, 'dealers_information_0_dealers_name', 'Toyo Tires Driven'),
(720, 97, '_dealers_information_0_dealers_name', 'field_5bbc2ed8e2340'),
(721, 97, 'dealers_information_0_dealers_address', '1113 Banawe St, Quezon City, Metro Manila'),
(722, 97, '_dealers_information_0_dealers_address', 'field_5bbc2f0be2341'),
(723, 97, 'dealers_information_0_dealers_contact', ''),
(724, 97, '_dealers_information_0_dealers_contact', 'field_5bbc2f1be2342'),
(725, 97, 'dealers_information_0_dealers_longitude', '121.0060365'),
(726, 97, '_dealers_information_0_dealers_longitude', 'field_5bbc2f2de2343'),
(727, 97, 'dealers_information_0_dealers_latitude', '14.6191054'),
(728, 97, '_dealers_information_0_dealers_latitude', 'field_5bbc2f3de2344'),
(729, 97, 'dealers_information_1_dealers_name', 'Toyo Tires Philippines'),
(730, 97, '_dealers_information_1_dealers_name', 'field_5bbc2ed8e2340'),
(731, 97, 'dealers_information_1_dealers_address', '347 Ortigas Ave, Greenhills East, Mandaluyong, 1554, Mandaluyong, Metro Manila'),
(732, 97, '_dealers_information_1_dealers_address', 'field_5bbc2f0be2341'),
(733, 97, 'dealers_information_1_dealers_contact', ''),
(734, 97, '_dealers_information_1_dealers_contact', 'field_5bbc2f1be2342'),
(735, 97, 'dealers_information_1_dealers_longitude', '121.0558002'),
(736, 97, '_dealers_information_1_dealers_longitude', 'field_5bbc2f2de2343'),
(737, 97, 'dealers_information_1_dealers_latitude', '14.5947099'),
(738, 97, '_dealers_information_1_dealers_latitude', 'field_5bbc2f3de2344'),
(739, 97, 'dealers_information', '3'),
(740, 97, '_dealers_information', 'field_5bbc2f4fe2345'),
(741, 97, 'dealers_information_2_dealers_name', 'Ayala Triangle Park'),
(742, 97, '_dealers_information_2_dealers_name', 'field_5bbc2ed8e2340'),
(743, 97, 'dealers_information_2_dealers_address', 'Makati City'),
(744, 97, '_dealers_information_2_dealers_address', 'field_5bbc2f0be2341'),
(745, 97, 'dealers_information_2_dealers_contact', ''),
(746, 97, '_dealers_information_2_dealers_contact', 'field_5bbc2f1be2342'),
(747, 97, 'dealers_information_2_dealers_latitude', '14.5571'),
(748, 97, '_dealers_information_2_dealers_latitude', 'field_5bbc2f3de2344'),
(749, 97, 'dealers_information_2_dealers_longitude', '121.0207707'),
(750, 97, '_dealers_information_2_dealers_longitude', 'field_5bbc2f2de2343'),
(751, 97, 'dealers_information_0_dealers_icon', ''),
(752, 97, '_dealers_information_0_dealers_icon', 'field_5bc419fa6b398'),
(753, 97, 'dealers_information_1_dealers_icon', ''),
(754, 97, '_dealers_information_1_dealers_icon', 'field_5bc419fa6b398'),
(755, 97, 'dealers_information_2_dealers_icon', '68'),
(756, 97, '_dealers_information_2_dealers_icon', 'field_5bc419fa6b398'),
(757, 98, 'dealers_information_0_dealers_name', 'Toyo Tires Driven'),
(758, 98, '_dealers_information_0_dealers_name', 'field_5bbc2ed8e2340'),
(759, 98, 'dealers_information_0_dealers_address', '1113 Banawe St, Quezon City, Metro Manila'),
(760, 98, '_dealers_information_0_dealers_address', 'field_5bbc2f0be2341'),
(761, 98, 'dealers_information_0_dealers_contact', ''),
(762, 98, '_dealers_information_0_dealers_contact', 'field_5bbc2f1be2342'),
(763, 98, 'dealers_information_0_dealers_longitude', '121.0060365'),
(764, 98, '_dealers_information_0_dealers_longitude', 'field_5bbc2f2de2343'),
(765, 98, 'dealers_information_0_dealers_latitude', '14.6191054'),
(766, 98, '_dealers_information_0_dealers_latitude', 'field_5bbc2f3de2344'),
(767, 98, 'dealers_information_1_dealers_name', 'Toyo Tires Philippines'),
(768, 98, '_dealers_information_1_dealers_name', 'field_5bbc2ed8e2340'),
(769, 98, 'dealers_information_1_dealers_address', '347 Ortigas Ave, Greenhills East, Mandaluyong, 1554, Mandaluyong, Metro Manila'),
(770, 98, '_dealers_information_1_dealers_address', 'field_5bbc2f0be2341'),
(771, 98, 'dealers_information_1_dealers_contact', ''),
(772, 98, '_dealers_information_1_dealers_contact', 'field_5bbc2f1be2342'),
(773, 98, 'dealers_information_1_dealers_longitude', '121.0558002'),
(774, 98, '_dealers_information_1_dealers_longitude', 'field_5bbc2f2de2343'),
(775, 98, 'dealers_information_1_dealers_latitude', '14.5947099'),
(776, 98, '_dealers_information_1_dealers_latitude', 'field_5bbc2f3de2344'),
(777, 98, 'dealers_information', '3'),
(778, 98, '_dealers_information', 'field_5bbc2f4fe2345'),
(779, 98, 'dealers_information_2_dealers_name', 'Ayala Triangle Park'),
(780, 98, '_dealers_information_2_dealers_name', 'field_5bbc2ed8e2340'),
(781, 98, 'dealers_information_2_dealers_address', 'Makati City'),
(782, 98, '_dealers_information_2_dealers_address', 'field_5bbc2f0be2341'),
(783, 98, 'dealers_information_2_dealers_contact', ''),
(784, 98, '_dealers_information_2_dealers_contact', 'field_5bbc2f1be2342'),
(785, 98, 'dealers_information_2_dealers_latitude', '14.5571'),
(786, 98, '_dealers_information_2_dealers_latitude', 'field_5bbc2f3de2344'),
(787, 98, 'dealers_information_2_dealers_longitude', '121.0207707'),
(788, 98, '_dealers_information_2_dealers_longitude', 'field_5bbc2f2de2343'),
(789, 98, 'dealers_information_0_dealers_icon', ''),
(790, 98, '_dealers_information_0_dealers_icon', 'field_5bc419fa6b398'),
(791, 98, 'dealers_information_1_dealers_icon', ''),
(792, 98, '_dealers_information_1_dealers_icon', 'field_5bc419fa6b398'),
(793, 98, 'dealers_information_2_dealers_icon', '94'),
(794, 98, '_dealers_information_2_dealers_icon', 'field_5bc419fa6b398'),
(795, 102, '_edit_last', '1'),
(796, 102, '_wp_page_template', 'cars.php'),
(797, 102, '_edit_lock', '1544621455:1'),
(798, 104, 'page_background', '64'),
(799, 104, '_page_background', 'field_5bbc2baf4e805'),
(800, 104, 'home_menu_bottom_0_home_menu_bottom_title', 'FIND A DEALER'),
(801, 104, '_home_menu_bottom_0_home_menu_bottom_title', 'field_5bbc2cf74d6ba'),
(802, 104, 'home_menu_bottom_0_home_menu_bottom_image', '67'),
(803, 104, '_home_menu_bottom_0_home_menu_bottom_image', 'field_5bbc2d1d4d6bb'),
(804, 104, 'home_menu_bottom_0_home_menu_bottom_link', '21'),
(805, 104, '_home_menu_bottom_0_home_menu_bottom_link', 'field_5bbc2d4b4d6bc'),
(806, 104, 'home_menu_bottom', '3'),
(807, 104, '_home_menu_bottom', 'field_5bbc2ce24d6b9'),
(808, 104, 'home_menu_bottom_1_home_menu_bottom_title', 'SELECT TIRES'),
(809, 104, '_home_menu_bottom_1_home_menu_bottom_title', 'field_5bbc2cf74d6ba'),
(810, 104, 'home_menu_bottom_1_home_menu_bottom_image', '68'),
(811, 104, '_home_menu_bottom_1_home_menu_bottom_image', 'field_5bbc2d1d4d6bb'),
(812, 104, 'home_menu_bottom_1_home_menu_bottom_link', '19'),
(813, 104, '_home_menu_bottom_1_home_menu_bottom_link', 'field_5bbc2d4b4d6bc'),
(814, 104, 'home_menu_bottom_2_home_menu_bottom_title', 'SELECT BY CARS'),
(815, 104, '_home_menu_bottom_2_home_menu_bottom_title', 'field_5bbc2cf74d6ba'),
(816, 104, 'home_menu_bottom_2_home_menu_bottom_image', '66'),
(817, 104, '_home_menu_bottom_2_home_menu_bottom_image', 'field_5bbc2d1d4d6bb'),
(818, 104, 'home_menu_bottom_2_home_menu_bottom_link', '102'),
(819, 104, '_home_menu_bottom_2_home_menu_bottom_link', 'field_5bbc2d4b4d6bc'),
(820, 104, 'home_menu_bottom_0_home_menu_bottom_class', 'location'),
(821, 104, '_home_menu_bottom_0_home_menu_bottom_class', 'field_5bc03665b4027'),
(822, 104, 'home_menu_bottom_1_home_menu_bottom_class', 'tires'),
(823, 104, '_home_menu_bottom_1_home_menu_bottom_class', 'field_5bc03665b4027'),
(824, 104, 'home_menu_bottom_2_home_menu_bottom_class', 'cars'),
(825, 104, '_home_menu_bottom_2_home_menu_bottom_class', 'field_5bc03665b4027'),
(854, 115, '_edit_last', '1'),
(855, 115, '_edit_lock', '1539917845:1'),
(856, 115, '_wp_page_template', 'page-signin.php'),
(857, 117, '_edit_last', '1'),
(858, 117, '_wp_page_template', 'page-signup.php'),
(859, 117, '_edit_lock', '1540519800:1'),
(864, 124, '_menu_item_type', 'post_type'),
(865, 124, '_menu_item_menu_item_parent', '0'),
(866, 124, '_menu_item_object_id', '115'),
(867, 124, '_menu_item_object', 'page'),
(868, 124, '_menu_item_target', ''),
(869, 124, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(870, 124, '_menu_item_xfn', ''),
(871, 124, '_menu_item_url', ''),
(873, 124, '_menu_item_image_size', 'menu-36x36'),
(874, 124, '_menu_item_image_title_position', 'after'),
(875, 125, '_edit_last', '1'),
(876, 125, '_edit_lock', '1541686880:1'),
(877, 130, '_wp_attached_file', '2018/10/news1.jpg'),
(878, 130, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:290;s:4:\"file\";s:17:\"2018/10/news1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"news1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"news1-300x249.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:15:\"news1-24x20.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:20;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:15:\"news1-36x30.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:30;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:15:\"news1-48x40.jpg\";s:5:\"width\";i:48;s:6:\"height\";i:40;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(879, 131, '_wp_attached_file', '2018/10/news2.jpg'),
(880, 131, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:290;s:4:\"file\";s:17:\"2018/10/news2.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"news2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"news2-300x249.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:15:\"news2-24x20.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:20;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:15:\"news2-36x30.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:30;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:15:\"news2-48x40.jpg\";s:5:\"width\";i:48;s:6:\"height\";i:40;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(881, 132, '_wp_attached_file', '2018/10/news3.jpg'),
(882, 132, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:290;s:4:\"file\";s:17:\"2018/10/news3.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"news3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"news3-300x249.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:15:\"news3-24x20.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:20;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:15:\"news3-36x30.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:30;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:15:\"news3-48x40.jpg\";s:5:\"width\";i:48;s:6:\"height\";i:40;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(883, 23, '_wp_page_template', 'page-news.php'),
(884, 23, 'news', '5'),
(885, 23, '_news', 'field_5bd281889aaac'),
(886, 24, 'news', ''),
(887, 24, '_news', 'field_5bd281889aaac'),
(888, 23, 'news_0_news_title', 'BERLIN 2018 COMPILATION'),
(889, 23, '_news_0_news_title', 'field_5bd281929aaad'),
(890, 23, 'news_0_news_image', '130'),
(891, 23, '_news_0_news_image', 'field_5bd2819d9aaae'),
(892, 23, 'news_0_news_date', '20181030'),
(893, 23, '_news_0_news_date', 'field_5bd281ba9aaaf'),
(894, 23, 'news_1_news_title', 'BERLIN 2018 COMPILATION'),
(895, 23, '_news_1_news_title', 'field_5bd281929aaad'),
(896, 23, 'news_1_news_image', '131'),
(897, 23, '_news_1_news_image', 'field_5bd2819d9aaae'),
(898, 23, 'news_1_news_date', '20181030'),
(899, 23, '_news_1_news_date', 'field_5bd281ba9aaaf'),
(900, 23, 'news_2_news_title', 'BERLIN 2018 COMPILATION'),
(901, 23, '_news_2_news_title', 'field_5bd281929aaad'),
(902, 23, 'news_2_news_image', '132'),
(903, 23, '_news_2_news_image', 'field_5bd2819d9aaae'),
(904, 23, 'news_2_news_date', '20181030'),
(905, 23, '_news_2_news_date', 'field_5bd281ba9aaaf'),
(906, 133, 'news', '3'),
(907, 133, '_news', 'field_5bd281889aaac'),
(908, 133, 'news_0_news_title', 'BERLIN 2018 COMPILATION'),
(909, 133, '_news_0_news_title', 'field_5bd281929aaad'),
(910, 133, 'news_0_news_image', '130'),
(911, 133, '_news_0_news_image', 'field_5bd2819d9aaae'),
(912, 133, 'news_0_news_date', '20181030'),
(913, 133, '_news_0_news_date', 'field_5bd281ba9aaaf'),
(914, 133, 'news_1_news_title', 'BERLIN 2018 COMPILATION'),
(915, 133, '_news_1_news_title', 'field_5bd281929aaad'),
(916, 133, 'news_1_news_image', '131'),
(917, 133, '_news_1_news_image', 'field_5bd2819d9aaae'),
(918, 133, 'news_1_news_date', '20181030'),
(919, 133, '_news_1_news_date', 'field_5bd281ba9aaaf'),
(920, 133, 'news_2_news_title', 'BERLIN 2018 COMPILATION'),
(921, 133, '_news_2_news_title', 'field_5bd281929aaad'),
(922, 133, 'news_2_news_image', '132'),
(923, 133, '_news_2_news_image', 'field_5bd2819d9aaae'),
(924, 133, 'news_2_news_date', '20181030'),
(925, 133, '_news_2_news_date', 'field_5bd281ba9aaaf'),
(936, 137, '_um_custom_fields', 'a:6:{s:10:\"user_login\";a:15:{s:5:\"title\";s:8:\"Username\";s:7:\"metakey\";s:10:\"user_login\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:8:\"Username\";s:8:\"required\";i:1;s:6:\"public\";i:1;s:8:\"editable\";i:0;s:8:\"validate\";s:15:\"unique_username\";s:9:\"min_chars\";i:3;s:9:\"max_chars\";i:24;s:8:\"position\";s:1:\"1\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:10:\"user_email\";a:13:{s:5:\"title\";s:14:\"E-mail Address\";s:7:\"metakey\";s:10:\"user_email\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:14:\"E-mail Address\";s:8:\"required\";i:0;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:8:\"validate\";s:12:\"unique_email\";s:8:\"position\";s:1:\"4\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:13:\"user_password\";a:16:{s:5:\"title\";s:8:\"Password\";s:7:\"metakey\";s:13:\"user_password\";s:4:\"type\";s:8:\"password\";s:5:\"label\";s:8:\"Password\";s:8:\"required\";i:1;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:9:\"min_chars\";i:8;s:9:\"max_chars\";i:30;s:15:\"force_good_pass\";i:1;s:18:\"force_confirm_pass\";i:1;s:8:\"position\";s:1:\"5\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:10:\"first_name\";a:12:{s:5:\"title\";s:10:\"First Name\";s:7:\"metakey\";s:10:\"first_name\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:10:\"First Name\";s:8:\"required\";i:0;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:8:\"position\";s:1:\"2\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:9:\"last_name\";a:12:{s:5:\"title\";s:9:\"Last Name\";s:7:\"metakey\";s:9:\"last_name\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:9:\"Last Name\";s:8:\"required\";i:0;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:8:\"position\";s:1:\"3\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:9:\"_um_row_1\";a:5:{s:4:\"type\";s:3:\"row\";s:2:\"id\";s:9:\"_um_row_1\";s:8:\"sub_rows\";s:1:\"1\";s:4:\"cols\";s:1:\"1\";s:6:\"origin\";s:9:\"_um_row_1\";}}'),
(937, 137, '_um_mode', 'register'),
(938, 137, '_um_core', 'register'),
(939, 137, '_um_register_use_custom_settings', '1'),
(940, 138, '_um_custom_fields', 'a:3:{s:8:\"username\";a:13:{s:5:\"title\";s:18:\"Username or E-mail\";s:7:\"metakey\";s:8:\"username\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:18:\"Username or E-mail\";s:8:\"required\";i:1;s:6:\"public\";i:1;s:8:\"editable\";i:0;s:8:\"validate\";s:24:\"unique_username_or_email\";s:8:\"position\";s:1:\"1\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:13:\"user_password\";a:16:{s:5:\"title\";s:8:\"Password\";s:7:\"metakey\";s:13:\"user_password\";s:4:\"type\";s:8:\"password\";s:5:\"label\";s:8:\"Password\";s:8:\"required\";i:1;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:9:\"min_chars\";i:8;s:9:\"max_chars\";i:30;s:15:\"force_good_pass\";i:1;s:18:\"force_confirm_pass\";i:1;s:8:\"position\";s:1:\"2\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:9:\"_um_row_1\";a:5:{s:4:\"type\";s:3:\"row\";s:2:\"id\";s:9:\"_um_row_1\";s:8:\"sub_rows\";s:1:\"1\";s:4:\"cols\";s:1:\"1\";s:6:\"origin\";s:9:\"_um_row_1\";}}'),
(941, 138, '_um_mode', 'login'),
(942, 138, '_um_core', 'login'),
(943, 138, '_um_login_use_custom_settings', '1'),
(944, 139, '_um_custom_fields', 'a:1:{s:9:\"_um_row_1\";a:5:{s:4:\"type\";s:3:\"row\";s:2:\"id\";s:9:\"_um_row_1\";s:8:\"sub_rows\";s:1:\"1\";s:4:\"cols\";s:1:\"1\";s:6:\"origin\";s:9:\"_um_row_1\";}}'),
(945, 139, '_um_mode', 'profile'),
(946, 139, '_um_core', 'profile'),
(947, 139, '_um_profile_use_custom_settings', '1'),
(948, 140, '_um_template', 'members'),
(949, 140, '_um_mode', 'directory'),
(950, 140, '_um_has_profile_photo', '0'),
(951, 140, '_um_has_cover_photo', '0'),
(952, 140, '_um_show_social', '0'),
(953, 140, '_um_show_userinfo', '0'),
(954, 140, '_um_show_tagline', '0'),
(955, 140, '_um_search', '0'),
(956, 140, '_um_userinfo_animate', '1'),
(957, 140, '_um_sortby', 'user_registered_desc'),
(958, 140, '_um_profile_photo', '1'),
(959, 140, '_um_cover_photos', '1'),
(960, 140, '_um_show_name', '1'),
(961, 140, '_um_search_filters', ''),
(962, 140, '_um_directory_header', '{total_users} Members'),
(963, 140, '_um_directory_header_single', '{total_users} Member'),
(964, 140, '_um_directory_no_users', 'We are sorry. We cannot find any users who match your search criteria.'),
(965, 140, '_um_profiles_per_page', '12'),
(966, 140, '_um_profiles_per_page_mobile', '6'),
(967, 140, '_um_core', 'members'),
(968, 138, '_edit_lock', '1540621343:1'),
(969, 138, '_edit_last', '1'),
(970, 138, '_um_register_use_custom_settings', '0'),
(971, 138, '_um_register_role', '0'),
(972, 138, '_um_register_template', 'register'),
(973, 138, '_um_register_max_width', ''),
(974, 138, '_um_register_icons', 'field'),
(975, 138, '_um_register_primary_btn_word', ''),
(976, 138, '_um_register_secondary_btn', '0'),
(977, 138, '_um_register_secondary_btn_word', ''),
(978, 138, '_um_register_use_gdpr', '0'),
(979, 138, '_um_register_use_gdpr_content_id', ''),
(980, 138, '_um_register_use_gdpr_toggle_show', ''),
(981, 138, '_um_register_use_gdpr_toggle_hide', ''),
(982, 138, '_um_register_use_gdpr_agreement', ''),
(983, 138, '_um_register_use_gdpr_error_text', ''),
(984, 138, '_um_profile_use_custom_settings', '0'),
(985, 138, '_um_profile_role', ''),
(986, 138, '_um_profile_template', 'profile'),
(987, 138, '_um_profile_max_width', ''),
(988, 138, '_um_profile_area_max_width', ''),
(989, 138, '_um_profile_icons', 'field'),
(990, 138, '_um_profile_primary_btn_word', ''),
(991, 138, '_um_profile_secondary_btn', '0'),
(992, 138, '_um_profile_secondary_btn_word', ''),
(993, 138, '_um_profile_cover_enabled', '0'),
(994, 138, '_um_profile_cover_ratio', '2.7:1'),
(995, 138, '_um_profile_photosize', ''),
(996, 138, '_um_profile_photo_required', '0'),
(997, 138, '_um_profile_show_name', '0'),
(998, 138, '_um_profile_show_social_links', '0'),
(999, 138, '_um_profile_show_bio', '0'),
(1001, 138, '_um_login_template', 'login'),
(1002, 138, '_um_login_max_width', ''),
(1003, 138, '_um_login_icons', 'field'),
(1004, 138, '_um_login_primary_btn_word', ''),
(1005, 138, '_um_login_secondary_btn', '0'),
(1006, 138, '_um_login_secondary_btn_word', ''),
(1007, 138, '_um_login_forgot_pass_link', '0'),
(1008, 138, '_um_login_show_rememberme', '1'),
(1009, 138, '_um_login_after_login', 'redirect_url'),
(1010, 138, '_um_login_redirect_url', '/'),
(1011, 137, '_edit_lock', '1540531453:1'),
(1012, 17, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"1\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(1013, 142, '_edit_last', '1'),
(1014, 142, '_edit_lock', '1540529500:1'),
(1015, 142, '_wp_page_template', 'default'),
(1016, 142, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(1017, 140, '_edit_lock', '1541908553:1'),
(1018, 144, '_edit_last', '1'),
(1019, 144, '_wp_page_template', 'page-member.php'),
(1020, 144, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(1021, 144, '_edit_lock', '1540530933:1'),
(1022, 146, '_edit_last', '1'),
(1023, 146, '_wp_page_template', 'default'),
(1024, 146, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(1025, 146, '_edit_lock', '1540529735:1'),
(1027, 149, '_menu_item_type', 'post_type'),
(1028, 149, '_menu_item_menu_item_parent', '0'),
(1029, 149, '_menu_item_object_id', '146'),
(1030, 149, '_menu_item_object', 'page'),
(1031, 149, '_menu_item_target', ''),
(1032, 149, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1033, 149, '_menu_item_xfn', ''),
(1034, 149, '_menu_item_url', ''),
(1036, 149, '_menu_item_image_size', 'menu-36x36'),
(1037, 149, '_menu_item_image_title_position', 'after'),
(1038, 149, 'menu-item-um_nav_public', '2'),
(1039, 124, 'menu-item-um_nav_public', '1'),
(1052, 139, '_edit_lock', '1540622415:1'),
(1053, 139, '_edit_last', '1'),
(1054, 139, '_um_register_use_custom_settings', '0'),
(1055, 139, '_um_register_role', '0'),
(1056, 139, '_um_register_template', 'register'),
(1057, 139, '_um_register_max_width', ''),
(1058, 139, '_um_register_icons', 'field'),
(1059, 139, '_um_register_primary_btn_word', ''),
(1060, 139, '_um_register_secondary_btn', '0'),
(1061, 139, '_um_register_secondary_btn_word', ''),
(1062, 139, '_um_register_use_gdpr', '0'),
(1063, 139, '_um_register_use_gdpr_content_id', ''),
(1064, 139, '_um_register_use_gdpr_toggle_show', ''),
(1065, 139, '_um_register_use_gdpr_toggle_hide', ''),
(1066, 139, '_um_register_use_gdpr_agreement', ''),
(1067, 139, '_um_register_use_gdpr_error_text', ''),
(1068, 139, '_um_profile_role', ''),
(1069, 139, '_um_profile_template', 'profile'),
(1070, 139, '_um_profile_max_width', ''),
(1071, 139, '_um_profile_area_max_width', ''),
(1072, 139, '_um_profile_icons', 'field'),
(1073, 139, '_um_profile_primary_btn_word', ''),
(1074, 139, '_um_profile_secondary_btn', '0'),
(1075, 139, '_um_profile_secondary_btn_word', ''),
(1076, 139, '_um_profile_cover_enabled', '0'),
(1077, 139, '_um_profile_cover_ratio', '2.7:1'),
(1078, 139, '_um_profile_photosize', ''),
(1079, 139, '_um_profile_photo_required', '0'),
(1080, 139, '_um_profile_show_name', '0'),
(1081, 139, '_um_profile_show_social_links', '0'),
(1082, 139, '_um_profile_show_bio', '0'),
(1084, 139, '_um_login_use_custom_settings', '0'),
(1085, 139, '_um_login_template', 'login'),
(1086, 139, '_um_login_max_width', ''),
(1087, 139, '_um_login_icons', 'field'),
(1088, 139, '_um_login_primary_btn_word', ''),
(1089, 139, '_um_login_secondary_btn', '0'),
(1090, 139, '_um_login_secondary_btn_word', ''),
(1091, 139, '_um_login_forgot_pass_link', '0'),
(1092, 139, '_um_login_show_rememberme', '0'),
(1093, 139, '_um_login_after_login', '0'),
(1094, 139, '_um_login_redirect_url', ''),
(1097, 137, '_edit_last', '1'),
(1098, 137, '_um_register_role', 'subscriber'),
(1099, 137, '_um_register_template', 'register'),
(1100, 137, '_um_register_max_width', ''),
(1101, 137, '_um_register_icons', 'field'),
(1102, 137, '_um_register_primary_btn_word', ''),
(1103, 137, '_um_register_secondary_btn', '0'),
(1104, 137, '_um_register_secondary_btn_word', ''),
(1105, 137, '_um_register_use_gdpr', '0'),
(1106, 137, '_um_register_use_gdpr_content_id', ''),
(1107, 137, '_um_register_use_gdpr_toggle_show', ''),
(1108, 137, '_um_register_use_gdpr_toggle_hide', ''),
(1109, 137, '_um_register_use_gdpr_agreement', ''),
(1110, 137, '_um_register_use_gdpr_error_text', ''),
(1111, 137, '_um_profile_use_custom_settings', '0'),
(1112, 137, '_um_profile_role', ''),
(1113, 137, '_um_profile_template', 'profile'),
(1114, 137, '_um_profile_max_width', ''),
(1115, 137, '_um_profile_area_max_width', ''),
(1116, 137, '_um_profile_icons', 'field'),
(1117, 137, '_um_profile_primary_btn_word', ''),
(1118, 137, '_um_profile_secondary_btn', '0'),
(1119, 137, '_um_profile_secondary_btn_word', ''),
(1120, 137, '_um_profile_cover_enabled', '0'),
(1121, 137, '_um_profile_cover_ratio', '2.7:1'),
(1122, 137, '_um_profile_photosize', ''),
(1123, 137, '_um_profile_photo_required', '0'),
(1124, 137, '_um_profile_show_name', '0'),
(1125, 137, '_um_profile_show_social_links', '0'),
(1126, 137, '_um_profile_show_bio', '0'),
(1127, 137, '_um_profile_metafields', 'a:1:{i:0;s:1:\"0\";}'),
(1128, 137, '_um_login_use_custom_settings', '0'),
(1129, 137, '_um_login_template', 'login'),
(1130, 137, '_um_login_max_width', ''),
(1131, 137, '_um_login_icons', 'field'),
(1132, 137, '_um_login_primary_btn_word', ''),
(1133, 137, '_um_login_secondary_btn', '0'),
(1134, 137, '_um_login_secondary_btn_word', ''),
(1135, 137, '_um_login_forgot_pass_link', '0'),
(1136, 137, '_um_login_show_rememberme', '0'),
(1137, 137, '_um_login_after_login', '0'),
(1138, 137, '_um_login_redirect_url', ''),
(1141, 21, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(1142, 154, 'dealers_information_0_dealers_name', 'Toyo Tires Driven'),
(1143, 154, '_dealers_information_0_dealers_name', 'field_5bbc2ed8e2340'),
(1144, 154, 'dealers_information_0_dealers_address', '1113 Banawe St, Quezon City, Metro Manila'),
(1145, 154, '_dealers_information_0_dealers_address', 'field_5bbc2f0be2341'),
(1146, 154, 'dealers_information_0_dealers_contact', ''),
(1147, 154, '_dealers_information_0_dealers_contact', 'field_5bbc2f1be2342'),
(1148, 154, 'dealers_information_0_dealers_longitude', '121.0060365'),
(1149, 154, '_dealers_information_0_dealers_longitude', 'field_5bbc2f2de2343'),
(1150, 154, 'dealers_information_0_dealers_latitude', '14.6191054'),
(1151, 154, '_dealers_information_0_dealers_latitude', 'field_5bbc2f3de2344'),
(1152, 154, 'dealers_information_1_dealers_name', 'Toyo Tires Philippines'),
(1153, 154, '_dealers_information_1_dealers_name', 'field_5bbc2ed8e2340'),
(1154, 154, 'dealers_information_1_dealers_address', '347 Ortigas Ave, Greenhills East, Mandaluyong, 1554, Mandaluyong, Metro Manila'),
(1155, 154, '_dealers_information_1_dealers_address', 'field_5bbc2f0be2341'),
(1156, 154, 'dealers_information_1_dealers_contact', ''),
(1157, 154, '_dealers_information_1_dealers_contact', 'field_5bbc2f1be2342'),
(1158, 154, 'dealers_information_1_dealers_longitude', '121.0558002'),
(1159, 154, '_dealers_information_1_dealers_longitude', 'field_5bbc2f2de2343'),
(1160, 154, 'dealers_information_1_dealers_latitude', '14.5947099'),
(1161, 154, '_dealers_information_1_dealers_latitude', 'field_5bbc2f3de2344'),
(1162, 154, 'dealers_information', '3'),
(1163, 154, '_dealers_information', 'field_5bbc2f4fe2345'),
(1164, 154, 'dealers_information_2_dealers_name', 'Ayala Triangle Park'),
(1165, 154, '_dealers_information_2_dealers_name', 'field_5bbc2ed8e2340'),
(1166, 154, 'dealers_information_2_dealers_address', 'Makati City'),
(1167, 154, '_dealers_information_2_dealers_address', 'field_5bbc2f0be2341'),
(1168, 154, 'dealers_information_2_dealers_contact', ''),
(1169, 154, '_dealers_information_2_dealers_contact', 'field_5bbc2f1be2342'),
(1170, 154, 'dealers_information_2_dealers_latitude', '14.5571'),
(1171, 154, '_dealers_information_2_dealers_latitude', 'field_5bbc2f3de2344'),
(1172, 154, 'dealers_information_2_dealers_longitude', '121.0207707'),
(1173, 154, '_dealers_information_2_dealers_longitude', 'field_5bbc2f2de2343'),
(1174, 154, 'dealers_information_0_dealers_icon', '94'),
(1175, 154, '_dealers_information_0_dealers_icon', 'field_5bc419fa6b398'),
(1176, 154, 'dealers_information_1_dealers_icon', '94'),
(1177, 154, '_dealers_information_1_dealers_icon', 'field_5bc419fa6b398'),
(1178, 154, 'dealers_information_2_dealers_icon', '94'),
(1179, 154, '_dealers_information_2_dealers_icon', 'field_5bc419fa6b398'),
(1180, 1, '_edit_lock', '1541523857:1'),
(1184, 138, '_um_profile_metafields', 'a:1:{i:0;s:1:\"0\";}'),
(1185, 156, '_wp_attached_file', '2018/11/logo.png'),
(1186, 156, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:245;s:6:\"height\";i:25;s:4:\"file\";s:16:\"2018/11/logo.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x25.png\";s:5:\"width\";i:150;s:6:\"height\";i:25;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:13:\"logo-24x2.png\";s:5:\"width\";i:24;s:6:\"height\";i:2;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:13:\"logo-36x4.png\";s:5:\"width\";i:36;s:6:\"height\";i:4;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:13:\"logo-48x5.png\";s:5:\"width\";i:48;s:6:\"height\";i:5;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1187, 157, '_wp_attached_file', '2018/11/cropped-logo.png'),
(1188, 157, '_wp_attachment_context', 'custom-logo'),
(1189, 157, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:980;s:6:\"height\";i:100;s:4:\"file\";s:24:\"2018/11/cropped-logo.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-logo-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"cropped-logo-300x31.png\";s:5:\"width\";i:300;s:6:\"height\";i:31;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"cropped-logo-768x78.png\";s:5:\"width\";i:768;s:6:\"height\";i:78;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:21:\"cropped-logo-24x2.png\";s:5:\"width\";i:24;s:6:\"height\";i:2;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:21:\"cropped-logo-36x4.png\";s:5:\"width\";i:36;s:6:\"height\";i:4;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:21:\"cropped-logo-48x5.png\";s:5:\"width\";i:48;s:6:\"height\";i:5;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1198, 164, '_wp_attached_file', '2018/11/maxresdefault-e1541639135949.jpg'),
(1199, 164, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:290;s:4:\"file\";s:40:\"2018/11/maxresdefault-e1541639135949.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"maxresdefault-e1541639135949-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"maxresdefault-e1541639135949-300x249.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:38:\"maxresdefault-e1541639135949-24x20.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:20;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:38:\"maxresdefault-e1541639135949-36x30.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:30;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:38:\"maxresdefault-e1541639135949-48x40.jpg\";s:5:\"width\";i:48;s:6:\"height\";i:40;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1200, 23, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(1201, 23, 'news_3_news_title', 'BERLIN 2018 COMPILATION'),
(1202, 23, '_news_3_news_title', 'field_5bd281929aaad'),
(1203, 23, 'news_3_news_image', '164'),
(1204, 23, '_news_3_news_image', 'field_5bd2819d9aaae'),
(1205, 23, 'news_3_news_date', '20181030'),
(1206, 23, '_news_3_news_date', 'field_5bd281ba9aaaf'),
(1207, 165, 'news', '4'),
(1208, 165, '_news', 'field_5bd281889aaac'),
(1209, 165, 'news_0_news_title', 'BERLIN 2018 COMPILATION'),
(1210, 165, '_news_0_news_title', 'field_5bd281929aaad'),
(1211, 165, 'news_0_news_image', '130'),
(1212, 165, '_news_0_news_image', 'field_5bd2819d9aaae'),
(1213, 165, 'news_0_news_date', '20181030'),
(1214, 165, '_news_0_news_date', 'field_5bd281ba9aaaf'),
(1215, 165, 'news_1_news_title', 'BERLIN 2018 COMPILATION'),
(1216, 165, '_news_1_news_title', 'field_5bd281929aaad'),
(1217, 165, 'news_1_news_image', '131'),
(1218, 165, '_news_1_news_image', 'field_5bd2819d9aaae'),
(1219, 165, 'news_1_news_date', '20181030'),
(1220, 165, '_news_1_news_date', 'field_5bd281ba9aaaf'),
(1221, 165, 'news_2_news_title', 'BERLIN 2018 COMPILATION'),
(1222, 165, '_news_2_news_title', 'field_5bd281929aaad'),
(1223, 165, 'news_2_news_image', '132'),
(1224, 165, '_news_2_news_image', 'field_5bd2819d9aaae'),
(1225, 165, 'news_2_news_date', '20181030'),
(1226, 165, '_news_2_news_date', 'field_5bd281ba9aaaf'),
(1227, 165, 'news_3_news_title', 'BERLIN 2018 COMPILATION'),
(1228, 165, '_news_3_news_title', 'field_5bd281929aaad'),
(1229, 165, 'news_3_news_image', '164'),
(1230, 165, '_news_3_news_image', 'field_5bd2819d9aaae'),
(1231, 165, 'news_3_news_date', '20181030'),
(1232, 165, '_news_3_news_date', 'field_5bd281ba9aaaf'),
(1233, 166, '_edit_lock', '1541696691:1'),
(1237, 27, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(1239, 175, '_wp_attached_file', '2018/11/mazda-3.png'),
(1240, 175, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:455;s:6:\"height\";i:287;s:4:\"file\";s:19:\"2018/11/mazda-3.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"mazda-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"mazda-3-300x189.png\";s:5:\"width\";i:300;s:6:\"height\";i:189;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:17:\"mazda-3-24x15.png\";s:5:\"width\";i:24;s:6:\"height\";i:15;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:17:\"mazda-3-36x23.png\";s:5:\"width\";i:36;s:6:\"height\";i:23;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:17:\"mazda-3-48x30.png\";s:5:\"width\";i:48;s:6:\"height\";i:30;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1241, 23, 'news_4_news_title', 'BERLIN'),
(1242, 23, '_news_4_news_title', 'field_5bd281929aaad'),
(1243, 23, 'news_4_news_image', '175'),
(1244, 23, '_news_4_news_image', 'field_5bd2819d9aaae'),
(1245, 23, 'news_4_news_date', '20181117'),
(1246, 23, '_news_4_news_date', 'field_5bd281ba9aaaf'),
(1247, 176, 'news', '5'),
(1248, 176, '_news', 'field_5bd281889aaac'),
(1249, 176, 'news_0_news_title', 'BERLIN 2018 COMPILATION'),
(1250, 176, '_news_0_news_title', 'field_5bd281929aaad'),
(1251, 176, 'news_0_news_image', '130'),
(1252, 176, '_news_0_news_image', 'field_5bd2819d9aaae'),
(1253, 176, 'news_0_news_date', '20181030'),
(1254, 176, '_news_0_news_date', 'field_5bd281ba9aaaf'),
(1255, 176, 'news_1_news_title', 'BERLIN 2018 COMPILATION'),
(1256, 176, '_news_1_news_title', 'field_5bd281929aaad'),
(1257, 176, 'news_1_news_image', '131'),
(1258, 176, '_news_1_news_image', 'field_5bd2819d9aaae'),
(1259, 176, 'news_1_news_date', '20181030'),
(1260, 176, '_news_1_news_date', 'field_5bd281ba9aaaf'),
(1261, 176, 'news_2_news_title', 'BERLIN 2018 COMPILATION'),
(1262, 176, '_news_2_news_title', 'field_5bd281929aaad'),
(1263, 176, 'news_2_news_image', '132'),
(1264, 176, '_news_2_news_image', 'field_5bd2819d9aaae'),
(1265, 176, 'news_2_news_date', '20181030'),
(1266, 176, '_news_2_news_date', 'field_5bd281ba9aaaf'),
(1267, 176, 'news_3_news_title', 'BERLIN 2018 COMPILATION'),
(1268, 176, '_news_3_news_title', 'field_5bd281929aaad'),
(1269, 176, 'news_3_news_image', '164'),
(1270, 176, '_news_3_news_image', 'field_5bd2819d9aaae'),
(1271, 176, 'news_3_news_date', '20181030'),
(1272, 176, '_news_3_news_date', 'field_5bd281ba9aaaf'),
(1273, 176, 'news_4_news_title', 'BERLIN'),
(1274, 176, '_news_4_news_title', 'field_5bd281929aaad'),
(1275, 176, 'news_4_news_image', '175'),
(1276, 176, '_news_4_news_image', 'field_5bd2819d9aaae'),
(1277, 176, 'news_4_news_date', '20181117'),
(1278, 176, '_news_4_news_date', 'field_5bd281ba9aaaf'),
(1279, 181, '_menu_item_type', 'post_type'),
(1280, 181, '_menu_item_menu_item_parent', '0'),
(1281, 181, '_menu_item_object_id', '102'),
(1282, 181, '_menu_item_object', 'page'),
(1283, 181, '_menu_item_target', ''),
(1284, 181, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1285, 181, '_menu_item_xfn', ''),
(1286, 181, '_menu_item_url', ''),
(1288, 181, '_menu_item_image_size', 'menu-36x36'),
(1289, 181, '_menu_item_image_title_position', 'after');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-10-07 17:27:55', '2018-10-07 17:27:55', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-10-07 17:27:55', '2018-10-07 17:27:55', '', 0, 'http://toyotires.localhost/?p=1', 0, 'post', '', 1),
(17, 1, '2018-10-09 03:17:33', '2018-10-09 03:17:33', '<h5>SERVICES, STYLE, AND REALLY GREAT TIRES</h5>\r\nEstablished in 1966, Toyo Tire U.S.A. Corp. represents the innovation, quality, performance, and excellent service that Toyo Tires has delivered worldwide for more than 70 years. We offer a complete selection of premium replacement tires for nearly every make and model including light trucks, SUVs, high performance cars, and luxury vehicles, as well as commercial trucks. Many of these tires are built here in the United States at our state-of-the-art factory in Bartow County, Georgia.\r\n<div><img class=\"alignnone size-full wp-image-85\" src=\"http://toyotires.localhost/wp-content/uploads/2018/10/toyo-logo.png\" alt=\"\" width=\"245\" height=\"25\" /></div>\r\nOn October 1, 2007, Toyo Tires unified our brand logos, which previously varied by segment. We have decided to unify our brand logos in order to strengthen our brand on a global scale and to energize our marketing activities by presenting a uniform brand image. Vivid blue of Toyo Tires logo conveys an impression of youth.\r\n<div><img class=\"alignnone size-full wp-image-84\" src=\"http://toyotires.localhost/wp-content/uploads/2018/10/driven-to-perform.png\" alt=\"\" width=\"242\" height=\"32\" /></div>\r\nWe introduced our brand statement “driven to perform” on May 20, 2008. Logotype of our statement symbolizes loyalty and spirit of innovation. The figure of expresses inspiration.', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2018-10-26 03:55:54', '2018-10-26 03:55:54', '', 0, 'http://toyotires.localhost/?page_id=17', 0, 'page', '', 0),
(18, 1, '2018-10-09 03:17:33', '2018-10-09 03:17:33', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-10-09 03:17:33', '2018-10-09 03:17:33', '', 17, 'http://toyotires.localhost/2018/10/09/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-10-09 03:17:45', '2018-10-09 03:17:45', '', 'Tires', '', 'publish', 'closed', 'closed', '', 'tires', '', '', '2018-10-15 02:52:51', '2018-10-15 02:52:51', '', 0, 'http://toyotires.localhost/?page_id=19', 0, 'page', '', 0),
(20, 1, '2018-10-09 03:17:45', '2018-10-09 03:17:45', '', 'Tires', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-10-09 03:17:45', '2018-10-09 03:17:45', '', 19, 'http://toyotires.localhost/2018/10/09/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2018-10-09 03:17:53', '2018-10-09 03:17:53', '', 'Dealers', '', 'publish', 'closed', 'closed', '', 'dealers', '', '', '2018-10-26 05:42:18', '2018-10-26 05:42:18', '', 0, 'http://toyotires.localhost/?page_id=21', 0, 'page', '', 0),
(22, 1, '2018-10-09 03:17:53', '2018-10-09 03:17:53', '', 'Dealers', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-10-09 03:17:53', '2018-10-09 03:17:53', '', 21, 'http://toyotires.localhost/2018/10/09/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-10-09 03:18:09', '2018-10-09 03:18:09', '', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2018-11-17 01:04:01', '2018-11-17 01:04:01', '', 0, 'http://toyotires.localhost/?page_id=23', 0, 'page', '', 0),
(24, 1, '2018-10-09 03:18:09', '2018-10-09 03:18:09', '', 'News', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-10-09 03:18:09', '2018-10-09 03:18:09', '', 23, 'http://toyotires.localhost/2018/10/09/23-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-10-09 03:18:26', '2018-10-09 03:18:26', '<div>\r\n<h5>CUSTOMER CARE: WE\'RE HERE TO HELP.</h5>\r\nDo you have feedback or questions regarding our products?\r\n\r\nOr you want to become a Toyo Tires Dealer?\r\n\r\nYou may contact us.\r\n\r\nMJC Building Ortigas Avenue, Greenhills East, Mandaluyong City.\r\n\r\n727-6150/51.\r\n\r\nor visit our Facebook page.\r\n\r\n</div>', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2018-11-17 01:11:23', '2018-11-17 01:11:23', '', 0, 'http://toyotires.localhost/?page_id=27', 0, 'page', '', 0),
(28, 1, '2018-10-09 03:18:26', '2018-10-09 03:18:26', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-10-09 03:18:26', '2018-10-09 03:18:26', '', 27, 'http://toyotires.localhost/2018/10/09/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-10-09 03:55:40', '2018-10-09 03:55:40', '', 'Untitled', '', 'inherit', 'open', 'closed', '', 'untitled', '', '', '2018-10-09 04:25:01', '2018-10-09 04:25:01', '', 45, 'http://toyotires.localhost/wp-content/uploads/2018/10/Untitled.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2018-10-09 03:55:51', '2018-10-09 03:55:51', 'http://toyotires.localhost/wp-content/uploads/2018/10/cropped-Untitled.png', 'cropped-Untitled.png', '', 'inherit', 'open', 'closed', '', 'cropped-untitled-png', '', '', '2018-10-09 03:55:51', '2018-10-09 03:55:51', '', 0, 'http://toyotires.localhost/wp-content/uploads/2018/10/cropped-Untitled.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2018-10-09 03:58:35', '2018-10-09 03:58:35', 'http://toyotires.localhost/wp-content/uploads/2018/10/cropped-Untitled-1.png', 'cropped-Untitled-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-untitled-1-png', '', '', '2018-10-09 03:58:35', '2018-10-09 03:58:35', '', 0, 'http://toyotires.localhost/wp-content/uploads/2018/10/cropped-Untitled-1.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2018-10-09 04:08:29', '2018-10-09 04:08:29', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2018-12-12 15:05:23', '2018-12-12 15:05:23', '', 0, 'http://toyotires.localhost/?p=34', 5, 'nav_menu_item', '', 0),
(36, 1, '2018-10-09 04:08:29', '2018-10-09 04:08:29', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2018-12-12 15:05:23', '2018-12-12 15:05:23', '', 0, 'http://toyotires.localhost/?p=36', 4, 'nav_menu_item', '', 0),
(37, 1, '2018-10-09 04:08:29', '2018-10-09 04:08:29', '', 'Order Now', '', 'publish', 'closed', 'closed', '', '37', '', '', '2018-12-12 15:05:23', '2018-12-12 15:05:23', '', 0, 'http://toyotires.localhost/?p=37', 3, 'nav_menu_item', '', 0),
(39, 1, '2018-10-09 04:08:29', '2018-10-09 04:08:29', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2018-12-12 15:05:22', '2018-12-12 15:05:22', '', 0, 'http://toyotires.localhost/?p=39', 1, 'nav_menu_item', '', 0),
(40, 1, '2018-10-09 04:11:04', '2018-10-09 04:11:04', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2018-10-12 06:01:58', '2018-10-12 06:01:58', '', 0, 'http://toyotires.localhost/?p=40', 2, 'nav_menu_item', '', 0),
(41, 1, '2018-10-09 04:11:04', '2018-10-09 04:11:04', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2018-10-12 06:01:58', '2018-10-12 06:01:58', '', 0, 'http://toyotires.localhost/?p=41', 3, 'nav_menu_item', '', 0),
(42, 1, '2018-10-09 04:11:04', '2018-10-09 04:11:04', '', 'TireShack', '', 'publish', 'closed', 'closed', '', 'tireshack', '', '', '2018-10-12 06:01:58', '2018-10-12 06:01:58', '', 0, 'http://toyotires.localhost/?p=42', 1, 'nav_menu_item', '', 0),
(44, 1, '2018-10-09 04:17:56', '2018-10-09 04:17:56', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"45\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Common Fields', 'common-fields', 'publish', 'closed', 'closed', '', 'group_5bbc2b0ae9c5d', '', '', '2018-10-09 04:20:19', '2018-10-09 04:20:19', '', 0, 'http://toyotires.localhost/?post_type=acf-field-group&#038;p=44', 0, 'acf-field-group', '', 0),
(45, 1, '2018-10-09 04:14:47', '2018-10-09 04:14:47', '', 'Toyo Tires', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-10-19 02:35:52', '2018-10-19 02:35:52', '', 0, 'http://toyotires.localhost/?page_id=45', 0, 'page', '', 0),
(46, 1, '2018-10-09 04:14:47', '2018-10-09 04:14:47', '', 'Home', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-10-09 04:14:47', '2018-10-09 04:14:47', '', 45, 'http://toyotires.localhost/2018/10/09/45-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-10-09 04:17:56', '2018-10-09 04:17:56', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:27:\"This is the page background\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Page Background', 'page_background', 'publish', 'closed', 'closed', '', 'field_5bbc2baf4e805', '', '', '2018-10-09 04:17:56', '2018-10-09 04:17:56', '', 44, 'http://toyotires.localhost/?post_type=acf-field&p=47', 0, 'acf-field', '', 0),
(48, 1, '2018-10-09 04:19:19', '2018-10-09 04:19:19', '', 'Home', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-10-09 04:19:19', '2018-10-09 04:19:19', '', 45, 'http://toyotires.localhost/2018/10/09/45-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-10-09 04:24:08', '2018-10-09 04:24:08', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"45\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Home Menu Bottom', 'home-menu-bottom', 'publish', 'closed', 'closed', '', 'group_5bbc2cd7df9ed', '', '', '2018-10-12 05:51:46', '2018-10-12 05:51:46', '', 0, 'http://toyotires.localhost/?post_type=acf-field-group&#038;p=49', 0, 'acf-field-group', '', 0),
(50, 1, '2018-10-09 04:24:08', '2018-10-09 04:24:08', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Home Menu Bottom', 'home_menu_bottom', 'publish', 'closed', 'closed', '', 'field_5bbc2ce24d6b9', '', '', '2018-10-09 04:24:08', '2018-10-09 04:24:08', '', 49, 'http://toyotires.localhost/?post_type=acf-field&p=50', 0, 'acf-field', '', 0),
(51, 1, '2018-10-09 04:24:08', '2018-10-09 04:24:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Home Menu Bottom Title', 'home_menu_bottom_title', 'publish', 'closed', 'closed', '', 'field_5bbc2cf74d6ba', '', '', '2018-10-09 04:24:08', '2018-10-09 04:24:08', '', 50, 'http://toyotires.localhost/?post_type=acf-field&p=51', 0, 'acf-field', '', 0),
(52, 1, '2018-10-09 04:24:08', '2018-10-09 04:24:08', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Home Menu Bottom Image', 'home_menu_bottom_image', 'publish', 'closed', 'closed', '', 'field_5bbc2d1d4d6bb', '', '', '2018-10-09 04:24:08', '2018-10-09 04:24:08', '', 50, 'http://toyotires.localhost/?post_type=acf-field&p=52', 1, 'acf-field', '', 0),
(53, 1, '2018-10-09 04:24:08', '2018-10-09 04:24:08', 'a:10:{s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:0:{}s:8:\"taxonomy\";a:0:{}s:10:\"allow_null\";i:0;s:14:\"allow_archives\";i:1;s:8:\"multiple\";i:0;}', 'Home Menu Bottom Link', 'home_menu_bottom_link', 'publish', 'closed', 'closed', '', 'field_5bbc2d4b4d6bc', '', '', '2018-10-09 04:24:08', '2018-10-09 04:24:08', '', 50, 'http://toyotires.localhost/?post_type=acf-field&p=53', 2, 'acf-field', '', 0),
(54, 1, '2018-10-09 04:25:14', '2018-10-09 04:25:14', '', 'Home', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-10-09 04:25:14', '2018-10-09 04:25:14', '', 45, 'http://toyotires.localhost/2018/10/09/45-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-10-09 04:28:41', '2018-10-09 04:28:41', '', 'Toyo Tires', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-10-09 04:28:41', '2018-10-09 04:28:41', '', 45, 'http://toyotires.localhost/2018/10/09/45-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-10-09 04:33:02', '2018-10-09 04:33:02', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"21\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Dealers', 'dealers', 'publish', 'closed', 'closed', '', 'group_5bbc2eb74c419', '', '', '2018-10-15 04:40:10', '2018-10-15 04:40:10', '', 0, 'http://toyotires.localhost/?post_type=acf-field-group&#038;p=56', 0, 'acf-field-group', '', 0),
(57, 1, '2018-10-09 04:33:02', '2018-10-09 04:33:02', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Dealers Information', 'dealers_information', 'publish', 'closed', 'closed', '', 'field_5bbc2f4fe2345', '', '', '2018-10-09 04:33:02', '2018-10-09 04:33:02', '', 56, 'http://toyotires.localhost/?post_type=acf-field&p=57', 0, 'acf-field', '', 0),
(58, 1, '2018-10-09 04:33:02', '2018-10-09 04:33:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Dealer\'s Name', 'dealers_name', 'publish', 'closed', 'closed', '', 'field_5bbc2ed8e2340', '', '', '2018-10-09 04:33:02', '2018-10-09 04:33:02', '', 57, 'http://toyotires.localhost/?post_type=acf-field&p=58', 0, 'acf-field', '', 0),
(59, 1, '2018-10-09 04:33:02', '2018-10-09 04:33:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Dealer\'s Address', 'dealers_address', 'publish', 'closed', 'closed', '', 'field_5bbc2f0be2341', '', '', '2018-10-09 04:33:02', '2018-10-09 04:33:02', '', 57, 'http://toyotires.localhost/?post_type=acf-field&p=59', 1, 'acf-field', '', 0),
(60, 1, '2018-10-09 04:33:02', '2018-10-09 04:33:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Dealer\'s Contact', 'dealers_contact', 'publish', 'closed', 'closed', '', 'field_5bbc2f1be2342', '', '', '2018-10-09 04:33:02', '2018-10-09 04:33:02', '', 57, 'http://toyotires.localhost/?post_type=acf-field&p=60', 2, 'acf-field', '', 0),
(61, 1, '2018-10-09 04:33:02', '2018-10-09 04:33:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Dealer\'s Longitude', 'dealers_longitude', 'publish', 'closed', 'closed', '', 'field_5bbc2f2de2343', '', '', '2018-10-15 03:31:17', '2018-10-15 03:31:17', '', 57, 'http://toyotires.localhost/?post_type=acf-field&#038;p=61', 4, 'acf-field', '', 0),
(62, 1, '2018-10-09 04:33:02', '2018-10-09 04:33:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Dealer\'s Latitude', 'dealers_latitude', 'publish', 'closed', 'closed', '', 'field_5bbc2f3de2344', '', '', '2018-10-15 03:31:17', '2018-10-15 03:31:17', '', 57, 'http://toyotires.localhost/?post_type=acf-field&#038;p=62', 3, 'acf-field', '', 0),
(63, 1, '2018-10-09 05:58:57', '2018-10-09 05:58:57', '', 'Dealers', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-10-09 05:58:57', '2018-10-09 05:58:57', '', 21, 'http://toyotires.localhost/2018/10/09/21-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2018-10-12 05:23:51', '2018-10-12 05:23:51', '', 'bg-min', '', 'inherit', 'open', 'closed', '', 'bg-min', '', '', '2018-10-12 05:58:52', '2018-10-12 05:58:52', '', 45, 'http://toyotires.localhost/wp-content/uploads/2018/10/bg-min.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2018-10-12 05:23:51', '2018-10-12 05:23:51', '', 'blue', '', 'inherit', 'open', 'closed', '', 'blue', '', '', '2018-10-12 05:23:51', '2018-10-12 05:23:51', '', 0, 'http://toyotires.localhost/wp-content/uploads/2018/10/blue.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2018-10-12 05:23:52', '2018-10-12 05:23:52', '', 'car', '', 'inherit', 'open', 'closed', '', 'car', '', '', '2018-10-12 05:25:35', '2018-10-12 05:25:35', '', 45, 'http://toyotires.localhost/wp-content/uploads/2018/10/car.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2018-10-12 05:23:52', '2018-10-12 05:23:52', '', 'ph', '', 'inherit', 'open', 'closed', '', 'ph', '', '', '2018-10-12 05:25:35', '2018-10-12 05:25:35', '', 45, 'http://toyotires.localhost/wp-content/uploads/2018/10/ph.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2018-10-12 05:23:52', '2018-10-12 05:23:52', '', 'tire', '', 'inherit', 'open', 'closed', '', 'tire', '', '', '2018-10-12 05:25:35', '2018-10-12 05:25:35', '', 45, 'http://toyotires.localhost/wp-content/uploads/2018/10/tire.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2018-10-12 05:25:35', '2018-10-12 05:25:35', '', 'Toyo Tires', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-10-12 05:25:35', '2018-10-12 05:25:35', '', 45, 'http://toyotires.localhost/2018/10/12/45-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2018-10-12 05:26:39', '2018-10-12 05:26:39', '', 'Toyo Tires', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-10-12 05:26:39', '2018-10-12 05:26:39', '', 45, 'http://toyotires.localhost/2018/10/12/45-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2018-10-12 05:51:46', '2018-10-12 05:51:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Home Menu Bottom Class', 'home_menu_bottom_class', 'publish', 'closed', 'closed', '', 'field_5bc03665b4027', '', '', '2018-10-12 05:51:46', '2018-10-12 05:51:46', '', 50, 'http://toyotires.localhost/?post_type=acf-field&p=71', 3, 'acf-field', '', 0),
(72, 1, '2018-10-12 05:54:37', '2018-10-12 05:54:37', '', 'Toyo Tires', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-10-12 05:54:37', '2018-10-12 05:54:37', '', 45, 'http://toyotires.localhost/2018/10/12/45-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2018-10-12 05:57:25', '2018-10-12 05:57:25', '', 'fb-blue', '', 'inherit', 'open', 'closed', '', 'fb-blue', '', '', '2018-10-12 05:57:25', '2018-10-12 05:57:25', '', 0, 'http://toyotires.localhost/wp-content/uploads/2018/10/fb-blue.png', 0, 'attachment', 'image/png', 0),
(74, 1, '2018-10-12 05:57:26', '2018-10-12 05:57:26', '', 'ig-blue', '', 'inherit', 'open', 'closed', '', 'ig-blue', '', '', '2018-10-12 05:57:26', '2018-10-12 05:57:26', '', 0, 'http://toyotires.localhost/wp-content/uploads/2018/10/ig-blue.png', 0, 'attachment', 'image/png', 0),
(75, 1, '2018-10-12 05:57:26', '2018-10-12 05:57:26', '', 'tireshakk', '', 'inherit', 'open', 'closed', '', 'tireshakk', '', '', '2018-10-12 05:57:26', '2018-10-12 05:57:26', '', 0, 'http://toyotires.localhost/wp-content/uploads/2018/10/tireshakk.png', 0, 'attachment', 'image/png', 0),
(76, 1, '2018-10-12 05:58:05', '2018-10-12 05:58:05', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-10-12 05:58:07', '2018-10-12 05:58:07', '', 45, 'http://toyotires.localhost/wp-content/uploads/2018/10/logo.png', 0, 'attachment', 'image/png', 0),
(77, 1, '2018-10-12 05:58:11', '2018-10-12 05:58:11', '', 'Toyo Tires', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-10-12 05:58:11', '2018-10-12 05:58:11', '', 45, 'http://toyotires.localhost/2018/10/12/45-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2018-10-12 05:58:52', '2018-10-12 05:58:52', '', 'Toyo Tires', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-10-12 05:58:52', '2018-10-12 05:58:52', '', 45, 'http://toyotires.localhost/2018/10/12/45-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-10-12 06:13:14', '2018-10-12 06:13:14', '', 'bg', '', 'inherit', 'open', 'closed', '', 'bg', '', '', '2018-10-12 06:13:14', '2018-10-12 06:13:14', '', 0, 'http://toyotires.localhost/wp-content/uploads/2018/10/bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2018-10-26 02:32:57', '2018-10-26 02:32:57', '<h5>SERVICES, STYLE, AND REALLY GREAT TIRES</h5>\n&nbsp;\n\nEstablished in 1966, Toyo Tire U.S.A. Corp. represents the innovation, quality, performance, and excellent service that Toyo Tires has\n\ndelivered worldwide for more than 70 years.\n\nWe offer a complete selection of premium replacement tires for nearly every make and model including light trucks, SUVs,\n\nhigh performance cars, and luxury vehicles, as well as commercial trucks. Many of these tires are built here in the United States\n\nat our state-of-the-art factory in Bartow County, Georgia.\n<div><img class=\"alignnone size-full wp-image-85\" src=\"http://toyotires.localhost/wp-content/uploads/2018/10/toyo-logo.png\" alt=\"\" width=\"245\" height=\"25\" /></div>\nOn October 1, 2007, Toyo Tires unified our brand logos, which previously varied by segment. We have decided to unify our brand logos\n\nin order to strengthen our brand on a global scale and to energize our marketing activities by presenting a uniform brand image.\n\nVivid blue of Toyo Tires logo conveys an impression of youth.\n<div><img class=\"alignnone size-full wp-image-84\" src=\"http://toyotires.localhost/wp-content/uploads/2018/10/driven-to-perform.png\" alt=\"\" width=\"242\" height=\"32\" /></div>\nWe introduced our brand statement “driven to perform” on May 20, 2008.\n\nLogotype of our statement symbolizes loyalty and spirit of innovation.\n\nThe figure of expresses inspiration.', 'About Us', '', 'inherit', 'closed', 'closed', '', '17-autosave-v1', '', '', '2018-10-26 02:32:57', '2018-10-26 02:32:57', '', 17, 'http://toyotires.localhost/2018/10/12/17-autosave-v1/', 0, 'revision', '', 0),
(82, 1, '2018-10-12 06:19:05', '2018-10-12 06:19:05', '<div>\r\n<div>&lt;h5 class=\"title\"&gt;SERVICES, STYLE, AND REALLY GREAT TIRES&lt;/h5&gt;</div>\r\n<div>                                &lt;p&gt;</div>\r\n<div>                                    Established in 1966, Toyo Tire U.S.A. Corp. represents the innovation, quality, performance, and excellent service that Toyo Tires has</div>\r\n<div>                                    delivered worldwide for more than 70 years.</div>\r\n<div>                                &lt;/p&gt;</div>\r\n<div>                                &lt;p&gt;</div>\r\n<div>                                    We offer a complete selection of premium replacement tires for nearly every make and model including light trucks, SUVs,</div>\r\n<div>                                    high performance cars, and luxury vehicles, as well as commercial trucks. Many of these tires are built here in the United States</div>\r\n<div>                                    at our state-of-the-art factory in Bartow County, Georgia.</div>\r\n<div>                                &lt;/p&gt;</div>\r\n<div>                                &lt;p&gt;&lt;img src=\"assets/img/toyo-logo.png\" alt=\"\"&gt;&lt;/p&gt;</div>\r\n<div>                                &lt;p&gt;</div>\r\n<div>                                    On October 1, 2007, Toyo Tires unified our brand logos, which previously varied by segment. We have decided to unify our brand logos</div>\r\n<div>                                    in order to strengthen our brand on a global scale and to energize our marketing activities by presenting a uniform brand image.</div>\r\n<div>                                    Vivid blue of Toyo Tires logo conveys an impression of youth.</div>\r\n<div>                                &lt;/p&gt;</div>\r\n<div>                                &lt;p&gt;&lt;img src=\"assets/img/driven-to-perform.png\" alt=\"\"&gt;&lt;/p&gt;</div>\r\n<div>                                &lt;p&gt;We introduced our brand statement “driven to perform” on May 20, 2008.&lt;/p&gt;</div>\r\n<div>                                &lt;p&gt;Logotype of our statement symbolizes loyalty and spirit of innovation.</div>\r\n<div>                                    &lt;br&gt;The figure of expresses inspiration.&lt;/p&gt;</div>\r\n</div>', 'About Us', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-10-12 06:19:05', '2018-10-12 06:19:05', '', 17, 'http://toyotires.localhost/2018/10/12/17-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-10-12 06:21:57', '2018-10-12 06:21:57', '<h5>SERVICES, STYLE, AND REALLY GREAT TIRES</h5>\r\n<div></div>\r\n<div>Established in 1966, Toyo Tire U.S.A. Corp. represents the innovation, quality, performance, and excellent service that Toyo Tires has</div>\r\n<div>delivered worldwide for more than 70 years.</div>\r\n<div>We offer a complete selection of premium replacement tires for nearly every make and model including light trucks, SUVs,</div>\r\n<div>high performance cars, and luxury vehicles, as well as commercial trucks. Many of these tires are built here in the United States</div>\r\n<div>at our state-of-the-art factory in Bartow County, Georgia.</div>\r\n<div>On October 1, 2007, Toyo Tires unified our brand logos, which previously varied by segment. We have decided to unify our brand logos</div>\r\n<div>in order to strengthen our brand on a global scale and to energize our marketing activities by presenting a uniform brand image.</div>\r\n<div>Vivid blue of Toyo Tires logo conveys an impression of youth.</div>\r\n<div>We introduced our brand statement “driven to perform” on May 20, 2008.</div>\r\n<div>Logotype of our statement symbolizes loyalty and spirit of innovation.</div>\r\n<div>The figure of expresses inspiration.</div>', 'About Us', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-10-12 06:21:57', '2018-10-12 06:21:57', '', 17, 'http://toyotires.localhost/2018/10/12/17-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-10-12 06:22:39', '2018-10-12 06:22:39', '', 'driven-to-perform', '', 'inherit', 'open', 'closed', '', 'driven-to-perform', '', '', '2018-10-12 06:22:39', '2018-10-12 06:22:39', '', 17, 'http://toyotires.localhost/wp-content/uploads/2018/10/driven-to-perform.png', 0, 'attachment', 'image/png', 0),
(85, 1, '2018-10-12 06:22:40', '2018-10-12 06:22:40', '', 'toyo-logo', '', 'inherit', 'open', 'closed', '', 'toyo-logo', '', '', '2018-10-12 06:22:40', '2018-10-12 06:22:40', '', 17, 'http://toyotires.localhost/wp-content/uploads/2018/10/toyo-logo.png', 0, 'attachment', 'image/png', 0),
(86, 1, '2018-10-12 06:23:04', '2018-10-12 06:23:04', '<h5>SERVICES, STYLE, AND REALLY GREAT TIRES</h5>\r\n<div></div>\r\n<div>Established in 1966, Toyo Tire U.S.A. Corp. represents the innovation, quality, performance, and excellent service that Toyo Tires has</div>\r\n<div>delivered worldwide for more than 70 years.</div>\r\n<div>We offer a complete selection of premium replacement tires for nearly every make and model including light trucks, SUVs,</div>\r\n<div>high performance cars, and luxury vehicles, as well as commercial trucks. Many of these tires are built here in the United States</div>\r\n<div>at our state-of-the-art factory in Bartow County, Georgia.</div>\r\n<div><img class=\"alignnone size-full wp-image-85\" src=\"http://toyotires.localhost/wp-content/uploads/2018/10/toyo-logo.png\" alt=\"\" width=\"245\" height=\"25\" /></div>\r\n<div>On October 1, 2007, Toyo Tires unified our brand logos, which previously varied by segment. We have decided to unify our brand logos</div>\r\n<div>in order to strengthen our brand on a global scale and to energize our marketing activities by presenting a uniform brand image.</div>\r\n<div>Vivid blue of Toyo Tires logo conveys an impression of youth.</div>\r\n<div><img class=\"alignnone size-full wp-image-84\" src=\"http://toyotires.localhost/wp-content/uploads/2018/10/driven-to-perform.png\" alt=\"\" width=\"242\" height=\"32\" /></div>\r\n<div>We introduced our brand statement “driven to perform” on May 20, 2008.</div>\r\n<div>Logotype of our statement symbolizes loyalty and spirit of innovation.</div>\r\n<div>The figure of expresses inspiration.</div>', 'About Us', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-10-12 06:23:04', '2018-10-12 06:23:04', '', 17, 'http://toyotires.localhost/2018/10/12/17-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2018-10-12 06:34:53', '2018-10-12 06:34:53', '<h5>SERVICES, STYLE, AND REALLY GREAT TIRES</h5>\r\n<div></div>\r\n<div>Established in 1966, Toyo Tire U.S.A. Corp. represents the innovation, quality, performance, and excellent service that Toyo Tires has</div>\r\n<div>delivered worldwide for more than 70 years.</div>\r\n<div>We offer a complete selection of premium replacement tires for nearly every make and model including light trucks, SUVs,</div>\r\n<div>high performance cars, and luxury vehicles, as well as commercial trucks. Many of these tires are built here in the United States</div>\r\n<div>at our state-of-the-art factory in Bartow County, Georgia.</div>\r\n<div><img class=\"alignnone size-full wp-image-85\" src=\"http://toyotires.localhost/wp-content/uploads/2018/10/toyo-logo.png\" alt=\"\" width=\"245\" height=\"25\" /></div>\r\n<div>On October 1, 2007, Toyo Tires unified our brand logos, which previously varied by segment. We have decided to unify our brand logos</div>\r\n<div>in order to strengthen our brand on a global scale and to energize our marketing activities by presenting a uniform brand image.</div>\r\n<div>Vivid blue of Toyo Tires logo conveys an impression of youth.</div>\r\n<div><img class=\"alignnone size-full wp-image-84\" src=\"http://toyotires.localhost/wp-content/uploads/2018/10/driven-to-perform.png\" alt=\"\" width=\"242\" height=\"32\" /></div>\r\n<div>We introduced our brand statement “driven to perform” on May 20, 2008.</div>\r\n<div>Logotype of our statement symbolizes loyalty and spirit of innovation.</div>\r\n<div>The figure of expresses inspiration.</div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-10-12 06:34:53', '2018-10-12 06:34:53', '', 27, 'http://toyotires.localhost/2018/10/12/27-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2018-10-15 03:30:54', '2018-10-15 03:30:54', '', 'Dealers', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-10-15 03:30:54', '2018-10-15 03:30:54', '', 21, 'http://toyotires.localhost/2018/10/15/21-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2018-10-15 03:33:16', '2018-10-15 03:33:16', '', 'Dealers', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-10-15 03:33:16', '2018-10-15 03:33:16', '', 21, 'http://toyotires.localhost/2018/10/15/21-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2018-10-15 04:40:09', '2018-10-15 04:40:09', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";i:150;s:10:\"max_height\";i:150;s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Dealer\'s Icon', 'dealers_icon', 'publish', 'closed', 'closed', '', 'field_5bc419fa6b398', '', '', '2018-10-15 04:40:09', '2018-10-15 04:40:09', '', 57, 'http://toyotires.localhost/?post_type=acf-field&p=92', 5, 'acf-field', '', 0),
(93, 1, '2018-10-15 04:40:31', '2018-10-15 04:40:31', '', 'Dealers', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-10-15 04:40:31', '2018-10-15 04:40:31', '', 21, 'http://toyotires.localhost/2018/10/15/21-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2018-10-16 00:33:50', '2018-10-16 00:33:50', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2018-10-16 00:33:50', '2018-10-16 00:33:50', '', 21, 'http://toyotires.localhost/wp-content/uploads/2018/10/download.png', 0, 'attachment', 'image/png', 0),
(95, 1, '2018-10-16 00:33:55', '2018-10-16 00:33:55', '', 'Dealers', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-10-16 00:33:55', '2018-10-16 00:33:55', '', 21, 'http://toyotires.localhost/2018/10/16/21-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2018-10-16 00:35:43', '2018-10-16 00:35:43', '', 'Dealers', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-10-16 00:35:43', '2018-10-16 00:35:43', '', 21, 'http://toyotires.localhost/2018/10/16/21-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2018-10-16 00:37:35', '2018-10-16 00:37:35', '', 'Dealers', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-10-16 00:37:35', '2018-10-16 00:37:35', '', 21, 'http://toyotires.localhost/2018/10/16/21-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2018-10-16 00:38:02', '2018-10-16 00:38:02', '', 'Dealers', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-10-16 00:38:02', '2018-10-16 00:38:02', '', 21, 'http://toyotires.localhost/2018/10/16/21-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2018-10-16 00:43:02', '2018-10-16 00:43:02', '<div>\r\n<div>&lt;h5 class=\"title\"&gt;COSTUMER CARE: WE\'RE HERE TO HELP.&lt;/h5&gt;</div>\r\n<div>                            &lt;p&gt;Do you have feedback or questions regarding our products?&lt;br&gt;Or you want to become a Toyo Tires Dealer?&lt;/p&gt;</div>\r\n<div>                            &lt;p&gt;You may contact us.&lt;/p&gt;</div>\r\n<div>                            &lt;p&gt;MJC Building Ortigas Avenue, Greenhills East, Mandaluyong City.&lt;/p&gt;</div>\r\n<div>                            &lt;p&gt;727-6150/51.&lt;/p&gt;</div>\r\n<div>                            &lt;p&gt;or visit our Facebook page.&lt;/p&gt;</div>\r\n</div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-10-16 00:43:02', '2018-10-16 00:43:02', '', 27, 'http://toyotires.localhost/2018/10/16/27-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2018-10-16 00:43:46', '2018-10-16 00:43:46', '<div>\r\n<h5>COSTUMER CARE: WE\'RE HERE TO HELP.</h5>\r\n<div>Do you have feedback or questions regarding our products?</div>\r\n<div>Or you want to become a Toyo Tires Dealer?</div>\r\n<div>You may contact us.</div>\r\n<div>MJC Building Ortigas Avenue, Greenhills East, Mandaluyong City.</div>\r\n<div>727-6150/51.</div>\r\n<div>or visit our Facebook page.</div>\r\n</div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-10-16 00:43:46', '2018-10-16 00:43:46', '', 27, 'http://toyotires.localhost/2018/10/16/27-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2018-10-16 00:44:07', '2018-10-16 00:44:07', '<div>\r\n<h5>COSTUMER CARE: WE\'RE HERE TO HELP.</h5>\r\nDo you have feedback or questions regarding our products?\r\n\r\nOr you want to become a Toyo Tires Dealer?\r\n\r\nYou may contact us.\r\n\r\nMJC Building Ortigas Avenue, Greenhills East, Mandaluyong City.\r\n\r\n727-6150/51.\r\n\r\nor visit our Facebook page.\r\n\r\n</div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-10-16 00:44:07', '2018-10-16 00:44:07', '', 27, 'http://toyotires.localhost/2018/10/16/27-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2018-10-19 02:17:43', '2018-10-19 02:17:43', '', 'Cars', '', 'publish', 'closed', 'closed', '', 'cars', '', '', '2018-10-19 02:19:48', '2018-10-19 02:19:48', '', 0, 'http://toyotires.localhost/?page_id=102', 0, 'page', '', 0),
(103, 1, '2018-10-19 02:17:43', '2018-10-19 02:17:43', '', 'Cars', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2018-10-19 02:17:43', '2018-10-19 02:17:43', '', 102, 'http://toyotires.localhost/2018/10/19/102-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2018-10-19 02:35:52', '2018-10-19 02:35:52', '', 'Toyo Tires', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-10-19 02:35:52', '2018-10-19 02:35:52', '', 45, 'http://toyotires.localhost/2018/10/19/45-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2018-10-19 02:59:07', '2018-10-19 02:59:07', '', 'Signin', '', 'publish', 'closed', 'closed', '', 'signin', '', '', '2018-10-19 02:59:07', '2018-10-19 02:59:07', '', 0, 'http://toyotires.localhost/?page_id=115', 0, 'page', '', 0),
(116, 1, '2018-10-19 02:59:07', '2018-10-19 02:59:07', '', 'Signin', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2018-10-19 02:59:07', '2018-10-19 02:59:07', '', 115, 'http://toyotires.localhost/2018/10/19/115-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2018-10-19 03:00:13', '2018-10-19 03:00:13', '', 'Registration', '', 'publish', 'closed', 'closed', '', 'registration', '', '', '2018-10-19 03:00:13', '2018-10-19 03:00:13', '', 0, 'http://toyotires.localhost/?page_id=117', 0, 'page', '', 0),
(118, 1, '2018-10-19 03:00:13', '2018-10-19 03:00:13', '', 'Registration', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2018-10-19 03:00:13', '2018-10-19 03:00:13', '', 117, 'http://toyotires.localhost/2018/10/19/117-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2018-10-26 02:32:58', '2018-10-26 02:32:58', '<h5>SERVICES, STYLE, AND REALLY GREAT TIRES</h5>\r\n&nbsp;\r\n\r\nEstablished in 1966, Toyo Tire U.S.A. Corp. represents the innovation, quality, performance, and excellent service that Toyo Tires has\r\n\r\ndelivered worldwide for more than 70 years.\r\n\r\nWe offer a complete selection of premium replacement tires for nearly every make and model including light trucks, SUVs,\r\n\r\nhigh performance cars, and luxury vehicles, as well as commercial trucks. Many of these tires are built here in the United States\r\n\r\nat our state-of-the-art factory in Bartow County, Georgia.\r\n<div><img class=\"alignnone size-full wp-image-85\" src=\"http://toyotires.localhost/wp-content/uploads/2018/10/toyo-logo.png\" alt=\"\" width=\"245\" height=\"25\" /></div>\r\nOn October 1, 2007, Toyo Tires unified our brand logos, which previously varied by segment. We have decided to unify our brand logos\r\n\r\nin order to strengthen our brand on a global scale and to energize our marketing activities by presenting a uniform brand image.\r\n\r\nVivid blue of Toyo Tires logo conveys an impression of youth.\r\n<div><img class=\"alignnone size-full wp-image-84\" src=\"http://toyotires.localhost/wp-content/uploads/2018/10/driven-to-perform.png\" alt=\"\" width=\"242\" height=\"32\" /></div>\r\nWe introduced our brand statement “driven to perform” on May 20, 2008.\r\n\r\nLogotype of our statement symbolizes loyalty and spirit of innovation.\r\n\r\nThe figure of expresses inspiration.', 'About Us', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-10-26 02:32:58', '2018-10-26 02:32:58', '', 17, 'http://toyotires.localhost/2018/10/26/17-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2018-10-26 02:33:46', '2018-10-26 02:33:46', '<h5>SERVICES, STYLE, AND REALLY GREAT TIRES</h5>\r\n&nbsp;\r\n\r\nEstablished in 1966, Toyo Tire U.S.A. Corp. represents the innovation, quality, performance, and excellent service that Toyo Tires has delivered worldwide for more than 70 years. We offer a complete selection of premium replacement tires for nearly every make and model including light trucks, SUVs, high performance cars, and luxury vehicles, as well as commercial trucks. Many of these tires are built here in the United States at our state-of-the-art factory in Bartow County, Georgia.\r\n<div><img class=\"alignnone size-full wp-image-85\" src=\"http://toyotires.localhost/wp-content/uploads/2018/10/toyo-logo.png\" alt=\"\" width=\"245\" height=\"25\" /></div>\r\nOn October 1, 2007, Toyo Tires unified our brand logos, which previously varied by segment. We have decided to unify our brand logos in order to strengthen our brand on a global scale and to energize our marketing activities by presenting a uniform brand image. Vivid blue of Toyo Tires logo conveys an impression of youth.\r\n<div><img class=\"alignnone size-full wp-image-84\" src=\"http://toyotires.localhost/wp-content/uploads/2018/10/driven-to-perform.png\" alt=\"\" width=\"242\" height=\"32\" /></div>\r\nWe introduced our brand statement “driven to perform” on May 20, 2008. Logotype of our statement symbolizes loyalty and spirit of innovation. The figure of expresses inspiration.', 'About Us', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-10-26 02:33:46', '2018-10-26 02:33:46', '', 17, 'http://toyotires.localhost/2018/10/26/17-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2018-10-26 02:34:04', '2018-10-26 02:34:04', '<h4>SERVICES, STYLE, AND REALLY GREAT TIRES</h4>\r\nEstablished in 1966, Toyo Tire U.S.A. Corp. represents the innovation, quality, performance, and excellent service that Toyo Tires has delivered worldwide for more than 70 years. We offer a complete selection of premium replacement tires for nearly every make and model including light trucks, SUVs, high performance cars, and luxury vehicles, as well as commercial trucks. Many of these tires are built here in the United States at our state-of-the-art factory in Bartow County, Georgia.\r\n<div><img class=\"alignnone size-full wp-image-85\" src=\"http://toyotires.localhost/wp-content/uploads/2018/10/toyo-logo.png\" alt=\"\" width=\"245\" height=\"25\" /></div>\r\nOn October 1, 2007, Toyo Tires unified our brand logos, which previously varied by segment. We have decided to unify our brand logos in order to strengthen our brand on a global scale and to energize our marketing activities by presenting a uniform brand image. Vivid blue of Toyo Tires logo conveys an impression of youth.\r\n<div><img class=\"alignnone size-full wp-image-84\" src=\"http://toyotires.localhost/wp-content/uploads/2018/10/driven-to-perform.png\" alt=\"\" width=\"242\" height=\"32\" /></div>\r\nWe introduced our brand statement “driven to perform” on May 20, 2008. Logotype of our statement symbolizes loyalty and spirit of innovation. The figure of expresses inspiration.', 'About Us', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-10-26 02:34:04', '2018-10-26 02:34:04', '', 17, 'http://toyotires.localhost/2018/10/26/17-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2018-10-26 02:34:16', '2018-10-26 02:34:16', '<h5>SERVICES, STYLE, AND REALLY GREAT TIRES</h5>\r\nEstablished in 1966, Toyo Tire U.S.A. Corp. represents the innovation, quality, performance, and excellent service that Toyo Tires has delivered worldwide for more than 70 years. We offer a complete selection of premium replacement tires for nearly every make and model including light trucks, SUVs, high performance cars, and luxury vehicles, as well as commercial trucks. Many of these tires are built here in the United States at our state-of-the-art factory in Bartow County, Georgia.\r\n<div><img class=\"alignnone size-full wp-image-85\" src=\"http://toyotires.localhost/wp-content/uploads/2018/10/toyo-logo.png\" alt=\"\" width=\"245\" height=\"25\" /></div>\r\nOn October 1, 2007, Toyo Tires unified our brand logos, which previously varied by segment. We have decided to unify our brand logos in order to strengthen our brand on a global scale and to energize our marketing activities by presenting a uniform brand image. Vivid blue of Toyo Tires logo conveys an impression of youth.\r\n<div><img class=\"alignnone size-full wp-image-84\" src=\"http://toyotires.localhost/wp-content/uploads/2018/10/driven-to-perform.png\" alt=\"\" width=\"242\" height=\"32\" /></div>\r\nWe introduced our brand statement “driven to perform” on May 20, 2008. Logotype of our statement symbolizes loyalty and spirit of innovation. The figure of expresses inspiration.', 'About Us', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-10-26 02:34:16', '2018-10-26 02:34:16', '', 17, 'http://toyotires.localhost/2018/10/26/17-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2018-10-26 02:35:30', '2018-10-26 02:35:30', '', 'Sign in', '', 'publish', 'closed', 'closed', '', 'sign-in', '', '', '2018-12-12 15:05:23', '2018-12-12 15:05:23', '', 0, 'http://toyotires.localhost/?p=124', 6, 'nav_menu_item', '', 0),
(125, 1, '2018-10-26 02:54:14', '2018-10-26 02:54:14', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"page-news.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'News', 'news', 'publish', 'closed', 'closed', '', 'group_5bd281851c37c', '', '', '2018-10-26 02:55:48', '2018-10-26 02:55:48', '', 0, 'http://toyotires.localhost/?post_type=acf-field-group&#038;p=125', 0, 'acf-field-group', '', 0),
(126, 1, '2018-10-26 02:54:14', '2018-10-26 02:54:14', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'News', 'news', 'publish', 'closed', 'closed', '', 'field_5bd281889aaac', '', '', '2018-10-26 02:54:14', '2018-10-26 02:54:14', '', 125, 'http://toyotires.localhost/?post_type=acf-field&p=126', 0, 'acf-field', '', 0),
(127, 1, '2018-10-26 02:54:14', '2018-10-26 02:54:14', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'News Title', 'news_title', 'publish', 'closed', 'closed', '', 'field_5bd281929aaad', '', '', '2018-10-26 02:54:14', '2018-10-26 02:54:14', '', 126, 'http://toyotires.localhost/?post_type=acf-field&p=127', 0, 'acf-field', '', 0),
(128, 1, '2018-10-26 02:54:14', '2018-10-26 02:54:14', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'News Image', 'news_image', 'publish', 'closed', 'closed', '', 'field_5bd2819d9aaae', '', '', '2018-10-26 02:54:14', '2018-10-26 02:54:14', '', 126, 'http://toyotires.localhost/?post_type=acf-field&p=128', 1, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(129, 1, '2018-10-26 02:54:14', '2018-10-26 02:54:14', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:5:\"d/m/Y\";s:9:\"first_day\";i:1;}', 'News Date', 'news_date', 'publish', 'closed', 'closed', '', 'field_5bd281ba9aaaf', '', '', '2018-10-26 02:54:14', '2018-10-26 02:54:14', '', 126, 'http://toyotires.localhost/?post_type=acf-field&p=129', 2, 'acf-field', '', 0),
(130, 1, '2018-10-26 02:54:39', '2018-10-26 02:54:39', '', 'news1', '', 'inherit', 'open', 'closed', '', 'news1', '', '', '2018-10-26 02:57:12', '2018-10-26 02:57:12', '', 23, 'http://toyotires.localhost/wp-content/uploads/2018/10/news1.jpg', 0, 'attachment', 'image/jpeg', 0),
(131, 1, '2018-10-26 02:54:39', '2018-10-26 02:54:39', '', 'news2', '', 'inherit', 'open', 'closed', '', 'news2', '', '', '2018-10-26 02:57:12', '2018-10-26 02:57:12', '', 23, 'http://toyotires.localhost/wp-content/uploads/2018/10/news2.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2018-10-26 02:54:39', '2018-10-26 02:54:39', '', 'news3', '', 'inherit', 'open', 'closed', '', 'news3', '', '', '2018-10-26 02:57:12', '2018-10-26 02:57:12', '', 23, 'http://toyotires.localhost/wp-content/uploads/2018/10/news3.jpg', 0, 'attachment', 'image/jpeg', 0),
(133, 1, '2018-10-26 02:57:12', '2018-10-26 02:57:12', '', 'News', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-10-26 02:57:12', '2018-10-26 02:57:12', '', 23, 'http://toyotires.localhost/2018/10/26/23-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2018-10-26 03:44:35', '2018-10-26 03:44:35', '[[[{\"field_key\":\"user_login\",\"general_setting\":{\"label\":\"Username\",\"field_name\":\"user_login\",\"placeholder\":\"\",\"required\":\"yes\"},\"advance_setting\":{}},{\"field_key\":\"user_pass\",\"general_setting\":{\"label\":\"User Password\",\"field_name\":\"user_pass\",\"placeholder\":\"\",\"required\":\"yes\"},\"advance_setting\":{}}],[{\"field_key\":\"user_email\",\"general_setting\":{\"label\":\"User Email\",\"field_name\":\"user_email\",\"placeholder\":\"\",\"required\":\"yes\"},\"advance_setting\":{}},{\"field_key\":\"user_confirm_password\",\"general_setting\":{\"label\":\"Confirm Password\",\"field_name\":\"user_confirm_password\",\"placeholder\":\"\",\"required\":\"yes\"},\"advance_setting\":{}}]]]', 'Default form', '', 'publish', 'closed', 'closed', '', 'default-form', '', '', '2018-10-26 03:44:35', '2018-10-26 03:44:35', '', 0, 'http://toyotires.localhost/?post_type=user_registration&p=135', 0, 'user_registration', '', 0),
(137, 1, '2018-10-26 03:47:10', '2018-10-26 03:47:10', '', 'Default Registration', '', 'publish', 'closed', 'closed', '', 'default-registration', '', '', '2018-10-26 05:25:43', '2018-10-26 05:25:43', '', 0, 'http://toyotires.localhost/um_form/default-registration/', 0, 'um_form', '', 0),
(138, 1, '2018-10-26 03:47:10', '2018-10-26 03:47:10', '', 'Default Login', '', 'publish', 'closed', 'closed', '', 'default-login', '', '', '2018-10-27 06:20:55', '2018-10-27 06:20:55', '', 0, 'http://toyotires.localhost/um_form/default-login/', 0, 'um_form', '', 0),
(139, 1, '2018-10-26 03:47:10', '2018-10-26 03:47:10', '', 'Default Profile', '', 'publish', 'closed', 'closed', '', 'default-profile', '', '', '2018-10-27 06:25:12', '2018-10-27 06:25:12', '', 0, 'http://toyotires.localhost/um_form/default-profile/', 0, 'um_form', '', 0),
(140, 1, '2018-10-26 03:47:10', '2018-10-26 03:47:10', '', 'Members', '', 'publish', 'closed', 'closed', '', 'members', '', '', '2018-10-26 03:47:10', '2018-10-26 03:47:10', '', 0, 'http://toyotires.localhost/um_directory/members/', 0, 'um_directory', '', 0),
(142, 1, '2018-10-26 04:52:00', '2018-10-26 04:52:00', '', 'Profile', '', 'publish', 'closed', 'closed', '', 'profile', '', '', '2018-10-26 04:52:00', '2018-10-26 04:52:00', '', 0, 'http://toyotires.localhost/?page_id=142', 0, 'page', '', 0),
(143, 1, '2018-10-26 04:52:00', '2018-10-26 04:52:00', '', 'Profile', '', 'inherit', 'closed', 'closed', '', '142-revision-v1', '', '', '2018-10-26 04:52:00', '2018-10-26 04:52:00', '', 142, 'http://toyotires.localhost/2018/10/26/142-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2018-10-26 04:54:16', '2018-10-26 04:54:16', '', 'Members', '', 'publish', 'closed', 'closed', '', 'members', '', '', '2018-10-26 05:17:30', '2018-10-26 05:17:30', '', 0, 'http://toyotires.localhost/?page_id=144', 0, 'page', '', 0),
(145, 1, '2018-10-26 04:54:16', '2018-10-26 04:54:16', '', 'Members', '', 'inherit', 'closed', 'closed', '', '144-revision-v1', '', '', '2018-10-26 04:54:16', '2018-10-26 04:54:16', '', 144, 'http://toyotires.localhost/2018/10/26/144-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2018-10-26 04:54:45', '2018-10-26 04:54:45', '', 'Logout', '', 'publish', 'closed', 'closed', '', 'logout', '', '', '2018-10-26 04:54:57', '2018-10-26 04:54:57', '', 0, 'http://toyotires.localhost/?page_id=146', 0, 'page', '', 0),
(147, 1, '2018-10-26 04:54:45', '2018-10-26 04:54:45', '', 'logout', '', 'inherit', 'closed', 'closed', '', '146-revision-v1', '', '', '2018-10-26 04:54:45', '2018-10-26 04:54:45', '', 146, 'http://toyotires.localhost/2018/10/26/146-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2018-10-26 04:54:57', '2018-10-26 04:54:57', '', 'Logout', '', 'inherit', 'closed', 'closed', '', '146-revision-v1', '', '', '2018-10-26 04:54:57', '2018-10-26 04:54:57', '', 146, 'http://toyotires.localhost/2018/10/26/146-revision-v1/', 0, 'revision', '', 0),
(149, 1, '2018-10-26 05:03:32', '2018-10-26 05:03:32', '', 'Log out', '', 'publish', 'closed', 'closed', '', '149', '', '', '2018-12-12 15:05:23', '2018-12-12 15:05:23', '', 0, 'http://toyotires.localhost/?p=149', 7, 'nav_menu_item', '', 0),
(154, 1, '2018-10-26 05:41:52', '2018-10-26 05:41:52', '', 'Dealers', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-10-26 05:41:52', '2018-10-26 05:41:52', '', 21, 'http://toyotires.localhost/2018/10/26/21-revision-v1/', 0, 'revision', '', 0),
(156, 1, '2018-11-06 15:35:53', '2018-11-06 15:35:53', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-2', '', '', '2018-11-17 01:09:01', '2018-11-17 01:09:01', '', 27, 'http://toyotires.localhost/wp-content/uploads/2018/11/logo.png', 0, 'attachment', 'image/png', 0),
(157, 1, '2018-11-06 15:36:08', '2018-11-06 15:36:08', 'http://toyotires.localhost/wp-content/uploads/2018/11/cropped-logo.png', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2018-11-06 15:36:08', '2018-11-06 15:36:08', '', 0, 'http://toyotires.localhost/wp-content/uploads/2018/11/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(164, 1, '2018-11-08 13:56:23', '2018-11-08 13:56:23', '', 'news4', '', 'inherit', 'open', 'closed', '', 'maxresdefault-e1541639135949', '', '', '2018-11-08 13:56:39', '2018-11-08 13:56:39', '', 23, 'http://toyotires.localhost/wp-content/uploads/2018/11/maxresdefault-e1541639135949.jpg', 0, 'attachment', 'image/jpeg', 0),
(165, 1, '2018-11-08 13:56:46', '2018-11-08 13:56:46', '', 'News', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-11-08 13:56:46', '2018-11-08 13:56:46', '', 23, 'http://toyotires.localhost/2018/11/08/23-revision-v1/', 0, 'revision', '', 0),
(166, 1, '2018-11-08 15:14:33', '2018-11-08 15:14:33', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"45\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Common Fields (copy)', 'common-fields-copy', 'publish', 'closed', 'closed', '', 'group_5be452d9451ad', '', '', '2018-11-08 15:14:33', '2018-11-08 15:14:33', '', 0, 'http://toyotires.localhost/?post_type=acf-field-group&p=166', 0, 'acf-field-group', '', 0),
(167, 1, '2018-11-08 15:14:33', '2018-11-08 15:14:33', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:27:\"This is the page background\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Page Background', 'page_background', 'publish', 'closed', 'closed', '', 'field_5be452d97dbda', '', '', '2018-11-08 15:14:33', '2018-11-08 15:14:33', '', 166, 'http://toyotires.localhost/?post_type=acf-field&p=167', 0, 'acf-field', '', 0),
(172, 1, '2018-11-10 08:31:38', '2018-11-10 08:31:38', '<div>\r\n<h5>CUSTOMER CARE: WE\'RE HERE TO HELP.</h5>\r\nDo you have feedback or questions regarding our products?\r\n\r\nOr you want to become a Toyo Tires Dealer?\r\n\r\nYou may contact us.\r\n\r\nMJC Building Ortigas Avenue, Greenhills East, Mandaluyong City.\r\n\r\n727-6150/51.\r\n\r\nor visit our Facebook page.\r\n\r\n</div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-11-10 08:31:38', '2018-11-10 08:31:38', '', 27, 'http://toyotires.localhost/2018/11/10/27-revision-v1/', 0, 'revision', '', 0),
(175, 1, '2018-11-17 01:03:35', '2018-11-17 01:03:35', '', 'mazda-3', '', 'inherit', 'open', 'closed', '', 'mazda-3', '', '', '2018-11-17 01:03:49', '2018-11-17 01:03:49', '', 23, 'http://toyotires.localhost/wp-content/uploads/2018/11/mazda-3.png', 0, 'attachment', 'image/png', 0),
(176, 1, '2018-11-17 01:04:01', '2018-11-17 01:04:01', '', 'News', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-11-17 01:04:01', '2018-11-17 01:04:01', '', 23, 'http://toyotires.localhost/2018/11/17/23-revision-v1/', 0, 'revision', '', 0),
(177, 1, '2018-11-17 01:11:02', '2018-11-17 01:11:02', '<div>\n<h5 style=\"text-align: center;\">CUSTOMER CARE: WE\'RE HERE TO HELP.</h5>\n<p style=\"text-align: center;\">Do you have feedback or questions regarding our products?</p>\n<p style=\"text-align: center;\">Or you want to become a Toyo Tires Dealer?</p>\n<p style=\"text-align: center;\">You may contact us.</p>\n<p style=\"text-align: center;\">MJC Building Ortigas Avenue, Greenhills East, Mandaluyong City.</p>\n<p style=\"text-align: center;\"></p>\n<p style=\"text-align: center;\"><img class=\"alignnone wp-image-156\" src=\"http://toyotires.localhost/wp-content/uploads/2018/11/logo.png\" alt=\"\" width=\"245\" height=\"25\" /></p>\n<p style=\"text-align: center;\">727-6150/51.</p>\n<p style=\"text-align: center;\">or visit our Facebook page.</p>\n\n</div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '27-autosave-v1', '', '', '2018-11-17 01:11:02', '2018-11-17 01:11:02', '', 27, 'http://toyotires.localhost/2018/11/17/27-autosave-v1/', 0, 'revision', '', 0),
(178, 1, '2018-11-17 01:09:52', '2018-11-17 01:09:52', '<div>\r\n<h5>CUSTOMER CARE: WE\'RE HERE TO HELP.</h5>\r\nDo you have feedback or questions regarding our products?\r\n\r\nOr you want to become a Toyo Tires Dealer?\r\n\r\nYou may contact us.\r\n\r\nMJC Building Ortigas Avenue, Greenhills East, Mandaluyong City.\r\n\r\n&nbsp;\r\n\r\n<img class=\"alignnone  wp-image-156\" src=\"http://toyotires.localhost/wp-content/uploads/2018/11/logo.png\" alt=\"\" width=\"461\" height=\"47\" />\r\n\r\n727-6150/51.\r\n\r\nor visit our Facebook page.\r\n\r\n</div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-11-17 01:09:52', '2018-11-17 01:09:52', '', 27, 'http://toyotires.localhost/2018/11/17/27-revision-v1/', 0, 'revision', '', 0),
(179, 1, '2018-11-17 01:11:23', '2018-11-17 01:11:23', '<div>\r\n<h5>CUSTOMER CARE: WE\'RE HERE TO HELP.</h5>\r\nDo you have feedback or questions regarding our products?\r\n\r\nOr you want to become a Toyo Tires Dealer?\r\n\r\nYou may contact us.\r\n\r\nMJC Building Ortigas Avenue, Greenhills East, Mandaluyong City.\r\n\r\n727-6150/51.\r\n\r\nor visit our Facebook page.\r\n\r\n</div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-11-17 01:11:23', '2018-11-17 01:11:23', '', 27, 'http://toyotires.localhost/2018/11/17/27-revision-v1/', 0, 'revision', '', 0),
(180, 1, '2018-12-12 13:29:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-12-12 13:29:38', '0000-00-00 00:00:00', '', 0, 'http://toyotires.localhost/?p=180', 0, 'post', '', 0),
(181, 1, '2018-12-12 13:35:52', '2018-12-12 13:35:52', '', 'Tires', '', 'publish', 'closed', 'closed', '', 'tires', '', '', '2018-12-12 15:05:22', '2018-12-12 15:05:22', '', 0, 'http://toyotires.localhost/?p=181', 2, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Primary Menu', 'primary-menu', 0),
(3, 'Secondary Menu', 'secondary-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(34, 2, 0),
(36, 2, 0),
(37, 2, 0),
(39, 2, 0),
(40, 3, 0),
(41, 3, 0),
(42, 3, 0),
(124, 2, 0),
(149, 2, 0),
(181, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 7),
(3, 3, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'toyotires'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '180'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&mfold=o'),
(22, 1, 'wp_user-settings-time', '1542416990'),
(23, 1, 'acf_user_settings', 'a:1:{s:15:\"show_field_keys\";s:1:\"1\";}'),
(24, 1, 'ur_first_access', '1'),
(73, 1, 'account_status', 'approved'),
(74, 1, 'um_account_secure_fields', 'a:0:{}'),
(75, 1, 'um_user_profile_url_slug_user_login', 'toyotires'),
(77, 1, '_um_last_login', '1544621376'),
(88, 1, 'profile_photo', 'profile_photo.png'),
(91, 5, 'nickname', 'julius'),
(92, 5, 'first_name', 'julius'),
(93, 5, 'last_name', 'mateo'),
(94, 5, 'description', ''),
(95, 5, 'rich_editing', 'true'),
(96, 5, 'syntax_highlighting', 'true'),
(97, 5, 'comment_shortcuts', 'false'),
(98, 5, 'admin_color', 'fresh'),
(99, 5, 'use_ssl', '0'),
(100, 5, 'show_admin_bar_front', 'true'),
(101, 5, 'locale', ''),
(102, 5, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(103, 5, 'wp_user_level', '0'),
(104, 5, 'synced_gravatar_hashed_id', '97a996600e204d6f8907470d3d2f7296'),
(105, 5, 'submitted', 'a:9:{s:7:\"form_id\";s:3:\"137\";s:9:\"timestamp\";s:10:\"1540531411\";s:7:\"request\";s:0:\"\";s:8:\"_wpnonce\";s:10:\"2fccf1cc09\";s:16:\"_wp_http_referer\";s:14:\"/registration/\";s:10:\"user_login\";s:6:\"julius\";s:10:\"first_name\";s:6:\"julius\";s:9:\"last_name\";s:5:\"mateo\";s:10:\"user_email\";s:20:\"partanduls@gmail.com\";}'),
(106, 5, 'form_id', '137'),
(107, 5, 'timestamp', '1540531411'),
(108, 5, 'request', ''),
(109, 5, '_wpnonce', '2fccf1cc09'),
(110, 5, '_wp_http_referer', '/registration/'),
(111, 5, 'user_login', 'julius'),
(112, 5, 'um_user_profile_url_slug_user_login', 'julius'),
(114, 5, 'full_name', 'julius'),
(115, 5, 'account_status', 'approved'),
(117, 5, '_um_last_login', '1540531468'),
(118, 5, 'um_account_secure_fields', 'a:0:{}'),
(122, 1, 'manageedit-acf-field-groupcolumnshidden', 'a:1:{i:0;s:18:\"acf-fg-description\";}'),
(125, 1, 'session_tokens', 'a:1:{s:64:\"de61534582f89d0a1507337fa6cd4ebaabae51092ef31f6c2137ffeebb930d13\";a:4:{s:10:\"expiration\";i:1544794176;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36\";s:5:\"login\";i:1544621376;}}'),
(126, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(127, 1, 'show_try_gutenberg_panel', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'toyotires', '$P$BHx50MvUctQ/uGeq1XQYpFILlkOpNB.', 'toyotires', 'ibitswebsolutions@gmail.com', '', '2018-10-07 17:27:55', '1540650105:$P$BB5eph/6qPTgG/iVFZa26wpYY/guiV.', 0, 'toyotires'),
(5, 'julius', '$P$BT71e3OUlHrYagYeB8ir6PIrrpW/4..', 'julius', 'partanduls@gmail.com', '', '2018-10-26 05:24:26', '1540531666:$P$Bl/MD4gtXQWDRqmMzATwBMsvDkvDM70', 0, 'julius mateo');

-- --------------------------------------------------------

--
-- Table structure for table `wp_user_registration_sessions`
--

CREATE TABLE `wp_user_registration_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_oitm`
--
ALTER TABLE `tb_oitm`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `tb_pairings`
--
ALTER TABLE `tb_pairings`
  ADD PRIMARY KEY (`pairing_id`);

--
-- Indexes for table `tb_patterns`
--
ALTER TABLE `tb_patterns`
  ADD PRIMARY KEY (`pattern_id`);

--
-- Indexes for table `tb_sizeoptions`
--
ALTER TABLE `tb_sizeoptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_user_registration_sessions`
--
ALTER TABLE `wp_user_registration_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_oitm`
--
ALTER TABLE `tb_oitm`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_pairings`
--
ALTER TABLE `tb_pairings`
  MODIFY `pairing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_patterns`
--
ALTER TABLE `tb_patterns`
  MODIFY `pattern_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_sizeoptions`
--
ALTER TABLE `tb_sizeoptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3472;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1290;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_user_registration_sessions`
--
ALTER TABLE `wp_user_registration_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
