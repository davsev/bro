-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2017 at 09:41 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `broker`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_aiowps_events`
--

CREATE TABLE `wp_aiowps_events` (
  `id` bigint(20) NOT NULL,
  `event_type` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `event_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_or_host` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_data` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_aiowps_failed_logins`
--

CREATE TABLE `wp_aiowps_failed_logins` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_attempt_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_aiowps_global_meta`
--

CREATE TABLE `wp_aiowps_global_meta` (
  `meta_id` bigint(20) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `meta_key1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value4` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value5` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_aiowps_login_activity`
--

CREATE TABLE `wp_aiowps_login_activity` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logout_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `login_country` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `browser_type` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_aiowps_login_lockdown`
--

CREATE TABLE `wp_aiowps_login_lockdown` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lockdown_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `release_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `failed_login_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lock_reason` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `unlock_key` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_aiowps_permanent_block`
--

CREATE TABLE `wp_aiowps_permanent_block` (
  `id` bigint(20) NOT NULL,
  `blocked_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block_reason` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country_origin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `blocked_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `unblock` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'מגיב וורדפרס', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-07-08 09:42:50', '2017-07-08 06:42:50', 'היי, זו תגובה.\nכדי לשנות, לערוך, או למחוק תגובות, יש לגשת למסך התגובות בלוח הבקרה.\nצלמית המשתמש של המגיב מגיעה מתוך <a href="https://gravatar.com">גראווטר</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://127.0.0.1/broker', 'yes'),
(2, 'home', 'http://127.0.0.1/broker', 'yes'),
(3, 'blogname', 'ברוקר נדל&quot;ן', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'davseveloff@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j בF Y', 'yes'),
(24, 'time_format', 'G:i', 'yes'),
(25, 'links_updated_date_format', 'j בF Y G:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:142:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:11:"articles/?$";s:28:"index.php?post_type=articles";s:41:"articles/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=articles&feed=$matches[1]";s:36:"articles/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=articles&feed=$matches[1]";s:28:"articles/page/([0-9]{1,})/?$";s:46:"index.php?post_type=articles&paged=$matches[1]";s:11:"property/?$";s:28:"index.php?post_type=property";s:41:"property/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=property&feed=$matches[1]";s:36:"property/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=property&feed=$matches[1]";s:28:"property/page/([0-9]{1,})/?$";s:46:"index.php?post_type=property&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:45:"tags/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?tags=$matches[1]&feed=$matches[2]";s:40:"tags/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?tags=$matches[1]&feed=$matches[2]";s:21:"tags/([^/]+)/embed/?$";s:37:"index.php?tags=$matches[1]&embed=true";s:33:"tags/([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?tags=$matches[1]&paged=$matches[2]";s:15:"tags/([^/]+)/?$";s:26:"index.php?tags=$matches[1]";s:57:"article_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?article_category=$matches[1]&feed=$matches[2]";s:52:"article_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?article_category=$matches[1]&feed=$matches[2]";s:33:"article_category/([^/]+)/embed/?$";s:49:"index.php?article_category=$matches[1]&embed=true";s:45:"article_category/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?article_category=$matches[1]&paged=$matches[2]";s:27:"article_category/([^/]+)/?$";s:38:"index.php?article_category=$matches[1]";s:36:"articles/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"articles/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"articles/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"articles/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"articles/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"articles/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"articles/([^/]+)/embed/?$";s:41:"index.php?articles=$matches[1]&embed=true";s:29:"articles/([^/]+)/trackback/?$";s:35:"index.php?articles=$matches[1]&tb=1";s:49:"articles/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?articles=$matches[1]&feed=$matches[2]";s:44:"articles/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?articles=$matches[1]&feed=$matches[2]";s:37:"articles/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?articles=$matches[1]&paged=$matches[2]";s:44:"articles/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?articles=$matches[1]&cpage=$matches[2]";s:33:"articles/([^/]+)(?:/([0-9]+))?/?$";s:47:"index.php?articles=$matches[1]&page=$matches[2]";s:25:"articles/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"articles/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"articles/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"articles/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"articles/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"articles/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"property/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"property/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"property/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"property/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"property/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"property/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"property/([^/]+)/embed/?$";s:41:"index.php?property=$matches[1]&embed=true";s:29:"property/([^/]+)/trackback/?$";s:35:"index.php?property=$matches[1]&tb=1";s:49:"property/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?property=$matches[1]&feed=$matches[2]";s:44:"property/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?property=$matches[1]&feed=$matches[2]";s:37:"property/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?property=$matches[1]&paged=$matches[2]";s:44:"property/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?property=$matches[1]&cpage=$matches[2]";s:33:"property/([^/]+)(?:/([0-9]+))?/?$";s:47:"index.php?property=$matches[1]&page=$matches[2]";s:25:"property/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"property/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"property/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"property/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"property/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"property/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(3165, 'cats_children', 'a:0:{}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:16:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:51:"all-in-one-wp-migration/all-in-one-wp-migration.php";i:2;s:79:"contact-form-7-dynamic-text-extension/contact-form-7-dynamic-text-extension.php";i:3;s:36:"contact-form-7/wp-contact-form-7.php";i:4;s:53:"contact-form-submissions/contact-form-submissions.php";i:5;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:6;s:53:"custom-taxonomy-template/custom-taxonomy-template.php";i:7;s:67:"cwis-antivirus-malware-detected/cwis-antivirus-malware-detected.php";i:8;s:23:"loco-translate/loco.php";i:9;s:27:"php-code-widget/execphp.php";i:10;s:29:"pie-register/pie-register.php";i:11;s:20:"printfriendly/pf.php";i:12;s:33:"string-locator/string-locator.php";i:13;s:26:"ultimate-lightbox/Main.php";i:14;s:31:"what-the-file/what-the-file.php";i:15;s:27:"yourchannel/YourChannel.php";}', 'yes'),
(2358, 'uam_db_version', '1.6.1', 'yes'),
(2359, 'widget_uam_login_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:68:"C:\\xampp\\htdocs\\broker/wp-content/plugins/pie-register/css/style.css";i:2;s:71:"C:\\xampp\\htdocs\\broker/wp-content/plugins/pie-register/pie-register.php";i:3;s:76:"C:\\xampp\\htdocs\\broker/wp-content/plugins/advanced-custom-fields-pro/acf.php";i:4;s:79:"/home/davdevco/public_html/broker/wp-content/plugins/pie-register/css/style.css";i:5;s:87:"/home/davdevco/public_html/broker/wp-content/plugins/pie-register/ckeditor/contents.css";}', 'no'),
(40, 'template', 'broker', 'yes'),
(41, 'stylesheet', 'broker-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'author', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:6:{s:27:"shareaholic/shareaholic.php";a:2:{i:0;s:11:"Shareaholic";i:1;s:9:"uninstall";}s:33:"theme-my-login/theme-my-login.php";a:2:{i:0;s:20:"Theme_My_Login_Admin";i:1;s:9:"uninstall";}s:43:"user-access-manager/user-access-manager.php";s:26:"uninstallUserAccessManager";s:29:"pie-register/pie-register.php";s:15:"uninstall_pr_ff";s:67:"cwis-antivirus-malware-detected/cwis-antivirus-malware-detected.php";s:14:"uninstall_cwis";s:41:"better-wp-security/better-wp-security.php";a:2:{i:0;s:10:"ITSEC_Core";i:1;s:16:"handle_uninstall";}}', 'no'),
(82, 'timezone_string', 'Asia/Jerusalem', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '43', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:6:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:10:"loco_admin";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:10:"translator";a:2:{s:4:"name";s:10:"Translator";s:12:"capabilities";a:2:{s:4:"read";b:1;s:10:"loco_admin";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'he_IL', 'yes'),
(95, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:10:{s:7:"footer1";a:1:{i:0;s:10:"nav_menu-3";}s:19:"wp_inactive_widgets";a:0:{}s:8:"footer-2";a:1:{i:0;s:10:"nav_menu-5";}s:8:"footer-3";a:1:{i:0;s:10:"nav_menu-6";}s:8:"footer-4";a:1:{i:0;s:10:"nav_menu-7";}s:8:"footer-5";a:1:{i:0;s:13:"media_image-2";}s:15:"profile-sidebar";a:1:{i:0;s:10:"nav_menu-8";}s:8:"footer-1";a:1:{i:0;s:10:"nav_menu-4";}s:9:"sidebar-1";a:3:{i:0;s:9:"execphp-3";i:1;s:13:"custom_html-2";i:2;s:13:"custom_html-3";}s:13:"array_version";i:3;}', 'yes'),
(140, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:21:"davseveloff@gmail.com";s:7:"version";s:5:"4.8.3";s:9:"timestamp";i:1509461277;}', 'no'),
(3085, 'widget_execphp', 'a:2:{i:3;a:3:{s:5:"title";s:16:"קטגוריות";s:4:"text";s:284:"<?php $terms = get_terms( array(\r\n    ''taxonomy'' => ''article_category'',\r\n    ''hide_empty'' => true,\r\n) );\r\n\r\necho ''<div id="sidebar-cats">'';\r\nforeach($terms as $term){\r\necho ''<a href=" '' . get_term_link($term) . '' " class="side-cat">'' . $term->name . ''</a>'';\r\n\r\n}\r\necho ''</div>'';\r\n\r\n?>";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_nav_menu', 'a:7:{i:3;a:1:{s:8:"nav_menu";i:7;}i:4;a:2:{s:5:"title";s:10:"נכסים";s:8:"nav_menu";i:7;}i:5;a:1:{s:5:"title";s:23:"הצטרפו אלינו";}i:6;a:2:{s:5:"title";s:21:"עקבו אחרינו";s:8:"nav_menu";i:7;}i:7;a:2:{s:5:"title";s:22:"מה זה בקרוקר";s:8:"nav_menu";i:7;}i:8;a:2:{s:5:"title";s:21:"תפריט ניווט";s:8:"nav_menu";i:13;}s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'cron', 'a:8:{i:1513588699;a:1:{s:21:"wordfence_hourly_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1513610299;a:1:{s:20:"wordfence_daily_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1513611193;a:2:{s:16:"itsec_purge_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:17:"itsec_clear_locks";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1513615220;a:1:{s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1513622575;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1513665783;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1513668601;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(2579, 'api_manager_example', 'a:2:{s:7:"api_key";s:0:"";s:16:"activation_email";s:0:"";}', 'yes'),
(2580, '_transient_random_seed', 'c4a97618e836c31d8a29118c552d9482', 'yes'),
(106, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1504587859;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(120, 'can_compress_scripts', '0', 'no'),
(584, 'elementor_allow_tracking', 'no', 'yes'),
(754, 'wpcf7', 'a:2:{s:7:"version";s:5:"4.9.1";s:13:"bulk_validate";a:4:{s:9:"timestamp";d:1506414467;s:7:"version";s:3:"4.9";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(790, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(791, 'widget_media_image', 'a:2:{i:2;a:15:{s:13:"attachment_id";i:261;s:3:"url";s:65:"http://127.0.0.1/broker/wp-content/uploads/2017/10/broker-tag.jpg";s:5:"title";s:0:"";s:4:"size";s:4:"full";s:5:"width";i:266;s:6:"height";i:266;s:7:"caption";s:10:"broker-tag";s:3:"alt";s:10:"broker-tag";s:9:"link_type";s:4:"none";s:8:"link_url";s:0:"";s:13:"image_classes";s:0:"";s:12:"link_classes";s:0:"";s:8:"link_rel";s:0:"";s:11:"image_title";s:0:"";s:17:"link_target_blank";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(792, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(793, 'widget_custom_html', 'a:3:{i:2;a:2:{s:5:"title";s:53:"הרשמו עכשיו וקבלו את הפוסטים!";s:7:"content";s:68:"[contact-form-7 id="559" title="רשימת תפוצה סיידבר"]";}i:3;a:2:{s:5:"title";s:0:"";s:7:"content";s:424:"<div class="fb-page" data-href="https://www.facebook.com/broker.re/" data-tabs="timeline" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/broker.re/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/broker.re/">‏ברוקר נדל&quot;ן - סטנדרט חדש בנדל&quot;ן‏</a></blockquote></div>";}s:12:"_multiwidget";i:1;}', 'yes'),
(585, 'elementor_tracker_notice', '1', 'yes'),
(158, 'recently_activated', 'a:4:{s:53:"responsive-lightbox-lite/responsive-lightbox-lite.php";i:1512838466;s:43:"responsive-lightbox/responsive-lightbox.php";i:1512838274;s:24:"simple-lightbox/main.php";i:1512837671;s:42:"yet-another-related-posts-plugin/yarpp.php";i:1512721993;}', 'yes'),
(2877, 'string-locator-search-history', 's:7554:"a:7:{i:0;a:7:{s:2:"ID";i:1;s:7:"linenum";i:346;s:4:"path";s:69:"C:\\xampp\\htdocs\\broker/wp-content/plugins/pie-register\\login_form.php";s:8:"filename";s:348:"<a href="http://127.0.0.1/broker/wp-admin/tools.php?page=string-locator&#038;edit-file=login_form.php&#038;file-reference=pie-register&#038;file-type=plugin&#038;string-locator-line=346&#038;string-locator-path=C%3A%5Cxampp%5Chtdocs%5Cbroker%5Cwp-content%5Cplugins%5Cpie-register%5Clogin_form.php">wp-content\\plugins\\pie-register\\login_form.php</a>";s:12:"filename_raw";s:46:"wp-content\\plugins\\pie-register\\login_form.php";s:7:"editurl";s:262:"http://127.0.0.1/broker/wp-admin/tools.php?page=string-locator&edit-file=login_form.php&file-reference=pie-register&file-type=plugin&string-locator-line=346&string-locator-path=C%3A%5Cxampp%5Chtdocs%5Cbroker%5Cwp-content%5Cplugins%5Cpie-register%5Clogin_form.php";s:12:"stringresult";s:76:"&hellip;data .= $login_form-&gt;add_<strong>rememberme</strong>();\r\n&hellip;";}i:1;a:7:{s:2:"ID";i:1;s:7:"linenum";i:1918;s:4:"path";s:71:"C:\\xampp\\htdocs\\broker/wp-content/plugins/pie-register\\pie-register.php";s:8:"filename";s:355:"<a href="http://127.0.0.1/broker/wp-admin/tools.php?page=string-locator&#038;edit-file=pie-register.php&#038;file-reference=pie-register&#038;file-type=plugin&#038;string-locator-line=1918&#038;string-locator-path=C%3A%5Cxampp%5Chtdocs%5Cbroker%5Cwp-content%5Cplugins%5Cpie-register%5Cpie-register.php">wp-content\\plugins\\pie-register\\pie-register.php</a>";s:12:"filename_raw";s:48:"wp-content\\plugins\\pie-register\\pie-register.php";s:7:"editurl";s:267:"http://127.0.0.1/broker/wp-admin/tools.php?page=string-locator&edit-file=pie-register.php&file-reference=pie-register&file-type=plugin&string-locator-line=1918&string-locator-path=C%3A%5Cxampp%5Chtdocs%5Cbroker%5Cwp-content%5Cplugins%5Cpie-register%5Cpie-register.php";s:12:"stringresult";s:87:"&hellip;t($this-&gt;pie_post_array[&#039;<strong>rememberme</strong>&#039;]);\r\n&hellip;";}i:2;a:7:{s:2:"ID";i:2;s:7:"linenum";i:1920;s:4:"path";s:71:"C:\\xampp\\htdocs\\broker/wp-content/plugins/pie-register\\pie-register.php";s:8:"filename";s:355:"<a href="http://127.0.0.1/broker/wp-admin/tools.php?page=string-locator&#038;edit-file=pie-register.php&#038;file-reference=pie-register&#038;file-type=plugin&#038;string-locator-line=1920&#038;string-locator-path=C%3A%5Cxampp%5Chtdocs%5Cbroker%5Cwp-content%5Cplugins%5Cpie-register%5Cpie-register.php">wp-content\\plugins\\pie-register\\pie-register.php</a>";s:12:"filename_raw";s:48:"wp-content\\plugins\\pie-register\\pie-register.php";s:7:"editurl";s:267:"http://127.0.0.1/broker/wp-admin/tools.php?page=string-locator&edit-file=pie-register.php&file-reference=pie-register&file-type=plugin&string-locator-line=1920&string-locator-path=C%3A%5Cxampp%5Chtdocs%5Cbroker%5Cwp-content%5Cplugins%5Cpie-register%5Cpie-register.php";s:12:"stringresult";s:104:"&hellip;t($this-&gt;pie_post_array[&#039;<strong>rememberme</strong>&#039;])) ? true : false ;\r\n&hellip;";}i:3;a:7:{s:2:"ID";i:3;s:7:"linenum";i:3271;s:4:"path";s:71:"C:\\xampp\\htdocs\\broker/wp-content/plugins/pie-register\\pie-register.php";s:8:"filename";s:355:"<a href="http://127.0.0.1/broker/wp-admin/tools.php?page=string-locator&#038;edit-file=pie-register.php&#038;file-reference=pie-register&#038;file-type=plugin&#038;string-locator-line=3271&#038;string-locator-path=C%3A%5Cxampp%5Chtdocs%5Cbroker%5Cwp-content%5Cplugins%5Cpie-register%5Cpie-register.php">wp-content\\plugins\\pie-register\\pie-register.php</a>";s:12:"filename_raw";s:48:"wp-content\\plugins\\pie-register\\pie-register.php";s:7:"editurl";s:267:"http://127.0.0.1/broker/wp-admin/tools.php?page=string-locator&edit-file=pie-register.php&file-reference=pie-register&file-type=plugin&string-locator-line=3271&string-locator-path=C%3A%5Cxampp%5Chtdocs%5Cbroker%5Cwp-content%5Cplugins%5Cpie-register%5Cpie-register.php";s:12:"stringresult";s:70:"					$_POST[&#039;<strong>rememberme</strong>&#039;] = &quot;&quot;;\r\n";}i:4;a:7:{s:2:"ID";i:1;s:7:"linenum";i:34;s:4:"path";s:106:"C:\\xampp\\htdocs\\broker/wp-content/plugins/pie-register\\pie_register_template\\login\\login_form_template.php";s:8:"filename";s:434:"<a href="http://127.0.0.1/broker/wp-admin/tools.php?page=string-locator&#038;edit-file=login_form_template.php&#038;file-reference=pie-register&#038;file-type=plugin&#038;string-locator-line=34&#038;string-locator-path=C%3A%5Cxampp%5Chtdocs%5Cbroker%5Cwp-content%5Cplugins%5Cpie-register%5Cpie_register_template%5Clogin%5Clogin_form_template.php">wp-content\\plugins\\pie-register\\pie_register_template\\login\\login_form_template.php</a>";s:12:"filename_raw";s:83:"wp-content\\plugins\\pie-register\\pie_register_template\\login\\login_form_template.php";s:7:"editurl";s:311:"http://127.0.0.1/broker/wp-admin/tools.php?page=string-locator&edit-file=login_form_template.php&file-reference=pie-register&file-type=plugin&string-locator-line=34&string-locator-path=C%3A%5Cxampp%5Chtdocs%5Cbroker%5Cwp-content%5Cplugins%5Cpie-register%5Cpie_register_template%5Clogin%5Clogin_form_template.php";s:12:"stringresult";s:47:"		function add_<strong>rememberme</strong>(){\r\n";}i:5;a:7:{s:2:"ID";i:2;s:7:"linenum";i:36;s:4:"path";s:106:"C:\\xampp\\htdocs\\broker/wp-content/plugins/pie-register\\pie_register_template\\login\\login_form_template.php";s:8:"filename";s:434:"<a href="http://127.0.0.1/broker/wp-admin/tools.php?page=string-locator&#038;edit-file=login_form_template.php&#038;file-reference=pie-register&#038;file-type=plugin&#038;string-locator-line=36&#038;string-locator-path=C%3A%5Cxampp%5Chtdocs%5Cbroker%5Cwp-content%5Cplugins%5Cpie-register%5Cpie_register_template%5Clogin%5Clogin_form_template.php">wp-content\\plugins\\pie-register\\pie_register_template\\login\\login_form_template.php</a>";s:12:"filename_raw";s:83:"wp-content\\plugins\\pie-register\\pie_register_template\\login\\login_form_template.php";s:7:"editurl";s:311:"http://127.0.0.1/broker/wp-admin/tools.php?page=string-locator&edit-file=login_form_template.php&file-reference=pie-register&file-type=plugin&string-locator-line=36&string-locator-path=C%3A%5Cxampp%5Chtdocs%5Cbroker%5Cwp-content%5Cplugins%5Cpie-register%5Cpie_register_template%5Clogin%5Clogin_form_template.php";s:12:"stringresult";s:100:"&hellip;orm_data .= &#039;&lt;label for=&quot;<strong>rememberme</strong>&quot;&gt;&#039;;\r\n&hellip;";}i:6;a:7:{s:2:"ID";i:3;s:7:"linenum";i:37;s:4:"path";s:106:"C:\\xampp\\htdocs\\broker/wp-content/plugins/pie-register\\pie_register_template\\login\\login_form_template.php";s:8:"filename";s:434:"<a href="http://127.0.0.1/broker/wp-admin/tools.php?page=string-locator&#038;edit-file=login_form_template.php&#038;file-reference=pie-register&#038;file-type=plugin&#038;string-locator-line=37&#038;string-locator-path=C%3A%5Cxampp%5Chtdocs%5Cbroker%5Cwp-content%5Cplugins%5Cpie-register%5Cpie_register_template%5Clogin%5Clogin_form_template.php">wp-content\\plugins\\pie-register\\pie_register_template\\login\\login_form_template.php</a>";s:12:"filename_raw";s:83:"wp-content\\plugins\\pie-register\\pie_register_template\\login\\login_form_template.php";s:7:"editurl";s:311:"http://127.0.0.1/broker/wp-admin/tools.php?page=string-locator&edit-file=login_form_template.php&file-reference=pie-register&file-type=plugin&string-locator-line=37&string-locator-path=C%3A%5Cxampp%5Chtdocs%5Cbroker%5Cwp-content%5Cplugins%5Cpie-register%5Cpie_register_template%5Clogin%5Clogin_form_template.php";s:12:"stringresult";s:153:"&hellip;box&quot; value=&quot;forever&quot; id=&quot;<strong>rememberme</strong>&quot; name=&quot;<strong>rememberme</strong>&quot;&gt;&#039;.__(&hellip;";}}";', 'no'),
(402, '_elementor_installed_time', '1505320671', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(403, 'elementor_remote_info_templates_data', 'a:104:{i:0;a:8:{s:2:"id";s:3:"147";s:5:"title";s:16:"Homepage – App";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0004.png";s:12:"tmpl_created";s:10:"1470829868";s:6:"author";s:9:"Elementor";s:3:"url";s:102:"https://library.elementor.com/homepage-app/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:1;a:8:{s:2:"id";s:3:"492";s:5:"title";s:21:"Homepage – Law firm";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/10/0024.png";s:12:"tmpl_created";s:10:"1477388365";s:6:"author";s:9:"Elementor";s:3:"url";s:107:"https://library.elementor.com/homepage-law-firm/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:2;a:8:{s:2:"id";s:3:"225";s:5:"title";s:23:"Homepage – Restaurant";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0016.png";s:12:"tmpl_created";s:10:"1470829872";s:6:"author";s:9:"Elementor";s:3:"url";s:109:"https://library.elementor.com/homepage-restaurant/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:3;a:8:{s:2:"id";s:3:"777";s:5:"title";s:28:"Homepage &#8211; Coffee Shop";s:9:"thumbnail";s:70:"https://library.elementor.com/wp-content/uploads/2017/01/rest-home.jpg";s:12:"tmpl_created";s:10:"1485273092";s:6:"author";s:9:"Elementor";s:3:"url";s:110:"https://library.elementor.com/homepage-coffee-shop/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:4;a:8:{s:2:"id";s:4:"2152";s:5:"title";s:26:"Homepage &#8211; Cake Shop";s:9:"thumbnail";s:70:"https://library.elementor.com/wp-content/uploads/2017/07/cake-home.png";s:12:"tmpl_created";s:10:"1499774132";s:6:"author";s:9:"Elementor";s:3:"url";s:108:"https://library.elementor.com/homepage-cake-shop/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:5;a:8:{s:2:"id";s:3:"519";s:5:"title";s:20:"Homepage – Fitness";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/10/0023.png";s:12:"tmpl_created";s:10:"1477388808";s:6:"author";s:9:"Elementor";s:3:"url";s:106:"https://library.elementor.com/homepage-fitness/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:6;a:8:{s:2:"id";s:3:"181";s:5:"title";s:23:"Homepage &#8211; Agency";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0019.png";s:12:"tmpl_created";s:10:"1470826567";s:6:"author";s:9:"Elementor";s:3:"url";s:105:"https://library.elementor.com/homepage-agency/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:7;a:8:{s:2:"id";s:3:"728";s:5:"title";s:33:"Homepage &#8211; Delivery Company";s:9:"thumbnail";s:87:"https://library.elementor.com/wp-content/uploads/2017/01/delivery-company-home-page.jpg";s:12:"tmpl_created";s:10:"1485269993";s:6:"author";s:9:"Elementor";s:3:"url";s:115:"https://library.elementor.com/homepage-delivery-company/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:8;a:8:{s:2:"id";s:3:"463";s:5:"title";s:18:"Homepage – Study";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/10/0022.png";s:12:"tmpl_created";s:10:"1477388340";s:6:"author";s:9:"Elementor";s:3:"url";s:104:"https://library.elementor.com/homepage-study/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:9;a:8:{s:2:"id";s:4:"1068";s:5:"title";s:27:"Homepage &#8211; Copywriter";s:9:"thumbnail";s:71:"https://library.elementor.com/wp-content/uploads/2017/03/copywriter.png";s:12:"tmpl_created";s:10:"1488805928";s:6:"author";s:9:"Elementor";s:3:"url";s:109:"https://library.elementor.com/homepage-copywriter/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:10;a:8:{s:2:"id";s:4:"2402";s:5:"title";s:32:"Homepage &#8211; Interior Design";s:9:"thumbnail";s:69:"https://library.elementor.com/wp-content/uploads/2017/09/Interior.png";s:12:"tmpl_created";s:10:"1506441447";s:6:"author";s:9:"Elementor";s:3:"url";s:114:"https://library.elementor.com/homepage-interior-design/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:11;a:8:{s:2:"id";s:4:"2403";s:5:"title";s:29:"Homepage &#8211; Luxury Hotel";s:9:"thumbnail";s:66:"https://library.elementor.com/wp-content/uploads/2017/09/Hotel.png";s:12:"tmpl_created";s:10:"1506441428";s:6:"author";s:9:"Elementor";s:3:"url";s:111:"https://library.elementor.com/homepage-luxury-hotel/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:12;a:8:{s:2:"id";s:4:"2404";s:5:"title";s:24:"Homepage &#8211; Product";s:9:"thumbnail";s:68:"https://library.elementor.com/wp-content/uploads/2017/09/product.png";s:12:"tmpl_created";s:10:"1506441452";s:6:"author";s:9:"Elementor";s:3:"url";s:106:"https://library.elementor.com/homepage-product/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"1";}i:13;a:8:{s:2:"id";s:4:"2123";s:5:"title";s:33:"One Page &#8211; Architect Office";s:9:"thumbnail";s:70:"https://library.elementor.com/wp-content/uploads/2017/06/architect.png";s:12:"tmpl_created";s:10:"1499772989";s:6:"author";s:9:"Elementor";s:3:"url";s:115:"https://library.elementor.com/one-page-architect-office/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:14;a:8:{s:2:"id";s:4:"1888";s:5:"title";s:32:"One Page &#8211; Creative Meetup";s:9:"thumbnail";s:76:"https://library.elementor.com/wp-content/uploads/2017/06/creative-meetup.png";s:12:"tmpl_created";s:10:"1496822319";s:6:"author";s:9:"Elementor";s:3:"url";s:114:"https://library.elementor.com/one-page-creative-meetup/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:15;a:8:{s:2:"id";s:4:"1903";s:5:"title";s:20:"One Page &#8211; Spa";s:9:"thumbnail";s:64:"https://library.elementor.com/wp-content/uploads/2017/06/spa.png";s:12:"tmpl_created";s:10:"1496822325";s:6:"author";s:9:"Elementor";s:3:"url";s:102:"https://library.elementor.com/one-page-spa/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:16;a:8:{s:2:"id";s:4:"1891";s:5:"title";s:35:"One Page &#8211; Textile Convention";s:9:"thumbnail";s:75:"https://library.elementor.com/wp-content/uploads/2017/06/textile-meetup.png";s:12:"tmpl_created";s:10:"1496822323";s:6:"author";s:9:"Elementor";s:3:"url";s:117:"https://library.elementor.com/one-page-textile-convention/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:17;a:8:{s:2:"id";s:4:"1880";s:5:"title";s:24:"One Page &#8211; Wedding";s:9:"thumbnail";s:68:"https://library.elementor.com/wp-content/uploads/2017/06/wedding.png";s:12:"tmpl_created";s:10:"1496822317";s:6:"author";s:9:"Elementor";s:3:"url";s:106:"https://library.elementor.com/one-page-wedding/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:18;a:8:{s:2:"id";s:4:"1885";s:5:"title";s:29:"One Page &#8211; Yacht Rental";s:9:"thumbnail";s:71:"https://library.elementor.com/wp-content/uploads/2017/06/yacht-home.png";s:12:"tmpl_created";s:10:"1496822321";s:6:"author";s:9:"Elementor";s:3:"url";s:111:"https://library.elementor.com/one-page-yacht-rental/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:19;a:8:{s:2:"id";s:4:"2145";s:5:"title";s:30:"About &#8211; Delivery Compony";s:9:"thumbnail";s:75:"https://library.elementor.com/wp-content/uploads/2017/07/delivery-about.png";s:12:"tmpl_created";s:10:"1499774125";s:6:"author";s:9:"Elementor";s:3:"url";s:112:"https://library.elementor.com/about-delivery-compony/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:20;a:8:{s:2:"id";s:4:"2155";s:5:"title";s:23:"About &#8211; Cake Shop";s:9:"thumbnail";s:71:"https://library.elementor.com/wp-content/uploads/2017/07/cake-about.png";s:12:"tmpl_created";s:10:"1499774130";s:6:"author";s:9:"Elementor";s:3:"url";s:105:"https://library.elementor.com/about-cake-shop/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:21;a:8:{s:2:"id";s:4:"1085";s:5:"title";s:21:"About &#8211; Startup";s:9:"thumbnail";s:68:"https://library.elementor.com/wp-content/uploads/2017/03/Startup.png";s:12:"tmpl_created";s:10:"1488810874";s:6:"author";s:9:"Elementor";s:3:"url";s:103:"https://library.elementor.com/about-startup/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:22;a:8:{s:2:"id";s:3:"143";s:5:"title";s:18:"About – Personal";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0010.png";s:12:"tmpl_created";s:10:"1470820447";s:6:"author";s:9:"Elementor";s:3:"url";s:104:"https://library.elementor.com/about-personal/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:23;a:8:{s:2:"id";s:3:"101";s:5:"title";s:16:"About &#8211; CV";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0018.png";s:12:"tmpl_created";s:10:"1470829785";s:6:"author";s:9:"Elementor";s:3:"url";s:98:"https://library.elementor.com/about-cv/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:24;a:8:{s:2:"id";s:3:"140";s:5:"title";s:21:"About – Art Gallery";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0009.png";s:12:"tmpl_created";s:10:"1470820463";s:6:"author";s:9:"Elementor";s:3:"url";s:107:"https://library.elementor.com/about-art-gallery/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:25;a:8:{s:2:"id";s:3:"213";s:5:"title";s:22:"About – Architecture";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0008.png";s:12:"tmpl_created";s:10:"1470829766";s:6:"author";s:9:"Elementor";s:3:"url";s:108:"https://library.elementor.com/about-architecture/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:26;a:8:{s:2:"id";s:4:"1461";s:5:"title";s:28:"Landing Page &#8211; Ebook 1";s:9:"thumbnail";s:81:"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Ebook-1.png";s:12:"tmpl_created";s:10:"1494352121";s:6:"author";s:9:"Elementor";s:3:"url";s:110:"https://library.elementor.com/landing-page-ebook-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:27;a:8:{s:2:"id";s:4:"1460";s:5:"title";s:28:"Landing Page &#8211; Ebook 2";s:9:"thumbnail";s:81:"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Ebook-2.png";s:12:"tmpl_created";s:10:"1494352124";s:6:"author";s:9:"Elementor";s:3:"url";s:110:"https://library.elementor.com/landing-page-ebook-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:28;a:8:{s:2:"id";s:4:"1459";s:5:"title";s:28:"Landing Page &#8211; Ebook 3";s:9:"thumbnail";s:81:"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Ebook-3.png";s:12:"tmpl_created";s:10:"1494352125";s:6:"author";s:9:"Elementor";s:3:"url";s:110:"https://library.elementor.com/landing-page-ebook-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:29;a:8:{s:2:"id";s:4:"1052";s:5:"title";s:33:"Landing Page &#8211; Mobile App 1";s:9:"thumbnail";s:64:"https://library.elementor.com/wp-content/uploads/2017/03/app.png";s:12:"tmpl_created";s:10:"1488810873";s:6:"author";s:9:"Elementor";s:3:"url";s:113:"https://library.elementor.com/landing-page-mobile-app/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:30;a:8:{s:2:"id";s:4:"1503";s:5:"title";s:33:"Landing Page &#8211; Mobile App 2";s:9:"thumbnail";s:78:"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-app1.png";s:12:"tmpl_created";s:10:"1494352113";s:6:"author";s:9:"Elementor";s:3:"url";s:115:"https://library.elementor.com/landing-page-mobile-app-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:31;a:8:{s:2:"id";s:4:"1504";s:5:"title";s:33:"Landing Page &#8211; Mobile App 3";s:9:"thumbnail";s:78:"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-app2.png";s:12:"tmpl_created";s:10:"1494352112";s:6:"author";s:9:"Elementor";s:3:"url";s:115:"https://library.elementor.com/landing-page-mobile-app-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:32;a:8:{s:2:"id";s:4:"1505";s:5:"title";s:33:"Landing Page &#8211; Mobile App 4";s:9:"thumbnail";s:78:"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-app3.png";s:12:"tmpl_created";s:10:"1494352110";s:6:"author";s:9:"Elementor";s:3:"url";s:115:"https://library.elementor.com/landing-page-mobile-app-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:33;a:8:{s:2:"id";s:3:"726";s:5:"title";s:33:"Landing Page &#8211; Conference 1";s:9:"thumbnail";s:84:"https://library.elementor.com/wp-content/uploads/2017/01/convention-landing-page.jpg";s:12:"tmpl_created";s:10:"1485270062";s:6:"author";s:9:"Elementor";s:3:"url";s:113:"https://library.elementor.com/landing-page-conference/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:34;a:8:{s:2:"id";s:4:"1613";s:5:"title";s:29:"Landing Page – Conference 2";s:9:"thumbnail";s:109:"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-International-Womens-Day-Conference.png";s:12:"tmpl_created";s:10:"1494352129";s:6:"author";s:9:"Elementor";s:3:"url";s:115:"https://library.elementor.com/landing-page-conference-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:35;a:8:{s:2:"id";s:4:"1612";s:5:"title";s:29:"Landing Page – Conference 3";s:9:"thumbnail";s:89:"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Tech-Conference.png";s:12:"tmpl_created";s:10:"1494352127";s:6:"author";s:9:"Elementor";s:3:"url";s:115:"https://library.elementor.com/landing-page-conference-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:36;a:8:{s:2:"id";s:4:"1614";s:5:"title";s:29:"Landing Page – Conference 4";s:9:"thumbnail";s:99:"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Sustainability-Conference.png";s:12:"tmpl_created";s:10:"1494352131";s:6:"author";s:9:"Elementor";s:3:"url";s:115:"https://library.elementor.com/landing-page-conference-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:37;a:8:{s:2:"id";s:3:"906";s:5:"title";s:29:"Landing Page &#8211;  Coacher";s:9:"thumbnail";s:80:"https://library.elementor.com/wp-content/uploads/2017/02/Landin-Page-Coacher.png";s:12:"tmpl_created";s:10:"1494352066";s:6:"author";s:9:"Elementor";s:3:"url";s:110:"https://library.elementor.com/landing-page-coacher/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:38;a:8:{s:2:"id";s:3:"955";s:5:"title";s:31:"Landing Page &#8211; Law Office";s:9:"thumbnail";s:84:"https://library.elementor.com/wp-content/uploads/2017/02/Landing-Page-Law-Office.png";s:12:"tmpl_created";s:10:"1494352069";s:6:"author";s:9:"Elementor";s:3:"url";s:113:"https://library.elementor.com/landing-page-law-office/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:39;a:8:{s:2:"id";s:3:"879";s:5:"title";s:41:"Landing Page &#8211; Financial Consultant";s:9:"thumbnail";s:94:"https://library.elementor.com/wp-content/uploads/2017/02/Landing-Page-Financial-consultant.png";s:12:"tmpl_created";s:10:"1494352064";s:6:"author";s:9:"Elementor";s:3:"url";s:123:"https://library.elementor.com/landing-page-financial-consultant/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:40;a:8:{s:2:"id";s:3:"926";s:5:"title";s:33:"Landing Page &#8211; Private Chef";s:9:"thumbnail";s:86:"https://library.elementor.com/wp-content/uploads/2017/02/Landing-Page-Private-Chef.png";s:12:"tmpl_created";s:10:"1494352068";s:6:"author";s:9:"Elementor";s:3:"url";s:115:"https://library.elementor.com/landing-page-private-chef/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:41;a:8:{s:2:"id";s:3:"855";s:5:"title";s:37:"Landing Page &#8211; Personal Trainer";s:9:"thumbnail";s:90:"https://library.elementor.com/wp-content/uploads/2017/02/Landing-Page-Personal-Trainer.png";s:12:"tmpl_created";s:10:"1494352061";s:6:"author";s:9:"Elementor";s:3:"url";s:119:"https://library.elementor.com/landing-page-personal-trainer/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:42;a:8:{s:2:"id";s:3:"974";s:5:"title";s:28:"Landing Page &#8211; Stylist";s:9:"thumbnail";s:81:"https://library.elementor.com/wp-content/uploads/2017/03/Landing-Page-Stylist.png";s:12:"tmpl_created";s:10:"1494352071";s:6:"author";s:9:"Elementor";s:3:"url";s:110:"https://library.elementor.com/landing-page-stylist/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:43;a:8:{s:2:"id";s:4:"1032";s:5:"title";s:27:"Landing Page &#8211; Agency";s:9:"thumbnail";s:67:"https://library.elementor.com/wp-content/uploads/2017/03/Agency.png";s:12:"tmpl_created";s:10:"1488810866";s:6:"author";s:9:"Elementor";s:3:"url";s:109:"https://library.elementor.com/landing-page-agency/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:44;a:8:{s:2:"id";s:4:"1634";s:5:"title";s:33:"Landing Page &#8211; Chiropractor";s:9:"thumbnail";s:86:"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Chiropractor.png";s:12:"tmpl_created";s:10:"1494352119";s:6:"author";s:9:"Elementor";s:3:"url";s:115:"https://library.elementor.com/landing-page-chiropractor/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:45;a:8:{s:2:"id";s:3:"730";s:5:"title";s:24:"Landing Page &#8211; App";s:9:"thumbnail";s:78:"https://library.elementor.com/wp-content/uploads/2017/01/app.-landing-page.jpg";s:12:"tmpl_created";s:10:"1485273430";s:6:"author";s:9:"Elementor";s:3:"url";s:106:"https://library.elementor.com/landing-page-app/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:46;a:8:{s:2:"id";s:3:"643";s:5:"title";s:29:"Langing Page &#8211; Festival";s:9:"thumbnail";s:69:"https://library.elementor.com/wp-content/uploads/2016/12/festival.jpg";s:12:"tmpl_created";s:10:"1481549290";s:6:"author";s:9:"Elementor";s:3:"url";s:111:"https://library.elementor.com/langing-page-festival/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:47;a:8:{s:2:"id";s:3:"487";s:5:"title";s:29:"Landing Page &#8211; Vacation";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/10/0021.png";s:12:"tmpl_created";s:10:"1477388357";s:6:"author";s:9:"Elementor";s:3:"url";s:111:"https://library.elementor.com/landing-page-vacation/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:48;a:8:{s:2:"id";s:3:"192";s:5:"title";s:28:"Landing Page &#8211; Webinar";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0015.png";s:12:"tmpl_created";s:10:"1470820734";s:6:"author";s:9:"Elementor";s:3:"url";s:110:"https://library.elementor.com/landing-page-webinar/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:49;a:8:{s:2:"id";s:3:"542";s:5:"title";s:28:"Landing Page &#8211; Wedding";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/10/0025.png";s:12:"tmpl_created";s:10:"1477388484";s:6:"author";s:9:"Elementor";s:3:"url";s:110:"https://library.elementor.com/landing-page-wedding/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:50;a:8:{s:2:"id";s:4:"1187";s:5:"title";s:32:"Landing Page &#8211; Photography";s:9:"thumbnail";s:66:"https://library.elementor.com/wp-content/uploads/2017/03/lp1-l.png";s:12:"tmpl_created";s:10:"1490707385";s:6:"author";s:9:"Elementor";s:3:"url";s:114:"https://library.elementor.com/landing-page-photography/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:51;a:8:{s:2:"id";s:3:"641";s:5:"title";s:28:"Landing Page &#8211; Fashion";s:9:"thumbnail";s:81:"https://library.elementor.com/wp-content/uploads/2016/12/fashion-landing-page.jpg";s:12:"tmpl_created";s:10:"1481549264";s:6:"author";s:9:"Elementor";s:3:"url";s:110:"https://library.elementor.com/landing-page-fashion/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:52;a:8:{s:2:"id";s:3:"189";s:5:"title";s:30:"Landing Page &#8211; Tourism 1";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0005.png";s:12:"tmpl_created";s:10:"1470820715";s:6:"author";s:9:"Elementor";s:3:"url";s:110:"https://library.elementor.com/landing-page-tourism/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:53;a:8:{s:2:"id";s:4:"1547";s:5:"title";s:30:"Landing Page &#8211; Tourism 2";s:9:"thumbnail";s:82:"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Truism-1.png";s:12:"tmpl_created";s:10:"1494352115";s:6:"author";s:9:"Elementor";s:3:"url";s:112:"https://library.elementor.com/landing-page-tourism-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:54;a:8:{s:2:"id";s:4:"1546";s:5:"title";s:30:"Landing Page &#8211; Tourism 3";s:9:"thumbnail";s:82:"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Truism-2.png";s:12:"tmpl_created";s:10:"1494352116";s:6:"author";s:9:"Elementor";s:3:"url";s:112:"https://library.elementor.com/landing-page-tourism-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:55;a:8:{s:2:"id";s:4:"1545";s:5:"title";s:30:"Landing Page &#8211; Tourism 4";s:9:"thumbnail";s:82:"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Truism-3.png";s:12:"tmpl_created";s:10:"1494352118";s:6:"author";s:9:"Elementor";s:3:"url";s:112:"https://library.elementor.com/landing-page-tourism-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:56;a:8:{s:2:"id";s:4:"1190";s:5:"title";s:26:"Landing Page &#8211; Hotel";s:9:"thumbnail";s:66:"https://library.elementor.com/wp-content/uploads/2017/03/lp2-l.png";s:12:"tmpl_created";s:10:"1490707391";s:6:"author";s:9:"Elementor";s:3:"url";s:108:"https://library.elementor.com/landing-page-hotel/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:57;a:8:{s:2:"id";s:3:"195";s:5:"title";s:28:"Landing Page &#8211; Product";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0006.png";s:12:"tmpl_created";s:10:"1470820765";s:6:"author";s:9:"Elementor";s:3:"url";s:110:"https://library.elementor.com/landing-page-product/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:58;a:8:{s:2:"id";s:3:"197";s:5:"title";s:34:"Landing Page &#8211; Real Estate 1";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0007.png";s:12:"tmpl_created";s:10:"1470825711";s:6:"author";s:9:"Elementor";s:3:"url";s:114:"https://library.elementor.com/landing-page-real-estate/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:59;a:8:{s:2:"id";s:4:"1193";s:5:"title";s:34:"Landing Page &#8211; Real Estate 2";s:9:"thumbnail";s:66:"https://library.elementor.com/wp-content/uploads/2017/03/lp3-l.png";s:12:"tmpl_created";s:10:"1490707422";s:6:"author";s:9:"Elementor";s:3:"url";s:116:"https://library.elementor.com/landing-page-real-estate-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:60;a:8:{s:2:"id";s:4:"1415";s:5:"title";s:34:"Landing Page &#8211; Real Estate 3";s:9:"thumbnail";s:87:"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Real-Estate-1.png";s:12:"tmpl_created";s:10:"1494352106";s:6:"author";s:9:"Elementor";s:3:"url";s:116:"https://library.elementor.com/landing-page-real-estate-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:61;a:8:{s:2:"id";s:4:"1414";s:5:"title";s:34:"Landing Page &#8211; Real Estate 4";s:9:"thumbnail";s:87:"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Real-Estate-2.png";s:12:"tmpl_created";s:10:"1494352107";s:6:"author";s:9:"Elementor";s:3:"url";s:116:"https://library.elementor.com/landing-page-real-estate-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:62;a:8:{s:2:"id";s:4:"1413";s:5:"title";s:34:"Landing Page &#8211; Real Estate 5";s:9:"thumbnail";s:87:"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Real-Estate-3.png";s:12:"tmpl_created";s:10:"1494352109";s:6:"author";s:9:"Elementor";s:3:"url";s:116:"https://library.elementor.com/landing-page-real-estate-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:63;a:8:{s:2:"id";s:4:"1573";s:5:"title";s:29:"Landing Page &#8211; Coupon 1";s:9:"thumbnail";s:70:"https://library.elementor.com/wp-content/uploads/2017/05/Coupon-02.png";s:12:"tmpl_created";s:10:"1494352133";s:6:"author";s:9:"Elementor";s:3:"url";s:111:"https://library.elementor.com/landing-page-coupon-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:64;a:8:{s:2:"id";s:4:"1572";s:5:"title";s:29:"Landing Page &#8211; Coupon 2";s:9:"thumbnail";s:70:"https://library.elementor.com/wp-content/uploads/2017/05/Coupon-03.png";s:12:"tmpl_created";s:10:"1494352134";s:6:"author";s:9:"Elementor";s:3:"url";s:111:"https://library.elementor.com/landing-page-coupon-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:65;a:8:{s:2:"id";s:4:"1570";s:5:"title";s:29:"Landing Page &#8211; Coupon 3";s:9:"thumbnail";s:70:"https://library.elementor.com/wp-content/uploads/2017/05/Coupon-01.png";s:12:"tmpl_created";s:10:"1494352136";s:6:"author";s:9:"Elementor";s:3:"url";s:111:"https://library.elementor.com/landing-page-coupon-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:66;a:8:{s:2:"id";s:4:"1571";s:5:"title";s:29:"Landing Page &#8211; Coupon 4";s:9:"thumbnail";s:70:"https://library.elementor.com/wp-content/uploads/2017/05/Coupon-04.png";s:12:"tmpl_created";s:10:"1494352138";s:6:"author";s:9:"Elementor";s:3:"url";s:111:"https://library.elementor.com/landing-page-coupon-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:67;a:8:{s:2:"id";s:4:"2141";s:5:"title";s:32:"Contact &#8211; Delivery Company";s:9:"thumbnail";s:77:"https://library.elementor.com/wp-content/uploads/2017/07/delivery-contact.png";s:12:"tmpl_created";s:10:"1499774122";s:6:"author";s:9:"Elementor";s:3:"url";s:114:"https://library.elementor.com/contact-delivery-company/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:68;a:8:{s:2:"id";s:3:"137";s:5:"title";s:22:"Contact &#8211; Modern";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0013.png";s:12:"tmpl_created";s:10:"1470829828";s:6:"author";s:9:"Elementor";s:3:"url";s:104:"https://library.elementor.com/contact-modern/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:69;a:8:{s:2:"id";s:3:"614";s:5:"title";s:25:"Contact &#8211; Architect";s:9:"thumbnail";s:78:"https://library.elementor.com/wp-content/uploads/2016/12/architect-contact.jpg";s:12:"tmpl_created";s:10:"1481549169";s:6:"author";s:9:"Elementor";s:3:"url";s:107:"https://library.elementor.com/contact-architect/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:70;a:8:{s:2:"id";s:3:"256";s:5:"title";s:26:"Contact &#8211; Restaurant";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0011.png";s:12:"tmpl_created";s:10:"1470829796";s:6:"author";s:9:"Elementor";s:3:"url";s:108:"https://library.elementor.com/contact-restaurant/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:71;a:8:{s:2:"id";s:4:"2150";s:5:"title";s:25:"Contact &#8211; Cake Shop";s:9:"thumbnail";s:73:"https://library.elementor.com/wp-content/uploads/2017/07/cake-contact.png";s:12:"tmpl_created";s:10:"1499774127";s:6:"author";s:9:"Elementor";s:3:"url";s:107:"https://library.elementor.com/contact-cake-shop/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:72;a:8:{s:2:"id";s:3:"223";s:5:"title";s:17:"Contact – Hotel";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0002.png";s:12:"tmpl_created";s:10:"1470820471";s:6:"author";s:9:"Elementor";s:3:"url";s:103:"https://library.elementor.com/contact-hotel/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:73;a:8:{s:2:"id";s:2:"24";s:5:"title";s:25:"Contact &#8211; Corporate";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0012.png";s:12:"tmpl_created";s:10:"1470248619";s:6:"author";s:9:"Elementor";s:3:"url";s:107:"https://library.elementor.com/contact-corporate/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:74;a:8:{s:2:"id";s:3:"184";s:5:"title";s:23:"Services &#8211; Moving";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0017.png";s:12:"tmpl_created";s:10:"1470829889";s:6:"author";s:9:"Elementor";s:3:"url";s:105:"https://library.elementor.com/services-moving/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:75;a:8:{s:2:"id";s:3:"625";s:5:"title";s:31:"Services &#8211; Cake Shop Menu";s:9:"thumbnail";s:75:"https://library.elementor.com/wp-content/uploads/2016/12/cake-shop-menu.jpg";s:12:"tmpl_created";s:10:"1481549196";s:6:"author";s:9:"Elementor";s:3:"url";s:113:"https://library.elementor.com/services-cake-shop-menu/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:76;a:8:{s:2:"id";s:3:"187";s:5:"title";s:20:"Services &#8211; Fun";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0001.png";s:12:"tmpl_created";s:10:"1470829892";s:6:"author";s:9:"Elementor";s:3:"url";s:102:"https://library.elementor.com/services-fun/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:77;a:8:{s:2:"id";s:3:"238";s:5:"title";s:27:"Services &#8211; Consulting";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0014.png";s:12:"tmpl_created";s:10:"1470829865";s:6:"author";s:9:"Elementor";s:3:"url";s:109:"https://library.elementor.com/services-consulting/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:78;a:8:{s:2:"id";s:3:"647";s:5:"title";s:33:"Services &#8211; Coffee Shop Menu";s:9:"thumbnail";s:76:"https://library.elementor.com/wp-content/uploads/2016/12/restaurant-menu.jpg";s:12:"tmpl_created";s:10:"1481549320";s:6:"author";s:9:"Elementor";s:3:"url";s:115:"https://library.elementor.com/services-coffee-shop-menu/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:79;a:8:{s:2:"id";s:4:"2138";s:5:"title";s:33:"Services &#8211; Delivery Company";s:9:"thumbnail";s:78:"https://library.elementor.com/wp-content/uploads/2017/07/delivery-services.png";s:12:"tmpl_created";s:10:"1499774119";s:6:"author";s:9:"Elementor";s:3:"url";s:115:"https://library.elementor.com/services-delivery-company/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:80;a:8:{s:2:"id";s:3:"823";s:5:"title";s:19:"Pricing &#8211; App";s:9:"thumbnail";s:72:"https://library.elementor.com/wp-content/uploads/2017/01/pricing-app.jpg";s:12:"tmpl_created";s:10:"1485272966";s:6:"author";s:9:"Elementor";s:3:"url";s:103:"https://library.elementor.com/pricing-app-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:81;a:8:{s:2:"id";s:3:"824";s:5:"title";s:24:"Pricing &#8211; Software";s:9:"thumbnail";s:77:"https://library.elementor.com/wp-content/uploads/2017/01/pricing-software.png";s:12:"tmpl_created";s:10:"1485272900";s:6:"author";s:9:"Elementor";s:3:"url";s:108:"https://library.elementor.com/pricing-software-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:82;a:8:{s:2:"id";s:3:"825";s:5:"title";s:24:"Product &#8211; Speakers";s:9:"thumbnail";s:73:"https://library.elementor.com/wp-content/uploads/2017/01/product-page.jpg";s:12:"tmpl_created";s:10:"1485272513";s:6:"author";s:9:"Elementor";s:3:"url";s:106:"https://library.elementor.com/product-speakers/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:83;a:8:{s:2:"id";s:3:"245";s:5:"title";s:21:"Product &#8211; Clean";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0020.png";s:12:"tmpl_created";s:10:"1470829876";s:6:"author";s:9:"Elementor";s:3:"url";s:103:"https://library.elementor.com/product-clean/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:84;a:8:{s:2:"id";s:3:"150";s:5:"title";s:19:"Product &#8211; App";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0003.png";s:12:"tmpl_created";s:10:"1470829879";s:6:"author";s:9:"Elementor";s:3:"url";s:101:"https://library.elementor.com/product-app/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:85;a:8:{s:2:"id";s:3:"751";s:5:"title";s:25:"Homepage &#8211; Interior";s:9:"thumbnail";s:74:"https://library.elementor.com/wp-content/uploads/2017/01/interior-home.png";s:12:"tmpl_created";s:10:"1485269743";s:6:"author";s:9:"Elementor";s:3:"url";s:107:"https://library.elementor.com/homepage-interior/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:86;a:8:{s:2:"id";s:3:"753";s:5:"title";s:22:"About &#8211; Interior";s:9:"thumbnail";s:75:"https://library.elementor.com/wp-content/uploads/2017/01/Interior-About.png";s:12:"tmpl_created";s:10:"1485269710";s:6:"author";s:9:"Elementor";s:3:"url";s:104:"https://library.elementor.com/about-interior/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:87;a:8:{s:2:"id";s:3:"754";s:5:"title";s:25:"Services &#8211; Interior";s:9:"thumbnail";s:78:"https://library.elementor.com/wp-content/uploads/2017/01/Interior-Services.png";s:12:"tmpl_created";s:10:"1485269691";s:6:"author";s:9:"Elementor";s:3:"url";s:107:"https://library.elementor.com/services-interior/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:88;a:8:{s:2:"id";s:3:"752";s:5:"title";s:24:"Contact &#8211; Interior";s:9:"thumbnail";s:77:"https://library.elementor.com/wp-content/uploads/2017/01/interior-contact.png";s:12:"tmpl_created";s:10:"1485269737";s:6:"author";s:9:"Elementor";s:3:"url";s:106:"https://library.elementor.com/contact-interior/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:89;a:8:{s:2:"id";s:4:"1075";s:5:"title";s:19:"Shop &#8211; Sweets";s:9:"thumbnail";s:67:"https://library.elementor.com/wp-content/uploads/2017/03/Sweets.png";s:12:"tmpl_created";s:10:"1488810871";s:6:"author";s:9:"Elementor";s:3:"url";s:101:"https://library.elementor.com/shop-sweets/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:90;a:8:{s:2:"id";s:4:"1051";s:5:"title";s:24:"Blog Post &#8211; Launch";s:9:"thumbnail";s:71:"https://library.elementor.com/wp-content/uploads/2017/03/post-cloud.png";s:12:"tmpl_created";s:10:"1488810869";s:6:"author";s:9:"Elementor";s:3:"url";s:106:"https://library.elementor.com/blog-post-launch/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:91;a:8:{s:2:"id";s:4:"1245";s:5:"title";s:13:"Coming Soon 1";s:9:"thumbnail";s:74:"https://library.elementor.com/wp-content/uploads/2017/03/Coming-Soon-1.png";s:12:"tmpl_created";s:10:"1491207184";s:6:"author";s:9:"Elementor";s:3:"url";s:103:"https://library.elementor.com/coming-soon-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:92;a:8:{s:2:"id";s:4:"1247";s:5:"title";s:13:"Coming Soon 2";s:9:"thumbnail";s:74:"https://library.elementor.com/wp-content/uploads/2017/03/Coming-Soon-2.png";s:12:"tmpl_created";s:10:"1491207138";s:6:"author";s:9:"Elementor";s:3:"url";s:103:"https://library.elementor.com/coming-soon-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:93;a:8:{s:2:"id";s:4:"1248";s:5:"title";s:13:"Coming Soon 3";s:9:"thumbnail";s:74:"https://library.elementor.com/wp-content/uploads/2017/03/Coming-Soon-3.png";s:12:"tmpl_created";s:10:"1491207050";s:6:"author";s:9:"Elementor";s:3:"url";s:103:"https://library.elementor.com/coming-soon-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:94;a:8:{s:2:"id";s:4:"1249";s:5:"title";s:13:"Coming Soon 4";s:9:"thumbnail";s:74:"https://library.elementor.com/wp-content/uploads/2017/03/Coming-Soon-4.png";s:12:"tmpl_created";s:10:"1491207380";s:6:"author";s:9:"Elementor";s:3:"url";s:103:"https://library.elementor.com/coming-soon-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:95;a:8:{s:2:"id";s:4:"1250";s:5:"title";s:13:"Coming Soon 5";s:9:"thumbnail";s:74:"https://library.elementor.com/wp-content/uploads/2017/03/Coming-Soon-5.png";s:12:"tmpl_created";s:10:"1491207450";s:6:"author";s:9:"Elementor";s:3:"url";s:103:"https://library.elementor.com/coming-soon-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:96;a:8:{s:2:"id";s:4:"1260";s:5:"title";s:13:"Coming Soon 6";s:9:"thumbnail";s:74:"https://library.elementor.com/wp-content/uploads/2017/03/Coming-Soon-6.png";s:12:"tmpl_created";s:10:"1491207507";s:6:"author";s:9:"Elementor";s:3:"url";s:103:"https://library.elementor.com/coming-soon-6/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:97;a:8:{s:2:"id";s:4:"1261";s:5:"title";s:13:"Coming Soon 7";s:9:"thumbnail";s:74:"https://library.elementor.com/wp-content/uploads/2017/04/Coming-Soon-7.png";s:12:"tmpl_created";s:10:"1491207584";s:6:"author";s:9:"Elementor";s:3:"url";s:103:"https://library.elementor.com/coming-soon-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:98;a:8:{s:2:"id";s:4:"1272";s:5:"title";s:13:"Coming Soon 8";s:9:"thumbnail";s:74:"https://library.elementor.com/wp-content/uploads/2017/03/Coming-Soon-8.png";s:12:"tmpl_created";s:10:"1491207674";s:6:"author";s:9:"Elementor";s:3:"url";s:103:"https://library.elementor.com/coming-soon-8/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:99;a:8:{s:2:"id";s:4:"1279";s:5:"title";s:13:"Coming Soon 9";s:9:"thumbnail";s:74:"https://library.elementor.com/wp-content/uploads/2017/03/Coming-Soon-9.png";s:12:"tmpl_created";s:10:"1491207756";s:6:"author";s:9:"Elementor";s:3:"url";s:103:"https://library.elementor.com/coming-soon-9/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}i:100;a:8:{s:2:"id";s:4:"1745";s:5:"title";s:14:"Coming Soon 10";s:9:"thumbnail";s:70:"https://library.elementor.com/wp-content/uploads/2017/05/login-002.png";s:12:"tmpl_created";s:10:"1494849745";s:6:"author";s:9:"Elementor";s:3:"url";s:104:"https://library.elementor.com/coming-soon-10/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:101;a:8:{s:2:"id";s:4:"1742";s:5:"title";s:12:"Login Page 1";s:9:"thumbnail";s:70:"https://library.elementor.com/wp-content/uploads/2017/05/login-003.png";s:12:"tmpl_created";s:10:"1494849744";s:6:"author";s:9:"Elementor";s:3:"url";s:100:"https://library.elementor.com/login-page/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:102;a:8:{s:2:"id";s:4:"1748";s:5:"title";s:12:"Login Page 2";s:9:"thumbnail";s:70:"https://library.elementor.com/wp-content/uploads/2017/05/login-001.png";s:12:"tmpl_created";s:10:"1494849742";s:6:"author";s:9:"Elementor";s:3:"url";s:102:"https://library.elementor.com/login-page-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"1";s:17:"has_page_settings";s:1:"0";}i:103;a:8:{s:2:"id";s:3:"420";s:5:"title";s:11:"Hero UI Kit";s:9:"thumbnail";s:81:"https://library.elementor.com/wp-content/uploads/2016/09/library-ui-kit-cover.png";s:12:"tmpl_created";s:10:"1475067229";s:6:"author";s:9:"Elementor";s:3:"url";s:101:"https://library.elementor.com/hero-ui-kit/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview";s:6:"is_pro";s:1:"0";s:17:"has_page_settings";s:1:"0";}}', 'no'),
(228, 'current_theme', 'Broker-child', 'yes'),
(229, 'theme_mods_broker', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1504594757;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(230, 'theme_switched', '', 'yes'),
(238, 'theme_mods_broker-child', 'a:5:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:11:"custom_logo";i:40;s:16:"header_textcolor";s:5:"blank";s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}}', 'yes'),
(3246, 'responsive_lightbox_version', '1.7.2', 'no'),
(3247, 'widget_responsive_lightbox_gallery_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(3248, 'widget_responsive_lightbox_image_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(3249, 'responsive_lightbox_activation_date', '1512837809', 'yes'),
(3440, 'article_category_children', 'a:0:{}', 'yes'),
(3632, '_transient_all_the_cool_cats', '2', 'yes'),
(1457, '_transient_loco_po_4be23b738f70e997dfa28de463c9eae9', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"themes/broker/languages/xx_XX.pot";s:5:"bytes";i:751;s:5:"mtime";i:1507567976;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:0;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(246, 'acf_version', '5.6.2', 'yes'),
(3086, 'category_children', 'a:0:{}', 'yes'),
(357, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(406, 'elementor_scheme_color', 'a:4:{i:1;s:7:"#6ec1e4";i:2;s:7:"#54595f";i:3;s:7:"#7a7a7a";i:4;s:7:"#61ce70";}', 'yes'),
(1453, '_transient_loco_po_dc36d9be640f5cdaf7667677680062d3', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:32:"themes/broker/languages/pt_BR.po";s:5:"bytes";i:11560;s:5:"mtime";i:1507567976;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:70;s:1:"p";i:70;s:1:"f";i:0;}}}', 'yes'),
(1454, '_transient_loco_po_b2b573329df5871a351691b5c44ec55d', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:32:"themes/broker/languages/ru_RU.po";s:5:"bytes";i:12842;s:5:"mtime";i:1507567976;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:70;s:1:"p";i:70;s:1:"f";i:0;}}}', 'yes'),
(1455, '_transient_loco_po_09eb525a44fd9613e5f53d9b3bc0613a', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:32:"themes/broker/languages/sk_SK.po";s:5:"bytes";i:14971;s:5:"mtime";i:1507567976;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:67;s:1:"p";i:67;s:1:"f";i:0;}}}', 'yes'),
(1456, '_transient_loco_po_b43ca5d86bf25396d76873c88003e2e4', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:32:"themes/broker/languages/fr-FR.po";s:5:"bytes";i:11665;s:5:"mtime";i:1507567976;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:76;s:1:"p";i:76;s:1:"f";i:0;}}}', 'yes'),
(827, '_options__cube_title_1', 'field_59ca37dc7789b', 'no'),
(828, 'options__cube_desc_1', 'למידע נוסף>>', 'no'),
(829, '_options__cube_desc_1', 'field_59ca3fbab348c', 'no'),
(830, 'options__cube_link_1', 'http://lincoln-re.co.il/#homepage/slide2', 'no'),
(831, '_options__cube_link_1', 'field_59ca3fcdb348d', 'no'),
(832, 'options__cube_title_2', 'לקנות ולמכור נכסים עם ברוקר', 'no'),
(833, '_options__cube_title_2', 'field_59ca37dc39b5b', 'no'),
(834, 'options__cube_desc_2', 'למידע נוסף>>', 'no'),
(835, '_options__cube_desc_2', 'field_59ca38ef267c4', 'no'),
(836, 'options__cube_link_2', 'http://lincoln-re.co.il/#homepage/slide2', 'no'),
(837, '_options__cube_link_2', 'field_59ca3f8fb348b', 'no'),
(838, 'options__cube_title_3', 'הצטרפו לברוקר', 'no'),
(839, '_options__cube_title_3', 'field_59ca38106efff', 'no'),
(840, 'options__cube_desc_3', 'למידע נוסף>>', 'no'),
(841, '_options__cube_desc_3', 'field_59ca39108921a', 'no'),
(842, 'options__cube_link_3', 'http://lincoln-re.co.il/#homepage/slide2', 'no'),
(843, '_options__cube_link_3', 'field_59ca39688921d', 'no'),
(844, 'options_', '', 'no'),
(845, '_options_', 'field_59ca354c071f9', 'no'),
(846, 'options__about_front', 'אודותנו', 'no'),
(847, '_options__about_front', 'field_59ca43ce28638', 'no'),
(848, 'options__about_text', 'ברוקר נדל"ן, הינה קבוצת שיווק הנדל"ן הגדולה והאיכותית ביותר בישראל,\r\nהחברים בה כולם עומדים בסטנדרט ברוקר,\r\nברוקר נולדה לאחר 3 שנות מחקר אינטנסיביים בהם מייסדי הקבוצה חקרו מאות מתווכים ומאות לקוחות בשביל להגיע למה שנקרא "ברוקר". יועצי הנדל"ן בברוקר – כולם עם תו איכות ברוקר.\r\nכל יועץ נדל"ן בברוקר מעל שנה בתחום הנדל"ן, ברשותו משרד פיזי, בעל עוסק מורשה, רישיון תיווך במקרקעין פעיל, רישום פלילי נקי, כל ברוקר מבצע מעל 10 עסקאות בשנה, כל ברוקר מחויב לעבוד במשרה מלאה בתחום בלי לשלב עוד 20 עבודות מהצד, וכל ברוקר חתום על אמנת שירות בברוקר, שמחייבת אותו בשקיפות ומקסימום הגינות מול הלקוחות. \r\nבקבוצת ברוקר יש מספר ענפים עם פעילות ענפה ורחבה:\r\nברוקר שיווק נדל"ן יד 2 – מעל 100 נקודות שירות איכותיות בישראל .\r\n– ברוקר New projects – שיווק פרויקטים חדשים בהיקפים קטנים וגדולים\r\nבשיתוף פעולה של עשרות משרדים מכל הארץ.\r\n– ברוקר urban – ענף שכל כולו התחדשות עירונית.\r\n– ברוקר Academy – האקדמיה של ברוקר שתרכז את המידע ותעביר אותו\r\nהלאה לסטודנטים הרבים שיפקדו את המכללות שלנו שפזורות ברחבי הארץ.\r\n– ברוקר Investment – מחלקה שתטפל במשקיעים הרבים שלנו, הן בתחום המסחרי,\r\nוהן בתחום הפרטי.', 'no'),
(407, 'elementor_scheme_typography', 'a:4:{i:1;a:2:{s:11:"font_family";s:6:"Roboto";s:11:"font_weight";s:3:"600";}i:2;a:2:{s:11:"font_family";s:11:"Roboto Slab";s:11:"font_weight";s:3:"400";}i:3;a:2:{s:11:"font_family";s:6:"Roboto";s:11:"font_weight";s:3:"400";}i:4;a:2:{s:11:"font_family";s:6:"Roboto";s:11:"font_weight";s:3:"500";}}', 'yes'),
(408, 'elementor_scheme_color-picker', 'a:8:{i:1;s:7:"#6ec1e4";i:2;s:7:"#54595f";i:3;s:7:"#7a7a7a";i:4;s:7:"#61ce70";i:5;s:7:"#4054b2";i:6;s:7:"#23a455";i:7;s:4:"#000";i:8;s:4:"#fff";}', 'yes'),
(456, 'widget_metaslider_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(582, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3MjoiYjNKa1pYSmZhV1E5TVRFek9EUXlmSFI1Y0dVOWNHVnljMjl1WVd4OFpHRjBaVDB5TURFM0xUQTVMVEExSURBM09qVTFPalUyIjtzOjM6InVybCI7czozMjoiaHR0cDovL2RhdmRldi5jby5pbC9icm9rZXItc3RhZ2UiO30=', 'yes'),
(898, 'options_upper_front_cube_title_1', 'מה זה ברוקר?', 'no'),
(899, '_options_upper_front_cube_title_1', 'field_59ca37dc7789b', 'no'),
(900, 'options_upper_front_cube_desc_1', 'למידע נוסף>>', 'no'),
(901, '_options_upper_front_cube_desc_1', 'field_59ca3fbab348c', 'no'),
(826, 'options__cube_title_1', 'מה זה ברוקר?', 'no'),
(849, '_options__about_text', 'field_59ca441728639', 'no'),
(850, 'options__about_text_button', 'קרא עוד', 'no'),
(851, '_options__about_text_button', 'field_59ca4e0e2e221', 'no'),
(852, 'options__about_link_button', 'http://lincoln-re.co.il/#homepage/slide2', 'no'),
(853, '_options__about_link_button', 'field_59ca4e432e222', 'no'),
(854, 'options_front_prop_slider', 'a:9:{i:0;s:3:"110";i:1;s:2:"94";i:2;s:2:"70";i:3;s:3:"111";i:4;s:3:"112";i:5;s:3:"108";i:6;s:3:"107";i:7;s:3:"109";i:8;s:3:"363";}', 'no'),
(855, '_options_front_prop_slider', 'field_59cb4155e5f3b', 'no'),
(856, 'options_about_about_front', 'אודותנו', 'no'),
(857, '_options_about_about_front', 'field_59ca43ce28638', 'no'),
(858, 'options_about_about_text', 'ברוקר נדל"ן, הינה קבוצת שיווק הנדל"ן הגדולה והאיכותית ביותר בישראל,\r\nהחברים בה כולם עומדים בסטנדרט ברוקר,\r\nברוקר נולדה לאחר 3 שנות מחקר אינטנסיביים בהם מייסדי הקבוצה חקרו מאות מתווכים ומאות לקוחות בשביל להגיע למה שנקרא "ברוקר". יועצי הנדל"ן בברוקר – כולם עם תו איכות ברוקר.\r\nכל יועץ נדל"ן בברוקר מעל שנה בתחום הנדל"ן, ברשותו משרד פיזי, בעל עוסק מורשה, רישיון תיווך במקרקעין פעיל, רישום פלילי נקי, כל ברוקר מבצע מעל 10 עסקאות בשנה, כל ברוקר מחויב לעבוד במשרה מלאה בתחום בלי לשלב עוד 20 עבודות מהצד, וכל ברוקר חתום על אמנת שירות בברוקר, שמחייבת אותו בשקיפות ומקסימום הגינות מול הלקוחות. \r\nבקבוצת ברוקר יש מספר ענפים עם פעילות ענפה ורחבה:\r\nברוקר שיווק נדל"ן יד 2 – מעל 100 נקודות שירות איכותיות בישראל .\r\n– ברוקר New projects – שיווק פרויקטים חדשים בהיקפים קטנים וגדולים\r\nבשיתוף פעולה של עשרות משרדים מכל הארץ.\r\n– ברוקר urban – ענף שכל כולו התחדשות עירונית.\r\n– ברוקר Academy – האקדמיה של ברוקר שתרכז את המידע ותעביר אותו\r\nהלאה לסטודנטים הרבים שיפקדו את המכללות שלנו שפזורות ברחבי הארץ.\r\n– ברוקר Investment – מחלקה שתטפל במשקיעים הרבים שלנו, הן בתחום המסחרי,\r\nוהן בתחום הפרטי.', 'no'),
(859, '_options_about_about_text', 'field_59ca441728639', 'no'),
(860, 'options_about_about_text_button', 'קרא עוד', 'no'),
(861, '_options_about_about_text_button', 'field_59ca4e0e2e221', 'no'),
(862, 'options_about_about_link_button', 'http://lincoln-re.co.il/#homepage/slide2', 'no'),
(863, '_options_about_about_link_button', 'field_59ca4e432e222', 'no'),
(864, 'options_about', '', 'no'),
(865, '_options_about', 'field_59ca43bd28637', 'no'),
(902, 'options_upper_front_cube_link_1', 'http://davdev.co.il/broker-stage/wp-admin/admin.php?page=theme-general-settings', 'no'),
(903, '_options_upper_front_cube_link_1', 'field_59ca3fcdb348d', 'no'),
(904, 'options_upper_front_cube_title_2', 'לקנות ולמכור נכסים עם ברוקר', 'no'),
(905, '_options_upper_front_cube_title_2', 'field_59ca37dc39b5b', 'no'),
(906, 'options_upper_front_cube_desc_2', 'למידע נוסף>>', 'no'),
(907, '_options_upper_front_cube_desc_2', 'field_59ca38ef267c4', 'no'),
(908, 'options_upper_front_cube_link_2', 'http://davdev.co.il/broker-stage/wp-admin/admin.php?page=theme-general-settings', 'no'),
(909, '_options_upper_front_cube_link_2', 'field_59ca3f8fb348b', 'no'),
(910, 'options_upper_front_cube_title_3', 'הצטרפו לברוקר', 'no'),
(911, '_options_upper_front_cube_title_3', 'field_59ca38106efff', 'no'),
(912, 'options_upper_front_cube_desc_3', 'למידע נוסף>>', 'no'),
(913, '_options_upper_front_cube_desc_3', 'field_59ca39108921a', 'no'),
(914, 'options_upper_front_cube_link_3', 'http://davdev.co.il/broker-stage/wp-admin/admin.php?page=theme-general-settings', 'no'),
(915, '_options_upper_front_cube_link_3', 'field_59ca39688921d', 'no'),
(916, 'options_upper_front', '', 'no'),
(917, '_options_upper_front', 'field_59ca354c071f9', 'no'),
(1020, 'options_tool_box_tool_box_title', 'ארגז הכלים של ברוקר לעסקה מנצחת', 'no'),
(1021, '_options_tool_box_tool_box_title', 'field_59d0a0b13cf02', 'no'),
(1022, 'options_tool_box_tool_box_img_1', '175', 'no'),
(1023, '_options_tool_box_tool_box_img_1', 'field_59d09ac466a61', 'no'),
(1024, 'options_tool_box_tool_box_1_line_1', 'מוכר נכס', 'no'),
(1025, '_options_tool_box_tool_box_1_line_1', 'field_59d09d9266a62', 'no'),
(1026, 'options_tool_box_tool_box_1_line_2', 'למכור במקסימום', 'no'),
(1027, '_options_tool_box_tool_box_1_line_2', 'field_59d09df866a63', 'no'),
(1028, 'options_tool_box_tool_box_1_link', 'https://www.facebook.com/', 'no'),
(1029, '_options_tool_box_tool_box_1_link', 'field_59d09e1166a64', 'no'),
(1030, 'options_tool_box_tool_box_img_2', '76', 'no'),
(1031, '_options_tool_box_tool_box_img_2', 'field_59d09e8066a66', 'no'),
(1032, 'options_tool_box_tool_box_2_line_1', 'בדוק כמה הנכס', 'no'),
(1033, '_options_tool_box_tool_box_2_line_1', 'field_59d09ea366a67', 'no'),
(1034, 'options_tool_box_tool_box_2_line_2', 'שלך שווה', 'no'),
(1035, '_options_tool_box_tool_box_2_line_2', 'field_59d09eb966a68', 'no'),
(1036, 'options_tool_box_tool_box_2_link', 'https://www.facebook.com/', 'no'),
(1037, '_options_tool_box_tool_box_2_link', 'field_59d09eca66a69', 'no'),
(1038, 'options_tool_box_tool_box_img_3', '75', 'no'),
(1039, '_options_tool_box_tool_box_img_3', 'field_59d09f2cc7350', 'no'),
(1040, 'options_tool_box_tool_box_3_line_1', 'מחשבוני', 'no'),
(1041, '_options_tool_box_tool_box_3_line_1', 'field_59d09f42c7351', 'no'),
(1042, 'options_tool_box_tool_box_3_line_2', 'משכנתא', 'no'),
(1043, '_options_tool_box_tool_box_3_line_2', 'field_59d09f51c7352', 'no'),
(1044, 'options_tool_box_tool_box_3_link', 'https://www.facebook.com/', 'no'),
(1045, '_options_tool_box_tool_box_3_link', 'field_59d09f6cc7353', 'no'),
(1046, 'options_tool_box_tool_box_img_4', '74', 'no'),
(1047, '_options_tool_box_tool_box_img_4', 'field_59d09fb6c7355', 'no'),
(1048, 'options_tool_box_tool_box_4_line_1', 'מחשבון הון עצמי', 'no'),
(1049, '_options_tool_box_tool_box_4_line_1', 'field_59d09ff0c7356', 'no'),
(1050, 'options_tool_box_tool_box_4_line_2', 'מה אתה יכול לקנות', 'no'),
(1051, '_options_tool_box_tool_box_4_line_2', 'field_59d09ffec7357', 'no'),
(1052, 'options_tool_box_tool_box_4_link', 'https://www.facebook.com/', 'no'),
(1053, '_options_tool_box_tool_box_4_link', 'field_59d0a017c7358', 'no'),
(1054, 'options_tool_box_tool_box_img_5', '78', 'no'),
(1055, '_options_tool_box_tool_box_img_5', 'field_59d0a03bc735a', 'no'),
(1056, 'options_tool_box_tool_box_5_line_1', 'מחשוב רכישה', 'no'),
(1057, '_options_tool_box_tool_box_5_line_1', 'field_59d0a04dc735b', 'no'),
(1058, 'options_tool_box_tool_box_5_line_2', 'חישוב העלויות מסביב', 'no'),
(1059, '_options_tool_box_tool_box_5_line_2', 'field_59d0a060c735c', 'no'),
(1060, 'options_tool_box_tool_box_5_link', 'https://www.facebook.com/', 'no'),
(1061, '_options_tool_box_tool_box_5_link', 'field_59d0a06dc735d', 'no'),
(1062, 'options_tool_box', '', 'no'),
(1063, '_options_tool_box', 'field_59d096c366a5f', 'no'),
(1071, 'options_slider_prop', 'נכסים חמים', 'no'),
(1067, 'options_tool_box_titlex', 'ארגז הכלים של ברוקר לעסקה מנצחת', 'no'),
(1068, '_options_tool_box_titlex', 'field_59d0a0b13cf02', 'no'),
(1072, '_options_slider_prop', 'field_59d0ac0e77896', 'no'),
(1074, 'options_testimonials_title', 'לקוחות מספרים', 'no'),
(1075, '_options_testimonials_title', 'field_59d0acf0d33d6', 'no'),
(1076, 'options_testimonials_customers_0_text', 'לורם איפסום דולור סיט אמט, קונסקטורר אדיפיסינג אלית לורם איפסום דולור סיט אמט, קונסקטורר אדיפיסינג אלית. סת אלמנקום ניסי נון ניבאה. דס איאקוליס וולופטה דיאם. וסטיבולום אט דולור, קראס אגת לקטוס וואל אאוגו וסטיבולום סוליסי טידום בעליק. סחטיר בלובק. תצטנפל בלינדו למרקל אס לכימפו, דול, צוט ומעיוט - לפתיעם ברשג - ולתיעם גדדיש. קוויז דומור ליאמום בלינך רוגצה. לפמעט מוסן מנת. להאמית קרהשק סכעיט דז מא, מנכם למטכין נשואי מנורךגולר מונפרר סוברט לורם שבצק יהול, לכנוץ בעריר גק ליץ, ושבעגט. קונדימנטום קורוס בליקרה, נונסטי קלובר בריקנה סטום, לפריקך תצטריק לרטי. לורם איפסום דולור סיט אמט, לורם איפסום דולור סיט אמט, קונסקטורר אדיפיסינג אלית. סת אלמנקום ניסי נון ניבאה. דס איאקוליס וולופטה דיאם. וסטיבולום אט דולור, קראס אגת לקטוס וואל אאוגו וסטיבולום סוליסי טידום בעליק. קונדימנטום קורוס בליקרה, נונסטי קלובר בריקנה סטום, לפריקך תצטריק לרטי.', 'no'),
(1077, '_options_testimonials_customers_0_text', 'field_59d0b26ed33d8', 'no'),
(1078, 'options_testimonials_customers_0_name', 'אייל וגלית כהן', 'no'),
(1079, '_options_testimonials_customers_0_name', 'field_59d0b365d33d9', 'no'),
(1080, 'options_testimonials_customers_0_city', 'ירושלים', 'no'),
(1081, '_options_testimonials_customers_0_city', 'field_59d0b38bd33da', 'no'),
(1082, 'options_testimonials_customers_1_text', 'לורם איפסום דולור סיט אמט, קונסקטורר אדיפיסינג אלית לורם איפסום דולור סיט אמט, קונסקטורר אדיפיסינג אלית. סת אלמנקום ניסי נון ניבאה. דס איאקוליס וולופטה דיאם. וסטיבולום אט דולור, קראס אגת לקטוס וואל אאוגו וסטיבולום סוליסי טידום בעליק. סחטיר בלובק. תצטנפל בלינדו למרקל אס לכימפו, דול, צוט ומעיוט - לפתיעם ברשג - ולתיעם גדדיש. קוויז דומור ליאמום בלינך רוגצה. לפמעט מוסן מנת. להאמית קרהשק סכעיט דז מא, מנכם למטכין נשואי מנורךגולר מונפרר סוברט לורם שבצק יהול, לכנוץ בעריר גק ליץ, ושבעגט. קונדימנטום קורוס בליקרה, נונסטי קלובר בריקנה סטום, לפריקך תצטריק לרטי. לורם איפסום דולור סיט אמט, לורם איפסום דולור סיט אמט, קונסקטורר אדיפיסינג אלית. סת אלמנקום ניסי נון ניבאה. דס איאקוליס וולופטה דיאם. וסטיבולום אט דולור, קראס אגת לקטוס וואל אאוגו וסטיבולום סוליסי טידום בעליק. קונדימנטום קורוס בליקרה, נונסטי קלובר בריקנה סטום, לפריקך תצטריק לרטי.', 'no'),
(1083, '_options_testimonials_customers_1_text', 'field_59d0b26ed33d8', 'no'),
(1084, 'options_testimonials_customers_1_name', 'אלי ואביה מרום', 'no'),
(1085, '_options_testimonials_customers_1_name', 'field_59d0b365d33d9', 'no'),
(1086, 'options_testimonials_customers_1_city', 'רמת השרון', 'no'),
(1087, '_options_testimonials_customers_1_city', 'field_59d0b38bd33da', 'no'),
(1088, 'options_testimonials_customers_2_text', 'לורם איפסום דולור סיט אמט, קונסקטורר אדיפיסינג אלית לורם איפסום דולור סיט אמט, קונסקטורר אדיפיסינג אלית. סת אלמנקום ניסי נון ניבאה. דס איאקוליס וולופטה דיאם. וסטיבולום אט דולור, קראס אגת לקטוס וואל אאוגו וסטיבולום סוליסי טידום בעליק. סחטיר בלובק. תצטנפל בלינדו למרקל אס לכימפו, דול, צוט ומעיוט - לפתיעם ברשג - ולתיעם גדדיש. קוויז דומור ליאמום בלינך רוגצה. לפמעט מוסן מנת. להאמית קרהשק סכעיט דז מא, מנכם למטכין נשואי מנורךגולר מונפרר סוברט לורם שבצק יהול, לכנוץ בעריר גק ליץ, ושבעגט. קונדימנטום קורוס בליקרה, נונסטי קלובר בריקנה סטום, לפריקך תצטריק לרטי. לורם איפסום דולור סיט אמט, לורם איפסום דולור סיט אמט, קונסקטורר אדיפיסינג אלית. סת אלמנקום ניסי נון ניבאה. דס איאקוליס וולופטה דיאם. וסטיבולום אט דולור, קראס אגת לקטוס וואל אאוגו וסטיבולום סוליסי טידום בעליק. קונדימנטום קורוס בליקרה, נונסטי קלובר בריקנה סטום, לפריקך תצטריק לרטי.', 'no'),
(1089, '_options_testimonials_customers_2_text', 'field_59d0b26ed33d8', 'no'),
(1090, 'options_testimonials_customers_2_name', 'חיים ולאה לוי', 'no'),
(1091, '_options_testimonials_customers_2_name', 'field_59d0b365d33d9', 'no'),
(1092, 'options_testimonials_customers_2_city', 'אילת', 'no'),
(1093, '_options_testimonials_customers_2_city', 'field_59d0b38bd33da', 'no'),
(1094, 'options_testimonials_customers', '3', 'no'),
(1095, '_options_testimonials_customers', 'field_59d0ad0ad33d7', 'no'),
(1096, 'options_testimonials', '', 'no'),
(1097, '_options_testimonials', 'field_59d0acc9d33d5', 'no'),
(1099, 'options_social_title', 'הזירות החברתיות שלנו', 'no'),
(1100, '_options_social_title', 'field_59d0c91b1b4fc', 'no'),
(1101, 'options_social_img1', '176', 'no'),
(1102, '_options_social_img1', 'field_59d0c94a1b4fd', 'no'),
(1103, 'options_social_title1', 'ברוקר דיגיטאל ביוטיוב', 'no'),
(1104, '_options_social_title1', 'field_59d0c9701b4fe', 'no'),
(1105, 'options_social_link1', 'https://www.youtube.com/?hl=iw&gl=IL', 'no'),
(1106, '_options_social_link1', 'field_59d0c9841b4ff', 'no'),
(1107, 'options_social', '', 'no'),
(1108, '_options_social', 'field_59d0c7771b4fb', 'no'),
(1110, 'options_social_img2', '85', 'no'),
(1111, '_options_social_img2', 'field_59d0cc7041c65', 'no'),
(1112, 'options_social_title2', 'ברוקר דיגיטל בבלוג', 'no'),
(1113, '_options_social_title2', 'field_59d0cc8941c67', 'no'),
(1114, 'options_social_link2', 'https://www.facebook.com/', 'no'),
(1115, '_options_social_link2', 'field_59d0cca7147f9', 'no'),
(1116, 'options_social_img3', '87', 'no'),
(1117, '_options_social_img3', 'field_59d0cc7841c66', 'no'),
(1118, 'options_social_title3', 'ברוקר דיגיטל בפייסבוק', 'no'),
(1119, '_options_social_title3', 'field_59d0cc9341c68', 'no'),
(1120, 'options_social_link3', 'https://www.facebook.com/', 'no'),
(1121, '_options_social_link3', 'field_59d0ccb0147fa', 'no'),
(1449, '_transient_loco_po_8936f862a874a62d6a53e0979c106134', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:32:"themes/broker/languages/it_IT.po";s:5:"bytes";i:11543;s:5:"mtime";i:1507567976;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:70;s:1:"p";i:70;s:1:"f";i:0;}}}', 'yes'),
(1354, 'loco_settings', 'a:3:{s:1:"c";s:18:"Loco_data_Settings";s:1:"v";i:0;s:1:"d";a:10:{s:7:"version";s:6:"2.0.16";s:8:"gen_hash";b:0;s:9:"use_fuzzy";b:1;s:11:"num_backups";i:1;s:9:"pot_alias";a:3:{i:0;s:10:"default.po";i:1;s:8:"en_US.po";i:2;s:5:"en.po";}s:9:"php_alias";a:2:{i:0;s:3:"php";i:1;s:4:"twig";}s:10:"fs_persist";b:0;s:12:"max_php_size";s:4:"100K";s:11:"po_utf8_bom";b:0;s:8:"po_width";s:2:"79";}}', 'yes'),
(1451, '_transient_loco_po_adca0b60bb23758d46f898c5a56fcaff', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:32:"themes/broker/languages/nl_NL.po";s:5:"bytes";i:22077;s:5:"mtime";i:1507567976;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:67;s:1:"p";i:67;s:1:"f";i:0;}}}', 'yes'),
(1418, '_transient_loco_po_c08bb1dfa3c7945e1faf7a8469459f88', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:51:"plugins/theme-my-login/languages/theme-my-login.pot";s:5:"bytes";i:42210;s:5:"mtime";i:1507789275;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:305;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(1350, '_transient_new_user_approve_user_statuses_count', 'a:3:{s:7:"pending";s:1:"0";s:8:"approved";s:1:"2";s:6:"denied";s:1:"0";}', 'yes'),
(1378, 'Admin_custome_login_Slidshow', 's:1015:"a:12:{s:16:"Slidshow_image_1";s:90:"http://localhost:3000/broker/wp-content/plugins/admin-custom-login//images/rpg-default.jpg";s:16:"Slidshow_image_2";s:90:"http://localhost:3000/broker/wp-content/plugins/admin-custom-login//images/rpg-default.jpg";s:16:"Slidshow_image_3";s:90:"http://localhost:3000/broker/wp-content/plugins/admin-custom-login//images/rpg-default.jpg";s:16:"Slidshow_image_4";s:90:"http://localhost:3000/broker/wp-content/plugins/admin-custom-login//images/rpg-default.jpg";s:16:"Slidshow_image_5";s:90:"http://localhost:3000/broker/wp-content/plugins/admin-custom-login//images/rpg-default.jpg";s:16:"Slidshow_image_6";s:90:"http://localhost:3000/broker/wp-content/plugins/admin-custom-login//images/rpg-default.jpg";s:22:"Slidshow_image_label_1";s:9:"undefined";s:22:"Slidshow_image_label_2";s:9:"undefined";s:22:"Slidshow_image_label_3";s:9:"undefined";s:22:"Slidshow_image_label_4";s:9:"undefined";s:22:"Slidshow_image_label_5";s:9:"undefined";s:22:"Slidshow_image_label_6";s:9:"undefined";}";', 'yes'),
(1615, '_site_transient_user_meta_is_wp_footer_enabled', '1', 'no'),
(1616, 'user_meta_history', 'a:1:{s:7:"version";a:2:{s:12:"last_version";s:5:"1.2.1";s:5:"1.2.1";a:1:{s:9:"timestamp";i:1508132562;}}}', 'yes'),
(1617, 'user_meta_settings', 'a:5:{s:7:"general";a:2:{s:12:"profile_page";s:3:"353";s:16:"profile_in_admin";s:1:"1";}s:5:"login";a:1:{s:10:"login_page";s:3:"459";}s:12:"registration";a:1:{s:22:"user_registration_page";s:3:"461";}s:4:"text";a:44:{s:16:"login_pass_label";s:10:"סיסמא";s:20:"login_remember_label";s:17:"זכור אותי";s:12:"login_button";s:10:"התחבר";s:20:"login_email_required";s:50:"שם משתמש וכתובת מייל נדרשים";s:13:"invalid_login";s:46:"<strong>שגיאה</strong>: לא תקין %s.";s:13:"login_success";s:40:"ההתחברות בוצעה בהצלחה";s:17:"registration_link";s:62:"טרם הצטרפת לברוקר?? <a href="%s">הצטרף</a>";s:17:"lostpassword_link";s:19:"Lost your password?";s:18:"lostpassword_intro";s:102:"Please enter your username or email address. You will receive a link to reset your password via email.";s:18:"lostpassword_label";s:18:"Username or E-mail";s:19:"lostpassword_button";s:16:"Get New Password";s:21:"resetpassword_heading";s:14:"Reset Password";s:19:"resetpassword_intro";s:30:"Enter your new password below.";s:25:"resetpassword_pass1_label";s:12:"New password";s:25:"resetpassword_pass2_label";s:20:"Confirm new password";s:20:"resetpassword_button";s:14:"Reset Password";s:23:"password_reset_mismatch";s:27:"The passwords do not match.";s:16:"password_reseted";s:29:"Your password has been reset.";s:25:"profile_required_loggedin";s:36:"Please login to access your profile.";s:22:"public_non_lggedin_msg";s:36:"Please login to access your profile.";s:15:"profile_updated";s:29:"Profile successfully updated.";s:22:"sent_verification_link";s:107:"We have sent you a verification link to your email. Please complete your registration by clicking the link.";s:24:"sent_link_wait_for_admin";s:126:"We have sent you a verification link to your email. Please verify your email by clicking the link and wait for admin approval.";s:28:"email_verified_pending_admin";s:68:"Your email is successfully verified. Please wait for admin approval.";s:23:"wait_for_admin_approval";s:49:"Please wait until an admin approves your account.";s:14:"email_verified";s:98:"Your email is successfully verified and the account has been activated. <a href="%s">Login now</a>";s:22:"registration_completed";s:36:"Registration successfully completed.";s:16:"validate_default";s:10:"Invalid %s";s:17:"validate_required";s:14:"%s is required";s:14:"validate_email";s:21:"Invalid email address";s:15:"validate_equals";s:17:"%s does not match";s:25:"validate_current_password";s:37:"Please provide valid current password";s:25:"validate_current_required";s:22:"Current %s is required";s:18:"not_member_of_blog";s:32:"User is not member of this site.";s:22:"user_already_activated";s:22:"User already activated";s:16:"account_inactive";s:48:"<strong>ERROR:</strong> your account is inactive";s:15:"account_pending";s:58:"<strong>ERROR:</strong> your account is not yet activated.";s:12:"verify_email";s:33:"Please verify your email address.";s:20:"check_email_for_link";s:44:"Check your e-mail for the confirmation link.";s:15:"email_not_found";s:15:"Email not found";s:17:"incorrect_captcha";s:22:"Incorrect captcha code";s:11:"invalid_key";s:44:"Sorry, that key does not appear to be valid.";s:11:"expired_key";s:46:"Sorry, that key has expired. Please try again.";s:17:"invalid_parameter";s:17:"Invalid parameter";}s:16:"_wp_http_referer";s:50:"/broker/wp-admin/admin.php?page=user-meta-settings";}', 'yes'),
(1623, 'user_meta_forms', 'a:1:{s:8:"register";a:5:{s:8:"form_key";s:8:"register";s:6:"fields";a:15:{i:7;a:5:{s:14:"title_position";s:3:"top";s:13:"default_value";s:6:"author";s:19:"role_selection_type";s:6:"hidden";s:10:"field_type";s:4:"role";s:13:"allowed_roles";a:1:{i:0;s:6:"author";}}i:1;a:6:{s:11:"field_title";s:13:"שם פרטי";s:14:"title_position";s:3:"top";s:8:"required";s:1:"1";s:10:"field_type";s:10:"first_name";s:11:"field_class";s:12:"form-control";s:9:"css_class";s:21:"text-right form-group";}i:2;a:6:{s:11:"field_title";s:15:"שם משפחה";s:14:"title_position";s:3:"top";s:8:"required";s:1:"1";s:10:"field_type";s:9:"last_name";s:11:"field_class";s:12:"form-control";s:9:"css_class";s:21:"text-right form-group";}i:12;a:8:{s:11:"field_title";s:21:"תמונה אישית";s:14:"title_position";s:3:"top";s:10:"image_size";s:3:"500";s:8:"required";s:1:"1";s:19:"hide_default_avatar";s:1:"1";s:12:"resize_image";s:1:"1";s:10:"crop_image";s:1:"1";s:10:"field_type";s:11:"user_avatar";}i:3;a:4:{s:11:"field_title";s:15:"שם משתמש";s:14:"title_position";s:3:"top";s:11:"description";s:73:"יש למלא שם משתמש שישמש אטותך בכניסה לאתר";s:10:"field_type";s:10:"user_login";}i:4;a:10:{s:11:"field_title";s:10:"סיסמה";s:14:"title_position";s:3:"top";s:11:"description";s:69:"יש לבחור סיסמא שתשמש אותך בכניסה לאתר.";s:10:"error_text";s:26:"סיסמא לא תקינה";s:15:"retype_password";s:1:"1";s:17:"password_strength";s:1:"1";s:12:"retype_label";s:37:"הקלידו את הסיסמה שוב";s:10:"field_type";s:9:"user_pass";s:11:"field_class";s:12:"form-control";s:9:"css_class";s:21:"text-right form-group";}i:13;a:5:{s:11:"field_title";s:19:"שם הסוכנות";s:14:"title_position";s:3:"top";s:11:"description";s:40:"נא לרשום את שם הסוכנות";s:8:"meta_key";s:13:"broker_agency";s:10:"field_type";s:4:"text";}i:5;a:3:{s:11:"field_title";s:36:"כתובת דואר אלקטרוני";s:14:"title_position";s:3:"top";s:10:"field_type";s:10:"user_email";}i:6;a:4:{s:11:"field_title";s:32:"כתובת אתר אינטרנט";s:14:"title_position";s:3:"top";s:11:"description";s:80:"יש להזין כצובת אתר אינטרנט אישי במידה וקיים.";s:10:"field_type";s:8:"user_url";}i:8;a:5:{s:11:"field_title";s:30:"מספר טלפון במשרד";s:14:"title_position";s:3:"top";s:11:"description";s:20:"ספרות בלבד.";s:8:"meta_key";s:12:"broker_phone";s:10:"field_type";s:4:"text";}i:9;a:5:{s:11:"field_title";s:28:"מספר טלפון נייד";s:14:"title_position";s:3:"top";s:11:"description";s:20:"ספרות בלבד.";s:8:"meta_key";s:11:"broker_cell";s:10:"field_type";s:4:"text";}i:11;a:7:{s:11:"field_title";s:21:"אזור פעילות";s:14:"title_position";s:3:"top";s:11:"description";s:46:"נא לבחור את אזורי הפעילות";s:8:"meta_key";s:11:"broker_area";s:8:"required";s:1:"1";s:10:"field_type";s:8:"checkbox";s:7:"options";a:3:{i:0;a:2:{s:5:"value";s:8:"צפון";s:5:"label";s:8:"צפון";}i:1;a:2:{s:5:"value";s:8:"מרכז";s:5:"label";s:8:"מרכז";}i:2;a:2:{s:5:"value";s:8:"דרום";s:5:"label";s:8:"דרום";}}}i:16;a:5:{s:11:"field_title";s:34:"קישור לערוץ יוטיוב";s:14:"title_position";s:3:"top";s:11:"description";s:89:"נא להדביק את הקישור לערוץ היוטיוב שלכם ומידה ויש.";s:8:"meta_key";s:9:"broker_yt";s:10:"field_type";s:4:"text";}i:18;a:5:{s:11:"field_title";s:41:"קישור לדף פייסבוק עסקי";s:14:"title_position";s:3:"top";s:11:"description";s:91:"נא להדביק קישור לדף הפייסבוק העסקי שלכם במידה ויש.";s:8:"meta_key";s:9:"broker_fb";s:10:"field_type";s:4:"text";}i:20;a:8:{s:11:"field_title";s:17:"מידע אישי";s:14:"title_position";s:3:"top";s:11:"description";s:77:"ניתן להזין מידע אישי, מידע זה יוצג לגולשים.";s:9:"rich_text";s:1:"1";s:10:"field_type";s:11:"description";s:8:"max_char";s:4:"1000";s:11:"field_class";s:12:"form-control";s:9:"css_class";s:10:"form-group";}}s:12:"button_title";s:0:"";s:12:"button_class";s:0:"";s:10:"form_class";s:0:"";}}', 'yes'),
(1445, '_transient_loco_po_ce130b72f24a9b4f1abb0eb1035d7869', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:32:"themes/broker/languages/cs_CZ.po";s:5:"bytes";i:14952;s:5:"mtime";i:1507567976;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:67;s:1:"p";i:67;s:1:"f";i:0;}}}', 'yes'),
(1446, '_transient_loco_po_6f1fb10a9b8c8bd70c9a3c21a7b76930', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:32:"themes/broker/languages/de_DE.po";s:5:"bytes";i:11590;s:5:"mtime";i:1507567976;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:70;s:1:"p";i:70;s:1:"f";i:0;}}}', 'yes'),
(1447, '_transient_loco_po_b2705ace2cb583d6fb7a889a1e0a549d', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:32:"themes/broker/languages/es_ES.po";s:5:"bytes";i:11673;s:5:"mtime";i:1507567976;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:70;s:1:"p";i:70;s:1:"f";i:0;}}}', 'yes'),
(1448, '_transient_loco_po_0d595ecd15d6fca5cf108c42dda11029', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:32:"themes/broker/languages/fr_CA.po";s:5:"bytes";i:12028;s:5:"mtime";i:1507567976;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:70;s:1:"p";i:70;s:1:"f";i:1;}}}', 'yes'),
(1371, 'Admin_custome_login_Version', 's:30:"a:1:{s:7:"Version";s:3:"1.0";}";', 'yes'),
(1372, 'Admin_custome_login_dashboard', 's:44:"a:1:{s:16:"dashboard_status";s:7:"disable";}";', 'yes'),
(1373, 'Admin_custome_login_top', 's:401:"a:9:{s:11:"top_bg_type";s:23:"static-background-image";s:9:"top_color";s:7:"#f9fad2";s:9:"top_image";s:81:"http://localhost:3000/broker/wp-content/uploads/2017/10/broker-father-and-son.jpg";s:9:"top_cover";s:3:"yes";s:10:"top_repeat";s:6:"repeat";s:12:"top_position";s:8:"left top";s:14:"top_attachment";s:5:"fixed";s:16:"top_slideshow_no";s:1:"6";s:23:"top_bg_slider_animation";s:13:"slider-style1";}";', 'yes'),
(1374, 'Admin_custome_login_login', 's:830:"a:20:{s:19:"login_form_position";s:7:"default";s:16:"login_form_float";s:6:"center";s:15:"login_form_left";s:3:"700";s:14:"login_form_top";s:3:"300";s:16:"login_custom_css";s:0:"";s:19:"login_redirect_user";s:0:"";s:13:"login_bg_type";s:23:"static-background-image";s:14:"login_bg_color";s:7:"#1e73be";s:15:"login_bg_effect";s:9:"pattern-1";s:14:"login_bg_image";s:87:"http://127.0.0.1/broker/wp-content/plugins/admin-custom-login//images/3d-background.jpg";s:18:"login_form_opacity";s:2:"10";s:16:"login_form_width";s:3:"520";s:17:"login_form_radius";s:2:"10";s:18:"login_border_style";s:5:"solid";s:21:"login_border_thikness";s:1:"4";s:18:"login_border_color";s:7:"#0069A0";s:15:"login_bg_repeat";s:6:"repeat";s:17:"login_bg_position";s:8:"left top";s:19:"login_enable_shadow";s:3:"yes";s:18:"login_shadow_color";s:7:"#C8C8C8";}";', 'yes'),
(1375, 'Admin_custome_login_text', 's:627:"a:17:{s:18:"heading_font_color";s:7:"#ffffff";s:16:"input_font_color";s:7:"#000000";s:10:"link_color";s:7:"#ffffff";s:12:"button_color";s:7:"#dd3333";s:17:"heading_font_size";s:2:"14";s:15:"input_font_size";s:2:"18";s:9:"link_size";s:2:"14";s:16:"button_font_size";s:2:"14";s:18:"enable_link_shadow";s:3:"yes";s:17:"link_shadow_color";s:7:"#ffffff";s:18:"heading_font_style";s:9:"Open Sans";s:16:"input_font_style";s:9:"Open Sans";s:15:"link_font_style";s:9:"Open Sans";s:17:"button_font_style";s:9:"Open Sans";s:20:"enable_inputbox_icon";s:3:"yes";s:15:"user_input_icon";s:7:"fa-user";s:19:"password_input_icon";s:6:"fa-key";}";', 'yes'),
(1376, 'Admin_custome_login_logo', 's:273:"a:5:{s:10:"logo_image";s:86:"http://127.0.0.1/broker/wp-content/plugins/admin-custom-login//images/default-logo.png";s:10:"logo_width";s:3:"274";s:11:"logo_height";s:2:"63";s:8:"logo_url";s:23:"http://127.0.0.1/broker";s:14:"logo_url_title";s:23:"Your Site Name and Info";}";', 'yes'),
(1377, 'Admin_custome_login_Social', 's:955:"a:21:{s:18:"enable_social_icon";s:5:"outer";s:16:"social_icon_size";s:6:"mediam";s:18:"social_icon_layout";s:9:"rectangle";s:17:"social_icon_color";s:7:"#ffffff";s:25:"social_icon_color_onhover";s:7:"#1e73be";s:14:"social_icon_bg";s:7:"#1e73be";s:22:"social_icon_bg_onhover";s:7:"#ffffff";s:20:"social_facebook_link";s:19:"http://facebook.com";s:19:"social_twitter_link";s:33:"https://twitter.com/minimalmonkey";s:20:"social_linkedin_link";s:0:"";s:23:"social_google_plus_link";s:22:"http://plus.google.com";s:21:"social_pinterest_link";s:0:"";s:16:"social_digg_link";s:0:"";s:19:"social_youtube_link";s:19:"https://youtube.com";s:18:"social_flickr_link";s:18:"https://flickr.com";s:18:"social_tumblr_link";s:0:"";s:21:"social_vkontakte_link";s:0:"";s:17:"social_skype_link";s:0:"";s:21:"social_instagram_link";s:21:"https://instagram.com";s:20:"social_telegram_link";s:21:"https://telegram.org/";s:20:"social_whatsapp_link";s:21:"https://whatsapp.com/";}";', 'yes'),
(1450, '_transient_loco_po_6c982e2d794fc3d4d6a00819b66c7692', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:32:"themes/broker/languages/nb_NO.po";s:5:"bytes";i:11261;s:5:"mtime";i:1507567976;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:70;s:1:"p";i:70;s:1:"f";i:0;}}}', 'yes'),
(1452, '_transient_loco_po_47ca0bcf6b28601b66a9c6c7d9bb4802', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:32:"themes/broker/languages/pl_PL.po";s:5:"bytes";i:10157;s:5:"mtime";i:1507567976;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:59;s:1:"p";i:59;s:1:"f";i:0;}}}', 'yes'),
(1442, 'loco_recent', 'a:3:{s:1:"c";s:21:"Loco_data_RecentItems";s:1:"v";i:0;s:1:"d";a:1:{s:6:"bundle";a:4:{s:12:"theme.broker";i:1507811482;s:44:"plugin.new-user-approve/new-user-approve.php";i:1507811806;s:40:"plugin.theme-my-login/theme-my-login.php";i:1507968797;s:36:"plugin.pie-register/pie-register.php";i:1511540937;}}}', 'no'),
(1458, '_transient_loco_po_092971cfce236a15255659c7666a35ed', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:31:"themes/broker/languages/_tk.pot";s:5:"bytes";i:8801;s:5:"mtime";i:1507811446;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:84;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(1459, '_transient_loco_po_7c1220a8ccf1ea9413730332f1a7f5b4', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:18:"languages/he_IL.po";s:5:"bytes";i:404324;s:5:"mtime";i:1507970492;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:2383;s:1:"p";i:2383;s:1:"f";i:0;}}}', 'yes'),
(1460, '_transient_loco_po_5ef6dbb49fde1d001109f1513b7407dc', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:24:"languages/admin-he_IL.po";s:5:"bytes";i:516187;s:5:"mtime";i:1507970492;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:2419;s:1:"p";i:2419;s:1:"f";i:0;}}}', 'yes'),
(1461, '_transient_loco_po_b23c4b4b946742108e954191e27746ba', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:32:"languages/admin-network-he_IL.po";s:5:"bytes";i:67718;s:5:"mtime";i:1507970492;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:316;s:1:"p";i:316;s:1:"f";i:0;}}}', 'yes'),
(1462, '_transient_loco_po_8f0e2a872f1dfc69a8cfd125b8ff9109', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"languages/continents-cities-he_IL.po";s:5:"bytes";i:46008;s:5:"mtime";i:1507970492;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:519;s:1:"p";i:519;s:1:"f";i:0;}}}', 'yes'),
(1463, '_transient_loco_po_2e5a702bee3e487469c27fd5d56c402f', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:51:"plugins/loco-translate/languages/loco-translate.pot";s:5:"bytes";i:37492;s:5:"mtime";i:1507702440;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:341;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(1464, '_transient_loco_po_557787a77f31d310c7167b33ae3dbc3f', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:56:"plugins/theme-my-login/languages/theme-my-login-he_IL.po";s:5:"bytes";i:42338;s:5:"mtime";i:1507811718;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:305;s:1:"p";i:8;s:1:"f";i:0;}}}', 'yes'),
(1465, '_transient_loco_po_b03cf6fe2b3380eb1f102e80412ab993', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:63:"plugins/new-user-approve/localization/new-user-approve-be_BY.po";s:5:"bytes";i:9967;s:5:"mtime";i:1507701725;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:59;s:1:"p";i:36;s:1:"f";i:8;}}}', 'yes'),
(1466, '_transient_loco_po_d0e8c7bc3461e543d911f33d5923f311', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:63:"plugins/new-user-approve/localization/new-user-approve-bg_BG.po";s:5:"bytes";i:11782;s:5:"mtime";i:1507701725;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:60;s:1:"p";i:60;s:1:"f";i:0;}}}', 'yes'),
(1467, '_transient_loco_po_2420f5e0aac8812e79490def36d77f98', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:63:"plugins/new-user-approve/localization/new-user-approve-ca_ES.po";s:5:"bytes";i:8614;s:5:"mtime";i:1507701725;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:59;s:1:"p";i:36;s:1:"f";i:8;}}}', 'yes'),
(1468, '_transient_loco_po_a2a3dc8396db7ca1d7d1fd3dcfbff1c3', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:63:"plugins/new-user-approve/localization/new-user-approve-cs_CZ.po";s:5:"bytes";i:8446;s:5:"mtime";i:1507701725;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:59;s:1:"p";i:36;s:1:"f";i:8;}}}', 'yes'),
(1469, '_transient_loco_po_91b7dd7b6efa8de09eef9a30f774771f', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:63:"plugins/new-user-approve/localization/new-user-approve-da_DK.po";s:5:"bytes";i:8222;s:5:"mtime";i:1507701725;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:59;s:1:"p";i:36;s:1:"f";i:8;}}}', 'yes'),
(1470, '_transient_loco_po_2eb1b4631db441fbeef6e74a428a53be', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:63:"plugins/new-user-approve/localization/new-user-approve-de_DE.po";s:5:"bytes";i:9750;s:5:"mtime";i:1507701725;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:59;s:1:"p";i:53;s:1:"f";i:5;}}}', 'yes'),
(1471, '_transient_loco_po_8c14a6159e760bd4dc4b32a891dffb59', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:63:"plugins/new-user-approve/localization/new-user-approve-el_EL.po";s:5:"bytes";i:8740;s:5:"mtime";i:1507701725;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:59;s:1:"p";i:34;s:1:"f";i:8;}}}', 'yes'),
(1472, '_transient_loco_po_8fdb8c9b54b8b584db9749c6a95f864f', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:63:"plugins/new-user-approve/localization/new-user-approve-es_ES.po";s:5:"bytes";i:8533;s:5:"mtime";i:1507701725;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:59;s:1:"p";i:36;s:1:"f";i:8;}}}', 'yes'),
(1473, '_transient_loco_po_eadd70c3ed8b12b9fe07f07976276701', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:60:"plugins/new-user-approve/localization/new-user-approve-et.po";s:5:"bytes";i:8397;s:5:"mtime";i:1507701725;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:59;s:1:"p";i:36;s:1:"f";i:8;}}}', 'yes'),
(1474, '_transient_loco_po_2695501fba37abea43cc8cc6a8b47a6b', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:63:"plugins/new-user-approve/localization/new-user-approve-fa_IR.po";s:5:"bytes";i:9483;s:5:"mtime";i:1507701725;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:57;s:1:"p";i:46;s:1:"f";i:6;}}}', 'yes'),
(1475, '_transient_loco_po_3a469a9d51d6514bbc432845fe104280', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:60:"plugins/new-user-approve/localization/new-user-approve-fi.po";s:5:"bytes";i:8248;s:5:"mtime";i:1507701725;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:59;s:1:"p";i:36;s:1:"f";i:8;}}}', 'yes'),
(1476, '_transient_loco_po_a9822aee78086438b8db9efd5420d87c', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:63:"plugins/new-user-approve/localization/new-user-approve-fr_FR.po";s:5:"bytes";i:9504;s:5:"mtime";i:1507701725;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:59;s:1:"p";i:48;s:1:"f";i:6;}}}', 'yes'),
(1477, '_transient_loco_po_6be2d783d8b7c53fe174681ba8b8f6dd', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:63:"plugins/new-user-approve/localization/new-user-approve-he_IL.po";s:5:"bytes";i:8778;s:5:"mtime";i:1507701725;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:59;s:1:"p";i:36;s:1:"f";i:8;}}}', 'yes'),
(1478, '_transient_loco_po_fb2b9cb6d8bc170d8206b3d86114544f', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:63:"plugins/new-user-approve/localization/new-user-approve-hr_HR.po";s:5:"bytes";i:8718;s:5:"mtime";i:1507701725;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:59;s:1:"p";i:36;s:1:"f";i:8;}}}', 'yes'),
(1479, '_transient_loco_po_07b462bb8dd917c71b3dd6437889f900', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:63:"plugins/new-user-approve/localization/new-user-approve-hu_HU.po";s:5:"bytes";i:8870;s:5:"mtime";i:1507701725;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:59;s:1:"p";i:36;s:1:"f";i:8;}}}', 'yes'),
(1480, '_transient_loco_po_cb8365c069d3f5c9976e2d71b52ac3a0', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:63:"plugins/new-user-approve/localization/new-user-approve-it_IT.po";s:5:"bytes";i:8409;s:5:"mtime";i:1507701725;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:59;s:1:"p";i:36;s:1:"f";i:8;}}}', 'yes'),
(1481, '_transient_loco_po_7eb9c2b32b09b82171d6f6d0b44abeba', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:63:"plugins/new-user-approve/localization/new-user-approve-lt_LT.po";s:5:"bytes";i:8703;s:5:"mtime";i:1507701725;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:59;s:1:"p";i:36;s:1:"f";i:8;}}}', 'yes'),
(1482, '_transient_loco_po_8b970ee4326ff83cca771562a58974d2', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:63:"plugins/new-user-approve/localization/new-user-approve-nl_NL.po";s:5:"bytes";i:8604;s:5:"mtime";i:1507701725;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:59;s:1:"p";i:36;s:1:"f";i:8;}}}', 'yes'),
(1483, '_transient_loco_po_97eef28c293667a74cd54357ffab9911', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:63:"plugins/new-user-approve/localization/new-user-approve-pl_PL.po";s:5:"bytes";i:10152;s:5:"mtime";i:1507701725;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:59;s:1:"p";i:58;s:1:"f";i:0;}}}', 'yes'),
(1484, '_transient_loco_po_a07a8ded692fac87ce489c082541e846', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:63:"plugins/new-user-approve/localization/new-user-approve-pt_BR.po";s:5:"bytes";i:7697;s:5:"mtime";i:1507701725;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:59;s:1:"p";i:34;s:1:"f";i:8;}}}', 'yes'),
(1485, '_transient_loco_po_580d8b252bd864821e615c2878d3a190', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:63:"plugins/new-user-approve/localization/new-user-approve-ro_RO.po";s:5:"bytes";i:8712;s:5:"mtime";i:1507701725;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:59;s:1:"p";i:36;s:1:"f";i:8;}}}', 'yes'),
(1486, '_transient_loco_po_ca6237b45163917f4f98ebd56a591e58', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:63:"plugins/new-user-approve/localization/new-user-approve-ru_RU.po";s:5:"bytes";i:9437;s:5:"mtime";i:1507701725;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:59;s:1:"p";i:37;s:1:"f";i:8;}}}', 'yes'),
(1487, '_transient_loco_po_84692d2cd36c2c4b0b02a9bac4937ace', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:63:"plugins/new-user-approve/localization/new-user-approve-sk_SK.po";s:5:"bytes";i:9014;s:5:"mtime";i:1507701725;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:59;s:1:"p";i:36;s:1:"f";i:8;}}}', 'yes'),
(1488, '_transient_loco_po_b6978094a78a06b3872b619df1436083', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:63:"plugins/new-user-approve/localization/new-user-approve-sr_RS.po";s:5:"bytes";i:8550;s:5:"mtime";i:1507701725;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:59;s:1:"p";i:36;s:1:"f";i:8;}}}', 'yes'),
(1489, '_transient_loco_po_5297e1fb4c17b71e89f324ec13af1fef', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:63:"plugins/new-user-approve/localization/new-user-approve-sv_SE.po";s:5:"bytes";i:5413;s:5:"mtime";i:1507701725;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:42;s:1:"p";i:36;s:1:"f";i:0;}}}', 'yes'),
(1490, '_transient_loco_po_4a0026eb60ab52566ac7faea5bd9bd43', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:58:"plugins/new-user-approve/localization/new-user-approve.pot";s:5:"bytes";i:6821;s:5:"mtime";i:1507701725;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:60;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(1624, 'user_meta_config', 'a:1:{s:12:"max_field_id";i:20;}', 'yes'),
(1626, 'user_meta_cache', 'a:1:{s:10:"file_cache";a:0:{}}', 'yes'),
(2250, 'ssba_buttons', '{"buffer":{"full_name":"Buffer"},"diggit":{"full_name":"Diggit"},"email":{"full_name":"Email"},"facebook":{"full_name":"Facebook"},"facebook_save":{"full_name":"Facebook Save"},"flattr":{"full_name":"Flattr"},"google":{"full_name":"Google+"},"linkedin":{"full_name":"LinkedIn"},"pinterest":{"full_name":"Pinterest"},"print":{"full_name":"Print"},"reddit":{"full_name":"Reddit"},"stumbleupon":{"full_name":"StumbleUpon"},"tumblr":{"full_name":"Tumblr"},"twitter":{"full_name":"Twitter"},"vk":{"full_name":"VK"},"whatsapp":{"full_name":"WhatsApp"},"xing":{"full_name":"Xing"},"yummly":{"full_name":"Yummly"}}', 'yes'),
(2269, 'shareaholic_has_accepted_tos', '1', 'yes'),
(2252, 'widget_ssba_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1838, '_transient_sul_user_query-transient-version', '1509099273', 'yes'),
(2239, '_transient_loco_po_c271146616e060b02f87a89459db6e70', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:32:"themes/broker/languages/he_IL.po";s:5:"bytes";i:8783;s:5:"mtime";i:1507811482;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:84;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(2280, 'yuzo_related_post_present_version', '2.0', 'yes'),
(2281, 'yuzo_related_post_date_yuzo', '1509785320', 'yes'),
(2282, 'yuzo_related_post_options', 'a:72:{s:26:"yuzo_related_post_top_text";s:83:"&lt;h3&gt;מאמרים נוספים שיכולים לעניין אותך&lt;/h3&gt;";s:30:"yuzo_related_post_display_post";s:1:"3";s:23:"yuzo_related_post_style";s:1:"1";s:32:"yuzo_related_post_thumbnail_size";s:6:"medium";s:33:"yuzo_related_post_background_size";s:5:"cover";s:30:"yuzo_related_post_height_image";s:3:"240";s:28:"yuzo_related_post_type_image";s:11:"rectangular";s:29:"yuzo_related_post_height_full";s:0:"";s:29:"yuzo_related_post_image_order";s:4:"DESC";s:26:"yuzo_related_post_bg_color";a:2:{s:5:"color";s:0:"";s:5:"hover";s:7:"#fcfcf4";}s:44:"yuzo_related_post_bg_color_hover_transitions";s:3:"0.2";s:41:"yuzo_related_post_thumbnail_border_radius";s:1:"0";s:32:"yuzo_related_post_related_margin";a:4:{s:3:"top";s:1:"0";s:5:"right";s:1:"0";s:6:"bottom";s:1:"0";s:4:"left";s:1:"0";}s:33:"yuzo_related_post_related_padding";a:4:{s:3:"top";s:1:"5";s:5:"right";s:1:"5";s:6:"bottom";s:1:"5";s:4:"left";s:1:"5";}s:28:"yuzo_related_post_box_shadow";s:0:"";s:27:"yuzo_related_post_post_type";a:1:{i:0;s:7:"article";}s:27:"yuzo_related_post_show_home";s:0:"";s:38:"yuzo_related_post_no_show_archive_page";s:0:"";s:31:"yuzo_related_post_default_image";s:91:"//127.0.0.1:3000:3000:3000:3000:3000:3000/broker/wp-content/uploads/2017/09/broker_logo.jpg";s:28:"yuzo_related_post_related_to";s:1:"3";s:26:"yuzo_related_post_order_by";s:4:"rand";s:23:"yuzo_related_post_order";s:4:"DESC";s:37:"yuzo_related_post_order_by_taxonomias";s:0:"";s:27:"yuzo_related_post_show_feed";s:0:"";s:29:"yuzo_related_post_target_link";s:0:"";s:30:"yuzo_related_post_rel_nofollow";s:0:"";s:38:"yuzo_related_post_automatically_append";s:0:"";s:32:"yuzo_related_post_show_only_home";s:0:"";s:32:"yuzo_related_post_show_only_type";s:0:"";s:35:"yuzo_related_post_display_post_home";s:1:"3";s:28:"yuzo_related_post_categories";a:1:{i:0;s:2:"-1";}s:34:"yuzo_related_post_exclude_category";a:1:{i:0;s:2:"-1";}s:42:"yuzo_related_post_exclude_category_related";s:1:"1";s:29:"yuzo_related_post_exclude_tag";s:0:"";s:28:"yuzo_related_post_exclude_id";s:0:"";s:27:"yuzo_related_post_no_appear";s:0:"";s:30:"yuzo_related_post_only_in_post";s:0:"";s:32:"yuzo_related_post_display_random";s:1:"1";s:31:"yuzo_related_post_yuzo_conflict";s:0:"";s:34:"yuzo_related_post_disabled_counter";s:0:"";s:40:"yuzo_related_post_show_columns_dashboard";s:1:"1";s:38:"yuzo_related_post_show_in_related_post";s:0:"";s:28:"yuzo_related_post_meta_views";s:10:"yuzo-views";s:35:"yuzo_related_post_meta_views_custom";s:0:"";s:47:"yuzo_related_post_show_in_related_post_position";s:17:"show-views-bottom";s:43:"yuzo_related_post_show_in_related_post_text";s:5:"views";s:30:"yuzo_related_post_format_count";s:0:"";s:25:"yuzo_related_post_cut_hit";s:0:"";s:31:"yuzo_related_post_active_widget";s:1:"1";s:34:"yuzo_related_post_disabled_metabox";s:0:"";s:37:"yuzo_related_post_yuzo_transient_html";s:0:"";s:27:"yuzo_related_post_transient";s:0:"";s:34:"yuzo_related_post_delete_transient";s:0:"";s:29:"yuzo_related_post_delete_meta";s:0:"";s:45:"yuzo_related_post_yuzo_html_shortcode_related";s:0:"";s:37:"yuzo_related_post_yuzo_html_shortcode";s:0:"";s:37:"yuzo_related_post_yuzo_get_views_html";s:0:"";s:32:"yuzo_related_post_effect_related";s:7:"enlarge";s:27:"yuzo_related_post_font_size";s:2:"13";s:29:"yuzo_related_post_text_length";s:2:"50";s:28:"yuzo_related_post_title_bold";s:0:"";s:29:"yuzo_related_post_title_color";a:2:{s:5:"color";s:0:"";s:5:"hover";s:0:"";}s:28:"yuzo_related_post_text_color";a:2:{s:5:"color";s:0:"";s:5:"hover";s:0:"";}s:30:"yuzo_related_post_text2_length";s:1:"0";s:27:"yuzo_related_post_text_show";s:1:"1";s:30:"yuzo_related_post_title_center";s:0:"";s:23:"yuzo_related_post_theme";s:7:"default";s:31:"yuzo_related_post_css_and_style";s:56:".yuzo_related_post{}\r\n.yuzo_related_post .relatedthumb{}";s:38:"yuzo_related_post_yuzo_html_custom_css";s:0:"";s:46:"yuzo_related_post_yuzo_css_theme_magazine-alfa";s:0:"";s:11:"last_update";i:1509817485;s:14:"active_license";N;}', 'yes'),
(2283, 'yuzo_related_post_db_version', '1.4', 'yes'),
(2284, 'widget_yuzo_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(2285, 'yuzo_related_post_popup_message', '0.155', 'yes'),
(2264, 'shareaholic_activate_timestamp', '1509784332', 'no'),
(2581, 'piereg_api_manager_product_id', 'Pie-Register-pro', 'yes'),
(2582, 'piereg_api_manager_instance', '3QKjurQi1L1N', 'yes'),
(2583, 'api_manager_example_deactivate_checkbox', 'on', 'yes'),
(2584, 'piereg_api_manager_activated', 'Deactivated', 'yes'),
(2585, 'pie-register', '1.0', 'yes'),
(2586, 'Profile_page_id', '474', 'yes'),
(2587, 'pie_pages', 'a:4:{i:0;i:471;i:1;i:472;i:2;i:473;i:3;i:474;}', 'yes'),
(2588, 'pie_countries', 'a:204:{i:0;s:11:"Afghanistan";i:1;s:7:"Albania";i:2;s:7:"Algeria";i:3;s:14:"American Samoa";i:4;s:7:"Andorra";i:5;s:6:"Angola";i:6;s:19:"Antigua and Barbuda";i:7;s:9:"Argentina";i:8;s:7:"Armenia";i:9;s:9:"Australia";i:10;s:7:"Austria";i:11;s:10:"Azerbaijan";i:12;s:7:"Bahamas";i:13;s:7:"Bahrain";i:14;s:10:"Bangladesh";i:15;s:8:"Barbados";i:16;s:7:"Belarus";i:17;s:7:"Belgium";i:18;s:6:"Belize";i:19;s:5:"Benin";i:20;s:7:"Bermuda";i:21;s:6:"Bhutan";i:22;s:7:"Bolivia";i:23;s:22:"Bosnia and Herzegovina";i:24;s:8:"Botswana";i:25;s:6:"Brazil";i:26;s:6:"Brunei";i:27;s:8:"Bulgaria";i:28;s:12:"Burkina Faso";i:29;s:7:"Burundi";i:30;s:8:"Cambodia";i:31;s:8:"Cameroon";i:32;s:6:"Canada";i:33;s:10:"Cape Verde";i:34;s:24:"Central African Republic";i:35;s:4:"Chad";i:36;s:5:"Chile";i:37;s:5:"China";i:38;s:8:"Colombia";i:39;s:7:"Comoros";i:40;s:5:"Congo";i:41;s:10:"Costa Rica";i:42;s:14:"Côte d''Ivoire";i:43;s:7:"Croatia";i:44;s:4:"Cuba";i:45;s:6:"Cyprus";i:46;s:14:"Czech Republic";i:47;s:7:"Denmark";i:48;s:8:"Djibouti";i:49;s:8:"Dominica";i:50;s:18:"Dominican Republic";i:51;s:10:"East Timor";i:52;s:7:"Ecuador";i:53;s:5:"Egypt";i:54;s:11:"El Salvador";i:55;s:17:"Equatorial Guinea";i:56;s:7:"Eritrea";i:57;s:7:"Estonia";i:58;s:8:"Ethiopia";i:59;s:4:"Fiji";i:60;s:7:"Finland";i:61;s:6:"France";i:62;s:5:"Gabon";i:63;s:6:"Gambia";i:64;s:7:"Georgia";i:65;s:7:"Germany";i:66;s:5:"Ghana";i:67;s:6:"Greece";i:68;s:9:"Greenland";i:69;s:7:"Grenada";i:70;s:4:"Guam";i:71;s:9:"Guatemala";i:72;s:6:"Guinea";i:73;s:13:"Guinea-Bissau";i:74;s:6:"Guyana";i:75;s:5:"Haiti";i:76;s:8:"Honduras";i:77;s:9:"Hong Kong";i:78;s:7:"Hungary";i:79;s:7:"Iceland";i:80;s:5:"India";i:81;s:9:"Indonesia";i:82;s:4:"Iran";i:83;s:4:"Iraq";i:84;s:7:"Ireland";i:85;s:6:"Israel";i:86;s:5:"Italy";i:87;s:7:"Jamaica";i:88;s:5:"Japan";i:89;s:6:"Jordan";i:90;s:10:"Kazakhstan";i:91;s:5:"Kenya";i:92;s:8:"Kiribati";i:93;s:11:"North Korea";i:94;s:11:"South Korea";i:95;s:6:"Kuwait";i:96;s:10:"Kyrgyzstan";i:97;s:4:"Laos";i:98;s:6:"Latvia";i:99;s:7:"Lebanon";i:100;s:7:"Lesotho";i:101;s:7:"Liberia";i:102;s:5:"Libya";i:103;s:13:"Liechtenstein";i:104;s:9:"Lithuania";i:105;s:10:"Luxembourg";i:106;s:9:"Macedonia";i:107;s:10:"Madagascar";i:108;s:6:"Malawi";i:109;s:8:"Malaysia";i:110;s:8:"Maldives";i:111;s:4:"Mali";i:112;s:5:"Malta";i:113;s:16:"Marshall Islands";i:114;s:10:"Mauritania";i:115;s:9:"Mauritius";i:116;s:6:"Mexico";i:117;s:10:"Micronesia";i:118;s:7:"Moldova";i:119;s:6:"Monaco";i:120;s:8:"Mongolia";i:121;s:10:"Montenegro";i:122;s:7:"Morocco";i:123;s:10:"Mozambique";i:124;s:7:"Myanmar";i:125;s:7:"Namibia";i:126;s:5:"Nauru";i:127;s:5:"Nepal";i:128;s:11:"Netherlands";i:129;s:11:"New Zealand";i:130;s:9:"Nicaragua";i:131;s:5:"Niger";i:132;s:7:"Nigeria";i:133;s:6:"Norway";i:134;s:24:"Northern Mariana Islands";i:135;s:4:"Oman";i:136;s:8:"Pakistan";i:137;s:5:"Palau";i:138;s:9:"Palestine";i:139;s:6:"Panama";i:140;s:16:"Papua New Guinea";i:141;s:8:"Paraguay";i:142;s:4:"Peru";i:143;s:11:"Philippines";i:144;s:6:"Poland";i:145;s:8:"Portugal";i:146;s:11:"Puerto Rico";i:147;s:5:"Qatar";i:148;s:7:"Romania";i:149;s:6:"Russia";i:150;s:6:"Rwanda";i:151;s:21:"Saint Kitts and Nevis";i:152;s:11:"Saint Lucia";i:153;s:32:"Saint Vincent and the Grenadines";i:154;s:5:"Samoa";i:155;s:10:"San Marino";i:156;s:21:"Sao Tome and Principe";i:157;s:12:"Saudi Arabia";i:158;s:7:"Senegal";i:159;s:21:"Serbia and Montenegro";i:160;s:10:"Seychelles";i:161;s:12:"Sierra Leone";i:162;s:9:"Singapore";i:163;s:8:"Slovakia";i:164;s:8:"Slovenia";i:165;s:15:"Solomon Islands";i:166;s:7:"Somalia";i:167;s:12:"South Africa";i:168;s:5:"Spain";i:169;s:9:"Sri Lanka";i:170;s:5:"Sudan";i:171;s:12:"Sudan, South";i:172;s:8:"Suriname";i:173;s:9:"Swaziland";i:174;s:6:"Sweden";i:175;s:11:"Switzerland";i:176;s:5:"Syria";i:177;s:6:"Taiwan";i:178;s:10:"Tajikistan";i:179;s:8:"Tanzania";i:180;s:8:"Thailand";i:181;s:4:"Togo";i:182;s:5:"Tonga";i:183;s:19:"Trinidad and Tobago";i:184;s:7:"Tunisia";i:185;s:6:"Turkey";i:186;s:12:"Turkmenistan";i:187;s:6:"Tuvalu";i:188;s:6:"Uganda";i:189;s:7:"Ukraine";i:190;s:20:"United Arab Emirates";i:191;s:14:"United Kingdom";i:192;s:13:"United States";i:193;s:7:"Uruguay";i:194;s:10:"Uzbekistan";i:195;s:7:"Vanuatu";i:196;s:12:"Vatican City";i:197;s:9:"Venezuela";i:198;s:7:"Vietnam";i:199;s:23:"Virgin Islands, British";i:200;s:20:"Virgin Islands, U.S.";i:201;s:5:"Yemen";i:202;s:6:"Zambia";i:203;s:8:"Zimbabwe";}', 'yes'),
(2764, 'ai1wm_secret_key', 'WpF07K9PCP3O', 'yes'),
(2791, 'wordfence_version', '6.3.21', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2765, 'ai1wm_status', 'a:3:{s:4:"type";s:8:"download";s:7:"message";s:202:"<a href="http://127.0.0.1/broker/wp-content/ai1wm-backups/127.0.0.1-broker-20171126-042211-630.wpress" class="ai1wm-button-green ai1wm-emphasize"><span>Download 127.0.0.1</span><em>Size: 172 MB</em></a>";s:5:"title";N;}', 'yes'),
(2768, 'ai1wm_updater', 'a:0:{}', 'yes'),
(2792, 'wordfenceActivated', '1', 'yes'),
(2793, 'wf_plugin_act_error', '', 'yes'),
(3369, 'whatthefile-install-date', '2017-12-11', 'no'),
(3376, 'cptui_new_install', 'false', 'yes'),
(3377, 'cptui_post_types', 'a:1:{s:8:"articles";a:28:{s:4:"name";s:8:"articles";s:5:"label";s:8:"articles";s:14:"singular_label";s:7:"article";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:4:"true";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:3:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:23:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:10:"view_items";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";}s:15:"custom_supports";s:0:"";}}', 'yes'),
(3380, 'cptui_taxonomies', 'a:2:{s:4:"tags";a:21:{s:4:"name";s:4:"tags";s:5:"label";s:11:"article tag";s:14:"singular_label";s:12:"article tags";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:12:"hierarchical";s:5:"false";s:7:"show_ui";s:4:"true";s:12:"show_in_menu";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:1:"1";s:20:"rewrite_hierarchical";s:1:"0";s:17:"show_admin_column";s:5:"false";s:12:"show_in_rest";s:5:"false";s:18:"show_in_quick_edit";s:0:"";s:9:"rest_base";s:0:"";s:6:"labels";a:18:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:9:"edit_item";s:0:"";s:9:"view_item";s:0:"";s:11:"update_item";s:0:"";s:12:"add_new_item";s:0:"";s:13:"new_item_name";s:0:"";s:11:"parent_item";s:0:"";s:17:"parent_item_colon";s:0:"";s:12:"search_items";s:0:"";s:13:"popular_items";s:0:"";s:26:"separate_items_with_commas";s:0:"";s:19:"add_or_remove_items";s:0:"";s:21:"choose_from_most_used";s:0:"";s:9:"not_found";s:0:"";s:8:"no_terms";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";}s:12:"object_types";a:1:{i:0;s:8:"articles";}}s:16:"article_category";a:21:{s:4:"name";s:16:"article_category";s:5:"label";s:18:"article categories";s:14:"singular_label";s:16:"article category";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:12:"hierarchical";s:4:"true";s:7:"show_ui";s:4:"true";s:12:"show_in_menu";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:1:"1";s:20:"rewrite_hierarchical";s:1:"0";s:17:"show_admin_column";s:5:"false";s:12:"show_in_rest";s:5:"false";s:18:"show_in_quick_edit";s:0:"";s:9:"rest_base";s:0:"";s:6:"labels";a:18:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:9:"edit_item";s:0:"";s:9:"view_item";s:0:"";s:11:"update_item";s:0:"";s:12:"add_new_item";s:0:"";s:13:"new_item_name";s:0:"";s:11:"parent_item";s:0:"";s:17:"parent_item_colon";s:0:"";s:12:"search_items";s:0:"";s:13:"popular_items";s:0:"";s:26:"separate_items_with_commas";s:0:"";s:19:"add_or_remove_items";s:0:"";s:21:"choose_from_most_used";s:0:"";s:9:"not_found";s:0:"";s:8:"no_terms";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";}s:12:"object_types";a:1:{i:0;s:8:"articles";}}}', 'yes'),
(2841, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1513586143;s:7:"checked";a:2:{s:12:"broker-child";s:0:"";s:6:"broker";s:6:"1.1.10";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(3291, '_site_transient_timeout_browser_cb0f25941c7ee58acd15fece4d84c18b', '1513543407', 'no'),
(3292, '_site_transient_browser_cb0f25941c7ee58acd15fece4d84c18b', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:12:"62.0.3202.94";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(3631, '_transient_is_multi_author', '0', 'yes'),
(3654, '_site_transient_timeout_theme_roots', '1513587937', 'no'),
(3655, '_site_transient_theme_roots', 'a:2:{s:12:"broker-child";s:7:"/themes";s:6:"broker";s:7:"/themes";}', 'no'),
(3656, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1513586141;s:8:"response";a:5:{s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":11:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"4.9.2";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.4.9.2.zip";s:5:"icons";a:3:{s:2:"1x";s:66:"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007";s:2:"2x";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";s:7:"default";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";}s:7:"banners";a:3:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";s:7:"default";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.1";s:13:"compatibility";O:8:"stdClass":0:{}}s:67:"cwis-antivirus-malware-detected/cwis-antivirus-malware-detected.php";O:8:"stdClass":11:{s:2:"id";s:45:"w.org/plugins/cwis-antivirus-malware-detected";s:4:"slug";s:31:"cwis-antivirus-malware-detected";s:6:"plugin";s:67:"cwis-antivirus-malware-detected/cwis-antivirus-malware-detected.php";s:11:"new_version";s:5:"3.3.9";s:3:"url";s:62:"https://wordpress.org/plugins/cwis-antivirus-malware-detected/";s:7:"package";s:74:"https://downloads.wordpress.org/plugin/cwis-antivirus-malware-detected.zip";s:5:"icons";a:3:{s:2:"1x";s:84:"https://ps.w.org/cwis-antivirus-malware-detected/assets/icon-128x128.png?rev=1474989";s:2:"2x";s:84:"https://ps.w.org/cwis-antivirus-malware-detected/assets/icon-256x256.jpg?rev=1474514";s:7:"default";s:84:"https://ps.w.org/cwis-antivirus-malware-detected/assets/icon-256x256.jpg?rev=1474514";}s:7:"banners";a:3:{s:2:"2x";s:87:"https://ps.w.org/cwis-antivirus-malware-detected/assets/banner-1544x500.png?rev=1482564";s:2:"1x";s:86:"https://ps.w.org/cwis-antivirus-malware-detected/assets/banner-772x250.png?rev=1489868";s:7:"default";s:87:"https://ps.w.org/cwis-antivirus-malware-detected/assets/banner-1544x500.png?rev=1482564";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.1";s:13:"compatibility";O:8:"stdClass":0:{}}s:26:"ultimate-lightbox/Main.php";O:8:"stdClass":11:{s:2:"id";s:31:"w.org/plugins/ultimate-lightbox";s:4:"slug";s:17:"ultimate-lightbox";s:6:"plugin";s:26:"ultimate-lightbox/Main.php";s:11:"new_version";s:4:"0.20";s:3:"url";s:48:"https://wordpress.org/plugins/ultimate-lightbox/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/ultimate-lightbox.zip";s:5:"icons";a:2:{s:2:"1x";s:70:"https://ps.w.org/ultimate-lightbox/assets/icon-128x128.png?rev=1484165";s:7:"default";s:70:"https://ps.w.org/ultimate-lightbox/assets/icon-128x128.png?rev=1484165";}s:7:"banners";a:2:{s:2:"1x";s:72:"https://ps.w.org/ultimate-lightbox/assets/banner-772x250.png?rev=1486562";s:7:"default";s:72:"https://ps.w.org/ultimate-lightbox/assets/banner-772x250.png?rev=1486562";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.1";s:13:"compatibility";O:8:"stdClass":0:{}}s:27:"yourchannel/YourChannel.php";O:8:"stdClass":11:{s:2:"id";s:25:"w.org/plugins/yourchannel";s:4:"slug";s:11:"yourchannel";s:6:"plugin";s:27:"yourchannel/YourChannel.php";s:11:"new_version";s:5:"0.9.4";s:3:"url";s:42:"https://wordpress.org/plugins/yourchannel/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/yourchannel.0.9.4.zip";s:5:"icons";a:3:{s:2:"1x";s:64:"https://ps.w.org/yourchannel/assets/icon-128x128.png?rev=1106592";s:2:"2x";s:64:"https://ps.w.org/yourchannel/assets/icon-256x256.png?rev=1106592";s:7:"default";s:64:"https://ps.w.org/yourchannel/assets/icon-256x256.png?rev=1106592";}s:7:"banners";a:2:{s:2:"1x";s:66:"https://ps.w.org/yourchannel/assets/banner-772x250.png?rev=1788345";s:7:"default";s:66:"https://ps.w.org/yourchannel/assets/banner-772x250.png?rev=1788345";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.1";s:13:"compatibility";O:8:"stdClass":0:{}}s:34:"advanced-custom-fields-pro/acf.php";O:8:"stdClass":8:{s:4:"slug";s:26:"advanced-custom-fields-pro";s:6:"plugin";s:34:"advanced-custom-fields-pro/acf.php";s:11:"new_version";s:5:"5.6.7";s:3:"url";s:37:"https://www.advancedcustomfields.com/";s:6:"tested";s:5:"4.9.0";s:7:"package";s:0:"";s:5:"icons";a:1:{s:7:"default";s:63:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png";}s:7:"banners";a:1:{s:7:"default";s:66:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg";}}}s:12:"translations";a:0:{}s:9:"no_update";a:15:{s:25:"add-to-any/add-to-any.php";O:8:"stdClass":9:{s:2:"id";s:24:"w.org/plugins/add-to-any";s:4:"slug";s:10:"add-to-any";s:6:"plugin";s:25:"add-to-any/add-to-any.php";s:11:"new_version";s:6:"1.7.22";s:3:"url";s:41:"https://wordpress.org/plugins/add-to-any/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/add-to-any.1.7.22.zip";s:5:"icons";a:4:{s:2:"1x";s:62:"https://ps.w.org/add-to-any/assets/icon-128x128.png?rev=972738";s:2:"2x";s:62:"https://ps.w.org/add-to-any/assets/icon-256x256.png?rev=972738";s:3:"svg";s:54:"https://ps.w.org/add-to-any/assets/icon.svg?rev=972738";s:7:"default";s:54:"https://ps.w.org/add-to-any/assets/icon.svg?rev=972738";}s:7:"banners";a:3:{s:2:"2x";s:66:"https://ps.w.org/add-to-any/assets/banner-1544x500.png?rev=1629680";s:2:"1x";s:65:"https://ps.w.org/add-to-any/assets/banner-772x250.png?rev=1629680";s:7:"default";s:66:"https://ps.w.org/add-to-any/assets/banner-1544x500.png?rev=1629680";}s:11:"banners_rtl";a:0:{}}s:51:"all-in-one-wp-migration/all-in-one-wp-migration.php";O:8:"stdClass":9:{s:2:"id";s:37:"w.org/plugins/all-in-one-wp-migration";s:4:"slug";s:23:"all-in-one-wp-migration";s:6:"plugin";s:51:"all-in-one-wp-migration/all-in-one-wp-migration.php";s:11:"new_version";s:4:"6.61";s:3:"url";s:54:"https://wordpress.org/plugins/all-in-one-wp-migration/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.6.61.zip";s:5:"icons";a:3:{s:2:"1x";s:76:"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=1268186";s:2:"2x";s:76:"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=1268186";s:7:"default";s:76:"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=1268186";}s:7:"banners";a:3:{s:2:"2x";s:79:"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=1691996";s:2:"1x";s:78:"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=1691996";s:7:"default";s:79:"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=1691996";}s:11:"banners_rtl";a:0:{}}s:51:"all-in-one-wp-security-and-firewall/wp-security.php";O:8:"stdClass":9:{s:2:"id";s:49:"w.org/plugins/all-in-one-wp-security-and-firewall";s:4:"slug";s:35:"all-in-one-wp-security-and-firewall";s:6:"plugin";s:51:"all-in-one-wp-security-and-firewall/wp-security.php";s:11:"new_version";s:5:"4.3.1";s:3:"url";s:66:"https://wordpress.org/plugins/all-in-one-wp-security-and-firewall/";s:7:"package";s:78:"https://downloads.wordpress.org/plugin/all-in-one-wp-security-and-firewall.zip";s:5:"icons";a:2:{s:2:"1x";s:88:"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/icon-128x128.png?rev=1232826";s:7:"default";s:88:"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/icon-128x128.png?rev=1232826";}s:7:"banners";a:2:{s:2:"1x";s:90:"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/banner-772x250.png?rev=1232826";s:7:"default";s:90:"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/banner-772x250.png?rev=1232826";}s:11:"banners_rtl";a:0:{}}s:79:"contact-form-7-dynamic-text-extension/contact-form-7-dynamic-text-extension.php";O:8:"stdClass":9:{s:2:"id";s:51:"w.org/plugins/contact-form-7-dynamic-text-extension";s:4:"slug";s:37:"contact-form-7-dynamic-text-extension";s:6:"plugin";s:79:"contact-form-7-dynamic-text-extension/contact-form-7-dynamic-text-extension.php";s:11:"new_version";s:7:"2.0.2.1";s:3:"url";s:68:"https://wordpress.org/plugins/contact-form-7-dynamic-text-extension/";s:7:"package";s:88:"https://downloads.wordpress.org/plugin/contact-form-7-dynamic-text-extension.2.0.2.1.zip";s:5:"icons";a:0:{}s:7:"banners";a:0:{}s:11:"banners_rtl";a:0:{}}s:53:"contact-form-submissions/contact-form-submissions.php";O:8:"stdClass":9:{s:2:"id";s:38:"w.org/plugins/contact-form-submissions";s:4:"slug";s:24:"contact-form-submissions";s:6:"plugin";s:53:"contact-form-submissions/contact-form-submissions.php";s:11:"new_version";s:5:"1.6.2";s:3:"url";s:55:"https://wordpress.org/plugins/contact-form-submissions/";s:7:"package";s:73:"https://downloads.wordpress.org/plugin/contact-form-submissions.1.6.2.zip";s:5:"icons";a:2:{s:2:"1x";s:77:"https://ps.w.org/contact-form-submissions/assets/icon-128x128.jpg?rev=1290767";s:7:"default";s:77:"https://ps.w.org/contact-form-submissions/assets/icon-128x128.jpg?rev=1290767";}s:7:"banners";a:2:{s:2:"1x";s:79:"https://ps.w.org/contact-form-submissions/assets/banner-772x250.png?rev=1290767";s:7:"default";s:79:"https://ps.w.org/contact-form-submissions/assets/banner-772x250.png?rev=1290767";}s:11:"banners_rtl";a:0:{}}s:43:"custom-post-type-ui/custom-post-type-ui.php";O:8:"stdClass":9:{s:2:"id";s:33:"w.org/plugins/custom-post-type-ui";s:4:"slug";s:19:"custom-post-type-ui";s:6:"plugin";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:11:"new_version";s:5:"1.5.6";s:3:"url";s:50:"https://wordpress.org/plugins/custom-post-type-ui/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.5.6.zip";s:5:"icons";a:3:{s:2:"1x";s:72:"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557";s:2:"2x";s:72:"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557";s:7:"default";s:72:"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557";}s:7:"banners";a:3:{s:2:"2x";s:75:"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557";s:2:"1x";s:74:"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557";s:7:"default";s:75:"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557";}s:11:"banners_rtl";a:0:{}}s:53:"custom-taxonomy-template/custom-taxonomy-template.php";O:8:"stdClass":9:{s:2:"id";s:38:"w.org/plugins/custom-taxonomy-template";s:4:"slug";s:24:"custom-taxonomy-template";s:6:"plugin";s:53:"custom-taxonomy-template/custom-taxonomy-template.php";s:11:"new_version";s:3:"0.2";s:3:"url";s:55:"https://wordpress.org/plugins/custom-taxonomy-template/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/custom-taxonomy-template.0.2.zip";s:5:"icons";a:0:{}s:7:"banners";a:2:{s:2:"1x";s:78:"https://ps.w.org/custom-taxonomy-template/assets/banner-772x250.jpg?rev=571214";s:7:"default";s:78:"https://ps.w.org/custom-taxonomy-template/assets/banner-772x250.jpg?rev=571214";}s:11:"banners_rtl";a:0:{}}s:23:"loco-translate/loco.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/loco-translate";s:4:"slug";s:14:"loco-translate";s:6:"plugin";s:23:"loco-translate/loco.php";s:11:"new_version";s:6:"2.0.17";s:3:"url";s:45:"https://wordpress.org/plugins/loco-translate/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/loco-translate.2.0.17.zip";s:5:"icons";a:3:{s:2:"1x";s:67:"https://ps.w.org/loco-translate/assets/icon-128x128.png?rev=1000676";s:2:"2x";s:67:"https://ps.w.org/loco-translate/assets/icon-256x256.png?rev=1000676";s:7:"default";s:67:"https://ps.w.org/loco-translate/assets/icon-256x256.png?rev=1000676";}s:7:"banners";a:2:{s:2:"1x";s:68:"https://ps.w.org/loco-translate/assets/banner-772x250.jpg?rev=745046";s:7:"default";s:68:"https://ps.w.org/loco-translate/assets/banner-772x250.jpg?rev=745046";}s:11:"banners_rtl";a:0:{}}s:27:"php-code-widget/execphp.php";O:8:"stdClass":9:{s:2:"id";s:29:"w.org/plugins/php-code-widget";s:4:"slug";s:15:"php-code-widget";s:6:"plugin";s:27:"php-code-widget/execphp.php";s:11:"new_version";s:3:"2.3";s:3:"url";s:46:"https://wordpress.org/plugins/php-code-widget/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/php-code-widget.2.3.zip";s:5:"icons";a:2:{s:3:"svg";s:59:"https://ps.w.org/php-code-widget/assets/icon.svg?rev=992095";s:7:"default";s:59:"https://ps.w.org/php-code-widget/assets/icon.svg?rev=992095";}s:7:"banners";a:0:{}s:11:"banners_rtl";a:0:{}}s:29:"pie-register/pie-register.php";O:8:"stdClass":9:{s:2:"id";s:26:"w.org/plugins/pie-register";s:4:"slug";s:12:"pie-register";s:6:"plugin";s:29:"pie-register/pie-register.php";s:11:"new_version";s:5:"3.0.7";s:3:"url";s:43:"https://wordpress.org/plugins/pie-register/";s:7:"package";s:55:"https://downloads.wordpress.org/plugin/pie-register.zip";s:5:"icons";a:3:{s:2:"1x";s:64:"https://ps.w.org/pie-register/assets/icon-128x128.png?rev=981626";s:2:"2x";s:64:"https://ps.w.org/pie-register/assets/icon-256x256.png?rev=981626";s:7:"default";s:64:"https://ps.w.org/pie-register/assets/icon-256x256.png?rev=981626";}s:7:"banners";a:2:{s:2:"1x";s:67:"https://ps.w.org/pie-register/assets/banner-772x250.jpg?rev=1113786";s:7:"default";s:67:"https://ps.w.org/pie-register/assets/banner-772x250.jpg?rev=1113786";}s:11:"banners_rtl";a:0:{}}s:20:"printfriendly/pf.php";O:8:"stdClass":9:{s:2:"id";s:27:"w.org/plugins/printfriendly";s:4:"slug";s:13:"printfriendly";s:6:"plugin";s:20:"printfriendly/pf.php";s:11:"new_version";s:6:"3.13.0";s:3:"url";s:44:"https://wordpress.org/plugins/printfriendly/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/printfriendly.3.13.0.zip";s:5:"icons";a:3:{s:2:"1x";s:66:"https://ps.w.org/printfriendly/assets/icon-128x128.png?rev=1190276";s:2:"2x";s:66:"https://ps.w.org/printfriendly/assets/icon-256x256.png?rev=1190276";s:7:"default";s:66:"https://ps.w.org/printfriendly/assets/icon-256x256.png?rev=1190276";}s:7:"banners";a:2:{s:2:"1x";s:68:"https://ps.w.org/printfriendly/assets/banner-772x250.png?rev=1601184";s:7:"default";s:68:"https://ps.w.org/printfriendly/assets/banner-772x250.png?rev=1601184";}s:11:"banners_rtl";a:0:{}}s:39:"yuzo-related-post/yuzo_related_post.php";O:8:"stdClass":9:{s:2:"id";s:31:"w.org/plugins/yuzo-related-post";s:4:"slug";s:17:"yuzo-related-post";s:6:"plugin";s:39:"yuzo-related-post/yuzo_related_post.php";s:11:"new_version";s:7:"5.12.70";s:3:"url";s:48:"https://wordpress.org/plugins/yuzo-related-post/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/yuzo-related-post.zip";s:5:"icons";a:3:{s:2:"1x";s:70:"https://ps.w.org/yuzo-related-post/assets/icon-128x128.png?rev=1264510";s:2:"2x";s:70:"https://ps.w.org/yuzo-related-post/assets/icon-256x256.png?rev=1264512";s:7:"default";s:70:"https://ps.w.org/yuzo-related-post/assets/icon-256x256.png?rev=1264512";}s:7:"banners";a:2:{s:2:"1x";s:72:"https://ps.w.org/yuzo-related-post/assets/banner-772x250.jpg?rev=1263714";s:7:"default";s:72:"https://ps.w.org/yuzo-related-post/assets/banner-772x250.jpg?rev=1263714";}s:11:"banners_rtl";a:0:{}}s:33:"string-locator/string-locator.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/string-locator";s:4:"slug";s:14:"string-locator";s:6:"plugin";s:33:"string-locator/string-locator.php";s:11:"new_version";s:5:"2.3.0";s:3:"url";s:45:"https://wordpress.org/plugins/string-locator/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/string-locator.2.3.0.zip";s:5:"icons";a:3:{s:2:"1x";s:67:"https://ps.w.org/string-locator/assets/icon-128x128.png?rev=1352234";s:2:"2x";s:67:"https://ps.w.org/string-locator/assets/icon-256x256.png?rev=1352230";s:7:"default";s:67:"https://ps.w.org/string-locator/assets/icon-256x256.png?rev=1352230";}s:7:"banners";a:3:{s:2:"2x";s:69:"https://ps.w.org/string-locator/assets/banner-1544x500.png?rev=928605";s:2:"1x";s:68:"https://ps.w.org/string-locator/assets/banner-772x250.png?rev=928605";s:7:"default";s:69:"https://ps.w.org/string-locator/assets/banner-1544x500.png?rev=928605";}s:11:"banners_rtl";a:0:{}}s:31:"what-the-file/what-the-file.php";O:8:"stdClass":9:{s:2:"id";s:27:"w.org/plugins/what-the-file";s:4:"slug";s:13:"what-the-file";s:6:"plugin";s:31:"what-the-file/what-the-file.php";s:11:"new_version";s:5:"1.5.4";s:3:"url";s:44:"https://wordpress.org/plugins/what-the-file/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/what-the-file.1.5.4.zip";s:5:"icons";a:3:{s:2:"1x";s:66:"https://ps.w.org/what-the-file/assets/icon-128x128.png?rev=1223609";s:2:"2x";s:66:"https://ps.w.org/what-the-file/assets/icon-256x256.png?rev=1223609";s:7:"default";s:66:"https://ps.w.org/what-the-file/assets/icon-256x256.png?rev=1223609";}s:7:"banners";a:2:{s:2:"1x";s:67:"https://ps.w.org/what-the-file/assets/banner-772x250.jpg?rev=685200";s:7:"default";s:67:"https://ps.w.org/what-the-file/assets/banner-772x250.jpg?rev=685200";}s:11:"banners_rtl";a:0:{}}s:23:"wordfence/wordfence.php";O:8:"stdClass":9:{s:2:"id";s:23:"w.org/plugins/wordfence";s:4:"slug";s:9:"wordfence";s:6:"plugin";s:23:"wordfence/wordfence.php";s:11:"new_version";s:6:"6.3.22";s:3:"url";s:40:"https://wordpress.org/plugins/wordfence/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/wordfence.6.3.22.zip";s:5:"icons";a:3:{s:2:"1x";s:62:"https://ps.w.org/wordfence/assets/icon-128x128.png?rev=1457724";s:2:"2x";s:62:"https://ps.w.org/wordfence/assets/icon-256x256.png?rev=1457724";s:7:"default";s:62:"https://ps.w.org/wordfence/assets/icon-256x256.png?rev=1457724";}s:7:"banners";a:2:{s:2:"1x";s:64:"https://ps.w.org/wordfence/assets/banner-772x250.png?rev=1630456";s:7:"default";s:64:"https://ps.w.org/wordfence/assets/banner-772x250.png?rev=1630456";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(3327, 'yrc_version', '0.9.3', 'yes'),
(3328, 'yrc_upgrade_nag_dismisses', 'a:2:{i:0;i:0;i:1;i:0;}', 'yes'),
(3330, 'yrc_keys', 'a:1:{i:0;a:3:{s:3:"key";s:14:"yrc_1512944526";s:4:"user";s:19:"בן סולומון";s:3:"tag";s:0:"";}}', 'yes'),
(3331, 'yrc_1512944526', 'a:2:{s:4:"meta";a:9:{s:4:"user";s:19:"בן סולומון";s:7:"channel";s:24:"UCUz44WYP4yoKJwULPc8RmhA";s:3:"key";s:14:"yrc_1512944526";s:6:"apikey";s:39:"AIzaSyDvIwlALP79LXiTjET0Vt9IpEWmGbciUAI";s:5:"cache";s:3:"180";s:15:"channel_uploads";s:24:"UUUz44WYP4yoKJwULPc8RmhA";s:8:"onlyonce";s:0:"";s:3:"tag";s:0:"";s:10:"search_own";s:1:"1";}s:5:"style";a:16:{s:6:"colors";a:3:{s:4:"item";a:1:{s:10:"background";s:7:"inherit";}s:6:"button";a:2:{s:10:"background";s:4:"#333";s:5:"color";s:4:"#fff";}s:5:"color";a:4:{s:4:"text";s:4:"#fff";s:4:"link";s:7:"inherit";s:4:"menu";s:4:"#000";s:4:"meta";s:7:"inherit";}}s:5:"theme";a:2:{s:6:"videos";a:5:{s:5:"style";s:6:"__grid";s:5:"thumb";a:2:{i:0;s:5:"large";i:1;s:4:"open";}s:4:"desc";s:0:"";s:8:"carousel";a:3:{s:6:"thumbs";s:1:"4";s:15:"thumbs_to_slide";s:1:"2";s:7:"spacing";s:1:"8";}s:12:"carousel_nav";a:7:{s:8:"modifier";s:7:"__sides";s:8:"position";s:9:"left-none";s:8:"location";s:7:"prepend";s:10:"background";s:4:"#fff";s:5:"color";s:4:"#000";s:9:"font_size";s:1:"2";s:13:"border_radius";s:1:"0";}}s:1:"a";s:1:"1";}s:3:"ass";a:1:{s:2:"as";s:1:"1";}s:3:"fit";s:5:"false";s:9:"playlists";s:4:"true";s:7:"uploads";s:4:"true";s:11:"player_mode";s:1:"1";s:8:"truncate";s:1:"1";s:6:"banner";s:4:"true";s:12:"thumb_margin";s:1:"8";s:9:"play_icon";s:0:"";s:16:"thumb_image_size";s:6:"medium";s:11:"default_tab";s:7:"uploads";s:6:"player";a:2:{s:9:"show_desc";s:0:"";s:9:"show_meta";s:0:"";}s:4:"menu";s:1:"1";s:12:"rating_style";s:3:"NaN";}}', 'yes'),
(3244, 'responsive_lightbox_settings', 'a:21:{s:6:"script";s:8:"swipebox";s:8:"selector";s:8:"lightbox";s:9:"galleries";b:1;s:18:"gallery_image_size";s:4:"full";s:19:"gallery_image_title";s:7:"default";s:20:"force_custom_gallery";b:0;s:28:"woocommerce_gallery_lightbox";b:0;s:6:"videos";b:1;s:7:"widgets";b:0;s:8:"comments";b:0;s:11:"image_links";b:1;s:11:"image_title";s:7:"default";s:17:"images_as_gallery";b:0;s:19:"deactivation_delete";b:0;s:13:"loading_place";s:6:"header";s:19:"conditional_loading";b:0;s:20:"enable_custom_events";b:0;s:13:"custom_events";s:12:"ajaxComplete";s:14:"update_version";i:2;s:13:"update_notice";b:1;s:17:"update_delay_date";s:0:"";}', 'no'),
(3237, 'slb_version', '2.6.0', 'yes'),
(3238, 'slb_options', 'a:27:{s:7:"enabled";b:1;s:12:"enabled_home";b:1;s:12:"enabled_post";b:1;s:12:"enabled_page";b:1;s:15:"enabled_archive";b:1;s:14:"enabled_widget";b:0;s:12:"enabled_menu";b:0;s:11:"group_links";b:1;s:10:"group_post";b:1;s:13:"group_gallery";b:0;s:12:"group_widget";b:0;s:10:"group_menu";b:0;s:10:"ui_autofit";b:1;s:10:"ui_animate";b:1;s:19:"slideshow_autostart";b:1;s:18:"slideshow_duration";s:1:"6";s:10:"group_loop";b:1;s:18:"ui_overlay_opacity";s:3:"0.8";s:16:"ui_title_default";b:0;s:11:"txt_loading";s:7:"Loading";s:9:"txt_close";s:5:"Close";s:12:"txt_nav_next";s:4:"Next";s:12:"txt_nav_prev";s:8:"Previous";s:19:"txt_slideshow_start";s:15:"Start slideshow";s:18:"txt_slideshow_stop";s:14:"Stop slideshow";s:16:"txt_group_status";s:25:"Item %current% of %total%";s:13:"theme_default";s:11:"slb_default";}', 'yes'),
(3252, 'responsive_lightbox_lite_version', '1.0.0', 'yes'),
(3253, 'responsive_lightbox_lite_settings', 'a:10:{s:6:"script";s:13:"nivo_lightbox";s:8:"selector";s:8:"lightbox";s:9:"galleries";b:1;s:6:"videos";b:1;s:11:"image_links";b:1;s:17:"images_as_gallery";b:0;s:19:"deactivation_delete";b:0;s:13:"loading_place";s:6:"header";s:20:"enable_custom_events";b:0;s:13:"custom_events";s:12:"ajaxComplete";}', 'no'),
(3182, 'EWD_ULB_Add_Lightbox', 'a:2:{i:0;s:10:"all_images";i:1;s:11:"image_class";}', 'yes'),
(3183, 'EWD_ULB_Transition_Type', 'ewd-ulb-no-transition', 'yes'),
(3184, 'EWD_ULB_Transition_Speed', '600', 'yes'),
(3185, 'EWD_ULB_Background_Close', 'true', 'yes'),
(3186, 'EWD_ULB_Gallery_Loop', 'true', 'yes'),
(3187, 'EWD_ULB_Mousewheel_Navigation', 'true', 'yes'),
(3188, 'EWD_ULB_Show_Thumbnails', 'bottom', 'yes'),
(3189, 'EWD_ULB_Show_Thumbnail_Toggle', 'true', 'yes'),
(3190, 'EWD_ULB_Start_Autoplay', 'false', 'yes'),
(3191, 'EWD_ULB_Autoplay_Interval', '5000', 'yes'),
(3192, 'EWD_ULB_Show_Progress_Bar', 'true', 'yes'),
(3193, 'EWD_ULB_Hide_On_Mobile', 'a:0:{}', 'yes'),
(3194, 'EWD_ULB_Min_Height', '50', 'yes'),
(3195, 'EWD_ULB_Min_Width', '50', 'yes'),
(3196, 'EWD_ULB_Top_Right_Controls', 'a:1:{i:0;s:4:"exit";}', 'yes'),
(3197, 'EWD_ULB_Top_Left_Controls', 'a:2:{i:0;s:8:"autoplay";i:1;s:4:"zoom";}', 'yes'),
(3198, 'EWD_ULB_Bottom_Right_Controls', 'a:1:{i:0;s:13:"slide_counter";}', 'yes'),
(3199, 'EWD_ULB_Bottom_Left_Controls', 'a:0:{}', 'yes'),
(3200, 'EWD_ULB_Arrow', 'a', 'yes'),
(3201, 'EWD_ULB_Icon_Set', 'a', 'yes'),
(3202, 'EWD_ULB_Full_Version', 'Yes', 'yes'),
(3203, 'EWD_ULB_Version', '0.6', 'yes'),
(3204, 'EWD_ULB_Custom_CSS', '', 'yes'),
(3205, 'EWD_ULB_Image_Class_List', 'lightbox,certification-file', 'yes'),
(3206, 'EWD_ULB_Image_Selector_List', '', 'yes'),
(3207, 'EWD_ULB_Styling_Title_Font', '', 'yes'),
(3208, 'EWD_ULB_Styling_Title_Font_Size', '', 'yes'),
(3209, 'EWD_ULB_Styling_Title_Font_Color', '', 'yes'),
(3210, 'EWD_ULB_Styling_Description_Font', '', 'yes'),
(3211, 'EWD_ULB_Styling_Description_Font_Size', '', 'yes'),
(3212, 'EWD_ULB_Styling_Description_Font_Color', '', 'yes'),
(3213, 'EWD_ULB_Styling_Arrow_Size', '', 'yes'),
(3214, 'EWD_ULB_Styling_Arrow_Color', '', 'yes'),
(3215, 'EWD_ULB_Styling_Arrow_Background_Color', '', 'yes'),
(3216, 'EWD_ULB_Styling_Arrow_Background_Opacity', '', 'yes'),
(3217, 'EWD_ULB_Styling_Arrow_Background_Hover_Opacity', '', 'yes'),
(3218, 'EWD_ULB_Styling_Icon_Size', '', 'yes'),
(3219, 'EWD_ULB_Styling_Icon_Color', '', 'yes'),
(3220, 'EWD_ULB_Styling_Background_Overlay_Color', '', 'yes'),
(3221, 'EWD_ULB_Styling_Background_Overlay_Opacity', '', 'yes'),
(3222, 'EWD_ULB_Styling_Toolbar_Color', '', 'yes'),
(3223, 'EWD_ULB_Styling_Toolbar_Opacity', '', 'yes'),
(3224, 'EWD_ULB_Styling_Image_Overlay_Color', '', 'yes'),
(3225, 'EWD_ULB_Styling_Image_Overlay_Opacity', '', 'yes'),
(3226, 'EWD_ULB_Styling_Thumbnail_Bar_Color', '', 'yes'),
(3227, 'EWD_ULB_Styling_Thumbnail_Bar_Opacity', '', 'yes'),
(3228, 'EWD_ULB_Styling_Thumbnail_Scroll_Arrow_Color', '', 'yes'),
(3229, 'EWD_ULB_Styling_Active_Thumbnail_Border_Color', '', 'yes'),
(2589, 'pie_us_states', 'a:54:{i:0;s:7:"Alabama";i:1;s:6:"Alaska";i:2;s:7:"Arizona";i:3;s:8:"Arkansas";i:4;s:10:"California";i:5;s:8:"Colorado";i:6;s:11:"Connecticut";i:7;s:8:"Delaware";i:8;s:20:"District of Columbia";i:9;s:7:"Florida";i:10;s:7:"Georgia";i:11;s:6:"Hawaii";i:12;s:5:"Idaho";i:13;s:8:"Illinois";i:14;s:7:"Indiana";i:15;s:4:"Iowa";i:16;s:6:"Kansas";i:17;s:8:"Kentucky";i:18;s:9:"Louisiana";i:19;s:5:"Maine";i:20;s:8:"Maryland";i:21;s:13:"Massachusetts";i:22;s:8:"Michigan";i:23;s:9:"Minnesota";i:24;s:11:"Mississippi";i:25;s:8:"Missouri";i:26;s:7:"Montana";i:27;s:8:"Nebraska";i:28;s:6:"Nevada";i:29;s:13:"New Hampshire";i:30;s:10:"New Jersey";i:31;s:10:"New Mexico";i:32;s:8:"New York";i:33;s:14:"North Carolina";i:34;s:12:"North Dakota";i:35;s:4:"Ohio";i:36;s:8:"Oklahoma";i:37;s:6:"Oregon";i:38;s:12:"Pennsylvania";i:39;s:12:"Rhode Island";i:40;s:14:"South Carolina";i:41;s:12:"South Dakota";i:42;s:9:"Tennessee";i:43;s:5:"Texas";i:44;s:4:"Utah";i:45;s:7:"Vermont";i:46;s:8:"Virginia";i:47;s:10:"Washington";i:48;s:13:"West Virginia";i:49;s:9:"Wisconsin";i:50;s:7:"Wyoming";i:51;s:21:"Armed Forces Americas";i:52;s:19:"Armed Forces Europe";i:53;s:20:"Armed Forces Pacific";}', 'yes'),
(2590, 'pie_can_states', 'a:13:{i:0;s:7:"Alberta";i:1;s:16:"British Columbia";i:2;s:8:"Manitoba";i:3;s:13:"New Brunswick";i:4;s:25:"Newfoundland and Labrador";i:5;s:21:"Northwest Territories";i:6;s:11:"Nova Scotia";i:7;s:7:"Nunavut";i:8;s:7:"Ontario";i:9;s:20:"Prince Edward Island";i:10;s:6:"Quebec";i:11;s:12:"Saskatchewan";i:12;s:5:"Yukon";}', 'yes'),
(2591, 'pie_user_email_types', 'a:16:{s:16:"default_template";s:22:"Your account is ready.";s:18:"admin_verification";s:32:"Your account is being processed.";s:18:"email_verification";s:19:"Email verification.";s:23:"email_edit_verification";s:34:"Email address change verification.";s:26:"current_email_verification";s:42:"Current Email address change verification.";s:14:"email_thankyou";s:32:"Your account has been activated.";s:28:"forgot_password_notification";s:23:"Password Reset Request.";s:15:"pending_payment";s:16:"Overdue Payment.";s:15:"payment_success";s:18:"Payment Processed.";s:13:"payment_faild";s:15:"Payment Failed.";s:24:"pending_payment_reminder";s:16:"Payment Pending.";s:27:"email_verification_reminder";s:28:"Email Verification Reminder.";s:18:"user_expiry_notice";s:34:"Final Email Verification Reminder.";s:24:"user_temp_blocked_notice";s:29:"User Temporary Blocked Notice";s:38:"user_renew_temp_blocked_account_notice";s:15:"Payment Failed.";s:24:"user_perm_blocked_notice";s:32:"Final Reminder - Payment Failed.";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2592, 'pie_register', 'a:214:{s:14:"paypal_butt_id";s:0:"";s:10:"paypal_pdt";s:0:"";s:14:"paypal_sandbox";s:0:"";s:19:"payment_success_msg";s:23:"Payment was successful.";s:17:"payment_faild_msg";s:15:"Payment failed.";s:17:"payment_renew_msg";s:30:"Account needs to be activated.";s:28:"payment_already_activate_msg";s:26:"Account is already active.";s:26:"enable_admin_notifications";i:1;s:13:"enable_paypal";i:0;s:17:"enable_blockedips";i:0;s:22:"enable_blockedusername";i:0;s:19:"enable_blockedemail";i:0;s:18:"admin_sendto_email";s:21:"davseveloff@gmail.com";s:15:"admin_from_name";s:13:"Administrator";s:16:"admin_from_email";s:21:"davseveloff@gmail.com";s:14:"admin_to_email";s:21:"davseveloff@gmail.com";s:15:"admin_bcc_email";s:21:"davseveloff@gmail.com";s:19:"admin_subject_email";s:325:"&#1502;&#1513;&#1514;&#1502;&#1513; &#1495;&#1491;&#1513; &#1502;&#1497;&#1500;&#1488; &#1489;&#1492;&#1510;&#1500;&#1495;&#1492; &#1488;&#1514; &#1496;&#1493;&#1508;&#1505; &#1492;&#1492;&#1510;&#1496;&#1512;&#1508;&#1493;&#1514; &#1500;&#1488;&#1514;&#1512; &#1489;&#1512;&#1493;&#1511;&#1512; &#1504;&#1491;&#1500;"&#1503;";s:27:"admin_message_email_formate";i:1;s:35:"user_formate_email_default_template";i:1;s:19:"admin_message_email";s:1121:"<p style="direction: rtl">&#1513;&#1500;&#1493;&#1501; %user_login%,<br />\r\n&#1502;&#1513;&#1514;&#1502;&#1513; &#1495;&#1491;&#1513; &#1502;&#1497;&#1500;&#1488; &#1489;&#1492;&#1510;&#1500;&#1495;&#1492; &#1488;&#1514; &#1496;&#1493;&#1508;&#1505; &#1492;&#1492;&#1510;&#1496;&#1512;&#1508;&#1493;&#1514; &#1500;&#1488;&#1514;&#1512; &#1489;&#1512;&#1493;&#1511;&#1512; &#1504;&#1491;&#1500;&quot;&#1503;.</p>\r\n\r\n<p style="direction: rtl">&#1513;&#1501; &#1508;&#1512;&#1496;&#1497;:&nbsp;%firstname%</p>\r\n\r\n<p style="direction: rtl">&#1513;&#1501; &#1502;&#1513;&#1508;&#1495;&#1492;:&nbsp;%lastname%</p>\r\n\r\n<p style="direction: rtl">&#1514;&#1493;&#1499;&#1500; &#1500;&#1512;&#1488;&#1493;&#1514; &#1488;&#1514; &#1508;&#1512;&#1496;&#1497; &#1492;&#1502;&#1513;&#1514;&#1502;&#1513; &#1506;&#1500; &#1497;&#1491; &#1500;&#1495;&#1497;&#1510;&#1492; &#1499;&#1488;&#1503;.</p>\r\n\r\n<p style="direction: rtl">&nbsp;</p>\r\n\r\n<p style="direction: rtl">&#1497;&#1493;&#1501; &#1502;&#1506;&#1493;&#1500;&#1492;!</p>\r\n\r\n<p style="direction: rtl">&nbsp;</p>\r\n\r\n<p style="direction: ltr">&#1488;&#1514;&#1512; %blogname%</p>\r\n";s:13:"display_hints";i:0;s:13:"redirect_user";i:1;s:16:"subscriber_login";i:0;s:21:"login_form_in_website";i:1;s:23:"registration_in_website";i:1;s:16:"block_WP_profile";i:0;s:21:"allow_pr_edit_wplogin";i:0;s:14:"modify_avatars";i:0;s:14:"show_admin_bar";i:1;s:14:"block_wp_login";i:1;s:15:"alternate_login";i:459;s:18:"alternate_register";i:461;s:20:"alternate_forgotpass";i:473;s:21:"alternate_profilepage";i:474;s:19:"piereg_startingDate";s:4:"1901";s:17:"piereg_endingDate";s:4:"2017";s:11:"after_login";i:474;s:16:"alternate_logout";i:-1;s:20:"alternate_logout_url";s:0:"";s:9:"outputcss";i:1;s:15:"outputjquery_ui";i:1;s:20:"login_after_register";i:0;s:29:"pass_strength_indicator_label";s:18:"Strength Indicator";s:20:"pass_very_weak_label";s:28:"סיסמה חלשה מאוד";s:15:"pass_weak_label";s:20:"סיסמה חלשה ";s:17:"pass_medium_label";s:41:"סיסמה בעלת חוזק בינוני";s:17:"pass_strong_label";s:19:"סיסמה חזקה";s:19:"pass_mismatch_label";s:32:"סיסמאות לא תואמות";s:8:"pr_theme";s:1:"0";s:19:"restrict_bot_enabel";i:0;s:20:"restrict_bot_content";s:104:"bot\r\nia_archiver\r\ngooglebot\r\nbingbot\r\nslurp\r\nduckduckbot\r\nbaiduspider\r\nyandexbot\r\nsogou\r\nexabot\r\nfacebot";s:28:"restrict_bot_content_message";s:69:"Restricted Post: You are not allowed to view the content of this Post";s:10:"outputhtml";i:1;s:11:"no_conflict";i:0;s:8:"currency";s:3:"USD";s:12:"verification";i:1;s:28:"email_edit_verification_step";i:1;s:12:"grace_period";i:0;s:13:"captcha_publc";s:0:"";s:15:"captcha_private";s:0:"";s:16:"paypal_button_id";s:0:"";s:16:"paypal_pdt_token";s:0:"";s:10:"custom_css";s:0:"";s:13:"tracking_code";s:0:"";s:23:"enable_invitation_codes";i:0;s:16:"invitation_codes";s:0:"";s:22:"payment_setting_amount";s:2:"10";s:24:"pie_regis_set_user_role_";s:10:"subscriber";s:15:"custom_logo_url";s:74:"//127.0.0.1:3000/broker/wp-content/uploads/2017/09/cropped-broker_logo.jpg";s:31:"reg_form_submission_time_enable";s:1:"0";s:24:"reg_form_submission_time";s:1:"0";s:19:"custom_logo_tooltip";s:19:"ברוקר נדלן";s:16:"custom_logo_link";s:0:"";s:16:"show_custom_logo";s:1:"1";s:20:"login_username_label";s:15:"שם משתמש";s:26:"login_username_placeholder";s:0:"";s:20:"login_password_label";s:10:"סיסמה";s:26:"login_password_placeholder";s:0:"";s:22:"capthca_in_login_label";s:0:"";s:16:"capthca_in_login";i:3;s:22:"captcha_in_login_value";i:0;s:36:"piereg_security_attempts_login_value";s:1:"0";s:23:"captcha_in_forgot_value";i:3;s:37:"piereg_security_attempts_forgot_value";s:1:"0";s:31:"security_captcha_attempts_login";s:1:"0";s:22:"security_captcha_login";s:1:"2";s:23:"security_attempts_login";s:1:"0";s:28:"security_attempts_login_time";s:1:"1";s:26:"forgot_pass_username_label";s:40:"שם משתמש או כתובת מייל";s:32:"forgot_pass_username_placeholder";s:0:"";s:28:"capthca_in_forgot_pass_label";s:0:"";s:22:"capthca_in_forgot_pass";i:3;s:25:"enable_user_notifications";i:0;s:31:"user_from_name_default_template";s:5:"Admin";s:32:"user_from_email_default_template";s:21:"davseveloff@gmail.com";s:30:"user_to_email_default_template";s:21:"davseveloff@gmail.com";s:35:"user_subject_email_default_template";s:237:"&#1514;&#1493;&#1491;&#1492; &#1513;&#1502;&#1497;&#1500;&#1488;&#1514; &#1488;&#1514; &#1496;&#1493;&#1508;&#1505; &#1492;&#1492;&#1510;&#1496;&#1512;&#1508;&#1493;&#1514; &#1500;&#1489;&#1512;&#1493;&#1511;&#1512; &#1504;&#1491;&#1500;";s:33:"user_from_name_admin_verification";s:5:"Admin";s:34:"user_from_email_admin_verification";s:21:"davseveloff@gmail.com";s:32:"user_to_email_admin_verification";s:21:"davseveloff@gmail.com";s:37:"user_subject_email_admin_verification";s:32:"Your account is being processed.";s:37:"user_formate_email_admin_verification";i:1;s:33:"user_from_name_email_verification";s:5:"Admin";s:34:"user_from_email_email_verification";s:21:"davseveloff@gmail.com";s:32:"user_to_email_email_verification";s:21:"davseveloff@gmail.com";s:37:"user_subject_email_email_verification";s:19:"Email verification.";s:37:"user_formate_email_email_verification";i:1;s:38:"user_from_name_email_edit_verification";s:5:"Admin";s:39:"user_from_email_email_edit_verification";s:21:"davseveloff@gmail.com";s:37:"user_to_email_email_edit_verification";s:21:"davseveloff@gmail.com";s:42:"user_subject_email_email_edit_verification";s:34:"Email address change verification.";s:42:"user_formate_email_email_edit_verification";i:1;s:41:"user_from_name_current_email_verification";s:5:"Admin";s:42:"user_from_email_current_email_verification";s:21:"davseveloff@gmail.com";s:40:"user_to_email_current_email_verification";s:21:"davseveloff@gmail.com";s:45:"user_subject_email_current_email_verification";s:42:"Current Email address change verification.";s:45:"user_formate_email_current_email_verification";i:1;s:29:"user_from_name_email_thankyou";s:5:"Admin";s:30:"user_from_email_email_thankyou";s:21:"davseveloff@gmail.com";s:28:"user_to_email_email_thankyou";s:21:"davseveloff@gmail.com";s:33:"user_subject_email_email_thankyou";s:32:"Your account has been activated.";s:33:"user_formate_email_email_thankyou";i:1;s:43:"user_from_name_forgot_password_notification";s:5:"Admin";s:44:"user_from_email_forgot_password_notification";s:21:"davseveloff@gmail.com";s:42:"user_to_email_forgot_password_notification";s:21:"davseveloff@gmail.com";s:47:"user_subject_email_forgot_password_notification";s:23:"Password Reset Request.";s:47:"user_formate_email_forgot_password_notification";i:1;s:30:"user_from_name_pending_payment";s:5:"Admin";s:31:"user_from_email_pending_payment";s:21:"davseveloff@gmail.com";s:29:"user_to_email_pending_payment";s:21:"davseveloff@gmail.com";s:34:"user_subject_email_pending_payment";s:16:"Overdue Payment.";s:34:"user_formate_email_pending_payment";i:1;s:30:"user_from_name_payment_success";s:5:"Admin";s:31:"user_from_email_payment_success";s:21:"davseveloff@gmail.com";s:29:"user_to_email_payment_success";s:21:"davseveloff@gmail.com";s:34:"user_subject_email_payment_success";s:18:"Payment Processed.";s:34:"user_formate_email_payment_success";i:1;s:28:"user_from_name_payment_faild";s:5:"Admin";s:29:"user_from_email_payment_faild";s:21:"davseveloff@gmail.com";s:27:"user_to_email_payment_faild";s:21:"davseveloff@gmail.com";s:32:"user_subject_email_payment_faild";s:15:"Payment Failed.";s:32:"user_formate_email_payment_faild";i:1;s:39:"user_from_name_pending_payment_reminder";s:5:"Admin";s:40:"user_from_email_pending_payment_reminder";s:21:"davseveloff@gmail.com";s:38:"user_to_email_pending_payment_reminder";s:21:"davseveloff@gmail.com";s:43:"user_subject_email_pending_payment_reminder";s:16:"Payment Pending.";s:43:"user_formate_email_pending_payment_reminder";i:1;s:42:"user_from_name_email_verification_reminder";s:5:"Admin";s:43:"user_from_email_email_verification_reminder";s:21:"davseveloff@gmail.com";s:41:"user_to_email_email_verification_reminder";s:21:"davseveloff@gmail.com";s:46:"user_subject_email_email_verification_reminder";s:28:"Email Verification Reminder.";s:46:"user_formate_email_email_verification_reminder";i:1;s:33:"user_from_name_user_expiry_notice";s:5:"Admin";s:34:"user_from_email_user_expiry_notice";s:21:"davseveloff@gmail.com";s:32:"user_to_email_user_expiry_notice";s:21:"davseveloff@gmail.com";s:37:"user_subject_email_user_expiry_notice";s:34:"Final Email Verification Reminder.";s:37:"user_formate_email_user_expiry_notice";i:1;s:39:"user_from_name_user_temp_blocked_notice";s:5:"Admin";s:40:"user_from_email_user_temp_blocked_notice";s:21:"davseveloff@gmail.com";s:38:"user_to_email_user_temp_blocked_notice";s:21:"davseveloff@gmail.com";s:43:"user_subject_email_user_temp_blocked_notice";s:29:"User Temporary Blocked Notice";s:43:"user_formate_email_user_temp_blocked_notice";i:1;s:53:"user_from_name_user_renew_temp_blocked_account_notice";s:5:"Admin";s:54:"user_from_email_user_renew_temp_blocked_account_notice";s:21:"davseveloff@gmail.com";s:52:"user_to_email_user_renew_temp_blocked_account_notice";s:21:"davseveloff@gmail.com";s:57:"user_subject_email_user_renew_temp_blocked_account_notice";s:15:"Payment Failed.";s:57:"user_formate_email_user_renew_temp_blocked_account_notice";i:1;s:39:"user_from_name_user_perm_blocked_notice";s:5:"Admin";s:40:"user_from_email_user_perm_blocked_notice";s:21:"davseveloff@gmail.com";s:38:"user_to_email_user_perm_blocked_notice";s:21:"davseveloff@gmail.com";s:43:"user_subject_email_user_perm_blocked_notice";s:32:"Final Reminder - Payment Failed.";s:43:"user_formate_email_user_perm_blocked_notice";i:1;s:37:"user_message_email_admin_verification";s:232:"<p>Dear %user_login%,</p>\r\n\r\n<p>Thank You for registering with our website.</p>\r\n\r\n<p>A site administrator will review your request. Once approved, you will be notified via email.</p>\r\n\r\n<p>Best Wishes,</p>\r\n\r\n<p>Team %blogname%</p>";s:37:"user_message_email_email_verification";s:220:"<p>Dear %user_login%,</p>\r\n\r\n<p>Thank You for registering with our website.</p>\r\n\r\n<p>Please use the link below to verify your email address.</p>\r\n\r\n<p>%activationurl%</p>\r\n\r\n<p>Best Wishes,</p>\r\n\r\n<p>Team %blogname%</p>";s:33:"user_message_email_email_thankyou";s:859:"<h2 style="direction: rtl">&#1513;&#1500;&#1493;&#1501;&nbsp;%firstname%</h2>\r\n\r\n<p style="direction: rtl">&#1514;&#1493;&#1491;&#1492; &#1513;&#1504;&#1512;&#1513;&#1502;&#1514; &#1500;&#1488;&#1514;&#1512; &#1489;&#1512;&#1493;&#1511;&#1512; &#1504;&#1491;&#1500;&quot;&#1503;.<br />\r\n&#1492;&#1495;&#1513;&#1489;&#1493;&#1503; &#1513;&#1500;&#1498; &#1488;&#1493;&#1513;&#1512;.</p>\r\n\r\n<p style="direction: rtl">&#1504;&#1497;&#1514;&#1503; &#1500;&#1492;&#1499;&#1504;&#1505; &#1500;&#1495;&#1513;&#1489;&#1493;&#1503; &#1506;&#1500; &#1497;&#1491;&#1497; &#1500;&#1495;&#1497;&#1510;&#1492; &#1506;&#1500; &#1492;&#1511;&#1497;&#1513;&#1493;&#1512; &#1492;&#1489;&#1488;:</p>\r\n\r\n<p style="direction: rtl">&#1510;&#1493;&#1493;&#1514;&nbsp;&#1489;&#1512;&#1493;&#1511;&#1512; &#1504;&#1491;&#1500;&quot;&#1503;.</p>\r\n\r\n<p style="direction: rtl">&nbsp;</p>";s:34:"user_message_email_payment_success";s:211:"<p>Dear %user_login%,</p>\r\n\r\n<p>Congratulations, your payment has been successfully processed.<br />\r\nPlease enjoy the benefits of your membership on %blogname%</p>\r\n\r\n<p>Thank You,</p>\r\n\r\n<p>Team %blogname%</p>";s:32:"user_message_email_payment_faild";s:335:"<p>Dear %user_login%,</p>\r\n\r\n<p>Our last attempt to charge the membership payment for your account has failed.</p>\r\n\r\n<p>You are requested to log in to your account at %blogname% to provide a different payment method, or contact your bank/credit-card company to resolve this issue.</p>\r\n\r\n<p>Kind Regards,</p>\r\n\r\n<p>Team %blogname%</p>";s:34:"user_message_email_pending_payment";s:249:"<p>Dear %user_login%,</p>\r\n\r\n<p>This is a reminder that membership payment is overdue for your account on %blogname%. Please process your payment immediately to keep membership previlages active.</p>\r\n\r\n<p>Best Regards,</p>\r\n\r\n<p>Team %blogname%</p>";s:35:"user_message_email_default_template";s:1013:"<h2 style="direction: rtl">&#1513;&#1500;&#1493;&#1501;&nbsp;%firstname%&nbsp;</h2>\r\n\r\n<p style="direction: rtl">&#1514;&#1493;&#1491;&#1492; &#1513;&#1502;&#1497;&#1500;&#1488;&#1514; &#1488;&#1514; &#1496;&#1493;&#1508;&#1505; &#1492;&#1492;&#1510;&#1496;&#1512;&#1508;&#1493;&#1514; &#1500;&#1489;&#1512;&#1493;&#1511;&#1512; &#1504;&#1491;&#1500;&quot;&#1503;.<br />\r\n&#1502;&#1504;&#1492;&#1500; &#1492;&#1488;&#1514;&#1512; &#1497;&#1506;&#1489;&#1493;&#1512; &#1506;&#1500; &#1489;&#1511;&#1513;&#1514;&#1498;. &#1489;&#1512;&#1490;&#1506; &#1513;&#1514;&#1493;&#1488;&#1513;&#1512; &#1504;&#1513;&#1500;&#1495; &#1500;&#1498; &#1502;&#1497;&#1497;&#1500; &#1492;&#1502;&#1493;&#1491;&#1497;&#1506; &#1506;&#1500; &#1499;&#1498;.</p>\r\n\r\n<p style="direction: rtl">&#1489;&#1492;&#1510;&#1500;&#1495;&#1492;!</p>\r\n\r\n<p style="direction: rtl">&#1510;&#1493;&#1493;&#1514; &#1488;&#1514;&#1512; &#1489;&#1512;&#1493;&#1511;&#1512; &#1504;&#1491;&#1500;&quot;&#1503;.</p>\r\n\r\n<p style="direction: rtl">&nbsp;</p>";s:43:"user_message_email_pending_payment_reminder";s:346:"<p>Dear %user_login%,</p>\r\n\r\n<p>We have noticed that you created an account on %blogname% a few days ago, but have not completed the payment. Please use the link below to complete the payment.<br />\r\nYour account will be activated once the payment is received.</p>\r\n\r\n<p>%pending_payment_url%</p>\r\n\r\n<p>Best Regards,</p>\r\n\r\n<p>Team %blogname%</p>";s:46:"user_message_email_email_verification_reminder";s:338:"<p>Dear %user_login%,</p>\r\n\r\n<p>Thank You for registering with our website.</p>\r\n\r\n<p>We noticed that you created an account on %blogname% but have not completed the email verification process.</p>\r\n\r\n<p>Please use the link below to verify your email address.</p>\r\n\r\n<p>%activationurl%</p>\r\n\r\n<p>Best Wishes,</p>\r\n\r\n<p>Team %blogname%</p>";s:47:"user_message_email_forgot_password_notification";s:342:"<p>Dear %user_login%,</p>\r\n\r\n<p>We have received a request to reset your account password on %blogname%. Please use the link below to reset your password. If you did not request a new password, please ignore this email and the change will not be made.</p>\r\n\r\n<p>( %reset_password_url% )</p>\r\n\r\n<p>Best Regards,</p>\r\n\r\n<p>Team %user_login%</p>";s:37:"user_message_email_user_expiry_notice";s:398:"<p>Dear %user_login%,</p>\r\n\r\n<p>Thank You for registering with our website.</p>\r\n\r\n<p>We noticed that you created an account on %blogname% but have not completed the email verification process. Failure to do so will result in your account being removed.</p>\r\n\r\n<p>Please use the link below to verify your email address.</p>\r\n\r\n<p>%activationurl%</p>\r\n\r\n<p>Best Wishes,</p>\r\n\r\n<p>Team %blogname%</p>";s:43:"user_message_email_user_temp_blocked_notice";s:49:"<p>Now, You are temporary block at %blogname%</p>";s:57:"user_message_email_user_renew_temp_blocked_account_notice";s:428:"<p>Dear %user_login%,</p>\r\n\r\n<p>Our last attempt to charge the membership payment for your account has failed.</p>\r\n\r\n<p>You are requested to log in to your account at %blogname% to provide a different payment method, or contact your bank/credit-card company to resolve this issue.</p>\r\n\r\n<p>Access to your account has been temporarily disabled until this issue is resolved.</p>\r\n\r\n<p>Kind Regards,</p>\r\n\r\n<p>Team %blogname%</p>";s:43:"user_message_email_user_perm_blocked_notice";s:417:"<p>Dear %user_login%,</p>\r\n\r\n<p>Our last attempt to charge the membership payment for your account failed.</p>\r\n\r\n<p>You are requested to log in to your account at %blogname% to provide a different payment method, or contact your bank/credit-card company to resolve this issue.</p>\r\n\r\n<p>Failure to do so will result in your account being removed from %blogname%.</p>\r\n\r\n<p>Kind Regards,</p>\r\n\r\n<p>Team %blogname%</p>";s:42:"user_message_email_email_edit_verification";s:338:"<p>Hello %user_login%,</p>\r\n\r\n<p>We have received a request to change the email address for your account on %blogname%.</p>\r\n\r\n<p>Old Email Address: %user_email%<br />\r\nNew Email Address: %user_new_email%.</p>\r\n\r\n<p>Please use the link below to complete this change.</p>\r\n\r\n<p>(%reset_email_url%)</p>\r\n\r\n<p>Thanks</p>\r\n\r\n<p>%blogname%</p>";s:45:"user_message_email_current_email_verification";s:445:"<p>Hello %user_login%,</p>\r\n\r\n<p>We have received a request to change the email address for your account on %blogname%.</p>\r\n\r\n<p>Old Email Address: %user_email%<br />\r\nNew Email Address: %user_new_email%.</p>\r\n\r\n<p>If you requested this change, please use the link below to complete the action. Otherwise please ignore this email and the change will not be made.</p>\r\n\r\n<p>(%confirm_current_email_url%)</p>\r\n\r\n<p>Thanks</p>\r\n\r\n<p>%blogname%</p>";s:25:"pie_regis_set_user_role_1";s:6:"author";s:21:"piereg_startingDate_1";s:4:"1901";s:19:"piereg_endingDate_1";s:4:"2017";s:19:"alternate_login_url";s:0:"";s:31:"user_bcc_email_default_template";s:0:"";s:33:"user_bcc_email_admin_verification";s:0:"";s:33:"user_bcc_email_email_verification";s:0:"";s:38:"user_bcc_email_email_edit_verification";s:0:"";s:41:"user_bcc_email_current_email_verification";s:0:"";s:29:"user_bcc_email_email_thankyou";s:0:"";s:43:"user_bcc_email_forgot_password_notification";s:0:"";s:30:"user_bcc_email_pending_payment";s:0:"";s:30:"user_bcc_email_payment_success";s:0:"";s:28:"user_bcc_email_payment_faild";s:0:"";s:39:"user_bcc_email_pending_payment_reminder";s:0:"";s:42:"user_bcc_email_email_verification_reminder";s:0:"";s:33:"user_bcc_email_user_expiry_notice";s:0:"";s:39:"user_bcc_email_user_temp_blocked_notice";s:0:"";s:53:"user_bcc_email_user_renew_temp_blocked_account_notice";s:0:"";s:39:"user_bcc_email_user_perm_blocked_notice";s:0:"";s:25:"captcha_in_login_attempts";i:0;s:27:"piereg_recapthca_skin_login";i:0;s:33:"piereg_recapthca_skin_forgot_pass";i:0;s:29:"security_attempts_forgot_time";i:0;s:24:"security_attempts_forgot";i:0;}', 'yes'),
(2593, 'pie_fields_default', 'a:5:{s:4:"form";a:7:{s:5:"label";s:32:"טופס רישום לברוקר";s:4:"desc";s:58:"נא מלאו את הפרטים כדי לבצע הרשמה";s:15:"label_alignment";s:3:"top";s:3:"css";s:0:"";s:4:"type";s:4:"form";s:4:"meta";i:0;s:5:"reset";i:0;}i:0;a:11:{s:5:"label";s:15:"שם משתמש";s:4:"type";s:8:"username";s:2:"id";i:0;s:6:"remove";i:0;s:8:"required";s:1:"1";s:4:"desc";s:0:"";s:6:"length";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:3:"css";s:12:"form-control";s:4:"meta";i:0;}i:1;a:13:{s:5:"label";s:25:"דואר אלקטרוני";s:6:"label2";s:43:"אשר כתובת דואר אלקטרוני";s:4:"type";s:5:"email";s:2:"id";s:1:"1";s:6:"remove";i:0;s:8:"required";s:1:"1";s:4:"desc";s:0:"";s:6:"length";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:3:"css";s:12:"form-control";s:15:"validation_rule";s:5:"email";s:4:"meta";i:0;}i:2;a:14:{s:5:"label";s:10:"סיסמה";s:6:"label2";s:17:"אשר סיסמה";s:4:"type";s:8:"password";s:2:"id";s:1:"2";s:6:"remove";i:0;s:8:"required";s:1:"1";s:4:"desc";s:77:"נא להזין סיסמה באמצעותה תיכנסו בעתיד לאתר.";s:6:"length";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:3:"css";s:12:"form-control";s:15:"validation_rule";s:0:"";s:4:"meta";i:0;s:10:"show_meter";s:1:"1";}s:6:"submit";a:8:{s:7:"message";s:31:"Thank you for your registration";s:12:"confirmation";s:4:"text";s:4:"text";s:6:"Submit";s:5:"reset";i:0;s:10:"reset_text";s:5:"Reset";s:4:"type";s:6:"submit";s:4:"meta";i:0;s:12:"redirect_url";s:0:"";}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2594, 'pie_fields_meta', 'a:34:{s:4:"text";s:2318:"<div class="fields_main"><div class="advance_options_fields"><div class="advance_fields"><label for="label_%d%">Label</label><input type="text" name="field[%d%][label]" id="label_%d%" class="input_fields field_label"></div><div class="advance_fields"><label for="desc_%d%">Description</label><textarea name="field[%d%][desc]" id="desc_%d%" rows="8" cols="16"></textarea></div><div class="advance_fields"><label for="length_%d%">Length</label><input type="text" name="field[%d%][length]" id="length_%d%" class="input_fields character_fields field_length numeric"></div><div class="advance_fields"><label>Rules</label><input name="field[%d%][required]" id="required_%d%" value="%d%" type="checkbox" class="checkbox_fields"><label for="required_%d%" class="required">Required</label></div><div class="advance_fields"><label for="default_value_%d%">Default Value</label><input type="text" name="field[%d%][default_value]" id="default_value_%d%" class="input_fields field_default_value"></div><div class="advance_fields"><label for="placeholder_%d%">Placeholder</label><input type="text" name="field[%d%][placeholder]" id="placeholder_%d%" class="input_fields field_placeholder"></div><div class="advance_fields"><label for="validation_rule_%d%">Validation Rule</label><select name="field[%d%][validation_rule]" id="validation_rule_%d%"><option>None</option><option value="number">Number</option><option value="alphanumeric">Alphanumeric</option><option value="email">Email</option><option value="website">Website</option><option value="standard">USA Format (xxx) (xxx-xxxx)</option><option value="international">Phone International xxx-xxx-xxxx</option></select></div><div class="advance_fields"><label for="validation_message_%d%">Validation Message</label><input type="text" name="field[%d%][validation_message]" id="validation_message_%d%" class="input_fields"></div><div class="advance_fields"><label for="css_%d%">CSS Class Name</label><input type="text" name="field[%d%][css]" id="css_%d%" class="input_fields"></div><div class="advance_fields"><label for="show_in_profile_%d%">Show in Profile</label><select name="field[%d%][show_in_profile]" id="show_in_profile_%d%"  class="show_in_profile checkbox_fields"><option value="1" selected="selected">Yes</option><option value="0">No</option></select></div></div></div>";s:8:"username";s:1246:"<input type="hidden" value="0" class="input_fields" name="field[%d%][meta]" id="meta_%d%"><div class="fields_main"><div class="advance_options_fields"><input type="hidden" value="1" name="field[%d%][required]"><input type="hidden" name="field[%d%][label]"><input type="hidden" name="field[%d%][validation_rule]"><div class="advance_fields"><label for="label_%d%">Label</label><input type="text" name="field[%d%][label]" value="Username" id="label_%d%" class="input_fields field_label"></div><div class="advance_fields"><label for="desc_%d%">Description</label><textarea name="field[%d%][desc]" id="desc_%d%" rows="8" cols="16"></textarea></div><div class="advance_fields"><label for="placeholder_%d%">Placeholder</label><input type="text" name="field[%d%][placeholder]" id="placeholder_%d%" class="input_fields field_placeholder"></div><div class="advance_fields"><label for="validation_message_%d%">Validation Message</label><input type="text" name="field[%d%][validation_message]" id="validation_message_%d%" class="input_fields"></div><div class="advance_fields"><label for="css_%d%">CSS Class Name</label><input type="text" name="field[%d%][css]" id="css_%d%" class="input_fields"><input type="hidden" id="default_username"></div></div></div>";s:8:"honeypot";s:585:"<div class="fields_main"><div class="advance_options_fields"><input type="hidden" value="1" name="field[%d%][required]"><input type="hidden" id="default_honeypot"><div class="advance_fields"><label for="label_%d%">Label</label><input type="text" name="field[%d%][label]" value="Honeypot" id="label_%d%" class="input_fields field_label"></div><div class="advance_fields"><label for="validation_message_%d%">Validation Message</label><input type="text" name="field[%d%][validation_message]" id="validation_message_%d%" class="input_fields" value="Spamming not allowed"></div></div></div>";s:7:"default";s:301:"<div class="fields_main"><div class="advance_options_fields"><input type="hidden" class="input_fields" name="field[%d%][type]"><div class="advance_fields"><label for="label_%d%">Label</label><input type="text" name="field[%d%][label]" id="label_%d%" class="input_fields field_label"></div></div></div>";s:3:"aim";s:313:"<div class="fields_main"><div class="advance_options_fields"><input type="hidden" class="input_fields" name="field[%d%][type]"><div class="advance_fields"><label for="label_%d%">Label</label><input type="text" name="field[%d%][label]" value="AIM" id="label_%d%" class="input_fields field_label"></div></div></div>";s:3:"url";s:317:"<div class="fields_main"><div class="advance_options_fields"><input type="hidden" class="input_fields" name="field[%d%][type]"><div class="advance_fields"><label for="label_%d%">Label</label><input type="text" name="field[%d%][label]" id="label_%d%" value="Website" class="input_fields field_label"></div></div></div>";s:3:"yim";s:318:"<div class="fields_main"><div class="advance_options_fields"><input type="hidden" class="input_fields" name="field[%d%][type]"><div class="advance_fields"><label for="label_%d%">Label</label><input type="text" name="field[%d%][label]" id="label_%d%" value="Yahoo IM" class="input_fields field_label"></div></div></div>";s:11:"description";s:324:"<div class="fields_main"><div class="advance_options_fields"><input type="hidden" class="input_fields" name="field[%d%][type]"><div class="advance_fields"><label for="label_%d%">Label</label><input type="text" name="field[%d%][label]" id="label_%d%" value="About Yourself" class="input_fields field_label"></div></div></div>";s:6:"jabber";s:330:"<div class="fields_main"><div class="advance_options_fields"><input type="hidden" class="input_fields" name="field[%d%][type]"><div class="advance_fields"><label for="label_%d%">Label</label><input type="text" name="field[%d%][label]" value="Jabber / Google Talk" id="label_%d%" class="input_fields field_label"></div></div></div>";s:8:"password";s:3533:"<div class="fields_main"><div class="advance_options_fields"><input type="hidden" value="1" name="field[%d%][required]"><input type="hidden" name="field[%d%][validation_rule]"><input type="hidden" value="0" class="input_fields" name="field[%d%][meta]" id="meta_%d%"><div class="advance_fields"><label for="label_%d%">Label</label><input type="text" name="field[%d%][label]" value="Password" id="label_%d%" class="input_fields field_label"></div><div class="advance_fields"><label for="label2_%d%">Label2</label><input type="text" name="field[%d%][label2]" value="Confrim Password" id="label2_%d%" class="input_fields field_label"></div><div class="advance_fields"><label for="desc_%d%">Description</label><textarea name="field[%d%][desc]" id="desc_%d%" rows="8" cols="16"></textarea></div><div class="advance_fields"><label for="placeholder_%d%">Placeholder</label><input type="text" name="field[%d%][placeholder]" id="placeholder_%d%" class="input_fields field_placeholder"></div><div class="advance_fields"><label for="validation_message_%d%">Validation Message</label><input type="text" name="field[%d%][validation_message]" id="validation_message_%d%" class="input_fields"></div><div class="advance_fields"><label for="css_%d%">CSS Class Name</label><input type="text" name="field[%d%][css]" id="css_%d%" class="input_fields"></div><div class="advance_fields"><label for="show_meter_%d%">Show Strength Meter</label><select class="strength_meter show_meter checkbox_fields" name="field[%d%][show_meter]" id="show_meter_%d%"><option value="1" selected="selected">Yes</option><option value="0">No</option></select></div><div class="strength_labels_div"><div class="advance_fields"><label for="pass_strength_indicator_label_%d%">Strength Indicator</label><input type="text" name="field[%d%][pass_strength_indicator_label]" id="pass_strength_indicator_label_%d%" class="input_fields" value="Strength Indicator" /></div><div class="advance_fields"><label for="pass_very_weak_label_%d%">Very Weak</label><input type="text" name="field[%d%][pass_very_weak_label]" id="pass_very_weak_label_%d%" class="input_fields" value="Very Weak" /></div><div class="advance_fields"><label for="pass_weak_label_%d%">Weak</label><input type="text" name="field[%d%][pass_weak_label]" id="pass_weak_label_%d%" class="input_fields" value="Weak" /></div><div class="advance_fields"><label for="pass_medium_label_%d%">Medium</label><input type="text" name="field[%d%][pass_medium_label]" id="pass_medium_label_%d%" class="input_fields" value="Medium" /></div><div class="advance_fields"><label for="pass_strong_label_%d%">Strong</label><input type="text" name="field[%d%][pass_strong_label]" id="pass_strong_label_%d%" class="input_fields" value="Strong" /></div><div class="advance_fields"><label for="pass_mismatch_label_%d%">Mismatch</label><input type="text" name="field[%d%][pass_mismatch_label]" id="pass_mismatch_label_%d%" class="input_fields" value="Mismatch" /></div></div><div class="advance_fields"><label for="restrict_strength_%d%">Minimum Strength</label><select class="show_meter" name="field[%d%][restrict_strength]" id="restrict_strength_%d%"><option value="1" selected="selected">Very weak</option><option value="2">Weak</option><option value="3">Medium</option><option value="4">Strong</option></select></div><div class="advance_fields"><label for="strength_message_%d%">Strength Message</label><input type="text" name="field[%d%][strength_message]" id="strength_message_%d%" class="input_fields" value="Weak Password"></div></div></div>";s:5:"email";s:1585:"<input type="hidden" value="0" class="input_fields" name="field[%d%][meta]" id="meta_%d%"><div class="fields_main"><div class="advance_options_fields"><input type="hidden" value="1" name="field[%d%][required]"><input type="hidden" name="field[%d%][label]"><input type="hidden" name="field[%d%][validation_rule]"><div class="advance_fields"><label for="label_%d%">Label</label><input type="text" name="field[%d%][label]" value="Email" id="label_%d%" class="input_fields field_label"></div><div class="advance_fields"><label for="label2_%d%">Label2</label><input type="text" name="field[%d%][label2]" value="Confrim Email" id="label2_%d%" class="input_fields field_label"></div><div class="advance_fields"><label for="desc_%d%">Description</label><textarea name="field[%d%][desc]" id="desc_%d%" rows="8" cols="16"></textarea></div><div class="advance_fields"><label for="confirm_email_%d%">Confirm Email</label><input name="field[%d%][confirm_email]" id="confirm_email" value="%d%" type="checkbox" class="checkbox_fields"></div><div class="advance_fields"><label for="placeholder_%d%">Placeholder</label><input type="text" name="field[%d%][placeholder]" id="placeholder_%d%" class="input_fields field_placeholder"></div><div class="advance_fields"><label for="validation_message_%d%">Validation Message</label><input type="text" name="field[%d%][validation_message]" id="validation_message_%d%" class="input_fields"></div><div class="advance_fields"><label for="css_%d%">CSS Class Name</label><input type="text" name="field[%d%][css]" id="css_%d%" class="input_fields"></div></div></div>";s:8:"textarea";s:2038:"<div class="fields_main"><div class="advance_options_fields"><div class="advance_fields"><label for="label_%d%">Label</label><input type="text" name="field[%d%][label]" id="label_%d%" class="input_fields field_label"></div><div class="advance_fields"><label for="desc_%d%">Description</label><textarea name="field[%d%][desc]" id="desc_%d%" rows="8" cols="16"></textarea></div><div class="advance_fields"><label for="rows_%d%">Rows</label><input type="text" value="8" name="field[%d%][rows]" id="rows_%d%" class="input_fields character_fields field_rows numeric"></div><div class="advance_fields"><label for="cols_%d%">Columns</label><input type="text" value="73" name="field[%d%][cols]" id="cols_%d%" class="input_fields character_fields field_cols numeric"></div><div class="advance_fields"><label>Rules</label><input name="field[%d%][required]" id="required_%d%" value="%d%" type="checkbox" class="checkbox_fields"><label for="required_%d%" class="required">Required</label></div><div class="advance_fields"><label for="default_value_%d%">Default Value</label><input type="text" name="field[%d%][default_value]" id="default_value_%d%" class="input_fields field_default_value"></div><div class="advance_fields"><label for="placeholder_%d%">Placeholder</label><input type="text" name="field[%d%][placeholder]" id="placeholder_%d%" class="input_fields field_placeholder"></div><div class="advance_fields"><label for="validation_message_%d%">Validation Message</label><input type="text" name="field[%d%][validation_message]" id="validation_message_%d%" class="input_fields"></div><div class="advance_fields"><label for="css_%d%">CSS Class Name</label><input type="text" name="field[%d%][css]" id="css_%d%" class="input_fields"></div><div class="advance_fields"><label for="show_in_profile_%d%">Show in Profile</label><select class="show_in_profile" name="field[%d%][show_in_profile]" id="show_in_profile_%d%"  class="checkbox_fields"><option value="1" selected="selected">Yes</option><option value="0">No</option></select></div></div></div>";s:8:"dropdown";s:2299:"<div class="fields_main"><div class="advance_options_fields"><div class="advance_fields"><label for="label_%d%">Label</label><input type="text" name="field[%d%][label]" id="label_%d%" class="input_fields field_label"></div><div class="advance_fields"><label for="desc_%d%">Description</label><textarea name="field[%d%][desc]" id="desc_%d%" rows="8" cols="16"></textarea></div><div class="advance_fields multi_options sel_options_%d%"><label for="display_%d%">Display Value</label><input type="text" name="field[%d%][display][]" id="display_%d%" class="input_fields character_fields select_option_display"><label for="value_%d%">Value</label><input type="text" name="field[%d%][value][]" id="value_%d%" class="input_fields character_fields select_option_value"><label>Checked</label><input type="radio" value="0" id="check_%d%" name="field[%d%][selected][]" class="select_option_checked"><a style="color:white" href="javascript:;" onClick="addOptions(%d%,''radio'',jQuery(this));">+</a><!--<a style="color:white;font-size: 13px;margin-left: 2px;" href="javascript:;" onclick="jQuery(this).parent().remove();">x</a>--></div><div class="advance_fields"><label>Rules</label><input name="field[%d%][required]" id="required_%d%" value="%d%" type="checkbox" class="checkbox_fields"><label for="required_%d%" class="required">Required</label></div><div class="advance_fields"><label for="validation_message_%d%">Validation Message</label><input type="text" name="field[%d%][validation_message]" id="validation_message_%d%" class="input_fields"></div><div class="advance_fields"><label for="css_%d%">CSS Class Name</label><input type="text" name="field[%d%][css]" id="css_%d%" class="input_fields"></div><div class="advance_fields"> <label for="list_type_%d%">List Type</label><select name="field[%d%][list_type]" id="list_type_%d%"><option>None</option><option value="country">Country</option><option value="us_states">US States</option><option value="can_states">Canada States</option> </select></div><div class="advance_fields"><label for="show_in_profile_%d%">Show in Profile</label><select class="show_in_profile" name="field[%d%][show_in_profile]" id="show_in_profile_%d%"  class="checkbox_fields"><option value="1" selected="selected">Yes</option><option value="0">No</option></select></div></div></div>";s:11:"multiselect";s:2304:"<div class="fields_main"><div class="advance_options_fields"><div class="advance_fields"><label for="label_%d%">Label</label><input type="text" name="field[%d%][label]" id="label_%d%" class="input_fields field_label"></div><div class="advance_fields"><label for="desc_%d%">Description</label><textarea name="field[%d%][desc]" id="desc_%d%" rows="8" cols="16"></textarea></div><div class="advance_fields multi_options sel_options_%d%"><label for="display_%d%">Display Value</label><input type="text" name="field[%d%][display][]" id="display_%d%" class="input_fields character_fields select_option_display"><label for="value_%d%">Value</label><input type="text" name="field[%d%][value][]" id="value_%d%" class="input_fields character_fields select_option_value"><label>Checked</label><input type="checkbox" value="0" id="check_%d%" name="field[%d%][selected][]" class="select_option_checked"><a style="color:white" href="javascript:;" onClick="addOptions(%d%,''checkbox'',jQuery(this));">+</a><!--<a style="color:white;font-size: 13px;margin-left: 2px;" href="javascript:;" onclick="jQuery(this).parent().remove();">x</a>--></div><div class="advance_fields"><label>Rules</label><input name="field[%d%][required]" id="required_%d%" value="%d%" type="checkbox" class="checkbox_fields"><label for="required_%d%" class="required">Required</label></div><div class="advance_fields"><label for="validation_message_%d%">Validation Message</label><input type="text" name="field[%d%][validation_message]" id="validation_message_%d%" class="input_fields"></div><div class="advance_fields"><label for="css_%d%">CSS Class Name</label><input type="text" name="field[%d%][css]" id="css_%d%" class="input_fields"></div><div class="advance_fields"> <label for="list_type_%d%">List Type</label><select name="field[%d%][list_type]" id="list_type_%d%"><option>None</option><option value="country">Country</option><option value="us_states">US States</option><option value="can_states">Canada States</option></select></div><div class="advance_fields"><label for="show_in_profile_%d%">Show in Profile</label><select class="show_in_profile" name="field[%d%][show_in_profile]" id="show_in_profile_%d%"  class="checkbox_fields"><option value="1" selected="selected">Yes</option><option value="0">No</option></select></div></div></div>";s:6:"number";s:1978:"<div class="fields_main"><div class="advance_options_fields"><div class="advance_fields"><label for="label_%d%">Label</label><input type="text" name="field[%d%][label]" id="label_%d%" class="input_fields field_label"></div><div class="advance_fields"><label for="desc_%d%">Description</label><textarea name="field[%d%][desc]" id="desc_%d%" rows="8" cols="16"></textarea></div><div class="advance_fields"><label for="min_%d%">Min</label><input type="text" name="field[%d%][min]" id="min_%d%" class="input_fields character_fields  numeric"></div><div class="advance_fields"><label for="max_%d%">Max</label><input type="text" name="field[%d%][max]" id="max_%d%" class="input_fields character_fields  numeric"></div><div class="advance_fields"><label>Rules</label><input name="field[%d%][required]" id="required_%d%" value="%d%" type="checkbox" class="checkbox_fields"><label for="required_%d%" class="required">Required</label></div><div class="advance_fields"><label for="default_value_%d%">Default Value</label><input type="text" name="field[%d%][default_value]" id="default_value_%d%" class="input_fields field_default_value"></div><div class="advance_fields"><label for="placeholder_%d%">Placeholder</label><input type="text" name="field[%d%][placeholder]" id="placeholder_%d%" class="input_fields field_placeholder"></div><div class="advance_fields"><label for="validation_message_%d%">Validation Message</label><input type="text" name="field[%d%][validation_message]" id="validation_message_%d%" class="input_fields"></div><div class="advance_fields"><label for="css_%d%">CSS Class Name</label><input type="text" name="field[%d%][css]" id="css_%d%" class="input_fields"></div><div class="advance_fields"><label for="show_in_profile_%d%">Show in Profile</label><select name="field[%d%][show_in_profile]" id="show_in_profile_%d%"  class="show_in_profile checkbox_fields"><option value="1" selected="selected">Yes</option><option value="0">No</option></select></div></div></div>";s:8:"checkbox";s:1874:"<div class="fields_main">  <div class="advance_options_fields"><div class="advance_fields"><label for="label_%d%">Label</label><input type="text" name="field[%d%][label]" id="label_%d%" class="input_fields field_label"></div><div class="advance_fields"><label for="desc_%d%">Description</label><textarea name="field[%d%][desc]" id="desc_%d%" rows="8" cols="16"></textarea></div>  <div class="advance_fields multi_options sel_options_%d%"><label for="display_%d%">Display Value</label><input type="text" name="field[%d%][display][]" id="display_%d%" class="input_fields character_fields checkbox_option_display"><label for="value_%d%">Value</label><input type="text" name="field[%d%][value][]" id="value_%d%" class="input_fields character_fields checkbox_option_value"><label>Checked</label><input type="checkbox" value="0" id="check_%d%" name="field[%d%][selected][]" class="checkbox_option_checked"><a style="color:white" href="javascript:;" onClick="addOptions(%d%,''checkbox'');">+</a></div><div class="advance_fields"><label>Rules</label><input name="field[%d%][required]" id="required_%d%" value="%d%" type="checkbox" class="checkbox_fields"><label for="required_%d%" class="required">Required</label></div><div class="advance_fields"><label for="validation_message_%d%">Validation Message</label><input type="text" name="field[%d%][validation_message]" id="validation_message_%d%" class="input_fields"></div><div class="advance_fields"><label for="css_%d%">CSS Class Name</label><input type="text" name="field[%d%][css]" id="css_%d%" class="input_fields"></div> <div class="advance_fields"><label for="show_in_profile_%d%">Show in Profile</label><select class="show_in_profile" name="field[%d%][show_in_profile]" id="show_in_profile_%d%"  class="checkbox_fields"><option value="1" selected="selected">Yes</option><option value="0">No</option></select></div> </div></div>";s:5:"radio";s:1844:"<div class="fields_main"><div class="advance_options_fields"><div class="advance_fields"><label for="label_%d%">Label</label><input type="text" name="field[%d%][label]" id="label_%d%" class="input_fields field_label"></div><div class="advance_fields"><label for="desc_%d%">Description</label><textarea name="field[%d%][desc]" id="desc_%d%" rows="8" cols="16"></textarea></div><div class="advance_fields multi_options sel_options_%d%"><label for="display_%d%">Display Value</label><input type="text" name="field[%d%][display][]" id="display_%d%" class="input_fields character_fields radio_option_display"><label for="value_%d%">Value</label><input type="text" name="field[%d%][value][]" id="value_%d%" class="input_fields character_fields radio_option_value"><label>Checked</label><input type="radio" value="0" id="check_%d%" name="field[%d%][selected][]" class="radio_option_checked"><a style="color:white" href="javascript:;" onClick="addOptions(%d%,''radio'');">+</a></div><div class="advance_fields"><label>Rules</label><input name="field[%d%][required]" id="required_%d%" value="%d%" type="checkbox" class="checkbox_fields"><label for="required_%d%" class="required">Required</label></div><div class="advance_fields"><label for="validation_message_%d%">Validation Message</label><input type="text" name="field[%d%][validation_message]" id="validation_message_%d%" class="input_fields"></div><div class="advance_fields"><label for="css_%d%">CSS Class Name</label><input type="text" name="field[%d%][css]" id="css_%d%" class="input_fields"></div><div class="advance_fields"><label for="show_in_profile_%d%">Show in Profile</label><select class="show_in_profile checkbox_fields" name="field[%d%][show_in_profile]" id="show_in_profile_%d%"><option value="1" selected="selected">Yes</option><option value="0">No</option></select></div></div></div>";s:4:"html";s:457:"<input type="hidden" value="0" class="input_fields" name="field[%d%][meta]" id="meta_%d%"><div class="fields_main"><div class="advance_options_fields"><div class="advance_fields"><label for="label_%d%">Label</label><input type="text" name="field[%d%][label]" id="label_%d%" class="input_fields field_label"></div><div class="advance_fields"><textarea rows="8" id="htmlbox_%d%" class="ckeditor" name="field[%d%][html]" cols="16"></textarea></div></div></div>";s:12:"sectionbreak";s:325:"<input type="hidden" value="0" class="input_fields" name="field[%d%][meta]" id="meta_%d%"><div class="fields_main"><div class="advance_options_fields"><div class="advance_fields"><label for="label_%d%">Label</label><input type="text" name="field[%d%][label]" id="label_%d%" class="input_fields field_label"></div></div></div>";s:9:"pagebreak";s:2077:"<div class="fields_main"><div class="advance_options_fields"><input type="hidden" value="0" class="input_fields" name="field[%d%][meta]" id="meta_%d%"><div class="advance_fields"><label for="next_button_%d%">Next Button</label><div class="calendar_icon_type">  <input class="next_button" type="radio" id="next_button_%d%_text" name="field[%d%][next_button]" value="text" checked="checked">  <label for="next_button_%d%_text">Text </label>  <input class="next_button" type="radio" id="next_button_%d%_url" name="field[%d%][next_button]" value="url"><label for="next_button_%d%_url"> Image</label></div><div id="next_button_url_container_%d%" style="float:left;clear: both;display: none;">  <label for="next_button_%d%_url"> Image URL: </label>  <input type="text" name="field[%d%][next_button_url]" class="input_fields" id="next_button_%d%_url"></div><div id="next_button_text_container_%d%" style="float:left;clear: both;">  <label for="next_button_%d%_text"> Text: </label>  <input type="text" name="field[%d%][next_button_text]" value="Next" class="input_fields" id="next_button_%d%_text"></div></div><div class="advance_fields"><label for="prev_button_%d%">Previous Button</label><div class="calendar_icon_type">  <input class="prev_button" type="radio" id="prev_button_%d%_text" name="field[%d%][prev_button]" value="text" checked="checked">  <label for="prev_button_%d%_text">Text </label>  <input class="prev_button" type="radio" id="prev_button_%d%_url" name="field[%d%][prev_button]" value="url">  <label for="prev_button_%d%_url"> Image</label></div><div id="prev_button_url_container_%d%" style="float:left;clear: both;display: none;">  <label for="prev_button_%d%_url"> Image URL: </label>  <input type="text" name="field[%d%][prev_button_url]" class="input_fields" id="prev_button_%d%_url"></div><div id="prev_button_text_container_%d%" style="float:left;clear: both;">  <label for="prev_button_%d%_text"> Text: </label>  <input type="text" name="field[%d%][prev_button_text]" value="Previous" class="input_fields" id="prev_button_%d%_text"></div></div></div></div>";s:4:"name";s:1527:"<div class="fields_main"><div class="advance_options_fields"><div class="advance_fields"><label for="label_%d%">Label</label><input type="text" name="field[%d%][label]" value="First Name" id="label_%d%" class="input_fields field_label"><input type="hidden" name="field[%d%][validation_rule]"></div><div class="advance_fields"><label for="label2_%d%">Label2</label><input type="text" name="field[%d%][label2]" value="Last Name" id="label2_%d%" class="input_fields field_label2"></div><div class="advance_fields"><label for="desc_%d%">Description</label><textarea name="field[%d%][desc]" id="desc_%d%" rows="8" cols="16"></textarea></div><div class="advance_fields"><label for="required_%d%">Rules</label><input name="field[%d%][required]" id="required_%d%" value="%d%" type="checkbox" class="checkbox_fields"><label for="required_%d%" class="required">Required</label></div><div class="advance_fields"><label for="validation_message_%d%">Validation Message</label><input type="text" name="field[%d%][validation_message]" id="validation_message_%d%" class="input_fields"></div><div class="advance_fields"><label for="css_%d%">CSS Class Name</label><input type="text" name="field[%d%][css]" id="css_%d%" class="input_fields"></div><div class="advance_fields"><label for="show_in_profile_%d%">Show in Profile</label><select name="field[%d%][show_in_profile]" id="show_in_profile_%d%"  class="show_in_profile checkbox_fields"><option value="1" selected="selected">Yes</option><option value="0">No</option></select></div></div></div>";s:4:"time";s:1490:"<div class="fields_main"><div class="advance_options_fields"><div class="advance_fields"><label for="label_%d%">Label</label><input type="text" name="field[%d%][label]" id="label_%d%" class="input_fields field_label"></div><div class="advance_fields"> <label for="time_type_%d%">List Type</label><select class="time_format" name="field[%d%][time_type]" id="time_type_%d%"><option value="12">12 hour</option><option value="24">24 hour</option></select></div><div class="advance_fields"><label for="desc_%d%">Description</label><textarea name="field[%d%][desc]" id="desc_%d%" rows="8" cols="16"></textarea></div><div class="advance_fields"><label>Rules</label><input name="field[%d%][required]" id="required_%d%" value="%d%" type="checkbox" class="checkbox_fields"><label for="required_%d%" class="required">Required</label></div><div class="advance_fields"><label for="validation_message_%d%">Validation Message</label><input type="text" name="field[%d%][validation_message]" id="validation_message_%d%" class="input_fields"></div><div class="advance_fields"><label for="css_%d%">CSS Class Name</label><input type="text" name="field[%d%][css]" id="css_%d%" class="input_fields"></div><div class="advance_fields"><label for="show_in_profile_%d%">Show in Profile</label><select class="show_in_profile" name="field[%d%][show_in_profile]" id="show_in_profile_%d%"  class="checkbox_fields"><option value="1" selected="selected">Yes</option><option value="0">No</option></select></div></div></div>";s:7:"website";s:961:"<div class="fields_main"><div class="advance_options_fields"><div class="advance_fields"><label for="label_%d%">Label</label><input type="text" name="field[%d%][label]" id="label_%d%" class="input_fields field_label"></div><div class="advance_fields"><label for="desc_%d%">Description</label><textarea name="field[%d%][desc]" id="desc_%d%" rows="8" cols="16"></textarea></div><div class="advance_fields"><label>Rules</label><input name="field[%d%][required]" id="required_%d%" value="%d%" type="checkbox" class="checkbox_fields"><label for="required_%d%" class="required">Required</label></div><div class="advance_fields"><label for="validation_message_%d%">Validation Message</label><input type="text" name="field[%d%][validation_message]" id="validation_message_%d%" class="input_fields"></div><div class="advance_fields"><label for="css_%d%">CSS Class Name</label><input type="text" name="field[%d%][css]" id="css_%d%" class="input_fields"></div></div></div>";s:6:"upload";s:1578:"<div class="fields_main"><div class="advance_options_fields"><input type="hidden" class="input_fields" name="field[%d%][type]"><div class="advance_fields"><label for="label_%d%">Label</label><input type="text" name="field[%d%][label]" id="label_%d%" class="input_fields field_label"></div><div class="advance_fields"><label for="file_types_%d%">File Types</label><input type="text" name="field[%d%][file_types]" id="file_types_%d%" class="input_fields"><a class="info" href="javascript:;">Separated with commas (i.e. jpg, gif, png, pdf)</a></div><div clss="advance_fields"><label for="desc_%d%">Description</label><textarea name="field[%d%][desc]" id="desc_%d%" rows="8" cols="16"></textarea></div><div class="advance_fields"><label>Rules</label><input name="field[%d%][required]" id="required_%d%" value="%d%" type="checkbox" class="checkbox_fields"><label for="required_%d%" class="required">Required</label></div><div class="advance_fields"><label for="validation_message_%d%">Validation Message</label><input type="text" name="field[%d%][validation_message]" id="validation_message_%d%" class="input_fields"></div><div class="advance_fields"><label for="css_%d%">CSS Class Name</label><input type="text" name="field[%d%][css]" id="css_%d%" class="input_fields"></div><div class="advance_fields"><label for="show_in_profile_%d%">Show in Profile</label><select class="show_in_profile" name="field[%d%][show_in_profile]" id="show_in_profile_%d%"  class="checkbox_fields"><option value="1" selected="selected">Yes</option><option value="0">No</option></select></div></div></div>";s:11:"profile_pic";s:1367:"<div class="fields_main"><div class="advance_options_fields"><input type="hidden" class="input_fields" name="field[%d%][type]"><input type="hidden" id="default_profile_pic"><div class="advance_fields"><label for="label_%d%">Label</label><input type="text" name="field[%d%][label]" id="label_%d%" class="input_fields field_label"></div><div clss="advance_fields"><label for="desc_%d%">Description</label><textarea name="field[%d%][desc]" id="desc_%d%" rows="8" cols="16"></textarea></div><div class="advance_fields"><label>Rules</label><input name="field[%d%][required]" id="required_%d%" value="%d%" type="checkbox" class="checkbox_fields"><label for="required_%d%" class="required">Required</label></div><div class="advance_fields"><label for="validation_message_%d%">Validation Message</label><input type="text" name="field[%d%][validation_message]" id="validation_message_%d%" class="input_fields"></div><div class="advance_fields"><label for="css_%d%">CSS Class Name</label><input type="text" name="field[%d%][css]" id="css_%d%" class="input_fields"></div><div class="advance_fields"><label for="show_in_profile_%d%">Show in Profile</label><select class="show_in_profile" name="field[%d%][show_in_profile]" id="show_in_profile_%d%"  class="checkbox_fields"><option value="1" selected="selected">Yes</option><option value="0">No</option></select></div></div></div>";s:7:"address";s:14955:"<div class="fields_main"><div class="advance_options_fields"><div class="advance_fields"><label for="label_%d%">Label</label><input type="text" name="field[%d%][label]" id="label_%d%" class="input_fields field_label"></div><div class="advance_fields"> <label for="address_type_%d%">List Type</label><select class="address_type" name="field[%d%][address_type]" id="address_type_%d%"><option value="International">International</option><option value="United States">United States</option><option value="Canada">Canada</option></select></div><div id="default_country_div_%d%" class="advance_fields"> <label for="default_country_%d%">Default Country</label><select class="default_country" name="field[%d%][default_country]" id="default_country_%d%"><option value="" selected="selected"></option><option value="Afghanistan">Afghanistan</option><option value="Albania">Albania</option><option value="Algeria">Algeria</option><option value="American Samoa">American Samoa</option><option value="Andorra">Andorra</option><option value="Angola">Angola</option><option value="Antigua and Barbuda">Antigua and Barbuda</option><option value="Argentina">Argentina</option><option value="Armenia">Armenia</option><option value="Australia">Australia</option><option value="Austria">Austria</option><option value="Azerbaijan">Azerbaijan</option><option value="Bahamas">Bahamas</option><option value="Bahrain">Bahrain</option><option value="Bangladesh">Bangladesh</option><option value="Barbados">Barbados</option><option value="Belarus">Belarus</option><option value="Belgium">Belgium</option><option value="Belize">Belize</option><option value="Benin">Benin</option><option value="Bermuda">Bermuda</option><option value="Bhutan">Bhutan</option><option value="Bolivia">Bolivia</option><option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option><option value="Botswana">Botswana</option><option value="Brazil">Brazil</option><option value="Brunei">Brunei</option><option value="Bulgaria">Bulgaria</option><option value="Burkina Faso">Burkina Faso</option><option value="Burundi">Burundi</option><option value="Cambodia">Cambodia</option><option value="Cameroon">Cameroon</option><option value="Canada">Canada</option><option value="Cape Verde">Cape Verde</option><option value="Central African Republic">Central African Republic</option><option value="Chad">Chad</option><option value="Chile">Chile</option><option value="China">China</option><option value="Colombia">Colombia</option><option value="Comoros">Comoros</option><option value="Congo, Democratic Republic of the">Congo, Democratic Republic of the</option><option value="Congo, Republic of the">Congo, Republic of the</option><option value="Costa Rica">Costa Rica</option><option value="Côte d''Ivoire">Côte d\\''Ivoire</option><option value="Croatia">Croatia</option><option value="Cuba">Cuba</option><option value="Cyprus">Cyprus</option><option value="Czech Republic">Czech Republic</option><option value="Denmark">Denmark</option><option value="Djibouti">Djibouti</option><option value="Dominica">Dominica</option><option value="Dominican Republic">Dominican Republic</option><option value="East Timor">East Timor</option><option value="Ecuador">Ecuador</option><option value="Egypt">Egypt</option><option value="El Salvador">El Salvador</option><option value="Equatorial Guinea">Equatorial Guinea</option><option value="Eritrea">Eritrea</option><option value="Estonia">Estonia</option><option value="Ethiopia">Ethiopia</option><option value="Fiji">Fiji</option><option value="Finland">Finland</option><option value="France">France</option><option value="Gabon">Gabon</option><option value="Gambia">Gambia</option><option value="Georgia">Georgia</option><option value="Germany">Germany</option><option value="Ghana">Ghana</option><option value="Greece">Greece</option><option value="Greenland">Greenland</option><option value="Grenada">Grenada</option><option value="Guam">Guam</option><option value="Guatemala">Guatemala</option><option value="Guinea">Guinea</option><option value="Guinea-Bissau">Guinea-Bissau</option><option value="Guyana">Guyana</option><option value="Haiti">Haiti</option><option value="Honduras">Honduras</option><option value="Hong Kong">Hong Kong</option><option value="Hungary">Hungary</option><option value="Iceland">Iceland</option><option value="India">India</option><option value="Indonesia">Indonesia</option><option value="Iran">Iran</option><option value="Iraq">Iraq</option><option value="Ireland">Ireland</option><option value="Israel">Israel</option><option value="Italy">Italy</option><option value="Jamaica">Jamaica</option><option value="Japan">Japan</option><option value="Jordan">Jordan</option><option value="Kazakhstan">Kazakhstan</option><option value="Kenya">Kenya</option><option value="Kiribati">Kiribati</option><option value="North Korea">North Korea</option><option value="South Korea">South Korea</option><option value="Kuwait">Kuwait</option><option value="Kyrgyzstan">Kyrgyzstan</option><option value="Laos">Laos</option><option value="Latvia">Latvia</option><option value="Lebanon">Lebanon</option><option value="Lesotho">Lesotho</option><option value="Liberia">Liberia</option><option value="Libya">Libya</option><option value="Liechtenstein">Liechtenstein</option><option value="Lithuania">Lithuania</option><option value="Luxembourg">Luxembourg</option><option value="Macedonia">Macedonia</option><option value="Madagascar">Madagascar</option><option value="Malawi">Malawi</option><option value="Malaysia">Malaysia</option><option value="Maldives">Maldives</option><option value="Mali">Mali</option><option value="Malta">Malta</option><option value="Marshall Islands">Marshall Islands</option><option value="Mauritania">Mauritania</option><option value="Mauritius">Mauritius</option><option value="Mexico">Mexico</option><option value="Micronesia">Micronesia</option><option value="Moldova">Moldova</option><option value="Monaco">Monaco</option><option value="Mongolia">Mongolia</option><option value="Montenegro">Montenegro</option><option value="Morocco">Morocco</option><option value="Mozambique">Mozambique</option><option value="Myanmar">Myanmar</option><option value="Namibia">Namibia</option><option value="Nauru">Nauru</option><option value="Nepal">Nepal</option><option value="Netherlands">Netherlands</option><option value="New Zealand">New Zealand</option><option value="Nicaragua">Nicaragua</option><option value="Niger">Niger</option><option value="Nigeria">Nigeria</option><option value="Norway">Norway</option><option value="Northern Mariana Islands">Northern Mariana Islands</option><option value="Oman">Oman</option><option value="Pakistan">Pakistan</option><option value="Palau">Palau</option><option value="Palestine">Palestine</option><option value="Panama">Panama</option><option value="Papua New Guinea">Papua New Guinea</option><option value="Paraguay">Paraguay</option><option value="Peru">Peru</option><option value="Philippines">Philippines</option><option value="Poland">Poland</option><option value="Portugal">Portugal</option><option value="Puerto Rico">Puerto Rico</option><option value="Qatar">Qatar</option><option value="Romania">Romania</option><option value="Russia">Russia</option><option value="Rwanda">Rwanda</option><option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option><option value="Saint Lucia">Saint Lucia</option><option value="Saint Vincent and the Grenadines">Saint Vincent and the Grenadines</option><option value="Samoa">Samoa</option><option value="San Marino">San Marino</option><option value="Sao Tome and Principe">Sao Tome and Principe</option><option value="Saudi Arabia">Saudi Arabia</option><option value="Senegal">Senegal</option><option value="Serbia and Montenegro">Serbia and Montenegro</option><option value="Seychelles">Seychelles</option><option value="Sierra Leone">Sierra Leone</option><option value="Singapore">Singapore</option><option value="Slovakia">Slovakia</option><option value="Slovenia">Slovenia</option><option value="Solomon Islands">Solomon Islands</option><option value="Somalia">Somalia</option><option value="South Africa">South Africa</option><option value="Spain">Spain</option><option value="Sri Lanka">Sri Lanka</option><option value="Sudan">Sudan</option><option value="Sudan, South">Sudan, South</option><option value="Suriname">Suriname</option><option value="Swaziland">Swaziland</option><option value="Sweden">Sweden</option><option value="Switzerland">Switzerland</option><option value="Syria">Syria</option><option value="Taiwan">Taiwan</option><option value="Tajikistan">Tajikistan</option><option value="Tanzania">Tanzania</option><option value="Thailand">Thailand</option><option value="Togo">Togo</option><option value="Tonga">Tonga</option><option value="Trinidad and Tobago">Trinidad and Tobago</option><option value="Tunisia">Tunisia</option><option value="Turkey">Turkey</option><option value="Turkmenistan">Turkmenistan</option><option value="Tuvalu">Tuvalu</option><option value="Uganda">Uganda</option><option value="Ukraine">Ukraine</option><option value="United Arab Emirates">United Arab Emirates</option><option value="United Kingdom">United Kingdom</option><option value="United States">United States</option><option value="Uruguay">Uruguay</option><option value="Uzbekistan">Uzbekistan</option><option value="Vanuatu">Vanuatu</option><option value="Vatican City">Vatican City</option><option value="Venezuela">Venezuela</option><option value="Vietnam">Vietnam</option><option value="Virgin Islands, British">Virgin Islands, British</option><option value="Virgin Islands, U.S.">Virgin Islands, U.S.</option><option value="Yemen">Yemen</option><option value="Zambia">Zambia</option><option value="Zimbabwe">Zimbabwe</option></select></div><div class="advance_fields"><label for="desc_%d%">Description</label><textarea name="field[%d%][desc]" id="desc_%d%" rows="8" cols="16"></textarea></div><div class="advance_fields"><label for="required_%d%">Rules</label><input name="field[%d%][required]" id="required_%d%" value="%d%" type="checkbox" class="checkbox_fields"><label for="required_%d%" class="required">Required</label></div><div class="advance_fields"><label for="hide_address2_%d%">Hide Address 2</label><input onChange="checkEvents(this,''address_address2_%d%'')" name="field[%d%][hide_address2]" id="hide_address2_%d%" value="%d%" type="checkbox" class="checkbox_fields"><label for="hide_address2_%d%" class="required"></label></div><div class="advance_fields"><label for="hide_state_%d%">Hide State</label><input class="hide_state" name="field[%d%][hide_state]" id="hide_state_%d%" value="%d%" type="checkbox" class="checkbox_fields"><label for="hide_state_%d%" class="required"></label></div><div style="display:none;" id="default_state_div_%d%" class="advance_fields"><label for="default_state_%d%">Default State</label><select id="us_states_%d%" style="display:none;" class="default_state us_states_%d%" name="field[%d%][us_default_state]"><option value="" selected="selected"></option><option value="Alabama">Alabama</option><option value="Alaska">Alaska</option><option value="Arizona">Arizona</option><option value="Arkansas">Arkansas</option><option value="California">California</option><option value="Colorado">Colorado</option><option value="Connecticut">Connecticut</option><option value="Delaware">Delaware</option><option value="District of Columbia">District of Columbia</option><option value="Florida">Florida</option><option value="Georgia">Georgia</option><option value="Hawaii">Hawaii</option><option value="Idaho">Idaho</option><option value="Illinois">Illinois</option><option value="Indiana">Indiana</option><option value="Iowa">Iowa</option><option value="Kansas">Kansas</option><option value="Kentucky">Kentucky</option><option value="Louisiana">Louisiana</option><option value="Maine">Maine</option><option value="Maryland">Maryland</option><option value="Massachusetts">Massachusetts</option><option value="Michigan">Michigan</option><option value="Minnesota">Minnesota</option><option value="Mississippi">Mississippi</option><option value="Missouri">Missouri</option><option value="Montana">Montana</option><option value="Nebraska">Nebraska</option><option value="Nevada">Nevada</option><option value="New Hampshire">New Hampshire</option><option value="New Jersey">New Jersey</option><option value="New Mexico">New Mexico</option><option value="New York">New York</option><option value="North Carolina">North Carolina</option><option value="North Dakota">North Dakota</option><option value="Ohio">Ohio</option><option value="Oklahoma">Oklahoma</option><option value="Oregon">Oregon</option><option value="Pennsylvania">Pennsylvania</option><option value="Rhode Island">Rhode Island</option><option value="South Carolina">South Carolina</option><option value="South Dakota">South Dakota</option><option value="Tennessee">Tennessee</option><option value="Texas">Texas</option><option value="Utah">Utah</option><option value="Vermont">Vermont</option><option value="Virginia">Virginia</option><option value="Washington">Washington</option><option value="West Virginia">West Virginia</option><option value="Wisconsin">Wisconsin</option><option value="Wyoming">Wyoming</option><option value="Armed Forces Americas">Armed Forces Americas</option><option value="Armed Forces Europe">Armed Forces Europe</option><option value="Armed Forces Pacific">Armed Forces Pacific</option></select><select id="can_states_%d%" style="display:none;" class="default_state can_states_%d%" name="field[%d%][canada_default_state]"><option value="" selected="selected"></option><option value="Alberta">Alberta</option><option value="British Columbia">British Columbia</option><option value="Manitoba">Manitoba</option><option value="New Brunswick">New Brunswick</option><option value="Newfoundland &amp; Labrador">Newfoundland and Labrador</option><option value="Northwest Territories">Northwest Territories</option><option value="Nova Scotia">Nova Scotia</option><option value="Nunavut">Nunavut</option><option value="Ontario">Ontario</option><option value="Prince Edward Island">Prince Edward Island</option><option value="Quebec">Quebec</option><option value="Saskatchewan">Saskatchewan</option><option value="Yukon">Yukon</option></select></div><div class="advance_fields"><label for="validation_message_%d%">Validation Message</label><input type="text" name="field[%d%][validation_message]" id="validation_message_%d%" class="input_fields"></div><div class="advance_fields"><label for="css_%d%">CSS Class Name</label><input type="text" name="field[%d%][css]" id="css_%d%" class="input_fields"></div><div class="advance_fields"><label for="show_in_profile_%d%">Show in Profile</label><select class="show_in_profile" name="field[%d%][show_in_profile]" id="show_in_profile_%d%"  class="checkbox_fields"><option value="1" selected="selected">Yes</option><option value="0">No</option></select></div></div></div>";s:7:"captcha";s:604:"<div class="fields_main"><div class="advance_options_fields"><input type="hidden" class="input_fields" name="field[%d%][type]"><div class="advance_fields"><label for="label_%d%">Label</label><input type="text" name="field[%d%][label]" id="label_%d%" class="input_fields field_label"></div><div class="advance_fields piereg_recaptcha_type"><input type="hidden" class="input_fields" name="field[%d%][recaptcha_type]" value="2"></div><div class="advance_fields piereg_recaptcha_note"><label><strong>Note:</strong> Please make sure that Re-captcha keys are entered in Settings page.</label></div></div></div>";s:12:"math_captcha";s:1015:"<div class="fields_main"><div class="advance_options_fields"><input type="hidden" value="1" name="field[%d%][required]"><div class="advance_fields"><label for="label_%d%">Label</label><input type="text" name="field[%d%][label]" value="Math Captcha" id="label_%d%" class="input_fields field_label"></div><div class="advance_fields"><label for="desc_%d%">Description</label><textarea name="field[%d%][desc]" id="desc_%d%" rows="8" cols="16"></textarea></div><div class="advance_fields"><label for="placeholder_%d%">Placeholder</label><input type="text" name="field[%d%][placeholder]" id="placeholder_%d%" class="input_fields field_placeholder"></div><div class="advance_fields"><label for="validation_message_%d%">Validation Message</label><input type="text" name="field[%d%][validation_message]" id="validation_message_%d%" class="input_fields"></div><div class="advance_fields"><label for="css_%d%">CSS Class Name</label><input type="text" name="field[%d%][css]" id="css_%d%" class="input_fields"></div></div></div>";s:5:"phone";s:1831:"<div class="fields_main"><div class="advance_options_fields"><input type="hidden" class="input_fields" name="field[%d%][type]"><div class="advance_fields"><label for="label_%d%">Label</label><input type="text" name="field[%d%][label]" id="label_%d%" class="input_fields field_label"></div><div class="advance_fields"><label for="desc_%d%">Description</label><textarea name="field[%d%][desc]" id="desc_%d%" rows="8" cols="16"></textarea></div><div class="advance_fields"><label for="required_%d%">Rules</label><input name="field[%d%][required]" id="required_%d%" value="%d%" type="checkbox" class="checkbox_fields"><label for="required_%d%" class="required">Required</label></div><div class="advance_fields"><label for="default_value_%d%">Default Value</label><input type="text" name="field[%d%][default_value]" id="default_value_%d%" class="input_fields field_default_value"></div><div class="advance_fields"> <label for="phone_format_%d%">Phone Format</label><select class="phone_format" name="field[%d%][phone_format]" id="phone_format_%d%"><option value="standard">USA Format (###) ###-####</option><option value="international">International</option></select></div><div class="advance_fields"><label for="validation_message_%d%">Validation Message</label><input type="text" name="field[%d%][validation_message]" id="validation_message_%d%" class="input_fields"></div><div class="advance_fields"><label for="css_%d%">CSS Class Name</label><input type="text" name="field[%d%][css]" id="css_%d%" class="input_fields"></div><div class="advance_fields"><label for="show_in_profile_%d%">Show in Profile</label><select class="show_in_profile" name="field[%d%][show_in_profile]" id="show_in_profile_%d%"  class="checkbox_fields"><option value="1" selected="selected">Yes</option><option value="0">No</option></select></div></div></div>";s:4:"date";s:2993:"<div class="fields_main"><div class="advance_options_fields"><div class="advance_fields"><label for="label_%d%">Label</label><input type="text" name="field[%d%][label]" id="label_%d%" class="input_fields field_label"></div><div class="advance_fields"><label for="desc_%d%">Description</label><textarea name="field[%d%][desc]" id="desc_%d%" rows="8" cols="16"></textarea></div><div class="advance_fields"><label for="required_%d%">Rules</label><input name="field[%d%][required]" id="required_%d%" value="%d%" type="checkbox" class="checkbox_fields"><label for="required_%d%" class="required">Required</label></div><div class="advance_fields"> <label for="date_type_%d%">Date Format</label><select class="date_format" name="field[%d%][date_format]" id="date_format_%d%"><option value="mm/dd/yy">mm/dd/yy</option><option value="dd/mm/yy">dd/mm/yy</option><option value="dd-mm-yy">dd-mm-yy</option><option value="dd.mm.yy">dd.mm.yy</option><option value="yy/mm/dd">yy/mm/dd</option><option value="yy.mm.dd">yy.mm.dd</option></select></div><div class="advance_fields"> <label for="date_type_%d%">Date Input Type</label><select class="date_type" name="field[%d%][date_type]" id="date_type_%d%"><option value="datefield">Date Field</option><option value="datepicker">Date Picker</option><option value="datedropdown">Date Drop Down</option></select></div><div style="display:none;" id="icon_div_%d%" class="advance_fields"> <label for="date_type_%d%">&nbsp;</label><div class="calendar_icon_type"><input class="calendar_icon" type="radio" id="calendar_icon_%d%_none" name="field[%d%][calendar_icon]" value="none" checked="checked"><label for="calendar_icon_%d%_none"> No Icon </label>&nbsp;&nbsp;<input class="calendar_icon" type="radio" id="calendar_icon_%d%_calendar" name="field[%d%][calendar_icon]" value="calendar"><label for="calendar_icon_%d%_calendar"> Calendar Icon </label>&nbsp;&nbsp;<input class="calendar_icon" type="radio" id="calendar_icon_%d%_custom" name="field[%d%][calendar_icon]" value="custom"><label for="calendar_icon_%d%_custom"> Custom Icon </label></div><div id="icon_url_container_%d%" style="display: none;float:left;clear: both;">  <label for="cfield_calendar_icon_%d%_url"> Image URL: </label>  <input type="text" class="input_fields" name="field[%d%][calendar_icon_url]" id="cfield_calendar_icon_%d%_url"></div></div><div class="advance_fields"><label for="validation_message_%d%">Validation Message</label><input type="text" name="field[%d%][validation_message]" id="validation_message_%d%" class="input_fields"></div><div class="advance_fields"><label for="css_%d%">CSS Class Name</label><input type="text" name="field[%d%][css]" id="css_%d%" class="input_fields"></div><div class="advance_fields"><label for="show_in_profile_%d%">Show in Profile</label><select class="show_in_profile checkbox_fields" name="field[%d%][show_in_profile]" id="show_in_profile_%d%"><option value="1" selected="selected">Yes</option><option value="0">No</option></select></div></div></div>";s:4:"list";s:1676:"<div class="fields_main"><div class="advance_options_fields"><div class="advance_fields"><label for="label_%d%">Label</label><input type="text" name="field[%d%][label]" id="label_%d%" class="input_fields field_label"></div><div class="advance_fields"><label for="desc_%d%">Description</label><textarea name="field[%d%][desc]" id="desc_%d%" rows="8" cols="16"></textarea></div><div class="advance_fields"><label for="required_%d%">Rules</label><input name="field[%d%][required]" id="required_%d%" value="%d%" type="checkbox" class="checkbox_fields"><label for="required_%d%" class="required">Required</label></div><div class="advance_fields"><label for="rows_%d%">Rows</label><input type="text" value="1" name="field[%d%][rows]" id="rows_%d%" class="input_fields character_fields list_rows numeric greaterzero"></div><div class="advance_fields"><label for="cols_%d%">Columns</label><input type="text" value="1" name="field[%d%][cols]" id="cols_%d%" class="input_fields character_fields list_cols numeric greaterzero"></div><div class="advance_fields"><label for="validation_message_%d%">Validation Message</label><input type="text" name="field[%d%][validation_message]" id="validation_message_%d%" class="input_fields"></div><div class="advance_fields"><label for="css_%d%">CSS Class Name</label><input type="text" name="field[%d%][css]" id="css_%d%" class="input_fields"></div><div class="advance_fields"><label for="show_in_profile_%d%">Show in Profile</label><select name="field[%d%][show_in_profile]" id="show_in_profile_%d%"  class="show_in_profile checkbox_fields"><option value="1" selected="selected">Yes</option><option value="0">No</option></select></div></div></div>";s:6:"hidden";s:437:"<div class="fields_main"><div class="advance_options_fields"><div class="advance_fields"><label for="label_%d%">Label</label><input type="text" name="field[%d%][label]" id="label_%d%" class="input_fields field_label"></div><div class="advance_fields"><label for="default_value_%d%">Default Value</label><input type="text" name="field[%d%][default_value]" id="default_value_%d%" class="input_fields field_default_value"></div></div></div>";s:10:"invitation";s:1458:"<div class="fields_main"><div class="advance_options_fields"><div class="advance_fields"><label for="label_%d%">Label</label><input type="text" name="field[%d%][label]" id="label_%d%" class="input_fields field_label"></div><div class="advance_fields"><label for="desc_%d%">Description</label><textarea name="field[%d%][desc]" id="desc_%d%" rows="8" cols="16"></textarea></div><div class="advance_fields"><label for="required_%d%">Rules</label><input name="field[%d%][required]" id="required_%d%" value="%d%" type="checkbox" class="checkbox_fields"><label for="required_%d%" class="required">Required</label></div><div class="advance_fields"><label for="placeholder_%d%">Placeholder</label><input type="text" name="field[%d%][placeholder]" id="placeholder_%d%" class="input_fields field_placeholder"></div><div class="advance_fields"><label for="validation_message_%d%">Validation Message</label><input type="text" name="field[%d%][validation_message]" id="validation_message_%d%" class="input_fields"></div><div class="advance_fields"><label for="css_%d%">CSS Class Name</label><input type="text" name="field[%d%][css]" id="css_%d%" class="input_fields"></div><div class="advance_fields"><label for="show_in_profile_%d%">Show in Profile</label><select class="show_in_profile checkbox_fields" name="field[%d%][show_in_profile]" id="show_in_profile_%d%"><option value="1" selected="selected">Yes</option><option value="0">No</option></select></div></div></div>";s:7:"pricing";s:1113:"<div class="fields_main"><div class="advance_options_fields"><div class="advance_fields"><label for="label_%d%">Label</label><input type="text" name="field[%d%][label]" id="label_%d%" value="Membership" class="input_fields field_label"></div><div class="advance_fields"><label for="desc_%d%">Description</label><textarea name="field[%d%][desc]" id="desc_%d%" rows="8" cols="16"></textarea></div><div class="advance_fields"><label>Allow Payment Gateways</label>%payment_gateways_list_box%</div><div class="advance_fields"><label for="validation_message_%d%">Validation Message</label><input type="text" name="field[%d%][validation_message]" id="validation_message_%d%" class="input_fields"></div><div class="advance_fields"><label for="css_%d%">CSS Class Name</label><input type="text" name="field[%d%][css]" id="css_%d%" class="input_fields"></div><div class="advance_fields"><label for="field_as_%d%">Field as</label><select class="show_in_profile piereg_field_as" name="field[%d%][field_as]" id="field_as_%d%"><option value="1">Dropdown</option><option value="0">Radio Button</option></select></div></div></div>";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2595, 'piereg_form_fields_id', '1', 'yes'),
(2596, 'piereg_form_free_id', '1', 'yes'),
(2597, 'piereg_form_fields_1', 's:10948:"a:34:{s:4:"form";a:7:{s:4:"type";s:4:"form";s:4:"meta";s:1:"0";s:5:"label";s:32:"טופס רישום לברוקר";s:4:"desc";s:58:"נא מלאו את הפרטים כדי לבצע הרשמה";s:3:"css";s:0:"";s:15:"label_alignment";s:3:"top";s:17:"user_verification";s:1:"1";}i:18;a:5:{s:2:"id";s:2:"18";s:4:"type";s:4:"html";s:4:"meta";s:1:"0";s:5:"label";s:0:"";s:4:"html";s:57:"<h2 style="direction: rtl">פרטים אישיים</h2>\r\n";}i:5;a:10:{s:2:"id";s:1:"5";s:4:"type";s:4:"name";s:5:"label";s:13:"שם פרטי";s:15:"validation_rule";s:0:"";s:6:"label2";s:15:"שם משפחה";s:4:"desc";s:0:"";s:8:"required";s:1:"5";s:18:"validation_message";s:0:"";s:3:"css";s:31:"form-control col-md-6 col-sm-12";s:15:"show_in_profile";s:1:"1";}i:6;a:8:{s:2:"id";s:1:"6";s:4:"type";s:11:"profile_pic";s:5:"label";s:23:"תמונת פרופיל";s:4:"desc";s:0:"";s:8:"required";s:1:"6";s:18:"validation_message";s:0:"";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"1";}i:0;a:10:{s:2:"id";s:1:"0";s:4:"type";s:8:"username";s:4:"meta";s:1:"0";s:8:"required";s:1:"1";s:5:"label";s:15:"שם משתמש";s:15:"validation_rule";s:0:"";s:4:"desc";s:0:"";s:11:"placeholder";s:0:"";s:18:"validation_message";s:42:"נא להזין שם משתמש תיקני";s:3:"css";s:12:"form-control";}i:1;a:12:{s:6:"remove";s:1:"0";s:2:"id";s:1:"1";s:4:"type";s:5:"email";s:4:"meta";s:1:"0";s:8:"required";s:1:"1";s:5:"label";s:25:"דואר אלקטרוני";s:15:"validation_rule";s:5:"email";s:6:"label2";s:43:"אשר כתובת דואר אלקטרוני";s:4:"desc";s:0:"";s:11:"placeholder";s:0:"";s:18:"validation_message";s:63:"נא להזין תובת דואר אלקטרוני תיקנית";s:3:"css";s:12:"form-control";}i:2;a:21:{s:6:"remove";s:1:"0";s:2:"id";s:1:"2";s:4:"type";s:8:"password";s:8:"required";s:1:"1";s:15:"validation_rule";s:0:"";s:4:"meta";s:1:"0";s:5:"label";s:10:"סיסמה";s:6:"label2";s:17:"אשר סיסמה";s:4:"desc";s:77:"נא להזין סיסמה באמצעותה תיכנסו בעתיד לאתר.";s:11:"placeholder";s:0:"";s:18:"validation_message";s:37:"נא להזין סיסמה תקנית";s:3:"css";s:12:"form-control";s:10:"show_meter";s:1:"1";s:29:"pass_strength_indicator_label";s:18:"Strength Indicator";s:20:"pass_very_weak_label";s:28:"סיסמה חלשה מאוד";s:15:"pass_weak_label";s:20:"סיסמה חלשה ";s:17:"pass_medium_label";s:41:"סיסמה בעלת חוזק בינוני";s:17:"pass_strong_label";s:19:"סיסמה חזקה";s:19:"pass_mismatch_label";s:32:"סיסמאות לא תואמות";s:17:"restrict_strength";s:1:"2";s:16:"strength_message";s:44:"נא לכתוב סיסמה חזקה יותר";}i:3;a:9:{s:2:"id";s:1:"3";s:4:"type";s:9:"pagebreak";s:4:"meta";s:1:"0";s:11:"next_button";s:4:"text";s:15:"next_button_url";s:0:"";s:16:"next_button_text";s:6:"הבא";s:11:"prev_button";s:4:"text";s:15:"prev_button_url";s:0:"";s:16:"prev_button_text";s:10:"הקודם";}i:16;a:5:{s:2:"id";s:2:"16";s:4:"type";s:4:"html";s:4:"meta";s:1:"0";s:5:"label";s:0:"";s:4:"html";s:57:"<h2 style="direction: rtl">פרטים עסקיים</h2>\r\n";}i:7;a:11:{s:2:"id";s:1:"7";s:4:"type";s:4:"text";s:5:"label";s:19:"שם הסוכנות";s:4:"desc";s:36:"נא למלא את ש הסוכנות";s:6:"length";s:3:"100";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:15:"validation_rule";s:4:"None";s:18:"validation_message";s:0:"";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"1";}i:8;a:8:{s:2:"id";s:1:"8";s:4:"type";s:6:"upload";s:5:"label";s:23:"לוגו הסוכנות";s:10:"file_types";s:0:"";s:4:"desc";s:50:"נא להעלות קבצים מסוג jgp או png";s:18:"validation_message";s:22:"קובץ לא תקני";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"1";}i:9;a:4:{s:2:"id";s:1:"9";s:4:"type";s:7:"default";s:5:"label";s:30:"כתובת אתר אינטנט";s:10:"field_name";s:3:"url";}i:10;a:10:{s:2:"id";s:2:"10";s:4:"type";s:5:"phone";s:5:"label";s:28:"מספר טלפון נייד";s:4:"desc";s:136:"נא למלא מספר טלפון ניייד עסקי בפורמט בינלאומי. במקום ה 0 הראשון נא לכתוב  00972";s:8:"required";s:2:"10";s:13:"default_value";s:0:"";s:12:"phone_format";s:13:"international";s:18:"validation_message";s:33:"מספר טלפון לא תקני";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"1";}i:11;a:9:{s:2:"id";s:2:"11";s:4:"type";s:5:"phone";s:5:"label";s:30:"מספר טלפון במשרד";s:4:"desc";s:136:"נא למלא מספר טלפון ניייד עסקי בפורמט בינלאומי. במקום ה 0 הראשון נא לכתוב  00972";s:13:"default_value";s:0:"";s:12:"phone_format";s:13:"international";s:18:"validation_message";s:33:"מספר טלפון לא תקני";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"1";}i:29;a:11:{s:2:"id";s:2:"29";s:4:"type";s:4:"text";s:5:"label";s:43:"כתובת עמוד פייסבוק עסקי";s:4:"desc";s:70:"מה להדביק כתובת דף הפייסבוק העסקי שלכם";s:6:"length";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:15:"validation_rule";s:7:"website";s:18:"validation_message";s:31:"כתובת דף לא תקנית";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"1";}i:30;a:11:{s:2:"id";s:2:"30";s:4:"type";s:4:"text";s:5:"label";s:45:"קישור לחשבון יוטיוב עסקי";s:4:"desc";s:107:"במידה ויש ברשותכם חשבון יוטיוב עסקי נא הדביקו את כתובת הדף.";s:6:"length";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:15:"validation_rule";s:7:"website";s:18:"validation_message";s:31:"כתובת דף לא תקנית";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"1";}i:38;a:4:{s:2:"id";s:2:"38";s:4:"type";s:7:"default";s:5:"label";s:31:"רשום מעט על עצמך. ";s:10:"field_name";s:11:"description";}i:14;a:10:{s:2:"id";s:2:"14";s:4:"type";s:11:"multiselect";s:5:"label";s:21:"אזור פעילות";s:4:"desc";s:0:"";s:7:"display";a:3:{i:0;s:8:"דרום";i:1;s:8:"מרכז";i:2;s:8:"צפון";}s:5:"value";a:3:{i:0;s:8:"דרום";i:1;s:8:"מרכז";i:2;s:8:"צפון";}s:18:"validation_message";s:0:"";s:3:"css";s:12:"form-control";s:9:"list_type";s:4:"None";s:15:"show_in_profile";s:1:"1";}i:26;a:9:{s:2:"id";s:2:"26";s:4:"type";s:9:"pagebreak";s:4:"meta";s:1:"0";s:11:"next_button";s:4:"text";s:15:"next_button_url";s:0:"";s:16:"next_button_text";s:6:"הבא";s:11:"prev_button";s:4:"text";s:15:"prev_button_url";s:0:"";s:16:"prev_button_text";s:10:"הקודם";}i:27;a:5:{s:2:"id";s:2:"27";s:4:"type";s:4:"html";s:4:"meta";s:1:"0";s:5:"label";s:0:"";s:4:"html";s:44:"<h2 style="direction: rtl">קבצים</h2>\r\n";}i:19;a:9:{s:2:"id";s:2:"19";s:4:"type";s:6:"upload";s:5:"label";s:30:"תעודת עוסק מורשה";s:10:"file_types";s:0:"";s:4:"desc";s:61:"נא לסרוק ולהעלות תעודת עוסק מורשה";s:8:"required";s:2:"19";s:18:"validation_message";s:26:"נא להעלות קובץ";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"1";}i:20;a:8:{s:2:"id";s:2:"20";s:4:"type";s:6:"upload";s:5:"label";s:34:"תעודת רישיון תיווך";s:10:"file_types";s:0:"";s:4:"desc";s:68:"נא להעלות צילום של תעודת רישיון תיווך";s:18:"validation_message";s:26:"נא להעלות קובץ";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"1";}i:21;a:9:{s:2:"id";s:2:"21";s:4:"type";s:6:"upload";s:5:"label";s:45:"צילום כרטיס רישיון תיווך";s:10:"file_types";s:0:"";s:4:"desc";s:63:"נא להעלות צילום כרטיס רישיון תיווך";s:8:"required";s:2:"21";s:18:"validation_message";s:26:"נא להעלות קובץ";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"1";}i:22;a:8:{s:2:"id";s:2:"22";s:4:"type";s:6:"upload";s:5:"label";s:21:"חוזה שכירות";s:10:"file_types";s:0:"";s:4:"desc";s:82:"למנהלי משרד בלבד, לסוכנים במשרד אין צורך כרגע";s:18:"validation_message";s:26:"נא להעלות קובץ";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"1";}i:23;a:5:{s:2:"id";s:2:"23";s:4:"type";s:4:"html";s:4:"meta";s:1:"0";s:5:"label";s:0:"";s:4:"html";s:124:"<p style="direction: rtl">עשר חשבוניות (צילום) על עסקאות שבוצעו בשנה האחרונה.</p>\r\n";}i:24;a:8:{s:2:"id";s:2:"24";s:4:"type";s:6:"upload";s:5:"label";s:38:"עשר חשבוניות אחרונות";s:10:"file_types";s:0:"";s:4:"desc";s:0:"";s:18:"validation_message";s:26:"נא להעלות קובץ";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"0";}i:31;a:9:{s:2:"id";s:2:"31";s:4:"type";s:9:"pagebreak";s:4:"meta";s:1:"0";s:11:"next_button";s:4:"text";s:15:"next_button_url";s:0:"";s:16:"next_button_text";s:4:"Next";s:11:"prev_button";s:4:"text";s:15:"prev_button_url";s:0:"";s:16:"prev_button_text";s:8:"Previous";}i:32;a:5:{s:2:"id";s:2:"32";s:4:"type";s:4:"html";s:4:"meta";s:1:"0";s:5:"label";s:0:"";s:4:"html";s:210:"<h2 style="direction: rtl">תעודות והסמכות</h2>\r\n\r\n<p dir="rtl">כרגע אנו מאשרים העלאה של עד חמש תעודות. בהמשך יתכן ונרחיב אפשרות זו.&nbsp;</p>\r\n";}i:33;a:8:{s:2:"id";s:2:"33";s:4:"type";s:6:"upload";s:5:"label";s:23:"תעודת הסמכה 1";s:10:"file_types";s:0:"";s:4:"desc";s:0:"";s:18:"validation_message";s:22:"קובץ לא תקני";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"1";}i:34;a:8:{s:2:"id";s:2:"34";s:4:"type";s:6:"upload";s:5:"label";s:23:"תעודת הסמכה 2";s:10:"file_types";s:0:"";s:4:"desc";s:0:"";s:18:"validation_message";s:22:"קובץ לא תקני";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"1";}i:35;a:8:{s:2:"id";s:2:"35";s:4:"type";s:6:"upload";s:5:"label";s:23:"תעודת הסמכה 3";s:10:"file_types";s:0:"";s:4:"desc";s:0:"";s:18:"validation_message";s:22:"קובץ לא תקני";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"1";}i:36;a:8:{s:2:"id";s:2:"36";s:4:"type";s:6:"upload";s:5:"label";s:23:"תעודת הסמכה 4";s:10:"file_types";s:0:"";s:4:"desc";s:0:"";s:18:"validation_message";s:22:"קובץ לא תקני";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"1";}i:37;a:8:{s:2:"id";s:2:"37";s:4:"type";s:6:"upload";s:5:"label";s:23:"תעודת הסמכה 5";s:10:"file_types";s:0:"";s:4:"desc";s:0:"";s:18:"validation_message";s:22:"קובץ לא תקני";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"1";}s:6:"submit";a:11:{s:5:"label";s:6:"Submit";s:4:"type";s:6:"submit";s:6:"remove";s:1:"0";s:4:"meta";s:1:"0";s:4:"text";s:10:"הרשמו";s:5:"reset";s:1:"0";s:10:"reset_text";s:5:"Reset";s:12:"confirmation";s:4:"text";s:12:"redirect_url";s:0:"";s:4:"page";s:3:"473";s:7:"message";s:178:"תידה על מילוי הפרטים, במידה ותימצאו מתאימים להצטרף לברוקר ניצור אתכם קשר בהמשך.\r\n\r\nתודה\r\nצוות ברוקר.";}}";', 'yes'),
(2598, 'pie_fields_prev', 's:1327:"a:5:{s:4:"form";a:7:{s:5:"label";s:17:"Registration Form";s:4:"desc";s:42:"Please fill in the form below to register.";s:15:"label_alignment";s:4:"left";s:3:"css";s:0:"";s:4:"type";s:4:"form";s:4:"meta";i:0;s:5:"reset";i:0;}i:0;a:11:{s:5:"label";s:8:"Username";s:4:"type";s:8:"username";s:2:"id";i:0;s:6:"remove";i:0;s:8:"required";i:1;s:4:"desc";s:0:"";s:6:"length";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:3:"css";s:0:"";s:4:"meta";i:0;}i:1;a:13:{s:5:"label";s:5:"Email";s:6:"label2";s:13:"Confirm Email";s:4:"type";s:5:"email";s:2:"id";i:1;s:6:"remove";i:0;s:8:"required";i:1;s:4:"desc";s:0:"";s:6:"length";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:3:"css";s:0:"";s:15:"validation_rule";s:5:"email";s:4:"meta";i:0;}i:2;a:14:{s:5:"label";s:8:"Password";s:6:"label2";s:16:"Confirm Password";s:4:"type";s:8:"password";s:2:"id";i:2;s:6:"remove";i:0;s:8:"required";i:1;s:4:"desc";s:0:"";s:6:"length";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:3:"css";s:0:"";s:15:"validation_rule";s:0:"";s:4:"meta";i:0;s:10:"show_meter";i:1;}s:6:"submit";a:8:{s:7:"message";s:31:"Thank you for your registration";s:12:"confirmation";s:4:"text";s:4:"text";s:6:"Submit";s:5:"reset";i:0;s:10:"reset_text";s:5:"Reset";s:4:"type";s:6:"submit";s:4:"meta";i:0;s:12:"redirect_url";s:0:"";}}";', 'yes'),
(2599, 'piereg_form_field_option_1', 'a:5:{s:2:"Id";i:1;s:5:"Title";s:32:"טופס רישום לברוקר";s:5:"Views";i:90;s:7:"Entries";i:4;s:6:"Status";s:6:"enable";}', 'yes'),
(2600, 'pieregister_stats_option', 'a:3:{s:5:"login";a:2:{s:4:"view";i:187;s:4:"used";i:32;}s:6:"forgot";a:2:{s:4:"view";i:0;s:4:"used";i:0;}s:8:"register";a:2:{s:4:"view";i:90;s:4:"used";i:4;}}', 'yes'),
(2601, 'piereg_currency', 'a:162:{i:0;a:2:{s:4:"code";s:3:"AFN";s:4:"name";s:19:"Afghanistan Afghani";}i:1;a:2:{s:4:"code";s:3:"ALL";s:4:"name";s:11:"Albania Lek";}i:2;a:2:{s:4:"code";s:3:"DZD";s:4:"name";s:13:"Algeria Dinar";}i:3;a:2:{s:4:"code";s:3:"AOA";s:4:"name";s:13:"Angola Kwanza";}i:4;a:2:{s:4:"code";s:3:"ARS";s:4:"name";s:14:"Argentina Peso";}i:5;a:2:{s:4:"code";s:3:"AMD";s:4:"name";s:12:"Armenia Dram";}i:6;a:2:{s:4:"code";s:3:"AWG";s:4:"name";s:13:"Aruba Guilder";}i:7;a:2:{s:4:"code";s:3:"AUD";s:4:"name";s:16:"Australia Dollar";}i:8;a:2:{s:4:"code";s:3:"AZN";s:4:"name";s:20:"Azerbaijan New Manat";}i:9;a:2:{s:4:"code";s:3:"BSD";s:4:"name";s:14:"Bahamas Dollar";}i:10;a:2:{s:4:"code";s:3:"BHD";s:4:"name";s:13:"Bahrain Dinar";}i:11;a:2:{s:4:"code";s:3:"BDT";s:4:"name";s:15:"Bangladesh Taka";}i:12;a:2:{s:4:"code";s:3:"BBD";s:4:"name";s:15:"Barbados Dollar";}i:13;a:2:{s:4:"code";s:3:"BYR";s:4:"name";s:13:"Belarus Ruble";}i:14;a:2:{s:4:"code";s:3:"BZD";s:4:"name";s:13:"Belize Dollar";}i:15;a:2:{s:4:"code";s:3:"BMD";s:4:"name";s:14:"Bermuda Dollar";}i:16;a:2:{s:4:"code";s:3:"BTN";s:4:"name";s:15:"Bhutan Ngultrum";}i:17;a:2:{s:4:"code";s:3:"BOB";s:4:"name";s:17:"Bolivia Boliviano";}i:18;a:2:{s:4:"code";s:3:"BAM";s:4:"name";s:40:"Bosnia and Herzegovina Convertible Marka";}i:19;a:2:{s:4:"code";s:3:"BWP";s:4:"name";s:13:"Botswana Pula";}i:20;a:2:{s:4:"code";s:3:"BRL";s:4:"name";s:11:"Brazil Real";}i:21;a:2:{s:4:"code";s:3:"BND";s:4:"name";s:24:"Brunei Darussalam Dollar";}i:22;a:2:{s:4:"code";s:3:"BGN";s:4:"name";s:12:"Bulgaria Lev";}i:23;a:2:{s:4:"code";s:3:"BIF";s:4:"name";s:13:"Burundi Franc";}i:24;a:2:{s:4:"code";s:3:"KHR";s:4:"name";s:13:"Cambodia Riel";}i:25;a:2:{s:4:"code";s:3:"CAD";s:4:"name";s:13:"Canada Dollar";}i:26;a:2:{s:4:"code";s:3:"CVE";s:4:"name";s:17:"Cape Verde Escudo";}i:27;a:2:{s:4:"code";s:3:"KYD";s:4:"name";s:21:"Cayman Islands Dollar";}i:28;a:2:{s:4:"code";s:3:"CLP";s:4:"name";s:10:"Chile Peso";}i:29;a:2:{s:4:"code";s:3:"CNY";s:4:"name";s:19:"China Yuan Renminbi";}i:30;a:2:{s:4:"code";s:3:"COP";s:4:"name";s:13:"Colombia Peso";}i:31;a:2:{s:4:"code";s:3:"XOF";s:4:"name";s:51:"CommunautÃ© FinanciÃ¨re Africaine (BCEAO) Franc";}i:32;a:2:{s:4:"code";s:3:"XAF";s:4:"name";s:59:"CommunautÃ© FinanciÃ¨re Africaine (BEAC) CFA Franc BEAC";}i:33;a:2:{s:4:"code";s:3:"KMF";s:4:"name";s:13:"Comoros Franc";}i:34;a:2:{s:4:"code";s:3:"XPF";s:4:"name";s:46:"Comptoirs FranÃ§ais du Pacifique (CFP) Franc";}i:35;a:2:{s:4:"code";s:3:"CDF";s:4:"name";s:20:"Congo/Kinshasa Franc";}i:36;a:2:{s:4:"code";s:3:"CRC";s:4:"name";s:16:"Costa Rica Colon";}i:37;a:2:{s:4:"code";s:3:"HRK";s:4:"name";s:12:"Croatia Kuna";}i:38;a:2:{s:4:"code";s:3:"CUC";s:4:"name";s:21:"Cuba Convertible Peso";}i:39;a:2:{s:4:"code";s:3:"CUP";s:4:"name";s:9:"Cuba Peso";}i:40;a:2:{s:4:"code";s:3:"CZK";s:4:"name";s:21:"Czech Republic Koruna";}i:41;a:2:{s:4:"code";s:3:"DKK";s:4:"name";s:13:"Denmark Krone";}i:42;a:2:{s:4:"code";s:3:"DJF";s:4:"name";s:14:"Djibouti Franc";}i:43;a:2:{s:4:"code";s:3:"DOP";s:4:"name";s:23:"Dominican Republic Peso";}i:44;a:2:{s:4:"code";s:3:"XCD";s:4:"name";s:21:"East Caribbean Dollar";}i:45;a:2:{s:4:"code";s:3:"EGP";s:4:"name";s:11:"Egypt Pound";}i:46;a:2:{s:4:"code";s:3:"SVC";s:4:"name";s:17:"El Salvador Colon";}i:47;a:2:{s:4:"code";s:3:"ERN";s:4:"name";s:13:"Eritrea Nakfa";}i:48;a:2:{s:4:"code";s:3:"ETB";s:4:"name";s:13:"Ethiopia Birr";}i:49;a:2:{s:4:"code";s:3:"EUR";s:4:"name";s:21:"Euro Member Countries";}i:50;a:2:{s:4:"code";s:3:"FKP";s:4:"name";s:33:"Falkland Islands (Malvinas) Pound";}i:51;a:2:{s:4:"code";s:3:"FJD";s:4:"name";s:11:"Fiji Dollar";}i:52;a:2:{s:4:"code";s:3:"GMD";s:4:"name";s:13:"Gambia Dalasi";}i:53;a:2:{s:4:"code";s:3:"GEL";s:4:"name";s:12:"Georgia Lari";}i:54;a:2:{s:4:"code";s:3:"GHS";s:4:"name";s:10:"Ghana Cedi";}i:55;a:2:{s:4:"code";s:3:"GIP";s:4:"name";s:15:"Gibraltar Pound";}i:56;a:2:{s:4:"code";s:3:"GTQ";s:4:"name";s:17:"Guatemala Quetzal";}i:57;a:2:{s:4:"code";s:3:"GGP";s:4:"name";s:14:"Guernsey Pound";}i:58;a:2:{s:4:"code";s:3:"GNF";s:4:"name";s:12:"Guinea Franc";}i:59;a:2:{s:4:"code";s:3:"GYD";s:4:"name";s:13:"Guyana Dollar";}i:60;a:2:{s:4:"code";s:3:"HTG";s:4:"name";s:12:"Haiti Gourde";}i:61;a:2:{s:4:"code";s:3:"HNL";s:4:"name";s:16:"Honduras Lempira";}i:62;a:2:{s:4:"code";s:3:"HKD";s:4:"name";s:16:"Hong Kong Dollar";}i:63;a:2:{s:4:"code";s:3:"HUF";s:4:"name";s:14:"Hungary Forint";}i:64;a:2:{s:4:"code";s:3:"ISK";s:4:"name";s:13:"Iceland Krona";}i:65;a:2:{s:4:"code";s:3:"INR";s:4:"name";s:11:"India Rupee";}i:66;a:2:{s:4:"code";s:3:"IDR";s:4:"name";s:16:"Indonesia Rupiah";}i:67;a:2:{s:4:"code";s:3:"XDR";s:4:"name";s:56:"International Monetary Fund (IMF) Special Drawing Rights";}i:68;a:2:{s:4:"code";s:3:"IRR";s:4:"name";s:9:"Iran Rial";}i:69;a:2:{s:4:"code";s:3:"IQD";s:4:"name";s:10:"Iraq Dinar";}i:70;a:2:{s:4:"code";s:3:"IMP";s:4:"name";s:17:"Isle of Man Pound";}i:71;a:2:{s:4:"code";s:3:"ILS";s:4:"name";s:13:"Israel Shekel";}i:72;a:2:{s:4:"code";s:3:"JMD";s:4:"name";s:14:"Jamaica Dollar";}i:73;a:2:{s:4:"code";s:3:"JPY";s:4:"name";s:9:"Japan Yen";}i:74;a:2:{s:4:"code";s:3:"JEP";s:4:"name";s:12:"Jersey Pound";}i:75;a:2:{s:4:"code";s:3:"JOD";s:4:"name";s:12:"Jordan Dinar";}i:76;a:2:{s:4:"code";s:3:"KZT";s:4:"name";s:16:"Kazakhstan Tenge";}i:77;a:2:{s:4:"code";s:3:"KES";s:4:"name";s:14:"Kenya Shilling";}i:78;a:2:{s:4:"code";s:3:"KPW";s:4:"name";s:17:"Korea (North) Won";}i:79;a:2:{s:4:"code";s:3:"KRW";s:4:"name";s:17:"Korea (South) Won";}i:80;a:2:{s:4:"code";s:3:"KWD";s:4:"name";s:12:"Kuwait Dinar";}i:81;a:2:{s:4:"code";s:3:"KGS";s:4:"name";s:14:"Kyrgyzstan Som";}i:82;a:2:{s:4:"code";s:3:"LAK";s:4:"name";s:8:"Laos Kip";}i:83;a:2:{s:4:"code";s:3:"LBP";s:4:"name";s:13:"Lebanon Pound";}i:84;a:2:{s:4:"code";s:3:"LSL";s:4:"name";s:12:"Lesotho Loti";}i:85;a:2:{s:4:"code";s:3:"LRD";s:4:"name";s:14:"Liberia Dollar";}i:86;a:2:{s:4:"code";s:3:"LYD";s:4:"name";s:11:"Libya Dinar";}i:87;a:2:{s:4:"code";s:3:"MOP";s:4:"name";s:12:"Macau Pataca";}i:88;a:2:{s:4:"code";s:3:"MKD";s:4:"name";s:15:"Macedonia Denar";}i:89;a:2:{s:4:"code";s:3:"MGA";s:4:"name";s:17:"Madagascar Ariary";}i:90;a:2:{s:4:"code";s:3:"MWK";s:4:"name";s:13:"Malawi Kwacha";}i:91;a:2:{s:4:"code";s:3:"MYR";s:4:"name";s:16:"Malaysia Ringgit";}i:92;a:2:{s:4:"code";s:3:"MVR";s:4:"name";s:34:"Maldives (Maldive Islands) Rufiyaa";}i:93;a:2:{s:4:"code";s:3:"MRO";s:4:"name";s:18:"Mauritania Ouguiya";}i:94;a:2:{s:4:"code";s:3:"MUR";s:4:"name";s:15:"Mauritius Rupee";}i:95;a:2:{s:4:"code";s:3:"MXN";s:4:"name";s:11:"Mexico Peso";}i:96;a:2:{s:4:"code";s:3:"MDL";s:4:"name";s:11:"Moldova Leu";}i:97;a:2:{s:4:"code";s:3:"MNT";s:4:"name";s:16:"Mongolia Tughrik";}i:98;a:2:{s:4:"code";s:3:"MAD";s:4:"name";s:14:"Morocco Dirham";}i:99;a:2:{s:4:"code";s:3:"MZN";s:4:"name";s:18:"Mozambique Metical";}i:100;a:2:{s:4:"code";s:3:"MMK";s:4:"name";s:20:"Myanmar (Burma) Kyat";}i:101;a:2:{s:4:"code";s:3:"NAD";s:4:"name";s:14:"Namibia Dollar";}i:102;a:2:{s:4:"code";s:3:"NPR";s:4:"name";s:11:"Nepal Rupee";}i:103;a:2:{s:4:"code";s:3:"ANG";s:4:"name";s:28:"Netherlands Antilles Guilder";}i:104;a:2:{s:4:"code";s:3:"NZD";s:4:"name";s:18:"New Zealand Dollar";}i:105;a:2:{s:4:"code";s:3:"NIO";s:4:"name";s:17:"Nicaragua Cordoba";}i:106;a:2:{s:4:"code";s:3:"NGN";s:4:"name";s:13:"Nigeria Naira";}i:107;a:2:{s:4:"code";s:3:"NOK";s:4:"name";s:12:"Norway Krone";}i:108;a:2:{s:4:"code";s:3:"OMR";s:4:"name";s:9:"Oman Rial";}i:109;a:2:{s:4:"code";s:3:"PKR";s:4:"name";s:14:"Pakistan Rupee";}i:110;a:2:{s:4:"code";s:3:"PAB";s:4:"name";s:13:"Panama Balboa";}i:111;a:2:{s:4:"code";s:3:"PGK";s:4:"name";s:21:"Papua New Guinea Kina";}i:112;a:2:{s:4:"code";s:3:"PYG";s:4:"name";s:16:"Paraguay Guarani";}i:113;a:2:{s:4:"code";s:3:"PEN";s:4:"name";s:14:"Peru Nuevo Sol";}i:114;a:2:{s:4:"code";s:3:"PHP";s:4:"name";s:16:"Philippines Peso";}i:115;a:2:{s:4:"code";s:3:"PLN";s:4:"name";s:12:"Poland Zloty";}i:116;a:2:{s:4:"code";s:3:"QAR";s:4:"name";s:11:"Qatar Riyal";}i:117;a:2:{s:4:"code";s:3:"RON";s:4:"name";s:15:"Romania New Leu";}i:118;a:2:{s:4:"code";s:3:"RUB";s:4:"name";s:12:"Russia Ruble";}i:119;a:2:{s:4:"code";s:3:"RWF";s:4:"name";s:12:"Rwanda Franc";}i:120;a:2:{s:4:"code";s:3:"SHP";s:4:"name";s:18:"Saint Helena Pound";}i:121;a:2:{s:4:"code";s:3:"WST";s:4:"name";s:10:"Samoa Tala";}i:122;a:2:{s:4:"code";s:3:"SAR";s:4:"name";s:18:"Saudi Arabia Riyal";}i:123;a:2:{s:4:"code";s:4:"SPL*";s:4:"name";s:15:"Seborga Luigino";}i:124;a:2:{s:4:"code";s:3:"RSD";s:4:"name";s:12:"Serbia Dinar";}i:125;a:2:{s:4:"code";s:3:"SCR";s:4:"name";s:16:"Seychelles Rupee";}i:126;a:2:{s:4:"code";s:3:"SLL";s:4:"name";s:18:"Sierra Leone Leone";}i:127;a:2:{s:4:"code";s:3:"SGD";s:4:"name";s:16:"Singapore Dollar";}i:128;a:2:{s:4:"code";s:3:"SBD";s:4:"name";s:22:"Solomon Islands Dollar";}i:129;a:2:{s:4:"code";s:3:"SOS";s:4:"name";s:16:"Somalia Shilling";}i:130;a:2:{s:4:"code";s:3:"ZAR";s:4:"name";s:17:"South Africa Rand";}i:131;a:2:{s:4:"code";s:3:"LKR";s:4:"name";s:15:"Sri Lanka Rupee";}i:132;a:2:{s:4:"code";s:3:"SDG";s:4:"name";s:11:"Sudan Pound";}i:133;a:2:{s:4:"code";s:3:"SRD";s:4:"name";s:15:"Suriname Dollar";}i:134;a:2:{s:4:"code";s:3:"SZL";s:4:"name";s:19:"Swaziland Lilangeni";}i:135;a:2:{s:4:"code";s:3:"SEK";s:4:"name";s:12:"Sweden Krona";}i:136;a:2:{s:4:"code";s:3:"CHF";s:4:"name";s:17:"Switzerland Franc";}i:137;a:2:{s:4:"code";s:3:"SYP";s:4:"name";s:11:"Syria Pound";}i:138;a:2:{s:4:"code";s:3:"STD";s:4:"name";s:36:"SÃ£o TomÃ© and PrÃ­ncipe Dobra";}i:139;a:2:{s:4:"code";s:3:"TWD";s:4:"name";s:17:"Taiwan New Dollar";}i:140;a:2:{s:4:"code";s:3:"TJS";s:4:"name";s:17:"Tajikistan Somoni";}i:141;a:2:{s:4:"code";s:3:"TZS";s:4:"name";s:17:"Tanzania Shilling";}i:142;a:2:{s:4:"code";s:3:"THB";s:4:"name";s:13:"Thailand Baht";}i:143;a:2:{s:4:"code";s:3:"TOP";s:4:"name";s:13:"Tonga Pa''anga";}i:144;a:2:{s:4:"code";s:3:"TTD";s:4:"name";s:26:"Trinidad and Tobago Dollar";}i:145;a:2:{s:4:"code";s:3:"TND";s:4:"name";s:13:"Tunisia Dinar";}i:146;a:2:{s:4:"code";s:3:"TRY";s:4:"name";s:11:"Turkey Lira";}i:147;a:2:{s:4:"code";s:3:"TMT";s:4:"name";s:18:"Turkmenistan Manat";}i:148;a:2:{s:4:"code";s:3:"TVD";s:4:"name";s:13:"Tuvalu Dollar";}i:149;a:2:{s:4:"code";s:3:"UGX";s:4:"name";s:15:"Uganda Shilling";}i:150;a:2:{s:4:"code";s:3:"UAH";s:4:"name";s:15:"Ukraine Hryvnia";}i:151;a:2:{s:4:"code";s:3:"AED";s:4:"name";s:27:"United Arab Emirates Dirham";}i:152;a:2:{s:4:"code";s:3:"GBP";s:4:"name";s:20:"United Kingdom Pound";}i:153;a:2:{s:4:"code";s:3:"USD";s:4:"name";s:20:"United States Dollar";}i:154;a:2:{s:4:"code";s:3:"UYU";s:4:"name";s:12:"Uruguay Peso";}i:155;a:2:{s:4:"code";s:3:"UZS";s:4:"name";s:14:"Uzbekistan Som";}i:156;a:2:{s:4:"code";s:3:"VUV";s:4:"name";s:12:"Vanuatu Vatu";}i:157;a:2:{s:4:"code";s:3:"VEF";s:4:"name";s:17:"Venezuela Bolivar";}i:158;a:2:{s:4:"code";s:3:"VND";s:4:"name";s:13:"Viet Nam Dong";}i:159;a:2:{s:4:"code";s:3:"YER";s:4:"name";s:10:"Yemen Rial";}i:160;a:2:{s:4:"code";s:3:"ZMW";s:4:"name";s:13:"Zambia Kwacha";}i:161;a:2:{s:4:"code";s:3:"ZWD";s:4:"name";s:15:"Zimbabwe Dollar";}}', 'yes'),
(2602, 'piereg_plugin_db_version', '3.0', 'yes'),
(2603, 'widget_pie_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(2604, 'widget_pie_login_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(2605, 'widget_pie_forgot_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(2606, 'yuzo_related_post_active_free', '1', 'yes'),
(2607, 'pie_fields', 's:10948:"a:34:{s:4:"form";a:7:{s:4:"type";s:4:"form";s:4:"meta";s:1:"0";s:5:"label";s:32:"טופס רישום לברוקר";s:4:"desc";s:58:"נא מלאו את הפרטים כדי לבצע הרשמה";s:3:"css";s:0:"";s:15:"label_alignment";s:3:"top";s:17:"user_verification";s:1:"1";}i:18;a:5:{s:2:"id";s:2:"18";s:4:"type";s:4:"html";s:4:"meta";s:1:"0";s:5:"label";s:0:"";s:4:"html";s:57:"<h2 style="direction: rtl">פרטים אישיים</h2>\r\n";}i:5;a:10:{s:2:"id";s:1:"5";s:4:"type";s:4:"name";s:5:"label";s:13:"שם פרטי";s:15:"validation_rule";s:0:"";s:6:"label2";s:15:"שם משפחה";s:4:"desc";s:0:"";s:8:"required";s:1:"5";s:18:"validation_message";s:0:"";s:3:"css";s:31:"form-control col-md-6 col-sm-12";s:15:"show_in_profile";s:1:"1";}i:6;a:8:{s:2:"id";s:1:"6";s:4:"type";s:11:"profile_pic";s:5:"label";s:23:"תמונת פרופיל";s:4:"desc";s:0:"";s:8:"required";s:1:"6";s:18:"validation_message";s:0:"";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"1";}i:0;a:10:{s:2:"id";s:1:"0";s:4:"type";s:8:"username";s:4:"meta";s:1:"0";s:8:"required";s:1:"1";s:5:"label";s:15:"שם משתמש";s:15:"validation_rule";s:0:"";s:4:"desc";s:0:"";s:11:"placeholder";s:0:"";s:18:"validation_message";s:42:"נא להזין שם משתמש תיקני";s:3:"css";s:12:"form-control";}i:1;a:12:{s:6:"remove";s:1:"0";s:2:"id";s:1:"1";s:4:"type";s:5:"email";s:4:"meta";s:1:"0";s:8:"required";s:1:"1";s:5:"label";s:25:"דואר אלקטרוני";s:15:"validation_rule";s:5:"email";s:6:"label2";s:43:"אשר כתובת דואר אלקטרוני";s:4:"desc";s:0:"";s:11:"placeholder";s:0:"";s:18:"validation_message";s:63:"נא להזין תובת דואר אלקטרוני תיקנית";s:3:"css";s:12:"form-control";}i:2;a:21:{s:6:"remove";s:1:"0";s:2:"id";s:1:"2";s:4:"type";s:8:"password";s:8:"required";s:1:"1";s:15:"validation_rule";s:0:"";s:4:"meta";s:1:"0";s:5:"label";s:10:"סיסמה";s:6:"label2";s:17:"אשר סיסמה";s:4:"desc";s:77:"נא להזין סיסמה באמצעותה תיכנסו בעתיד לאתר.";s:11:"placeholder";s:0:"";s:18:"validation_message";s:37:"נא להזין סיסמה תקנית";s:3:"css";s:12:"form-control";s:10:"show_meter";s:1:"1";s:29:"pass_strength_indicator_label";s:18:"Strength Indicator";s:20:"pass_very_weak_label";s:28:"סיסמה חלשה מאוד";s:15:"pass_weak_label";s:20:"סיסמה חלשה ";s:17:"pass_medium_label";s:41:"סיסמה בעלת חוזק בינוני";s:17:"pass_strong_label";s:19:"סיסמה חזקה";s:19:"pass_mismatch_label";s:32:"סיסמאות לא תואמות";s:17:"restrict_strength";s:1:"2";s:16:"strength_message";s:44:"נא לכתוב סיסמה חזקה יותר";}i:3;a:9:{s:2:"id";s:1:"3";s:4:"type";s:9:"pagebreak";s:4:"meta";s:1:"0";s:11:"next_button";s:4:"text";s:15:"next_button_url";s:0:"";s:16:"next_button_text";s:6:"הבא";s:11:"prev_button";s:4:"text";s:15:"prev_button_url";s:0:"";s:16:"prev_button_text";s:10:"הקודם";}i:16;a:5:{s:2:"id";s:2:"16";s:4:"type";s:4:"html";s:4:"meta";s:1:"0";s:5:"label";s:0:"";s:4:"html";s:57:"<h2 style="direction: rtl">פרטים עסקיים</h2>\r\n";}i:7;a:11:{s:2:"id";s:1:"7";s:4:"type";s:4:"text";s:5:"label";s:19:"שם הסוכנות";s:4:"desc";s:36:"נא למלא את ש הסוכנות";s:6:"length";s:3:"100";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:15:"validation_rule";s:4:"None";s:18:"validation_message";s:0:"";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"1";}i:8;a:8:{s:2:"id";s:1:"8";s:4:"type";s:6:"upload";s:5:"label";s:23:"לוגו הסוכנות";s:10:"file_types";s:0:"";s:4:"desc";s:50:"נא להעלות קבצים מסוג jgp או png";s:18:"validation_message";s:22:"קובץ לא תקני";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"1";}i:9;a:4:{s:2:"id";s:1:"9";s:4:"type";s:7:"default";s:5:"label";s:30:"כתובת אתר אינטנט";s:10:"field_name";s:3:"url";}i:10;a:10:{s:2:"id";s:2:"10";s:4:"type";s:5:"phone";s:5:"label";s:28:"מספר טלפון נייד";s:4:"desc";s:136:"נא למלא מספר טלפון ניייד עסקי בפורמט בינלאומי. במקום ה 0 הראשון נא לכתוב  00972";s:8:"required";s:2:"10";s:13:"default_value";s:0:"";s:12:"phone_format";s:13:"international";s:18:"validation_message";s:33:"מספר טלפון לא תקני";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"1";}i:11;a:9:{s:2:"id";s:2:"11";s:4:"type";s:5:"phone";s:5:"label";s:30:"מספר טלפון במשרד";s:4:"desc";s:136:"נא למלא מספר טלפון ניייד עסקי בפורמט בינלאומי. במקום ה 0 הראשון נא לכתוב  00972";s:13:"default_value";s:0:"";s:12:"phone_format";s:13:"international";s:18:"validation_message";s:33:"מספר טלפון לא תקני";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"1";}i:29;a:11:{s:2:"id";s:2:"29";s:4:"type";s:4:"text";s:5:"label";s:43:"כתובת עמוד פייסבוק עסקי";s:4:"desc";s:70:"מה להדביק כתובת דף הפייסבוק העסקי שלכם";s:6:"length";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:15:"validation_rule";s:7:"website";s:18:"validation_message";s:31:"כתובת דף לא תקנית";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"1";}i:30;a:11:{s:2:"id";s:2:"30";s:4:"type";s:4:"text";s:5:"label";s:45:"קישור לחשבון יוטיוב עסקי";s:4:"desc";s:107:"במידה ויש ברשותכם חשבון יוטיוב עסקי נא הדביקו את כתובת הדף.";s:6:"length";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:15:"validation_rule";s:7:"website";s:18:"validation_message";s:31:"כתובת דף לא תקנית";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"1";}i:38;a:4:{s:2:"id";s:2:"38";s:4:"type";s:7:"default";s:5:"label";s:31:"רשום מעט על עצמך. ";s:10:"field_name";s:11:"description";}i:14;a:10:{s:2:"id";s:2:"14";s:4:"type";s:11:"multiselect";s:5:"label";s:21:"אזור פעילות";s:4:"desc";s:0:"";s:7:"display";a:3:{i:0;s:8:"דרום";i:1;s:8:"מרכז";i:2;s:8:"צפון";}s:5:"value";a:3:{i:0;s:8:"דרום";i:1;s:8:"מרכז";i:2;s:8:"צפון";}s:18:"validation_message";s:0:"";s:3:"css";s:12:"form-control";s:9:"list_type";s:4:"None";s:15:"show_in_profile";s:1:"1";}i:26;a:9:{s:2:"id";s:2:"26";s:4:"type";s:9:"pagebreak";s:4:"meta";s:1:"0";s:11:"next_button";s:4:"text";s:15:"next_button_url";s:0:"";s:16:"next_button_text";s:6:"הבא";s:11:"prev_button";s:4:"text";s:15:"prev_button_url";s:0:"";s:16:"prev_button_text";s:10:"הקודם";}i:27;a:5:{s:2:"id";s:2:"27";s:4:"type";s:4:"html";s:4:"meta";s:1:"0";s:5:"label";s:0:"";s:4:"html";s:44:"<h2 style="direction: rtl">קבצים</h2>\r\n";}i:19;a:9:{s:2:"id";s:2:"19";s:4:"type";s:6:"upload";s:5:"label";s:30:"תעודת עוסק מורשה";s:10:"file_types";s:0:"";s:4:"desc";s:61:"נא לסרוק ולהעלות תעודת עוסק מורשה";s:8:"required";s:2:"19";s:18:"validation_message";s:26:"נא להעלות קובץ";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"1";}i:20;a:8:{s:2:"id";s:2:"20";s:4:"type";s:6:"upload";s:5:"label";s:34:"תעודת רישיון תיווך";s:10:"file_types";s:0:"";s:4:"desc";s:68:"נא להעלות צילום של תעודת רישיון תיווך";s:18:"validation_message";s:26:"נא להעלות קובץ";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"1";}i:21;a:9:{s:2:"id";s:2:"21";s:4:"type";s:6:"upload";s:5:"label";s:45:"צילום כרטיס רישיון תיווך";s:10:"file_types";s:0:"";s:4:"desc";s:63:"נא להעלות צילום כרטיס רישיון תיווך";s:8:"required";s:2:"21";s:18:"validation_message";s:26:"נא להעלות קובץ";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"1";}i:22;a:8:{s:2:"id";s:2:"22";s:4:"type";s:6:"upload";s:5:"label";s:21:"חוזה שכירות";s:10:"file_types";s:0:"";s:4:"desc";s:82:"למנהלי משרד בלבד, לסוכנים במשרד אין צורך כרגע";s:18:"validation_message";s:26:"נא להעלות קובץ";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"1";}i:23;a:5:{s:2:"id";s:2:"23";s:4:"type";s:4:"html";s:4:"meta";s:1:"0";s:5:"label";s:0:"";s:4:"html";s:124:"<p style="direction: rtl">עשר חשבוניות (צילום) על עסקאות שבוצעו בשנה האחרונה.</p>\r\n";}i:24;a:8:{s:2:"id";s:2:"24";s:4:"type";s:6:"upload";s:5:"label";s:38:"עשר חשבוניות אחרונות";s:10:"file_types";s:0:"";s:4:"desc";s:0:"";s:18:"validation_message";s:26:"נא להעלות קובץ";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"0";}i:31;a:9:{s:2:"id";s:2:"31";s:4:"type";s:9:"pagebreak";s:4:"meta";s:1:"0";s:11:"next_button";s:4:"text";s:15:"next_button_url";s:0:"";s:16:"next_button_text";s:4:"Next";s:11:"prev_button";s:4:"text";s:15:"prev_button_url";s:0:"";s:16:"prev_button_text";s:8:"Previous";}i:32;a:5:{s:2:"id";s:2:"32";s:4:"type";s:4:"html";s:4:"meta";s:1:"0";s:5:"label";s:0:"";s:4:"html";s:210:"<h2 style="direction: rtl">תעודות והסמכות</h2>\r\n\r\n<p dir="rtl">כרגע אנו מאשרים העלאה של עד חמש תעודות. בהמשך יתכן ונרחיב אפשרות זו.&nbsp;</p>\r\n";}i:33;a:8:{s:2:"id";s:2:"33";s:4:"type";s:6:"upload";s:5:"label";s:23:"תעודת הסמכה 1";s:10:"file_types";s:0:"";s:4:"desc";s:0:"";s:18:"validation_message";s:22:"קובץ לא תקני";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"1";}i:34;a:8:{s:2:"id";s:2:"34";s:4:"type";s:6:"upload";s:5:"label";s:23:"תעודת הסמכה 2";s:10:"file_types";s:0:"";s:4:"desc";s:0:"";s:18:"validation_message";s:22:"קובץ לא תקני";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"1";}i:35;a:8:{s:2:"id";s:2:"35";s:4:"type";s:6:"upload";s:5:"label";s:23:"תעודת הסמכה 3";s:10:"file_types";s:0:"";s:4:"desc";s:0:"";s:18:"validation_message";s:22:"קובץ לא תקני";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"1";}i:36;a:8:{s:2:"id";s:2:"36";s:4:"type";s:6:"upload";s:5:"label";s:23:"תעודת הסמכה 4";s:10:"file_types";s:0:"";s:4:"desc";s:0:"";s:18:"validation_message";s:22:"קובץ לא תקני";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"1";}i:37;a:8:{s:2:"id";s:2:"37";s:4:"type";s:6:"upload";s:5:"label";s:23:"תעודת הסמכה 5";s:10:"file_types";s:0:"";s:4:"desc";s:0:"";s:18:"validation_message";s:22:"קובץ לא תקני";s:3:"css";s:12:"form-control";s:15:"show_in_profile";s:1:"1";}s:6:"submit";a:11:{s:5:"label";s:6:"Submit";s:4:"type";s:6:"submit";s:6:"remove";s:1:"0";s:4:"meta";s:1:"0";s:4:"text";s:10:"הרשמו";s:5:"reset";s:1:"0";s:10:"reset_text";s:5:"Reset";s:12:"confirmation";s:4:"text";s:12:"redirect_url";s:0:"";s:4:"page";s:3:"473";s:7:"message";s:178:"תידה על מילוי הפרטים, במידה ותימצאו מתאימים להצטרף לברוקר ניצור אתכם קשר בהמשך.\r\n\r\nתודה\r\nצוות ברוקר.";}}";', 'yes'),
(2608, 'piereg_form_pricing_fields', 'a:1:{s:9:"form_id_1";a:0:{}}', 'yes'),
(2651, '_transient_loco_po_654391df3a06234495a61c494bb246e6', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:41:"plugins/pie-register/lang/piereg-en_US.po";s:5:"bytes";i:69665;s:5:"mtime";i:1510922310;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:884;s:1:"p";i:884;s:1:"f";i:0;}}}', 'yes'),
(2652, '_transient_loco_po_c9a6116f9a93486d369e5b15b0074b96', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:41:"plugins/pie-register/lang/piereg-it_IT.po";s:5:"bytes";i:71883;s:5:"mtime";i:1510922310;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:883;s:1:"p";i:883;s:1:"f";i:0;}}}', 'yes'),
(2653, '_transient_loco_po_8a1ebdcbba92243b21a652039dbf5f13', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:41:"plugins/pie-register/lang/piereg-pt_BR.po";s:5:"bytes";i:79525;s:5:"mtime";i:1510922310;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:881;s:1:"p";i:881;s:1:"f";i:1;}}}', 'yes'),
(2654, '_transient_loco_po_a1fb5a06abe4ad2701f0267b82a9db58', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:37:"plugins/pie-register/pie-register.pot";s:5:"bytes";i:965;s:5:"mtime";i:1510996677;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:5;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(2655, '_transient_loco_po_9dba3305b7b2e805326bb194df6c35c1', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:42:"plugins/pie-register/pie-register-he_IL.po";s:5:"bytes";i:960;s:5:"mtime";i:1510996707;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:5;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(2656, 'loco_plugin_config__pie-register/pie-register.php', 'a:3:{s:1:"c";s:23:"Loco_config_CustomSaved";s:1:"v";i:0;s:1:"d";a:3:{i:0;s:6:"bundle";i:1;a:1:{s:4:"name";s:19:"Pie Register (Base)";}i:2;a:1:{i:0;a:3:{i:0;s:6:"domain";i:1;a:1:{s:4:"name";s:6:"piereg";}i:2;a:1:{i:0;a:3:{i:0;s:7:"project";i:1;a:2:{s:4:"name";s:19:"Pie Register (Base)";s:4:"slug";s:6:"piereg";}i:2;a:3:{i:0;a:3:{i:0;s:6:"source";i:1;a:0:{}i:2;a:1:{i:0;a:3:{i:0;s:9:"directory";i:1;a:0:{}i:2;a:1:{i:0;s:0:"";}}}}i:1;a:3:{i:0;s:6:"target";i:1;a:0:{}i:2;a:1:{i:0;a:3:{i:0;s:9:"directory";i:1;a:0:{}i:2;a:1:{i:0;s:0:"";}}}}i:2;a:3:{i:0;s:8:"template";i:1;a:0:{}i:2;a:1:{i:0;a:3:{i:0;s:4:"file";i:1;a:0:{}i:2;a:1:{i:0;s:10:"piereg.pot";}}}}}}}}}}}', 'no'),
(2657, '_transient_loco_po_3d787edaa70572c17b4cbb3365c3f3ea', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:31:"plugins/pie-register/piereg.pot";s:5:"bytes";i:64672;s:5:"mtime";i:1510997166;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:592;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(2658, '_transient_loco_po_bcc5a90db84ec578581f1706ccc3df51', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/pie-register/piereg-he_IL.po";s:5:"bytes";i:64667;s:5:"mtime";i:1510997217;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:592;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(2956, 'addtoany_options', 'a:37:{s:8:"position";s:6:"bottom";s:30:"display_in_posts_on_front_page";s:2:"-1";s:33:"display_in_posts_on_archive_pages";s:2:"-1";s:19:"display_in_excerpts";s:2:"-1";s:16:"display_in_posts";s:1:"1";s:16:"display_in_pages";s:2:"-1";s:22:"display_in_attachments";s:2:"-1";s:15:"display_in_feed";s:2:"-1";s:7:"onclick";s:2:"-1";s:9:"icon_size";s:2:"32";s:7:"icon_bg";s:6:"custom";s:13:"icon_bg_color";s:7:"#ffffff";s:7:"icon_fg";s:6:"custom";s:13:"icon_fg_color";s:7:"#5e5e5e";s:6:"button";s:10:"A2A_SVG_32";s:13:"button_custom";s:0:"";s:17:"button_show_count";s:1:"1";s:6:"header";s:0:"";s:23:"additional_js_variables";s:0:"";s:14:"additional_css";s:0:"";s:12:"custom_icons";s:2:"-1";s:16:"custom_icons_url";s:1:"/";s:17:"custom_icons_type";s:3:"png";s:18:"custom_icons_width";s:0:"";s:19:"custom_icons_height";s:0:"";s:5:"cache";s:2:"-1";s:21:"display_in_cpt_broker";s:1:"1";s:23:"display_in_cpt_property";s:1:"1";s:22:"display_in_cpt_article";s:1:"1";s:11:"button_text";s:8:"שתפו";s:24:"special_facebook_options";a:1:{s:10:"show_count";s:2:"-1";}s:15:"active_services";a:5:{i:0;s:8:"facebook";i:1;s:7:"twitter";i:2;s:11:"google_plus";i:3;s:8:"whatsapp";i:4;s:5:"print";}s:29:"special_facebook_like_options";a:1:{s:4:"verb";s:4:"like";}s:29:"special_twitter_tweet_options";a:1:{s:10:"show_count";s:2:"-1";}s:30:"special_google_plusone_options";a:1:{s:10:"show_count";s:2:"-1";}s:33:"special_google_plus_share_options";a:1:{s:10:"show_count";s:2:"-1";}s:29:"special_pinterest_pin_options";a:1:{s:10:"show_count";s:2:"-1";}}', 'yes'),
(2876, 'string-locator-search-overview', 's:309:"O:8:"stdClass":5:{s:9:"scan_path";O:8:"stdClass":3:{s:4:"path";s:54:"C:\\xampp\\htdocs\\broker/wp-content/plugins/pie-register";s:4:"type";s:6:"plugin";s:4:"slug";s:12:"pie-register";}s:6:"search";s:10:"rememberme";s:9:"directory";s:31:"p-pie-register/pie-register.php";s:6:"chunks";i:1;s:5:"regex";s:5:"false";}";', 'yes'),
(2870, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(2807, 'aiowpsec_db_version', '1.9', 'yes'),
(2808, 'aio_wp_security_configs', 'a:83:{s:19:"aiowps_enable_debug";s:0:"";s:36:"aiowps_remove_wp_generator_meta_info";s:0:"";s:25:"aiowps_prevent_hotlinking";s:0:"";s:28:"aiowps_enable_login_lockdown";s:0:"";s:28:"aiowps_allow_unlock_requests";s:0:"";s:25:"aiowps_max_login_attempts";s:1:"3";s:24:"aiowps_retry_time_period";s:1:"5";s:26:"aiowps_lockout_time_length";s:2:"60";s:28:"aiowps_set_generic_login_msg";s:0:"";s:26:"aiowps_enable_email_notify";s:0:"";s:20:"aiowps_email_address";s:21:"davseveloff@gmail.com";s:27:"aiowps_enable_forced_logout";s:0:"";s:25:"aiowps_logout_time_period";s:2:"60";s:39:"aiowps_enable_invalid_username_lockdown";s:0:"";s:43:"aiowps_instantly_lockout_specific_usernames";a:0:{}s:32:"aiowps_unlock_request_secret_key";s:20:"464ncjnd5564ugu4ah94";s:35:"aiowps_lockdown_enable_whitelisting";s:0:"";s:36:"aiowps_lockdown_allowed_ip_addresses";s:0:"";s:26:"aiowps_enable_whitelisting";s:0:"";s:27:"aiowps_allowed_ip_addresses";s:0:"";s:27:"aiowps_enable_login_captcha";s:0:"";s:34:"aiowps_enable_custom_login_captcha";s:0:"";s:31:"aiowps_enable_woo_login_captcha";s:0:"";s:34:"aiowps_enable_woo_register_captcha";s:0:"";s:25:"aiowps_captcha_secret_key";s:20:"smhb8x4fys8os8hs2pwz";s:42:"aiowps_enable_manual_registration_approval";s:0:"";s:39:"aiowps_enable_registration_page_captcha";s:0:"";s:35:"aiowps_enable_registration_honeypot";s:0:"";s:27:"aiowps_enable_random_prefix";s:0:"";s:31:"aiowps_enable_automated_backups";s:0:"";s:26:"aiowps_db_backup_frequency";s:1:"4";s:25:"aiowps_db_backup_interval";s:1:"2";s:26:"aiowps_backup_files_stored";s:1:"2";s:32:"aiowps_send_backup_email_address";s:0:"";s:27:"aiowps_backup_email_address";s:21:"davseveloff@gmail.com";s:27:"aiowps_disable_file_editing";s:0:"";s:37:"aiowps_prevent_default_wp_file_access";s:0:"";s:22:"aiowps_system_log_file";s:9:"error_log";s:26:"aiowps_enable_blacklisting";s:0:"";s:26:"aiowps_banned_ip_addresses";s:0:"";s:28:"aiowps_enable_basic_firewall";s:0:"";s:31:"aiowps_enable_pingback_firewall";s:0:"";s:38:"aiowps_disable_xmlrpc_pingback_methods";s:0:"";s:34:"aiowps_block_debug_log_file_access";s:0:"";s:26:"aiowps_disable_index_views";s:0:"";s:30:"aiowps_disable_trace_and_track";s:0:"";s:28:"aiowps_forbid_proxy_comments";s:0:"";s:29:"aiowps_deny_bad_query_strings";s:0:"";s:34:"aiowps_advanced_char_string_filter";s:0:"";s:25:"aiowps_enable_5g_firewall";s:0:"";s:25:"aiowps_enable_6g_firewall";s:0:"";s:26:"aiowps_enable_custom_rules";s:0:"";s:32:"aiowps_place_custom_rules_at_top";s:0:"";s:19:"aiowps_custom_rules";s:0:"";s:25:"aiowps_enable_404_logging";s:0:"";s:28:"aiowps_enable_404_IP_lockout";s:0:"";s:30:"aiowps_404_lockout_time_length";s:2:"60";s:28:"aiowps_404_lock_redirect_url";s:16:"http://127.0.0.1";s:31:"aiowps_enable_rename_login_page";s:0:"";s:28:"aiowps_enable_login_honeypot";s:0:"";s:43:"aiowps_enable_brute_force_attack_prevention";s:0:"";s:30:"aiowps_brute_force_secret_word";s:0:"";s:24:"aiowps_cookie_brute_test";s:0:"";s:44:"aiowps_cookie_based_brute_force_redirect_url";s:16:"http://127.0.0.1";s:59:"aiowps_brute_force_attack_prevention_pw_protected_exception";s:0:"";s:51:"aiowps_brute_force_attack_prevention_ajax_exception";s:0:"";s:19:"aiowps_site_lockout";s:0:"";s:23:"aiowps_site_lockout_msg";s:0:"";s:30:"aiowps_enable_spambot_blocking";s:0:"";s:29:"aiowps_enable_comment_captcha";s:0:"";s:31:"aiowps_enable_autoblock_spam_ip";s:0:"";s:33:"aiowps_spam_ip_min_comments_block";s:0:"";s:32:"aiowps_enable_automated_fcd_scan";s:0:"";s:25:"aiowps_fcd_scan_frequency";s:1:"4";s:24:"aiowps_fcd_scan_interval";s:1:"2";s:28:"aiowps_fcd_exclude_filetypes";s:0:"";s:24:"aiowps_fcd_exclude_files";s:0:"";s:26:"aiowps_send_fcd_scan_email";s:0:"";s:29:"aiowps_fcd_scan_email_address";s:21:"davseveloff@gmail.com";s:27:"aiowps_fcds_change_detected";b:0;s:22:"aiowps_copy_protection";s:0:"";s:40:"aiowps_prevent_site_display_inside_frame";s:0:"";s:32:"aiowps_prevent_users_enumeration";s:0:"";}', 'yes'),
(2812, 'aiowps_temp_configs', 'a:83:{s:19:"aiowps_enable_debug";s:0:"";s:36:"aiowps_remove_wp_generator_meta_info";s:0:"";s:25:"aiowps_prevent_hotlinking";s:0:"";s:28:"aiowps_enable_login_lockdown";s:0:"";s:28:"aiowps_allow_unlock_requests";s:0:"";s:25:"aiowps_max_login_attempts";s:1:"3";s:24:"aiowps_retry_time_period";s:1:"5";s:26:"aiowps_lockout_time_length";s:2:"60";s:28:"aiowps_set_generic_login_msg";s:0:"";s:26:"aiowps_enable_email_notify";s:0:"";s:20:"aiowps_email_address";s:21:"davseveloff@gmail.com";s:27:"aiowps_enable_forced_logout";s:0:"";s:25:"aiowps_logout_time_period";s:2:"60";s:39:"aiowps_enable_invalid_username_lockdown";s:0:"";s:43:"aiowps_instantly_lockout_specific_usernames";a:0:{}s:32:"aiowps_unlock_request_secret_key";s:20:"464ncjnd5564ugu4ah94";s:35:"aiowps_lockdown_enable_whitelisting";s:0:"";s:36:"aiowps_lockdown_allowed_ip_addresses";s:0:"";s:26:"aiowps_enable_whitelisting";s:0:"";s:27:"aiowps_allowed_ip_addresses";s:0:"";s:27:"aiowps_enable_login_captcha";s:0:"";s:34:"aiowps_enable_custom_login_captcha";s:0:"";s:31:"aiowps_enable_woo_login_captcha";s:0:"";s:34:"aiowps_enable_woo_register_captcha";s:0:"";s:25:"aiowps_captcha_secret_key";s:20:"smhb8x4fys8os8hs2pwz";s:42:"aiowps_enable_manual_registration_approval";s:0:"";s:39:"aiowps_enable_registration_page_captcha";s:0:"";s:35:"aiowps_enable_registration_honeypot";s:0:"";s:27:"aiowps_enable_random_prefix";s:0:"";s:31:"aiowps_enable_automated_backups";s:0:"";s:26:"aiowps_db_backup_frequency";s:1:"4";s:25:"aiowps_db_backup_interval";s:1:"2";s:26:"aiowps_backup_files_stored";s:1:"2";s:32:"aiowps_send_backup_email_address";s:0:"";s:27:"aiowps_backup_email_address";s:21:"davseveloff@gmail.com";s:27:"aiowps_disable_file_editing";s:0:"";s:37:"aiowps_prevent_default_wp_file_access";s:0:"";s:22:"aiowps_system_log_file";s:9:"error_log";s:26:"aiowps_enable_blacklisting";s:0:"";s:26:"aiowps_banned_ip_addresses";s:0:"";s:28:"aiowps_enable_basic_firewall";s:0:"";s:31:"aiowps_enable_pingback_firewall";s:0:"";s:38:"aiowps_disable_xmlrpc_pingback_methods";s:0:"";s:34:"aiowps_block_debug_log_file_access";s:0:"";s:26:"aiowps_disable_index_views";s:0:"";s:30:"aiowps_disable_trace_and_track";s:0:"";s:28:"aiowps_forbid_proxy_comments";s:0:"";s:29:"aiowps_deny_bad_query_strings";s:0:"";s:34:"aiowps_advanced_char_string_filter";s:0:"";s:25:"aiowps_enable_5g_firewall";s:0:"";s:25:"aiowps_enable_6g_firewall";s:0:"";s:26:"aiowps_enable_custom_rules";s:0:"";s:32:"aiowps_place_custom_rules_at_top";s:0:"";s:19:"aiowps_custom_rules";s:0:"";s:25:"aiowps_enable_404_logging";s:0:"";s:28:"aiowps_enable_404_IP_lockout";s:0:"";s:30:"aiowps_404_lockout_time_length";s:2:"60";s:28:"aiowps_404_lock_redirect_url";s:16:"http://127.0.0.1";s:31:"aiowps_enable_rename_login_page";s:0:"";s:28:"aiowps_enable_login_honeypot";s:0:"";s:43:"aiowps_enable_brute_force_attack_prevention";s:0:"";s:30:"aiowps_brute_force_secret_word";s:0:"";s:24:"aiowps_cookie_brute_test";s:0:"";s:44:"aiowps_cookie_based_brute_force_redirect_url";s:16:"http://127.0.0.1";s:59:"aiowps_brute_force_attack_prevention_pw_protected_exception";s:0:"";s:51:"aiowps_brute_force_attack_prevention_ajax_exception";s:0:"";s:19:"aiowps_site_lockout";s:0:"";s:23:"aiowps_site_lockout_msg";s:0:"";s:30:"aiowps_enable_spambot_blocking";s:0:"";s:29:"aiowps_enable_comment_captcha";s:0:"";s:31:"aiowps_enable_autoblock_spam_ip";s:0:"";s:33:"aiowps_spam_ip_min_comments_block";s:0:"";s:32:"aiowps_enable_automated_fcd_scan";s:0:"";s:25:"aiowps_fcd_scan_frequency";s:1:"4";s:24:"aiowps_fcd_scan_interval";s:1:"2";s:28:"aiowps_fcd_exclude_filetypes";s:0:"";s:24:"aiowps_fcd_exclude_files";s:0:"";s:26:"aiowps_send_fcd_scan_email";s:0:"";s:29:"aiowps_fcd_scan_email_address";s:21:"davseveloff@gmail.com";s:27:"aiowps_fcds_change_detected";b:0;s:22:"aiowps_copy_protection";s:0:"";s:40:"aiowps_prevent_site_display_inside_frame";s:0:"";s:32:"aiowps_prevent_users_enumeration";s:0:"";}', 'yes'),
(2814, 'CWIS_AJAX_ID', 'sTdfl6cv3cCYPGXmrp7WvbID', 'yes'),
(2815, 'CWIS_AJAX_PASS', 'GSEFWW2zpiuItVMgYIczPASS', 'yes'),
(2816, 'CWIS_LAST_SCAN', '1513011511', 'yes'),
(2873, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:65:"https://downloads.wordpress.org/release/he_IL/wordpress-4.9.1.zip";s:6:"locale";s:5:"he_IL";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/he_IL/wordpress-4.9.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.1";s:7:"version";s:5:"4.9.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.1-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.9.1-partial-0.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.1";s:7:"version";s:5:"4.9.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:3:"4.9";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:65:"https://downloads.wordpress.org/release/he_IL/wordpress-4.9.1.zip";s:6:"locale";s:5:"he_IL";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/he_IL/wordpress-4.9.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.1";s:7:"version";s:5:"4.9.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1513586133;s:15:"version_checked";s:3:"4.9";s:12:"translations";a:0:{}}', 'no'),
(2954, 'widget_a2a_share_save_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(2955, 'widget_a2a_follow_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(2957, 'pie_pro_release_notice', 'no', 'yes'),
(2960, 'printfriendly_option', 'a:30:{s:11:"button_type";s:13:"custom-button";s:12:"custom_image";s:0:"";s:18:"custom_button_icon";s:8:"no-image";s:18:"custom_button_text";s:11:"custom-text";s:11:"custom_text";s:10:"הדפסה";s:10:"text_color";s:7:"#000000";s:9:"text_size";i:16;s:16:"content_position";s:4:"left";s:17:"content_placement";s:5:"after";s:11:"margin_left";i:12;s:12:"margin_right";i:12;s:10:"margin_top";i:12;s:13:"margin_bottom";i:4;s:4:"logo";s:7:"favicon";s:9:"image_url";s:0:"";s:7:"tagline";s:0:"";s:15:"click_to_delete";s:1:"1";s:11:"images-size";s:9:"full-size";s:11:"image-style";s:4:"left";s:5:"email";s:1:"0";s:3:"pdf";s:1:"0";s:5:"print";s:1:"0";s:14:"custom_css_url";s:0:"";s:18:"password_protected";s:2:"no";s:10:"javascript";s:3:"yes";s:23:"enable_google_analytics";s:2:"no";s:22:"enable_error_reporting";s:3:"yes";s:7:"pf_algo";s:2:"wp";s:10:"enable_css";s:2:"on";s:10:"db_version";i:16;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3245, 'responsive_lightbox_configuration', 'a:7:{s:8:"swipebox";a:8:{s:9:"animation";s:3:"css";s:15:"force_png_icons";b:0;s:17:"hide_close_mobile";b:0;s:18:"remove_bars_mobile";b:0;s:9:"hide_bars";b:1;s:15:"hide_bars_delay";i:5000;s:15:"video_max_width";i:1080;s:11:"loop_at_end";b:0;}s:11:"prettyphoto";a:21:{s:15:"animation_speed";s:6:"normal";s:9:"slideshow";b:0;s:15:"slideshow_delay";i:5000;s:18:"slideshow_autoplay";b:0;s:7:"opacity";i:75;s:10:"show_title";b:1;s:12:"allow_resize";b:1;s:12:"allow_expand";b:1;s:5:"width";i:1080;s:6:"height";i:720;s:9:"separator";s:1:"/";s:5:"theme";s:10:"pp_default";s:18:"horizontal_padding";i:20;s:10:"hide_flash";b:0;s:5:"wmode";s:6:"opaque";s:14:"video_autoplay";b:0;s:5:"modal";b:0;s:11:"deeplinking";b:0;s:15:"overlay_gallery";b:1;s:18:"keyboard_shortcuts";b:1;s:6:"social";b:0;}s:8:"fancybox";a:25:{s:5:"modal";b:0;s:12:"show_overlay";b:1;s:17:"show_close_button";b:1;s:20:"enable_escape_button";b:1;s:21:"hide_on_overlay_click";b:1;s:21:"hide_on_content_click";b:0;s:6:"cyclic";b:0;s:15:"show_nav_arrows";b:1;s:10:"auto_scale";b:1;s:9:"scrolling";s:3:"yes";s:16:"center_on_scroll";b:1;s:7:"opacity";b:1;s:15:"overlay_opacity";i:70;s:13:"overlay_color";s:4:"#666";s:10:"title_show";b:1;s:14:"title_position";s:7:"outside";s:11:"transitions";s:4:"fade";s:7:"easings";s:5:"swing";s:6:"speeds";i:300;s:12:"change_speed";i:300;s:11:"change_fade";i:100;s:7:"padding";i:5;s:6:"margin";i:5;s:11:"video_width";i:1080;s:12:"video_height";i:720;}s:4:"nivo";a:4:{s:6:"effect";s:4:"fade";s:22:"click_overlay_to_close";b:1;s:12:"keyboard_nav";b:1;s:13:"error_message";s:63:"The requested content cannot be loaded. Please try again later.";}s:13:"imagelightbox";a:6:{s:15:"animation_speed";i:250;s:12:"preload_next";b:1;s:15:"enable_keyboard";b:1;s:11:"quit_on_end";b:0;s:19:"quit_on_image_click";b:0;s:22:"quit_on_document_click";b:1;}s:6:"tosrus";a:9:{s:6:"effect";s:5:"slide";s:8:"infinite";b:1;s:4:"keys";b:0;s:8:"autoplay";b:1;s:14:"pause_on_hover";b:0;s:7:"timeout";i:4000;s:10:"pagination";b:1;s:15:"pagination_type";s:10:"thumbnails";s:14:"close_on_click";b:0;}s:12:"featherlight";a:6:{s:10:"open_speed";i:250;s:11:"close_speed";i:250;s:14:"close_on_click";s:10:"background";s:12:"close_on_esc";b:1;s:15:"gallery_fade_in";i:100;s:16:"gallery_fade_out";i:300;}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_pieregister_code`
--

CREATE TABLE `wp_pieregister_code` (
  `id` int(5) NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL,
  `name` text NOT NULL,
  `count` int(5) NOT NULL,
  `status` int(2) NOT NULL,
  `code_usage` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_pieregister_lockdowns`
--

CREATE TABLE `wp_pieregister_lockdowns` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `login_attempt` int(11) NOT NULL,
  `attempt_from` varchar(56) NOT NULL,
  `is_security_captcha` tinyint(4) NOT NULL DEFAULT '0',
  `attempt_time` datetime NOT NULL,
  `release_time` datetime NOT NULL,
  `user_ip` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_pieregister_redirect_settings`
--

CREATE TABLE `wp_pieregister_redirect_settings` (
  `id` int(11) NOT NULL,
  `user_role` varchar(100) NOT NULL,
  `logged_in_url` text NOT NULL,
  `logged_in_page_id` int(11) NOT NULL,
  `log_out_url` text NOT NULL,
  `log_out_page_id` int(11) NOT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_wp_attached_file', '2017/07/jch-optimize-pro_wordpress_2.1.0.zip'),
(1056, 459, '_piereg_post_restriction', 'a:6:{s:16:"piereg_post_type";s:4:"page";s:22:"piereg_post_visibility";s:7:"default";s:23:"piereg_restriction_type";s:1:"0";s:19:"piereg_redirect_url";s:0:"";s:20:"piereg_redirect_page";s:2:"-1";s:20:"piereg_block_content";s:0:"";}'),
(43, 47, '_wp_page_template', 'elementor_canvas'),
(42, 47, '_edit_last', '1'),
(41, 47, '_edit_lock', '1505320730:1'),
(10, 18, '_edit_lock', '1510985192:1'),
(11, 18, '_edit_last', '1'),
(13, 40, '_wp_attached_file', '2017/09/broker_logo.jpg'),
(14, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:102;s:6:"height";i:140;s:4:"file";s:23:"2017/09/broker_logo.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(15, 41, '_wp_attached_file', '2017/09/phone.png'),
(16, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:43;s:6:"height";i:40;s:4:"file";s:17:"2017/09/phone.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(17, 40, '_wp_attachment_image_alt', 'broker_logo'),
(18, 43, '_wp_attached_file', '2017/09/cropped-broker_logo.jpg'),
(19, 43, '_wp_attachment_context', 'site-icon'),
(20, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:31:"2017/09/cropped-broker_logo.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"cropped-broker_logo-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"cropped-broker_logo-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-270";a:4:{s:4:"file";s:31:"cropped-broker_logo-270x270.jpg";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-192";a:4:{s:4:"file";s:31:"cropped-broker_logo-192x192.jpg";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-180";a:4:{s:4:"file";s:31:"cropped-broker_logo-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"site_icon-32";a:4:{s:4:"file";s:29:"cropped-broker_logo-32x32.jpg";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(819, 110, 'prop_arnona', ''),
(820, 110, '_prop_arnona', 'field_59d0d781595c2'),
(23, 44, '_menu_item_type', 'custom'),
(24, 44, '_menu_item_menu_item_parent', '0'),
(25, 44, '_menu_item_object_id', '44'),
(26, 44, '_menu_item_object', 'custom'),
(27, 44, '_menu_item_target', ''),
(28, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(29, 44, '_menu_item_xfn', ''),
(30, 44, '_menu_item_url', 'http://davdev.co.il/broker/'),
(45, 49, '_menu_item_type', 'custom'),
(101, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2305;s:6:"height";i:1537;s:4:"file";s:33:"2017/09/broker-father-and-son.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"broker-father-and-son-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"broker-father-and-son-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:33:"broker-father-and-son-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:34:"broker-father-and-son-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(100, 56, '_wp_attached_file', '2017/09/broker-father-and-son.jpg'),
(44, 47, '_elementor_edit_mode', 'builder'),
(46, 49, '_menu_item_menu_item_parent', '0'),
(47, 49, '_menu_item_object_id', '49'),
(48, 49, '_menu_item_object', 'custom'),
(49, 49, '_menu_item_target', ''),
(50, 49, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(51, 49, '_menu_item_xfn', ''),
(52, 49, '_menu_item_url', '#'),
(54, 50, '_menu_item_type', 'custom'),
(55, 50, '_menu_item_menu_item_parent', '0'),
(56, 50, '_menu_item_object_id', '50'),
(57, 50, '_menu_item_object', 'custom'),
(58, 50, '_menu_item_target', ''),
(59, 50, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(60, 50, '_menu_item_xfn', ''),
(61, 50, '_menu_item_url', '/broker/?s=&post_type=property'),
(63, 51, '_menu_item_type', 'custom'),
(64, 51, '_menu_item_menu_item_parent', '0'),
(65, 51, '_menu_item_object_id', '51'),
(66, 51, '_menu_item_object', 'custom'),
(67, 51, '_menu_item_target', ''),
(68, 51, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(69, 51, '_menu_item_xfn', ''),
(70, 51, '_menu_item_url', '/broker/%D7%AA%D7%95%D7%A6%D7%90%D7%95%D7%AA-%D7%97%D7%99%D7%A4%D7%95%D7%A9-%D7%91%D7%A8%D7%95%D7%A7%D7%A8%D7%99%D7%9D/'),
(72, 52, '_menu_item_type', 'custom'),
(73, 52, '_menu_item_menu_item_parent', '0'),
(74, 52, '_menu_item_object_id', '52'),
(75, 52, '_menu_item_object', 'custom'),
(76, 52, '_menu_item_target', ''),
(77, 52, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(78, 52, '_menu_item_xfn', ''),
(79, 52, '_menu_item_url', '#'),
(90, 54, '_menu_item_type', 'custom'),
(91, 54, '_menu_item_menu_item_parent', '0'),
(92, 54, '_menu_item_object_id', '54'),
(93, 54, '_menu_item_object', 'custom'),
(94, 54, '_menu_item_target', ''),
(95, 54, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(96, 54, '_menu_item_xfn', ''),
(97, 54, '_menu_item_url', '#'),
(102, 56, '_wp_attachment_image_alt', 'broker-father-and-son'),
(103, 57, '_edit_lock', '1509971275:12'),
(104, 57, '_edit_last', '1'),
(189, 80, '_wp_attached_file', '2017/09/famely-selfie.jpg'),
(106, 61, '_wp_attached_file', '2017/09/icon3.png'),
(107, 61, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:98;s:6:"height";i:98;s:4:"file";s:17:"2017/09/icon3.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(108, 62, '_wp_attached_file', '2017/09/icon2.png'),
(109, 62, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:97;s:6:"height";i:97;s:4:"file";s:17:"2017/09/icon2.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(110, 63, '_wp_attached_file', '2017/09/icon1.png'),
(111, 63, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:96;s:6:"height";i:96;s:4:"file";s:17:"2017/09/icon1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(120, 68, '_wp_attached_file', '2017/09/icon_13.png'),
(121, 68, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:40;s:6:"height";i:40;s:4:"file";s:19:"2017/09/icon_13.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(118, 67, '_wp_attached_file', '2017/09/icon_06.png'),
(119, 67, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:40;s:6:"height";i:40;s:4:"file";s:19:"2017/09/icon_06.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(116, 66, '_wp_attached_file', '2017/09/icon_08.png'),
(117, 66, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:40;s:6:"height";i:40;s:4:"file";s:19:"2017/09/icon_08.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(122, 69, '_wp_attached_file', '2017/09/cooking.jpg'),
(123, 69, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1609;s:4:"file";s:19:"2017/09/cooking.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"cooking-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"cooking-300x241.jpg";s:5:"width";i:300;s:6:"height";i:241;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"cooking-768x618.jpg";s:5:"width";i:768;s:6:"height";i:618;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"cooking-1024x824.jpg";s:5:"width";i:1024;s:6:"height";i:824;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(124, 69, '_wp_attachment_image_alt', 'cooking'),
(125, 70, '_edit_lock', '1513268112:1'),
(126, 70, '_edit_last', '1'),
(127, 71, '_wp_attached_file', '2017/09/prop.jpg'),
(128, 71, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:360;s:6:"height";i:230;s:4:"file";s:16:"2017/09/prop.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"prop-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"prop-300x192.jpg";s:5:"width";i:300;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(129, 71, '_wp_attachment_image_alt', 'prop'),
(130, 70, '_thumbnail_id', '71'),
(131, 70, 'prop_city', 'אילת'),
(132, 70, '_prop_city', 'field_59ae96d970a06'),
(133, 70, 'prop_neighborhood', 'שחמון'),
(134, 70, '_prop_neighborhood', 'field_59ae9c0970a07'),
(135, 70, 'prop_street', 'משעול המשמש'),
(136, 70, '_prop_street', 'field_59ae9d3e70a08'),
(137, 70, 'prop_address_no', '4'),
(138, 70, '_prop_address_no', 'field_59aeacdae6480'),
(139, 70, 'prop_location', 'a:3:{s:7:"address";s:44:"משעול האמורים, Eilat, ישראל";s:3:"lat";s:10:"29.5502468";s:3:"lng";s:18:"34.931866600000035";}'),
(140, 70, '_prop_location', 'field_59ae9d7370a09'),
(141, 70, 'prop_store', '-1'),
(142, 70, '_prop_store', 'field_59ae9dac70a0a'),
(143, 70, 'prop_rooms', '1'),
(144, 70, '_prop_rooms', 'field_59ae9e2370a0b'),
(145, 70, 'prop_balcony', ''),
(146, 70, '_prop_balcony', 'field_59aeac9970a0c'),
(147, 70, 'prop_size', '150'),
(148, 70, '_prop_size', 'field_59aeadaf51fa2'),
(149, 70, 'prop_ac', ''),
(150, 70, '_prop_ac', 'field_59aeadf151fa3'),
(151, 70, 'prop_parking', ''),
(152, 70, '_prop_parking', 'field_59aeae0f51fa4'),
(153, 70, 'prop_disability', ''),
(154, 70, '_prop_disability', 'field_59aeae3751fa5'),
(155, 70, 'prop_mamad', ''),
(156, 70, '_prop_mamad', 'field_59aeae5251fa6'),
(157, 70, 'prop_furniture', ''),
(158, 70, '_prop_furniture', 'field_59aeae6951fa7'),
(159, 70, 'prop_fence', ''),
(160, 70, '_prop_fence', 'field_59aeae7c51fa8'),
(161, 70, 'prop_elevator', ''),
(162, 70, '_prop_elevator', 'field_59aeae9651fa9'),
(163, 70, 'prop_restored', ''),
(164, 70, '_prop_restored', 'field_59aeaeb151faa'),
(165, 70, 'prop_shed', ''),
(166, 70, '_prop_shed', 'field_59aeaec451fab'),
(167, 70, 'prop_price', '1500000'),
(168, 70, '_prop_price', 'field_59aeaee651fac'),
(169, 70, 'prop_description', 'אחלה בית תאורה טבעית, שמש, מיזוג אויר.'),
(170, 70, '_prop_description', 'field_59aeaf4b51fad'),
(171, 72, '_wp_attached_file', '2017/09/couple-with-cpu.jpg'),
(172, 72, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1335;s:4:"file";s:27:"2017/09/couple-with-cpu.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"couple-with-cpu-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"couple-with-cpu-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"couple-with-cpu-768x513.jpg";s:5:"width";i:768;s:6:"height";i:513;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"couple-with-cpu-1024x684.jpg";s:5:"width";i:1024;s:6:"height";i:684;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(173, 72, '_wp_attachment_image_alt', 'couple-with-cpu'),
(174, 74, '_wp_attached_file', '2017/09/icons_05.png'),
(175, 74, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:126;s:6:"height";i:126;s:4:"file";s:20:"2017/09/icons_05.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(176, 75, '_wp_attached_file', '2017/09/icons_07.png'),
(177, 75, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:126;s:6:"height";i:126;s:4:"file";s:20:"2017/09/icons_07.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(178, 76, '_wp_attached_file', '2017/09/icons_09.png'),
(179, 76, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:126;s:6:"height";i:126;s:4:"file";s:20:"2017/09/icons_09.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(180, 77, '_wp_attached_file', '2017/09/icons_11.png'),
(181, 77, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:126;s:6:"height";i:126;s:4:"file";s:20:"2017/09/icons_11.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(182, 78, '_wp_attached_file', '2017/09/icons_03.png'),
(183, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:126;s:6:"height";i:126;s:4:"file";s:20:"2017/09/icons_03.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(184, 78, '_wp_attachment_image_alt', 'calendar'),
(185, 77, '_wp_attachment_image_alt', 'escalate'),
(186, 76, '_wp_attachment_image_alt', 'value'),
(187, 75, '_wp_attachment_image_alt', 'details'),
(188, 74, '_wp_attachment_image_alt', 'money bag'),
(190, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1997;s:6:"height";i:896;s:4:"file";s:25:"2017/09/famely-selfie.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"famely-selfie-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"famely-selfie-300x135.jpg";s:5:"width";i:300;s:6:"height";i:135;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"famely-selfie-768x345.jpg";s:5:"width";i:768;s:6:"height";i:345;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"famely-selfie-1024x459.jpg";s:5:"width";i:1024;s:6:"height";i:459;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(191, 80, '_wp_attachment_image_alt', 'famely-selfie'),
(192, 81, '_wp_attached_file', '2017/09/geresh_03.png'),
(193, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:92;s:6:"height";i:83;s:4:"file";s:21:"2017/09/geresh_03.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(194, 82, '_wp_attached_file', '2017/09/geresh_07.png'),
(195, 82, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:92;s:6:"height";i:83;s:4:"file";s:21:"2017/09/geresh_07.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(196, 83, '_wp_attached_file', '2017/09/tri_06.png'),
(197, 83, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:59;s:6:"height";i:97;s:4:"file";s:18:"2017/09/tri_06.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(198, 84, '_wp_attached_file', '2017/09/mother-daugter.jpg'),
(199, 84, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1997;s:6:"height";i:900;s:4:"file";s:26:"2017/09/mother-daugter.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"mother-daugter-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"mother-daugter-300x135.jpg";s:5:"width";i:300;s:6:"height";i:135;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"mother-daugter-768x346.jpg";s:5:"width";i:768;s:6:"height";i:346;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"mother-daugter-1024x461.jpg";s:5:"width";i:1024;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(200, 85, '_wp_attached_file', '2017/09/social-icons_05.png'),
(201, 85, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:27:"2017/09/social-icons_05.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"social-icons_05-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(202, 86, '_wp_attached_file', '2017/09/social-icons_07.png'),
(203, 86, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:27:"2017/09/social-icons_07.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"social-icons_07-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(204, 87, '_wp_attached_file', '2017/09/social-icons_03.png'),
(205, 87, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:27:"2017/09/social-icons_03.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"social-icons_03-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(206, 88, '_wp_attached_file', '2017/09/contact.jpg'),
(207, 88, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:900;s:4:"file";s:19:"2017/09/contact.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"contact-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"contact-300x135.jpg";s:5:"width";i:300;s:6:"height";i:135;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"contact-768x346.jpg";s:5:"width";i:768;s:6:"height";i:346;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"contact-1024x461.jpg";s:5:"width";i:1024;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(208, 89, '_wp_attached_file', '2017/09/contact-icon_18.png'),
(209, 89, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:66;s:6:"height";i:69;s:4:"file";s:27:"2017/09/contact-icon_18.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(210, 90, '_wp_attached_file', '2017/09/contact-icon_13.png'),
(211, 90, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:66;s:6:"height";i:69;s:4:"file";s:27:"2017/09/contact-icon_13.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(212, 91, '_wp_attached_file', '2017/09/contact-icon_16.png'),
(213, 91, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:66;s:6:"height";i:69;s:4:"file";s:27:"2017/09/contact-icon_16.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(214, 92, '_wp_attached_file', '2017/09/redheadfam.jpg'),
(215, 92, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1067;s:4:"file";s:22:"2017/09/redheadfam.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"redheadfam-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"redheadfam-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"redheadfam-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"redheadfam-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"4";s:6:"credit";s:0:"";s:6:"camera";s:10:"NIKON D810";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1500296225";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"180";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.002";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(216, 93, '_form', '<div class="form-container">\n<div class="front-form right">\n<label> שם*:\n    [text* name-123] </label>\n<label> טלפון*: \n   [tel* phone-123] </label>\n<label> מייל*: \n   [email* email-123] </label>\n<label>נושא הפניה:\n   [select* menu-123 "רוצה למכור במקסימום" "כללי" "קונה למגורים" "ניהול נכסים" "משכנתא חכמה" "מסחרי" "רוצה לקנות בחנות לינקולן" "דרושים"]</label>\n</div>\n<div class="front-form left">\n<label> הודעה*: \n[textarea* textarea-123]</label>\n[submit "שלחו"]\n</div>\n</div>'),
(217, 93, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:37:"ברוקר נדל"ן "[your-subject]"";s:6:"sender";s:35:"[your-name] <davseveloff@gmail.com>";s:9:"recipient";s:21:"davseveloff@gmail.com";s:4:"body";s:214:"מאת: [your-name] <[your-email]>\nנושא: [your-subject]\n\nתוכן ההודעה:\n[your-message]\n\n-- \nאימייל זה נשלח מטופס יצירת קשר ב ברוקר נדל&quot;ן (//localhost:3000/broker)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(218, 93, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:37:"ברוקר נדל"ן "[your-subject]"";s:6:"sender";s:44:"ברוקר נדל"ן <davseveloff@gmail.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:153:"תוכן ההודעה:\n[your-message]\n\n-- \nאימייל זה נשלח מטופס יצירת קשר ב ברוקר נדל&quot;ן (//localhost:3000/broker)";s:18:"additional_headers";s:31:"Reply-To: davseveloff@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(219, 93, '_messages', 'a:23:{s:12:"mail_sent_ok";s:24:"ההודעה נשלחה.";s:12:"mail_sent_ng";s:46:"ארעה שגיאה בשליחת ההודעה.";s:16:"validation_error";s:52:"קיימת שגיאה בשדה אחד או יותר.";s:4:"spam";s:46:"ארעה שגיאה בשליחת ההודעה.";s:12:"accept_terms";s:68:"עליך להסכים לתנאים לפני שליחת ההודעה.";s:16:"invalid_required";s:23:"זהו שדה חובה.";s:16:"invalid_too_long";s:25:"השדה ארוך מדי.";s:17:"invalid_too_short";s:23:"השדה קצר מדי.";s:12:"invalid_date";s:38:"שדה התאריך אינו נכון.";s:14:"date_too_early";s:50:"התאריך מוקדם מהתאריך המותר.";s:13:"date_too_late";s:50:"התאריך מאוחר מהתאריך המותר.";s:13:"upload_failed";s:51:"שגיאה לא ידועה בהעלאת הקובץ.";s:24:"upload_file_type_invalid";s:67:"אין לך הרשאות להעלות קבצים בפורמט זה.";s:21:"upload_file_too_large";s:27:"הקובץ גדול מדי.";s:23:"upload_failed_php_error";s:35:"שגיאה בהעלאת הקובץ.";s:14:"invalid_number";s:40:"פורמט המספר אינו תקין.";s:16:"number_too_small";s:48:"המספר קטן מהמינימום המותר.";s:16:"number_too_large";s:50:"המספר גדול מהמקסימום המותר.";s:23:"quiz_answer_not_correct";s:59:"התשובה לשאלת הביטחון אינה נכונה.";s:17:"captcha_not_match";s:29:"הקוד שהזנת שגוי.";s:13:"invalid_email";s:59:"כתובת האימייל שהוזנה אינה תקינה.";s:11:"invalid_url";s:31:"הקישור אינו תקין.";s:11:"invalid_tel";s:40:"מספר הטלפון אינו תקין.";}'),
(220, 93, '_additional_settings', ''),
(221, 93, '_locale', 'he_IL'),
(234, 93, '_config_errors', 'a:1:{s:23:"mail.additional_headers";a:1:{i:0;a:2:{s:4:"code";i:102;s:4:"args";a:3:{s:7:"message";s:51:"Invalid mailbox syntax is used in the %name% field.";s:6:"params";a:1:{s:4:"name";s:8:"Reply-To";}s:4:"link";s:68:"https://contactform7.com/configuration-errors/invalid-mailbox-syntax";}}}}'),
(235, 70, 'prop_store_from', '-1'),
(236, 70, '_prop_store_from', 'field_59c0f88f6373b'),
(237, 70, 'prop_tech', 'a:3:{i:0;s:10:"מיזוג";i:1;s:19:"גישה לנכים";i:2;s:10:"מעלית";}'),
(238, 70, '_prop_tech', 'field_59aeac9970a0c'),
(239, 94, '_edit_lock', '1508666999:1'),
(240, 94, '_edit_last', '1'),
(254, 107, '_edit_lock', '1508669302:1'),
(255, 107, '_edit_last', '1'),
(256, 108, '_edit_lock', '1508667016:1'),
(257, 108, '_edit_last', '1'),
(258, 108, '_thumbnail_id', '71'),
(259, 108, 'prop_city', 'אילת'),
(260, 108, '_prop_city', 'field_59ae96d970a06'),
(261, 108, 'prop_neighborhood', 'שחמון'),
(262, 108, '_prop_neighborhood', 'field_59ae9c0970a07'),
(263, 108, 'prop_street', 'בן גוריון'),
(264, 108, '_prop_street', 'field_59ae9d3e70a08'),
(265, 108, 'prop_address_no', '192'),
(266, 108, '_prop_address_no', 'field_59aeacdae6480'),
(267, 108, 'prop_location', 'a:3:{s:7:"address";s:49:"בן גוריון 192, גבעתיים, ישראל";s:3:"lat";s:10:"32.0734017";s:3:"lng";s:17:"34.81812239999999";}'),
(268, 108, '_prop_location', 'field_59ae9d7370a09'),
(269, 108, 'prop_store', '3'),
(270, 108, '_prop_store', 'field_59ae9dac70a0a'),
(271, 108, 'prop_store_from', '3'),
(272, 108, '_prop_store_from', 'field_59c0f88f6373b'),
(273, 108, 'prop_rooms', '3'),
(274, 108, '_prop_rooms', 'field_59ae9e2370a0b'),
(275, 108, 'prop_tech', 'a:3:{i:0;s:10:"מרפסת";i:1;s:10:"מיזוג";i:2;s:10:"חנייה";}'),
(276, 108, '_prop_tech', 'field_59aeac9970a0c'),
(277, 108, 'prop_size', '80'),
(278, 108, '_prop_size', 'field_59aeadaf51fa2'),
(279, 108, 'prop_price', '2300000'),
(280, 108, '_prop_price', 'field_59aeaee651fac'),
(281, 108, 'prop_description', 'פנטהאוז המשתרע על 2 קומות. בקומה 3 2 חדרי שינה כולל שירותים ומקלחות מטבח ענק וסלון ענק ובקומת הגג חדר ענק ועוד חדר מקלחת ושרותים משופצים יש בסה"כ 5 מזגנים וחניה מקורה והכל במקום מאוד מרכזי'),
(282, 108, '_prop_description', 'field_59aeaf4b51fad'),
(283, 107, 'prop_city', 'אילת'),
(284, 107, '_prop_city', 'field_59ae96d970a06'),
(285, 107, 'prop_neighborhood', 'שכונה ו'''),
(286, 107, '_prop_neighborhood', 'field_59ae9c0970a07'),
(287, 107, 'prop_street', 'באברבנאל'),
(288, 107, '_prop_street', 'field_59ae9d3e70a08'),
(289, 107, 'prop_address_no', '49'),
(290, 107, '_prop_address_no', 'field_59aeacdae6480'),
(291, 107, 'prop_location', 'a:3:{s:7:"address";s:51:"אברבנאל 49, תל אביב יפו, ישראל";s:3:"lat";s:17:"32.05550529999999";s:3:"lng";s:17:"34.76701819999994";}'),
(292, 107, '_prop_location', 'field_59ae9d7370a09'),
(293, 107, 'prop_store', '1'),
(294, 107, '_prop_store', 'field_59ae9dac70a0a'),
(295, 107, 'prop_store_from', '8'),
(296, 107, '_prop_store_from', 'field_59c0f88f6373b'),
(297, 107, 'prop_rooms', '2'),
(298, 107, '_prop_rooms', 'field_59ae9e2370a0b'),
(299, 107, 'prop_tech', 'a:4:{i:0;s:10:"חנייה";i:1;s:19:"גישה לנכים";i:2;s:7:"ממ"ד";i:3;s:10:"מעלית";}'),
(300, 107, '_prop_tech', 'field_59aeac9970a0c'),
(301, 107, 'prop_size', '40'),
(302, 107, '_prop_size', 'field_59aeadaf51fa2'),
(303, 107, 'prop_price', '1740000'),
(304, 107, '_prop_price', 'field_59aeaee651fac'),
(305, 107, 'prop_description', 'נכס חדש בבניין בן 5, מרפסת קטנה, חניה מעלית, בובה של דירה, מושכרת בקלות כל השנה. בניין חדש במיקום הכי מרכזי בפלורנטין ממש מול הרביעייה של פיבקוכל הקודם זוכה!'),
(306, 107, '_prop_description', 'field_59aeaf4b51fad'),
(307, 107, '_thumbnail_id', '71'),
(308, 94, 'prop_city', 'אילת'),
(309, 94, '_prop_city', 'field_59ae96d970a06'),
(310, 94, 'prop_neighborhood', 'שכונה ג'),
(311, 94, '_prop_neighborhood', 'field_59ae9c0970a07'),
(312, 94, 'prop_street', 'הנביאים'),
(313, 94, '_prop_street', 'field_59ae9d3e70a08'),
(314, 94, 'prop_address_no', '54'),
(315, 94, '_prop_address_no', 'field_59aeacdae6480'),
(316, 94, 'prop_location', ''),
(317, 94, '_prop_location', 'field_59ae9d7370a09'),
(318, 94, 'prop_store', '20'),
(319, 94, '_prop_store', 'field_59ae9dac70a0a'),
(320, 94, 'prop_store_from', 'twenty'),
(321, 94, '_prop_store_from', 'field_59c0f88f6373b'),
(322, 94, 'prop_rooms', '3.5'),
(323, 94, '_prop_rooms', 'field_59ae9e2370a0b'),
(324, 94, 'prop_tech', 'a:4:{i:0;s:10:"מיזוג";i:1;s:19:"גישה לנכים";i:2;s:7:"ממ"ד";i:3;s:12:"סורגים";}'),
(325, 94, '_prop_tech', 'field_59aeac9970a0c'),
(326, 94, 'prop_size', '101'),
(327, 94, '_prop_size', 'field_59aeadaf51fa2'),
(328, 94, 'prop_price', '2260000'),
(329, 94, '_prop_price', 'field_59aeaee651fac'),
(330, 94, 'prop_description', 'דירה במצב חדש פינוי בסוף אוקטובר \r\nנבנה על ידי חברת אשדר הדירה צופה לפארק גן העיר ולכיוון הים שלושה כיווני אויר צפון מערב מזרח'),
(331, 94, '_prop_description', 'field_59aeaf4b51fad'),
(335, 110, '_edit_last', '1'),
(333, 109, '_edit_lock', '1508733812:1'),
(334, 109, '_edit_last', '1'),
(336, 110, 'prop_city', 'תל אביב'),
(337, 110, '_prop_city', 'field_59ae96d970a06'),
(338, 110, 'prop_neighborhood', 'שכונה ט'''),
(339, 110, '_prop_neighborhood', 'field_59ae9c0970a07'),
(340, 110, 'prop_street', 'הרב קובלסקי'),
(341, 110, '_prop_street', 'field_59ae9d3e70a08'),
(342, 110, 'prop_address_no', '14'),
(343, 110, '_prop_address_no', 'field_59aeacdae6480'),
(344, 110, 'prop_location', ''),
(345, 110, '_prop_location', 'field_59ae9d7370a09'),
(346, 110, 'prop_store', '4'),
(347, 110, '_prop_store', 'field_59ae9dac70a0a'),
(348, 110, 'prop_store_from', '4'),
(349, 110, '_prop_store_from', 'field_59c0f88f6373b'),
(350, 110, 'prop_rooms', '5'),
(351, 110, '_prop_rooms', 'field_59ae9e2370a0b'),
(352, 110, 'prop_tech', 'a:4:{i:0;s:10:"מרפסת";i:1;s:10:"חנייה";i:2;s:7:"ממ"ד";i:3;s:10:"מעלית";}'),
(353, 110, '_prop_tech', 'field_59aeac9970a0c'),
(354, 110, 'prop_size', '130'),
(355, 110, '_prop_size', 'field_59aeadaf51fa2'),
(356, 110, 'prop_price', '2355000'),
(357, 110, '_prop_price', 'field_59aeaee651fac'),
(358, 110, 'prop_description', 'דופלקס קומה ד - 3 חדרים קומה ה - 2 חדרים + מרפסת גג + פרגולה + מקום לסוכה, חנייה משותפת של דיירי הבניין. קומה ד עברה שיפוץ יסודי לפני שנה - צנרת חדשה, מטבח ושירותים. לכל הדירה יש היתר בנייה חוקי. לפי התב"ע - ניתן להגדיל את הקומה הרביעית עד ל- 120 מ"ר גולל ממ"ד.'),
(359, 110, '_prop_description', 'field_59aeaf4b51fad'),
(360, 110, '_edit_lock', '1509083046:1'),
(361, 109, '_thumbnail_id', '71'),
(362, 109, 'prop_city', 'אילת'),
(363, 109, '_prop_city', 'field_59ae96d970a06'),
(364, 109, 'prop_neighborhood', 'שכונה ט'''),
(365, 109, '_prop_neighborhood', 'field_59ae9c0970a07'),
(366, 109, 'prop_street', 'הרב קובלסקי'),
(367, 109, '_prop_street', 'field_59ae9d3e70a08'),
(368, 109, 'prop_address_no', '14'),
(369, 109, '_prop_address_no', 'field_59aeacdae6480'),
(370, 109, 'prop_location', 'a:3:{s:7:"address";s:51:"הרב קובלסקי 14, בני ברק, ישראל";s:3:"lat";s:10:"32.0981251";s:3:"lng";s:17:"34.84158720000005";}'),
(371, 109, '_prop_location', 'field_59ae9d7370a09'),
(372, 109, 'prop_store', '4'),
(373, 109, '_prop_store', 'field_59ae9dac70a0a'),
(374, 109, 'prop_store_from', '4'),
(375, 109, '_prop_store_from', 'field_59c0f88f6373b'),
(376, 109, 'prop_rooms', '5'),
(377, 109, '_prop_rooms', 'field_59ae9e2370a0b'),
(378, 109, 'prop_tech', 'a:4:{i:0;s:10:"מרפסת";i:1;s:10:"חנייה";i:2;s:7:"ממ"ד";i:3;s:10:"מעלית";}'),
(379, 109, '_prop_tech', 'field_59aeac9970a0c'),
(380, 109, 'prop_size', '130'),
(381, 109, '_prop_size', 'field_59aeadaf51fa2'),
(382, 109, 'prop_price', '2355000'),
(383, 109, '_prop_price', 'field_59aeaee651fac'),
(384, 109, 'prop_description', 'דופלקס קומה ד - 3 חדרים קומה ה - 2 חדרים + מרפסת גג + פרגולה + מקום לסוכה, חנייה משותפת של דיירי הבניין. קומה ד עברה שיפוץ יסודי לפני שנה - צנרת חדשה, מטבח ושירותים. לכל הדירה יש היתר בנייה חוקי. לפי התב"ע - ניתן להגדיל את הקומה הרביעית עד ל- 120 מ"ר גולל ממ"ד.'),
(385, 109, '_prop_description', 'field_59aeaf4b51fad'),
(386, 111, '_edit_lock', '1509089065:1'),
(387, 111, '_edit_last', '1'),
(388, 112, '_edit_lock', '1508666968:1'),
(389, 112, '_edit_last', '1'),
(390, 112, 'prop_city', 'אילת'),
(391, 112, '_prop_city', 'field_59ae96d970a06'),
(392, 112, 'prop_neighborhood', 'הדרדרים'),
(393, 112, '_prop_neighborhood', 'field_59ae9c0970a07'),
(394, 112, 'prop_street', 'שרגא רפאלי'),
(395, 112, '_prop_street', 'field_59ae9d3e70a08'),
(396, 112, 'prop_address_no', '12'),
(397, 112, '_prop_address_no', 'field_59aeacdae6480'),
(398, 112, 'prop_location', 'a:3:{s:7:"address";s:83:"שבט המושבה, רחוב שרגא רפאלי 12, פתח תקווה, ישראל";s:3:"lat";s:10:"32.1065371";s:3:"lng";s:18:"34.878483200000005";}'),
(399, 112, '_prop_location', 'field_59ae9d7370a09'),
(400, 112, 'prop_store', '4'),
(401, 112, '_prop_store', 'field_59ae9dac70a0a'),
(402, 112, 'prop_store_from', '18'),
(403, 112, '_prop_store_from', 'field_59c0f88f6373b'),
(404, 112, 'prop_rooms', '5'),
(405, 112, '_prop_rooms', 'field_59ae9e2370a0b'),
(406, 112, 'prop_tech', 'a:4:{i:0;s:19:"גישה לנכים";i:1;s:12:"סורגים";i:2;s:10:"מעלית";i:3;s:8:"מחסן";}'),
(407, 112, '_prop_tech', 'field_59aeac9970a0c'),
(408, 112, 'prop_size', '120'),
(409, 112, '_prop_size', 'field_59aeadaf51fa2'),
(410, 112, 'prop_price', '2295000'),
(411, 112, '_prop_price', 'field_59aeaee651fac'),
(412, 112, 'prop_description', 'דירת חמישה חדרים מעוצבת אדריכל - ברמה גבוהה מאוד חזית - ד-מערב, חימום מים בגז מכון כושר מפואר וג''ימבורי גדול\r\nדלתות פנדור בכל הבית\r\nללא תיווך!'),
(413, 112, '_prop_description', 'field_59aeaf4b51fad'),
(414, 111, '_thumbnail_id', '71'),
(415, 111, 'prop_city', 'אילת'),
(416, 111, '_prop_city', 'field_59ae96d970a06'),
(417, 111, 'prop_neighborhood', 'הדרדרים'),
(418, 111, '_prop_neighborhood', 'field_59ae9c0970a07'),
(419, 111, 'prop_street', 'שרגא רפאלי'),
(420, 111, '_prop_street', 'field_59ae9d3e70a08'),
(421, 111, 'prop_address_no', '12'),
(422, 111, '_prop_address_no', 'field_59aeacdae6480'),
(423, 111, 'prop_location', 'a:3:{s:7:"address";s:53:"שרגא רפאלי, פתח תקווה, ישראל 12";s:3:"lat";s:10:"32.1072152";s:3:"lng";s:17:"34.87822529999994";}'),
(424, 111, '_prop_location', 'field_59ae9d7370a09'),
(425, 111, 'prop_store', '4'),
(426, 111, '_prop_store', 'field_59ae9dac70a0a'),
(427, 111, 'prop_store_from', '18'),
(428, 111, '_prop_store_from', 'field_59c0f88f6373b'),
(429, 111, 'prop_rooms', '4'),
(430, 111, '_prop_rooms', 'field_59ae9e2370a0b'),
(431, 111, 'prop_tech', 'a:3:{i:0;s:12:"סורגים";i:1;s:10:"מעלית";i:2;s:8:"מחסן";}'),
(801, 111, 'prop_year', ''),
(432, 111, '_prop_tech', 'field_59aeac9970a0c'),
(433, 111, 'prop_size', '120'),
(434, 111, '_prop_size', 'field_59aeadaf51fa2'),
(435, 111, 'prop_price', '2295000'),
(436, 111, '_prop_price', 'field_59aeaee651fac'),
(437, 111, 'prop_description', 'דירת חמישה חדרים מעוצבת אדריכל - ברמה גבוהה מאוד חזית - ד-מערב, חימום מים בגז מכון כושר מפואר וג''ימבורי גדול\r\nדלתות פנדור בכל הבית\r\nללא תיווך!'),
(438, 111, '_prop_description', 'field_59aeaf4b51fad'),
(442, 110, '_thumbnail_id', '71'),
(443, 112, '_thumbnail_id', '71'),
(444, 94, '_thumbnail_id', '71'),
(445, 174, '_wp_attached_file', '2017/09/redheadfam.jpg'),
(446, 174, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1067;s:4:"file";s:22:"2017/09/redheadfam.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"redheadfam-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"redheadfam-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"redheadfam-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"redheadfam-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"4";s:6:"credit";s:0:"";s:6:"camera";s:10:"NIKON D810";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1500296225";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"180";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.002";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(447, 175, '_wp_attached_file', '2017/10/home-elev.png'),
(448, 175, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:126;s:6:"height";i:126;s:4:"file";s:21:"2017/10/home-elev.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(449, 175, '_wp_attachment_image_alt', 'home-elev'),
(450, 176, '_wp_attached_file', '2017/10/icon-11.png'),
(451, 176, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:253;s:6:"height";i:253;s:4:"file";s:19:"2017/10/icon-11.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"icon-11-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(452, 70, 'prop_year', ''),
(453, 70, '_prop_year', 'field_59d0d715595c0'),
(454, 70, 'prop_condition', ''),
(455, 70, '_prop_condition', 'field_59d0d74f595c1'),
(456, 70, 'prop_arnona', ''),
(457, 70, '_prop_arnona', 'field_59d0d781595c2'),
(458, 70, 'prop_vaad', ''),
(459, 70, '_prop_vaad', 'field_59d0d7af595c3'),
(460, 70, '_', 'field_59d0d7df595c4'),
(461, 231, '_wp_attached_file', '2017/10/prop_icon_08-1.png'),
(462, 231, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:34;s:6:"height";i:29;s:4:"file";s:26:"2017/10/prop_icon_08-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(463, 232, '_wp_attached_file', '2017/10/prop_icon_10-1.png'),
(464, 232, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:34;s:6:"height";i:29;s:4:"file";s:26:"2017/10/prop_icon_10-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(465, 233, '_wp_attached_file', '2017/10/prop_icon_12-1.png'),
(466, 233, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:34;s:6:"height";i:29;s:4:"file";s:26:"2017/10/prop_icon_12-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(467, 234, '_wp_attached_file', '2017/10/prop_icon_14-1.png'),
(468, 234, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:34;s:6:"height";i:29;s:4:"file";s:26:"2017/10/prop_icon_14-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(469, 235, '_wp_attached_file', '2017/10/prop_icon_16-1.png'),
(470, 235, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:34;s:6:"height";i:29;s:4:"file";s:26:"2017/10/prop_icon_16-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(471, 236, '_wp_attached_file', '2017/10/prop_icon_18-1.png'),
(472, 236, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:34;s:6:"height";i:29;s:4:"file";s:26:"2017/10/prop_icon_18-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(473, 237, '_wp_attached_file', '2017/10/prop_icon_20-1.png'),
(474, 237, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:34;s:6:"height";i:29;s:4:"file";s:26:"2017/10/prop_icon_20-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(475, 238, '_wp_attached_file', '2017/10/prop-icon-dis_06-1.png'),
(476, 238, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:34;s:6:"height";i:24;s:4:"file";s:30:"2017/10/prop-icon-dis_06-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(477, 239, '_wp_attached_file', '2017/10/prop-icon-dis_08-1.png'),
(478, 239, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:34;s:6:"height";i:29;s:4:"file";s:30:"2017/10/prop-icon-dis_08-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(479, 240, '_wp_attached_file', '2017/10/prop-icon-dis_10-1.png'),
(480, 240, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:34;s:6:"height";i:29;s:4:"file";s:30:"2017/10/prop-icon-dis_10-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(481, 241, '_wp_attached_file', '2017/10/prop-icon-dis_12-1.png'),
(482, 241, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:34;s:6:"height";i:29;s:4:"file";s:30:"2017/10/prop-icon-dis_12-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(483, 242, '_wp_attached_file', '2017/10/prop-icon-dis_14-1.png'),
(484, 242, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:34;s:6:"height";i:29;s:4:"file";s:30:"2017/10/prop-icon-dis_14-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(485, 243, '_wp_attached_file', '2017/10/prop-icon-dis_16-1.png'),
(486, 243, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:34;s:6:"height";i:29;s:4:"file";s:30:"2017/10/prop-icon-dis_16-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(487, 244, '_wp_attached_file', '2017/10/prop-icon-dis_18-1.png'),
(488, 244, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:34;s:6:"height";i:29;s:4:"file";s:30:"2017/10/prop-icon-dis_18-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(489, 245, '_wp_attached_file', '2017/10/prop-icon-dis_20-1.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(490, 245, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:34;s:6:"height";i:29;s:4:"file";s:30:"2017/10/prop-icon-dis_20-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(491, 246, '_wp_attached_file', '2017/10/prop_icon_03-1.png'),
(492, 246, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:34;s:6:"height";i:40;s:4:"file";s:26:"2017/10/prop_icon_03-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(493, 247, '_wp_attached_file', '2017/10/prop_icon_06-1.png'),
(494, 247, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:34;s:6:"height";i:24;s:4:"file";s:26:"2017/10/prop_icon_06-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(495, 112, 'prop_year', '1995'),
(496, 112, '_prop_year', 'field_59d0d715595c0'),
(497, 112, 'prop_condition', 'משופצת'),
(498, 112, '_prop_condition', 'field_59d0d74f595c1'),
(499, 112, 'prop_arnona', '1300'),
(500, 112, '_prop_arnona', 'field_59d0d781595c2'),
(501, 112, 'prop_vaad', '350'),
(502, 112, '_prop_vaad', 'field_59d0d7af595c3'),
(503, 112, '_', 'field_59d0d7df595c4'),
(504, 249, '_wp_attached_file', '2017/09/beach-villa-1.jpg'),
(505, 249, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1245;s:4:"file";s:25:"2017/09/beach-villa-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"beach-villa-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"beach-villa-1-300x195.jpg";s:5:"width";i:300;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"beach-villa-1-768x498.jpg";s:5:"width";i:768;s:6:"height";i:498;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"beach-villa-1-1024x664.jpg";s:5:"width";i:1024;s:6:"height";i:664;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(506, 250, '_wp_attached_file', '2017/09/morgan-room-penthouse-bbq-02.jpg'),
(507, 250, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1245;s:4:"file";s:40:"2017/09/morgan-room-penthouse-bbq-02.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:40:"morgan-room-penthouse-bbq-02-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:40:"morgan-room-penthouse-bbq-02-300x195.jpg";s:5:"width";i:300;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:40:"morgan-room-penthouse-bbq-02-768x498.jpg";s:5:"width";i:768;s:6:"height";i:498;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:41:"morgan-room-penthouse-bbq-02-1024x664.jpg";s:5:"width";i:1024;s:6:"height";i:664;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(508, 251, '_wp_attached_file', '2017/09/MY001_Penthouse_Dining_Room_ODADA.jpg'),
(509, 251, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1245;s:4:"file";s:45:"2017/09/MY001_Penthouse_Dining_Room_ODADA.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:45:"MY001_Penthouse_Dining_Room_ODADA-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:45:"MY001_Penthouse_Dining_Room_ODADA-300x195.jpg";s:5:"width";i:300;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:45:"MY001_Penthouse_Dining_Room_ODADA-768x498.jpg";s:5:"width";i:768;s:6:"height";i:498;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:46:"MY001_Penthouse_Dining_Room_ODADA-1024x664.jpg";s:5:"width";i:1024;s:6:"height";i:664;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(510, 252, '_wp_attached_file', '2017/09/Penthouse-1.jpg'),
(511, 252, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1245;s:4:"file";s:23:"2017/09/Penthouse-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"Penthouse-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"Penthouse-1-300x195.jpg";s:5:"width";i:300;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"Penthouse-1-768x498.jpg";s:5:"width";i:768;s:6:"height";i:498;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"Penthouse-1-1024x664.jpg";s:5:"width";i:1024;s:6:"height";i:664;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(512, 253, '_wp_attached_file', '2017/09/villa-cruz-1.jpg'),
(513, 253, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1245;s:4:"file";s:24:"2017/09/villa-cruz-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"villa-cruz-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"villa-cruz-1-300x195.jpg";s:5:"width";i:300;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"villa-cruz-1-768x498.jpg";s:5:"width";i:768;s:6:"height";i:498;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"villa-cruz-1-1024x664.jpg";s:5:"width";i:1024;s:6:"height";i:664;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(514, 112, 'prop_video', 'https://youtu.be/n4RjJKxsamQ'),
(515, 112, '_prop_video', 'field_59d0d7df595c4'),
(516, 112, 'prop_gallery', 'a:5:{i:0;s:3:"254";i:1;s:3:"255";i:2;s:3:"256";i:3;s:3:"257";i:4;s:3:"258";}'),
(517, 112, '_prop_gallery', 'field_59d8f8086351b'),
(518, 254, '_wp_attached_file', '2017/09/beach-villa-1.jpg'),
(519, 254, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1245;s:4:"file";s:25:"2017/09/beach-villa-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"beach-villa-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"beach-villa-1-300x195.jpg";s:5:"width";i:300;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"beach-villa-1-768x498.jpg";s:5:"width";i:768;s:6:"height";i:498;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"beach-villa-1-1024x664.jpg";s:5:"width";i:1024;s:6:"height";i:664;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(520, 255, '_wp_attached_file', '2017/09/morgan-room-penthouse-bbq-02.jpg'),
(521, 255, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1245;s:4:"file";s:40:"2017/09/morgan-room-penthouse-bbq-02.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:40:"morgan-room-penthouse-bbq-02-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:40:"morgan-room-penthouse-bbq-02-300x195.jpg";s:5:"width";i:300;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:40:"morgan-room-penthouse-bbq-02-768x498.jpg";s:5:"width";i:768;s:6:"height";i:498;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:41:"morgan-room-penthouse-bbq-02-1024x664.jpg";s:5:"width";i:1024;s:6:"height";i:664;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(522, 256, '_wp_attached_file', '2017/09/MY001_Penthouse_Dining_Room_ODADA.jpg'),
(523, 256, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1245;s:4:"file";s:45:"2017/09/MY001_Penthouse_Dining_Room_ODADA.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:45:"MY001_Penthouse_Dining_Room_ODADA-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:45:"MY001_Penthouse_Dining_Room_ODADA-300x195.jpg";s:5:"width";i:300;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:45:"MY001_Penthouse_Dining_Room_ODADA-768x498.jpg";s:5:"width";i:768;s:6:"height";i:498;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:46:"MY001_Penthouse_Dining_Room_ODADA-1024x664.jpg";s:5:"width";i:1024;s:6:"height";i:664;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(524, 257, '_wp_attached_file', '2017/09/Penthouse-1.jpg'),
(525, 257, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1245;s:4:"file";s:23:"2017/09/Penthouse-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"Penthouse-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"Penthouse-1-300x195.jpg";s:5:"width";i:300;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"Penthouse-1-768x498.jpg";s:5:"width";i:768;s:6:"height";i:498;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"Penthouse-1-1024x664.jpg";s:5:"width";i:1024;s:6:"height";i:664;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(526, 258, '_wp_attached_file', '2017/09/villa-cruz-1.jpg'),
(527, 258, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1245;s:4:"file";s:24:"2017/09/villa-cruz-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"villa-cruz-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"villa-cruz-1-300x195.jpg";s:5:"width";i:300;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"villa-cruz-1-768x498.jpg";s:5:"width";i:768;s:6:"height";i:498;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"villa-cruz-1-1024x664.jpg";s:5:"width";i:1024;s:6:"height";i:664;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(824, 110, '_prop_video', 'field_59d0d7df595c4'),
(825, 110, 'prop_gallery', ''),
(826, 110, '_prop_gallery', 'field_59d8f8086351b'),
(823, 110, 'prop_video', ''),
(822, 110, '_prop_vaad', 'field_59d0d7af595c3'),
(531, 112, 'prop_anot', 'טאבו'),
(532, 112, '_prop_anot', 'field_59dcc8df3c851'),
(533, 261, '_wp_attached_file', '2017/10/broker-tag.jpg'),
(534, 261, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:266;s:6:"height";i:266;s:4:"file";s:22:"2017/10/broker-tag.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"broker-tag-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(535, 261, '_wp_attachment_image_alt', 'broker-tag'),
(536, 112, '_oembed_01925ff64f8efcb27d08e372107f7772', '<iframe width="640" height="360" src="https://www.youtube.com/embed/n4RjJKxsamQ?feature=oembed" frameborder="0" allowfullscreen></iframe>'),
(537, 112, '_oembed_time_01925ff64f8efcb27d08e372107f7772', '1507647871'),
(817, 110, 'prop_condition', ''),
(818, 110, '_prop_condition', 'field_59d0d74f595c1'),
(608, 310, '_elementor_edit_mode', 'builder'),
(607, 310, '_edit_last', '1'),
(606, 310, '_edit_lock', '1507792491:1'),
(814, 111, '_prop_anot', 'field_59dcc8df3c851'),
(815, 110, 'prop_year', ''),
(816, 110, '_prop_year', 'field_59d0d715595c0'),
(556, 274, '_wp_attached_file', '2017/10/broker-father-and-son.jpg'),
(557, 274, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2305;s:6:"height";i:1537;s:4:"file";s:33:"2017/10/broker-father-and-son.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"broker-father-and-son-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"broker-father-and-son-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:33:"broker-father-and-son-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:34:"broker-father-and-son-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(811, 111, 'prop_gallery', ''),
(810, 111, '_prop_video', 'field_59d0d7df595c4'),
(812, 111, '_prop_gallery', 'field_59d8f8086351b'),
(802, 111, '_prop_year', 'field_59d0d715595c0'),
(803, 111, 'prop_condition', ''),
(804, 111, '_prop_condition', 'field_59d0d74f595c1'),
(805, 111, 'prop_arnona', ''),
(806, 111, '_prop_arnona', 'field_59d0d781595c2'),
(807, 111, 'prop_vaad', ''),
(808, 111, '_prop_vaad', 'field_59d0d7af595c3'),
(809, 111, 'prop_video', ''),
(813, 111, 'prop_anot', 'טאבו'),
(974, 444, '_wp_page_template', 'page-archive.php'),
(973, 444, '_edit_last', '1'),
(972, 444, '_edit_lock', '1509790066:1'),
(639, 341, '_edit_lock', '1510987519:7'),
(640, 341, '_edit_last', '1'),
(641, 341, '_thumbnail_id', '253'),
(642, 341, 'prop_city', 'אילת'),
(643, 341, '_prop_city', 'field_59ae96d970a06'),
(644, 341, 'prop_neighborhood', 'שחמון'),
(645, 341, '_prop_neighborhood', 'field_59ae9c0970a07'),
(646, 341, 'prop_street', 'משעול הודבדבן'),
(647, 341, '_prop_street', 'field_59ae9d3e70a08'),
(648, 341, 'prop_address_no', '4'),
(649, 341, '_prop_address_no', 'field_59aeacdae6480'),
(650, 341, 'prop_location', 'a:3:{s:7:"address";s:54:"משעול הדובדבן 4, קרית גת, ישראל";s:3:"lat";s:17:"31.60538309999999";s:3:"lng";s:18:"34.766772400000036";}'),
(651, 341, '_prop_location', 'field_59ae9d7370a09'),
(652, 341, 'prop_store', '5'),
(653, 341, '_prop_store', 'field_59ae9dac70a0a'),
(654, 341, 'prop_store_from', '12'),
(655, 341, '_prop_store_from', 'field_59c0f88f6373b'),
(656, 341, 'prop_rooms', '5'),
(657, 341, '_prop_rooms', 'field_59ae9e2370a0b'),
(658, 341, 'prop_tech', 'a:4:{i:0;s:10:"מרפסת";i:1;s:10:"מיזוג";i:2;s:12:"סורגים";i:3;s:8:"מחסן";}'),
(659, 341, '_prop_tech', 'field_59aeac9970a0c'),
(660, 341, 'prop_description', 'תיאור כללי'),
(661, 341, '_prop_description', 'field_59aeaf4b51fad'),
(662, 341, 'prop_price', '1555555'),
(663, 341, '_prop_price', 'field_59aeaee651fac'),
(664, 341, 'prop_size', '123'),
(665, 341, '_prop_size', 'field_59aeadaf51fa2'),
(666, 341, 'prop_year', '1992'),
(667, 341, '_prop_year', 'field_59d0d715595c0'),
(668, 341, 'prop_condition', 'מצוין'),
(669, 341, '_prop_condition', 'field_59d0d74f595c1'),
(670, 341, 'prop_arnona', '600'),
(671, 341, '_prop_arnona', 'field_59d0d781595c2'),
(672, 341, 'prop_vaad', ''),
(673, 341, '_prop_vaad', 'field_59d0d7af595c3'),
(674, 341, 'prop_video', ''),
(675, 341, '_prop_video', 'field_59d0d7df595c4'),
(676, 341, 'prop_gallery', 'a:8:{i:0;s:3:"258";i:1;s:3:"257";i:2;s:3:"256";i:3;s:3:"255";i:4;s:3:"254";i:5;s:3:"253";i:6;s:3:"252";i:7;s:3:"251";}'),
(677, 341, '_prop_gallery', 'field_59d8f8086351b'),
(678, 341, 'prop_anot', 'טאבו'),
(679, 341, '_prop_anot', 'field_59dcc8df3c851'),
(680, 342, '_wp_attached_file', '2017/10/broker-contact-icon_08.png'),
(681, 342, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:49;s:6:"height";i:50;s:4:"file";s:34:"2017/10/broker-contact-icon_08.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(682, 343, '_wp_attached_file', '2017/10/broker-contact-icon_10.png'),
(683, 343, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:49;s:6:"height";i:50;s:4:"file";s:34:"2017/10/broker-contact-icon_10.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(684, 344, '_wp_attached_file', '2017/10/broker-contact-icon_12.png'),
(685, 344, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:49;s:6:"height";i:50;s:4:"file";s:34:"2017/10/broker-contact-icon_12.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(686, 345, '_wp_attached_file', '2017/10/broker-contact-icon_14.png'),
(687, 345, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:49;s:6:"height";i:50;s:4:"file";s:34:"2017/10/broker-contact-icon_14.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(688, 346, '_wp_attached_file', '2017/10/broker-contact-icon_16.png'),
(689, 346, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:49;s:6:"height";i:50;s:4:"file";s:34:"2017/10/broker-contact-icon_16.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(690, 347, '_wp_attached_file', '2017/10/broker-contact-icon_03.png'),
(691, 347, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:49;s:6:"height";i:50;s:4:"file";s:34:"2017/10/broker-contact-icon_03.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(692, 348, '_wp_attached_file', '2017/10/broker-contact-icon_06.png'),
(693, 348, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:49;s:6:"height";i:50;s:4:"file";s:34:"2017/10/broker-contact-icon_06.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1060, 23, 'yuzo_related_post_metabox', 'a:1:{s:21:"yuzo_disabled_related";N;}'),
(715, 364, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:19:"2017/10/banner6.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"banner6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"banner6-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"banner6-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"banner6-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"8";s:6:"credit";s:11:"Huw Lambert";s:6:"camera";s:21:"Canon EOS 5D Mark III";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1359145856";s:9:"copyright";s:18:"Huw@HuwLambert.com";s:12:"focal_length";s:2:"17";s:3:"iso";s:4:"1000";s:13:"shutter_speed";s:3:"0.6";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(714, 364, '_wp_attached_file', '2017/10/banner6.jpg'),
(713, 363, '_edit_last', '1'),
(712, 363, '_edit_lock', '1513586355:1'),
(711, 353, '_wp_page_template', 'single-author_profile.php'),
(710, 353, '_edit_last', '1'),
(709, 353, '_edit_lock', '1511110203:1'),
(716, 365, '_wp_attached_file', '2017/10/gallery15.jpg'),
(717, 365, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:21:"2017/10/gallery15.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"gallery15-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"gallery15-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"gallery15-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"gallery15-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(718, 366, '_wp_attached_file', '2017/10/images.jpg'),
(719, 366, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:275;s:6:"height";i:183;s:4:"file";s:18:"2017/10/images.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"images-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(720, 367, '_wp_attached_file', '2017/10/property-connect-home.jpg'),
(721, 367, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1067;s:4:"file";s:33:"2017/10/property-connect-home.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"property-connect-home-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"property-connect-home-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:33:"property-connect-home-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:34:"property-connect-home-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(722, 368, '_wp_attached_file', '2017/10/property-management-img.jpg'),
(723, 368, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:626;s:6:"height";i:287;s:4:"file";s:35:"2017/10/property-management-img.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"property-management-img-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"property-management-img-300x138.jpg";s:5:"width";i:300;s:6:"height";i:138;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(724, 363, '_thumbnail_id', '365'),
(725, 363, 'prop_city', 'תל אביב - יפו'),
(726, 363, '_prop_city', 'field_59ae96d970a06'),
(727, 363, 'prop_neighborhood', 'הדר יוסף'),
(728, 363, '_prop_neighborhood', 'field_59ae9c0970a07'),
(729, 363, 'prop_street', 'הדר יוסף'),
(730, 363, '_prop_street', 'field_59ae9d3e70a08'),
(731, 363, 'prop_address_no', '15'),
(732, 363, '_prop_address_no', 'field_59aeacdae6480'),
(733, 363, 'prop_location', 'a:3:{s:7:"address";s:45:"הדר יוסף 15, תל אביב, ישראל";s:3:"lat";s:10:"32.1089606";s:3:"lng";s:17:"34.81955679999999";}'),
(734, 363, '_prop_location', 'field_59ae9d7370a09'),
(735, 363, 'prop_store', '3'),
(736, 363, '_prop_store', 'field_59ae9dac70a0a'),
(737, 363, 'prop_store_from', '10'),
(738, 363, '_prop_store_from', 'field_59c0f88f6373b'),
(739, 363, 'prop_rooms', '3'),
(740, 363, '_prop_rooms', 'field_59ae9e2370a0b'),
(741, 363, 'prop_tech', 'a:4:{i:0;s:10:"מרפסת";i:1;s:10:"חנייה";i:2;s:7:"ממ"ד";i:3;s:10:"מעלית";}'),
(742, 363, '_prop_tech', 'field_59aeac9970a0c'),
(743, 363, 'prop_description', 'בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה \r\nבלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה \r\nבלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה בלה '),
(744, 363, '_prop_description', 'field_59aeaf4b51fad'),
(745, 363, 'prop_price', '5301424'),
(746, 363, '_prop_price', 'field_59aeaee651fac'),
(747, 363, 'prop_size', '230'),
(748, 363, '_prop_size', 'field_59aeadaf51fa2'),
(749, 363, 'prop_year', '1947'),
(750, 363, '_prop_year', 'field_59d0d715595c0'),
(751, 363, 'prop_condition', 'מצוין'),
(752, 363, '_prop_condition', 'field_59d0d74f595c1'),
(753, 363, 'prop_arnona', '2351'),
(754, 363, '_prop_arnona', 'field_59d0d781595c2'),
(755, 363, 'prop_vaad', '200'),
(756, 363, '_prop_vaad', 'field_59d0d7af595c3'),
(757, 363, 'prop_video', 'https://www.youtube.com/watch?v=9LVfRCmY6nk'),
(758, 363, '_prop_video', 'field_59d0d7df595c4'),
(759, 363, 'prop_gallery', ''),
(1517, 363, '_piereg_post_restriction', ''),
(760, 363, '_prop_gallery', 'field_59d8f8086351b'),
(761, 363, 'prop_anot', 'מינהל'),
(762, 363, '_prop_anot', 'field_59dcc8df3c851'),
(1055, 461, '_piereg_post_restriction', 'a:6:{s:16:"piereg_post_type";s:4:"page";s:22:"piereg_post_visibility";s:7:"default";s:23:"piereg_restriction_type";s:1:"0";s:19:"piereg_redirect_url";s:0:"";s:20:"piereg_redirect_page";s:2:"-1";s:20:"piereg_block_content";s:0:"";}'),
(1054, 474, '_edit_lock', '1512803772:1'),
(1053, 472, '_edit_lock', '1510923724:1'),
(1052, 474, '_piereg_post_restriction', 'a:6:{s:16:"piereg_post_type";s:4:"page";s:22:"piereg_post_visibility";s:7:"default";s:23:"piereg_restriction_type";s:1:"0";s:19:"piereg_redirect_url";s:0:"";s:20:"piereg_redirect_page";s:2:"-1";s:20:"piereg_block_content";s:0:"";}'),
(1051, 474, 'yuzo_related_post_metabox', 'a:3:{s:17:"yuzo_include_post";s:0:"";s:17:"yuzo_exclude_post";s:0:"";s:21:"yuzo_disabled_related";N;}'),
(1050, 473, '_piereg_post_restriction', ''),
(1049, 473, 'yuzo_related_post_metabox', 'a:1:{s:21:"yuzo_disabled_related";N;}'),
(1048, 472, '_piereg_post_restriction', ''),
(1047, 472, 'yuzo_related_post_metabox', 'a:1:{s:21:"yuzo_disabled_related";N;}'),
(1046, 471, '_piereg_post_restriction', ''),
(1045, 471, 'yuzo_related_post_metabox', 'a:1:{s:21:"yuzo_disabled_related";N;}'),
(1449, 581, '_piereg_post_restriction', ''),
(787, 370, '_form', '[dynamichidden CUSTOM_POST_AUTHOR_EMAIL "custom-post-author-email-shortcode"]\n<div class="form-container">\n   [text* name-124 placeholder "שם:"]\n   [tel* phone-124 placeholder "טלפון:"]  \n   [email* email-124 placeholder "מייל:"]\n   [textarea* textarea-124 x3 placeholder "הודעה:"]\n   [submit "שלחו"]\n</div>'),
(788, 370, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:37:"ברוקר נדל"ן "[your-subject]"";s:6:"sender";s:35:"[your-name] <davseveloff@gmail.com>";s:9:"recipient";s:21:"davseveloff@gmail.com";s:4:"body";s:214:"מאת: [your-name] <[your-email]>\nנושא: [your-subject]\n\nתוכן ההודעה:\n[your-message]\n\n-- \nאימייל זה נשלח מטופס יצירת קשר ב ברוקר נדל&quot;ן (//localhost:3000/broker)";s:18:"additional_headers";s:21:"Reply-To: [email-124]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(789, 370, '_mail_2', 'a:9:{s:6:"active";b:1;s:7:"subject";s:37:"ברוקר נדל"ן "[your-subject]"";s:6:"sender";s:44:"ברוקר נדל"ן <davseveloff@gmail.com>";s:9:"recipient";s:36:"[custom-post-author-email-shortcode]";s:4:"body";s:153:"תוכן ההודעה:\n[your-message]\n\n-- \nאימייל זה נשלח מטופס יצירת קשר ב ברוקר נדל&quot;ן (//localhost:3000/broker)";s:18:"additional_headers";s:31:"Reply-To: davseveloff@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(790, 370, '_messages', 'a:23:{s:12:"mail_sent_ok";s:24:"ההודעה נשלחה.";s:12:"mail_sent_ng";s:46:"ארעה שגיאה בשליחת ההודעה.";s:16:"validation_error";s:52:"קיימת שגיאה בשדה אחד או יותר.";s:4:"spam";s:46:"ארעה שגיאה בשליחת ההודעה.";s:12:"accept_terms";s:68:"עליך להסכים לתנאים לפני שליחת ההודעה.";s:16:"invalid_required";s:23:"זהו שדה חובה.";s:16:"invalid_too_long";s:25:"השדה ארוך מדי.";s:17:"invalid_too_short";s:23:"השדה קצר מדי.";s:12:"invalid_date";s:38:"שדה התאריך אינו נכון.";s:14:"date_too_early";s:50:"התאריך מוקדם מהתאריך המותר.";s:13:"date_too_late";s:50:"התאריך מאוחר מהתאריך המותר.";s:13:"upload_failed";s:51:"שגיאה לא ידועה בהעלאת הקובץ.";s:24:"upload_file_type_invalid";s:67:"אין לך הרשאות להעלות קבצים בפורמט זה.";s:21:"upload_file_too_large";s:27:"הקובץ גדול מדי.";s:23:"upload_failed_php_error";s:35:"שגיאה בהעלאת הקובץ.";s:14:"invalid_number";s:40:"פורמט המספר אינו תקין.";s:16:"number_too_small";s:48:"המספר קטן מהמינימום המותר.";s:16:"number_too_large";s:50:"המספר גדול מהמקסימום המותר.";s:23:"quiz_answer_not_correct";s:59:"התשובה לשאלת הביטחון אינה נכונה.";s:17:"captcha_not_match";s:29:"הקוד שהזנת שגוי.";s:13:"invalid_email";s:59:"כתובת האימייל שהוזנה אינה תקינה.";s:11:"invalid_url";s:31:"הקישור אינו תקין.";s:11:"invalid_tel";s:40:"מספר הטלפון אינו תקין.";}'),
(791, 370, '_additional_settings', ''),
(792, 370, '_locale', 'he_IL'),
(800, 370, '_config_errors', 'a:1:{s:16:"mail_2.recipient";a:1:{i:0;a:2:{s:4:"code";i:102;s:4:"args";a:3:{s:7:"message";s:0:"";s:6:"params";a:0:{}s:4:"link";s:68:"https://contactform7.com/configuration-errors/invalid-mailbox-syntax";}}}}'),
(821, 110, 'prop_vaad', ''),
(827, 110, 'prop_anot', 'טאבו'),
(828, 110, '_prop_anot', 'field_59dcc8df3c851'),
(829, 109, 'prop_year', ''),
(830, 109, '_prop_year', 'field_59d0d715595c0'),
(831, 109, 'prop_condition', ''),
(832, 109, '_prop_condition', 'field_59d0d74f595c1'),
(833, 109, 'prop_arnona', ''),
(834, 109, '_prop_arnona', 'field_59d0d781595c2'),
(835, 109, 'prop_vaad', ''),
(836, 109, '_prop_vaad', 'field_59d0d7af595c3'),
(837, 109, 'prop_video', ''),
(838, 109, '_prop_video', 'field_59d0d7df595c4'),
(839, 109, 'prop_gallery', ''),
(840, 109, '_prop_gallery', 'field_59d8f8086351b'),
(841, 109, 'prop_anot', 'טאבו'),
(842, 109, '_prop_anot', 'field_59dcc8df3c851'),
(843, 94, 'prop_year', ''),
(844, 94, '_prop_year', 'field_59d0d715595c0'),
(845, 94, 'prop_condition', ''),
(846, 94, '_prop_condition', 'field_59d0d74f595c1'),
(847, 94, 'prop_arnona', ''),
(848, 94, '_prop_arnona', 'field_59d0d781595c2'),
(849, 94, 'prop_vaad', ''),
(850, 94, '_prop_vaad', 'field_59d0d7af595c3'),
(851, 94, 'prop_video', ''),
(852, 94, '_prop_video', 'field_59d0d7df595c4'),
(853, 94, 'prop_gallery', ''),
(854, 94, '_prop_gallery', 'field_59d8f8086351b'),
(855, 94, 'prop_anot', 'טאבו'),
(856, 94, '_prop_anot', 'field_59dcc8df3c851'),
(857, 107, 'prop_year', ''),
(858, 107, '_prop_year', 'field_59d0d715595c0'),
(859, 107, 'prop_condition', ''),
(860, 107, '_prop_condition', 'field_59d0d74f595c1'),
(861, 107, 'prop_arnona', ''),
(862, 107, '_prop_arnona', 'field_59d0d781595c2'),
(863, 107, 'prop_vaad', ''),
(864, 107, '_prop_vaad', 'field_59d0d7af595c3'),
(865, 107, 'prop_video', ''),
(866, 107, '_prop_video', 'field_59d0d7df595c4'),
(867, 107, 'prop_gallery', ''),
(868, 107, '_prop_gallery', 'field_59d8f8086351b'),
(869, 107, 'prop_anot', 'טאבו'),
(870, 107, '_prop_anot', 'field_59dcc8df3c851'),
(871, 108, 'prop_year', ''),
(872, 108, '_prop_year', 'field_59d0d715595c0'),
(873, 108, 'prop_condition', ''),
(874, 108, '_prop_condition', 'field_59d0d74f595c1'),
(875, 108, 'prop_arnona', ''),
(876, 108, '_prop_arnona', 'field_59d0d781595c2'),
(877, 108, 'prop_vaad', ''),
(878, 108, '_prop_vaad', 'field_59d0d7af595c3'),
(879, 108, 'prop_video', ''),
(880, 108, '_prop_video', 'field_59d0d7df595c4'),
(881, 108, 'prop_gallery', ''),
(882, 108, '_prop_gallery', 'field_59d8f8086351b'),
(883, 108, 'prop_anot', 'טאבו'),
(884, 108, '_prop_anot', 'field_59dcc8df3c851'),
(885, 70, 'prop_video', ''),
(886, 70, '_prop_video', 'field_59d0d7df595c4'),
(887, 70, 'prop_gallery', ''),
(888, 70, '_prop_gallery', 'field_59d8f8086351b'),
(889, 70, 'prop_anot', 'טאבו'),
(890, 70, '_prop_anot', 'field_59dcc8df3c851'),
(891, 363, 'prop_type', 'דו משפחתי'),
(892, 363, '_prop_type', 'field_59ec7533be002'),
(893, 107, 'prop_type', 'דו משפחתי'),
(894, 107, '_prop_type', 'field_59ec7533be002'),
(895, 111, 'prop_type', 'דו משפחתי'),
(896, 111, '_prop_type', 'field_59ec7533be002'),
(897, 109, 'prop_type', 'משק עזר'),
(898, 109, '_prop_type', 'field_59ec7533be002'),
(899, 110, 'prop_type', 'דו משפחתי'),
(900, 110, '_prop_type', 'field_59ec7533be002'),
(902, 363, 'prop_area', 'תל אביב'),
(903, 363, '_prop_area', 'field_59f2dfc922689'),
(904, 375, '_edit_lock', '1512840795:1'),
(905, 375, '_edit_last', '1'),
(906, 375, '_wp_page_template', 'single-broker.php'),
(907, 377, '_edit_lock', '1509099750:1'),
(908, 377, '_edit_last', '1'),
(909, 377, '_wp_page_template', 'search-users.php'),
(925, 1, '_edit_lock', '1509788164:1'),
(926, 1, '_edit_last', '1'),
(928, 432, '_edit_lock', '1509969816:1'),
(929, 432, '_edit_last', '1'),
(1398, 564, '_menu_item_xfn', ''),
(1396, 564, '_menu_item_target', ''),
(1397, 564, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1395, 564, '_menu_item_object', 'custom'),
(1394, 564, '_menu_item_object_id', '564'),
(1393, 564, '_menu_item_menu_item_parent', '0'),
(971, 444, 'yuzo_related_post_metabox', 'a:3:{s:17:"yuzo_include_post";s:0:"";s:17:"yuzo_exclude_post";s:0:"";s:21:"yuzo_disabled_related";N;}'),
(1063, 18, '_piereg_post_restriction', ''),
(1062, 73, 'yuzo_related_post_metabox', 'a:1:{s:21:"yuzo_disabled_related";N;}'),
(1061, 73, '_piereg_post_restriction', ''),
(965, 1, 'yuzo_related_post_metabox', 'a:3:{s:17:"yuzo_include_post";s:0:"";s:17:"yuzo_exclude_post";s:0:"";s:21:"yuzo_disabled_related";N;}'),
(963, 440, '_thumbnail_id', '255'),
(962, 440, '_edit_last', '1'),
(961, 440, '_edit_lock', '1512799244:1'),
(960, 440, 'yuzo_related_post_metabox', 'a:3:{s:17:"yuzo_include_post";s:0:"";s:17:"yuzo_exclude_post";s:0:"";s:21:"yuzo_disabled_related";N;}'),
(957, 1, '_thumbnail_id', '249'),
(989, 52, 'yuzo_related_post_metabox', 'a:1:{s:21:"yuzo_disabled_related";N;}'),
(985, 44, 'yuzo_related_post_metabox', 'a:1:{s:21:"yuzo_disabled_related";N;}'),
(986, 49, 'yuzo_related_post_metabox', 'a:1:{s:21:"yuzo_disabled_related";N;}'),
(987, 50, 'yuzo_related_post_metabox', 'a:1:{s:21:"yuzo_disabled_related";N;}'),
(988, 51, 'yuzo_related_post_metabox', 'a:1:{s:21:"yuzo_disabled_related";N;}'),
(990, 54, 'yuzo_related_post_metabox', 'a:1:{s:21:"yuzo_disabled_related";N;}'),
(995, 449, 'yuzo_related_post_metabox', 'a:1:{s:21:"yuzo_disabled_related";N;}'),
(996, 450, 'yuzo_related_post_metabox', 'a:1:{s:21:"yuzo_disabled_related";N;}'),
(997, 450, '_edit_lock', '1509806768:1'),
(998, 450, '_edit_last', '1'),
(999, 449, '_edit_lock', '1513023438:1'),
(1000, 449, '_edit_last', '1'),
(1001, 449, '_thumbnail_id', '256'),
(1064, 18, 'yuzo_related_post_metabox', 'a:1:{s:21:"yuzo_disabled_related";N;}'),
(1006, 455, 'yuzo_related_post_metabox', 'a:1:{s:21:"yuzo_disabled_related";N;}'),
(1007, 456, 'yuzo_related_post_metabox', 'a:1:{s:21:"yuzo_disabled_related";N;}'),
(1008, 455, '_edit_lock', '1512828830:1'),
(1009, 455, '_edit_last', '1'),
(1010, 456, '_edit_lock', '1509807173:1'),
(1011, 456, '_edit_last', '1'),
(1012, 455, '_thumbnail_id', '364'),
(1013, 457, 'yuzo_related_post_metabox', 'a:1:{s:21:"yuzo_disabled_related";N;}'),
(1014, 457, '_edit_last', '1'),
(1015, 457, '_edit_lock', '1509815616:1'),
(1016, 458, 'yuzo_related_post_metabox', 'a:1:{s:21:"yuzo_disabled_related";N;}'),
(1017, 458, '_edit_lock', '1509817238:1'),
(1018, 458, '_edit_last', '1'),
(1019, 458, '_thumbnail_id', '366'),
(1020, 459, '_edit_lock', '1511539133:1'),
(1021, 459, '_edit_last', '1'),
(1022, 459, '_wp_page_template', 'page-loginnregister.php'),
(1023, 461, 'yuzo_related_post_metabox', 'a:3:{s:17:"yuzo_include_post";s:0:"";s:17:"yuzo_exclude_post";s:0:"";s:21:"yuzo_disabled_related";N;}'),
(1024, 461, '_edit_last', '1'),
(1025, 461, '_wp_page_template', 'page-loginnregister.php'),
(1026, 461, '_edit_lock', '1511593985:1'),
(1027, 433, 'yuzo_related_post_metabox', 'a:1:{s:21:"yuzo_disabled_related";N;}'),
(1028, 432, 'yuzo_related_post_metabox', 'a:1:{s:21:"yuzo_disabled_related";N;}'),
(1029, 459, 'yuzo_related_post_metabox', 'a:3:{s:17:"yuzo_include_post";s:0:"";s:17:"yuzo_exclude_post";s:0:"";s:21:"yuzo_disabled_related";N;}'),
(1303, 544, '_edit_lock', '1513023706:1'),
(1059, 23, '_piereg_post_restriction', ''),
(1305, 545, '_piereg_post_restriction', ''),
(1304, 544, '_edit_last', '1'),
(1302, 544, '_piereg_post_restriction', ''),
(1034, 469, 'yuzo_related_post_metabox', 'a:1:{s:21:"yuzo_disabled_related";N;}'),
(1035, 469, '_menu_item_type', 'custom'),
(1036, 469, '_menu_item_menu_item_parent', '0'),
(1037, 469, '_menu_item_object_id', '469'),
(1038, 469, '_menu_item_object', 'custom'),
(1039, 469, '_menu_item_target', ''),
(1040, 469, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1041, 469, '_menu_item_xfn', ''),
(1042, 469, '_menu_item_url', '/broker/articles/'),
(1339, 559, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:101:"ברוקר נדל"ן "משתמש חדש נרשם לרשימת התפוצה של בורקר נדל"ן"";s:6:"sender";s:24:"[name-793] <[email-793]>";s:9:"recipient";s:21:"davseveloff@gmail.com";s:4:"body";s:342:"מאת: [your-name] <[your-email]>\nנושא: [your-subject]\n\nתוכן ההודעה:\nמשתמש חדש נרשם לרשימת התפוצה של בורקר נדל"ן\n\nשם המשתמש: [name-793]\nכתובת מייל: [email-793]\n\n-- \nאימייל זה נשלח מטופס יצירת קשר ב ברוקר נדל&quot;ן (//localhost:3000/broker)";s:18:"additional_headers";s:0:"";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(1067, 481, '_piereg_post_restriction', ''),
(1068, 481, 'yuzo_related_post_metabox', 'a:1:{s:21:"yuzo_disabled_related";N;}'),
(1069, 481, '_edit_lock', '1510987961:7'),
(1070, 481, '_edit_last', '7'),
(1071, 482, '_wp_attached_file', '2017/11/beach-villa-1.jpg'),
(1072, 482, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1245;s:4:"file";s:25:"2017/11/beach-villa-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"beach-villa-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"beach-villa-1-300x195.jpg";s:5:"width";i:300;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"beach-villa-1-768x498.jpg";s:5:"width";i:768;s:6:"height";i:498;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"beach-villa-1-1024x664.jpg";s:5:"width";i:1024;s:6:"height";i:664;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1073, 483, '_wp_attached_file', '2017/11/morgan-room-penthouse-bbq-02.jpg'),
(1074, 483, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1245;s:4:"file";s:40:"2017/11/morgan-room-penthouse-bbq-02.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:40:"morgan-room-penthouse-bbq-02-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:40:"morgan-room-penthouse-bbq-02-300x195.jpg";s:5:"width";i:300;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:40:"morgan-room-penthouse-bbq-02-768x498.jpg";s:5:"width";i:768;s:6:"height";i:498;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:41:"morgan-room-penthouse-bbq-02-1024x664.jpg";s:5:"width";i:1024;s:6:"height";i:664;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1075, 484, '_wp_attached_file', '2017/11/MY001_Penthouse_Dining_Room_ODADA.jpg'),
(1076, 484, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1245;s:4:"file";s:45:"2017/11/MY001_Penthouse_Dining_Room_ODADA.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:45:"MY001_Penthouse_Dining_Room_ODADA-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:45:"MY001_Penthouse_Dining_Room_ODADA-300x195.jpg";s:5:"width";i:300;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:45:"MY001_Penthouse_Dining_Room_ODADA-768x498.jpg";s:5:"width";i:768;s:6:"height";i:498;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:46:"MY001_Penthouse_Dining_Room_ODADA-1024x664.jpg";s:5:"width";i:1024;s:6:"height";i:664;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1077, 485, '_wp_attached_file', '2017/11/Penthouse-1.jpg'),
(1078, 485, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1245;s:4:"file";s:23:"2017/11/Penthouse-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"Penthouse-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"Penthouse-1-300x195.jpg";s:5:"width";i:300;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"Penthouse-1-768x498.jpg";s:5:"width";i:768;s:6:"height";i:498;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"Penthouse-1-1024x664.jpg";s:5:"width";i:1024;s:6:"height";i:664;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1079, 486, '_wp_attached_file', '2017/11/villa-cruz-1.jpg'),
(1080, 486, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1245;s:4:"file";s:24:"2017/11/villa-cruz-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"villa-cruz-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"villa-cruz-1-300x195.jpg";s:5:"width";i:300;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"villa-cruz-1-768x498.jpg";s:5:"width";i:768;s:6:"height";i:498;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"villa-cruz-1-1024x664.jpg";s:5:"width";i:1024;s:6:"height";i:664;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1081, 487, '_piereg_post_restriction', ''),
(1082, 487, 'yuzo_related_post_metabox', 'a:1:{s:21:"yuzo_disabled_related";N;}'),
(1083, 487, '_edit_lock', '1510988000:7'),
(1084, 487, '_edit_last', '7'),
(1085, 487, '_thumbnail_id', '483'),
(1086, 487, 'prop_city', 'רחובות'),
(1087, 487, '_prop_city', 'field_59ae96d970a06'),
(1088, 487, 'prop_neighborhood', 'שכונה ו'''),
(1089, 487, '_prop_neighborhood', 'field_59ae9c0970a07'),
(1090, 487, 'prop_street', 'בעלי התוספות'),
(1091, 487, '_prop_street', 'field_59ae9d3e70a08'),
(1092, 487, 'prop_address_no', '49'),
(1093, 487, '_prop_address_no', 'field_59aeacdae6480'),
(1094, 487, 'prop_area', 'מרכז'),
(1095, 487, '_prop_area', 'field_59f2dfc922689'),
(1096, 487, 'prop_location', 'a:3:{s:7:"address";s:24:"רחובות, ישראל";s:3:"lat";s:9:"31.892773";s:3:"lng";s:17:"34.81127200000003";}'),
(1097, 487, '_prop_location', 'field_59ae9d7370a09'),
(1098, 487, 'prop_type', 'דירה'),
(1099, 487, '_prop_type', 'field_59ec7533be002'),
(1100, 487, 'prop_store', '4'),
(1101, 487, '_prop_store', 'field_59ae9dac70a0a'),
(1102, 487, 'prop_store_from', '9'),
(1103, 487, '_prop_store_from', 'field_59c0f88f6373b'),
(1104, 487, 'prop_rooms', '3'),
(1105, 487, '_prop_rooms', 'field_59ae9e2370a0b'),
(1106, 487, 'prop_tech', 'a:3:{i:0;s:10:"מיזוג";i:1;s:7:"ממ"ד";i:2;s:10:"מעלית";}'),
(1107, 487, '_prop_tech', 'field_59aeac9970a0c'),
(1108, 487, 'prop_description', 'למכירה בבלעדיות!!.בקרבת רחוב הרצל ובית הכנסת.דירת 3 חדרים גדולה ומוארת-קומה 6 ואחרונה-דירה עורפית-כולל מעלית וחניה בבניין.מועד איכלוס גמיש.לקביעת מועד סיור בנכס נא ליצור קשר'),
(1109, 487, '_prop_description', 'field_59aeaf4b51fad'),
(1110, 487, 'prop_price', '2300000'),
(1111, 487, '_prop_price', 'field_59aeaee651fac'),
(1112, 487, 'prop_size', '150'),
(1113, 487, '_prop_size', 'field_59aeadaf51fa2'),
(1114, 487, 'prop_year', '1985'),
(1115, 487, '_prop_year', 'field_59d0d715595c0'),
(1116, 487, 'prop_condition', 'משופצת'),
(1117, 487, '_prop_condition', 'field_59d0d74f595c1'),
(1118, 487, 'prop_arnona', '650'),
(1119, 487, '_prop_arnona', 'field_59d0d781595c2'),
(1120, 487, 'prop_vaad', '20'),
(1121, 487, '_prop_vaad', 'field_59d0d7af595c3'),
(1122, 487, 'prop_video', 'https://www.youtube.com/watch?v=yLB5wctvZkk'),
(1123, 487, '_prop_video', 'field_59d0d7df595c4'),
(1124, 487, 'prop_gallery', 'a:5:{i:0;s:3:"482";i:1;s:3:"486";i:2;s:3:"485";i:3;s:3:"484";i:4;s:3:"483";}'),
(1125, 487, '_prop_gallery', 'field_59d8f8086351b'),
(1126, 487, 'prop_anot', 'טאבו'),
(1127, 487, '_prop_anot', 'field_59dcc8df3c851'),
(1128, 474, '_edit_last', '1'),
(1129, 474, '_wp_page_template', 'single-author_profile.php'),
(1130, 353, 'yuzo_related_post_metabox', 'a:3:{s:17:"yuzo_include_post";s:0:"";s:17:"yuzo_exclude_post";s:0:"";s:21:"yuzo_disabled_related";N;}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1131, 353, '_piereg_post_restriction', 'a:6:{s:16:"piereg_post_type";s:4:"page";s:22:"piereg_post_visibility";s:7:"default";s:23:"piereg_restriction_type";s:1:"0";s:19:"piereg_redirect_url";s:0:"";s:20:"piereg_redirect_page";s:2:"-1";s:20:"piereg_block_content";s:0:"";}'),
(1338, 559, '_form', '[text* name-793 class:form-control placeholder "שם:" ]\n[email* email-793 class:form-control placeholder "אימייל:"]\n[submit  class:form-control "שלח"]'),
(1310, 449, 'ar_views', '1683'),
(1311, 449, '_ar_views', 'field_5a2a4f3ec2339'),
(1318, 550, '_piereg_post_restriction', ''),
(1137, 492, '_piereg_post_restriction', ''),
(1138, 492, 'yuzo_related_post_metabox', 'a:1:{s:21:"yuzo_disabled_related";N;}'),
(1139, 492, '_edit_lock', '1511015951:1'),
(1140, 492, '_edit_last', '1'),
(1141, 493, '_piereg_post_restriction', ''),
(1142, 493, 'yuzo_related_post_metabox', 'a:1:{s:21:"yuzo_disabled_related";N;}'),
(1143, 493, '_edit_lock', '1511016696:16'),
(1308, 548, '_piereg_post_restriction', ''),
(1307, 547, '_piereg_post_restriction', ''),
(1147, 495, '_wp_attached_file', '2017/11/beach-villa-1-1.jpg'),
(1148, 495, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1245;s:4:"file";s:27:"2017/11/beach-villa-1-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"beach-villa-1-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"beach-villa-1-1-300x195.jpg";s:5:"width";i:300;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"beach-villa-1-1-768x498.jpg";s:5:"width";i:768;s:6:"height";i:498;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"beach-villa-1-1-1024x664.jpg";s:5:"width";i:1024;s:6:"height";i:664;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1149, 496, '_wp_attached_file', '2017/11/morgan-room-penthouse-bbq-02-1.jpg'),
(1150, 496, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1245;s:4:"file";s:42:"2017/11/morgan-room-penthouse-bbq-02-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:42:"morgan-room-penthouse-bbq-02-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:42:"morgan-room-penthouse-bbq-02-1-300x195.jpg";s:5:"width";i:300;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:42:"morgan-room-penthouse-bbq-02-1-768x498.jpg";s:5:"width";i:768;s:6:"height";i:498;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:43:"morgan-room-penthouse-bbq-02-1-1024x664.jpg";s:5:"width";i:1024;s:6:"height";i:664;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1151, 497, '_wp_attached_file', '2017/11/MY001_Penthouse_Dining_Room_ODADA-1.jpg'),
(1152, 497, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1245;s:4:"file";s:47:"2017/11/MY001_Penthouse_Dining_Room_ODADA-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:47:"MY001_Penthouse_Dining_Room_ODADA-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:47:"MY001_Penthouse_Dining_Room_ODADA-1-300x195.jpg";s:5:"width";i:300;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:47:"MY001_Penthouse_Dining_Room_ODADA-1-768x498.jpg";s:5:"width";i:768;s:6:"height";i:498;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:48:"MY001_Penthouse_Dining_Room_ODADA-1-1024x664.jpg";s:5:"width";i:1024;s:6:"height";i:664;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1153, 498, '_wp_attached_file', '2017/11/Penthouse-1-1.jpg'),
(1154, 498, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1245;s:4:"file";s:25:"2017/11/Penthouse-1-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Penthouse-1-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"Penthouse-1-1-300x195.jpg";s:5:"width";i:300;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"Penthouse-1-1-768x498.jpg";s:5:"width";i:768;s:6:"height";i:498;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"Penthouse-1-1-1024x664.jpg";s:5:"width";i:1024;s:6:"height";i:664;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1155, 499, '_wp_attached_file', '2017/11/villa-cruz-1-1.jpg'),
(1156, 499, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1245;s:4:"file";s:26:"2017/11/villa-cruz-1-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"villa-cruz-1-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"villa-cruz-1-1-300x195.jpg";s:5:"width";i:300;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"villa-cruz-1-1-768x498.jpg";s:5:"width";i:768;s:6:"height";i:498;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"villa-cruz-1-1-1024x664.jpg";s:5:"width";i:1024;s:6:"height";i:664;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1306, 546, '_piereg_post_restriction', ''),
(1158, 493, '_edit_last', '16'),
(1159, 493, '_thumbnail_id', '497'),
(1160, 493, 'prop_city', 'רחובות'),
(1161, 493, '_prop_city', 'field_59ae96d970a06'),
(1162, 493, 'prop_neighborhood', 'הדרדרים'),
(1163, 493, '_prop_neighborhood', 'field_59ae9c0970a07'),
(1164, 493, 'prop_street', 'משה אדרי'),
(1165, 493, '_prop_street', 'field_59ae9d3e70a08'),
(1166, 493, 'prop_address_no', '5'),
(1167, 493, '_prop_address_no', 'field_59aeacdae6480'),
(1168, 493, 'prop_area', 'מרכז'),
(1169, 493, '_prop_area', 'field_59f2dfc922689'),
(1170, 493, 'prop_location', 'a:3:{s:7:"address";s:24:"רחובות, ישראל";s:3:"lat";s:9:"31.892773";s:3:"lng";s:17:"34.81127200000003";}'),
(1171, 493, '_prop_location', 'field_59ae9d7370a09'),
(1172, 493, 'prop_type', 'דירה'),
(1173, 493, '_prop_type', 'field_59ec7533be002'),
(1174, 493, 'prop_store', '12'),
(1175, 493, '_prop_store', 'field_59ae9dac70a0a'),
(1176, 493, 'prop_store_from', '15'),
(1177, 493, '_prop_store_from', 'field_59c0f88f6373b'),
(1178, 493, 'prop_rooms', '5'),
(1179, 493, '_prop_rooms', 'field_59ae9e2370a0b'),
(1180, 493, 'prop_tech', 'a:4:{i:0;s:10:"מיזוג";i:1;s:10:"חנייה";i:2;s:12:"סורגים";i:3;s:10:"מעלית";}'),
(1181, 493, '_prop_tech', 'field_59aeac9970a0c'),
(1182, 493, 'prop_description', 'תוספות: בהזדמנות מפרטי בטאבו. 3 חדרים (אופציה ל 4)+חדר שירות במקלחת+מעלית+חניה. הדירה שופצה מהיסוד לפני כמה חודשים: מטבח, צנרת, ריצוף, מקלחת, מזגנים, תאורה, עיצוב גבס, חלונות, רשתות, פלדלת. הכל חדש !!מציאה!!'),
(1183, 493, '_prop_description', 'field_59aeaf4b51fad'),
(1184, 493, 'prop_price', '1650000'),
(1185, 493, '_prop_price', 'field_59aeaee651fac'),
(1186, 493, 'prop_size', '90'),
(1187, 493, '_prop_size', 'field_59aeadaf51fa2'),
(1188, 493, 'prop_year', '1947'),
(1189, 493, '_prop_year', 'field_59d0d715595c0'),
(1190, 493, 'prop_condition', 'משופצת'),
(1191, 493, '_prop_condition', 'field_59d0d74f595c1'),
(1192, 493, 'prop_arnona', '800'),
(1193, 493, '_prop_arnona', 'field_59d0d781595c2'),
(1194, 493, 'prop_vaad', '250'),
(1195, 493, '_prop_vaad', 'field_59d0d7af595c3'),
(1196, 493, 'prop_video', 'https://www.youtube.com/watch?v=negni3BiiT4'),
(1197, 493, '_prop_video', 'field_59d0d7df595c4'),
(1198, 493, 'prop_gallery', 'a:5:{i:0;s:3:"495";i:1;s:3:"496";i:2;s:3:"497";i:3;s:3:"498";i:4;s:3:"499";}'),
(1199, 493, '_prop_gallery', 'field_59d8f8086351b'),
(1200, 493, 'prop_anot', 'טאבו'),
(1201, 493, '_prop_anot', 'field_59dcc8df3c851'),
(1337, 559, '_piereg_post_restriction', ''),
(1336, 558, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:45;s:6:"height";i:45;s:4:"file";s:17:"2017/12/print.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1335, 558, '_wp_attached_file', '2017/12/print.png'),
(1334, 557, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:45;s:6:"height";i:45;s:4:"file";s:17:"2017/12/mailh.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1333, 557, '_wp_attached_file', '2017/12/mailh.png'),
(1332, 556, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:45;s:6:"height";i:45;s:4:"file";s:16:"2017/12/mail.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1331, 556, '_wp_attached_file', '2017/12/mail.png'),
(1330, 555, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:45;s:6:"height";i:45;s:4:"file";s:15:"2017/12/fbh.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1329, 555, '_wp_attached_file', '2017/12/fbh.png'),
(1328, 554, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:45;s:6:"height";i:45;s:4:"file";s:14:"2017/12/fb.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1327, 554, '_wp_attached_file', '2017/12/fb.png'),
(1326, 553, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:43;s:6:"height";i:43;s:4:"file";s:15:"2017/12/wah.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1325, 553, '_wp_attached_file', '2017/12/wah.png'),
(1324, 552, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:43;s:6:"height";i:43;s:4:"file";s:14:"2017/12/wa.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1323, 552, '_wp_attached_file', '2017/12/wa.png'),
(1322, 551, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:45;s:6:"height";i:45;s:4:"file";s:18:"2017/12/printh.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1321, 551, '_wp_attached_file', '2017/12/printh.png'),
(1320, 449, '_ar_wa_share', 'field_5a2a5259f33b2'),
(1319, 449, 'ar_wa_share', '1543'),
(1317, 449, '_piereg_post_restriction', ''),
(1316, 449, '_', 'field_5a2a517fc233d'),
(1315, 449, '_ar_fb_share', 'field_5a2a510fc233b'),
(1314, 449, 'ar_fb_share', '3521'),
(1313, 449, '_ar_mail_share', 'field_5a2a4fefc233a'),
(1312, 449, 'ar_mail_share', '1203'),
(1448, 580, '_piereg_post_restriction', ''),
(1291, 471, '_wp_trash_meta_status', 'publish'),
(1292, 471, '_wp_trash_meta_time', '1511538310'),
(1293, 471, '_wp_desired_post_slug', 'login'),
(1294, 472, '_wp_trash_meta_status', 'publish'),
(1295, 472, '_wp_trash_meta_time', '1511538310'),
(1296, 472, '_wp_desired_post_slug', 'registration'),
(1340, 559, '_mail_2', 'a:9:{s:6:"active";b:1;s:7:"subject";s:98:"ברוקר נדל"ן "ברוכים הבאים לרשימת התפוצה של ברוקר נדל"ן"";s:6:"sender";s:45:"ברוקר נדל"ן <office@broker-re.co.il>";s:9:"recipient";s:11:"[email-793]";s:4:"body";s:155:"שלום [name-793]\nברוכים הבאים\n\nאימייל זה נשלח מטופס יצירת קשר ב ברוקר נדל&quot;ן (//localhost:3000/broker)";s:18:"additional_headers";s:31:"Reply-To: davseveloff@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(1341, 559, '_messages', 'a:23:{s:12:"mail_sent_ok";s:24:"ההודעה נשלחה.";s:12:"mail_sent_ng";s:46:"ארעה שגיאה בשליחת ההודעה.";s:16:"validation_error";s:52:"קיימת שגיאה בשדה אחד או יותר.";s:4:"spam";s:46:"ארעה שגיאה בשליחת ההודעה.";s:12:"accept_terms";s:68:"עליך להסכים לתנאים לפני שליחת ההודעה.";s:16:"invalid_required";s:23:"זהו שדה חובה.";s:16:"invalid_too_long";s:25:"השדה ארוך מדי.";s:17:"invalid_too_short";s:23:"השדה קצר מדי.";s:12:"invalid_date";s:38:"שדה התאריך אינו נכון.";s:14:"date_too_early";s:50:"התאריך מוקדם מהתאריך המותר.";s:13:"date_too_late";s:50:"התאריך מאוחר מהתאריך המותר.";s:13:"upload_failed";s:51:"שגיאה לא ידועה בהעלאת הקובץ.";s:24:"upload_file_type_invalid";s:67:"אין לך הרשאות להעלות קבצים בפורמט זה.";s:21:"upload_file_too_large";s:27:"הקובץ גדול מדי.";s:23:"upload_failed_php_error";s:35:"שגיאה בהעלאת הקובץ.";s:14:"invalid_number";s:40:"פורמט המספר אינו תקין.";s:16:"number_too_small";s:48:"המספר קטן מהמינימום המותר.";s:16:"number_too_large";s:50:"המספר גדול מהמקסימום המותר.";s:23:"quiz_answer_not_correct";s:59:"התשובה לשאלת הביטחון אינה נכונה.";s:17:"captcha_not_match";s:29:"הקוד שהזנת שגוי.";s:13:"invalid_email";s:59:"כתובת האימייל שהוזנה אינה תקינה.";s:11:"invalid_url";s:31:"הקישור אינו תקין.";s:11:"invalid_tel";s:40:"מספר הטלפון אינו תקין.";}'),
(1342, 559, '_additional_settings', ''),
(1343, 559, '_locale', 'he_IL'),
(1399, 564, '_menu_item_url', 'http://localhost:3000/broker/wp-admin/post-new.php?post_type=property'),
(1392, 564, '_menu_item_type', 'custom'),
(1388, 563, '_menu_item_url', ''),
(1391, 564, '_piereg_post_restriction', ''),
(1390, 563, '_menu_item_visibility', 'default'),
(1387, 563, '_menu_item_xfn', ''),
(1386, 563, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1385, 563, '_menu_item_target', ''),
(1384, 563, '_menu_item_object', 'page'),
(1383, 563, '_menu_item_object_id', '474'),
(1381, 563, '_menu_item_type', 'post_type'),
(1382, 563, '_menu_item_menu_item_parent', '0'),
(1380, 563, '_piereg_post_restriction', ''),
(1411, 564, '_menu_item_visibility', 'default'),
(1401, 565, '_piereg_post_restriction', ''),
(1402, 565, '_menu_item_type', 'custom'),
(1403, 565, '_menu_item_menu_item_parent', '0'),
(1404, 565, '_menu_item_object_id', '565'),
(1405, 565, '_menu_item_object', 'custom'),
(1406, 565, '_menu_item_target', ''),
(1407, 565, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1408, 565, '_menu_item_xfn', ''),
(1409, 565, '_menu_item_url', 'http://localhost:3000/broker/wp-admin/post-new.php?post_type=article'),
(1412, 565, '_menu_item_visibility', 'default'),
(1414, 567, '_piereg_post_restriction', ''),
(1416, 449, 'ar_related', 'a:3:{i:0;s:3:"456";i:1;s:3:"458";i:2;s:3:"455";}'),
(1417, 449, '_ar_related', 'field_5a2bd99ff8548'),
(1418, 455, 'ar_views', '1683'),
(1419, 455, '_ar_views', 'field_5a2a4f3ec2339'),
(1420, 455, 'ar_mail_share', ''),
(1421, 455, '_ar_mail_share', 'field_5a2a4fefc233a'),
(1422, 455, 'ar_fb_share', ''),
(1423, 455, '_ar_fb_share', 'field_5a2a510fc233b'),
(1424, 455, 'ar_wa_share', ''),
(1425, 455, '_ar_wa_share', 'field_5a2a5259f33b2'),
(1426, 455, 'ar_related', 'a:1:{i:0;s:3:"449";}'),
(1427, 455, '_ar_related', 'field_5a2bd99ff8548'),
(1428, 455, '_piereg_post_restriction', ''),
(1429, 375, '_piereg_post_restriction', 'a:6:{s:16:"piereg_post_type";s:4:"page";s:22:"piereg_post_visibility";s:7:"default";s:23:"piereg_restriction_type";s:1:"0";s:19:"piereg_redirect_url";s:0:"";s:20:"piereg_redirect_page";s:2:"-1";s:20:"piereg_block_content";s:0:"";}'),
(1430, 573, '_piereg_post_restriction', ''),
(1431, 573, '_form', '<div class="form-group">\n<label> השם שלך (חובה)\n    [text* your-name class:form-control] </label>\n</div>\n<div class="form-group">\n<label> האימייל שלך (חובה)\n    [email* your-email class:form-control] </label>\n</div>\n<div class="form-group">\n<label> נושא\n    [text your-subject class:form-control] </label>\n</div>\n<div class="form-group">\n<label> פידבק\n    [textarea your-message class:form-control] </label>\n</div>\n<div class="form-group">\n[submit "שלח" class:btn class:btn-default]\n</div>'),
(1432, 573, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:37:"ברוקר נדל"ן "[your-subject]"";s:6:"sender";s:35:"[your-name] <davseveloff@gmail.com>";s:9:"recipient";s:21:"davseveloff@gmail.com";s:4:"body";s:214:"מאת: [your-name] <[your-email]>\nנושא: [your-subject]\n\nתוכן ההודעה:\n[your-message]\n\n-- \nאימייל זה נשלח מטופס יצירת קשר ב ברוקר נדל&quot;ן (//localhost:3000/broker)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(1433, 573, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:37:"ברוקר נדל"ן "[your-subject]"";s:6:"sender";s:44:"ברוקר נדל"ן <davseveloff@gmail.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:153:"תוכן ההודעה:\n[your-message]\n\n-- \nאימייל זה נשלח מטופס יצירת קשר ב ברוקר נדל&quot;ן (//localhost:3000/broker)";s:18:"additional_headers";s:31:"Reply-To: davseveloff@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(1434, 573, '_messages', 'a:23:{s:12:"mail_sent_ok";s:24:"ההודעה נשלחה.";s:12:"mail_sent_ng";s:46:"ארעה שגיאה בשליחת ההודעה.";s:16:"validation_error";s:52:"קיימת שגיאה בשדה אחד או יותר.";s:4:"spam";s:46:"ארעה שגיאה בשליחת ההודעה.";s:12:"accept_terms";s:68:"עליך להסכים לתנאים לפני שליחת ההודעה.";s:16:"invalid_required";s:23:"זהו שדה חובה.";s:16:"invalid_too_long";s:25:"השדה ארוך מדי.";s:17:"invalid_too_short";s:23:"השדה קצר מדי.";s:12:"invalid_date";s:38:"שדה התאריך אינו נכון.";s:14:"date_too_early";s:50:"התאריך מוקדם מהתאריך המותר.";s:13:"date_too_late";s:50:"התאריך מאוחר מהתאריך המותר.";s:13:"upload_failed";s:51:"שגיאה לא ידועה בהעלאת הקובץ.";s:24:"upload_file_type_invalid";s:67:"אין לך הרשאות להעלות קבצים בפורמט זה.";s:21:"upload_file_too_large";s:27:"הקובץ גדול מדי.";s:23:"upload_failed_php_error";s:35:"שגיאה בהעלאת הקובץ.";s:14:"invalid_number";s:40:"פורמט המספר אינו תקין.";s:16:"number_too_small";s:48:"המספר קטן מהמינימום המותר.";s:16:"number_too_large";s:50:"המספר גדול מהמקסימום המותר.";s:23:"quiz_answer_not_correct";s:59:"התשובה לשאלת הביטחון אינה נכונה.";s:17:"captcha_not_match";s:29:"הקוד שהזנת שגוי.";s:13:"invalid_email";s:59:"כתובת האימייל שהוזנה אינה תקינה.";s:11:"invalid_url";s:31:"הקישור אינו תקין.";s:11:"invalid_tel";s:40:"מספר הטלפון אינו תקין.";}'),
(1435, 573, '_additional_settings', ''),
(1436, 573, '_locale', 'he_IL'),
(1437, 574, '_piereg_post_restriction', ''),
(1438, 574, '_form', '<div class="form-group">\n<label> השם שלך (חובה)\n    [text* your-name class:form-control] </label>\n</div>\n<div class="form-group">\n<label> האימייל שלך (חובה)\n    [email* your-email class:form-control] </label>\n</div>\n<div class="form-group">\n<label> נושא\n    [text your-subject class:form-control] </label>\n</div>\n<div class="form-group">\n[select menu-676 class:form-control "רוצה למכור במקסימום" "כללי" "קונה למגורים" "השקעות נדל&quot;ן" "ניהול נכסים"]\n</div>\n<div class="form-group">\n<label> הודעה\n    [textarea your-message class:form-control] </label>\n</div>\n<div class="form-group">\n[submit "שלח" class:btn class:btn-default]\n</div>'),
(1439, 574, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:37:"ברוקר נדל"ן "[your-subject]"";s:6:"sender";s:35:"[your-name] <davseveloff@gmail.com>";s:9:"recipient";s:21:"davseveloff@gmail.com";s:4:"body";s:214:"מאת: [your-name] <[your-email]>\nנושא: [your-subject]\n\nתוכן ההודעה:\n[your-message]\n\n-- \nאימייל זה נשלח מטופס יצירת קשר ב ברוקר נדל&quot;ן (//localhost:3000/broker)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(1440, 574, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:37:"ברוקר נדל"ן "[your-subject]"";s:6:"sender";s:44:"ברוקר נדל"ן <davseveloff@gmail.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:153:"תוכן ההודעה:\n[your-message]\n\n-- \nאימייל זה נשלח מטופס יצירת קשר ב ברוקר נדל&quot;ן (//localhost:3000/broker)";s:18:"additional_headers";s:31:"Reply-To: davseveloff@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(1441, 574, '_messages', 'a:23:{s:12:"mail_sent_ok";s:24:"ההודעה נשלחה.";s:12:"mail_sent_ng";s:46:"ארעה שגיאה בשליחת ההודעה.";s:16:"validation_error";s:52:"קיימת שגיאה בשדה אחד או יותר.";s:4:"spam";s:46:"ארעה שגיאה בשליחת ההודעה.";s:12:"accept_terms";s:68:"עליך להסכים לתנאים לפני שליחת ההודעה.";s:16:"invalid_required";s:23:"זהו שדה חובה.";s:16:"invalid_too_long";s:25:"השדה ארוך מדי.";s:17:"invalid_too_short";s:23:"השדה קצר מדי.";s:12:"invalid_date";s:38:"שדה התאריך אינו נכון.";s:14:"date_too_early";s:50:"התאריך מוקדם מהתאריך המותר.";s:13:"date_too_late";s:50:"התאריך מאוחר מהתאריך המותר.";s:13:"upload_failed";s:51:"שגיאה לא ידועה בהעלאת הקובץ.";s:24:"upload_file_type_invalid";s:67:"אין לך הרשאות להעלות קבצים בפורמט זה.";s:21:"upload_file_too_large";s:27:"הקובץ גדול מדי.";s:23:"upload_failed_php_error";s:35:"שגיאה בהעלאת הקובץ.";s:14:"invalid_number";s:40:"פורמט המספר אינו תקין.";s:16:"number_too_small";s:48:"המספר קטן מהמינימום המותר.";s:16:"number_too_large";s:50:"המספר גדול מהמקסימום המותר.";s:23:"quiz_answer_not_correct";s:59:"התשובה לשאלת הביטחון אינה נכונה.";s:17:"captcha_not_match";s:29:"הקוד שהזנת שגוי.";s:13:"invalid_email";s:59:"כתובת האימייל שהוזנה אינה תקינה.";s:11:"invalid_url";s:31:"הקישור אינו תקין.";s:11:"invalid_tel";s:40:"מספר הטלפון אינו תקין.";}'),
(1442, 574, '_additional_settings', ''),
(1443, 574, '_locale', 'he_IL'),
(1444, 575, '_piereg_post_restriction', 'a:6:{s:16:"piereg_post_type";s:4:"page";s:22:"piereg_post_visibility";s:7:"default";s:23:"piereg_restriction_type";s:1:"0";s:19:"piereg_redirect_url";s:0:"";s:20:"piereg_redirect_page";s:2:"-1";s:20:"piereg_block_content";s:0:"";}'),
(1445, 575, '_edit_lock', '1513009510:1'),
(1446, 575, '_edit_last', '1'),
(1447, 575, '_wp_page_template', 'page-boxed.php'),
(1450, 581, '_edit_last', '1'),
(1451, 581, '_edit_lock', '1513011616:1'),
(1452, 582, '_piereg_post_restriction', ''),
(1453, 582, '_edit_lock', '1513023623:1'),
(1454, 582, '_edit_last', '1'),
(1455, 583, '_piereg_post_restriction', ''),
(1456, 584, '_piereg_post_restriction', ''),
(1457, 584, '_edit_lock', '1513024035:1'),
(1458, 584, '_edit_last', '1'),
(1459, 585, '_piereg_post_restriction', ''),
(1460, 584, '_thumbnail_id', '499'),
(1461, 584, 'ar_views', '1683'),
(1462, 584, '_ar_views', 'field_5a2a4f3ec2339'),
(1463, 584, 'ar_mail_share', '234'),
(1464, 584, '_ar_mail_share', 'field_5a2a4fefc233a'),
(1465, 584, 'ar_fb_share', '255'),
(1466, 584, '_ar_fb_share', 'field_5a2a510fc233b'),
(1467, 584, 'ar_wa_share', '456'),
(1468, 584, '_ar_wa_share', 'field_5a2a5259f33b2'),
(1469, 584, 'ar_related', 'a:3:{i:0;s:3:"366";i:1;s:3:"557";i:2;s:1:"1";}'),
(1470, 584, '_ar_related', 'field_5a2bd99ff8548'),
(1471, 586, '_piereg_post_restriction', ''),
(1472, 587, '_piereg_post_restriction', ''),
(1473, 588, '_piereg_post_restriction', ''),
(1474, 586, '_edit_lock', '1513024450:1'),
(1475, 589, '_piereg_post_restriction', ''),
(1476, 589, '_edit_lock', '1513024480:1'),
(1477, 590, '_piereg_post_restriction', ''),
(1478, 591, '_piereg_post_restriction', ''),
(1479, 592, '_piereg_post_restriction', ''),
(1480, 593, '_piereg_post_restriction', ''),
(1481, 594, '_piereg_post_restriction', ''),
(1482, 592, '_edit_lock', '1513024564:1'),
(1483, 595, '_piereg_post_restriction', ''),
(1484, 596, '_piereg_post_restriction', ''),
(1485, 70, 'prop_area', 'אילת וערבה'),
(1486, 70, '_prop_area', 'field_59f2dfc922689'),
(1487, 70, 'prop_type', 'דירה'),
(1488, 70, '_prop_type', 'field_59ec7533be002'),
(1489, 70, '_piereg_post_restriction', ''),
(1490, 597, '_piereg_post_restriction', ''),
(1491, 597, '_menu_item_type', 'post_type'),
(1492, 597, '_menu_item_menu_item_parent', '49'),
(1493, 597, '_menu_item_object_id', '575'),
(1494, 597, '_menu_item_object', 'page'),
(1495, 597, '_menu_item_target', ''),
(1496, 597, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1497, 597, '_menu_item_xfn', ''),
(1498, 597, '_menu_item_url', ''),
(1504, 597, '_menu_item_visibility', 'default'),
(1500, 44, '_piereg_post_restriction', ''),
(1501, 44, '_menu_item_visibility', 'default'),
(1502, 49, '_piereg_post_restriction', ''),
(1503, 49, '_menu_item_visibility', 'default'),
(1505, 50, '_piereg_post_restriction', ''),
(1506, 50, '_menu_item_visibility', 'default'),
(1507, 51, '_piereg_post_restriction', ''),
(1508, 51, '_menu_item_visibility', 'default'),
(1509, 469, '_piereg_post_restriction', ''),
(1510, 469, '_menu_item_visibility', 'default'),
(1511, 52, '_piereg_post_restriction', ''),
(1512, 52, '_menu_item_visibility', 'default'),
(1513, 54, '_piereg_post_restriction', ''),
(1514, 54, '_menu_item_visibility', 'default'),
(1515, 598, '_wp_attached_file', '2017/12/no-image.jpg'),
(1516, 598, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:160;s:4:"file";s:20:"2017/12/no-image.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"no-image-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"no-image-300x160.jpg";s:5:"width";i:300;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-07-08 09:42:50', '2017-07-08 06:42:50', 'קולהע צופעט למרקוח איבן איף, ברומץ כלרשט מיחוצים. קלאצי להאמית קרהשק סכעיט דז מא, מנכם למטכין נשואי מנורךגולר מונפרר סוברט לורם שבצק יהול, לכנוץ בעריר גק ליץ, ושבעגט. ושבעגט ליבם סולגק. בראיט ולחת צורק מונחף, בגורמי מגמש. תרבנך וסתעד לכנו סתשם השמה - לתכי מורגם בורק? לתיג ישבעס.\r\n\r\nלהאמית קרהשק סכעיט דז מא, מנכם למטכין נשואי מנורך. גולר מונפרר סוברט לורם שבצק יהול, לכנוץ בעריר גק ליץ, ושבעגט ליבם סולגק. בראיט ולחת צורק מונחף, בגורמי מגמש. תרבנך וסתעד לכנו סתשם השמה - לתכי מורגם בורק? לתיג ישבעס.\r\n\r\nנולום ארווס סאפיאן - פוסיליס קוויס, אקווזמן קונדימנטום קורוס בליקרה, נונסטי קלובר בריקנה סטום, לפריקך תצטריק לרטי.\r\n\r\nהועניב היושבב שערש שמחויט - שלושע ותלברו חשלו שעותלשך וחאית נובש ערששף. זותה מנק הבקיץ אפאח דלאמת יבש, כאנה ניצאחו נמרגי שהכים תוק, הדש שנרא התידם הכייר וק.\r\n\r\nנולום ארווס סאפיאן - פוסיליס קוויס, אקווזמן קוואזי במר מודוף. אודיפו בלאסטיק מונופץ קליר, בנפת נפקט למסון בלרק - וענוף קולורס מונפרד אדנדום סילקוף, מרגשי ומרגשח. עמחליף קונסקטורר אדיפיסינג אלית. סת אלמנקום ניסי נון ניבאה. דס איאקוליס וולופטה דיאם. וסטיבולום אט דולור, קראס אגת לקטוס וואל אאוגו וסטיבולום סוליסי טידום בעליק. קונדימנטום קורוס בליקרה, נונסטי קלובר בריקנה סטום, לפריקך תצטריק לרטי.\r\n\r\nקוואזי במר מודוף. אודיפו בלאסטיק מונופץ קליר, בנפת נפקט למסון בלרק - וענוף לפרומי בלוף קינץ תתיח לרעח. לת צשחמי צש בליא, מנסוטו צמלח לביקו ננבי, צמוקו בלוקריה שיצמה ברורק.\r\n\r\nקולורס מונפרד אדנדום סילקוף, מרגשי ומרגשח. עמחליף', 'שלום עולם!', 'לורם איפסום דולור סיט אמט, קונסקטורר אדיפיסינג אלית סחטיר בלובק. תצטנפל בלינדו למרקל אס לכימפו, דול, צוט ומעיוט - לפתיעם ברשג - ולתיעם גדדיש. קוויז דומור ליאמום בלינך רוגצה. לפמעט מוסן מנת. קולהע צופעט למרקוח איבן איף, ברומץ כלרשט מיחוצים. קלאצי סחטיר בלובק. תצטנפל בלינדו למרקל אס לכימפו, דול, צוט ומעיוט - לפתיעם ברשג - ולתיעם גדדיש. קוויז דומור ליאמום בלינך רוגצה. לפמעט ', 'publish', 'open', 'open', '', '%d7%a9%d7%9c%d7%95%d7%9d-%d7%a2%d7%95%d7%9c%d7%9d', '', '', '2017-11-04 11:33:19', '2017-11-04 09:33:19', '', 0, 'http://davdev.co.il/broker/?p=1', 0, 'post', '', 1),
(2, 1, '2017-07-08 09:42:50', '2017-07-08 06:42:50', 'זו דוגמה לעמוד וורדפרס. בניגוד לפוסטים, עמודים נשארים תמיד באותו מקום, וברוב התבניות העמודים מופיעים כחלק מתפריט הניווט הראשי של האתר. מומלץ להתחיל ביצירת עמוד "אודות", ולהציג בו את האתר ואת בעליו. הנה עמוד אודות לדוגמה:\n\n<blockquote>שלום לכולם, אני שמח לארח אתכם כאן. כמוכר פלפל בימים, ורקדן חוצות בלילות, אני מוצא גם זמן לאיסוף בולים עם סמלי ערים. אני גר במרכז ושמח בכל פעם שיורד מעט גשם.</blockquote>\n\nגם זה עמוד אודות:\n\n<blockquote>החברה א.א. ובניו בע"מ מייצרת ומשווקת מוצרי איכות מאז 1971. אנו מעסיקים כ-2,000 עובדים במשרדינו שבמגדל משה, ועוסקים בפעילות חברתית ענפה בקרב הקהילה המקומית.</blockquote>\n\nניתן למחוק עמוד זה דרך <a href="http://davdev.co.il/broker/wp-admin/">לוח הבקרה</a> וליצור במקומו עמודים נוספים. תהנו!', 'עמוד לדוגמא', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-07-08 09:42:50', '2017-07-08 06:42:50', '', 0, 'http://davdev.co.il/broker/?page_id=2', 0, 'page', '', 0),
(4, 1, '2017-07-10 12:23:29', '2017-07-10 09:23:29', '', 'jch-optimize-pro_wordpress_2.1.0', '', 'inherit', 'open', 'closed', '', 'jch-optimize-pro_wordpress_2-1-0', '', '', '2017-07-10 12:23:29', '2017-07-10 09:23:29', '', 0, 'http://davdev.co.il/broker/wp-content/uploads/2017/07/jch-optimize-pro_wordpress_2.1.0.zip', 0, 'attachment', 'application/zip', 0),
(52, 1, '2017-09-14 09:34:11', '2017-09-14 06:34:11', '', 'תוכן ומידע', '', 'publish', 'closed', 'closed', '', '%d7%aa%d7%95%d7%9b%d7%9f-%d7%95%d7%9e%d7%99%d7%93%d7%a2', '', '', '2017-12-15 12:49:49', '2017-12-15 10:49:49', '', 0, 'http://davdev.co.il/broker/?p=52', 7, 'nav_menu_item', '', 0),
(473, 1, '2017-11-17 14:44:01', '2017-11-17 12:44:01', '[pie_register_forgot_password]', 'Forgot Password', '', 'publish', 'closed', 'closed', '', 'forgot-password', '', '', '2017-11-17 14:44:01', '2017-11-17 12:44:01', '', 0, 'http://davdev.co.il/broker/forgot-password/', 0, 'page', '', 0),
(474, 1, '2017-11-17 14:44:01', '2017-11-17 12:44:01', '[pie_register_profile]', 'Profile', '', 'publish', 'closed', 'closed', '', 'profile', '', '', '2017-12-09 09:08:46', '2017-12-09 07:08:46', '', 0, 'http://davdev.co.il/broker/profile/', 0, 'page', '', 0),
(475, 1, '2017-11-17 14:44:01', '2017-11-17 12:44:01', '[pie_register_form id="1" title="true" description="true" ]', 'Registration', '', 'inherit', 'closed', 'closed', '', '472-revision-v1', '', '', '2017-11-17 14:44:01', '2017-11-17 12:44:01', '', 472, 'http://davdev.co.il/broker/472-revision-v1/', 0, 'revision', '', 0),
(477, 1, '2017-11-17 16:20:59', '2017-11-17 14:20:59', '[pie_register_form id="1" title="true" description="true" ]', 'הצטרפו לברוקר', '', 'inherit', 'closed', 'closed', '', '461-revision-v1', '', '', '2017-11-17 16:20:59', '2017-11-17 14:20:59', '', 461, 'http://davdev.co.il/broker/461-revision-v1/', 0, 'revision', '', 0),
(478, 1, '2017-11-17 16:21:26', '2017-11-17 14:21:26', '[pie_register_login]', 'התחברו לברוקר', '', 'inherit', 'closed', 'closed', '', '459-revision-v1', '', '', '2017-11-17 16:21:26', '2017-11-17 14:21:26', '', 459, 'http://davdev.co.il/broker/459-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2017-09-14 09:34:11', '2017-09-14 06:34:11', '', 'נכסים', '', 'publish', 'closed', 'closed', '', '%d7%a0%d7%9b%d7%a1%d7%99%d7%9d', '', '', '2017-12-15 12:49:49', '2017-12-15 10:49:49', '', 0, 'http://davdev.co.il/broker/?p=50', 4, 'nav_menu_item', '', 0),
(49, 1, '2017-09-14 09:34:11', '2017-09-14 06:34:11', '', 'אודות', '', 'publish', 'closed', 'closed', '', '%d7%90%d7%95%d7%93%d7%95%d7%aa', '', '', '2017-12-15 12:49:49', '2017-12-15 10:49:49', '', 0, 'http://davdev.co.il/broker/?p=49', 2, 'nav_menu_item', '', 0),
(48, 1, '2017-09-13 19:39:12', '2017-09-13 16:39:12', '', 'עמוד ראשי', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2017-09-13 19:39:12', '2017-09-13 16:39:12', '', 47, 'http://davdev.co.il/broker/?p=48', 0, 'revision', '', 0),
(47, 1, '2017-09-13 19:39:12', '2017-09-13 16:39:12', '', 'עמוד ראשי', '', 'publish', 'closed', 'closed', '', '%d7%a2%d7%9e%d7%95%d7%93-%d7%a8%d7%90%d7%a9%d7%99', '', '', '2017-09-13 19:39:12', '2017-09-13 16:39:12', '', 0, 'http://davdev.co.il/broker/?page_id=47', 0, 'page', '', 0),
(177, 1, '2017-10-01 10:51:38', '2017-10-01 07:51:38', 'a:7:{s:4:"type";s:5:"group";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:5:"block";s:10:"sub_fields";a:0:{}}', 'ארגז הכלים של ברוקר', 'tool_box', 'publish', 'closed', 'closed', '', 'field_59d096c366a5f', '', '', '2017-10-01 11:49:16', '2017-10-01 08:49:16', '', 57, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=177', 4, 'acf-field', '', 0),
(18, 1, '2017-09-05 16:54:28', '2017-09-05 13:54:28', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:8:"property";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:1:{i:0;s:11:"the_content";}s:11:"description";s:0:"";}', 'פרטי הנכס', '%d7%a4%d7%a8%d7%98%d7%99-%d7%94%d7%a0%d7%9b%d7%a1', 'publish', 'closed', 'closed', '', 'group_59ae9674569e9', '', '', '2017-11-18 08:06:14', '2017-11-18 06:06:14', '', 0, 'http://davdev.co.il/broker/?post_type=acf-field-group&#038;p=18', 0, 'acf-field-group', '', 0),
(19, 1, '2017-09-05 16:54:28', '2017-09-05 13:54:28', 'a:13:{s:4:"type";s:6:"select";s:12:"instructions";s:57:"נא לבחור את שם העיר בה נמצא הנכס";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:26:"acf-need-to-add-all-option";s:2:"id";s:22:"need-to-add-all-option";}s:7:"choices";a:1271:{s:31:"אבו ג''ווייעד (שבט)";s:31:"אבו ג''ווייעד (שבט)";s:13:"אבו גוש";s:13:"אבו גוש";s:15:"אבו סנאן";s:15:"אבו סנאן";s:28:"אבו סריחאן (שבט)";s:28:"אבו סריחאן (שבט)";s:26:"אבו עבדון (שבט)";s:26:"אבו עבדון (שבט)";s:24:"אבו עמאר (שבט)";s:24:"אבו עמאר (שבט)";s:24:"אבו עמרה (שבט)";s:24:"אבו עמרה (שבט)";s:30:"אבו קורינאת (שבט)";s:30:"אבו קורינאת (שבט)";s:32:"אבו קרינאת (יישוב)";s:32:"אבו קרינאת (יישוב)";s:30:"אבו רובייעה (שבט)";s:30:"אבו רובייעה (שבט)";s:28:"אבו רוקייק (שבט)";s:28:"אבו רוקייק (שבט)";s:15:"אבו תלול";s:15:"אבו תלול";s:10:"אבטין";s:10:"אבטין";s:14:"אבטליון";s:14:"אבטליון";s:10:"אביאל";s:10:"אביאל";s:12:"אביבים";s:12:"אביבים";s:14:"אביגדור";s:14:"אביגדור";s:12:"אביחיל";s:12:"אביחיל";s:10:"אביטל";s:10:"אביטל";s:12:"אביעזר";s:12:"אביעזר";s:12:"אבירים";s:12:"אבירים";s:17:"אבן יהודה";s:17:"אבן יהודה";s:15:"אבן מנחם";s:15:"אבן מנחם";s:15:"אבן ספיר";s:15:"אבן ספיר";s:17:"אבן שמואל";s:17:"אבן שמואל";s:17:"אבני איתן";s:17:"אבני איתן";s:15:"אבני חפץ";s:15:"אבני חפץ";s:8:"אבנת";s:8:"אבנת";s:12:"אבשלום";s:12:"אבשלום";s:10:"אדורה";s:10:"אדורה";s:12:"אדירים";s:12:"אדירים";s:10:"אדמית";s:10:"אדמית";s:8:"אדרת";s:8:"אדרת";s:10:"אודים";s:10:"אודים";s:8:"אודם";s:8:"אודם";s:8:"אוהד";s:8:"אוהד";s:18:"אום אל-פחם";s:18:"אום אל-פחם";s:22:"אום אל-קוטוף";s:22:"אום אל-קוטוף";s:15:"אום בטין";s:15:"אום בטין";s:8:"אומן";s:8:"אומן";s:8:"אומץ";s:8:"אומץ";s:12:"אופקים";s:12:"אופקים";s:17:"אור הגנוז";s:17:"אור הגנוז";s:13:"אור הנר";s:13:"אור הנר";s:17:"אור יהודה";s:17:"אור יהודה";s:17:"אור עקיבא";s:17:"אור עקיבא";s:8:"אורה";s:8:"אורה";s:10:"אורות";s:10:"אורות";s:10:"אורטל";s:10:"אורטל";s:10:"אורים";s:10:"אורים";s:12:"אורנים";s:12:"אורנים";s:12:"אורנית";s:12:"אורנית";s:8:"אושה";s:8:"אושה";s:8:"אזור";s:8:"אזור";s:10:"אחווה";s:10:"אחווה";s:10:"אחוזם";s:10:"אחוזם";s:17:"אחוזת ברק";s:17:"אחוזת ברק";s:12:"אחיהוד";s:12:"אחיהוד";s:12:"אחיטוב";s:12:"אחיטוב";s:12:"אחיסמך";s:12:"אחיסמך";s:12:"אחיעזר";s:12:"אחיעזר";s:17:"אטרש (שבט)";s:17:"אטרש (שבט)";s:10:"איבים";s:10:"איבים";s:8:"אייל";s:8:"אייל";s:19:"איילת השחר";s:19:"איילת השחר";s:10:"אילון";s:10:"אילון";s:10:"אילות";s:10:"אילות";s:12:"אילניה";s:12:"אילניה";s:8:"אילת";s:8:"אילת";s:10:"אירוס";s:10:"אירוס";s:10:"איתמר";s:10:"איתמר";s:8:"איתן";s:8:"איתן";s:12:"איתנים";s:12:"איתנים";s:10:"אכסאל";s:10:"אכסאל";s:13:"אל סייד";s:13:"אל סייד";s:11:"אל-עזי";s:11:"אל-עזי";s:15:"אל-עריאן";s:15:"אל-עריאן";s:11:"אל-רום";s:11:"אל-רום";s:10:"אלומה";s:10:"אלומה";s:12:"אלומות";s:12:"אלומות";s:19:"אלון הגליל";s:19:"אלון הגליל";s:17:"אלון מורה";s:17:"אלון מורה";s:17:"אלון שבות";s:17:"אלון שבות";s:17:"אלוני אבא";s:17:"אלוני אבא";s:19:"אלוני הבשן";s:19:"אלוני הבשן";s:19:"אלוני יצחק";s:19:"אלוני יצחק";s:12:"אלונים";s:12:"אלונים";s:11:"אלי-עד";s:11:"אלי-עד";s:10:"אליאב";s:10:"אליאב";s:12:"אליכין";s:12:"אליכין";s:10:"אליפז";s:10:"אליפז";s:12:"אליפלט";s:12:"אליפלט";s:12:"אליקים";s:12:"אליקים";s:12:"אלישיב";s:12:"אלישיב";s:12:"אלישמע";s:12:"אלישמע";s:12:"אלמגור";s:12:"אלמגור";s:10:"אלמוג";s:10:"אלמוג";s:8:"אלעד";s:8:"אלעד";s:10:"אלעזר";s:10:"אלעזר";s:17:"אלפי מנשה";s:17:"אלפי מנשה";s:10:"אלקוש";s:10:"אלקוש";s:10:"אלקנה";s:10:"אלקנה";s:12:"אמונים";s:12:"אמונים";s:12:"אמירים";s:12:"אמירים";s:10:"אמנון";s:10:"אמנון";s:10:"אמציה";s:10:"אמציה";s:10:"אניעם";s:10:"אניעם";s:15:"אסד (שבט)";s:15:"אסד (שבט)";s:8:"אספר";s:8:"אספר";s:12:"אעבלין";s:12:"אעבלין";s:17:"אעצם (שבט)";s:17:"אעצם (שבט)";s:21:"אפיניש (שבט)";s:21:"אפיניש (שבט)";s:8:"אפיק";s:8:"אפיק";s:12:"אפיקים";s:12:"אפיקים";s:6:"אפק";s:6:"אפק";s:8:"אפרת";s:8:"אפרת";s:8:"ארבל";s:8:"ארבל";s:10:"ארגמן";s:10:"ארגמן";s:6:"ארז";s:6:"ארז";s:10:"אריאל";s:10:"אריאל";s:10:"ארסוף";s:10:"ארסוף";s:10:"אשבול";s:10:"אשבול";s:8:"אשבל";s:8:"אשבל";s:10:"אשדוד";s:10:"אשדוד";s:33:"אשדות יעקב  (איחוד)";s:33:"אשדות יעקב  (איחוד)";s:33:"אשדות יעקב  (מאוחד)";s:33:"אשדות יעקב  (מאוחד)";s:8:"אשחר";s:8:"אשחר";s:14:"אשכולות";s:14:"אשכולות";s:17:"אשל הנשיא";s:17:"אשל הנשיא";s:10:"אשלים";s:10:"אשלים";s:12:"אשקלון";s:12:"אשקלון";s:8:"אשרת";s:8:"אשרת";s:12:"אשתאול";s:12:"אשתאול";s:8:"אתגר";s:8:"אתגר";s:24:"באקה אל-גרביה";s:24:"באקה אל-גרביה";s:15:"באר אורה";s:15:"באר אורה";s:15:"באר גנים";s:15:"באר גנים";s:17:"באר טוביה";s:17:"באר טוביה";s:15:"באר יעקב";s:15:"באר יעקב";s:17:"באר מילכה";s:17:"באר מילכה";s:13:"באר שבע";s:13:"באר שבע";s:19:"בארות יצחק";s:19:"בארות יצחק";s:16:"בארותיים";s:16:"בארותיים";s:8:"בארי";s:8:"בארי";s:21:"בוסתן הגליל";s:21:"בוסתן הגליל";s:30:"בועיינה-נוג''ידאת";s:30:"בועיינה-נוג''ידאת";s:14:"בוקעאתא";s:14:"בוקעאתא";s:12:"בורגתה";s:12:"בורגתה";s:6:"בחן";s:6:"בחן";s:8:"בטחה";s:8:"בטחה";s:12:"ביצרון";s:12:"ביצרון";s:22:"ביר אל-מכסור";s:22:"ביר אל-מכסור";s:16:"ביר הדאג''";s:16:"ביר הדאג''";s:10:"ביריה";s:10:"ביריה";s:15:"בית אורן";s:15:"בית אורן";s:11:"בית אל";s:11:"בית אל";s:19:"בית אלעזרי";s:19:"בית אלעזרי";s:15:"בית אלפא";s:15:"בית אלפא";s:15:"בית אריה";s:15:"בית אריה";s:13:"בית ברל";s:13:"בית ברל";s:12:"בית ג''ן";s:12:"בית ג''ן";s:19:"בית גוברין";s:19:"בית גוברין";s:19:"בית גמליאל";s:19:"בית גמליאל";s:13:"בית דגן";s:13:"בית דגן";s:15:"בית הגדי";s:15:"בית הגדי";s:15:"בית הלוי";s:15:"בית הלוי";s:13:"בית הלל";s:13:"בית הלל";s:15:"בית העמק";s:15:"בית העמק";s:17:"בית הערבה";s:17:"בית הערבה";s:17:"בית השיטה";s:17:"בית השיטה";s:13:"בית זיד";s:13:"בית זיד";s:13:"בית זית";s:13:"בית זית";s:13:"בית זרע";s:13:"בית זרע";s:17:"בית חורון";s:17:"בית חורון";s:17:"בית חירות";s:17:"בית חירות";s:17:"בית חלקיה";s:17:"בית חלקיה";s:13:"בית חנן";s:13:"בית חנן";s:17:"בית חנניה";s:17:"בית חנניה";s:21:"בית חשמונאי";s:21:"בית חשמונאי";s:17:"בית יהושע";s:17:"בית יהושע";s:15:"בית יוסף";s:15:"בית יוסף";s:15:"בית ינאי";s:15:"בית ינאי";s:29:"בית יצחק-שער חפר";s:29:"בית יצחק-שער חפר";s:28:"בית לחם הגלילית";s:28:"בית לחם הגלילית";s:15:"בית מאיר";s:15:"בית מאיר";s:17:"בית נחמיה";s:17:"בית נחמיה";s:13:"בית ניר";s:13:"בית ניר";s:17:"בית נקופה";s:17:"בית נקופה";s:15:"בית עובד";s:15:"בית עובד";s:19:"בית עוזיאל";s:19:"בית עוזיאל";s:15:"בית עזרא";s:15:"בית עזרא";s:15:"בית עריף";s:15:"בית עריף";s:13:"בית צבי";s:13:"בית צבי";s:13:"בית קמה";s:13:"בית קמה";s:13:"בית קשת";s:13:"בית קשת";s:13:"בית רבן";s:13:"בית רבן";s:17:"בית רימון";s:17:"בית רימון";s:13:"בית שאן";s:13:"בית שאן";s:13:"בית שמש";s:13:"בית שמש";s:17:"בית שערים";s:17:"בית שערים";s:15:"בית שקמה";s:15:"בית שקמה";s:17:"ביתן אהרן";s:17:"ביתן אהרן";s:19:"ביתר עילית";s:19:"ביתר עילית";s:14:"בלפוריה";s:14:"בלפוריה";s:13:"בן זכאי";s:13:"בן זכאי";s:11:"בן עמי";s:11:"בן עמי";s:29:"בן שמן (כפר נוער)";s:29:"בן שמן (כפר נוער)";s:22:"בן שמן (מושב)";s:22:"בן שמן (מושב)";s:13:"בני ברק";s:13:"בני ברק";s:17:"בני דקלים";s:17:"בני דקלים";s:15:"בני דרום";s:15:"בני דרום";s:15:"בני דרור";s:15:"בני דרור";s:17:"בני יהודה";s:17:"בני יהודה";s:17:"בני נצרים";s:17:"בני נצרים";s:17:"בני עטרות";s:17:"בני עטרות";s:14:"בני עי"ש";s:14:"בני עי"ש";s:15:"בני ציון";s:15:"בני ציון";s:13:"בני ראם";s:13:"בני ראם";s:8:"בניה";s:8:"בניה";s:30:"בנימינה-גבעת עדה";s:30:"בנימינה-גבעת עדה";s:9:"בסמ"ה";s:9:"בסמ"ה";s:19:"בסמת טבעון";s:19:"בסמת טבעון";s:8:"בענה";s:8:"בענה";s:8:"בצרה";s:8:"בצרה";s:6:"בצת";s:6:"בצת";s:8:"בקוע";s:8:"בקוע";s:10:"בקעות";s:10:"בקעות";s:15:"בר גיורא";s:15:"בר גיורא";s:15:"בר יוחאי";s:15:"בר יוחאי";s:12:"ברוכין";s:12:"ברוכין";s:15:"ברור חיל";s:15:"ברור חיל";s:8:"ברוש";s:8:"ברוש";s:8:"ברכה";s:8:"ברכה";s:10:"ברכיה";s:10:"ברכיה";s:8:"ברעם";s:8:"ברעם";s:6:"ברק";s:6:"ברק";s:10:"ברקאי";s:10:"ברקאי";s:8:"ברקן";s:8:"ברקן";s:8:"ברקת";s:8:"ברקת";s:11:"בת הדר";s:11:"בת הדר";s:9:"בת חן";s:9:"בת חן";s:11:"בת חפר";s:11:"בת חפר";s:13:"בת חצור";s:13:"בת חצור";s:9:"בת ים";s:9:"בת ים";s:11:"בת עין";s:11:"בת עין";s:13:"בת שלמה";s:13:"בת שלמה";s:20:"ג''דיידה-מכר";s:20:"ג''דיידה-מכר";s:9:"ג''ולס";s:9:"ג''ולס";s:16:"ג''לג''וליה";s:16:"ג''לג''וליה";s:22:"ג''נאביב (שבט)";s:22:"ג''נאביב (שבט)";s:19:"ג''סר א-זרקא";s:19:"ג''סר א-זרקא";s:21:"ג''ש (גוש חלב)";s:21:"ג''ש (גוש חלב)";s:5:"ג''ת";s:5:"ג''ת";s:19:"גאולי תימן";s:19:"גאולי תימן";s:12:"גאולים";s:12:"גאולים";s:10:"גאליה";s:10:"גאליה";s:12:"גבולות";s:12:"גבולות";s:8:"גבים";s:8:"גבים";s:6:"גבע";s:6:"גבע";s:19:"גבע בנימין";s:19:"גבע בנימין";s:15:"גבע כרמל";s:15:"גבע כרמל";s:14:"גבעולים";s:14:"גבעולים";s:21:"גבעון החדשה";s:21:"גבעון החדשה";s:15:"גבעות בר";s:15:"גבעות בר";s:17:"גבעת אבני";s:17:"גבעת אבני";s:15:"גבעת אלה";s:15:"גבעת אלה";s:17:"גבעת ברנר";s:17:"גבעת ברנר";s:21:"גבעת השלושה";s:21:"גבעת השלושה";s:15:"גבעת זאב";s:15:"גבעת זאב";s:14:"גבעת ח"ן";s:14:"גבעת ח"ן";s:30:"גבעת חיים (איחוד)";s:30:"גבעת חיים (איחוד)";s:30:"גבעת חיים (מאוחד)";s:30:"גבעת חיים (מאוחד)";s:17:"גבעת יואב";s:17:"גבעת יואב";s:19:"גבעת יערים";s:19:"גבעת יערים";s:21:"גבעת ישעיהו";s:21:"גבעת ישעיהו";s:14:"גבעת כ"ח";s:14:"גבעת כ"ח";s:18:"גבעת ניל"י";s:18:"גבעת ניל"י";s:15:"גבעת עוז";s:15:"גבעת עוז";s:19:"גבעת שמואל";s:19:"גבעת שמואל";s:15:"גבעת שמש";s:15:"גבעת שמש";s:19:"גבעת שפירא";s:19:"גבעת שפירא";s:10:"גבעתי";s:10:"גבעתי";s:14:"גבעתיים";s:14:"גבעתיים";s:10:"גברעם";s:10:"גברעם";s:6:"גבת";s:6:"גבת";s:8:"גדות";s:8:"גדות";s:8:"גדיש";s:8:"גדיש";s:12:"גדעונה";s:12:"גדעונה";s:8:"גדרה";s:8:"גדרה";s:8:"גונן";s:8:"גונן";s:8:"גורן";s:8:"גורן";s:23:"גורנות הגליל";s:23:"גורנות הגליל";s:8:"גזית";s:8:"גזית";s:6:"גזר";s:6:"גזר";s:8:"גיאה";s:8:"גיאה";s:12:"גיבתון";s:12:"גיבתון";s:8:"גיזו";s:8:"גיזו";s:10:"גילון";s:10:"גילון";s:8:"גילת";s:8:"גילת";s:12:"גינוסר";s:12:"גינוסר";s:12:"גיניגר";s:12:"גיניגר";s:12:"גינתון";s:12:"גינתון";s:8:"גיתה";s:8:"גיתה";s:10:"גיתית";s:10:"גיתית";s:10:"גלאון";s:10:"גלאון";s:8:"גלגל";s:8:"גלגל";s:13:"גליל ים";s:13:"גליל ים";s:26:"גלעד (אבן יצחק)";s:26:"גלעד (אבן יצחק)";s:8:"גמזו";s:8:"גמזו";s:15:"גן הדרום";s:15:"גן הדרום";s:19:"גן השומרון";s:19:"גן השומרון";s:13:"גן חיים";s:13:"גן חיים";s:15:"גן יאשיה";s:15:"גן יאשיה";s:13:"גן יבנה";s:13:"גן יבנה";s:9:"גן נר";s:9:"גן נר";s:13:"גן שורק";s:13:"גן שורק";s:13:"גן שלמה";s:13:"גן שלמה";s:15:"גן שמואל";s:15:"גן שמואל";s:8:"גנות";s:8:"גנות";s:15:"גנות הדר";s:15:"גנות הדר";s:13:"גני הדר";s:13:"גני הדר";s:11:"גני טל";s:11:"גני טל";s:17:"גני יוחנן";s:17:"גני יוחנן";s:21:"גני מודיעין";s:21:"גני מודיעין";s:11:"גני עם";s:11:"גני עם";s:17:"גני תקווה";s:17:"גני תקווה";s:6:"געש";s:6:"געש";s:10:"געתון";s:10:"געתון";s:6:"גפן";s:6:"גפן";s:12:"גרופית";s:12:"גרופית";s:8:"גשור";s:8:"גשור";s:6:"גשר";s:6:"גשר";s:15:"גשר הזיו";s:15:"גשר הזיו";s:17:"גת (קיבוץ)";s:17:"גת (קיבוץ)";s:15:"גת רימון";s:15:"גת רימון";s:24:"דאלית אל-כרמל";s:24:"דאלית אל-כרמל";s:10:"דבורה";s:10:"דבורה";s:12:"דבוריה";s:12:"דבוריה";s:10:"דבירה";s:10:"דבירה";s:8:"דברת";s:8:"דברת";s:14:"דגניה א''";s:14:"דגניה א''";s:14:"דגניה ב''";s:14:"דגניה ב''";s:9:"דוב"ב";s:9:"דוב"ב";s:8:"דולב";s:8:"דולב";s:6:"דור";s:6:"דור";s:10:"דורות";s:10:"דורות";s:6:"דחי";s:6:"דחי";s:20:"דייר אל-אסד";s:20:"דייר אל-אסד";s:15:"דייר חנא";s:15:"דייר חנא";s:19:"דייר ראפאת";s:19:"דייר ראפאת";s:12:"דימונה";s:12:"דימונה";s:10:"דישון";s:10:"דישון";s:8:"דליה";s:8:"דליה";s:10:"דלתון";s:10:"דלתון";s:12:"דמיידה";s:12:"דמיידה";s:4:"דן";s:4:"דן";s:8:"דפנה";s:8:"דפנה";s:6:"דקל";s:6:"דקל";s:13:"דריג''את";s:13:"דריג''את";s:8:"האון";s:8:"האון";s:12:"הבונים";s:12:"הבונים";s:14:"הגושרים";s:14:"הגושרים";s:11:"הדר עם";s:11:"הדר עם";s:17:"הוד השרון";s:17:"הוד השרון";s:10:"הודיה";s:10:"הודיה";s:12:"הודיות";s:12:"הודיות";s:23:"הוואשלה (שבט)";s:23:"הוואשלה (שבט)";s:21:"הוזייל (שבט)";s:21:"הוזייל (שבט)";s:12:"הושעיה";s:12:"הושעיה";s:10:"הזורע";s:10:"הזורע";s:14:"הזורעים";s:14:"הזורעים";s:14:"החותרים";s:14:"החותרים";s:10:"היוגב";s:10:"היוגב";s:8:"הילה";s:8:"הילה";s:12:"המעפיל";s:12:"המעפיל";s:14:"הסוללים";s:14:"הסוללים";s:10:"העוגן";s:10:"העוגן";s:11:"הר אדר";s:11:"הר אדר";s:13:"הר גילה";s:13:"הר גילה";s:13:"הר עמשא";s:13:"הר עמשא";s:8:"הראל";s:8:"הראל";s:10:"הרדוף";s:10:"הרדוף";s:12:"הרצליה";s:12:"הרצליה";s:10:"הררית";s:10:"הררית";s:17:"ורד יריחו";s:17:"ורד יריחו";s:10:"ורדון";s:10:"ורדון";s:21:"זבארגה (שבט)";s:21:"זבארגה (שבט)";s:12:"זבדיאל";s:12:"זבדיאל";s:8:"זוהר";s:8:"זוהר";s:10:"זיקים";s:10:"זיקים";s:8:"זיתן";s:8:"זיתן";s:19:"זכרון יעקב";s:19:"זכרון יעקב";s:10:"זכריה";s:10:"זכריה";s:6:"זמר";s:6:"זמר";s:8:"זמרת";s:8:"זמרת";s:8:"זנוח";s:8:"זנוח";s:10:"זרועה";s:10:"זרועה";s:10:"זרזיר";s:10:"זרזיר";s:10:"זרחיה";s:10:"זרחיה";s:11:"ח''ואלד";s:11:"ח''ואלד";s:20:"ח''ואלד (שבט)";s:20:"ח''ואלד (שבט)";s:21:"חבצלת השרון";s:21:"חבצלת השרון";s:6:"חבר";s:6:"חבר";s:10:"חברון";s:10:"חברון";s:8:"חגור";s:8:"חגור";s:6:"חגי";s:6:"חגי";s:8:"חגלה";s:8:"חגלה";s:9:"חד-נס";s:9:"חד-נס";s:8:"חדיד";s:8:"חדיד";s:8:"חדרה";s:8:"חדרה";s:29:"חוג''ייראת (ד''הרה)";s:29:"חוג''ייראת (ד''הרה)";s:10:"חולדה";s:10:"חולדה";s:10:"חולון";s:10:"חולון";s:10:"חולית";s:10:"חולית";s:10:"חולתה";s:10:"חולתה";s:8:"חוסן";s:8:"חוסן";s:14:"חוסנייה";s:14:"חוסנייה";s:10:"חופית";s:10:"חופית";s:10:"חוקוק";s:10:"חוקוק";s:8:"חורה";s:8:"חורה";s:12:"חורפיש";s:12:"חורפיש";s:12:"חורשים";s:12:"חורשים";s:8:"חזון";s:8:"חזון";s:17:"חיבת ציון";s:17:"חיבת ציון";s:12:"חיננית";s:12:"חיננית";s:8:"חיפה";s:8:"חיפה";s:10:"חירות";s:10:"חירות";s:8:"חלוץ";s:8:"חלוץ";s:10:"חלמיש";s:10:"חלמיש";s:6:"חלץ";s:6:"חלץ";s:8:"חמאם";s:8:"חמאם";s:6:"חמד";s:6:"חמד";s:10:"חמדיה";s:10:"חמדיה";s:8:"חמדת";s:8:"חמדת";s:8:"חמרה";s:8:"חמרה";s:10:"חניאל";s:10:"חניאל";s:10:"חניתה";s:10:"חניתה";s:10:"חנתון";s:10:"חנתון";s:10:"חספין";s:10:"חספין";s:15:"חפץ חיים";s:15:"חפץ חיים";s:13:"חפצי-בה";s:13:"חפצי-בה";s:6:"חצב";s:6:"חצב";s:8:"חצבה";s:8:"חצבה";s:23:"חצור הגלילית";s:23:"חצור הגלילית";s:19:"חצור-אשדוד";s:19:"חצור-אשדוד";s:23:"חצר בארותיים";s:23:"חצר בארותיים";s:21:"חצרות חולדה";s:21:"חצרות חולדה";s:17:"חצרות יסף";s:17:"חצרות יסף";s:16:"חצרות כ"ח";s:16:"חצרות כ"ח";s:10:"חצרים";s:10:"חצרים";s:13:"חרב לאת";s:13:"חרב לאת";s:12:"חרוצים";s:12:"חרוצים";s:8:"חריש";s:8:"חריש";s:8:"חרמש";s:8:"חרמש";s:10:"חרשים";s:10:"חרשים";s:16:"חשמונאים";s:16:"חשמונאים";s:10:"טבריה";s:10:"טבריה";s:21:"טובא-זנגריה";s:21:"טובא-זנגריה";s:12:"טורעאן";s:12:"טורעאן";s:10:"טייבה";s:10:"טייבה";s:21:"טייבה (בעמק)";s:21:"טייבה (בעמק)";s:8:"טירה";s:8:"טירה";s:19:"טירת יהודה";s:19:"טירת יהודה";s:17:"טירת כרמל";s:17:"טירת כרמל";s:15:"טירת צבי";s:15:"טירת צבי";s:11:"טל שחר";s:11:"טל שחר";s:9:"טל-אל";s:9:"טל-אל";s:10:"טללים";s:10:"טללים";s:10:"טלמון";s:10:"טלמון";s:8:"טמרה";s:8:"טמרה";s:23:"טמרה (יזרעאל)";s:23:"טמרה (יזרעאל)";s:6:"טנא";s:6:"טנא";s:10:"טפחות";s:10:"טפחות";s:16:"יאנוח-ג''ת";s:16:"יאנוח-ג''ת";s:8:"יבול";s:8:"יבול";s:10:"יבנאל";s:10:"יבנאל";s:8:"יבנה";s:8:"יבנה";s:8:"יגור";s:8:"יגור";s:6:"יגל";s:6:"יגל";s:17:"יד בנימין";s:17:"יד בנימין";s:17:"יד השמונה";s:17:"יד השמונה";s:11:"יד חנה";s:11:"יד חנה";s:15:"יד מרדכי";s:15:"יד מרדכי";s:11:"יד נתן";s:11:"יד נתן";s:14:"יד רמב"ם";s:14:"יד רמב"ם";s:10:"ידידה";s:10:"ידידה";s:23:"יהוד-מונוסון";s:23:"יהוד-מונוסון";s:6:"יהל";s:6:"יהל";s:8:"יובל";s:8:"יובל";s:12:"יובלים";s:12:"יובלים";s:10:"יודפת";s:10:"יודפת";s:10:"יונתן";s:10:"יונתן";s:14:"יושיביה";s:14:"יושיביה";s:12:"יזרעאל";s:12:"יזרעאל";s:10:"יחיעם";s:10:"יחיעם";s:10:"יטבתה";s:10:"יטבתה";s:9:"ייט"ב";s:9:"ייט"ב";s:10:"יכיני";s:10:"יכיני";s:8:"ינוב";s:8:"ינוב";s:8:"ינון";s:8:"ינון";s:19:"יסוד המעלה";s:19:"יסוד המעלה";s:12:"יסודות";s:12:"יסודות";s:10:"יסעור";s:10:"יסעור";s:6:"יעד";s:6:"יעד";s:6:"יעל";s:6:"יעל";s:6:"יעף";s:6:"יעף";s:8:"יערה";s:8:"יערה";s:8:"יפיע";s:8:"יפיע";s:8:"יפית";s:8:"יפית";s:8:"יפעת";s:8:"יפעת";s:8:"יפתח";s:8:"יפתח";s:8:"יצהר";s:8:"יצהר";s:8:"יציץ";s:8:"יציץ";s:8:"יקום";s:8:"יקום";s:8:"יקיר";s:8:"יקיר";s:23:"יקנעם (מושבה)";s:23:"יקנעם (מושבה)";s:21:"יקנעם עילית";s:21:"יקנעם עילית";s:10:"יראון";s:10:"יראון";s:10:"ירדנה";s:10:"ירדנה";s:10:"ירוחם";s:10:"ירוחם";s:14:"ירושלים";s:14:"ירושלים";s:10:"ירחיב";s:10:"ירחיב";s:8:"ירכא";s:8:"ירכא";s:12:"ירקונה";s:12:"ירקונה";s:6:"ישע";s:6:"ישע";s:8:"ישעי";s:8:"ישעי";s:8:"ישרש";s:8:"ישרש";s:6:"יתד";s:6:"יתד";s:8:"יתיר";s:8:"יתיר";s:10:"כאבול";s:10:"כאבול";s:32:"כאוכב אבו אל-היג''א";s:32:"כאוכב אבו אל-היג''א";s:8:"כברי";s:8:"כברי";s:10:"כדורי";s:10:"כדורי";s:10:"כדיתה";s:10:"כדיתה";s:17:"כוכב השחר";s:17:"כוכב השחר";s:17:"כוכב יאיר";s:17:"כוכב יאיר";s:17:"כוכב יעקב";s:17:"כוכב יעקב";s:19:"כוכב מיכאל";s:19:"כוכב מיכאל";s:12:"כורזים";s:12:"כורזים";s:6:"כחל";s:6:"כחל";s:8:"כחלה";s:8:"כחלה";s:14:"כיסופים";s:14:"כיסופים";s:10:"כישור";s:10:"כישור";s:8:"כליל";s:8:"כליל";s:10:"כלנית";s:10:"כלנית";s:10:"כמאנה";s:10:"כמאנה";s:10:"כמהין";s:10:"כמהין";s:8:"כמון";s:8:"כמון";s:8:"כנות";s:8:"כנות";s:6:"כנף";s:6:"כנף";s:21:"כנרת (מושבה)";s:21:"כנרת (מושבה)";s:21:"כנרת (קבוצה)";s:21:"כנרת (קבוצה)";s:10:"כסיפה";s:10:"כסיפה";s:10:"כסלון";s:10:"כסלון";s:17:"כסרא-סמיע";s:17:"כסרא-סמיע";s:34:"כעביה-טבאש-חג''אג''רה";s:34:"כעביה-טבאש-חג''אג''רה";s:15:"כפר אביב";s:15:"כפר אביב";s:19:"כפר אדומים";s:19:"כפר אדומים";s:17:"כפר אוריה";s:17:"כפר אוריה";s:15:"כפר אחים";s:15:"כפר אחים";s:19:"כפר ביאליק";s:19:"כפר ביאליק";s:16:"כפר ביל"ו";s:16:"כפר ביל"ו";s:15:"כפר בלום";s:15:"כפר בלום";s:18:"כפר בן נון";s:18:"כפר בן נון";s:13:"כפר ברא";s:13:"כפר ברא";s:15:"כפר ברוך";s:15:"כפר ברוך";s:17:"כפר גדעון";s:17:"כפר גדעון";s:15:"כפר גלים";s:15:"כפר גלים";s:21:"כפר גליקסון";s:21:"כפר גליקסון";s:17:"כפר גלעדי";s:17:"כפר גלעדי";s:17:"כפר דניאל";s:17:"כפר דניאל";s:21:"כפר האורנים";s:21:"כפר האורנים";s:17:"כפר החורש";s:17:"כפר החורש";s:17:"כפר המכבי";s:17:"כפר המכבי";s:17:"כפר הנגיד";s:17:"כפר הנגיד";s:26:"כפר הנוער הדתי";s:26:"כפר הנוער הדתי";s:17:"כפר הנשיא";s:17:"כפר הנשיא";s:11:"כפר הס";s:11:"כפר הס";s:16:"כפר הרא"ה";s:16:"כפר הרא"ה";s:16:"כפר הרי"ף";s:16:"כפר הרי"ף";s:19:"כפר ויתקין";s:19:"כפר ויתקין";s:19:"כפר ורבורג";s:19:"כפר ורבורג";s:17:"כפר ורדים";s:17:"כפר ורדים";s:19:"כפר זוהרים";s:19:"כפר זוהרים";s:17:"כפר זיתים";s:17:"כפר זיתים";s:14:"כפר חב"ד";s:14:"כפר חב"ד";s:15:"כפר חושן";s:15:"כפר חושן";s:17:"כפר חיטים";s:17:"כפר חיטים";s:15:"כפר חיים";s:15:"כפר חיים";s:17:"כפר חנניה";s:17:"כפר חנניה";s:23:"כפר חסידים א''";s:23:"כפר חסידים א''";s:23:"כפר חסידים ב''";s:23:"כפר חסידים ב''";s:15:"כפר חרוב";s:15:"כפר חרוב";s:17:"כפר טרומן";s:17:"כפר טרומן";s:17:"כפר יאסיף";s:17:"כפר יאסיף";s:19:"כפר ידידיה";s:19:"כפר ידידיה";s:17:"כפר יהושע";s:17:"כפר יהושע";s:15:"כפר יונה";s:15:"כפר יונה";s:19:"כפר יחזקאל";s:19:"כפר יחזקאל";s:15:"כפר יעבץ";s:15:"כפר יעבץ";s:13:"כפר כמא";s:13:"כפר כמא";s:13:"כפר כנא";s:13:"כפר כנא";s:15:"כפר מונש";s:15:"כפר מונש";s:17:"כפר מימון";s:17:"כפר מימון";s:14:"כפר מל"ל";s:14:"כפר מל"ל";s:15:"כפר מנדא";s:15:"כפר מנדא";s:15:"כפר מנחם";s:15:"כפר מנחם";s:17:"כפר מסריק";s:17:"כפר מסריק";s:13:"כפר מצר";s:13:"כפר מצר";s:17:"כפר מרדכי";s:17:"כפר מרדכי";s:13:"כפר נטר";s:13:"כפר נטר";s:15:"כפר סאלד";s:15:"כפר סאלד";s:13:"כפר סבא";s:13:"כפר סבא";s:17:"כפר סילבר";s:17:"כפר סילבר";s:19:"כפר סירקין";s:19:"כפר סירקין";s:17:"כפר עבודה";s:17:"כפר עבודה";s:13:"כפר עזה";s:13:"כפר עזה";s:17:"כפר עציון";s:17:"כפר עציון";s:15:"כפר פינס";s:15:"כפר פינס";s:15:"כפר קאסם";s:15:"כפר קאסם";s:13:"כפר קיש";s:13:"כפר קיש";s:13:"כפר קרע";s:13:"כפר קרע";s:24:"כפר ראש הנקרה";s:24:"כפר ראש הנקרה";s:36:"כפר רוזנואלד (זרעית)";s:36:"כפר רוזנואלד (זרעית)";s:17:"כפר רופין";s:17:"כפר רופין";s:13:"כפר רות";s:13:"כפר רות";s:15:"כפר שמאי";s:15:"כפר שמאי";s:17:"כפר שמואל";s:17:"כפר שמואל";s:19:"כפר שמריהו";s:19:"כפר שמריהו";s:15:"כפר תבור";s:15:"כפר תבור";s:15:"כפר תפוח";s:15:"כפר תפוח";s:13:"כרי דשא";s:13:"כרי דשא";s:10:"כרכום";s:10:"כרכום";s:20:"כרם בן זמרה";s:20:"כרם בן זמרה";s:18:"כרם בן שמן";s:18:"כרם בן שמן";s:28:"כרם יבנה (ישיבה)";s:28:"כרם יבנה (ישיבה)";s:16:"כרם מהר"ל";s:16:"כרם מהר"ל";s:15:"כרם שלום";s:15:"כרם שלום";s:17:"כרמי יוסף";s:17:"כרמי יוסף";s:15:"כרמי צור";s:15:"כרמי צור";s:17:"כרמי קטיף";s:17:"כרמי קטיף";s:12:"כרמיאל";s:12:"כרמיאל";s:10:"כרמיה";s:10:"כרמיה";s:10:"כרמים";s:10:"כרמים";s:8:"כרמל";s:8:"כרמל";s:13:"לא רשום";s:13:"לא רשום";s:8:"לבון";s:8:"לבון";s:8:"לביא";s:8:"לביא";s:10:"לבנים";s:10:"לבנים";s:6:"להב";s:6:"להב";s:19:"להבות הבשן";s:19:"להבות הבשן";s:21:"להבות חביבה";s:21:"להבות חביבה";s:10:"להבים";s:10:"להבים";s:6:"לוד";s:6:"לוד";s:10:"לוזית";s:10:"לוזית";s:25:"לוחמי הגיטאות";s:25:"לוחמי הגיטאות";s:8:"לוטם";s:8:"לוטם";s:8:"לוטן";s:8:"לוטן";s:8:"לימן";s:8:"לימן";s:8:"לכיש";s:8:"לכיש";s:8:"לפיד";s:8:"לפיד";s:12:"לפידות";s:12:"לפידות";s:8:"לקיה";s:8:"לקיה";s:8:"מאור";s:8:"מאור";s:17:"מאיר שפיה";s:17:"מאיר שפיה";s:17:"מבוא ביתר";s:17:"מבוא ביתר";s:17:"מבוא דותן";s:17:"מבוא דותן";s:19:"מבוא חורון";s:19:"מבוא חורון";s:15:"מבוא חמה";s:15:"מבוא חמה";s:23:"מבוא מודיעים";s:23:"מבוא מודיעים";s:17:"מבואות ים";s:17:"מבואות ים";s:12:"מבועים";s:12:"מבועים";s:12:"מבטחים";s:12:"מבטחים";s:14:"מבקיעים";s:14:"מבקיעים";s:19:"מבשרת ציון";s:19:"מבשרת ציון";s:21:"מג''ד אל-כרום";s:21:"מג''ד אל-כרום";s:16:"מג''דל שמס";s:16:"מג''דל שמס";s:8:"מגאר";s:8:"מגאר";s:10:"מגדים";s:10:"מגדים";s:8:"מגדל";s:8:"מגדל";s:17:"מגדל העמק";s:17:"מגדל העמק";s:15:"מגדל עוז";s:15:"מגדל עוז";s:12:"מגדלים";s:12:"מגדלים";s:10:"מגידו";s:10:"מגידו";s:6:"מגל";s:6:"מגל";s:6:"מגן";s:6:"מגן";s:15:"מגן שאול";s:15:"מגן שאול";s:14:"מגשימים";s:14:"מגשימים";s:15:"מדרך עוז";s:15:"מדרך עוז";s:28:"מדרשת בן גוריון";s:28:"מדרשת בן גוריון";s:21:"מדרשת רופין";s:21:"מדרשת רופין";s:25:"מודיעין עילית";s:25:"מודיעין עילית";s:34:"מודיעין-מכבים-רעות";s:34:"מודיעין-מכבים-רעות";s:10:"מולדה";s:10:"מולדה";s:10:"מולדת";s:10:"מולדת";s:19:"מוצא עילית";s:19:"מוצא עילית";s:16:"מוקייבלה";s:16:"מוקייבלה";s:8:"מורן";s:8:"מורן";s:10:"מורשת";s:10:"מורשת";s:8:"מזור";s:8:"מזור";s:19:"מזכרת בתיה";s:19:"מזכרת בתיה";s:8:"מזרע";s:8:"מזרע";s:10:"מזרעה";s:10:"מזרעה";s:10:"מחולה";s:10:"מחולה";s:17:"מחנה הילה";s:17:"מחנה הילה";s:15:"מחנה טלי";s:15:"מחנה טלי";s:21:"מחנה יהודית";s:21:"מחנה יהודית";s:19:"מחנה יוכבד";s:19:"מחנה יוכבד";s:15:"מחנה יפה";s:15:"מחנה יפה";s:17:"מחנה יתיר";s:17:"מחנה יתיר";s:17:"מחנה מרים";s:17:"מחנה מרים";s:15:"מחנה עדי";s:15:"מחנה עדי";s:20:"מחנה תל נוף";s:20:"מחנה תל נוף";s:12:"מחניים";s:12:"מחניים";s:10:"מחסיה";s:10:"מחסיה";s:10:"מטולה";s:10:"מטולה";s:6:"מטע";s:6:"מטע";s:11:"מי עמי";s:11:"מי עמי";s:8:"מיטב";s:8:"מיטב";s:10:"מייסר";s:10:"מייסר";s:8:"מיצר";s:8:"מיצר";s:8:"מירב";s:8:"מירב";s:10:"מירון";s:10:"מירון";s:8:"מישר";s:8:"מישר";s:8:"מיתר";s:8:"מיתר";s:10:"מכורה";s:10:"מכורה";s:10:"מכחול";s:10:"מכחול";s:12:"מכמורת";s:12:"מכמורת";s:12:"מכמנים";s:12:"מכמנים";s:8:"מלאה";s:8:"מלאה";s:12:"מלילות";s:12:"מלילות";s:10:"מלכיה";s:10:"מלכיה";s:14:"מלכישוע";s:14:"מלכישוע";s:10:"מנוחה";s:10:"מנוחה";s:8:"מנוף";s:8:"מנוף";s:8:"מנות";s:8:"מנות";s:12:"מנחמיה";s:12:"מנחמיה";s:8:"מנרה";s:8:"מנרה";s:19:"מנשית זבדה";s:19:"מנשית זבדה";s:6:"מסד";s:6:"מסד";s:8:"מסדה";s:8:"מסדה";s:12:"מסילות";s:12:"מסילות";s:19:"מסילת ציון";s:19:"מסילת ציון";s:10:"מסלול";s:10:"מסלול";s:10:"מסעדה";s:10:"מסעדה";s:32:"מסעודין אל-עזאזמה";s:32:"מסעודין אל-עזאזמה";s:12:"מעברות";s:12:"מעברות";s:12:"מעגלים";s:12:"מעגלים";s:8:"מעגן";s:8:"מעגן";s:19:"מעגן מיכאל";s:19:"מעגן מיכאל";s:17:"מעוז חיים";s:17:"מעוז חיים";s:8:"מעון";s:8:"מעון";s:10:"מעונה";s:10:"מעונה";s:12:"מעיליא";s:12:"מעיליא";s:17:"מעין ברוך";s:17:"מעין ברוך";s:15:"מעין צבי";s:15:"מעין צבי";s:21:"מעלה אדומים";s:21:"מעלה אדומים";s:19:"מעלה אפרים";s:19:"מעלה אפרים";s:19:"מעלה גלבוע";s:19:"מעלה גלבוע";s:17:"מעלה גמלא";s:17:"מעלה גמלא";s:21:"מעלה החמישה";s:21:"מעלה החמישה";s:19:"מעלה לבונה";s:19:"מעלה לבונה";s:17:"מעלה מכמש";s:17:"מעלה מכמש";s:19:"מעלה עירון";s:19:"מעלה עירון";s:17:"מעלה עמוס";s:17:"מעלה עמוס";s:21:"מעלה שומרון";s:21:"מעלה שומרון";s:23:"מעלות-תרשיחא";s:23:"מעלות-תרשיחא";s:10:"מענית";s:10:"מענית";s:6:"מעש";s:6:"מעש";s:12:"מפלסים";s:12:"מפלסים";s:21:"מצדות יהודה";s:21:"מצדות יהודה";s:10:"מצובה";s:10:"מצובה";s:10:"מצליח";s:10:"מצליח";s:8:"מצפה";s:8:"מצפה";s:18:"מצפה אבי"ב";s:18:"מצפה אבי"ב";s:17:"מצפה אילן";s:17:"מצפה אילן";s:19:"מצפה יריחו";s:19:"מצפה יריחו";s:19:"מצפה נטופה";s:19:"מצפה נטופה";s:17:"מצפה רמון";s:17:"מצפה רמון";s:15:"מצפה שלם";s:15:"מצפה שלם";s:6:"מצר";s:6:"מצר";s:21:"מקווה ישראל";s:21:"מקווה ישראל";s:14:"מרגליות";s:14:"מרגליות";s:17:"מרום גולן";s:17:"מרום גולן";s:13:"מרחב עם";s:13:"מרחב עם";s:23:"מרחביה (מושב)";s:23:"מרחביה (מושב)";s:25:"מרחביה (קיבוץ)";s:25:"מרחביה (קיבוץ)";s:19:"מרכז שפירא";s:19:"מרכז שפירא";s:17:"משאבי שדה";s:17:"משאבי שדה";s:13:"משגב דב";s:13:"משגב דב";s:13:"משגב עם";s:13:"משגב עם";s:8:"משהד";s:8:"משהד";s:10:"משואה";s:10:"משואה";s:21:"משואות יצחק";s:21:"משואות יצחק";s:12:"משכיות";s:12:"משכיות";s:21:"משמר איילון";s:21:"משמר איילון";s:15:"משמר דוד";s:15:"משמר דוד";s:19:"משמר הירדן";s:19:"משמר הירדן";s:17:"משמר הנגב";s:17:"משמר הנגב";s:17:"משמר העמק";s:17:"משמר העמק";s:19:"משמר השבעה";s:19:"משמר השבעה";s:19:"משמר השרון";s:19:"משמר השרון";s:12:"משמרות";s:12:"משמרות";s:10:"משמרת";s:10:"משמרת";s:8:"משען";s:8:"משען";s:6:"מתן";s:6:"מתן";s:6:"מתת";s:6:"מתת";s:12:"מתתיהו";s:12:"מתתיהו";s:17:"נאות גולן";s:17:"נאות גולן";s:19:"נאות הכיכר";s:19:"נאות הכיכר";s:19:"נאות מרדכי";s:19:"נאות מרדכי";s:17:"נאות סמדר";s:17:"נאות סמדר";s:12:"נאעורה";s:12:"נאעורה";s:10:"נבטים";s:10:"נבטים";s:8:"נגבה";s:8:"נגבה";s:12:"נגוהות";s:12:"נגוהות";s:10:"נהורה";s:10:"נהורה";s:8:"נהלל";s:8:"נהלל";s:10:"נהריה";s:10:"נהריה";s:6:"נוב";s:6:"נוב";s:8:"נוגה";s:8:"נוגה";s:8:"נווה";s:8:"נווה";s:17:"נווה אבות";s:17:"נווה אבות";s:15:"נווה אור";s:15:"נווה אור";s:18:"נווה אטי"ב";s:18:"נווה אטי"ב";s:17:"נווה אילן";s:17:"נווה אילן";s:17:"נווה איתן";s:17:"נווה איתן";s:19:"נווה דניאל";s:19:"נווה דניאל";s:17:"נווה זוהר";s:17:"נווה זוהר";s:15:"נווה זיו";s:15:"נווה זיו";s:17:"נווה חריף";s:17:"נווה חריף";s:13:"נווה ים";s:13:"נווה ים";s:17:"נווה ימין";s:17:"נווה ימין";s:15:"נווה ירק";s:15:"נווה ירק";s:17:"נווה מבטח";s:17:"נווה מבטח";s:19:"נווה מיכאל";s:19:"נווה מיכאל";s:17:"נווה שלום";s:17:"נווה שלום";s:8:"נועם";s:8:"נועם";s:19:"נוף איילון";s:19:"נוף איילון";s:10:"נופים";s:10:"נופים";s:10:"נופית";s:10:"נופית";s:8:"נופך";s:8:"נופך";s:12:"נוקדים";s:12:"נוקדים";s:12:"נורדיה";s:12:"נורדיה";s:10:"נורית";s:10:"נורית";s:10:"נחושה";s:10:"נחושה";s:13:"נחל עוז";s:13:"נחל עוז";s:8:"נחלה";s:8:"נחלה";s:12:"נחליאל";s:12:"נחליאל";s:10:"נחלים";s:10:"נחלים";s:6:"נחם";s:6:"נחם";s:6:"נחף";s:6:"נחף";s:14:"נחשולים";s:14:"נחשולים";s:10:"נחשון";s:10:"נחשון";s:14:"נחשונים";s:14:"נחשונים";s:10:"נטועה";s:10:"נטועה";s:8:"נטור";s:8:"נטור";s:6:"נטע";s:6:"נטע";s:10:"נטעים";s:10:"נטעים";s:6:"נטף";s:6:"נטף";s:8:"ניין";s:8:"ניין";s:9:"ניל"י";s:9:"ניל"י";s:8:"ניצן";s:8:"ניצן";s:12:"ניצן ב''";s:12:"ניצן ב''";s:34:"ניצנה (קהילת חינוך)";s:34:"ניצנה (קהילת חינוך)";s:19:"ניצני סיני";s:19:"ניצני סיני";s:17:"ניצני עוז";s:17:"ניצני עוז";s:12:"ניצנים";s:12:"ניצנים";s:17:"ניר אליהו";s:17:"ניר אליהו";s:15:"ניר בנים";s:15:"ניר בנים";s:15:"ניר גלים";s:15:"ניר גלים";s:27:"ניר דוד (תל עמל)";s:27:"ניר דוד (תל עמל)";s:12:"ניר ח"ן";s:12:"ניר ח"ן";s:13:"ניר יפה";s:13:"ניר יפה";s:15:"ניר יצחק";s:15:"ניר יצחק";s:17:"ניר ישראל";s:17:"ניר ישראל";s:13:"ניר משה";s:13:"ניר משה";s:13:"ניר עוז";s:13:"ניר עוז";s:11:"ניר עם";s:11:"ניר עם";s:17:"ניר עציון";s:17:"ניר עציון";s:17:"ניר עקיבא";s:17:"ניר עקיבא";s:13:"ניר צבי";s:13:"ניר צבי";s:10:"נירים";s:10:"נירים";s:10:"נירית";s:10:"נירית";s:8:"נירן";s:8:"נירן";s:10:"נמרוד";s:10:"נמרוד";s:13:"נס הרים";s:13:"נס הרים";s:13:"נס עמים";s:13:"נס עמים";s:15:"נס ציונה";s:15:"נס ציונה";s:12:"נעורים";s:12:"נעורים";s:8:"נעלה";s:8:"נעלה";s:9:"נעמ"ה";s:9:"נעמ"ה";s:6:"נען";s:6:"נען";s:21:"נצאצרה (שבט)";s:21:"נצאצרה (שבט)";s:15:"נצר חזני";s:15:"נצר חזני";s:15:"נצר סרני";s:15:"נצר סרני";s:8:"נצרת";s:8:"נצרת";s:19:"נצרת עילית";s:19:"נצרת עילית";s:6:"נשר";s:6:"נשר";s:19:"נתיב הגדוד";s:19:"נתיב הגדוד";s:16:"נתיב הל"ה";s:16:"נתיב הל"ה";s:19:"נתיב העשרה";s:19:"נתיב העשרה";s:21:"נתיב השיירה";s:21:"נתיב השיירה";s:12:"נתיבות";s:12:"נתיבות";s:10:"נתניה";s:10:"נתניה";s:11:"סאג''ור";s:11:"סאג''ור";s:8:"סאסא";s:8:"סאסא";s:10:"סביון";s:10:"סביון";s:10:"סגולה";s:10:"סגולה";s:25:"סואעד (חמרייה)";s:25:"סואעד (חמרייה)";s:32:"סואעד (כמאנה) (שבט)";s:32:"סואעד (כמאנה) (שבט)";s:8:"סולם";s:8:"סולם";s:10:"סוסיה";s:10:"סוסיה";s:8:"סופה";s:8:"סופה";s:11:"סח''נין";s:11:"סח''נין";s:17:"סייד (שבט)";s:17:"סייד (שבט)";s:8:"סלמה";s:8:"סלמה";s:10:"סלעית";s:10:"סלעית";s:6:"סמר";s:6:"סמר";s:10:"סנסנה";s:10:"סנסנה";s:6:"סעד";s:6:"סעד";s:6:"סער";s:6:"סער";s:8:"ספיר";s:8:"ספיר";s:10:"סתריה";s:10:"סתריה";s:8:"ע''ג''ר";s:8:"ע''ג''ר";s:10:"עבדון";s:10:"עבדון";s:10:"עברון";s:10:"עברון";s:8:"עגור";s:8:"עגור";s:6:"עדי";s:6:"עדי";s:10:"עדנים";s:10:"עדנים";s:8:"עוזה";s:8:"עוזה";s:12:"עוזייר";s:12:"עוזייר";s:8:"עולש";s:8:"עולש";s:8:"עומר";s:8:"עומר";s:8:"עופר";s:8:"עופר";s:10:"עופרה";s:10:"עופרה";s:8:"עוצם";s:8:"עוצם";s:30:"עוקבי (בנו עוקבה)";s:30:"עוקבי (בנו עוקבה)";s:8:"עזוז";s:8:"עזוז";s:6:"עזר";s:6:"עזר";s:12:"עזריאל";s:12:"עזריאל";s:10:"עזריה";s:10:"עזריה";s:12:"עזריקם";s:12:"עזריקם";s:23:"עטאוונה (שבט)";s:23:"עטאוונה (שבט)";s:8:"עטרת";s:8:"עטרת";s:8:"עידן";s:8:"עידן";s:14:"עיילבון";s:14:"עיילבון";s:12:"עיינות";s:12:"עיינות";s:10:"עילוט";s:10:"עילוט";s:17:"עין איילה";s:17:"עין איילה";s:18:"עין אל-אסד";s:18:"עין אל-אסד";s:11:"עין גב";s:11:"עין גב";s:13:"עין גדי";s:13:"עין גדי";s:13:"עין דור";s:13:"עין דור";s:17:"עין הבשור";s:17:"עין הבשור";s:13:"עין הוד";s:13:"עין הוד";s:17:"עין החורש";s:17:"עין החורש";s:17:"עין המפרץ";s:17:"עין המפרץ";s:18:"עין הנצי"ב";s:18:"עין הנצי"ב";s:15:"עין העמק";s:15:"עין העמק";s:17:"עין השופט";s:17:"עין השופט";s:19:"עין השלושה";s:19:"עין השלושה";s:13:"עין ורד";s:13:"עין ורד";s:17:"עין זיוון";s:17:"עין זיוון";s:13:"עין חוד";s:13:"עין חוד";s:15:"עין חצבה";s:15:"עין חצבה";s:28:"עין חרוד (איחוד)";s:28:"עין חרוד (איחוד)";s:28:"עין חרוד (מאוחד)";s:28:"עין חרוד (מאוחד)";s:13:"עין יהב";s:13:"עין יהב";s:15:"עין יעקב";s:15:"עין יעקב";s:32:"עין כרם-בי"ס חקלאי";s:32:"עין כרם-בי"ס חקלאי";s:15:"עין כרמל";s:15:"עין כרמל";s:15:"עין מאהל";s:15:"עין מאהל";s:17:"עין נקובא";s:17:"עין נקובא";s:17:"עין עירון";s:17:"עין עירון";s:17:"עין צורים";s:17:"עין צורים";s:17:"עין קנייא";s:17:"עין קנייא";s:15:"עין ראפה";s:15:"עין ראפה";s:13:"עין שמר";s:13:"עין שמר";s:15:"עין שריד";s:15:"עין שריד";s:13:"עין תמר";s:13:"עין תמר";s:8:"עינת";s:8:"עינת";s:17:"עיר אובות";s:17:"עיר אובות";s:6:"עכו";s:6:"עכו";s:12:"עלומים";s:12:"עלומים";s:6:"עלי";s:6:"עלי";s:13:"עלי זהב";s:13:"עלי זהב";s:8:"עלמה";s:8:"עלמה";s:10:"עלמון";s:10:"עלמון";s:10:"עמוקה";s:10:"עמוקה";s:12:"עמינדב";s:12:"עמינדב";s:10:"עמיעד";s:10:"עמיעד";s:12:"עמיעוז";s:12:"עמיעוז";s:10:"עמיקם";s:10:"עמיקם";s:8:"עמיר";s:8:"עמיר";s:12:"עמנואל";s:12:"עמנואל";s:8:"עמקה";s:8:"עמקה";s:6:"ענב";s:6:"ענב";s:10:"עספיא";s:10:"עספיא";s:10:"עפולה";s:10:"עפולה";s:15:"עץ אפרים";s:15:"עץ אפרים";s:17:"עצמון שגב";s:17:"עצמון שגב";s:10:"עראבה";s:10:"עראבה";s:12:"עראמשה";s:12:"עראמשה";s:20:"ערב אל נעים";s:20:"ערב אל נעים";s:6:"ערד";s:6:"ערד";s:12:"ערוגות";s:12:"ערוגות";s:10:"ערערה";s:10:"ערערה";s:19:"ערערה-בנגב";s:19:"ערערה-בנגב";s:8:"עשרת";s:8:"עשרת";s:10:"עתלית";s:10:"עתלית";s:12:"עתניאל";s:12:"עתניאל";s:8:"פארן";s:8:"פארן";s:10:"פדואל";s:10:"פדואל";s:12:"פדויים";s:12:"פדויים";s:8:"פדיה";s:8:"פדיה";s:30:"פוריה - כפר עבודה";s:30:"פוריה - כפר עבודה";s:30:"פוריה - נווה עובד";s:30:"פוריה - נווה עובד";s:21:"פוריה עילית";s:21:"פוריה עילית";s:16:"פוריידיס";s:16:"פוריידיס";s:8:"פורת";s:8:"פורת";s:8:"פטיש";s:8:"פטיש";s:6:"פלך";s:6:"פלך";s:12:"פלמחים";s:12:"פלמחים";s:13:"פני חבר";s:13:"פני חבר";s:10:"פסגות";s:10:"פסגות";s:10:"פסוטה";s:10:"פסוטה";s:16:"פעמי תש"ז";s:16:"פעמי תש"ז";s:8:"פצאל";s:8:"פצאל";s:29:"פקיעין (בוקייעה)";s:29:"פקיעין (בוקייעה)";s:21:"פקיעין חדשה";s:21:"פקיעין חדשה";s:26:"פרדס חנה-כרכור";s:26:"פרדס חנה-כרכור";s:12:"פרדסיה";s:12:"פרדסיה";s:8:"פרוד";s:8:"פרוד";s:10:"פרזון";s:10:"פרזון";s:11:"פרי גן";s:11:"פרי גן";s:17:"פתח תקווה";s:17:"פתח תקווה";s:10:"פתחיה";s:10:"פתחיה";s:10:"צאלים";s:10:"צאלים";s:8:"צביה";s:8:"צביה";s:10:"צבעון";s:10:"צבעון";s:8:"צובה";s:8:"צובה";s:8:"צוחר";s:8:"צוחר";s:10:"צופיה";s:10:"צופיה";s:10:"צופים";s:10:"צופים";s:10:"צופית";s:10:"צופית";s:8:"צופר";s:8:"צופר";s:13:"צוקי ים";s:13:"צוקי ים";s:10:"צוקים";s:10:"צוקים";s:15:"צור הדסה";s:15:"צור הדסה";s:15:"צור יצחק";s:15:"צור יצחק";s:13:"צור משה";s:13:"צור משה";s:13:"צור נתן";s:13:"צור נתן";s:12:"צוריאל";s:12:"צוריאל";s:10:"צורית";s:10:"צורית";s:12:"ציפורי";s:12:"ציפורי";s:10:"צלפון";s:10:"צלפון";s:10:"צנדלה";s:10:"צנדלה";s:10:"צפריה";s:10:"צפריה";s:14:"צפרירים";s:14:"צפרירים";s:6:"צפת";s:6:"צפת";s:10:"צרופה";s:10:"צרופה";s:8:"צרעה";s:8:"צרעה";s:19:"קבועה (שבט)";s:19:"קבועה (שבט)";s:19:"קבוצת יבנה";s:19:"קבוצת יבנה";s:12:"קדומים";s:12:"קדומים";s:19:"קדימה-צורן";s:19:"קדימה-צורן";s:8:"קדמה";s:8:"קדמה";s:15:"קדמת צבי";s:15:"קדמת צבי";s:6:"קדר";s:6:"קדר";s:10:"קדרון";s:10:"קדרון";s:10:"קדרים";s:10:"קדרים";s:36:"קודייראת א-צאנע(שבט)";s:36:"קודייראת א-צאנע(שבט)";s:23:"קוואעין (שבט)";s:23:"קוואעין (שבט)";s:14:"קוממיות";s:14:"קוממיות";s:12:"קורנית";s:12:"קורנית";s:10:"קטורה";s:10:"קטורה";s:12:"קיסריה";s:12:"קיסריה";s:10:"קלחים";s:10:"קלחים";s:8:"קליה";s:8:"קליה";s:14:"קלנסווה";s:14:"קלנסווה";s:6:"קלע";s:6:"קלע";s:8:"קציר";s:8:"קציר";s:14:"קצר א-סר";s:14:"קצר א-סר";s:10:"קצרין";s:10:"קצרין";s:17:"קרית אונו";s:17:"קרית אונו";s:17:"קרית ארבע";s:17:"קרית ארבע";s:15:"קרית אתא";s:15:"קרית אתא";s:21:"קרית ביאליק";s:21:"קרית ביאליק";s:13:"קרית גת";s:13:"קרית גת";s:19:"קרית טבעון";s:19:"קרית טבעון";s:13:"קרית ים";s:13:"קרית ים";s:19:"קרית יערים";s:19:"קרית יערים";s:29:"קרית יערים(מוסד)";s:29:"קרית יערים(מוסד)";s:21:"קרית מוצקין";s:21:"קרית מוצקין";s:19:"קרית מלאכי";s:19:"קרית מלאכי";s:19:"קרית נטפים";s:19:"קרית נטפים";s:19:"קרית ענבים";s:19:"קרית ענבים";s:19:"קרית עקרון";s:19:"קרית עקרון";s:17:"קרית שלמה";s:17:"קרית שלמה";s:19:"קרית שמונה";s:19:"קרית שמונה";s:21:"קרני שומרון";s:21:"קרני שומרון";s:6:"קשת";s:6:"קשת";s:8:"ראמה";s:8:"ראמה";s:18:"ראס אל-עין";s:18:"ראס אל-עין";s:13:"ראס עלי";s:13:"ראס עלי";s:15:"ראש העין";s:15:"ראש העין";s:15:"ראש פינה";s:15:"ראש פינה";s:17:"ראש צורים";s:17:"ראש צורים";s:21:"ראשון לציון";s:21:"ראשון לציון";s:8:"רבבה";s:8:"רבבה";s:10:"רבדים";s:10:"רבדים";s:12:"רביבים";s:12:"רביבים";s:8:"רביד";s:8:"רביד";s:8:"רגבה";s:8:"רגבה";s:10:"רגבים";s:10:"רגבים";s:6:"רהט";s:6:"רהט";s:10:"רווחה";s:10:"רווחה";s:10:"רוויה";s:10:"רוויה";s:15:"רוח מדבר";s:15:"רוח מדבר";s:10:"רוחמה";s:10:"רוחמה";s:12:"רומאנה";s:12:"רומאנה";s:17:"רומת הייב";s:17:"רומת הייב";s:8:"רועי";s:8:"רועי";s:8:"רותם";s:8:"רותם";s:8:"רחוב";s:8:"רחוב";s:12:"רחובות";s:12:"רחובות";s:10:"רחלים";s:10:"רחלים";s:14:"ריחאניה";s:14:"ריחאניה";s:8:"ריחן";s:8:"ריחן";s:10:"ריינה";s:10:"ריינה";s:14:"רימונים";s:14:"רימונים";s:12:"רינתיה";s:12:"רינתיה";s:10:"רכסים";s:10:"רכסים";s:11:"רם-און";s:11:"רם-און";s:8:"רמות";s:8:"רמות";s:19:"רמות השבים";s:19:"רמות השבים";s:17:"רמות מאיר";s:17:"רמות מאיר";s:17:"רמות מנשה";s:17:"רמות מנשה";s:19:"רמות נפתלי";s:19:"רמות נפתלי";s:8:"רמלה";s:8:"רמלה";s:11:"רמת גן";s:11:"רמת גן";s:13:"רמת דוד";s:13:"רמת דוד";s:17:"רמת הכובש";s:17:"רמת הכובש";s:17:"רמת השופט";s:17:"רמת השופט";s:17:"רמת השרון";s:17:"רמת השרון";s:17:"רמת יוחנן";s:17:"רמת יוחנן";s:13:"רמת ישי";s:13:"רמת ישי";s:21:"רמת מגשימים";s:21:"רמת מגשימים";s:13:"רמת צבי";s:13:"רמת צבי";s:17:"רמת רזיאל";s:17:"רמת רזיאל";s:13:"רמת רחל";s:13:"רמת רחל";s:6:"רנן";s:6:"רנן";s:8:"רעים";s:8:"רעים";s:10:"רעננה";s:10:"רעננה";s:8:"רקפת";s:8:"רקפת";s:10:"רשפון";s:10:"רשפון";s:10:"רשפים";s:10:"רשפים";s:10:"רתמים";s:10:"רתמים";s:15:"שאר ישוב";s:15:"שאר ישוב";s:15:"שבי ציון";s:15:"שבי ציון";s:19:"שבי שומרון";s:19:"שבי שומרון";s:29:"שבלי - אום אל-גנם";s:29:"שבלי - אום אל-גנם";s:15:"שגב-שלום";s:15:"שגב-שלום";s:15:"שדה אילן";s:15:"שדה אילן";s:17:"שדה אליהו";s:17:"שדה אליהו";s:19:"שדה אליעזר";s:19:"שדה אליעזר";s:15:"שדה בוקר";s:15:"שדה בוקר";s:13:"שדה דוד";s:13:"שדה דוד";s:19:"שדה ורבורג";s:19:"שדה ורבורג";s:15:"שדה יואב";s:15:"שדה יואב";s:15:"שדה יעקב";s:15:"שדה יעקב";s:15:"שדה יצחק";s:15:"שדה יצחק";s:13:"שדה משה";s:13:"שדה משה";s:15:"שדה נחום";s:15:"שדה נחום";s:17:"שדה נחמיה";s:17:"שדה נחמיה";s:15:"שדה ניצן";s:15:"שדה ניצן";s:19:"שדה עוזיהו";s:19:"שדה עוזיהו";s:13:"שדה צבי";s:13:"שדה צבי";s:13:"שדות ים";s:13:"שדות ים";s:17:"שדות מיכה";s:17:"שדות מיכה";s:17:"שדי אברהם";s:17:"שדי אברהם";s:13:"שדי חמד";s:13:"שדי חמד";s:19:"שדי תרומות";s:19:"שדי תרומות";s:8:"שדמה";s:8:"שדמה";s:21:"שדמות דבורה";s:21:"שדמות דבורה";s:21:"שדמות מחולה";s:21:"שדמות מחולה";s:10:"שדרות";s:10:"שדרות";s:10:"שואבה";s:10:"שואבה";s:8:"שובה";s:8:"שובה";s:8:"שובל";s:8:"שובל";s:8:"שוהם";s:8:"שוהם";s:10:"שומרה";s:10:"שומרה";s:12:"שומריה";s:12:"שומריה";s:10:"שוקדה";s:10:"שוקדה";s:8:"שורש";s:8:"שורש";s:12:"שורשים";s:12:"שורשים";s:23:"שושנת העמקים";s:23:"שושנת העמקים";s:8:"שזור";s:8:"שזור";s:6:"שחר";s:6:"שחר";s:10:"שחרות";s:10:"שחרות";s:14:"שיבולים";s:14:"שיבולים";s:10:"שיטים";s:10:"שיטים";s:18:"שייח'' דנון";s:18:"שייח'' דנון";s:8:"שילה";s:8:"שילה";s:8:"שילת";s:8:"שילת";s:10:"שכניה";s:10:"שכניה";s:10:"שלווה";s:10:"שלווה";s:21:"שלווה במדבר";s:21:"שלווה במדבר";s:12:"שלוחות";s:12:"שלוחות";s:10:"שלומי";s:10:"שלומי";s:12:"שלומית";s:12:"שלומית";s:8:"שמיר";s:8:"שמיר";s:8:"שמעה";s:8:"שמעה";s:8:"שמרת";s:8:"שמרת";s:10:"שמשית";s:10:"שמשית";s:6:"שני";s:6:"שני";s:8:"שניר";s:8:"שניר";s:6:"שעב";s:6:"שעב";s:12:"שעורים";s:12:"שעורים";s:6:"שעל";s:6:"שעל";s:12:"שעלבים";s:12:"שעלבים";s:17:"שער אפרים";s:17:"שער אפרים";s:17:"שער הגולן";s:17:"שער הגולן";s:19:"שער העמקים";s:19:"שער העמקים";s:15:"שער מנשה";s:15:"שער מנשה";s:19:"שערי תקווה";s:19:"שערי תקווה";s:10:"שפיים";s:10:"שפיים";s:8:"שפיר";s:8:"שפיר";s:6:"שפר";s:6:"שפר";s:10:"שפרעם";s:10:"שפרעם";s:6:"שקד";s:6:"שקד";s:6:"שקף";s:6:"שקף";s:10:"שרונה";s:10:"שרונה";s:26:"שריגים (לי-און)";s:26:"שריגים (לי-און)";s:8:"שריד";s:8:"שריד";s:10:"שרשרת";s:10:"שרשרת";s:10:"שתולה";s:10:"שתולה";s:12:"שתולים";s:12:"שתולים";s:10:"תאשור";s:10:"תאשור";s:8:"תדהר";s:8:"תדהר";s:8:"תובל";s:8:"תובל";s:8:"תומר";s:8:"תומר";s:10:"תושיה";s:10:"תושיה";s:14:"תימורים";s:14:"תימורים";s:10:"תירוש";s:10:"תירוש";s:22:"תל אביב - יפו";s:22:"תל אביב - יפו";s:13:"תל יוסף";s:13:"תל יוסף";s:13:"תל יצחק";s:13:"תל יצחק";s:13:"תל מונד";s:13:"תל מונד";s:15:"תל עדשים";s:15:"תל עדשים";s:13:"תל קציר";s:13:"תל קציר";s:11:"תל שבע";s:11:"תל שבע";s:17:"תל תאומים";s:17:"תל תאומים";s:6:"תלם";s:6:"תלם";s:19:"תלמי אליהו";s:19:"תלמי אליהו";s:19:"תלמי אלעזר";s:19:"תלמי אלעזר";s:18:"תלמי ביל"ו";s:18:"תלמי ביל"ו";s:17:"תלמי יוסף";s:17:"תלמי יוסף";s:19:"תלמי יחיאל";s:19:"תלמי יחיאל";s:15:"תלמי יפה";s:15:"תלמי יפה";s:10:"תלמים";s:10:"תלמים";s:8:"תמרת";s:8:"תמרת";s:12:"תנובות";s:12:"תנובות";s:8:"תעוז";s:8:"תעוז";s:8:"תפרח";s:8:"תפרח";s:10:"תקומה";s:10:"תקומה";s:8:"תקוע";s:8:"תקוע";s:33:"תראבין א-צאנע (שבט)";s:33:"תראבין א-צאנע (שבט)";s:34:"תראבין א-צאנע(ישוב)";s:34:"תראבין א-צאנע(ישוב)";s:8:"תרום";s:8:"תרום";}s:13:"default_value";a:0:{}s:10:"allow_null";i:0;s:8:"multiple";i:0;s:2:"ui";i:1;s:4:"ajax";i:1;s:13:"return_format";s:5:"value";s:11:"placeholder";s:0:"";}', 'עיר', 'prop_city', 'publish', 'closed', 'closed', '', 'field_59ae96d970a06', '', '', '2017-10-29 14:24:28', '2017-10-29 12:24:28', '', 18, 'http://davdev.co.il/broker/?post_type=acf-field&#038;p=19', 0, 'acf-field', '', 0),
(372, 1, '2017-10-22 13:43:17', '2017-10-22 10:43:17', 'a:13:{s:4:"type";s:6:"select";s:12:"instructions";s:37:"נא לבחור את סוג הנכס.";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:26:"acf-need-to-add-all-option";s:2:"id";s:0:"";}s:7:"choices";a:21:{s:8:"דירה";s:8:"דירה";s:13:"דירת גן";s:13:"דירת גן";s:15:"בית מלון";s:15:"בית מלון";s:19:"גג/פנטהאוז";s:19:"גג/פנטהאוז";s:21:"סטודיו/לופט";s:21:"סטודיו/לופט";s:17:"דירת נופש";s:17:"דירת נופש";s:17:"מרתף/פרטר";s:17:"מרתף/פרטר";s:12:"דופלקס";s:12:"דופלקס";s:14:"טריפלקס";s:14:"טריפלקס";s:18:"פרטי/קוטג''";s:18:"פרטי/קוטג''";s:17:"דו משפחתי";s:17:"דו משפחתי";s:19:"יחידת דיור";s:19:"יחידת דיור";s:26:"משק חקלאי/נחלה";s:26:"משק חקלאי/נחלה";s:13:"משק עזר";s:13:"משק עזר";s:8:"מחסן";s:8:"מחסן";s:8:"חניה";s:8:"חניה";s:12:"מגרשים";s:12:"מגרשים";s:17:"דיור מוגן";s:17:"דיור מוגן";s:23:"בניין מגורים";s:23:"בניין מגורים";s:35:"קב'' רכישה/ זכות לנכס";s:35:"קב'' רכישה/ זכות לנכס";s:8:"כללי";s:8:"כללי";}s:13:"default_value";a:0:{}s:10:"allow_null";i:0;s:8:"multiple";i:0;s:2:"ui";i:0;s:4:"ajax";i:0;s:13:"return_format";s:5:"value";s:11:"placeholder";s:0:"";}', 'סוג הנכס', 'prop_type', 'publish', 'closed', 'closed', '', 'field_59ec7533be002', '', '', '2017-10-29 14:22:17', '2017-10-29 12:22:17', '', 18, 'http://127.0.0.1/broker/?post_type=acf-field&#038;p=372', 6, 'acf-field', '', 0),
(20, 1, '2017-09-05 16:54:28', '2017-09-05 13:54:28', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:61:"נא להזין את שם השכונה בה שוכן הנכס";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'שכונה', 'prop_neighborhood', 'publish', 'closed', 'closed', '', 'field_59ae9c0970a07', '', '', '2017-10-22 14:59:30', '2017-10-22 11:59:30', '', 18, 'http://davdev.co.il/broker/?post_type=acf-field&#038;p=20', 1, 'acf-field', '', 0),
(21, 1, '2017-09-05 16:54:28', '2017-09-05 13:54:28', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:54:"יש לרשום את הרחוב בו שוכן הנכס";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:12:"משופצת";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'רחוב', 'prop_street', 'publish', 'closed', 'closed', '', 'field_59ae9d3e70a08', '', '', '2017-10-22 14:59:30', '2017-10-22 11:59:30', '', 18, 'http://davdev.co.il/broker/?post_type=acf-field&#038;p=21', 2, 'acf-field', '', 0),
(22, 1, '2017-09-05 16:54:28', '2017-09-05 13:54:28', 'a:9:{s:4:"type";s:10:"google_map";s:12:"instructions";s:49:"יש לבחור את מיקום הנכס במפה";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:10:"center_lat";s:0:"";s:10:"center_lng";s:0:"";s:4:"zoom";s:0:"";s:6:"height";s:0:"";}', 'מיקום במפה', 'prop_location', 'publish', 'closed', 'closed', '', 'field_59ae9d7370a09', '', '', '2017-10-27 10:36:57', '2017-10-27 07:36:57', '', 18, 'http://davdev.co.il/broker/?post_type=acf-field&#038;p=22', 5, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(23, 1, '2017-09-05 16:54:28', '2017-09-05 13:54:28', 'a:13:{s:4:"type";s:6:"select";s:12:"instructions";s:54:"יש לבחור את מספר הקומה של הנכס";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:26:"acf-need-to-add-all-option";s:2:"id";s:0:"";}s:7:"choices";a:23:{i:-1;s:17:"מרתף/פרטר";i:0;s:8:"קרקע";i:1;s:1:"1";i:2;s:1:"2";i:3;s:1:"3";i:4;s:1:"4";i:5;s:1:"5";i:6;s:1:"6";i:7;s:1:"7";i:8;s:1:"8";i:9;s:1:"9";i:10;s:2:"10";i:11;s:2:"11";i:12;s:2:"12";i:13;s:2:"13";i:14;s:2:"14";i:15;s:2:"15";i:16;s:2:"16";i:17;s:2:"17";i:18;s:2:"18";i:19;s:2:"19";i:20;s:2:"20";i:21;s:3:"20+";}s:13:"default_value";a:1:{i:0;s:8:"קרקע";}s:10:"allow_null";i:0;s:8:"multiple";i:0;s:2:"ui";i:0;s:4:"ajax";i:0;s:13:"return_format";s:5:"label";s:11:"placeholder";s:0:"";}', 'קומה', 'prop_store', 'publish', 'closed', 'closed', '', 'field_59ae9dac70a0a', '', '', '2017-11-18 08:05:08', '2017-11-18 06:05:08', '', 18, 'http://davdev.co.il/broker/?post_type=acf-field&#038;p=23', 7, 'acf-field', '', 0),
(24, 1, '2017-09-05 16:54:28', '2017-09-05 13:54:28', 'a:13:{s:4:"type";s:6:"select";s:12:"instructions";s:51:"נא לבחור את מספר החדרים בנכס";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:17:{i:1;s:1:"1";s:3:"1.5";s:3:"1.5";i:2;s:1:"2";s:3:"2.5";s:3:"2.5";i:3;s:1:"3";s:3:"3.5";s:3:"3.5";i:4;s:1:"4";s:3:"4.5";s:3:"4.5";i:5;s:1:"5";s:3:"5.5";s:3:"5.5";i:6;s:1:"6";i:7;s:1:"7";i:8;s:1:"8";i:9;s:1:"9";i:10;s:2:"10";i:11;s:2:"11";i:12;s:2:"12";}s:13:"default_value";a:1:{i:0;i:3;}s:10:"allow_null";i:0;s:8:"multiple";i:0;s:2:"ui";i:0;s:4:"ajax";i:0;s:13:"return_format";s:5:"value";s:11:"placeholder";s:0:"";}', 'מספר חדרים', 'prop_rooms', 'publish', 'closed', 'closed', '', 'field_59ae9e2370a0b', '', '', '2017-10-27 10:36:57', '2017-10-27 07:36:57', '', 18, 'http://davdev.co.il/broker/?post_type=acf-field&#038;p=24', 9, 'acf-field', '', 0),
(107, 1, '2017-09-26 13:30:10', '2017-09-26 10:30:10', '', 'דירה למכירה באברבנאל 49, תל אביב יפו', '', 'publish', 'closed', 'closed', '', '%d7%93%d7%99%d7%a8%d7%94-%d7%9c%d7%9e%d7%9b%d7%99%d7%a8%d7%94-%d7%91%d7%90%d7%91%d7%a8%d7%91%d7%a0%d7%90%d7%9c-49-%d7%aa%d7%9c-%d7%90%d7%91%d7%99%d7%91-%d7%99%d7%a4%d7%95', '', '', '2017-10-22 13:47:57', '2017-10-22 10:47:57', '', 0, 'http://127.0.0.1/broker/?post_type=property&#038;p=107', 0, 'property', '', 0),
(25, 1, '2017-09-05 16:54:28', '2017-09-05 13:54:28', 'a:12:{s:4:"type";s:8:"checkbox";s:12:"instructions";s:51:"נא לסמן במידה ובנכס יש מרפסת";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:8:{s:10:"מרפסת";s:10:"מרפסת";s:10:"מיזוג";s:10:"מיזוג";s:10:"חנייה";s:10:"חנייה";s:19:"גישה לנכים";s:19:"גישה לנכים";s:7:"ממ"ד";s:7:"ממ"ד";s:12:"סורגים";s:12:"סורגים";s:10:"מעלית";s:10:"מעלית";s:8:"מחסן";s:8:"מחסן";}s:12:"allow_custom";i:0;s:11:"save_custom";i:0;s:13:"default_value";a:0:{}s:6:"layout";s:8:"vertical";s:6:"toggle";i:0;s:13:"return_format";s:5:"value";}', 'פרטים טכניים', 'prop_tech', 'publish', 'closed', 'closed', '', 'field_59aeac9970a0c', '', '', '2017-10-27 10:36:57', '2017-10-27 07:36:57', '', 18, 'http://davdev.co.il/broker/?post_type=acf-field&#038;p=25', 10, 'acf-field', '', 0),
(26, 1, '2017-09-05 16:55:20', '2017-09-05 13:55:20', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:38:"יש לרשום את מספר הבית";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'מספר בית', 'prop_address_no', 'publish', 'closed', 'closed', '', 'field_59aeacdae6480', '', '', '2017-10-22 14:59:30', '2017-10-22 11:59:30', '', 18, 'http://davdev.co.il/broker/?post_type=acf-field&#038;p=26', 3, 'acf-field', '', 0),
(27, 1, '2017-09-06 07:34:23', '2017-09-06 04:34:23', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:66:"יש לרשום את גודל הנכס במטרים רבועיים";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'גודל במ"ר', 'prop_size', 'publish', 'closed', 'closed', '', 'field_59aeadaf51fa2', '', '', '2017-10-27 10:36:57', '2017-10-27 07:36:57', '', 18, 'http://davdev.co.il/broker/?post_type=acf-field&#038;p=27', 13, 'acf-field', '', 0),
(74, 1, '2017-09-20 09:45:26', '2017-09-20 06:45:26', 'money bag', 'icons_05', 'money bag', 'inherit', 'open', 'closed', '', 'icons_05', '', '', '2017-09-20 09:46:19', '2017-09-20 06:46:19', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/09/icons_05.png', 0, 'attachment', 'image/png', 0),
(75, 1, '2017-09-20 09:45:26', '2017-09-20 06:45:26', 'details', 'icons_07', 'details', 'inherit', 'open', 'closed', '', 'icons_07', '', '', '2017-09-20 09:46:10', '2017-09-20 06:46:10', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/09/icons_07.png', 0, 'attachment', 'image/png', 0),
(76, 1, '2017-09-20 09:45:26', '2017-09-20 06:45:26', 'value', 'icons_09', 'value', 'inherit', 'open', 'closed', '', 'icons_09', '', '', '2017-09-20 09:46:01', '2017-09-20 06:46:01', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/09/icons_09.png', 0, 'attachment', 'image/png', 0),
(77, 1, '2017-09-20 09:45:27', '2017-09-20 06:45:27', 'escalate', 'icons_11', 'escalate', 'inherit', 'open', 'closed', '', 'icons_11', '', '', '2017-09-20 09:45:53', '2017-09-20 06:45:53', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/09/icons_11.png', 0, 'attachment', 'image/png', 0),
(78, 1, '2017-09-20 09:45:27', '2017-09-20 06:45:27', 'calendar', 'icons_03', 'calendar', 'inherit', 'open', 'closed', '', 'icons_03', '', '', '2017-09-20 09:45:41', '2017-09-20 06:45:41', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/09/icons_03.png', 0, 'attachment', 'image/png', 0),
(82, 1, '2017-09-24 13:43:21', '2017-09-24 10:43:21', '', 'geresh_07', '', 'inherit', 'open', 'closed', '', 'geresh_07', '', '', '2017-09-24 13:43:21', '2017-09-24 10:43:21', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/09/geresh_07.png', 0, 'attachment', 'image/png', 0),
(83, 1, '2017-09-24 16:38:45', '2017-09-24 13:38:45', '', 'tri_06', '', 'inherit', 'open', 'closed', '', 'tri_06', '', '', '2017-09-24 16:38:45', '2017-09-24 13:38:45', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/09/tri_06.png', 0, 'attachment', 'image/png', 0),
(84, 1, '2017-09-24 17:58:26', '2017-09-24 14:58:26', '', 'mother-daugter', '', 'inherit', 'open', 'closed', '', 'mother-daugter', '', '', '2017-09-24 17:58:26', '2017-09-24 14:58:26', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/09/mother-daugter.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2017-09-25 08:03:37', '2017-09-25 05:03:37', '', 'social-icons_05', '', 'inherit', 'open', 'closed', '', 'social-icons_05', '', '', '2017-09-25 08:03:37', '2017-09-25 05:03:37', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/09/social-icons_05.png', 0, 'attachment', 'image/png', 0),
(86, 1, '2017-09-25 08:03:37', '2017-09-25 05:03:37', '', 'social-icons_07', '', 'inherit', 'open', 'closed', '', 'social-icons_07', '', '', '2017-09-25 08:03:37', '2017-09-25 05:03:37', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/09/social-icons_07.png', 0, 'attachment', 'image/png', 0),
(87, 1, '2017-09-25 08:03:37', '2017-09-25 05:03:37', '', 'social-icons_03', '', 'inherit', 'open', 'closed', '', 'social-icons_03', '', '', '2017-09-25 08:03:37', '2017-09-25 05:03:37', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/09/social-icons_03.png', 0, 'attachment', 'image/png', 0),
(88, 1, '2017-09-25 10:47:14', '2017-09-25 07:47:14', '', 'contact', '', 'inherit', 'open', 'closed', '', 'contact', '', '', '2017-09-25 10:47:14', '2017-09-25 07:47:14', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/09/contact.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2017-09-25 11:21:35', '2017-09-25 08:21:35', '', 'contact-icon_18', '', 'inherit', 'open', 'closed', '', 'contact-icon_18', '', '', '2017-09-25 11:21:35', '2017-09-25 08:21:35', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/09/contact-icon_18.png', 0, 'attachment', 'image/png', 0),
(90, 1, '2017-09-25 11:21:35', '2017-09-25 08:21:35', '', 'contact-icon_13', '', 'inherit', 'open', 'closed', '', 'contact-icon_13', '', '', '2017-09-25 11:21:35', '2017-09-25 08:21:35', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/09/contact-icon_13.png', 0, 'attachment', 'image/png', 0),
(91, 1, '2017-09-25 11:21:36', '2017-09-25 08:21:36', '', 'contact-icon_16', '', 'inherit', 'open', 'closed', '', 'contact-icon_16', '', '', '2017-09-25 11:21:36', '2017-09-25 08:21:36', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/09/contact-icon_16.png', 0, 'attachment', 'image/png', 0),
(92, 1, '2017-09-26 07:48:21', '2017-09-26 04:48:21', '', 'redheadfam', '', 'inherit', 'open', 'closed', '', 'redheadfam', '', '', '2017-09-26 07:48:21', '2017-09-26 04:48:21', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/09/redheadfam.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2017-09-26 08:27:47', '2017-09-26 05:27:47', '<div class="form-container">\r\n<div class="front-form right">\r\n<label> שם*:\r\n    [text* name-123] </label>\r\n<label> טלפון*: \r\n   [tel* phone-123] </label>\r\n<label> מייל*: \r\n   [email* email-123] </label>\r\n<label>נושא הפניה:\r\n   [select* menu-123 "רוצה למכור במקסימום" "כללי" "קונה למגורים" "ניהול נכסים" "משכנתא חכמה" "מסחרי" "רוצה לקנות בחנות לינקולן" "דרושים"]</label>\r\n</div>\r\n<div class="front-form left">\r\n<label> הודעה*: \r\n[textarea* textarea-123]</label>\r\n[submit "שלחו"]\r\n</div>\r\n</div>\n1\nברוקר נדל"ן "[your-subject]"\n[your-name] <davseveloff@gmail.com>\ndavseveloff@gmail.com\nמאת: [your-name] <[your-email]>\r\nנושא: [your-subject]\r\n\r\nתוכן ההודעה:\r\n[your-message]\r\n\r\n-- \r\nאימייל זה נשלח מטופס יצירת קשר ב ברוקר נדל&quot;ן (//localhost:3000/broker)\nReply-To: [your-email]\n\n\n\n\nברוקר נדל"ן "[your-subject]"\nברוקר נדל"ן <davseveloff@gmail.com>\n[your-email]\nתוכן ההודעה:\r\n[your-message]\r\n\r\n-- \r\nאימייל זה נשלח מטופס יצירת קשר ב ברוקר נדל&quot;ן (//localhost:3000/broker)\nReply-To: davseveloff@gmail.com\n\n\n\nההודעה נשלחה.\nארעה שגיאה בשליחת ההודעה.\nקיימת שגיאה בשדה אחד או יותר.\nארעה שגיאה בשליחת ההודעה.\nעליך להסכים לתנאים לפני שליחת ההודעה.\nזהו שדה חובה.\nהשדה ארוך מדי.\nהשדה קצר מדי.\nשדה התאריך אינו נכון.\nהתאריך מוקדם מהתאריך המותר.\nהתאריך מאוחר מהתאריך המותר.\nשגיאה לא ידועה בהעלאת הקובץ.\nאין לך הרשאות להעלות קבצים בפורמט זה.\nהקובץ גדול מדי.\nשגיאה בהעלאת הקובץ.\nפורמט המספר אינו תקין.\nהמספר קטן מהמינימום המותר.\nהמספר גדול מהמקסימום המותר.\nהתשובה לשאלת הביטחון אינה נכונה.\nהקוד שהזנת שגוי.\nכתובת האימייל שהוזנה אינה תקינה.\nהקישור אינו תקין.\nמספר הטלפון אינו תקין.', 'טופס יצירת קשר דף ראשי', '', 'publish', 'closed', 'closed', '', '%d7%98%d7%95%d7%a4%d7%a1-%d7%99%d7%a6%d7%99%d7%a8%d7%aa-%d7%a7%d7%a9%d7%a8-1', '', '', '2017-09-26 09:20:07', '2017-09-26 06:20:07', '', 0, 'http://127.0.0.1/broker/?post_type=wpcf7_contact_form&#038;p=93', 0, 'wpcf7_contact_form', '', 0),
(37, 1, '2017-09-06 07:34:23', '2017-09-06 04:34:23', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:62:"נא לציין את המחיר המבוקש עבור הנכס";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:7:"בש"ח";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'מחיר', 'prop_price', 'publish', 'closed', 'closed', '', 'field_59aeaee651fac', '', '', '2017-10-27 10:36:57', '2017-10-27 07:36:57', '', 18, 'http://davdev.co.il/broker/?post_type=acf-field&#038;p=37', 12, 'acf-field', '', 0),
(38, 1, '2017-09-06 07:34:23', '2017-09-06 04:34:23', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:0:"";}', 'תיאור כללי', 'prop_description', 'publish', 'closed', 'closed', '', 'field_59aeaf4b51fad', '', '', '2017-10-27 10:36:57', '2017-10-27 07:36:57', '', 18, 'http://davdev.co.il/broker/?post_type=acf-field&#038;p=38', 11, 'acf-field', '', 0),
(51, 1, '2017-09-14 09:34:11', '2017-09-14 06:34:11', '', 'ברוקרים', '', 'publish', 'closed', 'closed', '', '%d7%91%d7%a8%d7%95%d7%a7%d7%a8%d7%99%d7%9d', '', '', '2017-12-15 12:49:49', '2017-12-15 10:49:49', '', 0, 'http://davdev.co.il/broker/?p=51', 5, 'nav_menu_item', '', 0),
(40, 1, '2017-09-12 08:59:55', '2017-09-12 05:59:55', 'broker_logo', 'broker_logo', 'broker_logo', 'inherit', 'open', 'closed', '', 'broker_logo', '', '', '2017-09-12 09:14:33', '2017-09-12 06:14:33', '', 0, 'http://davdev.co.il/broker/wp-content/uploads/2017/09/broker_logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2017-09-12 08:59:56', '2017-09-12 05:59:56', '', 'phone', '', 'inherit', 'open', 'closed', '', 'phone', '', '', '2017-09-12 08:59:56', '2017-09-12 05:59:56', '', 0, 'http://davdev.co.il/broker/wp-content/uploads/2017/09/phone.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2017-09-12 09:15:57', '2017-09-12 06:15:57', 'http://davdev.co.il/broker/wp-content/uploads/2017/09/cropped-broker_logo.jpg', 'cropped-broker_logo.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-broker_logo-jpg', '', '', '2017-09-12 09:15:57', '2017-09-12 06:15:57', '', 0, 'http://davdev.co.il/broker/wp-content/uploads/2017/09/cropped-broker_logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2017-09-12 09:51:24', '2017-09-12 06:51:24', '', 'ראשי', '', 'publish', 'closed', 'closed', '', '%d7%a8%d7%90%d7%a9%d7%99', '', '', '2017-12-15 12:49:49', '2017-12-15 10:49:49', '', 0, 'http://davdev.co.il/broker/?p=44', 1, 'nav_menu_item', '', 0),
(81, 1, '2017-09-24 13:43:21', '2017-09-24 10:43:21', '', 'geresh_03', '', 'inherit', 'open', 'closed', '', 'geresh_03', '', '', '2017-09-24 13:43:21', '2017-09-24 10:43:21', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/09/geresh_03.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2017-09-14 09:34:11', '2017-09-14 06:34:11', '', 'צור קשר', '', 'publish', 'closed', 'closed', '', '%d7%a6%d7%95%d7%a8-%d7%a7%d7%a9%d7%a8', '', '', '2017-12-15 12:49:49', '2017-12-15 10:49:49', '', 0, 'http://davdev.co.il/broker/?p=54', 8, 'nav_menu_item', '', 0),
(56, 1, '2017-09-15 10:08:46', '2017-09-15 07:08:46', 'broker-father-and-son', 'broker-father-and-son', 'broker-father-and-son', 'inherit', 'open', 'closed', '', 'broker-father-and-son', '', '', '2017-09-15 10:08:54', '2017-09-15 07:08:54', '', 0, 'http://davdev.co.il/broker/wp-content/uploads/2017/09/broker-father-and-son.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2017-09-16 17:22:38', '2017-09-16 14:22:38', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:22:"theme-general-settings";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:4:"left";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'front page', 'front-page', 'publish', 'closed', 'closed', '', 'group_59bd334bd08ac', '', '', '2017-10-01 14:07:22', '2017-10-01 11:07:22', '', 0, 'http://davdev.co.il/broker/?post_type=acf-field-group&#038;p=57', 0, 'acf-field-group', '', 0),
(137, 1, '2017-09-26 14:19:32', '2017-09-26 11:19:32', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:51:"נא להזין כותרת עבור קוביה זו";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'כותרת (העתק)', 'cube_title_2_העתק', 'publish', 'closed', 'closed', '', 'field_59ca350f7dc41', '', '', '2017-09-26 14:19:32', '2017-09-26 11:19:32', '', 119, 'http://127.0.0.1/broker/?post_type=acf-field&p=137', 2, 'acf-field', '', 0),
(80, 1, '2017-09-24 10:21:49', '2017-09-24 07:21:49', 'famely-selfie', 'famely-selfie', 'famely-selfie', 'inherit', 'open', 'closed', '', 'famely-selfie', '', '', '2017-09-24 10:21:56', '2017-09-24 07:21:56', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/09/famely-selfie.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2017-09-16 17:57:35', '2017-09-16 14:57:35', '', 'icon3', '', 'inherit', 'open', 'closed', '', 'icon3', '', '', '2017-09-16 17:57:35', '2017-09-16 14:57:35', '', 0, 'http://davdev.co.il/broker/wp-content/uploads/2017/09/icon3.png', 0, 'attachment', 'image/png', 0),
(62, 1, '2017-09-16 17:57:52', '2017-09-16 14:57:52', '', 'icon2', '', 'inherit', 'open', 'closed', '', 'icon2', '', '', '2017-09-16 17:57:52', '2017-09-16 14:57:52', '', 0, 'http://davdev.co.il/broker/wp-content/uploads/2017/09/icon2.png', 0, 'attachment', 'image/png', 0),
(63, 1, '2017-09-16 17:57:53', '2017-09-16 14:57:53', '', 'icon1', '', 'inherit', 'open', 'closed', '', 'icon1', '', '', '2017-09-16 17:57:53', '2017-09-16 14:57:53', '', 0, 'http://davdev.co.il/broker/wp-content/uploads/2017/09/icon1.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2017-09-18 10:32:15', '2017-09-18 07:32:15', '', 'icon_13', '', 'inherit', 'open', 'closed', '', 'icon_13', '', '', '2017-09-18 10:32:15', '2017-09-18 07:32:15', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/09/icon_13.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2017-09-18 10:32:08', '2017-09-18 07:32:08', '', 'icon_06', '', 'inherit', 'open', 'closed', '', 'icon_06', '', '', '2017-09-18 10:32:08', '2017-09-18 07:32:08', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/09/icon_06.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2017-09-18 10:31:02', '2017-09-18 07:31:02', '', 'icon_08', '', 'inherit', 'open', 'closed', '', 'icon_08', '', '', '2017-09-18 10:31:02', '2017-09-18 07:31:02', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/09/icon_08.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2017-09-18 13:25:32', '2017-09-18 10:25:32', 'cooking', 'cooking', 'cooking', 'inherit', 'open', 'closed', '', 'cooking', '', '', '2017-09-18 13:25:40', '2017-09-18 10:25:40', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/09/cooking.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2017-09-18 15:52:34', '2017-09-18 12:52:34', '', 'דירה 4 חד''', '', 'publish', 'closed', 'closed', '', '%d7%93%d7%99%d7%a8%d7%94-4-%d7%97%d7%93', '', '', '2017-12-14 18:17:27', '2017-12-14 16:17:27', '', 0, 'http://127.0.0.1/broker/?post_type=property&#038;p=70', 0, 'property', '', 0),
(71, 1, '2017-09-18 15:52:27', '2017-09-18 12:52:27', 'prop', 'prop', 'prop', 'inherit', 'open', 'closed', '', 'prop', '', '', '2017-09-18 15:52:31', '2017-09-18 12:52:31', '', 70, 'http://127.0.0.1/broker/wp-content/uploads/2017/09/prop.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2017-09-19 13:28:20', '2017-09-19 10:28:20', 'couple-with-cpu', 'couple-with-cpu', 'couple-with-cpu', 'inherit', 'open', 'closed', '', 'couple-with-cpu', '', '', '2017-09-19 13:28:30', '2017-09-19 10:28:30', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/09/couple-with-cpu.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2017-09-19 14:01:03', '2017-09-19 11:01:03', 'a:13:{s:4:"type";s:6:"select";s:12:"instructions";s:54:"יש לבחור את מספר הקומה של הנכס";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:23:{i:-1;s:17:"מרתף/פרטר";i:0;s:8:"קרקע";i:1;s:1:"1";i:2;s:1:"2";i:3;s:1:"3";i:4;s:1:"4";i:5;s:1:"5";i:6;s:1:"6";i:7;s:1:"7";i:8;s:1:"8";i:9;s:1:"9";i:10;s:2:"10";i:11;s:2:"11";i:12;s:2:"12";i:13;s:2:"13";i:14;s:2:"14";i:15;s:2:"15";i:16;s:2:"16";i:17;s:2:"17";i:18;s:2:"18";i:19;s:2:"19";i:20;s:2:"20";i:21;s:3:"20+";}s:13:"default_value";a:1:{i:0;s:8:"קרקע";}s:10:"allow_null";i:0;s:8:"multiple";i:0;s:2:"ui";i:0;s:4:"ajax";i:0;s:13:"return_format";s:5:"value";s:11:"placeholder";s:0:"";}', 'מתוך קומה', 'prop_store_from', 'publish', 'closed', 'closed', '', 'field_59c0f88f6373b', '', '', '2017-11-18 08:05:08', '2017-11-18 06:05:08', '', 18, 'http://127.0.0.1/broker/?post_type=acf-field&#038;p=73', 8, 'acf-field', '', 0),
(108, 1, '2017-09-26 13:20:20', '2017-09-26 10:20:20', '', 'פנטהאוז להשכרה בגבעתיים רחוב בן גוריון 192', '', 'publish', 'closed', 'closed', '', '%d7%a4%d7%a0%d7%98%d7%94%d7%90%d7%95%d7%96-%d7%9c%d7%94%d7%a9%d7%9b%d7%a8%d7%94-%d7%91%d7%92%d7%91%d7%a2%d7%aa%d7%99%d7%99%d7%9d-%d7%a8%d7%97%d7%95%d7%91-%d7%91%d7%9f-%d7%92%d7%95%d7%a8%d7%99%d7%95', '', '', '2017-10-22 13:12:37', '2017-10-22 10:12:37', '', 0, 'http://127.0.0.1/broker/?post_type=property&#038;p=108', 0, 'property', '', 0),
(94, 1, '2017-09-26 13:32:12', '2017-09-26 10:32:12', '', 'דירה למכירה בהנביאים, בת ים 54', '', 'publish', 'closed', 'closed', '', '%d7%93%d7%99%d7%a8%d7%94-%d7%9c%d7%9e%d7%9b%d7%99%d7%a8%d7%94-%d7%91%d7%94%d7%a0%d7%91%d7%99%d7%90%d7%99%d7%9d-%d7%91%d7%aa-%d7%99%d7%9d-54', '', '', '2017-10-22 13:12:22', '2017-10-22 10:12:22', '', 0, 'http://127.0.0.1/broker/?post_type=property&#038;p=94', 0, 'property', '', 0),
(109, 1, '2017-09-26 13:33:35', '2017-09-26 10:33:35', '', 'דופלקס למכירה בהרב קובלסקי 14 בני ברק', '', 'publish', 'closed', 'closed', '', '%d7%93%d7%95%d7%a4%d7%9c%d7%a7%d7%a1-%d7%9c%d7%9e%d7%9b%d7%99%d7%a8%d7%94-%d7%91%d7%94%d7%a8%d7%91-%d7%a7%d7%95%d7%91%d7%9c%d7%a1%d7%a7%d7%99-14-%d7%91%d7%a0%d7%99-%d7%91%d7%a8%d7%a7', '', '', '2017-10-23 07:45:54', '2017-10-23 04:45:54', '', 0, 'http://127.0.0.1/broker/?post_type=property&#038;p=109', 0, 'property', '', 0),
(110, 1, '2017-09-26 13:33:35', '2017-09-26 10:33:35', '', 'דופלקס למכירה בהרב קובלסקי 14 בני ברק', '', 'publish', 'closed', 'closed', '', '%d7%93%d7%95%d7%a4%d7%9c%d7%a7%d7%a1-%d7%9c%d7%9e%d7%9b%d7%99%d7%a8%d7%94-%d7%91%d7%94%d7%a8%d7%91-%d7%a7%d7%95%d7%91%d7%9c%d7%a1%d7%a7%d7%99-14-%d7%91%d7%a0%d7%99-%d7%91%d7%a8%d7%a7-2', '', '', '2017-10-27 08:46:22', '2017-10-27 05:46:22', '', 0, 'http://127.0.0.1/broker/?post_type=property&#038;p=110', 0, 'property', '', 0),
(111, 1, '2017-09-26 13:36:10', '2017-09-26 10:36:10', '', 'דירה למכירה ברפאלי שרגא, פתח תקווה 12', '', 'publish', 'closed', 'closed', '', '%d7%93%d7%99%d7%a8%d7%94-%d7%9c%d7%9e%d7%9b%d7%99%d7%a8%d7%94-%d7%91%d7%a8%d7%a4%d7%90%d7%9c%d7%99-%d7%a9%d7%a8%d7%92%d7%90-%d7%a4%d7%aa%d7%97-%d7%aa%d7%a7%d7%95%d7%95%d7%94-12', '', '', '2017-10-27 10:04:01', '2017-10-27 07:04:01', '', 0, 'http://127.0.0.1/broker/?post_type=property&#038;p=111', 0, 'property', '', 0),
(112, 1, '2017-09-26 13:36:11', '2017-09-26 10:36:11', '', 'דירה למכירה ברפאלי שרגא, פתח תקווה 12', '', 'publish', 'closed', 'closed', '', '%d7%93%d7%99%d7%a8%d7%94-%d7%9c%d7%9e%d7%9b%d7%99%d7%a8%d7%94-%d7%91%d7%a8%d7%a4%d7%90%d7%9c%d7%99-%d7%a9%d7%a8%d7%92%d7%90-%d7%a4%d7%aa%d7%97-%d7%aa%d7%a7%d7%95%d7%95%d7%94-12-2', '', '', '2017-10-22 13:11:50', '2017-10-22 10:11:50', '', 0, 'http://127.0.0.1/broker/?post_type=property&#038;p=112', 0, 'property', '', 0),
(169, 1, '2017-09-26 15:13:41', '2017-09-26 12:13:41', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:67:"נא להזין את הטקסט עבור איזור אודותנו.";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";i:1500;s:4:"rows";s:0:"";s:9:"new_lines";s:0:"";}', 'טקסט אודותנו', 'about_text', 'publish', 'closed', 'closed', '', 'field_59ca441728639', '', '', '2017-09-27 09:20:25', '2017-09-27 06:20:25', '', 167, 'http://127.0.0.1/broker/?post_type=acf-field&#038;p=169', 1, 'acf-field', '', 0),
(141, 1, '2017-09-26 14:21:08', '2017-09-26 11:21:08', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:26:"נא להזין כותרת";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'כותרת', 'cube_title_3', 'publish', 'closed', 'closed', '', 'field_59ca38106efff', '', '', '2017-09-26 15:08:10', '2017-09-26 12:08:10', '', 132, 'http://127.0.0.1/broker/?post_type=acf-field&#038;p=141', 9, 'acf-field', '', 0),
(138, 1, '2017-09-26 14:20:27', '2017-09-26 11:20:27', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:26:"נא להזין כותרת";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'כותרת', 'cube_title_1', 'publish', 'closed', 'closed', '', 'field_59ca37dc7789b', '', '', '2017-09-26 15:08:10', '2017-09-26 12:08:10', '', 132, 'http://127.0.0.1/broker/?post_type=acf-field&#038;p=138', 1, 'acf-field', '', 0),
(139, 1, '2017-09-26 14:20:27', '2017-09-26 11:20:27', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:27:"bנא להזין כותרת";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'כותרת', 'cube_title_2', 'publish', 'closed', 'closed', '', 'field_59ca37dc39b5b', '', '', '2017-09-26 15:08:10', '2017-09-26 12:08:10', '', 132, 'http://127.0.0.1/broker/?post_type=acf-field&#038;p=139', 5, 'acf-field', '', 0),
(120, 1, '2017-09-26 14:03:12', '2017-09-26 11:03:12', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:23:"קוביה שמאלית";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'קוביה ימנית (העתק)', 'first_cube_title_העתק', 'publish', 'closed', 'closed', '', 'field_59ca33cf81694', '', '', '2017-09-26 14:03:12', '2017-09-26 11:03:12', '', 0, 'http://127.0.0.1/broker/?post_type=acf-field&p=120', 2, 'acf-field', '', 0),
(148, 1, '2017-09-26 14:27:08', '2017-09-26 11:27:08', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:94:"נא להדביק את הקישור אליו אתם מעוניינים שהקישור יפנה";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:10:"קישור";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'קישור (העתק)', 'cube_link_1_העתק', 'publish', 'closed', 'closed', '', 'field_59ca395b267c7', '', '', '2017-09-26 14:27:08', '2017-09-26 11:27:08', '', 0, 'http://127.0.0.1/broker/?post_type=acf-field&p=148', 4, 'acf-field', '', 0),
(149, 1, '2017-09-26 14:27:08', '2017-09-26 11:27:08', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:38:"נא להזין ,תיאור קישור";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'תיאור קישור', 'cube_desc_2', 'publish', 'closed', 'closed', '', 'field_59ca38ef267c4', '', '', '2017-09-26 15:08:10', '2017-09-26 12:08:10', '', 132, 'http://127.0.0.1/broker/?post_type=acf-field&#038;p=149', 6, 'acf-field', '', 0),
(168, 1, '2017-09-26 15:13:41', '2017-09-26 12:13:41', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:69:"נא להזין את הכותרת עבור איזור אודותנו.";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'כותרת', 'about_front', 'publish', 'closed', 'closed', '', 'field_59ca43ce28638', '', '', '2017-09-26 15:13:41', '2017-09-26 12:13:41', '', 167, 'http://127.0.0.1/broker/?post_type=acf-field&p=168', 0, 'acf-field', '', 0),
(136, 1, '2017-09-26 14:19:32', '2017-09-26 11:19:32', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:51:"נא להזין כותרת עבור קוביה זו";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'כותרת', 'cube_title_2', 'publish', 'closed', 'closed', '', 'field_59ca34f87dc40', '', '', '2017-09-26 14:19:32', '2017-09-26 11:19:32', '', 119, 'http://127.0.0.1/broker/?post_type=acf-field&p=136', 1, 'acf-field', '', 0),
(128, 1, '2017-09-26 14:03:13', '2017-09-26 11:03:13', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:23:"קוביה שמאלית";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'קוביה ימנית (העתק)', 'first_cube_title_העתק', 'publish', 'closed', 'closed', '', 'field_59ca33cf81694', '', '', '2017-09-26 14:03:13', '2017-09-26 11:03:13', '', 0, 'http://127.0.0.1/broker/?post_type=acf-field&p=128', 2, 'acf-field', '', 0),
(154, 1, '2017-09-26 14:27:08', '2017-09-26 11:27:08', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:94:"נא להדביק את הקישור אליו אתם מעוניינים שהקישור יפנה";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'קישור', 'cube_link_3', 'publish', 'closed', 'closed', '', 'field_59ca39688921d', '', '', '2017-09-26 15:08:10', '2017-09-26 12:08:10', '', 132, 'http://127.0.0.1/broker/?post_type=acf-field&#038;p=154', 11, 'acf-field', '', 0),
(153, 1, '2017-09-26 14:27:08', '2017-09-26 11:27:08', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:38:"נא להזין ,תיאור קישור";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'תיאור קישור', 'cube_desc_3', 'publish', 'closed', 'closed', '', 'field_59ca39108921a', '', '', '2017-09-26 15:08:10', '2017-09-26 12:08:10', '', 132, 'http://127.0.0.1/broker/?post_type=acf-field&#038;p=153', 10, 'acf-field', '', 0),
(156, 1, '2017-09-26 14:54:30', '2017-09-26 11:54:30', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:94:"נא להדביק את הקישור אליו אתם מעוניינים שהקישור יפנה";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'קישור', 'cube_link_1', 'publish', 'closed', 'closed', '', 'field_59ca3fcdb348d', '', '', '2017-09-26 15:08:10', '2017-09-26 12:08:10', '', 132, 'http://127.0.0.1/broker/?post_type=acf-field&#038;p=156', 3, 'acf-field', '', 0),
(132, 1, '2017-09-26 14:18:55', '2017-09-26 11:18:55', 'a:7:{s:4:"type";s:5:"group";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:5:"block";s:10:"sub_fields";a:0:{}}', 'חלק עליון - חיפוש', 'upper_front', 'publish', 'closed', 'closed', '', 'field_59ca354c071f9', '', '', '2017-09-27 12:18:25', '2017-09-27 09:18:25', '', 57, 'http://127.0.0.1/broker/?post_type=acf-field&#038;p=132', 0, 'acf-field', '', 0),
(133, 1, '2017-09-26 14:18:55', '2017-09-26 11:18:55', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'קוביה ימנית', '', 'publish', 'closed', 'closed', '', 'field_59ca357a071fa', '', '', '2017-09-26 14:52:19', '2017-09-26 11:52:19', '', 132, 'http://127.0.0.1/broker/?post_type=acf-field&#038;p=133', 0, 'acf-field', '', 0),
(135, 1, '2017-09-26 14:19:32', '2017-09-26 11:19:32', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:51:"נא להזין כותרת עבור קוביה זו";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'כותרת', 'cube_title_1', 'publish', 'closed', 'closed', '', 'field_59ca34b07dc3f', '', '', '2017-09-26 14:19:32', '2017-09-26 11:19:32', '', 119, 'http://127.0.0.1/broker/?post_type=acf-field&p=135', 0, 'acf-field', '', 0),
(157, 1, '2017-09-26 14:54:30', '2017-09-26 11:54:30', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:94:"נא להדביק את הקישור אליו אתם מעוניינים שהקישור יפנה";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'קישור', 'cube_link_2', 'publish', 'closed', 'closed', '', 'field_59ca3f8fb348b', '', '', '2017-09-26 15:08:10', '2017-09-26 12:08:10', '', 132, 'http://127.0.0.1/broker/?post_type=acf-field&#038;p=157', 7, 'acf-field', '', 0),
(155, 1, '2017-09-26 14:54:30', '2017-09-26 11:54:30', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:38:"נא להזין ,תיאור קישור";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'תיאור קישור', 'cube_desc_1', 'publish', 'closed', 'closed', '', 'field_59ca3fbab348c', '', '', '2017-09-26 15:08:10', '2017-09-26 12:08:10', '', 132, 'http://127.0.0.1/broker/?post_type=acf-field&#038;p=155', 2, 'acf-field', '', 0),
(167, 1, '2017-09-26 15:13:41', '2017-09-26 12:13:41', 'a:7:{s:4:"type";s:5:"group";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:5:"block";s:10:"sub_fields";a:0:{}}', 'אודותנו', 'about', 'publish', 'closed', 'closed', '', 'field_59ca43bd28637', '', '', '2017-09-27 09:29:15', '2017-09-27 06:29:15', '', 57, 'http://127.0.0.1/broker/?post_type=acf-field&#038;p=167', 1, 'acf-field', '', 0),
(165, 1, '2017-09-26 15:08:10', '2017-09-26 12:08:10', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'קוביה אמצעית', '_העתק', 'publish', 'closed', 'closed', '', 'field_59ca429ba5c48', '', '', '2017-09-26 15:08:10', '2017-09-26 12:08:10', '', 132, 'http://127.0.0.1/broker/?post_type=acf-field&p=165', 4, 'acf-field', '', 0),
(166, 1, '2017-09-26 15:08:10', '2017-09-26 12:08:10', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'קוביה שמאלית', '_העתק', 'publish', 'closed', 'closed', '', 'field_59ca42bca5c49', '', '', '2017-09-26 15:08:10', '2017-09-26 12:08:10', '', 132, 'http://127.0.0.1/broker/?post_type=acf-field&p=166', 8, 'acf-field', '', 0),
(170, 1, '2017-09-26 15:54:55', '2017-09-26 12:54:55', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:89:"נא להזין את הטקסט עבור הכפתור שמוביל לדף אודותנו.";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";i:1500;}', 'טקסט כפתור', 'about_text_button', 'publish', 'closed', 'closed', '', 'field_59ca4e0e2e221', '', '', '2017-09-26 15:54:55', '2017-09-26 12:54:55', '', 167, 'http://davdev.co.il/broker-stage/?post_type=acf-field&p=170', 2, 'acf-field', '', 0),
(171, 1, '2017-09-26 15:54:55', '2017-09-26 12:54:55', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:93:"נא להדביק את הקישור עבור הכפתור שמוביל לדף אודותנו.";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'קשיור כפתור', 'about_link_button', 'publish', 'closed', 'closed', '', 'field_59ca4e432e222', '', '', '2017-09-26 15:54:55', '2017-09-26 12:54:55', '', 167, 'http://davdev.co.il/broker-stage/?post_type=acf-field&p=171', 3, 'acf-field', '', 0),
(172, 1, '2017-09-27 09:13:56', '2017-09-27 06:13:56', 'a:11:{s:4:"type";s:11:"post_object";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"post_type";a:1:{i:0;s:8:"property";}s:8:"taxonomy";a:0:{}s:10:"allow_null";i:0;s:8:"multiple";i:1;s:13:"return_format";s:6:"object";s:2:"ui";i:1;}', 'בחירת נכסים לסליידר', 'front_prop_slider', 'publish', 'closed', 'closed', '', 'field_59cb4155e5f3b', '', '', '2017-10-01 11:49:16', '2017-10-01 08:49:16', '', 57, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=172', 3, 'acf-field', '', 0),
(174, 1, '2017-09-29 18:31:38', '2017-09-29 15:31:38', '', 'redheadfam', '', 'inherit', 'open', 'closed', '', 'redheadfam-2', '', '', '2017-09-29 18:31:38', '2017-09-29 15:31:38', '', 0, 'http://davdev.co.il/broker-stage/wp-content/uploads/2017/09/redheadfam.jpg', 0, 'attachment', 'image/jpeg', 0),
(175, 1, '2017-10-01 09:08:26', '2017-10-01 06:08:26', 'home-elev', 'home-elev', 'home-elev', 'inherit', 'open', 'closed', '', 'home-elev', '', '', '2017-10-01 09:08:35', '2017-10-01 06:08:35', '', 0, 'http://davdev.co.il/broker-stage/wp-content/uploads/2017/10/home-elev.png', 0, 'attachment', 'image/png', 0),
(176, 1, '2017-10-01 09:58:33', '2017-10-01 06:58:33', '', 'icon-11', '', 'inherit', 'open', 'closed', '', 'icon-11', '', '', '2017-10-01 09:58:33', '2017-10-01 06:58:33', '', 0, 'http://davdev.co.il/broker-stage/wp-content/uploads/2017/10/icon-11.png', 0, 'attachment', 'image/png', 0),
(178, 1, '2017-10-01 10:51:38', '2017-10-01 07:51:38', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:4:"left";s:8:"endpoint";i:0;}', 'אייקון ראשון', 'אייקון_ראשון', 'publish', 'closed', 'closed', '', 'field_59d0973766a60', '', '', '2017-10-01 11:00:25', '2017-10-01 08:00:25', '', 177, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=178', 1, 'acf-field', '', 0),
(179, 1, '2017-10-01 10:51:38', '2017-10-01 07:51:38', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:136:"להעלות את התמונה של האייקון הראשון (על התמונה להיות בפורמט png בגודל 158px * 158px)";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'תמונה', 'tool_box_img_1', 'publish', 'closed', 'closed', '', 'field_59d09ac466a61', '', '', '2017-10-01 11:31:31', '2017-10-01 08:31:31', '', 177, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=179', 2, 'acf-field', '', 0),
(180, 1, '2017-10-01 10:51:38', '2017-10-01 07:51:38', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:34:"טקסט בשורה הראשונה";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'טקסט - שורה ראשונה', 'tool_box_1_line_1', 'publish', 'closed', 'closed', '', 'field_59d09d9266a62', '', '', '2017-10-01 11:00:25', '2017-10-01 08:00:25', '', 177, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=180', 3, 'acf-field', '', 0),
(181, 1, '2017-10-01 10:51:38', '2017-10-01 07:51:38', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:32:"טקסט בשורה השנייה";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'טקסט - שורה שנייה', 'tool_box_1_line_2', 'publish', 'closed', 'closed', '', 'field_59d09df866a63', '', '', '2017-10-01 11:00:25', '2017-10-01 08:00:25', '', 177, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=181', 4, 'acf-field', '', 0),
(182, 1, '2017-10-01 10:51:38', '2017-10-01 07:51:38', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:68:"נא להדביק את הקישור אליו יוביל הכפתור";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'קישור', 'tool_box_1_link', 'publish', 'closed', 'closed', '', 'field_59d09e1166a64', '', '', '2017-10-01 11:00:25', '2017-10-01 08:00:25', '', 177, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=182', 5, 'acf-field', '', 0),
(183, 1, '2017-10-01 10:51:38', '2017-10-01 07:51:38', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:4:"left";s:8:"endpoint";i:0;}', 'אייקון שנייה', '_העתק', 'publish', 'closed', 'closed', '', 'field_59d09e6766a65', '', '', '2017-10-01 11:00:25', '2017-10-01 08:00:25', '', 177, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=183', 6, 'acf-field', '', 0),
(184, 1, '2017-10-01 10:51:38', '2017-10-01 07:51:38', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:132:"להעלות את התמונה של האייקון השני (על התמונה להיות בפורמט png בגודל 158px * 158px)";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'תמונה', 'tool_box_img_2', 'publish', 'closed', 'closed', '', 'field_59d09e8066a66', '', '', '2017-10-01 11:34:04', '2017-10-01 08:34:04', '', 177, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=184', 7, 'acf-field', '', 0),
(185, 1, '2017-10-01 10:51:38', '2017-10-01 07:51:38', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:34:"טקסט בשורה הראשונה";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'טקסט - שורה ראשונה', 'tool_box_2_line_1', 'publish', 'closed', 'closed', '', 'field_59d09ea366a67', '', '', '2017-10-01 11:00:25', '2017-10-01 08:00:25', '', 177, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=185', 8, 'acf-field', '', 0),
(186, 1, '2017-10-01 10:51:38', '2017-10-01 07:51:38', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:32:"טקסט בשורה השנייה";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'טקסט - שורה שנייה', 'tool_box_2_line_2', 'publish', 'closed', 'closed', '', 'field_59d09eb966a68', '', '', '2017-10-01 11:00:25', '2017-10-01 08:00:25', '', 177, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=186', 9, 'acf-field', '', 0),
(187, 1, '2017-10-01 10:51:38', '2017-10-01 07:51:38', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:68:"נא להדביק את הקישור אליו יוביל הכפתור";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'קישור', 'tool_box_2_link', 'publish', 'closed', 'closed', '', 'field_59d09eca66a69', '', '', '2017-10-01 11:00:25', '2017-10-01 08:00:25', '', 177, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=187', 10, 'acf-field', '', 0),
(188, 1, '2017-10-01 10:58:51', '2017-10-01 07:58:51', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:4:"left";s:8:"endpoint";i:0;}', 'אייקון שלישי', '_העתק', 'publish', 'closed', 'closed', '', 'field_59d09f1bc734f', '', '', '2017-10-01 11:00:25', '2017-10-01 08:00:25', '', 177, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=188', 11, 'acf-field', '', 0),
(189, 1, '2017-10-01 10:58:51', '2017-10-01 07:58:51', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:132:"להעלות את התמונה של האייקון השני (על התמונה להיות בפורמט png בגודל 158px * 158px)";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'תמונה', 'tool_box_img_3', 'publish', 'closed', 'closed', '', 'field_59d09f2cc7350', '', '', '2017-10-01 11:34:04', '2017-10-01 08:34:04', '', 177, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=189', 12, 'acf-field', '', 0),
(190, 1, '2017-10-01 10:58:51', '2017-10-01 07:58:51', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:34:"טקסט בשורה הראשונה";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'טקסט - שורה ראשונה', 'tool_box_3_line_1', 'publish', 'closed', 'closed', '', 'field_59d09f42c7351', '', '', '2017-10-01 11:00:25', '2017-10-01 08:00:25', '', 177, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=190', 13, 'acf-field', '', 0),
(191, 1, '2017-10-01 10:58:51', '2017-10-01 07:58:51', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:32:"טקסט בשורה השנייה";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'טקסט - שורה שנייה', 'tool_box_3_line_2', 'publish', 'closed', 'closed', '', 'field_59d09f51c7352', '', '', '2017-10-01 11:00:25', '2017-10-01 08:00:25', '', 177, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=191', 14, 'acf-field', '', 0),
(192, 1, '2017-10-01 10:58:51', '2017-10-01 07:58:51', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:68:"נא להדביק את הקישור אליו יוביל הכפתור";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'קישור', 'tool_box_3_link', 'publish', 'closed', 'closed', '', 'field_59d09f6cc7353', '', '', '2017-10-01 11:00:25', '2017-10-01 08:00:25', '', 177, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=192', 15, 'acf-field', '', 0),
(193, 1, '2017-10-01 10:58:51', '2017-10-01 07:58:51', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:4:"left";s:8:"endpoint";i:0;}', 'אייקון רביעי', '_העתק', 'publish', 'closed', 'closed', '', 'field_59d09fa4c7354', '', '', '2017-10-01 11:00:25', '2017-10-01 08:00:25', '', 177, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=193', 16, 'acf-field', '', 0),
(194, 1, '2017-10-01 10:58:51', '2017-10-01 07:58:51', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:132:"להעלות את התמונה של האייקון השני (על התמונה להיות בפורמט png בגודל 158px * 158px)";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'תמונה', 'tool_box_img_4', 'publish', 'closed', 'closed', '', 'field_59d09fb6c7355', '', '', '2017-10-01 11:34:04', '2017-10-01 08:34:04', '', 177, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=194', 17, 'acf-field', '', 0),
(195, 1, '2017-10-01 10:58:51', '2017-10-01 07:58:51', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:34:"טקסט בשורה הראשונה";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'טקסט - שורה ראשונה', 'tool_box_4_line_1', 'publish', 'closed', 'closed', '', 'field_59d09ff0c7356', '', '', '2017-10-01 11:00:25', '2017-10-01 08:00:25', '', 177, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=195', 18, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(196, 1, '2017-10-01 10:58:51', '2017-10-01 07:58:51', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:32:"טקסט בשורה השנייה";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'טקסט - שורה שנייה', 'tool_box_4_line_2', 'publish', 'closed', 'closed', '', 'field_59d09ffec7357', '', '', '2017-10-01 11:00:25', '2017-10-01 08:00:25', '', 177, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=196', 19, 'acf-field', '', 0),
(197, 1, '2017-10-01 10:58:51', '2017-10-01 07:58:51', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:68:"נא להדביק את הקישור אליו יוביל הכפתור";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'קישור', 'tool_box_4_link', 'publish', 'closed', 'closed', '', 'field_59d0a017c7358', '', '', '2017-10-01 11:00:25', '2017-10-01 08:00:25', '', 177, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=197', 20, 'acf-field', '', 0),
(198, 1, '2017-10-01 10:58:51', '2017-10-01 07:58:51', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:4:"left";s:8:"endpoint";i:0;}', 'אייקון חמישי', '_העתק', 'publish', 'closed', 'closed', '', 'field_59d0a02cc7359', '', '', '2017-10-01 11:00:25', '2017-10-01 08:00:25', '', 177, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=198', 21, 'acf-field', '', 0),
(199, 1, '2017-10-01 10:58:51', '2017-10-01 07:58:51', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:132:"להעלות את התמונה של האייקון השני (על התמונה להיות בפורמט png בגודל 158px * 158px)";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'תמונה', 'tool_box_img_5', 'publish', 'closed', 'closed', '', 'field_59d0a03bc735a', '', '', '2017-10-01 11:34:04', '2017-10-01 08:34:04', '', 177, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=199', 22, 'acf-field', '', 0),
(200, 1, '2017-10-01 10:58:51', '2017-10-01 07:58:51', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:34:"טקסט בשורה הראשונה";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'טקסט - שורה ראשונה', 'tool_box_5_line_1', 'publish', 'closed', 'closed', '', 'field_59d0a04dc735b', '', '', '2017-10-01 11:00:25', '2017-10-01 08:00:25', '', 177, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=200', 23, 'acf-field', '', 0),
(201, 1, '2017-10-01 10:58:51', '2017-10-01 07:58:51', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:32:"טקסט בשורה השנייה";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'טקסט - שורה שנייה', 'tool_box_5_line_2', 'publish', 'closed', 'closed', '', 'field_59d0a060c735c', '', '', '2017-10-01 11:00:25', '2017-10-01 08:00:25', '', 177, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=201', 24, 'acf-field', '', 0),
(202, 1, '2017-10-01 10:58:51', '2017-10-01 07:58:51', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:68:"נא להדביק את הקישור אליו יוביל הכפתור";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'קישור', 'tool_box_5_link', 'publish', 'closed', 'closed', '', 'field_59d0a06dc735d', '', '', '2017-10-01 11:00:25', '2017-10-01 08:00:25', '', 177, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=202', 25, 'acf-field', '', 0),
(203, 1, '2017-10-01 11:00:25', '2017-10-01 08:00:25', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:31:"נא למלא את הכותרת";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'כותרת', 'titlex', 'publish', 'closed', 'closed', '', 'field_59d0a0b13cf02', '', '', '2017-10-01 11:14:39', '2017-10-01 08:14:39', '', 177, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=203', 0, 'acf-field', '', 0),
(204, 1, '2017-10-01 11:49:16', '2017-10-01 08:49:16', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:45:"כותרת עבור קרוסלת הנכסים";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'נכסים חמים-כותרת', 'slider_prop', 'publish', 'closed', 'closed', '', 'field_59d0ac0e77896', '', '', '2017-10-01 11:49:16', '2017-10-01 08:49:16', '', 57, 'http://davdev.co.il/broker-stage/?post_type=acf-field&p=204', 2, 'acf-field', '', 0),
(205, 1, '2017-10-01 12:21:31', '2017-10-01 09:21:31', 'a:7:{s:4:"type";s:5:"group";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:5:"block";s:10:"sub_fields";a:0:{}}', 'לקוחות מספרים- סליידר', 'testimonials', 'publish', 'closed', 'closed', '', 'field_59d0acc9d33d5', '', '', '2017-10-01 12:21:31', '2017-10-01 09:21:31', '', 57, 'http://davdev.co.il/broker-stage/?post_type=acf-field&p=205', 5, 'acf-field', '', 0),
(206, 1, '2017-10-01 12:21:31', '2017-10-01 09:21:31', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'כותרת', 'title', 'publish', 'closed', 'closed', '', 'field_59d0acf0d33d6', '', '', '2017-10-01 12:21:31', '2017-10-01 09:21:31', '', 205, 'http://davdev.co.il/broker-stage/?post_type=acf-field&p=206', 0, 'acf-field', '', 0),
(207, 1, '2017-10-01 12:21:31', '2017-10-01 09:21:31', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:0:"";}', 'לקוחות', 'customers', 'publish', 'closed', 'closed', '', 'field_59d0ad0ad33d7', '', '', '2017-10-01 12:21:31', '2017-10-01 09:21:31', '', 205, 'http://davdev.co.il/broker-stage/?post_type=acf-field&p=207', 1, 'acf-field', '', 0),
(208, 1, '2017-10-01 12:21:31', '2017-10-01 09:21:31', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:47:"נא למלא את תגובה של המשתמש";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:0:"";}', 'טקסט', 'text', 'publish', 'closed', 'closed', '', 'field_59d0b26ed33d8', '', '', '2017-10-01 12:21:31', '2017-10-01 09:21:31', '', 207, 'http://davdev.co.il/broker-stage/?post_type=acf-field&p=208', 0, 'acf-field', '', 0),
(209, 1, '2017-10-01 12:21:31', '2017-10-01 09:21:31', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:52:"נא לנלא את השם של שולח התגובה";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'שם', 'name', 'publish', 'closed', 'closed', '', 'field_59d0b365d33d9', '', '', '2017-10-01 12:21:31', '2017-10-01 09:21:31', '', 207, 'http://davdev.co.il/broker-stage/?post_type=acf-field&p=209', 1, 'acf-field', '', 0),
(210, 1, '2017-10-01 12:21:31', '2017-10-01 09:21:31', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:69:"נא למלא את מקום המגורים של ממלא התגובה";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'מקום מגורים', 'city', 'publish', 'closed', 'closed', '', 'field_59d0b38bd33da', '', '', '2017-10-01 12:21:31', '2017-10-01 09:21:31', '', 207, 'http://davdev.co.il/broker-stage/?post_type=acf-field&p=210', 2, 'acf-field', '', 0),
(211, 1, '2017-10-01 13:54:15', '2017-10-01 10:54:15', 'a:7:{s:4:"type";s:5:"group";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:5:"block";s:10:"sub_fields";a:0:{}}', 'הזירות החברתיות שלנו', 'social', 'publish', 'closed', 'closed', '', 'field_59d0c7771b4fb', '', '', '2017-10-01 13:54:15', '2017-10-01 10:54:15', '', 57, 'http://davdev.co.il/broker-stage/?post_type=acf-field&p=211', 6, 'acf-field', '', 0),
(212, 1, '2017-10-01 13:54:15', '2017-10-01 10:54:15', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:65:"כותרת של אזור "הזירות החברתיות שלנו"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'כותרת', 'title', 'publish', 'closed', 'closed', '', 'field_59d0c91b1b4fc', '', '', '2017-10-01 13:54:15', '2017-10-01 10:54:15', '', 211, 'http://davdev.co.il/broker-stage/?post_type=acf-field&p=212', 0, 'acf-field', '', 0),
(213, 1, '2017-10-01 13:54:15', '2017-10-01 10:54:15', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'תמונה', 'img1', 'publish', 'closed', 'closed', '', 'field_59d0c94a1b4fd', '', '', '2017-10-01 14:06:42', '2017-10-01 11:06:42', '', 211, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=213', 2, 'acf-field', '', 0),
(214, 1, '2017-10-01 13:54:15', '2017-10-01 10:54:15', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'כותרת', 'title1', 'publish', 'closed', 'closed', '', 'field_59d0c9701b4fe', '', '', '2017-10-01 14:06:42', '2017-10-01 11:06:42', '', 211, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=214', 3, 'acf-field', '', 0),
(215, 1, '2017-10-01 13:54:15', '2017-10-01 10:54:15', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'קישור', 'link1', 'publish', 'closed', 'closed', '', 'field_59d0c9841b4ff', '', '', '2017-10-01 14:07:22', '2017-10-01 11:07:22', '', 211, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=215', 4, 'acf-field', '', 0),
(216, 1, '2017-10-01 14:06:42', '2017-10-01 11:06:42', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:4:"left";s:8:"endpoint";i:0;}', 'יוטיוב', 'יוטיוב', 'publish', 'closed', 'closed', '', 'field_59d0cc1641c62', '', '', '2017-10-01 14:06:42', '2017-10-01 11:06:42', '', 211, 'http://davdev.co.il/broker-stage/?post_type=acf-field&p=216', 1, 'acf-field', '', 0),
(217, 1, '2017-10-01 14:06:42', '2017-10-01 11:06:42', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'כותרת', 'title2', 'publish', 'closed', 'closed', '', 'field_59d0cc8941c67', '', '', '2017-10-01 14:07:22', '2017-10-01 11:07:22', '', 211, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=217', 7, 'acf-field', '', 0),
(218, 1, '2017-10-01 14:06:42', '2017-10-01 11:06:42', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'כותרת', 'title3', 'publish', 'closed', 'closed', '', 'field_59d0cc9341c68', '', '', '2017-10-01 14:07:22', '2017-10-01 11:07:22', '', 211, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=218', 11, 'acf-field', '', 0),
(219, 1, '2017-10-01 14:06:42', '2017-10-01 11:06:42', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:4:"left";s:8:"endpoint";i:0;}', 'בלוג', '', 'publish', 'closed', 'closed', '', 'field_59d0cc3341c63', '', '', '2017-10-01 14:07:22', '2017-10-01 11:07:22', '', 211, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=219', 5, 'acf-field', '', 0),
(220, 1, '2017-10-01 14:06:42', '2017-10-01 11:06:42', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'תמונה', 'img2', 'publish', 'closed', 'closed', '', 'field_59d0cc7041c65', '', '', '2017-10-01 14:07:22', '2017-10-01 11:07:22', '', 211, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=220', 6, 'acf-field', '', 0),
(221, 1, '2017-10-01 14:06:42', '2017-10-01 11:06:42', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:4:"left";s:8:"endpoint";i:0;}', 'פיסבוק', '_העתק', 'publish', 'closed', 'closed', '', 'field_59d0cc5c41c64', '', '', '2017-10-01 14:07:22', '2017-10-01 11:07:22', '', 211, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=221', 9, 'acf-field', '', 0),
(222, 1, '2017-10-01 14:06:42', '2017-10-01 11:06:42', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'תמונה', 'img3', 'publish', 'closed', 'closed', '', 'field_59d0cc7841c66', '', '', '2017-10-01 14:07:22', '2017-10-01 11:07:22', '', 211, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=222', 10, 'acf-field', '', 0),
(223, 1, '2017-10-01 14:07:22', '2017-10-01 11:07:22', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'קישור', 'link2', 'publish', 'closed', 'closed', '', 'field_59d0cca7147f9', '', '', '2017-10-01 14:07:22', '2017-10-01 11:07:22', '', 211, 'http://davdev.co.il/broker-stage/?post_type=acf-field&p=223', 8, 'acf-field', '', 0),
(224, 1, '2017-10-01 14:07:22', '2017-10-01 11:07:22', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'קישור', 'link3', 'publish', 'closed', 'closed', '', 'field_59d0ccb0147fa', '', '', '2017-10-01 14:07:22', '2017-10-01 11:07:22', '', 211, 'http://davdev.co.il/broker-stage/?post_type=acf-field&p=224', 12, 'acf-field', '', 0),
(225, 1, '2017-10-01 15:29:38', '2017-10-01 12:29:38', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:56:"נא להזין אתץ שנת הבנייה של הנכס";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";i:4;}', 'שנת בנייה', 'prop_year', 'publish', 'closed', 'closed', '', 'field_59d0d715595c0', '', '', '2017-10-27 10:36:57', '2017-10-27 07:36:57', '', 18, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=225', 14, 'acf-field', '', 0),
(226, 1, '2017-10-01 15:29:38', '2017-10-01 12:29:38', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:36:"יש לציין מה מצב הנכס";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'מצב הנכס', 'prop_condition', 'publish', 'closed', 'closed', '', 'field_59d0d74f595c1', '', '', '2017-10-27 10:36:57', '2017-10-27 07:36:57', '', 18, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=226', 15, 'acf-field', '', 0),
(227, 1, '2017-10-01 15:29:38', '2017-10-01 12:29:38', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:67:"יש לרשום מה הארנונה של הנכס לחודשיים.";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'ארנונה לחודשיים', 'prop_arnona', 'publish', 'closed', 'closed', '', 'field_59d0d781595c2', '', '', '2017-10-27 10:36:57', '2017-10-27 07:36:57', '', 18, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=227', 16, 'acf-field', '', 0),
(228, 1, '2017-10-01 15:29:38', '2017-10-01 12:29:38', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:108:"יש לציין מה הסכום החודשי שישלם הדייר עבור ועד בית במידה ויש.";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'ועד בית', 'prop_vaad', 'publish', 'closed', 'closed', '', 'field_59d0d7af595c3', '', '', '2017-10-27 10:36:57', '2017-10-27 07:36:57', '', 18, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=228', 17, 'acf-field', '', 0),
(229, 1, '2017-10-01 15:29:38', '2017-10-01 12:29:38', 'a:7:{s:4:"type";s:6:"oembed";s:12:"instructions";s:69:"נא להעתיק את כתובת הסרטון מאתר יוטיוב.";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:3:"100";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:5:"width";s:0:"";s:6:"height";s:0:"";}', 'סרטון הנכס', 'prop_video', 'publish', 'closed', 'closed', '', 'field_59d0d7df595c4', '', '', '2017-10-27 10:36:57', '2017-10-27 07:36:57', '', 18, 'http://davdev.co.il/broker-stage/?post_type=acf-field&#038;p=229', 18, 'acf-field', '', 0),
(260, 1, '2017-10-10 16:22:00', '2017-10-10 13:22:00', 'a:13:{s:4:"type";s:6:"select";s:12:"instructions";s:42:"יש לבחור היכן רשום הנכס";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:4:{s:8:"טאבו";s:8:"טאבו";s:19:"חברה משכנת";s:19:"חברה משכנת";s:10:"מינהל";s:10:"מינהל";s:6:"אחר";s:6:"אחר";}s:13:"default_value";a:1:{i:0;s:8:"טאבו";}s:10:"allow_null";i:0;s:8:"multiple";i:0;s:2:"ui";i:1;s:4:"ajax";i:1;s:13:"return_format";s:5:"value";s:11:"placeholder";s:0:"";}', 'רישום הנכס', 'prop_anot', 'publish', 'closed', 'closed', '', 'field_59dcc8df3c851', '', '', '2017-10-27 10:36:58', '2017-10-27 07:36:58', '', 18, 'http://127.0.0.1/broker/?post_type=acf-field&#038;p=260', 20, 'acf-field', '', 0),
(231, 1, '2017-10-07 08:19:04', '2017-10-07 05:19:04', '', 'prop_icon_08', '', 'inherit', 'open', 'closed', '', 'prop_icon_08', '', '', '2017-10-07 08:19:04', '2017-10-07 05:19:04', '', 0, 'http://localhost/broker-stage/wp-content/uploads/2017/10/prop_icon_08-1.png', 0, 'attachment', 'image/png', 0),
(232, 1, '2017-10-07 08:19:05', '2017-10-07 05:19:05', '', 'prop_icon_10', '', 'inherit', 'open', 'closed', '', 'prop_icon_10', '', '', '2017-10-07 08:19:05', '2017-10-07 05:19:05', '', 0, 'http://localhost/broker-stage/wp-content/uploads/2017/10/prop_icon_10-1.png', 0, 'attachment', 'image/png', 0),
(233, 1, '2017-10-07 08:19:05', '2017-10-07 05:19:05', '', 'prop_icon_12', '', 'inherit', 'open', 'closed', '', 'prop_icon_12', '', '', '2017-10-07 08:19:05', '2017-10-07 05:19:05', '', 0, 'http://localhost/broker-stage/wp-content/uploads/2017/10/prop_icon_12-1.png', 0, 'attachment', 'image/png', 0),
(234, 1, '2017-10-07 08:19:06', '2017-10-07 05:19:06', '', 'prop_icon_14', '', 'inherit', 'open', 'closed', '', 'prop_icon_14', '', '', '2017-10-07 08:19:06', '2017-10-07 05:19:06', '', 0, 'http://localhost/broker-stage/wp-content/uploads/2017/10/prop_icon_14-1.png', 0, 'attachment', 'image/png', 0),
(235, 1, '2017-10-07 08:19:07', '2017-10-07 05:19:07', '', 'prop_icon_16', '', 'inherit', 'open', 'closed', '', 'prop_icon_16', '', '', '2017-10-07 08:19:07', '2017-10-07 05:19:07', '', 0, 'http://localhost/broker-stage/wp-content/uploads/2017/10/prop_icon_16-1.png', 0, 'attachment', 'image/png', 0),
(236, 1, '2017-10-07 08:19:08', '2017-10-07 05:19:08', '', 'prop_icon_18', '', 'inherit', 'open', 'closed', '', 'prop_icon_18', '', '', '2017-10-07 08:19:08', '2017-10-07 05:19:08', '', 0, 'http://localhost/broker-stage/wp-content/uploads/2017/10/prop_icon_18-1.png', 0, 'attachment', 'image/png', 0),
(237, 1, '2017-10-07 08:19:09', '2017-10-07 05:19:09', '', 'prop_icon_20', '', 'inherit', 'open', 'closed', '', 'prop_icon_20', '', '', '2017-10-07 08:19:09', '2017-10-07 05:19:09', '', 0, 'http://localhost/broker-stage/wp-content/uploads/2017/10/prop_icon_20-1.png', 0, 'attachment', 'image/png', 0),
(238, 1, '2017-10-07 08:19:09', '2017-10-07 05:19:09', '', 'prop-icon-dis_06', '', 'inherit', 'open', 'closed', '', 'prop-icon-dis_06', '', '', '2017-10-07 08:19:09', '2017-10-07 05:19:09', '', 0, 'http://localhost/broker-stage/wp-content/uploads/2017/10/prop-icon-dis_06-1.png', 0, 'attachment', 'image/png', 0),
(239, 1, '2017-10-07 08:19:10', '2017-10-07 05:19:10', '', 'prop-icon-dis_08', '', 'inherit', 'open', 'closed', '', 'prop-icon-dis_08', '', '', '2017-10-07 08:19:10', '2017-10-07 05:19:10', '', 0, 'http://localhost/broker-stage/wp-content/uploads/2017/10/prop-icon-dis_08-1.png', 0, 'attachment', 'image/png', 0),
(240, 1, '2017-10-07 08:19:11', '2017-10-07 05:19:11', '', 'prop-icon-dis_10', '', 'inherit', 'open', 'closed', '', 'prop-icon-dis_10', '', '', '2017-10-07 08:19:11', '2017-10-07 05:19:11', '', 0, 'http://localhost/broker-stage/wp-content/uploads/2017/10/prop-icon-dis_10-1.png', 0, 'attachment', 'image/png', 0),
(241, 1, '2017-10-07 08:19:12', '2017-10-07 05:19:12', '', 'prop-icon-dis_12', '', 'inherit', 'open', 'closed', '', 'prop-icon-dis_12', '', '', '2017-10-07 08:19:12', '2017-10-07 05:19:12', '', 0, 'http://localhost/broker-stage/wp-content/uploads/2017/10/prop-icon-dis_12-1.png', 0, 'attachment', 'image/png', 0),
(242, 1, '2017-10-07 08:19:13', '2017-10-07 05:19:13', '', 'prop-icon-dis_14', '', 'inherit', 'open', 'closed', '', 'prop-icon-dis_14', '', '', '2017-10-07 08:19:13', '2017-10-07 05:19:13', '', 0, 'http://localhost/broker-stage/wp-content/uploads/2017/10/prop-icon-dis_14-1.png', 0, 'attachment', 'image/png', 0),
(243, 1, '2017-10-07 08:19:14', '2017-10-07 05:19:14', '', 'prop-icon-dis_16', '', 'inherit', 'open', 'closed', '', 'prop-icon-dis_16', '', '', '2017-10-07 08:19:14', '2017-10-07 05:19:14', '', 0, 'http://localhost/broker-stage/wp-content/uploads/2017/10/prop-icon-dis_16-1.png', 0, 'attachment', 'image/png', 0),
(244, 1, '2017-10-07 08:19:15', '2017-10-07 05:19:15', '', 'prop-icon-dis_18', '', 'inherit', 'open', 'closed', '', 'prop-icon-dis_18', '', '', '2017-10-07 08:19:15', '2017-10-07 05:19:15', '', 0, 'http://localhost/broker-stage/wp-content/uploads/2017/10/prop-icon-dis_18-1.png', 0, 'attachment', 'image/png', 0),
(245, 1, '2017-10-07 08:19:16', '2017-10-07 05:19:16', '', 'prop-icon-dis_20', '', 'inherit', 'open', 'closed', '', 'prop-icon-dis_20', '', '', '2017-10-07 08:19:16', '2017-10-07 05:19:16', '', 0, 'http://localhost/broker-stage/wp-content/uploads/2017/10/prop-icon-dis_20-1.png', 0, 'attachment', 'image/png', 0),
(246, 1, '2017-10-07 08:19:16', '2017-10-07 05:19:16', '', 'prop_icon_03', '', 'inherit', 'open', 'closed', '', 'prop_icon_03', '', '', '2017-10-07 08:19:16', '2017-10-07 05:19:16', '', 0, 'http://localhost/broker-stage/wp-content/uploads/2017/10/prop_icon_03-1.png', 0, 'attachment', 'image/png', 0),
(247, 1, '2017-10-07 08:19:17', '2017-10-07 05:19:17', '', 'prop_icon_06', '', 'inherit', 'open', 'closed', '', 'prop_icon_06', '', '', '2017-10-07 08:19:17', '2017-10-07 05:19:17', '', 0, 'http://localhost/broker-stage/wp-content/uploads/2017/10/prop_icon_06-1.png', 0, 'attachment', 'image/png', 0),
(248, 1, '2017-10-07 18:53:55', '2017-10-07 15:53:55', 'a:16:{s:4:"type";s:7:"gallery";s:12:"instructions";s:44:"נא להעלות את תמונות הנכס";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:3:"100";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"insert";s:6:"append";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'גלריית תמונות', 'prop_gallery', 'publish', 'closed', 'closed', '', 'field_59d8f8086351b', '', '', '2017-10-27 10:36:58', '2017-10-27 07:36:58', '', 18, 'http://localhost/broker-stage/?post_type=acf-field&#038;p=248', 19, 'acf-field', '', 0),
(249, 1, '2017-10-07 19:02:32', '2017-10-07 16:02:32', '', 'beach-villa-1', '', 'inherit', 'open', 'closed', '', 'beach-villa-1', '', '', '2017-10-07 19:02:45', '2017-10-07 16:02:45', '', 112, 'http://localhost/broker-stage/wp-content/uploads/2017/09/beach-villa-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(250, 1, '2017-10-07 19:02:34', '2017-10-07 16:02:34', '', 'morgan-room-penthouse-bbq-02', '', 'inherit', 'open', 'closed', '', 'morgan-room-penthouse-bbq-02', '', '', '2017-10-07 19:02:34', '2017-10-07 16:02:34', '', 112, 'http://localhost/broker-stage/wp-content/uploads/2017/09/morgan-room-penthouse-bbq-02.jpg', 0, 'attachment', 'image/jpeg', 0),
(251, 1, '2017-10-07 19:02:35', '2017-10-07 16:02:35', '', 'MY001_Penthouse_Dining_Room_ODADA', '', 'inherit', 'open', 'closed', '', 'my001_penthouse_dining_room_odada', '', '', '2017-10-07 19:02:35', '2017-10-07 16:02:35', '', 112, 'http://localhost/broker-stage/wp-content/uploads/2017/09/MY001_Penthouse_Dining_Room_ODADA.jpg', 0, 'attachment', 'image/jpeg', 0),
(252, 1, '2017-10-07 19:02:37', '2017-10-07 16:02:37', '', 'Penthouse-1', '', 'inherit', 'open', 'closed', '', 'penthouse-1', '', '', '2017-10-07 19:02:37', '2017-10-07 16:02:37', '', 112, 'http://localhost/broker-stage/wp-content/uploads/2017/09/Penthouse-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(253, 1, '2017-10-07 19:02:39', '2017-10-07 16:02:39', '', 'villa-cruz-1', '', 'inherit', 'open', 'closed', '', 'villa-cruz-1', '', '', '2017-10-07 19:02:39', '2017-10-07 16:02:39', '', 112, 'http://localhost/broker-stage/wp-content/uploads/2017/09/villa-cruz-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(254, 1, '2017-10-09 20:21:49', '2017-10-09 17:21:49', '', 'beach-villa-1', '', 'inherit', 'open', 'closed', '', 'beach-villa-1-2', '', '', '2017-10-09 20:21:49', '2017-10-09 17:21:49', '', 112, 'http://127.0.0.1/broker/wp-content/uploads/2017/09/beach-villa-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(255, 1, '2017-10-09 20:21:52', '2017-10-09 17:21:52', '', 'morgan-room-penthouse-bbq-02', '', 'inherit', 'open', 'closed', '', 'morgan-room-penthouse-bbq-02-2', '', '', '2017-10-09 20:21:52', '2017-10-09 17:21:52', '', 112, 'http://127.0.0.1/broker/wp-content/uploads/2017/09/morgan-room-penthouse-bbq-02.jpg', 0, 'attachment', 'image/jpeg', 0),
(256, 1, '2017-10-09 20:21:54', '2017-10-09 17:21:54', '', 'MY001_Penthouse_Dining_Room_ODADA', '', 'inherit', 'open', 'closed', '', 'my001_penthouse_dining_room_odada-2', '', '', '2017-10-09 20:21:54', '2017-10-09 17:21:54', '', 112, 'http://127.0.0.1/broker/wp-content/uploads/2017/09/MY001_Penthouse_Dining_Room_ODADA.jpg', 0, 'attachment', 'image/jpeg', 0),
(257, 1, '2017-10-09 20:21:56', '2017-10-09 17:21:56', '', 'Penthouse-1', '', 'inherit', 'open', 'closed', '', 'penthouse-1-2', '', '', '2017-10-09 20:22:01', '2017-10-09 17:22:01', '', 112, 'http://127.0.0.1/broker/wp-content/uploads/2017/09/Penthouse-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(258, 1, '2017-10-09 20:21:58', '2017-10-09 17:21:58', '', 'villa-cruz-1', '', 'inherit', 'open', 'closed', '', 'villa-cruz-1-2', '', '', '2017-10-09 20:21:58', '2017-10-09 17:21:58', '', 112, 'http://127.0.0.1/broker/wp-content/uploads/2017/09/villa-cruz-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(261, 1, '2017-10-10 17:37:04', '2017-10-10 14:37:04', 'broker-tag', 'broker-tag', 'broker-tag', 'inherit', 'open', 'closed', '', 'broker-tag', '', '', '2017-10-10 17:37:12', '2017-10-10 14:37:12', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/10/broker-tag.jpg', 0, 'attachment', 'image/jpeg', 0),
(440, 1, '2017-11-04 10:56:14', '2017-11-04 08:56:14', 'קולהע צופעט למרקוח איבן איף, ברומץ כלרשט מיחוצים. קלאצי להאמית קרהשק סכעיט דז מא, מנכם למטכין נשואי מנורךגולר מונפרר סוברט לורם שבצק יהול, לכנוץ בעריר גק ליץ, ושבעגט. ושבעגט ליבם סולגק. בראיט ולחת צורק מונחף, בגורמי מגמש. תרבנך וסתעד לכנו סתשם השמה – לתכי מורגם בורק? לתיג ישבעס.\r\n\r\nלהאמית קרהשק סכעיט דז מא, מנכם למטכין נשואי מנורך. גולר מונפרר סוברט לורם שבצק יהול, לכנוץ בעריר גק ליץ, ושבעגט ליבם סולגק. בראיט ולחת צורק מונחף, בגורמי מגמש. תרבנך וסתעד לכנו סתשם השמה – לתכי מורגם בורק? לתיג ישבעס.\r\n\r\nנולום ארווס סאפיאן – פוסיליס קוויס, אקווזמן קונדימנטום קורוס בליקרה, נונסטי קלובר בריקנה סטום, לפריקך תצטריק לרטי.\r\n\r\nהועניב היושבב שערש שמחויט – שלושע ותלברו חשלו שעותלשך וחאית נובש ערששף. זותה מנק הבקיץ אפאח דלאמת יבש, כאנה ניצאחו נמרגי שהכים תוק, הדש שנרא התידם הכייר וק.\r\n\r\nנולום ארווס סאפיאן – פוסיליס קוויס, אקווזמן קוואזי במר מודוף. אודיפו בלאסטיק מונופץ קליר, בנפת נפקט למסון בלרק – וענוף קולורס מונפרד אדנדום סילקוף, מרגשי ומרגשח. עמחליף קונסקטורר אדיפיסינג אלית. סת אלמנקום ניסי נון ניבאה. דס איאקוליס וולופטה דיאם. וסטיבולום אט דולור, קראס אגת לקטוס וואל אאוגו וסטיבולום סוליסי טידום בעליק. קונדימנטום קורוס בליקרה, נונסטי קלובר בריקנה סטום, לפריקך תצטריק לרטי.\r\n\r\nקוואזי במר מודוף. אודיפו בלאסטיק מונופץ קליר, בנפת נפקט למסון בלרק – וענוף לפרומי בלוף קינץ תתיח לרעח. לת צשחמי צש בליא, מנסוטו צמלח לביקו ננבי, צמוקו בלוקריה שיצמה ברורק.\r\n\r\nקולורס מונפרד אדנדום סילקוף, מרגשי ומרגשח. עמחליף', 'פוסט נוסף', 'לורם איפסום דולור סיט אמט, קונסקטורר אדיפיסינג אלית קולורס מונפרד אדנדום סילקוף, מרגשי ומרגשח. עמחליף נולום ארווס סאפיאן - פוסיליס קוויס, אקווזמן הועניב היושבב שערש שמחויט - שלושע ותלברו חשלו שעותלשך וחאית נובש ערששף. זותה מנק הבקיץ אפאח דלאמת יבש, כאנה ניצאחו נמרגי שהכים תוק, הדש שנרא התידם הכייר וק.', 'publish', 'open', 'open', '', '%d7%a4%d7%95%d7%a1%d7%98-%d7%a0%d7%95%d7%a1%d7%a3', '', '', '2017-11-04 10:56:14', '2017-11-04 08:56:14', '', 0, 'http://127.0.0.1/broker/?p=440', 0, 'post', '', 0),
(274, 1, '2017-10-11 16:46:23', '2017-10-11 13:46:23', '', 'broker-father-and-son', '', 'inherit', 'open', 'closed', '', 'broker-father-and-son-2', '', '', '2017-10-11 16:46:23', '2017-10-11 13:46:23', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/10/broker-father-and-son.jpg', 0, 'attachment', 'image/jpeg', 0),
(310, 1, '2017-10-12 10:14:50', '0000-00-00 00:00:00', '', 'test', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-10-12 10:14:50', '2017-10-12 07:14:50', '', 0, 'http://127.0.0.1/broker/?page_id=310', 0, 'page', '', 0),
(582, 1, '2017-12-11 22:19:54', '0000-00-00 00:00:00', '', 'עוד מאמר', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-11 22:19:54', '2017-12-11 20:19:54', '', 0, 'http://127.0.0.1/broker/?post_type=article&#038;p=582', 0, 'article', '', 0),
(471, 1, '2017-11-17 14:44:01', '2017-11-17 12:44:01', '[pie_register_login]', 'Login', '', 'trash', 'closed', 'closed', '', 'login__trashed', '', '', '2017-11-24 17:45:10', '2017-11-24 15:45:10', '', 0, 'http://davdev.co.il/broker/login/', 0, 'page', '', 0),
(472, 1, '2017-11-17 14:44:01', '2017-11-17 12:44:01', '[pie_register_form id="1" title="true" description="true" ]', 'Registration', '', 'trash', 'closed', 'closed', '', 'registration__trashed', '', '', '2017-11-24 17:45:10', '2017-11-24 15:45:10', '', 0, 'http://davdev.co.il/broker/registration/', 0, 'page', '', 0),
(341, 16, '2017-10-14 12:48:02', '2017-10-14 09:48:02', '', 'בית במשעול הדובדבן', '', 'publish', 'closed', 'closed', '', '341', '', '', '2017-10-22 13:11:43', '2017-10-22 10:11:43', '', 0, 'http://davdev.co.il/broker/?post_type=property&#038;p=341', 0, 'property', '', 0),
(342, 16, '2017-10-14 18:06:22', '2017-10-14 15:06:22', '', 'broker-contact-icon_08', '', 'inherit', 'open', 'closed', '', 'broker-contact-icon_08', '', '', '2017-10-14 18:06:22', '2017-10-14 15:06:22', '', 0, 'http://davdev.co.il/broker/wp-content/uploads/2017/10/broker-contact-icon_08.png', 0, 'attachment', 'image/png', 0),
(343, 16, '2017-10-14 18:06:23', '2017-10-14 15:06:23', '', 'broker-contact-icon_10', '', 'inherit', 'open', 'closed', '', 'broker-contact-icon_10', '', '', '2017-10-14 18:06:23', '2017-10-14 15:06:23', '', 0, 'http://davdev.co.il/broker/wp-content/uploads/2017/10/broker-contact-icon_10.png', 0, 'attachment', 'image/png', 0),
(344, 16, '2017-10-14 18:06:24', '2017-10-14 15:06:24', '', 'broker-contact-icon_12', '', 'inherit', 'open', 'closed', '', 'broker-contact-icon_12', '', '', '2017-10-14 18:06:24', '2017-10-14 15:06:24', '', 0, 'http://davdev.co.il/broker/wp-content/uploads/2017/10/broker-contact-icon_12.png', 0, 'attachment', 'image/png', 0),
(345, 16, '2017-10-14 18:06:25', '2017-10-14 15:06:25', '', 'broker-contact-icon_14', '', 'inherit', 'open', 'closed', '', 'broker-contact-icon_14', '', '', '2017-10-14 18:06:25', '2017-10-14 15:06:25', '', 0, 'http://davdev.co.il/broker/wp-content/uploads/2017/10/broker-contact-icon_14.png', 0, 'attachment', 'image/png', 0),
(346, 16, '2017-10-14 18:06:26', '2017-10-14 15:06:26', '', 'broker-contact-icon_16', '', 'inherit', 'open', 'closed', '', 'broker-contact-icon_16', '', '', '2017-10-14 18:06:26', '2017-10-14 15:06:26', '', 0, 'http://davdev.co.il/broker/wp-content/uploads/2017/10/broker-contact-icon_16.png', 0, 'attachment', 'image/png', 0),
(347, 16, '2017-10-14 18:06:27', '2017-10-14 15:06:27', '', 'broker-contact-icon_03', '', 'inherit', 'open', 'closed', '', 'broker-contact-icon_03', '', '', '2017-10-14 18:06:27', '2017-10-14 15:06:27', '', 0, 'http://davdev.co.il/broker/wp-content/uploads/2017/10/broker-contact-icon_03.png', 0, 'attachment', 'image/png', 0),
(348, 16, '2017-10-14 18:06:28', '2017-10-14 15:06:28', '', 'broker-contact-icon_06', '', 'inherit', 'open', 'closed', '', 'broker-contact-icon_06', '', '', '2017-10-14 18:06:28', '2017-10-14 15:06:28', '', 0, 'http://davdev.co.il/broker/wp-content/uploads/2017/10/broker-contact-icon_06.png', 0, 'attachment', 'image/png', 0),
(349, 1, '2017-10-16 08:34:53', '2017-10-16 05:34:53', '', '', '', 'publish', 'closed', 'closed', '', '349', '', '', '2017-10-16 08:34:53', '2017-10-16 05:34:53', '', 0, 'http://davdev.co.il/broker/?mt_pp=349', 0, 'mt_pp', '', 0),
(350, 16, '2017-10-16 08:37:12', '2017-10-16 05:37:12', '', '', '', 'publish', 'closed', 'closed', '', '350', '', '', '2017-10-16 08:37:12', '2017-10-16 05:37:12', '', 0, 'http://davdev.co.il/broker/?mt_pp=350', 0, 'mt_pp', '', 0),
(353, 1, '2017-10-16 08:44:09', '2017-10-16 05:44:09', '<p dir="ltr"><b>[pie_register_profile]</b></p>', 'עמוד משתמש', '', 'publish', 'closed', 'closed', '', 'broker-profile', '', '', '2017-11-19 18:50:01', '2017-11-19 16:50:01', '', 0, 'http://davdev.co.il/broker/?page_id=353', 0, 'page', '', 0),
(539, 1, '2017-11-19 18:50:01', '2017-11-19 16:50:01', '<p dir="ltr"><b>[pie_register_profile]</b></p>', 'עמוד משתמש', '', 'inherit', 'closed', 'closed', '', '353-revision-v1', '', '', '2017-11-19 18:50:01', '2017-11-19 16:50:01', '', 353, 'http://127.0.0.1/broker/353-revision-v1/', 0, 'revision', '', 0),
(354, 1, '2017-10-16 08:44:09', '2017-10-16 05:44:09', '', 'עמוד משתמש', '', 'inherit', 'closed', 'closed', '', '353-revision-v1', '', '', '2017-10-16 08:44:09', '2017-10-16 05:44:09', '', 353, 'http://davdev.co.il/broker/353-revision-v1/', 0, 'revision', '', 0),
(362, 1, '2017-10-16 09:51:57', '2017-10-16 06:51:57', '<p dir="ltr">[user-meta-profile form="register"]</p>', 'עמוד משתמש', '', 'inherit', 'closed', 'closed', '', '353-revision-v1', '', '', '2017-10-16 09:51:57', '2017-10-16 06:51:57', '', 353, 'http://davdev.co.il/broker/353-revision-v1/', 0, 'revision', '', 0),
(363, 16, '2017-10-16 10:11:28', '2017-10-16 07:11:28', '', 'הדרדרים 5 תל אביב.', '', 'publish', 'closed', 'closed', '', '%d7%94%d7%93%d7%a8%d7%93%d7%a8%d7%99%d7%9d-5-%d7%aa%d7%9c-%d7%90%d7%91%d7%99%d7%91', '', '', '2017-12-17 10:09:21', '2017-12-17 08:09:21', '', 0, 'http://davdev.co.il/broker/?post_type=property&#038;p=363', 0, 'property', '', 0),
(364, 16, '2017-10-16 10:11:01', '2017-10-16 07:11:01', '', 'banner6', '', 'inherit', 'open', 'closed', '', 'banner6', '', '', '2017-10-16 10:11:08', '2017-10-16 07:11:08', '', 363, 'http://davdev.co.il/broker/wp-content/uploads/2017/10/banner6.jpg', 0, 'attachment', 'image/jpeg', 0),
(365, 16, '2017-10-16 10:11:02', '2017-10-16 07:11:02', '', 'gallery15', '', 'inherit', 'open', 'closed', '', 'gallery15', '', '', '2017-10-16 10:11:02', '2017-10-16 07:11:02', '', 363, 'http://davdev.co.il/broker/wp-content/uploads/2017/10/gallery15.jpg', 0, 'attachment', 'image/jpeg', 0),
(366, 16, '2017-10-16 10:11:04', '2017-10-16 07:11:04', '', 'images', '', 'inherit', 'open', 'closed', '', 'images', '', '', '2017-10-16 10:11:04', '2017-10-16 07:11:04', '', 363, 'http://davdev.co.il/broker/wp-content/uploads/2017/10/images.jpg', 0, 'attachment', 'image/jpeg', 0),
(367, 16, '2017-10-16 10:11:05', '2017-10-16 07:11:05', '', 'property-connect-home', '', 'inherit', 'open', 'closed', '', 'property-connect-home', '', '', '2017-10-16 10:11:05', '2017-10-16 07:11:05', '', 363, 'http://davdev.co.il/broker/wp-content/uploads/2017/10/property-connect-home.jpg', 0, 'attachment', 'image/jpeg', 0),
(368, 16, '2017-10-16 10:11:07', '2017-10-16 07:11:07', '', 'property-management-img', '', 'inherit', 'open', 'closed', '', 'property-management-img', '', '', '2017-10-16 10:11:07', '2017-10-16 07:11:07', '', 363, 'http://davdev.co.il/broker/wp-content/uploads/2017/10/property-management-img.jpg', 0, 'attachment', 'image/jpeg', 0),
(370, 1, '2017-10-16 15:27:16', '2017-10-16 12:27:16', '[dynamichidden CUSTOM_POST_AUTHOR_EMAIL "custom-post-author-email-shortcode"]\r\n<div class="form-container">\r\n   [text* name-124 placeholder "שם:"]\r\n   [tel* phone-124 placeholder "טלפון:"]  \r\n   [email* email-124 placeholder "מייל:"]\r\n   [textarea* textarea-124 x3 placeholder "הודעה:"]\r\n   [submit "שלחו"]\r\n</div>\n1\nברוקר נדל"ן "[your-subject]"\n[your-name] <davseveloff@gmail.com>\ndavseveloff@gmail.com\nמאת: [your-name] <[your-email]>\r\nנושא: [your-subject]\r\n\r\nתוכן ההודעה:\r\n[your-message]\r\n\r\n-- \r\nאימייל זה נשלח מטופס יצירת קשר ב ברוקר נדל&quot;ן (//localhost:3000/broker)\nReply-To: [email-124]\n\n\n\n1\nברוקר נדל"ן "[your-subject]"\nברוקר נדל"ן <davseveloff@gmail.com>\n[custom-post-author-email-shortcode]\nתוכן ההודעה:\r\n[your-message]\r\n\r\n-- \r\nאימייל זה נשלח מטופס יצירת קשר ב ברוקר נדל&quot;ן (//localhost:3000/broker)\nReply-To: davseveloff@gmail.com\n\n\n\nההודעה נשלחה.\nארעה שגיאה בשליחת ההודעה.\nקיימת שגיאה בשדה אחד או יותר.\nארעה שגיאה בשליחת ההודעה.\nעליך להסכים לתנאים לפני שליחת ההודעה.\nזהו שדה חובה.\nהשדה ארוך מדי.\nהשדה קצר מדי.\nשדה התאריך אינו נכון.\nהתאריך מוקדם מהתאריך המותר.\nהתאריך מאוחר מהתאריך המותר.\nשגיאה לא ידועה בהעלאת הקובץ.\nאין לך הרשאות להעלות קבצים בפורמט זה.\nהקובץ גדול מדי.\nשגיאה בהעלאת הקובץ.\nפורמט המספר אינו תקין.\nהמספר קטן מהמינימום המותר.\nהמספר גדול מהמקסימום המותר.\nהתשובה לשאלת הביטחון אינה נכונה.\nהקוד שהזנת שגוי.\nכתובת האימייל שהוזנה אינה תקינה.\nהקישור אינו תקין.\nמספר הטלפון אינו תקין.', 'broker cf', '', 'publish', 'closed', 'closed', '', 'broker-cf', '', '', '2017-10-17 11:53:20', '2017-10-17 08:53:20', '', 0, 'http://127.0.0.1/broker/?post_type=wpcf7_contact_form&#038;p=370', 0, 'wpcf7_contact_form', '', 0),
(373, 1, '2017-10-27 10:34:54', '2017-10-27 07:34:54', 'a:13:{s:4:"type";s:6:"select";s:12:"instructions";s:55:"נא לבחור את האזור בו שוכן הנכס.";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:66:{s:8:"צפון";s:8:"צפון";s:23:"חיפה והסביבה";s:23:"חיפה והסביבה";s:25:"קריות והסביבה";s:25:"קריות והסביבה";s:34:"עכו - נהריה והסביבה";s:34:"עכו - נהריה והסביבה";s:19:"גליל עליון";s:19:"גליל עליון";s:25:"הכנרת והסביבה";s:25:"הכנרת והסביבה";s:27:"כרמיאל והסביבה";s:27:"כרמיאל והסביבה";s:36:"נצרת - שפרעם והסביבה";s:36:"נצרת - שפרעם והסביבה";s:26:"ראש פינה החולה";s:26:"ראש פינה החולה";s:19:"גליל תחתון";s:19:"גליל תחתון";s:10:"הגולן";s:10:"הגולן";s:32:"חדרה זכרון ועמקים";s:32:"חדרה זכרון ועמקים";s:30:"זכרון וחוף הכרמל";s:30:"זכרון וחוף הכרמל";s:23:"חדרה והסביבה";s:23:"חדרה והסביבה";s:27:"קיסריה והסביבה";s:27:"קיסריה והסביבה";s:36:"יקנעם טבעון והסביבה";s:36:"יקנעם טבעון והסביבה";s:20:"עמק בית שאן";s:20:"עמק בית שאן";s:25:"עפולה והעמקים";s:25:"עפולה והעמקים";s:15:"רמת מנשה";s:15:"רמת מנשה";s:10:"השרון";s:10:"השרון";s:25:"נתניה והסביבה";s:25:"נתניה והסביבה";s:32:"רמת השרון - הרצליה";s:32:"רמת השרון - הרצליה";s:26:"רעננה - כפר סבא";s:26:"רעננה - כפר סבא";s:32:"הוד השרון והסביבה";s:32:"הוד השרון והסביבה";s:19:"דרום השרון";s:19:"דרום השרון";s:19:"צפון השרון";s:19:"צפון השרון";s:8:"מרכז";s:8:"מרכז";s:13:"תל אביב";s:13:"תל אביב";s:24:"תל אביב - מרכז";s:24:"תל אביב - מרכז";s:24:"תל אביב - צפון";s:24:"תל אביב - צפון";s:24:"תל אביב - דרום";s:24:"תל אביב - דרום";s:24:"תל אביב - מזרח";s:24:"תל אביב - מזרח";s:36:"ראשון לציון והסביבה";s:36:"ראשון לציון והסביבה";s:22:"חולון - בת ים";s:22:"חולון - בת ים";s:28:"רמת גן - גבעתיים";s:28:"רמת גן - גבעתיים";s:32:"פתח תקווה והסביבה";s:32:"פתח תקווה והסביבה";s:30:"ראש העין והסביבה";s:30:"ראש העין והסביבה";s:17:"בקעת אונו";s:17:"בקעת אונו";s:17:"רמלה - לוד";s:17:"רמלה - לוד";s:35:"בני ברק - גבעת שמואל";s:35:"בני ברק - גבעת שמואל";s:19:"עמק איילון";s:19:"עמק איילון";s:23:"שוהם והסביבה";s:23:"שוהם והסביבה";s:29:"מודיעין והסביבה";s:29:"מודיעין והסביבה";s:23:"אזור ירושלים";s:23:"אזור ירושלים";s:14:"ירושלים";s:14:"ירושלים";s:28:"בית שמש והסביבה";s:28:"בית שמש והסביבה";s:45:"הרי יהודה - מבשרת והסביבה";s:45:"הרי יהודה - מבשרת והסביבה";s:36:"מעלה אדומים והסביבה";s:36:"מעלה אדומים והסביבה";s:45:"יהודה שומרון ובקעת הירדן";s:45:"יהודה שומרון ובקעת הירדן";s:26:"ישובי דרום ההר";s:26:"ישובי דרום ההר";s:23:"ישובי שומרון";s:23:"ישובי שומרון";s:17:"גוש עציון";s:17:"גוש עציון";s:44:"בקעת הירדן וצפון ים המלח";s:44:"בקעת הירדן וצפון ים המלח";s:34:"אריאל וישובי יהודה";s:34:"אריאל וישובי יהודה";s:37:"שפלה מישור חוף דרומי";s:37:"שפלה מישור חוף דרומי";s:30:"נס ציונה - רחובות";s:30:"נס ציונה - רחובות";s:40:"אשדוד - אשקלון והסביבה";s:40:"אשדוד - אשקלון והסביבה";s:34:"גדרה - יבנה והסביבה";s:34:"גדרה - יבנה והסביבה";s:28:"קרית גת והסביבה";s:28:"קרית גת והסביבה";s:8:"שפלה";s:8:"שפלה";s:8:"דרום";s:8:"דרום";s:28:"באר שבע והסביבה";s:28:"באר שבע והסביבה";s:19:"אילת וערבה";s:19:"אילת וערבה";s:19:"ישובי הנגב";s:19:"ישובי הנגב";s:21:"הנגב המערבי";s:21:"הנגב המערבי";s:22:"דרום ים המלח";s:22:"דרום ים המלח";}s:13:"default_value";a:0:{}s:10:"allow_null";i:1;s:8:"multiple";i:0;s:2:"ui";i:1;s:4:"ajax";i:1;s:13:"return_format";s:5:"value";s:11:"placeholder";s:0:"";}', 'אזור הנכס', 'prop_area', 'publish', 'closed', 'closed', '', 'field_59f2dfc922689', '', '', '2017-10-27 10:36:57', '2017-10-27 07:36:57', '', 18, 'http://127.0.0.1/broker/?post_type=acf-field&#038;p=373', 4, 'acf-field', '', 0),
(375, 1, '2017-10-27 11:48:24', '2017-10-27 08:48:24', '', 'פרופיל ברוקר', '', 'publish', 'closed', 'closed', '', 'main', '', '', '2017-12-09 19:35:32', '2017-12-09 17:35:32', '', 0, 'http://127.0.0.1/broker/?page_id=375', 0, 'page', '', 0),
(570, 1, '2017-12-09 19:34:22', '2017-12-09 17:34:22', '', 'userpage', '', 'inherit', 'closed', 'closed', '', '375-revision-v1', '', '', '2017-12-09 19:34:22', '2017-12-09 17:34:22', '', 375, 'http://127.0.0.1/broker/375-revision-v1/', 0, 'revision', '', 0),
(376, 1, '2017-10-27 11:48:24', '2017-10-27 08:48:24', '', 'עמוד ברוקר', '', 'inherit', 'closed', 'closed', '', '375-revision-v1', '', '', '2017-10-27 11:48:24', '2017-10-27 08:48:24', '', 375, 'http://127.0.0.1/broker/375-revision-v1/', 0, 'revision', '', 0),
(377, 1, '2017-10-27 12:05:48', '2017-10-27 09:05:48', '[userlist role="author"]', 'תוצאות חיפוש ברוקרים', '', 'publish', 'closed', 'closed', '', '%d7%aa%d7%95%d7%a6%d7%90%d7%95%d7%aa-%d7%97%d7%99%d7%a4%d7%95%d7%a9-%d7%91%d7%a8%d7%95%d7%a7%d7%a8%d7%99%d7%9d', '', '', '2017-10-27 13:24:42', '2017-10-27 10:24:42', '', 0, 'http://127.0.0.1/broker/?page_id=377', 0, 'page', '', 0),
(378, 1, '2017-10-27 12:05:48', '2017-10-27 09:05:48', '', 'תוצאות חיפוש בקורקים', '', 'inherit', 'closed', 'closed', '', '377-revision-v1', '', '', '2017-10-27 12:05:48', '2017-10-27 09:05:48', '', 377, 'http://127.0.0.1/broker/377-revision-v1/', 0, 'revision', '', 0),
(379, 1, '2017-10-27 12:16:54', '2017-10-27 09:16:54', '[userlisting role="author" number="15"]', 'תוצאות חיפוש ברוקרים', '', 'inherit', 'closed', 'closed', '', '377-revision-v1', '', '', '2017-10-27 12:16:54', '2017-10-27 09:16:54', '', 377, 'http://127.0.0.1/broker/377-revision-v1/', 0, 'revision', '', 0),
(381, 1, '2017-10-27 12:21:05', '2017-10-27 09:21:05', '[userlist role="author" number="5"]', 'תוצאות חיפוש ברוקרים', '', 'inherit', 'closed', 'closed', '', '377-revision-v1', '', '', '2017-10-27 12:21:05', '2017-10-27 09:21:05', '', 377, 'http://127.0.0.1/broker/377-revision-v1/', 0, 'revision', '', 0),
(380, 1, '2017-10-27 12:20:56', '2017-10-27 09:20:56', '<pre><code>[userlist role="author" number="5"]</code></pre>', 'תוצאות חיפוש ברוקרים', '', 'inherit', 'closed', 'closed', '', '377-revision-v1', '', '', '2017-10-27 12:20:56', '2017-10-27 09:20:56', '', 377, 'http://127.0.0.1/broker/377-revision-v1/', 0, 'revision', '', 0),
(382, 1, '2017-10-27 12:22:02', '2017-10-27 09:22:02', '[userlist]', 'תוצאות חיפוש ברוקרים', '', 'inherit', 'closed', 'closed', '', '377-revision-v1', '', '', '2017-10-27 12:22:02', '2017-10-27 09:22:02', '', 377, 'http://127.0.0.1/broker/377-revision-v1/', 0, 'revision', '', 0),
(383, 1, '2017-10-27 12:45:48', '2017-10-27 09:45:48', '<p style="direction: ltr;">[userlist role="aut"]</p>', 'תוצאות חיפוש ברוקרים', '', 'inherit', 'closed', 'closed', '', '377-autosave-v1', '', '', '2017-10-27 12:45:48', '2017-10-27 09:45:48', '', 377, 'http://127.0.0.1/broker/377-autosave-v1/', 0, 'revision', '', 0),
(385, 1, '2017-10-27 13:24:16', '2017-10-27 10:24:16', '[userlist role="author"]', 'תוצאות חיפוש ברוקרים', '', 'inherit', 'closed', 'closed', '', '377-revision-v1', '', '', '2017-10-27 13:24:16', '2017-10-27 10:24:16', '', 377, 'http://127.0.0.1/broker/377-revision-v1/', 0, 'revision', '', 0),
(384, 1, '2017-10-27 12:45:52', '2017-10-27 09:45:52', '<p style="direction: ltr;">[userlist role="author"]</p>', 'תוצאות חיפוש ברוקרים', '', 'inherit', 'closed', 'closed', '', '377-revision-v1', '', '', '2017-10-27 12:45:52', '2017-10-27 09:45:52', '', 377, 'http://127.0.0.1/broker/377-revision-v1/', 0, 'revision', '', 0),
(386, 1, '2017-10-27 15:10:46', '2017-10-27 12:10:46', '', 'פרופיל ברוקר', '', 'inherit', 'closed', 'closed', '', '375-revision-v1', '', '', '2017-10-27 15:10:46', '2017-10-27 12:10:46', '', 375, 'http://127.0.0.1/broker/375-revision-v1/', 0, 'revision', '', 0),
(389, 1, '2017-10-28 17:45:42', '2017-10-28 14:45:42', '<p dir="ltr">[user-meta-profile form="register"]</p>\r\n\r\n<div style="direction: ltr;"></div>', 'עמוד משתמש', '', 'inherit', 'closed', 'closed', '', '353-revision-v1', '', '', '2017-10-28 17:45:42', '2017-10-28 14:45:42', '', 353, 'http://127.0.0.1/broker/353-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(388, 1, '2017-10-28 17:44:42', '2017-10-28 14:44:42', '<p dir="ltr">[user-meta-profile form="register"]</p>\r\n<p dir="ltr"></p>\r\n<p dir="ltr"></p>\r\n\r\n<div style="direction: ltr;">[user-meta type=public form="register"]</div>', 'עמוד משתמש', '', 'inherit', 'closed', 'closed', '', '353-revision-v1', '', '', '2017-10-28 17:44:42', '2017-10-28 14:44:42', '', 353, 'http://127.0.0.1/broker/353-revision-v1/', 0, 'revision', '', 0),
(431, 1, '2017-10-30 15:54:10', '2017-10-30 13:54:10', 'ברוכים הבאים לוורדפרס. זה הפוסט הראשון באתר. ניתן למחוק או לערוך אותו, ולהתחיל לכתוב.', 'שלום עולם!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-10-30 15:54:10', '2017-10-30 13:54:10', '', 1, 'http://127.0.0.1/broker/1-revision-v1/', 0, 'revision', '', 0),
(432, 1, '2017-11-03 15:40:34', '2017-11-03 13:40:34', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"user_role";s:8:"operator";s:2:"==";s:5:"value";s:6:"author";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'author fields', 'author-fields', 'publish', 'closed', 'closed', '', 'group_59fc716d6751a', '', '', '2017-11-06 14:05:56', '2017-11-06 12:05:56', '', 0, 'http://127.0.0.1/broker/?post_type=acf-field-group&#038;p=432', 0, 'acf-field-group', '', 0),
(433, 1, '2017-11-03 15:40:34', '2017-11-03 13:40:34', 'a:11:{s:4:"type";s:11:"post_object";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"post_type";a:1:{i:0;s:8:"property";}s:8:"taxonomy";a:0:{}s:10:"allow_null";i:0;s:8:"multiple";i:1;s:13:"return_format";s:6:"object";s:2:"ui";i:1;}', 'בחירת נכסים בדף האישי', 'broker_slider', 'publish', 'closed', 'closed', '', 'field_59fc717999da2', '', '', '2017-11-06 14:05:56', '2017-11-06 12:05:56', '', 432, 'http://127.0.0.1/broker/?post_type=acf-field&#038;p=433', 0, 'acf-field', '', 0),
(437, 1, '2017-11-04 09:23:55', '2017-11-04 07:23:55', 'ברוכים הבאים לוורדפרס. זה הפוסט הראשון באתר. ניתן למחוק או לערוך אותו, ולהתחיל לכתוב.', 'שלום עולם!', 'לורם איפסום דולור סיט אמט, קונסקטורר אדיפיסינג אלית סחטיר בלובק. תצטנפל בלינדו למרקל אס לכימפו, דול, צוט ומעיוט - לפתיעם ברשג - ולתיעם גדדיש. קוויז דומור ליאמום בלינך רוגצה. לפמעט מוסן מנת. קולהע צופעט למרקוח איבן איף, ברומץ כלרשט מיחוצים. קלאצי סחטיר בלובק. תצטנפל בלינדו למרקל אס לכימפו, דול, צוט ומעיוט - לפתיעם ברשג - ולתיעם גדדיש. קוויז דומור ליאמום בלינך רוגצה. לפמעט ', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2017-11-04 09:23:55', '2017-11-04 07:23:55', '', 1, 'http://127.0.0.1/broker/1-autosave-v1/', 0, 'revision', '', 0),
(438, 1, '2017-11-04 09:24:25', '2017-11-04 07:24:25', 'קולהע צופעט למרקוח איבן איף, ברומץ כלרשט מיחוצים. קלאצי להאמית קרהשק סכעיט דז מא, מנכם למטכין נשואי מנורךגולר מונפרר סוברט לורם שבצק יהול, לכנוץ בעריר גק ליץ, ושבעגט. ושבעגט ליבם סולגק. בראיט ולחת צורק מונחף, בגורמי מגמש. תרבנך וסתעד לכנו סתשם השמה - לתכי מורגם בורק? לתיג ישבעס.\r\n\r\nלהאמית קרהשק סכעיט דז מא, מנכם למטכין נשואי מנורך. גולר מונפרר סוברט לורם שבצק יהול, לכנוץ בעריר גק ליץ, ושבעגט ליבם סולגק. בראיט ולחת צורק מונחף, בגורמי מגמש. תרבנך וסתעד לכנו סתשם השמה - לתכי מורגם בורק? לתיג ישבעס.\r\n\r\nנולום ארווס סאפיאן - פוסיליס קוויס, אקווזמן קונדימנטום קורוס בליקרה, נונסטי קלובר בריקנה סטום, לפריקך תצטריק לרטי.\r\n\r\nהועניב היושבב שערש שמחויט - שלושע ותלברו חשלו שעותלשך וחאית נובש ערששף. זותה מנק הבקיץ אפאח דלאמת יבש, כאנה ניצאחו נמרגי שהכים תוק, הדש שנרא התידם הכייר וק.\r\n\r\nנולום ארווס סאפיאן - פוסיליס קוויס, אקווזמן קוואזי במר מודוף. אודיפו בלאסטיק מונופץ קליר, בנפת נפקט למסון בלרק - וענוף קולורס מונפרד אדנדום סילקוף, מרגשי ומרגשח. עמחליף קונסקטורר אדיפיסינג אלית. סת אלמנקום ניסי נון ניבאה. דס איאקוליס וולופטה דיאם. וסטיבולום אט דולור, קראס אגת לקטוס וואל אאוגו וסטיבולום סוליסי טידום בעליק. קונדימנטום קורוס בליקרה, נונסטי קלובר בריקנה סטום, לפריקך תצטריק לרטי.\r\n\r\nקוואזי במר מודוף. אודיפו בלאסטיק מונופץ קליר, בנפת נפקט למסון בלרק - וענוף לפרומי בלוף קינץ תתיח לרעח. לת צשחמי צש בליא, מנסוטו צמלח לביקו ננבי, צמוקו בלוקריה שיצמה ברורק.\r\n\r\nקולורס מונפרד אדנדום סילקוף, מרגשי ומרגשח. עמחליף', 'שלום עולם!', 'לורם איפסום דולור סיט אמט, קונסקטורר אדיפיסינג אלית סחטיר בלובק. תצטנפל בלינדו למרקל אס לכימפו, דול, צוט ומעיוט - לפתיעם ברשג - ולתיעם גדדיש. קוויז דומור ליאמום בלינך רוגצה. לפמעט מוסן מנת. קולהע צופעט למרקוח איבן איף, ברומץ כלרשט מיחוצים. קלאצי סחטיר בלובק. תצטנפל בלינדו למרקל אס לכימפו, דול, צוט ומעיוט - לפתיעם ברשג - ולתיעם גדדיש. קוויז דומור ליאמום בלינך רוגצה. לפמעט ', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-11-04 09:24:25', '2017-11-04 07:24:25', '', 1, 'http://127.0.0.1/broker/1-revision-v1/', 0, 'revision', '', 0),
(441, 1, '2017-11-04 10:56:14', '2017-11-04 08:56:14', 'קולהע צופעט למרקוח איבן איף, ברומץ כלרשט מיחוצים. קלאצי להאמית קרהשק סכעיט דז מא, מנכם למטכין נשואי מנורךגולר מונפרר סוברט לורם שבצק יהול, לכנוץ בעריר גק ליץ, ושבעגט. ושבעגט ליבם סולגק. בראיט ולחת צורק מונחף, בגורמי מגמש. תרבנך וסתעד לכנו סתשם השמה – לתכי מורגם בורק? לתיג ישבעס.\r\n\r\nלהאמית קרהשק סכעיט דז מא, מנכם למטכין נשואי מנורך. גולר מונפרר סוברט לורם שבצק יהול, לכנוץ בעריר גק ליץ, ושבעגט ליבם סולגק. בראיט ולחת צורק מונחף, בגורמי מגמש. תרבנך וסתעד לכנו סתשם השמה – לתכי מורגם בורק? לתיג ישבעס.\r\n\r\nנולום ארווס סאפיאן – פוסיליס קוויס, אקווזמן קונדימנטום קורוס בליקרה, נונסטי קלובר בריקנה סטום, לפריקך תצטריק לרטי.\r\n\r\nהועניב היושבב שערש שמחויט – שלושע ותלברו חשלו שעותלשך וחאית נובש ערששף. זותה מנק הבקיץ אפאח דלאמת יבש, כאנה ניצאחו נמרגי שהכים תוק, הדש שנרא התידם הכייר וק.\r\n\r\nנולום ארווס סאפיאן – פוסיליס קוויס, אקווזמן קוואזי במר מודוף. אודיפו בלאסטיק מונופץ קליר, בנפת נפקט למסון בלרק – וענוף קולורס מונפרד אדנדום סילקוף, מרגשי ומרגשח. עמחליף קונסקטורר אדיפיסינג אלית. סת אלמנקום ניסי נון ניבאה. דס איאקוליס וולופטה דיאם. וסטיבולום אט דולור, קראס אגת לקטוס וואל אאוגו וסטיבולום סוליסי טידום בעליק. קונדימנטום קורוס בליקרה, נונסטי קלובר בריקנה סטום, לפריקך תצטריק לרטי.\r\n\r\nקוואזי במר מודוף. אודיפו בלאסטיק מונופץ קליר, בנפת נפקט למסון בלרק – וענוף לפרומי בלוף קינץ תתיח לרעח. לת צשחמי צש בליא, מנסוטו צמלח לביקו ננבי, צמוקו בלוקריה שיצמה ברורק.\r\n\r\nקולורס מונפרד אדנדום סילקוף, מרגשי ומרגשח. עמחליף', 'פוסט נוסף', 'לורם איפסום דולור סיט אמט, קונסקטורר אדיפיסינג אלית קולורס מונפרד אדנדום סילקוף, מרגשי ומרגשח. עמחליף נולום ארווס סאפיאן - פוסיליס קוויס, אקווזמן הועניב היושבב שערש שמחויט - שלושע ותלברו חשלו שעותלשך וחאית נובש ערששף. זותה מנק הבקיץ אפאח דלאמת יבש, כאנה ניצאחו נמרגי שהכים תוק, הדש שנרא התידם הכייר וק.', 'inherit', 'closed', 'closed', '', '440-revision-v1', '', '', '2017-11-04 10:56:14', '2017-11-04 08:56:14', '', 440, 'http://127.0.0.1/broker/440-revision-v1/', 0, 'revision', '', 0),
(444, 1, '2017-11-04 11:39:14', '2017-11-04 09:39:14', '', 'ארכיון מאמרים', '', 'publish', 'closed', 'closed', '', '%d7%90%d7%a8%d7%9b%d7%99%d7%95%d7%9f-%d7%9e%d7%90%d7%9e%d7%a8%d7%99%d7%9d', '', '', '2017-11-04 12:10:05', '2017-11-04 10:10:05', '', 0, 'http://127.0.0.1/broker/?page_id=444', 0, 'page', '', 0),
(445, 1, '2017-11-04 11:39:14', '2017-11-04 09:39:14', '', 'ארכיון מאמרים', '', 'inherit', 'closed', 'closed', '', '444-revision-v1', '', '', '2017-11-04 11:39:14', '2017-11-04 09:39:14', '', 444, 'http://127.0.0.1/broker/444-revision-v1/', 0, 'revision', '', 0),
(449, 1, '2017-11-04 16:40:01', '2017-11-04 14:40:01', 'קונסקטורר אדיפיסינג אלית. סת אלמנקום ניסי נון ניבאה. דס איאקוליס וולופטה דיאם. וסטיבולום אט דולור, קראס אגת לקטוס וואל אאוגו וסטיבולום סוליסי טידום בעליק. קונדימנטום קורוס בליקרה, נונסטי קלובר בריקנה סטום, לפריקך תצטריק לרטי.\r\n\r\nסחטיר בלובק. תצטנפל בלינדו למרקל אס לכימפו, דול, צוט ומעיוט - לפתיעם ברשג - ולתיעם גדדיש. קוויז דומור ליאמום בלינך רוגצה. לפמעט מוסן מנת. נולום ארווס סאפיאן - פוסיליס קוויס, אקווזמן קוואזי במר מודוף. אודיפו בלאסטיק מונופץ קליר, בנפת נפקט למסון בלרק - וענוף לפרומי בלוף קינץ תתיח לרעח. לת צשחמי נולום ארווס סאפיאן - פוסיליס קוויס, אקווזמן קולורס מונפרד אדנדום סילקוף, מרגשי ומרגשח. עמחליף להאמית קרהשק סכעיט דז מא, מנכם למטכין נשואי מנורך. קולהע צופעט למרקוח איבן איף, ברומץ כלרשט מיחוצים. קלאצי מוסן מנת. להאמית קרהשק סכעיט דז מא, מנכם למטכין נשואי מנורך. סחטיר בלובק. תצטנפל בלינדו למרקל אס לכימפו, דול, צוט ומעיוט - לפתיעם ברשג - ולתיעם גדדיש. קוויז דומור ליאמום בלינך רוגצה. לפמעט מוסן מנת. ליבם סולגק. בראיט ולחת צורק מונחף, בגורמי מ��מש. תרבנך וסתעד לכנו סתשם השמה - לתכי מורגם בורק? לתיג ישבעס.\r\n\r\nקולורס מונפרד אדנדום סילקוף, מרגשי ומרגשח. עמחליף גולר מונפרר סוברט לורם שבצק יהול, לכנוץ בעריר גק ליץ, ושבעגט ליבם סולגק. בראיט ולחת צורק מונחף, בגורמי מגמש. תרבנך וסתעד לכנו סתשם השמה - לתכי מורגם בורק? לתיג ישבעס.\r\n\r\nהועניב היושבב שערש שמחויט - שלושע ותלברו חשלו שעותלשך וחאית נובש ערששף. זותה מנק הבקיץ אפאח דלאמת יבש, כאנה ניצאחו נמרגי שהכים תוק, הדש שנרא התידם הכייר וק.', 'מאמר לדוגמה אחד', 'לורם איפסום דולור סיט אמט, קונסקטורר אדיפיסינג אלית גולר מונפרר סוברט לורם שבצק יהול, לכנוץ בעריר גק ליץ, ושבעגט ליבם סולגק. בראיט ולחת צורק מונחף, בגורמי מגמש. תרבנך וסתעד לכנו סתשם השמה - לתכי מורגם בורק? לתיג ישבעס.\r\n', 'publish', 'closed', 'closed', '', '%d7%9e%d7%90%d7%9e%d7%a8-%d7%9c%d7%93%d7%95%d7%92%d7%9e%d7%94-%d7%90%d7%97%d7%93', '', '', '2017-12-09 16:14:20', '2017-12-09 14:14:20', '', 0, 'http://127.0.0.1/broker/?post_type=article&#038;p=449', 0, 'article', '', 0),
(450, 1, '2017-11-04 16:35:11', '0000-00-00 00:00:00', '', 'כל המאמרים', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-04 16:35:11', '2017-11-04 14:35:11', '', 0, 'http://127.0.0.1/broker/?post_type=article&#038;p=450', 0, 'article', '', 0),
(455, 1, '2017-11-04 16:54:09', '2017-11-04 14:54:09', 'גולר מונפרר סוברט לורם שבצק יהול, לכנוץ בעריר גק ליץ, קולורס מונפרד אדנדום סילקוף, מרגשי ומרגשח. עמחליף קולורס מונפרד אדנדום סילקוף, מרגשי ומרגשח. עמחליף הועניב היושבב שערש שמח��יט - שלושע ותלברו חשלו שעותלשך וחאית נובש ערששף. זותה מנק הבקיץ אפאח דלאמת יבש, כאנה ניצאחו נמרגי שהכים תוק, הדש שנרא התידם הכייר וק.\r\n\r\nליבם סולגק. בראיט ולחת צורק מונחף, בגורמי מגמש. תרבנך וסתעד לכנו סתשם השמה - לתכי מורגם בורק? לתיג ישבעס.\r\n\r\nהועניב היושבב שערש שמחויט - שלושע ותלברו חשלו שעותלשך וחאית נובש ערששף. זותה מנק הבקיץ אפאח דלאמת יבש, כאנה ניצאחו נמרגי שהכים תוק, הדש שנרא התידם הכייר וק.\r\n\r\nנולום ארווס סאפיאן - פוסיליס קוויס, אקווזמן קוואזי במר מודוף. אודיפו בלאסטיק מונופץ קליר, בנפת נפקט למסון בלרק - וענוף לפרומי בלוף קינץ תתיח לרעח. לת צשחמי קולהע צופעט למרקוח איבן איף, ברומץ כלרשט מיחוצים. קלאצי סחטיר בלובק. תצטנפל בלינדו למרקל אס לכימפו, דול, צוט ומעיוט - לפתיעם ברשג - ולתיעם גדדיש. קוויז דומור ליאמום בלינך רוגצה. לפמעט\r\n\r\nקולורס מונפרד אדנדום סילקוף, מרגשי ומרגשח. עמחליף סחטיר בלובק. תצטנפל בלינדו למרקל אס לכימפו, דול, צוט ומעיוט - לפתיעם ברשג - ולתיעם גדדיש. קוויז דומור ליאמום בלינך רוגצה. לפמעט מוסן מנת. לורם איפסום דולור סיט אמט, קוואזי במר מודוף. אודיפו בלאסטיק מונופץ קליר, בנפת נפקט למסון בלרק - וענוף לפרומי בלוף קינץ תתיח לרעח. לת צשחמי צש בליא, מנסוטו צמלח לביקו ננבי, צמוקו בלוקריה שיצמה ברורק.\r\n\r\nלהאמית קרהשק סכעיט דז מא, מנכם למטכין נשואי מנורךגולר מונפרר סוברט לורם שבצק יהול, לכנוץ בעריר גק ליץ, ושבעגט.', 'מאמר בדיקה', 'ורם איפסום דולור סיט אמט, קונסקטורר אדיפיסינג אלית סחטיר בלובק. תצטנפל בלינדו למרקל אס לכימפו, דול, צוט ומעיוט - לפתיעם ברשג - ולתיעם גדדיש. קוויז דומור ליאמום בלינך רוגצה. לפמעט מוסן מנת. הועניב היושבב שערש שמחויט - שלושע ותלברו חשלו שעותלשך וחאית נובש ערששף. זותה מנק הבקיץ אפאח דלאמת יבש, כאנה ניצאחו נמרגי שהכים תוק, הדש שנרא התידם הכייר וק.', 'publish', 'closed', 'closed', '', '%d7%9e%d7%90%d7%9e%d7%a8-%d7%91%d7%93%d7%99%d7%a7%d7%94', '', '', '2017-12-09 16:16:05', '2017-12-09 14:16:05', '', 0, 'http://127.0.0.1/broker/?post_type=article&#038;p=455', 0, 'article', '', 0),
(456, 1, '2017-11-04 16:54:18', '2017-11-04 14:54:18', '', 'מאמר בדיקה', 'ורם איפסום דולור סיט אמט, קונסקטורר אדיפיסינג אלית סחטיר בלובק. תצטנפל בלינדו למרקל אס לכימפו, דול, צוט ומעיוט - לפתיעם ברשג - ולתיעם גדדיש. קוויז דומור ליאמום בלינך רוגצה. לפמעט מוסן מנת. הועניב היושבב שערש שמחויט - שלושע ותלברו חשלו שעותלשך וחאית נובש ערששף. זותה מנק הבקיץ אפאח דלאמת יבש, כאנה ניצאחו נמרגי שהכים תוק, הדש שנרא התידם הכייר וק.', 'publish', 'closed', 'closed', '', '%d7%9e%d7%90%d7%9e%d7%a8-%d7%91%d7%93%d7%99%d7%a7%d7%94-2', '', '', '2017-11-04 16:55:06', '2017-11-04 14:55:06', '', 0, 'http://127.0.0.1/broker/?post_type=article&#038;p=456', 0, 'article', '', 0),
(457, 1, '2017-11-04 19:15:53', '2017-11-04 17:15:53', '', 'מאמר בדיקה', '', 'publish', 'closed', 'closed', '', '%d7%9e%d7%90%d7%9e%d7%a8-%d7%91%d7%93%d7%99%d7%a7%d7%94', '', '', '2017-11-04 19:15:53', '2017-11-04 17:15:53', '', 0, 'http://127.0.0.1/broker/?post_type=articles&#038;p=457', 0, 'articles', '', 0),
(458, 1, '2017-11-04 19:42:42', '2017-11-04 17:42:42', '', 'עוד מאמר אחד', '', 'publish', 'closed', 'closed', '', '%d7%a2%d7%95%d7%93-%d7%9e%d7%90%d7%9e%d7%a8-%d7%90%d7%97%d7%93', '', '', '2017-11-04 19:42:55', '2017-11-04 17:42:55', '', 0, 'http://127.0.0.1/broker/?post_type=article&#038;p=458', 0, 'article', '', 0),
(459, 1, '2017-11-05 14:12:36', '2017-11-05 12:12:36', '[pie_register_login]', 'התחברו לברוקר', '', 'publish', 'closed', 'closed', '', '%d7%94%d7%aa%d7%97%d7%91%d7%a8%d7%95-%d7%9c%d7%91%d7%a8%d7%95%d7%a7%d7%a8', '', '', '2017-11-24 17:55:51', '2017-11-24 15:55:51', '', 0, 'http://127.0.0.1/broker/?page_id=459', 0, 'page', '', 0),
(460, 1, '2017-11-05 14:12:36', '2017-11-05 12:12:36', '', 'התחברו לברוקר', '', 'inherit', 'closed', 'closed', '', '459-revision-v1', '', '', '2017-11-05 14:12:36', '2017-11-05 12:12:36', '', 459, 'http://127.0.0.1/broker/459-revision-v1/', 0, 'revision', '', 0),
(461, 1, '2017-11-05 14:14:29', '2017-11-05 12:14:29', '<p style="direction: ltr;">[pie_register_form id="1" title="true" description="true" ]</p>', 'הצטרפו לברוקר', '', 'publish', 'closed', 'closed', '', '%d7%94%d7%a6%d7%98%d7%a8%d7%a4%d7%95-%d7%9c%d7%91%d7%a8%d7%95%d7%a7%d7%a8', '', '', '2017-11-25 09:03:47', '2017-11-25 07:03:47', '', 0, 'http://127.0.0.1/broker/?page_id=461', 0, 'page', '', 0),
(462, 1, '2017-11-05 14:14:29', '2017-11-05 12:14:29', '', 'הצטרפו לברוקר', '', 'inherit', 'closed', 'closed', '', '461-revision-v1', '', '', '2017-11-05 14:14:29', '2017-11-05 12:14:29', '', 461, 'http://127.0.0.1/broker/461-revision-v1/', 0, 'revision', '', 0),
(476, 1, '2017-11-17 16:20:09', '2017-11-17 14:20:09', '', 'הצטרפו לברוקר', '', 'inherit', 'closed', 'closed', '', '461-revision-v1', '', '', '2017-11-17 16:20:09', '2017-11-17 14:20:09', '', 461, 'http://davdev.co.il/broker/461-revision-v1/', 0, 'revision', '', 0),
(465, 1, '2017-11-06 14:14:30', '2017-11-06 12:14:30', '[user-meta-registration form="register"]', 'הצטרפו לברוקר', '', 'inherit', 'closed', 'closed', '', '461-revision-v1', '', '', '2017-11-06 14:14:30', '2017-11-06 12:14:30', '', 461, 'http://davdev.co.il/broker/461-revision-v1/', 0, 'revision', '', 0),
(466, 1, '2017-11-06 14:15:25', '2017-11-06 12:15:25', '[user-meta-login]', 'התחברו לברוקר', '', 'inherit', 'closed', 'closed', '', '459-revision-v1', '', '', '2017-11-06 14:15:25', '2017-11-06 12:15:25', '', 459, 'http://davdev.co.il/broker/459-revision-v1/', 0, 'revision', '', 0),
(544, 1, '2017-12-08 10:47:06', '2017-12-08 08:47:06', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:8:"articles";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'article', 'article', 'publish', 'closed', 'closed', '', 'group_5a2a4f3619167', '', '', '2017-12-11 22:24:00', '2017-12-11 20:24:00', '', 0, 'http://127.0.0.1/broker/?post_type=acf-field-group&#038;p=544', 0, 'acf-field-group', '', 0),
(545, 1, '2017-12-08 10:47:06', '2017-12-08 08:47:06', 'a:12:{s:4:"type";s:6:"number";s:12:"instructions";s:65:"יש לרשום את מספר הצפיות שיש למאמר זה";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";i:1683;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:4:"step";s:0:"";}', 'צפיות מאמר', 'ar_views', 'publish', 'closed', 'closed', '', 'field_5a2a4f3ec2339', '', '', '2017-12-08 10:51:40', '2017-12-08 08:51:40', '', 544, 'http://127.0.0.1/broker/?post_type=acf-field&#038;p=545', 0, 'acf-field', '', 0),
(469, 1, '2017-11-07 13:31:35', '2017-11-07 11:31:35', '', 'בלוג', '', 'publish', 'closed', 'closed', '', '%d7%91%d7%9c%d7%95%d7%92', '', '', '2017-12-15 12:49:49', '2017-12-15 10:49:49', '', 0, 'http://davdev.co.il/broker/?p=469', 6, 'nav_menu_item', '', 0),
(481, 16, '2017-11-18 08:48:06', '0000-00-00 00:00:00', '', 'דירה 3 חדרים רחובות קומה 4', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-18 08:48:06', '2017-11-18 06:48:06', '', 0, 'http://127.0.0.1/broker/?post_type=property&#038;p=481', 0, 'property', '', 0),
(482, 16, '2017-11-18 08:51:21', '2017-11-18 06:51:21', '', 'beach-villa-1', '', 'inherit', 'open', 'closed', '', 'beach-villa-1-3', '', '', '2017-11-18 08:51:32', '2017-11-18 06:51:32', '', 481, 'http://127.0.0.1/broker/wp-content/uploads/2017/11/beach-villa-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(483, 16, '2017-11-18 08:51:23', '2017-11-18 06:51:23', '', 'morgan-room-penthouse-bbq-02', '', 'inherit', 'open', 'closed', '', 'morgan-room-penthouse-bbq-02-3', '', '', '2017-11-18 08:51:23', '2017-11-18 06:51:23', '', 481, 'http://127.0.0.1/broker/wp-content/uploads/2017/11/morgan-room-penthouse-bbq-02.jpg', 0, 'attachment', 'image/jpeg', 0),
(484, 16, '2017-11-18 08:51:25', '2017-11-18 06:51:25', '', 'MY001_Penthouse_Dining_Room_ODADA', '', 'inherit', 'open', 'closed', '', 'my001_penthouse_dining_room_odada-3', '', '', '2017-11-18 08:51:25', '2017-11-18 06:51:25', '', 481, 'http://127.0.0.1/broker/wp-content/uploads/2017/11/MY001_Penthouse_Dining_Room_ODADA.jpg', 0, 'attachment', 'image/jpeg', 0),
(485, 16, '2017-11-18 08:51:26', '2017-11-18 06:51:26', '', 'Penthouse-1', '', 'inherit', 'open', 'closed', '', 'penthouse-1-3', '', '', '2017-12-16 14:41:42', '2017-12-16 12:41:42', '', 481, 'http://127.0.0.1/broker/wp-content/uploads/2017/11/Penthouse-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(486, 16, '2017-11-18 08:51:28', '2017-11-18 06:51:28', '', 'villa-cruz-1', '', 'inherit', 'open', 'closed', '', 'villa-cruz-1-3', '', '', '2017-11-18 08:54:33', '2017-11-18 06:54:33', '', 481, 'http://127.0.0.1/broker/wp-content/uploads/2017/11/villa-cruz-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(487, 16, '2017-11-18 08:54:50', '2017-11-18 06:54:50', '', 'דירה ברחובות 3 חדרים קומה רביעית', '', 'publish', 'closed', 'closed', '', '%d7%93%d7%99%d7%a8%d7%94-%d7%91%d7%a8%d7%97%d7%95%d7%91%d7%95%d7%aa-3-%d7%97%d7%93%d7%90%d7%99%d7%9d-%d7%a7%d7%95%d7%9e%d7%94-%d7%a8%d7%91%d7%99%d7%a2%d7%99%d7%aa', '', '', '2017-11-18 08:55:19', '2017-11-18 06:55:19', '', 0, 'http://127.0.0.1/broker/?post_type=property&#038;p=487', 0, 'property', '', 0),
(488, 1, '2017-11-18 09:43:38', '2017-11-18 07:43:38', '[pie_register_profile]', 'Profile', '', 'inherit', 'closed', 'closed', '', '474-revision-v1', '', '', '2017-11-18 09:43:38', '2017-11-18 07:43:38', '', 474, 'http://127.0.0.1/broker/474-revision-v1/', 0, 'revision', '', 0),
(489, 1, '2017-11-18 15:55:46', '2017-11-18 13:55:46', '<p dir="ltr"></p>\n\n<div style="direction: ltr;"></div>', 'עמוד משתמש', '', 'inherit', 'closed', 'closed', '', '353-autosave-v1', '', '', '2017-11-18 15:55:46', '2017-11-18 13:55:46', '', 353, 'http://127.0.0.1/broker/353-autosave-v1/', 0, 'revision', '', 0),
(492, 1, '2017-11-18 16:38:41', '0000-00-00 00:00:00', '', 'דירה חמישה חדרים ברחובות קומה 12', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-18 16:38:41', '2017-11-18 14:38:41', '', 0, 'http://127.0.0.1/broker/?post_type=property&#038;p=492', 0, 'property', '', 0),
(493, 16, '2017-11-18 16:45:24', '2017-11-18 14:45:24', '', 'בית ברחובות חמישה חדרים קומה 12', '', 'publish', 'closed', 'closed', '', '493', '', '', '2017-11-18 16:46:06', '2017-11-18 14:46:06', '', 0, 'http://127.0.0.1/broker/?post_type=property&#038;p=493', 0, 'property', '', 0),
(495, 16, '2017-11-18 16:44:51', '2017-11-18 14:44:51', '', 'beach-villa-1', '', 'inherit', 'open', 'closed', '', 'beach-villa-1-4', '', '', '2017-12-16 15:10:59', '2017-12-16 13:10:59', '', 493, 'http://127.0.0.1/broker/wp-content/uploads/2017/11/beach-villa-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(496, 16, '2017-11-18 16:44:54', '2017-11-18 14:44:54', '', 'morgan-room-penthouse-bbq-02', '', 'inherit', 'open', 'closed', '', 'morgan-room-penthouse-bbq-02-4', '', '', '2017-11-18 16:44:54', '2017-11-18 14:44:54', '', 493, 'http://127.0.0.1/broker/wp-content/uploads/2017/11/morgan-room-penthouse-bbq-02-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(497, 16, '2017-11-18 16:44:58', '2017-11-18 14:44:58', '', 'MY001_Penthouse_Dining_Room_ODADA', '', 'inherit', 'open', 'closed', '', 'my001_penthouse_dining_room_odada-4', '', '', '2017-12-16 15:17:47', '2017-12-16 13:17:47', '', 493, 'http://127.0.0.1/broker/wp-content/uploads/2017/11/MY001_Penthouse_Dining_Room_ODADA-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(498, 16, '2017-11-18 16:45:00', '2017-11-18 14:45:00', '', 'Penthouse-1', '', 'inherit', 'open', 'closed', '', 'penthouse-1-4', '', '', '2017-11-18 16:45:00', '2017-11-18 14:45:00', '', 493, 'http://127.0.0.1/broker/wp-content/uploads/2017/11/Penthouse-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(499, 16, '2017-11-18 16:45:02', '2017-11-18 14:45:02', '', 'villa-cruz-1', '', 'inherit', 'open', 'closed', '', 'villa-cruz-1-4', '', '', '2017-11-18 16:45:02', '2017-11-18 14:45:02', '', 493, 'http://127.0.0.1/broker/wp-content/uploads/2017/11/villa-cruz-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(541, 1, '2017-11-24 17:44:23', '2017-11-24 15:44:23', '<p style="direction: ltr;">[pie_register_form id="1" title="true" description="true" ]</p>', 'הצטרפו לברוקר', '', 'inherit', 'closed', 'closed', '', '461-revision-v1', '', '', '2017-11-24 17:44:23', '2017-11-24 15:44:23', '', 461, 'http://127.0.0.1/broker/461-revision-v1/', 0, 'revision', '', 0),
(542, 1, '2017-11-24 17:45:10', '2017-11-24 15:45:10', '[pie_register_login]', 'Login', '', 'inherit', 'closed', 'closed', '', '471-revision-v1', '', '', '2017-11-24 17:45:10', '2017-11-24 15:45:10', '', 471, 'http://127.0.0.1/broker/471-revision-v1/', 0, 'revision', '', 0),
(546, 1, '2017-12-08 10:47:06', '2017-12-08 08:47:06', 'a:12:{s:4:"type";s:6:"number";s:12:"instructions";s:96:"יש לרשום את מספר השיתופים שיש למאמר זה באמצעות המייל.";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:4:"step";s:0:"";}', 'מספר שיתופים במייל', 'ar_mail_share', 'publish', 'closed', 'closed', '', 'field_5a2a4fefc233a', '', '', '2017-12-08 10:51:40', '2017-12-08 08:51:40', '', 544, 'http://127.0.0.1/broker/?post_type=acf-field&#038;p=546', 1, 'acf-field', '', 0),
(547, 1, '2017-12-08 10:47:06', '2017-12-08 08:47:06', 'a:12:{s:4:"type";s:6:"number";s:12:"instructions";s:102:"יש לרשום את מספר השיתופים שיש למאמר זה באמצעות הפייסבוק.";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:4:"step";s:0:"";}', 'מספר שיתופים בפייסבוק', 'ar_fb_share', 'publish', 'closed', 'closed', '', 'field_5a2a510fc233b', '', '', '2017-12-08 10:51:40', '2017-12-08 08:51:40', '', 544, 'http://127.0.0.1/broker/?post_type=acf-field&#038;p=547', 2, 'acf-field', '', 0),
(548, 1, '2017-12-08 10:47:06', '2017-12-08 08:47:06', 'a:12:{s:4:"type";s:6:"number";s:12:"instructions";s:102:"יש לרשום את מספר השיתופים שיש למאמר זה באמצעות הוואטסאפ.";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:4:"step";s:0:"";}', 'מספר שיתופים בוואטסאפ', 'ar_wa_share', 'publish', 'closed', 'closed', '', '1203', '', '', '2017-12-08 10:48:16', '2017-12-08 08:48:16', '', 3521, 'http://127.0.0.1/broker/?post_type=acf-field&#038;p=548', 5484, 'acf-field', '', 0),
(550, 1, '2017-12-08 10:51:22', '2017-12-08 08:51:22', 'a:12:{s:4:"type";s:6:"number";s:12:"instructions";s:102:"יש לרשום את מספר השיתופים שיש למאמר זה באמצעות בוואטסאפ.";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:4:"step";s:0:"";}', 'מספר שיתופים בוואטסאפ', 'ar_wa_share', 'publish', 'closed', 'closed', '', 'field_5a2a5259f33b2', '', '', '2017-12-09 14:41:40', '2017-12-09 12:41:40', '', 544, 'http://127.0.0.1/broker/?post_type=acf-field&#038;p=550', 3, 'acf-field', '', 0),
(551, 1, '2017-12-08 10:56:21', '2017-12-08 08:56:21', '', 'printh', '', 'inherit', 'open', 'closed', '', 'printh', '', '', '2017-12-08 10:56:21', '2017-12-08 08:56:21', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/12/printh.png', 0, 'attachment', 'image/png', 0),
(552, 1, '2017-12-08 10:56:22', '2017-12-08 08:56:22', '', 'wa', '', 'inherit', 'open', 'closed', '', 'wa', '', '', '2017-12-08 10:56:22', '2017-12-08 08:56:22', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/12/wa.png', 0, 'attachment', 'image/png', 0),
(553, 1, '2017-12-08 10:56:23', '2017-12-08 08:56:23', '', 'wah', '', 'inherit', 'open', 'closed', '', 'wah', '', '', '2017-12-08 10:56:23', '2017-12-08 08:56:23', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/12/wah.png', 0, 'attachment', 'image/png', 0),
(554, 1, '2017-12-08 10:56:24', '2017-12-08 08:56:24', '', 'fb', '', 'inherit', 'open', 'closed', '', 'fb', '', '', '2017-12-08 10:56:24', '2017-12-08 08:56:24', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/12/fb.png', 0, 'attachment', 'image/png', 0),
(555, 1, '2017-12-08 10:56:25', '2017-12-08 08:56:25', '', 'fbh', '', 'inherit', 'open', 'closed', '', 'fbh', '', '', '2017-12-08 10:56:25', '2017-12-08 08:56:25', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/12/fbh.png', 0, 'attachment', 'image/png', 0),
(556, 1, '2017-12-08 10:56:26', '2017-12-08 08:56:26', '', 'mail', '', 'inherit', 'open', 'closed', '', 'mail', '', '', '2017-12-08 10:56:26', '2017-12-08 08:56:26', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/12/mail.png', 0, 'attachment', 'image/png', 0),
(557, 1, '2017-12-08 10:56:27', '2017-12-08 08:56:27', '', 'mailh', '', 'inherit', 'open', 'closed', '', 'mailh', '', '', '2017-12-08 10:56:27', '2017-12-08 08:56:27', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/12/mailh.png', 0, 'attachment', 'image/png', 0),
(558, 1, '2017-12-08 10:56:28', '2017-12-08 08:56:28', '', 'print', '', 'inherit', 'open', 'closed', '', 'print', '', '', '2017-12-08 10:56:28', '2017-12-08 08:56:28', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/12/print.png', 0, 'attachment', 'image/png', 0),
(559, 1, '2017-12-09 06:35:16', '2017-12-09 04:35:16', '[text* name-793 class:form-control placeholder "שם:" ]\r\n[email* email-793 class:form-control placeholder "אימייל:"]\r\n[submit  class:form-control "שלח"]\n1\nברוקר נדל"ן "משתמש חדש נרשם לרשימת התפוצה של בורקר נדל"ן"\n[name-793] <[email-793]>\ndavseveloff@gmail.com\nמאת: [your-name] <[your-email]>\r\nנושא: [your-subject]\r\n\r\nתוכן ההודעה:\r\nמשתמש חדש נרשם לרשימת התפוצה של בורקר נדל"ן\r\n\r\nשם המשתמש: [name-793]\r\nכתובת מייל: [email-793]\r\n\r\n-- \r\nאימייל זה נשלח מטופס יצירת קשר ב ברוקר נדל&quot;ן (//localhost:3000/broker)\n\n\n\n\n1\nברוקר נדל"ן "ברוכים הבאים לרשימת התפוצה של ברוקר נדל"ן"\nברוקר נדל"ן <office@broker-re.co.il>\n[email-793]\nשלום [name-793]\r\nברוכים הבאים\r\n\r\nאימייל זה נשלח מטופס יצירת קשר ב ברוקר נדל&quot;ן (//localhost:3000/broker)\nReply-To: davseveloff@gmail.com\n\n\n\nההודעה נשלחה.\nארעה שגיאה בשליחת ההודעה.\nקיימת שגיאה בשדה אחד או יותר.\nארעה שגיאה בשליחת ההודעה.\nעליך להסכים לתנאים לפני שליחת ההודעה.\nזהו שדה חובה.\nהשדה ארוך מדי.\nהשדה קצר מדי.\nשדה התאריך אינו נכון.\nהתאריך מוקדם מהתאריך המותר.\nהתאריך מאוחר מהתאריך המותר.\nשגיאה לא ידועה בהעלאת הקובץ.\nאין לך הרשאות להעלות קבצים בפורמט זה.\nהקובץ גדול מדי.\nשגיאה בהעלאת הקובץ.\nפורמט המספר אינו תקין.\nהמספר קטן מהמינימום המותר.\nהמספר גדול מהמקסימום המותר.\nהתשובה לשאלת הביטחון אינה נכונה.\nהקוד שהזנת שגוי.\nכתובת האימייל שהוזנה אינה תקינה.\nהקישור אינו תקין.\nמספר הטלפון אינו תקין.', 'רשימת תפוצה סיידבר', '', 'publish', 'closed', 'closed', '', '%d7%a8%d7%a9%d7%99%d7%9e%d7%aa-%d7%aa%d7%a4%d7%95%d7%a6%d7%94-%d7%a1%d7%99%d7%99%d7%93%d7%91%d7%a8', '', '', '2017-12-09 06:46:12', '2017-12-09 04:46:12', '', 0, 'http://127.0.0.1/broker/?post_type=wpcf7_contact_form&#038;p=559', 0, 'wpcf7_contact_form', '', 0),
(564, 1, '2017-12-09 09:31:31', '2017-12-09 07:31:31', '', 'פרסום נכס', '', 'publish', 'closed', 'closed', '', '%d7%a4%d7%a8%d7%a1%d7%95%d7%9d-%d7%a0%d7%9b%d7%a1', '', '', '2017-12-09 09:31:31', '2017-12-09 07:31:31', '', 0, 'http://127.0.0.1/broker/?p=564', 2, 'nav_menu_item', '', 0),
(565, 1, '2017-12-09 09:31:31', '2017-12-09 07:31:31', '', 'פרסום מאמר', '', 'publish', 'closed', 'closed', '', '%d7%a4%d7%a8%d7%a1%d7%95%d7%9d-%d7%9e%d7%90%d7%9e%d7%a8', '', '', '2017-12-09 09:31:31', '2017-12-09 07:31:31', '', 0, 'http://127.0.0.1/broker/?p=565', 3, 'nav_menu_item', '', 0),
(563, 1, '2017-12-09 09:28:53', '2017-12-09 07:28:53', '', 'עמוד אישי', '', 'publish', 'closed', 'closed', '', '%d7%a2%d7%9e%d7%95%d7%93-%d7%90%d7%99%d7%a9%d7%99', '', '', '2017-12-09 09:31:31', '2017-12-09 07:31:31', '', 0, 'http://127.0.0.1/broker/?p=563', 1, 'nav_menu_item', '', 0),
(567, 1, '2017-12-09 14:41:40', '2017-12-09 12:41:40', 'a:11:{s:4:"type";s:11:"post_object";s:12:"instructions";s:53:"יש לבחור שלושה מאמרים קשורים.";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"post_type";a:0:{}s:8:"taxonomy";a:0:{}s:10:"allow_null";i:0;s:8:"multiple";i:1;s:13:"return_format";s:2:"id";s:2:"ui";i:1;}', 'מאמרים קשורים', 'ar_related', 'publish', 'closed', 'closed', '', 'field_5a2bd99ff8548', '', '', '2017-12-11 22:24:00', '2017-12-11 20:24:00', '', 544, 'http://127.0.0.1/broker/?post_type=acf-field&#038;p=567', 4, 'acf-field', '', 0),
(569, 1, '2017-12-09 19:33:37', '2017-12-09 17:33:37', '', 'broker-profile', '', 'inherit', 'closed', 'closed', '', '375-revision-v1', '', '', '2017-12-09 19:33:37', '2017-12-09 17:33:37', '', 375, 'http://127.0.0.1/broker/375-revision-v1/', 0, 'revision', '', 0),
(571, 1, '2017-12-09 19:35:26', '2017-12-09 17:35:26', '', 'פרופיל ברוקר', '', 'inherit', 'closed', 'closed', '', '375-autosave-v1', '', '', '2017-12-09 19:35:26', '2017-12-09 17:35:26', '', 375, 'http://127.0.0.1/broker/375-autosave-v1/', 0, 'revision', '', 0),
(572, 1, '2017-12-09 19:35:32', '2017-12-09 17:35:32', '', 'פרופיל ברוקר', '', 'inherit', 'closed', 'closed', '', '375-revision-v1', '', '', '2017-12-09 19:35:32', '2017-12-09 17:35:32', '', 375, 'http://127.0.0.1/broker/375-revision-v1/', 0, 'revision', '', 0),
(573, 1, '2017-12-10 22:44:51', '2017-12-10 20:44:51', '<div class="form-group">\r\n<label> השם שלך (חובה)\r\n    [text* your-name class:form-control] </label>\r\n</div>\r\n<div class="form-group">\r\n<label> האימייל שלך (חובה)\r\n    [email* your-email class:form-control] </label>\r\n</div>\r\n<div class="form-group">\r\n<label> נושא\r\n    [text your-subject class:form-control] </label>\r\n</div>\r\n<div class="form-group">\r\n<label> פידבק\r\n    [textarea your-message class:form-control] </label>\r\n</div>\r\n<div class="form-group">\r\n[submit "שלח" class:btn class:btn-default]\r\n</div>\n1\nברוקר נדל"ן "[your-subject]"\n[your-name] <davseveloff@gmail.com>\ndavseveloff@gmail.com\nמאת: [your-name] <[your-email]>\r\nנושא: [your-subject]\r\n\r\nתוכן ההודעה:\r\n[your-message]\r\n\r\n-- \r\nאימייל זה נשלח מטופס יצירת קשר ב ברוקר נדל&quot;ן (//localhost:3000/broker)\nReply-To: [your-email]\n\n\n\n\nברוקר נדל"ן "[your-subject]"\nברוקר נדל"ן <davseveloff@gmail.com>\n[your-email]\nתוכן ההודעה:\r\n[your-message]\r\n\r\n-- \r\nאימייל זה נשלח מטופס יצירת קשר ב ברוקר נדל&quot;ן (//localhost:3000/broker)\nReply-To: davseveloff@gmail.com\n\n\n\nההודעה נשלחה.\nארעה שגיאה בשליחת ההודעה.\nקיימת שגיאה בשדה אחד או יותר.\nארעה שגיאה בשליחת ההודעה.\nעליך להסכים לתנאים לפני שליחת ההודעה.\nזהו שדה חובה.\nהשדה ארוך מדי.\nהשדה קצר מדי.\nשדה התאריך אינו נכון.\nהתאריך מוקדם מהתאריך המותר.\nהתאריך מאוחר מהתאריך המותר.\nשגיאה לא ידועה בהעלאת הקובץ.\nאין לך הרשאות להעלות קבצים בפורמט זה.\nהקובץ גדול מדי.\nשגיאה בהעלאת הקובץ.\nפורמט המספר אינו תקין.\nהמספר קטן מהמינימום המותר.\nהמספר גדול מהמקסימום המותר.\nהתשובה לשאלת הביטחון אינה נכונה.\nהקוד שהזנת שגוי.\nכתובת האימייל שהוזנה אינה תקינה.\nהקישור אינו תקין.\nמספר הטלפון אינו תקין.', 'פידבק', '', 'publish', 'closed', 'closed', '', '%d7%a4%d7%99%d7%93%d7%91%d7%a7', '', '', '2017-12-10 23:42:40', '2017-12-10 21:42:40', '', 0, 'http://127.0.0.1/broker/?post_type=wpcf7_contact_form&#038;p=573', 0, 'wpcf7_contact_form', '', 0),
(574, 1, '2017-12-10 23:46:30', '2017-12-10 21:46:30', '<div class="form-group">\r\n<label> השם שלך (חובה)\r\n    [text* your-name class:form-control] </label>\r\n</div>\r\n<div class="form-group">\r\n<label> האימייל שלך (חובה)\r\n    [email* your-email class:form-control] </label>\r\n</div>\r\n<div class="form-group">\r\n<label> נושא\r\n    [text your-subject class:form-control] </label>\r\n</div>\r\n<div class="form-group">\r\n[select menu-676 class:form-control "רוצה למכור במקסימום" "כללי" "קונה למגורים" "השקעות נדל&quot;ן" "ניהול נכסים"]\r\n</div>\r\n<div class="form-group">\r\n<label> הודעה\r\n    [textarea your-message class:form-control] </label>\r\n</div>\r\n<div class="form-group">\r\n[submit "שלח" class:btn class:btn-default]\r\n</div>\n1\nברוקר נדל"ן "[your-subject]"\n[your-name] <davseveloff@gmail.com>\ndavseveloff@gmail.com\nמאת: [your-name] <[your-email]>\r\nנושא: [your-subject]\r\n\r\nתוכן ההודעה:\r\n[your-message]\r\n\r\n-- \r\nאימייל זה נשלח מטופס יצירת קשר ב ברוקר נדל&quot;ן (//localhost:3000/broker)\nReply-To: [your-email]\n\n\n\n\nברוקר נדל"ן "[your-subject]"\nברוקר נדל"ן <davseveloff@gmail.com>\n[your-email]\nתוכן ההודעה:\r\n[your-message]\r\n\r\n-- \r\nאימייל זה נשלח מטופס יצירת קשר ב ברוקר נדל&quot;ן (//localhost:3000/broker)\nReply-To: davseveloff@gmail.com\n\n\n\nההודעה נשלחה.\nארעה שגיאה בשליחת ההודעה.\nקיימת שגיאה בשדה אחד או יותר.\nארעה שגיאה בשליחת ההודעה.\nעליך להסכים לתנאים לפני שליחת ההודעה.\nזהו שדה חובה.\nהשדה ארוך מדי.\nהשדה קצר מדי.\nשדה התאריך אינו נכון.\nהתאריך מוקדם מהתאריך המותר.\nהתאריך מאוחר מהתאריך המותר.\nשגיאה לא ידועה בהעלאת הקובץ.\nאין לך הרשאות להעלות קבצים בפורמט זה.\nהקובץ גדול מדי.\nשגיאה בהעלאת הקובץ.\nפורמט המספר אינו תקין.\nהמספר קטן מהמינימום המותר.\nהמספר גדול מהמקסימום המותר.\nהתשובה לשאלת הביטחון אינה נכונה.\nהקוד שהזנת שגוי.\nכתובת האימייל שהוזנה אינה תקינה.\nהקישור אינו תקין.\nמספר הטלפון אינו תקין.', 'נשמח לעזור', '', 'publish', 'closed', 'closed', '', '%d7%9c%d7%9c%d7%90-%d7%9b%d7%95%d7%aa%d7%a8%d7%aa', '', '', '2017-12-10 23:50:06', '2017-12-10 21:50:06', '', 0, 'http://127.0.0.1/broker/?post_type=wpcf7_contact_form&#038;p=574', 0, 'wpcf7_contact_form', '', 0),
(575, 1, '2017-12-10 23:56:18', '2017-12-10 21:56:18', '[yourchannel user="בן סולומון"]', 'וידאו', '', 'publish', 'closed', 'closed', '', '%d7%95%d7%99%d7%93%d7%90%d7%95', '', '', '2017-12-11 18:25:10', '2017-12-11 16:25:10', '', 0, 'http://127.0.0.1/broker/?page_id=575', 0, 'page', '', 0),
(576, 1, '2017-12-10 23:56:18', '2017-12-10 21:56:18', '', 'וידאו', '', 'inherit', 'closed', 'closed', '', '575-revision-v1', '', '', '2017-12-10 23:56:18', '2017-12-10 21:56:18', '', 575, 'http://127.0.0.1/broker/575-revision-v1/', 0, 'revision', '', 0),
(577, 1, '2017-12-11 00:22:45', '2017-12-10 22:22:45', '[yourchannel user="בן סולומון"]', 'וידאו', '', 'inherit', 'closed', 'closed', '', '575-revision-v1', '', '', '2017-12-11 00:22:45', '2017-12-10 22:22:45', '', 575, 'http://127.0.0.1/broker/575-revision-v1/', 0, 'revision', '', 0),
(580, 1, '2017-12-11 18:44:40', '0000-00-00 00:00:00', '', 'טיוטה משמירה אוטומטית', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-11 18:44:40', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/broker/?p=580', 0, 'post', '', 0),
(581, 1, '2017-12-11 19:00:13', '2017-12-11 17:00:13', '', '', '', 'publish', 'closed', 'closed', '', '581', '', '', '2017-12-11 19:00:13', '2017-12-11 17:00:13', '', 0, 'http://127.0.0.1/broker/?post_type=test&#038;p=581', 0, 'test', '', 0),
(583, 1, '2017-12-11 22:23:10', '0000-00-00 00:00:00', '', 'טיוטה משמירה אוטומטית', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-11 22:23:10', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/broker/?post_type=articles&p=583', 0, 'articles', '', 0),
(584, 1, '2017-12-11 22:29:30', '2017-12-11 20:29:30', 'ורם איפסום דולור סיט אמט, קונסקטורר אדיפיסינג אלית קולורס מונפרד אדנדום סילקוף, מרגשי ומרגשח. עמחליף קונסקטורר אדיפיסינג אלית. סת אלמנקום ניסי נון ניבאה. דס איאקוליס וולופטה דיאם. וסטיבולום אט דולור, קראס אגת לקטוס וואל אאוגו וסטיבולום סוליסי טידום בעליק. קונדימנטום קורוס בליקרה, נונסטי קלובר בריקנה סטום, לפריקך תצטריק לרטי.\r\n\r\nהועניב היושבב שערש שמחויט - שלושע ותלברו חשלו שעותלשך וחאית נובש ערששף. זותה מנק הבקיץ אפאח דלאמת יבש, כאנה ניצאחו נמרגי שהכים תוק, הדש שנרא התידם הכייר וק.\r\n\r\nקונדימנטום קורוס בליקרה, נונסטי קלובר בריקנה סטום, לפריקך תצטריק לרטי.\r\n\r\nקולהע צופעט למרקוח איבן איף, ברומץ כלרשט מיחוצים. קלאצי קולהע צופעט למרקוח איבן איף, ברומץ כלרשט מיחוצים. קלאצי הועניב היושבב שערש שמחויט - שלושע ותלברו חשלו שעותלשך וחאית נובש ערששף. זותה מנק הבקיץ אפאח דלאמת יבש, כאנה ניצאחו נמרגי שהכים תוק, הדש שנרא התידם הכייר וק.\r\n\r\nלהאמית קרהשק סכעיט דז מא, מנכם למטכין נשואי מנורךגולר מונפרר סוברט לורם שבצק יהול, לכנוץ בעריר גק ליץ, ושבעגט. צש בליא, מנסוטו צמלח לביקו ננבי, צמוקו בלוקריה שיצמה ברורק. לורם איפסום דולור סיט אמט, קונסקטורר אדיפיסינג אלית. סת אלמנקום ניסי נון ניבאה. דס איאקוליס וולופטה דיאם. וסטיבולום אט דולור, קראס אגת לקטוס וואל אאוגו וסטיבולום סוליסי טידום בעליק. סחטיר בלובק. תצטנפל בלינדו למרקל אס לכימפו, דול, צוט ומעיוט - לפתיעם ברשג - ולתיעם גדדיש. קוויז דומור ליאמום בלינך רוגצה. לפמעט מוסן מנת. סחטיר בלובק. תצטנפל בלינדו למרקל אס לכימפו, דול, צוט ומעיוט - לפתיעם ברשג - ולתיעם גדדיש. קוויז דומור ליאמום בלינך רוגצה. לפמעט מוסן מנת. קולורס מונפרד אדנדום סילקוף, מרגשי ומרגשח. עמחליף נולום ארווס סאפיאן - פוסיליס קוויס, אקווזמן קוואזי במר מודוף. אודיפו בלאסטיק מונופץ קליר, בנפת נפקט למסון בלרק - וענוף לורם איפסום דולור סיט אמט,', 'מאמר בדיקה 1', '', 'publish', 'closed', 'closed', '', '%d7%9e%d7%90%d7%9e%d7%a8-%d7%91%d7%93%d7%99%d7%a7%d7%94-1', '', '', '2017-12-11 22:29:30', '2017-12-11 20:29:30', '', 0, 'http://127.0.0.1/broker/?post_type=articles&#038;p=584', 0, 'articles', '', 0),
(585, 1, '2017-12-11 22:26:36', '0000-00-00 00:00:00', '', 'טיוטה משמירה אוטומטית', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-11 22:26:36', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/broker/?post_type=articles&p=585', 0, 'articles', '', 0),
(586, 1, '2017-12-11 22:33:37', '0000-00-00 00:00:00', '', 'טיוטה משמירה אוטומטית', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-11 22:33:37', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/broker/?post_type=property&p=586', 0, 'property', '', 0),
(587, 1, '2017-12-11 22:33:39', '0000-00-00 00:00:00', '', 'טיוטה משמירה אוטומטית', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-11 22:33:39', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/broker/?post_type=property&p=587', 0, 'property', '', 0),
(588, 1, '2017-12-11 22:33:41', '0000-00-00 00:00:00', '', 'טיוטה משמירה אוטומטית', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-11 22:33:41', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/broker/?post_type=property&p=588', 0, 'property', '', 0),
(589, 1, '2017-12-11 22:34:22', '0000-00-00 00:00:00', '', 'טיוטה משמירה אוטומטית', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-11 22:34:22', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/broker/?post_type=property&p=589', 0, 'property', '', 0),
(590, 1, '2017-12-11 22:34:42', '0000-00-00 00:00:00', '', 'טיוטה משמירה אוטומטית', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-11 22:34:42', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/broker/?post_type=property&p=590', 0, 'property', '', 0),
(591, 1, '2017-12-11 22:34:56', '0000-00-00 00:00:00', '', 'טיוטה משמירה אוטומטית', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-11 22:34:56', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/broker/?post_type=property&p=591', 0, 'property', '', 0),
(592, 1, '2017-12-11 22:35:00', '0000-00-00 00:00:00', '', 'טיוטה משמירה אוטומטית', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-11 22:35:00', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/broker/?post_type=property&p=592', 0, 'property', '', 0),
(593, 1, '2017-12-11 22:35:09', '0000-00-00 00:00:00', '', 'טיוטה משמירה אוטומטית', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-11 22:35:09', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/broker/?post_type=property&p=593', 0, 'property', '', 0),
(594, 1, '2017-12-11 22:35:12', '0000-00-00 00:00:00', '', 'טיוטה משמירה אוטומטית', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-11 22:35:12', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/broker/?post_type=property&p=594', 0, 'property', '', 0),
(595, 1, '2017-12-11 22:36:05', '0000-00-00 00:00:00', '', 'טיוטה משמירה אוטומטית', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-11 22:36:05', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/broker/?post_type=property&p=595', 0, 'property', '', 0),
(596, 1, '2017-12-11 22:37:38', '0000-00-00 00:00:00', '', 'טיוטה משמירה אוטומטית', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-11 22:37:38', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/broker/?post_type=property&p=596', 0, 'property', '', 0),
(597, 1, '2017-12-14 19:23:33', '2017-12-14 17:23:33', ' ', '', '', 'publish', 'closed', 'closed', '', '597', '', '', '2017-12-15 12:49:49', '2017-12-15 10:49:49', '', 0, 'http://127.0.0.1/broker/?p=597', 3, 'nav_menu_item', '', 0),
(598, 1, '2017-12-15 10:40:41', '2017-12-15 08:40:41', '', 'no-image', '', 'inherit', 'open', 'closed', '', 'no-image', '', '', '2017-12-15 10:40:41', '2017-12-15 08:40:41', '', 0, 'http://127.0.0.1/broker/wp-content/uploads/2017/12/no-image.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'כללי', '%d7%9b%d7%9c%d7%9c%d7%99', 0),
(2, 'main-menu', 'main-menu', 0),
(3, 'מיסוי מקרקעין', '%d7%9e%d7%99%d7%a1%d7%95%d7%99-%d7%9e%d7%a7%d7%a8%d7%a7%d7%a2%d7%99%d7%9f', 0),
(4, 'מכירה', '%d7%9e%d7%9b%d7%99%d7%a8%d7%94', 0),
(5, 'קניה', '%d7%a7%d7%a0%d7%99%d7%94', 0),
(6, 'השכרה', '%d7%94%d7%a9%d7%9b%d7%a8%d7%94', 0),
(7, 'פוטר1', '%d7%a4%d7%95%d7%98%d7%a81', 0),
(8, 'נדל"ן', '%d7%a0%d7%93%d7%9c%d7%9f', 0),
(9, 'שכירות', '%d7%a9%d7%9b%d7%99%d7%a8%d7%95%d7%aa', 0),
(10, 'קבות רכישה', '%d7%a7%d7%91%d7%95%d7%aa-%d7%a8%d7%9b%d7%99%d7%a9%d7%94', 0),
(11, 'קבוצת רכישה', '%d7%a7%d7%91%d7%95%d7%a6%d7%aa-%d7%a8%d7%9b%d7%99%d7%a9%d7%94', 0),
(12, 'מכירה', '%d7%9e%d7%9b%d7%99%d7%a8%d7%94', 0),
(13, 'profile-menu', 'profile-menu', 0),
(14, 'משכנתאות', '%d7%9e%d7%a9%d7%9b%d7%a0%d7%aa%d7%90%d7%95%d7%aa', 0),
(15, 'רכישות', '%d7%a8%d7%9b%d7%99%d7%a9%d7%95%d7%aa', 0),
(16, 'test111', 'test111', 0),
(17, 'מיסוי מקרקעין', '%d7%9e%d7%99%d7%a1%d7%95%d7%99-%d7%9e%d7%a7%d7%a8%d7%a7%d7%a2%d7%99%d7%9f', 0),
(18, 'משכנתאות', '%d7%9e%d7%a9%d7%9b%d7%a0%d7%aa%d7%90%d7%95%d7%aa', 0),
(19, 'השקעות', '%d7%94%d7%a9%d7%a7%d7%a2%d7%95%d7%aa', 0),
(20, 'קניה', '%d7%a7%d7%a0%d7%99%d7%94', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(44, 2, 0),
(49, 2, 0),
(50, 2, 0),
(51, 2, 0),
(52, 2, 0),
(449, 1, 0),
(54, 2, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(1, 6, 0),
(440, 3, 0),
(440, 4, 0),
(440, 6, 0),
(449, 3, 0),
(449, 12, 0),
(449, 11, 0),
(455, 1, 0),
(455, 3, 0),
(455, 12, 0),
(455, 8, 0),
(455, 11, 0),
(455, 10, 0),
(455, 9, 0),
(456, 1, 0),
(456, 3, 0),
(456, 12, 0),
(456, 8, 0),
(456, 11, 0),
(456, 10, 0),
(456, 9, 0),
(458, 1, 0),
(458, 3, 0),
(458, 12, 0),
(458, 8, 0),
(458, 11, 0),
(458, 9, 0),
(469, 2, 0),
(449, 9, 0),
(564, 13, 0),
(563, 13, 0),
(565, 13, 0),
(449, 8, 0),
(449, 15, 0),
(449, 14, 0),
(455, 14, 0),
(581, 16, 0),
(584, 12, 0),
(584, 20, 0),
(584, 8, 0),
(584, 19, 0),
(584, 18, 0),
(584, 17, 0),
(597, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'nav_menu', '', 0, 8),
(3, 3, 'category', '', 0, 4),
(4, 4, 'post_tag', '', 0, 2),
(5, 5, 'post_tag', '', 0, 1),
(6, 6, 'post_tag', '', 0, 2),
(7, 7, 'nav_menu', '', 0, 0),
(8, 8, 'tags', '', 0, 1),
(9, 9, 'tags', '', 0, 4),
(10, 10, 'tags', '', 0, 2),
(11, 11, 'tags', '', 0, 4),
(12, 12, 'tags', '', 0, 1),
(13, 13, 'nav_menu', '', 0, 3),
(14, 14, 'cats', '', 0, 2),
(15, 15, 'cats', '', 0, 1),
(16, 16, 'testtag', '', 0, 1),
(17, 17, 'article_category', '', 0, 1),
(18, 18, 'article_category', '', 0, 1),
(19, 19, 'article_category', '', 0, 1),
(20, 20, 'tags', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_uam_accessgroups`
--

CREATE TABLE `wp_uam_accessgroups` (
  `ID` int(11) NOT NULL,
  `groupname` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `groupdesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_access` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `write_access` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_range` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_uam_accessgroup_to_object`
--

CREATE TABLE `wp_uam_accessgroup_to_object` (
  `object_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `general_object_type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'broker'),
(2, 1, 'first_name', 'דוד'),
(3, 1, 'last_name', 'כהן'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', 'addtoany_settings_pointer'),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:9:{s:64:"092507ddbe4caed3fd365fc8d8e45e912b386d84ecb561a6c686bf941be29f3a";a:4:{s:10:"expiration";i:1513518740;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36";s:5:"login";i:1513345940;}s:64:"5db906652cc8a46b0e12e5922699e85f204be27db275c7fc8f256e416128b5d7";a:4:{s:10:"expiration";i:1513518741;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36";s:5:"login";i:1513345941;}s:64:"89c24bb629ccff2f24beeea3e4f04bd6154a1c75a98fbe45c5d07d3b862f6258";a:4:{s:10:"expiration";i:1513670888;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36";s:5:"login";i:1513498088;}s:64:"c9fdc67dba04cf689abcbe1682a9c2c5dd18e6b98488158294b90ae8fb3014c5";a:4:{s:10:"expiration";i:1513670888;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36";s:5:"login";i:1513498088;}s:64:"4b4b7db99473d2a45d40d8b8b95e6f8c4a42fd05885d6e197ed1ef3d32e0c5f1";a:4:{s:10:"expiration";i:1513670888;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36";s:5:"login";i:1513498088;}s:64:"45b59f8e1a17edb7d8d68b5e143a424c7f150746f4652df9264e9675414de36c";a:4:{s:10:"expiration";i:1513670888;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36";s:5:"login";i:1513498088;}s:64:"d55575540e8a7675299cc4f9983a193e9be51514f6b5e1b92a9e87b043d136cf";a:4:{s:10:"expiration";i:1513670888;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36";s:5:"login";i:1513498088;}s:64:"261e4b12fa757bba7432b6d3319d80951612285996ac10831a5dfb98f60fb53c";a:4:{s:10:"expiration";i:1513670888;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36";s:5:"login";i:1513498088;}s:64:"fe8d1f2ba8a243143993ae84f99785607e96d42a60805cca4acabe5ea078d69f";a:4:{s:10:"expiration";i:1513670888;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36";s:5:"login";i:1513498088;}}'),
(429, 1, 'syntax_highlighting', 'true'),
(427, 1, 'itsec_user_activity_last_seen', '1512407706'),
(428, 1, 'itsec-settings-view', 'grid'),
(16, 1, 'wp_user-settings', 'editor=tinymce&edit_element_vcUIPanelWidth=650&edit_element_vcUIPanelLeft=675px&edit_element_vcUIPanelTop=76px&libraryContent=browse&hidetb=1&imgsize=full&uploader=1&urlbutton=none&template_window_vcUIPanelWidth=1536&template_window_vcUIPanelLeft=183px&template_window_vcUIPanelTop=74px&editor_expand=on'),
(17, 1, 'wp_user-settings-time', '1507797595'),
(18, 1, 'wp_dashboard_quick_press_last_post_id', '580'),
(93, 1, 'metaboxhidden_page', 'a:7:{i:0;s:23:"acf-group_59ae5ac36181f";i:1;s:23:"acf-group_59bd334bd08ac";i:2;s:23:"acf-group_59ae9674569e9";i:3;s:16:"commentstatusdiv";i:4;s:11:"commentsdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";}'),
(92, 1, 'closedpostboxes_page', 'a:0:{}'),
(36, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(34, 1, 'closedpostboxes_snippet', 'a:0:{}'),
(35, 1, 'metaboxhidden_snippet', 'a:2:{i:0;s:23:"acf-group_59ae5ac36181f";i:1;s:7:"slugdiv";}'),
(37, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:20:"add-post-type-broker";i:1;s:22:"add-post-type-property";i:2;s:12:"add-post_tag";i:3;s:15:"add-post_format";i:4;s:14:"add-speciality";}'),
(38, 1, 'nav_menu_recently_edited', '2'),
(39, 1, 'closedpostboxes_property', 'a:1:{i:0;s:11:"postexcerpt";}'),
(40, 1, 'metaboxhidden_property', 'a:3:{i:0;s:23:"acf-group_59bd334bd08ac";i:1;s:11:"postexcerpt";i:2;s:7:"slugdiv";}'),
(41, 1, 'closedpostboxes_toplevel_page_acf-options-front_page', 'a:0:{}'),
(42, 1, 'metaboxhidden_toplevel_page_acf-options-front_page', 'a:0:{}'),
(43, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(44, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:"slugdiv";}'),
(45, 1, 'acf_user_settings', 'a:1:{s:15:"show_field_keys";s:1:"0";}'),
(46, 1, 'meta-box-order_acf-field-group', 'a:3:{s:4:"side";s:9:"submitdiv";s:6:"normal";s:80:"acf-field-group-fields,acf-field-group-locations,acf-field-group-options,slugdiv";s:8:"advanced";s:0:"";}'),
(47, 1, 'screen_layout_acf-field-group', '2'),
(48, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(91, 1, 'pw_new_user_approve_has_signed_in', '1507794925'),
(94, 1, 'metaboxhidden_page', 'a:7:{i:0;s:23:"acf-group_59ae5ac36181f";i:1;s:23:"acf-group_59bd334bd08ac";i:2;s:23:"acf-group_59ae9674569e9";i:3;s:16:"commentstatusdiv";i:4;s:11:"commentsdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";}'),
(381, 16, 'nickname', 'יפה לוי'),
(382, 16, 'first_name', 'יפה'),
(383, 16, 'last_name', 'לוי'),
(384, 16, 'description', 'נולדה בשם יפה אברמוב כבת הזקונים לאברהם ומלכה במשפחה בת שלושה ילדים. הוריה עלו לארץ ישראל מהקווקז בתחילת המאה העשרים. היא גדלה בדרום תל אביב ובגבעת רמב&quot;ם (כיום שכונה בגבעתיים) והחלה את דרכה האמנותית בגיל צעיר, כשיחד עם אחותה ואחיה הצעירים הופיעה בבית הקפה המשפחתי בגבעת רמב&quot;ם בהרכב שיצרו שנקרא &quot;במתי&quot;. ההרכב זכה להצלחה בקרב באי בית הקפה הפופולרי, ובהמלצת הזמר שמואל פישר היא התקבלה כרקדנית בלהקת הבלט של גרטרוד קראוס ורקדה במסגרתה במשך עשר שנים'),
(385, 16, 'rich_editing', 'true'),
(386, 16, 'comment_shortcuts', 'false'),
(246, 1, 'closedpostboxes_post', 'a:0:{}'),
(247, 1, 'metaboxhidden_post', 'a:8:{i:0;s:23:"acf-group_59fc716d6751a";i:1;s:23:"acf-group_59bd334bd08ac";i:2;s:23:"acf-group_59ae9674569e9";i:3;s:13:"trackbacksdiv";i:4;s:16:"commentstatusdiv";i:5;s:11:"commentsdiv";i:6;s:7:"slugdiv";i:7;s:9:"authordiv";}'),
(248, 1, 'meta-box-order_post', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:61:"submitdiv,formatdiv,categorydiv,tagsdiv-post_tag,postimagediv";s:6:"normal";s:144:"acf-group_59fc716d6751a,acf-group_59bd334bd08ac,acf-group_59ae9674569e9,postexcerpt,trackbacksdiv,commentstatusdiv,commentsdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(249, 1, 'screen_layout_post', '2'),
(270, 1, 'active', '1'),
(434, 1, 'screen_layout_article', '2'),
(433, 1, 'meta-box-order_article', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:43:"submitdiv,tagsdiv-tags,catsdiv,postimagediv";s:6:"normal";s:115:"postexcerpt,acf-group_5a2a4f3619167,acf-group_59fc716d6751a,acf-group_59bd334bd08ac,acf-group_59ae9674569e9,slugdiv";s:8:"advanced";s:0:"";}'),
(432, 1, 'metaboxhidden_article', 'a:4:{i:0;s:23:"acf-group_59fc716d6751a";i:1;s:23:"acf-group_59bd334bd08ac";i:2;s:23:"acf-group_59ae9674569e9";i:3;s:7:"slugdiv";}'),
(431, 1, 'closedpostboxes_article', 'a:1:{i:0;s:11:"postexcerpt";}'),
(387, 16, 'admin_color', 'fresh'),
(388, 16, 'use_ssl', '0'),
(389, 16, 'show_admin_bar_front', 'true'),
(390, 16, 'locale', ''),
(391, 16, 'wp_capabilities', 'a:1:{s:6:"author";b:1;}'),
(392, 16, 'wp_user_level', '2'),
(393, 16, 'piereg_pricing_cycle_data', 'a:6:{s:14:"starting_price";s:0:"";s:10:"then_price";s:0:"";s:3:"for";s:0:"";s:10:"for_period";i:0;s:16:"activation_cycle";s:0:"";s:26:"activation_cycle_frequancy";i:0;}'),
(394, 16, 'pie_profile_pic_6', 'http://127.0.0.1/broker/wp-content/uploads/piereg_users_files/16/profile_pic_217406867.jpeg'),
(395, 16, 'pie_text_7', 'הנדלניסטים'),
(396, 16, 'pie_upload_8', 'http://127.0.0.1/broker/wp-content/uploads/piereg_users_files/16/file_2080834172.jpg'),
(397, 16, 'url', 'https://creativemarket.com/A.R-STUDIO/154996-New-Heights-Real-Estate-Logo'),
(398, 16, 'pie_phone_10', '0547954472'),
(399, 16, 'pie_phone_11', ''),
(400, 16, 'pie_text_29', 'https://www.facebook.com/groups/WPISRAEL/?fref=nf'),
(401, 16, 'pie_text_30', 'https://www.youtube.com/channel/UCbkHIHGKq-SLgX-bYms3g2Q'),
(402, 16, 'pie_multiselect_14', 'a:2:{i:0;s:8:"דרום";i:1;s:8:"מרכז";}'),
(403, 16, 'pie_upload_19', 'http://127.0.0.1/broker/wp-content/uploads/piereg_users_files/16/file_1564531216.jpg'),
(404, 16, 'pie_upload_20', 'http://127.0.0.1/broker/wp-content/uploads/piereg_users_files/16/file_248941304.jpg'),
(405, 16, 'pie_upload_21', 'http://127.0.0.1/broker/wp-content/uploads/piereg_users_files/16/file_655302544.png'),
(406, 16, 'pie_upload_22', 'http://127.0.0.1/broker/wp-content/uploads/piereg_users_files/16/file_1690076916.jpg'),
(407, 16, 'pie_upload_24', ''),
(408, 16, 'pie_upload_33', 'http://127.0.0.1/broker/wp-content/uploads/piereg_users_files/16/file_1826153965.jpg'),
(409, 16, 'pie_upload_34', 'http://127.0.0.1/broker/wp-content/uploads/piereg_users_files/16/file_1856630904.png'),
(410, 16, 'pie_upload_35', 'http://127.0.0.1/broker/wp-content/uploads/piereg_users_files/16/file_1114062533.jpg'),
(411, 16, 'pie_upload_36', 'http://127.0.0.1/broker/wp-content/uploads/piereg_users_files/16/file_368534593.jpg'),
(412, 16, 'pie_upload_37', 'http://127.0.0.1/broker/wp-content/uploads/piereg_users_files/16/file_365082944.jpeg'),
(413, 16, 'is_social', 'false'),
(414, 16, 'social_site_name', ''),
(415, 16, 'user_registered_form_id', '1'),
(416, 16, 'piereg_pricing_key_number', '0'),
(417, 16, 'piereg_pricing_payment_amount', '10'),
(418, 16, 'piereg_pricing_user_role', ''),
(419, 16, 'piereg_pricing_activation_cycle', ''),
(420, 16, 'active', '1'),
(421, 16, 'register_type', 'admin_verify'),
(422, 16, 'session_tokens', 'a:5:{s:64:"14368e016cdb7dffba2a8169ef6949a8ac6ef86dc4f64a75944d15142ec7660e";a:4:{s:10:"expiration";i:1513197063;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36";s:5:"login";i:1513024263;}s:64:"11906c763890b29838fbed23c3d6aa4d40b6e85a246b6c33c06c7d4187add858";a:4:{s:10:"expiration";i:1513197063;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36";s:5:"login";i:1513024263;}s:64:"5efbaf1db06fc237f0133558ddf558256012a79448b12bf3084adeb4cdd8789b";a:4:{s:10:"expiration";i:1513197063;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36";s:5:"login";i:1513024263;}s:64:"4b11e14ff73163f8a6a44c14897eed0b96a4ca5452e4834b613781a2fd01ffe3";a:4:{s:10:"expiration";i:1513197063;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36";s:5:"login";i:1513024263;}s:64:"71521294f2d62b4ede6c227b09ff697e9c28a5486cb44997df0d10fd267d4090";a:4:{s:10:"expiration";i:1513197064;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36";s:5:"login";i:1513024264;}}'),
(423, 16, 'wp_dashboard_quick_press_last_post_id', '490'),
(424, 16, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(425, 16, 'wp_user-settings', 'libraryContent=browse'),
(426, 16, 'wp_user-settings-time', '1511016321');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'broker', '$P$BucBFTjSXVVWQ4bpBQyoSxP9b7p9Zz/', 'broker', 'davseveloff@gmail.com', '', '2017-07-08 06:42:50', '', 0, 'broker'),
(16, 'yaffa', '$P$B1jeCCyiKzL1u61VSd2yHUeS7n4Dl9.', 'yaffa', 'yaffa@gmaild.coo', 'https://creativemarket.com/A.R-STUDIO/154996-New-Heights-Real-Estate-Logo', '2017-11-18 09:15:29', '', 0, 'יפה לוי');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfbadleechers`
--

CREATE TABLE `wp_wfbadleechers` (
  `eMin` int(10) UNSIGNED NOT NULL,
  `IP` binary(16) NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfblockedcommentlog`
--

CREATE TABLE `wp_wfblockedcommentlog` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `countryCode` varchar(2) NOT NULL,
  `blockCount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unixday` int(10) UNSIGNED NOT NULL,
  `blockType` varchar(50) NOT NULL DEFAULT 'gsb'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfblockediplog`
--

CREATE TABLE `wp_wfblockediplog` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `countryCode` varchar(2) NOT NULL,
  `blockCount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unixday` int(10) UNSIGNED NOT NULL,
  `blockType` varchar(50) NOT NULL DEFAULT 'generic'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfblocks`
--

CREATE TABLE `wp_wfblocks` (
  `IP` binary(16) NOT NULL,
  `blockedTime` bigint(20) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `lastAttempt` int(10) UNSIGNED DEFAULT '0',
  `blockedHits` int(10) UNSIGNED DEFAULT '0',
  `wfsn` tinyint(3) UNSIGNED DEFAULT '0',
  `permanent` tinyint(3) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfblocksadv`
--

CREATE TABLE `wp_wfblocksadv` (
  `id` int(10) UNSIGNED NOT NULL,
  `blockType` char(2) NOT NULL,
  `blockString` varchar(255) NOT NULL,
  `ctime` int(10) UNSIGNED NOT NULL,
  `reason` varchar(255) NOT NULL,
  `totalBlocked` int(10) UNSIGNED DEFAULT '0',
  `lastBlocked` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfconfig`
--

CREATE TABLE `wp_wfconfig` (
  `name` varchar(100) NOT NULL,
  `val` longblob,
  `autoload` enum('no','yes') NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wfconfig`
--

INSERT INTO `wp_wfconfig` (`name`, `val`, `autoload`) VALUES
('actUpdateInterval', '', 'yes'),
('addCacheComment', 0x30, 'yes'),
('advancedCommentScanning', 0x30, 'yes'),
('ajaxWatcherDisabled_admin', 0x30, 'yes'),
('ajaxWatcherDisabled_front', 0x30, 'yes'),
('alertEmails', '', 'yes'),
('alertOn_adminLogin', 0x31, 'yes'),
('alertOn_block', 0x31, 'yes'),
('alertOn_critical', 0x31, 'yes'),
('alertOn_firstAdminLoginOnly', 0x30, 'yes'),
('alertOn_firstNonAdminLoginOnly', 0x30, 'yes'),
('alertOn_loginLockout', 0x31, 'yes'),
('alertOn_lostPasswdForm', 0x31, 'yes'),
('alertOn_nonAdminLogin', 0x30, 'yes'),
('alertOn_throttle', 0x30, 'yes'),
('alertOn_update', 0x30, 'yes'),
('alertOn_warnings', 0x31, 'yes'),
('alertOn_wordfenceDeactivated', 0x31, 'yes'),
('alert_maxHourly', 0x30, 'yes'),
('allowed404s', 0x2f66617669636f6e2e69636f0a2f6170706c652d746f7563682d69636f6e2a2e706e670a2f2a4032782e706e670a2f62726f77736572636f6e6669672e786d6c, 'yes'),
('allowed404s6116Migration', 0x31, 'yes'),
('allowHTTPSCaching', 0x30, 'yes'),
('allScansScheduled', 0x613a303a7b7d, 'yes'),
('apiKey', 0x66323762393864313930656634313036633364616632366261363432643930343533306165336137343361313266616366366637616335303030333538636261306131303165313636636233346636656437333739316632623532306639313364336162343832356662346439636439323662393539646364383232656438316566363431386537306339386633306534336565633666373931333234323038, 'yes'),
('autoBlockScanners', 0x31, 'yes'),
('autoUpdate', 0x30, 'yes'),
('bannedURLs', '', 'yes'),
('betaThreatDefenseFeed', 0x30, 'yes'),
('blockedTime', 0x333030, 'yes'),
('blockFakeBots', 0x30, 'yes'),
('cacheType', 0x64697361626c6564, 'yes'),
('cbl_action', 0x626c6f636b, 'yes'),
('cbl_bypassRedirDest', '', 'yes'),
('cbl_bypassRedirURL', '', 'yes'),
('cbl_bypassViewURL', '', 'yes'),
('cbl_cookieVal', 0x35613134343362613761373030, 'yes'),
('cbl_countries', '', 'yes'),
('cbl_loggedInBlocked', 0x30, 'yes'),
('cbl_loginFormBlocked', 0x30, 'yes'),
('cbl_redirURL', '', 'yes'),
('cbl_restOfSiteBlocked', 0x31, 'yes'),
('checkSpamIP', 0x30, 'yes'),
('debugOn', 0x30, 'yes'),
('deleteTablesOnDeact', 0x30, 'yes'),
('detectProxyNextCheck', 0x31353131383832333031, 'no'),
('detectProxyNonce', 0x66383464656266386166616562396261343638333564656562363865326261336261633038633166373439333734613239333434373462663130326231363466, 'no'),
('detectProxyRecommendation', '', 'no'),
('disableCodeExecutionUploads', 0x30, 'yes'),
('disableConfigCaching', 0x30, 'yes'),
('disableCookies', 0x30, 'yes'),
('disableWAFIPBlocking', 0x30, 'yes'),
('email_summary_dashboard_widget_enabled', 0x31, 'yes'),
('email_summary_enabled', 0x31, 'yes'),
('email_summary_excluded_directories', 0x77702d636f6e74656e742f63616368652c77702d636f6e74656e742f77666c6f6773, 'yes'),
('email_summary_interval', 0x7765656b6c79, 'yes'),
('encKey', 0x36346334303030303466616430303030, 'yes'),
('fileContentsGSB6315Migration', 0x31, 'yes'),
('firewallEnabled', 0x31, 'yes'),
('geoIPVersionHash', 0x37393334303963346432343861393261323864656638333133623434633363626461313239616132626435643766363939363236396538333232353266396132, 'yes'),
('hasKeyConflict', '', 'yes'),
('howGetIPs', '', 'yes'),
('howGetIPs_trusted_proxies', '', 'yes'),
('isPaid', '', 'yes'),
('lastBlockAggregation', 0x31353131323737353030, 'yes'),
('liveActivityPauseEnabled', 0x31, 'yes'),
('liveTrafficEnabled', 0x31, 'yes'),
('liveTraf_ignoreIPs', '', 'yes'),
('liveTraf_ignorePublishers', 0x31, 'yes'),
('liveTraf_ignoreUA', '', 'yes'),
('liveTraf_ignoreUsers', '', 'yes'),
('liveTraf_maxRows', 0x32303030, 'yes'),
('loginSecurityEnabled', 0x31, 'yes'),
('loginSec_blockAdminReg', 0x31, 'yes'),
('loginSec_countFailMins', 0x323430, 'yes'),
('loginSec_disableAuthorScan', 0x31, 'yes'),
('loginSec_disableOEmbedAuthor', 0x30, 'yes'),
('loginSec_enableSeparateTwoFactor', 0x30, 'yes'),
('loginSec_lockInvalidUsers', 0x30, 'yes'),
('loginSec_lockoutMins', 0x323430, 'yes'),
('loginSec_maskLoginErrors', 0x31, 'yes'),
('loginSec_maxFailures', 0x3230, 'yes'),
('loginSec_maxForgotPasswd', 0x3230, 'yes'),
('loginSec_strongPasswds', 0x70756273, 'yes'),
('loginSec_userBlacklist', '', 'yes'),
('lowResourceScansEnabled', 0x30, 'yes'),
('max404Crawlers', 0x44495341424c4544, 'yes'),
('max404Crawlers_action', 0x7468726f74746c65, 'yes'),
('max404Humans', 0x44495341424c4544, 'yes'),
('max404Humans_action', 0x7468726f74746c65, 'yes'),
('maxExecutionTime', '', 'yes'),
('maxGlobalRequests', 0x44495341424c4544, 'yes'),
('maxGlobalRequests_action', 0x7468726f74746c65, 'yes'),
('maxMem', 0x323536, 'yes'),
('maxRequestsCrawlers', 0x44495341424c4544, 'yes'),
('maxRequestsCrawlers_action', 0x7468726f74746c65, 'yes'),
('maxRequestsHumans', 0x44495341424c4544, 'yes'),
('maxRequestsHumans_action', 0x7468726f74746c65, 'yes'),
('maxScanHits', 0x44495341424c4544, 'yes'),
('maxScanHits_action', 0x7468726f74746c65, 'yes'),
('migration636_email_summary_excluded_directories', 0x31, 'no'),
('neverBlockBG', 0x6e65766572426c6f636b5665726966696564, 'yes'),
('notification_blogHighlights', 0x31, 'yes'),
('notification_productUpdates', 0x31, 'yes'),
('notification_promotions', 0x31, 'yes'),
('notification_scanStatus', 0x31, 'yes'),
('notification_securityAlerts', 0x31, 'yes'),
('notification_updatesNeeded', 0x31, 'yes'),
('other_blockBadPOST', 0x30, 'yes'),
('other_bypassLitespeedNoabort', 0x30, 'yes'),
('other_hideWPVersion', 0x30, 'yes'),
('other_noAnonMemberComments', 0x31, 'yes'),
('other_pwStrengthOnUpdate', 0x31, 'yes'),
('other_scanComments', 0x31, 'yes'),
('other_scanOutside', 0x30, 'yes'),
('other_WFNet', 0x31, 'yes'),
('scansEnabled_checkGSB', 0x31, 'yes'),
('scansEnabled_checkHowGetIPs', 0x31, 'yes'),
('scansEnabled_checkReadableConfig', 0x31, 'yes'),
('scansEnabled_comments', 0x31, 'yes'),
('scansEnabled_core', 0x31, 'yes'),
('scansEnabled_coreUnknown', 0x31, 'yes'),
('scansEnabled_diskSpace', 0x31, 'yes'),
('scansEnabled_dns', 0x31, 'yes'),
('scansEnabled_fileContents', 0x31, 'yes'),
('scansEnabled_fileContentsGSB', 0x31, 'yes'),
('scansEnabled_highSense', 0x30, 'yes'),
('scansEnabled_malware', 0x31, 'yes'),
('scansEnabled_oldVersions', 0x31, 'yes'),
('scansEnabled_options', 0x31, 'yes'),
('scansEnabled_passwds', 0x31, 'yes'),
('scansEnabled_plugins', 0x30, 'yes'),
('scansEnabled_posts', 0x31, 'yes'),
('scansEnabled_scanImages', 0x30, 'yes'),
('scansEnabled_suspectedFiles', 0x31, 'yes'),
('scansEnabled_suspiciousAdminUsers', 0x31, 'yes'),
('scansEnabled_suspiciousOptions', 0x31, 'yes'),
('scansEnabled_themes', 0x30, 'yes'),
('scansEnabled_wpscan_directoryListingEnabled', 0x31, 'yes'),
('scansEnabled_wpscan_fullPathDisclosure', 0x31, 'yes'),
('scan_exclude', '', 'yes'),
('scan_include_extra', '', 'yes'),
('scan_maxDuration', '', 'yes'),
('scan_maxIssues', 0x31303030, 'yes'),
('scheduledScansEnabled', 0x31, 'yes'),
('showAdminBarMenu', 0x31, 'yes'),
('spamvertizeCheck', 0x30, 'yes'),
('ssl_verify', 0x31, 'yes'),
('startScansRemotely', 0x30, 'yes'),
('timeoffset_wf', 0x31, 'yes'),
('timeoffset_wf_updated', 0x31353131323737343939, 'yes'),
('wafAlertInterval', 0x363030, 'yes'),
('wafAlertOnAttacks', 0x31, 'yes'),
('wafAlertThreshold', 0x313030, 'yes'),
('wafAlertWhitelist', '', 'yes'),
('whitelisted', '', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfcrawlers`
--

CREATE TABLE `wp_wfcrawlers` (
  `IP` binary(16) NOT NULL,
  `patternSig` binary(16) NOT NULL,
  `status` char(8) NOT NULL,
  `lastUpdate` int(10) UNSIGNED NOT NULL,
  `PTR` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wffilemods`
--

CREATE TABLE `wp_wffilemods` (
  `filenameMD5` binary(16) NOT NULL,
  `filename` varchar(1000) NOT NULL,
  `knownFile` tinyint(3) UNSIGNED NOT NULL,
  `oldMD5` binary(16) NOT NULL,
  `newMD5` binary(16) NOT NULL,
  `SHAC` binary(32) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `stoppedOnSignature` varchar(255) NOT NULL DEFAULT '',
  `stoppedOnPosition` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `isSafeFile` varchar(1) NOT NULL DEFAULT '?'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfhits`
--

CREATE TABLE `wp_wfhits` (
  `id` int(10) UNSIGNED NOT NULL,
  `attackLogTime` double(17,6) UNSIGNED NOT NULL,
  `ctime` double(17,6) UNSIGNED NOT NULL,
  `IP` binary(16) DEFAULT NULL,
  `jsRun` tinyint(4) DEFAULT '0',
  `statusCode` int(11) NOT NULL DEFAULT '200',
  `isGoogle` tinyint(4) NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `newVisit` tinyint(3) UNSIGNED NOT NULL,
  `URL` text,
  `referer` text,
  `UA` text,
  `action` varchar(64) NOT NULL DEFAULT '',
  `actionDescription` text,
  `actionData` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfhoover`
--

CREATE TABLE `wp_wfhoover` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner` text,
  `host` text,
  `path` text,
  `hostKey` varbinary(124) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfissues`
--

CREATE TABLE `wp_wfissues` (
  `id` int(10) UNSIGNED NOT NULL,
  `time` int(10) UNSIGNED NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `severity` tinyint(3) UNSIGNED NOT NULL,
  `ignoreP` char(32) NOT NULL,
  `ignoreC` char(32) NOT NULL,
  `shortMsg` varchar(255) NOT NULL,
  `longMsg` text,
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfknownfilelist`
--

CREATE TABLE `wp_wfknownfilelist` (
  `id` int(11) UNSIGNED NOT NULL,
  `path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfleechers`
--

CREATE TABLE `wp_wfleechers` (
  `eMin` int(10) UNSIGNED NOT NULL,
  `IP` binary(16) NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wflockedout`
--

CREATE TABLE `wp_wflockedout` (
  `IP` binary(16) NOT NULL,
  `blockedTime` bigint(20) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `lastAttempt` int(10) UNSIGNED DEFAULT '0',
  `blockedHits` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wflocs`
--

CREATE TABLE `wp_wflocs` (
  `IP` binary(16) NOT NULL,
  `ctime` int(10) UNSIGNED NOT NULL,
  `failed` tinyint(3) UNSIGNED NOT NULL,
  `city` varchar(255) DEFAULT '',
  `region` varchar(255) DEFAULT '',
  `countryName` varchar(255) DEFAULT '',
  `countryCode` char(2) DEFAULT '',
  `lat` float(10,7) DEFAULT '0.0000000',
  `lon` float(10,7) DEFAULT '0.0000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wflogins`
--

CREATE TABLE `wp_wflogins` (
  `id` int(10) UNSIGNED NOT NULL,
  `hitID` int(11) DEFAULT NULL,
  `ctime` double(17,6) UNSIGNED NOT NULL,
  `fail` tinyint(3) UNSIGNED NOT NULL,
  `action` varchar(40) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `IP` binary(16) DEFAULT NULL,
  `UA` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfnet404s`
--

CREATE TABLE `wp_wfnet404s` (
  `sig` binary(16) NOT NULL,
  `ctime` int(10) UNSIGNED NOT NULL,
  `URI` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfnotifications`
--

CREATE TABLE `wp_wfnotifications` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `new` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `category` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '1000',
  `ctime` int(10) UNSIGNED NOT NULL,
  `html` text NOT NULL,
  `links` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfpendingissues`
--

CREATE TABLE `wp_wfpendingissues` (
  `id` int(10) UNSIGNED NOT NULL,
  `time` int(10) UNSIGNED NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `severity` tinyint(3) UNSIGNED NOT NULL,
  `ignoreP` char(32) NOT NULL,
  `ignoreC` char(32) NOT NULL,
  `shortMsg` varchar(255) NOT NULL,
  `longMsg` text,
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfreversecache`
--

CREATE TABLE `wp_wfreversecache` (
  `IP` binary(16) NOT NULL,
  `host` varchar(255) NOT NULL,
  `lastUpdate` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfscanners`
--

CREATE TABLE `wp_wfscanners` (
  `eMin` int(10) UNSIGNED NOT NULL,
  `IP` binary(16) NOT NULL,
  `hits` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfsnipcache`
--

CREATE TABLE `wp_wfsnipcache` (
  `id` int(10) UNSIGNED NOT NULL,
  `IP` varchar(45) NOT NULL DEFAULT '',
  `expiration` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `body` varchar(255) NOT NULL DEFAULT '',
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfstatus`
--

CREATE TABLE `wp_wfstatus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ctime` double(17,6) UNSIGNED NOT NULL,
  `level` tinyint(3) UNSIGNED NOT NULL,
  `type` char(5) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfthrottlelog`
--

CREATE TABLE `wp_wfthrottlelog` (
  `IP` binary(16) NOT NULL,
  `startTime` int(10) UNSIGNED NOT NULL,
  `endTime` int(10) UNSIGNED NOT NULL,
  `timesThrottled` int(10) UNSIGNED NOT NULL,
  `lastReason` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfvulnscanners`
--

CREATE TABLE `wp_wfvulnscanners` (
  `IP` binary(16) NOT NULL,
  `ctime` int(10) UNSIGNED NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yuzoviews`
--

CREATE TABLE `wp_yuzoviews` (
  `ID` int(11) NOT NULL,
  `post_id` int(15) NOT NULL,
  `views` int(14) NOT NULL,
  `last_viewed` datetime NOT NULL,
  `modified` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yuzoviews`
--

INSERT INTO `wp_yuzoviews` (`ID`, `post_id`, `views`, `last_viewed`, `modified`) VALUES
(1, 1, 77, '2017-11-04 17:11:55', 1509818102),
(2, 440, 10, '2017-11-07 11:11:30', 1510054236),
(3, 444, 70, '2017-11-07 11:11:30', 1510054233),
(4, 94, 1, '2017-11-04 14:11:41', 1509806513),
(5, 449, 205, '2017-12-05 19:12:11', 1512501104),
(6, 456, 12, '2017-12-03 18:12:21', 1512325266),
(7, 458, 4, '2017-11-05 12:11:21', 1509884482),
(8, 353, 33, '2017-11-24 15:11:44', 1511538269),
(9, 455, 2, '2017-11-24 14:11:45', 1511534751),
(10, 377, 165, '2017-12-03 19:12:18', 1512328725),
(11, 375, 144, '2017-12-04 16:12:02', 1512403377),
(12, 459, 83, '2017-12-05 19:12:08', 1512500901),
(13, 363, 6, '2017-11-17 21:11:38', 1510954680),
(14, 472, 5, '2017-11-24 15:11:40', 1511538003),
(15, 471, 10, '2017-11-24 15:11:40', 1511538000),
(16, 474, 20, '2017-12-05 19:12:08', 1512500906),
(17, 461, 88, '2017-11-25 07:11:23', 1511594586),
(18, 487, 1, '2017-11-18 06:11:56', 1510988161),
(19, 47, 1, '2017-11-18 08:11:03', 1510992188),
(20, 109, 76, '2017-11-18 15:11:25', 1511018708),
(21, 110, 26, '2017-11-18 10:11:16', 1511000211),
(22, 493, 53, '2017-12-04 16:12:26', 1512404773);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_aiowps_events`
--
ALTER TABLE `wp_aiowps_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_aiowps_failed_logins`
--
ALTER TABLE `wp_aiowps_failed_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_aiowps_global_meta`
--
ALTER TABLE `wp_aiowps_global_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `wp_aiowps_login_activity`
--
ALTER TABLE `wp_aiowps_login_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_aiowps_login_lockdown`
--
ALTER TABLE `wp_aiowps_login_lockdown`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_aiowps_permanent_block`
--
ALTER TABLE `wp_aiowps_permanent_block`
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
-- Indexes for table `wp_pieregister_code`
--
ALTER TABLE `wp_pieregister_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_pieregister_lockdowns`
--
ALTER TABLE `wp_pieregister_lockdowns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_pieregister_redirect_settings`
--
ALTER TABLE `wp_pieregister_redirect_settings`
  ADD PRIMARY KEY (`user_role`),
  ADD UNIQUE KEY `id` (`id`);

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
ALTER TABLE `wp_posts` ADD FULLTEXT KEY `yarpp_title` (`post_title`);
ALTER TABLE `wp_posts` ADD FULLTEXT KEY `yarpp_content` (`post_content`);

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
-- Indexes for table `wp_uam_accessgroups`
--
ALTER TABLE `wp_uam_accessgroups`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wp_uam_accessgroup_to_object`
--
ALTER TABLE `wp_uam_accessgroup_to_object`
  ADD PRIMARY KEY (`object_id`,`object_type`,`group_id`,`group_type`);

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
-- Indexes for table `wp_wfbadleechers`
--
ALTER TABLE `wp_wfbadleechers`
  ADD PRIMARY KEY (`eMin`,`IP`);

--
-- Indexes for table `wp_wfblockedcommentlog`
--
ALTER TABLE `wp_wfblockedcommentlog`
  ADD PRIMARY KEY (`IP`,`unixday`,`blockType`);

--
-- Indexes for table `wp_wfblockediplog`
--
ALTER TABLE `wp_wfblockediplog`
  ADD PRIMARY KEY (`IP`,`unixday`,`blockType`);

--
-- Indexes for table `wp_wfblocks`
--
ALTER TABLE `wp_wfblocks`
  ADD PRIMARY KEY (`IP`),
  ADD KEY `k1` (`wfsn`);

--
-- Indexes for table `wp_wfblocksadv`
--
ALTER TABLE `wp_wfblocksadv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wfconfig`
--
ALTER TABLE `wp_wfconfig`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `wp_wfcrawlers`
--
ALTER TABLE `wp_wfcrawlers`
  ADD PRIMARY KEY (`IP`,`patternSig`);

--
-- Indexes for table `wp_wffilemods`
--
ALTER TABLE `wp_wffilemods`
  ADD PRIMARY KEY (`filenameMD5`);

--
-- Indexes for table `wp_wfhits`
--
ALTER TABLE `wp_wfhits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k1` (`ctime`),
  ADD KEY `k2` (`IP`,`ctime`),
  ADD KEY `attackLogTime` (`attackLogTime`);

--
-- Indexes for table `wp_wfhoover`
--
ALTER TABLE `wp_wfhoover`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k2` (`hostKey`);

--
-- Indexes for table `wp_wfissues`
--
ALTER TABLE `wp_wfissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wfknownfilelist`
--
ALTER TABLE `wp_wfknownfilelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wfleechers`
--
ALTER TABLE `wp_wfleechers`
  ADD PRIMARY KEY (`eMin`,`IP`);

--
-- Indexes for table `wp_wflockedout`
--
ALTER TABLE `wp_wflockedout`
  ADD PRIMARY KEY (`IP`);

--
-- Indexes for table `wp_wflocs`
--
ALTER TABLE `wp_wflocs`
  ADD PRIMARY KEY (`IP`);

--
-- Indexes for table `wp_wflogins`
--
ALTER TABLE `wp_wflogins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k1` (`IP`,`fail`),
  ADD KEY `hitID` (`hitID`);

--
-- Indexes for table `wp_wfnet404s`
--
ALTER TABLE `wp_wfnet404s`
  ADD PRIMARY KEY (`sig`),
  ADD KEY `k1` (`ctime`);

--
-- Indexes for table `wp_wfnotifications`
--
ALTER TABLE `wp_wfnotifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wfpendingissues`
--
ALTER TABLE `wp_wfpendingissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wfreversecache`
--
ALTER TABLE `wp_wfreversecache`
  ADD PRIMARY KEY (`IP`);

--
-- Indexes for table `wp_wfscanners`
--
ALTER TABLE `wp_wfscanners`
  ADD PRIMARY KEY (`eMin`,`IP`);

--
-- Indexes for table `wp_wfsnipcache`
--
ALTER TABLE `wp_wfsnipcache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expiration` (`expiration`),
  ADD KEY `IP` (`IP`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `wp_wfstatus`
--
ALTER TABLE `wp_wfstatus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k1` (`ctime`),
  ADD KEY `k2` (`type`);

--
-- Indexes for table `wp_wfthrottlelog`
--
ALTER TABLE `wp_wfthrottlelog`
  ADD PRIMARY KEY (`IP`),
  ADD KEY `k2` (`endTime`);

--
-- Indexes for table `wp_wfvulnscanners`
--
ALTER TABLE `wp_wfvulnscanners`
  ADD PRIMARY KEY (`IP`);

--
-- Indexes for table `wp_yuzoviews`
--
ALTER TABLE `wp_yuzoviews`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_aiowps_events`
--
ALTER TABLE `wp_aiowps_events`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_aiowps_failed_logins`
--
ALTER TABLE `wp_aiowps_failed_logins`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_aiowps_global_meta`
--
ALTER TABLE `wp_aiowps_global_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_aiowps_login_activity`
--
ALTER TABLE `wp_aiowps_login_activity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_aiowps_login_lockdown`
--
ALTER TABLE `wp_aiowps_login_lockdown`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_aiowps_permanent_block`
--
ALTER TABLE `wp_aiowps_permanent_block`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3657;
--
-- AUTO_INCREMENT for table `wp_pieregister_code`
--
ALTER TABLE `wp_pieregister_code`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_pieregister_lockdowns`
--
ALTER TABLE `wp_pieregister_lockdowns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_pieregister_redirect_settings`
--
ALTER TABLE `wp_pieregister_redirect_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1518;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=599;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `wp_uam_accessgroups`
--
ALTER TABLE `wp_uam_accessgroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=435;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `wp_wfblocksadv`
--
ALTER TABLE `wp_wfblocksadv`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wfhits`
--
ALTER TABLE `wp_wfhits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wfhoover`
--
ALTER TABLE `wp_wfhoover`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wfissues`
--
ALTER TABLE `wp_wfissues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wfknownfilelist`
--
ALTER TABLE `wp_wfknownfilelist`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wflogins`
--
ALTER TABLE `wp_wflogins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wfpendingissues`
--
ALTER TABLE `wp_wfpendingissues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wfsnipcache`
--
ALTER TABLE `wp_wfsnipcache`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wfstatus`
--
ALTER TABLE `wp_wfstatus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_yuzoviews`
--
ALTER TABLE `wp_yuzoviews`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
