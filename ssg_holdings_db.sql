-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2022 at 10:59 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ssg_holdings_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `backend_access_log`
--

CREATE TABLE `backend_access_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_access_log`
--

INSERT INTO `backend_access_log` (`id`, `user_id`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 1, '127.0.0.1', '2022-07-06 03:42:11', '2022-07-06 03:42:11'),
(2, 1, '127.0.0.1', '2022-07-06 23:49:40', '2022-07-06 23:49:40');

-- --------------------------------------------------------

--
-- Table structure for table `backend_users`
--

CREATE TABLE `backend_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persist_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT 0,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_users`
--

INSERT INTO `backend_users` (`id`, `first_name`, `last_name`, `login`, `email`, `password`, `activation_code`, `persist_code`, `reset_password_code`, `permissions`, `is_activated`, `role_id`, `activated_at`, `last_login`, `created_at`, `updated_at`, `deleted_at`, `is_superuser`) VALUES
(1, 'SSG', 'Holdings', 'ssgbdhl', 'ingo@ssgbdhl.com', '$2y$10$ZS00DVBUCx2OIMRZoq9mue24sE8kd.ri4ndsafJBEXt4VvPKTE/fu', NULL, '$2y$10$L/u1ugq6Y7.IUYUQ5DfutuYebr6qndzuo2xewcMldHW0iRj/HaDSy', NULL, '', 1, 2, NULL, '2022-07-06 23:49:40', '2022-07-05 02:52:11', '2022-07-06 23:49:40', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `backend_users_groups`
--

CREATE TABLE `backend_users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_users_groups`
--

INSERT INTO `backend_users_groups` (`user_id`, `user_group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_groups`
--

CREATE TABLE `backend_user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_new_user_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_user_groups`
--

INSERT INTO `backend_user_groups` (`id`, `name`, `created_at`, `updated_at`, `code`, `description`, `is_new_user_default`) VALUES
(1, 'Owners', '2022-07-05 02:52:11', '2022-07-05 02:52:11', 'owners', 'Default group for website owners.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_preferences`
--

CREATE TABLE `backend_user_preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_roles`
--

CREATE TABLE `backend_user_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_system` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_user_roles`
--

INSERT INTO `backend_user_roles` (`id`, `name`, `code`, `description`, `permissions`, `is_system`, `created_at`, `updated_at`) VALUES
(1, 'Publisher', 'publisher', 'Site editor with access to publishing tools.', '', 1, '2022-07-05 02:52:10', '2022-07-05 02:52:10'),
(2, 'Developer', 'developer', 'Site administrator with access to developer tools.', '', 1, '2022-07-05 02:52:10', '2022-07-05 02:52:10');

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_throttle`
--

CREATE TABLE `backend_user_throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT 0,
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT 0,
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_user_throttle`
--

INSERT INTO `backend_user_throttle` (`id`, `user_id`, `ip_address`, `attempts`, `last_attempt_at`, `is_suspended`, `suspended_at`, `is_banned`, `banned_at`) VALUES
(1, 1, '127.0.0.1', 0, NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_theme_data`
--

CREATE TABLE `cms_theme_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_theme_logs`
--

CREATE TABLE `cms_theme_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_theme_templates`
--

CREATE TABLE `cms_theme_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(10) UNSIGNED NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deferred_bindings`
--

CREATE TABLE `deferred_bindings` (
  `id` int(10) UNSIGNED NOT NULL,
  `master_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `master_field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pivot_data` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_bind` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `failed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2013_10_01_000001_Db_Deferred_Bindings', 1),
(2, '2013_10_01_000002_Db_System_Files', 1),
(3, '2013_10_01_000003_Db_System_Plugin_Versions', 1),
(4, '2013_10_01_000004_Db_System_Plugin_History', 1),
(5, '2013_10_01_000005_Db_System_Settings', 1),
(6, '2013_10_01_000006_Db_System_Parameters', 1),
(7, '2013_10_01_000007_Db_System_Add_Disabled_Flag', 1),
(8, '2013_10_01_000008_Db_System_Mail_Templates', 1),
(9, '2013_10_01_000009_Db_System_Mail_Layouts', 1),
(10, '2014_10_01_000010_Db_Jobs', 1),
(11, '2014_10_01_000011_Db_System_Event_Logs', 1),
(12, '2014_10_01_000012_Db_System_Request_Logs', 1),
(13, '2014_10_01_000013_Db_System_Sessions', 1),
(14, '2015_10_01_000014_Db_System_Mail_Layout_Rename', 1),
(15, '2015_10_01_000015_Db_System_Add_Frozen_Flag', 1),
(16, '2015_10_01_000016_Db_Cache', 1),
(17, '2015_10_01_000017_Db_System_Revisions', 1),
(18, '2015_10_01_000018_Db_FailedJobs', 1),
(19, '2016_10_01_000019_Db_System_Plugin_History_Detail_Text', 1),
(20, '2016_10_01_000020_Db_System_Timestamp_Fix', 1),
(21, '2017_08_04_121309_Db_Deferred_Bindings_Add_Index_Session', 1),
(22, '2017_10_01_000021_Db_System_Sessions_Update', 1),
(23, '2017_10_01_000022_Db_Jobs_FailedJobs_Update', 1),
(24, '2017_10_01_000023_Db_System_Mail_Partials', 1),
(25, '2017_10_23_000024_Db_System_Mail_Layouts_Add_Options_Field', 1),
(26, '2021_10_01_000025_Db_Add_Pivot_Data_To_Deferred_Bindings', 1),
(27, '2013_10_01_000001_Db_Backend_Users', 2),
(28, '2013_10_01_000002_Db_Backend_User_Groups', 2),
(29, '2013_10_01_000003_Db_Backend_Users_Groups', 2),
(30, '2013_10_01_000004_Db_Backend_User_Throttle', 2),
(31, '2014_01_04_000005_Db_Backend_User_Preferences', 2),
(32, '2014_10_01_000006_Db_Backend_Access_Log', 2),
(33, '2014_10_01_000007_Db_Backend_Add_Description_Field', 2),
(34, '2015_10_01_000008_Db_Backend_Add_Superuser_Flag', 2),
(35, '2016_10_01_000009_Db_Backend_Timestamp_Fix', 2),
(36, '2017_10_01_000010_Db_Backend_User_Roles', 2),
(37, '2018_12_16_000011_Db_Backend_Add_Deleted_At', 2),
(38, '2014_10_01_000001_Db_Cms_Theme_Data', 3),
(39, '2016_10_01_000002_Db_Cms_Timestamp_Fix', 3),
(40, '2017_10_01_000003_Db_Cms_Theme_Logs', 3),
(41, '2018_11_01_000001_Db_Cms_Theme_Templates', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_activity` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_event_logs`
--

CREATE TABLE `system_event_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_event_logs`
--

INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(1, 'error', 'Twig\\Error\\SyntaxError: Unknown \"themes\" filter. Did you mean \"theme\" in \"E:\\xampp\\htdocs\\ssg_holding\\themes\\ssghl\\partials\\open_menu.htm\" at line 15? in E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\ExpressionParser.php:788\nStack trace:\n#0 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\ExpressionParser.php(563): Twig\\ExpressionParser->getFilterNodeClass(\'themes\', 15)\n#1 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\ExpressionParser.php(548): Twig\\ExpressionParser->parseFilterExpressionRaw(Object(Twig\\Node\\Expression\\ConstantExpression))\n#2 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\ExpressionParser.php(406): Twig\\ExpressionParser->parseFilterExpression(Object(Twig\\Node\\Expression\\ConstantExpression))\n#3 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\ExpressionParser.php(289): Twig\\ExpressionParser->parsePostfixExpression(Object(Twig\\Node\\Expression\\ConstantExpression))\n#4 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\ExpressionParser.php(175): Twig\\ExpressionParser->parsePrimaryExpression()\n#5 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\ExpressionParser.php(70): Twig\\ExpressionParser->getPrimary()\n#6 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\Parser.php(141): Twig\\ExpressionParser->parseExpression()\n#7 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\Parser.php(97): Twig\\Parser->subparse(NULL, false)\n#8 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\Environment.php(562): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#9 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\Environment.php(594): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#10 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#11 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'E:\\\\xampp\\\\htdocs...\', NULL)\n#12 E:\\xampp\\htdocs\\ssg_holding\\modules\\cms\\classes\\Controller.php(1100): Twig\\Environment->loadTemplate(\'E:\\\\xampp\\\\htdocs...\')\n#13 E:\\xampp\\htdocs\\ssg_holding\\modules\\cms\\twig\\Extension.php(103): Cms\\Classes\\Controller->renderPartial(\'open_menu\', Array, true)\n#14 E:\\xampp\\htdocs\\ssg_holding\\storage\\cms\\twig\\a8\\a81435e2f053dab066011f5b27b02f764a63dd0baa0cae4206f24c52bd25584a.php(43): Cms\\Twig\\Extension->partialFunction(\'open_menu\', Array, true)\n#15 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\Template.php(405): __TwigTemplate_d60827a96ecfb74f7b4a8a208ed0d08311da50a71fc64fe24245540b60624b6b->doDisplay(Array, Array)\n#16 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\Template.php(378): Twig\\Template->displayWithErrorHandling(Array, Array)\n#17 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\Template.php(390): Twig\\Template->display(Array)\n#18 E:\\xampp\\htdocs\\ssg_holding\\modules\\cms\\classes\\Controller.php(434): Twig\\Template->render(Array)\n#19 E:\\xampp\\htdocs\\ssg_holding\\modules\\cms\\classes\\Controller.php(229): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#20 E:\\xampp\\htdocs\\ssg_holding\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#21 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'/\')\n#22 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#23 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#24 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(176): Illuminate\\Routing\\Route->runController()\n#25 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(681): Illuminate\\Routing\\Route->run()\n#26 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#34 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#35 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(683): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#39 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#40 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(624): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#41 E:\\xampp\\htdocs\\ssg_holding\\vendor\\winter\\storm\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#42 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(170): Winter\\Storm\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#43 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#44 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 E:\\xampp\\htdocs\\ssg_holding\\vendor\\winter\\storm\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Winter\\Storm\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 E:\\xampp\\htdocs\\ssg_holding\\vendor\\winter\\storm\\src\\Foundation\\Http\\Middleware\\CheckForTrustedProxies.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Winter\\Storm\\Foundation\\Http\\Middleware\\CheckForTrustedProxies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#49 E:\\xampp\\htdocs\\ssg_holding\\vendor\\winter\\storm\\src\\Http\\Middleware\\TrustHosts.php(46): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Winter\\Storm\\Http\\Middleware\\TrustHosts->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#53 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#54 E:\\xampp\\htdocs\\ssg_holding\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#55 E:\\xampp\\htdocs\\ssg_holding\\server.php(17): require_once(\'E:\\\\xampp\\\\htdocs...\')\n#56 {main}', NULL, '2022-07-06 03:44:18', '2022-07-06 03:44:18'),
(2, 'error', 'Twig\\Error\\SyntaxError: Unknown \"themes\" filter. Did you mean \"theme\" in \"E:\\xampp\\htdocs\\ssg_holding\\themes\\ssghl\\partials\\open_menu.htm\" at line 15? in E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\ExpressionParser.php:788\nStack trace:\n#0 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\ExpressionParser.php(563): Twig\\ExpressionParser->getFilterNodeClass(\'themes\', 15)\n#1 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\ExpressionParser.php(548): Twig\\ExpressionParser->parseFilterExpressionRaw(Object(Twig\\Node\\Expression\\ConstantExpression))\n#2 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\ExpressionParser.php(406): Twig\\ExpressionParser->parseFilterExpression(Object(Twig\\Node\\Expression\\ConstantExpression))\n#3 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\ExpressionParser.php(289): Twig\\ExpressionParser->parsePostfixExpression(Object(Twig\\Node\\Expression\\ConstantExpression))\n#4 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\ExpressionParser.php(175): Twig\\ExpressionParser->parsePrimaryExpression()\n#5 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\ExpressionParser.php(70): Twig\\ExpressionParser->getPrimary()\n#6 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\Parser.php(141): Twig\\ExpressionParser->parseExpression()\n#7 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\Parser.php(97): Twig\\Parser->subparse(NULL, false)\n#8 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\Environment.php(562): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#9 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\Environment.php(594): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#10 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#11 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'E:\\\\xampp\\\\htdocs...\', NULL)\n#12 E:\\xampp\\htdocs\\ssg_holding\\modules\\cms\\classes\\Controller.php(1100): Twig\\Environment->loadTemplate(\'E:\\\\xampp\\\\htdocs...\')\n#13 E:\\xampp\\htdocs\\ssg_holding\\modules\\cms\\twig\\Extension.php(103): Cms\\Classes\\Controller->renderPartial(\'open_menu\', Array, true)\n#14 E:\\xampp\\htdocs\\ssg_holding\\storage\\cms\\twig\\a8\\a81435e2f053dab066011f5b27b02f764a63dd0baa0cae4206f24c52bd25584a.php(43): Cms\\Twig\\Extension->partialFunction(\'open_menu\', Array, true)\n#15 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\Template.php(405): __TwigTemplate_d60827a96ecfb74f7b4a8a208ed0d08311da50a71fc64fe24245540b60624b6b->doDisplay(Array, Array)\n#16 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\Template.php(378): Twig\\Template->displayWithErrorHandling(Array, Array)\n#17 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\Template.php(390): Twig\\Template->display(Array)\n#18 E:\\xampp\\htdocs\\ssg_holding\\modules\\cms\\classes\\Controller.php(434): Twig\\Template->render(Array)\n#19 E:\\xampp\\htdocs\\ssg_holding\\modules\\cms\\classes\\Controller.php(229): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#20 E:\\xampp\\htdocs\\ssg_holding\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#21 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'/\')\n#22 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#23 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#24 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(176): Illuminate\\Routing\\Route->runController()\n#25 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(681): Illuminate\\Routing\\Route->run()\n#26 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#34 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#35 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(683): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#39 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#40 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(624): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#41 E:\\xampp\\htdocs\\ssg_holding\\vendor\\winter\\storm\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#42 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(170): Winter\\Storm\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#43 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#44 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 E:\\xampp\\htdocs\\ssg_holding\\vendor\\winter\\storm\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Winter\\Storm\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 E:\\xampp\\htdocs\\ssg_holding\\vendor\\winter\\storm\\src\\Foundation\\Http\\Middleware\\CheckForTrustedProxies.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Winter\\Storm\\Foundation\\Http\\Middleware\\CheckForTrustedProxies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#49 E:\\xampp\\htdocs\\ssg_holding\\vendor\\winter\\storm\\src\\Http\\Middleware\\TrustHosts.php(46): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Winter\\Storm\\Http\\Middleware\\TrustHosts->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#53 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#54 E:\\xampp\\htdocs\\ssg_holding\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#55 E:\\xampp\\htdocs\\ssg_holding\\server.php(17): require_once(\'E:\\\\xampp\\\\htdocs...\')\n#56 {main}', NULL, '2022-07-06 03:45:45', '2022-07-06 03:45:45'),
(3, 'error', 'Twig\\Error\\SyntaxError: Unknown \"themes\" filter. Did you mean \"theme\" in \"E:\\xampp\\htdocs\\ssg_holding\\themes\\ssghl\\partials\\open_menu.htm\" at line 23? in E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\ExpressionParser.php:788\nStack trace:\n#0 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\ExpressionParser.php(563): Twig\\ExpressionParser->getFilterNodeClass(\'themes\', 23)\n#1 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\ExpressionParser.php(548): Twig\\ExpressionParser->parseFilterExpressionRaw(Object(Twig\\Node\\Expression\\ConstantExpression))\n#2 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\ExpressionParser.php(406): Twig\\ExpressionParser->parseFilterExpression(Object(Twig\\Node\\Expression\\ConstantExpression))\n#3 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\ExpressionParser.php(289): Twig\\ExpressionParser->parsePostfixExpression(Object(Twig\\Node\\Expression\\ConstantExpression))\n#4 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\ExpressionParser.php(175): Twig\\ExpressionParser->parsePrimaryExpression()\n#5 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\ExpressionParser.php(70): Twig\\ExpressionParser->getPrimary()\n#6 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\Parser.php(141): Twig\\ExpressionParser->parseExpression()\n#7 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\Parser.php(97): Twig\\Parser->subparse(NULL, false)\n#8 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\Environment.php(562): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#9 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\Environment.php(594): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#10 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#11 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'E:\\\\xampp\\\\htdocs...\', NULL)\n#12 E:\\xampp\\htdocs\\ssg_holding\\modules\\cms\\classes\\Controller.php(1100): Twig\\Environment->loadTemplate(\'E:\\\\xampp\\\\htdocs...\')\n#13 E:\\xampp\\htdocs\\ssg_holding\\modules\\cms\\twig\\Extension.php(103): Cms\\Classes\\Controller->renderPartial(\'open_menu\', Array, true)\n#14 E:\\xampp\\htdocs\\ssg_holding\\storage\\cms\\twig\\a8\\a81435e2f053dab066011f5b27b02f764a63dd0baa0cae4206f24c52bd25584a.php(43): Cms\\Twig\\Extension->partialFunction(\'open_menu\', Array, true)\n#15 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\Template.php(405): __TwigTemplate_d60827a96ecfb74f7b4a8a208ed0d08311da50a71fc64fe24245540b60624b6b->doDisplay(Array, Array)\n#16 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\Template.php(378): Twig\\Template->displayWithErrorHandling(Array, Array)\n#17 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\Template.php(390): Twig\\Template->display(Array)\n#18 E:\\xampp\\htdocs\\ssg_holding\\modules\\cms\\classes\\Controller.php(434): Twig\\Template->render(Array)\n#19 E:\\xampp\\htdocs\\ssg_holding\\modules\\cms\\classes\\Controller.php(229): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#20 E:\\xampp\\htdocs\\ssg_holding\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#21 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'/\')\n#22 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#23 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#24 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(176): Illuminate\\Routing\\Route->runController()\n#25 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(681): Illuminate\\Routing\\Route->run()\n#26 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#34 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#35 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(683): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#39 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#40 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(624): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#41 E:\\xampp\\htdocs\\ssg_holding\\vendor\\winter\\storm\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#42 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(170): Winter\\Storm\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#43 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#44 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 E:\\xampp\\htdocs\\ssg_holding\\vendor\\winter\\storm\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Winter\\Storm\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 E:\\xampp\\htdocs\\ssg_holding\\vendor\\winter\\storm\\src\\Foundation\\Http\\Middleware\\CheckForTrustedProxies.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Winter\\Storm\\Foundation\\Http\\Middleware\\CheckForTrustedProxies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#49 E:\\xampp\\htdocs\\ssg_holding\\vendor\\winter\\storm\\src\\Http\\Middleware\\TrustHosts.php(46): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Winter\\Storm\\Http\\Middleware\\TrustHosts->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#53 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#54 E:\\xampp\\htdocs\\ssg_holding\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#55 E:\\xampp\\htdocs\\ssg_holding\\server.php(17): require_once(\'E:\\\\xampp\\\\htdocs...\')\n#56 {main}', NULL, '2022-07-06 03:46:22', '2022-07-06 03:46:22'),
(4, 'error', 'Winter\\Storm\\Exception\\SystemException: The partial \'openmenu\' is not found. in E:\\xampp\\htdocs\\ssg_holding\\modules\\cms\\classes\\Controller.php:1043\nStack trace:\n#0 E:\\xampp\\htdocs\\ssg_holding\\modules\\cms\\twig\\Extension.php(103): Cms\\Classes\\Controller->renderPartial(\'openmenu\', Array, true)\n#1 E:\\xampp\\htdocs\\ssg_holding\\storage\\cms\\twig\\a8\\a81435e2f053dab066011f5b27b02f764a63dd0baa0cae4206f24c52bd25584a.php(43): Cms\\Twig\\Extension->partialFunction(\'openmenu\', Array, true)\n#2 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\Template.php(405): __TwigTemplate_d60827a96ecfb74f7b4a8a208ed0d08311da50a71fc64fe24245540b60624b6b->doDisplay(Array, Array)\n#3 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\Template.php(378): Twig\\Template->displayWithErrorHandling(Array, Array)\n#4 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\Template.php(390): Twig\\Template->display(Array)\n#5 E:\\xampp\\htdocs\\ssg_holding\\modules\\cms\\classes\\Controller.php(434): Twig\\Template->render(Array)\n#6 E:\\xampp\\htdocs\\ssg_holding\\modules\\cms\\classes\\Controller.php(229): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#7 E:\\xampp\\htdocs\\ssg_holding\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#8 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'/\')\n#9 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#10 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#11 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(176): Illuminate\\Routing\\Route->runController()\n#12 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(681): Illuminate\\Routing\\Route->run()\n#13 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#14 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#15 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#18 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#19 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(683): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#27 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(624): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#28 E:\\xampp\\htdocs\\ssg_holding\\vendor\\winter\\storm\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#29 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(170): Winter\\Storm\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#30 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#31 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 E:\\xampp\\htdocs\\ssg_holding\\vendor\\winter\\storm\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Winter\\Storm\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 E:\\xampp\\htdocs\\ssg_holding\\vendor\\winter\\storm\\src\\Foundation\\Http\\Middleware\\CheckForTrustedProxies.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Winter\\Storm\\Foundation\\Http\\Middleware\\CheckForTrustedProxies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 E:\\xampp\\htdocs\\ssg_holding\\vendor\\winter\\storm\\src\\Http\\Middleware\\TrustHosts.php(46): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Winter\\Storm\\Http\\Middleware\\TrustHosts->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 E:\\xampp\\htdocs\\ssg_holding\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 E:\\xampp\\htdocs\\ssg_holding\\server.php(17): require_once(\'E:\\\\xampp\\\\htdocs...\')\n#43 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The partial \'openmenu\' is not found.\") in \"E:\\xampp\\htdocs\\ssg_holding\\themes\\ssghl\\pages\\home.htm\" at line 2. in E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\Template.php:419\nStack trace:\n#0 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\Template.php(378): Twig\\Template->displayWithErrorHandling(Array, Array)\n#1 E:\\xampp\\htdocs\\ssg_holding\\vendor\\twig\\twig\\src\\Template.php(390): Twig\\Template->display(Array)\n#2 E:\\xampp\\htdocs\\ssg_holding\\modules\\cms\\classes\\Controller.php(434): Twig\\Template->render(Array)\n#3 E:\\xampp\\htdocs\\ssg_holding\\modules\\cms\\classes\\Controller.php(229): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#4 E:\\xampp\\htdocs\\ssg_holding\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#5 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'/\')\n#6 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#7 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#8 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(176): Illuminate\\Routing\\Route->runController()\n#9 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(681): Illuminate\\Routing\\Route->run()\n#10 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#11 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#12 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#13 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#15 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#16 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(683): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#23 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#24 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(624): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#25 E:\\xampp\\htdocs\\ssg_holding\\vendor\\winter\\storm\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#26 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(170): Winter\\Storm\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#27 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#28 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 E:\\xampp\\htdocs\\ssg_holding\\vendor\\winter\\storm\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Winter\\Storm\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 E:\\xampp\\htdocs\\ssg_holding\\vendor\\winter\\storm\\src\\Foundation\\Http\\Middleware\\CheckForTrustedProxies.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Winter\\Storm\\Foundation\\Http\\Middleware\\CheckForTrustedProxies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 E:\\xampp\\htdocs\\ssg_holding\\vendor\\winter\\storm\\src\\Http\\Middleware\\TrustHosts.php(46): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#34 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Winter\\Storm\\Http\\Middleware\\TrustHosts->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#35 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#37 E:\\xampp\\htdocs\\ssg_holding\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#38 E:\\xampp\\htdocs\\ssg_holding\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#39 E:\\xampp\\htdocs\\ssg_holding\\server.php(17): require_once(\'E:\\\\xampp\\\\htdocs...\')\n#40 {main}', NULL, '2022-07-06 03:48:25', '2022-07-06 03:48:25');

-- --------------------------------------------------------

--
-- Table structure for table `system_files`
--

CREATE TABLE `system_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `disk_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `content_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT 1,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_layouts`
--

CREATE TABLE `system_mail_layouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_css` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_mail_layouts`
--

INSERT INTO `system_mail_layouts` (`id`, `name`, `code`, `content_html`, `content_text`, `content_css`, `is_locked`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Default layout', 'default', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-default\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n\n        <!-- Header -->\n        {% partial \'header\' body %}\n            {{ subject|raw }}\n        {% endpartial %}\n\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n\n        <!-- Footer -->\n        {% partial \'footer\' body %}\n            &copy; {{ \"now\"|date(\"Y\") }} {{ appName }}. All rights reserved.\n        {% endpartial %}\n\n    </table>\n\n</body>\n</html>', '{{ content|raw }}', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2022-07-05 02:52:10', '2022-07-05 02:52:10'),
(2, 'System layout', 'system', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-system\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n\n                                        <!-- Subcopy -->\n                                        {% partial \'subcopy\' body %}\n                                            **This is an automatic message. Please do not reply to it.**\n                                        {% endpartial %}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n    </table>\n\n</body>\n</html>', '{{ content|raw }}\n\n\n---\nThis is an automatic message. Please do not reply to it.', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2022-07-05 02:52:10', '2022-07-05 02:52:10');

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_partials`
--

CREATE TABLE `system_mail_partials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_templates`
--

CREATE TABLE `system_mail_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `layout_id` int(11) DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_parameters`
--

CREATE TABLE `system_parameters` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_parameters`
--

INSERT INTO `system_parameters` (`id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 'system', 'update', 'count', '0'),
(2, 'system', 'update', 'retry', '1657186935'),
(3, 'cms', 'theme', 'active', '\"ssghl\"');

-- --------------------------------------------------------

--
-- Table structure for table `system_plugin_history`
--

CREATE TABLE `system_plugin_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_plugin_history`
--

INSERT INTO `system_plugin_history` (`id`, `code`, `type`, `version`, `detail`, `created_at`) VALUES
(1, 'Winter.Demo', 'comment', '1.0.1', 'First version of Demo', '2022-07-05 02:52:11');

-- --------------------------------------------------------

--
-- Table structure for table `system_plugin_versions`
--

CREATE TABLE `system_plugin_versions` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `is_disabled` tinyint(1) NOT NULL DEFAULT 0,
  `is_frozen` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_plugin_versions`
--

INSERT INTO `system_plugin_versions` (`id`, `code`, `version`, `created_at`, `is_disabled`, `is_frozen`) VALUES
(1, 'Winter.Demo', '1.0.1', '2022-07-05 02:52:11', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_request_logs`
--

CREATE TABLE `system_request_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_revisions`
--

CREATE TABLE `system_revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cast` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backend_access_log`
--
ALTER TABLE `backend_access_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backend_users`
--
ALTER TABLE `backend_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_unique` (`login`),
  ADD UNIQUE KEY `email_unique` (`email`),
  ADD KEY `act_code_index` (`activation_code`),
  ADD KEY `reset_code_index` (`reset_password_code`),
  ADD KEY `admin_role_index` (`role_id`);

--
-- Indexes for table `backend_users_groups`
--
ALTER TABLE `backend_users_groups`
  ADD PRIMARY KEY (`user_id`,`user_group_id`);

--
-- Indexes for table `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_unique` (`name`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_item_index` (`user_id`,`namespace`,`group`,`item`);

--
-- Indexes for table `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_unique` (`name`),
  ADD KEY `role_code_index` (`code`);

--
-- Indexes for table `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `backend_user_throttle_user_id_index` (`user_id`),
  ADD KEY `backend_user_throttle_ip_address_index` (`ip_address`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Indexes for table `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_data_theme_index` (`theme`);

--
-- Indexes for table `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_logs_type_index` (`type`),
  ADD KEY `cms_theme_logs_theme_index` (`theme`),
  ADD KEY `cms_theme_logs_user_id_index` (`user_id`);

--
-- Indexes for table `cms_theme_templates`
--
ALTER TABLE `cms_theme_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_templates_source_index` (`source`),
  ADD KEY `cms_theme_templates_path_index` (`path`);

--
-- Indexes for table `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deferred_bindings_master_type_index` (`master_type`),
  ADD KEY `deferred_bindings_master_field_index` (`master_field`),
  ADD KEY `deferred_bindings_slave_type_index` (`slave_type`),
  ADD KEY `deferred_bindings_slave_id_index` (`slave_id`),
  ADD KEY `deferred_bindings_session_key_index` (`session_key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `system_event_logs`
--
ALTER TABLE `system_event_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_event_logs_level_index` (`level`);

--
-- Indexes for table `system_files`
--
ALTER TABLE `system_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_files_field_index` (`field`),
  ADD KEY `system_files_attachment_id_index` (`attachment_id`),
  ADD KEY `system_files_attachment_type_index` (`attachment_type`);

--
-- Indexes for table `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_mail_templates_layout_id_index` (`layout_id`);

--
-- Indexes for table `system_parameters`
--
ALTER TABLE `system_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_index` (`namespace`,`group`,`item`);

--
-- Indexes for table `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_history_code_index` (`code`),
  ADD KEY `system_plugin_history_type_index` (`type`);

--
-- Indexes for table `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_versions_code_index` (`code`);

--
-- Indexes for table `system_request_logs`
--
ALTER TABLE `system_request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_revisions`
--
ALTER TABLE `system_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`),
  ADD KEY `system_revisions_user_id_index` (`user_id`),
  ADD KEY `system_revisions_field_index` (`field`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_settings_item_index` (`item`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backend_access_log`
--
ALTER TABLE `backend_access_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `backend_users`
--
ALTER TABLE `backend_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_theme_templates`
--
ALTER TABLE `cms_theme_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `system_event_logs`
--
ALTER TABLE `system_event_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_files`
--
ALTER TABLE `system_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_parameters`
--
ALTER TABLE `system_parameters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_request_logs`
--
ALTER TABLE `system_request_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_revisions`
--
ALTER TABLE `system_revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
