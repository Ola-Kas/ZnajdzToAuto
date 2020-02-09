-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 28 Sty 2020, 12:29
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `wp-projekt`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Komentator WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-01-17 11:26:50', '2020-01-17 10:26:50', 'Cześć, to jest komentarz.\nAby zapoznać się z moderowaniem, edycją i usuwaniem komentarzy, należy odwiedzić ekran Komentarze w kokpicie.\nAwatary komentujących pochodzą z <a href=\"https://pl.gravatar.com\">Gravatara</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/ZnajdzToAuto', 'yes'),
(2, 'home', 'http://localhost/ZnajdzToAuto', 'yes'),
(3, 'blogname', 'ZnajdźToAuto', 'yes'),
(4, 'blogdescription', 'Portal ogłoszeniowy, dzięki któremu sprzedasz i kupisz auto.', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'dmuranowski@edu.cdv.pl', 'yes'),
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
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:112:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:54:\"addition_cats/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?addition_cats=$matches[1]&feed=$matches[2]\";s:49:\"addition_cats/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?addition_cats=$matches[1]&feed=$matches[2]\";s:30:\"addition_cats/([^/]+)/embed/?$\";s:46:\"index.php?addition_cats=$matches[1]&embed=true\";s:42:\"addition_cats/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?addition_cats=$matches[1]&paged=$matches[2]\";s:24:\"addition_cats/([^/]+)/?$\";s:35:\"index.php?addition_cats=$matches[1]\";s:41:\"advertisement/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"advertisement/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"advertisement/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"advertisement/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"advertisement/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"advertisement/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"advertisement/([^/]+)/embed/?$\";s:46:\"index.php?advertisement=$matches[1]&embed=true\";s:34:\"advertisement/([^/]+)/trackback/?$\";s:40:\"index.php?advertisement=$matches[1]&tb=1\";s:42:\"advertisement/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?advertisement=$matches[1]&paged=$matches[2]\";s:49:\"advertisement/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?advertisement=$matches[1]&cpage=$matches[2]\";s:38:\"advertisement/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?advertisement=$matches[1]&page=$matches[2]\";s:30:\"advertisement/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"advertisement/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"advertisement/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"advertisement/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"advertisement/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"advertisement/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";i:2;s:33:\"classic-editor/classic-editor.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:25:\"relevanssi/relevanssi.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'ZnajdzToAuto', 'yes'),
(41, 'stylesheet', 'ZnajdzToAuto', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
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
(81, 'uninstall_plugins', 'a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', 'Europe/Warsaw', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '5', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1594808810', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'pl_PL', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:6:{i:1580214411;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1580250411;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1580293610;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1580293620;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1580293624;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'theme_mods_twentytwenty', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1579863755;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:6:\"footer\";i:3;}}', 'yes'),
(134, 'can_compress_scripts', '1', 'no'),
(145, '_site_transient_timeout_php_check_12edeb5890095749089987982a1404ce', '1580284635', 'no'),
(146, '_site_transient_php_check_12edeb5890095749089987982a1404ce', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(159, 'current_theme', 'Project theme', 'yes'),
(160, 'theme_mods_Projekt theme', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:9:\"main-menu\";i:2;s:11:\"footer-menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1579863731;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(161, 'theme_switched', '', 'yes'),
(164, 'recently_activated', 'a:2:{s:41:\"add-search-to-menu/add-search-to-menu.php\";i:1579906582;s:23:\"ml-slider/ml-slider.php\";i:1579776283;}', 'yes'),
(172, 'acf_version', '5.8.7', 'yes'),
(173, 'widget_bcn_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(176, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(183, 'fs_active_plugins', 'O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:36:\"add-search-to-menu/includes/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.3.0\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1579906587;s:11:\"plugin_path\";s:41:\"add-search-to-menu/add-search-to-menu.php\";}}s:7:\"abspath\";s:29:\"C:\\xampp\\htdocs\\ZnajdzToAuto/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:41:\"add-search-to-menu/add-search-to-menu.php\";s:8:\"sdk_path\";s:36:\"add-search-to-menu/includes/freemius\";s:7:\"version\";s:5:\"2.3.0\";s:13:\"in_activation\";b:1;s:9:\"timestamp\";i:1579906587;}}', 'yes'),
(184, 'fs_debug_mode', '', 'yes'),
(185, 'fs_accounts', 'a:15:{s:21:\"id_slug_type_path_map\";a:1:{i:2086;a:3:{s:4:\"slug\";s:18:\"add-search-to-menu\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:41:\"add-search-to-menu/add-search-to-menu.php\";}}s:11:\"plugin_data\";a:1:{s:18:\"add-search-to-menu\";a:22:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:41:\"add-search-to-menu/add-search-to-menu.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1579692054;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.3.0\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"4.4.6\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:21:\"is_plugin_new_install\";b:1;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:9:\"localhost\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1579692054;s:7:\"version\";s:5:\"4.4.6\";}s:17:\"was_plugin_loaded\";b:1;s:15:\"prev_is_premium\";b:0;s:14:\"has_trial_plan\";b:0;s:22:\"install_sync_timestamp\";i:1579906587;s:19:\"keepalive_timestamp\";i:1579906587;s:20:\"activation_timestamp\";i:1579692073;s:14:\"sync_timestamp\";i:1579898145;s:9:\"beta_data\";a:2:{s:7:\"is_beta\";b:0;s:7:\"version\";s:5:\"4.4.6\";}s:16:\"uninstall_reason\";O:8:\"stdClass\":3:{s:2:\"id\";s:1:\"1\";s:4:\"info\";s:0:\"\";s:12:\"is_anonymous\";b:0;}}}s:13:\"file_slug_map\";a:1:{s:41:\"add-search-to-menu/add-search-to-menu.php\";s:18:\"add-search-to-menu\";}s:7:\"plugins\";a:1:{s:18:\"add-search-to-menu\";O:9:\"FS_Plugin\":22:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:12:\"Ivory Search\";s:4:\"slug\";s:18:\"add-search-to-menu\";s:12:\"premium_slug\";s:26:\"add-search-to-menu-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";s:8:\"selected\";s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:41:\"add-search-to-menu/add-search-to-menu.php\";s:7:\"version\";s:5:\"4.4.6\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:10:\"public_key\";s:32:\"pk_e05b040b84ff5014d0f0955127743\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"2086\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"5a8473d4c00e9b73403b8f4edeefe5d1\";s:5:\"plans\";a:1:{s:18:\"add-search-to-menu\";a:3:{i:0;O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:8:\"MjA4Ng==\";s:4:\"name\";s:8:\"ZnJlZQ==\";s:5:\"title\";s:12:\"U3RhcnRlcg==\";s:11:\"description\";s:20:\"QmFzaWMgT3B0aW9ucw==\";s:17:\"is_free_localhost\";s:4:\"MQ==\";s:17:\"is_block_features\";s:4:\"MQ==\";s:12:\"license_type\";s:4:\"MA==\";s:16:\"is_https_support\";s:0:\"\";s:12:\"trial_period\";N;s:23:\"is_require_subscription\";s:0:\"\";s:10:\"support_kb\";N;s:13:\"support_forum\";s:44:\"aHR0cHM6Ly9pdm9yeXNlYXJjaC5jb20vc3VwcG9ydC8=\";s:13:\"support_email\";N;s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";s:0:\"\";s:11:\"is_featured\";s:0:\"\";s:2:\"id\";s:8:\"MzEyNg==\";s:7:\"updated\";s:28:\"MjAxOC0wNy0xMSAxNDowODo1Nw==\";s:7:\"created\";s:28:\"MjAxOC0wNS0xNiAwOTozMDowNg==\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}i:1;O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:8:\"MjA4Ng==\";s:4:\"name\";s:4:\"cHJv\";s:5:\"title\";s:4:\"UHJv\";s:11:\"description\";s:20:\"UHJlbWl1bSBPcHRpb25z\";s:17:\"is_free_localhost\";s:4:\"MQ==\";s:17:\"is_block_features\";s:4:\"MQ==\";s:12:\"license_type\";s:4:\"MA==\";s:16:\"is_https_support\";s:0:\"\";s:12:\"trial_period\";N;s:23:\"is_require_subscription\";s:0:\"\";s:10:\"support_kb\";N;s:13:\"support_forum\";s:44:\"aHR0cHM6Ly9pdm9yeXNlYXJjaC5jb20vc3VwcG9ydC8=\";s:13:\"support_email\";s:28:\"YWRtaW5AaXZvcnlzZWFyY2guY29t\";s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";s:0:\"\";s:11:\"is_featured\";s:0:\"\";s:2:\"id\";s:8:\"MzU0Ng==\";s:7:\"updated\";s:28:\"MjAxOC0wOS0wNyAxMDowNzo0Mw==\";s:7:\"created\";s:28:\"MjAxOC0wNy0xMSAxNDowMzo0MA==\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}i:2;O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:8:\"MjA4Ng==\";s:4:\"name\";s:12:\"cHJvX3BsdXM=\";s:5:\"title\";s:12:\"UHJvIFBsdXM=\";s:11:\"description\";s:24:\"QWR2YW5jZWQgT3B0aW9ucw==\";s:17:\"is_free_localhost\";s:4:\"MQ==\";s:17:\"is_block_features\";s:4:\"MQ==\";s:12:\"license_type\";s:4:\"MA==\";s:16:\"is_https_support\";s:0:\"\";s:12:\"trial_period\";N;s:23:\"is_require_subscription\";s:0:\"\";s:10:\"support_kb\";s:40:\"aHR0cHM6Ly9pdm9yeXNlYXJjaC5jb20vZG9jcy8=\";s:13:\"support_forum\";s:44:\"aHR0cHM6Ly9pdm9yeXNlYXJjaC5jb20vc3VwcG9ydC8=\";s:13:\"support_email\";s:28:\"YWRtaW5AaXZvcnlzZWFyY2guY29t\";s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";s:0:\"\";s:11:\"is_featured\";s:4:\"MQ==\";s:2:\"id\";s:8:\"MzQ0OA==\";s:7:\"updated\";s:28:\"MjAxOC0wOS0wNyAxMDowNzo1Nw==\";s:7:\"created\";s:28:\"MjAxOC0wNy0wMSAxODowNDo1Mg==\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}}s:14:\"active_plugins\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1579906580;s:3:\"md5\";s:32:\"f48583b1180eaf610f28de5811f907b7\";s:7:\"plugins\";a:5:{s:30:\"advanced-custom-fields/acf.php\";a:5:{s:4:\"slug\";s:22:\"advanced-custom-fields\";s:7:\"version\";s:5:\"5.8.7\";s:5:\"title\";s:22:\"Advanced Custom Fields\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";a:5:{s:4:\"slug\";s:16:\"breadcrumb-navxt\";s:7:\"version\";s:5:\"6.4.0\";s:5:\"title\";s:16:\"Breadcrumb NavXT\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:33:\"classic-editor/classic-editor.php\";a:5:{s:4:\"slug\";s:14:\"classic-editor\";s:7:\"version\";s:3:\"1.5\";s:5:\"title\";s:14:\"Classic Editor\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:41:\"add-search-to-menu/add-search-to-menu.php\";a:5:{s:4:\"slug\";s:18:\"add-search-to-menu\";s:7:\"version\";s:5:\"4.4.6\";s:5:\"title\";s:12:\"Ivory Search\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:36:\"contact-form-7/wp-contact-form-7.php\";a:5:{s:4:\"slug\";s:14:\"contact-form-7\";s:7:\"version\";s:5:\"5.1.6\";s:5:\"title\";s:14:\"Contact Form 7\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}}}s:11:\"all_plugins\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1579898146;s:3:\"md5\";s:32:\"d5db049c9af55f51da978b6bad6367c6\";s:7:\"plugins\";a:7:{s:30:\"advanced-custom-fields/acf.php\";a:5:{s:4:\"slug\";s:22:\"advanced-custom-fields\";s:7:\"version\";s:5:\"5.8.7\";s:5:\"title\";s:22:\"Advanced Custom Fields\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:19:\"akismet/akismet.php\";a:5:{s:4:\"slug\";s:7:\"akismet\";s:7:\"version\";s:5:\"4.1.3\";s:5:\"title\";s:17:\"Akismet Anti-Spam\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";a:5:{s:4:\"slug\";s:16:\"breadcrumb-navxt\";s:7:\"version\";s:5:\"6.4.0\";s:5:\"title\";s:16:\"Breadcrumb NavXT\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:33:\"classic-editor/classic-editor.php\";a:5:{s:4:\"slug\";s:14:\"classic-editor\";s:7:\"version\";s:3:\"1.5\";s:5:\"title\";s:14:\"Classic Editor\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:61:\"appthemes-classipress-ads-importer-plugin/classi-importer.php\";a:5:{s:4:\"slug\";s:41:\"appthemes-classipress-ads-importer-plugin\";s:7:\"version\";s:5:\"2.1.0\";s:5:\"title\";s:31:\"ClassiPress Ads Importer plugin\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:41:\"add-search-to-menu/add-search-to-menu.php\";a:5:{s:4:\"slug\";s:18:\"add-search-to-menu\";s:7:\"version\";s:5:\"4.4.6\";s:5:\"title\";s:12:\"Ivory Search\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:36:\"contact-form-7/wp-contact-form-7.php\";a:5:{s:4:\"slug\";s:14:\"contact-form-7\";s:7:\"version\";s:5:\"5.1.6\";s:5:\"title\";s:14:\"Contact Form 7\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}}}s:10:\"all_themes\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1579906580;s:3:\"md5\";s:32:\"174c240906a04e253a7842fad7acdbde\";s:6:\"themes\";a:1:{s:12:\"ZnajdzToAuto\";a:5:{s:4:\"slug\";s:12:\"ZnajdzToAuto\";s:7:\"version\";s:3:\"1.0\";s:5:\"title\";s:12:\"ZnajdzToAuto\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}}}s:5:\"sites\";a:1:{s:18:\"add-search-to-menu\";O:7:\"FS_Site\":25:{s:7:\"site_id\";s:8:\"16336550\";s:9:\"plugin_id\";s:4:\"2086\";s:7:\"user_id\";s:7:\"2600677\";s:5:\"title\";s:13:\"ZnajdźToAuto\";s:3:\"url\";s:29:\"http://localhost/ZnajdzToAuto\";s:7:\"version\";s:5:\"4.4.6\";s:8:\"language\";s:5:\"pl-PL\";s:7:\"charset\";s:5:\"UTF-8\";s:16:\"platform_version\";s:5:\"5.3.2\";s:11:\"sdk_version\";s:5:\"2.3.0\";s:28:\"programming_language_version\";s:5:\"7.4.1\";s:7:\"plan_id\";s:4:\"3126\";s:10:\"license_id\";N;s:13:\"trial_plan_id\";N;s:10:\"trial_ends\";N;s:10:\"is_premium\";b:0;s:15:\"is_disconnected\";b:0;s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;s:10:\"public_key\";s:32:\"pk_8e08830232054ed6fbbaa2a1cad72\";s:10:\"secret_key\";s:32:\"sk_IF?O$THkW4lr<]9Eo#SE=Nl_oM0vu\";s:2:\"id\";s:7:\"3785328\";s:7:\"updated\";s:19:\"2020-01-24 22:56:20\";s:7:\"created\";s:19:\"2020-01-22 11:21:12\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:5:\"users\";a:1:{i:2600677;O:7:\"FS_User\":13:{s:5:\"email\";s:22:\"dmuranowski@edu.cdv.pl\";s:5:\"first\";s:13:\"administrator\";s:4:\"last\";s:0:\"\";s:11:\"is_verified\";b:0;s:7:\"is_beta\";b:0;s:11:\"customer_id\";N;s:5:\"gross\";i:0;s:10:\"public_key\";s:32:\"pk_312b01847fa2bc2a788f327d78544\";s:10:\"secret_key\";s:32:\"sk_Wn)Q8n%r-6+%;6d6c4:7nQHBar#hK\";s:2:\"id\";s:7:\"2600677\";s:7:\"updated\";N;s:7:\"created\";s:19:\"2020-01-22 11:21:12\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:23:\"user_id_license_ids_map\";a:1:{i:2086;a:1:{i:2600677;a:0:{}}}s:12:\"all_licenses\";a:1:{i:2086;a:0:{}}s:7:\"updates\";a:1:{i:2086;N;}s:13:\"admin_notices\";a:1:{s:18:\"add-search-to-menu\";a:0:{}}}', 'yes'),
(186, 'fs_api_cache', 'a:0:{}', 'yes'),
(187, 'fs_gdpr', 'a:1:{s:2:\"u1\";a:2:{s:8:\"required\";b:0;s:18:\"show_opt_in_notice\";b:0;}}', 'yes'),
(190, 'widget_is_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(191, 'is_install', '2020-01-22', 'yes'),
(192, '_site_transient_timeout_locked_1', '1895052075', 'no'),
(193, '_site_transient_locked_1', '1', 'no'),
(195, 'is_settings', 'a:5:{s:13:\"header_search\";s:1:\"0\";s:13:\"footer_search\";s:1:\"0\";s:10:\"custom_css\";s:0:\"\";s:9:\"stopwords\";s:0:\"\";s:8:\"synonyms\";s:0:\"\";}', 'yes'),
(205, 'is_search_22', 'a:4:{s:11:\"text-box-bg\";s:7:\"#31a078\";s:16:\"placeholder-text\";s:9:\"Szukaj...\";s:15:\"search-btn-text\";s:6:\"Szukaj\";s:10:\"form-style\";s:15:\"is-form-style-3\";}', 'yes'),
(209, 'category_children', 'a:0:{}', 'yes'),
(218, 'widget_metaslider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(219, 'ms_hide_all_ads_until', '1580985723', 'yes'),
(220, 'metaslider_systemcheck', 'a:2:{s:16:\"wordPressVersion\";b:0;s:12:\"imageLibrary\";b:0;}', 'no'),
(221, 'ml-slider_children', 'a:0:{}', 'yes'),
(222, 'metaslider_tour_cancelled_on', 'add-slide', 'yes'),
(238, '_site_transient_timeout_browser_05f578eb3fa9f908f5d74ef7bf6207a5', '1580456675', 'no'),
(239, '_site_transient_browser_05f578eb3fa9f908f5d74ef7bf6207a5', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"79.0.3945.130\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(256, 'bcn_version', '6.4.0', 'no'),
(257, 'bcn_options_bk', 'a:82:{s:17:\"bmainsite_display\";b:1;s:18:\"Hmainsite_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:28:\"Hmainsite_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:13:\"bhome_display\";b:1;s:14:\"Hhome_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:24:\"Hhome_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:13:\"bblog_display\";b:1;s:10:\"hseparator\";s:6:\" &gt; \";s:12:\"blimit_title\";b:0;s:17:\"amax_title_length\";i:20;s:20:\"bcurrent_item_linked\";b:0;s:28:\"bpost_page_hierarchy_display\";b:1;s:33:\"bpost_page_hierarchy_parent_first\";b:1;s:25:\"Spost_page_hierarchy_type\";s:15:\"BCN_POST_PARENT\";s:19:\"Hpost_page_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:29:\"Hpost_page_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:15:\"apost_page_root\";s:1:\"5\";s:15:\"Hpaged_template\";s:41:\"<span class=\"%type%\">Page %htitle%</span>\";s:14:\"bpaged_display\";b:0;s:19:\"Hpost_post_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:29:\"Hpost_post_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:15:\"apost_post_root\";s:1:\"0\";s:28:\"bpost_post_hierarchy_display\";b:1;s:33:\"bpost_post_hierarchy_parent_first\";b:0;s:27:\"bpost_post_taxonomy_referer\";b:0;s:25:\"Spost_post_hierarchy_type\";s:8:\"category\";s:32:\"bpost_attachment_archive_display\";b:1;s:34:\"bpost_attachment_hierarchy_display\";b:1;s:39:\"bpost_attachment_hierarchy_parent_first\";b:1;s:33:\"bpost_attachment_taxonomy_referer\";b:0;s:31:\"Spost_attachment_hierarchy_type\";s:15:\"BCN_POST_PARENT\";s:21:\"apost_attachment_root\";i:0;s:25:\"Hpost_attachment_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:35:\"Hpost_attachment_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:13:\"H404_template\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:10:\"S404_title\";s:3:\"404\";s:16:\"Hsearch_template\";s:319:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">Search results for &#039;<a property=\"item\" typeof=\"WebPage\" title=\"Go to the first page of search results for %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current>%htitle%</a>&#039;</span><meta property=\"position\" content=\"%position%\"></span>\";s:26:\"Hsearch_template_no_anchor\";s:60:\"<span class=\"%type%\">Wyniki wyszukiwania %dla htitle%</span>\";s:22:\"Htax_post_tag_template\";s:268:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% tag archives.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:32:\"Htax_post_tag_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:25:\"Htax_post_format_template\";s:264:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% archives.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:35:\"Htax_post_format_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:16:\"Hauthor_template\";s:258:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">Articles by: <a title=\"Go to the first page of posts by %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current>%htitle%</a></span><meta property=\"position\" content=\"%position%\"></span>\";s:26:\"Hauthor_template_no_anchor\";s:49:\"<span class=\"%type%\">Articles by: %htitle%</span>\";s:12:\"Sauthor_name\";s:12:\"display_name\";s:12:\"aauthor_root\";i:0;s:22:\"Htax_category_template\";s:273:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% category archives.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:32:\"Htax_category_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:14:\"Hdate_template\";s:264:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% archives.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:24:\"Hdate_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:26:\"bpost_ads_taxonomy_referer\";b:0;s:18:\"Hpost_ads_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:28:\"Hpost_ads_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:14:\"apost_ads_root\";i:0;s:27:\"bpost_ads_hierarchy_display\";b:0;s:25:\"bpost_ads_archive_display\";b:1;s:24:\"Spost_ads_hierarchy_type\";s:8:\"BCN_DATE\";s:32:\"bpost_ads_hierarchy_parent_first\";b:0;s:38:\"bpost_acf-field-group_taxonomy_referer\";b:0;s:30:\"Hpost_acf-field-group_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:40:\"Hpost_acf-field-group_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:26:\"apost_acf-field-group_root\";i:0;s:39:\"bpost_acf-field-group_hierarchy_display\";b:0;s:37:\"bpost_acf-field-group_archive_display\";b:0;s:36:\"Spost_acf-field-group_hierarchy_type\";s:10:\"BCN_PARENT\";s:44:\"bpost_acf-field-group_hierarchy_parent_first\";b:0;s:32:\"bpost_acf-field_taxonomy_referer\";b:0;s:24:\"Hpost_acf-field_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:34:\"Hpost_acf-field_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:20:\"apost_acf-field_root\";i:0;s:33:\"bpost_acf-field_hierarchy_display\";b:0;s:31:\"bpost_acf-field_archive_display\";b:0;s:30:\"Spost_acf-field_hierarchy_type\";s:10:\"BCN_PARENT\";s:38:\"bpost_acf-field_hierarchy_parent_first\";b:0;s:37:\"bpost_is_search_form_taxonomy_referer\";b:0;s:29:\"Hpost_is_search_form_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:39:\"Hpost_is_search_form_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:25:\"apost_is_search_form_root\";i:0;s:38:\"bpost_is_search_form_hierarchy_display\";b:0;s:36:\"bpost_is_search_form_archive_display\";b:0;s:35:\"Spost_is_search_form_hierarchy_type\";s:8:\"BCN_DATE\";s:43:\"bpost_is_search_form_hierarchy_parent_first\";b:0;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(258, 'bcn_options', 'a:82:{s:17:\"bmainsite_display\";b:1;s:18:\"Hmainsite_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:28:\"Hmainsite_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:13:\"bhome_display\";b:1;s:14:\"Hhome_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:24:\"Hhome_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:13:\"bblog_display\";b:1;s:10:\"hseparator\";s:6:\" &gt; \";s:12:\"blimit_title\";b:0;s:17:\"amax_title_length\";i:20;s:20:\"bcurrent_item_linked\";b:0;s:28:\"bpost_page_hierarchy_display\";b:1;s:33:\"bpost_page_hierarchy_parent_first\";b:1;s:25:\"Spost_page_hierarchy_type\";s:15:\"BCN_POST_PARENT\";s:19:\"Hpost_page_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:29:\"Hpost_page_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:15:\"apost_page_root\";s:1:\"5\";s:15:\"Hpaged_template\";s:41:\"<span class=\"%type%\">Page %htitle%</span>\";s:14:\"bpaged_display\";b:0;s:19:\"Hpost_post_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:29:\"Hpost_post_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:15:\"apost_post_root\";s:1:\"0\";s:28:\"bpost_post_hierarchy_display\";b:1;s:33:\"bpost_post_hierarchy_parent_first\";b:0;s:27:\"bpost_post_taxonomy_referer\";b:0;s:25:\"Spost_post_hierarchy_type\";s:8:\"category\";s:32:\"bpost_attachment_archive_display\";b:1;s:34:\"bpost_attachment_hierarchy_display\";b:1;s:39:\"bpost_attachment_hierarchy_parent_first\";b:1;s:33:\"bpost_attachment_taxonomy_referer\";b:0;s:31:\"Spost_attachment_hierarchy_type\";s:15:\"BCN_POST_PARENT\";s:21:\"apost_attachment_root\";i:0;s:25:\"Hpost_attachment_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:35:\"Hpost_attachment_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:13:\"H404_template\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:10:\"S404_title\";s:3:\"404\";s:16:\"Hsearch_template\";s:319:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">Search results for &#039;<a property=\"item\" typeof=\"WebPage\" title=\"Go to the first page of search results for %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current>%htitle%</a>&#039;</span><meta property=\"position\" content=\"%position%\"></span>\";s:26:\"Hsearch_template_no_anchor\";s:60:\"<span class=\"%type%\">Wyniki wyszukiwania dla %htitle%</span>\";s:22:\"Htax_post_tag_template\";s:268:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% tag archives.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:32:\"Htax_post_tag_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:25:\"Htax_post_format_template\";s:264:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% archives.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:35:\"Htax_post_format_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:16:\"Hauthor_template\";s:258:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">Articles by: <a title=\"Go to the first page of posts by %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current>%htitle%</a></span><meta property=\"position\" content=\"%position%\"></span>\";s:26:\"Hauthor_template_no_anchor\";s:49:\"<span class=\"%type%\">Articles by: %htitle%</span>\";s:12:\"Sauthor_name\";s:12:\"display_name\";s:12:\"aauthor_root\";i:0;s:22:\"Htax_category_template\";s:273:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% category archives.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:32:\"Htax_category_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:14:\"Hdate_template\";s:264:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% archives.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:24:\"Hdate_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:26:\"bpost_ads_taxonomy_referer\";b:0;s:18:\"Hpost_ads_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:28:\"Hpost_ads_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:14:\"apost_ads_root\";i:0;s:27:\"bpost_ads_hierarchy_display\";b:0;s:25:\"bpost_ads_archive_display\";b:1;s:24:\"Spost_ads_hierarchy_type\";s:8:\"BCN_DATE\";s:32:\"bpost_ads_hierarchy_parent_first\";b:0;s:38:\"bpost_acf-field-group_taxonomy_referer\";b:0;s:30:\"Hpost_acf-field-group_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:40:\"Hpost_acf-field-group_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:26:\"apost_acf-field-group_root\";i:0;s:39:\"bpost_acf-field-group_hierarchy_display\";b:0;s:37:\"bpost_acf-field-group_archive_display\";b:0;s:36:\"Spost_acf-field-group_hierarchy_type\";s:10:\"BCN_PARENT\";s:44:\"bpost_acf-field-group_hierarchy_parent_first\";b:0;s:32:\"bpost_acf-field_taxonomy_referer\";b:0;s:24:\"Hpost_acf-field_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:34:\"Hpost_acf-field_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:20:\"apost_acf-field_root\";i:0;s:33:\"bpost_acf-field_hierarchy_display\";b:0;s:31:\"bpost_acf-field_archive_display\";b:0;s:30:\"Spost_acf-field_hierarchy_type\";s:10:\"BCN_PARENT\";s:38:\"bpost_acf-field_hierarchy_parent_first\";b:0;s:37:\"bpost_is_search_form_taxonomy_referer\";b:0;s:29:\"Hpost_is_search_form_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:39:\"Hpost_is_search_form_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:25:\"apost_is_search_form_root\";i:0;s:38:\"bpost_is_search_form_hierarchy_display\";b:0;s:36:\"bpost_is_search_form_archive_display\";b:0;s:35:\"Spost_is_search_form_hierarchy_type\";s:8:\"BCN_DATE\";s:43:\"bpost_is_search_form_hierarchy_parent_first\";b:0;}', 'yes'),
(264, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pl_PL/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"pl_PL\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pl_PL/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1580207218;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(267, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.6\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1579863534;s:7:\"version\";s:5:\"5.1.6\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(268, 'is_notices', 'a:1:{s:10:\"is_notices\";a:0:{}}', 'yes'),
(271, '_site_transient_timeout_php_check_a0c594a1902efeb727acf2a7ff080644', '1580468429', 'no'),
(272, '_site_transient_php_check_a0c594a1902efeb727acf2a7ff080644', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(273, 'new_admin_email', 'dmuranowski@edu.cdv.pl', 'yes'),
(279, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1580207219;s:7:\"checked\";a:1:{s:12:\"ZnajdzToAuto\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(282, 'theme_mods_ZnajdzToAuto', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:9:\"main-menu\";i:5;s:11:\"footer-menu\";i:3;s:11:\"header-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(314, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1580253616', 'no'),
(315, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:1:{i:0;a:8:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:15:\"WordCamp Prague\";s:3:\"url\";s:32:\"https://2020.prague.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-02-29 00:00:00\";s:8:\"end_date\";s:19:\"2020-02-29 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:22:\"Prague, Czech Republic\";s:7:\"country\";s:2:\"CZ\";s:8:\"latitude\";d:50.0490092;s:9:\"longitude\";d:14.4400399;}}}}', 'no'),
(335, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1580207220;s:7:\"checked\";a:7:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.7\";s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";s:5:\"6.4.0\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:61:\"appthemes-classipress-ads-importer-plugin/classi-importer.php\";s:5:\"2.1.0\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.6\";s:25:\"relevanssi/relevanssi.php\";s:5:\"4.4.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/breadcrumb-navxt\";s:4:\"slug\";s:16:\"breadcrumb-navxt\";s:6:\"plugin\";s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";s:11:\"new_version\";s:5:\"6.4.0\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/breadcrumb-navxt/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/breadcrumb-navxt.6.4.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:68:\"https://ps.w.org/breadcrumb-navxt/assets/icon-256x256.png?rev=971477\";s:2:\"1x\";s:61:\"https://ps.w.org/breadcrumb-navxt/assets/icon.svg?rev=1927103\";s:3:\"svg\";s:61:\"https://ps.w.org/breadcrumb-navxt/assets/icon.svg?rev=1927103\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/breadcrumb-navxt/assets/banner-1544x500.png?rev=1927103\";s:2:\"1x\";s:71:\"https://ps.w.org/breadcrumb-navxt/assets/banner-772x250.png?rev=1927103\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:61:\"appthemes-classipress-ads-importer-plugin/classi-importer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:55:\"w.org/plugins/appthemes-classipress-ads-importer-plugin\";s:4:\"slug\";s:41:\"appthemes-classipress-ads-importer-plugin\";s:6:\"plugin\";s:61:\"appthemes-classipress-ads-importer-plugin/classi-importer.php\";s:11:\"new_version\";s:5:\"2.1.0\";s:3:\"url\";s:72:\"https://wordpress.org/plugins/appthemes-classipress-ads-importer-plugin/\";s:7:\"package\";s:88:\"https://downloads.wordpress.org/plugin/appthemes-classipress-ads-importer-plugin.2.1.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:85:\"https://s.w.org/plugins/geopattern-icon/appthemes-classipress-ads-importer-plugin.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"relevanssi/relevanssi.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/relevanssi\";s:4:\"slug\";s:10:\"relevanssi\";s:6:\"plugin\";s:25:\"relevanssi/relevanssi.php\";s:11:\"new_version\";s:5:\"4.4.1\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/relevanssi/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/relevanssi.4.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/relevanssi/assets/icon-256x256.png?rev=2025044\";s:2:\"1x\";s:63:\"https://ps.w.org/relevanssi/assets/icon-128x128.png?rev=2025044\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/relevanssi/assets/banner-1544x500.jpg?rev=1647178\";s:2:\"1x\";s:65:\"https://ps.w.org/relevanssi/assets/banner-772x250.jpg?rev=1647180\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(336, 'relevanssi_admin_search', 'off', 'yes'),
(337, 'relevanssi_bg_col', '#ffaf75', 'yes'),
(338, 'relevanssi_cat', '0', 'yes'),
(339, 'relevanssi_class', 'relevanssi-query-term', 'yes'),
(340, 'relevanssi_comment_boost', '0.75', 'yes'),
(341, 'relevanssi_content_boost', '1', 'yes'),
(342, 'relevanssi_css', 'text-decoration: underline; text-color: #ff0000', 'yes'),
(343, 'relevanssi_db_version', '5', 'yes'),
(344, 'relevanssi_default_orderby', 'relevance', 'yes'),
(345, 'relevanssi_disable_or_fallback', 'off', 'yes'),
(346, 'relevanssi_exact_match_bonus', 'on', 'yes'),
(347, 'relevanssi_excat', '0', 'yes'),
(348, 'relevanssi_excerpt_allowable_tags', '', 'yes'),
(349, 'relevanssi_excerpt_custom_fields', 'off', 'yes'),
(350, 'relevanssi_excerpt_length', '30', 'yes'),
(351, 'relevanssi_excerpt_type', 'words', 'yes'),
(352, 'relevanssi_excerpts', 'on', 'yes'),
(353, 'relevanssi_exclude_posts', '', 'yes'),
(354, 'relevanssi_expand_shortcodes', 'on', 'yes'),
(355, 'relevanssi_extag', '0', 'yes'),
(356, 'relevanssi_fuzzy', 'sometimes', 'yes'),
(357, 'relevanssi_highlight', 'strong', 'yes'),
(358, 'relevanssi_highlight_comments', 'off', 'yes'),
(359, 'relevanssi_highlight_docs', 'off', 'yes'),
(360, 'relevanssi_hilite_title', '', 'yes'),
(361, 'relevanssi_implicit_operator', 'OR', 'yes'),
(362, 'relevanssi_index_author', 'off', 'yes'),
(363, 'relevanssi_index_comments', 'none', 'yes'),
(364, 'relevanssi_index_excerpt', 'off', 'yes'),
(365, 'relevanssi_index_fields', 'all', 'yes'),
(366, 'relevanssi_index_image_files', 'on', 'yes'),
(367, 'relevanssi_index_post_types', 'a:2:{i:0;s:13:\"advertisement\";i:1;s:5:\"bogus\";}', 'yes'),
(368, 'relevanssi_index_taxonomies_list', 'a:0:{}', 'yes'),
(369, 'relevanssi_indexed', 'done', 'yes'),
(370, 'relevanssi_log_queries', 'off', 'yes'),
(371, 'relevanssi_log_queries_with_ip', 'off', 'yes'),
(372, 'relevanssi_min_word_length', '3', 'yes'),
(373, 'relevanssi_omit_from_logs', '', 'yes'),
(374, 'relevanssi_polylang_all_languages', 'off', 'yes'),
(375, 'relevanssi_punctuation', 'a:4:{s:6:\"quotes\";s:7:\"replace\";s:7:\"hyphens\";s:7:\"replace\";s:10:\"ampersands\";s:7:\"replace\";s:8:\"decimals\";s:6:\"remove\";}', 'yes'),
(376, 'relevanssi_respect_exclude', 'on', 'yes'),
(377, 'relevanssi_show_matches', '', 'yes'),
(378, 'relevanssi_show_matches_text', '(Search hits: %body% in body, %title% in title, %categories% in categories, %tags% in tags, %taxonomies% in other taxonomies, %comments% in comments. Score: %score%)', 'yes'),
(379, 'relevanssi_stopwords', 'a,aby,acz,aczkolwiek,ale,ależ,aż,bardziej,bardzo,bez,bo,bowiem,by,byli,być,był,była,było,były,będzie,będą,cali,cała,cały,co,cokolwiek,coś,czasami,czasem,czemu,czy,czyli,dla,dlaczego,dlatego,do,gdy,gdyż,gdzie,gdziekolwiek,gdzieś,go,i,ich,ile,im,inna,inne,inny,innych,iż,ja,jak,jakaś,jakichś,jakie,jakiś,jakiż,jakkolwiek,jako,jakoś,jednak,jednakże,jego,jej,jest,jeszcze,jeśli,jeżeli,już,ją,kiedy,kilka,kimś,kto,ktokolwiek,ktoś,która,które,którego,której,który,których,którym,którzy,lat,lecz,lub,ma,mają,mi,mimo,między,mnie,mogą,moim,może,możliwe,można,mu,musi,na,nad,nam,nas,naszego,naszych,natomiast,nawet,nic,nich,nie,nigdy,nim,niż,no,o,obok,od,około,on,ona,ono,oraz,pan,pana,pani,po,pod,podczas,pomimo,ponad,ponieważ,powinien,powinna,powinni,powinno,poza,prawie,przecież,przed,przede,przez,przy,roku,również,się,sobie,sobą,sposób,swoje,są,ta,tak,taka,taki,takie,także,tam,te,tego,tej,ten,teraz,też,to,tobie,toteż,trzeba,tu,twoim,twoja,twoje,twym,twój,ty,tych,tylko,tym,u,w,we,według,wiele,wielu,więc,więcej,wszyscy,wszystkich,wszystkie,wszystkim,wszystko,właśnie,z,za,zapewne,zawsze,ze,znowu,znów,został,żadna,żadne,żadnych,że,żeby', 'yes'),
(380, 'relevanssi_synonyms', '', 'yes'),
(381, 'relevanssi_throttle', 'on', 'yes'),
(382, 'relevanssi_throttle_limit', '500', 'yes'),
(383, 'relevanssi_title_boost', '5', 'yes'),
(384, 'relevanssi_txt_col', '#ff0000', 'yes'),
(385, 'relevanssi_word_boundaries', 'on', 'yes'),
(386, 'relevanssi_wpml_only_current', 'on', 'yes'),
(387, 'relevanssi_doc_count', '9', 'yes'),
(439, '_transient_timeout_feed_a2a8f6ff8f129a81518b9f747f983e41', '1580240566', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(440, '_transient_feed_a2a8f6ff8f129a81518b9f747f983e41', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Blog | WordPress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://pl.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 27 Nov 2019 09:42:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"pl-PL\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.4-alpha-47108\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:61:\"\n		\n		\n				\n				\n		\n				\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"Dołącz do grupy tłumaczeniowej na Slack\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://pl.wordpress.org/2018/07/31/dolacz-do-grupy-tlumaczeniowej-na-slack/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://pl.wordpress.org/2018/07/31/dolacz-do-grupy-tlumaczeniowej-na-slack/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 31 Jul 2018 07:46:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Polskie tłumaczenie i witryna\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=2025\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:429:\"Autorem tego wpisu jest Magdalena Stanek Tłumaczu porozmawiajmy! Podczas tegorocznego Contributor Day na WordCampie w Poznaniu w grupie tłumaczeniowej zebrała się zaangażowana ekipa, która stwierdziła, że fajnie by było tłumaczyć razem przez cały rok, a nie tylko podczas Contributor Day. W związku z tym założyliśmy kanał Slack dla polskich tłumaczy, gdzie będziemy prowadzić cotygodniowe spotkania [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Waclaw Jacek\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1047:\"\n<p><em>Autorem tego wpisu jest Magdalena Stanek</em></p>\n\n\n\n<p>Tłumaczu porozmawiajmy!</p>\n\n\n\n<p>Podczas tegorocznego Contributor Day na WordCampie w Poznaniu w grupie tłumaczeniowej zebrała się zaangażowana ekipa, która stwierdziła, że fajnie by było tłumaczyć razem przez cały rok, a nie tylko podczas Contributor Day.</p>\n\n\n\n<p>W związku z tym założyliśmy kanał Slack dla polskich tłumaczy, gdzie będziemy prowadzić cotygodniowe spotkania w każdą środę o 20:00. Celem spotkań jest wspólne motywowanie się do  poświęcenia trochę więcej czasu na tłumaczenia, rozwiewanie wątpliwości, dyskutowanie na temat różnych spraw związanych z tłumaczeniami i i oczywiście pomaganie sobie nawzajem. </p>\n\n\n\n<p>Możesz się zalogować tutaj <a href=\"https://wordpresspopolsku.slack.com/signup\">https://wordpresspopolsku.slack.com/signup</a> (do logowania najlepiej użyć swoich danych z wordpress.org).</p>\n\n\n\n<p>Mamy nadzieję, że inicjatywa Cię zainteresuje i dołączysz do nas.<br>\nDo zobaczenia na Slacku!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://pl.wordpress.org/2018/07/31/dolacz-do-grupy-tlumaczeniowej-na-slack/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:64:\"\n		\n		\n				\n				\n		\n				\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"WordCamp Łódź 2019\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://pl.wordpress.org/2019/10/17/wordcamp-lodz-2019/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://pl.wordpress.org/2019/10/17/wordcamp-lodz-2019/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 17 Oct 2019 11:30:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:10:\"Wydarzenia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"wordcamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=3981\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:454:\"Prowadzisz stronę opartą na WordPressie? Jesteś deweloperem lub prowadzisz działalność opartą o usługi związane z WordPressem? A może jesteś blogerem lub zajmujesz się e-marketingiem? Niezależnie od stopnia znajomości i roli jaką odgrywa WordPress w Twoim życiu, konferencja WordCamp Łódź 2019 skierowana jest właśnie do Ciebie. WordCamp to ogólnopolska konferencja poświęcona pośrednio i bezpośrednio WordPressowi. To [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Katarzyna Gajewska\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3116:\"\n<p>Prowadzisz stronę opartą na WordPressie? Jesteś deweloperem lub prowadzisz działalność opartą o usługi związane z WordPressem? A może jesteś blogerem lub zajmujesz się e-marketingiem? Niezależnie od stopnia znajomości i roli jaką odgrywa WordPress w Twoim życiu, konferencja <strong><a href=\"https://2019.lodz.wordcamp.org/\" target=\"_blank\" rel=\"noreferrer noopener\" aria-label=\"WordCamp Łódź 2019 (opens in a new tab)\">WordCamp Łódź 2019</a></strong> skierowana jest właśnie do Ciebie.<br><br>WordCamp to ogólnopolska konferencja poświęcona pośrednio i bezpośrednio WordPressowi. To doskonała okazja na poszerzenie swojej wiedzy i zdobycie nowych kontaktów, które mogą zaowocować nowymi wyzwaniami w życiu zawodowym. To też doskonała okazja na podzielenie się swoją wiedzą i wymianę doświadczeń z innymi miłośnikami WordPressa. <br><br>WordCamp to trzy dni inspirujących prelekcji prowadzonych przez niesamowitych specjalistów. To warsztaty, dzięki którym zdobędziecie nowe umiejętności. To także Contributor Day &#8211; dzień stworzony specjalnie dla Was &#8211; twórców, deweloperów, tłumaczy, blogerów, projektantów. Tego dnia to Wy możecie podarować swoją pomoc i zaangażowanie w rozwój WordPressa.<br><br>To także spotkania ze sponsorami, dzięki którym WordCamp nie mógłby się odbyć. To oni i ich pomoc sprawia, że konferencja jest dostępna dla tak wielu osób w bardzo przystępnej cenie.<br>Pakiety sponsorskie dostosowane są do różnych potrzeb oraz możliwości. Sponsorami są zarówno duże, międzynarodowe marki, jak i lokalne biznesy działające w naszym regionie. Jeśli chcesz znaleźć się w zacnym gronie sponsorów tegorocznego WordCampa, wybierz odpowiedni pakiet pod tym adresem: <a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://2019.lodz.wordcamp.org/zostan-sponsorem-wordcamp-lodz-2019/?fbclid=IwAR0COkUojiqsrmCzYWLHvH0TSJ4cA3t8g_KkqzvT4wDT9Il_LH6cweKVTRo\">https://2019.lodz.wordcamp.org/zostan-sponsorem-wordcamp-lodz-2019/</a><br><br>WordCamp to również networking, czyli wspólna zabawa w trakcie Middle Party. <br><br>Tegoroczny WordCamp odbędzie się w Hotelu Ambasador Premium w Łodzi przy ulicy Kilińskiego 145. Dla Waszej wygody odbędzie się tutaj zarówno pierwszy dzień &#8211; Contributor Day oraz warsztaty, jak i dwa dni konferencyjne poświęcone prezentacjom. Na Middle Party też zapraszamy do Hotelu Ambasador Premium.<br><br>Bilety możecie kupić na naszej stronie internetowej: <a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://l.facebook.com/l.php?u=https%3A%2F%2F2019.lodz.wordcamp.org%2Fbilety%2F%3Ffbclid%3DIwAR3mM-avOgA5H501q0GD-Y1_VccHbsAkssRqSiL_-cVvTacnPeuDt-fpHq4&amp;h=AT0XqbIJMRrLiuvJ2dnl3grccZ5OTXPpgmZ7xc5ZdxRe7bKjUN28aGLo6T4YeRHgDnlj2YgcRtaEMkfTJHDGtFS5H_TVjTb998shqjeQS-8QAd-9ZBOK1ko--FQMcGz38J4O41U\">https://2019.lodz.wordcamp.org/bilety/</a><br><br>Przy rejestracji nie zapomnijcie wypełnić specjalnego pola z rozmiarem. Na każdego czeka oficjalny, wyjątkowy Swag! <br><br>Do zobaczenia 22 listopada w Hotelu Ambasador Premium w Łodzi! </p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://pl.wordpress.org/2019/10/17/wordcamp-lodz-2019/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:64:\"\n		\n		\n				\n				\n		\n				\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WordPress 4.9.7 – Wydanie poprawiające bezpieczeństwo i błędy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"https://pl.wordpress.org/2018/07/07/wordpress-4-9-7-wydanie-poprawiajace-bezpieczenstwo-i-bledy/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"https://pl.wordpress.org/2018/07/07/wordpress-4-9-7-wydanie-poprawiajace-bezpieczenstwo-i-bledy/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 07 Jul 2018 14:18:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:15:\"Bezpieczeństwo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1945\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:463:\"WordPress 4.9.7 jest już dostępny. To wydanie poprawia bezpieczeństwo wszystkich wersji systemu począwszy od 3.7. Zalecane jest natychmiastowe przeprowadzenie aktualizacji. WordPress w wersji 4.9.6 i wcześniejszych zawiera błąd związany z obsługą mediów, który może pozwolić użytkownikom z pewnymi prawami dostępu na podjęcie próby usunięcia plików spoza katalogu uploads. Dziękujemy Slavco za zgłoszenie błędu, a także Mattowi [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"Chris Trynkiewicz (Sukces Strony)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4564:\"<p>WordPress 4.9.7 jest już dostępny. <strong>To wydanie poprawia bezpieczeństwo</strong> wszystkich wersji systemu począwszy od 3.7. Zalecane jest natychmiastowe przeprowadzenie aktualizacji.</p>\n<p><span id=\"more-1945\"></span></p>\n<p>WordPress w wersji 4.9.6 i wcześniejszych zawiera błąd związany z obsługą mediów, który może pozwolić użytkownikom z pewnymi prawami dostępu na podjęcie próby usunięcia plików spoza katalogu <em>uploads</em>.</p>\n<p>Dziękujemy <a href=\"https://hackerone.com/slavco\">Slavco</a> za zgłoszenie błędu, a także <a href=\"https://www.wordfence.com/\">Mattowi Barry&#8217;emu</a> za zgłoszenie powiązanych z tą kwestią problemów.</p>\n<p>W WordPressie 4.9.7 naprawiono także 17 innych problemów, w szczególności:</p>\n<ul>\n<li>Taksonomie: Ulepszenie obsługi cache dla zapytań dotyczących terminów.</li>\n<li>Wpisy i inne Typy Treści: Usuwanie ciasteczka dotyczącego hasła dla podstrony, gdy użytkownik wyloguje się.</li>\n<li>Widgety: Dopuszczenie używania podstawowych znaczników HTML w opisach paneli bocznych w sekcji Widgety panelu administracyjnego.</li>\n<li>Kokpit wydarzeń społecznościowych: Zawsze pokazuj najbliższe spotkanie WordCamp, jeśli takowe się zbliża &#8211; nawet, gdy wcześniej planowane są spotkania w dalszych lokalizacjach.</li>\n<li>Prywatność: Upewnienie się, że domyślna treść polityki prywatności nie spowoduje wystąpienia krytycznego błędu podczas czyszczenia reguł przekształcania adresów poza kontekstem administracyjnym.</li>\n</ul>\n<p>W dokumentacji Codex znajdziesz <a href=\"https://codex.wordpress.org/Version_4.9.7\">więcej informacji na temat wszystkich kwestii rozwiązanych w wersji 4.9.7</a>.</p>\n<p><a href=\"https://pl.wordpress.org/\">Pobierz WordPressa 4.9.7</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Witryny, które obsługują automatyczne aktualizacje, rozpoczęły już ich przeprowadzanie.</p>\n<p>Wcześniej zaplanowane wydanie 4.9.7 będzie od teraz nazywane 4.9.8 i zostanie <a href=\"https://make.wordpress.org/core/2018/07/04/dev-chat-summary-july-4th-4-9-7-week-7/\">opublikowane zgodnie z planem</a>.</p>\n<p>Dziękujemy wszystkim, którzy przyczynili się do powstania wersji 4.9.7:</p>\n<p><a href=\"https://profiles.wordpress.org/1naveengiri/\">1naveengiri</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abdullahramzan/\">abdullahramzan</a>, <a href=\"https://profiles.wordpress.org/alejandroxlopez/\">alejandroxlopez</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/aryamaaru/\">Arun</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/bjornw/\">BjornW</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/kraftbj/\">Brandon Kraft</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/garetharnold/\">Gareth</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">ibelanger</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/joyously/\">Joy</a>, <a href=\"https://profiles.wordpress.org/khaihong/\">khaihong</a>, <a href=\"https://profiles.wordpress.org/lbenicio/\">lbenicio</a>, <a href=\"https://profiles.wordpress.org/leanderiversen/\">Leander Iversen</a>, <a href=\"https://profiles.wordpress.org/mermel/\">mermel</a>, <a href=\"https://profiles.wordpress.org/metalandcoffee/\">metalandcoffee</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Migrated to @jeffpaul</a>, <a href=\"https://profiles.wordpress.org/palmiak/\">palmiak</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/skoldin/\">skoldin</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/itowhid06/\">Towhidul Islam</a>, <a href=\"https://profiles.wordpress.org/warmlaundry/\">warmlaundry</a> oraz <a href=\"https://profiles.wordpress.org/yuriv/\">YuriV</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://pl.wordpress.org/2018/07/07/wordpress-4-9-7-wydanie-poprawiajace-bezpieczenstwo-i-bledy/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:64:\"\n		\n		\n				\n				\n		\n				\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"Program WordCamp Poznań 2018 już tu jest!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://pl.wordpress.org/2018/05/26/program-wordcamp-poznan-2018-juz-tu-jest/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://pl.wordpress.org/2018/05/26/program-wordcamp-poznan-2018-juz-tu-jest/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 26 May 2018 08:28:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:10:\"Wydarzenia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"wordcamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1817\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:395:\"Pewnie większość z was już wie, że w zeszłym tygodniu opublikowaliśmy program tegorocznego WordCampa, który odbędzie się w dniach 6-8 lipca w Poznaniu. WordCamp Poznań 2018 zbliża się dużymi krokami! Jeśli nie masz jeszcze biletu, to nie zastanawiaj się już dłużej, tylko kup bilet na najważniejsze WordPressowe wydarzenie 2018 roku! Zapraszamy do zapoznania się z [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Katarzyna Gajewska\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2455:\"<p>Pewnie większość z was już wie, że w zeszłym tygodniu opublikowaliśmy program tegorocznego WordCampa, który odbędzie się w dniach <strong>6-8 lipca w Poznaniu</strong>.</p>\n<p>WordCamp Poznań 2018 zbliża się dużymi krokami! Jeśli nie masz jeszcze biletu, to nie zastanawiaj się już dłużej, tylko <a href=\"https://2018.poznan.wordcamp.org/bilety/\" target=\"_blank\" rel=\"noopener noreferrer\"><strong>kup bilet</strong></a> na najważniejsze WordPressowe wydarzenie 2018 roku! Zapraszamy do zapoznania się z <a href=\"https://2018.poznan.wordcamp.org/program/\" target=\"_blank\" rel=\"noopener noreferrer\"><strong>pełnym programem konferencji</strong></a> i do zapisywania się na warsztaty oraz Contributor Day.</p>\n<p>Startujemy 6 lipca! Pierwszego dnia konferencji po prostu nie można przegapić. Zaczniemy od bardziej praktycznych wyzwań. Każdy uczestnik będzie miał możliwość wzięcia udziału w ciekawych warsztatach, które będą świetną okazją, aby zdobyć nowe umiejętności i poznać ciekawych ludzi. W tym roku zaserwujemy aż 6 różnych warsztatów. Warto zapoznać się z tematami i już dziś zarezerwować sobie miejsce. Równolegle do warsztatów będzie odbywał się <a href=\"https://2018.poznan.wordcamp.org/czym-jest-contributor-day/\" target=\"_blank\" rel=\"noopener noreferrer\"><strong>Contributor Day</strong></a>, podczas którego będzie można dołączyć do innych entuzjastów i popracować nad kodem, tłumaczeniem lub zająć się odpowiadaniem na pytania na forum wsparcia. Z pewnością każdy znajdzie tutaj coś dla siebie!</p>\n<p>Kolejne dwa dni konferencji będą wypełnione ciekawymi prelekcjami, na których nie może cię zabraknąć! Tematy są podzielone na dwie ścieżki: ogólną i techniczną. Ścieżkę ogólną polecamy wszystkim, którzy są zainteresowani tematami związanymi z wykorzystaniem WordPressa, blogowaniem i innymi zagadnieniami. Będziecie mieli okazję dowiedzieć się więcej o dostępności, pracy zdalnej, wycenie projektów czy analityce. Z kolei ścieżkę techniczną polecamy uczestnikom poszukującym bardziej specjalistycznej wiedzy. Będzie to świetna okazja, żeby posłuchać prelekcji na temat backupu, automatyzacji zadań czy zabezpieczenia WordPressa. Tematyka zarówno ścieżki ogólnej, jak i technicznej, jest bardzo zróżnicowana. Bez wątpienia każdy znajdzie coś, co go zainteresuje!</p>\n<p>Do zobaczenia w Poznaniu!</p>\n<p>&nbsp;</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://pl.wordpress.org/2018/05/26/program-wordcamp-poznan-2018-juz-tu-jest/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:61:\"\n		\n		\n				\n				\n		\n				\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"WordPress 4.9.4 – Wydanie poprawiające ważny błąd\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-4-wydanie-poprawiajace-wazny-blad/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-4-wydanie-poprawiajace-wazny-blad/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 06 Feb 2018 18:25:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1539\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:489:\"WordPress 4.9.4 jest już dostępny. To wydanie rozwiązuje istotny problem wprowadzony w wersji 4.9.3, który powodował, że strony obsługujące automatyczne aktualizacje nie będą mogły ich przeprowadzić. Wymagane jest ręczne zaktualizowanie WordPressa do wersji 4.9.4 przez Ciebie lub Twojego dostawcę hostingu. Cztery lata temu, w wydaniu 3.7 &#8222;Basie&#8221; WordPressa wprowadziliśmy możliwość automatycznej aktualizacji systemu, dzięki czemu strony stały [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"Chris Trynkiewicz (Sukces Strony)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2631:\"<p>WordPress 4.9.4 jest już dostępny.</p>\n<p>To wydanie rozwiązuje istotny problem wprowadzony w wersji 4.9.3, który powodował, że strony obsługujące automatyczne aktualizacje nie będą mogły ich przeprowadzić. <strong><span style=\"text-decoration: underline\">Wymagane jest ręczne zaktualizowanie WordPressa</span> do wersji 4.9.4 przez Ciebie lub Twojego dostawcę hostingu.</strong></p>\n<p><span id=\"more-1539\"></span></p>\n<p>Cztery lata temu, w wydaniu <a href=\"https://wordpress.org/news/2013/10/basie/\">3.7 &#8222;Basie&#8221; WordPressa</a> wprowadziliśmy możliwość automatycznej aktualizacji systemu, dzięki czemu strony stały się bezpieczniejsze i mniej awaryjne &#8211; nawet, jeśli samodzielnie nie miałeś możliwości ich aktualizować. Przez te 4 lata mechanizm ten pomógł milionom witryn, aktualizując je do bieżących wersji i naprawiając bardzo sporadyczne usterki. Niestety we wczorajszym <a href=\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-3-wydanie-poprawiajace-bledy/\">wydaniu 4.9.3</a> znalazł się ważny błąd, który został wykryty dopiero po upublicznieniu nowej wersji systemu. Błąd ten powoduje, że WordPress nie zaktualizuje się automatycznie do wersji 4.9.4, co oznacza, że aktualizację taką trzeba przeprowadzić ręcznie z poziomu panelu administracyjnego lub z pomocą dostawcy serwera hostingowego.</p>\n<p><strong>Aby przeprowadzić ręczną aktualizację, udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Dopóki tego nie wykonasz, WordPress <span style=\"text-decoration: underline\">nie będzie aktualizował się automatycznie do kolejnych wersji</span>. Zalecamy, by zrobić to natychmiast.</strong></p>\n<p>Dostawcy hostingu, którzy aktualizują automatycznie WordPressa w imieniu swoich klientów, mogą przystąpić do aktualizacji w standardowym trybie. Będziemy ściśle współpracować z innymi dostawcami hostingu, by jak najwięcej ich klientów otrzymało tą aktualizację.</p>\n<p><a href=\"https://make.wordpress.org/core/2018/02/06/wordpress-4-9-4-release-the-technical-details/\">Więcej szczegółów technicznych opublikowaliśmy na naszym blogu o tworzeniu rdzenia WordPressa</a>. Pełna lista zmian dostępna jest w <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.9.4&amp;group=component\">spisie zamkniętych wątków</a>.</p>\n<p><a href=\"https://pl.wordpress.org/\">Pobierz WordPressa 4.9.4</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-4-wydanie-poprawiajace-wazny-blad/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"7\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:61:\"\n		\n		\n				\n				\n		\n				\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"WordPress 4.9.3 – Wydanie poprawiające błędy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-3-wydanie-poprawiajace-bledy/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-3-wydanie-poprawiajace-bledy/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 06 Feb 2018 10:50:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1536\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:450:\"WordPress 4.9.3 jest już dostępny. To wydanie zawiera poprawki 34 błędów obecnych w wersji 4.9 WordPressa, w tym dotyczących zestawów zmian na ekranie Personalizacji, widgetów, edytora wizualnego i kompatybilności z PHP 7.2.  Spis wszystkich zmian znajdziesz w liście zamkniętych wątków oraz liście przeprowadzonych zmian. Pobierz WordPressa 4.9.3 lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"Chris Trynkiewicz (Sukces Strony)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3596:\"<p>WordPress 4.9.3 jest już dostępny.</p>\n<p>To wydanie zawiera poprawki 34 błędów obecnych w wersji 4.9 WordPressa, w tym dotyczących zestawów zmian na ekranie Personalizacji, widgetów, edytora wizualnego i kompatybilności z PHP 7.2.  Spis wszystkich zmian znajdziesz<span style=\"line-height: 1.5\"> w <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.9.3&amp;group=component\">liście zamkniętych wątków</a> oraz <a href=\"https://core.trac.wordpress.org/log/branches/4.9?rev=42630&amp;stop_rev=42521\">liście przeprowadzonych zmian</a>.</span></p>\n<p><span id=\"more-1536\"></span></p>\n<p><a href=\"https://pl.wordpress.org/\">Pobierz WordPressa 4.9.3</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Witryny, które obsługują automatyczne aktualizacje, rozpoczęły już ich przeprowadzanie.</p>\n<p>Dziękujemy wszystkim, którzy przyczynili się do powstania wersji 4.9.3:</p>\n<p><a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abdullahramzan/\">abdullahramzan</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andreiglingeanu/\">andreiglingeanu</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/bpayton/\">Brandon Payton</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/coleh/\">coleh</a>, <a href=\"https://profiles.wordpress.org/darko-a7/\">Darko A7</a>, <a href=\"https://profiles.wordpress.org/desertsnowman/\">David Cramer</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/frank-klein/\">Frank Klein</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/lizkarkoski/\">lizkarkoski</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius L. J.</a>, <a href=\"https://profiles.wordpress.org/mattyrob/\">mattyrob</a>, <a href=\"https://profiles.wordpress.org/munyagu/\">munyagu</a>, <a href=\"https://profiles.wordpress.org/ndavison/\">ndavison</a>, <a href=\"https://profiles.wordpress.org/nickmomrik/\">Nick Momrik</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/rachelbaker/\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/rishishah/\">rishishah</a>, <a href=\"https://profiles.wordpress.org/othellobloke/\">Ryan Paul</a>, <a href=\"https://profiles.wordpress.org/sasiddiqui/\">Sami Ahmed Siddiqui</a>, <a href=\"https://profiles.wordpress.org/sayedwp/\">Sayed Taqui</a>, <a href=\"https://profiles.wordpress.org/seanchayes/\">Sean Hayes</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/shooper/\">Shawn Hooper</a>, <a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/manikmist09/\">Sultan Nasir Uddin</a>, <a href=\"https://profiles.wordpress.org/tigertech/\">tigertech</a> oraz <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-3-wydanie-poprawiajace-bledy/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:61:\"\n		\n		\n				\n				\n		\n				\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WordPress 4.9.2 – Wydanie poprawiające bezpieczeństwo i błędy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"https://pl.wordpress.org/2018/01/17/wordpress-4-9-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"https://pl.wordpress.org/2018/01/17/wordpress-4-9-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 17 Jan 2018 11:06:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1512\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:467:\"WordPress 4.9.2 jest już dostępny. To wydanie poprawia bezpieczeństwo we wszystkich poprzednich wersjach systemu. Zalecane jest natychmiastowe przeprowadzenie aktualizacji. Wykryto podatność na atak XSS w plikach Flash biblioteki MediaElement, która jest dołączana do WordPressa w celu zapewnienia kompatybilności ze starszym oprogramowaniem. Ponieważ pliki te nie są już potrzebne w zdecydowanej większości przypadków, zostały one usunięte [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"Chris Trynkiewicz (Sukces Strony)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4168:\"<p>WordPress 4.9.2 jest już dostępny. <strong>To wydanie poprawia bezpieczeństwo</strong> we wszystkich poprzednich wersjach systemu. Zalecane jest natychmiastowe przeprowadzenie aktualizacji.</p>\n<p><span id=\"more-1512\"></span></p>\n<p>Wykryto podatność na atak XSS w plikach Flash biblioteki MediaElement, która jest dołączana do WordPressa w celu zapewnienia kompatybilności ze starszym oprogramowaniem. Ponieważ pliki te nie są już potrzebne w zdecydowanej większości przypadków, zostały one usunięte z WordPressa.</p>\n<p>Biblioteka MediaElement została już udostępniona w nowej wersji, która naprawa problem. W repozytorium wtyczek WordPressa znajduje się nowa <a href=\"https://wordpress.org/plugins/mediaelement-flash-fallbacks/\">wtyczka, przywracająca obsługę biblioteki MediaElement z poprawionymi plikami</a>.</p>\n<p>Dziękujemy zgłaszającym (<a href=\"https://opnsec.com\">Enguerran Gillier</a> i <a href=\"https://widiz.com/\">Widiz</a>) za <a href=\"https://make.wordpress.org/core/handbook/reporting-security-vulnerabilities/\">odpowiedzialne ujawnienie</a> problemów z bezpieczeństwem.</p>\n<p>W WordPressie 4.9.2 rozwiązano także 21 innych problemów, w tym:</p>\n<ul>\n<li>naprawiono błędy JavaScript, które uniemożliwiały zapisywanie wpisów w Firefoxie,</li>\n<li>przywrócono wcześniejsze, niezależne od taksonomii działanie <code>get_category_link()</code> i <code>category_description()</code>,</li>\n<li>od teraz zmiana motywu spowoduje podjęcie próby przywrócenia poprzednich przypisań widgetów &#8211; nawet, jeśli w ostatnio używanym motywie nie były dostępne żadne obszary na widgety.</li>\n</ul>\n<p>W dokumentacji Codex znajdziesz <a href=\"https://codex.wordpress.org/Version_4.9.2\">więcej informacji na temat wszystkich rozwiązanych problemów w wersji 4.9.2</a>.</p>\n<p><a href=\"https://pl.wordpress.org/\">Pobierz WordPressa 4.9.2</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Witryny, które obsługują automatyczne aktualizacje, rozpoczęły już ich przeprowadzanie.</p>\n<p>Dziękujemy wszystkim, którzy przyczynili się do powstania wersji 4.9.2:</p>\n<p><a href=\"https://profiles.wordpress.org/0x6f0/\">0x6f0</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/aduth/\">Andrew Duthie</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/blobfolio/\">Blobfolio</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/icaleb/\">Caleb Burks</a>, <a href=\"https://profiles.wordpress.org/poena/\">Carolina Nymark</a>, <a href=\"https://profiles.wordpress.org/chasewg/\">chasewg</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/hardik-amipara/\">Hardik Amipara</a>, <a href=\"https://profiles.wordpress.org/ionvv/\">ionvv</a>, <a href=\"https://profiles.wordpress.org/jaswrks/\">Jason Caldwell</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/johnschulz/\">johnschulz</a>, <a href=\"https://profiles.wordpress.org/juiiee8487/\">Juhi Patel</a>, <a href=\"https://profiles.wordpress.org/obenland/\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/markjaquith/\">Mark Jaquith</a>, <a href=\"https://profiles.wordpress.org/rabmalin/\">Nilambar Sharma</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/rachelbaker/\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/rinkuyadav999/\">Rinku Y</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a> oraz <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://pl.wordpress.org/2018/01/17/wordpress-4-9-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:64:\"\n		\n		\n				\n				\n		\n				\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"WordPress 4.8.3 – Wydanie poprawiające bezpieczeństwo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://pl.wordpress.org/2017/10/31/wordpress-4-8-3-wydanie-poprawiajace-bezpieczenstwo/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"https://pl.wordpress.org/2017/10/31/wordpress-4-8-3-wydanie-poprawiajace-bezpieczenstwo/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 31 Oct 2017 11:26:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:15:\"Bezpieczeństwo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1289\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:475:\"WordPress 4.8.3 jest już dostępny. To wydanie poprawia bezpieczeństwo we wszystkich poprzednich wersjach systemu. Zalecane jest natychmiastowe przeprowadzenie aktualizacji. WordPress w wersji 4.8.2 i wcześniejszych jest podatny na problem z $wpdb-&#62;prepare(), który może prowadzić do tworzenia nieoczekiwanych i niebezpiecznych zapytań, umożliwiających potencjalny atak metodą SQL injection (SQLi). Rdzeń systemu nie jest bezpośrednio podatny na ten [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"Chris Trynkiewicz (Sukces Strony)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1522:\"<p>WordPress 4.8.3 jest już dostępny. <strong>To wydanie poprawia bezpieczeństwo</strong> we wszystkich poprzednich wersjach systemu. Zalecane jest natychmiastowe przeprowadzenie aktualizacji.</p>\n<p><span id=\"more-1289\"></span></p>\n<p>WordPress w wersji 4.8.2 i wcześniejszych jest podatny na problem z <code>$wpdb-&gt;prepare()</code>, który może prowadzić do tworzenia nieoczekiwanych i niebezpiecznych zapytań, umożliwiających potencjalny atak metodą SQL injection (SQLi). Rdzeń systemu nie jest bezpośrednio podatny na ten problem, ale dodaliśmy dodatkowe zabezpieczenia, by wtyczki i motywy nie mogły go przypadkowo powodować. Problem zgłosił <a href=\"https://twitter.com/ircmaxell\">Anthony Ferrara</a>.</p>\n<p>To wydanie WordPressa zmienia zachowanie funkcji <code>esc_sql()</code>. Różnica nie będzie istotna dla większości programistów. Zachęcamy do <a href=\"https://make.wordpress.org/core/2017/10/31/changed-behaviour-of-esc_sql-in-wordpress-4-8-3/\">przeczytania informacji dla deweloperów</a>.</p>\n<p>Dziękujemy zgłaszającemu za <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">odpowiedzialne ujawnienie</a> problemu z bezpieczeństwem.</p>\n<p><a href=\"https://pl.wordpress.org/\">Pobierz WordPressa 4.8.3</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Witryny, które obsługują automatyczne aktualizacje, rozpoczęły już ich przeprowadzanie.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://pl.wordpress.org/2017/10/31/wordpress-4-8-3-wydanie-poprawiajace-bezpieczenstwo/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:61:\"\n		\n		\n				\n				\n		\n				\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordPress 4.9 Beta 2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://pl.wordpress.org/2017/10/12/wordpress-4-9-beta-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://pl.wordpress.org/2017/10/12/wordpress-4-9-beta-2/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 12 Oct 2017 07:03:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Wersje testowe\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1235\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:433:\"WordPress 4.9 Beta 2 jest już dostępny! Oprogramowanie jest wciąż w fazie tworzenia, dlatego nie zalecamy jego używania w witrynie produkcyjnej. Zastanów się nad środowiskiem testowym i tam sprawdzaj do woli. Aby przetestować WordPress 4.9, wypróbuj wtyczkę WordPress Beta Tester (regularnie aktualizuje one do  &#8222;krawych nocnych wydań&#8221;) albo pobierz wersję beta (zip). Więcej informacji na temat [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Marcin Pietrzak\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1781:\"<p>WordPress 4.9 Beta 2 jest już dostępny!</p>\n<p><strong>Oprogramowanie jest wciąż w fazie tworzenia</strong>, dlatego nie zalecamy jego używania w witrynie produkcyjnej. Zastanów się nad środowiskiem testowym i tam sprawdzaj do woli. Aby przetestować WordPress 4.9, wypróbuj wtyczkę <a href=\"https://pl.wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> (regularnie aktualizuje one do  &#8222;krawych nocnych wydań&#8221;) albo <a href=\"https://wordpress.org/wordpress-4.9-beta2.zip\">pobierz wersję beta</a> (zip).</p>\n<p>Więcej informacji na temat tego, co nowego w wersji 4.9, znajdziesz w blogu we wpisie <a href=\"https://wordpress.org/news/2017/10/wordpress-4-9-beta-1/\">Beta 1</a> (po angielsku). Od tego czasu dokonaliśmy <a href=\"https://core.trac.wordpress.org/log/trunk/?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=41846&amp;stop_rev=41777&amp;limit=100&amp;sfp_email=&amp;sfph_mail=\">70 zmian</a> w wersji Beta 2.</p>\n<p><a href=\"https://translate.wordpress.org/locale/pl/default/wp/dev\">Pomóż nam przetłumaczyć WordPress na język polski</a>!</p>\n<p><strong>Jeśli widzisz błąd</strong>, napisz wiadomość na forum <a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta</a>. Jeżeli coś nie działa, to chcielibyśm się tego dowiedzieć właśnie do ciebie! Jeśli czujesz się na siłach, żeby napisać raport zawierający opis jak powtórzyć błąd to  skorzystaj z serwisu <a href=\"https://make.wordpress.org/core/reports/\">WordPress Trac</a>. Na nim też znajdziesz <a href=\"https://core.trac.wordpress.org/tickets/major\">listę znanych błędów</a>.</p>\n<p><em>Przetestujmy razem:</em><br />\n<em> edytowanie kodu, przełączniki tematyczne,</em><br />\n<em> widgety, harmonogramowanie.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://pl.wordpress.org/2017/10/12/wordpress-4-9-beta-2/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:64:\"\n		\n		\n				\n				\n		\n				\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WordPress 4.8.2 – Wydanie poprawiające bezpieczeństwo i błędy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"https://pl.wordpress.org/2017/09/22/wordpress-4-8-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"https://pl.wordpress.org/2017/09/22/wordpress-4-8-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 22 Sep 2017 11:37:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:15:\"Bezpieczeństwo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1213\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:476:\"WordPress 4.8.2 jest już dostępny. Wersja poprawia bezpieczeństwo wszystkich poprzednich wersji i zdecydowanie zachęcamy do natychmiastowej aktualizacji witryn. WordPress w wersji 4.8.1 i starsze mają następujące problemy z bezpieczeństwem: $wpdb-&#62; prepare() mogło tworzyć nieoczekiwane i niebezpieczne zapytania prowadzące do potencjalnego wstrzyknięcia kod SQL (SQLi). Core WordPressa nie jest bezpośrednio narażony na ten problem, ale poprawiono [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Marcin Pietrzak\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3051:\"<p>WordPress 4.8.2 jest już dostępny. Wersja <strong>poprawia bezpieczeństwo</strong> wszystkich poprzednich wersji i zdecydowanie zachęcamy do natychmiastowej aktualizacji witryn.</p>\n<p>WordPress w wersji 4.8.1 i starsze mają następujące problemy z bezpieczeństwem:</p>\n<ol>\n<li><strong>$wpdb-&gt; prepare()</strong> mogło tworzyć nieoczekiwane i niebezpieczne zapytania prowadzące do potencjalnego wstrzyknięcia kod SQL (SQLi). Core WordPressa nie jest bezpośrednio narażony na ten problem, ale poprawiono proces tworzenia zapytań aby zapobiegać podatności we wtyczkach i motywach. Zgłoszone przez <a href=\"https://hackerone.com/slavco\">Slavco</a></li>\n<li>Wykryto podatność na cross-site scripting (XSS) w używaniu oEmbed. Zgłoszone przez xknown zespołu ds. Zabezpieczeń WordPress.</li>\n<li>W edytorze wizualnym wykryto lukę w zabezpieczeniach skryptów przed cross-site scripting (XSS) Zgłoszone przez <a href=\"https://twitter.com/brutelogic\">Rodolfo Assis (@brutelogic)</a> Sucuri Security.</li>\n<li>W kodzie do rozpakowywania wykryto lukę w zabezpieczeniach ścieżki do pliku. Zgłoszone przez <a href=\"https://hackerone.com/noxrnet\">Alex Chapman (noxrnet)</a>.</li>\n<li>W edytorze wtyczek wykryto luka w zabezpieczeniach cross-site scripting (XSS). Zgłoszone przez 陈瑞琦 (Chen Ruiqi).</li>\n<li>Na ekranie użytkownika i terminach edycji zostały wykryte otwarte przekierowanie. Zgłoszone przez <a href=\"https://hackerone.com/ysx\">Yasin Soliman (ysx)</a>.</li>\n<li>Odkryto lukę w zabezpieczeniach ścieżki na ekranie personalizacji witryny. Zgłoszone przez Weston Ruter z zespołu ds. Bezpieczeństwa WordPress.</li>\n<li>Wykryto podatność na cross-site scripting (XSS)  w nazwach szablonów. Zgłoszone przez <a href=\"https://hackerone.com/sikic\">Luka (sikic)</a>.</li>\n<li>Wykryto podatność na cross-site scripting (XSS) w linkach modalnych. Zgłoszone przez <a href=\"https://hackerone.com/qasuar\">Anas Roubi (qasuar)</a>.</li>\n</ol>\n<p>Dziękujemy zgłaszającym za praktykowanie <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">odpowiedzialnego ujawnienia (en)</a>.</p>\n<p>Oprócz powyższych kwestii związanych z bezpieczeństwem, WordPress 4.8.2 zawiera 6 poprawek utrzymaniowych serii 4.8. Więcej informacji można znaleźć w <a href=\"https://codex.wordpress.org/Version_4.8.2\">notce wydania wersji (en)</a> oraz na <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.8.2&amp;group=component&amp;col=id&amp;col=summary&amp;col=component&amp;col=status&amp;col=owner&amp;col=type&amp;col=priority&amp;col=keywords&amp;order=priority\">liście zmian</a>.</p>\n<p><a href=\"https://pl.wordpress.org/wordpress-4.8.2-pl_PL.zip\">Pobierz WordPress 4.8.2</a> lub przejdź do Panel → Aktualizacje i kliknij przycisk &#8222;Aktualizuj teraz&#8221;. Strony obsługujące automatyczne aktualizacje w tle już zaczynają aktualizować się do wersji 4.8.2.</p>\n<p>Dziękujemy wszystkim, którzy przyczynili się do wydania 4.8.2.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://pl.wordpress.org/2017/09/22/wordpress-4-8-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:35:\"https://pl.wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Tue, 28 Jan 2020 07:42:49 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Fri, 06 Dec 2019 14:17:27 GMT\";s:4:\"link\";s:61:\"<https://pl.wordpress.org/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 1\";}}s:5:\"build\";s:14:\"20200119092228\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(441, '_transient_timeout_feed_mod_a2a8f6ff8f129a81518b9f747f983e41', '1580240566', 'no'),
(442, '_transient_feed_mod_a2a8f6ff8f129a81518b9f747f983e41', '1580197366', 'no'),
(443, '_transient_timeout_feed_a421d6f32723068ab074a40017a9e1f9', '1580240567', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(444, '_transient_feed_a421d6f32723068ab074a40017a9e1f9', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"WordPress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://pl.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 27 Nov 2019 09:42:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"pl-PL\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.4-alpha-47108\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:64:\"\n		\n		\n				\n				\n		\n				\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"WordCamp Łódź 2019\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://pl.wordpress.org/2019/10/17/wordcamp-lodz-2019/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://pl.wordpress.org/2019/10/17/wordcamp-lodz-2019/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 17 Oct 2019 11:30:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:10:\"Wydarzenia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"wordcamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=3981\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:454:\"Prowadzisz stronę opartą na WordPressie? Jesteś deweloperem lub prowadzisz działalność opartą o usługi związane z WordPressem? A może jesteś blogerem lub zajmujesz się e-marketingiem? Niezależnie od stopnia znajomości i roli jaką odgrywa WordPress w Twoim życiu, konferencja WordCamp Łódź 2019 skierowana jest właśnie do Ciebie. WordCamp to ogólnopolska konferencja poświęcona pośrednio i bezpośrednio WordPressowi. To [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Katarzyna Gajewska\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3116:\"\n<p>Prowadzisz stronę opartą na WordPressie? Jesteś deweloperem lub prowadzisz działalność opartą o usługi związane z WordPressem? A może jesteś blogerem lub zajmujesz się e-marketingiem? Niezależnie od stopnia znajomości i roli jaką odgrywa WordPress w Twoim życiu, konferencja <strong><a href=\"https://2019.lodz.wordcamp.org/\" target=\"_blank\" rel=\"noreferrer noopener\" aria-label=\"WordCamp Łódź 2019 (opens in a new tab)\">WordCamp Łódź 2019</a></strong> skierowana jest właśnie do Ciebie.<br><br>WordCamp to ogólnopolska konferencja poświęcona pośrednio i bezpośrednio WordPressowi. To doskonała okazja na poszerzenie swojej wiedzy i zdobycie nowych kontaktów, które mogą zaowocować nowymi wyzwaniami w życiu zawodowym. To też doskonała okazja na podzielenie się swoją wiedzą i wymianę doświadczeń z innymi miłośnikami WordPressa. <br><br>WordCamp to trzy dni inspirujących prelekcji prowadzonych przez niesamowitych specjalistów. To warsztaty, dzięki którym zdobędziecie nowe umiejętności. To także Contributor Day &#8211; dzień stworzony specjalnie dla Was &#8211; twórców, deweloperów, tłumaczy, blogerów, projektantów. Tego dnia to Wy możecie podarować swoją pomoc i zaangażowanie w rozwój WordPressa.<br><br>To także spotkania ze sponsorami, dzięki którym WordCamp nie mógłby się odbyć. To oni i ich pomoc sprawia, że konferencja jest dostępna dla tak wielu osób w bardzo przystępnej cenie.<br>Pakiety sponsorskie dostosowane są do różnych potrzeb oraz możliwości. Sponsorami są zarówno duże, międzynarodowe marki, jak i lokalne biznesy działające w naszym regionie. Jeśli chcesz znaleźć się w zacnym gronie sponsorów tegorocznego WordCampa, wybierz odpowiedni pakiet pod tym adresem: <a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://2019.lodz.wordcamp.org/zostan-sponsorem-wordcamp-lodz-2019/?fbclid=IwAR0COkUojiqsrmCzYWLHvH0TSJ4cA3t8g_KkqzvT4wDT9Il_LH6cweKVTRo\">https://2019.lodz.wordcamp.org/zostan-sponsorem-wordcamp-lodz-2019/</a><br><br>WordCamp to również networking, czyli wspólna zabawa w trakcie Middle Party. <br><br>Tegoroczny WordCamp odbędzie się w Hotelu Ambasador Premium w Łodzi przy ulicy Kilińskiego 145. Dla Waszej wygody odbędzie się tutaj zarówno pierwszy dzień &#8211; Contributor Day oraz warsztaty, jak i dwa dni konferencyjne poświęcone prezentacjom. Na Middle Party też zapraszamy do Hotelu Ambasador Premium.<br><br>Bilety możecie kupić na naszej stronie internetowej: <a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://l.facebook.com/l.php?u=https%3A%2F%2F2019.lodz.wordcamp.org%2Fbilety%2F%3Ffbclid%3DIwAR3mM-avOgA5H501q0GD-Y1_VccHbsAkssRqSiL_-cVvTacnPeuDt-fpHq4&amp;h=AT0XqbIJMRrLiuvJ2dnl3grccZ5OTXPpgmZ7xc5ZdxRe7bKjUN28aGLo6T4YeRHgDnlj2YgcRtaEMkfTJHDGtFS5H_TVjTb998shqjeQS-8QAd-9ZBOK1ko--FQMcGz38J4O41U\">https://2019.lodz.wordcamp.org/bilety/</a><br><br>Przy rejestracji nie zapomnijcie wypełnić specjalnego pola z rozmiarem. Na każdego czeka oficjalny, wyjątkowy Swag! <br><br>Do zobaczenia 22 listopada w Hotelu Ambasador Premium w Łodzi! </p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://pl.wordpress.org/2019/10/17/wordcamp-lodz-2019/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:61:\"\n		\n		\n				\n				\n		\n				\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"Dołącz do grupy tłumaczeniowej na Slack\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://pl.wordpress.org/2018/07/31/dolacz-do-grupy-tlumaczeniowej-na-slack/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://pl.wordpress.org/2018/07/31/dolacz-do-grupy-tlumaczeniowej-na-slack/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 31 Jul 2018 07:46:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Polskie tłumaczenie i witryna\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=2025\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:429:\"Autorem tego wpisu jest Magdalena Stanek Tłumaczu porozmawiajmy! Podczas tegorocznego Contributor Day na WordCampie w Poznaniu w grupie tłumaczeniowej zebrała się zaangażowana ekipa, która stwierdziła, że fajnie by było tłumaczyć razem przez cały rok, a nie tylko podczas Contributor Day. W związku z tym założyliśmy kanał Slack dla polskich tłumaczy, gdzie będziemy prowadzić cotygodniowe spotkania [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Waclaw Jacek\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1047:\"\n<p><em>Autorem tego wpisu jest Magdalena Stanek</em></p>\n\n\n\n<p>Tłumaczu porozmawiajmy!</p>\n\n\n\n<p>Podczas tegorocznego Contributor Day na WordCampie w Poznaniu w grupie tłumaczeniowej zebrała się zaangażowana ekipa, która stwierdziła, że fajnie by było tłumaczyć razem przez cały rok, a nie tylko podczas Contributor Day.</p>\n\n\n\n<p>W związku z tym założyliśmy kanał Slack dla polskich tłumaczy, gdzie będziemy prowadzić cotygodniowe spotkania w każdą środę o 20:00. Celem spotkań jest wspólne motywowanie się do  poświęcenia trochę więcej czasu na tłumaczenia, rozwiewanie wątpliwości, dyskutowanie na temat różnych spraw związanych z tłumaczeniami i i oczywiście pomaganie sobie nawzajem. </p>\n\n\n\n<p>Możesz się zalogować tutaj <a href=\"https://wordpresspopolsku.slack.com/signup\">https://wordpresspopolsku.slack.com/signup</a> (do logowania najlepiej użyć swoich danych z wordpress.org).</p>\n\n\n\n<p>Mamy nadzieję, że inicjatywa Cię zainteresuje i dołączysz do nas.<br>\nDo zobaczenia na Slacku!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://pl.wordpress.org/2018/07/31/dolacz-do-grupy-tlumaczeniowej-na-slack/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:64:\"\n		\n		\n				\n				\n		\n				\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WordPress 4.9.7 – Wydanie poprawiające bezpieczeństwo i błędy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"https://pl.wordpress.org/2018/07/07/wordpress-4-9-7-wydanie-poprawiajace-bezpieczenstwo-i-bledy/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"https://pl.wordpress.org/2018/07/07/wordpress-4-9-7-wydanie-poprawiajace-bezpieczenstwo-i-bledy/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 07 Jul 2018 14:18:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:15:\"Bezpieczeństwo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1945\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:463:\"WordPress 4.9.7 jest już dostępny. To wydanie poprawia bezpieczeństwo wszystkich wersji systemu począwszy od 3.7. Zalecane jest natychmiastowe przeprowadzenie aktualizacji. WordPress w wersji 4.9.6 i wcześniejszych zawiera błąd związany z obsługą mediów, który może pozwolić użytkownikom z pewnymi prawami dostępu na podjęcie próby usunięcia plików spoza katalogu uploads. Dziękujemy Slavco za zgłoszenie błędu, a także Mattowi [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"Chris Trynkiewicz (Sukces Strony)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4564:\"<p>WordPress 4.9.7 jest już dostępny. <strong>To wydanie poprawia bezpieczeństwo</strong> wszystkich wersji systemu począwszy od 3.7. Zalecane jest natychmiastowe przeprowadzenie aktualizacji.</p>\n<p><span id=\"more-1945\"></span></p>\n<p>WordPress w wersji 4.9.6 i wcześniejszych zawiera błąd związany z obsługą mediów, który może pozwolić użytkownikom z pewnymi prawami dostępu na podjęcie próby usunięcia plików spoza katalogu <em>uploads</em>.</p>\n<p>Dziękujemy <a href=\"https://hackerone.com/slavco\">Slavco</a> za zgłoszenie błędu, a także <a href=\"https://www.wordfence.com/\">Mattowi Barry&#8217;emu</a> za zgłoszenie powiązanych z tą kwestią problemów.</p>\n<p>W WordPressie 4.9.7 naprawiono także 17 innych problemów, w szczególności:</p>\n<ul>\n<li>Taksonomie: Ulepszenie obsługi cache dla zapytań dotyczących terminów.</li>\n<li>Wpisy i inne Typy Treści: Usuwanie ciasteczka dotyczącego hasła dla podstrony, gdy użytkownik wyloguje się.</li>\n<li>Widgety: Dopuszczenie używania podstawowych znaczników HTML w opisach paneli bocznych w sekcji Widgety panelu administracyjnego.</li>\n<li>Kokpit wydarzeń społecznościowych: Zawsze pokazuj najbliższe spotkanie WordCamp, jeśli takowe się zbliża &#8211; nawet, gdy wcześniej planowane są spotkania w dalszych lokalizacjach.</li>\n<li>Prywatność: Upewnienie się, że domyślna treść polityki prywatności nie spowoduje wystąpienia krytycznego błędu podczas czyszczenia reguł przekształcania adresów poza kontekstem administracyjnym.</li>\n</ul>\n<p>W dokumentacji Codex znajdziesz <a href=\"https://codex.wordpress.org/Version_4.9.7\">więcej informacji na temat wszystkich kwestii rozwiązanych w wersji 4.9.7</a>.</p>\n<p><a href=\"https://pl.wordpress.org/\">Pobierz WordPressa 4.9.7</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Witryny, które obsługują automatyczne aktualizacje, rozpoczęły już ich przeprowadzanie.</p>\n<p>Wcześniej zaplanowane wydanie 4.9.7 będzie od teraz nazywane 4.9.8 i zostanie <a href=\"https://make.wordpress.org/core/2018/07/04/dev-chat-summary-july-4th-4-9-7-week-7/\">opublikowane zgodnie z planem</a>.</p>\n<p>Dziękujemy wszystkim, którzy przyczynili się do powstania wersji 4.9.7:</p>\n<p><a href=\"https://profiles.wordpress.org/1naveengiri/\">1naveengiri</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abdullahramzan/\">abdullahramzan</a>, <a href=\"https://profiles.wordpress.org/alejandroxlopez/\">alejandroxlopez</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/aryamaaru/\">Arun</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/bjornw/\">BjornW</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/kraftbj/\">Brandon Kraft</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/garetharnold/\">Gareth</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">ibelanger</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/joyously/\">Joy</a>, <a href=\"https://profiles.wordpress.org/khaihong/\">khaihong</a>, <a href=\"https://profiles.wordpress.org/lbenicio/\">lbenicio</a>, <a href=\"https://profiles.wordpress.org/leanderiversen/\">Leander Iversen</a>, <a href=\"https://profiles.wordpress.org/mermel/\">mermel</a>, <a href=\"https://profiles.wordpress.org/metalandcoffee/\">metalandcoffee</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Migrated to @jeffpaul</a>, <a href=\"https://profiles.wordpress.org/palmiak/\">palmiak</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/skoldin/\">skoldin</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/itowhid06/\">Towhidul Islam</a>, <a href=\"https://profiles.wordpress.org/warmlaundry/\">warmlaundry</a> oraz <a href=\"https://profiles.wordpress.org/yuriv/\">YuriV</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://pl.wordpress.org/2018/07/07/wordpress-4-9-7-wydanie-poprawiajace-bezpieczenstwo-i-bledy/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:64:\"\n		\n		\n				\n				\n		\n				\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"Program WordCamp Poznań 2018 już tu jest!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://pl.wordpress.org/2018/05/26/program-wordcamp-poznan-2018-juz-tu-jest/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://pl.wordpress.org/2018/05/26/program-wordcamp-poznan-2018-juz-tu-jest/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 26 May 2018 08:28:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:10:\"Wydarzenia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"wordcamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1817\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:395:\"Pewnie większość z was już wie, że w zeszłym tygodniu opublikowaliśmy program tegorocznego WordCampa, który odbędzie się w dniach 6-8 lipca w Poznaniu. WordCamp Poznań 2018 zbliża się dużymi krokami! Jeśli nie masz jeszcze biletu, to nie zastanawiaj się już dłużej, tylko kup bilet na najważniejsze WordPressowe wydarzenie 2018 roku! Zapraszamy do zapoznania się z [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Katarzyna Gajewska\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2455:\"<p>Pewnie większość z was już wie, że w zeszłym tygodniu opublikowaliśmy program tegorocznego WordCampa, który odbędzie się w dniach <strong>6-8 lipca w Poznaniu</strong>.</p>\n<p>WordCamp Poznań 2018 zbliża się dużymi krokami! Jeśli nie masz jeszcze biletu, to nie zastanawiaj się już dłużej, tylko <a href=\"https://2018.poznan.wordcamp.org/bilety/\" target=\"_blank\" rel=\"noopener noreferrer\"><strong>kup bilet</strong></a> na najważniejsze WordPressowe wydarzenie 2018 roku! Zapraszamy do zapoznania się z <a href=\"https://2018.poznan.wordcamp.org/program/\" target=\"_blank\" rel=\"noopener noreferrer\"><strong>pełnym programem konferencji</strong></a> i do zapisywania się na warsztaty oraz Contributor Day.</p>\n<p>Startujemy 6 lipca! Pierwszego dnia konferencji po prostu nie można przegapić. Zaczniemy od bardziej praktycznych wyzwań. Każdy uczestnik będzie miał możliwość wzięcia udziału w ciekawych warsztatach, które będą świetną okazją, aby zdobyć nowe umiejętności i poznać ciekawych ludzi. W tym roku zaserwujemy aż 6 różnych warsztatów. Warto zapoznać się z tematami i już dziś zarezerwować sobie miejsce. Równolegle do warsztatów będzie odbywał się <a href=\"https://2018.poznan.wordcamp.org/czym-jest-contributor-day/\" target=\"_blank\" rel=\"noopener noreferrer\"><strong>Contributor Day</strong></a>, podczas którego będzie można dołączyć do innych entuzjastów i popracować nad kodem, tłumaczeniem lub zająć się odpowiadaniem na pytania na forum wsparcia. Z pewnością każdy znajdzie tutaj coś dla siebie!</p>\n<p>Kolejne dwa dni konferencji będą wypełnione ciekawymi prelekcjami, na których nie może cię zabraknąć! Tematy są podzielone na dwie ścieżki: ogólną i techniczną. Ścieżkę ogólną polecamy wszystkim, którzy są zainteresowani tematami związanymi z wykorzystaniem WordPressa, blogowaniem i innymi zagadnieniami. Będziecie mieli okazję dowiedzieć się więcej o dostępności, pracy zdalnej, wycenie projektów czy analityce. Z kolei ścieżkę techniczną polecamy uczestnikom poszukującym bardziej specjalistycznej wiedzy. Będzie to świetna okazja, żeby posłuchać prelekcji na temat backupu, automatyzacji zadań czy zabezpieczenia WordPressa. Tematyka zarówno ścieżki ogólnej, jak i technicznej, jest bardzo zróżnicowana. Bez wątpienia każdy znajdzie coś, co go zainteresuje!</p>\n<p>Do zobaczenia w Poznaniu!</p>\n<p>&nbsp;</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://pl.wordpress.org/2018/05/26/program-wordcamp-poznan-2018-juz-tu-jest/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:61:\"\n		\n		\n				\n				\n		\n				\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"WordPress 4.9.4 – Wydanie poprawiające ważny błąd\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-4-wydanie-poprawiajace-wazny-blad/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-4-wydanie-poprawiajace-wazny-blad/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 06 Feb 2018 18:25:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1539\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:489:\"WordPress 4.9.4 jest już dostępny. To wydanie rozwiązuje istotny problem wprowadzony w wersji 4.9.3, który powodował, że strony obsługujące automatyczne aktualizacje nie będą mogły ich przeprowadzić. Wymagane jest ręczne zaktualizowanie WordPressa do wersji 4.9.4 przez Ciebie lub Twojego dostawcę hostingu. Cztery lata temu, w wydaniu 3.7 &#8222;Basie&#8221; WordPressa wprowadziliśmy możliwość automatycznej aktualizacji systemu, dzięki czemu strony stały [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"Chris Trynkiewicz (Sukces Strony)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2631:\"<p>WordPress 4.9.4 jest już dostępny.</p>\n<p>To wydanie rozwiązuje istotny problem wprowadzony w wersji 4.9.3, który powodował, że strony obsługujące automatyczne aktualizacje nie będą mogły ich przeprowadzić. <strong><span style=\"text-decoration: underline\">Wymagane jest ręczne zaktualizowanie WordPressa</span> do wersji 4.9.4 przez Ciebie lub Twojego dostawcę hostingu.</strong></p>\n<p><span id=\"more-1539\"></span></p>\n<p>Cztery lata temu, w wydaniu <a href=\"https://wordpress.org/news/2013/10/basie/\">3.7 &#8222;Basie&#8221; WordPressa</a> wprowadziliśmy możliwość automatycznej aktualizacji systemu, dzięki czemu strony stały się bezpieczniejsze i mniej awaryjne &#8211; nawet, jeśli samodzielnie nie miałeś możliwości ich aktualizować. Przez te 4 lata mechanizm ten pomógł milionom witryn, aktualizując je do bieżących wersji i naprawiając bardzo sporadyczne usterki. Niestety we wczorajszym <a href=\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-3-wydanie-poprawiajace-bledy/\">wydaniu 4.9.3</a> znalazł się ważny błąd, który został wykryty dopiero po upublicznieniu nowej wersji systemu. Błąd ten powoduje, że WordPress nie zaktualizuje się automatycznie do wersji 4.9.4, co oznacza, że aktualizację taką trzeba przeprowadzić ręcznie z poziomu panelu administracyjnego lub z pomocą dostawcy serwera hostingowego.</p>\n<p><strong>Aby przeprowadzić ręczną aktualizację, udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Dopóki tego nie wykonasz, WordPress <span style=\"text-decoration: underline\">nie będzie aktualizował się automatycznie do kolejnych wersji</span>. Zalecamy, by zrobić to natychmiast.</strong></p>\n<p>Dostawcy hostingu, którzy aktualizują automatycznie WordPressa w imieniu swoich klientów, mogą przystąpić do aktualizacji w standardowym trybie. Będziemy ściśle współpracować z innymi dostawcami hostingu, by jak najwięcej ich klientów otrzymało tą aktualizację.</p>\n<p><a href=\"https://make.wordpress.org/core/2018/02/06/wordpress-4-9-4-release-the-technical-details/\">Więcej szczegółów technicznych opublikowaliśmy na naszym blogu o tworzeniu rdzenia WordPressa</a>. Pełna lista zmian dostępna jest w <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.9.4&amp;group=component\">spisie zamkniętych wątków</a>.</p>\n<p><a href=\"https://pl.wordpress.org/\">Pobierz WordPressa 4.9.4</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-4-wydanie-poprawiajace-wazny-blad/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"7\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:61:\"\n		\n		\n				\n				\n		\n				\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"WordPress 4.9.3 – Wydanie poprawiające błędy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-3-wydanie-poprawiajace-bledy/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-3-wydanie-poprawiajace-bledy/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 06 Feb 2018 10:50:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1536\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:450:\"WordPress 4.9.3 jest już dostępny. To wydanie zawiera poprawki 34 błędów obecnych w wersji 4.9 WordPressa, w tym dotyczących zestawów zmian na ekranie Personalizacji, widgetów, edytora wizualnego i kompatybilności z PHP 7.2.  Spis wszystkich zmian znajdziesz w liście zamkniętych wątków oraz liście przeprowadzonych zmian. Pobierz WordPressa 4.9.3 lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"Chris Trynkiewicz (Sukces Strony)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3596:\"<p>WordPress 4.9.3 jest już dostępny.</p>\n<p>To wydanie zawiera poprawki 34 błędów obecnych w wersji 4.9 WordPressa, w tym dotyczących zestawów zmian na ekranie Personalizacji, widgetów, edytora wizualnego i kompatybilności z PHP 7.2.  Spis wszystkich zmian znajdziesz<span style=\"line-height: 1.5\"> w <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.9.3&amp;group=component\">liście zamkniętych wątków</a> oraz <a href=\"https://core.trac.wordpress.org/log/branches/4.9?rev=42630&amp;stop_rev=42521\">liście przeprowadzonych zmian</a>.</span></p>\n<p><span id=\"more-1536\"></span></p>\n<p><a href=\"https://pl.wordpress.org/\">Pobierz WordPressa 4.9.3</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Witryny, które obsługują automatyczne aktualizacje, rozpoczęły już ich przeprowadzanie.</p>\n<p>Dziękujemy wszystkim, którzy przyczynili się do powstania wersji 4.9.3:</p>\n<p><a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abdullahramzan/\">abdullahramzan</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andreiglingeanu/\">andreiglingeanu</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/bpayton/\">Brandon Payton</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/coleh/\">coleh</a>, <a href=\"https://profiles.wordpress.org/darko-a7/\">Darko A7</a>, <a href=\"https://profiles.wordpress.org/desertsnowman/\">David Cramer</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/frank-klein/\">Frank Klein</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/lizkarkoski/\">lizkarkoski</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius L. J.</a>, <a href=\"https://profiles.wordpress.org/mattyrob/\">mattyrob</a>, <a href=\"https://profiles.wordpress.org/munyagu/\">munyagu</a>, <a href=\"https://profiles.wordpress.org/ndavison/\">ndavison</a>, <a href=\"https://profiles.wordpress.org/nickmomrik/\">Nick Momrik</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/rachelbaker/\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/rishishah/\">rishishah</a>, <a href=\"https://profiles.wordpress.org/othellobloke/\">Ryan Paul</a>, <a href=\"https://profiles.wordpress.org/sasiddiqui/\">Sami Ahmed Siddiqui</a>, <a href=\"https://profiles.wordpress.org/sayedwp/\">Sayed Taqui</a>, <a href=\"https://profiles.wordpress.org/seanchayes/\">Sean Hayes</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/shooper/\">Shawn Hooper</a>, <a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/manikmist09/\">Sultan Nasir Uddin</a>, <a href=\"https://profiles.wordpress.org/tigertech/\">tigertech</a> oraz <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-3-wydanie-poprawiajace-bledy/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:61:\"\n		\n		\n				\n				\n		\n				\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WordPress 4.9.2 – Wydanie poprawiające bezpieczeństwo i błędy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"https://pl.wordpress.org/2018/01/17/wordpress-4-9-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"https://pl.wordpress.org/2018/01/17/wordpress-4-9-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 17 Jan 2018 11:06:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1512\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:467:\"WordPress 4.9.2 jest już dostępny. To wydanie poprawia bezpieczeństwo we wszystkich poprzednich wersjach systemu. Zalecane jest natychmiastowe przeprowadzenie aktualizacji. Wykryto podatność na atak XSS w plikach Flash biblioteki MediaElement, która jest dołączana do WordPressa w celu zapewnienia kompatybilności ze starszym oprogramowaniem. Ponieważ pliki te nie są już potrzebne w zdecydowanej większości przypadków, zostały one usunięte [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"Chris Trynkiewicz (Sukces Strony)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4168:\"<p>WordPress 4.9.2 jest już dostępny. <strong>To wydanie poprawia bezpieczeństwo</strong> we wszystkich poprzednich wersjach systemu. Zalecane jest natychmiastowe przeprowadzenie aktualizacji.</p>\n<p><span id=\"more-1512\"></span></p>\n<p>Wykryto podatność na atak XSS w plikach Flash biblioteki MediaElement, która jest dołączana do WordPressa w celu zapewnienia kompatybilności ze starszym oprogramowaniem. Ponieważ pliki te nie są już potrzebne w zdecydowanej większości przypadków, zostały one usunięte z WordPressa.</p>\n<p>Biblioteka MediaElement została już udostępniona w nowej wersji, która naprawa problem. W repozytorium wtyczek WordPressa znajduje się nowa <a href=\"https://wordpress.org/plugins/mediaelement-flash-fallbacks/\">wtyczka, przywracająca obsługę biblioteki MediaElement z poprawionymi plikami</a>.</p>\n<p>Dziękujemy zgłaszającym (<a href=\"https://opnsec.com\">Enguerran Gillier</a> i <a href=\"https://widiz.com/\">Widiz</a>) za <a href=\"https://make.wordpress.org/core/handbook/reporting-security-vulnerabilities/\">odpowiedzialne ujawnienie</a> problemów z bezpieczeństwem.</p>\n<p>W WordPressie 4.9.2 rozwiązano także 21 innych problemów, w tym:</p>\n<ul>\n<li>naprawiono błędy JavaScript, które uniemożliwiały zapisywanie wpisów w Firefoxie,</li>\n<li>przywrócono wcześniejsze, niezależne od taksonomii działanie <code>get_category_link()</code> i <code>category_description()</code>,</li>\n<li>od teraz zmiana motywu spowoduje podjęcie próby przywrócenia poprzednich przypisań widgetów &#8211; nawet, jeśli w ostatnio używanym motywie nie były dostępne żadne obszary na widgety.</li>\n</ul>\n<p>W dokumentacji Codex znajdziesz <a href=\"https://codex.wordpress.org/Version_4.9.2\">więcej informacji na temat wszystkich rozwiązanych problemów w wersji 4.9.2</a>.</p>\n<p><a href=\"https://pl.wordpress.org/\">Pobierz WordPressa 4.9.2</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Witryny, które obsługują automatyczne aktualizacje, rozpoczęły już ich przeprowadzanie.</p>\n<p>Dziękujemy wszystkim, którzy przyczynili się do powstania wersji 4.9.2:</p>\n<p><a href=\"https://profiles.wordpress.org/0x6f0/\">0x6f0</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/aduth/\">Andrew Duthie</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/blobfolio/\">Blobfolio</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/icaleb/\">Caleb Burks</a>, <a href=\"https://profiles.wordpress.org/poena/\">Carolina Nymark</a>, <a href=\"https://profiles.wordpress.org/chasewg/\">chasewg</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/hardik-amipara/\">Hardik Amipara</a>, <a href=\"https://profiles.wordpress.org/ionvv/\">ionvv</a>, <a href=\"https://profiles.wordpress.org/jaswrks/\">Jason Caldwell</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/johnschulz/\">johnschulz</a>, <a href=\"https://profiles.wordpress.org/juiiee8487/\">Juhi Patel</a>, <a href=\"https://profiles.wordpress.org/obenland/\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/markjaquith/\">Mark Jaquith</a>, <a href=\"https://profiles.wordpress.org/rabmalin/\">Nilambar Sharma</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/rachelbaker/\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/rinkuyadav999/\">Rinku Y</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a> oraz <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://pl.wordpress.org/2018/01/17/wordpress-4-9-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:64:\"\n		\n		\n				\n				\n		\n				\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"WordPress 4.8.3 – Wydanie poprawiające bezpieczeństwo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://pl.wordpress.org/2017/10/31/wordpress-4-8-3-wydanie-poprawiajace-bezpieczenstwo/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"https://pl.wordpress.org/2017/10/31/wordpress-4-8-3-wydanie-poprawiajace-bezpieczenstwo/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 31 Oct 2017 11:26:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:15:\"Bezpieczeństwo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1289\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:475:\"WordPress 4.8.3 jest już dostępny. To wydanie poprawia bezpieczeństwo we wszystkich poprzednich wersjach systemu. Zalecane jest natychmiastowe przeprowadzenie aktualizacji. WordPress w wersji 4.8.2 i wcześniejszych jest podatny na problem z $wpdb-&#62;prepare(), który może prowadzić do tworzenia nieoczekiwanych i niebezpiecznych zapytań, umożliwiających potencjalny atak metodą SQL injection (SQLi). Rdzeń systemu nie jest bezpośrednio podatny na ten [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"Chris Trynkiewicz (Sukces Strony)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1522:\"<p>WordPress 4.8.3 jest już dostępny. <strong>To wydanie poprawia bezpieczeństwo</strong> we wszystkich poprzednich wersjach systemu. Zalecane jest natychmiastowe przeprowadzenie aktualizacji.</p>\n<p><span id=\"more-1289\"></span></p>\n<p>WordPress w wersji 4.8.2 i wcześniejszych jest podatny na problem z <code>$wpdb-&gt;prepare()</code>, który może prowadzić do tworzenia nieoczekiwanych i niebezpiecznych zapytań, umożliwiających potencjalny atak metodą SQL injection (SQLi). Rdzeń systemu nie jest bezpośrednio podatny na ten problem, ale dodaliśmy dodatkowe zabezpieczenia, by wtyczki i motywy nie mogły go przypadkowo powodować. Problem zgłosił <a href=\"https://twitter.com/ircmaxell\">Anthony Ferrara</a>.</p>\n<p>To wydanie WordPressa zmienia zachowanie funkcji <code>esc_sql()</code>. Różnica nie będzie istotna dla większości programistów. Zachęcamy do <a href=\"https://make.wordpress.org/core/2017/10/31/changed-behaviour-of-esc_sql-in-wordpress-4-8-3/\">przeczytania informacji dla deweloperów</a>.</p>\n<p>Dziękujemy zgłaszającemu za <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">odpowiedzialne ujawnienie</a> problemu z bezpieczeństwem.</p>\n<p><a href=\"https://pl.wordpress.org/\">Pobierz WordPressa 4.8.3</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Witryny, które obsługują automatyczne aktualizacje, rozpoczęły już ich przeprowadzanie.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://pl.wordpress.org/2017/10/31/wordpress-4-8-3-wydanie-poprawiajace-bezpieczenstwo/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:61:\"\n		\n		\n				\n				\n		\n				\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordPress 4.9 Beta 2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://pl.wordpress.org/2017/10/12/wordpress-4-9-beta-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://pl.wordpress.org/2017/10/12/wordpress-4-9-beta-2/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 12 Oct 2017 07:03:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Wersje testowe\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1235\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:433:\"WordPress 4.9 Beta 2 jest już dostępny! Oprogramowanie jest wciąż w fazie tworzenia, dlatego nie zalecamy jego używania w witrynie produkcyjnej. Zastanów się nad środowiskiem testowym i tam sprawdzaj do woli. Aby przetestować WordPress 4.9, wypróbuj wtyczkę WordPress Beta Tester (regularnie aktualizuje one do  &#8222;krawych nocnych wydań&#8221;) albo pobierz wersję beta (zip). Więcej informacji na temat [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Marcin Pietrzak\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1781:\"<p>WordPress 4.9 Beta 2 jest już dostępny!</p>\n<p><strong>Oprogramowanie jest wciąż w fazie tworzenia</strong>, dlatego nie zalecamy jego używania w witrynie produkcyjnej. Zastanów się nad środowiskiem testowym i tam sprawdzaj do woli. Aby przetestować WordPress 4.9, wypróbuj wtyczkę <a href=\"https://pl.wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> (regularnie aktualizuje one do  &#8222;krawych nocnych wydań&#8221;) albo <a href=\"https://wordpress.org/wordpress-4.9-beta2.zip\">pobierz wersję beta</a> (zip).</p>\n<p>Więcej informacji na temat tego, co nowego w wersji 4.9, znajdziesz w blogu we wpisie <a href=\"https://wordpress.org/news/2017/10/wordpress-4-9-beta-1/\">Beta 1</a> (po angielsku). Od tego czasu dokonaliśmy <a href=\"https://core.trac.wordpress.org/log/trunk/?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=41846&amp;stop_rev=41777&amp;limit=100&amp;sfp_email=&amp;sfph_mail=\">70 zmian</a> w wersji Beta 2.</p>\n<p><a href=\"https://translate.wordpress.org/locale/pl/default/wp/dev\">Pomóż nam przetłumaczyć WordPress na język polski</a>!</p>\n<p><strong>Jeśli widzisz błąd</strong>, napisz wiadomość na forum <a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta</a>. Jeżeli coś nie działa, to chcielibyśm się tego dowiedzieć właśnie do ciebie! Jeśli czujesz się na siłach, żeby napisać raport zawierający opis jak powtórzyć błąd to  skorzystaj z serwisu <a href=\"https://make.wordpress.org/core/reports/\">WordPress Trac</a>. Na nim też znajdziesz <a href=\"https://core.trac.wordpress.org/tickets/major\">listę znanych błędów</a>.</p>\n<p><em>Przetestujmy razem:</em><br />\n<em> edytowanie kodu, przełączniki tematyczne,</em><br />\n<em> widgety, harmonogramowanie.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://pl.wordpress.org/2017/10/12/wordpress-4-9-beta-2/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:64:\"\n		\n		\n				\n				\n		\n				\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WordPress 4.8.2 – Wydanie poprawiające bezpieczeństwo i błędy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"https://pl.wordpress.org/2017/09/22/wordpress-4-8-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"https://pl.wordpress.org/2017/09/22/wordpress-4-8-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 22 Sep 2017 11:37:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:15:\"Bezpieczeństwo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1213\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:476:\"WordPress 4.8.2 jest już dostępny. Wersja poprawia bezpieczeństwo wszystkich poprzednich wersji i zdecydowanie zachęcamy do natychmiastowej aktualizacji witryn. WordPress w wersji 4.8.1 i starsze mają następujące problemy z bezpieczeństwem: $wpdb-&#62; prepare() mogło tworzyć nieoczekiwane i niebezpieczne zapytania prowadzące do potencjalnego wstrzyknięcia kod SQL (SQLi). Core WordPressa nie jest bezpośrednio narażony na ten problem, ale poprawiono [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Marcin Pietrzak\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3051:\"<p>WordPress 4.8.2 jest już dostępny. Wersja <strong>poprawia bezpieczeństwo</strong> wszystkich poprzednich wersji i zdecydowanie zachęcamy do natychmiastowej aktualizacji witryn.</p>\n<p>WordPress w wersji 4.8.1 i starsze mają następujące problemy z bezpieczeństwem:</p>\n<ol>\n<li><strong>$wpdb-&gt; prepare()</strong> mogło tworzyć nieoczekiwane i niebezpieczne zapytania prowadzące do potencjalnego wstrzyknięcia kod SQL (SQLi). Core WordPressa nie jest bezpośrednio narażony na ten problem, ale poprawiono proces tworzenia zapytań aby zapobiegać podatności we wtyczkach i motywach. Zgłoszone przez <a href=\"https://hackerone.com/slavco\">Slavco</a></li>\n<li>Wykryto podatność na cross-site scripting (XSS) w używaniu oEmbed. Zgłoszone przez xknown zespołu ds. Zabezpieczeń WordPress.</li>\n<li>W edytorze wizualnym wykryto lukę w zabezpieczeniach skryptów przed cross-site scripting (XSS) Zgłoszone przez <a href=\"https://twitter.com/brutelogic\">Rodolfo Assis (@brutelogic)</a> Sucuri Security.</li>\n<li>W kodzie do rozpakowywania wykryto lukę w zabezpieczeniach ścieżki do pliku. Zgłoszone przez <a href=\"https://hackerone.com/noxrnet\">Alex Chapman (noxrnet)</a>.</li>\n<li>W edytorze wtyczek wykryto luka w zabezpieczeniach cross-site scripting (XSS). Zgłoszone przez 陈瑞琦 (Chen Ruiqi).</li>\n<li>Na ekranie użytkownika i terminach edycji zostały wykryte otwarte przekierowanie. Zgłoszone przez <a href=\"https://hackerone.com/ysx\">Yasin Soliman (ysx)</a>.</li>\n<li>Odkryto lukę w zabezpieczeniach ścieżki na ekranie personalizacji witryny. Zgłoszone przez Weston Ruter z zespołu ds. Bezpieczeństwa WordPress.</li>\n<li>Wykryto podatność na cross-site scripting (XSS)  w nazwach szablonów. Zgłoszone przez <a href=\"https://hackerone.com/sikic\">Luka (sikic)</a>.</li>\n<li>Wykryto podatność na cross-site scripting (XSS) w linkach modalnych. Zgłoszone przez <a href=\"https://hackerone.com/qasuar\">Anas Roubi (qasuar)</a>.</li>\n</ol>\n<p>Dziękujemy zgłaszającym za praktykowanie <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">odpowiedzialnego ujawnienia (en)</a>.</p>\n<p>Oprócz powyższych kwestii związanych z bezpieczeństwem, WordPress 4.8.2 zawiera 6 poprawek utrzymaniowych serii 4.8. Więcej informacji można znaleźć w <a href=\"https://codex.wordpress.org/Version_4.8.2\">notce wydania wersji (en)</a> oraz na <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.8.2&amp;group=component&amp;col=id&amp;col=summary&amp;col=component&amp;col=status&amp;col=owner&amp;col=type&amp;col=priority&amp;col=keywords&amp;order=priority\">liście zmian</a>.</p>\n<p><a href=\"https://pl.wordpress.org/wordpress-4.8.2-pl_PL.zip\">Pobierz WordPress 4.8.2</a> lub przejdź do Panel → Aktualizacje i kliknij przycisk &#8222;Aktualizuj teraz&#8221;. Strony obsługujące automatyczne aktualizacje w tle już zaczynają aktualizować się do wersji 4.8.2.</p>\n<p>Dziękujemy wszystkim, którzy przyczynili się do wydania 4.8.2.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://pl.wordpress.org/2017/09/22/wordpress-4-8-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:30:\"https://pl.wordpress.org/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Tue, 28 Jan 2020 07:42:50 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Wed, 27 Nov 2019 09:42:44 GMT\";s:4:\"link\";s:61:\"<https://pl.wordpress.org/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";}}s:5:\"build\";s:14:\"20200119092228\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(445, '_transient_timeout_feed_mod_a421d6f32723068ab074a40017a9e1f9', '1580240567', 'no'),
(446, '_transient_feed_mod_a421d6f32723068ab074a40017a9e1f9', '1580197367', 'no'),
(447, '_transient_timeout_dash_v2_5ed7e1a5d79caaf375d35c33f6782653', '1580240567', 'no'),
(448, '_transient_dash_v2_5ed7e1a5d79caaf375d35c33f6782653', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://pl.wordpress.org/2019/10/17/wordcamp-lodz-2019/\'>WordCamp Łódź 2019</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://pl.wordpress.org/2019/10/17/wordcamp-lodz-2019/\'>WordCamp Łódź 2019</a></li><li><a class=\'rsswidget\' href=\'https://pl.wordpress.org/2018/07/31/dolacz-do-grupy-tlumaczeniowej-na-slack/\'>Dołącz do grupy tłumaczeniowej na Slack</a></li><li><a class=\'rsswidget\' href=\'https://pl.wordpress.org/2018/07/07/wordpress-4-9-7-wydanie-poprawiajace-bezpieczenstwo-i-bledy/\'>WordPress 4.9.7 – Wydanie poprawiające bezpieczeństwo i błędy</a></li></ul></div>', 'no'),
(453, '_site_transient_timeout_theme_roots', '1580209019', 'no'),
(454, '_site_transient_theme_roots', 'a:1:{s:12:\"ZnajdzToAuto\";s:7:\"/themes\";}', 'no'),
(458, 'addition_cats_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 3, '_edit_lock', '1579689368:1'),
(4, 5, '_edit_last', '1'),
(5, 5, '_edit_lock', '1580199244:1'),
(6, 5, '_wp_page_template', 'default'),
(7, 3, '_wp_trash_meta_status', 'draft'),
(8, 3, '_wp_trash_meta_time', '1579690870'),
(9, 3, '_wp_desired_post_slug', 'polityka-prywatnosci'),
(10, 2, '_wp_trash_meta_status', 'publish'),
(11, 2, '_wp_trash_meta_time', '1579690873'),
(12, 2, '_wp_desired_post_slug', 'przykladowa-strona'),
(13, 9, '_edit_last', '1'),
(14, 9, '_wp_page_template', 'page-about.php'),
(15, 9, '_edit_lock', '1580128620:1'),
(16, 11, '_edit_last', '1'),
(17, 11, '_wp_page_template', 'page-addition.php'),
(18, 11, '_edit_lock', '1580051515:1'),
(19, 13, '_edit_last', '1'),
(20, 13, '_wp_page_template', 'page-contact.php'),
(21, 13, '_edit_lock', '1580127712:1'),
(22, 15, '_menu_item_type', 'post_type'),
(23, 15, '_menu_item_menu_item_parent', '0'),
(24, 15, '_menu_item_object_id', '9'),
(25, 15, '_menu_item_object', 'page'),
(26, 15, '_menu_item_target', ''),
(27, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(28, 15, '_menu_item_xfn', ''),
(29, 15, '_menu_item_url', ''),
(30, 15, '_menu_item_orphaned', '1579690938'),
(31, 16, '_menu_item_type', 'post_type'),
(32, 16, '_menu_item_menu_item_parent', '0'),
(33, 16, '_menu_item_object_id', '11'),
(34, 16, '_menu_item_object', 'page'),
(35, 16, '_menu_item_target', ''),
(36, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(37, 16, '_menu_item_xfn', ''),
(38, 16, '_menu_item_url', ''),
(40, 17, '_edit_last', '1'),
(41, 17, '_wp_page_template', 'page-myaccount.php'),
(42, 17, '_edit_lock', '1580208691:1'),
(52, 20, '_menu_item_type', 'post_type'),
(53, 20, '_menu_item_menu_item_parent', '0'),
(54, 20, '_menu_item_object_id', '13'),
(55, 20, '_menu_item_object', 'page'),
(56, 20, '_menu_item_target', ''),
(57, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(58, 20, '_menu_item_xfn', ''),
(59, 20, '_menu_item_url', ''),
(61, 21, '_menu_item_type', 'post_type'),
(62, 21, '_menu_item_menu_item_parent', '0'),
(63, 21, '_menu_item_object_id', '9'),
(64, 21, '_menu_item_object', 'page'),
(65, 21, '_menu_item_target', ''),
(66, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(67, 21, '_menu_item_xfn', ''),
(68, 21, '_menu_item_url', ''),
(70, 22, '_is_includes', 'a:6:{s:9:\"post_type\";a:1:{s:3:\"ads\";s:3:\"ads\";}s:10:\"date_query\";a:2:{s:5:\"after\";a:1:{s:4:\"date\";s:0:\"\";}s:6:\"before\";a:1:{s:4:\"date\";s:0:\"\";}}s:12:\"has_password\";s:4:\"null\";s:12:\"search_title\";s:1:\"1\";s:14:\"search_content\";s:1:\"1\";s:14:\"search_excerpt\";s:1:\"1\";}'),
(71, 22, '_is_excludes', 'a:0:{}'),
(72, 22, '_is_settings', 'a:2:{s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"DESC\";}'),
(73, 22, '_is_ajax', 'a:0:{}'),
(74, 22, '_is_customize', 'a:1:{s:16:\"enable_customize\";s:1:\"1\";}'),
(75, 22, '_is_locale', 'en_US'),
(76, 25, '_wp_trash_meta_status', 'publish'),
(77, 25, '_wp_trash_meta_time', '1579768594'),
(78, 26, '_wp_trash_meta_status', 'publish'),
(79, 26, '_wp_trash_meta_time', '1579769786'),
(80, 27, '_edit_last', '1'),
(81, 27, '_edit_lock', '1580128144:1'),
(82, 27, '_wp_page_template', 'page-ads.php'),
(92, 30, '_edit_last', '1'),
(93, 30, '_edit_lock', '1579789135:1'),
(94, 31, '_edit_last', '1'),
(95, 31, '_edit_lock', '1579789035:1'),
(96, 32, '_edit_last', '1'),
(97, 32, '_edit_lock', '1579789047:1'),
(105, 31, '_thumbnail_id', '40'),
(106, 32, '_thumbnail_id', '38'),
(107, 36, 'ml-slider_settings', 'a:37:{s:4:\"type\";s:4:\"flex\";s:6:\"random\";b:0;s:8:\"cssClass\";s:0:\"\";s:8:\"printCss\";b:1;s:7:\"printJs\";b:1;s:5:\"width\";i:700;s:6:\"height\";i:300;s:3:\"spw\";i:7;s:3:\"sph\";i:5;s:5:\"delay\";i:3000;s:6:\"sDelay\";i:30;s:7:\"opacity\";d:0.7;s:10:\"titleSpeed\";i:500;s:6:\"effect\";s:6:\"random\";s:10:\"navigation\";b:1;s:5:\"links\";b:1;s:10:\"hoverPause\";b:1;s:5:\"theme\";s:7:\"default\";s:9:\"direction\";s:10:\"horizontal\";s:7:\"reverse\";b:0;s:14:\"animationSpeed\";i:600;s:8:\"prevText\";s:8:\"Previous\";s:8:\"nextText\";s:4:\"Next\";s:6:\"slices\";i:15;s:6:\"center\";b:0;s:9:\"smartCrop\";b:1;s:12:\"carouselMode\";b:0;s:14:\"carouselMargin\";i:5;s:16:\"firstSlideFadeIn\";b:0;s:6:\"easing\";s:6:\"linear\";s:8:\"autoPlay\";b:1;s:11:\"thumb_width\";i:150;s:12:\"thumb_height\";i:100;s:17:\"responsive_thumbs\";b:1;s:15:\"thumb_min_width\";i:100;s:9:\"fullWidth\";b:1;s:10:\"noConflict\";b:1;}'),
(108, 36, 'metaslider_slideshow_theme', ''),
(111, 38, '_wp_attached_file', '2020/01/car1-2.png'),
(112, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:900;s:4:\"file\";s:18:\"2020/01/car1-2.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"car1-2-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"car1-2-1024x768.png\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"car1-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"car1-2-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(113, 39, '_wp_attached_file', '2020/01/car2-1.png'),
(114, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:900;s:4:\"file\";s:18:\"2020/01/car2-1.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"car2-1-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"car2-1-1024x768.png\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"car2-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"car2-1-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(115, 40, '_wp_attached_file', '2020/01/car3-1.png'),
(116, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:900;s:4:\"file\";s:18:\"2020/01/car3-1.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"car3-1-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"car3-1-1024x768.png\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"car3-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"car3-1-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(117, 30, '_thumbnail_id', '39'),
(118, 41, '_edit_last', '1'),
(119, 41, '_edit_lock', '1579999296:1'),
(120, 5, 'card_1_title', 'Ogłoszenia'),
(121, 5, '_card_1_title', 'field_5e29ac1912c3f'),
(122, 5, 'card_1_content', 'Zobacz listę wszystkich dodanych ogłoszeń.'),
(123, 5, '_card_1_content', 'field_5e29ac3112c40'),
(124, 5, 'card_1_url', '27'),
(125, 5, '_card_1_url', 'field_5e29ac3d12c41'),
(126, 5, 'card_1', ''),
(127, 5, '_card_1', 'field_5e29abe712c3e'),
(128, 5, 'card_2_title', 'O nas'),
(129, 5, '_card_2_title', 'field_5e29ac9412c43'),
(130, 5, 'card_2_content', 'Czym jest ZnajdźToAuto?'),
(131, 5, '_card_2_content', 'field_5e29ac9412c44'),
(132, 5, 'card_2_url', '9'),
(133, 5, '_card_2_url', 'field_5e29ac9412c45'),
(134, 5, 'card_2', ''),
(135, 5, '_card_2', 'field_5e29ac9412c42'),
(136, 5, 'card_3_title', 'Kontakt'),
(137, 5, '_card_3_title', 'field_5e29ac9b12c47'),
(138, 5, 'card_3_content', 'Skontaktuj się z nami!'),
(139, 5, '_card_3_content', 'field_5e29ac9b12c48'),
(140, 5, 'card_3_url', '13'),
(141, 5, '_card_3_url', 'field_5e29ac9b12c49'),
(142, 5, 'card_3', ''),
(143, 5, '_card_3', 'field_5e29ac9b12c46'),
(144, 54, 'card_1_title', 'Lista wszystkich ogłoszeń'),
(145, 54, '_card_1_title', 'field_5e29ac1912c3f'),
(146, 54, 'card_1_content', 'Zobacz listę wszystkich dodanych ogłoszeń.'),
(147, 54, '_card_1_content', 'field_5e29ac3112c40'),
(148, 54, 'card_1_url', '27'),
(149, 54, '_card_1_url', 'field_5e29ac3d12c41'),
(150, 54, 'card_1', ''),
(151, 54, '_card_1', 'field_5e29abe712c3e'),
(152, 54, 'card_2_title', 'O nas'),
(153, 54, '_card_2_title', 'field_5e29ac9412c43'),
(154, 54, 'card_2_content', 'Czym jest ZnajdźToAuto?'),
(155, 54, '_card_2_content', 'field_5e29ac9412c44'),
(156, 54, 'card_2_url', '9'),
(157, 54, '_card_2_url', 'field_5e29ac9412c45'),
(158, 54, 'card_2', ''),
(159, 54, '_card_2', 'field_5e29ac9412c42'),
(160, 54, 'card_3_title', 'Kontakt'),
(161, 54, '_card_3_title', 'field_5e29ac9b12c47'),
(162, 54, 'card_3_content', 'Skontaktuj się z nami!'),
(163, 54, '_card_3_content', 'field_5e29ac9b12c48'),
(164, 54, 'card_3_url', '13'),
(165, 54, '_card_3_url', 'field_5e29ac9b12c49'),
(166, 54, 'card_3', ''),
(167, 54, '_card_3', 'field_5e29ac9b12c46'),
(168, 55, 'card_1_title', 'Ogłoszenia'),
(169, 55, '_card_1_title', 'field_5e29ac1912c3f'),
(170, 55, 'card_1_content', 'Zobacz listę wszystkich dodanych ogłoszeń.'),
(171, 55, '_card_1_content', 'field_5e29ac3112c40'),
(172, 55, 'card_1_url', '27'),
(173, 55, '_card_1_url', 'field_5e29ac3d12c41'),
(174, 55, 'card_1', ''),
(175, 55, '_card_1', 'field_5e29abe712c3e'),
(176, 55, 'card_2_title', 'O nas'),
(177, 55, '_card_2_title', 'field_5e29ac9412c43'),
(178, 55, 'card_2_content', 'Czym jest ZnajdźToAuto?'),
(179, 55, '_card_2_content', 'field_5e29ac9412c44'),
(180, 55, 'card_2_url', '9'),
(181, 55, '_card_2_url', 'field_5e29ac9412c45'),
(182, 55, 'card_2', ''),
(183, 55, '_card_2', 'field_5e29ac9412c42'),
(184, 55, 'card_3_title', 'Kontakt'),
(185, 55, '_card_3_title', 'field_5e29ac9b12c47'),
(186, 55, 'card_3_content', 'Skontaktuj się z nami!'),
(187, 55, '_card_3_content', 'field_5e29ac9b12c48'),
(188, 55, 'card_3_url', '13'),
(189, 55, '_card_3_url', 'field_5e29ac9b12c49'),
(190, 55, 'card_3', ''),
(191, 55, '_card_3', 'field_5e29ac9b12c46'),
(192, 56, '_edit_last', '1'),
(193, 56, '_edit_lock', '1580197809:1'),
(224, 5, 'slide_1', '40'),
(225, 5, '_slide_1', 'field_5e2aa496f9ec7'),
(226, 5, 'slide_2', '39'),
(227, 5, '_slide_2', 'field_5e2aa60e6e32e'),
(228, 5, 'slide_3', '38'),
(229, 5, '_slide_3', 'field_5e2aa6126e32f'),
(230, 61, 'card_1_title', 'Ogłoszenia'),
(231, 61, '_card_1_title', 'field_5e29ac1912c3f'),
(232, 61, 'card_1_content', 'Zobacz listę wszystkich dodanych ogłoszeń.'),
(233, 61, '_card_1_content', 'field_5e29ac3112c40'),
(234, 61, 'card_1_url', '27'),
(235, 61, '_card_1_url', 'field_5e29ac3d12c41'),
(236, 61, 'card_1', ''),
(237, 61, '_card_1', 'field_5e29abe712c3e'),
(238, 61, 'card_2_title', 'O nas'),
(239, 61, '_card_2_title', 'field_5e29ac9412c43'),
(240, 61, 'card_2_content', 'Czym jest ZnajdźToAuto?'),
(241, 61, '_card_2_content', 'field_5e29ac9412c44'),
(242, 61, 'card_2_url', '9'),
(243, 61, '_card_2_url', 'field_5e29ac9412c45'),
(244, 61, 'card_2', ''),
(245, 61, '_card_2', 'field_5e29ac9412c42'),
(246, 61, 'card_3_title', 'Kontakt'),
(247, 61, '_card_3_title', 'field_5e29ac9b12c47'),
(248, 61, 'card_3_content', 'Skontaktuj się z nami!'),
(249, 61, '_card_3_content', 'field_5e29ac9b12c48'),
(250, 61, 'card_3_url', '13'),
(251, 61, '_card_3_url', 'field_5e29ac9b12c49'),
(252, 61, 'card_3', ''),
(253, 61, '_card_3', 'field_5e29ac9b12c46'),
(254, 61, 'slide_1', '<a href=\"http://localhost/projektogloszeniowy/ads/car1/\">Car1</a>'),
(255, 61, '_slide_1', 'field_5e2aa496f9ec7'),
(256, 61, 'slide_2', '<a href=\"http://localhost/projektogloszeniowy/ads/car2/\">Car2</a>'),
(257, 61, '_slide_2', 'field_5e2aa60e6e32e'),
(258, 61, 'slide_3', '<a href=\"http://localhost/projektogloszeniowy/ads/car3/\">Car3</a>'),
(259, 61, '_slide_3', 'field_5e2aa6126e32f'),
(290, 63, 'card_1_title', 'Ogłoszenia'),
(291, 63, '_card_1_title', 'field_5e29ac1912c3f'),
(292, 63, 'card_1_content', 'Zobacz listę wszystkich dodanych ogłoszeń.'),
(293, 63, '_card_1_content', 'field_5e29ac3112c40'),
(294, 63, 'card_1_url', '27'),
(295, 63, '_card_1_url', 'field_5e29ac3d12c41'),
(296, 63, 'card_1', ''),
(297, 63, '_card_1', 'field_5e29abe712c3e'),
(298, 63, 'card_2_title', 'O nas'),
(299, 63, '_card_2_title', 'field_5e29ac9412c43'),
(300, 63, 'card_2_content', 'Czym jest ZnajdźToAuto?'),
(301, 63, '_card_2_content', 'field_5e29ac9412c44'),
(302, 63, 'card_2_url', '9'),
(303, 63, '_card_2_url', 'field_5e29ac9412c45'),
(304, 63, 'card_2', ''),
(305, 63, '_card_2', 'field_5e29ac9412c42'),
(306, 63, 'card_3_title', 'Kontakt'),
(307, 63, '_card_3_title', 'field_5e29ac9b12c47'),
(308, 63, 'card_3_content', 'Skontaktuj się z nami!'),
(309, 63, '_card_3_content', 'field_5e29ac9b12c48'),
(310, 63, 'card_3_url', '13'),
(311, 63, '_card_3_url', 'field_5e29ac9b12c49'),
(312, 63, 'card_3', ''),
(313, 63, '_card_3', 'field_5e29ac9b12c46'),
(314, 63, 'slide_1', '<img src=\"http://localhost/projektogloszeniowy/wp-content/uploads/2020/01/car3-1.png\" alt=\"Car1\" />'),
(315, 63, '_slide_1', 'field_5e2aa496f9ec7'),
(316, 63, 'slide_2', '<img src=\"http://localhost/projektogloszeniowy/wp-content/uploads/2020/01/car3-1.png\" alt=\"Car2\" />'),
(317, 63, '_slide_2', 'field_5e2aa60e6e32e'),
(318, 63, 'slide_3', '<img src=\"http://localhost/projektogloszeniowy/wp-content/uploads/2020/01/car3-1.png\" alt=\"Car3\" />'),
(319, 63, '_slide_3', 'field_5e2aa6126e32f'),
(320, 64, 'card_1_title', 'Ogłoszenia'),
(321, 64, '_card_1_title', 'field_5e29ac1912c3f'),
(322, 64, 'card_1_content', 'Zobacz listę wszystkich dodanych ogłoszeń.'),
(323, 64, '_card_1_content', 'field_5e29ac3112c40'),
(324, 64, 'card_1_url', '27'),
(325, 64, '_card_1_url', 'field_5e29ac3d12c41'),
(326, 64, 'card_1', ''),
(327, 64, '_card_1', 'field_5e29abe712c3e'),
(328, 64, 'card_2_title', 'O nas'),
(329, 64, '_card_2_title', 'field_5e29ac9412c43'),
(330, 64, 'card_2_content', 'Czym jest ZnajdźToAuto?'),
(331, 64, '_card_2_content', 'field_5e29ac9412c44'),
(332, 64, 'card_2_url', '9'),
(333, 64, '_card_2_url', 'field_5e29ac9412c45'),
(334, 64, 'card_2', ''),
(335, 64, '_card_2', 'field_5e29ac9412c42'),
(336, 64, 'card_3_title', 'Kontakt'),
(337, 64, '_card_3_title', 'field_5e29ac9b12c47'),
(338, 64, 'card_3_content', 'Skontaktuj się z nami!'),
(339, 64, '_card_3_content', 'field_5e29ac9b12c48'),
(340, 64, 'card_3_url', '13'),
(341, 64, '_card_3_url', 'field_5e29ac9b12c49'),
(342, 64, 'card_3', ''),
(343, 64, '_card_3', 'field_5e29ac9b12c46'),
(344, 64, 'slide_1', '<img src=\"http://localhost/projektogloszeniowy/wp-content/uploads/2020/01/car1-2.png\" alt=\"Car1\" />'),
(345, 64, '_slide_1', 'field_5e2aa496f9ec7'),
(346, 64, 'slide_2', '<img src=\"http://localhost/projektogloszeniowy/wp-content/uploads/2020/01/car3-1.png\" alt=\"Car2\" />'),
(347, 64, '_slide_2', 'field_5e2aa60e6e32e'),
(348, 64, 'slide_3', '<img src=\"http://localhost/projektogloszeniowy/wp-content/uploads/2020/01/car3-1.png\" alt=\"Car3\" />'),
(349, 64, '_slide_3', 'field_5e2aa6126e32f'),
(350, 65, 'card_1_title', 'Ogłoszenia'),
(351, 65, '_card_1_title', 'field_5e29ac1912c3f'),
(352, 65, 'card_1_content', 'Zobacz listę wszystkich dodanych ogłoszeń.'),
(353, 65, '_card_1_content', 'field_5e29ac3112c40'),
(354, 65, 'card_1_url', '27'),
(355, 65, '_card_1_url', 'field_5e29ac3d12c41'),
(356, 65, 'card_1', ''),
(357, 65, '_card_1', 'field_5e29abe712c3e'),
(358, 65, 'card_2_title', 'O nas'),
(359, 65, '_card_2_title', 'field_5e29ac9412c43'),
(360, 65, 'card_2_content', 'Czym jest ZnajdźToAuto?'),
(361, 65, '_card_2_content', 'field_5e29ac9412c44'),
(362, 65, 'card_2_url', '9'),
(363, 65, '_card_2_url', 'field_5e29ac9412c45'),
(364, 65, 'card_2', ''),
(365, 65, '_card_2', 'field_5e29ac9412c42'),
(366, 65, 'card_3_title', 'Kontakt'),
(367, 65, '_card_3_title', 'field_5e29ac9b12c47'),
(368, 65, 'card_3_content', 'Skontaktuj się z nami!'),
(369, 65, '_card_3_content', 'field_5e29ac9b12c48'),
(370, 65, 'card_3_url', '13'),
(371, 65, '_card_3_url', 'field_5e29ac9b12c49'),
(372, 65, 'card_3', ''),
(373, 65, '_card_3', 'field_5e29ac9b12c46'),
(374, 65, 'slide_1', '<img src=\"http://localhost/projektogloszeniowy/wp-content/uploads/2020/01/car1-2.png\" alt=\"Car1\" />'),
(375, 65, '_slide_1', 'field_5e2aa496f9ec7'),
(376, 65, 'slide_2', '<img src=\"http://localhost/projektogloszeniowy/wp-content/uploads/2020/01/car2-1.png\" alt=\"Car2\" />'),
(377, 65, '_slide_2', 'field_5e2aa60e6e32e'),
(378, 65, 'slide_3', '<img src=\"http://localhost/projektogloszeniowy/wp-content/uploads/2020/01/car3-1.png\" alt=\"Car3\" />'),
(379, 65, '_slide_3', 'field_5e2aa6126e32f'),
(440, 68, 'card_1_title', 'Ogłoszenia'),
(441, 68, '_card_1_title', 'field_5e29ac1912c3f'),
(442, 68, 'card_1_content', 'Zobacz listę wszystkich dodanych ogłoszeń.'),
(443, 68, '_card_1_content', 'field_5e29ac3112c40'),
(444, 68, 'card_1_url', '27'),
(445, 68, '_card_1_url', 'field_5e29ac3d12c41'),
(446, 68, 'card_1', ''),
(447, 68, '_card_1', 'field_5e29abe712c3e'),
(448, 68, 'card_2_title', 'O nas'),
(449, 68, '_card_2_title', 'field_5e29ac9412c43'),
(450, 68, 'card_2_content', 'Czym jest ZnajdźToAuto?'),
(451, 68, '_card_2_content', 'field_5e29ac9412c44'),
(452, 68, 'card_2_url', '9'),
(453, 68, '_card_2_url', 'field_5e29ac9412c45'),
(454, 68, 'card_2', ''),
(455, 68, '_card_2', 'field_5e29ac9412c42'),
(456, 68, 'card_3_title', 'Kontakt'),
(457, 68, '_card_3_title', 'field_5e29ac9b12c47'),
(458, 68, 'card_3_content', 'Skontaktuj się z nami!'),
(459, 68, '_card_3_content', 'field_5e29ac9b12c48'),
(460, 68, 'card_3_url', '13'),
(461, 68, '_card_3_url', 'field_5e29ac9b12c49'),
(462, 68, 'card_3', ''),
(463, 68, '_card_3', 'field_5e29ac9b12c46'),
(464, 68, 'slide_1', '40'),
(465, 68, '_slide_1', 'field_5e2aa496f9ec7'),
(466, 68, 'slide_2', '39'),
(467, 68, '_slide_2', 'field_5e2aa60e6e32e'),
(468, 68, 'slide_3', '38'),
(469, 68, '_slide_3', 'field_5e2aa6126e32f'),
(470, 69, '_edit_last', '1'),
(471, 69, '_edit_lock', '1580198520:1'),
(472, 5, 'add_button', '11'),
(473, 5, '_add_button', 'field_5e2ab28d2c2ae'),
(474, 72, 'card_1_title', 'Ogłoszenia'),
(475, 72, '_card_1_title', 'field_5e29ac1912c3f'),
(476, 72, 'card_1_content', 'Zobacz listę wszystkich dodanych ogłoszeń.'),
(477, 72, '_card_1_content', 'field_5e29ac3112c40'),
(478, 72, 'card_1_url', '27'),
(479, 72, '_card_1_url', 'field_5e29ac3d12c41'),
(480, 72, 'card_1', ''),
(481, 72, '_card_1', 'field_5e29abe712c3e'),
(482, 72, 'card_2_title', 'O nas'),
(483, 72, '_card_2_title', 'field_5e29ac9412c43'),
(484, 72, 'card_2_content', 'Czym jest ZnajdźToAuto?'),
(485, 72, '_card_2_content', 'field_5e29ac9412c44'),
(486, 72, 'card_2_url', '9'),
(487, 72, '_card_2_url', 'field_5e29ac9412c45'),
(488, 72, 'card_2', ''),
(489, 72, '_card_2', 'field_5e29ac9412c42'),
(490, 72, 'card_3_title', 'Kontakt'),
(491, 72, '_card_3_title', 'field_5e29ac9b12c47'),
(492, 72, 'card_3_content', 'Skontaktuj się z nami!'),
(493, 72, '_card_3_content', 'field_5e29ac9b12c48'),
(494, 72, 'card_3_url', '13'),
(495, 72, '_card_3_url', 'field_5e29ac9b12c49'),
(496, 72, 'card_3', ''),
(497, 72, '_card_3', 'field_5e29ac9b12c46'),
(498, 72, 'slide_1', '40'),
(499, 72, '_slide_1', 'field_5e2aa496f9ec7'),
(500, 72, 'slide_2', '39'),
(501, 72, '_slide_2', 'field_5e2aa60e6e32e'),
(502, 72, 'slide_3', '38'),
(503, 72, '_slide_3', 'field_5e2aa6126e32f'),
(504, 72, 'add_button', '11'),
(505, 72, '_add_button', 'field_5e2ab28d2c2ae'),
(506, 73, 'card_1_title', 'Ogłoszenia'),
(507, 73, '_card_1_title', 'field_5e29ac1912c3f'),
(508, 73, 'card_1_content', 'Zobacz listę wszystkich dodanych ogłoszeń.'),
(509, 73, '_card_1_content', 'field_5e29ac3112c40'),
(510, 73, 'card_1_url', '27'),
(511, 73, '_card_1_url', 'field_5e29ac3d12c41'),
(512, 73, 'card_1', ''),
(513, 73, '_card_1', 'field_5e29abe712c3e'),
(514, 73, 'card_2_title', 'O nas'),
(515, 73, '_card_2_title', 'field_5e29ac9412c43'),
(516, 73, 'card_2_content', 'Czym jest ZnajdźToAuto?'),
(517, 73, '_card_2_content', 'field_5e29ac9412c44'),
(518, 73, 'card_2_url', '9'),
(519, 73, '_card_2_url', 'field_5e29ac9412c45'),
(520, 73, 'card_2', ''),
(521, 73, '_card_2', 'field_5e29ac9412c42'),
(522, 73, 'card_3_title', 'Kontakt'),
(523, 73, '_card_3_title', 'field_5e29ac9b12c47'),
(524, 73, 'card_3_content', 'Skontaktuj się z nami!'),
(525, 73, '_card_3_content', 'field_5e29ac9b12c48'),
(526, 73, 'card_3_url', '13'),
(527, 73, '_card_3_url', 'field_5e29ac9b12c49'),
(528, 73, 'card_3', ''),
(529, 73, '_card_3', 'field_5e29ac9b12c46'),
(530, 73, 'slide_1', '40'),
(531, 73, '_slide_1', 'field_5e2aa496f9ec7'),
(532, 73, 'slide_2', '39'),
(533, 73, '_slide_2', 'field_5e2aa60e6e32e'),
(534, 73, 'slide_3', '38'),
(535, 73, '_slide_3', 'field_5e2aa6126e32f'),
(536, 73, 'add_button', 'dodaj: dodaj'),
(537, 73, '_add_button', 'field_5e2ab28d2c2ae'),
(538, 74, 'card_1_title', 'Ogłoszenia'),
(539, 74, '_card_1_title', 'field_5e29ac1912c3f'),
(540, 74, 'card_1_content', 'Zobacz listę wszystkich dodanych ogłoszeń.'),
(541, 74, '_card_1_content', 'field_5e29ac3112c40'),
(542, 74, 'card_1_url', '27'),
(543, 74, '_card_1_url', 'field_5e29ac3d12c41'),
(544, 74, 'card_1', ''),
(545, 74, '_card_1', 'field_5e29abe712c3e'),
(546, 74, 'card_2_title', 'O nas'),
(547, 74, '_card_2_title', 'field_5e29ac9412c43'),
(548, 74, 'card_2_content', 'Czym jest ZnajdźToAuto?'),
(549, 74, '_card_2_content', 'field_5e29ac9412c44'),
(550, 74, 'card_2_url', '9'),
(551, 74, '_card_2_url', 'field_5e29ac9412c45'),
(552, 74, 'card_2', ''),
(553, 74, '_card_2', 'field_5e29ac9412c42'),
(554, 74, 'card_3_title', 'Kontakt'),
(555, 74, '_card_3_title', 'field_5e29ac9b12c47'),
(556, 74, 'card_3_content', 'Skontaktuj się z nami!'),
(557, 74, '_card_3_content', 'field_5e29ac9b12c48'),
(558, 74, 'card_3_url', '13'),
(559, 74, '_card_3_url', 'field_5e29ac9b12c49'),
(560, 74, 'card_3', ''),
(561, 74, '_card_3', 'field_5e29ac9b12c46'),
(562, 74, 'slide_1', '40'),
(563, 74, '_slide_1', 'field_5e2aa496f9ec7'),
(564, 74, 'slide_2', '39'),
(565, 74, '_slide_2', 'field_5e2aa60e6e32e'),
(566, 74, 'slide_3', '38'),
(567, 74, '_slide_3', 'field_5e2aa6126e32f'),
(568, 74, 'add_button', ''),
(569, 74, '_add_button', 'field_5e2ab28d2c2ae'),
(570, 76, 'card_1_title', 'Ogłoszenia'),
(571, 76, '_card_1_title', 'field_5e29ac1912c3f'),
(572, 76, 'card_1_content', 'Zobacz listę wszystkich dodanych ogłoszeń.'),
(573, 76, '_card_1_content', 'field_5e29ac3112c40'),
(574, 76, 'card_1_url', '27'),
(575, 76, '_card_1_url', 'field_5e29ac3d12c41'),
(576, 76, 'card_1', ''),
(577, 76, '_card_1', 'field_5e29abe712c3e'),
(578, 76, 'card_2_title', 'O nas'),
(579, 76, '_card_2_title', 'field_5e29ac9412c43'),
(580, 76, 'card_2_content', 'Czym jest ZnajdźToAuto?'),
(581, 76, '_card_2_content', 'field_5e29ac9412c44'),
(582, 76, 'card_2_url', '9'),
(583, 76, '_card_2_url', 'field_5e29ac9412c45'),
(584, 76, 'card_2', ''),
(585, 76, '_card_2', 'field_5e29ac9412c42'),
(586, 76, 'card_3_title', 'Kontakt'),
(587, 76, '_card_3_title', 'field_5e29ac9b12c47'),
(588, 76, 'card_3_content', 'Skontaktuj się z nami!'),
(589, 76, '_card_3_content', 'field_5e29ac9b12c48'),
(590, 76, 'card_3_url', '13'),
(591, 76, '_card_3_url', 'field_5e29ac9b12c49'),
(592, 76, 'card_3', ''),
(593, 76, '_card_3', 'field_5e29ac9b12c46'),
(594, 76, 'slide_1', '40'),
(595, 76, '_slide_1', 'field_5e2aa496f9ec7'),
(596, 76, 'slide_2', '39'),
(597, 76, '_slide_2', 'field_5e2aa60e6e32e'),
(598, 76, 'slide_3', '38'),
(599, 76, '_slide_3', 'field_5e2aa6126e32f'),
(600, 76, 'add_button', '11'),
(601, 76, '_add_button', 'field_5e2ab28d2c2ae'),
(603, 77, '_wp_trash_meta_status', 'publish'),
(604, 77, '_wp_trash_meta_time', '1579858620'),
(605, 78, '_form', '<div class=\"form-group\">\n                            <label for=\"username\">Imię i nazwisko</label>\n                            [text* your-name class:form-control class: class:form-control-lg placeholder \"Podaj imię i nazwisko\"]\n                        </div>\n                        <div class=\"form-group\">\n                            <label for=\"useremail\">E-mail</label>\n                            [email* your-email class:form-control class: class:form-control-lg placeholder \"Podaj e-mail\"]\n                        </div>\n                        <div class=\"form-group\">\n                            <label for=\"your-message\">Treść wiadomości</label>\n                            [textarea your-message class:form-control class:form-control-lg placeholder \"Podaj treść\"]\n                        </div>\n                        [submit class:btn class:btn-block class:btn-warning class:btn-lg \"Wyślij\"]'),
(606, 78, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:39:\"Projekt Ogloszeniowy - \"[your-subject]\"\";s:6:\"sender\";s:45:\"Projekt Ogloszeniowy <dmuranowski@edu.cdv.pl>\";s:9:\"recipient\";s:22:\"dmuranowski@edu.cdv.pl\";s:4:\"body\";s:231:\"Nadawca: [your-name] <[your-email]>\nTemat: [your-subject]\n\nTreść wiadomości:\n[your-message]\n\n-- \nTa wiadomość została wysłana przez formularz kontaktowy na stronie Projekt Ogloszeniowy (http://localhost/projektogloszeniowy).\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(607, 78, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:39:\"Projekt Ogloszeniowy - \"[your-subject]\"\";s:6:\"sender\";s:45:\"Projekt Ogloszeniowy <dmuranowski@edu.cdv.pl>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:172:\"Treść wiadomości:\n[your-message]\n\n-- \nTa wiadomość została wysłana przez formularz kontaktowy na stronie Projekt Ogloszeniowy (http://localhost/projektogloszeniowy).\";s:18:\"additional_headers\";s:32:\"Reply-To: dmuranowski@edu.cdv.pl\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(608, 78, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:49:\"Twoja wiadomość została wysłana. Dziękujemy!\";s:12:\"mail_sent_ng\";s:80:\"Wystąpił problem z wysłaniem twojej wiadomości. Spróbuj ponownie później.\";s:16:\"validation_error\";s:98:\"Przynajmniej jedno pole jest błędnie wypełnione. Sprawdź wpisaną treść i spróbuj ponownie.\";s:4:\"spam\";s:80:\"Wystąpił problem z wysłaniem twojej wiadomości. Spróbuj ponownie później.\";s:12:\"accept_terms\";s:72:\"Musisz wyrazić zgodę na powyższe zapisy, aby móc wysłać formularz.\";s:16:\"invalid_required\";s:37:\"Wymagane jest wypełnienie tego pola.\";s:16:\"invalid_too_long\";s:39:\"Zawartość tego pola jest zbyt długa.\";s:17:\"invalid_too_short\";s:40:\"Zawartość tego pola jest zbyt krótka.\";s:12:\"invalid_date\";s:29:\"Format daty jest niepoprawny.\";s:14:\"date_too_early\";s:49:\"Data jest wcześniejsza, niż pierwsza dozwolona.\";s:13:\"date_too_late\";s:48:\"Data jest późniejsza, niż ostatnia dozwolona.\";s:13:\"upload_failed\";s:51:\"Podczas wgrywania pliku wystąpił nieznany błąd.\";s:24:\"upload_file_type_invalid\";s:39:\"Nie możesz wgrywać plików tego typu.\";s:21:\"upload_file_too_large\";s:25:\"Ten plik jest zbyt duży.\";s:23:\"upload_failed_php_error\";s:42:\"Wystąpił błąd podczas wgrywania pliku.\";s:14:\"invalid_number\";s:31:\"Format liczby jest niepoprawny.\";s:16:\"number_too_small\";s:52:\"Ta liczba jest mniejsza, niż minimalna dopuszczana.\";s:16:\"number_too_large\";s:54:\"Ta liczba jest większa, niż maksymalna dopuszczalna.\";s:23:\"quiz_answer_not_correct\";s:40:\"Odpowiedź w quizie jest nieprawidłowa.\";s:13:\"invalid_email\";s:45:\"Wprowadzony adres e-mail jest nieprawidłowy.\";s:11:\"invalid_url\";s:42:\"Wprowadzony adres URL jest nieprawidłowy.\";s:11:\"invalid_tel\";s:47:\"Wprowadzony numer telefonu jest nieprawidłowy.\";}'),
(609, 78, '_additional_settings', ''),
(610, 78, '_locale', 'pl_PL'),
(611, 9, '_thumbnail_id', '40'),
(621, 40, '_wp_attachment_image_alt', ''),
(622, 86, 'card_1_title', 'Ogłoszenia'),
(623, 86, '_card_1_title', 'field_5e29ac1912c3f'),
(624, 86, 'card_1_content', 'Zobacz listę wszystkich dodanych ogłoszeń.'),
(625, 86, '_card_1_content', 'field_5e29ac3112c40'),
(626, 86, 'card_1_url', '27'),
(627, 86, '_card_1_url', 'field_5e29ac3d12c41'),
(628, 86, 'card_1', ''),
(629, 86, '_card_1', 'field_5e29abe712c3e'),
(630, 86, 'card_2_title', 'O nas'),
(631, 86, '_card_2_title', 'field_5e29ac9412c43'),
(632, 86, 'card_2_content', 'Czym jest ZnajdźToAuto?'),
(633, 86, '_card_2_content', 'field_5e29ac9412c44'),
(634, 86, 'card_2_url', '9'),
(635, 86, '_card_2_url', 'field_5e29ac9412c45'),
(636, 86, 'card_2', ''),
(637, 86, '_card_2', 'field_5e29ac9412c42'),
(638, 86, 'card_3_title', 'Kontakt'),
(639, 86, '_card_3_title', 'field_5e29ac9b12c47'),
(640, 86, 'card_3_content', 'Skontaktuj się z nami!'),
(641, 86, '_card_3_content', 'field_5e29ac9b12c48'),
(642, 86, 'card_3_url', '13'),
(643, 86, '_card_3_url', 'field_5e29ac9b12c49'),
(644, 86, 'card_3', ''),
(645, 86, '_card_3', 'field_5e29ac9b12c46'),
(646, 86, 'slide_1', '[caption id=\"attachment_40\" align=\"alignnone\" width=\"300\"]<img src=\"http://localhost/ZnajdzToAuto/wp-content/uploads/2020/01/car3-1-300x225.png\" alt=\"obrazek\" width=\"300\" height=\"225\" class=\"size-medium wp-image-40\" /> ten obrazek[/caption]'),
(647, 86, '_slide_1', 'field_5e2aa496f9ec7'),
(648, 86, 'slide_2', '39'),
(649, 86, '_slide_2', 'field_5e2aa60e6e32e'),
(650, 86, 'slide_3', '38'),
(651, 86, '_slide_3', 'field_5e2aa6126e32f'),
(652, 86, 'add_button', '11'),
(653, 86, '_add_button', 'field_5e2ab28d2c2ae'),
(654, 87, 'card_1_title', 'Ogłoszenia'),
(655, 87, '_card_1_title', 'field_5e29ac1912c3f'),
(656, 87, 'card_1_content', 'Zobacz listę wszystkich dodanych ogłoszeń.'),
(657, 87, '_card_1_content', 'field_5e29ac3112c40'),
(658, 87, 'card_1_url', '27'),
(659, 87, '_card_1_url', 'field_5e29ac3d12c41'),
(660, 87, 'card_1', ''),
(661, 87, '_card_1', 'field_5e29abe712c3e'),
(662, 87, 'card_2_title', 'O nas'),
(663, 87, '_card_2_title', 'field_5e29ac9412c43'),
(664, 87, 'card_2_content', 'Czym jest ZnajdźToAuto?'),
(665, 87, '_card_2_content', 'field_5e29ac9412c44'),
(666, 87, 'card_2_url', '9'),
(667, 87, '_card_2_url', 'field_5e29ac9412c45'),
(668, 87, 'card_2', ''),
(669, 87, '_card_2', 'field_5e29ac9412c42'),
(670, 87, 'card_3_title', 'Kontakt'),
(671, 87, '_card_3_title', 'field_5e29ac9b12c47'),
(672, 87, 'card_3_content', 'Skontaktuj się z nami!'),
(673, 87, '_card_3_content', 'field_5e29ac9b12c48'),
(674, 87, 'card_3_url', '13'),
(675, 87, '_card_3_url', 'field_5e29ac9b12c49'),
(676, 87, 'card_3', ''),
(677, 87, '_card_3', 'field_5e29ac9b12c46'),
(678, 87, 'slide_1', '40'),
(679, 87, '_slide_1', 'field_5e2aa496f9ec7'),
(680, 87, 'slide_2', '39'),
(681, 87, '_slide_2', 'field_5e2aa60e6e32e'),
(682, 87, 'slide_3', '38'),
(683, 87, '_slide_3', 'field_5e2aa6126e32f'),
(684, 87, 'add_button', '11'),
(685, 87, '_add_button', 'field_5e2ab28d2c2ae'),
(686, 89, '_edit_lock', '1580209666:1'),
(687, 94, 'nazwa_sprzedajacego', 'fgsfgsfg'),
(688, 94, '_nazwa_sprzedajacego', 'field_5e2d9290a0f04'),
(689, 94, 'podaj_email', 'adriankasica90@gmail.com'),
(690, 94, '_podaj_email', 'field_5e2d92a0a0f05'),
(691, 94, 'podaj_telefon', '1454156651'),
(692, 94, '_podaj_telefon', 'field_5e2d92bba0f06'),
(693, 94, 'kategoria_ogloszenia', 'a:1:{i:0;s:7:\"Osobowe\";}'),
(694, 94, '_kategoria_ogloszenia', 'field_5e2d92c8a0f07'),
(695, 94, '_edit_lock', '1580052461:1'),
(696, 94, '_edit_last', '1'),
(697, 95, 'nazwa_sprzedajacego', 'fgsfgsfg'),
(698, 95, '_nazwa_sprzedajacego', 'field_5e2d9290a0f04'),
(699, 95, 'podaj_email', 'adriankasica90@gmail.com'),
(700, 95, '_podaj_email', 'field_5e2d92a0a0f05'),
(701, 95, 'podaj_telefon', '1454156651'),
(702, 95, '_podaj_telefon', 'field_5e2d92bba0f06'),
(703, 95, 'kategoria_ogloszenia', 'a:1:{i:0;s:7:\"Osobowe\";}'),
(704, 95, '_kategoria_ogloszenia', 'field_5e2d92c8a0f07'),
(705, 96, 'nazwa_sprzedajacego', 'afefsae'),
(706, 96, '_nazwa_sprzedajacego', 'field_5e2d9290a0f04'),
(707, 96, 'podaj_email', 'kasica.aleksandra@gmail.com'),
(708, 96, '_podaj_email', 'field_5e2d92a0a0f05'),
(709, 96, 'podaj_telefon', '512545425'),
(710, 96, '_podaj_telefon', 'field_5e2d92bba0f06'),
(711, 96, 'kategoria_ogloszenia', ''),
(712, 96, '_kategoria_ogloszenia', 'field_5e2d92c8a0f07'),
(713, 96, '_edit_lock', '1580206331:1'),
(714, 96, '_edit_last', '1'),
(715, 96, '_wp_old_date', '2020-01-26'),
(716, 97, 'nazwa_sprzedajacego', 'ncgbn'),
(717, 97, '_nazwa_sprzedajacego', 'field_5e2d9290a0f04'),
(718, 97, 'podaj_email', 'kszarecki@wp.pl'),
(719, 97, '_podaj_email', 'field_5e2d92a0a0f05'),
(720, 97, 'podaj_telefon', '2345234524524'),
(721, 97, '_podaj_telefon', 'field_5e2d92bba0f06'),
(722, 97, 'kategoria_ogloszenia', ''),
(723, 97, '_kategoria_ogloszenia', 'field_5e2d92c8a0f07'),
(724, 98, 'nazwa_sprzedajacego', 'fvngf'),
(725, 98, '_nazwa_sprzedajacego', 'field_5e2d9290a0f04'),
(726, 98, 'podaj_email', 'kszarecki@wp.pl'),
(727, 98, '_podaj_email', 'field_5e2d92a0a0f05'),
(728, 98, 'podaj_telefon', '463636364'),
(729, 98, '_podaj_telefon', 'field_5e2d92bba0f06'),
(730, 98, 'kategoria_ogloszenia', ''),
(731, 98, '_kategoria_ogloszenia', 'field_5e2d92c8a0f07'),
(732, 97, '_edit_lock', '1580118103:1'),
(733, 97, '_edit_last', '1'),
(734, 98, '_edit_lock', '1580202752:1'),
(735, 98, '_edit_last', '1'),
(736, 100, 'nazwa_sprzedajacego', 'gfngfnfgn'),
(737, 100, '_nazwa_sprzedajacego', 'field_5e2d9290a0f04'),
(738, 100, 'podaj_email', 'kszarecki@wp.pl'),
(739, 100, '_podaj_email', 'field_5e2d92a0a0f05'),
(740, 100, 'podaj_telefon', '546457467'),
(741, 100, '_podaj_telefon', 'field_5e2d92bba0f06'),
(742, 100, 'kategoria_ogloszenia', ''),
(743, 100, '_kategoria_ogloszenia', 'field_5e2d92c8a0f07'),
(744, 100, '_edit_lock', '1580125487:1'),
(745, 100, '_edit_last', '1'),
(746, 101, 'nazwa_sprzedajacego', 'gfngfnfgn'),
(747, 101, '_nazwa_sprzedajacego', 'field_5e2d9290a0f04'),
(748, 101, 'podaj_email', 'kszarecki@wp.pl'),
(749, 101, '_podaj_email', 'field_5e2d92a0a0f05'),
(750, 101, 'podaj_telefon', '546457467'),
(751, 101, '_podaj_telefon', 'field_5e2d92bba0f06'),
(752, 101, 'kategoria_ogloszenia', ''),
(753, 101, '_kategoria_ogloszenia', 'field_5e2d92c8a0f07'),
(754, 104, '_edit_last', '1'),
(755, 104, '_edit_lock', '1580128195:1'),
(756, 27, 'main_page_button', '5'),
(757, 27, '_main_page_button', 'field_5e2ecdd36d2c9'),
(758, 107, 'main_page_button', '5'),
(759, 107, '_main_page_button', 'field_5e2ecdd36d2c9'),
(760, 17, 'main_page_button', '5'),
(761, 17, '_main_page_button', 'field_5e2ecdd36d2c9'),
(762, 108, 'main_page_button', '5'),
(763, 108, '_main_page_button', 'field_5e2ecdd36d2c9'),
(764, 9, 'main_page_button', '5'),
(765, 9, '_main_page_button', 'field_5e2ecdd36d2c9'),
(766, 109, 'main_page_button', '5'),
(767, 109, '_main_page_button', 'field_5e2ecdd36d2c9'),
(768, 13, 'main_page_button', '5'),
(769, 13, '_main_page_button', 'field_5e2ecdd36d2c9'),
(770, 110, 'main_page_button', '5'),
(771, 110, '_main_page_button', 'field_5e2ecdd36d2c9'),
(772, 101, '_edit_lock', '1580207005:1'),
(773, 111, '_edit_last', '1'),
(774, 111, '_edit_lock', '1580128063:1'),
(775, 111, '_wp_page_template', 'page-terms.php'),
(776, 111, '_thumbnail_id', '40'),
(777, 114, '_menu_item_type', 'post_type'),
(778, 114, '_menu_item_menu_item_parent', '0'),
(779, 114, '_menu_item_object_id', '111'),
(780, 114, '_menu_item_object', 'page'),
(781, 114, '_menu_item_target', ''),
(782, 114, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(783, 114, '_menu_item_xfn', ''),
(784, 114, '_menu_item_url', ''),
(786, 111, 'main_page_button', '5'),
(787, 111, '_main_page_button', 'field_5e2ecdd36d2c9'),
(788, 115, 'main_page_button', '5'),
(789, 115, '_main_page_button', 'field_5e2ecdd36d2c9'),
(790, 104, '_wp_trash_meta_status', 'publish'),
(791, 104, '_wp_trash_meta_time', '1580128750'),
(792, 104, '_wp_desired_post_slug', 'group_5e2ecdcbb98b0'),
(793, 105, '_wp_trash_meta_status', 'publish'),
(794, 105, '_wp_trash_meta_time', '1580128751'),
(795, 105, '_wp_desired_post_slug', 'field_5e2ecdd36d2c9'),
(796, 116, '_form', '<label> Wyślij do:\n    [text adresat] </label>\n\n<label> Dotyczy ogłoszenia:\n    [text your-subject] </label>\n\n<label> Treść wiadomości\n    [textarea your-message] </label>\n\n[submit \"Wyślij\"]'),
(797, 116, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:32:\"ZnajdźToAuto - \"[your-subject]\"\";s:6:\"sender\";s:38:\"ZnajdźToAuto <dmuranowski@edu.cdv.pl>\";s:9:\"recipient\";s:33:\"dmuranowski@edu.cdv.pl, [adresat]\";s:4:\"body\";s:217:\"Nadawca: [your-name] <[your-email]>\nTemat: [your-subject]\n\nTreść wiadomości:\n[your-message]\n\n-- \nTa wiadomość została wysłana przez formularz kontaktowy na stronie ZnajdźToAuto (http://localhost/ZnajdzToAuto).\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(798, 116, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:32:\"ZnajdźToAuto - \"[your-subject]\"\";s:6:\"sender\";s:38:\"ZnajdźToAuto <dmuranowski@edu.cdv.pl>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:158:\"Treść wiadomości:\n[your-message]\n\n-- \nTa wiadomość została wysłana przez formularz kontaktowy na stronie ZnajdźToAuto (http://localhost/ZnajdzToAuto).\";s:18:\"additional_headers\";s:32:\"Reply-To: dmuranowski@edu.cdv.pl\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(799, 116, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:49:\"Twoja wiadomość została wysłana. Dziękujemy!\";s:12:\"mail_sent_ng\";s:80:\"Wystąpił problem z wysłaniem twojej wiadomości. Spróbuj ponownie później.\";s:16:\"validation_error\";s:98:\"Przynajmniej jedno pole jest błędnie wypełnione. Sprawdź wpisaną treść i spróbuj ponownie.\";s:4:\"spam\";s:80:\"Wystąpił problem z wysłaniem twojej wiadomości. Spróbuj ponownie później.\";s:12:\"accept_terms\";s:72:\"Musisz wyrazić zgodę na powyższe zapisy, aby móc wysłać formularz.\";s:16:\"invalid_required\";s:37:\"Wymagane jest wypełnienie tego pola.\";s:16:\"invalid_too_long\";s:39:\"Zawartość tego pola jest zbyt długa.\";s:17:\"invalid_too_short\";s:40:\"Zawartość tego pola jest zbyt krótka.\";s:12:\"invalid_date\";s:29:\"Format daty jest niepoprawny.\";s:14:\"date_too_early\";s:49:\"Data jest wcześniejsza, niż pierwsza dozwolona.\";s:13:\"date_too_late\";s:48:\"Data jest późniejsza, niż ostatnia dozwolona.\";s:13:\"upload_failed\";s:51:\"Podczas wgrywania pliku wystąpił nieznany błąd.\";s:24:\"upload_file_type_invalid\";s:39:\"Nie możesz wgrywać plików tego typu.\";s:21:\"upload_file_too_large\";s:25:\"Ten plik jest zbyt duży.\";s:23:\"upload_failed_php_error\";s:42:\"Wystąpił błąd podczas wgrywania pliku.\";s:14:\"invalid_number\";s:31:\"Format liczby jest niepoprawny.\";s:16:\"number_too_small\";s:52:\"Ta liczba jest mniejsza, niż minimalna dopuszczana.\";s:16:\"number_too_large\";s:54:\"Ta liczba jest większa, niż maksymalna dopuszczalna.\";s:23:\"quiz_answer_not_correct\";s:40:\"Odpowiedź w quizie jest nieprawidłowa.\";s:13:\"invalid_email\";s:45:\"Wprowadzony adres e-mail jest nieprawidłowy.\";s:11:\"invalid_url\";s:42:\"Wprowadzony adres URL jest nieprawidłowy.\";s:11:\"invalid_tel\";s:47:\"Wprowadzony numer telefonu jest nieprawidłowy.\";}'),
(800, 116, '_additional_settings', ''),
(801, 116, '_locale', 'pl_PL'),
(802, 117, '_edit_last', '1'),
(803, 117, '_edit_lock', '1580129720:1'),
(812, 116, '_config_errors', 'a:2:{s:14:\"mail.recipient\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:51:\"Invalid mailbox syntax is used in the %name% field.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(813, 101, '_edit_last', '1'),
(814, 101, '_wp_old_date', '2020-01-27'),
(815, 117, '_wp_trash_meta_status', 'publish'),
(816, 117, '_wp_trash_meta_time', '1580207155'),
(817, 117, '_wp_desired_post_slug', 'group_5e2ede18c5f2c'),
(818, 118, '_wp_trash_meta_status', 'publish'),
(819, 118, '_wp_trash_meta_time', '1580207155'),
(820, 118, '_wp_desired_post_slug', 'field_5e2ede1eb65fd'),
(821, 119, '_menu_item_type', 'post_type'),
(822, 119, '_menu_item_menu_item_parent', '0'),
(823, 119, '_menu_item_object_id', '27'),
(824, 119, '_menu_item_object', 'page'),
(825, 119, '_menu_item_target', ''),
(826, 119, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(827, 119, '_menu_item_xfn', ''),
(828, 119, '_menu_item_url', ''),
(830, 120, '_menu_item_type', 'post_type'),
(831, 120, '_menu_item_menu_item_parent', '0'),
(832, 120, '_menu_item_object_id', '27'),
(833, 120, '_menu_item_object', 'page'),
(834, 120, '_menu_item_target', ''),
(835, 120, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(836, 120, '_menu_item_xfn', ''),
(837, 120, '_menu_item_url', ''),
(839, 89, '_edit_last', '1'),
(840, 122, 'nazwa_sprzedajacego', 'dfbgnbgcfngcfn'),
(841, 122, '_nazwa_sprzedajacego', 'field_5e2d9290a0f04'),
(842, 122, 'podaj_email', 'kasica.a@gmail.com'),
(843, 122, '_podaj_email', 'field_5e2d92a0a0f05'),
(844, 122, 'podaj_telefon', '5656546'),
(845, 122, '_podaj_telefon', 'field_5e2d92bba0f06'),
(846, 122, 'dodaj_zdjecie', 'http://localhost/ZnajdzToAuto/wp-content/uploads/upload_5e3016892fda0_fdsd.png'),
(847, 122, '_dodaj_zdjecie', 'field_5e2ff1cd50f10'),
(848, 122, '_edit_lock', '1580210286:1'),
(849, 122, '_edit_last', '1'),
(850, 123, 'nazwa_sprzedajacego', 'dghdghdh'),
(851, 123, '_nazwa_sprzedajacego', 'field_5e2d9290a0f04'),
(852, 123, 'podaj_email', 'kasica.a@gmail.com'),
(853, 123, '_podaj_email', 'field_5e2d92a0a0f05'),
(854, 123, 'podaj_telefon', '45643635'),
(855, 123, '_podaj_telefon', 'field_5e2d92bba0f06'),
(856, 123, 'dodaj_zdjecie', 'http://localhost/ZnajdzToAuto/wp-content/uploads/'),
(857, 123, '_dodaj_zdjecie', 'field_5e2ff1cd50f10'),
(858, 123, '_edit_lock', '1580210584:1'),
(859, 123, '_edit_last', '1'),
(860, 124, 'nazwa_sprzedajacego', 'dfbgnbgcfngcfn'),
(861, 124, '_nazwa_sprzedajacego', 'field_5e2d9290a0f04'),
(862, 124, 'podaj_email', 'kasica.a@gmail.com'),
(863, 124, '_podaj_email', 'field_5e2d92a0a0f05'),
(864, 124, 'podaj_telefon', '345636'),
(865, 124, '_podaj_telefon', 'field_5e2d92bba0f06'),
(866, 124, 'dodaj_zdjecie', 'http://localhost/ZnajdzToAuto/wp-content/uploads/upload_5e301a2027c3e_pictureP.png'),
(867, 124, '_dodaj_zdjecie', 'field_5e2ff1cd50f10'),
(868, 124, '_edit_lock', '1580210797:1'),
(869, 124, '_edit_last', '1');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-01-17 11:26:50', '2020-01-17 10:26:50', '<!-- wp:paragraph -->\n<p>Witamy w WordPressie. To jest twój pierwszy post. Edytuj go lub usuń, a następnie zacznij pisać!</p>\n<!-- /wp:paragraph -->', 'Witaj, świecie!', '', 'publish', 'open', 'open', '', 'witaj-swiecie', '', '', '2020-01-17 11:26:50', '2020-01-17 10:26:50', '', 0, 'http://localhost/projektogloszeniowy/?p=1', 0, 'post', '', 1),
(2, 1, '2020-01-17 11:26:50', '2020-01-17 10:26:50', '<!-- wp:paragraph -->\n<p>To jest przykładowa strona. Strony są inne niż wpisy na blogu, ponieważ nie tylko znajdują się zawsze w jednym miejscu, ale także pojawiają się w menu witryny (w większości motywów). Większość użytkowników zaczyna od strony z informacjami o sobie, która zapozna ich przed odwiedzającymi witrynę. Taka strona może zawierać na przykład taki tekst:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Cześć! Za dnia jestem kurierem rowerowym, nocą próbuję swoich sił w aktorstwie, a to jest moja witryna. Mieszkam w Krakowie, mam wspaniałego psa który wabi się Reks i lubię piña coladę (oraz spacery, gdy pada deszcz).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...albo coś takiego:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Firma XYZ Doohickey została założona w 1971 roku i od tamtej pory dostarcza społeczeństwu dobrej jakości gadżety. Znajdująca się w Gotham City XYZ zatrudnia ponad 2000 osób i robi niesamowite rzeczy dla społeczności Gotham.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Jako nowy użytkownik WordPressa, powinieneś przejść do <a href=\"http://localhost/projektogloszeniowy/wp-admin/\">swojego kokpitu</a> aby usunąć tę stronę i stworzyć nowe z własną treścią. Dobrej zabawy!</p>\n<!-- /wp:paragraph -->', 'Przykładowa strona', '', 'trash', 'closed', 'open', '', 'przykladowa-strona__trashed', '', '', '2020-01-22 12:01:13', '2020-01-22 11:01:13', '', 0, 'http://localhost/projektogloszeniowy/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-01-17 11:26:50', '2020-01-17 10:26:50', '<!-- wp:heading --><h2>Kim jesteśmy</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Adres naszej strony internetowej to: http://localhost/projektogloszeniowy.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Jakie dane osobiste zbieramy i dlaczego je zbieramy</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Komentarze</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Kiedy odwiedzający witrynę zostawia komentarz, zbieramy dane widoczne w formularzu komentowania, jak i adres IP odwiedzającego oraz podpis jego przeglądarki jako pomoc przy wykrywaniu spamu.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Zanonimizowany ciąg znaków stworzony na podstawie twojego adresu email (tak zwany hash) może zostać przesłany do usługi Gravatar w celu sprawdzenia czy jej używasz. Polityka prywatności usługi Gravatar jest dostępna tutaj: https://automattic.com/privacy/. Po zatwierdzeniu komentarza twój obrazek profilowy jest widoczny publicznie w kontekście twojego komentarza.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Jeśli jesteś zarejestrowanym użytkownikiem i wgrywasz na witrynę obrazki, powinieneś unikać przesyłania obrazków z tagami EXIF lokalizacji. Odwiedzający stronę mogą pobrać i odczytać pełne dane lokalizacyjne z obrazków w witrynie.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formularze kontaktowe</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Ciasteczka</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Jeśli zostawisz na naszej witrynie komentarz, będziesz mógł wybrać opcję zapisu twojej nazwy, adresu email i adresu strony internetowej w ciasteczkach, dzięki którym podczas pisania kolejnych komentarzy powyższe informacje będą już dogodnie uzupełnione. Te ciasteczka wygasają po roku.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Jeśli odwiedzisz stronę logowania, utworzymy tymczasowe ciasteczko na potrzeby sprawdzenia czy twoja przeglądarka akceptuje ciasteczka. To ciasteczko nie zawiera żadnych danych osobistych i zostanie wyrzucone, kiedy zamkniesz przeglądarkę.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Podczas logowania tworzymy dodatkowo kilka ciasteczek potrzebnych do zapisu twoich informacji logowania oraz wybranych opcji ekranu. Ciasteczka logowania wygasają po dwóch dniach, a opcji ekranu po roku. Jeśli zaznaczysz opcję &bdquo;Pamiętaj mnie&rdquo;, logowanie wygaśnie po dwóch tygodniach. Jeśli wylogujesz się ze swojego konta, ciasteczka logowania zostaną usunięte.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Jeśli zmodyfikujesz albo opublikujesz artykuł, w twojej przeglądarce zostanie zapisane dodatkowe ciasteczko. To ciasteczko nie zawiera żadnych danych osobistych, wskazując po prostu na identyfikator przed chwilą edytowanego artykułu. Wygasa ono po 1 dniu.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Osadzone treści z innych witryn</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Artykuły na tej witrynie mogą zawierać osadzone treści (np. filmy, obrazki, artykuły itp.). Osadzone treści z innych witryn zachowują się analogicznie do tego, jakby użytkownik odwiedził bezpośrednio konkretną witrynę.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Witryny mogą zbierać informacje o tobie, używać ciasteczek, dołączać dodatkowe, zewnętrzne systemy śledzenia i monitorować twoje interakcje z osadzonym materiałem, włączając w to śledzenie twoich interakcji z osadzonym materiałem jeśli posiadasz konto i jesteś zalogowany w tamtej witrynie.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analiza statystyk</h3><!-- /wp:heading --><!-- wp:heading --><h2>Z kim dzielimy się danymi</h2><!-- /wp:heading --><!-- wp:heading --><h2>Jak długo przechowujemy twoje dane</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Jeśli zostawisz komentarz, jego treść i metadane będą przechowywane przez czas nieokreślony. Dzięki temu jesteśmy w stanie rozpoznawać i zatwierdzać kolejne komentarze automatycznie, bez wysyłania ich do każdorazowej moderacji.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Dla użytkowników którzy zarejestrowali się na naszej stronie internetowej (jeśli tacy są), przechowujemy również informacje osobiste wprowadzone w profilu. Każdy użytkownik może dokonać wglądu, korekty albo skasować swoje informacje osobiste w dowolnej chwili (nie licząc nazwy użytkownika, której nie można zmienić). Administratorzy strony również mogą przeglądać i modyfikować te informacje.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Jakie masz prawa do swoich danych</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Jeśli masz konto użytkownika albo dodałeś komentarze w tej witrynie, możesz zażądać dostarczenia pliku z wyeksportowanym kompletem twoich danych osobistych będących w naszym posiadaniu, w tym całość tych dostarczonych przez ciebie. Możesz również zażądać usunięcia przez nas całości twoich danych osobistych w naszym posiadaniu. Nie dotyczy to żadnych danych które jesteśmy zobligowani zachować ze względów administracyjnych, prawnych albo bezpieczeństwa.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Gdzie przesyłamy dane</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Komentarze gości mogą być sprawdzane za pomocą automatycznej usługi wykrywania spamu.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Twoje dane kontaktowe</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informacje dodatkowe</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Jak chronimy twoje dane?</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Jakie mamy obowiązujące procedury w przypadku naruszenia prywatności danych</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Od jakich stron trzecich otrzymujemy dane</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Jakie automatyczne podejmowanie decyzji i/lub tworzenie profili przeprowadzamy z użyciem danych użytkownika</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Branżowe wymogi regulacyjne dotyczące ujawniania informacji</h3><!-- /wp:heading -->', 'Polityka prywatności', '', 'trash', 'closed', 'open', '', 'polityka-prywatnosci__trashed', '', '', '2020-01-22 12:01:10', '2020-01-22 11:01:10', '', 0, 'http://localhost/projektogloszeniowy/?page_id=3', 0, 'page', '', 0),
(5, 1, '2020-01-22 11:38:43', '2020-01-22 10:38:43', '', 'Strona główna', '', 'publish', 'closed', 'closed', '', 'strona-glowna', '', '', '2020-01-26 01:18:18', '2020-01-26 00:18:18', '', 0, 'http://localhost/projektogloszeniowy/?page_id=5', 0, 'page', '', 0),
(6, 1, '2020-01-22 11:38:43', '2020-01-22 10:38:43', '', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-01-22 11:38:43', '2020-01-22 10:38:43', '', 5, 'http://localhost/projektogloszeniowy/2020/01/22/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2020-01-22 12:01:10', '2020-01-22 11:01:10', '<!-- wp:heading --><h2>Kim jesteśmy</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Adres naszej strony internetowej to: http://localhost/projektogloszeniowy.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Jakie dane osobiste zbieramy i dlaczego je zbieramy</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Komentarze</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Kiedy odwiedzający witrynę zostawia komentarz, zbieramy dane widoczne w formularzu komentowania, jak i adres IP odwiedzającego oraz podpis jego przeglądarki jako pomoc przy wykrywaniu spamu.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Zanonimizowany ciąg znaków stworzony na podstawie twojego adresu email (tak zwany hash) może zostać przesłany do usługi Gravatar w celu sprawdzenia czy jej używasz. Polityka prywatności usługi Gravatar jest dostępna tutaj: https://automattic.com/privacy/. Po zatwierdzeniu komentarza twój obrazek profilowy jest widoczny publicznie w kontekście twojego komentarza.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Jeśli jesteś zarejestrowanym użytkownikiem i wgrywasz na witrynę obrazki, powinieneś unikać przesyłania obrazków z tagami EXIF lokalizacji. Odwiedzający stronę mogą pobrać i odczytać pełne dane lokalizacyjne z obrazków w witrynie.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formularze kontaktowe</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Ciasteczka</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Jeśli zostawisz na naszej witrynie komentarz, będziesz mógł wybrać opcję zapisu twojej nazwy, adresu email i adresu strony internetowej w ciasteczkach, dzięki którym podczas pisania kolejnych komentarzy powyższe informacje będą już dogodnie uzupełnione. Te ciasteczka wygasają po roku.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Jeśli odwiedzisz stronę logowania, utworzymy tymczasowe ciasteczko na potrzeby sprawdzenia czy twoja przeglądarka akceptuje ciasteczka. To ciasteczko nie zawiera żadnych danych osobistych i zostanie wyrzucone, kiedy zamkniesz przeglądarkę.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Podczas logowania tworzymy dodatkowo kilka ciasteczek potrzebnych do zapisu twoich informacji logowania oraz wybranych opcji ekranu. Ciasteczka logowania wygasają po dwóch dniach, a opcji ekranu po roku. Jeśli zaznaczysz opcję &bdquo;Pamiętaj mnie&rdquo;, logowanie wygaśnie po dwóch tygodniach. Jeśli wylogujesz się ze swojego konta, ciasteczka logowania zostaną usunięte.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Jeśli zmodyfikujesz albo opublikujesz artykuł, w twojej przeglądarce zostanie zapisane dodatkowe ciasteczko. To ciasteczko nie zawiera żadnych danych osobistych, wskazując po prostu na identyfikator przed chwilą edytowanego artykułu. Wygasa ono po 1 dniu.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Osadzone treści z innych witryn</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Artykuły na tej witrynie mogą zawierać osadzone treści (np. filmy, obrazki, artykuły itp.). Osadzone treści z innych witryn zachowują się analogicznie do tego, jakby użytkownik odwiedził bezpośrednio konkretną witrynę.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Witryny mogą zbierać informacje o tobie, używać ciasteczek, dołączać dodatkowe, zewnętrzne systemy śledzenia i monitorować twoje interakcje z osadzonym materiałem, włączając w to śledzenie twoich interakcji z osadzonym materiałem jeśli posiadasz konto i jesteś zalogowany w tamtej witrynie.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analiza statystyk</h3><!-- /wp:heading --><!-- wp:heading --><h2>Z kim dzielimy się danymi</h2><!-- /wp:heading --><!-- wp:heading --><h2>Jak długo przechowujemy twoje dane</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Jeśli zostawisz komentarz, jego treść i metadane będą przechowywane przez czas nieokreślony. Dzięki temu jesteśmy w stanie rozpoznawać i zatwierdzać kolejne komentarze automatycznie, bez wysyłania ich do każdorazowej moderacji.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Dla użytkowników którzy zarejestrowali się na naszej stronie internetowej (jeśli tacy są), przechowujemy również informacje osobiste wprowadzone w profilu. Każdy użytkownik może dokonać wglądu, korekty albo skasować swoje informacje osobiste w dowolnej chwili (nie licząc nazwy użytkownika, której nie można zmienić). Administratorzy strony również mogą przeglądać i modyfikować te informacje.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Jakie masz prawa do swoich danych</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Jeśli masz konto użytkownika albo dodałeś komentarze w tej witrynie, możesz zażądać dostarczenia pliku z wyeksportowanym kompletem twoich danych osobistych będących w naszym posiadaniu, w tym całość tych dostarczonych przez ciebie. Możesz również zażądać usunięcia przez nas całości twoich danych osobistych w naszym posiadaniu. Nie dotyczy to żadnych danych które jesteśmy zobligowani zachować ze względów administracyjnych, prawnych albo bezpieczeństwa.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Gdzie przesyłamy dane</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Komentarze gości mogą być sprawdzane za pomocą automatycznej usługi wykrywania spamu.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Twoje dane kontaktowe</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informacje dodatkowe</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Jak chronimy twoje dane?</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Jakie mamy obowiązujące procedury w przypadku naruszenia prywatności danych</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Od jakich stron trzecich otrzymujemy dane</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Jakie automatyczne podejmowanie decyzji i/lub tworzenie profili przeprowadzamy z użyciem danych użytkownika</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Branżowe wymogi regulacyjne dotyczące ujawniania informacji</h3><!-- /wp:heading -->', 'Polityka prywatności', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2020-01-22 12:01:10', '2020-01-22 11:01:10', '', 3, 'http://localhost/projektogloszeniowy/2020/01/22/3-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2020-01-22 12:01:13', '2020-01-22 11:01:13', '<!-- wp:paragraph -->\n<p>To jest przykładowa strona. Strony są inne niż wpisy na blogu, ponieważ nie tylko znajdują się zawsze w jednym miejscu, ale także pojawiają się w menu witryny (w większości motywów). Większość użytkowników zaczyna od strony z informacjami o sobie, która zapozna ich przed odwiedzającymi witrynę. Taka strona może zawierać na przykład taki tekst:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Cześć! Za dnia jestem kurierem rowerowym, nocą próbuję swoich sił w aktorstwie, a to jest moja witryna. Mieszkam w Krakowie, mam wspaniałego psa który wabi się Reks i lubię piña coladę (oraz spacery, gdy pada deszcz).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...albo coś takiego:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Firma XYZ Doohickey została założona w 1971 roku i od tamtej pory dostarcza społeczeństwu dobrej jakości gadżety. Znajdująca się w Gotham City XYZ zatrudnia ponad 2000 osób i robi niesamowite rzeczy dla społeczności Gotham.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Jako nowy użytkownik WordPressa, powinieneś przejść do <a href=\"http://localhost/projektogloszeniowy/wp-admin/\">swojego kokpitu</a> aby usunąć tę stronę i stworzyć nowe z własną treścią. Dobrej zabawy!</p>\n<!-- /wp:paragraph -->', 'Przykładowa strona', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-01-22 12:01:13', '2020-01-22 11:01:13', '', 2, 'http://localhost/projektogloszeniowy/2020/01/22/2-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2020-01-22 12:01:21', '2020-01-22 11:01:21', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin id lorem sapien. Nunc sed metus nunc. Praesent ac viverra sem. Aliquam lobortis vitae neque quis rhoncus. Sed posuere elit at nibh dignissim, accumsan tristique eros placerat. Nam at posuere elit, in porttitor eros. Sed scelerisque venenatis mauris, vitae scelerisque lectus maximus nec. Nunc et convallis lectus. Mauris aliquam nisi imperdiet lectus posuere blandit. Fusce sed dui in lacus sagittis finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla bibendum est augue, ac lobortis est euismod vel.\r\n\r\nUt suscipit diam at est suscipit, a tempor odio dignissim. Vestibulum finibus risus ut sem imperdiet, a aliquet est lacinia. Nunc id tincidunt dui. Nullam neque diam, vulputate et erat non, malesuada sagittis leo. Fusce quis pharetra felis. Curabitur a blandit enim, quis aliquet eros. Nullam consectetur augue est, eget aliquet sapien aliquam eget. Vivamus feugiat arcu velit, sed eleifend augue sodales vitae. Aenean erat eros, sollicitudin eu rhoncus in, vestibulum vitae ligula. Donec ut metus ac nisl viverra accumsan ut et lectus. Nullam et orci nunc. Nulla facilisi. Sed placerat ipsum ut sapien eleifend semper.', 'O nas', '', 'publish', 'closed', 'closed', '', 'o-nas', '', '', '2020-01-27 13:11:19', '2020-01-27 12:11:19', '', 0, 'http://localhost/projektogloszeniowy/?page_id=9', 0, 'page', '', 0),
(10, 1, '2020-01-22 12:01:21', '2020-01-22 11:01:21', '', 'O nas', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-01-22 12:01:21', '2020-01-22 11:01:21', '', 9, 'http://localhost/projektogloszeniowy/2020/01/22/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2020-01-22 12:01:30', '2020-01-22 11:01:30', '', 'Dodaj ogłoszenie', '', 'publish', 'closed', 'closed', '', 'dodaj-ogloszenie', '', '', '2020-01-24 21:50:19', '2020-01-24 20:50:19', '', 0, 'http://localhost/projektogloszeniowy/?page_id=11', 0, 'page', '', 0),
(12, 1, '2020-01-22 12:01:30', '2020-01-22 11:01:30', '', 'Dodaj ogłoszenie', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-01-22 12:01:30', '2020-01-22 11:01:30', '', 11, 'http://localhost/projektogloszeniowy/2020/01/22/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2020-01-22 12:01:39', '2020-01-22 11:01:39', '<h3 class=\"text-primary font-weight-normal\">Dane kontaktowe</h3>\r\n<strong>Adres</strong>\r\nul. Przykładowa 1/2\r\n00-000 Warszawa\r\n\r\n<strong>Telefon</strong>\r\n+48 123 456 789\r\n\r\n<strong>E-mail</strong>\r\n<a href=\"mailto:testowy@email.com\">testowy@email.com</a>', 'Kontakt', '', 'publish', 'closed', 'closed', '', 'kontakt', '', '', '2020-01-27 13:12:34', '2020-01-27 12:12:34', '', 0, 'http://localhost/projektogloszeniowy/?page_id=13', 0, 'page', '', 0),
(14, 1, '2020-01-22 12:01:39', '2020-01-22 11:01:39', '', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-01-22 12:01:39', '2020-01-22 11:01:39', '', 13, 'http://localhost/projektogloszeniowy/2020/01/22/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2020-01-22 12:02:18', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-01-22 12:02:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/projektogloszeniowy/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2020-01-22 12:02:37', '2020-01-22 11:02:37', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2020-01-24 23:51:26', '2020-01-24 22:51:26', '', 0, 'http://localhost/projektogloszeniowy/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2020-01-22 12:02:46', '2020-01-22 11:02:46', '', 'Moje konto', '', 'publish', 'closed', 'closed', '', 'moje-konto', '', '', '2020-01-27 13:04:14', '2020-01-27 12:04:14', '', 0, 'http://localhost/projektogloszeniowy/?page_id=17', 0, 'page', '', 0),
(18, 1, '2020-01-22 12:02:46', '2020-01-22 11:02:46', '', 'Moje konto', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-01-22 12:02:46', '2020-01-22 11:02:46', '', 17, 'http://localhost/projektogloszeniowy/2020/01/22/17-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2020-01-22 12:03:50', '2020-01-22 11:03:50', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2020-01-28 11:54:02', '2020-01-28 10:54:02', '', 0, 'http://localhost/projektogloszeniowy/?p=20', 2, 'nav_menu_item', '', 0),
(21, 1, '2020-01-22 12:03:50', '2020-01-22 11:03:50', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2020-01-28 11:54:02', '2020-01-28 10:54:02', '', 0, 'http://localhost/projektogloszeniowy/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2020-01-22 12:20:59', '2020-01-22 11:20:59', 'ads\n\n\nnull\n1\n1\n1\ndate\nDESC\n1', 'Default Search Form', '', 'publish', 'closed', 'closed', '', 'default-search-form', '', '', '2020-01-24 10:45:35', '2020-01-24 09:45:35', '', 0, 'http://localhost/projektogloszeniowy/?post_type=is_search_form&#038;p=22', 0, 'is_search_form', '', 0),
(23, 1, '2020-01-22 12:28:35', '2020-01-22 11:28:35', '[ivory-search id=\"22\" title=\"Default Search Form\"]', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-01-22 12:28:35', '2020-01-22 11:28:35', '', 5, 'http://localhost/projektogloszeniowy/2020/01/22/5-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2020-01-22 12:28:48', '2020-01-22 11:28:48', '', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-01-22 12:28:48', '2020-01-22 11:28:48', '', 5, 'http://localhost/projektogloszeniowy/2020/01/22/5-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2020-01-23 09:36:34', '2020-01-23 08:36:34', '{\n    \"is_search_22[text-box-bg]\": {\n        \"value\": \"#31a078\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-23 08:36:34\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '09a976b0-dd98-4388-a564-441e8f716ab5', '', '', '2020-01-23 09:36:34', '2020-01-23 08:36:34', '', 0, 'http://localhost/projektogloszeniowy/2020/01/23/09a976b0-dd98-4388-a564-441e8f716ab5/', 0, 'customize_changeset', '', 0),
(26, 1, '2020-01-23 09:56:26', '2020-01-23 08:56:26', '{\n    \"is_search_22[placeholder-text]\": {\n        \"value\": \"Szukaj...\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-23 08:56:26\"\n    },\n    \"is_search_22[search-btn-text]\": {\n        \"value\": \"Szukaj\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-23 08:56:26\"\n    },\n    \"is_search_22[form-style]\": {\n        \"value\": \"is-form-style-1\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-23 08:56:26\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ece72da7-6ba5-4269-8806-c4e36049d690', '', '', '2020-01-23 09:56:26', '2020-01-23 08:56:26', '', 0, 'http://localhost/projektogloszeniowy/2020/01/23/ece72da7-6ba5-4269-8806-c4e36049d690/', 0, 'customize_changeset', '', 0),
(27, 1, '2020-01-23 11:04:18', '2020-01-23 10:04:18', '', 'Ogłoszenia', '', 'publish', 'closed', 'closed', '', 'ogloszenia', '', '', '2020-01-27 13:30:25', '2020-01-27 12:30:25', '', 0, 'http://localhost/projektogloszeniowy/?page_id=27', 0, 'page', '', 0),
(28, 1, '2020-01-23 11:04:18', '2020-01-23 10:04:18', '', 'Ogłoszenia', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2020-01-23 11:04:18', '2020-01-23 10:04:18', '', 27, 'http://localhost/projektogloszeniowy/2020/01/23/27-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2020-01-23 11:10:27', '2020-01-23 10:10:27', '', 'Car1', '', 'publish', 'closed', 'closed', '', 'car1', '', '', '2020-01-23 15:20:34', '2020-01-23 14:20:34', '', 0, 'http://localhost/projektogloszeniowy/?post_type=ads&#038;p=30', 0, 'ads', '', 0),
(31, 1, '2020-01-23 11:11:23', '2020-01-23 10:11:23', '', 'Car2', '', 'publish', 'closed', 'closed', '', 'car2', '', '', '2020-01-23 15:19:36', '2020-01-23 14:19:36', '', 0, 'http://localhost/projektogloszeniowy/?post_type=ads&#038;p=31', 0, 'ads', '', 0),
(32, 1, '2020-01-23 11:11:29', '2020-01-23 10:11:29', '', 'Car3', '', 'publish', 'closed', 'closed', '', 'car3', '', '', '2020-01-23 15:19:49', '2020-01-23 14:19:49', '', 0, 'http://localhost/projektogloszeniowy/?post_type=ads&#038;p=32', 0, 'ads', '', 0),
(36, 1, '2020-01-23 11:42:16', '2020-01-23 10:42:16', '', 'New Slideshow', '', 'publish', 'closed', 'closed', '', 'new-slideshow', '', '', '2020-01-23 11:42:16', '2020-01-23 10:42:16', '', 0, 'http://localhost/projektogloszeniowy/?post_type=ml-slider&p=36', 0, 'ml-slider', '', 0),
(38, 1, '2020-01-23 15:18:49', '2020-01-23 14:18:49', '', 'car1', 'hghghshshf', 'inherit', 'open', 'closed', '', 'car1-4', '', '', '2020-01-26 00:49:55', '2020-01-25 23:49:55', '', 30, 'http://localhost/projektogloszeniowy/wp-content/uploads/2020/01/car1-2.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2020-01-23 15:18:50', '2020-01-23 14:18:50', '', 'car2', '', 'inherit', 'open', 'closed', '', 'car2-3', '', '', '2020-01-23 15:18:50', '2020-01-23 14:18:50', '', 30, 'http://localhost/projektogloszeniowy/wp-content/uploads/2020/01/car2-1.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2020-01-23 15:18:51', '2020-01-23 14:18:51', '', 'car3', '', 'inherit', 'open', 'closed', '', 'car3-3', '', '', '2020-01-26 01:17:48', '2020-01-26 00:17:48', '', 30, 'http://localhost/projektogloszeniowy/wp-content/uploads/2020/01/car3-1.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2020-01-23 15:24:36', '2020-01-23 14:24:36', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"5\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Cards', 'cards', 'publish', 'closed', 'closed', '', 'group_5e29abe03c9a4', '', '', '2020-01-26 01:27:06', '2020-01-26 00:27:06', '', 0, 'http://localhost/projektogloszeniowy/?post_type=acf-field-group&#038;p=41', 0, 'acf-field-group', '', 0),
(42, 1, '2020-01-23 15:24:36', '2020-01-23 14:24:36', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"sub_fields\";a:0:{}}', 'Card 1', 'card_1', 'publish', 'closed', 'closed', '', 'field_5e29abe712c3e', '', '', '2020-01-26 01:26:26', '2020-01-26 00:26:26', '', 41, 'http://localhost/projektogloszeniowy/?post_type=acf-field&#038;p=42', 0, 'acf-field', '', 0),
(43, 1, '2020-01-23 15:24:36', '2020-01-23 14:24:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Tytuł', 'title', 'publish', 'closed', 'closed', '', 'field_5e29ac1912c3f', '', '', '2020-01-23 15:24:36', '2020-01-23 14:24:36', '', 42, 'http://localhost/projektogloszeniowy/?post_type=acf-field&p=43', 0, 'acf-field', '', 0),
(44, 1, '2020-01-23 15:24:36', '2020-01-23 14:24:36', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Treść', 'content', 'publish', 'closed', 'closed', '', 'field_5e29ac3112c40', '', '', '2020-01-26 01:27:06', '2020-01-26 00:27:06', '', 42, 'http://localhost/projektogloszeniowy/?post_type=acf-field&#038;p=44', 1, 'acf-field', '', 0),
(45, 1, '2020-01-23 15:24:36', '2020-01-23 14:24:36', 'a:10:{s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"page\";}s:8:\"taxonomy\";s:0:\"\";s:10:\"allow_null\";i:1;s:14:\"allow_archives\";i:1;s:8:\"multiple\";i:0;}', 'Strona odnośnika', 'url', 'publish', 'closed', 'closed', '', 'field_5e29ac3d12c41', '', '', '2020-01-23 15:24:36', '2020-01-23 14:24:36', '', 42, 'http://localhost/projektogloszeniowy/?post_type=acf-field&p=45', 2, 'acf-field', '', 0),
(46, 1, '2020-01-23 15:24:36', '2020-01-23 14:24:36', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"sub_fields\";a:0:{}}', 'Card 2', 'card_2', 'publish', 'closed', 'closed', '', 'field_5e29ac9412c42', '', '', '2020-01-26 01:26:26', '2020-01-26 00:26:26', '', 41, 'http://localhost/projektogloszeniowy/?post_type=acf-field&#038;p=46', 1, 'acf-field', '', 0),
(47, 1, '2020-01-23 15:24:36', '2020-01-23 14:24:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Tytuł', 'title', 'publish', 'closed', 'closed', '', 'field_5e29ac9412c43', '', '', '2020-01-23 15:24:36', '2020-01-23 14:24:36', '', 46, 'http://localhost/projektogloszeniowy/?post_type=acf-field&p=47', 0, 'acf-field', '', 0),
(48, 1, '2020-01-23 15:24:36', '2020-01-23 14:24:36', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Treść', 'content', 'publish', 'closed', 'closed', '', 'field_5e29ac9412c44', '', '', '2020-01-26 01:27:06', '2020-01-26 00:27:06', '', 46, 'http://localhost/projektogloszeniowy/?post_type=acf-field&#038;p=48', 1, 'acf-field', '', 0),
(49, 1, '2020-01-23 15:24:36', '2020-01-23 14:24:36', 'a:10:{s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"page\";}s:8:\"taxonomy\";s:0:\"\";s:10:\"allow_null\";i:1;s:14:\"allow_archives\";i:1;s:8:\"multiple\";i:0;}', 'Strona odnośnika', 'url', 'publish', 'closed', 'closed', '', 'field_5e29ac9412c45', '', '', '2020-01-23 15:24:36', '2020-01-23 14:24:36', '', 46, 'http://localhost/projektogloszeniowy/?post_type=acf-field&p=49', 2, 'acf-field', '', 0),
(50, 1, '2020-01-23 15:24:36', '2020-01-23 14:24:36', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"sub_fields\";a:0:{}}', 'Card 3', 'card_3', 'publish', 'closed', 'closed', '', 'field_5e29ac9b12c46', '', '', '2020-01-26 01:26:26', '2020-01-26 00:26:26', '', 41, 'http://localhost/projektogloszeniowy/?post_type=acf-field&#038;p=50', 2, 'acf-field', '', 0),
(51, 1, '2020-01-23 15:24:36', '2020-01-23 14:24:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Tytuł', 'title', 'publish', 'closed', 'closed', '', 'field_5e29ac9b12c47', '', '', '2020-01-23 15:24:36', '2020-01-23 14:24:36', '', 50, 'http://localhost/projektogloszeniowy/?post_type=acf-field&p=51', 0, 'acf-field', '', 0),
(52, 1, '2020-01-23 15:24:36', '2020-01-23 14:24:36', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Treść', 'content', 'publish', 'closed', 'closed', '', 'field_5e29ac9b12c48', '', '', '2020-01-26 01:27:06', '2020-01-26 00:27:06', '', 50, 'http://localhost/projektogloszeniowy/?post_type=acf-field&#038;p=52', 1, 'acf-field', '', 0),
(53, 1, '2020-01-23 15:24:36', '2020-01-23 14:24:36', 'a:10:{s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"page\";}s:8:\"taxonomy\";s:0:\"\";s:10:\"allow_null\";i:1;s:14:\"allow_archives\";i:1;s:8:\"multiple\";i:0;}', 'Strona odnośnika', 'url', 'publish', 'closed', 'closed', '', 'field_5e29ac9b12c49', '', '', '2020-01-23 15:24:36', '2020-01-23 14:24:36', '', 50, 'http://localhost/projektogloszeniowy/?post_type=acf-field&p=53', 2, 'acf-field', '', 0),
(54, 1, '2020-01-23 15:30:52', '2020-01-23 14:30:52', '', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-01-23 15:30:52', '2020-01-23 14:30:52', '', 5, 'http://localhost/projektogloszeniowy/2020/01/23/5-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2020-01-23 15:31:21', '2020-01-23 14:31:21', '', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-01-23 15:31:21', '2020-01-23 14:31:21', '', 5, 'http://localhost/projektogloszeniowy/2020/01/23/5-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2020-01-24 09:08:07', '2020-01-24 08:08:07', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"5\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Slider', 'slider', 'publish', 'closed', 'closed', '', 'group_5e2aa48f64864', '', '', '2020-01-26 01:23:23', '2020-01-26 00:23:23', '', 0, 'http://localhost/projektogloszeniowy/?post_type=acf-field-group&#038;p=56', 0, 'acf-field-group', '', 0),
(57, 1, '2020-01-24 09:08:07', '2020-01-24 08:08:07', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Slajd 1', 'slide_1', 'publish', 'closed', 'closed', '', 'field_5e2aa496f9ec7', '', '', '2020-01-26 01:23:23', '2020-01-26 00:23:23', '', 56, 'http://localhost/projektogloszeniowy/?post_type=acf-field&#038;p=57', 0, 'acf-field', '', 0),
(58, 1, '2020-01-24 09:09:44', '2020-01-24 08:09:44', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Slajd 2', 'slide_2', 'publish', 'closed', 'closed', '', 'field_5e2aa60e6e32e', '', '', '2020-01-24 09:37:20', '2020-01-24 08:37:20', '', 56, 'http://localhost/projektogloszeniowy/?post_type=acf-field&#038;p=58', 1, 'acf-field', '', 0),
(59, 1, '2020-01-24 09:09:44', '2020-01-24 08:09:44', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Slajd 3', 'slide_3', 'publish', 'closed', 'closed', '', 'field_5e2aa6126e32f', '', '', '2020-01-24 09:37:20', '2020-01-24 08:37:20', '', 56, 'http://localhost/projektogloszeniowy/?post_type=acf-field&#038;p=59', 2, 'acf-field', '', 0),
(61, 1, '2020-01-24 09:12:06', '2020-01-24 08:12:06', '', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-01-24 09:12:06', '2020-01-24 08:12:06', '', 5, 'http://localhost/projektogloszeniowy/2020/01/24/5-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2020-01-24 09:15:57', '2020-01-24 08:15:57', '', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-01-24 09:15:57', '2020-01-24 08:15:57', '', 5, 'http://localhost/projektogloszeniowy/2020/01/24/5-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2020-01-24 09:17:11', '2020-01-24 08:17:11', '', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-01-24 09:17:11', '2020-01-24 08:17:11', '', 5, 'http://localhost/projektogloszeniowy/2020/01/24/5-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2020-01-24 09:17:50', '2020-01-24 08:17:50', '', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-01-24 09:17:50', '2020-01-24 08:17:50', '', 5, 'http://localhost/projektogloszeniowy/2020/01/24/5-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2020-01-24 09:37:44', '2020-01-24 08:37:44', '', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-01-24 09:37:44', '2020-01-24 08:37:44', '', 5, 'http://localhost/projektogloszeniowy/2020/01/24/5-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2020-01-24 09:58:03', '2020-01-24 08:58:03', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"5\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Add button', 'add-button', 'publish', 'closed', 'closed', '', 'group_5e2ab0eca6f44', '', '', '2020-01-27 12:53:07', '2020-01-27 11:53:07', '', 0, 'http://localhost/projektogloszeniowy/?post_type=acf-field-group&#038;p=69', 0, 'acf-field-group', '', 0),
(71, 1, '2020-01-24 10:02:52', '2020-01-24 09:02:52', 'a:10:{s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:10:\"allow_null\";i:0;s:14:\"allow_archives\";i:1;s:8:\"multiple\";i:0;}', 'Add button', 'add_button', 'publish', 'closed', 'closed', '', 'field_5e2ab28d2c2ae', '', '', '2020-01-24 10:15:30', '2020-01-24 09:15:30', '', 69, 'http://localhost/projektogloszeniowy/?post_type=acf-field&#038;p=71', 0, 'acf-field', '', 0),
(72, 1, '2020-01-24 10:03:07', '2020-01-24 09:03:07', '', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-01-24 10:03:07', '2020-01-24 09:03:07', '', 5, 'http://localhost/projektogloszeniowy/2020/01/24/5-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2020-01-24 10:12:16', '2020-01-24 09:12:16', '', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-01-24 10:12:16', '2020-01-24 09:12:16', '', 5, 'http://localhost/projektogloszeniowy/2020/01/24/5-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2020-01-24 10:13:43', '2020-01-24 09:13:43', '', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-01-24 10:13:43', '2020-01-24 09:13:43', '', 5, 'http://localhost/projektogloszeniowy/2020/01/24/5-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2020-01-24 10:14:04', '0000-00-00 00:00:00', '', 'Automatycznie zapisany szkic', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-24 10:14:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/projektogloszeniowy/?post_type=acf-field-group&p=75', 0, 'acf-field-group', '', 0),
(76, 1, '2020-01-24 10:15:47', '2020-01-24 09:15:47', '', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-01-24 10:15:47', '2020-01-24 09:15:47', '', 5, 'http://localhost/projektogloszeniowy/2020/01/24/5-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2020-01-24 10:37:00', '2020-01-24 09:37:00', '{\n    \"is_search_22[form-style]\": {\n        \"value\": \"is-form-style-3\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-24 09:36:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6906afd1-dee7-4db3-8af6-f082081c9a79', '', '', '2020-01-24 10:37:00', '2020-01-24 09:37:00', '', 0, 'http://localhost/projektogloszeniowy/?p=77', 0, 'customize_changeset', '', 0),
(78, 1, '2020-01-24 10:58:54', '2020-01-24 09:58:54', '<div class=\"form-group\">\r\n                            <label for=\"username\">Imię i nazwisko</label>\r\n                            [text* your-name class:form-control class: class:form-control-lg placeholder \"Podaj imię i nazwisko\"]\r\n                        </div>\r\n                        <div class=\"form-group\">\r\n                            <label for=\"useremail\">E-mail</label>\r\n                            [email* your-email class:form-control class: class:form-control-lg placeholder \"Podaj e-mail\"]\r\n                        </div>\r\n                        <div class=\"form-group\">\r\n                            <label for=\"your-message\">Treść wiadomości</label>\r\n                            [textarea your-message class:form-control class:form-control-lg placeholder \"Podaj treść\"]\r\n                        </div>\r\n                        [submit class:btn class:btn-block class:btn-warning class:btn-lg \"Wyślij\"]\n1\nProjekt Ogloszeniowy - \"[your-subject]\"\nProjekt Ogloszeniowy <dmuranowski@edu.cdv.pl>\ndmuranowski@edu.cdv.pl\nNadawca: [your-name] <[your-email]>\r\nTemat: [your-subject]\r\n\r\nTreść wiadomości:\r\n[your-message]\r\n\r\n-- \r\nTa wiadomość została wysłana przez formularz kontaktowy na stronie Projekt Ogloszeniowy (http://localhost/projektogloszeniowy).\nReply-To: [your-email]\n\n\n\n\nProjekt Ogloszeniowy - \"[your-subject]\"\nProjekt Ogloszeniowy <dmuranowski@edu.cdv.pl>\n[your-email]\nTreść wiadomości:\r\n[your-message]\r\n\r\n-- \r\nTa wiadomość została wysłana przez formularz kontaktowy na stronie Projekt Ogloszeniowy (http://localhost/projektogloszeniowy).\nReply-To: dmuranowski@edu.cdv.pl\n\n\n\nTwoja wiadomość została wysłana. Dziękujemy!\nWystąpił problem z wysłaniem twojej wiadomości. Spróbuj ponownie później.\nPrzynajmniej jedno pole jest błędnie wypełnione. Sprawdź wpisaną treść i spróbuj ponownie.\nWystąpił problem z wysłaniem twojej wiadomości. Spróbuj ponownie później.\nMusisz wyrazić zgodę na powyższe zapisy, aby móc wysłać formularz.\nWymagane jest wypełnienie tego pola.\nZawartość tego pola jest zbyt długa.\nZawartość tego pola jest zbyt krótka.\nFormat daty jest niepoprawny.\nData jest wcześniejsza, niż pierwsza dozwolona.\nData jest późniejsza, niż ostatnia dozwolona.\nPodczas wgrywania pliku wystąpił nieznany błąd.\nNie możesz wgrywać plików tego typu.\nTen plik jest zbyt duży.\nWystąpił błąd podczas wgrywania pliku.\nFormat liczby jest niepoprawny.\nTa liczba jest mniejsza, niż minimalna dopuszczana.\nTa liczba jest większa, niż maksymalna dopuszczalna.\nOdpowiedź w quizie jest nieprawidłowa.\nWprowadzony adres e-mail jest nieprawidłowy.\nWprowadzony adres URL jest nieprawidłowy.\nWprowadzony numer telefonu jest nieprawidłowy.', 'Formularz 1', '', 'publish', 'closed', 'closed', '', 'formularz-1', '', '', '2020-01-24 11:04:14', '2020-01-24 10:04:14', '', 0, 'http://localhost/projektogloszeniowy/?post_type=wpcf7_contact_form&#038;p=78', 0, 'wpcf7_contact_form', '', 0),
(79, 1, '2020-01-24 11:04:25', '2020-01-24 10:04:25', '<h3 class=\"text-info font-weight-normal\">Dane kontaktowe</h3>\r\n<strong>Adres</strong>\r\nul. Przykładowa 1/2\r\n00-000 Warszawa\r\n\r\n<strong>Telefon</strong>\r\n+48 123 456 789\r\n\r\n<strong>E-mail</strong>\r\n<a href=\"mailto:testowy@email.com\">testowy@email.com</a>', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-01-24 11:04:25', '2020-01-24 10:04:25', '', 13, 'http://localhost/projektogloszeniowy/2020/01/24/13-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2020-01-24 11:06:51', '2020-01-24 10:06:51', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin id lorem sapien. Nunc sed metus nunc. Praesent ac viverra sem. Aliquam lobortis vitae neque quis rhoncus. Sed posuere elit at nibh dignissim, accumsan tristique eros placerat. Nam at posuere elit, in porttitor eros. Sed scelerisque venenatis mauris, vitae scelerisque lectus maximus nec. Nunc et convallis lectus. Mauris aliquam nisi imperdiet lectus posuere blandit. Fusce sed dui in lacus sagittis finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla bibendum est augue, ac lobortis est euismod vel.\r\n\r\nUt suscipit diam at est suscipit, a tempor odio dignissim. Vestibulum finibus risus ut sem imperdiet, a aliquet est lacinia. Nunc id tincidunt dui. Nullam neque diam, vulputate et erat non, malesuada sagittis leo. Fusce quis pharetra felis. Curabitur a blandit enim, quis aliquet eros. Nullam consectetur augue est, eget aliquet sapien aliquam eget. Vivamus feugiat arcu velit, sed eleifend augue sodales vitae. Aenean erat eros, sollicitudin eu rhoncus in, vestibulum vitae ligula. Donec ut metus ac nisl viverra accumsan ut et lectus. Nullam et orci nunc. Nulla facilisi. Sed placerat ipsum ut sapien eleifend semper.', 'O nas', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-01-24 11:06:51', '2020-01-24 10:06:51', '', 9, 'http://localhost/projektogloszeniowy/2020/01/24/9-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2020-01-24 12:00:29', '0000-00-00 00:00:00', '', 'Automatycznie zapisany szkic', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-01-24 12:00:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/projektogloszeniowy/?p=81', 0, 'post', '', 0),
(83, 1, '2020-01-25 00:23:06', '2020-01-24 23:23:06', '<h3 class=\"text-dark font-weight-normal\">Dane kontaktowe</h3>\r\n<strong>Adres</strong>\r\nul. Przykładowa 1/2\r\n00-000 Warszawa\r\n\r\n<strong>Telefon</strong>\r\n+48 123 456 789\r\n\r\n<strong>E-mail</strong>\r\n<a href=\"mailto:testowy@email.com\">testowy@email.com</a>', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-01-25 00:23:06', '2020-01-24 23:23:06', '', 13, 'http://localhost/ZnajdzToAuto/2020/01/25/13-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2020-01-25 00:23:32', '2020-01-24 23:23:32', '<h3 class=\"text-main font-weight-normal\">Dane kontaktowe</h3>\r\n<strong>Adres</strong>\r\nul. Przykładowa 1/2\r\n00-000 Warszawa\r\n\r\n<strong>Telefon</strong>\r\n+48 123 456 789\r\n\r\n<strong>E-mail</strong>\r\n<a href=\"mailto:testowy@email.com\">testowy@email.com</a>', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-01-25 00:23:32', '2020-01-24 23:23:32', '', 13, 'http://localhost/ZnajdzToAuto/2020/01/25/13-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2020-01-25 00:24:02', '2020-01-24 23:24:02', '<h3 class=\"text-primary font-weight-normal\">Dane kontaktowe</h3>\r\n<strong>Adres</strong>\r\nul. Przykładowa 1/2\r\n00-000 Warszawa\r\n\r\n<strong>Telefon</strong>\r\n+48 123 456 789\r\n\r\n<strong>E-mail</strong>\r\n<a href=\"mailto:testowy@email.com\">testowy@email.com</a>', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-01-25 00:24:02', '2020-01-24 23:24:02', '', 13, 'http://localhost/ZnajdzToAuto/2020/01/25/13-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(86, 1, '2020-01-26 00:58:48', '2020-01-25 23:58:48', '', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-01-26 00:58:48', '2020-01-25 23:58:48', '', 5, 'http://localhost/ZnajdzToAuto/2020/01/26/5-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2020-01-26 01:17:51', '2020-01-26 00:17:51', '', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-01-26 01:17:51', '2020-01-26 00:17:51', '', 5, 'http://localhost/ZnajdzToAuto/2020/01/26/5-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2020-01-26 15:35:03', '0000-00-00 00:00:00', '', 'Automatycznie zapisany szkic', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-26 15:35:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/ZnajdzToAuto/?post_type=acf-field-group&p=88', 0, 'acf-field-group', '', 0),
(89, 1, '2020-01-26 15:38:13', '2020-01-26 14:38:13', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"advertisement\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Dodaj ogłoszenie', 'dodaj-ogloszenie', 'publish', 'closed', 'closed', '', 'group_5e2d92670404d', '', '', '2020-01-28 12:06:54', '2020-01-28 11:06:54', '', 0, 'http://localhost/ZnajdzToAuto/?p=89', 0, 'acf-field-group', '', 0),
(90, 1, '2020-01-26 15:38:12', '2020-01-26 14:38:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Nazwa sprzedającego', 'nazwa_sprzedajacego', 'publish', 'closed', 'closed', '', 'field_5e2d9290a0f04', '', '', '2020-01-28 12:06:40', '2020-01-28 11:06:40', '', 89, 'http://localhost/ZnajdzToAuto/?post_type=acf-field&#038;p=90', 0, 'acf-field', '', 0),
(91, 1, '2020-01-26 15:38:13', '2020-01-26 14:38:13', 'a:9:{s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Podaj email', 'podaj_email', 'publish', 'closed', 'closed', '', 'field_5e2d92a0a0f05', '', '', '2020-01-28 12:06:40', '2020-01-28 11:06:40', '', 89, 'http://localhost/ZnajdzToAuto/?post_type=acf-field&#038;p=91', 1, 'acf-field', '', 0),
(92, 1, '2020-01-26 15:38:13', '2020-01-26 14:38:13', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Podaj telefon', 'podaj_telefon', 'publish', 'closed', 'closed', '', 'field_5e2d92bba0f06', '', '', '2020-01-28 12:06:40', '2020-01-28 11:06:40', '', 89, 'http://localhost/ZnajdzToAuto/?post_type=acf-field&#038;p=92', 2, 'acf-field', '', 0),
(94, 1, '2020-01-26 16:00:19', '2020-01-26 15:00:19', 'gsgfgfsdg', 'gffsgfg', '', 'publish', 'closed', 'closed', '', 'gffsgfg', '', '', '2020-01-26 16:00:19', '2020-01-26 15:00:19', '', 0, 'http://localhost/ZnajdzToAuto/?post_type=advertisement&#038;p=94', 0, 'advertisement', '', 0),
(95, 1, '2020-01-26 16:25:51', '2020-01-26 15:25:51', 'gsgfgfsdg', 'gffsgfg', '', 'inherit', 'closed', 'closed', '', '94-autosave-v1', '', '', '2020-01-26 16:25:51', '2020-01-26 15:25:51', '', 94, 'http://localhost/ZnajdzToAuto/2020/01/26/94-autosave-v1/', 0, 'revision', '', 0),
(96, 1, '2020-01-27 10:31:12', '2020-01-27 09:31:12', 'eefef', 'Godzilla', '', 'publish', 'closed', 'closed', '', 'godzilla', '', '', '2020-01-27 10:31:12', '2020-01-27 09:31:12', '', 0, 'http://localhost/ZnajdzToAuto/?post_type=advertisement&#038;p=96', 0, 'advertisement', '', 0),
(97, 1, '2020-01-27 10:44:05', '2020-01-27 09:44:05', 'thfgnfn', 'Audi', '', 'publish', 'closed', 'closed', '', 'audi', '', '', '2020-01-27 10:44:05', '2020-01-27 09:44:05', '', 0, 'http://localhost/ZnajdzToAuto/?post_type=advertisement&#038;p=97', 0, 'advertisement', '', 0),
(98, 1, '2020-01-27 10:44:12', '2020-01-27 09:44:12', 'hdfhd', 'Opel', '', 'publish', 'closed', 'closed', '', 'opel', '', '', '2020-01-27 10:44:12', '2020-01-27 09:44:12', '', 0, 'http://localhost/ZnajdzToAuto/?post_type=advertisement&#038;p=98', 0, 'advertisement', '', 0),
(99, 1, '2020-01-27 11:02:09', '0000-00-00 00:00:00', '', 'Automatycznie zapisany szkic', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-27 11:02:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/ZnajdzToAuto/?post_type=acf-field-group&p=99', 0, 'acf-field-group', '', 0),
(100, 1, '2020-01-27 12:05:59', '2020-01-27 11:05:59', 'thrthryh', 'Skoda', '', 'publish', 'closed', 'closed', '', 'skoda', '', '', '2020-01-27 12:05:59', '2020-01-27 11:05:59', '', 0, 'http://localhost/ZnajdzToAuto/?post_type=advertisement&#038;p=100', 0, 'advertisement', '', 0),
(101, 1, '2020-01-28 11:24:18', '2020-01-28 10:24:18', 'thrthryh', 'Skoda', '', 'publish', 'closed', 'closed', '', 'skoda-2', '', '', '2020-01-28 11:24:18', '2020-01-28 10:24:18', '', 0, 'http://localhost/ZnajdzToAuto/?post_type=advertisement&#038;p=101', 0, 'advertisement', '', 0),
(102, 1, '2020-01-27 12:47:11', '0000-00-00 00:00:00', '', 'Automatycznie zapisany szkic', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-27 12:47:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/ZnajdzToAuto/?post_type=acf-field-group&p=102', 0, 'acf-field-group', '', 0),
(103, 1, '2020-01-27 12:47:14', '0000-00-00 00:00:00', '', 'Automatycznie zapisany szkic', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-27 12:47:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/ZnajdzToAuto/?post_type=acf-field-group&p=103', 0, 'acf-field-group', '', 0),
(104, 1, '2020-01-27 12:48:05', '2020-01-27 11:48:05', 'a:7:{s:8:\"location\";a:5:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"17\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"9\";}}i:2;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"13\";}}i:3;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"27\";}}i:4;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"111\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Main page button', 'main-page-button', 'trash', 'closed', 'closed', '', 'group_5e2ecdcbb98b0__trashed', '', '', '2020-01-27 13:39:10', '2020-01-27 12:39:10', '', 0, 'http://localhost/ZnajdzToAuto/?post_type=acf-field-group&#038;p=104', 0, 'acf-field-group', '', 0),
(105, 1, '2020-01-27 12:48:06', '2020-01-27 11:48:06', 'a:10:{s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:10:\"allow_null\";i:0;s:14:\"allow_archives\";i:1;s:8:\"multiple\";i:0;}', 'Main page button', 'main_page_button', 'trash', 'closed', 'closed', '', 'field_5e2ecdd36d2c9__trashed', '', '', '2020-01-27 13:39:11', '2020-01-27 12:39:11', '', 104, 'http://localhost/ZnajdzToAuto/?post_type=acf-field&#038;p=105', 0, 'acf-field', '', 0),
(107, 1, '2020-01-27 12:54:13', '2020-01-27 11:54:13', '', 'Ogłoszenia', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2020-01-27 12:54:13', '2020-01-27 11:54:13', '', 27, 'http://localhost/ZnajdzToAuto/2020/01/27/27-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2020-01-27 13:04:14', '2020-01-27 12:04:14', '', 'Moje konto', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-01-27 13:04:14', '2020-01-27 12:04:14', '', 17, 'http://localhost/ZnajdzToAuto/2020/01/27/17-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2020-01-27 13:11:19', '2020-01-27 12:11:19', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin id lorem sapien. Nunc sed metus nunc. Praesent ac viverra sem. Aliquam lobortis vitae neque quis rhoncus. Sed posuere elit at nibh dignissim, accumsan tristique eros placerat. Nam at posuere elit, in porttitor eros. Sed scelerisque venenatis mauris, vitae scelerisque lectus maximus nec. Nunc et convallis lectus. Mauris aliquam nisi imperdiet lectus posuere blandit. Fusce sed dui in lacus sagittis finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla bibendum est augue, ac lobortis est euismod vel.\r\n\r\nUt suscipit diam at est suscipit, a tempor odio dignissim. Vestibulum finibus risus ut sem imperdiet, a aliquet est lacinia. Nunc id tincidunt dui. Nullam neque diam, vulputate et erat non, malesuada sagittis leo. Fusce quis pharetra felis. Curabitur a blandit enim, quis aliquet eros. Nullam consectetur augue est, eget aliquet sapien aliquam eget. Vivamus feugiat arcu velit, sed eleifend augue sodales vitae. Aenean erat eros, sollicitudin eu rhoncus in, vestibulum vitae ligula. Donec ut metus ac nisl viverra accumsan ut et lectus. Nullam et orci nunc. Nulla facilisi. Sed placerat ipsum ut sapien eleifend semper.', 'O nas', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-01-27 13:11:19', '2020-01-27 12:11:19', '', 9, 'http://localhost/ZnajdzToAuto/2020/01/27/9-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2020-01-27 13:12:34', '2020-01-27 12:12:34', '<h3 class=\"text-primary font-weight-normal\">Dane kontaktowe</h3>\r\n<strong>Adres</strong>\r\nul. Przykładowa 1/2\r\n00-000 Warszawa\r\n\r\n<strong>Telefon</strong>\r\n+48 123 456 789\r\n\r\n<strong>E-mail</strong>\r\n<a href=\"mailto:testowy@email.com\">testowy@email.com</a>', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-01-27 13:12:34', '2020-01-27 12:12:34', '', 13, 'http://localhost/ZnajdzToAuto/2020/01/27/13-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2020-01-27 13:26:33', '2020-01-27 12:26:33', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin id lorem sapien. Nunc sed metus nunc. Praesent ac viverra sem. Aliquam lobortis vitae neque quis rhoncus. Sed posuere elit at nibh dignissim, accumsan tristique eros placerat. Nam at posuere elit, in porttitor eros. Sed scelerisque venenatis mauris, vitae scelerisque lectus maximus nec. Nunc et convallis lectus. Mauris aliquam nisi imperdiet lectus posuere blandit. Fusce sed dui in lacus sagittis finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla bibendum est augue, ac lobortis est euismod vel.\r\n\r\nUt suscipit diam at est suscipit, a tempor odio dignissim. Vestibulum finibus risus ut sem imperdiet, a aliquet est lacinia. Nunc id tincidunt dui. Nullam neque diam, vulputate et erat non, malesuada sagittis leo. Fusce quis pharetra felis. Curabitur a blandit enim, quis aliquet eros. Nullam consectetur augue est, eget aliquet sapien aliquam eget. Vivamus feugiat arcu velit, sed eleifend augue sodales vitae. Aenean erat eros, sollicitudin eu rhoncus in, vestibulum vitae ligula. Donec ut metus ac nisl viverra accumsan ut et lectus. Nullam et orci nunc. Nulla facilisi. Sed placerat ipsum ut sapien eleifend semper.', 'Regulamin', '', 'publish', 'closed', 'closed', '', 'regulamin', '', '', '2020-01-27 13:29:42', '2020-01-27 12:29:42', '', 0, 'http://localhost/ZnajdzToAuto/?page_id=111', 0, 'page', '', 0),
(112, 1, '2020-01-27 13:26:33', '2020-01-27 12:26:33', '', 'Regulamin', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2020-01-27 13:26:33', '2020-01-27 12:26:33', '', 111, 'http://localhost/ZnajdzToAuto/2020/01/27/111-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2020-01-27 13:27:08', '2020-01-27 12:27:08', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin id lorem sapien. Nunc sed metus nunc. Praesent ac viverra sem. Aliquam lobortis vitae neque quis rhoncus. Sed posuere elit at nibh dignissim, accumsan tristique eros placerat. Nam at posuere elit, in porttitor eros. Sed scelerisque venenatis mauris, vitae scelerisque lectus maximus nec. Nunc et convallis lectus. Mauris aliquam nisi imperdiet lectus posuere blandit. Fusce sed dui in lacus sagittis finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla bibendum est augue, ac lobortis est euismod vel.\r\n\r\nUt suscipit diam at est suscipit, a tempor odio dignissim. Vestibulum finibus risus ut sem imperdiet, a aliquet est lacinia. Nunc id tincidunt dui. Nullam neque diam, vulputate et erat non, malesuada sagittis leo. Fusce quis pharetra felis. Curabitur a blandit enim, quis aliquet eros. Nullam consectetur augue est, eget aliquet sapien aliquam eget. Vivamus feugiat arcu velit, sed eleifend augue sodales vitae. Aenean erat eros, sollicitudin eu rhoncus in, vestibulum vitae ligula. Donec ut metus ac nisl viverra accumsan ut et lectus. Nullam et orci nunc. Nulla facilisi. Sed placerat ipsum ut sapien eleifend semper.', 'Regulamin', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2020-01-27 13:27:08', '2020-01-27 12:27:08', '', 111, 'http://localhost/ZnajdzToAuto/2020/01/27/111-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2020-01-27 13:28:31', '2020-01-27 12:28:31', ' ', '', '', 'publish', 'closed', 'closed', '', '114', '', '', '2020-01-28 11:54:02', '2020-01-28 10:54:02', '', 0, 'http://localhost/ZnajdzToAuto/?p=114', 3, 'nav_menu_item', '', 0),
(115, 1, '2020-01-27 13:29:42', '2020-01-27 12:29:42', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin id lorem sapien. Nunc sed metus nunc. Praesent ac viverra sem. Aliquam lobortis vitae neque quis rhoncus. Sed posuere elit at nibh dignissim, accumsan tristique eros placerat. Nam at posuere elit, in porttitor eros. Sed scelerisque venenatis mauris, vitae scelerisque lectus maximus nec. Nunc et convallis lectus. Mauris aliquam nisi imperdiet lectus posuere blandit. Fusce sed dui in lacus sagittis finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla bibendum est augue, ac lobortis est euismod vel.\r\n\r\nUt suscipit diam at est suscipit, a tempor odio dignissim. Vestibulum finibus risus ut sem imperdiet, a aliquet est lacinia. Nunc id tincidunt dui. Nullam neque diam, vulputate et erat non, malesuada sagittis leo. Fusce quis pharetra felis. Curabitur a blandit enim, quis aliquet eros. Nullam consectetur augue est, eget aliquet sapien aliquam eget. Vivamus feugiat arcu velit, sed eleifend augue sodales vitae. Aenean erat eros, sollicitudin eu rhoncus in, vestibulum vitae ligula. Donec ut metus ac nisl viverra accumsan ut et lectus. Nullam et orci nunc. Nulla facilisi. Sed placerat ipsum ut sapien eleifend semper.', 'Regulamin', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2020-01-27 13:29:42', '2020-01-27 12:29:42', '', 111, 'http://localhost/ZnajdzToAuto/2020/01/27/111-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2020-01-27 13:42:59', '2020-01-27 12:42:59', '<label> Wyślij do:\r\n    [text adresat] </label>\r\n\r\n<label> Dotyczy ogłoszenia:\r\n    [text your-subject] </label>\r\n\r\n<label> Treść wiadomości\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Wyślij\"]\n1\nZnajdźToAuto - \"[your-subject]\"\nZnajdźToAuto <dmuranowski@edu.cdv.pl>\ndmuranowski@edu.cdv.pl, [adresat]\nNadawca: [your-name] <[your-email]>\r\nTemat: [your-subject]\r\n\r\nTreść wiadomości:\r\n[your-message]\r\n\r\n-- \r\nTa wiadomość została wysłana przez formularz kontaktowy na stronie ZnajdźToAuto (http://localhost/ZnajdzToAuto).\nReply-To: [your-email]\n\n\n\n\nZnajdźToAuto - \"[your-subject]\"\nZnajdźToAuto <dmuranowski@edu.cdv.pl>\n[your-email]\nTreść wiadomości:\r\n[your-message]\r\n\r\n-- \r\nTa wiadomość została wysłana przez formularz kontaktowy na stronie ZnajdźToAuto (http://localhost/ZnajdzToAuto).\nReply-To: dmuranowski@edu.cdv.pl\n\n\n\nTwoja wiadomość została wysłana. Dziękujemy!\nWystąpił problem z wysłaniem twojej wiadomości. Spróbuj ponownie później.\nPrzynajmniej jedno pole jest błędnie wypełnione. Sprawdź wpisaną treść i spróbuj ponownie.\nWystąpił problem z wysłaniem twojej wiadomości. Spróbuj ponownie później.\nMusisz wyrazić zgodę na powyższe zapisy, aby móc wysłać formularz.\nWymagane jest wypełnienie tego pola.\nZawartość tego pola jest zbyt długa.\nZawartość tego pola jest zbyt krótka.\nFormat daty jest niepoprawny.\nData jest wcześniejsza, niż pierwsza dozwolona.\nData jest późniejsza, niż ostatnia dozwolona.\nPodczas wgrywania pliku wystąpił nieznany błąd.\nNie możesz wgrywać plików tego typu.\nTen plik jest zbyt duży.\nWystąpił błąd podczas wgrywania pliku.\nFormat liczby jest niepoprawny.\nTa liczba jest mniejsza, niż minimalna dopuszczana.\nTa liczba jest większa, niż maksymalna dopuszczalna.\nOdpowiedź w quizie jest nieprawidłowa.\nWprowadzony adres e-mail jest nieprawidłowy.\nWprowadzony adres URL jest nieprawidłowy.\nWprowadzony numer telefonu jest nieprawidłowy.', 'Formularz do ogłoszenia', '', 'publish', 'closed', 'closed', '', 'formularz-do-ogloszenia', '', '', '2020-01-28 11:18:03', '2020-01-28 10:18:03', '', 0, 'http://localhost/ZnajdzToAuto/?post_type=wpcf7_contact_form&#038;p=116', 0, 'wpcf7_contact_form', '', 0),
(117, 1, '2020-01-27 13:57:39', '2020-01-27 12:57:39', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"nav_menu\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:20:\"location/footer-menu\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Button', 'button', 'trash', 'closed', 'closed', '', 'group_5e2ede18c5f2c__trashed', '', '', '2020-01-28 11:25:55', '2020-01-28 10:25:55', '', 0, 'http://localhost/ZnajdzToAuto/?post_type=acf-field-group&#038;p=117', 0, 'acf-field-group', '', 0),
(118, 1, '2020-01-27 13:57:39', '2020-01-27 12:57:39', 'a:10:{s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:10:\"allow_null\";i:0;s:14:\"allow_archives\";i:1;s:8:\"multiple\";i:0;}', 'button', 'button', 'trash', 'closed', 'closed', '', 'field_5e2ede1eb65fd__trashed', '', '', '2020-01-28 11:25:55', '2020-01-28 10:25:55', '', 117, 'http://localhost/ZnajdzToAuto/?post_type=acf-field&#038;p=118', 0, 'acf-field', '', 0),
(119, 1, '2020-01-28 11:27:08', '2020-01-28 10:27:08', ' ', '', '', 'publish', 'closed', 'closed', '', '119', '', '', '2020-01-28 11:54:02', '2020-01-28 10:54:02', '', 0, 'http://localhost/ZnajdzToAuto/?p=119', 4, 'nav_menu_item', '', 0),
(120, 1, '2020-01-28 11:54:23', '2020-01-28 10:54:23', ' ', '', '', 'publish', 'closed', 'closed', '', '120', '', '', '2020-01-28 11:54:23', '2020-01-28 10:54:23', '', 0, 'http://localhost/ZnajdzToAuto/?p=120', 1, 'nav_menu_item', '', 0),
(121, 1, '2020-01-28 12:06:40', '2020-01-28 11:06:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Dodaj zdjecie', 'dodaj_zdjecie', 'publish', 'closed', 'closed', '', 'field_5e2ff1cd50f10', '', '', '2020-01-28 12:06:40', '2020-01-28 11:06:40', '', 89, 'http://localhost/ZnajdzToAuto/?post_type=acf-field&p=121', 3, 'acf-field', '', 0),
(122, 1, '2020-01-28 12:10:32', '2020-01-28 11:10:32', 'dfghdhgd', 'volvo', '', 'publish', 'closed', 'closed', '', 'volvo', '', '', '2020-01-28 12:10:32', '2020-01-28 11:10:32', '', 0, 'http://localhost/ZnajdzToAuto/?post_type=advertisement&#038;p=122', 0, 'advertisement', '', 0),
(123, 1, '2020-01-28 12:23:23', '2020-01-28 11:23:23', 'rgetrestghtr', 'tralala', '', 'publish', 'closed', 'closed', '', 'tralala', '', '', '2020-01-28 12:23:23', '2020-01-28 11:23:23', '', 0, 'http://localhost/ZnajdzToAuto/?post_type=advertisement&#038;p=123', 0, 'advertisement', '', 0),
(124, 1, '2020-01-28 12:25:40', '2020-01-28 11:25:40', 'rwtgaerwtger', 'picture', '', 'publish', 'closed', 'closed', '', 'picture', '', '', '2020-01-28 12:28:58', '2020-01-28 11:28:58', '', 0, 'http://localhost/ZnajdzToAuto/?post_type=advertisement&#038;p=124', 0, 'advertisement', '', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_relevanssi`
--

CREATE TABLE `wp_relevanssi` (
  `doc` bigint(20) NOT NULL DEFAULT 0,
  `term` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `term_reverse` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `content` mediumint(9) NOT NULL DEFAULT 0,
  `title` mediumint(9) NOT NULL DEFAULT 0,
  `comment` mediumint(9) NOT NULL DEFAULT 0,
  `tag` mediumint(9) NOT NULL DEFAULT 0,
  `link` mediumint(9) NOT NULL DEFAULT 0,
  `author` mediumint(9) NOT NULL DEFAULT 0,
  `category` mediumint(9) NOT NULL DEFAULT 0,
  `excerpt` mediumint(9) NOT NULL DEFAULT 0,
  `taxonomy` mediumint(9) NOT NULL DEFAULT 0,
  `customfield` mediumint(9) NOT NULL DEFAULT 0,
  `mysqlcolumn` mediumint(9) NOT NULL DEFAULT 0,
  `taxonomy_detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `customfield_detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `mysqlcolumn_detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(210) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `item` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `wp_relevanssi`
--

INSERT INTO `wp_relevanssi` (`doc`, `term`, `term_reverse`, `content`, `title`, `comment`, `tag`, `link`, `author`, `category`, `excerpt`, `taxonomy`, `customfield`, `mysqlcolumn`, `taxonomy_detail`, `customfield_detail`, `mysqlcolumn_detail`, `type`, `item`) VALUES
(94, '1454156651', '1566514541', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(94, '1580052461', '1642500851', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(94, '5e2d9290a0f04', '40f0a0929d2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(94, '5e2d92a0a0f05', '50f0a0a29d2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(94, '5e2d92bba0f06', '60f0abb29d2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(94, '5e2d92c8a0f07', '70f0a8c29d2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(94, 'adriankasica90', '09acisaknairda', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(94, 'com', 'moc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(94, 'fgsfgsfg', 'gfsgfsgf', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(94, 'field', 'dleif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '', '', '', 'post', 0),
(94, 'gffsgfg', 'gfgsffg', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(94, 'gmail', 'liamg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(94, 'gsgfgfsdg', 'gdsfgfgsg', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(94, 'osobowe', 'ewoboso', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(96, '1580117421', '1247110851', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(96, '2020', '0202', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(96, '512545425', '524545215', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(96, '5e2d9290a0f04', '40f0a0929d2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(96, '5e2d92a0a0f05', '50f0a0a29d2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(96, '5e2d92bba0f06', '60f0abb29d2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(96, '5e2d92c8a0f07', '70f0a8c29d2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(96, 'afefsae', 'easfefa', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(96, 'aleksandra', 'ardnaskela', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(96, 'com', 'moc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(96, 'eefef', 'fefee', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(96, 'field', 'dleif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '', '', '', 'post', 0),
(96, 'gmail', 'liamg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(96, 'godzilla', 'allizdog', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(96, 'kasica', 'acisak', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(97, '1580118243', '3428110851', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(97, '2345234524524', '4254254325432', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(97, '5e2d9290a0f04', '40f0a0929d2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(97, '5e2d92a0a0f05', '50f0a0a29d2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(97, '5e2d92bba0f06', '60f0abb29d2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(97, '5e2d92c8a0f07', '70f0a8c29d2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(97, 'audi', 'idua', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(97, 'field', 'dleif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '', '', '', 'post', 0),
(97, 'kszarecki', 'ikcerazsk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(97, 'ncgbn', 'nbgcn', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(97, 'thfgnfn', 'nfngfht', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(98, '1580118249', '9428110851', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(98, '463636364', '463636364', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(98, '5e2d9290a0f04', '40f0a0929d2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(98, '5e2d92a0a0f05', '50f0a0a29d2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(98, '5e2d92bba0f06', '60f0abb29d2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(98, '5e2d92c8a0f07', '70f0a8c29d2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(98, 'field', 'dleif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '', '', '', 'post', 0),
(98, 'fvngf', 'fgnvf', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(98, 'hdfhd', 'dhfdh', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(98, 'kszarecki', 'ikcerazsk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(98, 'opel', 'lepo', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(100, '1580123156', '6513210851', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(100, '546457467', '764754645', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(100, '5e2d9290a0f04', '40f0a0929d2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(100, '5e2d92a0a0f05', '50f0a0a29d2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(100, '5e2d92bba0f06', '60f0abb29d2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(100, '5e2d92c8a0f07', '70f0a8c29d2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(100, 'field', 'dleif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '', '', '', 'post', 0),
(100, 'gfngfnfgn', 'ngfnfgnfg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(100, 'kszarecki', 'ikcerazsk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(100, 'skoda', 'adoks', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(100, 'thrthryh', 'hyrhtrht', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(101, '1580207055', '5507020851', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(101, '2020', '0202', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(101, '546457467', '764754645', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(101, '5e2d9290a0f04', '40f0a0929d2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(101, '5e2d92a0a0f05', '50f0a0a29d2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(101, '5e2d92bba0f06', '60f0abb29d2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(101, '5e2d92c8a0f07', '70f0a8c29d2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(101, 'field', 'dleif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '', '', '', 'post', 0),
(101, 'gfngfnfgn', 'ngfnfgnfg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(101, 'kszarecki', 'ikcerazsk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(101, 'skoda', 'adoks', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(101, 'thrthryh', 'hyrhtrht', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(122, '1580209813', '3189020851', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(122, '5656546', '6456565', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(122, '5e2d9290a0f04', '40f0a0929d2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(122, '5e2d92a0a0f05', '50f0a0a29d2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(122, '5e2d92bba0f06', '60f0abb29d2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(122, '5e2ff1cd50f10', '01f05dc1ff2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(122, '5e3016892fda0', '0adf2986103e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(122, 'com', 'moc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(122, 'content', 'tnetnoc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(122, 'dfbgnbgcfngcfn', 'nfcgnfcgbngbfd', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(122, 'dfghdhgd', 'dghdhgfd', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(122, 'fdsd', 'dsdf', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(122, 'field', 'dleif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '', '', '', 'post', 0),
(122, 'gmail', 'liamg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(122, 'http', 'ptth', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(122, 'kasica', 'acisak', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(122, 'localhost', 'tsohlacol', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(122, 'png', 'gnp', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(122, 'upload', 'daolpu', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(122, 'uploads', 'sdaolpu', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(122, 'volvo', 'ovlov', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(122, 'znajdztoauto', 'otuaotzdjanz', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(123, '1580210596', '6950120851', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(123, '45643635', '53634654', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(123, '5e2d9290a0f04', '40f0a0929d2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(123, '5e2d92a0a0f05', '50f0a0a29d2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(123, '5e2d92bba0f06', '60f0abb29d2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(123, '5e2ff1cd50f10', '01f05dc1ff2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(123, 'com', 'moc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(123, 'content', 'tnetnoc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(123, 'dghdghdh', 'hdhgdhgd', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(123, 'field', 'dleif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '', '', '', 'post', 0),
(123, 'gmail', 'liamg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(123, 'http', 'ptth', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(123, 'kasica', 'acisak', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(123, 'localhost', 'tsohlacol', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(123, 'rgetrestghtr', 'rthgtsertegr', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(123, 'tralala', 'alalart', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(123, 'uploads', 'sdaolpu', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(123, 'znajdztoauto', 'otuaotzdjanz', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(124, '1580210740', '0470120851', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(124, '345636', '636543', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(124, '5e2d9290a0f04', '40f0a0929d2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(124, '5e2d92a0a0f05', '50f0a0a29d2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(124, '5e2d92bba0f06', '60f0abb29d2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(124, '5e2ff1cd50f10', '01f05dc1ff2e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(124, '5e301a2027c3e', 'e3c7202a103e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(124, 'com', 'moc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(124, 'content', 'tnetnoc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(124, 'dfbgnbgcfngcfn', 'nfcgnfcgbngbfd', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(124, 'field', 'dleif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '', '', '', 'post', 0),
(124, 'gmail', 'liamg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(124, 'http', 'ptth', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(124, 'kasica', 'acisak', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(124, 'localhost', 'tsohlacol', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(124, 'picture', 'erutcip', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(124, 'picturep', 'perutcip', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(124, 'png', 'gnp', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(124, 'rwtgaerwtger', 'regtwreagtwr', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(124, 'upload', 'daolpu', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(124, 'uploads', 'sdaolpu', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0),
(124, 'znajdztoauto', 'otuaotzdjanz', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', 'post', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_relevanssi_log`
--

CREATE TABLE `wp_relevanssi_log` (
  `id` bigint(9) NOT NULL,
  `query` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` mediumint(9) NOT NULL DEFAULT 0,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `ip` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_relevanssi_stopwords`
--

CREATE TABLE `wp_relevanssi_stopwords` (
  `stopword` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 3, 'button', '27'),
(2, 3, '_button', 'field_5e2ede1eb65fd');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Bez kategorii', 'bez-kategorii', 0),
(2, 'Header menu', 'header-menu', 0),
(3, 'Footer menu', 'footer-menu', 0),
(4, '36', '36', 0),
(5, 'Main menu', 'main-menu', 0),
(6, 'Sedan', 'sedan', 0),
(7, 'SUV', 'suv', 0),
(8, 'Kombi', 'kombi', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(16, 2, 0),
(20, 3, 0),
(21, 3, 0),
(89, 1, 0),
(114, 3, 0),
(119, 3, 0),
(120, 5, 0),
(123, 6, 0),
(124, 8, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'ml-slider', '', 0, 0),
(5, 5, 'nav_menu', '', 0, 1),
(6, 6, 'addition_cats', '', 0, 1),
(7, 7, 'addition_cats', '', 0, 0),
(8, 8, 'addition_cats', '', 0, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'administrator'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '81'),
(18, 1, 'session_tokens', 'a:4:{s:64:\"8470dfac7201597b4ef39a3ace40143c069b806236c1ff241b26b5e2d3974f90\";a:4:{s:10:\"expiration\";i:1580220784;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1580047984;}s:64:\"21eb3fd03a330976212dd335e69459da60fb94741a273b1d6139c3d8b5d98375\";a:4:{s:10:\"expiration\";i:1580220790;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1580047990;}s:64:\"a86072a395c8092e34a970b2069768e7b3e8f51da3e70f9f3b28a00e90104caf\";a:4:{s:10:\"expiration\";i:1580222092;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1580049292;}s:64:\"8ed61ff7050819158db195b7c0e9c48a655257c55b397b1ab12783ae3d96f469\";a:4:{s:10:\"expiration\";i:1580370162;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1580197362;}}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '5'),
(22, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1579997015'),
(24, 1, 'wp_metaslider_user_saw_callout_toolbar', '1'),
(25, 1, 'closedpostboxes_page', 'a:0:{}'),
(26, 1, 'metaboxhidden_page', 'a:5:{i:0;s:12:\"revisionsdiv\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_users`
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
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'administrator', '$P$B0vPd0GV7Cg5mMpP8Llbait3D2aaHO0', 'administrator', 'dmuranowski@edu.cdv.pl', '', '2020-01-17 10:26:50', '', 0, 'administrator');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indeksy dla tabeli `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indeksy dla tabeli `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indeksy dla tabeli `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indeksy dla tabeli `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indeksy dla tabeli `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indeksy dla tabeli `wp_relevanssi`
--
ALTER TABLE `wp_relevanssi`
  ADD UNIQUE KEY `doctermitem` (`doc`,`term`,`item`),
  ADD KEY `terms` (`term`(20)),
  ADD KEY `relevanssi_term_reverse_idx` (`term_reverse`(10)),
  ADD KEY `docs` (`doc`),
  ADD KEY `typeitem` (`type`(190),`item`);

--
-- Indeksy dla tabeli `wp_relevanssi_log`
--
ALTER TABLE `wp_relevanssi_log`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `query` (`query`(190));

--
-- Indeksy dla tabeli `wp_relevanssi_stopwords`
--
ALTER TABLE `wp_relevanssi_stopwords`
  ADD UNIQUE KEY `stopword` (`stopword`);

--
-- Indeksy dla tabeli `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indeksy dla tabeli `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indeksy dla tabeli `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indeksy dla tabeli `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indeksy dla tabeli `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indeksy dla tabeli `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT dla tabel zrzutów
--

--
-- AUTO_INCREMENT dla tabeli `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=460;

--
-- AUTO_INCREMENT dla tabeli `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=870;

--
-- AUTO_INCREMENT dla tabeli `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT dla tabeli `wp_relevanssi_log`
--
ALTER TABLE `wp_relevanssi_log`
  MODIFY `id` bigint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT dla tabeli `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
