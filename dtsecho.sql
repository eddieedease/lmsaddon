-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Nov 19, 2016 at 09:56 PM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dtsecho`
--

-- --------------------------------------------------------

--
-- Table structure for table `benchmark`
--

CREATE TABLE `benchmark` (
`id` mediumint(8) unsigned NOT NULL,
  `url` text,
  `init_time` float DEFAULT NULL,
  `script_time` float DEFAULT NULL,
  `database_time` float DEFAULT NULL,
  `smarty_time` float DEFAULT NULL,
  `total_time` float DEFAULT NULL,
  `memory_usage` float DEFAULT NULL,
  `total_queries` mediumint(8) unsigned DEFAULT NULL,
  `max_query` text,
  `timestamp` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE `bookmarks` (
`id` mediumint(8) unsigned NOT NULL,
  `users_LOGIN` varchar(100) NOT NULL,
  `lessons_ID` mediumint(8) unsigned DEFAULT NULL,
  `name` text,
  `url` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `cache_key` char(64) NOT NULL,
  `value` longtext,
  `timestamp` int(10) unsigned NOT NULL,
  `timeout` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
`id` mediumint(8) unsigned NOT NULL,
  `data` text,
  `timestamp` int(10) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `users_LOGIN` varchar(100) NOT NULL,
  `foreign_ID` mediumint(8) unsigned DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
`id` mediumint(8) unsigned NOT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `contents` text
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `timestamp`, `session_id`, `contents`) VALUES
(4, 1408534612, 'prbpnq9rq9nsf5lbfa43crkui6', 'a:1:{s:6:"lesson";a:1:{i:1;s:1:"1";}}'),
(5, 1408534617, '785vds9pi6if3m3kvj84e278j6', 'a:2:{s:6:"lesson";a:1:{i:1;s:1:"1";}s:6:"course";a:1:{i:2;s:1:"2";}}');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
`id` mediumint(8) unsigned NOT NULL,
  `data` text NOT NULL,
  `users_LOGIN` varchar(100) NOT NULL,
  `content_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `timestamp` int(10) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `private` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `completed_tests`
--

CREATE TABLE `completed_tests` (
`id` mediumint(8) unsigned NOT NULL,
  `users_LOGIN` varchar(100) DEFAULT NULL,
  `tests_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` varchar(255) DEFAULT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) NOT NULL DEFAULT '0',
  `time_start` int(10) unsigned DEFAULT NULL,
  `time_end` int(10) unsigned DEFAULT NULL,
  `time_spent` int(10) unsigned DEFAULT NULL,
  `score` float DEFAULT NULL,
  `pending` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `completed_tests_blob`
--

CREATE TABLE `completed_tests_blob` (
`id` mediumint(8) unsigned NOT NULL,
  `completed_tests_ID` mediumint(8) unsigned NOT NULL,
  `test` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `configuration`
--

CREATE TABLE `configuration` (
  `name` varchar(100) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `configuration`
--

INSERT INTO `configuration` (`name`, `value`) VALUES
('activate_ldap', '0'),
('activation', '1'),
('additional_footer', 'Copyright (©)<a href="http://www.edease.nl">EDease</a> 2014'),
('allow_direct_login', '1'),
('api', '0'),
('api_ip', '127.0.0.1'),
('autologout_time', '5'),
('ban_failed_logins', '0'),
('cache_enabled', '1'),
('cms_page', ''),
('collapse_catalog', '0'),
('compress_tests', '0'),
('constrain_access', '1'),
('css', ''),
('currency', 'EUR'),
('currency_order', '1'),
('database_version', '3.6.14'),
('date_format', 'DD/MM/YYYY'),
('debug_mode', ''),
('default_language', 'Dutch'),
('default_type', 'student'),
('discount_period', ''),
('discount_start', ''),
('display_empty_blocks', '0'),
('editor_type', 'tinymce_new'),
('eliminate_post_xss', '1'),
('enable_balance', '1'),
('enable_cart', '1'),
('encrypt_url', '0'),
('error_page', 'themes/default/external/default_error_page.html'),
('facebook_api_key', ''),
('facebook_secret', ''),
('favicon', ''),
('file_black_list', 'php,php3,jsp,asp,cgi,pl,exe,com,bat,sh,ph3,php4,ph4,php5,ph5,phtm,phtml'),
('file_encoding', 'UTF7-IMAP'),
('file_white_list', ''),
('force_change_password', '0'),
('gz_handler', '1'),
('help_url', 'http://docs.efrontlearning.net/index.php'),
('insert_group_key', '1'),
('ip_black_list', ''),
('ip_white_list', '*.*.*.*'),
('last_reset_certificate', '1451476228'),
('ldap_base_dn', ''),
('ldap_bind_dn', ''),
('ldap_cn', 'cn'),
('ldap_l', 'l'),
('ldap_mail', 'mail'),
('ldap_password', ''),
('ldap_port', '389'),
('ldap_postaladdress', 'postaladdress'),
('ldap_preferredlanguage', 'referredlanguage'),
('ldap_protocol', '3'),
('ldap_server', 'ldap://localhost'),
('ldap_telephonenumber', 'telephonenumber'),
('ldap_uid', 'uid'),
('lessons_directory', '0'),
('lesson_enroll', '1'),
('license_note', ''),
('license_server', 'http://keys.efrontlearning.net/list.php?version=10'),
('load_videojs', '0'),
('location', 'Greece'),
('lock_down', '0'),
('lock_message', '<p><img src="http://edease.nl/wp-content/uploads/2015/01/Edlogo.png" width="291" height="100" /></p>'),
('login_redirect_page', 'lesson_catalog'),
('logo', ''),
('logout_redirect', ''),
('logo_max_height', '150'),
('logo_max_width', '200'),
('mail_activation', '0'),
('mapped_accounts', '2'),
('math_content', '0'),
('math_images', '0'),
('math_server', 'http://www.imathas.com/cgi-bin/mimetex.cgi'),
('max_execution_time', '120'),
('max_file_size', '50000'),
('max_online_users', '2'),
('max_online_users_threshold', ''),
('max_online_users_threshold_timestamp', ''),
('max_online_users_timestamp', '1404301663'),
('memory_limit', '96'),
('mode_allow_direct_login', '1'),
('mode_allow_users_to_delete_supervisor_files', '1'),
('mode_archive', '2'),
('mode_backup', '1'),
('mode_bookmarks', '1'),
('mode_calendar', '2'),
('mode_change_info', '1'),
('mode_change_pass', '1'),
('mode_comments', '1'),
('mode_configuration', '1'),
('mode_course_instances', '1'),
('mode_curriculum', '2'),
('mode_feedback', '1'),
('mode_forum', '1'),
('mode_func_comments', '0'),
('mode_func_people', '0'),
('mode_func_userstatus', '0'),
('mode_glossary', '1'),
('mode_groups', '1'),
('mode_help', '1'),
('mode_languages', '2'),
('mode_lessons_timeline', '0'),
('mode_logout_user', '2'),
('mode_maintenance', '2'),
('mode_messages', '1'),
('mode_messages_student', '1'),
('mode_mod_rewrite_bypass', '0'),
('mode_move_blocks', '1'),
('mode_news', '1'),
('mode_notifications', '1'),
('mode_online_users', '1'),
('mode_payments', '1'),
('mode_professor_courses', '0'),
('mode_projects', '1'),
('mode_propagate_courses_to_branch_users', '1'),
('mode_questions_pool', ''),
('mode_search_user', '2'),
('mode_shared_glossary', '0'),
('mode_show_complete_org_chart', '1'),
('mode_show_organization_chart', '1'),
('mode_show_unassigned_users_to_supervisors', '1'),
('mode_show_user_form', '0'),
('mode_simple_complete', '1'),
('mode_skillgaptests', '2'),
('mode_social_events', '0'),
('mode_statistics', '1'),
('mode_surveys', '1'),
('mode_system_timeline', '0'),
('mode_tests', '1'),
('mode_test_glossary', '0'),
('mode_themes', '1'),
('mode_tooltip', '1'),
('mode_user_profile', '1'),
('mode_user_types', '1'),
('mode_version_key', '1'),
('module_BBB_salt', '29ae87201c1d23f7099f3dfb92f63578'),
('module_BBB_server', 'http://yourserver.com/'),
('module_BBB_server_version', '1'),
('module_security_last_check', '1451476211'),
('mod_rewrite_bypass', '0'),
('motto_on_header', '1'),
('multiple_logins', ''),
('normalize_dimensions', '0'),
('notifications_lock', '0'),
('notifications_maximum_inter_time', '0'),
('notifications_max_sent_messages', '100'),
('notifications_messages_per_time', '5'),
('notifications_pageloads', '10'),
('notifications_send_mode', '0'),
('onelanguage', '1'),
('only_ldap', '0'),
('password_length', '6'),
('password_reminder', '0'),
('paypalbusiness', ''),
('paypaldebug', '0'),
('paypalmode', 'normal'),
('phplivedocx_password', ''),
('phplivedocx_server', 'https://api.livedocx.com/1.2/mailmerge.asmx?WSDL'),
('phplivedocx_username', ''),
('pm_space', ''),
('registration_file', 'includes/webserver_registration.php'),
('remember_login', 'class = "inputCheckBox"'),
('reset_license_note_always', '1'),
('show_footer', '1'),
('show_license_note', '0'),
('signup', '1'),
('simple_mode', '0'),
('site_logo', '18'),
('site_motto', 'voor al uw online-trainingen'),
('site_name', 'Webtrainer'),
('smarty_cache', '1'),
('smarty_cache_timeout', '60'),
('smtp_auth', '0'),
('smtp_host', 'localhost'),
('smtp_pass', ''),
('smtp_port', '25'),
('smtp_timeout', ''),
('smtp_user', ''),
('social_modules_activated', '0'),
('supervisor_mail_activation', '0'),
('system_email', 'eddie@edease.nl'),
('theme', '7'),
('time_reports', '0'),
('time_zone', 'Europe/Helsinki'),
('total_discount', '0'),
('unauthorized_page', 'themes/default/external/default_unauthorized_page.html'),
('updater_period', '100000'),
('username_format', '#surname# #n#. (#login#)'),
('username_format_resolve', '1'),
('username_variable', '$_SERVER["REMOTE_USER"]'),
('use_logo', '2'),
('version_activated', ''),
('version_hosted', '0'),
('version_key', ''),
('version_type', 'community'),
('version_upgrades', ''),
('version_users', ''),
('virtual_keyboard', '1'),
('webserver_auth', '0'),
('webserver_registration', '0'),
('zip_method', 'php');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
`id` mediumint(8) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `data` longtext,
  `parent_content_ID` mediumint(8) unsigned DEFAULT '0',
  `lessons_ID` mediumint(8) unsigned DEFAULT '0',
  `timestamp` int(10) unsigned NOT NULL,
  `ctg_type` varchar(255) NOT NULL,
  `active` tinyint(1) DEFAULT '1',
  `previous_content_ID` mediumint(8) unsigned DEFAULT '0',
  `options` text,
  `metadata` text,
  `scorm_version` varchar(50) DEFAULT NULL,
  `publish` tinyint(1) DEFAULT '1',
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `linked_to` mediumint(8) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `name`, `data`, `parent_content_ID`, `lessons_ID`, `timestamp`, `ctg_type`, `active`, `previous_content_ID`, `options`, `metadata`, `scorm_version`, `publish`, `identifier`, `linked_to`) VALUES
(13, 'Geschiedenis peritoneaal dialyse 16112015', '<iframe height = "100%"  width = "100%" frameborder = "no" name = "scormFrameName" id = "scormFrameID" src = "content/lessons/8/22222/index_lms.html" onload = "if (window.eF_js_setCorrectIframeSize) {eF_js_setCorrectIframeSize();} else {setIframeSize = true;}"></iframe>', 0, 8, 1447756635, 'scorm', 1, 0, 'a:1:{s:21:"complete_unit_setting";i:4;}', NULL, 'CAM 1.3', 1, 'Geschiedenis_peritoneaal_dialyse_02072015_SCO', NULL),
(14, 'Toets EHBO', '', 0, 4, 1451476624, 'tests', 1, 0, NULL, 'a:6:{s:5:"title";s:10:"Toets EHBO";s:7:"creator";s:7:"DTS lid";s:9:"publisher";s:7:"DTS lid";s:11:"contributor";s:7:"DTS lid";s:4:"date";s:10:"2015/12/30";s:4:"type";s:7:"content";}', NULL, 1, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
`id` int(10) unsigned NOT NULL,
  `code` varchar(150) NOT NULL,
  `max_uses` int(10) unsigned NOT NULL DEFAULT '0',
  `max_user_uses` int(10) unsigned NOT NULL DEFAULT '0',
  `duration` int(10) unsigned NOT NULL DEFAULT '30',
  `discount` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `from_timestamp` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
`id` mediumint(8) unsigned NOT NULL,
  `name` varchar(150) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `archive` int(10) unsigned DEFAULT '0',
  `created` int(10) unsigned DEFAULT NULL,
  `start_date` int(10) unsigned DEFAULT NULL,
  `end_date` int(10) unsigned DEFAULT NULL,
  `options` text,
  `metadata` text,
  `description` text,
  `info` text,
  `price` float DEFAULT '0',
  `show_catalog` tinyint(1) NOT NULL DEFAULT '1',
  `publish` tinyint(1) DEFAULT '1',
  `directions_ID` mediumint(8) unsigned DEFAULT NULL,
  `languages_NAME` varchar(50) NOT NULL,
  `reset` tinyint(1) NOT NULL DEFAULT '0',
  `certificate_expiration` int(10) unsigned DEFAULT NULL,
  `reset_interval` int(10) unsigned DEFAULT NULL,
  `max_users` int(10) unsigned DEFAULT NULL,
  `rules` text,
  `instance_source` mediumint(8) unsigned DEFAULT '0',
  `supervisor_LOGIN` varchar(100) DEFAULT NULL,
  `depends_on` mediumint(8) unsigned DEFAULT '0',
  `ceu` int(10) unsigned DEFAULT NULL,
  `creator_LOGIN` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `active`, `archive`, `created`, `start_date`, `end_date`, `options`, `metadata`, `description`, `info`, `price`, `show_catalog`, `publish`, `directions_ID`, `languages_NAME`, `reset`, `certificate_expiration`, `reset_interval`, `max_users`, `rules`, `instance_source`, `supervisor_LOGIN`, `depends_on`, `ceu`, `creator_LOGIN`) VALUES
(7, 'Crusus  1', 1, 0, 1447763931, 0, 0, 'a:11:{s:18:"recurring_duration";i:0;s:13:"auto_complete";i:1;s:16:"auto_certificate";i:0;s:11:"certificate";s:0:"";s:18:"certificate_tpl_id";i:0;s:22:"certificate_tpl_id_rtf";i:0;s:25:"certificate_export_method";s:3:"xml";s:8:"duration";N;s:14:"training_hours";N;s:10:"start_date";s:0:"";s:8:"end_date";s:0:"";}', 'a:7:{s:5:"title";s:9:"Crusus  1";s:7:"creator";s:24:"Administrator S. (Eddie)";s:9:"publisher";s:24:"Administrator S. (Eddie)";s:11:"contributor";s:24:"Administrator S. (Eddie)";s:4:"date";s:10:"2015/11/17";s:8:"language";s:10:"Nederlands";s:4:"type";s:6:"course";}', '', 'a:0:{}', 0, 0, 1, 3, 'Dutch', 0, 0, 0, 0, 'a:0:{}', 0, NULL, 0, 1, 'Eddie'),
(8, 'Cursus 1', 1, 0, 1451476252, 0, 0, 'a:11:{s:18:"recurring_duration";i:0;s:13:"auto_complete";i:1;s:16:"auto_certificate";i:0;s:11:"certificate";s:0:"";s:18:"certificate_tpl_id";i:0;s:22:"certificate_tpl_id_rtf";i:0;s:25:"certificate_export_method";s:3:"xml";s:8:"duration";N;s:14:"training_hours";N;s:10:"start_date";s:0:"";s:8:"end_date";s:0:"";}', 'a:7:{s:5:"title";s:8:"Cursus 1";s:7:"creator";s:24:"Administrator S. (Eddie)";s:9:"publisher";s:24:"Administrator S. (Eddie)";s:11:"contributor";s:24:"Administrator S. (Eddie)";s:4:"date";s:10:"2015/12/30";s:8:"language";s:10:"Nederlands";s:4:"type";s:6:"course";}', '', 'a:0:{}', 0, 1, 1, 3, 'Dutch', 0, 0, 0, 0, 'a:0:{}', 0, NULL, 0, 1, 'Eddie'),
(9, 'Cursus 2', 1, 0, 1451476324, 0, 0, 'a:11:{s:18:"recurring_duration";i:0;s:13:"auto_complete";i:1;s:16:"auto_certificate";i:0;s:11:"certificate";s:0:"";s:18:"certificate_tpl_id";i:0;s:22:"certificate_tpl_id_rtf";i:0;s:25:"certificate_export_method";s:3:"xml";s:8:"duration";N;s:14:"training_hours";N;s:10:"start_date";s:0:"";s:8:"end_date";s:0:"";}', 'a:7:{s:5:"title";s:8:"Cursus 2";s:7:"creator";s:24:"Administrator S. (Eddie)";s:9:"publisher";s:24:"Administrator S. (Eddie)";s:11:"contributor";s:24:"Administrator S. (Eddie)";s:4:"date";s:10:"2015/12/30";s:8:"language";s:10:"Nederlands";s:4:"type";s:6:"course";}', '', 'a:0:{}', 0, 1, 1, 3, 'Dutch', 0, 0, 0, 0, 'a:0:{}', 0, NULL, 0, 1, 'Eddie');

-- --------------------------------------------------------

--
-- Table structure for table `courses_to_groups`
--

CREATE TABLE `courses_to_groups` (
  `courses_ID` mediumint(8) unsigned NOT NULL,
  `user_type` varchar(50) DEFAULT 'student',
  `groups_ID` mediumint(8) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses_to_groups`
--

INSERT INTO `courses_to_groups` (`courses_ID`, `user_type`, `groups_ID`) VALUES
(7, 'student', 9),
(7, 'student', 10),
(8, 'student', 10),
(9, 'student', 10);

-- --------------------------------------------------------

--
-- Table structure for table `directions`
--

CREATE TABLE `directions` (
`id` mediumint(8) unsigned NOT NULL,
  `name` varchar(150) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `parent_direction_ID` mediumint(8) unsigned DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directions`
--

INSERT INTO `directions` (`id`, `name`, `active`, `parent_direction_ID`) VALUES
(3, 'BHV', 1, 0),
(4, 'kantklossen', 1, 0),
(5, 'EHBO', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `done_questions`
--

CREATE TABLE `done_questions` (
`id` mediumint(8) unsigned NOT NULL,
  `done_tests_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `questions_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `answer` text,
  `score` float DEFAULT '0',
  `timestamp` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `done_tests`
--

CREATE TABLE `done_tests` (
`id` mediumint(8) unsigned NOT NULL,
  `users_LOGIN` varchar(100) NOT NULL,
  `tests_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `timestamp` int(10) unsigned NOT NULL,
  `score` float DEFAULT '0',
  `comments` text,
  `duration` mediumint(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
`id` mediumint(8) unsigned NOT NULL,
  `users_LOGIN` varchar(100) NOT NULL,
  `users_name` varchar(255) NOT NULL,
  `users_surname` varchar(255) NOT NULL,
  `timestamp` int(10) NOT NULL,
  `type` int(11) NOT NULL,
  `lessons_ID` varchar(255) DEFAULT NULL,
  `lessons_name` varchar(255) DEFAULT NULL,
  `entity_ID` varchar(255) DEFAULT NULL,
  `entity_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=475 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `users_LOGIN`, `users_name`, `users_surname`, `timestamp`, `type`, `lessons_ID`, `lessons_name`, `entity_ID`, `entity_name`) VALUES
(6, 'Eddie', 'System', 'Administrator', 1403868049, 2, NULL, NULL, NULL, NULL),
(11, 'Eddie', 'System', 'Administrator', 1403868421, 2, NULL, NULL, NULL, NULL),
(12, 'Eddie', 'System', 'Administrator', 1403950208, 2, NULL, NULL, NULL, NULL),
(15, 'Eddie', 'System', 'Administrator', 1403950590, 2, NULL, NULL, NULL, NULL),
(16, 'Eddie', 'System', 'Administrator', 1403950667, 2, NULL, NULL, NULL, NULL),
(17, 'Eddie', 'System', 'Administrator', 1403950668, 2, NULL, NULL, NULL, NULL),
(20, 'Eddie', 'System', 'Administrator', 1403951325, 2, NULL, NULL, NULL, NULL),
(21, 'Eddie', 'System', 'Administrator', 1403951325, 2, NULL, NULL, NULL, NULL),
(22, 'Eddie', 'System', 'Administrator', 1403951560, 2, NULL, NULL, NULL, NULL),
(23, 'Eddie', 'System', 'Administrator', 1403951603, 2, NULL, NULL, NULL, NULL),
(24, 'Eddie', 'System', 'Administrator', 1403951703, 2, NULL, NULL, NULL, NULL),
(25, 'Eddie', 'System', 'Administrator', 1403952342, 2, NULL, NULL, NULL, NULL),
(26, 'Eddie', 'System', 'Administrator', 1403952893, 2, NULL, NULL, NULL, NULL),
(27, 'Eddie', 'System', 'Administrator', 1403952900, 2, NULL, NULL, NULL, NULL),
(28, 'Eddie', 'System', 'Administrator', 1403953199, 2, NULL, NULL, NULL, NULL),
(30, 'Eddie', 'System', 'Administrator', 1403964025, 2, NULL, NULL, NULL, NULL),
(32, 'Eddie', 'System', 'Administrator', 1403964137, 2, NULL, NULL, NULL, NULL),
(58, 'Eddie', 'System', 'Administrator', 1404301662, 2, NULL, NULL, NULL, NULL),
(61, 'Eddie', 'System', 'Administrator', 1404301706, 2, NULL, NULL, NULL, NULL),
(62, 'Eddie', 'System', 'Administrator', 1404310962, 2, NULL, NULL, NULL, NULL),
(63, 'Eddie', 'System', 'Administrator', 1404313976, 2, NULL, NULL, NULL, NULL),
(64, 'Eddie', 'System', 'Administrator', 1404313992, 2, NULL, NULL, NULL, NULL),
(66, 'Eddie', 'System', 'Administrator', 1404314113, 2, NULL, NULL, NULL, NULL),
(67, 'professor', 'Default', 'Professor', 1404314134, 3, NULL, NULL, NULL, NULL),
(68, 'student', 'Default', 'Student', 1404314138, 3, NULL, NULL, NULL, NULL),
(71, 'Eddie', 'System', 'Administrator', 1404314352, 2, NULL, NULL, NULL, NULL),
(74, 'Eddie', 'System', 'Administrator', 1404317442, 2, NULL, NULL, NULL, NULL),
(75, 'Eddie', 'System', 'Administrator', 1404317714, 2, NULL, NULL, NULL, NULL),
(76, 'Eddie', 'System', 'Administrator', 1404390573, 2, NULL, NULL, NULL, NULL),
(77, 'Eddie', 'System', 'Administrator', 1404473006, 2, NULL, NULL, NULL, NULL),
(78, 'Eddie', 'System', 'Administrator', 1404927524, 2, NULL, NULL, NULL, NULL),
(79, 'Eddie', 'System', 'Administrator', 1405259247, 2, NULL, NULL, NULL, NULL),
(84, 'Eddie', 'System', 'Administrator', 1405259469, 2, NULL, NULL, NULL, NULL),
(88, 'Eddie', 'System', 'Administrator', 1405259572, 2, NULL, NULL, NULL, NULL),
(90, 'Eddie', 'System', 'Administrator', 1405259609, 2, NULL, NULL, NULL, NULL),
(93, 'Eddie', 'System', 'Administrator', 1405259767, 2, NULL, NULL, NULL, NULL),
(95, 'Eddie', 'System', 'Administrator', 1405259790, 2, NULL, NULL, NULL, NULL),
(97, 'Eddie', 'System', 'Administrator', 1405259878, 2, NULL, NULL, NULL, NULL),
(101, 'Eddie', 'System', 'Administrator', 1405260005, 2, NULL, NULL, NULL, NULL),
(103, 'Eddie', 'System', 'Administrator', 1405260038, 2, NULL, NULL, NULL, NULL),
(115, 'Eddie', 'System', 'Administrator', 1405260113, 2, NULL, NULL, NULL, NULL),
(118, 'Eddie', 'System', 'Administrator', 1405260204, 2, NULL, NULL, NULL, NULL),
(120, 'Eddie', 'System', 'Administrator', 1405260233, 2, NULL, NULL, NULL, NULL),
(121, 'Eddie', 'System', 'Administrator', 1405260341, 325, NULL, NULL, '1', 'Klant a'),
(122, 'Eddie', 'System', 'Administrator', 1405260342, 325, NULL, NULL, '2', 'Klant b'),
(125, 'Eddie', 'System', 'Administrator', 1405260370, 2, NULL, NULL, NULL, NULL),
(135, 'Eddie', 'System', 'Administrator', 1405260864, 2, NULL, NULL, NULL, NULL),
(138, 'Eddie', 'System', 'Administrator', 1405410055, 2, NULL, NULL, NULL, NULL),
(139, 'Eddie', 'System', 'Administrator', 1406798458, 2, NULL, NULL, NULL, NULL),
(140, 'Eddie', 'System', 'Administrator', 1406899567, 2, NULL, NULL, NULL, NULL),
(147, 'Eddie', 'System', 'Administrator', 1406899796, 2, NULL, NULL, NULL, NULL),
(151, 'Eddie', 'System', 'Administrator', 1407262985, 2, NULL, NULL, NULL, NULL),
(153, 'Eddie', 'System', 'Administrator', 1407263022, 2, NULL, NULL, NULL, NULL),
(155, 'Eddie', 'System', 'Administrator', 1407263064, 2, NULL, NULL, NULL, NULL),
(158, 'Eddie', 'System', 'Administrator', 1407438648, 2, NULL, NULL, NULL, NULL),
(159, 'Eddie', 'System', 'Administrator', 1407438870, 2, NULL, NULL, NULL, NULL),
(160, 'Eddie', 'System', 'Administrator', 1407701568, 2, NULL, NULL, NULL, NULL),
(162, 'Eddie', 'System', 'Administrator', 1407701630, 2, NULL, NULL, NULL, NULL),
(164, 'Eddie', 'System', 'Administrator', 1407701699, 2, NULL, NULL, NULL, NULL),
(168, 'Eddie', 'System', 'Administrator', 1407701782, 2, NULL, NULL, NULL, NULL),
(171, 'Eddie', 'System', 'Administrator', 1408539744, 2, NULL, NULL, NULL, NULL),
(172, 'Eddie', 'System', 'Administrator', 1409003536, 2, NULL, NULL, NULL, NULL),
(175, 'Eddie', 'System', 'Administrator', 1409003761, 2, NULL, NULL, NULL, NULL),
(177, 'Eddie', 'System', 'Administrator', 1409036060, 2, NULL, NULL, NULL, NULL),
(181, 'Eddie', 'System', 'Administrator', 1409036192, 2, NULL, NULL, NULL, NULL),
(183, 'Eddie', 'System', 'Administrator', 1409036266, 2, NULL, NULL, NULL, NULL),
(185, 'Eddie', 'System', 'Administrator', 1409036419, 2, NULL, NULL, NULL, NULL),
(186, 'EddieDeelnemer', 'Eddie', 'Maas', 1409036595, 3, NULL, NULL, NULL, NULL),
(187, 'EddieDTS', 'Eddie', 'Maas', 1409036600, 3, NULL, NULL, NULL, NULL),
(188, 'KAT1', 'Karel', 'De grote', 1409036607, 3, NULL, NULL, NULL, NULL),
(189, 'EddieUser', 'Eddie', 'Maas', 1409036618, 3, NULL, NULL, NULL, NULL),
(190, 'Eddie', 'System', 'Administrator', 1409040817, 2, NULL, NULL, NULL, NULL),
(191, 'Eddie', 'System', 'Administrator', 1409040819, 2, NULL, NULL, NULL, NULL),
(192, 'DTSlid', 'DTS', 'lid', 1409053621, 1, NULL, NULL, NULL, 'killerinstinct'),
(193, 'DTSlid', 'DTS', 'lid', 1409053626, 151, '0', NULL, '24', NULL),
(194, 'DTSlid', 'DTS', 'lid', 1409053643, 51, '4', 'BHV', NULL, NULL),
(195, 'DTSlid', 'DTS', 'lid', 1409053644, 51, '5', 'EHBO', NULL, NULL),
(196, 'DTSlid', 'DTS', 'lid', 1409053646, 51, '6', 'Kantklossen', NULL, NULL),
(197, 'DTSlid', 'DTS', 'lid', 1409053770, 2, NULL, NULL, NULL, NULL),
(198, 'DTSlid', 'DTS', 'lid', 1409053797, 2, NULL, NULL, NULL, NULL),
(199, 'DTSlid', 'DTS', 'lid', 1409054189, 100, '8', 'BHV - deel 1', '3', 'Inleiding'),
(200, 'DTSlid', 'DTS', 'lid', 1409054206, 101, '8', 'BHV - deel 1', '3', 'Inleiding'),
(201, 'DTSlid', 'DTS', 'lid', 1409054232, 101, '8', 'BHV - deel 1', '3', 'Inleiding'),
(202, 'DTSlid', 'DTS', 'lid', 1409054273, 101, '8', 'BHV - deel 1', '3', 'Inleiding'),
(203, 'DTSlid', 'DTS', 'lid', 1409054303, 101, '8', 'BHV - deel 1', '3', 'Inleiding'),
(204, 'DTSlid', 'DTS', 'lid', 1409054323, 101, '8', 'BHV - deel 1', '3', 'Inleiding'),
(205, 'DTSlid', 'DTS', 'lid', 1409054677, 100, '8', 'BHV - deel 1', '5', 'Wetgeving'),
(206, 'DTSlid', 'DTS', 'lid', 1409054727, 101, '8', 'BHV - deel 1', '5', 'Wetgeving'),
(207, 'DTSlid', 'DTS', 'lid', 1409054786, 101, '8', 'BHV - deel 1', '5', 'Wetgeving'),
(208, 'DTSlid', 'DTS', 'lid', 1409054796, 101, '8', 'BHV - deel 1', '5', 'Wetgeving'),
(209, 'DTSlid', 'DTS', 'lid', 1409054817, 101, '8', 'BHV - deel 1', '5', 'Wetgeving'),
(210, 'DTSlid', 'DTS', 'lid', 1409054843, 101, '8', 'BHV - deel 1', '5', 'Wetgeving'),
(211, 'DTSlid', 'DTS', 'lid', 1409054905, 101, '8', 'BHV - deel 1', '5', 'Wetgeving'),
(212, 'DTSlid', 'DTS', 'lid', 1409054934, 101, '8', 'BHV - deel 1', '5', 'Wetgeving'),
(213, 'DTSlid', 'DTS', 'lid', 1409055012, 100, '8', 'BHV - deel 1', '6', 'BHV - toets'),
(214, 'DTSlid', 'DTS', 'lid', 1409055012, 75, '8', 'BHV - deel 1', NULL, NULL),
(215, 'Eddie', 'System', 'Administrator', 1409055506, 2, NULL, NULL, NULL, NULL),
(216, 'Eddie', 'System', 'Administrator', 1409055805, 2, NULL, NULL, NULL, NULL),
(217, 'klmpersoon1', 'Eddie ', 'Maas', 1409056274, 1, NULL, NULL, NULL, 'klmpersoon1'),
(218, 'klmpersoon1', 'Eddie ', 'Maas', 1409056275, 5, NULL, NULL, NULL, 'klmpersoon1'),
(219, 'klmpersoon1', 'Eddie ', 'Maas', 1409056276, 2, NULL, NULL, NULL, NULL),
(220, 'Eddie', 'System', 'Administrator', 1409056589, 2, NULL, NULL, NULL, NULL),
(221, 'klmpersoon1', 'Eddie ', 'Maas', 1409057232, 2, NULL, NULL, NULL, NULL),
(222, 'klmpersoon1', 'Eddie ', 'Maas', 1409057254, 325, NULL, NULL, '3', 'KLM'),
(223, 'klmpersoon1', 'Eddie ', 'Maas', 1409057254, 51, '4', 'BHV', NULL, NULL),
(224, 'klmpersoon1', 'Eddie ', 'Maas', 1409057256, 51, '5', 'EHBO', NULL, NULL),
(225, 'klmpersoon1', 'Eddie ', 'Maas', 1409057256, 51, '6', 'Kantklossen', NULL, NULL),
(226, 'Eddie', 'System', 'Administrator', 1409057558, 2, NULL, NULL, NULL, NULL),
(227, 'klmpersoon1', 'Eddie ', 'Maas', 1409057586, 51, '4', 'BHV', NULL, NULL),
(228, 'klmpersoon1', 'Eddie ', 'Maas', 1409057603, 2, NULL, NULL, NULL, NULL),
(229, 'klmpersoon1', 'Eddie ', 'Maas', 1409057606, 27, '8', 'BHV - deel 1', NULL, NULL),
(230, 'klmpersoon1', 'Eddie ', 'Maas', 1409057648, 27, '8', 'BHV - deel 1', NULL, NULL),
(231, 'Eddie', 'System', 'Administrator', 1409057704, 2, NULL, NULL, NULL, NULL),
(232, 'klmpersoon2', 'KLM', 'persoon2', 1409058095, 1, NULL, NULL, NULL, 'klmpersoon2'),
(233, 'klmpersoon2', 'KLM', 'persoon2', 1409058095, 5, NULL, NULL, NULL, 'klmpersoon2'),
(234, 'klmpersoon2', 'KLM', 'persoon2', 1409058095, 2, NULL, NULL, NULL, NULL),
(235, 'klmpersoon2', 'KLM', 'persoon2', 1409058104, 325, NULL, NULL, '3', 'KLM'),
(236, 'klmpersoon2', 'KLM', 'persoon2', 1409058105, 51, '4', 'BHV', NULL, NULL),
(237, 'klmpersoon2', 'KLM', 'persoon2', 1409058105, 51, '5', 'EHBO', NULL, NULL),
(238, 'klmpersoon2', 'KLM', 'persoon2', 1409058107, 51, '6', 'Kantklossen', NULL, NULL),
(239, 'Eddie', 'System', 'Administrator', 1409058171, 2, NULL, NULL, NULL, NULL),
(240, 'Eddie', 'System', 'Administrator', 1409058172, 2, NULL, NULL, NULL, NULL),
(241, 'klmpersoon3', 'KLM', 'Persoon', 1409058214, 1, NULL, NULL, NULL, 'klmpersoon3'),
(242, 'klmpersoon3', 'KLM', 'Persoon', 1409058214, 5, NULL, NULL, NULL, 'klmpersoon3'),
(243, 'klmpersoon3', 'KLM', 'Persoon', 1409058214, 2, NULL, NULL, NULL, NULL),
(244, 'klmpersoon3', 'KLM', 'Persoon', 1409058220, 325, NULL, NULL, '3', 'KLM'),
(245, 'Eddie', 'System', 'Administrator', 1409058253, 2, NULL, NULL, NULL, NULL),
(246, 'klmpersoon3', 'KLM', 'Persoon', 1409058303, 2, NULL, NULL, NULL, NULL),
(247, 'Eddie', 'System', 'Administrator', 1409058329, 2, NULL, NULL, NULL, NULL),
(248, 'klmpersoon3', 'KLM', 'Persoon', 1409058372, 50, '4', 'BHV', NULL, NULL),
(249, 'klmpersoon3', 'KLM', 'Persoon', 1409058469, 2, NULL, NULL, NULL, NULL),
(250, 'klmpersoon3', 'KLM', 'Persoon', 1409058484, 50, '4', 'BHV', NULL, NULL),
(251, 'klmpersoon3', 'KLM', 'Persoon', 1409058487, 50, '5', 'EHBO', NULL, NULL),
(252, 'klmpersoon3', 'KLM', 'Persoon', 1409058487, 50, '6', 'Kantklossen', NULL, NULL),
(253, 'klmpersoon4', 'Eddie', 'Maas', 1409058551, 1, NULL, NULL, NULL, 'klmpersoon4'),
(254, 'klmpersoon4', 'Eddie', 'Maas', 1409058552, 5, NULL, NULL, NULL, 'klmpersoon4'),
(255, 'klmpersoon4', 'Eddie', 'Maas', 1409058552, 2, NULL, NULL, NULL, NULL),
(256, 'klmpersoon4', 'Eddie', 'Maas', 1409058558, 325, NULL, NULL, '3', 'KLM'),
(257, 'klmpersoon4', 'Eddie', 'Maas', 1409058559, 50, '4', 'BHV', NULL, NULL),
(258, 'klmpersoon4', 'Eddie', 'Maas', 1409058559, 50, '5', 'EHBO', NULL, NULL),
(259, 'klmpersoon4', 'Eddie', 'Maas', 1409058559, 50, '6', 'Kantklossen', NULL, NULL),
(260, 'klmpersoon4', 'Eddie', 'Maas', 1409058565, 27, '8', 'BHV - deel 1', NULL, NULL),
(261, 'klmpersoon4', 'Eddie', 'Maas', 1409058629, 103, '8', 'BHV - deel 1', '5', 'Wetgeving'),
(262, 'klmpersoon4', 'Eddie', 'Maas', 1409058641, 76, '8', 'BHV - deel 1', '1', 'BHV - toets'),
(263, 'klmpersoon4', 'Eddie', 'Maas', 1409058671, 77, '8', 'BHV - deel 1', '1', 'BHV - toets'),
(264, 'klmpersoon4', 'Eddie', 'Maas', 1409058672, 103, '8', 'BHV - deel 1', '6', 'BHV - toets'),
(265, 'DTSlid', 'DTS', 'lid', 1409058742, 2, NULL, NULL, NULL, NULL),
(266, 'DTSlid', 'DTS', 'lid', 1409058787, 2, NULL, NULL, NULL, NULL),
(267, 'DTSlid', 'DTS', 'lid', 1409058817, 151, '0', NULL, '28', NULL),
(268, 'DTSlid', 'DTS', 'lid', 1409072719, 2, NULL, NULL, NULL, NULL),
(269, 'Eddie', 'System', 'Administrator', 1409073167, 2, NULL, NULL, NULL, NULL),
(270, 'klmpersoon5', 'KLM', 'persoon', 1409074288, 1, NULL, NULL, NULL, 'klmpersoon5'),
(271, 'klmpersoon5', 'KLM', 'persoon', 1409074289, 5, NULL, NULL, NULL, 'klmpersoon5'),
(272, 'klmpersoon5', 'KLM', 'persoon', 1409074289, 2, NULL, NULL, NULL, NULL),
(273, 'klmpersoon5', 'KLM', 'persoon', 1409074394, 325, NULL, NULL, '3', 'KLM'),
(274, 'klmpersoon5', 'KLM', 'persoon', 1409074394, 50, '4', 'BHV', NULL, NULL),
(275, 'klmpersoon5', 'KLM', 'persoon', 1409074394, 50, '5', 'EHBO', NULL, NULL),
(276, 'klmpersoon5', 'KLM', 'persoon', 1409074394, 50, '6', 'Kantklossen', NULL, NULL),
(277, 'klmpersoon5', 'KLM', 'persoon', 1409074443, 27, '8', 'BHV - deel 1', NULL, NULL),
(278, 'klmpersoon5', 'KLM', 'persoon', 1409074470, 103, '8', 'BHV - deel 1', '3', 'Inleiding'),
(279, 'klmpersoon5', 'KLM', 'persoon', 1409074530, 103, '8', 'BHV - deel 1', '4', 'Belangrijke punten bij verlenen van eerste hulp'),
(280, 'klmpersoon5', 'KLM', 'persoon', 1409074539, 103, '8', 'BHV - deel 1', '4', 'Belangrijke punten bij verlenen van eerste hulp'),
(281, 'klmpersoon5', 'KLM', 'persoon', 1409074539, 103, '8', 'BHV - deel 1', '4', 'Belangrijke punten bij verlenen van eerste hulp'),
(282, 'klmpersoon5', 'KLM', 'persoon', 1409074547, 76, '8', 'BHV - deel 1', '1', 'BHV - toets'),
(283, 'klmpersoon5', 'KLM', 'persoon', 1409074582, 77, '8', 'BHV - deel 1', '1', 'BHV - toets'),
(284, 'klmpersoon5', 'KLM', 'persoon', 1409074582, 103, '8', 'BHV - deel 1', '6', 'BHV - toets'),
(285, 'klmpersoon5', 'KLM', 'persoon', 1409074610, 103, '8', 'BHV - deel 1', '5', 'Wetgeving'),
(286, 'klmpersoon5', 'KLM', 'persoon', 1409074610, 29, '8', 'BHV - deel 1', NULL, NULL),
(287, 'klmpersoon5', 'KLM', 'persoon', 1409074623, 27, '9', 'BHV - deel 2', NULL, NULL),
(288, 'DTSlid', 'DTS', 'lid', 1409074649, 2, NULL, NULL, NULL, NULL),
(289, 'Eddie', 'System', 'Administrator', 1409074703, 2, NULL, NULL, NULL, NULL),
(290, 'Eddie', 'System', 'Administrator', 1409232917, 2, NULL, NULL, NULL, NULL),
(291, 'Eddie', 'System', 'Administrator', 1409232923, 2, NULL, NULL, NULL, NULL),
(292, 'Eddie', 'System', 'Administrator', 1409847254, 2, NULL, NULL, NULL, NULL),
(293, 'Eddie', 'System', 'Administrator', 1410804313, 2, NULL, NULL, NULL, NULL),
(294, 'Eddie', 'System', 'Administrator', 1419968958, 2, NULL, NULL, NULL, NULL),
(295, 'DTSlid', 'DTS', 'lid', 1419968996, 2, NULL, NULL, NULL, NULL),
(296, 'Eddie', 'System', 'Administrator', 1425159272, 2, NULL, NULL, NULL, NULL),
(297, 'Eddie', 'System', 'Administrator', 1426319608, 2, NULL, NULL, NULL, NULL),
(298, 'Eddie', 'System', 'Administrator', 1440673037, 2, NULL, NULL, NULL, NULL),
(299, 'DTSlid', 'DTS', 'lid', 1440673051, 2, NULL, NULL, NULL, NULL),
(300, 'DTSlid', 'DTS', 'lid', 1440673109, 101, '8', 'BHV - deel 1', '3', 'Inleiding'),
(301, 'DTSlid', 'DTS', 'lid', 1440673152, 101, '8', 'BHV - deel 1', '3', 'Inleiding'),
(302, 'DTSlid', 'DTS', 'lid', 1440673195, 101, '8', 'BHV - deel 1', '3', 'Inleiding'),
(303, 'Eddie', 'System', 'Administrator', 1440673296, 2, NULL, NULL, NULL, NULL),
(304, 'DTSlid', 'DTS', 'lid', 1440673458, 2, NULL, NULL, NULL, NULL),
(305, 'Eddie', 'System', 'Administrator', 1440674402, 2, NULL, NULL, NULL, NULL),
(306, 'Eddie', 'System', 'Administrator', 1440674504, 2, NULL, NULL, NULL, NULL),
(307, 'Eddie', 'System', 'Administrator', 1440674822, 2, NULL, NULL, NULL, NULL),
(308, 'Eddie', 'System', 'Administrator', 1440674918, 2, NULL, NULL, NULL, NULL),
(309, 'Eddie', 'System', 'Administrator', 1440674992, 2, NULL, NULL, NULL, NULL),
(310, 'Eddie', 'System', 'Administrator', 1440675252, 2, NULL, NULL, NULL, NULL),
(311, 'DTSlid', 'DTS', 'lid', 1440675968, 2, NULL, NULL, NULL, NULL),
(312, 'DTSlid', 'DTS', 'lid', 1440675998, 101, '8', 'BHV - deel 1', '3', 'Inleiding'),
(313, 'DTSlid', 'DTS', 'lid', 1440676030, 101, '8', 'BHV - deel 1', '3', 'Inleiding'),
(314, 'Eddie', 'System', 'Administrator', 1440676226, 2, NULL, NULL, NULL, NULL),
(315, 'Eddie', 'System', 'Administrator', 1440676229, 2, NULL, NULL, NULL, NULL),
(316, 'DTSlid', 'DTS', 'lid', 1440676269, 2, NULL, NULL, NULL, NULL),
(317, 'Eddie', 'System', 'Administrator', 1440828199, 2, NULL, NULL, NULL, NULL),
(318, 'Eddie', 'System', 'Administrator', 1441865040, 2, NULL, NULL, NULL, NULL),
(319, 'DTSlid', 'DTS', 'lid', 1441865067, 2, NULL, NULL, NULL, NULL),
(320, 'Eddie', 'System', 'Administrator', 1441865105, 2, NULL, NULL, NULL, NULL),
(321, 'Eddie', 'System', 'Administrator', 1446466845, 2, NULL, NULL, NULL, NULL),
(322, 'Eddie', 'System', 'Administrator', 1446466891, 2, NULL, NULL, NULL, NULL),
(323, 'DTSlid', 'DTS', 'lid', 1446466942, 2, NULL, NULL, NULL, NULL),
(324, 'Eddie', 'System', 'Administrator', 1447747581, 2, NULL, NULL, NULL, NULL),
(325, 'DTSlid', 'DTS', 'lid', 1447747603, 2, NULL, NULL, NULL, NULL),
(326, 'DTSlid', 'DTS', 'lid', 1447748416, 100, '8', 'BHV - deel 1', '11', 'iframe test'),
(327, 'DTSlid', 'DTS', 'lid', 1447748416, 101, '8', 'BHV - deel 1', '4', 'Belangrijke punten bij verlenen van eerste hulp'),
(328, 'DTSlid', 'DTS', 'lid', 1447748490, 101, '8', 'BHV - deel 1', '11', 'iframe test'),
(329, 'DTSlid', 'DTS', 'lid', 1447748534, 101, '8', 'BHV - deel 1', '11', 'iframe test'),
(330, 'Eddie', 'System', 'Administrator', 1447750943, 2, NULL, NULL, NULL, NULL),
(331, 'DTSlid', 'DTS', 'lid', 1447750973, 2, NULL, NULL, NULL, NULL),
(332, 'Eddie', 'System', 'Administrator', 1447750993, 2, NULL, NULL, NULL, NULL),
(333, 'Eddie', 'System', 'Administrator', 1447750993, 2, NULL, NULL, NULL, NULL),
(334, 'Eddie', 'System', 'Administrator', 1447755925, 2, NULL, NULL, NULL, NULL),
(335, 'Eddie', 'System', 'Administrator', 1447755926, 2, NULL, NULL, NULL, NULL),
(336, 'DTSlid', 'DTS', 'lid', 1447755930, 2, NULL, NULL, NULL, NULL),
(337, 'DTSlid', 'DTS', 'lid', 1447756621, 101, '8', 'BHV - deel 1', '9', 'Geschiedenis peritoneaal dialyse 16112015'),
(338, 'Eddie', 'System', 'Administrator', 1447756972, 2, NULL, NULL, NULL, NULL),
(339, 'test', 'test', 'test', 1447757192, 1, NULL, NULL, NULL, 'testtest'),
(340, 'test', 'test', 'test', 1447757192, 151, '0', NULL, NULL, NULL),
(341, 'test', 'test', 'test', 1447757257, 50, '4', 'BHV', NULL, NULL),
(342, 'test', 'test', 'test', 1447757301, 2, NULL, NULL, NULL, NULL),
(343, 'test', 'test', 'test', 1447757305, 27, '8', 'BHV - deel 1', NULL, NULL),
(344, 'Eddie', 'System', 'Administrator', 1447757392, 2, NULL, NULL, NULL, NULL),
(345, 'test', 'test', 'test', 1447757862, 2, NULL, NULL, NULL, NULL),
(346, 'Eddie', 'System', 'Administrator', 1447757873, 2, NULL, NULL, NULL, NULL),
(347, 'test', 'test', 'test', 1447757891, 28, '8', 'BHV - deel 1', NULL, NULL),
(348, 'test', 'test', 'test', 1447757891, 28, '9', 'BHV - deel 2', NULL, NULL),
(349, 'test', 'test', 'test', 1447757891, 53, '4', 'BHV', NULL, NULL),
(350, 'test', 'test', 'test', 1447757901, 2, NULL, NULL, NULL, NULL),
(351, 'test', 'test', 'test', 1447757912, 325, NULL, NULL, '6', 'Goudvis'),
(352, 'Eddie', 'System', 'Administrator', 1447757951, 2, NULL, NULL, NULL, NULL),
(353, 'test', 'test', 'test', 1447757979, 50, '4', 'BHV', NULL, NULL),
(354, 'test', 'test', 'test', 1447757987, 28, '8', 'BHV - deel 1', NULL, NULL),
(355, 'test', 'test', 'test', 1447757987, 28, '9', 'BHV - deel 2', NULL, NULL),
(356, 'test', 'test', 'test', 1447757987, 53, '4', 'BHV', NULL, NULL),
(357, 'test', 'test', 'test', 1447758031, 325, NULL, NULL, '6', 'Goudvis'),
(358, 'test', 'test', 'test', 1447758063, 2, NULL, NULL, NULL, NULL),
(359, 'test', 'test', 'test', 1447758081, 325, NULL, NULL, '6', 'Goudvis'),
(360, 'Eddie', 'System', 'Administrator', 1447758113, 2, NULL, NULL, NULL, NULL),
(361, 'test', 'test', 'test', 1447758368, 2, NULL, NULL, NULL, NULL),
(362, 'Eddie', 'System', 'Administrator', 1447758407, 2, NULL, NULL, NULL, NULL),
(363, 'Eddie', 'System', 'Administrator', 1447761224, 2, NULL, NULL, NULL, NULL),
(364, 'eddieedease', 'Eddie', 'Maas', 1447761831, 1, NULL, NULL, NULL, 'eddieedease'),
(365, 'eddieedease', 'Eddie', 'Maas', 1447761831, 5, NULL, NULL, NULL, 'eddieedease'),
(366, 'Eddie', 'System', 'Administrator', 1447762068, 2, NULL, NULL, NULL, NULL),
(367, 'eddieedease', 'Eddie', 'Maas', 1447762224, 2, NULL, NULL, NULL, NULL),
(368, 'eddieedease', 'Eddie', 'Maas', 1447762232, 325, NULL, NULL, '6', 'Goudvis'),
(369, 'Eddie', 'System', 'Administrator', 1447762255, 2, NULL, NULL, NULL, NULL),
(370, 'eddieedease', 'Eddie', 'Maas', 1447762316, 2, NULL, NULL, NULL, NULL),
(371, 'Eddie', 'System', 'Administrator', 1447762786, 2, NULL, NULL, NULL, NULL),
(372, 'eddieedease', 'Eddie', 'Maas', 1447762845, 325, NULL, NULL, '6', 'Goudvis'),
(373, 'eddieedease', 'Eddie', 'Maas', 1447762846, 325, NULL, NULL, '6', 'Goudvis'),
(374, 'eddieedease', 'Eddie', 'Maas', 1447762848, 325, NULL, NULL, '6', 'Goudvis'),
(375, 'eddieedease', 'Eddie', 'Maas', 1447763008, 2, NULL, NULL, NULL, NULL),
(376, 'eddieedease', 'Eddie', 'Maas', 1447763016, 325, NULL, NULL, '6', 'Goudvis'),
(377, 'Eddie', 'System', 'Administrator', 1447763037, 2, NULL, NULL, NULL, NULL),
(378, 'eddieedease', 'Eddie', 'Maas', 1447763128, 50, '4', 'BHV', NULL, NULL),
(379, 'eddieedease', 'Eddie', 'Maas', 1447763131, 50, '4', 'BHV', NULL, NULL),
(380, 'eddieedease', 'Eddie', 'Maas', 1447763147, 2, NULL, NULL, NULL, NULL),
(381, 'Eddie', 'System', 'Administrator', 1447763176, 2, NULL, NULL, NULL, NULL),
(382, 'Eddie', 'System', 'Administrator', 1447763176, 2, NULL, NULL, NULL, NULL),
(383, 'eddieedease', 'Eddie', 'Maas', 1447763391, 2, NULL, NULL, NULL, NULL),
(384, 'Eddie', 'System', 'Administrator', 1447763408, 2, NULL, NULL, NULL, NULL),
(385, 'Eddie', 'System', 'Administrator', 1447763516, 2, NULL, NULL, NULL, NULL),
(386, 'eddieedease', 'Eddie', 'Maas', 1447763557, 2, NULL, NULL, NULL, NULL),
(387, 'eddieedease', 'Eddie', 'Maas', 1447763561, 27, '8', 'BHV - deel 1', NULL, NULL),
(388, 'Eddie', 'System', 'Administrator', 1447763589, 2, NULL, NULL, NULL, NULL),
(389, 'DTSlid', 'DTS', 'lid', 1447763597, 28, '8', 'BHV - deel 1', NULL, NULL),
(390, 'eddieedease', 'Eddie', 'Maas', 1447763597, 28, '8', 'BHV - deel 1', NULL, NULL),
(391, 'klmpersoon1', 'Eddie ', 'Maas', 1447763597, 28, '8', 'BHV - deel 1', NULL, NULL),
(392, 'klmpersoon2', 'KLM', 'persoon2', 1447763597, 28, '8', 'BHV - deel 1', NULL, NULL),
(393, 'klmpersoon3', 'KLM', 'Persoon', 1447763597, 28, '8', 'BHV - deel 1', NULL, NULL),
(394, 'klmpersoon4', 'Eddie', 'Maas', 1447763597, 28, '8', 'BHV - deel 1', NULL, NULL),
(395, 'klmpersoon5', 'KLM', 'persoon', 1447763597, 28, '8', 'BHV - deel 1', NULL, NULL),
(396, 'DTSlid', 'DTS', 'lid', 1447763597, 28, '9', 'BHV - deel 2', NULL, NULL),
(397, 'eddieedease', 'Eddie', 'Maas', 1447763597, 28, '9', 'BHV - deel 2', NULL, NULL),
(398, 'klmpersoon1', 'Eddie ', 'Maas', 1447763597, 28, '9', 'BHV - deel 2', NULL, NULL),
(399, 'klmpersoon2', 'KLM', 'persoon2', 1447763597, 28, '9', 'BHV - deel 2', NULL, NULL),
(400, 'klmpersoon3', 'KLM', 'Persoon', 1447763597, 28, '9', 'BHV - deel 2', NULL, NULL),
(401, 'klmpersoon4', 'Eddie', 'Maas', 1447763597, 28, '9', 'BHV - deel 2', NULL, NULL),
(402, 'klmpersoon5', 'KLM', 'persoon', 1447763597, 28, '9', 'BHV - deel 2', NULL, NULL),
(403, 'DTSlid', 'DTS', 'lid', 1447763597, 53, '4', 'BHV', NULL, NULL),
(404, 'eddieedease', 'Eddie', 'Maas', 1447763597, 53, '4', 'BHV', NULL, NULL),
(405, 'klmpersoon1', 'Eddie ', 'Maas', 1447763597, 53, '4', 'BHV', NULL, NULL),
(406, 'klmpersoon2', 'KLM', 'persoon2', 1447763597, 53, '4', 'BHV', NULL, NULL),
(407, 'klmpersoon3', 'KLM', 'Persoon', 1447763597, 53, '4', 'BHV', NULL, NULL),
(408, 'klmpersoon4', 'Eddie', 'Maas', 1447763597, 53, '4', 'BHV', NULL, NULL),
(409, 'klmpersoon5', 'KLM', 'persoon', 1447763597, 53, '4', 'BHV', NULL, NULL),
(410, 'test', 'test', 'test', 1447763597, 53, '4', 'BHV', NULL, NULL),
(411, 'DTSlid', 'DTS', 'lid', 1447763601, 28, '4', 'EHBO - deel 1', NULL, NULL),
(412, 'klmpersoon1', 'Eddie ', 'Maas', 1447763601, 28, '4', 'EHBO - deel 1', NULL, NULL),
(413, 'klmpersoon2', 'KLM', 'persoon2', 1447763601, 28, '4', 'EHBO - deel 1', NULL, NULL),
(414, 'klmpersoon3', 'KLM', 'Persoon', 1447763601, 28, '4', 'EHBO - deel 1', NULL, NULL),
(415, 'klmpersoon4', 'Eddie', 'Maas', 1447763601, 28, '4', 'EHBO - deel 1', NULL, NULL),
(416, 'klmpersoon5', 'KLM', 'persoon', 1447763601, 28, '4', 'EHBO - deel 1', NULL, NULL),
(417, 'DTSlid', 'DTS', 'lid', 1447763601, 28, '5', 'EHBO - deel 2', NULL, NULL),
(418, 'klmpersoon1', 'Eddie ', 'Maas', 1447763601, 28, '5', 'EHBO - deel 2', NULL, NULL),
(419, 'klmpersoon2', 'KLM', 'persoon2', 1447763601, 28, '5', 'EHBO - deel 2', NULL, NULL),
(420, 'klmpersoon3', 'KLM', 'Persoon', 1447763601, 28, '5', 'EHBO - deel 2', NULL, NULL),
(421, 'klmpersoon4', 'Eddie', 'Maas', 1447763601, 28, '5', 'EHBO - deel 2', NULL, NULL),
(422, 'klmpersoon5', 'KLM', 'persoon', 1447763601, 28, '5', 'EHBO - deel 2', NULL, NULL),
(423, 'DTSlid', 'DTS', 'lid', 1447763601, 53, '5', 'EHBO', NULL, NULL),
(424, 'klmpersoon1', 'Eddie ', 'Maas', 1447763601, 53, '5', 'EHBO', NULL, NULL),
(425, 'klmpersoon2', 'KLM', 'persoon2', 1447763601, 53, '5', 'EHBO', NULL, NULL),
(426, 'klmpersoon3', 'KLM', 'Persoon', 1447763601, 53, '5', 'EHBO', NULL, NULL),
(427, 'klmpersoon4', 'Eddie', 'Maas', 1447763601, 53, '5', 'EHBO', NULL, NULL),
(428, 'klmpersoon5', 'KLM', 'persoon', 1447763601, 53, '5', 'EHBO', NULL, NULL),
(429, 'DTSlid', 'DTS', 'lid', 1447763605, 28, '10', 'Kantklossen', NULL, NULL),
(430, 'klmpersoon1', 'Eddie ', 'Maas', 1447763605, 28, '10', 'Kantklossen', NULL, NULL),
(431, 'klmpersoon2', 'KLM', 'persoon2', 1447763605, 28, '10', 'Kantklossen', NULL, NULL),
(432, 'klmpersoon3', 'KLM', 'Persoon', 1447763605, 28, '10', 'Kantklossen', NULL, NULL),
(433, 'klmpersoon4', 'Eddie', 'Maas', 1447763605, 28, '10', 'Kantklossen', NULL, NULL),
(434, 'klmpersoon5', 'KLM', 'persoon', 1447763605, 28, '10', 'Kantklossen', NULL, NULL),
(435, 'DTSlid', 'DTS', 'lid', 1447763605, 53, '6', 'Kantklossen', NULL, NULL),
(436, 'klmpersoon1', 'Eddie ', 'Maas', 1447763605, 53, '6', 'Kantklossen', NULL, NULL),
(437, 'klmpersoon2', 'KLM', 'persoon2', 1447763605, 53, '6', 'Kantklossen', NULL, NULL),
(438, 'klmpersoon3', 'KLM', 'Persoon', 1447763605, 53, '6', 'Kantklossen', NULL, NULL),
(439, 'klmpersoon4', 'Eddie', 'Maas', 1447763605, 53, '6', 'Kantklossen', NULL, NULL),
(440, 'klmpersoon5', 'KLM', 'persoon', 1447763605, 53, '6', 'Kantklossen', NULL, NULL),
(441, 'eddieedease', 'Eddie', 'Maas', 1447764773, 2, NULL, NULL, NULL, NULL),
(442, 'eddieedease', 'Eddie', 'Maas', 1447764786, 325, NULL, NULL, '8', 'groep'),
(443, 'Eddie', 'System', 'Administrator', 1447765248, 2, NULL, NULL, NULL, NULL),
(444, 'edease', 'eddie', 'Maas', 1447765352, 1, NULL, NULL, NULL, '1!Killerinstinct'),
(445, 'edease', 'eddie', 'Maas', 1447765352, 5, NULL, NULL, NULL, '1!Killerinstinct'),
(446, 'edease', 'eddie', 'Maas', 1447765352, 2, NULL, NULL, NULL, NULL),
(447, 'edease', 'eddie', 'Maas', 1447765365, 325, NULL, NULL, '9', 'vette groep!'),
(448, 'edease', 'eddie', 'Maas', 1447765365, 50, '7', 'Crusus  1', NULL, NULL),
(449, 'Eddie', 'System', 'Administrator', 1447766369, 2, NULL, NULL, NULL, NULL),
(450, 'edease', 'eddie', 'Maas', 1447766447, 2, NULL, NULL, NULL, NULL),
(451, 'Eddie', 'System', 'Administrator', 1447766473, 2, NULL, NULL, NULL, NULL),
(452, 'Eddie', 'System', 'Administrator', 1447766552, 2, NULL, NULL, NULL, NULL),
(453, 'edease', 'eddie', 'Maas', 1447766563, 2, NULL, NULL, NULL, NULL),
(454, 'Eddie', 'System', 'Administrator', 1448398893, 2, NULL, NULL, NULL, NULL),
(455, 'DTSlid', 'DTS', 'lid', 1448398923, 2, NULL, NULL, NULL, NULL),
(456, 'Eddie', 'System', 'Administrator', 1448398985, 2, NULL, NULL, NULL, NULL),
(457, 'test', 'test', 'test', 1448398992, 2, NULL, NULL, NULL, NULL),
(458, 'Eddie', 'System', 'Administrator', 1448399005, 2, NULL, NULL, NULL, NULL),
(459, 'edease', 'eddie', 'Maas', 1448399073, 2, NULL, NULL, NULL, NULL),
(460, 'edease', 'eddie', 'Maas', 1448399093, 27, '4', 'EHBO - deel 1', NULL, NULL),
(461, 'Eddie', 'System', 'Administrator', 1448399125, 2, NULL, NULL, NULL, NULL),
(462, 'DTSlid', 'DTS', 'lid', 1448399211, 51, '7', 'Crusus  1', NULL, NULL),
(463, 'DTSlid', 'DTS', 'lid', 1448399227, 2, NULL, NULL, NULL, NULL),
(464, 'Eddie', 'System', 'Administrator', 1448632735, 2, NULL, NULL, NULL, NULL),
(465, 'Eddie', 'System', 'Administrator', 1448977752, 2, NULL, NULL, NULL, NULL),
(466, 'Eddie', 'System', 'Administrator', 1451476210, 2, NULL, NULL, NULL, NULL),
(467, 'eddieedease', 'Eddie', 'Maas', 1451476424, 325, NULL, NULL, '10', 'Nog een groep'),
(468, 'klmpersoon2', 'KLM', 'persoon2', 1451476424, 325, NULL, NULL, '10', 'Nog een groep'),
(469, 'klmpersoon3', 'KLM', 'Persoon', 1451476426, 325, NULL, NULL, '10', 'Nog een groep'),
(470, 'test', 'test', 'test', 1451476430, 325, NULL, NULL, '10', 'Nog een groep'),
(471, 'edease', 'eddie', 'Maas', 1451476434, 325, NULL, NULL, '10', 'Nog een groep'),
(472, 'DTSlid', 'DTS', 'lid', 1451476553, 2, NULL, NULL, NULL, NULL),
(473, 'DTSlid', 'DTS', 'lid', 1451476624, 100, '4', 'EHBO - deel 1', '14', 'Toets EHBO'),
(474, 'DTSlid', 'DTS', 'lid', 1451476624, 75, '4', 'EHBO - deel 1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `event_notifications`
--

CREATE TABLE `event_notifications` (
`id` mediumint(8) unsigned NOT NULL,
  `event_type` int(11) NOT NULL,
  `after_time` int(10) NOT NULL DEFAULT '0',
  `send_conditions` text,
  `send_recipients` int(1) DEFAULT '1',
  `subject` varchar(255) NOT NULL,
  `message` text,
  `active` tinyint(1) DEFAULT '1',
  `html_message` tinyint(1) DEFAULT '0',
  `send_immediately` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event_notifications`
--

INSERT INTO `event_notifications` (`id`, `event_type`, `after_time`, `send_conditions`, `send_recipients`, `subject`, `message`, `active`, `html_message`, `send_immediately`) VALUES
(1, 4, 0, 'a:0:{}', 1, 'Recover your password', 'Dear user ###users_name###,<br><br>This is an automated email sent from ###host_name### because you asked to recover your password. Please click the confirmation link below:.<br><br>###host_name###/index.php?ctg=reset_pwd&login=###users_login###&id=###md5(###users_login###)###<br><br>Alternatively, you may copy the link and paste it in your browser&#039;s address field.<br>Clicking on the link will confirm that your email address is valid so a new password can be sent to you. <br>For further information you may contact the system administrator through the following URL: ###host_name###/index.php?ctg=contact <br><br>With kind regards<br>---<br>The administration group<br>###site_name###<br>###site_motto###<br>This is an automated email sent from the address: ###host_name### on ###date###<br><br>', 1, 0, 1),
(2, 7, 0, 'a:0:{}', 1, 'Recover your password', 'Dear user ###users_name###,<br><br>This is an automated email sent from ###host_name### with your new account password. <br>Your new password is: <br><br>###new_password###<br>\n                              <br>For further information you may contact the system administrator through the following URL: ###host_name###/index.php?ctg=contact <br><br>With kind regards<br>---<br>The administration group<br>###site_name###<br>###site_motto###<br>This is an automated email sent from the address: ###host_name### on ###date###', 1, 0, 1),
(3, 6, 0, 'a:0:{}', 1, 'Account activation email', 'Dear user ###users_name###,<br><br>Welcome to our eLearning platform.! <br>Please, follow link below to activate your account:<br>###host_name###/index.php?account=###users_login###&key=###timestamp###<br><br><br>This is an automated email sent from the address: ###host_name### on ###date###<br>For further information you may contact the system administrator through the following URL: ###host_name###/index.php?ctg=contact <br><br>With kind regards<br>---<br>The administration group<br>###site_name###<br>###site_motto###<br>', 1, 0, 1),
(4, 5, 0, 'a:0:{}', 1, 'Registration email', 'Dear user ###users_name###,<br><br>Welcome to our eLearning platform. <br>Your account was successfully created with the following personal information:<br><br>Login: ###users_login###<br>First name: ###users_name###<br>Last name: ###users_surname###<br>Email address: ###users_email###<br>Language: ###users_language###<br>Comments: ###users_comments###<br><br>For further information you may contact the system administrator through the following URL: ###host_name###/index.php?ctg=contact <br><br>With kind regards<br>---<br>The administration group<br>###site_name###<br>###site_motto###<br>', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
`id` mediumint(8) unsigned NOT NULL,
  `path` text NOT NULL,
  `users_LOGIN` varchar(100) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  `description` text,
  `groups_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `access` smallint(3) unsigned NOT NULL DEFAULT '755',
  `shared` mediumint(8) unsigned DEFAULT '0',
  `metadata` text
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `path`, `users_LOGIN`, `timestamp`, `description`, `groups_ID`, `access`, `shared`, `metadata`) VALUES
(3, 'upload/professor/temp/16_exported.zip', '', 1365429312, NULL, 0, 755, 0, 'a:6:{s:5:"title";s:15:"16_exported.zip";s:7:"creator";s:17:"Default Professor";s:9:"publisher";s:17:"Default Professor";s:11:"contributor";s:17:"Default Professor";s:4:"date";s:10:"2013/04/08";s:4:"type";s:4:"file";}'),
(4, 'upload/professor/temp/17_exported.zip', '', 1365429312, NULL, 0, 755, 0, 'a:6:{s:5:"title";s:15:"17_exported.zip";s:7:"creator";s:17:"Default Professor";s:9:"publisher";s:17:"Default Professor";s:11:"contributor";s:17:"Default Professor";s:4:"date";s:10:"2013/04/08";s:4:"type";s:4:"file";}'),
(5, 'upload/professor/temp/18_exported.zip', '', 1365429312, NULL, 0, 755, 0, 'a:6:{s:5:"title";s:15:"18_exported.zip";s:7:"creator";s:17:"Default Professor";s:9:"publisher";s:17:"Default Professor";s:11:"contributor";s:17:"Default Professor";s:4:"date";s:10:"2013/04/08";s:4:"type";s:4:"file";}'),
(7, 'www/content/lessons/6/SCORM_2004_4ED_v1_1_TR_20090814.pdf', '', 1365429312, NULL, 0, 755, 0, 'a:6:{s:5:"title";s:35:"SCORM_2004_4ED_v1_1_TR_20090814.pdf";s:7:"creator";s:17:"Default Professor";s:9:"publisher";s:17:"Default Professor";s:11:"contributor";s:17:"Default Professor";s:4:"date";s:10:"2013/04/08";s:4:"type";s:4:"file";}'),
(9, 'www/content/lessons/6/defaultCA4K2R11.jpg', '', 1365429312, NULL, 0, 755, 0, 'a:6:{s:5:"title";s:19:"defaultCA4K2R11.jpg";s:7:"creator";s:17:"Default Professor";s:9:"publisher";s:17:"Default Professor";s:11:"contributor";s:17:"Default Professor";s:4:"date";s:10:"2013/04/08";s:4:"type";s:4:"file";}'),
(15, 'libraries/language/lang-dutch-machine.zip', 'Eddie', 1403950409, NULL, 0, 755, 0, 'a:6:{s:5:"title";s:22:"lang-dutch-machine.zip";s:7:"creator";s:20:"System Administrator";s:9:"publisher";s:20:"System Administrator";s:11:"contributor";s:20:"System Administrator";s:4:"date";s:10:"2014/06/28";s:4:"type";s:4:"file";}'),
(16, 'libraries/language/lang-Dutch.php.inc', 'Eddie', 1403950427, NULL, 0, 755, 0, 'a:6:{s:5:"title";s:18:"lang-dutch.php.inc";s:7:"creator";s:20:"System Administrator";s:9:"publisher";s:20:"System Administrator";s:11:"contributor";s:20:"System Administrator";s:4:"date";s:10:"2014/06/28";s:4:"type";s:4:"file";}'),
(17, 'www/themes/default/images/logo/2.png', 'Eddie', 1403950987, NULL, 0, 755, 0, 'a:6:{s:5:"title";s:5:"2.png";s:7:"creator";s:20:"System Administrator";s:9:"publisher";s:20:"System Administrator";s:11:"contributor";s:20:"System Administrator";s:4:"date";s:10:"2014/06/28";s:4:"type";s:4:"file";}'),
(18, 'www/themes/default/images/logo/HeaderIcon.png', 'Eddie', 1403951023, NULL, 0, 755, 0, 'a:6:{s:5:"title";s:14:"HeaderIcon.png";s:7:"creator";s:20:"System Administrator";s:9:"publisher";s:20:"System Administrator";s:11:"contributor";s:20:"System Administrator";s:4:"date";s:10:"2014/06/28";s:4:"type";s:4:"file";}'),
(20, 'www/themes/default/images/avatars/system_avatars/unknown_small.png', 'Eddie', 1405259372, NULL, 0, 755, 0, 'a:6:{s:5:"title";s:17:"unknown_small.png";s:7:"creator";s:20:"System Administrator";s:9:"publisher";s:20:"System Administrator";s:11:"contributor";s:20:"System Administrator";s:4:"date";s:10:"2014/07/13";s:4:"type";s:4:"file";}'),
(22, 'www/themes/default/images/avatars/system_avatars/dude2.png', '', 1406899881, NULL, 0, 755, 0, 'a:6:{s:5:"title";s:9:"dude2.png";s:7:"creator";s:10:"Eddie Maas";s:9:"publisher";s:10:"Eddie Maas";s:11:"contributor";s:10:"Eddie Maas";s:4:"date";s:10:"2014/08/01";s:4:"type";s:4:"file";}'),
(23, 'www/themes/default/images/avatars/system_avatars/dude2.png', 'Eddie', 1407263110, NULL, 0, 755, 0, 'a:6:{s:5:"title";s:9:"dude2.png";s:7:"creator";s:20:"System Administrator";s:9:"publisher";s:20:"System Administrator";s:11:"contributor";s:20:"System Administrator";s:4:"date";s:10:"2014/08/05";s:4:"type";s:4:"file";}'),
(24, 'www/themes/default/images/avatars/system_avatars/spy.png', 'Eddie', 1409053621, NULL, 0, 755, 0, 'a:6:{s:5:"title";s:7:"spy.png";s:7:"creator";s:20:"System Administrator";s:9:"publisher";s:20:"System Administrator";s:11:"contributor";s:20:"System Administrator";s:4:"date";s:10:"2014/08/26";s:4:"type";s:4:"file";}'),
(25, 'www/content/lessons/8/BHV cursus.jpg', 'DTSlid', 1409053985, NULL, 0, 755, 0, 'a:6:{s:5:"title";s:14:"BHV cursus.jpg";s:7:"creator";s:7:"DTS lid";s:9:"publisher";s:7:"DTS lid";s:11:"contributor";s:7:"DTS lid";s:4:"date";s:10:"2014/08/26";s:4:"type";s:4:"file";}'),
(27, 'www/content/lessons/8/download.jpeg', 'DTSlid', 1409054579, NULL, 0, 755, 0, 'a:6:{s:5:"title";s:13:"download.jpeg";s:7:"creator";s:7:"DTS lid";s:9:"publisher";s:7:"DTS lid";s:11:"contributor";s:7:"DTS lid";s:4:"date";s:10:"2014/08/26";s:4:"type";s:4:"file";}'),
(28, 'www/themes/default/images/avatars/system_avatars/spy.png', 'DTSlid', 1409058817, NULL, 0, 755, 0, 'a:6:{s:5:"title";s:7:"spy.png";s:7:"creator";s:7:"DTS lid";s:9:"publisher";s:7:"DTS lid";s:11:"contributor";s:7:"DTS lid";s:4:"date";s:10:"2014/08/26";s:4:"type";s:4:"file";}');

-- --------------------------------------------------------

--
-- Table structure for table `f_configuration`
--

CREATE TABLE `f_configuration` (
  `name` varchar(100) NOT NULL,
  `value` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `f_folders`
--

CREATE TABLE `f_folders` (
`id` mediumint(8) unsigned NOT NULL,
  `name` varchar(150) NOT NULL,
  `users_LOGIN` varchar(100) NOT NULL,
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `f_folders`
--

INSERT INTO `f_folders` (`id`, `name`, `users_LOGIN`, `parent_id`) VALUES
(1, 'Incoming', 'admin', 0),
(2, 'Sent', 'admin', 0),
(3, 'Drafts', 'admin', 0),
(25, 'Incoming', 'Eddie', 0),
(26, 'Sent', 'Eddie', 0),
(27, 'Drafts', 'Eddie', 0),
(40, 'Incoming', 'DTSlid', 0),
(41, 'Sent', 'DTSlid', 0),
(42, 'Drafts', 'DTSlid', 0),
(43, 'Incoming', 'klmpersoon1', 0),
(44, 'Sent', 'klmpersoon1', 0),
(45, 'Drafts', 'klmpersoon1', 0),
(46, 'Incoming', 'klmpersoon2', 0),
(47, 'Sent', 'klmpersoon2', 0),
(48, 'Drafts', 'klmpersoon2', 0),
(49, 'Incoming', 'klmpersoon3', 0),
(50, 'Sent', 'klmpersoon3', 0),
(51, 'Drafts', 'klmpersoon3', 0),
(52, 'Incoming', 'klmpersoon4', 0),
(53, 'Sent', 'klmpersoon4', 0),
(54, 'Drafts', 'klmpersoon4', 0),
(55, 'Incoming', 'klmpersoon5', 0),
(56, 'Sent', 'klmpersoon5', 0),
(57, 'Drafts', 'klmpersoon5', 0),
(58, 'Incoming', 'test', 0),
(59, 'Sent', 'test', 0),
(60, 'Drafts', 'test', 0),
(61, 'Incoming', 'eddieedease', 0),
(62, 'Sent', 'eddieedease', 0),
(63, 'Drafts', 'eddieedease', 0),
(64, 'Incoming', 'edease', 0),
(65, 'Sent', 'edease', 0),
(66, 'Drafts', 'edease', 0);

-- --------------------------------------------------------

--
-- Table structure for table `f_forums`
--

CREATE TABLE `f_forums` (
`id` mediumint(8) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `lessons_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `users_LOGIN` varchar(100) NOT NULL,
  `comments` text
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `f_forums`
--

INSERT INTO `f_forums` (`id`, `title`, `lessons_ID`, `parent_id`, `status`, `users_LOGIN`, `comments`) VALUES
(4, 'EHBO - deel 1', 4, 0, 1, 'Eddie', ''),
(5, 'EHBO - deel 2', 5, 0, 1, 'Eddie', ''),
(8, 'BHV - deel 1', 8, 0, 1, 'Eddie', ''),
(9, 'BHV - deel 2', 9, 0, 1, 'Eddie', ''),
(10, 'Kantklossen', 10, 0, 1, 'Eddie', '');

-- --------------------------------------------------------

--
-- Table structure for table `f_messages`
--

CREATE TABLE `f_messages` (
`id` mediumint(8) unsigned NOT NULL,
  `f_topics_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  `users_LOGIN` varchar(100) NOT NULL,
  `replyto` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rank` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `f_personal_messages`
--

CREATE TABLE `f_personal_messages` (
`id` mediumint(8) unsigned NOT NULL,
  `users_LOGIN` varchar(100) NOT NULL,
  `recipient` text,
  `sender` varchar(100) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  `attachments` text,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `bcc` tinyint(1) NOT NULL DEFAULT '0',
  `f_folders_ID` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `viewed` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `f_poll`
--

CREATE TABLE `f_poll` (
`id` mediumint(8) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `question` text NOT NULL,
  `options` text NOT NULL,
  `timestamp_created` int(10) unsigned NOT NULL,
  `users_LOGIN` varchar(100) NOT NULL,
  `f_forums_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `timestamp_start` int(10) unsigned NOT NULL,
  `timestamp_end` int(10) unsigned NOT NULL,
  `views` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sticky` tinyint(1) NOT NULL DEFAULT '0',
  `comments` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `f_topics`
--

CREATE TABLE `f_topics` (
`id` mediumint(8) unsigned NOT NULL,
  `f_forums_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `timestamp` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `users_LOGIN` varchar(100) NOT NULL,
  `views` mediumint(8) unsigned DEFAULT '0',
  `viewed_by` text,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sticky` tinyint(1) DEFAULT '0',
  `comments` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `f_users_to_polls`
--

CREATE TABLE `f_users_to_polls` (
  `f_poll_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `users_LOGIN` varchar(100) NOT NULL,
  `vote` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `timestamp` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `glossary`
--

CREATE TABLE `glossary` (
`id` mediumint(8) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `lessons_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `info` text,
  `type` varchar(20) NOT NULL DEFAULT 'general',
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
`id` mediumint(8) unsigned NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `created` int(10) unsigned DEFAULT NULL,
  `user_types_ID` varchar(50) DEFAULT '0',
  `languages_NAME` varchar(50) DEFAULT NULL,
  `users_active` tinyint(1) DEFAULT '0',
  `assign_profile_to_new` tinyint(1) DEFAULT '0',
  `unique_key` varchar(255) DEFAULT '',
  `is_default` tinyint(1) DEFAULT '0',
  `self_enroll` tinyint(1) DEFAULT '0',
  `key_max_usage` mediumint(8) unsigned DEFAULT '0',
  `key_current_usage` mediumint(8) unsigned DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`, `active`, `dynamic`, `created`, `user_types_ID`, `languages_NAME`, `users_active`, `assign_profile_to_new`, `unique_key`, `is_default`, `self_enroll`, `key_max_usage`, `key_current_usage`) VALUES
(8, 'groep', 'groep', 1, 0, NULL, '1', NULL, 0, 0, 'groepgroep', NULL, NULL, 100, 0),
(9, 'vette groep!', 'sdfsd', 1, 0, NULL, 'student', NULL, 0, 0, '24903657360f9a0b0484647082098dd9', NULL, NULL, 0, 0),
(10, 'Nog een groep', 'safa', 1, 0, NULL, '0', NULL, 0, 0, 'b93331377db9927bb69045f99c853f5e', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
`id` mediumint(8) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `translation` varchar(50) DEFAULT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `active`, `translation`, `rtl`) VALUES
(1, 'albanian', 0, 'Shqipe', 0),
(2, 'arabic', 0, 'العربية', 0),
(3, 'brazilian', 0, 'Brasileira', 0),
(4, 'bulgarian', 0, 'Български', 0),
(5, 'catalan', 0, 'Català', 0),
(6, 'chinese_simplified', 0, '中国简化', 0),
(7, 'chinese_traditional', 0, '中國傳統', 0),
(8, 'croatian', 0, 'Hrvatski', 0),
(9, 'czech', 0, 'Česky', 0),
(10, 'danish', 0, 'Dansk', 0),
(12, 'greek', 0, 'Eλληνικά', 0),
(13, 'english', 0, 'English', 0),
(14, 'filipino', 0, 'Filipino', 0),
(15, 'finnish', 0, 'Suomi', 0),
(16, 'french', 0, 'Français', 0),
(17, 'galician', 0, 'Galego', 0),
(18, 'georgian', 0, 'ქართული', 0),
(19, 'german', 0, 'Deutsch', 0),
(20, 'hebrew', 0, 'עברית', 0),
(21, 'hindi', 0, 'हिन्दी', 0),
(22, 'hungarian', 0, 'Magyar', 0),
(23, 'indonesian', 0, 'Indonesia', 0),
(24, 'italian', 0, 'Italiano', 0),
(25, 'japanese', 0, '日本語', 0),
(26, 'korean', 0, '한국어', 0),
(27, 'latin_american', 0, 'Latinoamérica', 0),
(28, 'latvian', 0, 'Latviešu', 0),
(29, 'lithuanian', 0, 'Lietuviškai', 0),
(30, 'norwegian', 0, 'Norsk', 0),
(31, 'persian', 0, 'فارسی', 0),
(32, 'polish', 0, 'Polski', 0),
(33, 'portuguese', 0, 'Português', 0),
(34, 'romanian', 0, 'Română', 0),
(35, 'russian', 0, 'Pусский', 0),
(36, 'serbian', 0, 'Српски', 0),
(37, 'slovak', 0, 'Slovenčina', 0),
(38, 'slovenian', 0, 'Slovenski', 0),
(39, 'spanish', 0, 'Español', 0),
(40, 'swedish', 0, 'Svenska', 0),
(41, 'thai', 0, 'ไทย', 0),
(42, 'turkish', 0, 'Türkçe', 0),
(43, 'ukrainian', 0, 'Українське', 0),
(44, 'vietnamese', 0, 'Việt', 0),
(46, 'Dutch', 1, 'Nederlands', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
`id` mediumint(8) unsigned NOT NULL,
  `name` varchar(150) NOT NULL,
  `directions_ID` mediumint(8) unsigned DEFAULT '0',
  `info` text,
  `price` float DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `show_catalog` tinyint(1) NOT NULL DEFAULT '1',
  `duration` int(10) DEFAULT '0',
  `access_limit` int(10) DEFAULT '0',
  `options` text,
  `languages_NAME` varchar(50) NOT NULL,
  `metadata` text,
  `course_only` tinyint(1) DEFAULT '0',
  `certificate` text,
  `from_timestamp` int(10) unsigned DEFAULT NULL,
  `to_timestamp` int(10) unsigned DEFAULT NULL,
  `shift` tinyint(1) DEFAULT '0',
  `publish` tinyint(1) DEFAULT '1',
  `share_folder` int(10) DEFAULT '0',
  `created` int(10) unsigned DEFAULT NULL,
  `max_users` int(10) unsigned DEFAULT NULL,
  `archive` int(10) unsigned DEFAULT '0',
  `instance_source` mediumint(8) unsigned DEFAULT '0',
  `originating_course` mediumint(8) unsigned DEFAULT '0',
  `creator_LOGIN` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `name`, `directions_ID`, `info`, `price`, `active`, `show_catalog`, `duration`, `access_limit`, `options`, `languages_NAME`, `metadata`, `course_only`, `certificate`, `from_timestamp`, `to_timestamp`, `shift`, `publish`, `share_folder`, `created`, `max_users`, `archive`, `instance_source`, `originating_course`, `creator_LOGIN`) VALUES
(4, 'EHBO - deel 1', 5, 'a:0:{}', 0, 1, 0, 0, 0, 'a:0:{}', 'Dutch', 'a:7:{s:5:"title";s:13:"EHBO - deel 1";s:7:"creator";s:24:"Administrator S. (Eddie)";s:9:"publisher";s:24:"Administrator S. (Eddie)";s:11:"contributor";s:24:"Administrator S. (Eddie)";s:4:"date";s:10:"2014/08/26";s:8:"language";s:10:"Nederlands";s:4:"type";s:6:"lesson";}', 1, '', 0, 0, 0, 1, 0, 1409051385, 0, 0, 0, 0, 'Eddie'),
(5, 'EHBO - deel 2', 5, 'a:0:{}', 0, 1, 1, 0, 0, 'a:0:{}', 'Dutch', 'a:7:{s:5:"title";s:13:"EHBO - deel 2";s:7:"creator";s:24:"Administrator S. (Eddie)";s:9:"publisher";s:24:"Administrator S. (Eddie)";s:11:"contributor";s:24:"Administrator S. (Eddie)";s:4:"date";s:10:"2014/08/26";s:8:"language";s:10:"Nederlands";s:4:"type";s:6:"lesson";}', 1, '', 0, 0, 0, 1, 0, 1409051414, 0, 0, 0, 0, 'Eddie'),
(8, 'BHV - deel 1', 3, 'a:0:{}', 0, 1, 1, 0, 0, 'a:40:{s:6:"theory";i:1;s:8:"examples";i:1;s:8:"projects";i:1;s:5:"tests";i:1;s:6:"survey";i:1;s:5:"rules";i:1;s:5:"forum";i:1;s:8:"comments";i:1;s:4:"news";i:1;s:6:"online";i:1;s:5:"scorm";i:1;s:3:"ims";i:1;s:6:"tincan";i:1;s:15:"dynamic_periods";i:0;s:15:"digital_library";i:1;s:8:"calendar";i:1;s:11:"new_content";i:1;s:8:"glossary";i:1;s:7:"reports";i:1;s:8:"tracking";i:1;s:13:"auto_complete";i:1;s:12:"content_tree";i:1;s:11:"lesson_info";i:1;s:11:"bookmarking";i:1;s:14:"content_report";i:0;s:13:"print_content";i:1;s:12:"start_resume";i:1;s:15:"show_percentage";i:1;s:14:"show_right_bar";i:1;s:13:"show_left_bar";i:0;s:19:"show_student_cpanel";i:1;s:9:"recurring";i:0;s:18:"recurring_duration";i:0;s:18:"show_content_tools";i:1;s:14:"show_dashboard";i:1;s:19:"show_horizontal_bar";i:1;s:17:"default_positions";s:0:"";s:8:"feedback";i:1;s:13:"smart_content";i:1;s:6:"timers";i:0;}', 'Dutch', 'a:7:{s:5:"title";s:12:"BHV - deel 1";s:7:"creator";s:24:"Administrator S. (Eddie)";s:9:"publisher";s:24:"Administrator S. (Eddie)";s:11:"contributor";s:24:"Administrator S. (Eddie)";s:4:"date";s:10:"2014/08/26";s:8:"language";s:10:"Nederlands";s:4:"type";s:6:"lesson";}', 1, '', 0, 0, 0, 1, 0, 1409051452, NULL, 0, 0, 0, 'Eddie'),
(9, 'BHV - deel 2', 3, 'a:0:{}', 0, 1, 1, 0, 0, 'a:0:{}', 'Dutch', 'a:7:{s:5:"title";s:12:"BHV - deel 2";s:7:"creator";s:24:"Administrator S. (Eddie)";s:9:"publisher";s:24:"Administrator S. (Eddie)";s:11:"contributor";s:24:"Administrator S. (Eddie)";s:4:"date";s:10:"2014/08/26";s:8:"language";s:10:"Nederlands";s:4:"type";s:6:"lesson";}', 1, '', 0, 0, 0, 1, 0, 1409051911, 0, 0, 0, 0, 'Eddie'),
(10, 'Kantklossen', 4, 'a:0:{}', 0, 1, 1, 0, 0, 'a:0:{}', 'Dutch', 'a:7:{s:5:"title";s:11:"Kantklossen";s:7:"creator";s:24:"Administrator S. (Eddie)";s:9:"publisher";s:24:"Administrator S. (Eddie)";s:11:"contributor";s:24:"Administrator S. (Eddie)";s:4:"date";s:10:"2014/08/26";s:8:"language";s:10:"Nederlands";s:4:"type";s:6:"lesson";}', 1, '', 0, 0, 0, 1, 0, 1409051934, 0, 0, 0, 0, 'Eddie');

-- --------------------------------------------------------

--
-- Table structure for table `lessons_timeline_topics`
--

CREATE TABLE `lessons_timeline_topics` (
`id` mediumint(8) unsigned NOT NULL,
  `lessons_ID` mediumint(8) unsigned NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lessons_timeline_topics_data`
--

CREATE TABLE `lessons_timeline_topics_data` (
`id` mediumint(8) unsigned NOT NULL,
  `topics_ID` mediumint(8) unsigned NOT NULL,
  `users_LOGIN` varchar(100) NOT NULL,
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lessons_to_courses`
--

CREATE TABLE `lessons_to_courses` (
  `courses_ID` mediumint(8) unsigned NOT NULL,
  `lessons_ID` mediumint(8) unsigned NOT NULL,
  `previous_lessons_ID` mediumint(8) unsigned DEFAULT '0',
  `start_date` int(10) unsigned DEFAULT NULL,
  `end_date` int(10) unsigned DEFAULT NULL,
  `start_period` int(10) unsigned DEFAULT NULL,
  `end_period` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lessons_to_courses`
--

INSERT INTO `lessons_to_courses` (`courses_ID`, `lessons_ID`, `previous_lessons_ID`, `start_date`, `end_date`, `start_period`, `end_period`) VALUES
(7, 4, 0, NULL, NULL, NULL, NULL),
(8, 4, 5, NULL, NULL, NULL, NULL),
(8, 5, 0, NULL, NULL, NULL, NULL),
(8, 8, 4, NULL, NULL, NULL, NULL),
(9, 8, 0, NULL, NULL, NULL, NULL),
(8, 9, 8, NULL, NULL, NULL, NULL),
(8, 10, 9, NULL, NULL, NULL, NULL),
(9, 10, 8, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lessons_to_groups`
--

CREATE TABLE `lessons_to_groups` (
  `lessons_ID` mediumint(8) unsigned NOT NULL,
  `user_type` varchar(50) DEFAULT 'student',
  `groups_ID` mediumint(8) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lesson_conditions`
--

CREATE TABLE `lesson_conditions` (
`id` mediumint(8) unsigned NOT NULL,
  `lessons_ID` mediumint(8) unsigned NOT NULL,
  `type` varchar(255) NOT NULL,
  `options` text,
  `relation` varchar(255) NOT NULL DEFAULT 'and'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lesson_conditions`
--

INSERT INTO `lesson_conditions` (`id`, `lessons_ID`, `type`, `options`, `relation`) VALUES
(4, 4, 'all_units', NULL, 'and'),
(5, 5, 'all_units', NULL, 'and'),
(8, 8, 'all_units', NULL, 'and'),
(9, 9, 'all_units', NULL, 'and'),
(10, 10, 'all_units', NULL, 'and');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
`id` int(11) unsigned NOT NULL,
  `users_LOGIN` varchar(100) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  `action` varchar(255) NOT NULL,
  `comments` varchar(32) NOT NULL DEFAULT '0',
  `session_ip` char(8) NOT NULL DEFAULT '0',
  `lessons_ID` mediumint(8) unsigned DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=432 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `users_LOGIN`, `timestamp`, `action`, `comments`, `session_ip`, `lessons_ID`) VALUES
(9, 'Eddie', 1403868047, 'login', 'c3a9f61bd34e3f114a9559b848dbceb3', 'c2355c3c', 0),
(10, 'Eddie', 1403868151, 'logout', '0', 'c2355c3c', 0),
(17, 'Eddie', 1403868421, 'login', '51c98a93e75b12eff43229b1f1bde1ab', 'c2355c3c', 0),
(18, 'Eddie', 1403950207, 'logout', '0', '5596c157', 0),
(19, 'Eddie', 1403950208, 'login', '9e90fe834127bd1066c7c6732db6deef', '5596c157', 0),
(20, 'Eddie', 1403950490, 'logout', '0', '5596c157', 0),
(25, 'Eddie', 1403950590, 'login', '4e90842559cc8ea0e1bb56060e0c7f71', '5596c157', 0),
(26, 'Eddie', 1403950636, 'logout', '0', '5596c157', 0),
(27, 'Eddie', 1403950667, 'login', 'e3f2857fffe8504f7aa7022c706851c9', '5596c157', 0),
(28, 'Eddie', 1403951030, 'logout', '0', '5596c157', 0),
(33, 'Eddie', 1403951325, 'login', '6c14e3be650d64ef3cbe51540186fe24', '5596c157', 0),
(34, 'Eddie', 1403951556, 'logout', '0', '5596c157', 0),
(35, 'Eddie', 1403951560, 'login', 'e73c0d6591fb783f83e46ed87faacd5f', '5596c157', 0),
(36, 'Eddie', 1403951592, 'logout', '0', '5596c157', 0),
(37, 'Eddie', 1403951603, 'login', 'f32f460ae83fdd6cf8fa3f13450fe2f0', '5596c157', 0),
(38, 'Eddie', 1403951680, 'logout', '0', '5596c157', 0),
(39, 'Eddie', 1403951703, 'login', 'e86313c4cc725565c82175377caf4ab6', '5596c157', 0),
(40, 'Eddie', 1403952853, 'logout', '0', '5596c157', 0),
(41, 'Eddie', 1403952893, 'login', '44c61f449573ddf2ef7205072f147ee4', '5596c157', 0),
(42, 'Eddie', 1403952896, 'logout', '0', '5596c157', 0),
(43, 'Eddie', 1403952900, 'login', '85543a1b7f6fb664721ac41c2ac6a02f', '5596c157', 0),
(44, 'Eddie', 1403953195, 'logout', '0', '5596c157', 0),
(45, 'Eddie', 1403953199, 'login', 'ef11559798db5a37ba8b93ae24f249af', '5596c157', 0),
(46, 'Eddie', 1403953206, 'logout', '0', '5596c157', 0),
(49, 'Eddie', 1403964025, 'login', '51805bb1db0e6bf120f5b7f449bb6ce9', '5596c157', 0),
(50, 'Eddie', 1403964126, 'logout', '0', '5596c157', 0),
(53, 'Eddie', 1403964137, 'login', 'ed1634d1909b04ca863d82a325c08d2f', '5596c157', 0),
(54, 'Eddie', 1403964209, 'logout', '0', '5596c157', 0),
(56, 'Eddie', 1404301661, 'login', '6d55086118570e94d2f840bed3dc519f', '5596c157', 0),
(58, 'Eddie', 1404301688, 'logout', '0', '5596c157', 0),
(63, 'Eddie', 1404301706, 'login', '93d166644d2542df6b6230d5fc0b296b', '5596c157', 0),
(64, 'Eddie', 1404310962, 'logout', '0', '5596c157', 0),
(65, 'Eddie', 1404310962, 'login', 'b69b453b37aaaf3cef7632f122e4789c', '5596c157', 0),
(66, 'Eddie', 1404313985, 'logout', '0', '5596c157', 0),
(67, 'Eddie', 1404313992, 'login', '6813276a8db279c930733bf7ffc39b77', '5596c157', 0),
(68, 'Eddie', 1404314098, 'logout', '0', '5596c157', 0),
(71, 'Eddie', 1404314113, 'login', 'e4f8d40d5a6d1246dcb57d7d583c15c0', '5596c157', 0),
(74, 'Eddie', 1404314314, 'logout', '0', '5596c157', 0),
(75, 'Eddie', 1404314352, 'login', 'bd4c2a9249e4f80bd9618e86c9942482', '5596c157', 0),
(76, 'Eddie', 1404314384, 'logout', '0', '5596c157', 0),
(79, 'Eddie', 1404317442, 'login', '6f0bb58864de669f8fff6764240313c6', '5596c157', 0),
(80, 'Eddie', 1404317714, 'logout', '0', '5596c157', 0),
(81, 'Eddie', 1404317714, 'login', '7d86195f0e65e4c48649411228ab8591', '5596c157', 0),
(82, 'Eddie', 1404390572, 'logout', '0', 'd4b26c6a', 0),
(83, 'Eddie', 1404390572, 'login', '28bcdc345f1ecec67e121f0c985b7159', 'd4b26c6a', 0),
(84, 'Eddie', 1404473006, 'logout', '0', '5596c157', 0),
(85, 'Eddie', 1404473006, 'login', '66f9664898343e576e51ae5a4e30c77b', '5596c157', 0),
(86, 'Eddie', 1404927524, 'logout', '0', '5596c157', 0),
(87, 'Eddie', 1404927524, 'login', 'b1d5492c5e24ab0f8ff199ee8c712341', '5596c157', 0),
(88, 'Eddie', 1404927529, 'logout', '0', '5596c157', 0),
(89, 'Eddie', 1405259247, 'login', 'f343b0bc033ae0545f10379405c2d752', '5596c157', 0),
(90, 'Eddie', 1405259433, 'logout', '0', '5596c157', 0),
(93, 'Eddie', 1405259469, 'login', 'f343b0bc033ae0545f10379405c2d752', '5596c157', 0),
(94, 'Eddie', 1405259540, 'logout', '0', '5596c157', 0),
(97, 'Eddie', 1405259572, 'login', 'f343b0bc033ae0545f10379405c2d752', '5596c157', 0),
(98, 'Eddie', 1405259581, 'logout', '0', '5596c157', 0),
(101, 'Eddie', 1405259609, 'login', 'f343b0bc033ae0545f10379405c2d752', '5596c157', 0),
(102, 'Eddie', 1405259651, 'logout', '0', '5596c157', 0),
(105, 'Eddie', 1405259767, 'login', 'f343b0bc033ae0545f10379405c2d752', '5596c157', 0),
(106, 'Eddie', 1405259788, 'logout', '0', '5596c157', 0),
(109, 'Eddie', 1405259790, 'login', 'f343b0bc033ae0545f10379405c2d752', '5596c157', 0),
(110, 'Eddie', 1405259837, 'logout', '0', '5596c157', 0),
(113, 'Eddie', 1405259878, 'login', 'f343b0bc033ae0545f10379405c2d752', '5596c157', 0),
(114, 'Eddie', 1405259979, 'logout', '0', '5596c157', 0),
(117, 'Eddie', 1405260005, 'login', 'f343b0bc033ae0545f10379405c2d752', '5596c157', 0),
(118, 'Eddie', 1405260031, 'logout', '0', '5596c157', 0),
(121, 'Eddie', 1405260038, 'login', 'f343b0bc033ae0545f10379405c2d752', '5596c157', 0),
(122, 'Eddie', 1405260083, 'logout', '0', '5596c157', 0),
(125, 'Eddie', 1405260113, 'login', 'f343b0bc033ae0545f10379405c2d752', '5596c157', 0),
(126, 'Eddie', 1405260168, 'logout', '0', '5596c157', 0),
(129, 'Eddie', 1405260204, 'login', 'f343b0bc033ae0545f10379405c2d752', '5596c157', 0),
(130, 'Eddie', 1405260207, 'logout', '0', '5596c157', 0),
(133, 'Eddie', 1405260233, 'login', 'f343b0bc033ae0545f10379405c2d752', '5596c157', 0),
(134, 'Eddie', 1405260357, 'logout', '0', '5596c157', 0),
(137, 'Eddie', 1405260370, 'login', '62e6cc90f7798d6b753b5ba21ce0eccb', '5596c157', 0),
(138, 'Eddie', 1405260505, 'logout', '0', '5596c157', 0),
(141, 'Eddie', 1405260864, 'login', '61408dc80d8a7ed5b174144754779f0c', '5596c157', 0),
(142, 'Eddie', 1405260957, 'logout', '0', '5596c157', 0),
(144, 'Eddie', 1405410055, 'login', '3a426ef15e326251f6ac2f5490e30182', 'd4b26c6a', 0),
(146, 'Eddie', 1406798458, 'logout', '0', '5596c157', 0),
(147, 'Eddie', 1406798458, 'login', 'vokcapdr7set4hitnosnm8l053', '5596c157', 0),
(148, 'Eddie', 1406899567, 'logout', '0', '5596c157', 0),
(149, 'Eddie', 1406899567, 'login', 'cufgk78vpa1ntihbdqdcmfral0', '5596c157', 0),
(150, 'Eddie', 1406899743, 'logout', '0', '5596c157', 0),
(153, 'Eddie', 1406899796, 'login', 'pdss7nv4bi0tfo63c8ll5ula74', '5596c157', 0),
(154, 'Eddie', 1406899826, 'logout', '0', '5596c157', 0),
(156, 'Eddie', 1407262985, 'login', 'j0q24o2c9cj84jrmm7plgrrpq4', '5596c157', 0),
(158, 'Eddie', 1407262999, 'logout', '0', '5596c157', 0),
(161, 'Eddie', 1407263022, 'login', 'lfq0rq0frgtjr13jms4nff1ul1', '5596c157', 0),
(162, 'Eddie', 1407263026, 'logout', '0', '5596c157', 0),
(165, 'Eddie', 1407263064, 'login', '0pt3f9avhvdg1igb4bfl9aus90', '5596c157', 0),
(166, 'Eddie', 1407263116, 'logout', '0', '5596c157', 0),
(168, 'Eddie', 1407438647, 'login', '6ghqjkdqj4ptlpu3nhhcp07oq7', '5596c157', 0),
(170, 'Eddie', 1407438837, 'logout', '0', '5596c157', 0),
(171, 'Eddie', 1407438870, 'login', 'ukv26gianuavpjf60sv0hbjf12', '5596c157', 0),
(172, 'Eddie', 1407439044, 'logout', '0', '5596c157', 0),
(173, 'Eddie', 1407701568, 'login', 'cnn7oqnebfvitjeq1bqcc8qda1', '5596c157', 0),
(174, 'Eddie', 1407701579, 'logout', '0', '5596c157', 0),
(177, 'Eddie', 1407701630, 'login', '9bqb286r9r8va2th35fmucd744', '5596c157', 0),
(178, 'Eddie', 1407701674, 'logout', '0', '5596c157', 0),
(181, 'Eddie', 1407701699, 'login', '2cqbqfknooupe12aq5iilsc7k1', '5596c157', 0),
(182, 'Eddie', 1407701754, 'logout', '0', '5596c157', 0),
(185, 'Eddie', 1407701782, 'login', '747vspsjhiqotk3vsq4spu3376', '5596c157', 0),
(186, 'Eddie', 1407701823, 'logout', '0', '5596c157', 0),
(188, 'Eddie', 1408539744, 'login', '970q3dvk6e7vnjvuhqajas18f0', '5596c157', 0),
(190, 'Eddie', 1409003536, 'logout', '0', '5596c157', 0),
(191, 'Eddie', 1409003536, 'login', 'l4mbn47hudf6dqe9t3p6lm6127', '5596c157', 0),
(192, 'Eddie', 1409003614, 'logout', '0', '5596c157', 0),
(195, 'Eddie', 1409003760, 'login', 'gf1ujkd5m11eg293ge6o2vb8k0', '5596c157', 0),
(196, 'Eddie', 1409003782, 'logout', '0', '5596c157', 0),
(199, 'Eddie', 1409036060, 'login', 'iogd5piusea2v5ccs7veofifu2', '5596c157', 0),
(200, 'Eddie', 1409036104, 'logout', '0', '5596c157', 0),
(203, 'Eddie', 1409036191, 'login', 'vgq7e1n72acirtf7ug30gitnq6', '5596c157', 0),
(204, 'Eddie', 1409036235, 'logout', '0', '5596c157', 0),
(207, 'Eddie', 1409036264, 'login', 'ihquh2fh581743sfjsvkc2u2e0', '5596c157', 0),
(208, 'Eddie', 1409036303, 'logout', '0', '5596c157', 0),
(211, 'Eddie', 1409036418, 'login', 'don2j18f60btamnqoc36e1c9r0', '5596c157', 0),
(216, 'Eddie', 1409036819, 'logout', '0', '5596c157', 0),
(217, 'Eddie', 1409040816, 'login', 'bd926kgb34supcvelnv2nfh0m6', '5596c157', 0),
(218, 'Eddie', 1409053757, 'logout', '0', '5596c157', 0),
(219, 'DTSlid', 1409053759, 'login', 'bd926kgb34supcvelnv2nfh0m6', '5596c157', 0),
(220, 'DTSlid', 1409053775, 'logout', '0', '5596c157', 0),
(221, 'DTSlid', 1409053787, 'login', '1rmh4cv0e6i00qtjtj6m9e4q13', '5596c157', 0),
(222, 'DTSlid', 1409055442, 'logout', '0', '5596c157', 0),
(223, 'Eddie', 1409055504, 'login', 'jegkfhnl1c8iuvlhusbbljrp53', '5596c157', 0),
(224, 'Eddie', 1409055795, 'logout', '0', '5596c157', 0),
(225, 'Eddie', 1409055805, 'login', '7fmuj60k8odoa6ku9fiqbabd73', '5596c157', 0),
(226, 'Eddie', 1409055833, 'logout', '0', '5596c157', 0),
(227, 'visitor', 1409056274, 'forms', 'signup', '5596c157', 0),
(228, 'klmpersoon1', 1409056275, 'login', 'a0c8jp9tab67eqfpg1u6grpmb6', '5596c157', 0),
(229, 'klmpersoon1', 1409056564, 'logout', '0', '5596c157', 0),
(230, 'Eddie', 1409056587, 'login', 'ktkeor2cinl19r3vb5pucj1386', '5596c157', 0),
(231, 'Eddie', 1409057222, 'logout', '0', '5596c157', 0),
(232, 'klmpersoon1', 1409057232, 'login', 'iv2m4v3nfteku42tadjdu8jvj7', '5596c157', 0),
(233, 'klmpersoon1', 1409057541, 'logout', '0', '5596c157', 0),
(234, 'Eddie', 1409057557, 'login', '8pmsq9v03g51helf2ga52ojp83', '5596c157', 0),
(235, 'Eddie', 1409057593, 'logout', '0', '5596c157', 0),
(236, 'klmpersoon1', 1409057602, 'login', '61ueo4oskcqkqhpbujt3cd12b4', '5596c157', 0),
(237, 'klmpersoon1', 1409057681, 'logout', '0', '5596c157', 0),
(238, 'Eddie', 1409057704, 'login', 'q7cm3rivla2jt3idjnue9e3dd7', '5596c157', 0),
(239, 'Eddie', 1409058052, 'logout', '0', '5596c157', 0),
(240, 'visitor', 1409058095, 'forms', 'signup', '5596c157', 0),
(241, 'klmpersoon2', 1409058095, 'login', 'a31tgl7cp0df9dh862tfi3f515', '5596c157', 0),
(242, 'klmpersoon2', 1409058143, 'logout', '0', '5596c157', 0),
(243, 'Eddie', 1409058170, 'login', '0rhscd1a7m5vjn7p8bopi0pil7', '5596c157', 0),
(244, 'Eddie', 1409058188, 'logout', '0', '5596c157', 0),
(245, 'visitor', 1409058214, 'forms', 'signup', '5596c157', 0),
(246, 'klmpersoon3', 1409058214, 'login', 'eaklrju59elm733j4dc9rh9qc2', '5596c157', 0),
(247, 'klmpersoon3', 1409058241, 'logout', '0', '5596c157', 0),
(248, 'Eddie', 1409058253, 'login', 'fiao75gb4jlm9ptr664tkcj877', '5596c157', 0),
(249, 'Eddie', 1409058294, 'logout', '0', '5596c157', 0),
(250, 'klmpersoon3', 1409058302, 'login', '93ma30qb69g162essg2botkau3', '5596c157', 0),
(251, 'klmpersoon3', 1409058319, 'logout', '0', '5596c157', 0),
(252, 'Eddie', 1409058326, 'login', 'hbh1tcv16d50iu2u9shd927mp6', '5596c157', 0),
(253, 'Eddie', 1409058451, 'logout', '0', '5596c157', 0),
(254, 'klmpersoon3', 1409058469, 'login', 'i3hngul6sffqou2a2l8ki9mjl7', '5596c157', 0),
(255, 'klmpersoon3', 1409058503, 'logout', '0', '5596c157', 0),
(256, 'visitor', 1409058548, 'forms', 'signup', '5596c157', 0),
(257, 'klmpersoon4', 1409058552, 'login', 'd0tuabcnetsh8a7j4j9bj232s5', '5596c157', 0),
(258, 'klmpersoon4', 1409058728, 'logout', '0', '5596c157', 0),
(259, 'DTSlid', 1409058741, 'login', 'ed6a42hg9l8ginps62s2aj42i7', '5596c157', 0),
(260, 'DTSlid', 1409058821, 'logout', '0', '5596c157', 0),
(261, 'DTSlid', 1409072718, 'login', 'ps669eul18847rga2q770k2mq1', 'c2355c3c', 0),
(262, 'DTSlid', 1409072747, 'logout', '0', 'c2355c3c', 0),
(263, 'Eddie', 1409073167, 'login', 'vrl00h0l48dbao1d78l2m27ue3', 'c2355c3c', 0),
(264, 'Eddie', 1409073330, 'logout', '0', 'c2355c3c', 0),
(265, 'visitor', 1409074287, 'forms', 'signup', 'c2355c3c', 0),
(266, 'klmpersoon5', 1409074289, 'login', 'sdffph2jib46ds9jtu8ujhvok6', 'c2355c3c', 0),
(267, 'klmpersoon5', 1409074639, 'logout', '0', 'c2355c3c', 0),
(268, 'DTSlid', 1409074649, 'login', 'an3i07c0jllrics4dvgd8s0un5', 'c2355c3c', 0),
(269, 'DTSlid', 1409074695, 'logout', '0', 'c2355c3c', 0),
(270, 'Eddie', 1409074703, 'login', 'o4fk4im7haj0hlm88857uki5g6', 'c2355c3c', 0),
(271, 'Eddie', 1409232916, 'logout', '0', '56547503', 0),
(272, 'Eddie', 1409232916, 'login', 'bv61ou5bj0i95pat4vlgrev6p2', '56547503', 0),
(273, 'Eddie', 1409847254, 'logout', '0', '5596c157', 0),
(274, 'Eddie', 1409847254, 'login', 'dc2n0ic76ivi2ddu2rbgmmfh76', '5596c157', 0),
(275, 'Eddie', 1410804311, 'logout', '0', '5596c157', 0),
(276, 'Eddie', 1410804312, 'login', '5nr4g2h6v43bovoh5qf1tb8sv1', '5596c157', 0),
(277, 'Eddie', 1410804319, 'logout', '0', '5596c157', 0),
(278, 'Eddie', 1419968958, 'login', '1q8v4na3u839r8si9m66cdccd0', '5596c157', 0),
(279, 'Eddie', 1419968996, 'logout', '0', '5596c157', 0),
(280, 'DTSlid', 1419968996, 'login', '1q8v4na3u839r8si9m66cdccd0', '5596c157', 0),
(281, 'Eddie', 1425159272, 'login', 't8kkj794k9i9ms1pr2t7l6jlu6', '5375fc78', 0),
(282, 'DTSlid', 1425159273, 'logout', '0', '5375fc78', 0),
(283, 'Eddie', 1426319608, 'logout', '0', '5375fc78', 0),
(284, 'Eddie', 1426319608, 'login', 'b3nlbjb0s3sgndjj2gjtkulfu3', '5375fc78', 0),
(285, 'Eddie', 1440673024, 'logout', '0', 'c2355c02', 0),
(286, 'Eddie', 1440673037, 'login', 'c2hiei8atp1916o2j02tcml8s2', 'c2355c02', 0),
(287, 'Eddie', 1440673051, 'logout', '0', 'c2355c02', 0),
(288, 'DTSlid', 1440673051, 'login', 'c2hiei8atp1916o2j02tcml8s2', 'c2355c02', 0),
(289, 'DTSlid', 1440673292, 'logout', '0', 'c2355c02', 0),
(290, 'Eddie', 1440673296, 'login', 'vhqqu7t58pbra5dj65sqartfj4', 'c2355c02', 0),
(291, 'Eddie', 1440673458, 'logout', '0', 'c2355c02', 0),
(292, 'DTSlid', 1440673458, 'login', 'vhqqu7t58pbra5dj65sqartfj4', 'c2355c02', 0),
(293, 'DTSlid', 1440674391, 'logout', '0', 'c2355c02', 0),
(294, 'Eddie', 1440674402, 'login', 'g3pc2o8umk6dofjc2lf0uelqn3', 'c2355c02', 0),
(295, 'Eddie', 1440674499, 'logout', '0', 'c2355c02', 0),
(296, 'Eddie', 1440674504, 'login', 'fldc2jf5vqqoggvs4o5c7n3fm3', 'c2355c02', 0),
(297, 'Eddie', 1440674780, 'logout', '0', 'c2355c02', 0),
(298, 'Eddie', 1440674822, 'login', 'os928gneodj5bavb2effp4t9g3', 'c2355c02', 0),
(299, 'Eddie', 1440674902, 'logout', '0', 'c2355c02', 0),
(300, 'Eddie', 1440674918, 'login', 'l8qq25oa2gdbchfmbt6bpt1rk2', 'c2355c02', 0),
(301, 'Eddie', 1440674977, 'logout', '0', 'c2355c02', 0),
(302, 'Eddie', 1440674992, 'login', 'fqf7e34n6sf7ef47bn4s2okdc1', 'c2355c02', 0),
(303, 'Eddie', 1440675123, 'logout', '0', 'c2355c02', 0),
(304, 'visitor', 1440675203, 'forms', 'contact', 'c2355c02', 0),
(305, 'Eddie', 1440675252, 'login', '9nmte5mrpm17jt5qoqjoo7f1e2', 'c2355c02', 0),
(306, 'Eddie', 1440675968, 'logout', '0', 'c2355c02', 0),
(307, 'DTSlid', 1440675968, 'login', '9nmte5mrpm17jt5qoqjoo7f1e2', 'c2355c02', 0),
(308, 'DTSlid', 1440676222, 'logout', '0', 'c2355c02', 0),
(309, 'Eddie', 1440676226, 'login', 'hlrnmn3hj90hqgve7260lbp2b0', 'c2355c02', 0),
(310, 'Eddie', 1440676269, 'logout', '0', 'c2355c02', 0),
(311, 'DTSlid', 1440676269, 'login', 'hlrnmn3hj90hqgve7260lbp2b0', 'c2355c02', 0),
(312, 'Eddie', 1440828199, 'login', 'qq0aaubh96251m3b44vej7nel5', '5375fc78', 0),
(313, 'DTSlid', 1440828200, 'logout', '0', '5375fc78', 0),
(314, 'Eddie', 1441865040, 'logout', '0', 'c2355c02', 0),
(315, 'Eddie', 1441865040, 'login', 'fhk8ussp6bur5j4uve6s6she83', 'c2355c02', 0),
(316, 'Eddie', 1441865067, 'logout', '0', 'c2355c02', 0),
(317, 'DTSlid', 1441865067, 'login', 'fhk8ussp6bur5j4uve6s6she83', 'c2355c02', 0),
(318, 'DTSlid', 1441865100, 'logout', '0', 'c2355c02', 0),
(319, 'Eddie', 1441865105, 'login', 'cgt3kurg8qqum14759h6ivj687', 'c2355c02', 0),
(320, 'Eddie', 1446466838, 'logout', '0', 'c2355c3c', 0),
(321, 'Eddie', 1446466845, 'login', '6c5vbr9m9086bjv3873tot4ls0', 'c2355c3c', 0),
(322, 'Eddie', 1446466891, 'logout', '0', 'c2355c02', 0),
(323, 'Eddie', 1446466891, 'login', 'cai0fr37m4hap6jj5lu89ibhc1', 'c2355c02', 0),
(324, 'Eddie', 1446466942, 'logout', '0', 'c2355c02', 0),
(325, 'DTSlid', 1446466942, 'login', 'cai0fr37m4hap6jj5lu89ibhc1', 'c2355c02', 0),
(326, 'DTSlid', 1446467174, 'logout', '0', 'c2355c02', 0),
(327, 'Eddie', 1447747580, 'login', '6aurodd4lkf7gm2ehbb7s5ufg2', 'c2355c3c', 0),
(328, 'Eddie', 1447747603, 'logout', '0', 'c2355c3c', 0),
(329, 'DTSlid', 1447747603, 'login', '6aurodd4lkf7gm2ehbb7s5ufg2', 'c2355c3c', 0),
(330, 'DTSlid', 1447750943, 'logout', '0', 'c2355c02', 0),
(331, 'Eddie', 1447750943, 'login', '6aurodd4lkf7gm2ehbb7s5ufg2', 'c2355c02', 0),
(332, 'Eddie', 1447750973, 'logout', '0', 'c2355c02', 0),
(333, 'DTSlid', 1447750973, 'login', '6aurodd4lkf7gm2ehbb7s5ufg2', 'c2355c02', 0),
(334, 'DTSlid', 1447750990, 'logout', '0', 'c2355c02', 0),
(335, 'Eddie', 1447750993, 'login', '245pfe893jh1nlf06ouikuog31', 'c2355c02', 0),
(336, 'Eddie', 1447755930, 'logout', '0', 'c2355c3c', 0),
(337, 'DTSlid', 1447755930, 'login', '245pfe893jh1nlf06ouikuog31', 'c2355c3c', 0),
(338, 'DTSlid', 1447756968, 'logout', '0', 'c2355c3c', 0),
(339, 'Eddie', 1447756971, 'login', '25odn0ocvennr7q2t1u9tfi835', 'c2355c3c', 0),
(340, 'Eddie', 1447757301, 'logout', '0', 'c2355c3c', 0),
(341, 'test', 1447757301, 'login', '25odn0ocvennr7q2t1u9tfi835', 'c2355c3c', 0),
(342, 'test', 1447757392, 'logout', '0', 'c2355c3c', 0),
(343, 'Eddie', 1447757392, 'login', '25odn0ocvennr7q2t1u9tfi835', 'c2355c3c', 0),
(344, 'Eddie', 1447757862, 'logout', '0', 'c2355c3c', 0),
(345, 'test', 1447757862, 'login', '25odn0ocvennr7q2t1u9tfi835', 'c2355c3c', 0),
(346, 'test', 1447757870, 'logout', '0', 'c2355c3c', 0),
(347, 'Eddie', 1447757873, 'login', 'jddp2ja0fp6qt3msqic8jts8p3', 'c2355c3c', 0),
(348, 'Eddie', 1447757901, 'logout', '0', 'c2355c3c', 0),
(349, 'test', 1447757901, 'login', 'jddp2ja0fp6qt3msqic8jts8p3', 'c2355c3c', 0),
(350, 'test', 1447757947, 'logout', '0', 'c2355c3c', 0),
(351, 'Eddie', 1447757951, 'login', 'sovn8l1b91fu4lm09sq5tj8ar6', 'c2355c3c', 0),
(352, 'Eddie', 1447758063, 'logout', '0', 'c2355c3c', 0),
(353, 'test', 1447758063, 'login', 'sovn8l1b91fu4lm09sq5tj8ar6', 'c2355c3c', 0),
(354, 'test', 1447758110, 'logout', '0', 'c2355c3c', 0),
(355, 'Eddie', 1447758113, 'login', 'g5vphf22cat7neo3ocprbt9fv6', 'c2355c3c', 0),
(356, 'Eddie', 1447758368, 'logout', '0', 'c2355c3c', 0),
(357, 'test', 1447758368, 'login', 'g5vphf22cat7neo3ocprbt9fv6', 'c2355c3c', 0),
(358, 'test', 1447758401, 'logout', '0', 'c2355c3c', 0),
(359, 'Eddie', 1447758407, 'login', 'uaeeq6empj45rnokeglvp8qq57', 'c2355c3c', 0),
(360, 'Eddie', 1447758450, 'logout', '0', 'c2355c3c', 0),
(361, 'Eddie', 1447761224, 'login', '4m0f53futh1grfoo1nsoqs2rr0', 'c2355c3c', 0),
(362, 'Eddie', 1447761803, 'logout', '0', 'c2355c3c', 0),
(363, 'visitor', 1447761831, 'forms', 'signup', 'c2355c3c', 0),
(364, 'Eddie', 1447762068, 'login', 'rng7459odunqpucmhejmt7pd61', 'c2355c3c', 0),
(365, 'Eddie', 1447762208, 'logout', '0', 'c2355c3c', 0),
(366, 'eddieedease', 1447762224, 'login', 'odp24eeb93gdr1vsce0ufe21u5', 'c2355c3c', 0),
(367, 'eddieedease', 1447762252, 'logout', '0', 'c2355c3c', 0),
(368, 'Eddie', 1447762255, 'login', '2i8l7q8etnsagbc1ok69o4cci1', 'c2355c3c', 0),
(369, 'Eddie', 1447762304, 'logout', '0', 'c2355c3c', 0),
(370, 'eddieedease', 1447762316, 'login', 'nvteh0m24sb9amvsvp8dbfqg43', 'c2355c3c', 0),
(371, 'eddieedease', 1447762781, 'logout', '0', 'c2355c3c', 0),
(372, 'Eddie', 1447762786, 'login', 'm5c1olgj1ouic6h7qfh54bk9c5', 'c2355c3c', 0),
(373, 'Eddie', 1447762995, 'logout', '0', 'c2355c3c', 0),
(374, 'eddieedease', 1447763008, 'login', '4uvdokm2lft0hcbr4q6t8n5du7', 'c2355c3c', 0),
(375, 'eddieedease', 1447763034, 'logout', '0', 'c2355c3c', 0),
(376, 'Eddie', 1447763037, 'login', 'u9jh8v6n5hp1gcbgvpl1i0hak5', 'c2355c3c', 0),
(377, 'Eddie', 1447763138, 'logout', '0', 'c2355c3c', 0),
(378, 'eddieedease', 1447763147, 'login', 'm3kn11fmp96o7j5i1ajs9qant2', 'c2355c3c', 0),
(379, 'eddieedease', 1447763173, 'logout', '0', 'c2355c3c', 0),
(380, 'Eddie', 1447763175, 'login', 'cpee4bgi7a9gqj61e4hf6omhr1', 'c2355c3c', 0),
(381, 'Eddie', 1447763379, 'logout', '0', 'c2355c3c', 0),
(382, 'eddieedease', 1447763391, 'login', 'f5r3umho6dit0ndeoqsv741cp2', 'c2355c3c', 0),
(383, 'eddieedease', 1447763406, 'logout', '0', 'c2355c3c', 0),
(384, 'Eddie', 1447763408, 'login', 'sa7iqqi7qs69fjoq296khslos0', 'c2355c3c', 0),
(385, 'Eddie', 1447763514, 'logout', '0', 'c2355c3c', 0),
(386, 'Eddie', 1447763516, 'login', 'vcmpsk5222bbrbrtpl6lm77i77', 'c2355c3c', 0),
(387, 'Eddie', 1447763522, 'logout', '0', 'c2355c3c', 0),
(388, 'eddieedease', 1447763557, 'login', '6gs8i05u5n5c9vmjbqtucfnm31', 'c2355c3c', 0),
(389, 'eddieedease', 1447763584, 'logout', '0', 'c2355c3c', 0),
(390, 'Eddie', 1447763589, 'login', 'dkc7f3n8kns3iff81tufacee44', 'c2355c3c', 0),
(391, 'Eddie', 1447764765, 'logout', '0', 'c2355c3c', 0),
(392, 'eddieedease', 1447764773, 'login', 'm0vc7tlcfkhegr906tsb5jobo5', 'c2355c3c', 0),
(393, 'eddieedease', 1447765244, 'logout', '0', 'c2355c3c', 0),
(394, 'Eddie', 1447765248, 'login', '67q3jb7oes1sk90tdat1ps0n53', 'c2355c3c', 0),
(395, 'Eddie', 1447765326, 'logout', '0', 'c2355c3c', 0),
(396, 'visitor', 1447765352, 'forms', 'signup', 'c2355c3c', 0),
(397, 'edease', 1447765352, 'login', 'hjbm58uqtg38c8rumpro6cipe4', 'c2355c3c', 0),
(398, 'edease', 1447765371, 'logout', '0', 'c2355c3c', 0),
(399, 'Eddie', 1447766369, 'login', 'u2qk8fd8n7g2d81pj91rnnqbn7', 'c2355c3c', 0),
(400, 'Eddie', 1447766440, 'logout', '0', 'c2355c3c', 0),
(401, 'edease', 1447766447, 'login', 'am5daii9jvlhdak7c33f3os333', 'c2355c3c', 0),
(402, 'edease', 1447766470, 'logout', '0', 'c2355c3c', 0),
(403, 'Eddie', 1447766473, 'login', 'lmnanc7tugvcpc1n074kn9mod0', 'c2355c3c', 0),
(404, 'Eddie', 1447766549, 'logout', '0', 'c2355c3c', 0),
(405, 'Eddie', 1447766552, 'login', '0369v5i1ekl4t7ubg17em0ta21', 'c2355c3c', 0),
(406, 'Eddie', 1447766563, 'logout', '0', 'c2355c3c', 0),
(407, 'edease', 1447766563, 'login', '0369v5i1ekl4t7ubg17em0ta21', 'c2355c3c', 0),
(408, 'edease', 1447766580, 'logout', '0', 'c2355c3c', 0),
(409, 'Eddie', 1448398893, 'login', 'l372f60h1fsgj3080tem5h7nn1', '5375fc78', 0),
(410, 'Eddie', 1448398923, 'logout', '0', '5375fc78', 0),
(411, 'DTSlid', 1448398923, 'login', 'l372f60h1fsgj3080tem5h7nn1', '5375fc78', 0),
(412, 'DTSlid', 1448398982, 'logout', '0', '5375fc78', 0),
(413, 'Eddie', 1448398985, 'login', '3v9egic8padk590f4lpir31kg4', '5375fc78', 0),
(414, 'Eddie', 1448398992, 'logout', '0', '5375fc78', 0),
(415, 'test', 1448398992, 'login', '3v9egic8padk590f4lpir31kg4', '5375fc78', 0),
(416, 'test', 1448399002, 'logout', '0', '5375fc78', 0),
(417, 'Eddie', 1448399005, 'login', '0faj5aiqqoega18l8iut9f93l5', '5375fc78', 0),
(418, 'Eddie', 1448399051, 'logout', '0', '5375fc78', 0),
(419, 'edease', 1448399073, 'login', 'dkp4006q6ffvcvvs4l5n7m4q60', '5375fc78', 0),
(420, 'edease', 1448399121, 'logout', '0', '5375fc78', 0),
(421, 'Eddie', 1448399125, 'login', 'uqigi81au6q778j2knt6t6up70', '5375fc78', 0),
(422, 'Eddie', 1448399227, 'logout', '0', '5375fc78', 0),
(423, 'DTSlid', 1448399227, 'login', 'uqigi81au6q778j2knt6t6up70', '5375fc78', 0),
(424, 'Eddie', 1448632735, 'login', 'm9nddl6lujjq13f7ubgf7mkne2', '5375fc78', 0),
(425, 'DTSlid', 1448632736, 'logout', '0', '5375fc78', 0),
(426, 'Eddie', 1448977752, 'logout', '0', 'c2355c3c', 0),
(427, 'Eddie', 1448977752, 'login', 'tk83eh73l824bg9s3570gtpid7', 'c2355c3c', 0),
(428, 'Eddie', 1451476210, 'logout', '0', '5375fc78', 0),
(429, 'Eddie', 1451476210, 'login', 'ef005bq2gc4vnopp4e858ck341', '5375fc78', 0),
(430, 'Eddie', 1451476553, 'logout', '0', '5375fc78', 0),
(431, 'DTSlid', 1451476553, 'login', 'ef005bq2gc4vnopp4e858ck341', '5375fc78', 0);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `className` varchar(150) NOT NULL,
  `db_file` varchar(255) DEFAULT NULL,
  `name` varchar(150) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(150) NOT NULL,
  `author` varchar(100) DEFAULT NULL,
  `version` varchar(10) DEFAULT NULL,
  `description` text,
  `position` varchar(150) NOT NULL,
  `menu` varchar(255) DEFAULT NULL,
  `mandatory` varchar(255) DEFAULT NULL,
  `permissions` varchar(32) NOT NULL DEFAULT 'administrator'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`className`, `db_file`, `name`, `active`, `title`, `author`, `version`, `description`, `position`, `menu`, `mandatory`, `permissions`) VALUES
('module_administrator_tools', '', 'module_administrator_tools', 1, 'Administrator tools', 'Periklis Venakis', '1.10', 'This module is a collection of administrator tools', 'module_administrator_tools', NULL, NULL, 'administrator'),
('module_bbb', '', 'module_bbb', 0, 'BigBlueButton conference tool', 'Panagiotis Athanasopoulos', '1.2', '\n		This module is used to connect eFront with BigBlueButton for lesson conferencing using the included API.\n	', 'module_bbb', NULL, NULL, 'administrator,professor,student'),
('module_billboard', '', 'module_billboard', 0, 'Billboard', 'Nick Baltas', '1.3', '\n		This module is used to create and display a billboard for eFront lessons.\n	', 'module_billboard', NULL, NULL, 'professor,student'),
('module_blogs', '', 'module_blogs', 0, 'Blogs', 'Michael Makrigiannakis', '1.1', 'This module is used to place blogs functionality in eFront lessons', 'module_blogs', NULL, NULL, 'student,professor,administrator'),
('module_bootstrap', '', 'module_bootstrap', 1, 'Module Bootstap', 'Periklis Venakis', '1.0', 'Bootstrap module quickly sets up a new module by putting together the minimum code required', 'module_bootstrap', NULL, NULL, 'administrator'),
('module_chat', '', 'module_chat', 0, 'Chat Module ', 'Christos Xanthos', '1.1', 'eFront integrated Chat Bar', 'module_chat', NULL, NULL, 'administrator,professor,student'),
('module_crossword', '', 'module_crossword', 0, 'Crossword', 'skippybosco', '1.3', 'Create Crossword Puzzles from Empty Space Questions', 'module_crossword', NULL, NULL, 'student,professor,administrator'),
('module_export_unit', '', 'module_export_unit', 1, 'Export unit', 'Periklis Venakis', '1.0', 'A module that exports units to HTML', 'module_export_unit', NULL, NULL, 'professor'),
('module_faq', '', 'module_faq', 1, 'Frequently Asked Questions', 'Nick Baltas', '1.5', '\n		This module is used to create and display FAQ lists for eFront lessons.\n	', 'module_faq', NULL, NULL, 'professor,student'),
('module_flashcards', '', 'module_flashcards', 0, 'Flashcards', 'Michael Makrigiannakis', '1.0', 'This module is used to place flashcards in eFront questions', 'module_flashcards', NULL, NULL, 'student,professor,administrator'),
('module_gift_aiken', '', 'module_gift_aiken', 0, 'GIFT/AIKEN Questions Import', 'Nick Baltas', '1.4', '\n		This module is used to create questions from GIFT/AIKEN formats\n	', 'module_gift_aiken', NULL, NULL, 'professor'),
('module_gradebook', '', 'module_gradebook', 1, 'GradeBook', 'Andreas Makridakis', '1.0', 'A module for handling the grades in each lesson', 'module_gradebook', NULL, NULL, 'student,professor,administrator'),
('module_idle_users', '', 'module_idle_users', 0, 'Idle users', 'Periklis Venakis', '1.1', 'A module to display idle users, per branch', 'module_idle_users', NULL, NULL, 'administrator,professor,student'),
('module_info_kiosk', '', 'module_info_kiosk', 1, 'Info-kiosk', 'Periklis Venakis', '1.4', 'A module that allows for uploading files to be visible for all users to see', 'module_info_kiosk', NULL, NULL, 'administrator,professor,student'),
('module_journal', '', 'module_journal', 0, 'Journal', 'Andreas Makridakis', '1.0', 'A common Journal per student/professor', 'module_journal', NULL, NULL, 'student,professor,administrator'),
('module_links', '', 'module_links', 1, 'Links', 'Panagiotis Antonellis', '1.4', '\n		This module is used to create and display a list of useful links\n	', 'module_links', NULL, NULL, 'professor,student'),
('module_outlook_invitation', '', 'module_outlook_invitation', 0, 'Outlook invitation Module', 'Michael Makrigiannakis', '1.1.6', 'This module allows you to create events attached to a specific course. Whenever a user is assigned to a course with an attached Event, eFront will automatically send him an outlook calendar event', 'module_outlook_invitation', NULL, NULL, 'administrator'),
('module_quick_mails', '', 'module_quick_mails', 0, 'Quick emails', 'Michael Makrigiannakis', '1.2', '\n		This module is used to send emails directly to professors students etc\n	', 'module_quick_mails', NULL, NULL, 'student,professor'),
('module_quote', '', 'module_quote', 0, 'Quote of the day', 'Panagiotis Antonellis', '1.1', '\n		This module is used to display the quote of the day\n	', 'module_quote', NULL, NULL, 'professor,student'),
('module_rss', '', 'module_rss', 0, 'RSS', 'Periklis Venakis', '1.8', 'An RSS module for eFront', 'module_rss', NULL, NULL, 'administrator,professor,student'),
('module_security', '', 'module_security', 1, 'Security Module', 'Periklis Venakis', '1.0', 'Security module', 'module_security', NULL, NULL, 'administrator'),
('module_workbook', '', 'module_workbook', 0, 'WorkBook', 'Andreas Makridakis', '1.1', 'Through Workbook module professors are trying to get students to pay attention to certain lesson items', 'module_workbook', NULL, NULL, 'student,professor'),
('module_youtube', '', 'module_youtube', 1, 'YouTube', 'Nick Baltas', '1.2', '\n		This module is used to connect eFront with YouTube\n	', 'module_youtube', NULL, NULL, 'professor,student');

-- --------------------------------------------------------

--
-- Table structure for table `module_bbb`
--

CREATE TABLE `module_bbb` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `lessons_ID` int(11) NOT NULL,
  `confKey` varchar(255) NOT NULL,
  `durationHours` int(1) NOT NULL,
  `durationMinutes` int(2) DEFAULT NULL,
  `confType` tinyint(1) DEFAULT '0',
  `maxParts` int(3) DEFAULT '20',
  `maxMics` int(3) DEFAULT '20',
  `lobby` tinyint(1) DEFAULT '0',
  `status` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_bbb_users_to_meeting`
--

CREATE TABLE `module_bbb_users_to_meeting` (
  `users_LOGIN` varchar(255) NOT NULL,
  `meeting_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_billboard`
--

CREATE TABLE `module_billboard` (
  `lessons_ID` int(11) NOT NULL,
  `data` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_blogs`
--

CREATE TABLE `module_blogs` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lessons_ID` int(11) NOT NULL DEFAULT '0',
  `users_LOGIN` varchar(255) NOT NULL,
  `description` text,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `registered` tinyint(1) NOT NULL DEFAULT '1',
  `timestamp` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_blogs_articles`
--

CREATE TABLE `module_blogs_articles` (
`id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `blogs_ID` int(11) NOT NULL DEFAULT '0',
  `users_LOGIN` varchar(255) NOT NULL,
  `timestamp` varchar(10) NOT NULL,
  `data` text,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_blogs_comments`
--

CREATE TABLE `module_blogs_comments` (
`id` int(11) NOT NULL,
  `blogs_articles_ID` int(11) NOT NULL DEFAULT '0',
  `users_LOGIN` varchar(255) NOT NULL,
  `timestamp` varchar(10) NOT NULL,
  `data` text,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_blogs_users`
--

CREATE TABLE `module_blogs_users` (
  `blogs_ID` int(11) NOT NULL DEFAULT '0',
  `users_LOGIN` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_chat`
--

CREATE TABLE `module_chat` (
`id` int(10) unsigned NOT NULL,
  `from_user` varchar(255) NOT NULL DEFAULT '',
  `to_user` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `isLesson` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_chat_config`
--

CREATE TABLE `module_chat_config` (
  `status` int(11) NOT NULL DEFAULT '1',
  `chatHeartbeatTime` int(11) NOT NULL DEFAULT '1500',
  `refresh_rate` int(11) NOT NULL DEFAULT '60000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `module_chat_config`
--

INSERT INTO `module_chat_config` (`status`, `chatHeartbeatTime`, `refresh_rate`) VALUES
(1, 2000, 30000);

-- --------------------------------------------------------

--
-- Table structure for table `module_chat_users`
--

CREATE TABLE `module_chat_users` (
  `username` varchar(100) NOT NULL,
  `timestamp_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_crossword_users`
--

CREATE TABLE `module_crossword_users` (
  `users_LOGIN` varchar(100) NOT NULL,
  `content_ID` mediumint(11) NOT NULL,
  `crosslists_ID` mediumint(11) NOT NULL DEFAULT '0',
  `success` mediumint(11) NOT NULL DEFAULT '0',
  `points` varchar(50) NOT NULL,
  `totallength` varchar(50) NOT NULL,
  `wordtime` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_crossword_words`
--

CREATE TABLE `module_crossword_words` (
  `content_ID` int(10) unsigned NOT NULL,
  `crosslists` text,
  `options` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_faq`
--

CREATE TABLE `module_faq` (
`id` int(11) NOT NULL,
  `lessons_ID` int(11) NOT NULL,
  `unit_ID` int(11) DEFAULT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_flashcards_decks`
--

CREATE TABLE `module_flashcards_decks` (
  `content_ID` int(10) unsigned NOT NULL,
  `cards` text,
  `options` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_flashcards_users_to_cards`
--

CREATE TABLE `module_flashcards_users_to_cards` (
  `users_LOGIN` varchar(100) NOT NULL,
  `content_ID` mediumint(11) NOT NULL,
  `cards_ID` mediumint(11) NOT NULL,
  `success` mediumint(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_gradebook_grades`
--

CREATE TABLE `module_gradebook_grades` (
`gid` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  `grade` float NOT NULL,
  `users_LOGIN` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_gradebook_objects`
--

CREATE TABLE `module_gradebook_objects` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `weight` int(2) NOT NULL,
  `refers_to_type` varchar(50) NOT NULL,
  `refers_to_id` int(11) NOT NULL,
  `lessons_ID` int(11) NOT NULL,
  `creator` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_gradebook_ranges`
--

CREATE TABLE `module_gradebook_ranges` (
`id` int(11) NOT NULL,
  `range_from` int(3) NOT NULL,
  `range_to` int(3) NOT NULL,
  `grade` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_gradebook_users`
--

CREATE TABLE `module_gradebook_users` (
`uid` int(11) NOT NULL,
  `users_LOGIN` varchar(255) NOT NULL,
  `lessons_ID` int(11) NOT NULL,
  `score` float NOT NULL,
  `grade` varchar(50) NOT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_journal_entries`
--

CREATE TABLE `module_journal_entries` (
`id` int(11) NOT NULL,
  `entry_body` text NOT NULL,
  `entry_date` datetime NOT NULL,
  `lessons_ID` int(11) NOT NULL,
  `users_LOGIN` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_journal_rules`
--

CREATE TABLE `module_journal_rules` (
`id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_journal_settings`
--

CREATE TABLE `module_journal_settings` (
`id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `value` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `module_journal_settings`
--

INSERT INTO `module_journal_settings` (`id`, `name`, `value`) VALUES
(1, 'export', 1),
(2, 'preview', 1);

-- --------------------------------------------------------

--
-- Table structure for table `module_links`
--

CREATE TABLE `module_links` (
`id` int(11) NOT NULL,
  `lessons_ID` int(11) NOT NULL,
  `display` varchar(500) NOT NULL,
  `link` varchar(500) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_outlook_invitation`
--

CREATE TABLE `module_outlook_invitation` (
  `courses_ID` int(11) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `duration` int(10) unsigned NOT NULL,
  `description` text,
  `location` text,
  `subject` varchar(255) DEFAULT 'Invitation to attend training',
  `sequence` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_quote`
--

CREATE TABLE `module_quote` (
`id` int(11) NOT NULL,
  `lessons_ID` int(11) NOT NULL,
  `quote` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_rss_feeds`
--

CREATE TABLE `module_rss_feeds` (
`id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` text NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `only_summary` int(11) DEFAULT '0',
  `lessons_ID` int(11) DEFAULT '-1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `module_rss_feeds`
--

INSERT INTO `module_rss_feeds` (`id`, `title`, `url`, `active`, `only_summary`, `lessons_ID`) VALUES
(1, 'eFront news', 'http://www.efrontlearning.net/product/efront-news?format=feed&type=rss&install=1', 1, 0, -1);

-- --------------------------------------------------------

--
-- Table structure for table `module_rss_provider`
--

CREATE TABLE `module_rss_provider` (
`id` int(11) NOT NULL,
  `mode` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `lessons_ID` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_workbook_answers`
--

CREATE TABLE `module_workbook_answers` (
`id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `html_solved` text,
  `users_LOGIN` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_workbook_autosave`
--

CREATE TABLE `module_workbook_autosave` (
`id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `autosave_text` longtext NOT NULL,
  `users_LOGIN` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_workbook_items`
--

CREATE TABLE `module_workbook_items` (
`id` int(11) NOT NULL,
  `item_title` varchar(255) DEFAULT NULL,
  `item_text` text,
  `item_question` int(11) NOT NULL,
  `question_text` longtext,
  `check_answer` tinyint(1) NOT NULL,
  `lessons_ID` int(11) NOT NULL,
  `unique_ID` varchar(50) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_workbook_progress`
--

CREATE TABLE `module_workbook_progress` (
`id` int(11) NOT NULL,
  `lessons_ID` int(11) NOT NULL,
  `users_LOGIN` varchar(255) NOT NULL,
  `progress` float(5,2) NOT NULL,
  `non_optional` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_workbook_publish`
--

CREATE TABLE `module_workbook_publish` (
`id` int(11) NOT NULL,
  `lessons_ID` int(11) NOT NULL,
  `publish` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_workbook_settings`
--

CREATE TABLE `module_workbook_settings` (
`id` int(11) NOT NULL,
  `lessons_ID` int(11) NOT NULL,
  `lesson_name` varchar(255) NOT NULL,
  `allow_print` tinyint(1) NOT NULL DEFAULT '1',
  `allow_export` tinyint(1) NOT NULL DEFAULT '1',
  `edit_answers` tinyint(1) NOT NULL DEFAULT '1',
  `unit_to_complete` int(11) NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_youtube`
--

CREATE TABLE `module_youtube` (
`id` int(11) NOT NULL,
  `lessons_ID` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
`id` mediumint(8) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `data` text,
  `timestamp` int(10) unsigned DEFAULT '0',
  `expire` int(10) unsigned DEFAULT '0',
  `lessons_ID` mediumint(8) unsigned DEFAULT NULL,
  `users_LOGIN` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
`id` mediumint(8) unsigned NOT NULL,
  `timestamp` int(10) NOT NULL,
  `send_interval` varchar(10) NOT NULL DEFAULT '0',
  `send_conditions` text,
  `id_type_entity` varchar(255) DEFAULT NULL,
  `recipient` varchar(100) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text,
  `active` tinyint(1) DEFAULT '1',
  `html_message` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `periods`
--

CREATE TABLE `periods` (
`id` mediumint(8) unsigned NOT NULL,
  `name` varchar(150) NOT NULL,
  `from_timestamp` int(10) unsigned NOT NULL,
  `to_timestamp` int(10) unsigned NOT NULL,
  `lessons_ID` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `profile_comments`
--

CREATE TABLE `profile_comments` (
`id` mediumint(8) unsigned NOT NULL,
  `users_LOGIN` varchar(100) NOT NULL,
  `authors_LOGIN` varchar(100) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
`id` mediumint(8) unsigned NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `data` text,
  `deadline` int(10) unsigned DEFAULT NULL,
  `creator_LOGIN` varchar(100) NOT NULL,
  `lessons_ID` mediumint(8) unsigned DEFAULT NULL,
  `auto_assign` tinyint(1) NOT NULL DEFAULT '0',
  `metadata` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
`id` mediumint(8) unsigned NOT NULL,
  `text` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `content_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lessons_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `difficulty` varchar(255) NOT NULL,
  `options` text,
  `answer` text,
  `explanation` text,
  `answers_explanation` text,
  `estimate` int(10) unsigned DEFAULT NULL,
  `settings` text,
  `linked_to` mediumint(8) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `text`, `type`, `content_ID`, `lessons_ID`, `difficulty`, `options`, `answer`, `explanation`, `answers_explanation`, `estimate`, `settings`, `linked_to`) VALUES
(1, '<p>Wat is 10 + 4 x 6?</p>', 'multiple_one', 0, 8, 'medium', 'a:3:{i:0;s:2:"20";i:1;s:2:"84";i:2;s:2:"34";}', 'a:1:{i:0;s:1:"2";}', '', 'a:3:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";}', NULL, NULL, NULL),
(2, '<p>Voeg de juiste dingen bij elkaar</p>', 'drag_drop', 0, 8, 'medium', 'a:3:{i:0;s:4:"muis";i:1;s:6:"koffie";i:2;s:8:"snelkook";}', 'a:3:{i:0;s:3:"mat";i:1;s:5:"beker";i:2;s:3:"pan";}', '', 'a:3:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";}', NULL, NULL, NULL),
(3, '<p>Dit is de vraag der vragen, --&gt; antoord 1</p>', 'multiple_one', 0, 4, 'medium', 'a:2:{i:0;s:7:"Check 1";i:1;s:7:"Check 2";}', 'a:1:{i:0;s:1:"0";}', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, NULL, NULL),
(4, '<p>Eddie heeft een poes en die heet goudvis</p>', 'true_false', 0, 4, 'medium', '', 's:1:"1";', '', 'N;', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `questions_to_skills`
--

CREATE TABLE `questions_to_skills` (
  `questions_id` mediumint(8) unsigned NOT NULL,
  `skills_ID` mediumint(8) unsigned NOT NULL,
  `relevance` int(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `questions_to_surveys`
--

CREATE TABLE `questions_to_surveys` (
`id` mediumint(8) unsigned NOT NULL,
  `surveys_ID` mediumint(8) unsigned DEFAULT NULL,
  `type` varchar(40) DEFAULT NULL,
  `question` mediumtext,
  `answers` mediumtext,
  `created` int(10) unsigned DEFAULT NULL,
  `info` mediumtext,
  `father_ID` mediumint(8) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rules`
--

CREATE TABLE `rules` (
`id` mediumint(8) unsigned NOT NULL,
  `users_LOGIN` varchar(100) NOT NULL,
  `content_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_type` varchar(255) NOT NULL,
  `rule_content_ID` mediumint(8) unsigned DEFAULT '0',
  `rule_option` float DEFAULT '0',
  `lessons_ID` mediumint(8) unsigned DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rules`
--

INSERT INTO `rules` (`id`, `users_LOGIN`, `content_ID`, `rule_type`, `rule_content_ID`, `rule_option`, `lessons_ID`) VALUES
(1, '*', 0, 'serial', 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `scorm_data`
--

CREATE TABLE `scorm_data` (
`id` mediumint(8) unsigned NOT NULL,
  `content_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `users_LOGIN` varchar(100) DEFAULT NULL,
  `timestamp` int(10) unsigned DEFAULT NULL,
  `lesson_location` text,
  `maxtimeallowed` varchar(255) DEFAULT NULL,
  `timelimitaction` varchar(255) DEFAULT NULL,
  `masteryscore` varchar(255) DEFAULT NULL,
  `datafromlms` text,
  `entry` varchar(255) NOT NULL DEFAULT '',
  `total_time` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `comments_from_lms` text,
  `lesson_status` varchar(255) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL,
  `scorm_exit` varchar(255) DEFAULT NULL,
  `minscore` varchar(255) DEFAULT NULL,
  `maxscore` varchar(255) DEFAULT NULL,
  `suspend_data` text,
  `completion_threshold` varchar(255) DEFAULT NULL,
  `completion_status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `search_invertedindex`
--

CREATE TABLE `search_invertedindex` (
`id` mediumint(8) unsigned NOT NULL,
  `keyword` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5610 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `search_invertedindex`
--

INSERT INTO `search_invertedindex` (`id`, `keyword`) VALUES
(662, '\r\n						\r\n					\r\n					\r\n						\r\n						\r\n					\r\n				\r\n			\r\n			\r\n			'),
(719, '\r\n						'),
(649, '\r\n						between'),
(718, '\r\n						c'),
(654, '\r\n						cost'),
(721, '\r\n						infinite'),
(658, '\r\n						nearer'),
(661, '\r\n						the'),
(720, '\r\n					\r\n					\r\n						'),
(722, '\r\n					\r\n				\r\n			\r\n			\r\n			we'),
(104, '\r\n			\r\n			\r\n				\r\n					\r\n						\r\n						\r\n						\r\n						\r\n						\r\n					\r\n				\r\n			\r\n			\r\n		\r\n	\r\n\r\n'),
(242, '\r\n			\r\n			\r\n				\r\n					\r\n						\r\n						\r\n						\r\n						\r\n					\r\n				\r\n			\r\n			\r\n		\r\n	\r\n\r\n'),
(376, '\r\n			\r\n			\r\n				\r\n					\r\n						\r\n						\r\n						\r\n					\r\n				\r\n			\r\n			\r\n		\r\n	\r\n\r\n'),
(644, '\r\n			\r\n			\r\n				\r\n					\r\n						here'),
(374, '\r\n			\r\n			\r\n			\r\n			\r\n			solution'),
(736, '\r\n			\r\n			\r\n			\r\n			\r\n		\r\n		\r\n			'),
(315, '\r\n			\r\n			\r\n			\r\n			a'),
(506, '\r\n			\r\n			\r\n			\r\n			every'),
(79, '\r\n			\r\n			\r\n			\r\n			if'),
(4866, '\r\n			\r\n			\r\n			a'),
(470, '\r\n			\r\n			\r\n			dynamic'),
(3188, '\r\n			\r\n			\r\n			in'),
(403, '\r\n			\r\n			\r\n			methodology'),
(2273, '\r\n			\r\n			\r\n			some'),
(294, '\r\n			\r\n			\r\n			the'),
(703, '\r\n			\r\n			\r\n		\r\n	\r\n\r\n\r\n	\r\n		\r\n			'),
(558, '\r\n			\r\n			\r\n		\r\n	\r\n\r\n'),
(375, '\r\n			\r\n			'),
(520, '\r\n			\r\n			1'),
(330, '\r\n			\r\n			a'),
(2597, '\r\n			\r\n			after'),
(2835, '\r\n			\r\n			although'),
(255, '\r\n			\r\n			an'),
(724, '\r\n			\r\n			as'),
(4973, '\r\n			\r\n			ask'),
(2889, '\r\n			\r\n			at'),
(3589, '\r\n			\r\n			beyond'),
(2777, '\r\n			\r\n			but'),
(2541, '\r\n			\r\n			contention'),
(2201, '\r\n			\r\n			debugging'),
(3714, '\r\n			\r\n			difficult'),
(3703, '\r\n			\r\n			don'),
(4692, '\r\n			\r\n			engineers'),
(3994, '\r\n			\r\n			evaluate'),
(4194, '\r\n			\r\n			everything'),
(3974, '\r\n			\r\n			finally'),
(368, '\r\n			\r\n			for'),
(3064, '\r\n			\r\n			good'),
(5080, '\r\n			\r\n			guy'),
(4065, '\r\n			\r\n			having'),
(3315, '\r\n			\r\n			however'),
(4403, '\r\n			\r\n			humans'),
(3032, '\r\n			\r\n			i'),
(2173, '\r\n			\r\n			idealists'),
(4310, '\r\n			\r\n			ideally'),
(164, '\r\n			\r\n			if'),
(4625, '\r\n			\r\n			improving'),
(493, '\r\n			\r\n			in'),
(2972, '\r\n			\r\n			it'),
(4906, '\r\n			\r\n			just'),
(4545, '\r\n			\r\n			knowing'),
(143, '\r\n			\r\n			let'),
(4297, '\r\n			\r\n			make'),
(4629, '\r\n			\r\n			memory'),
(3621, '\r\n			\r\n			most'),
(3829, '\r\n			\r\n			non-engineers'),
(3849, '\r\n			\r\n			non-programmers'),
(4529, '\r\n			\r\n			note'),
(4560, '\r\n			\r\n			obviously'),
(2607, '\r\n			\r\n			often'),
(410, '\r\n			\r\n			on'),
(2358, '\r\n			\r\n			once'),
(3720, '\r\n			\r\n			one'),
(3157, '\r\n			\r\n			pad'),
(3998, '\r\n			\r\n			plan'),
(4482, '\r\n			\r\n			portability'),
(4975, '\r\n			\r\n			praise'),
(3688, '\r\n			\r\n			programmers'),
(3010, '\r\n			\r\n			programming'),
(3091, '\r\n			\r\n			really'),
(2719, '\r\n			\r\n			representations'),
(5101, '\r\n			\r\n			schedule'),
(3639, '\r\n			\r\n			since'),
(5198, '\r\n			\r\n			some'),
(2412, '\r\n			\r\n			sometimes'),
(2748, '\r\n			\r\n			space'),
(4367, '\r\n			\r\n			sql'),
(668, '\r\n			\r\n			suppose'),
(225, '\r\n			\r\n			the'),
(2958, '\r\n			\r\n			then'),
(2513, '\r\n			\r\n			there'),
(114, '\r\n			\r\n			this'),
(32, '\r\n			\r\n			to'),
(2857, '\r\n			\r\n			try'),
(4328, '\r\n			\r\n			uml'),
(4243, '\r\n			\r\n			understanding'),
(4164, '\r\n			\r\n			usually'),
(50, '\r\n			\r\n			we'),
(2634, '\r\n			\r\n			what'),
(425, '\r\n			\r\n			when'),
(4178, '\r\n			\r\n			whether'),
(3116, '\r\n			\r\n			while'),
(3864, '\r\n			\r\n			with'),
(3402, '\r\n			\r\n			writing'),
(4351, '\r\n			\r\n			xml'),
(3045, '\r\n			\r\n			you'),
(4994, '\r\n			\r\n			your'),
(4016, '\r\n			\r\n			•'),
(207, '\r\n			\r\n		\r\n	\r\n\r\n'),
(708, '\r\n			'),
(232, '\r\n			2'),
(237, '\r\n			3'),
(3732, '\r\n			<'),
(2755, '\r\n			a'),
(3002, '\r\n			actually'),
(3429, '\r\n			admittedly'),
(3265, '\r\n			after'),
(3074, '\r\n			and'),
(3083, '\r\n			as'),
(3897, '\r\n			because'),
(4603, '\r\n			best-case'),
(3483, '\r\n			but'),
(2430, '\r\n			called'),
(3283, '\r\n			consider'),
(2980, '\r\n			don'),
(95, '\r\n			during'),
(419, '\r\n			e'),
(5210, '\r\n			either'),
(2902, '\r\n			every'),
(3717, '\r\n			everyone'),
(111, '\r\n			example:'),
(5016, '\r\n			fire'),
(3039, '\r\n			first'),
(2771, '\r\n			garbage'),
(4807, '\r\n			hand'),
(3818, '\r\n			here'),
(4152, '\r\n			hopefully'),
(3036, '\r\n			however'),
(3323, '\r\n			i'),
(3667, '\r\n			if'),
(2622, '\r\n			in'),
(3918, '\r\n			is'),
(4011, '\r\n			it'),
(2620, '\r\n			leaving'),
(4389, '\r\n			legend'),
(404, '\r\n			let'),
(2519, '\r\n			logging'),
(4124, '\r\n			make'),
(4013, '\r\n			management'),
(5150, '\r\n			most'),
(4222, '\r\n			never'),
(4679, '\r\n			new'),
(4134, '\r\n			ninjaprogrammer'),
(5157, '\r\n			often'),
(2377, '\r\n			or'),
(2188, '\r\n			organizations'),
(4527, '\r\n			output'),
(421, '\r\n			p'),
(2976, '\r\n			people'),
(3840, '\r\n			precise'),
(3121, '\r\n			prepare'),
(3192, '\r\n			preparedness'),
(3853, '\r\n			programmers'),
(4837, '\r\n			pruning'),
(2714, '\r\n			representation'),
(4962, '\r\n			simply'),
(4203, '\r\n			since'),
(4486, '\r\n			software'),
(3403, '\r\n			study'),
(2266, '\r\n			such'),
(2722, '\r\n			techniques'),
(2199, '\r\n			that'),
(2515, '\r\n			the'),
(2503, '\r\n			there'),
(731, '\r\n			they'),
(620, '\r\n			this'),
(3923, '\r\n			though'),
(2826, '\r\n			to'),
(2725, '\r\n			transmitting'),
(2844, '\r\n			try'),
(4872, '\r\n			user'),
(2899, '\r\n			we'),
(3413, '\r\n			what'),
(2332, '\r\n			when'),
(100, '\r\n			which'),
(4926, '\r\n			working'),
(2834, '\r\n			you'),
(2248, '\r\n			•'),
(208, '\r\n	\r\n		\r\n			\r\n			adjoining'),
(244, '\r\n	\r\n		\r\n			\r\n			backtracking\r\n			the'),
(5145, '\r\n	\r\n		\r\n			\r\n			choosing'),
(4317, '\r\n	\r\n		\r\n			\r\n			communication'),
(378, '\r\n	\r\n		\r\n			\r\n			dijkstra'),
(461, '\r\n	\r\n		\r\n			\r\n			dynamic'),
(5, '\r\n	\r\n		\r\n			\r\n			floyd'),
(619, '\r\n	\r\n		\r\n			\r\n			greed'),
(440, '\r\n	\r\n		\r\n			\r\n			heuristic'),
(2294, '\r\n	\r\n		\r\n			\r\n			how'),
(580, '\r\n	\r\n		\r\n			\r\n			introduction\r\n			in'),
(560, '\r\n	\r\n		\r\n			\r\n			kruskal'),
(2162, '\r\n	\r\n		\r\n			\r\n			learn'),
(433, '\r\n	\r\n		\r\n			\r\n			minimoum'),
(704, '\r\n	\r\n		\r\n			\r\n			minimum'),
(665, '\r\n	\r\n		\r\n			\r\n			order'),
(528, '\r\n	\r\n		\r\n			\r\n			prim'),
(3555, '\r\n	\r\n		\r\n			\r\n			take'),
(110, '\r\n	\r\n		\r\n			\r\n			traveling'),
(3052, '\r\n	\r\n		\r\n			\r\n			why'),
(1836, '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nthe'),
(927, '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n'),
(2022, '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nthe'),
(1960, '\r\n\r\n\r\n\r\n\r\n\r\n\r\na'),
(2155, '\r\n\r\n\r\n\r\n\r\n\r\n\r\nbonampak'),
(1711, '\r\n\r\n\r\n\r\n\r\n\r\n'),
(1775, '\r\n\r\n\r\n\r\n\r\n\r\nearly'),
(2061, '\r\n\r\n\r\n\r\n\r\n\r\ngeographical'),
(1955, '\r\n\r\n\r\n\r\n\r\n'),
(1337, '\r\n\r\n\r\n\r\nalthough'),
(1166, '\r\n\r\n\r\n\r\nat'),
(1522, '\r\n\r\n\r\n\r\nbuilding'),
(1447, '\r\n\r\n\r\n\r\nclassic'),
(1854, '\r\n\r\n\r\n\r\neach'),
(1265, '\r\n\r\n\r\n\r\nin'),
(1375, '\r\n\r\n\r\n\r\nit'),
(1888, '\r\n\r\n\r\n\r\nmayanists'),
(1293, '\r\n\r\n\r\n\r\nmost'),
(1596, '\r\n\r\n\r\n\r\nnotable'),
(1323, '\r\n\r\n\r\n\r\nscribes'),
(1134, '\r\n\r\n\r\n\r\nsince'),
(1918, '\r\n\r\n\r\n\r\nspanish'),
(1092, '\r\n\r\n\r\n\r\nthe'),
(1365, '\r\n\r\n\r\n\r\nthere'),
(1799, '\r\n\r\n\r\n\r\nunlike'),
(1409, '\r\n\r\n\r\n\r\nurban'),
(1309, '\r\n\r\n\r\n\r\nwriting'),
(1006, '\r\n\r\n'),
(1033, '\r\n\r\nalso'),
(5312, '\r\n\r\nanother'),
(2075, '\r\n\r\narchaeological'),
(2035, '\r\n\r\nas'),
(1957, '\r\n\r\neach'),
(905, '\r\n\r\neven'),
(5307, '\r\n\r\nfirst'),
(5371, '\r\n\r\nhe'),
(5319, '\r\n\r\nin'),
(878, '\r\n\r\nit'),
(831, '\r\n\r\nmaya'),
(1958, '\r\n\r\nmayanists'),
(794, '\r\n\r\nmuch'),
(901, '\r\n\r\nphilosophically'),
(5388, '\r\n\r\nskills'),
(5379, '\r\n\r\nsome'),
(1959, '\r\n\r\nspanish'),
(769, '\r\n\r\nthe'),
(2092, '\r\n\r\nthere'),
(5399, '\r\n\r\nyou'),
(5291, '\r\nafter'),
(1354, '\r\narchitecture\r\n\r\n\r\n\r\nas'),
(1956, '\r\nart\r\n\r\na'),
(929, '\r\nastronomy\r\n\r\nuniquely'),
(5294, '\r\ncreate'),
(5333, '\r\nefront'),
(1713, '\r\npostclassic'),
(5289, '\r\nresponsible'),
(5304, '\r\nuse'),
(1057, '\r\nwriting\r\n\r\n\r\n\r\nthe'),
(5300, '\r\n \r\nin'),
(168, '!=20!'),
(5023, '10\r\n			bad'),
(2077, '1000'),
(1715, '10th'),
(1751, '1250'),
(1734, '1450'),
(5592, '16112015'),
(1835, '1697'),
(1051, '16th'),
(5279, '16_exported'),
(1833, '17th'),
(5280, '17_exported'),
(2068, '1800'),
(5281, '18_exported'),
(1251, '1950s'),
(1252, '1970s'),
(1292, '1987'),
(906, '19th'),
(239, '2\r\n			\r\n			in'),
(4325, '2003'),
(2154, '2005'),
(1102, '2006'),
(1096, '200–300'),
(5278, '2013'),
(5412, '2014'),
(5593, '2015'),
(1248, '20th'),
(167, '21-1'),
(5601, '22222'),
(1967, '250–900'),
(887, '260-day'),
(925, '260-day-calendar'),
(1055, '3257'),
(889, '365-day'),
(3541, '39;\r\n			\r\n			use'),
(4588, '39;\r\n			\r\n		\r\n	\r\n\r\n'),
(4671, '39;\r\n			<'),
(5134, '39;\r\n			hard'),
(5181, '39;\r\n			seems'),
(3453, '39;!\r\n			\r\n		\r\n	\r\n\r\n'),
(3763, '39;!\r\n			<'),
(727, '39;=v'),
(2146, '39;eqchi'),
(915, '39;iche'),
(923, '39;ij'),
(1965, '39;inich\r\n\r\n\r\n\r\n\r\n'),
(2654, '39;ll'),
(2884, '39;m'),
(926, '39;olk'),
(1287, '39;pilgrim'),
(2741, '39;re'),
(3599, '39;s\r\n			any'),
(2062, '39;s\r\n\r\n\r\n\r\n\r\n'),
(144, '39;s'),
(3860, '39;t\r\n			have'),
(3455, '39;t\r\n			think'),
(222, '39;t'),
(2383, '39;ve'),
(1745, '39;woj'),
(4593, '39;``big'),
(372, '4!=24'),
(2830, '50-foot-invisible-scorpion-from-outer-space'),
(3592, '60\r\n			hours'),
(226, ':\r\n			\r\n			1'),
(4993, ':\r\n			\r\n			what'),
(711, ':\r\n			'),
(5374, ':\r\n\r\nhow'),
(420, ':=cost'),
(422, ':=the'),
(714, '=0;\r\n			'),
(430, '=infinite'),
(99, '=min'),
(688, '=sum'),
(3803, '?\r\n			\r\n			•'),
(2213, 'a\r\n			common'),
(4063, 'a\r\n			different'),
(4602, 'a\r\n			function'),
(3485, 'a\r\n			good'),
(3927, 'a\r\n			great'),
(3169, 'a\r\n			large'),
(3561, 'a\r\n			larger'),
(2278, 'a\r\n			little'),
(3608, 'a\r\n			manager'),
(4192, 'a\r\n			meeting'),
(4898, 'a\r\n			mockup'),
(3802, 'a\r\n			new'),
(3528, 'a\r\n			part'),
(2501, 'a\r\n			profiling'),
(4936, 'a\r\n			project'),
(4892, 'a\r\n			reason'),
(4623, 'a\r\n			small'),
(2641, 'a\r\n			system'),
(4916, 'a\r\n			very'),
(4118, 'a\r\n			way'),
(4860, 'a\r\n			well-designed'),
(976, 'abaj'),
(1142, 'abandoned'),
(2691, 'abbreviated'),
(5047, 'abilities'),
(4250, 'ability\r\n			to'),
(2192, 'ability'),
(2403, 'able\r\n			to'),
(1256, 'able'),
(483, 'abort'),
(699, 'aborts'),
(3507, 'about\r\n			the'),
(5068, 'about\r\n			this'),
(90, 'about'),
(3414, 'above'),
(4600, 'absence'),
(2432, 'absolute'),
(3389, 'absolutely'),
(2702, 'abstract'),
(4429, 'abstraction\r\n			abstraction'),
(3481, 'abstraction'),
(4666, 'abstraction<'),
(4141, 'abstractions'),
(4461, 'abstractly\r\n			and'),
(1539, 'abundant'),
(3664, 'abuse'),
(1253, 'accelerated'),
(1607, 'accented'),
(532, 'accept'),
(604, 'acceptable'),
(4463, 'accepted'),
(1890, 'accepting'),
(712, 'access'),
(2539, 'accesses'),
(4092, 'accessible'),
(4467, 'accessors'),
(1644, 'accompanied'),
(1992, 'accompanying'),
(3350, 'accomplish'),
(3309, 'accomplishes\r\n			far'),
(3020, 'accomplishment'),
(2005, 'accomplishments'),
(1506, 'accordance'),
(184, 'according'),
(1629, 'account'),
(2584, 'accounts'),
(1052, 'accumulated'),
(1054, 'accumulates'),
(448, 'accurate'),
(3071, 'accurately'),
(2145, 'achí'),
(2967, 'acquire'),
(1391, 'acropolis'),
(1760, 'across'),
(2770, 'action'),
(601, 'actions'),
(5293, 'actions:\r\n\r\nadd'),
(5341, 'actions:<'),
(5314, 'activate'),
(3054, 'active'),
(1904, 'activities'),
(3563, 'activity'),
(5233, 'acts'),
(4744, 'actual'),
(453, 'actually'),
(1484, 'added'),
(2251, 'adding'),
(5084, 'addition\r\n			to'),
(1553, 'addition'),
(2473, 'additional'),
(1331, 'additionally'),
(2483, 'address'),
(3908, 'addresses'),
(4773, 'addressing'),
(686, 'adds'),
(2970, 'adequately'),
(5485, 'adipiscing'),
(41, 'adjoining'),
(1935, 'administrative'),
(5290, 'administrator'),
(5326, 'administrators'),
(849, 'admirable'),
(3995, 'admire'),
(2886, 'admit\r\n			i'),
(3078, 'admit'),
(1581, 'adobe'),
(2139, 'adoption'),
(4817, 'adult'),
(4841, 'advanced\r\n			programmer'),
(1527, 'advanced'),
(2118, 'advances'),
(4928, 'advantage\r\n			of'),
(3154, 'advantage'),
(3505, 'advantage:'),
(4774, 'advantages'),
(2442, 'advantages:\r\n			\r\n			•'),
(5003, 'adventure'),
(3038, 'advice'),
(1914, 'aesthetic'),
(3479, 'affect'),
(3684, 'affected'),
(4470, 'affecting'),
(2926, 'affectionately'),
(4566, 'affects\r\n			the'),
(4128, 'affects'),
(834, 'affinities'),
(2745, 'afford'),
(2327, 'after\r\n			'),
(2368, 'after\r\n			this'),
(660, 'after'),
(1308, 'afterlife'),
(4366, 'again\r\n			only'),
(571, 'again'),
(4864, 'against\r\n			future'),
(5246, 'against\r\n			the'),
(1801, 'against'),
(812, 'aged'),
(3198, 'agree\r\n			on'),
(3705, 'agree'),
(4263, 'agreement'),
(1976, 'agriculturally'),
(1595, 'airy'),
(1847, 'ajaw'),
(1842, 'ajawil'),
(1843, 'ajawlel'),
(1844, 'ajawlil'),
(529, 'algorithm\r\n			at'),
(6, 'algorithm\r\n			in'),
(561, 'algorithm\r\n			the'),
(379, 'algorithm\r\n			this'),
(4, 'algorithm'),
(360, 'algorithm:'),
(3792, 'algorithm?'),
(441, 'algorithms\r\n			the'),
(2, 'algorithms'),
(5404, 'align'),
(1639, 'aligned'),
(1690, 'aligning'),
(5487, 'aliquam'),
(4851, 'alive'),
(3336, 'all\r\n			your'),
(4225, 'alleged'),
(2805, 'allocate\r\n			a'),
(4637, 'allocate\r\n			and'),
(2672, 'allocate'),
(2806, 'allocated\r\n			and'),
(2754, 'allocated'),
(5393, 'allocates'),
(2818, 'allocating'),
(2621, 'allocation'),
(4469, 'allow\r\n			the'),
(4932, 'allow\r\n			them'),
(2452, 'allow'),
(2906, 'allowed'),
(3201, 'allowing'),
(4832, 'allows'),
(1487, 'almost'),
(4933, 'alone'),
(1999, 'along'),
(76, 'already'),
(3042, 'also\r\n			helps'),
(147, 'also'),
(1610, 'altars'),
(3884, 'alter'),
(4182, 'alternate'),
(4102, 'alternative'),
(1082, 'although'),
(974, 'alto'),
(1984, 'altun'),
(537, 'always'),
(1192, 'amatl'),
(3301, 'ambiguous'),
(2026, 'american'),
(1133, 'americas'),
(5483, 'amet'),
(133, 'among'),
(1145, 'amongst'),
(4184, 'amount\r\n			carefully'),
(2437, 'amount'),
(4655, 'amount<'),
(5142, 'amplifies'),
(4911, 'an\r\n			athletic'),
(4026, 'an\r\n			entire'),
(2388, 'an\r\n			error'),
(3166, 'an\r\n			estimate'),
(1003, 'analysis'),
(2579, 'analyze'),
(286, 'ancestor'),
(785, 'ancient'),
(3901, 'and\r\n			a'),
(5057, 'and\r\n			boss'),
(2971, 'and\r\n			can'),
(2268, 'and\r\n			changing'),
(2737, 'and\r\n			computing'),
(3698, 'and\r\n			cordial'),
(2610, 'and\r\n			dividing'),
(5079, 'and\r\n			drink'),
(2414, 'and\r\n			fix'),
(4478, 'and\r\n			hence'),
(2394, 'and\r\n			how'),
(4974, 'and\r\n			make'),
(4363, 'and\r\n			parsing'),
(3942, 'and\r\n			quickly'),
(3463, 'and\r\n			that'),
(2421, 'and\r\n			then'),
(2914, 'and\r\n			we'),
(3935, 'and\r\n			weaknesses'),
(3678, 'and\r\n			whose'),
(2253, 'and\r\n			•'),
(5321, 'and\r\nhow'),
(5358, 'and<'),
(3854, 'anecdotally'),
(3287, 'angles'),
(1314, 'animal'),
(1534, 'animals'),
(556, 'animated'),
(2606, 'another\r\n			two-fold'),
(2107, 'another\r\n'),
(17, 'another'),
(4509, 'answer\r\n			when'),
(3311, 'answer'),
(4510, 'answers'),
(5411, 'anti-diabetesmedicatie'),
(2222, 'anticipate'),
(2555, 'anticipated'),
(5605, 'antoord'),
(4237, 'any\r\n			documents'),
(4706, 'anybody'),
(3585, 'anymore'),
(3424, 'anyone'),
(4433, 'anything\r\n			except'),
(2587, 'anything'),
(3428, 'anyway'),
(2896, 'apache™'),
(4856, 'apart'),
(2111, 'apogee'),
(4931, 'apologize'),
(150, 'apparently'),
(4753, 'appeal'),
(932, 'appear'),
(682, 'appearance'),
(2103, 'appeared'),
(999, 'appears'),
(557, 'applet:\r\n			\r\n			\r\n				\r\n					\r\n						\r\n						\r\n						\r\n					\r\n				\r\n			\r\n			\r\n			'),
(400, 'appliance'),
(2470, 'applicable'),
(3274, 'application'),
(5249, 'applications\r\n			programmers'),
(621, 'applied'),
(4563, 'apply\r\n			here'),
(583, 'apply'),
(500, 'applying'),
(5102, 'appreciate\r\n			what'),
(3501, 'appreciate'),
(5052, 'appreciated'),
(3985, 'appreciation\r\n			for'),
(3159, 'approach\r\n			doesn'),
(1898, 'approach'),
(4968, 'appropriate\r\n			sides'),
(766, 'appropriate'),
(3686, 'appropriately'),
(890, 'approximated'),
(447, 'approximately'),
(1589, 'arch'),
(1311, 'archaeological'),
(2013, 'archaeologists'),
(1224, 'archaeology'),
(2436, 'architects\r\n			must'),
(1394, 'architectural'),
(1353, 'architecture'),
(408, 'arcs'),
(5525, 'arcu'),
(2657, 'are\r\n			bottlenecks'),
(2565, 'are\r\n			first'),
(4221, 'are\r\n			great'),
(3970, 'are\r\n			many'),
(2178, 'are\r\n			not'),
(3883, 'are\r\n			saying'),
(2477, 'are\r\n			sprinkled'),
(4425, 'are\r\n			the'),
(3795, 'are:\r\n			\r\n			•'),
(519, 'are:'),
(872, 'area'),
(2046, 'areas'),
(2648, 'argue'),
(3813, 'arguing'),
(4163, 'argument'),
(3281, 'arguments'),
(2207, 'arise\r\n			places'),
(2524, 'arise'),
(2221, 'arises\r\n			that'),
(3689, 'arises'),
(5041, 'armed'),
(775, 'arms'),
(2478, 'around\r\n			risky'),
(1089, 'around'),
(209, 'array\r\n			the'),
(34, 'array'),
(1136, 'arrival'),
(1294, 'arrived'),
(3472, 'arrogance'),
(4346, 'arrows'),
(4453, 'article'),
(1972, 'artistic'),
(866, 'artwork'),
(4750, 'as\r\n			early'),
(4950, 'as\r\n			personal'),
(4972, 'as\r\n			quickly'),
(3300, 'as\r\n			they'),
(3412, 'as\r\n			you'),
(2246, 'as:\r\n			\r\n			•'),
(3267, 'ascertain'),
(2885, 'ashamed'),
(309, 'asked'),
(3308, 'asking'),
(1525, 'aspect'),
(835, 'aspects'),
(2562, 'assert'),
(2267, 'assertion'),
(2238, 'assertions'),
(3303, 'assign\r\n			meaning'),
(416, 'assign'),
(2480, 'assigned'),
(4424, 'assigning'),
(4257, 'assignment'),
(4423, 'assist'),
(3624, 'associated\r\n			with'),
(751, 'associated'),
(148, 'assume'),
(710, 'assuming'),
(2219, 'assumption'),
(3098, 'assumptions'),
(2593, 'assurance'),
(3940, 'astonishing'),
(1685, 'astronomers'),
(995, 'astronomical'),
(928, 'astronomy'),
(4565, 'at\r\n			all'),
(2311, 'at\r\n			the'),
(4382, 'at\r\n			which'),
(2862, 'at\r\n			your'),
(2411, 'atomic'),
(1651, 'atop'),
(541, 'attached'),
(2605, 'attack'),
(365, 'attempt'),
(3255, 'attempting'),
(1351, 'attempts'),
(3637, 'attend\r\n			only'),
(1502, 'attention'),
(1825, 'attracted'),
(4434, 'attraction'),
(5222, 'attractive'),
(5557, 'auctor'),
(3828, 'audience'),
(5247, 'audience?'),
(1221, 'authenticity'),
(4337, 'author'),
(3257, 'authority'),
(5311, 'auto-completion'),
(4358, 'automation'),
(3296, 'available\r\n			divination'),
(1544, 'available'),
(3163, 'average\r\n			weighted'),
(3415, 'average'),
(2801, 'avoid'),
(2700, 'avoiding'),
(179, 'aware'),
(4148, 'away\r\n			with'),
(2664, 'away'),
(1470, 'axis'),
(740, 'aztec'),
(4829, 'baby\r\n			bridge'),
(88, 'back'),
(285, 'backtrack'),
(243, 'backtracking'),
(4108, 'bad?\r\n			\r\n			a'),
(3699, 'baits'),
(1401, 'baktún\r\n\r\n\r\n\r\nthrough'),
(3307, 'balance'),
(876, 'balancing'),
(808, 'ball'),
(1498, 'ball-courts'),
(1701, 'ball-game'),
(1617, 'ballgame'),
(2536, 'bandwidth'),
(2088, 'bartolo'),
(130, 'base'),
(5225, 'based\r\n			on'),
(246, 'based'),
(2441, 'basic'),
(2969, 'basics'),
(2085, 'basins'),
(1039, 'basis'),
(4275, 'bduf'),
(4543, 'be\r\n			a'),
(4242, 'be\r\n			accurately'),
(4580, 'be\r\n			afraid'),
(4576, 'be\r\n			an'),
(4121, 'be\r\n			asked'),
(5000, 'be\r\n			good'),
(2855, 'be\r\n			improperly'),
(5116, 'be\r\n			made'),
(5056, 'be\r\n			noticed'),
(2241, 'be\r\n			revealed'),
(3904, 'be\r\n			seen'),
(4044, 'be\r\n			spent'),
(5078, 'be\r\n			successful'),
(3826, 'bearing\r\n			in'),
(2329, 'bearing'),
(4823, 'bears'),
(4551, 'beautiful'),
(4332, 'beauty'),
(2999, 'became'),
(37, 'because'),
(3991, 'become\r\n			a'),
(2764, 'become\r\n			garbage'),
(4447, 'become\r\n			longer'),
(240, 'become'),
(5211, 'becomes\r\n			your'),
(4445, 'becomes'),
(5185, 'becoming\r\n			familiar'),
(3886, 'becoming'),
(5443, 'bedrijfshulpverlening'),
(3458, 'been\r\n			asked'),
(4450, 'been\r\n			spent'),
(77, 'been'),
(3644, 'before\r\n			they'),
(2647, 'before\r\n			you'),
(250, 'before'),
(1571, 'began'),
(3393, 'begin\r\n			looking'),
(4286, 'begin'),
(2345, 'beginner'),
(2433, 'beginners\r\n			must'),
(2274, 'beginners'),
(4430, 'beginning\r\n			programmers'),
(127, 'beginning'),
(2296, 'begins'),
(2887, 'begun'),
(5061, 'behave'),
(3681, 'behavior'),
(2259, 'behind'),
(4587, 'being\r\n			able'),
(4631, 'being\r\n			used'),
(938, 'being'),
(5458, 'belangrijke'),
(858, 'belief'),
(2134, 'beliefs'),
(3365, 'believe\r\n			they'),
(1114, 'believe'),
(745, 'believed'),
(2029, 'belize'),
(4741, 'belligerently'),
(326, 'belong'),
(45, 'belonging'),
(234, 'belongs'),
(314, 'below'),
(5184, 'belt'),
(3340, 'benefit\r\n			of'),
(2633, 'benefit'),
(3319, 'benefits'),
(228, 'beside'),
(3641, 'best\r\n			for'),
(183, 'best'),
(1772, 'best-known'),
(4415, 'better\r\n			than'),
(5066, 'better\r\n			to'),
(5001, 'better\r\n			yet'),
(607, 'better'),
(2451, 'between\r\n			statements'),
(4596, 'between\r\n			``constant-time'),
(12, 'between'),
(5172, 'beyond\r\n			your'),
(1341, 'beyond'),
(5452, 'bezoekers'),
(476, 'bigger'),
(2723, 'binary'),
(1210, 'bishop'),
(4609, 'bit\r\n			goes'),
(3037, 'bits'),
(1318, 'black'),
(971, 'blanca'),
(5488, 'blandit'),
(2172, 'blind'),
(2465, 'blindness'),
(1107, 'block'),
(2673, 'blocks'),
(1509, 'bodies'),
(863, 'bodily'),
(3778, 'body'),
(1985, 'bonampak'),
(4498, 'bonking'),
(1202, 'book'),
(4404, 'book-reading'),
(1279, 'books'),
(52, 'boolean'),
(4191, 'bored'),
(4558, 'boring'),
(3150, 'born'),
(2646, 'boss'),
(5153, 'bosses'),
(817, 'both'),
(5019, 'bothered'),
(3090, 'bothers'),
(2604, 'bottleneck'),
(2581, 'bottlenecks'),
(4009, 'bought'),
(1194, 'bound'),
(2094, 'boundaries'),
(3944, 'boundary'),
(4345, 'boxes'),
(3293, 'brain'),
(4175, 'brains'),
(910, 'branch'),
(5400, 'branches'),
(3262, 'brand'),
(472, 'break'),
(3553, 'breaks'),
(1250, 'breakthroughs'),
(2460, 'brevity'),
(1349, 'bricks'),
(4801, 'bridge'),
(4831, 'bridges'),
(4674, 'brief'),
(4027, 'bright'),
(3957, 'brimstone'),
(3895, 'bring'),
(2594, 'brings'),
(4914, 'broken'),
(1313, 'brushes'),
(2677, 'buffer'),
(4079, 'bugginess'),
(2828, 'bugs\r\n			the'),
(2413, 'bugs'),
(3751, 'bugs<'),
(2500, 'build'),
(2695, 'building\r\n			a'),
(2512, 'building'),
(1483, 'buildings'),
(5143, 'builds'),
(1422, 'built'),
(3704, 'bully'),
(1329, 'bundles'),
(2595, 'burden\r\n			with'),
(3206, 'burden'),
(2078, 'burial'),
(1663, 'burials'),
(2530, 'burn\r\n			up'),
(1206, 'burnt'),
(4695, 'business\r\n			effectively'),
(4032, 'business\r\n			plan;'),
(3279, 'business'),
(2668, 'but\r\n			also'),
(3114, 'but\r\n			an'),
(2747, 'but\r\n			eventually'),
(5050, 'but\r\n			i'),
(3473, 'but\r\n			will'),
(3535, 'button'),
(4022, 'buying'),
(4676, 'buyouts'),
(2859, 'by\r\n			building'),
(59, 'c:\r\n			\r\n			a'),
(2017, 'cacao'),
(2783, 'cache'),
(2710, 'caching\r\n			brings'),
(2699, 'caching\r\n			is'),
(2697, 'caching'),
(3665, 'caffeine'),
(1982, 'calakmul'),
(3193, 'calamity'),
(465, 'calculate'),
(174, 'calculations'),
(603, 'calculations!\r\n			\r\n			all'),
(1041, 'calendar'),
(757, 'calendars'),
(405, 'call'),
(47, 'called'),
(4480, 'caller'),
(4471, 'calling'),
(2492, 'calls'),
(742, 'came'),
(1787, 'campaign'),
(1800, 'campaigns'),
(2034, 'campeche'),
(3418, 'can\r\n			actually'),
(2800, 'can\r\n			be'),
(3252, 'can\r\n			easily'),
(3890, 'can\r\n			often'),
(4133, 'can\r\n			plan'),
(4621, 'can\r\n			sometimes'),
(3162, 'can;'),
(984, 'cancer'),
(1993, 'cancuen'),
(1370, 'candelaria'),
(373, 'candidate'),
(484, 'candidates'),
(5207, 'cannot\r\n			be'),
(4216, 'cannot\r\n			get'),
(2170, 'cannot'),
(5390, 'capability'),
(4335, 'capable'),
(3938, 'capacity'),
(1708, 'capital'),
(2453, 'captured'),
(1472, 'cardinal'),
(203, 'care'),
(3997, 'career'),
(1501, 'careful'),
(3498, 'carefully\r\n			separate'),
(2577, 'carefully'),
(2052, 'caribbean'),
(4698, 'carry'),
(5011, 'carrying'),
(1608, 'carved'),
(1106, 'cascajal'),
(194, 'case'),
(5188, 'cases\r\n			stronger'),
(592, 'cases'),
(4633, 'catastrophic'),
(3543, 'catches'),
(5285, 'categories'),
(2245, 'categorized'),
(2140, 'catholicism'),
(1951, 'cause'),
(836, 'caused'),
(1453, 'causeways'),
(4146, 'causing'),
(1366, 'cave'),
(1372, 'cave-origin'),
(5051, 'caveat:'),
(807, 'caves'),
(2904, 'cease'),
(752, 'celestial'),
(1560, 'cement'),
(2015, 'cenote'),
(1476, 'cenotes'),
(656, 'center'),
(1139, 'centers'),
(861, 'central'),
(1895, 'centrality'),
(173, 'centuries'),
(907, 'century'),
(1177, 'ceramic'),
(1598, 'ceremonial'),
(749, 'ceremonies'),
(263, 'certain'),
(4490, 'certainly\r\n			a'),
(3111, 'certainly'),
(5384, 'certifications\r\n'),
(5378, 'certifications'),
(737, 'chaac'),
(4169, 'challenge'),
(4945, 'challenged'),
(3721, 'challenges'),
(5034, 'challenging'),
(1625, 'chambers'),
(912, 'chan'),
(485, 'chance'),
(550, 'change'),
(2408, 'changed'),
(2596, 'changes'),
(2402, 'changing'),
(3894, 'chaos'),
(501, 'chapter'),
(5407, 'chapters'),
(3933, 'character'),
(3953, 'characteristic'),
(80, 'characteristics'),
(1717, 'characterized'),
(841, 'characters'),
(5398, 'chart'),
(1028, 'charts'),
(2798, 'cheap'),
(101, 'cheaper'),
(201, 'cheapest'),
(691, 'check'),
(3517, 'checked'),
(625, 'checking'),
(3670, 'cherish'),
(302, 'chessboard'),
(779, 'chest'),
(1374, 'chiapas'),
(1725, 'chichen'),
(241, 'child'),
(287, 'children'),
(1231, 'chips'),
(5175, 'choice\r\n			of'),
(504, 'choice'),
(489, 'choices'),
(235, 'choose'),
(187, 'chooses'),
(3441, 'choosing'),
(199, 'chosen'),
(911, 'christianity'),
(1990, 'chunchucmil'),
(2756, 'chunk'),
(1862, 'ch’e’n'),
(572, 'circle'),
(3268, 'circumstance'),
(2845, 'circumstances'),
(122, 'cities'),
(125, 'city'),
(146, 'city-base'),
(1978, 'city-centered'),
(1743, 'city-states'),
(2087, 'cival'),
(2108, 'civilization\r\n\r\nthe'),
(733, 'civilization'),
(1012, 'civilizations'),
(3200, 'clarifies'),
(4502, 'clarify\r\n			exactly'),
(5087, 'clarify\r\n			in'),
(2420, 'clarify'),
(3891, 'clarity'),
(2872, 'class'),
(4405, 'class-taking'),
(1343, 'classes'),
(1466, 'classic'),
(869, 'classical'),
(1065, 'classified'),
(1335, 'clay'),
(5194, 'clean'),
(2683, 'clear'),
(5090, 'clear-headedness'),
(1987, 'clearly'),
(5086, 'clients'),
(2042, 'climate'),
(450, 'close'),
(750, 'closely'),
(2736, 'closer'),
(1654, 'closest'),
(49, 'closure'),
(4948, 'clothing'),
(958, 'clue'),
(4910, 'coach'),
(2071, 'coast'),
(1729, 'coba'),
(3661, 'cocaine'),
(4436, 'code\r\n			brevity'),
(2511, 'code\r\n			is'),
(3454, 'code\r\n			it'),
(3478, 'code\r\n			should'),
(3497, 'code\r\n			with'),
(2185, 'code'),
(3969, 'code---and'),
(3426, 'code-level'),
(3447, 'code;\r\n			•'),
(3764, 'code<'),
(789, 'codecs'),
(3527, 'coded'),
(992, 'codex'),
(1317, 'codex-style'),
(1205, 'codices'),
(1233, 'codices;'),
(3152, 'coding'),
(3399, 'cold'),
(1750, 'collapse'),
(2189, 'colleagues'),
(5395, 'collect'),
(3029, 'collecting'),
(2772, 'collection'),
(1925, 'collections'),
(1805, 'collective'),
(2766, 'collector'),
(4590, 'college'),
(1739, 'colonial'),
(2126, 'colonization'),
(5223, 'color\r\n			for'),
(3977, 'color'),
(231, 'column'),
(1671, 'comb'),
(3663, 'combat'),
(135, 'combination'),
(594, 'combinations'),
(384, 'combined'),
(1680, 'combs'),
(87, 'come'),
(944, 'comes'),
(3645, 'comfortable'),
(3992, 'comfortably'),
(3406, 'command'),
(1400, 'commemorate'),
(2419, 'comment'),
(1930, 'commerce'),
(3058, 'commercial\r\n			project'),
(3215, 'commit'),
(4211, 'commitment'),
(4388, 'commitment;'),
(3499, 'committed'),
(3520, 'committing'),
(5555, 'commodo'),
(1010, 'common'),
(1599, 'commonly'),
(3185, 'communicate'),
(4339, 'communicated'),
(3128, 'communicating\r\n			with'),
(2689, 'communicating'),
(4189, 'communication\r\n			in'),
(3320, 'communication'),
(2073, 'communities'),
(1078, 'community'),
(3643, 'commute\r\n			from'),
(4199, 'companies\r\n			do'),
(4400, 'companies\r\n			would'),
(2187, 'companies'),
(2206, 'company'),
(3175, 'company-wide'),
(4107, 'company?\r\n			\r\n			10'),
(4105, 'company?\r\n			\r\n			9'),
(2688, 'compared'),
(3958, 'comparing'),
(608, 'comparison'),
(4030, 'compelling'),
(1742, 'competing'),
(4485, 'compiler'),
(2681, 'compilers\r\n			and'),
(1131, 'complete'),
(4315, 'completed'),
(4247, 'completely\r\n			that'),
(1075, 'completely'),
(4058, 'completely?\r\n			\r\n			it'),
(5299, 'completes'),
(5292, 'completing'),
(4296, 'completion\r\n			of'),
(4283, 'completion'),
(1132, 'complex'),
(3537, 'complex:'),
(1399, 'complexes'),
(3798, 'complexity\r\n			and'),
(2175, 'complexity'),
(4624, 'complicate'),
(555, 'complicated'),
(2554, 'component'),
(4055, 'component?\r\n			\r\n			•'),
(5186, 'components\r\n			in'),
(4048, 'components'),
(4907, 'composer'),
(2459, 'compromise'),
(2518, 'computation'),
(4592, 'computational'),
(5218, 'compute'),
(3777, 'computer\r\n			science\r\n			there'),
(3021, 'computer\r\n			science'),
(4638, 'computer\r\n			science<'),
(2514, 'computer'),
(4539, 'computers\r\n			and'),
(599, 'computers'),
(2533, 'computing'),
(3630, 'concentrate'),
(994, 'concentration'),
(1018, 'concept'),
(2963, 'conception'),
(106, 'concepts'),
(2410, 'conceptually'),
(726, 'concerned'),
(1201, 'concertina-style'),
(4253, 'concise'),
(2776, 'concision\r\n			cheaply'),
(4276, 'concision'),
(716, 'conclusion'),
(3224, 'concrete'),
(2856, 'concurrency'),
(2874, 'concurrent\r\n			evaluation'),
(4506, 'concurrent'),
(4517, 'concurrently'),
(5534, 'condimentum'),
(337, 'condition'),
(2843, 'conditions'),
(2983, 'conduct'),
(1225, 'conducted'),
(2563, 'confidence'),
(5214, 'confidently'),
(2440, 'configurable'),
(1638, 'configurations'),
(823, 'configured'),
(4491, 'confine'),
(1086, 'confined'),
(3700, 'conflict'),
(3668, 'conflicts'),
(2208, 'conform'),
(4740, 'confronting'),
(3043, 'confused'),
(3434, 'confusing'),
(3896, 'confusion'),
(5567, 'congue'),
(1332, 'conjunction'),
(354, 'connect'),
(399, 'connected'),
(576, 'connecting'),
(424, 'connection'),
(65, 'connections'),
(723, 'connective'),
(478, 'connects'),
(4714, 'connotation'),
(481, 'conquer'),
(1744, 'conquered'),
(1161, 'conquest'),
(1884, 'conquests'),
(1809, 'conquistador'),
(1794, 'conquistadores'),
(1150, 'conquistadors'),
(3290, 'cons'),
(4757, 'conscientious'),
(4034, 'conscious'),
(3459, 'consciously'),
(5484, 'consectetur'),
(4262, 'consensual'),
(3191, 'consensus'),
(4966, 'consent'),
(5496, 'consequat'),
(626, 'consequences'),
(2591, 'consider\r\n			the'),
(269, 'consider'),
(5045, 'considerably'),
(83, 'consideration'),
(3794, 'considerations'),
(2576, 'considered\r\n			more'),
(129, 'considered'),
(4035, 'considering'),
(1905, 'considers'),
(94, 'consist'),
(1556, 'consisted'),
(4620, 'consistency'),
(1403, 'consistent'),
(1624, 'consisting'),
(517, 'consists'),
(1869, 'constant'),
(4905, 'constantly\r\n			changes'),
(1517, 'constantly'),
(2676, 'constants'),
(948, 'constellation'),
(824, 'constellations'),
(4896, 'construct'),
(436, 'constructed'),
(335, 'construction'),
(1597, 'constructions\r\n\r\n\r\n\r\n'),
(1531, 'constructions'),
(331, 'constructs'),
(5089, 'consultant'),
(4201, 'consultants\r\n			use'),
(4200, 'consultants'),
(4657, 'consultants<'),
(1943, 'consumed'),
(3646, 'contagious'),
(538, 'contain'),
(5125, 'container\r\n			over'),
(5126, 'container'),
(303, 'containing'),
(544, 'contains'),
(5383, 'content\r\nhow'),
(1264, 'content'),
(2558, 'contention'),
(4528, 'contention?'),
(1347, 'contexts'),
(4249, 'contingency'),
(4097, 'continuation?\r\n			\r\n			5'),
(2142, 'continue'),
(1722, 'continued'),
(1262, 'continues'),
(1196, 'continuous'),
(1831, 'continuously'),
(5085, 'contractors'),
(339, 'contrary'),
(1489, 'contrasted'),
(4029, 'contribute'),
(3986, 'contribution'),
(2300, 'contrived\r\n			compared'),
(3490, 'control\r\n			source'),
(1797, 'control'),
(3766, 'control<'),
(311, 'controlled'),
(307, 'controls'),
(5494, 'convallis'),
(3867, 'conversation\r\n			focuses'),
(3875, 'conversation'),
(4336, 'conveying'),
(3219, 'convince'),
(2645, 'convincing'),
(3697, 'cool'),
(4540, 'cooperating'),
(1950, 'copan'),
(1981, 'copán'),
(2708, 'copies'),
(2703, 'copy'),
(1588, 'corbel'),
(1519, 'core'),
(2164, 'cornerstone'),
(4946, 'corny'),
(5077, 'correct\r\n			vision'),
(322, 'correct'),
(4984, 'correction'),
(4365, 'correctness-checking'),
(1856, 'correspond'),
(547, 'corresponding'),
(956, 'corresponds'),
(1945, 'cosmic'),
(800, 'cosmos'),
(38, 'cost'),
(26, 'costs'),
(4023, 'costs?\r\n			•'),
(1187, 'cotinifolia'),
(4285, 'could\r\n			never'),
(153, 'could'),
(1377, 'count'),
(2608, 'counting'),
(5192, 'coupling'),
(5155, 'courage'),
(549, 'course'),
(5296, 'courses\r\n\r\n '),
(5288, 'courses'),
(5344, 'courses<'),
(1707, 'court'),
(867, 'courtly'),
(809, 'courts'),
(1628, 'courtyard;'),
(2829, 'cousin'),
(2059, 'cover'),
(388, 'covered'),
(3669, 'coworkers'),
(2609, 'cows'),
(2877, 'cpus'),
(3789, 'crack'),
(3382, 'crap'),
(5519, 'cras'),
(2310, 'crash'),
(2366, 'crash?’'),
(2317, 'crashed'),
(2308, 'crashes'),
(2210, 'crashing'),
(4550, 'create\r\n			artifacts'),
(586, 'create'),
(1481, 'created'),
(4288, 'creates'),
(2255, 'creating'),
(2795, 'creation'),
(5232, 'creative'),
(2302, 'creativity'),
(3810, 'criminal'),
(5220, 'crisp'),
(610, 'criteria'),
(2271, 'critical'),
(4795, 'criticism'),
(4980, 'criticize'),
(1574, 'crucial'),
(1557, 'crushed'),
(5602, 'crusus'),
(914, 'cruz'),
(2706, 'crystal\r\n			clear'),
(4702, 'cube'),
(5405, 'cultivate'),
(2097, 'cultural'),
(2114, 'culturally'),
(1939, 'culture'),
(2009, 'cultures'),
(5528, 'curabitur'),
(1740, 'current'),
(4805, 'currently'),
(5422, 'cursus'),
(3095, 'customer'),
(2495, 'customers'),
(5306, 'customize'),
(888, 'cycle'),
(754, 'cycles'),
(746, 'cyclical'),
(4738, 'damage'),
(1237, 'damaged'),
(2711, 'danger'),
(1792, 'dangerous'),
(5533, 'dapibus'),
(5432, 'dasdadadada&lt;'),
(1000, 'data'),
(2693, 'database\r\n			queries'),
(2537, 'database'),
(4376, 'databases'),
(1095, 'date'),
(4235, 'date;'),
(1024, 'dates'),
(5182, 'daunting'),
(2888, 'dawned'),
(3158, 'day---but'),
(3126, 'day;'),
(3145, 'days\r\n			documenting'),
(1044, 'days'),
(4493, 'dbms'),
(5315, 'deactivate'),
(4853, 'dead'),
(669, 'deadline'),
(666, 'deadlines\r\n			we'),
(664, 'deadlines'),
(2546, 'deadlock\r\n			is'),
(2544, 'deadlock'),
(2457, 'deal'),
(3130, 'dealing\r\n			with'),
(4301, 'dealing'),
(2763, 'deallocate'),
(2815, 'deallocated'),
(2821, 'deallocating'),
(947, 'deals'),
(814, 'death'),
(4880, 'debacle'),
(4793, 'debate'),
(2163, 'debug\r\n			debugging'),
(2161, 'debug'),
(3730, 'debug<'),
(2322, 'debugger'),
(2200, 'debugging'),
(1240, 'decayed'),
(3658, 'deceptive\r\n			in'),
(2379, 'decide\r\n			which'),
(2361, 'decide'),
(1246, 'deciphered'),
(1241, 'decipherment'),
(4000, 'decision\r\n			an'),
(4012, 'decision\r\n			because'),
(4155, 'decision\r\n			even'),
(3711, 'decision\r\n			have'),
(3277, 'decision'),
(4646, 'decision<'),
(4004, 'decisions'),
(359, 'declaration'),
(2147, 'declared'),
(1141, 'decline'),
(4617, 'decode'),
(3122, 'deconstructing'),
(1620, 'decorated'),
(1633, 'decoration'),
(3218, 'decrease'),
(4066, 'decreases'),
(1692, 'dedicated'),
(5429, 'deel'),
(4688, 'deep'),
(4713, 'deeper'),
(3626, 'deeply'),
(5276, 'default'),
(5283, 'defaultca4k2r11'),
(1616, 'defeated'),
(4099, 'defection'),
(3613, 'defenses'),
(1464, 'defensive'),
(3617, 'defensively'),
(40, 'define'),
(20, 'defined'),
(4353, 'defining'),
(3181, 'definition'),
(1741, 'degenerated'),
(1419, 'degree'),
(2232, 'delay\r\n			between'),
(230, 'delete'),
(233, 'deleted'),
(4151, 'delicately'),
(5035, 'delineated'),
(5098, 'deliver\r\n			something'),
(5094, 'deliver'),
(4840, 'delivered'),
(3397, 'demand'),
(460, 'demands'),
(4809, 'demo'),
(934, 'demonstrate'),
(860, 'demonstrated'),
(4109, 'demonstrates'),
(5141, 'demoralizing'),
(4299, 'demos'),
(2112, 'densely'),
(4384, 'dent'),
(4578, 'department\r\n			or'),
(4251, 'depend\r\n			on'),
(2991, 'depend'),
(4046, 'dependence\r\n			modern'),
(4045, 'dependence'),
(4648, 'dependence<'),
(2740, 'dependent'),
(511, 'depending'),
(650, 'depends'),
(1998, 'depict'),
(784, 'depicted'),
(1963, 'depicting'),
(1325, 'depicts'),
(3140, 'depleted'),
(3056, 'deployment'),
(3656, 'depression'),
(3339, 'derive'),
(3322, 'derived'),
(2128, 'descendants'),
(1921, 'describe'),
(1450, 'described'),
(1307, 'describes'),
(2001, 'describing'),
(4900, 'description'),
(5408, 'descriptions\r\n\r\n'),
(4202, 'deserve'),
(3915, 'deserves'),
(4347, 'design\r\n			drawings'),
(1410, 'design\r\n\r\n\r\n\r\nas'),
(1449, 'design'),
(2337, 'design:\r\n			as'),
(4492, 'designated'),
(3926, 'designed'),
(4018, 'designed?\r\n			•'),
(2953, 'designing'),
(1823, 'designs'),
(4106, 'desirable'),
(3902, 'desire'),
(5330, 'desired'),
(3299, 'desires'),
(631, 'despite'),
(573, 'destroy'),
(1207, 'destroyed'),
(5114, 'detailed'),
(3868, 'details'),
(3146, 'detectable'),
(960, 'detected'),
(155, 'determine'),
(3223, 'determines'),
(3297, 'determining'),
(3072, 'develop\r\n			software'),
(1462, 'develop'),
(1017, 'developed'),
(3549, 'developers'),
(3401, 'developing\r\n			code'),
(5297, 'developing'),
(4115, 'development\r\n			time\r\n			software'),
(4652, 'development\r\n			time<'),
(1716, 'development'),
(3187, 'devilishly'),
(4239, 'devote'),
(3921, 'devoted'),
(4726, 'devoutly'),
(5473, 'deze'),
(5410, 'diab'),
(327, 'diagonal'),
(308, 'diagonals'),
(5591, 'dialyse'),
(5509, 'diam'),
(1425, 'dictated'),
(2726, 'dictionary'),
(2505, 'dictum'),
(2309, 'didn'),
(1211, 'diego'),
(4824, 'dies'),
(2816, 'differ'),
(4628, 'difference\r\n			and'),
(4595, 'difference'),
(3824, 'different\r\n			from'),
(5173, 'different\r\n			language'),
(567, 'different'),
(2095, 'differentiate'),
(5062, 'differently:\r\n			\r\n			•'),
(5179, 'difficult\r\n			as'),
(4812, 'difficult\r\n			communication'),
(3723, 'difficult\r\n			person'),
(119, 'difficult'),
(961, 'diffuse'),
(2117, 'diffusion'),
(5541, 'dignissim'),
(23, 'digraph'),
(377, 'dijkstra'),
(4521, 'dimension---such'),
(299, 'dimensioned'),
(2349, 'dimensions'),
(3316, 'diminishes'),
(5575, 'dingen'),
(4422, 'dinner'),
(1159, 'dire'),
(64, 'direct'),
(223, 'directed'),
(392, 'direction'),
(1503, 'directional'),
(4049, 'directly\r\n			under'),
(398, 'directly'),
(4147, 'disagree'),
(3695, 'disagreement\r\n			but'),
(2093, 'disagreement'),
(1875, 'disappeared'),
(5204, 'discern'),
(4077, 'discouraged'),
(2602, 'discover'),
(1586, 'discovered'),
(1657, 'discoveries'),
(4879, 'discovering\r\n			that'),
(832, 'discrete'),
(582, 'discuss'),
(4967, 'discussed'),
(3232, 'discussion'),
(3647, 'disease'),
(4813, 'disheartened'),
(3077, 'dishonest'),
(4725, 'disillusion'),
(2692, 'disk'),
(1924, 'dispersed'),
(1614, 'display'),
(1156, 'displayed'),
(3112, 'displease'),
(1222, 'disputed'),
(5140, 'disrespectful'),
(5013, 'dissatisfaction'),
(5009, 'dissatisfied'),
(1941, 'disseminated'),
(2007, 'distance'),
(1683, 'distances'),
(2011, 'distant'),
(1887, 'distinct'),
(4584, 'distinction'),
(1405, 'distinctions'),
(2132, 'distinctive'),
(1986, 'distribution'),
(3676, 'disturbing'),
(5435, 'div&gt;'),
(5577, 'div>\r\n'),
(5587, 'div>\r\n<'),
(5457, 'div>'),
(2962, 'diverged'),
(1903, 'diverse'),
(1719, 'diversity'),
(480, 'divide'),
(507, 'divided'),
(3284, 'divination'),
(3256, 'divine'),
(990, 'diving'),
(1451, 'division'),
(4965, 'do\r\n			backtrack'),
(3552, 'do\r\n			no'),
(3622, 'do\r\n			that'),
(3467, 'document\r\n			the'),
(3378, 'document'),
(3385, 'documentation\r\n			gives'),
(3151, 'documentation\r\n			takes'),
(2209, 'documentation'),
(1650, 'documented'),
(3416, 'documenting'),
(3417, 'documents'),
(202, 'does'),
(636, 'doesn'),
(4458, 'dogma'),
(2981, 'dogmatic'),
(4557, 'doing\r\n			ugly'),
(4705, 'doing\r\n			what'),
(2916, 'doing\r\n			when'),
(2586, 'doing'),
(822, 'doings'),
(5482, 'dolor'),
(4526, 'dominant'),
(811, 'dominated'),
(505, 'done'),
(2997, 'done:'),
(5493, 'donec'),
(4391, 'door'),
(1689, 'doorways'),
(2838, 'doubt'),
(2638, 'down'),
(5463, 'download'),
(3719, 'downs'),
(969, 'draconnis'),
(1533, 'draft'),
(1359, 'dramatic'),
(4626, 'dramatically'),
(629, 'drastic'),
(313, 'drawing'),
(4331, 'drawings'),
(991, 'dresden'),
(3240, 'drivel'),
(5162, 'driven'),
(3542, 'drivers'),
(5584, 'dtsactief'),
(3726, 'duck'),
(3691, 'ducked'),
(5427, 'dude2'),
(5561, 'duis'),
(4186, 'duration'),
(282, 'during'),
(3631, 'duties'),
(3212, 'duty'),
(1906, 'dwellings'),
(401, 'dynamic'),
(1885, 'dynastic'),
(1297, 'dynasties'),
(1858, 'dynasty'),
(2091, 'dzibilchaltun'),
(1636, 'e-groups'),
(4053, 'each\r\n			component'),
(2817, 'each\r\n			kind'),
(3125, 'each\r\n			small'),
(124, 'each'),
(3611, 'eager\r\n			to'),
(3108, 'eager'),
(1093, 'earliest'),
(1148, 'early'),
(805, 'earth'),
(2494, 'easier\r\n			than'),
(3430, 'easier'),
(280, 'easily'),
(457, 'easy'),
(1764, 'eckixil'),
(1928, 'economic'),
(5425, 'eddie'),
(5295, 'edit'),
(5238, 'editors'),
(2986, 'edsger'),
(4929, 'educational'),
(4205, 'educators\r\n			in-house'),
(1728, 'edzná'),
(5423, 'eenheid'),
(5461, 'eerste'),
(4635, 'effect'),
(2570, 'effective\r\n			to'),
(3394, 'effective'),
(2171, 'effectively'),
(3551, 'effectively;'),
(3805, 'effectively?\r\n			\r\n			if'),
(883, 'effects'),
(2684, 'efficient'),
(2572, 'efficiently'),
(5524, 'efficitur'),
(3375, 'effort\r\n			made'),
(469, 'effort'),
(4098, 'effort?\r\n			\r\n			6'),
(5302, 'efront\r\ncreate'),
(5275, 'efront'),
(5350, 'efront<'),
(5499, 'egestas'),
(1061, 'egyptian'),
(5428, 'ehbo'),
(2836, 'eight'),
(574, 'either'),
(5324, 'elearning'),
(2992, 'electronic'),
(4808, 'electronically'),
(5505, 'eleifend'),
(1575, 'element'),
(35, 'elements'),
(5571, 'elementum'),
(2055, 'elevated'),
(618, 'elevation'),
(3546, 'eliminate'),
(2380, 'eliminated'),
(5486, 'elit'),
(1342, 'elite'),
(5576, 'elkaar&lt;'),
(2987, 'eloquently'),
(4707, 'else\r\n			tells'),
(566, 'else'),
(2663, 'else?'),
(2936, 'email\r\n			threads'),
(3216, 'embarrassed'),
(4987, 'embarrassing'),
(5243, 'embedded\r\n			languages'),
(5174, 'embedded'),
(5245, 'embedding'),
(1902, 'embodiment'),
(4820, 'embryo'),
(1894, 'emphasis'),
(5082, 'emphasized'),
(1838, 'empire\r\n\r\n\r\n\r\n\r\n\r\n'),
(1979, 'empire'),
(1802, 'empires'),
(2272, 'employ'),
(5406, 'employee'),
(4207, 'employees\r\n			are'),
(3331, 'employees'),
(2911, 'emptied'),
(4448, 'empty'),
(4059, 'encapsulate'),
(3796, 'encapsulated'),
(3482, 'encapsulation'),
(1705, 'enclosed'),
(2728, 'encoded'),
(2731, 'encoding'),
(2037, 'encompassed'),
(1763, 'encompassing'),
(2655, 'encounter'),
(1879, 'encountered'),
(3506, 'encourage'),
(4861, 'endpoint'),
(701, 'ends'),
(3914, 'energy'),
(3724, 'engaged'),
(3015, 'engaging'),
(3141, 'engineer'),
(4847, 'engineering\r\n			team'),
(4014, 'engineering'),
(3134, 'engineers'),
(5510, 'enim'),
(3313, 'enjoying\r\n			your'),
(1541, 'enormous'),
(2580, 'enough\r\n			to'),
(1548, 'enough'),
(4508, 'enough?'),
(5392, 'ensuring'),
(2851, 'enter'),
(5386, 'enterprise'),
(4431, 'enthusiasm'),
(3107, 'enthusiastic'),
(2211, 'entire'),
(1459, 'entirely'),
(833, 'entities'),
(1866, 'entity'),
(4113, 'entrepreneur'),
(4001, 'entrepreneurial'),
(4799, 'entrepreneurs\r\n			who'),
(2446, 'environment'),
(3838, 'environments'),
(1271, 'epigrapher'),
(2119, 'epigraphy'),
(391, 'equal'),
(4730, 'equated'),
(987, 'equidistant'),
(1643, 'equinoxes'),
(301, 'equivalent'),
(5532, 'erat'),
(2081, 'erected'),
(5539, 'eros'),
(5230, 'erotic'),
(4513, 'erratic'),
(5169, 'erroneous'),
(2382, 'error\r\n			i'),
(1053, 'error'),
(3524, 'error;'),
(3738, 'error<'),
(2167, 'errors'),
(1688, 'especially'),
(3033, 'essay'),
(3492, 'essential'),
(1782, 'establish'),
(1471, 'established'),
(1911, 'establishing'),
(3220, 'estimate\r\n			relatively'),
(3102, 'estimate\r\n			the'),
(1168, 'estimate'),
(3182, 'estimated\r\n			individually'),
(3177, 'estimated'),
(5132, 'estimates\r\n			will'),
(3082, 'estimates'),
(3051, 'estimation'),
(5103, 'ethic'),
(5566, 'euismod'),
(1038, 'europe'),
(1137, 'europeans'),
(3804, 'evaluate'),
(3793, 'evaluated\r\n			carefully'),
(3211, 'evaluated'),
(4020, 'evaluating'),
(4041, 'evaluation'),
(251, 'even'),
(3640, 'evenings'),
(2359, 'evenly'),
(1640, 'events'),
(1871, 'eventual'),
(4443, 'eventuality'),
(2575, 'eventually'),
(3495, 'ever\r\n			lost'),
(1662, 'ever'),
(4999, 'every\r\n			other'),
(72, 'every'),
(3354, 'everybody\r\n			there'),
(5010, 'everybody'),
(157, 'everyone'),
(2842, 'everything'),
(930, 'evidence'),
(845, 'evil'),
(1408, 'evolution'),
(5195, 'evolve'),
(4886, 'evolved\r\n			from'),
(1500, 'evolved'),
(1518, 'evolving'),
(1043, 'exactly'),
(4991, 'exaggerated'),
(176, 'examination'),
(427, 'examine'),
(252, 'examined'),
(332, 'examines'),
(2169, 'examining\r\n			it'),
(2386, 'examining'),
(3226, 'example\r\n			the'),
(165, 'example'),
(438, 'examples'),
(1677, 'exceed'),
(674, 'exceeded'),
(1622, 'exceedingly'),
(2937, 'except'),
(4982, 'exception:'),
(3836, 'exceptions'),
(1169, 'excess'),
(2123, 'exchange'),
(4848, 'excited'),
(1002, 'exclusively'),
(2228, 'execute'),
(2236, 'executed'),
(2263, 'executes'),
(2244, 'executing'),
(545, 'execution'),
(3325, 'executive'),
(3616, 'executives'),
(1793, 'exercise'),
(4939, 'exercising'),
(2791, 'exhausted\r\n			in'),
(2793, 'exhausted'),
(175, 'exhausting'),
(431, 'exist'),
(5254, 'existing\r\n			language'),
(66, 'existing'),
(2373, 'exists'),
(709, 'expand'),
(16, 'expansion'),
(2990, 'expcs'),
(499, 'expect'),
(680, 'expectable'),
(288, 'expected'),
(1779, 'expeditions'),
(2686, 'expense\r\n			for'),
(2508, 'expense'),
(3747, 'expense<'),
(2463, 'expensive'),
(2344, 'experience'),
(3431, 'experienced'),
(3050, 'experiment\r\n			simple---you'),
(2284, 'experiment'),
(2989, 'experimental\r\n			science'),
(3012, 'experimental'),
(2198, 'experimentation'),
(2985, 'experiments\r\n			the'),
(2984, 'experiments'),
(3035, 'experiments;'),
(3755, 'experiments<'),
(3270, 'expert'),
(3833, 'experts\r\n			on'),
(4246, 'experts'),
(3034, 'explain'),
(2988, 'explained'),
(4718, 'explains'),
(641, 'explanation'),
(5042, 'explicitly\r\n			what'),
(2762, 'explicitly'),
(2279, 'exploratory'),
(2742, 'explore\r\n			it'),
(5334, 'explore'),
(4183, 'explored'),
(588, 'exponent'),
(4468, 'exposed'),
(4794, 'exposes\r\n			you'),
(3984, 'express'),
(4153, 'expressed'),
(2669, 'expression'),
(1267, 'extant'),
(1837, 'extend'),
(1852, 'extended'),
(1759, 'extending'),
(1659, 'extensive'),
(3550, 'extensively'),
(1258, 'extent'),
(1720, 'external'),
(3596, 'extra'),
(3590, 'extraordinary'),
(3907, 'extreme\r\n			programming'),
(2729, 'extreme'),
(554, 'extremely'),
(3715, 'eyes'),
(3075, 'face'),
(463, 'faced'),
(5209, 'facetious'),
(5530, 'facilisis'),
(4745, 'facilitate'),
(4323, 'facillitate'),
(394, 'fact'),
(1821, 'factor'),
(4248, 'fail'),
(2960, 'failed'),
(2611, 'failing'),
(3282, 'fails'),
(5002, 'failure\r\n			in'),
(2552, 'failure'),
(5005, 'failures'),
(3591, 'fair'),
(4348, 'fairly'),
(1946, 'fall'),
(5241, 'fallen'),
(1045, 'falls'),
(3386, 'false'),
(4326, 'familiarity'),
(2504, 'famous'),
(4272, 'fancy\r\n			project'),
(3776, 'fancy'),
(1361, 'fantastic'),
(2905, 'far\r\n			as'),
(5231, 'fascination'),
(1604, 'fashion'),
(451, 'fast'),
(5024, 'faster\r\n			if'),
(2499, 'faster'),
(3660, 'fatigue'),
(5545, 'faucibus'),
(4985, 'fault'),
(4581, 'favor'),
(4579, 'favors'),
(2275, 'fear'),
(4234, 'feature'),
(1421, 'features'),
(4835, 'feedback'),
(5303, 'feedbacks'),
(4825, 'feeds'),
(2289, 'feel'),
(1667, 'feet'),
(5506, 'felis'),
(5242, 'fell'),
(5508, 'fermentum'),
(4889, 'fiat'),
(4712, 'fiction'),
(589, 'fictional'),
(1186, 'ficus'),
(1260, 'field'),
(1812, 'fierce'),
(1378, 'fifty-two'),
(5092, 'fight'),
(5111, 'fighting'),
(4525, 'figure\r\n			out'),
(862, 'figure'),
(1609, 'figures'),
(2074, 'figurines'),
(2694, 'file'),
(2912, 'fill\r\n			up'),
(2778, 'fill'),
(628, 'final'),
(93, 'finally'),
(3060, 'finance'),
(5096, 'financial'),
(2466, 'find\r\n			the'),
(28, 'find'),
(494, 'finding'),
(1124, 'findings'),
(182, 'finds'),
(4613, 'fine'),
(5556, 'finibus'),
(3979, 'finish'),
(3516, 'finished'),
(1563, 'finishing'),
(955, 'fire'),
(1348, 'fired'),
(4678, 'firings'),
(4601, 'firm'),
(3005, 'firmly'),
(19, 'first'),
(5158, 'firsthand'),
(2651, 'five'),
(3582, 'fixed'),
(2398, 'fixes'),
(2387, 'fixing'),
(871, 'flat'),
(3366, 'flatters'),
(4769, 'flawed'),
(3934, 'flaws'),
(2671, 'floating'),
(1756, 'flores'),
(1723, 'flourish'),
(3, 'floyd'),
(5121, 'fluid'),
(1457, 'focus'),
(2331, 'focused'),
(1899, 'focuses'),
(2675, 'fold'),
(1198, 'folded'),
(945, 'folk'),
(3292, 'follow'),
(685, 'followed'),
(96, 'following'),
(729, 'following:'),
(266, 'follows'),
(3519, 'for\r\n			anybody'),
(4039, 'for\r\n			building'),
(4298, 'for:'),
(321, 'forbiddingly'),
(3377, 'force'),
(4961, 'forced'),
(3213, 'forcefully'),
(877, 'forces'),
(2353, 'foreign\r\n			code'),
(563, 'forest'),
(1822, 'forestalling'),
(2335, 'forget'),
(4409, 'forgiving'),
(2879, 'forgot'),
(513, 'form'),
(4418, 'formal\r\n			training'),
(4330, 'formal'),
(4319, 'formally'),
(4789, 'format'),
(3990, 'formation'),
(2105, 'formative'),
(1232, 'formerly'),
(97, 'formula'),
(1940, 'formulated'),
(5076, 'formulating'),
(1463, 'fortress-like'),
(78, 'found'),
(1605, 'foundation'),
(4684, 'founded'),
(1047, 'four'),
(4806, 'fourpronged\r\n			approach:'),
(1219, 'fourth'),
(1277, 'fraction'),
(1226, 'fragments'),
(4375, 'franca'),
(2476, 'free'),
(2799, 'freeing'),
(2769, 'frees'),
(2929, 'french'),
(2051, 'frequent'),
(4976, 'frequently'),
(1474, 'fresh-water'),
(5237, 'friend'),
(5514, 'fringilla'),
(2205, 'from\r\n			a'),
(3251, 'from\r\n			the'),
(30, 'from'),
(4274, 'front'),
(2630, 'fruit'),
(2635, 'fruit?'),
(3887, 'frustrated\r\n			with'),
(262, 'fulfill'),
(257, 'fulfilled'),
(587, 'fulfills'),
(1280, 'full'),
(4870, 'full:\r\n			\r\n			i'),
(387, 'fully'),
(4387, 'fun\r\n			test'),
(382, 'function'),
(2871, 'functional\r\n			programming'),
(2875, 'functional'),
(1631, 'functionality'),
(590, 'functions'),
(2177, 'fundamental'),
(1306, 'funeral'),
(341, 'further'),
(487, 'furthermore'),
(5110, 'fuss'),
(527, 'future'),
(939, 'fuzzy'),
(5597, 'gaan'),
(2193, 'gain'),
(3155, 'gained\r\n			by'),
(672, 'gained'),
(3477, 'gained?\r\n			\r\n			in'),
(2767, 'garbage\r\n			collector'),
(2759, 'garbage'),
(4754, 'gather'),
(1456, 'gathering'),
(3779, 'gee-whiz\r\n			stuff'),
(4137, 'gem:\r\n			\r\n			remember'),
(2002, 'genealogy'),
(3859, 'general\r\n			and'),
(105, 'general'),
(1190, 'generally'),
(4393, 'generated'),
(1165, 'generations'),
(569, 'genetic'),
(5006, 'gentle\r\n			as'),
(5031, 'gentle'),
(1223, 'genuine'),
(1122, 'geographic'),
(1865, 'geographical'),
(1737, 'geographically'),
(1413, 'geography'),
(4843, 'germ'),
(5589, 'geschiedenis'),
(5212, 'gets\r\n			most'),
(2571, 'gets'),
(254, 'getting'),
(5446, 'gevaarlijke'),
(2908, 'giant\r\n			problem---unless'),
(3263, 'gigantic'),
(197, 'give'),
(137, 'given'),
(103, 'gives'),
(486, 'giving'),
(3183, 'global'),
(5305, 'glossary\r\n'),
(5332, 'glossary'),
(5352, 'glossary<'),
(954, 'glowing'),
(1081, 'glyphs'),
(2357, 'go\r\n			wrong'),
(3865, 'goals'),
(813, 'gods'),
(68, 'goes'),
(2589, 'going'),
(1818, 'gold'),
(3408, 'golden'),
(844, 'good'),
(4104, 'good?\r\n			\r\n			8'),
(3536, 'good?'),
(2932, 'goodness!'),
(2016, 'goods'),
(5609, 'goudvis&lt;'),
(1495, 'governmental'),
(4314, 'gradually'),
(1344, 'graffiti'),
(4456, 'graham'),
(1703, 'grand'),
(1672, 'grandiose'),
(3871, 'granted'),
(91, 'graph'),
(215, 'graphs'),
(5553, 'gravida'),
(3856, 'great\r\n			opportunity'),
(1418, 'great'),
(1515, 'greater'),
(4399, 'greatest'),
(616, 'greed'),
(456, 'greediness'),
(1, 'greedy'),
(534, 'greek'),
(1040, 'gregorian'),
(1434, 'grew'),
(297, 'grid'),
(1493, 'grid-like'),
(1220, 'grolier'),
(4125, 'ground'),
(3830, 'grounded'),
(1648, 'group'),
(1926, 'grouped'),
(1747, 'groups'),
(3980, 'grow'),
(3508, 'growing'),
(5206, 'grown'),
(4821, 'grows'),
(4983, 'growth\r\n			or'),
(4836, 'growth'),
(350, 'gt;-1'),
(348, 'gt;-2'),
(670, 'gt;0'),
(349, 'gt;1'),
(347, 'gt;2'),
(346, 'gt;3'),
(5585, 'gt;<'),
(149, 'gt;c'),
(31, 'gt;j'),
(418, 'gt;v'),
(329, 'gt;±'),
(445, 'guarantee'),
(5069, 'guard'),
(918, 'guatemala'),
(1786, 'guatemalan'),
(2846, 'guess'),
(5308, 'guide'),
(2010, 'gulf-coast'),
(4660, 'h1>\r\n			a'),
(4667, 'h1>\r\n			abstraction'),
(4647, 'h1>\r\n			an'),
(4645, 'h1>\r\n			assume'),
(4656, 'h1>\r\n			carefully'),
(3773, 'h1>\r\n			computer'),
(3731, 'h1>\r\n			debugging'),
(4654, 'h1>\r\n			disagreement'),
(5273, 'h1>\r\n			embedding'),
(4641, 'h1>\r\n			engineers'),
(3758, 'h1>\r\n			estimation'),
(4643, 'h1>\r\n			evaluating'),
(3748, 'h1>\r\n			for'),
(3739, 'h1>\r\n			i'),
(4662, 'h1>\r\n			integration'),
(3765, 'h1>\r\n			it'),
(4665, 'h1>\r\n			learn'),
(3743, 'h1>\r\n			learning'),
(3762, 'h1>\r\n			life'),
(3741, 'h1>\r\n			logging'),
(3750, 'h1>\r\n			memory'),
(4649, 'h1>\r\n			modern'),
(3744, 'h1>\r\n			most'),
(5267, 'h1>\r\n			nietschze'),
(3760, 'h1>\r\n			respect'),
(4653, 'h1>\r\n			software'),
(3746, 'h1>\r\n			sometimes'),
(3767, 'h1>\r\n			source'),
(4668, 'h1>\r\n			stress'),
(3752, 'h1>\r\n			the'),
(4639, 'h1>\r\n			there'),
(5271, 'h1>\r\n			time-to-market'),
(3754, 'h1>\r\n			to'),
(3769, 'h1>\r\n			unit'),
(4658, 'h1>\r\n			use'),
(4651, 'h1>\r\n			using'),
(3771, 'h1>\r\n			when'),
(3775, 'h1>\r\n			you'),
(5055, 'habits'),
(5149, 'hacker'),
(4867, 'hafernik'),
(1315, 'hair'),
(4103, 'half'),
(1910, 'halls'),
(4927, 'hand'),
(3184, 'handle'),
(4150, 'handled'),
(1424, 'haphazardly'),
(2915, 'happen'),
(4700, 'happening'),
(396, 'happens'),
(5054, 'happenstance'),
(4568, 'happy'),
(3850, 'hard\r\n			even'),
(2443, 'hard'),
(3031, 'hard-to-repeat'),
(3400, 'hard:'),
(1551, 'hardened'),
(2424, 'harder'),
(4941, 'hardest'),
(2690, 'hardware\r\n			device'),
(2682, 'hardware'),
(2996, 'harm'),
(5075, 'harmoniously'),
(3318, 'has:'),
(2781, 'hash'),
(1804, 'hasten'),
(4758, 'hates'),
(2556, 'have\r\n			a'),
(3693, 'have\r\n			something'),
(4161, 'have\r\n			the'),
(3242, 'have\r\n			thought'),
(2378, 'have\r\n			to'),
(357, 'have'),
(4803, 'haven'),
(568, 'having'),
(4586, 'head'),
(1330, 'headdresses'),
(1845, 'headed'),
(5415, 'headericon'),
(1615, 'heads'),
(3568, 'health'),
(4839, 'healthful'),
(4934, 'healthy\r\n			teamwork'),
(5097, 'healthy'),
(2753, 'heap'),
(4748, 'hear\r\n			you'),
(3359, 'hear'),
(5259, 'hear<'),
(3946, 'heard'),
(3314, 'hearing'),
(782, 'heart'),
(950, 'hearths'),
(3961, 'heat'),
(1508, 'heavenly'),
(1656, 'heavens'),
(3603, 'heavy'),
(5606, 'heeft'),
(5608, 'heet'),
(1883, 'hegemonic'),
(1601, 'height'),
(1444, 'heights');
INSERT INTO `search_invertedindex` (`id`, `keyword`) VALUES
(777, 'held'),
(3353, 'hell'),
(4265, 'help'),
(2561, 'helpful'),
(2330, 'helps'),
(2758, 'hence'),
(5568, 'hendrerit'),
(3449, 'her;\r\n			and\r\n			•'),
(413, 'here'),
(1846, 'hereditary'),
(611, 'herein'),
(2151, 'heritage'),
(3196, 'herself\r\n			and'),
(112, 'heuristic'),
(2240, 'hidden'),
(4464, 'hide'),
(4459, 'hiding'),
(5596, 'hier'),
(1840, 'hierarchical'),
(259, 'hierarchy'),
(2000, 'hieroglyphic'),
(1305, 'hieroglyphics'),
(1058, 'hieroglyphs'),
(1938, 'high'),
(4913, 'high-performing'),
(2636, 'higher'),
(993, 'highest'),
(917, 'highlands'),
(1319, 'highlights'),
(1035, 'highly'),
(617, 'hill'),
(1438, 'hills'),
(3030, 'hint'),
(2864, 'hints'),
(3916, 'hire'),
(3949, 'hired'),
(4680, 'hirings'),
(3569, 'historical'),
(1773, 'historiography'),
(1714, 'history\r\n\r\n\r\n\r\nduring'),
(1966, 'history\r\n\r\nthe'),
(2064, 'history\r\n\r\nwhile'),
(2063, 'history'),
(4497, 'hitting'),
(5187, 'hodgepodge;'),
(2239, 'hold'),
(1937, 'holy'),
(3566, 'home\r\n			computer'),
(3565, 'home'),
(3772, 'home<'),
(1521, 'homes'),
(3288, 'homework'),
(3650, 'homicidal'),
(2031, 'honduras'),
(3104, 'honest'),
(3076, 'honestly'),
(4428, 'honesty'),
(5139, 'hoodwinked'),
(3217, 'hopefully\r\n			in'),
(4213, 'hopefully\r\n			your'),
(2965, 'hopefully'),
(4223, 'hopes'),
(3855, 'horrible'),
(4878, 'horror'),
(3597, 'hour'),
(2837, 'hours'),
(4086, 'house'),
(1621, 'housed'),
(1896, 'household'),
(1933, 'households'),
(1578, 'houses'),
(3099, 'how\r\n			obvious'),
(2959, 'how\r\n			the'),
(696, 'however'),
(2922, 'html'),
(5583, 'http:'),
(1291, 'hudson'),
(2730, 'huffman'),
(5462, 'hulp'),
(771, 'human'),
(2152, 'humanity'),
(4515, 'humans'),
(1022, 'hundreds'),
(2048, 'hurricanes'),
(4531, 'hurt'),
(3040, 'hypothesis'),
(2328, 'i\r\n			find'),
(5144, 'i\r\n			hope'),
(5527, 'iaculis'),
(1645, 'iconographic'),
(393, 'idea'),
(864, 'ideal'),
(4440, 'idealists:'),
(2390, 'ideally'),
(3360, 'ideas'),
(1094, 'identifiably-maya'),
(3165, 'identify'),
(1488, 'identity'),
(2137, 'ideologies'),
(4699, 'if\r\n			nothing'),
(3388, 'if\r\n			someone'),
(4212, 'if\r\n			the'),
(2304, 'if\r\n			there'),
(3371, 'if\r\n			you'),
(5595, 'iframe'),
(5337, 'iframe&gt;&lt;'),
(5586, 'iframe<'),
(5588, 'iframe><'),
(2746, 'ignore'),
(2833, 'ignored'),
(458, 'ignores'),
(3654, 'illness'),
(1263, 'illuminate'),
(4289, 'illusion'),
(2917, 'illustrates'),
(4834, 'image'),
(1352, 'imitate'),
(4076, 'immature\r\n			using'),
(4075, 'immature'),
(4650, 'immature<'),
(4280, 'immediate'),
(1510, 'immediately'),
(3996, 'impact\r\n			on'),
(3712, 'impact'),
(1160, 'impacts'),
(4746, 'impede'),
(3027, 'imperfect\r\n			knowledge'),
(2190, 'imperfect'),
(2191, 'imperfectly\r\n			documented'),
(3006, 'implanted\r\n			in'),
(2824, 'implement'),
(2721, 'implementation'),
(4139, 'implementations'),
(218, 'implemented'),
(3135, 'implicitly'),
(3672, 'implies'),
(5376, 'import'),
(27, 'importance'),
(4426, 'important\r\n			skills'),
(3963, 'important\r\n			than'),
(3053, 'important\r\n			to'),
(39, 'important'),
(3756, 'important<'),
(3432, 'importantly\r\n			however'),
(4010, 'importantly'),
(2159, 'imported_lesson'),
(3079, 'impossibility\r\n			of'),
(5203, 'impossible\r\n			it'),
(3062, 'impossible\r\n			to'),
(3073, 'impossible'),
(5272, 'impossible<'),
(2527, 'impractical'),
(3609, 'impress'),
(3376, 'impression'),
(1443, 'impressive'),
(2549, 'improper'),
(2733, 'improve'),
(2720, 'improved'),
(2599, 'improvement'),
(2400, 'improvement;'),
(1564, 'improvements'),
(2578, 'improving'),
(4408, 'in\r\n			a'),
(4340, 'in\r\n			it'),
(3462, 'in\r\n			order'),
(5017, 'in\r\n			public'),
(2797, 'in\r\n			the'),
(4955, 'in\r\n			this'),
(2362, 'in\r\n			which'),
(4309, 'in\r\n			your'),
(4024, 'in?\r\n			\r\n			you'),
(2547, 'inability'),
(3518, 'inactive\r\n			and'),
(850, 'inappropriate'),
(741, 'inca'),
(4096, 'incentive'),
(1135, 'inception'),
(698, 'inclining'),
(951, 'include'),
(3023, 'include:\r\n			\r\n			•'),
(886, 'included'),
(364, 'includes'),
(1090, 'including'),
(5120, 'incompressible'),
(3433, 'inconsistent'),
(2057, 'incorporate'),
(4070, 'incorporated\r\n			into'),
(3809, 'increase\r\n			performance'),
(366, 'increase'),
(2775, 'increases'),
(1718, 'increasing'),
(1889, 'increasingly'),
(1389, 'indeed'),
(3671, 'independence'),
(4156, 'independent\r\n			and'),
(1427, 'independent'),
(1016, 'independently'),
(2614, 'index'),
(1327, 'indicating'),
(2680, 'indices'),
(1807, 'indigenous'),
(370, 'indirect'),
(4396, 'indistinguishable'),
(4944, 'individual\r\n			both'),
(1170, 'individual'),
(4893, 'individually'),
(1152, 'individuals'),
(363, 'inductive'),
(4561, 'industries'),
(3909, 'inefficiency;'),
(3782, 'inefficient'),
(3623, 'inertia'),
(3952, 'inessential'),
(1952, 'inevitable'),
(2218, 'inevitably'),
(2623, 'inexpert'),
(715, 'infinite'),
(908, 'influence'),
(2106, 'influenced'),
(904, 'influences'),
(4762, 'inform\r\n			everyone'),
(2522, 'inform'),
(4195, 'informal'),
(3306, 'information\r\n			sources\r\n			respect'),
(3759, 'information\r\n			sources<'),
(2438, 'information\r\n			that'),
(488, 'information'),
(2428, 'informative'),
(4281, 'informing'),
(2303, 'ingenuity'),
(1634, 'inhabitants'),
(2065, 'inhabited'),
(4964, 'initial'),
(429, 'initialization'),
(533, 'initialized'),
(57, 'initializes'),
(1824, 'initially'),
(4785, 'initiate'),
(1780, 'initiated'),
(5240, 'initiates'),
(5424, 'injectietechniek'),
(1336, 'inkpots'),
(5431, 'inleiding'),
(2618, 'inner'),
(4080, 'inoperability'),
(4522, 'input\r\n			rate'),
(2507, 'input'),
(247, 'inquisition'),
(756, 'inscribed'),
(1019, 'inscriptions'),
(4171, 'insecure'),
(575, 'insert'),
(343, 'inserted'),
(646, 'inside'),
(5118, 'insight'),
(3465, 'insist'),
(3390, 'insists'),
(3249, 'install'),
(1429, 'instance'),
(1585, 'instances'),
(2713, 'instantaneously'),
(2298, 'instead\r\n			it'),
(1042, 'instead'),
(3989, 'instigate'),
(1383, 'instigated'),
(4909, 'instrument'),
(2395, 'insufficiently'),
(2873, 'insured'),
(1214, 'intact'),
(2150, 'intangible'),
(671, 'integer'),
(1699, 'integral'),
(1417, 'integrate'),
(3999, 'integrating'),
(3817, 'integration'),
(4021, 'integration?\r\n			•'),
(3028, 'integrity'),
(1971, 'intellectual'),
(2813, 'intelligence'),
(3692, 'intelligent'),
(5088, 'intend'),
(2416, 'intended'),
(1977, 'intensive'),
(4887, 'intentional'),
(2384, 'intentionally'),
(2184, 'interact'),
(2116, 'interaction'),
(4355, 'interchange'),
(5520, 'interdum'),
(1158, 'interest'),
(977, 'interested'),
(4784, 'interesting'),
(1868, 'interestingly'),
(5166, 'interests\r\n			of'),
(3786, 'interface'),
(4140, 'interfaces'),
(1458, 'interior'),
(4591, 'intermediate\r\n			programmer'),
(2422, 'intermediate'),
(2827, 'intermittent'),
(3347, 'intern'),
(526, 'internal'),
(3234, 'internet'),
(3673, 'interpersonal'),
(1091, 'interpretation'),
(3238, 'interpretation:'),
(759, 'interpreting'),
(829, 'intersection'),
(3962, 'interview\r\n			it'),
(3960, 'interview'),
(3968, 'interviewee'),
(3913, 'interviewees\r\n			evaluating'),
(3912, 'interviewees'),
(4642, 'interviewees<'),
(3936, 'interviewers'),
(3924, 'interviewing'),
(3839, 'intimate'),
(5060, 'intimately'),
(3843, 'intimidated'),
(4538, 'into\r\n			memory'),
(3618, 'into\r\n			what'),
(578, 'into'),
(579, 'introduction'),
(4598, 'intuit'),
(3683, 'inured'),
(1920, 'invariably'),
(964, 'invented'),
(4033, 'invest'),
(4575, 'invested'),
(3119, 'investigation'),
(5598, 'invoeren'),
(4921, 'invoke'),
(3627, 'involved'),
(2233, 'involves'),
(4677, 'ipos'),
(5481, 'ipsum'),
(4383, 'irrelevant'),
(4612, 'is\r\n			about'),
(4333, 'is\r\n			both'),
(2482, 'is\r\n			currently'),
(4196, 'is\r\n			done'),
(4145, 'is\r\n			hard'),
(3067, 'is\r\n			impossible'),
(4227, 'is\r\n			not'),
(4759, 'is\r\n			nothing'),
(4472, 'is\r\n			perhaps'),
(3605, 'is\r\n			programmers'),
(3579, 'is\r\n			serious'),
(2423, 'is\r\n			sometimes'),
(2510, 'is\r\n			spent'),
(3172, 'is\r\n			the'),
(3544, 'is\r\n			very'),
(2342, 'is\r\n			where'),
(4842, 'is\r\n			your'),
(717, 'is:\r\n			\r\n			\r\n				\r\n					\r\n						'),
(328, 'is:\r\n			\r\n			v'),
(86, 'is:\r\n			a'),
(687, 'is:\r\n			k'),
(4131, 'isolate'),
(279, 'isolated'),
(5033, 'issue\r\n			from'),
(3816, 'issue'),
(4772, 'issues\r\n			you'),
(2509, 'issues'),
(3423, 'it\r\n			clear'),
(4149, 'it\r\n			disagreement'),
(2739, 'it\r\n			for'),
(5248, 'it\r\n			help?'),
(4088, 'it\r\n			is'),
(4306, 'it\r\n			should'),
(3634, 'it\r\n			takes'),
(4089, 'it:\r\n			\r\n			1'),
(4535, 'it;\r\n			no'),
(3439, 'it;\r\n			•'),
(5256, 'it?\r\n			\r\n		\r\n	\r\n\r\n'),
(5274, 'it?\r\n			<'),
(3132, 'item'),
(1942, 'items'),
(291, 'itself'),
(1726, 'itza'),
(1758, 'itzá'),
(816, 'itzamna'),
(344, 'j:=v'),
(2020, 'jade'),
(1120, 'january'),
(2895, 'java™'),
(367, 'jk+1'),
(5064, 'job;'),
(4862, 'jobs'),
(1367, 'jolja'),
(139, 'journey'),
(5464, 'jpeg'),
(2369, 'judge'),
(2966, 'judgment\r\n			that'),
(2417, 'judgment'),
(5574, 'juiste'),
(1049, 'julian'),
(2282, 'jump;'),
(1679, 'jungle'),
(193, 'just'),
(5564, 'justo'),
(5430, 'kantklossen'),
(5081, 'kawasaki'),
(1684, 'keen'),
(159, 'keep'),
(924, 'keeper'),
(3049, 'keeping'),
(1592, 'kept'),
(3812, 'keys'),
(4394, 'keystrokes'),
(5594, 'khaslfa'),
(5599, 'kijken'),
(774, 'killed'),
(2628, 'kind'),
(3900, 'kindness'),
(2265, 'kinds'),
(1897, 'king'),
(1855, 'kingdom'),
(1769, 'kingdoms'),
(1151, 'knew'),
(2995, 'knife'),
(2269, 'know'),
(5071, 'knowing\r\n			what'),
(902, 'knowing'),
(4177, 'knowledge\r\n			changes'),
(935, 'knowledge'),
(4413, 'knowledge?'),
(116, 'known'),
(4573, 'knows'),
(3131, 'knuckleheads'),
(2090, 'komchen'),
(559, 'kruskal'),
(1693, 'kukulcan'),
(1848, 'k’uhul'),
(3101, 'labor'),
(1245, 'laborious'),
(1526, 'lack'),
(1465, 'lacked'),
(1532, 'lacking'),
(1994, 'lacks'),
(1757, 'lake'),
(1761, 'lakes'),
(1861, 'land'),
(1212, 'landa'),
(1798, 'lands'),
(1876, 'landscape'),
(5414, 'lang-dutch'),
(5413, 'lang-dutch-machine'),
(3407, 'language\r\n			in'),
(3858, 'language\r\n			that'),
(1077, 'language'),
(5229, 'languages\r\n			embedding'),
(5146, 'languages\r\n			the'),
(4318, 'languages\r\n			there'),
(2141, 'languages'),
(4322, 'languages---they'),
(4663, 'languages<'),
(5511, 'laoreet'),
(356, 'large'),
(1468, 'large-scale'),
(1851, 'larger'),
(1922, 'largest'),
(4923, 'larry'),
(324, 'last'),
(1247, 'late'),
(744, 'later'),
(2957, 'latest'),
(4350, 'latin'),
(982, 'latitude'),
(4292, 'latter'),
(4977, 'lavishly'),
(2840, 'laws\r\n			of'),
(4675, 'layoffs'),
(5316, 'layout'),
(1499, 'layouts'),
(4925, 'laziness'),
(204, 'lead'),
(3706, 'leader'),
(3722, 'leaders'),
(4791, 'leadership'),
(491, 'leading'),
(637, 'leads'),
(2788, 'leak'),
(2790, 'leaks'),
(4850, 'leaps'),
(2160, 'learn'),
(5320, 'learn:\r\n\r\nhow'),
(5356, 'learn:<'),
(4722, 'learned'),
(1281, 'learning'),
(3312, 'learns'),
(162, 'least'),
(3127, 'leave\r\n			anything'),
(3874, 'leave'),
(278, 'leaves'),
(4420, 'lectures'),
(5546, 'lectus'),
(702, 'left'),
(776, 'legs'),
(1037, 'length'),
(1791, 'lengthy'),
(395, 'less'),
(2774, 'lessens'),
(1511, 'lesser'),
(5322, 'lesson\r\n'),
(581, 'lesson'),
(5360, 'lesson<'),
(5381, 'lessons\r\nhow'),
(5287, 'lessons'),
(3545, 'lets'),
(5449, 'letsel'),
(2481, 'level'),
(275, 'levels'),
(5255, 'leverage'),
(5345, 'li>\r\n<'),
(5368, 'li>\r\nannouncements<'),
(5367, 'li>\r\ncalendar<'),
(5364, 'li>\r\nchat<'),
(5369, 'li>\r\ncomments<'),
(5343, 'li>\r\ncreate'),
(5359, 'li>\r\nhow'),
(5365, 'li>\r\npersonal'),
(5351, 'li>\r\nuse'),
(5559, 'libero'),
(2624, 'libraries'),
(3243, 'library'),
(2920, 'licensed'),
(857, 'lies'),
(868, 'life'),
(855, 'life-cycle'),
(1700, 'lifestyle'),
(4520, 'light'),
(4532, 'lightly'),
(2235, 'like\r\n			the'),
(797, 'like'),
(2375, 'like:'),
(3088, 'likely'),
(3171, 'likewise'),
(4838, 'limbs'),
(1430, 'limestone'),
(1569, 'limestone-stucco'),
(1591, 'limitations'),
(2435, 'limited;'),
(2365, 'line\r\n			makes'),
(229, 'line'),
(3199, 'line-by-line'),
(4362, 'linear'),
(1026, 'lines'),
(4374, 'lingua'),
(1270, 'linguist'),
(1576, 'lintel'),
(1175, 'lintels'),
(3272, 'lisp'),
(3280, 'list'),
(3372, 'listen'),
(4778, 'listening'),
(1324, 'literacy\r\n\r\n\r\n\r\nscribes'),
(1339, 'literacy'),
(882, 'literally'),
(1157, 'little'),
(2180, 'live'),
(1302, 'lives'),
(4496, 'load'),
(4533, 'loaded'),
(4619, 'local\r\n			copy'),
(909, 'local'),
(1934, 'locales'),
(1088, 'localities'),
(1857, 'locality'),
(2705, 'locally'),
(2083, 'located'),
(1428, 'location'),
(1440, 'loft'),
(2427, 'log\r\n			logging'),
(3740, 'log<'),
(4605, 'logarithm'),
(2258, 'logging\r\n			are'),
(2254, 'logging'),
(2841, 'logic'),
(693, 'logically'),
(1064, 'logograms'),
(1066, 'logographic'),
(4947, 'logoized'),
(1068, 'logosyllabic'),
(2434, 'logs'),
(1289, 'london:'),
(1244, 'long'),
(2407, 'longer'),
(605, 'look'),
(2242, 'looking'),
(2346, 'looks'),
(2659, 'loop'),
(2653, 'loops\r\n			sometimes'),
(2619, 'loops'),
(3745, 'loops<'),
(5191, 'loose'),
(2053, 'loosely'),
(4093, 'lore'),
(5536, 'lorem'),
(2291, 'lose'),
(5030, 'loss'),
(1163, 'lost'),
(3404, 'lousy'),
(3066, 'love'),
(5148, 'loves'),
(2629, 'low-hanging'),
(2045, 'low-lying'),
(3800, 'low?\r\n			\r\n			•'),
(274, 'lower'),
(1974, 'lowland'),
(1721, 'lowlands'),
(5578, 'lt;<'),
(406, 'lt;='),
(730, 'lt;=cost'),
(3964, 'luck'),
(2372, 'lucky'),
(1228, 'lumps'),
(894, 'lunation'),
(4197, 'lunches'),
(4890, 'lux!\r\n			\r\n		\r\n	\r\n\r\n'),
(5262, 'lux!\r\n			<'),
(3014, 'luxury'),
(5469, 'maar'),
(5426, 'maas'),
(2212, 'machine'),
(3008, 'machines'),
(4439, 'made\r\n			by'),
(4767, 'made\r\n			harder'),
(609, 'made'),
(2040, 'madre'),
(1216, 'madrid'),
(5507, 'maecenas'),
(2223, 'magic'),
(5565, 'magna'),
(4731, 'magnitude'),
(74, 'main'),
(1295, 'mainly'),
(2131, 'maintain'),
(885, 'maintained'),
(4100, 'maintainers?\r\n			\r\n			7'),
(4622, 'maintaining'),
(3799, 'maintenance'),
(856, 'maize'),
(802, 'major'),
(1257, 'majority'),
(5025, 'make\r\n			more'),
(3831, 'make\r\n			things'),
(5107, 'make\r\n			us'),
(495, 'make'),
(4170, 'maker'),
(4160, 'makers'),
(4064, 'makes\r\n			porting'),
(2462, 'makes'),
(2220, 'making'),
(5550, 'malesuada'),
(3653, 'malfunctioning\r\n			or'),
(4410, 'manage\r\n			a'),
(2743, 'manage'),
(4548, 'managed'),
(2352, 'management'),
(3156, 'manager'),
(4709, 'managerial'),
(3065, 'managers'),
(5385, 'managing'),
(5171, 'mandated'),
(3174, 'mandatory'),
(4370, 'manipulation'),
(4719, 'mankind'),
(1540, 'manpower'),
(1181, 'manufactured'),
(584, 'many'),
(1686, 'mapped'),
(227, 'mark'),
(3509, 'marked'),
(5073, 'market'),
(3057, 'marketing'),
(4256, 'marking'),
(3917, 'marriage'),
(3910, 'marrying'),
(5526, 'massa'),
(840, 'massive'),
(2707, 'master'),
(2709, 'master---period'),
(4804, 'mastered'),
(2148, 'masterpiece'),
(4017, 'match'),
(2820, 'matched'),
(3540, 'matches?'),
(3539, 'matching\r\n			algorithm'),
(1387, 'matching'),
(1239, 'material'),
(1523, 'materials\r\n\r\n\r\n\r\na'),
(1542, 'materials'),
(1584, 'materials;'),
(3244, 'math'),
(600, 'mathematical'),
(1008, 'mathematics\r\n\r\n\r\n\r\n	\r\n		\r\n			 \r\n		\r\n		\r\n			 \r\n			maya'),
(1007, 'mathematics'),
(1118, 'matter'),
(765, 'matters'),
(5502, 'mattis'),
(3801, 'mature'),
(4082, 'matures'),
(5515, 'mauris'),
(1864, 'maxam'),
(677, 'maximize'),
(624, 'maximized'),
(409, 'maximum'),
(5558, 'maximus'),
(4583, 'may\r\n			have'),
(732, 'maya'),
(2121, 'maya;'),
(853, 'mayan'),
(1731, 'mayapan'),
(2157, 'mayas\r\n\r\n\r\n\r\n\r\n'),
(593, 'maybe'),
(3361, 'maybe;\r\n			they'),
(2389, 'mean'),
(3437, 'mean?'),
(3120, 'meaning\r\n			of'),
(2631, 'meaning\r\n			that'),
(606, 'meaning'),
(3094, 'means\r\n			with'),
(44, 'means'),
(3092, 'means:\r\n			\r\n			i'),
(3438, 'means:\r\n			\r\n			•'),
(903, 'meant'),
(355, 'meanwhile'),
(4876, 'measurable'),
(1036, 'measure'),
(4437, 'measured'),
(2557, 'measuring'),
(3557, 'meditate'),
(3460, 'meet'),
(4193, 'meeting'),
(4185, 'meeting;'),
(3638, 'meetings'),
(5007, 'member'),
(3208, 'members'),
(2814, 'memory\r\n			and'),
(2744, 'memory\r\n			memory'),
(2351, 'memory'),
(3749, 'memory<'),
(2356, 'mental'),
(2950, 'mentor'),
(2290, 'mentor---we'),
(5208, 'mere\r\n			work'),
(4230, 'merely'),
(837, 'merge'),
(2135, 'merger'),
(5252, 'meshes'),
(1099, 'mesoamerica'),
(1011, 'mesoamerican'),
(3487, 'mess'),
(5336, 'messages\r\ncalendar\r\nannouncements\r\ncomments\r\n\r\n '),
(5366, 'messages<'),
(4446, 'messy'),
(1537, 'metal'),
(1600, 'meters'),
(245, 'method'),
(439, 'methods'),
(4735, 'metric'),
(1931, 'mexican'),
(1828, 'mexico'),
(1881, 'mexico:'),
(1268, 'michael'),
(2089, 'mid-sized'),
(952, 'middle'),
(3330, 'might\r\n			be'),
(627, 'might'),
(3655, 'mild'),
(2122, 'miles'),
(4279, 'milestone'),
(4255, 'milestones'),
(2003, 'military'),
(2066, 'millennium'),
(1023, 'millions'),
(1559, 'mimicked'),
(634, 'mind'),
(3007, 'minds'),
(1415, 'minimal'),
(432, 'minimoum'),
(10, 'minimum'),
(2661, 'minutes\r\n			considering'),
(3326, 'minutes'),
(1668, 'mirador'),
(3879, 'miscommunicate'),
(3081, 'miscommunication'),
(4504, 'miserable'),
(3615, 'mislead\r\n			the'),
(4278, 'miss'),
(4291, 'missed'),
(2779, 'mistake'),
(3878, 'misunderstanding'),
(2099, 'mixe-zoque–'),
(1558, 'mixed'),
(4519, 'model\r\n			some'),
(267, 'model'),
(4873, 'models'),
(2796, 'moderately'),
(3271, 'modern\r\n			database'),
(597, 'modern'),
(1536, 'modes'),
(1520, 'modest'),
(5070, 'modesty'),
(2250, 'modification'),
(1395, 'modifications'),
(2455, 'modify'),
(2276, 'modifying'),
(5375, 'modules\r\n'),
(5197, 'modules'),
(5472, 'moeten'),
(5454, 'mogelijk'),
(5518, 'mollis'),
(2393, 'moment'),
(4556, 'money'),
(973, 'monte'),
(3327, 'month'),
(920, 'months'),
(1900, 'monumental'),
(1174, 'monuments'),
(896, 'moon'),
(1915, 'moral'),
(4401, 'morale'),
(5497, 'morbi'),
(3651, 'more\r\n			than'),
(195, 'more'),
(1724, 'more;'),
(1555, 'mortar'),
(5219, 'most\r\n			attractive'),
(4359, 'most\r\n			boring'),
(3106, 'most\r\n			engineers'),
(115, 'most'),
(1172, 'mostly'),
(4549, 'motivated\r\n			it'),
(1813, 'motivated'),
(4669, 'motivated<'),
(4402, 'motivates'),
(4569, 'motivating'),
(4562, 'motivational'),
(3948, 'motivations'),
(2079, 'mounds'),
(2038, 'mountainous'),
(2964, 'move\r\n			on'),
(655, 'move'),
(828, 'movements'),
(648, 'moving'),
(170, 'msec'),
(2582, 'much\r\n			sense'),
(852, 'much'),
(3351, 'much;'),
(2870, 'multi-threaded'),
(879, 'multiple'),
(4187, 'multiplied'),
(2893, 'multithreaded\r\n			application'),
(3295, 'multitude'),
(1436, 'municipalities'),
(3245, 'mushrooms'),
(4313, 'must\r\n			explicitly'),
(120, 'must'),
(4466, 'mutators\r\n			and'),
(2214, 'mute'),
(4343, 'myself'),
(3547, 'mysteries'),
(2297, 'mystery'),
(2341, 'mystery?'),
(3246, 'mysticism'),
(4711, 'myth'),
(1647, 'mythology'),
(4710, 'myths\r\n			the'),
(1373, 'myths'),
(4728, 'myths:\r\n			\r\n			•'),
(5258, 'myths<'),
(60, 'n\r\n			\r\n			at'),
(1191, 'nahuatl-language'),
(2086, 'nakbe'),
(1031, 'naked'),
(414, 'name'),
(989, 'named'),
(5026, 'namely\r\n			the'),
(4360, 'namely'),
(1859, 'naranjo'),
(826, 'narratives'),
(5250, 'narrowly'),
(1121, 'national'),
(5476, 'nationale'),
(2028, 'nations'),
(1420, 'natural'),
(5018, 'naturally'),
(747, 'nature'),
(4883, 'nature:'),
(640, 'near'),
(1127, 'nearly'),
(937, 'nebula'),
(681, 'necessarily'),
(1530, 'necessary'),
(1568, 'necessity'),
(5477, 'nederland'),
(2860, 'need\r\n			when'),
(172, 'need'),
(3409, 'need:'),
(4019, 'need?\r\n			•'),
(1630, 'needed'),
(2749, 'needs'),
(4797, 'neglect'),
(5040, 'negotiate'),
(1949, 'negras'),
(1849, 'neighborhood'),
(2098, 'neighboring'),
(1015, 'neighbors'),
(2124, 'neither'),
(5495, 'neque'),
(706, 'network'),
(1874, 'never'),
(3511, 'new\r\n			name'),
(4732, 'new\r\n			persons'),
(548, 'newly'),
(4882, 'news'),
(188, 'next'),
(2603, 'next-most-expensive'),
(5516, 'nibh'),
(3785, 'nice'),
(5421, 'nieuwe'),
(4552, 'nifty'),
(818, 'night'),
(2831, 'nightmare'),
(919, 'nine'),
(5548, 'nisi'),
(5503, 'nisl'),
(4884, 'no\r\n			large'),
(4385, 'no\r\n			matter'),
(4737, 'no\r\n			success'),
(4574, 'no\r\n			trust'),
(1512, 'nobles'),
(3600, 'noblesse'),
(3383, 'nobody'),
(73, 'node'),
(273, 'nodes'),
(268, 'non-cycle'),
(3822, 'non-engineers\r\n			engineers'),
(3821, 'non-engineers'),
(3827, 'non-engineers;'),
(4640, 'non-engineers<'),
(4542, 'non-linear'),
(2012, 'non-mesoamerican'),
(4488, 'non-portable'),
(3419, 'non-programmers'),
(3837, 'non-team'),
(4398, 'non-technical'),
(2787, 'noncollectable'),
(1927, 'none'),
(1350, 'nonsensical'),
(3659, 'normally'),
(1390, 'north'),
(1432, 'northern'),
(2528, 'not\r\n			always'),
(5065, 'not\r\n			big'),
(3013, 'not\r\n			have'),
(4530, 'not\r\n			help'),
(5004, 'not\r\n			occasional'),
(2560, 'not\r\n			occur'),
(2644, 'not\r\n			only'),
(3870, 'not\r\n			understand'),
(4377, 'not\r\n			work'),
(1587, 'notable'),
(1100, 'notably'),
(4594, 'notation'),
(5193, 'notations\r\n			'),
(5178, 'notations'),
(1300, 'note'),
(2109, 'noted'),
(3959, 'notes'),
(4877, 'nothing\r\n			is'),
(565, 'nothing'),
(51, 'notice'),
(2883, 'noticeable'),
(2768, 'notices'),
(1243, 'now-lost'),
(5562, 'nulla'),
(145, 'number'),
(728, 'number:\r\n			cost'),
(1338, 'numbered'),
(546, 'numbering'),
(1009, 'numbers\r\n		\r\n	\r\n\r\nin'),
(397, 'numbers'),
(1402, 'numerous'),
(5543, 'nunc'),
(2101, 'oaxaca'),
(2839, 'obey'),
(3446, 'obfuscate'),
(4460, 'object\r\n			oriented'),
(1005, 'object'),
(3225, 'objective'),
(786, 'objects'),
(3601, 'oblige\r\n			and'),
(1032, 'observation'),
(997, 'observations'),
(1027, 'observations;'),
(1505, 'observatories'),
(2229, 'observe\r\n			something'),
(2406, 'observe\r\n			that'),
(2832, 'observe'),
(755, 'observed'),
(2021, 'obsidian'),
(3484, 'obtain'),
(5137, 'obvious'),
(277, 'obviously'),
(1020, 'occasion'),
(4956, 'occasionally\r\n			means'),
(1497, 'occasionally'),
(1991, 'occupation'),
(1832, 'occupied'),
(985, 'occur'),
(2944, 'occurred'),
(2217, 'occurring'),
(2802, 'occurs'),
(5420, 'oefen'),
(4232, 'of\r\n			a'),
(4342, 'of\r\n			cases'),
(2921, 'of\r\n			code'),
(2472, 'of\r\n			execution'),
(4304, 'of\r\n			existing'),
(5201, 'of\r\n			language'),
(5012, 'of\r\n			low'),
(4122, 'of\r\n			maintenance'),
(4716, 'of\r\n			religious'),
(5227, 'of\r\n			success'),
(2486, 'of\r\n			the'),
(3947, 'of\r\n			their'),
(2585, 'of\r\n			thumb'),
(3332, 'of\r\n			time'),
(3781, 'of\r\n			your'),
(3978, 'off\r\n			with'),
(4119, 'offends'),
(4414, 'offer\r\n			to'),
(523, 'offer'),
(790, 'offered'),
(783, 'offering'),
(3642, 'office'),
(3500, 'official'),
(4963, 'often\r\n			cause'),
(3898, 'often\r\n			find'),
(2881, 'often\r\n			finishing'),
(2425, 'often\r\n			messy'),
(3525, 'often\r\n			taboo'),
(2374, 'often\r\n			the'),
(118, 'often'),
(1128, 'oldest'),
(1112, 'olmec'),
(1108, 'olmecs'),
(2812, 'on\r\n			garbage'),
(3047, 'on\r\n			the'),
(4935, 'on\r\n			you'),
(3115, 'on-the-spot'),
(126, 'once'),
(5419, 'onderdeel'),
(4614, 'one\r\n			can'),
(4432, 'one\r\n			sign'),
(5170, 'one-dimensional'),
(5189, 'one-language'),
(3504, 'one-person'),
(1627, 'one-story'),
(443, 'ones'),
(5244, 'oneself'),
(63, 'only'),
(1467, 'onset'),
(5105, 'onto'),
(780, 'open'),
(4008, 'open-source'),
(4959, 'openly'),
(2819, 'operation\r\n			is'),
(2822, 'operation'),
(55, 'operations'),
(3236, 'opinion'),
(1618, 'opponents'),
(3889, 'opportunities'),
(3202, 'opportunity\r\n			for'),
(2642, 'opportunity'),
(1386, 'opposed'),
(643, 'optimal'),
(4028, 'optimistic'),
(3445, 'optimizations'),
(2665, 'optimize\r\n			the'),
(2652, 'optimize'),
(2583, 'optimizing'),
(5239, 'optional'),
(3266, 'options'),
(2319, 'or\r\n			'),
(3469, 'or\r\n			all'),
(3662, 'or\r\n			amphetamines'),
(2637, 'or\r\n			chop'),
(4708, 'or\r\n			project'),
(4919, 'or\r\n			the'),
(2493, 'or\r\n			visibility'),
(2323, 'or\r\n			we'),
(2237, 'or\r\n			whether'),
(4258, 'or\r\n			your'),
(2149, 'oral'),
(1507, 'orbits'),
(140, 'order'),
(336, 'ordered'),
(4261, 'ordering\r\n			equipment'),
(1238, 'organic'),
(5444, 'organiseren'),
(4826, 'organisms'),
(3329, 'organization'),
(4673, 'organizational\r\n			chaos\r\n			there'),
(4685, 'organizational\r\n			chaos'),
(5257, 'organizational\r\n			chaos<'),
(4697, 'organizational\r\n			mayhem'),
(4672, 'organizational'),
(4220, 'organizations'),
(4311, 'organize'),
(4266, 'organized'),
(5286, 'organizing'),
(1504, 'orientation'),
(967, 'oriented'),
(2925, 'origin'),
(2415, 'original\r\n			author'),
(4988, 'original\r\n			fault'),
(473, 'original'),
(2120, 'originate'),
(936, 'orion'),
(536, 'oristiko'),
(5569, 'ornare'),
(4555, 'other\r\n			roles'),
(180, 'other'),
(1437, 'others'),
(36, 'otherwise'),
(3011, 'ought'),
(1284, 'ourselves'),
(761, 'outlook'),
(2312, 'output'),
(1795, 'outset'),
(647, 'outside'),
(3876, 'outsider'),
(3869, 'outsiders'),
(3476, 'outweigh'),
(4475, 'outweighs'),
(1665, 'over'),
(692, 'overadded'),
(3797, 'overall'),
(4996, 'overburden'),
(4294, 'overestimated'),
(3149, 'overestimating\r\n			is'),
(981, 'overhead'),
(2104, 'overlapping'),
(1803, 'overthrown'),
(4917, 'overused'),
(5327, 'overview'),
(3572, 'overwhelming'),
(4771, 'overworked\r\n			or'),
(3576, 'overworked'),
(4069, 'owner'),
(4477, 'owns'),
(1989, 'oxkintok'),
(5466, 'p&gt;\r\n&lt;'),
(5471, 'p&gt;\r\nunie'),
(5433, 'p&gt;\r\n &lt;'),
(5467, 'p&gt;\r\n maar'),
(5342, 'p>\r\n\r\nadd'),
(5363, 'p>\r\n\r\nforum<'),
(5357, 'p>\r\n\r\nhow'),
(5353, 'p>\r\n<'),
(5340, 'p>\r\nafter'),
(5355, 'p>\r\nanother'),
(5436, 'p>\r\nbhv'),
(5361, 'p>\r\nefront'),
(5354, 'p>\r\nfirst'),
(5348, 'p>\r\nin'),
(5480, 'p>\r\nlorem'),
(5549, 'p>\r\npellentesque'),
(5339, 'p>\r\nresponsible'),
(5347, 'p>\r\n <'),
(2070, 'pacific'),
(5122, 'pack'),
(3250, 'package'),
(3138, 'padding'),
(1188, 'padifolia'),
(2897, 'page'),
(2901, 'page-turning'),
(1199, 'pages'),
(5136, 'painfully'),
(4144, 'painless'),
(1230, 'paint'),
(1179, 'painted'),
(2156, 'painting'),
(317, 'pair'),
(13, 'pairs'),
(1623, 'palace'),
(1619, 'palaces'),
(2023, 'palenqua'),
(1962, 'palenque'),
(2014, 'panama'),
(1180, 'paper'),
(1892, 'paradigm'),
(383, 'paragraph'),
(598, 'parallel'),
(3882, 'paraphrase'),
(1217, 'paris'),
(642, 'part'),
(5284, 'part1'),
(5331, 'part2'),
(4188, 'participants'),
(2006, 'participated'),
(4544, 'participating\r\n			machines'),
(5328, 'participation'),
(4043, 'particular\r\n			product'),
(1087, 'particular'),
(1973, 'particularly'),
(4949, 'parties'),
(300, 'partly'),
(1249, 'parts'),
(508, 'parts:'),
(4087, 'party'),
(85, 'pass'),
(979, 'passages'),
(980, 'passes'),
(123, 'passing'),
(3728, 'passively'),
(762, 'past'),
(3227, 'patch'),
(653, 'path'),
(3696, 'patience'),
(4811, 'patient'),
(1853, 'patronage'),
(3606, 'patsies'),
(3604, 'patsy'),
(2808, 'pattern'),
(3680, 'patterns'),
(4455, 'paul'),
(5396, 'payments'),
(4863, 'payoff'),
(417, 'peak'),
(1138, 'peaking'),
(14, 'peaks'),
(5531, 'pellentesque'),
(1785, 'peninsula'),
(4783, 'people\r\n			outside'),
(3666, 'people\r\n			you'),
(773, 'people'),
(3774, 'people<'),
(1808, 'peoples'),
(5165, 'perceive'),
(5044, 'perception\r\n			of'),
(3480, 'perception'),
(2391, 'perfect\r\n			understanding'),
(2182, 'perfect'),
(875, 'perfection'),
(1573, 'perfectly'),
(3022, 'perform'),
(2450, 'performance'),
(1603, 'performed'),
(767, 'performing'),
(5104, 'perhaps\r\n			because'),
(2601, 'perhaps\r\n			reanalyze'),
(1611, 'perhaps'),
(3702, 'period\r\n			of'),
(1778, 'period\r\n\r\n\r\n\r\n\r\nshortly'),
(899, 'period'),
(895, 'periods'),
(3009, 'peripheral\r\n			equipment'),
(5590, 'peritoneaal'),
(854, 'permanence'),
(847, 'permanent'),
(2197, 'permanently'),
(319, 'permutes'),
(353, 'permutes:'),
(2750, 'persist'),
(1144, 'persisted'),
(3491, 'person\r\n			and'),
(778, 'person'),
(3593, 'person;'),
(3276, 'personal'),
(4166, 'personality'),
(4564, 'personally\r\n			motivating'),
(3598, 'personally'),
(4270, 'persons'),
(3362, 'perspective'),
(3258, 'pertinent'),
(1829, 'peru'),
(3352, 'pester'),
(3356, 'pestered'),
(1748, 'peten'),
(1754, 'petén'),
(4457, 'pgsite'),
(5504, 'pharetra'),
(4312, 'phase'),
(1687, 'phases'),
(996, 'phenomena'),
(859, 'philosophy'),
(1062, 'phonetic'),
(4006, 'phrase'),
(2096, 'physical'),
(2951, 'physically'),
(3017, 'physicists'),
(4608, 'physics---and'),
(2632, 'picked'),
(787, 'pictorial'),
(371, 'picture'),
(2474, 'piece'),
(2955, 'pieces'),
(1948, 'piedras'),
(1983, 'pilas'),
(941, 'pin-point'),
(1655, 'place'),
(306, 'placed'),
(5491, 'placerat'),
(304, 'places'),
(5119, 'plain'),
(1431, 'plains'),
(4127, 'plan\r\n			should'),
(3063, 'plan'),
(803, 'planes'),
(1029, 'planets'),
(3055, 'planning\r\n			the'),
(1414, 'planning'),
(4038, 'plans'),
(1229, 'plaster'),
(1606, 'platform'),
(1480, 'platforms'),
(1071, 'play'),
(4159, 'player'),
(4416, 'playing'),
(4417, 'playtime'),
(1455, 'plazas'),
(3109, 'please'),
(968, 'pleiades'),
(1547, 'pliable'),
(5091, 'pocketbooks'),
(5607, 'poes'),
(2260, 'point\r\n			in'),
(61, 'point'),
(423, 'pointer'),
(190, 'pointers'),
(503, 'points'),
(502, 'points:'),
(5152, 'pointy-haired'),
(2281, 'poke'),
(1580, 'poles'),
(570, 'policy'),
(3228, 'politely'),
(1385, 'political'),
(1811, 'polities'),
(1830, 'polity'),
(1820, 'poor'),
(2626, 'poorly'),
(1774, 'popol'),
(293, 'popular'),
(2113, 'populated'),
(1147, 'population'),
(2130, 'populations'),
(2718, 'portability'),
(4484, 'portable'),
(4487, 'ported?'),
(3920, 'portion'),
(2058, 'portions'),
(4483, 'poses'),
(3349, 'position\r\n			can'),
(2025, 'position\r\n\r\nthe'),
(316, 'position'),
(5401, 'positions'),
(381, 'positive'),
(5387, 'possesses'),
(490, 'possibility'),
(136, 'possible'),
(3931, 'possibly'),
(1111, 'post'),
(1461, 'post-classic'),
(2136, 'post-conquest'),
(1712, 'postclassic'),
(1283, 'posterity'),
(3231, 'posting'),
(4760, 'postponing'),
(5560, 'posuere'),
(4819, 'potency'),
(615, 'potential'),
(1178, 'pottery'),
(743, 'power'),
(4368, 'powerful'),
(2264, 'practical'),
(3069, 'practically'),
(4427, 'practice\r\n			courage'),
(2301, 'practice'),
(770, 'practiced'),
(3885, 'practices'),
(4776, 'practicing'),
(5513, 'praesent'),
(4978, 'praise'),
(4986, 'praised'),
(4979, 'praiseworthy'),
(1286, 'prayer'),
(1364, 'pre-classic'),
(1073, 'pre-columbian'),
(1109, 'pre-maya'),
(798, 'pre-modern'),
(933, 'pre-telescopic'),
(1097, 'preceded'),
(380, 'precedence'),
(3317, 'precious\r\n			commodity'),
(1817, 'precious'),
(2471, 'precise'),
(2490, 'precisely'),
(965, 'preclassic'),
(5160, 'precludes'),
(2080, 'precursors'),
(1469, 'predetermined'),
(3070, 'predict'),
(4547, 'predictability\r\n			so'),
(3061, 'predictability'),
(3427, 'prefer'),
(4814, 'preparation'),
(4037, 'prepare'),
(4798, 'prepared\r\n			to'),
(3708, 'prepared'),
(4260, 'preparing'),
(1783, 'presence'),
(695, 'present'),
(2027, 'present-day'),
(4356, 'presented'),
(3370, 'president'),
(3118, 'pressure\r\n			permits'),
(5093, 'pressure\r\n			time-to-market'),
(2334, 'pressure'),
(5270, 'pressure<'),
(1653, 'presumably'),
(689, 'presuming'),
(4582, 'pretend'),
(3578, 'pretty'),
(1446, 'prevailed'),
(5224, 'preview'),
(411, 'previous'),
(4481, 'price\r\n			to'),
(758, 'priest'),
(1209, 'priests'),
(217, 'prim'),
(1001, 'primarily'),
(1583, 'primary'),
(496, 'principal'),
(3675, 'principles'),
(2324, 'printline'),
(2249, 'printlining'),
(1516, 'privacy'),
(4176, 'private'),
(4981, 'private;'),
(1936, 'privileged'),
(3164, 'probabilities'),
(3173, 'probability'),
(2615, 'probably\r\n			made'),
(154, 'probably'),
(3558, 'problem\r\n			magically'),
(296, 'problem\r\n			we'),
(8, 'problem'),
(22, 'problem:\r\n			\r\n			in'),
(4901, 'problems\r\n			it'),
(2487, 'problems\r\n			learning'),
(4779, 'problems\r\n			lie'),
(2564, 'problems\r\n			most'),
(2484, 'problems\r\n			that'),
(117, 'problems'),
(4054, 'problems:\r\n			\r\n			•'),
(3742, 'problems<'),
(248, 'procedure'),
(2548, 'proceed'),
(290, 'process'),
(1182, 'processed'),
(5402, 'processes'),
(2941, 'processing'),
(2531, 'processor'),
(2687, 'processors'),
(3635, 'procure'),
(5108, 'produce\r\n			software'),
(260, 'produce'),
(264, 'produced'),
(369, 'produces'),
(5113, 'producing\r\n			an'),
(2431, 'producing'),
(340, 'producing-examining'),
(2658, 'product'),
(4372, 'product-dependent'),
(2445, 'production'),
(3221, 'productive'),
(4903, 'productivity\r\n			of'),
(4050, 'productivity'),
(4305, 'products'),
(4341, 'professional'),
(3982, 'professionally\r\n			assume'),
(3981, 'professionally'),
(4644, 'professionally<'),
(5133, 'professionals'),
(5277, 'professor'),
(5325, 'professors'),
(5397, 'profiles'),
(2526, 'profiling'),
(613, 'profit'),
(679, 'profit?\r\n			\r\n			an'),
(4607, 'profound'),
(138, 'program'),
(4407, 'program?'),
(2370, 'program?’'),
(2158, 'programmer'),
(4800, 'programmers\r\n			are'),
(2823, 'programmers\r\n			often'),
(2179, 'programmers'),
(3019, 'programming\r\n			can'),
(3783, 'programming\r\n			consists'),
(4371, 'programming\r\n			language'),
(4321, 'programming\r\n			languages'),
(462, 'programming\r\n			the'),
(402, 'programming'),
(2203, 'programs'),
(1288, 'progress'),
(4444, 'progresses'),
(3513, 'progressive'),
(3123, 'progressively'),
(5542, 'proin'),
(4267, 'project\r\n			plan'),
(4891, 'project\r\n			to'),
(673, 'project'),
(5263, 'project<'),
(1913, 'projecting'),
(663, 'projects'),
(5235, 'promethean'),
(1269, 'prominent'),
(3093, 'promise'),
(4226, 'promised'),
(4091, 'promises'),
(4922, 'promote'),
(5038, 'promoted'),
(5037, 'promotion\r\n			to'),
(5036, 'promotion'),
(5268, 'promotion<'),
(3725, 'prone'),
(5063, 'pronouncements'),
(4696, 'proof'),
(515, 'proofed'),
(1676, 'propaganda'),
(258, 'proper'),
(1067, 'properly'),
(276, 'properties'),
(333, 'property'),
(760, 'prophetic'),
(2942, 'proportional'),
(4786, 'proposal\r\n			of'),
(2650, 'proposal\r\n			will'),
(5067, 'proposal'),
(3899, 'propose'),
(3815, 'proposed'),
(3289, 'pros'),
(542, 'prosorino'),
(1814, 'prospects'),
(4897, 'prototype'),
(3117, 'prototyping'),
(1790, 'prove'),
(455, 'proven'),
(4061, 'proves'),
(2612, 'provide\r\n			a'),
(1312, 'provide'),
(2439, 'provided'),
(2765, 'provides'),
(4546, 'providing'),
(5199, 'psychological;'),
(5200, 'psychology'),
(4777, 'public\r\n			speaking'),
(1454, 'public'),
(1103, 'publication'),
(4473, 'publish'),
(1123, 'published'),
(1538, 'pulleys'),
(5537, 'pulvinar'),
(5459, 'punten'),
(793, 'pure'),
(3930, 'purpose'),
(5391, 'pursuing'),
(5529, 'purus'),
(2734, 'pushing'),
(815, 'putrefaction'),
(1893, 'puts'),
(551, 'putting'),
(2060, 'puuc'),
(1398, 'pyramid'),
(1363, 'pyramids'),
(2940, 'quadratic'),
(2592, 'quality'),
(5552, 'quam'),
(595, 'quantities'),
(591, 'quantity'),
(1550, 'quarried'),
(1545, 'quarries'),
(1565, 'quarrying'),
(305, 'queen'),
(295, 'queens'),
(4369, 'query'),
(464, 'quest'),
(177, 'question'),
(4036, 'questions'),
(2910, 'queues'),
(1765, 'quexil'),
(1770, 'quiché'),
(181, 'quick'),
(2340, 'quickly'),
(3392, 'quietly'),
(1316, 'quills'),
(2033, 'quintana'),
(5540, 'quis'),
(3620, 'quit'),
(3814, 'quite\r\n			low'),
(1572, 'quite'),
(213, 'quot;'),
(1749, 'quot;classic'),
(1891, 'quot;court'),
(211, 'quot;data'),
(1953, 'quot;death'),
(1110, 'quot;epi-olmec'),
(1590, 'quot;false'),
(880, 'quot;gods'),
(848, 'quot;good'),
(764, 'quot;heavens'),
(1709, 'quot;i'),
(1322, 'quot;land'),
(1736, 'quot;maya'),
(437, 'quot;minimum'),
(1694, 'quot;observatories'),
(1275, 'quot;our'),
(639, 'quot;pretty'),
(522, 'quot;principal'),
(1789, 'quot;the'),
(1997, 'quot;tree-stones'),
(4869, 'quote\r\n			in'),
(2144, 'rabinal'),
(738, 'rain'),
(1441, 'raise'),
(3587, 'raising'),
(1706, 'ramps'),
(530, 'random'),
(4395, 'rapid'),
(1254, 'rapidly'),
(3716, 'rare'),
(1085, 'rarely'),
(5129, 'rather\r\n			to'),
(1594, 'rather'),
(3239, 'ratio'),
(1485, 're-built'),
(3475, 're-test'),
(657, 'reach'),
(806, 'reached'),
(4173, 'react'),
(1153, 'read'),
(3384, 'read;'),
(2717, 'readability'),
(2724, 'readable'),
(3448, 'reader'),
(1543, 'readily'),
(2701, 'reading'),
(707, 'real'),
(4268, 'reality'),
(4818, 'realize'),
(2935, 'realized'),
(2810, 'reallocated'),
(4703, 'really\r\n			sure'),
(3877, 'really\r\n			there'),
(2168, 'really'),
(1702, 'realm'),
(5417, 'reanimatie'),
(2489, 'reason\r\n			that'),
(265, 'reason'),
(3588, 'reason---every'),
(3701, 'reasonable'),
(1213, 'reasonably'),
(3709, 'reasons\r\n			for'),
(652, 'reasons'),
(3204, 'reassignment'),
(1382, 'rebuilding'),
(1381, 'rebuilt'),
(3310, 'receiving'),
(1259, 'recent'),
(2890, 'recently'),
(1105, 'recently-discovered'),
(4479, 'recode'),
(1360, 'recognizable'),
(3564, 'recognize'),
(3823, 'recognized'),
(3136, 'recommend'),
(2679, 'recomputing'),
(4162, 'reconsidering'),
(1752, 'reconstituted'),
(1296, 'record'),
(893, 'recorded'),
(1970, 'recording'),
(2429, 'records'),
(5029, 'recover\r\n			from'),
(1171, 'recovered'),
(1242, 'recovery'),
(3363, 'recruit'),
(3922, 'recruitment'),
(1227, 'rectangular'),
(842, 'recur'),
(2656, 'recursive'),
(2456, 'redeploy'),
(2640, 'redesign'),
(3489, 'redesigned'),
(1567, 'reduced'),
(4112, 'reducing'),
(2785, 'reference\r\n			remains'),
(1266, 'reference'),
(2784, 'references'),
(2786, 'referent'),
(1626, 'referred'),
(2993, 'referring'),
(2760, 'refers'),
(2712, 'reflect'),
(5021, 'reflected'),
(5095, 'reflects\r\n			a'),
(4126, 'regained'),
(5032, 'regard'),
(3461, 'regardless'),
(1762, 'region'),
(1873, 'regional'),
(1975, 'regions'),
(4206, 'regular'),
(843, 'regularity'),
(4743, 'reinforces'),
(338, 'reject'),
(249, 'rejected'),
(4796, 'rejection'),
(2848, 'related'),
(4567, 'relating\r\n			each'),
(2613, 'relational'),
(763, 'relations'),
(4720, 'relationship'),
(1116, 'relationships'),
(5046, 'relative'),
(2567, 'relatively'),
(4233, 'release'),
(4071, 'release;'),
(2566, 'released'),
(2449, 'relevant'),
(4734, 'reliably'),
(1961, 'relief'),
(1646, 'reliefs'),
(735, 'religion\r\n\r\n\r\n\r\n	\r\n		\r\n			'),
(734, 'religion'),
(4727, 'religious\r\n			person'),
(768, 'religious'),
(2811, 'rely'),
(3291, 'remain\r\n			indecisive'),
(524, 'remain'),
(1304, 'remainder'),
(1546, 'remained'),
(690, 'remaining'),
(1235, 'remains'),
(4259, 'remember\r\n			to'),
(2974, 'remember'),
(1406, 'remnants'),
(1380, 'remodeled'),
(2381, 'remove'),
(1552, 'removed'),
(552, 'removing'),
(2868, 'reoccur\r\n			to'),
(3872, 'repeat'),
(4930, 'repeatable'),
(4411, 'replacement'),
(921, 'replicated'),
(4888, 'reply'),
(4130, 'reported\r\n			after'),
(5323, 'reporting'),
(1826, 'reports'),
(214, 'represent'),
(2698, 'representation'),
(1681, 'representations'),
(881, 'represented'),
(612, 'representing'),
(272, 'represents'),
(2404, 'reproduce'),
(2447, 'reproduced'),
(4174, 'reptilian\r\n			part'),
(4739, 'reputation'),
(4503, 'request'),
(46, 'requested'),
(602, 'require'),
(166, 'required'),
(256, 'requirement'),
(325, 'requirement:'),
(352, 'requirements'),
(161, 'requires'),
(2405, 'rerun'),
(1104, 'research'),
(5074, 'researchers\r\n			are'),
(1113, 'researchers'),
(1060, 'resemblance'),
(3636, 'reserving'),
(5318, 'reset'),
(1632, 'residence'),
(4636, 'resident'),
(4245, 'resides'),
(1664, 'residing'),
(2861, 'resign'),
(4138, 'resillient'),
(3727, 'resist'),
(1806, 'resistance'),
(2947, 'resolve'),
(3690, 'resolved\r\n			somehow'),
(2516, 'resource'),
(1473, 'resources'),
(4406, 'respect\r\n			for'),
(3945, 'respect\r\n			this'),
(1877, 'respect'),
(5167, 'respected'),
(4158, 'respectful'),
(2102, 'respectively'),
(4951, 'respects'),
(3026, 'response'),
(3983, 'responsibility'),
(1771, 'responsible'),
(4577, 'responsive'),
(415, 'rest'),
(3097, 'restate'),
(3866, 'restated'),
(4056, 'restrict'),
(512, 'restricted'),
(4802, 'rests'),
(206, 'result'),
(3468, 'resulting\r\n			document'),
(3254, 'results'),
(4854, 'resurrected'),
(2600, 'rethink'),
(3943, 'retract'),
(477, 'retroactive'),
(238, 'return'),
(131, 'returning'),
(4052, 'reuse'),
(1301, 'reveal'),
(3932, 'revealing'),
(1004, 'reveals'),
(4179, 'reversed'),
(4215, 'review'),
(4217, 'reviewed'),
(3510, 'revision'),
(1733, 'revolt'),
(3486, 'reworking'),
(2426, 'rewrite'),
(4143, 'rewrites'),
(5196, 'rewriting'),
(3633, 'rhythm'),
(4329, 'rich'),
(1827, 'riches'),
(5474, 'richtlijn'),
(2945, 'right\r\n			away'),
(3903, 'right'),
(1492, 'rigid'),
(2809, 'ring'),
(1320, 'rise'),
(2918, 'risk'),
(4942, 'riskiest'),
(4219, 'risks\r\n			a'),
(3210, 'risks'),
(4659, 'risks<'),
(2354, 'risky'),
(5535, 'risus'),
(1602, 'rites'),
(1282, 'ritual'),
(748, 'rituals'),
(1072, 'role'),
(1050, 'roman'),
(1670, 'roof'),
(1577, 'roofs'),
(3080, 'room'),
(1909, 'rooms'),
(271, 'root'),
(2807, 'rotation'),
(1167, 'rough'),
(497, 'roughly'),
(1691, 'round'),
(29, 'route'),
(434, 'routes\r\n			the'),
(11, 'routes'),
(1496, 'royal'),
(1907, 'royalty'),
(4723, 'rude'),
(2825, 'rudimentary'),
(1695, 'ruin'),
(2024, 'ruins\r\n\r\n\r\n\r\n\r\n'),
(1776, 'ruins'),
(84, 'rule'),
(3440, 'rule;\r\n			•'),
(1732, 'ruled'),
(1384, 'ruler'),
(1299, 'rulers'),
(3583, 'rules'),
(1730, 'ruling'),
(3791, 'run-of-the-mill'),
(2202, 'running'),
(1860, 'saal'),
(1479, 'sacbé'),
(1477, 'sacbeob'),
(1514, 'sacred'),
(772, 'sacrifice'),
(4953, 'sacrifices'),
(791, 'sacrificial'),
(3674, 'sacrificing\r\n			your'),
(3444, 'sacrificing'),
(5512, 'sagittis'),
(4992, 'said'),
(5022, 'salaries'),
(3059, 'sales'),
(109, 'salesman'),
(2018, 'salt'),
(2030, 'salvador'),
(318, 'same'),
(913, 'santa'),
(5570, 'sapien'),
(4782, 'satisfaction'),
(342, 'satisfied'),
(323, 'satisfies'),
(4524, 'satisfy'),
(351, 'satisfying'),
(3470, 'save'),
(4686, 'saved'),
(4015, 'savvy'),
(3612, 'saying'),
(498, 'says'),
(1704, 'scale'),
(3574, 'scarcity'),
(3846, 'scared'),
(5450, 'schade'),
(2553, 'schedule'),
(4300, 'scheduled\r\n			periodic'),
(4295, 'scheduled'),
(796, 'scholars'),
(3951, 'school'),
(2975, 'science'),
(3004, 'science’'),
(3001, 'science’---which'),
(2401, 'scientific\r\n			method'),
(2979, 'scientific'),
(2751, 'scope'),
(5377, 'scorm'),
(5282, 'scorm_2004_4ed_v1_1_tr_20090814'),
(4885, 'scratch'),
(2231, 'screen'),
(1328, 'scribes'),
(1079, 'script'),
(2464, 'scroll'),
(3233, 'search'),
(3229, 'searching'),
(851, 'season'),
(827, 'seasonal'),
(4101, 'seasoned'),
(1046, 'seasons'),
(4752, 'second\r\n			best'),
(1460, 'secondary'),
(2532, 'seconds'),
(4690, 'secret'),
(4868, 'section'),
(3387, 'security'),
(2072, 'sedentary'),
(4273, 'seduced'),
(5380, 'see:\r\n\r\n\r\nhow'),
(4816, 'seed'),
(614, 'seek'),
(553, 'seem'),
(1486, 'seemed'),
(1529, 'seemingly'),
(1393, 'seems'),
(970, 'seen'),
(4438, 'sees'),
(1146, 'segments'),
(1816, 'seizure'),
(5313, 'select'),
(700, 'selected'),
(4214, 'selection'),
(200, 'selects'),
(3729, 'self-assesment'),
(3939, 'self-deception'),
(4683, 'self-esteem'),
(3436, 'self-explanatory\r\n			code?'),
(3422, 'self-explanatory'),
(1944, 'self-proclaimed'),
(3832, 'sell'),
(3975, 'selling'),
(1445, 'semblance'),
(2041, 'semi-arid'),
(3298, 'semi-conscious'),
(3176, 'seminar?'),
(5490, 'semper'),
(3652, 'send'),
(585, 'sense'),
(4120, 'sensibilities'),
(3973, 'sensible'),
(4136, 'sent'),
(3531, 'sentence'),
(3087, 'sentence:\r\n			\r\n			i'),
(3421, 'sentiment:\r\n			write'),
(623, 'separate'),
(2385, 'separated'),
(4554, 'separates'),
(2306, 'sequence'),
(3046, 'series'),
(3523, 'serious'),
(5049, 'seriously\r\n			unappreciated'),
(2639, 'seriously'),
(4025, 'serve'),
(1674, 'served'),
(2538, 'server'),
(2894, 'servers'),
(3929, 'serves'),
(5164, 'serving'),
(428, 'set:'),
(683, 'set:l='),
(261, 'sets'),
(3264, 'sets?’'),
(4792, 'setting'),
(1954, 'settlement'),
(1923, 'settlements'),
(2313, 'seven'),
(1025, 'several'),
(1236, 'severely'),
(4198, 'shame'),
(334, 'shape'),
(1698, 'shapes'),
(3862, 'share'),
(2542, 'shared'),
(2115, 'shares'),
(1490, 'sharply'),
(1197, 'sheet'),
(1334, 'shell'),
(2019, 'shells'),
(3205, 'shifting'),
(1872, 'shifts'),
(4132, 'shoddiness'),
(3457, 'shoes'),
(3381, 'short'),
(4489, 'shortand-\r\n			easily-ported'),
(3857, 'shorthand'),
(1204, 'shortly'),
(635, 'shortsighted'),
(4995, 'should\r\n			challenge'),
(4378, 'should\r\n			have'),
(2789, 'should\r\n			look'),
(4271, 'should\r\n			shift'),
(3278, 'should\r\n			start'),
(676, 'should'),
(3602, 'shoulder'),
(407, 'show'),
(820, 'showing'),
(4970, 'shown'),
(3358, 'showoff'),
(62, 'shows'),
(1513, 'shrines;'),
(630, 'shrinking'),
(3294, 'shut'),
(3168, 'sick'),
(4302, 'sickness'),
(390, 'side'),
(386, 'sides'),
(2039, 'sierra'),
(1084, 'sign'),
(4717, 'significance'),
(957, 'significant'),
(1070, 'signs'),
(1819, 'silver'),
(1878, 'similar'),
(2535, 'similarly'),
(192, 'simple'),
(2299, 'simple---any'),
(3533, 'simple:'),
(2666, 'simple;'),
(4344, 'simpler'),
(3096, 'simpleton'),
(531, 'simplicity'),
(4958, 'simply\r\n			disagree'),
(479, 'simply'),
(4512, 'simulate'),
(4518, 'simulations'),
(178, 'since'),
(1195, 'single'),
(1478, 'singular:'),
(1368, 'site'),
(966, 'sites'),
(5447, 'situaties'),
(667, 'situation'),
(2525, 'situations'),
(2129, 'sizable'),
(475, 'size'),
(4523, 'size---until'),
(4231, 'skeptical'),
(1143, 'skill'),
(5409, 'skill-gap'),
(4940, 'skills\r\n			are'),
(4397, 'skills\r\n			learning'),
(2948, 'skills\r\n			to'),
(2643, 'skills'),
(3753, 'skills<'),
(1995, 'slabs'),
(5014, 'slack'),
(3396, 'slacken'),
(3148, 'slacking'),
(4135, 'slashdot'),
(3560, 'sleep'),
(4419, 'sleeping'),
(2195, 'slightest\r\n			bump'),
(3808, 'slightly'),
(4284, 'slipped'),
(4761, 'slips'),
(2497, 'slow'),
(2616, 'slower'),
(3521, 'slows'),
(577, 'small'),
(198, 'smaller'),
(2316, 'smaller:'),
(1710, 'smallest'),
(2968, 'smart'),
(4505, 'smashing\r\n			success?'),
(4704, 'smile'),
(4844, 'smoothly'),
(953, 'smudge'),
(4181, 'so!’'),
(4003, 'so-called'),
(3685, 'social\r\n			pressure'),
(1912, 'social'),
(799, 'societies'),
(2069, 'soconusco'),
(4111, 'software\r\n			and'),
(4081, 'software\r\n			before'),
(3261, 'software\r\n			that'),
(2186, 'software'),
(4094, 'software?\r\n			\r\n			3'),
(891, 'solar'),
(3259, 'solid'),
(5147, 'solitary'),
(988, 'solstice'),
(1642, 'solstices'),
(3443, 'solution\r\n			faster;\r\n			•'),
(21, 'solution'),
(151, 'solutions'),
(33, 'solve'),
(15, 'solves'),
(3584, 'solving'),
(2956, 'some\r\n			books'),
(2573, 'some\r\n			other'),
(2475, 'some\r\n			variable'),
(385, 'some'),
(3607, 'somebody'),
(3161, 'somehow'),
(152, 'someone'),
(3103, 'something\r\n			big'),
(3790, 'something\r\n			other'),
(2204, 'something'),
(452, 'sometimes'),
(1423, 'somewhat'),
(3464, 'somewhere'),
(5298, 'soon'),
(5106, 'sooner'),
(2110, 'sophisticated'),
(3677, 'sort'),
(3253, 'sorting'),
(622, 'sought'),
(4960, 'sound'),
(3972, 'sounds'),
(3305, 'sour'),
(1735, 'source'),
(1919, 'sources'),
(1768, 'southern'),
(2295, 'space\r\n			debugging'),
(4589, 'space\r\n			you'),
(1452, 'space'),
(3737, 'space<'),
(1901, 'spaces'),
(5123, 'span'),
(5434, 'span&gt;&lt;'),
(5582, 'span>'),
(5338, 'span><'),
(5439, 'span>bedrijfshulpverlening<'),
(5579, 'span>iframe<'),
(5581, 'span>src=<'),
(5580, 'span> <'),
(1880, 'spaniards'),
(1149, 'spanish'),
(1357, 'spans'),
(4770, 'speak'),
(4606, 'speaking'),
(468, 'special'),
(1929, 'specialization'),
(1184, 'species'),
(1637, 'specific'),
(2084, 'specifically'),
(220, 'specified'),
(1356, 'spectacular'),
(4442, 'speculate'),
(4462, 'speculative\r\n			code'),
(4451, 'speculative'),
(4117, 'speed'),
(5253, 'spend\r\n			much'),
(2660, 'spend'),
(467, 'spending'),
(2502, 'spent'),
(4855, 'spiral'),
(4763, 'spirit'),
(2338, 'split'),
(2293, 'splitting'),
(1076, 'spoken'),
(1435, 'sprawling'),
(1411, 'spread'),
(5028, 'spreading'),
(2943, 'square\r\n			of'),
(310, 'square'),
(4597, 'squared'),
(298, 'squares'),
(5437, 'staat'),
(2257, 'stable'),
(3374, 'staff'),
(1613, 'stake'),
(3105, 'stall'),
(3113, 'stalled'),
(3110, 'stalling'),
(3847, 'stand'),
(4352, 'standard'),
(4324, 'standardization'),
(4373, 'standardized'),
(4354, 'standards'),
(3619, 'stands'),
(2225, 'staring'),
(962, 'stars'),
(2559, 'start'),
(361, 'starting'),
(3084, 'startling'),
(562, 'starts'),
(2551, 'starvation\r\n			is'),
(2545, 'starvation'),
(1841, 'state'),
(1274, 'stated:\r\n\r\n\r\n\r\n'),
(2479, 'statement'),
(2325, 'statements'),
(1767, 'states'),
(2448, 'statistics'),
(1635, 'stature'),
(3514, 'stay'),
(1176, 'stelae'),
(940, 'stellar'),
(169, 'step'),
(1362, 'stepped'),
(163, 'steps'),
(3178, 'stick'),
(320, 'still'),
(1173, 'stone'),
(1570, 'stones'),
(4691, 'stop'),
(4618, 'store'),
(492, 'stored'),
(3577, 'stories'),
(525, 'storing'),
(2050, 'storms'),
(4715, 'story'),
(3442, 'straightforward'),
(3345, 'strange'),
(1185, 'strangler'),
(4787, 'strawman'),
(4208, 'strengths'),
(3928, 'stress'),
(4701, 'stressed-out'),
(4165, 'stressful'),
(4937, 'stretch'),
(4998, 'stretched'),
(514, 'strictly'),
(3194, 'strikes'),
(2930, 'stripper'),
(3195, 'strong'),
(5440, 'strong>'),
(3209, 'stronger'),
(4452, 'strongly\r\n			recommend'),
(3324, 'strongly'),
(1554, 'structural'),
(212, 'structure'),
(2138, 'structured'),
(1839, 'structures\r\n\r\n\r\n\r\n\r\na'),
(1388, 'structures'),
(4361, 'structuring'),
(1562, 'stucco'),
(2909, 'stuck'),
(5317, 'student'),
(2933, 'studied\r\n			it'),
(3286, 'studied'),
(2949, 'study'),
(4349, 'studying'),
(2667, 'stuff'),
(4559, 'stuff;'),
(3556, 'stumped\r\n			when'),
(3554, 'stumped'),
(3770, 'stumped<'),
(3594, 'stupid'),
(2869, 'stupidest'),
(2973, 'style'),
(2982, 'styles'),
(5226, 'styling'),
(1404, 'stylistic'),
(509, 'sub-problem'),
(474, 'sub-problems'),
(2036, 'sub-region'),
(1482, 'sub-structure'),
(284, 'sub-tree'),
(3302, 'subconscious'),
(2360, 'subdivided'),
(3841, 'subdivisions'),
(1810, 'subdue'),
(1834, 'subdued'),
(435, 'subgraph'),
(3248, 'subject\r\n			and'),
(2977, 'subject'),
(3237, 'subjective'),
(1781, 'subjugate'),
(1882, 'subordinated'),
(2752, 'subroutine'),
(2125, 'subsequent'),
(1162, 'subsequently'),
(289, 'subsets'),
(1796, 'substantive'),
(2496, 'subsystem'),
(2625, 'subsystems'),
(3124, 'subtasks'),
(2261, 'subtly'),
(5228, 'succeed'),
(2961, 'succeeded'),
(1130, 'succeeding'),
(3987, 'success'),
(2314, 'successfully'),
(4736, 'succinctness'),
(3610, 'succumb'),
(142, 'such'),
(4536, 'sufficient'),
(931, 'suggest'),
(1376, 'suggested'),
(1126, 'suggesting'),
(2670, 'suggestions:\r\n			\r\n			•'),
(2076, 'suggests'),
(4241, 'suitability'),
(3881, 'summarize'),
(2738, 'summation'),
(3346, 'summer'),
(518, 'sums'),
(1641, 'sun’s'),
(1059, 'superficial'),
(4899, 'superior\r\n			to'),
(1030, 'superior'),
(3337, 'superiors'),
(821, 'supernatural'),
(959, 'support'),
(4894, 'supporters\r\n			for'),
(942, 'supports'),
(3285, 'suppose'),
(459, 'suppresses'),
(2321, 'sure'),
(4228, 'surest'),
(2280, 'surgery'),
(1524, 'surprising'),
(1494, 'surrounded'),
(1678, 'surrounding'),
(4780, 'survival'),
(1218, 'survive'),
(1215, 'survived'),
(998, 'surviving'),
(2047, 'susceptible'),
(5498, 'suscipit'),
(2854, 'suspect'),
(5501, 'suspendisse'),
(4694, 'sustain\r\n			nothing'),
(4693, 'sustain'),
(4060, 'swapped'),
(4971, 'switch'),
(3562, 'switching'),
(1069, 'syllabic'),
(412, 'symbolism'),
(874, 'symbolized'),
(1063, 'symbols'),
(224, 'symmetrical'),
(2550, 'synchronization'),
(2880, 'synchronize'),
(2543, 'synchronized'),
(3819, 'synergize'),
(3905, 'synergizing'),
(4051, 'synergy'),
(898, 'synodic'),
(4320, 'syntactic'),
(4379, 'syntax'),
(5236, 'system\r\n			into'),
(2866, 'system\r\n			may'),
(4815, 'system\r\n			the'),
(4495, 'system\r\n			works'),
(2761, 'system\r\n			you'),
(1014, 'system'),
(5261, 'system<'),
(521, 'systematic'),
(156, 'systematically'),
(1098, 'systems'),
(4057, 'systems?\r\n			\r\n			•'),
(2032, 'tabasco'),
(2782, 'table'),
(3736, 'table>\r\n'),
(4238, 'tackled'),
(3203, 'tactical'),
(2923, 'tags'),
(975, 'takalik'),
(3395, 'take\r\n			to'),
(633, 'take'),
(81, 'taken'),
(2529, 'takes'),
(4775, 'taking'),
(946, 'tale'),
(4990, 'talent\r\n			nietschze'),
(4989, 'talent'),
(5266, 'talent<'),
(3269, 'talk\r\n			to'),
(3273, 'talk'),
(3328, 'talking\r\n			to'),
(89, 'talking'),
(1234, 'tantalizing'),
(2882, 'task'),
(5183, 'task;'),
(4918, 'tasks\r\n			sometimes'),
(3842, 'tasks'),
(5264, 'tasks<'),
(3679, 'taught'),
(4733, 'taxing'),
(1753, 'tayasal'),
(3735, 'tbody>\r\n<'),
(3733, 'td>\r\n		<'),
(3367, 'teach'),
(4218, 'team\r\n			members'),
(4952, 'team\r\n			spirit'),
(3189, 'team'),
(3190, 'team-wide'),
(3710, 'teammate'),
(4943, 'teammates\r\n			to'),
(3522, 'teammates'),
(5265, 'teammates<'),
(3834, 'teams'),
(3941, 'technical\r\n			skills'),
(3348, 'technical'),
(4920, 'technique\r\n			for'),
(2305, 'technique'),
(1566, 'techniques'),
(5154, 'technological\r\n			decision'),
(4204, 'technologies\r\n			and'),
(1528, 'technologies'),
(3820, 'technology\r\n			to'),
(3787, 'technology'),
(3788, 'technology?'),
(963, 'telescope'),
(2907, 'tell'),
(4749, 'telling'),
(5489, 'tellus'),
(1697, 'temple'),
(1379, 'temples'),
(5523, 'tempor'),
(2286, 'temporarily'),
(543, 'temporary'),
(3657, 'tempted'),
(5551, 'tempus'),
(4047, 'tend'),
(1416, 'tended'),
(3085, 'tendency'),
(471, 'tends'),
(1932, 'tenochtitlan'),
(2716, 'tension'),
(1491, 'teotihuacan'),
(442, 'term'),
(1788, 'termed'),
(426, 'terminal'),
(540, 'terminally'),
(236, 'terminates'),
(2485, 'terms'),
(2056, 'terrain'),
(753, 'terrestrial'),
(3919, 'terrible'),
(1784, 'territories'),
(1321, 'territory'),
(5478, 'terug'),
(3474, 'test\r\n			burden'),
(4494, 'test\r\n			stress'),
(3526, 'test\r\n			unit'),
(3532, 'test\r\n			will'),
(107, 'test'),
(3768, 'test<'),
(3530, 'tested'),
(4307, 'testing\r\n			integration'),
(2792, 'testing'),
(4661, 'testing<'),
(5394, 'tests\r\n\r\n\r\n\r\n\r\n\r\n'),
(5389, 'tests'),
(1996, 'tetun'),
(2924, 'text'),
(788, 'texts'),
(1290, 'thames'),
(3687, 'than\r\n			you'),
(196, 'than'),
(2931, 'thank'),
(3488, 'that\r\n			are'),
(3966, 'that\r\n			can'),
(3275, 'that\r\n			has'),
(3988, 'that\r\n			help'),
(4627, 'that\r\n			needs'),
(2444, 'that\r\n			occur'),
(3581, 'that\r\n			other'),
(2252, 'that\r\n			print'),
(3235, 'that\r\n			smacks'),
(3147, 'that\r\n			the'),
(2704, 'that\r\n			value'),
(2397, 'that\r\n			your'),
(43, 'that'),
(510, 'that:\r\n			\r\n			\r\n			minimum'),
(4828, 'that;'),
(1582, 'thatch'),
(2994, 'the\r\n			1960s'),
(4781, 'the\r\n			advanced'),
(4338, 'the\r\n			audience'),
(4474, 'the\r\n			benefit'),
(5115, 'the\r\n			best'),
(4078, 'the\r\n			biggest'),
(2939, 'the\r\n			code'),
(2735, 'the\r\n			computation'),
(4168, 'the\r\n			confidence'),
(4316, 'the\r\n			course'),
(4154, 'the\r\n			decision'),
(4123, 'the\r\n			decrease'),
(2292, 'the\r\n			delicate'),
(2540, 'the\r\n			end'),
(4142, 'the\r\n			eventual'),
(3911, 'the\r\n			idea'),
(3357, 'the\r\n			intern'),
(3230, 'the\r\n			internet'),
(4859, 'the\r\n			milestones'),
(3570, 'the\r\n			need'),
(5161, 'the\r\n			part'),
(4682, 'the\r\n			programmer'),
(4116, 'the\r\n			project'),
(3016, 'the\r\n			realm'),
(3137, 'the\r\n			results'),
(5215, 'the\r\n			risks'),
(4282, 'the\r\n			scheduled'),
(2865, 'the\r\n			solution'),
(2350, 'the\r\n			space'),
(4264, 'the\r\n			start'),
(2590, 'the\r\n			system'),
(4954, 'the\r\n			team'),
(3398, 'the\r\n			truth'),
(4822, 'the\r\n			uses'),
(2847, 'the\r\n			variability'),
(4881, 'the\r\n			voter'),
(2262, 'the\r\n			way'),
(3682, 'the\r\n			workplace'),
(4210, 'their\r\n			financial'),
(3333, 'their\r\n			position'),
(4915, 'their\r\n			strengths'),
(3580, 'their\r\n			teammates'),
(253, 'their'),
(3888, 'theirs'),
(3368, 'them\r\n			something'),
(128, 'them'),
(5372, 'theme'),
(5370, 'themes'),
(1661, 'themselves');
INSERT INTO `search_invertedindex` (`id`, `keyword`) VALUES
(4810, 'then\r\n			patiently'),
(67, 'then'),
(516, 'theorem'),
(3068, 'theoretically'),
(5418, 'theorie'),
(943, 'theory'),
(3835, 'there\r\n			are'),
(3586, 'there\r\n			can'),
(4969, 'there\r\n			is'),
(4499, 'there\r\n			may'),
(25, 'there'),
(1255, 'thereafter'),
(446, 'therefore'),
(4269, 'these\r\n			decisions'),
(4742, 'these\r\n			myths'),
(2355, 'these\r\n			other'),
(158, 'these'),
(345, 'these:j-1'),
(2270, 'they\r\n			are'),
(5109, 'they\r\n			can'),
(3186, 'they\r\n			exist'),
(3844, 'they\r\n			may'),
(3628, 'they\r\n			work'),
(444, 'they'),
(2318, 'thing'),
(2399, 'things\r\n			that'),
(2234, 'things'),
(2174, 'think'),
(3648, 'thinking\r\n			suicidal'),
(75, 'thinking'),
(3144, 'thinks'),
(2732, 'third'),
(2919, 'third-party'),
(3018, 'thirty'),
(2878, 'this\r\n			case'),
(4687, 'this\r\n			for'),
(2715, 'this\r\n			is'),
(5151, 'this\r\n			issue'),
(2467, 'this\r\n			reason'),
(5168, 'this\r\n			the'),
(7, 'this'),
(3614, 'this:\r\n			\r\n			•'),
(4040, 'thorough'),
(539, 'those'),
(638, 'though'),
(810, 'thought'),
(3649, 'thoughts'),
(1080, 'thousand'),
(1278, 'thousands'),
(2469, 'thread'),
(2900, 'threads'),
(2315, 'three\r\n			are'),
(3142, 'three\r\n			days'),
(4240, 'three\r\n			products'),
(801, 'three'),
(1908, 'throne'),
(69, 'through'),
(1189, 'throughout'),
(2196, 'throw'),
(3496, 'throw-away'),
(739, 'thunder\r\n		\r\n	\r\n\r\nlike'),
(4390, 'tiemann2'),
(2696, 'tight\r\n			loop'),
(4615, 'tightly'),
(1392, 'tikal'),
(4908, 'timbre'),
(4599, 'time\r\n			against'),
(3100, 'time\r\n			estimation'),
(4729, 'time\r\n			on'),
(3222, 'time\r\n			the'),
(4252, 'time\r\n			to'),
(71, 'time'),
(2568, 'time-to-market'),
(3170, 'time;'),
(3757, 'time<'),
(70, 'times'),
(3573, 'timeto-\r\n			market'),
(5538, 'tincidunt'),
(1276, 'tiny'),
(5039, 'title'),
(2727, 'to\r\n			be'),
(3893, 'to\r\n			bring'),
(3784, 'to\r\n			build'),
(3811, 'to\r\n			consider'),
(4002, 'to\r\n			constantly'),
(2534, 'to\r\n			deal'),
(5112, 'to\r\n			do'),
(5138, 'to\r\n			everyone'),
(4501, 'to\r\n			figure'),
(4721, 'to\r\n			forget'),
(4392, 'to\r\n			listen'),
(4857, 'to\r\n			mark'),
(3048, 'to\r\n			provide'),
(2166, 'to\r\n			remove'),
(3632, 'to\r\n			satisfy'),
(3425, 'to\r\n			see'),
(5176, 'to\r\n			serve'),
(4756, 'to\r\n			slip'),
(2506, 'to\r\n			that'),
(3976, 'to\r\n			the'),
(4172, 'to\r\n			their'),
(2927, 'to\r\n			this'),
(3025, 'to\r\n			understand'),
(2780, 'to\r\n			use'),
(4634, 'to\r\n			using'),
(3595, 'to\r\n			work'),
(3338, 'to\r\n			you'),
(4129, 'to\r\n			your'),
(5301, 'to:\r\n\r\nadd'),
(5349, 'to:<'),
(2127, 'today'),
(2143, 'today;'),
(5572, 'toets'),
(2333, 'together'),
(3355, 'tolerated?'),
(1660, 'tombs'),
(3780, 'too\r\n			complicated'),
(2339, 'too\r\n			many'),
(2461, 'too\r\n			much'),
(2946, 'took\r\n			us'),
(2891, 'took'),
(2247, 'tool'),
(1310, 'tools\r\n\r\n\r\n\r\nalthough'),
(1333, 'tools'),
(5335, 'tools:\r\n\r\nforum\r\nchat\r\npersonal'),
(5362, 'tools:<'),
(2998, 'topic'),
(632, 'topical;'),
(1426, 'topography'),
(1777, 'topoxte\r\n\r\n\r\n\r\n\r\n'),
(1669, 'topped'),
(781, 'tore'),
(5554, 'tortor'),
(3925, 'torturous'),
(678, 'total'),
(4381, 'touch-type'),
(1696, 'tour-guides'),
(1658, 'toward'),
(1652, 'towering'),
(1442, 'towers'),
(186, 'town'),
(1850, 'towns'),
(3734, 'tr>\r\n	<'),
(3493, 'track'),
(897, 'tracked'),
(2008, 'trade'),
(4611, 'traded'),
(4114, 'tradeoff'),
(5117, 'tradeoffs'),
(795, 'tradition'),
(949, 'traditional'),
(3575, 'traditionally'),
(2133, 'traditions'),
(5329, 'traffic'),
(3892, 'trained'),
(5309, 'trainees'),
(922, 'training'),
(846, 'traits'),
(697, 'transfer'),
(5403, 'transferred'),
(1115, 'transitional'),
(48, 'transitive'),
(3718, 'transitory'),
(132, 'transportation'),
(694, 'transpositions'),
(2858, 'trap'),
(1326, 'trappings'),
(113, 'traveling'),
(108, 'travelling'),
(5310, 'traverse'),
(4827, 'treating'),
(705, 'tree\r\n			let'),
(270, 'tree'),
(1183, 'tree-bark'),
(564, 'trees'),
(3153, 'tremendous'),
(5234, 'tremendously\r\n			powerful'),
(2044, 'tremendously'),
(4244, 'tribal\r\n			knowledge'),
(4689, 'tribal'),
(3344, 'tribe'),
(2224, 'trick'),
(3971, 'tried'),
(4865, 'triple'),
(5043, 'trite'),
(3247, 'trivial'),
(983, 'tropic'),
(2049, 'tropical'),
(2343, 'true'),
(3143, 'truly'),
(3139, 'trust'),
(4571, 'trusted\r\n			to'),
(4570, 'trusted'),
(4670, 'trusted<'),
(4572, 'trustworthy'),
(3241, 'truth'),
(3041, 'trying'),
(1867, 'tsuk'),
(1369, 'tunich'),
(4005, 'turn'),
(2934, 'turning'),
(2898, 'turns'),
(986, 'twice'),
(1397, 'twin'),
(2598, 'two-fold'),
(1666, 'two-hundred'),
(4380, 'type\r\n			learn'),
(1675, 'type'),
(4364, 'type-'),
(4664, 'type<'),
(2678, 'typecasts'),
(4167, 'types\r\n			this'),
(884, 'types'),
(358, 'typical'),
(1193, 'typically'),
(5202, 'tyranny'),
(1612, 'tzompantli'),
(1649, 'uaxactun'),
(972, 'ujuxte'),
(5346, 'ul>\r\n <'),
(4858, 'ultra-competitive'),
(2454, 'unanticipated\r\n			specific'),
(2488, 'unavoidable'),
(839, 'unbounded'),
(1117, 'unclear'),
(3335, 'uncomfortable'),
(4072, 'uncomfortably'),
(5156, 'unconventional'),
(3967, 'uncover'),
(1345, 'uncovered'),
(4534, 'under\r\n			heavy'),
(4449, 'under\r\n			pressure'),
(82, 'under'),
(4871, 'under-emphasize'),
(4293, 'underestimated'),
(725, 'undergraph'),
(1755, 'underlay'),
(3466, 'understand\r\n			it'),
(3373, 'understand\r\n			the'),
(3852, 'understand\r\n			why'),
(2285, 'understand'),
(4435, 'understandable'),
(2277, 'understandable---it'),
(2685, 'understanding\r\n			of'),
(1407, 'understanding'),
(281, 'understood'),
(804, 'underworld'),
(2153, 'unesco'),
(4830, 'unfinished'),
(825, 'unfolding'),
(3567, 'unfortunate'),
(1155, 'unfortunately'),
(5100, 'unhealthy'),
(3629, 'uninterrupted'),
(1886, 'unions'),
(1355, 'unique'),
(4308, 'unit\r\n			tested'),
(5382, 'unit\r\nhow'),
(675, 'unit'),
(659, 'units'),
(5159, 'unity'),
(4553, 'universal\r\n			but'),
(3420, 'universal'),
(870, 'universe'),
(1273, 'university'),
(3180, 'unk-unks'),
(2364, 'unknown'),
(3179, 'unknowns'),
(5416, 'unknown_small'),
(2588, 'unless'),
(4630, 'unlike'),
(3167, 'unlikely'),
(3571, 'unloaded'),
(2674, 'unnecessarily'),
(2617, 'unnecessary'),
(4073, 'unofficial'),
(4755, 'unpleasant'),
(2523, 'unpredictable\r\n			circumstance'),
(4514, 'unpredictable'),
(3559, 'unravels'),
(5135, 'unrealistic'),
(4042, 'unreasonable'),
(1119, 'unsettled'),
(4681, 'unsettling'),
(4724, 'unsuccessful\r\n			to'),
(454, 'until'),
(3411, 'unto'),
(2938, 'unusual'),
(4229, 'unwise'),
(4062, 'unworkable'),
(4290, 'up\r\n			the'),
(4254, 'up-to-date'),
(4277, 'up-to-dateness'),
(1964, 'upakal'),
(5373, 'upload'),
(1285, 'upon'),
(2803, 'upper'),
(3515, 'upto-\r\n			date'),
(1448, 'urban'),
(1969, 'urbanism'),
(5563, 'urna'),
(3851, 'us---technical'),
(2574, 'usability'),
(4084, 'usable'),
(4083, 'usage'),
(210, 'used'),
(5251, 'used;'),
(4845, 'useful\r\n			artifact'),
(216, 'useful'),
(2757, 'useless'),
(5059, 'user\r\n			is'),
(5058, 'user\r\n			it'),
(2794, 'user'),
(5269, 'user<'),
(4095, 'user?\r\n			\r\n			4'),
(4507, 'users'),
(3807, 'uses'),
(4516, 'using\r\n			a'),
(219, 'using'),
(4912, 'usually\r\n			be'),
(449, 'usually'),
(1439, 'usumacinta'),
(2876, 'utilization'),
(3304, 'utilize'),
(1034, 'utilized'),
(1727, 'uxmal'),
(3129, 'vacation'),
(4303, 'vacations'),
(5216, 'vague'),
(56, 'valid'),
(98, 'valid:\r\n			a'),
(3342, 'valuable\r\n			than'),
(2521, 'valuable'),
(58, 'value'),
(1916, 'values'),
(4224, 'vapor'),
(4090, 'vapor?'),
(2853, 'variability'),
(4604, 'variable\r\n			n'),
(4465, 'variable'),
(53, 'variables'),
(1083, 'variations'),
(1412, 'varied'),
(4904, 'varies'),
(651, 'variety'),
(1346, 'various'),
(5522, 'varius'),
(2043, 'vary'),
(1682, 'vast'),
(5517, 'vehicula'),
(5521, 'velit'),
(900, 'venus'),
(2165, 'verb'),
(4790, 'verbally'),
(3024, 'verify'),
(5460, 'verlenen'),
(5442, 'verplicht'),
(4074, 'version'),
(3494, 'versions'),
(5475, 'verwerken'),
(292, 'very'),
(2978, 'vested'),
(5492, 'vestibulum'),
(3369, 'vice'),
(792, 'victims'),
(2004, 'victories'),
(3906, 'view'),
(1013, 'vigesimal'),
(5479, 'vinden'),
(4924, 'virtue'),
(2194, 'visibility'),
(2230, 'visible'),
(3512, 'visibly'),
(2348, 'vision'),
(121, 'visit'),
(191, 'visited'),
(141, 'visiting'),
(4334, 'visual'),
(4846, 'visualize'),
(5544, 'vitae'),
(4874, 'vital'),
(5547, 'vivamus'),
(3861, 'vocabulary\r\n			create'),
(5573, 'voeg'),
(5127, 'volume'),
(5456, 'voorkomen'),
(5438, 'voor <'),
(5603, 'vraag'),
(5604, 'vragen'),
(5500, 'vulputate'),
(5468, 'waarom'),
(5470, 'waarom&lt;'),
(2867, 'wait'),
(4421, 'waiting'),
(1863, 'wakab’nal'),
(3456, 'walked'),
(4541, 'wall\r\n			'),
(1673, 'wall'),
(2517, 'wall--clock'),
(4537, 'wall-clock\r\n			time'),
(2520, 'wall-clock'),
(4632, 'wall;'),
(645, 'walls'),
(4747, 'want\r\n			to'),
(9, 'want'),
(5131, 'want?’'),
(5213, 'wanted'),
(5072, 'wants'),
(1870, 'warfare'),
(3625, 'warmed-up'),
(1298, 'wars'),
(18, 'warshall'),
(4190, 'wasted'),
(5099, 'wasteful'),
(3863, 'wastes'),
(3880, 'watch\r\n			carefully'),
(3955, 'watch'),
(5083, 'watching'),
(5124, 'water'),
(4997, 'way\r\n			they'),
(4610, 'way!\r\n			\r\n			time'),
(838, 'ways'),
(5048, 'ways-\r\n			--after'),
(4007, 'ways:\r\n			\r\n			it'),
(5190, 'ways:\r\n			\r\n			•'),
(4833, 'we\r\n			have'),
(3089, 'we\r\n			will'),
(3197, 'weak'),
(3207, 'weaker\r\n			team'),
(5027, 'weaker'),
(4209, 'weaknesses'),
(1815, 'wealth'),
(2913, 'week'),
(2892, 'weeks'),
(3321, 'weighed\r\n			against'),
(1593, 'weighty'),
(4357, 'welcome'),
(4511, 'well\r\n			enough'),
(4766, 'well\r\n			to'),
(389, 'well'),
(1947, 'well-documented'),
(4110, 'well-established'),
(4751, 'well-informed'),
(3806, 'well-isolated'),
(1980, 'well-known'),
(5015, 'well-motivated\r\n			and'),
(5008, 'well-motivated'),
(2954, 'well-written'),
(5260, 'well<'),
(1475, 'wells'),
(1140, 'went'),
(42, 'were'),
(5448, 'werk'),
(5600, 'werk!&lt;'),
(5441, 'werkgever'),
(5451, 'werknemers'),
(916, 'western'),
(5465, 'wetgeving'),
(4412, 'what\r\n			can'),
(3133, 'what\r\n			is'),
(2336, 'what\r\n			the'),
(3954, 'what\r\n			they'),
(482, 'what'),
(2326, 'whatever'),
(2176, 'whatnot'),
(1535, 'wheel-based'),
(2227, 'when\r\n			it'),
(2952, 'when\r\n			they'),
(4327, 'when\r\n			to'),
(2850, 'when\r\n			we'),
(4616, 'when\r\n			you'),
(221, 'when'),
(185, 'whenever'),
(3950, 'where\r\n			they'),
(189, 'where'),
(684, 'whereas'),
(4849, 'wherever\r\n			they'),
(4895, 'wherever'),
(24, 'whether'),
(2396, 'which\r\n			you'),
(54, 'which'),
(134, 'whichever'),
(3956, 'whiff'),
(312, 'while'),
(2863, 'whim'),
(4788, 'white-paper'),
(4852, 'whole\r\n			time;'),
(283, 'whole'),
(3713, 'whole-heartedly'),
(4768, 'whom'),
(362, 'whose'),
(1561, 'widely'),
(1917, 'wider'),
(1340, 'widespread'),
(1200, 'width'),
(3529, 'will\r\n			be'),
(4765, 'will\r\n			have'),
(2468, 'will\r\n			identify'),
(2287, 'will\r\n			make'),
(2804, 'will\r\n			need'),
(5221, 'will\r\n			often'),
(4386, 'will\r\n			probably'),
(3341, 'will\r\n			save'),
(4764, 'will\r\n			want'),
(92, 'will'),
(819, 'window'),
(102, 'winner'),
(3364, 'wisdom'),
(2569, 'wise'),
(3380, 'wisely\r\n			life'),
(3379, 'wisely'),
(3761, 'wisely<'),
(4236, 'wiser'),
(4031, 'wish'),
(3086, 'wishfully'),
(1371, 'witch'),
(4085, 'with\r\n			a'),
(5163, 'with\r\n			experience'),
(3044, 'with\r\n			others'),
(2627, 'with\r\n			respect'),
(3937, 'with\r\n			themselves'),
(2458, 'with\r\n			those'),
(160, 'with'),
(4287, 'with;'),
(1164, 'within'),
(4902, 'without\r\n			consideration'),
(3503, 'without\r\n			one'),
(3694, 'without\r\n			prejudice'),
(5053, 'without\r\n			visibility'),
(466, 'without'),
(1968, 'witnessed'),
(1303, 'women'),
(2256, 'wonderful'),
(2773, 'wonderful:'),
(4441, 'wonderfully\r\n			abstract'),
(1579, 'wooden'),
(535, 'word'),
(4476, 'wordiness'),
(3848, 'words'),
(5455, 'wordt'),
(5177, 'work\r\n			more'),
(4875, 'work\r\n			on'),
(1261, 'work'),
(3160, 'work---note'),
(4067, 'workarounds'),
(1549, 'worked'),
(5205, 'working\r\n			programmers'),
(3993, 'working\r\n			with'),
(1021, 'working'),
(5020, 'works\r\n			hard'),
(2226, 'works'),
(1074, 'world'),
(830, 'worlds'),
(3548, 'worry\r\n			about'),
(2288, 'worse'),
(873, 'worshiped'),
(596, 'worst'),
(3825, 'worth'),
(171, 'would'),
(3502, 'wouldn'),
(1154, 'write'),
(3405, 'writer'),
(1056, 'writing'),
(1125, 'writings'),
(3435, 'written\r\n			perfectly'),
(1203, 'written'),
(205, 'wrong'),
(2216, 'wrote'),
(2852, 'wyoming'),
(1746, 'yalain'),
(1272, 'yale'),
(1396, 'yaxhá'),
(892, 'year'),
(1048, 'years'),
(1358, 'years;'),
(4157, 'yes-man'),
(2181, 'you\r\n			are'),
(4957, 'you\r\n			believe'),
(3873, 'you\r\n			can'),
(2662, 'you\r\n			compute'),
(2215, 'you\r\n			create'),
(2347, 'you\r\n			don'),
(2283, 'you\r\n			have'),
(4068, 'you\r\n			make'),
(3471, 'you\r\n			rewrote'),
(2307, 'you\r\n			run'),
(2409, 'you\r\n			should'),
(3707, 'you\r\n			think'),
(2498, 'you\r\n			try'),
(2371, 'you\r\n			will'),
(2491, 'you\r\n			write'),
(865, 'young'),
(3334, 'your\r\n			boss'),
(3214, 'your\r\n			manager'),
(2418, 'your\r\n			own'),
(2183, 'your'),
(3343, 'yours'),
(4938, 'yourself\r\n			not'),
(2649, 'yourself'),
(2367, 'yourself:'),
(1433, 'yucatán'),
(1738, 'yucatec'),
(1766, 'zacpeten'),
(1129, 'zapotec'),
(1101, 'zapotecs'),
(2100, 'zapotec–speaking'),
(1208, 'zealous'),
(978, 'zenial'),
(713, 'zero'),
(5445, 'zodat'),
(1988, 'zone'),
(2082, 'zones'),
(2054, 'zones:'),
(5453, 'zoveel'),
(3451, '``bar'),
(3538, '``did'),
(3410, '``do'),
(3534, '``does'),
(3452, '``doit'),
(3450, '``foo'),
(5180, '``learning'),
(4585, '``not'),
(4454, '``succinctness'),
(3391, '``yes'),
(2392, '‘a-ha!’'),
(5217, '‘build'),
(3000, '‘computer'),
(3260, '‘does'),
(2376, '‘either'),
(4180, '‘i\r\n			told'),
(2243, '‘innards’'),
(3003, '‘knife'),
(5128, '‘no’'),
(2903, '‘stuck’'),
(3965, '‘take-home’'),
(2928, '‘the'),
(2849, '‘this'),
(4500, '‘wall’'),
(5130, '‘what'),
(2363, '‘which'),
(3845, '‘yes’'),
(2320, '’\r\n			\r\n			can'),
(2067, '“maya”');

-- --------------------------------------------------------

--
-- Table structure for table `search_keywords`
--

CREATE TABLE `search_keywords` (
  `keyword` mediumint(8) unsigned DEFAULT NULL,
  `foreign_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `table_name` tinyint(1) NOT NULL,
  `position` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `search_keywords`
--

INSERT INTO `search_keywords` (`keyword`, `foreign_ID`, `table_name`, `position`) VALUES
(5279, 3, 8, 1),
(5276, 3, 8, 1),
(5277, 3, 8, 1),
(5276, 3, 8, 1),
(5277, 3, 8, 1),
(5276, 3, 8, 1),
(5277, 3, 8, 1),
(5278, 3, 8, 1),
(2694, 3, 8, 1),
(5280, 4, 8, 1),
(5276, 4, 8, 1),
(5277, 4, 8, 1),
(5276, 4, 8, 1),
(5277, 4, 8, 1),
(5276, 4, 8, 1),
(5277, 4, 8, 1),
(5278, 4, 8, 1),
(2694, 4, 8, 1),
(5281, 5, 8, 1),
(5276, 5, 8, 1),
(5277, 5, 8, 1),
(5276, 5, 8, 1),
(5277, 5, 8, 1),
(5276, 5, 8, 1),
(5277, 5, 8, 1),
(5278, 5, 8, 1),
(2694, 5, 8, 1),
(5282, 7, 8, 1),
(5276, 7, 8, 1),
(5277, 7, 8, 1),
(5276, 7, 8, 1),
(5277, 7, 8, 1),
(5276, 7, 8, 1),
(5277, 7, 8, 1),
(5278, 7, 8, 1),
(2694, 7, 8, 1),
(5283, 9, 8, 1),
(5276, 9, 8, 1),
(5277, 9, 8, 1),
(5276, 9, 8, 1),
(5277, 9, 8, 1),
(5276, 9, 8, 1),
(5277, 9, 8, 1),
(5278, 9, 8, 1),
(2694, 9, 8, 1),
(5413, 15, 8, 1),
(1014, 15, 8, 1),
(5290, 15, 8, 1),
(1014, 15, 8, 1),
(5290, 15, 8, 1),
(1014, 15, 8, 1),
(5290, 15, 8, 1),
(5412, 15, 8, 1),
(2694, 15, 8, 1),
(5414, 16, 8, 1),
(1014, 16, 8, 1),
(5290, 16, 8, 1),
(1014, 16, 8, 1),
(5290, 16, 8, 1),
(1014, 16, 8, 1),
(5290, 16, 8, 1),
(5412, 16, 8, 1),
(2694, 16, 8, 1),
(1014, 17, 8, 1),
(5290, 17, 8, 1),
(1014, 17, 8, 1),
(5290, 17, 8, 1),
(1014, 17, 8, 1),
(5290, 17, 8, 1),
(5412, 17, 8, 1),
(2694, 17, 8, 1),
(5415, 18, 8, 1),
(1014, 18, 8, 1),
(5290, 18, 8, 1),
(1014, 18, 8, 1),
(5290, 18, 8, 1),
(1014, 18, 8, 1),
(5290, 18, 8, 1),
(5412, 18, 8, 1),
(2694, 18, 8, 1),
(5416, 20, 8, 1),
(1014, 20, 8, 1),
(5290, 20, 8, 1),
(1014, 20, 8, 1),
(5290, 20, 8, 1),
(1014, 20, 8, 1),
(5290, 20, 8, 1),
(5412, 20, 8, 1),
(2694, 20, 8, 1),
(5427, 22, 8, 1),
(5425, 22, 8, 1),
(5426, 22, 8, 1),
(5425, 22, 8, 1),
(5426, 22, 8, 1),
(5425, 22, 8, 1),
(5426, 22, 8, 1),
(5412, 22, 8, 1),
(2694, 22, 8, 1),
(5427, 23, 8, 1),
(1014, 23, 8, 1),
(5290, 23, 8, 1),
(1014, 23, 8, 1),
(5290, 23, 8, 1),
(1014, 23, 8, 1),
(5290, 23, 8, 1),
(5412, 23, 8, 1),
(2694, 23, 8, 1),
(5428, 4, 1, 0),
(5429, 4, 1, 0),
(5428, 4, 3, 0),
(5429, 4, 3, 0),
(5428, 5, 1, 0),
(5429, 5, 1, 0),
(5428, 5, 3, 0),
(5429, 5, 3, 0),
(5429, 8, 3, 0),
(5429, 9, 1, 0),
(5429, 9, 3, 0),
(5430, 10, 1, 0),
(5430, 10, 3, 0),
(1014, 24, 8, 1),
(5290, 24, 8, 1),
(1014, 24, 8, 1),
(5290, 24, 8, 1),
(1014, 24, 8, 1),
(5290, 24, 8, 1),
(5412, 24, 8, 1),
(2694, 24, 8, 1),
(5422, 25, 8, 1),
(5412, 25, 8, 1),
(2694, 25, 8, 1),
(5463, 27, 8, 1),
(5464, 27, 8, 1),
(5412, 27, 8, 1),
(2694, 27, 8, 1),
(5573, 2, 10, 0),
(5574, 2, 10, 0),
(5575, 2, 10, 0),
(5576, 2, 10, 0),
(5412, 28, 8, 1),
(2694, 28, 8, 1),
(5429, 8, 1, 0),
(5602, 7, 2, 0),
(5422, 8, 2, 0),
(5422, 9, 2, 0),
(5572, 14, 0, 0),
(5428, 14, 0, 0),
(5603, 3, 10, 0),
(5604, 3, 10, 0),
(5605, 3, 10, 0),
(5425, 4, 10, 0),
(5606, 4, 10, 0),
(5607, 4, 10, 0),
(5608, 4, 10, 0),
(5609, 4, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sent_notifications`
--

CREATE TABLE `sent_notifications` (
`id` mediumint(8) unsigned NOT NULL,
  `timestamp` int(10) NOT NULL,
  `recipient` varchar(255) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `body` text
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sent_notifications`
--

INSERT INTO `sent_notifications` (`id`, `timestamp`, `recipient`, `subject`, `body`) VALUES
(1, 1409056475, 'eddie@edease.nl (Eddie  Maas)', 'Registration email', 'Dear user Eddie ,\r\n\r\nWelcome to our eLearning platform. \r\nYour account was successfully created with the following personal information:\r\n\r\nLogin: klmpersoon1\r\nFirst name: Eddie \r\nLast name: Maas\r\nEmail address: eddie@edease.nl\r\nLanguage: Nederlands\r\nComments: \r\n\r\nFor further information you may contact the system administrator through the following URL: http://edtestic.nl/dts/www//index.php?ctg=contact \r\n\r\nWith kind regards\r\n---\r\nThe administration group\r\nWebtrainer\r\nvoor al uw online-trainingen\r\n'),
(2, 1409058139, 'eddie@edease.nl (KLM persoon2)', 'Registration email', 'Dear user KLM,\r\n\r\nWelcome to our eLearning platform. \r\nYour account was successfully created with the following personal information:\r\n\r\nLogin: klmpersoon2\r\nFirst name: KLM\r\nLast name: persoon2\r\nEmail address: eddie@edease.nl\r\nLanguage: Nederlands\r\nComments: \r\n\r\nFor further information you may contact the system administrator through the following URL: http://edtestic.nl/dts/www//index.php?ctg=contact \r\n\r\nWith kind regards\r\n---\r\nThe administration group\r\nWebtrainer\r\nvoor al uw online-trainingen\r\n'),
(3, 1409058452, 'eddie@edease.nl (KLM Persoon)', 'Registration email', 'Dear user KLM,\r\n\r\nWelcome to our eLearning platform. \r\nYour account was successfully created with the following personal information:\r\n\r\nLogin: klmpersoon3\r\nFirst name: KLM\r\nLast name: Persoon\r\nEmail address: eddie@edease.nl\r\nLanguage: Nederlands\r\nComments: \r\n\r\nFor further information you may contact the system administrator through the following URL: http://edtestic.nl/dts/www//index.php?ctg=contact \r\n\r\nWith kind regards\r\n---\r\nThe administration group\r\nWebtrainer\r\nvoor al uw online-trainingen\r\n'),
(4, 1409058569, 'eddie@edease.nl (Eddie Maas)', 'Registration email', 'Dear user Eddie,\r\n\r\nWelcome to our eLearning platform. \r\nYour account was successfully created with the following personal information:\r\n\r\nLogin: klmpersoon4\r\nFirst name: Eddie\r\nLast name: Maas\r\nEmail address: eddie@edease.nl\r\nLanguage: Nederlands\r\nComments: \r\n\r\nFor further information you may contact the system administrator through the following URL: http://edtestic.nl/dts/www//index.php?ctg=contact \r\n\r\nWith kind regards\r\n---\r\nThe administration group\r\nWebtrainer\r\nvoor al uw online-trainingen\r\n'),
(5, 1409074583, 'eddie@edease.nl (KLM persoon)', 'Registration email', 'Dear user KLM,\r\n\r\nWelcome to our eLearning platform. \r\nYour account was successfully created with the following personal information:\r\n\r\nLogin: klmpersoon5\r\nFirst name: KLM\r\nLast name: persoon\r\nEmail address: eddie@edease.nl\r\nLanguage: Nederlands\r\nComments: \r\n\r\nFor further information you may contact the system administrator through the following URL: http://edtestic.nl/dts/www//index.php?ctg=contact \r\n\r\nWith kind regards\r\n---\r\nThe administration group\r\nWebtrainer\r\nvoor al uw online-trainingen\r\n'),
(6, 1447766368, 'eddieedease@live.com (eddie Maas)', 'Registration email', 'Dear user eddie,\r\n\r\nWelcome to our eLearning platform. \r\nYour account was successfully created with the following personal information:\r\n\r\nLogin: edease\r\nFirst name: eddie\r\nLast name: Maas\r\nEmail address: eddieedease@live.com\r\nLanguage: Nederlands\r\nComments: sdfadsfas\r\n\r\nFor further information you may contact the system administrator through the following URL: http://edtestic.nl/dts/www//index.php?ctg=contact \r\n\r\nWith kind regards\r\n---\r\nThe administration group\r\nWebtrainer\r\nvoor al uw online-trainingen\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

CREATE TABLE `surveys` (
`id` mediumint(8) unsigned NOT NULL,
  `survey_code` varchar(150) DEFAULT NULL,
  `survey_name` varchar(150) DEFAULT NULL,
  `survey_info` mediumtext,
  `author` varchar(100) DEFAULT NULL,
  `lang` varchar(50) DEFAULT NULL,
  `start_date` int(10) unsigned DEFAULT NULL,
  `end_date` int(10) unsigned DEFAULT NULL,
  `lessons_ID` mediumint(8) unsigned NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `start_text` mediumtext,
  `end_text` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `survey_questions_done`
--

CREATE TABLE `survey_questions_done` (
`id` mediumint(8) unsigned NOT NULL,
  `users_LOGIN` varchar(100) NOT NULL,
  `surveys_ID` mediumint(8) unsigned NOT NULL,
  `question_ID` mediumint(8) unsigned NOT NULL,
  `user_answers` mediumtext NOT NULL,
  `submited` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
`id` mediumint(8) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `content_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lessons_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `mastery_score` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `options` text,
  `publish` tinyint(1) DEFAULT '1',
  `keep_best` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `active`, `content_ID`, `lessons_ID`, `name`, `mastery_score`, `description`, `options`, `publish`, `keep_best`) VALUES
(1, 1, 14, 4, 'Toets EHBO', 50, '<p>Check check check check chcheck</p>', 'a:22:{s:8:"duration";i:0;s:8:"redoable";s:1:"1";s:8:"onebyone";s:1:"0";s:12:"only_forward";s:1:"0";s:13:"given_answers";i:1;s:10:"show_score";i:1;s:20:"show_answers_if_pass";i:1;s:16:"maintain_history";s:1:"5";s:7:"answers";i:0;s:8:"redirect";i:0;s:15:"shuffle_answers";s:1:"0";s:17:"shuffle_questions";s:1:"0";s:10:"pause_test";s:1:"0";s:12:"display_list";s:1:"0";s:15:"display_weights";s:1:"0";s:10:"answer_all";s:1:"0";s:13:"test_password";N;s:10:"redo_wrong";i:0;s:17:"general_threshold";i:50;s:13:"assign_to_new";N;s:20:"automatic_assignment";N;s:15:"student_results";N;}', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tests_to_questions`
--

CREATE TABLE `tests_to_questions` (
  `tests_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `questions_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `weight` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `previous_question_ID` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
`id` mediumint(8) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `version` varchar(10) DEFAULT NULL,
  `description` text,
  `options` text,
  `layout` text,
  `path` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `name`, `title`, `author`, `version`, `description`, `options`, `layout`, `path`) VALUES
(1, 'default', 'Default eFront Theme', 'eFront team', '1.0', 'The default eFront theme', 'a:9:{s:11:"show_header";s:1:"1";s:11:"show_footer";s:1:"1";s:17:"sidebar_interface";s:1:"0";s:13:"sidebar_width";s:3:"175";s:17:"images_displaying";s:1:"0";s:16:"toolbar_position";s:5:"right";s:6:"locked";s:1:"0";s:4:"logo";b:0;s:7:"favicon";b:0;}', 'a:1:{s:9:"positions";a:4:{s:6:"layout";s:5:"three";s:8:"leftList";a:2:{i:0;s:5:"login";i:1;s:6:"online";}s:10:"centerList";a:1:{i:0;s:7:"lessons";}s:9:"rightList";a:2:{i:0;s:4:"news";i:1;s:15:"selectedLessons";}}}', 'default/'),
(2, 'eFront2013', 'A minimal eFront theme', 'Athanasios Papagelis', '1.0', 'A minimal eFront theme. This is the default theme for eFront 3.6.13', 'a:9:{s:11:"show_header";s:1:"2";s:11:"show_footer";s:1:"1";s:17:"sidebar_interface";s:1:"2";s:17:"images_displaying";s:1:"2";s:16:"toolbar_position";s:5:"right";s:6:"locked";s:1:"0";s:13:"sidebar_width";i:175;s:4:"logo";b:0;s:7:"favicon";b:0;}', 'a:1:{s:9:"positions";a:4:{s:6:"layout";s:4:"left";s:8:"leftList";a:3:{i:0;s:5:"login";i:1;s:6:"online";i:2;s:15:"selectedLessons";}s:10:"centerList";a:2:{i:0;s:4:"news";i:1;s:7:"lessons";}s:9:"rightList";a:0:{}}}', 'efront2013/'),
(3, 'IE6', 'IE6 theme', 'eFront team', '1.0', '\n		eFront IE6 theme\n	', 'a:7:{s:11:"show_header";s:1:"1";s:11:"show_footer";s:1:"1";s:13:"sidebar_width";s:3:"175";s:17:"sidebar_interface";s:1:"0";s:17:"images_displaying";s:1:"0";s:4:"logo";b:0;s:7:"favicon";b:0;}', 'a:1:{s:9:"positions";a:4:{s:6:"layout";s:5:"three";s:8:"leftList";a:2:{i:0;s:5:"login";i:1;s:6:"online";}s:10:"centerList";a:1:{i:0;s:7:"lessons";}s:9:"rightList";a:2:{i:0;s:4:"news";i:1;s:15:"selectedLessons";}}}', 'ie6/'),
(4, 'pad', 'A theme optimized for ipad-like devices', 'Athanasios Papagelis', '1.0', 'A theme optimized for ipad-like devices', 'a:9:{s:11:"show_header";s:1:"2";s:11:"show_footer";s:1:"1";s:17:"sidebar_interface";s:1:"2";s:17:"images_displaying";s:1:"2";s:16:"toolbar_position";s:5:"right";s:6:"locked";s:1:"0";s:13:"sidebar_width";i:175;s:4:"logo";b:0;s:7:"favicon";b:0;}', 'a:1:{s:9:"positions";a:4:{s:6:"layout";s:4:"left";s:8:"leftList";a:3:{i:0;s:5:"login";i:1;s:6:"online";i:2;s:15:"selectedLessons";}s:10:"centerList";a:2:{i:0;s:4:"news";i:1;s:7:"lessons";}s:9:"rightList";a:0:{}}}', 'pad/'),
(5, 'green', 'Green theme', 'eFront team', '1.0', '\n		eFront green theme\n	', 'a:7:{s:11:"show_header";s:1:"1";s:11:"show_footer";s:1:"1";s:13:"sidebar_width";s:3:"175";s:17:"sidebar_interface";s:1:"0";s:17:"images_displaying";s:1:"0";s:4:"logo";b:0;s:7:"favicon";b:0;}', 'a:1:{s:9:"positions";a:4:{s:6:"layout";s:5:"three";s:8:"leftList";a:2:{i:0;s:5:"login";i:1;s:6:"online";}s:10:"centerList";a:1:{i:0;s:7:"lessons";}s:9:"rightList";a:2:{i:0;s:4:"news";i:1;s:15:"selectedLessons";}}}', 'green/'),
(6, 'mobile', 'Mobile eFront Theme', 'eFront team', '1.0', 'The mobile eFront theme', 'a:7:{s:11:"show_header";s:1:"2";s:11:"show_footer";s:1:"1";s:17:"sidebar_interface";s:1:"2";s:17:"images_displaying";s:1:"2";s:13:"sidebar_width";i:175;s:4:"logo";b:0;s:7:"favicon";b:0;}', 'a:1:{s:9:"positions";a:4:{s:6:"layout";s:4:"left";s:8:"leftList";a:3:{i:0;s:5:"login";i:1;s:6:"online";i:2;s:15:"selectedLessons";}s:10:"centerList";a:2:{i:0;s:4:"news";i:1;s:7:"lessons";}s:9:"rightList";a:0:{}}}', 'mobile/'),
(7, 'blue_html5', 'A simple blue theme with varying width', 'Athanasios Papagelis', '1.0', 'A simple blue theme with varying width', 'a:9:{s:11:"show_header";s:1:"2";s:11:"show_footer";s:1:"1";s:17:"sidebar_interface";s:1:"2";s:17:"images_displaying";s:1:"2";s:16:"toolbar_position";s:5:"right";s:6:"locked";s:1:"0";s:13:"sidebar_width";i:175;s:4:"logo";b:0;s:7:"favicon";b:0;}', 'a:1:{s:9:"positions";a:4:{s:6:"layout";s:6:"simple";s:8:"leftList";a:0:{}s:10:"centerList";a:2:{i:0;s:5:"login";i:1;s:6:"online";}s:9:"rightList";a:0:{}}}', 'blue_html5/'),
(8, 'modern', 'A modern eFront theme', 'Athanasios Papagelis', '1.0', 'A modern eFront theme', 'a:9:{s:11:"show_header";s:1:"2";s:11:"show_footer";s:1:"1";s:17:"sidebar_interface";s:1:"2";s:17:"images_displaying";s:1:"2";s:16:"toolbar_position";s:5:"right";s:6:"locked";s:1:"0";s:13:"sidebar_width";i:175;s:4:"logo";b:0;s:7:"favicon";b:0;}', 'a:1:{s:9:"positions";a:4:{s:6:"layout";s:6:"simple";s:8:"leftList";a:0:{}s:10:"centerList";a:1:{i:0;s:5:"login";}s:9:"rightList";a:0:{}}}', 'modern/'),
(9, 'modern_rtl', 'A modern eFront theme (RTL version)', 'Periklis Venakis', '1.0', 'A modern eFront theme (RTL version)', 'a:9:{s:11:"show_header";s:1:"2";s:11:"show_footer";s:1:"1";s:17:"sidebar_interface";s:1:"2";s:17:"images_displaying";s:1:"2";s:16:"toolbar_position";s:4:"left";s:6:"locked";s:1:"0";s:13:"sidebar_width";i:175;s:4:"logo";b:0;s:7:"favicon";b:0;}', 'a:1:{s:9:"positions";a:4:{s:6:"layout";s:5:"right";s:9:"rightList";a:3:{i:0;s:5:"login";i:1;s:6:"online";i:2;s:15:"selectedLessons";}s:10:"centerList";a:2:{i:0;s:4:"news";i:1;s:7:"lessons";}s:8:"leftList";a:0:{}}}', 'modern_rtl/'),
(10, 'enterprise', 'Enterprise eFront Theme', 'eFront team', '1.0', 'Enterprise eFront theme', 'a:9:{s:11:"show_header";s:1:"2";s:11:"show_footer";s:1:"1";s:17:"sidebar_interface";s:1:"2";s:17:"images_displaying";s:1:"2";s:16:"toolbar_position";s:5:"right";s:6:"locked";s:1:"0";s:13:"sidebar_width";i:175;s:4:"logo";b:0;s:7:"favicon";b:0;}', 'a:1:{s:9:"positions";a:4:{s:6:"layout";s:4:"left";s:8:"leftList";a:3:{i:0;s:5:"login";i:1;s:6:"online";i:2;s:15:"selectedLessons";}s:10:"centerList";a:2:{i:0;s:4:"news";i:1;s:7:"lessons";}s:9:"rightList";a:0:{}}}', 'enterprise/'),
(11, 'blue', 'Blue eFront Theme', 'eFront team', '1.0', 'Blue eFront theme', 'a:9:{s:11:"show_header";s:1:"2";s:11:"show_footer";s:1:"1";s:17:"sidebar_interface";s:1:"2";s:17:"images_displaying";s:1:"2";s:16:"toolbar_position";s:5:"right";s:6:"locked";s:1:"0";s:13:"sidebar_width";i:175;s:4:"logo";b:0;s:7:"favicon";b:0;}', 'a:1:{s:9:"positions";a:4:{s:6:"layout";s:4:"left";s:8:"leftList";a:3:{i:0;s:5:"login";i:1;s:6:"online";i:2;s:15:"selectedLessons";}s:10:"centerList";a:2:{i:0;s:4:"news";i:1;s:7:"lessons";}s:9:"rightList";a:0:{}}}', 'blue/');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `token` char(30) NOT NULL,
  `status` text NOT NULL,
  `users_LOGIN` varchar(100) DEFAULT NULL,
  `create_timestamp` int(10) unsigned NOT NULL,
  `expired` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
`id` mediumint(8) unsigned NOT NULL,
  `login` varchar(100) NOT NULL,
  `password` char(32) NOT NULL,
  `email` varchar(150) NOT NULL,
  `languages_NAME` varchar(50) NOT NULL,
  `timezone` varchar(100) DEFAULT '',
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `comments` text,
  `user_type` varchar(50) NOT NULL DEFAULT 'student',
  `timestamp` int(10) unsigned NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `user_types_ID` mediumint(8) DEFAULT '0',
  `additional_accounts` text,
  `viewed_license` tinyint(1) DEFAULT '0',
  `status` varchar(255) DEFAULT '',
  `short_description` text,
  `balance` float DEFAULT '0',
  `archive` int(10) unsigned DEFAULT '0',
  `dashboard_positions` text,
  `need_mod_init` tinyint(1) DEFAULT '0',
  `autologin` char(32) DEFAULT NULL,
  `need_pwd_change` tinyint(1) DEFAULT '0',
  `last_login` int(10) unsigned NOT NULL DEFAULT '0',
  `simple_mode` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `email`, `languages_NAME`, `timezone`, `name`, `surname`, `active`, `comments`, `user_type`, `timestamp`, `avatar`, `pending`, `user_types_ID`, `additional_accounts`, `viewed_license`, `status`, `short_description`, `balance`, `archive`, `dashboard_positions`, `need_mod_init`, `autologin`, `need_pwd_change`, `last_login`, `simple_mode`) VALUES
(8, 'DTSlid', 'eb4b92c72debbf7f942b5e484ff50073', 'eddie@edease.nl', 'Dutch', 'Europe/Helsinki', 'DTS', 'lid', 1, '', 'professor', 1409053620, '28', 0, 4, 'a:1:{i:0;s:5:"Eddie";}', 0, '', '', 0, 0, NULL, 0, NULL, 0, 1451476553, 0),
(1, 'Eddie', '604391508eeffc2e9678efe4f397a3e0', 'eddie@edease.nl', 'english', 'Europe/Helsinki', 'System', 'Administrator', 1, NULL, 'administrator', 1365149958, NULL, 0, 0, 'a:2:{i:0;s:6:"DTSlid";i:1;s:4:"test";}', 0, '', NULL, 0, 0, NULL, 0, NULL, 0, 1451476210, 0),
(15, 'eddieedease', '89bc43cb7807c7060715659b45ead67e', 'eddieedease@hotmail.com', 'Dutch', 'Europe/Helsinki', 'Eddie', 'Maas', 1, 'lkashd;lkashdas', 'student', 1447761831, NULL, 0, 2, NULL, 0, '', NULL, 0, 0, NULL, 0, NULL, 0, 1447764773, 0),
(16, 'edease', 'cc2d6b9d544201264bcbaf733ff5f01a', 'eddieedease@live.com', 'Dutch', 'Europe/Helsinki', 'eddie', 'Maas', 1, 'sdfadsfas', 'student', 1447765352, NULL, 0, 0, NULL, 0, '', NULL, 0, 0, NULL, 0, NULL, 0, 1448399073, 0),
(9, 'klmpersoon1', '0acfcbdf3ce8e8601eae5354b2c2374a', 'eddie@edease.nl', 'Dutch', 'Europe/Helsinki', 'Eddie ', 'Maas', 1, '', 'student', 1409056274, NULL, 0, 2, NULL, 0, '', NULL, 0, 0, NULL, 0, NULL, 0, 1409057602, 0),
(10, 'klmpersoon2', 'f70790fbbfd76b591cbc22829561bfaf', 'eddie@edease.nl', 'Dutch', 'Europe/Helsinki', 'KLM', 'persoon2', 1, '', 'student', 1409058095, NULL, 0, 2, NULL, 0, '', NULL, 0, 0, NULL, 0, NULL, 0, 1409058095, 0),
(11, 'klmpersoon3', 'a419f788e79ce2e0420ba6582459b4c7', 'eddie@edease.nl', 'Dutch', 'Europe/Helsinki', 'KLM', 'Persoon', 1, '', 'student', 1409058214, NULL, 0, 2, NULL, 0, '', NULL, 0, 0, NULL, 0, NULL, 0, 1409058469, 0),
(12, 'klmpersoon4', '8d5e14094dbe6b36dedb5ef05f125f34', 'eddie@edease.nl', 'Dutch', 'Europe/Helsinki', 'Eddie', 'Maas', 1, '', 'student', 1409058549, NULL, 0, 2, NULL, 0, '', NULL, 0, 0, NULL, 0, NULL, 0, 1409058552, 0),
(13, 'klmpersoon5', '38495862b6799614171a0c109c7fca3d', 'eddie@edease.nl', 'Dutch', 'Europe/Helsinki', 'KLM', 'persoon', 1, '', 'student', 1409074288, NULL, 0, 2, NULL, 0, '', NULL, 0, 0, NULL, 0, NULL, 0, 1409074289, 0),
(14, 'test', 'e9b7c4c5c7e7c0c08c8bfda826e4b731', 'test@test.nl', 'Dutch', 'Europe/Helsinki', 'test', 'test', 1, '', 'student', 1447757192, NULL, 0, 0, 'a:1:{i:0;s:5:"Eddie";}', 0, '', '', 0, 0, NULL, 0, NULL, 0, 1448398992, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_to_content`
--

CREATE TABLE `users_to_content` (
`id` mediumint(8) unsigned NOT NULL,
  `users_LOGIN` varchar(100) NOT NULL,
  `content_ID` mediumint(8) unsigned NOT NULL,
  `lessons_ID` mediumint(8) unsigned NOT NULL,
  `success_status` varchar(15) DEFAULT 'unknown',
  `timestamp` int(10) unsigned DEFAULT NULL,
  `score` float DEFAULT '0',
  `entry` varchar(15) DEFAULT '',
  `total_time` int(10) unsigned NOT NULL DEFAULT '0',
  `suspend_data` longtext,
  `archive` tinyint(1) NOT NULL DEFAULT '0',
  `time_start` int(10) unsigned DEFAULT NULL,
  `time_end` int(10) unsigned DEFAULT NULL,
  `pending` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_to_coupons`
--

CREATE TABLE `users_to_coupons` (
`id` int(10) unsigned NOT NULL,
  `users_ID` int(10) unsigned NOT NULL,
  `coupons_ID` int(10) unsigned NOT NULL,
  `payments_ID` int(10) unsigned NOT NULL,
  `products_list` text,
  `timestamp` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_to_courses`
--

CREATE TABLE `users_to_courses` (
  `users_LOGIN` varchar(100) NOT NULL,
  `courses_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `archive` int(10) unsigned DEFAULT '0',
  `from_timestamp` int(10) unsigned DEFAULT NULL,
  `user_type` varchar(50) DEFAULT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `score` int(11) NOT NULL DEFAULT '0',
  `issued_certificate` text,
  `comments` text,
  `to_timestamp` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_to_courses`
--

INSERT INTO `users_to_courses` (`users_LOGIN`, `courses_ID`, `active`, `archive`, `from_timestamp`, `user_type`, `completed`, `score`, `issued_certificate`, `comments`, `to_timestamp`) VALUES
('DTSlid', 7, 1, 0, 1448399211, '4', 0, 70, '', '', 0),
('edease', 7, 1, 0, 1447765365, 'student', 0, 70, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_to_done_surveys`
--

CREATE TABLE `users_to_done_surveys` (
  `surveys_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `users_LOGIN` varchar(100) NOT NULL DEFAULT '',
  `done` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_to_groups`
--

CREATE TABLE `users_to_groups` (
  `groups_ID` mediumint(8) unsigned NOT NULL,
  `users_LOGIN` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_to_groups`
--

INSERT INTO `users_to_groups` (`groups_ID`, `users_LOGIN`) VALUES
(8, 'eddieedease'),
(9, 'edease'),
(10, 'eddieedease'),
(10, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `users_to_lessons`
--

CREATE TABLE `users_to_lessons` (
  `users_LOGIN` varchar(100) NOT NULL,
  `lessons_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `archive` int(10) unsigned DEFAULT '0',
  `from_timestamp` int(10) unsigned DEFAULT NULL,
  `user_type` varchar(50) DEFAULT NULL,
  `positions` text,
  `done_content` text,
  `current_unit` mediumint(8) unsigned DEFAULT '0',
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `score` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `issued_certificate` blob,
  `comments` text,
  `to_timestamp` int(10) unsigned DEFAULT NULL,
  `access_counter` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_to_lessons`
--

INSERT INTO `users_to_lessons` (`users_LOGIN`, `lessons_ID`, `active`, `archive`, `from_timestamp`, `user_type`, `positions`, `done_content`, `current_unit`, `completed`, `score`, `issued_certificate`, `comments`, `to_timestamp`, `access_counter`) VALUES
('DTSlid', 4, 1, 0, 1448399211, '4', '', '', 0, 0, 0, NULL, '', 0, 0),
('DTSlid', 5, 1, 1447763601, 1409053644, '4', '', '', 0, 0, 0, NULL, '', 0, 0),
('DTSlid', 8, 1, 1447763597, 1409053643, '4', '', '', 0, 0, 0, NULL, '', 0, 0),
('DTSlid', 9, 1, 1447763597, 1409053643, '4', '', '', 0, 0, 0, NULL, '', 0, 0),
('DTSlid', 10, 1, 1447763605, 1409053646, '4', '', '', 0, 0, 0, NULL, '', 0, 0),
('eddieedease', 8, 1, 1447763597, 1447763131, '2', '', '', 0, 0, 0, NULL, '', 0, 0),
('eddieedease', 9, 1, 1447763597, 1447763131, '2', '', '', 0, 0, 0, NULL, '', 0, 0),
('edease', 4, 1, 0, 1447765365, 'student', '', '', 0, 0, 0, NULL, '', 0, 0),
('klmpersoon1', 4, 1, 1447763601, 1409057255, '1', '', '', 0, 0, 0, NULL, '', 0, 0),
('klmpersoon1', 5, 1, 1447763601, 1409057255, '1', '', '', 0, 0, 0, NULL, '', 0, 0),
('klmpersoon1', 8, 1, 1447763597, 1409057586, '2', '', '', 0, 0, 0, NULL, '', 0, 0),
('klmpersoon1', 9, 1, 1447763597, 1409057586, '2', '', '', 0, 0, 0, NULL, '', 0, 0),
('klmpersoon1', 10, 1, 1447763605, 1409057256, '1', '', '', 0, 0, 0, NULL, '', 0, 0),
('klmpersoon2', 4, 1, 1447763601, 1409058105, '1', '', '', 0, 0, 0, NULL, '', 0, 0),
('klmpersoon2', 5, 1, 1447763601, 1409058105, '1', '', '', 0, 0, 0, NULL, '', 0, 0),
('klmpersoon2', 8, 1, 1447763597, 1409058104, '1', '', '', 0, 0, 0, NULL, '', 0, 0),
('klmpersoon2', 9, 1, 1447763597, 1409058104, '1', '', '', 0, 0, 0, NULL, '', 0, 0),
('klmpersoon2', 10, 1, 1447763605, 1409058105, '1', '', '', 0, 0, 0, NULL, '', 0, 0),
('klmpersoon3', 4, 1, 1447763601, 1409058484, 'student', '', '', 0, 0, 0, NULL, '', 0, 0),
('klmpersoon3', 5, 1, 1447763601, 1409058484, 'student', '', '', 0, 0, 0, NULL, '', 0, 0),
('klmpersoon3', 8, 1, 1447763597, 1409058483, 'student', '', '', 0, 0, 0, NULL, '', 0, 0),
('klmpersoon3', 9, 1, 1447763597, 1409058483, 'student', '', '', 0, 0, 0, NULL, '', 0, 0),
('klmpersoon3', 10, 1, 1447763605, 1409058487, 'student', '', '', 0, 0, 0, NULL, '', 0, 0),
('klmpersoon4', 4, 1, 1447763601, 1409058559, 'student', '', '', 0, 0, 0, NULL, '', 0, 0),
('klmpersoon4', 5, 1, 1447763601, 1409058559, 'student', '', '', 0, 0, 0, NULL, '', 0, 0),
('klmpersoon4', 8, 1, 1447763597, 1409058558, 'student', '', 'a:2:{i:5;s:1:"5";i:6;s:1:"6";}', 6, 0, 0, NULL, '', 0, 0),
('klmpersoon4', 9, 1, 1447763597, 1409058558, 'student', '', '', 0, 0, 0, NULL, '', 0, 0),
('klmpersoon4', 10, 1, 1447763605, 1409058559, 'student', '', '', 0, 0, 0, NULL, '', 0, 0),
('klmpersoon5', 4, 1, 1447763601, 1409074394, 'student', '', '', 0, 0, 0, NULL, '', 0, 0),
('klmpersoon5', 5, 1, 1447763601, 1409074394, 'student', '', '', 0, 0, 0, NULL, '', 0, 0),
('klmpersoon5', 8, 1, 1447763597, 1409074394, 'student', '', 'a:4:{i:3;s:1:"3";i:4;s:1:"4";i:6;s:1:"6";i:5;s:1:"5";}', 5, 1, 100, NULL, 'Automatisch afgesloten op: 2014/08/26, 20:36:50', 1409074610, 0),
('klmpersoon5', 9, 1, 1447763597, 1409074394, 'student', '', '', 0, 0, 0, NULL, '', 0, 0),
('klmpersoon5', 10, 1, 1447763605, 1409074394, 'student', '', '', 0, 0, 0, NULL, '', 0, 0),
('test', 8, 1, 1447757987, 1447757979, '2', '', '', 0, 0, 0, NULL, '', 0, 0),
('test', 9, 1, 1447757987, 1447757979, '2', '', '', 0, 0, 0, NULL, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_to_projects`
--

CREATE TABLE `users_to_projects` (
  `users_LOGIN` varchar(100) NOT NULL,
  `projects_ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `comments` text,
  `grade` float DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `upload_timestamp` int(10) unsigned DEFAULT NULL,
  `last_comment` varchar(100) DEFAULT NULL,
  `professor_upload_filename` varchar(255) DEFAULT NULL,
  `text_grade` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_to_surveys`
--

CREATE TABLE `users_to_surveys` (
  `surveys_ID` mediumint(8) unsigned NOT NULL,
  `users_LOGIN` varchar(100) NOT NULL,
  `last_access` int(10) unsigned DEFAULT NULL,
  `last_post` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `db_type` varchar(10) NOT NULL,
  `size` tinyint(3) unsigned DEFAULT '255',
  `type` varchar(10) DEFAULT NULL,
  `options` text,
  `default_value` text,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `mandatory` tinyint(1) NOT NULL DEFAULT '1',
  `languages_NAME` varchar(50) NOT NULL,
  `field_order` int(11) DEFAULT NULL,
  `rule` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_times`
--

CREATE TABLE `user_times` (
`id` mediumint(8) unsigned NOT NULL,
  `session_timestamp` int(10) unsigned NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `session_custom_identifier` char(40) NOT NULL DEFAULT '',
  `session_expired` tinyint(1) NOT NULL DEFAULT '0',
  `users_LOGIN` varchar(100) NOT NULL,
  `timestamp_now` int(10) unsigned NOT NULL,
  `time` int(10) unsigned NOT NULL,
  `lessons_ID` mediumint(8) unsigned DEFAULT NULL,
  `courses_ID` mediumint(8) unsigned DEFAULT NULL,
  `entity` varchar(100) NOT NULL,
  `entity_id` mediumint(8) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=434 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_times`
--

INSERT INTO `user_times` (`id`, `session_timestamp`, `session_id`, `session_custom_identifier`, `session_expired`, `users_LOGIN`, `timestamp_now`, `time`, `lessons_ID`, `courses_ID`, `entity`, `entity_id`) VALUES
(5, 1365429760, 'tp96t1v416jo618nv8en03b9h7', '714a1f014d2441884de64025c9aaa2a8f69f6169', 1, 'admin', 1365431120, 1360, NULL, NULL, 'system', 0),
(6, 1389783237, 'qe2voe9nmr4rdq1jr4cpmsbt62', 'dcaf30aecf7a8ddb4064dbb74d38ef3ab320d90b', 1, 'admin', 1389783313, 76, NULL, NULL, 'system', 0),
(7, 1389783320, 'lfh6f9bsaeint8lmt3qi1dnso0', '34162a592ab7825818aa9950c4a660f707745435', 0, 'admin', 1389783325, 5, NULL, NULL, 'system', 0),
(8, 1403868049, 'c3a9f61bd34e3f114a9559b848dbceb3', 'cdb05cee230e4f1dfe3e0a430e885a62b067cb2a', 1, 'Eddie', 1403868145, 96, NULL, NULL, 'system', 0),
(28, 1403868421, '51c98a93e75b12eff43229b1f1bde1ab', '52b1f3dbd9bdf5fa214c5491db5545bb964d48d0', 1, 'Eddie', 1403868713, 292, NULL, NULL, 'system', 0),
(29, 1403950208, '9e90fe834127bd1066c7c6732db6deef', '00d9d29b457551655d13e1716a3330303a658e63', 1, 'Eddie', 1403950488, 280, NULL, NULL, 'system', 0),
(32, 1403950590, '4e90842559cc8ea0e1bb56060e0c7f71', 'b76fcadbaa333a91e558bf937092fdf98d7f986b', 1, 'Eddie', 1403950635, 45, NULL, NULL, 'system', 0),
(33, 1403950667, 'e3f2857fffe8504f7aa7022c706851c9', 'f42eebfca94c612e0e0dfdbbf7a655fc2a7fe0b6', 1, 'Eddie', 1403951028, 361, NULL, NULL, 'system', 0),
(36, 1403951325, '6c14e3be650d64ef3cbe51540186fe24', 'ea460ec3b6ef5ac4b3d87d183cabbd52636032eb', 1, 'Eddie', 1403951555, 230, NULL, NULL, 'system', 0),
(37, 1403951560, 'e73c0d6591fb783f83e46ed87faacd5f', '2435d02f4bf08b92c725b619645d0ae386fc637e', 1, 'Eddie', 1403951592, 32, NULL, NULL, 'system', 0),
(38, 1403951603, 'f32f460ae83fdd6cf8fa3f13450fe2f0', '0e80ab28676ac0ed750fcc462e226338dbbc0dd5', 1, 'Eddie', 1403951680, 77, NULL, NULL, 'system', 0),
(39, 1403951703, 'e86313c4cc725565c82175377caf4ab6', '891070871483dfe5b355679b6dc642de071a677a', 1, 'Eddie', 1403952853, 1150, NULL, NULL, 'system', 0),
(40, 1403952893, '44c61f449573ddf2ef7205072f147ee4', 'ef60207d914e15c307a89b79524ffdb198c9d428', 1, 'Eddie', 1403952896, 3, NULL, NULL, 'system', 0),
(41, 1403952900, '85543a1b7f6fb664721ac41c2ac6a02f', '1fa0522d8274fc03704a9777f486fcfde0891cca', 1, 'Eddie', 1403953194, 294, NULL, NULL, 'system', 0),
(42, 1403953199, 'ef11559798db5a37ba8b93ae24f249af', '844eb3cfcb02867862dc2fcba383e08a4fe22453', 1, 'Eddie', 1403953202, 3, NULL, NULL, 'system', 0),
(45, 1403964025, '51805bb1db0e6bf120f5b7f449bb6ce9', 'a88d60f72e5fb7fdf442d348cda5936e2406d4e2', 1, 'Eddie', 1403964118, 93, NULL, NULL, 'system', 0),
(47, 1403964137, 'ed1634d1909b04ca863d82a325c08d2f', '7127135356a9bda6e4e32357c6fce43580d3010a', 1, 'Eddie', 1403964208, 71, NULL, NULL, 'system', 0),
(49, 1404301662, '6d55086118570e94d2f840bed3dc519f', 'ca1cc72b61ad355bd2114028f202688f83805703', 1, 'Eddie', 1404301687, 25, NULL, NULL, 'system', 0),
(52, 1404301706, '93d166644d2542df6b6230d5fc0b296b', 'd05a1a5a8967074eeee5b5965be94a67dfc263c3', 1, 'Eddie', 1404301879, 173, NULL, NULL, 'system', 0),
(53, 1404310962, 'b69b453b37aaaf3cef7632f122e4789c', '71500e376454e0f42703febc53fe42dc8fc445dc', 1, 'Eddie', 1404313985, 3023, NULL, NULL, 'system', 0),
(54, 1404313992, '6813276a8db279c930733bf7ffc39b77', '85585c0689e3f3051dc00073fadedf7c2fa812a7', 1, 'Eddie', 1404314094, 102, NULL, NULL, 'system', 0),
(56, 1404314113, 'e4f8d40d5a6d1246dcb57d7d583c15c0', 'da2e7fea1b5861e548ec15ef28db18d72cdd4889', 1, 'Eddie', 1404314314, 201, NULL, NULL, 'system', 0),
(57, 1404314352, 'bd4c2a9249e4f80bd9618e86c9942482', '4fde0173a4cb655eb183fbc30a3eb27795561dd6', 1, 'Eddie', 1404314384, 32, NULL, NULL, 'system', 0),
(59, 1404317442, '6f0bb58864de669f8fff6764240313c6', '7036f39a8dca4176171b46e5a21824a7153f86df', 1, 'Eddie', 1404317657, 215, NULL, NULL, 'system', 0),
(60, 1404317714, '7d86195f0e65e4c48649411228ab8591', 'f40eb69829cf3c94735f6e6a835f010357248d11', 1, 'Eddie', 1404317739, 25, NULL, NULL, 'system', 0),
(61, 1404390573, '28bcdc345f1ecec67e121f0c985b7159', '795dfe6820a3b58a1fb3ba5c888b43f07f29f2e7', 1, 'Eddie', 1404390654, 81, NULL, NULL, 'system', 0),
(62, 1404473006, '66f9664898343e576e51ae5a4e30c77b', '646a8604ba00932ced1a877f73aaf130f7ffddd6', 1, 'Eddie', 1404473155, 149, NULL, NULL, 'system', 0),
(63, 1404927524, 'b1d5492c5e24ab0f8ff199ee8c712341', '4d1e9cb02ebe6fffea85b9c3a10a074c0ba1dfd9', 1, 'Eddie', 1404927528, 4, NULL, NULL, 'system', 0),
(64, 1405259247, 'f343b0bc033ae0545f10379405c2d752', 'ece7cd6a72a399f2c439a0f6e8f5c8d4f449d11b', 1, 'Eddie', 1405259425, 178, NULL, NULL, 'system', 0),
(66, 1405259469, 'f343b0bc033ae0545f10379405c2d752', 'd734e8078e32b48815d831784b0b64df3b938416', 1, 'Eddie', 1405259539, 70, NULL, NULL, 'system', 0),
(68, 1405259572, 'f343b0bc033ae0545f10379405c2d752', 'fc04a15d7865b457aa2cd680b6af5f297d881a0b', 1, 'Eddie', 1405259576, 4, NULL, NULL, 'system', 0),
(70, 1405259609, 'f343b0bc033ae0545f10379405c2d752', 'd2a08eabe261b45358d0f76a09cf7953746cc7eb', 1, 'Eddie', 1405259650, 41, NULL, NULL, 'system', 0),
(72, 1405259767, 'f343b0bc033ae0545f10379405c2d752', 'a4fed47ec28758347723bc6e4835c15e46ec765d', 1, 'Eddie', 1405259784, 17, NULL, NULL, 'system', 0),
(74, 1405259790, 'f343b0bc033ae0545f10379405c2d752', '8332dfafb8088d422f5878b11aa45594ea84a475', 1, 'Eddie', 1405259833, 43, NULL, NULL, 'system', 0),
(76, 1405259878, 'f343b0bc033ae0545f10379405c2d752', 'fc919cafda9290ebb4f32d80a4ae78a81e0325d6', 1, 'Eddie', 1405259977, 99, NULL, NULL, 'system', 0),
(78, 1405260005, 'f343b0bc033ae0545f10379405c2d752', 'd40a98fd5fe3ebd2365edf39db0e91c36c05c2a9', 1, 'Eddie', 1405260028, 23, NULL, NULL, 'system', 0),
(80, 1405260038, 'f343b0bc033ae0545f10379405c2d752', '72e98a1d46b26f4eb800be1ec7de02e0ae2b6420', 1, 'Eddie', 1405260075, 37, NULL, NULL, 'system', 0),
(83, 1405260113, 'f343b0bc033ae0545f10379405c2d752', 'b4cd21d286484257cae4a78031cae6dba470e95f', 1, 'Eddie', 1405260165, 52, NULL, NULL, 'system', 0),
(85, 1405260204, 'f343b0bc033ae0545f10379405c2d752', '3481a9583f6ddd4816ff59aac63188e173c275a6', 1, 'Eddie', 1405260205, 1, NULL, NULL, 'system', 0),
(87, 1405260233, 'f343b0bc033ae0545f10379405c2d752', '24a65158d40b69ef1686bfc8f2543da25bb5f4e8', 1, 'Eddie', 1405260345, 112, NULL, NULL, 'system', 0),
(90, 1405260370, '62e6cc90f7798d6b753b5ba21ce0eccb', '9cf337faff59b9a9c222e08fb394dc50a2340fcc', 1, 'Eddie', 1405260503, 133, NULL, NULL, 'system', 0),
(92, 1405260864, '61408dc80d8a7ed5b174144754779f0c', 'bea02932a0a43334d12be38503baf94cfe576f5e', 1, 'Eddie', 1405260948, 84, NULL, NULL, 'system', 0),
(100, 1405410055, '3a426ef15e326251f6ac2f5490e30182', 'd3fd3b0776c20ed6c5aeb12d151531dff18cab01', 1, 'Eddie', 1405410089, 34, NULL, NULL, 'system', 0),
(101, 1406798458, 'vokcapdr7set4hitnosnm8l053', 'f9f0bb0e94ad15a34680f1de9f02208f279831ce', 1, 'Eddie', 1406799811, 1353, NULL, NULL, 'system', 0),
(102, 1406899567, 'cufgk78vpa1ntihbdqdcmfral0', 'c0b688080de667c17564ed2d5a63a141f416e350', 1, 'Eddie', 1406899711, 144, NULL, NULL, 'system', 0),
(105, 1406899796, 'pdss7nv4bi0tfo63c8ll5ula74', 'e89ac50d85203861bf549203c22304ba35e11d37', 1, 'Eddie', 1406899820, 24, NULL, NULL, 'system', 0),
(110, 1407262985, 'j0q24o2c9cj84jrmm7plgrrpq4', '2fb0a897f46bb968d0b08d296c0655930bf5e842', 1, 'Eddie', 1407262990, 5, NULL, NULL, 'system', 0),
(114, 1407263022, 'lfq0rq0frgtjr13jms4nff1ul1', 'b0b5d4c571c7d2071ef13ad5d68522dc95fccba3', 1, 'Eddie', 1407263026, 4, NULL, NULL, 'system', 0),
(116, 1407263064, '0pt3f9avhvdg1igb4bfl9aus90', '94fbdd9cf17d605c429a534e546489575b6a7db9', 1, 'Eddie', 1407263115, 51, NULL, NULL, 'system', 0),
(118, 1407438648, '6ghqjkdqj4ptlpu3nhhcp07oq7', 'f73589e4bec65fa3aa22f61bc0d15db4b2460a2f', 1, 'Eddie', 1407438837, 189, NULL, NULL, 'system', 0),
(119, 1407438870, 'ukv26gianuavpjf60sv0hbjf12', '119255518c34432044e057fdfdf48bb85c1ca64a', 1, 'Eddie', 1407439044, 174, NULL, NULL, 'system', 0),
(120, 1407701568, 'cnn7oqnebfvitjeq1bqcc8qda1', 'f9df1508ed0b935e8b069bb552bc8527982243d8', 1, 'Eddie', 1407701577, 9, NULL, NULL, 'system', 0),
(123, 1407701630, '9bqb286r9r8va2th35fmucd744', '4b68054f38c68ee24b0bc24163deb5622856ee90', 1, 'Eddie', 1407701670, 40, NULL, NULL, 'system', 0),
(126, 1407701699, '2cqbqfknooupe12aq5iilsc7k1', 'bdcf7957132fe2ca082747cf9ca68e975bf45e0a', 1, 'Eddie', 1407701745, 46, NULL, NULL, 'system', 0),
(129, 1407701782, '747vspsjhiqotk3vsq4spu3376', '1f10d66b55b2b38c4dd9695766bd34443eb50e1c', 1, 'Eddie', 1407701818, 36, NULL, NULL, 'system', 0),
(135, 1408539744, '970q3dvk6e7vnjvuhqajas18f0', 'da145937c84b20c93837b33bff2064a5391c5390', 1, 'Eddie', 1408539755, 11, NULL, NULL, 'system', 0),
(136, 1409003536, 'l4mbn47hudf6dqe9t3p6lm6127', '96bfb9342001c30640d1b505e8b18c3716ab74df', 1, 'Eddie', 1409003611, 75, NULL, NULL, 'system', 0),
(138, 1409003760, 'gf1ujkd5m11eg293ge6o2vb8k0', '88430b9dc0d54dfb3c9dc8b747ab2093222407b3', 1, 'Eddie', 1409003780, 20, NULL, NULL, 'system', 0),
(140, 1409036060, 'iogd5piusea2v5ccs7veofifu2', '3ce105f610654ba52763e5e792738fb9c827ec29', 1, 'Eddie', 1409036100, 40, NULL, NULL, 'system', 0),
(146, 1409036191, 'vgq7e1n72acirtf7ug30gitnq6', '716240f17d245889652d4bf575f2785f283c6214', 1, 'Eddie', 1409036229, 38, NULL, NULL, 'system', 0),
(150, 1409036265, 'ihquh2fh581743sfjsvkc2u2e0', 'ecab145f1fd2845f875516575d32b19bd7122dea', 1, 'Eddie', 1409036280, 15, NULL, NULL, 'system', 0),
(154, 1409036419, 'don2j18f60btamnqoc36e1c9r0', '9222b946bf6d056565ec4108dec3d233e1652ff1', 1, 'Eddie', 1409036819, 400, NULL, NULL, 'system', 0),
(155, 1409040817, 'bd926kgb34supcvelnv2nfh0m6', 'c690da4283cb1ca844c3680a43039cabd158d774', 1, 'Eddie', 1409053756, 12939, NULL, NULL, 'system', 0),
(156, 1409053766, 'bd926kgb34supcvelnv2nfh0m6', 'f3154311132b13466934350f5366c9b72f71a8cd', 1, 'DTSlid', 1409053771, 5, NULL, NULL, 'system', 0),
(157, 1409053790, '1rmh4cv0e6i00qtjtj6m9e4q13', 'b124d78eefdaf2c91f4a58a103c3f5da1f9ec341', 1, 'DTSlid', 1409053819, 29, NULL, NULL, 'system', 0),
(158, 1409053820, '1rmh4cv0e6i00qtjtj6m9e4q13', 'b124d78eefdaf2c91f4a58a103c3f5da1f9ec341', 1, 'DTSlid', 1409054189, 369, 8, 4, 'lesson', 8),
(159, 1409054190, '1rmh4cv0e6i00qtjtj6m9e4q13', 'b124d78eefdaf2c91f4a58a103c3f5da1f9ec341', 1, 'DTSlid', 1409054197, 7, 8, 4, 'unit', 3),
(160, 1409054197, '1rmh4cv0e6i00qtjtj6m9e4q13', 'b124d78eefdaf2c91f4a58a103c3f5da1f9ec341', 1, 'DTSlid', 1409054206, 9, 8, 4, 'lesson', 8),
(161, 1409054207, '1rmh4cv0e6i00qtjtj6m9e4q13', 'b124d78eefdaf2c91f4a58a103c3f5da1f9ec341', 1, 'DTSlid', 1409054213, 6, 8, 4, 'unit', 3),
(162, 1409054213, '1rmh4cv0e6i00qtjtj6m9e4q13', 'b124d78eefdaf2c91f4a58a103c3f5da1f9ec341', 1, 'DTSlid', 1409054232, 19, 8, 4, 'lesson', 8),
(163, 1409054234, '1rmh4cv0e6i00qtjtj6m9e4q13', 'b124d78eefdaf2c91f4a58a103c3f5da1f9ec341', 1, 'DTSlid', 1409054239, 5, 8, 4, 'unit', 3),
(164, 1409054240, '1rmh4cv0e6i00qtjtj6m9e4q13', 'b124d78eefdaf2c91f4a58a103c3f5da1f9ec341', 1, 'DTSlid', 1409054303, 63, 8, 4, 'lesson', 8),
(165, 1409054306, '1rmh4cv0e6i00qtjtj6m9e4q13', 'b124d78eefdaf2c91f4a58a103c3f5da1f9ec341', 1, 'DTSlid', 1409054308, 2, 8, 4, 'unit', 3),
(166, 1409054309, '1rmh4cv0e6i00qtjtj6m9e4q13', 'b124d78eefdaf2c91f4a58a103c3f5da1f9ec341', 1, 'DTSlid', 1409054323, 14, 8, 4, 'lesson', 8),
(167, 1409054325, '1rmh4cv0e6i00qtjtj6m9e4q13', 'b124d78eefdaf2c91f4a58a103c3f5da1f9ec341', 1, 'DTSlid', 1409054337, 12, 8, 4, 'unit', 3),
(168, 1409054338, '1rmh4cv0e6i00qtjtj6m9e4q13', 'b124d78eefdaf2c91f4a58a103c3f5da1f9ec341', 1, 'DTSlid', 1409054340, 2, 8, 4, 'lesson', 8),
(169, 1409054341, '1rmh4cv0e6i00qtjtj6m9e4q13', 'b124d78eefdaf2c91f4a58a103c3f5da1f9ec341', 1, 'DTSlid', 1409054348, 7, 8, 4, 'unit', 3),
(170, 1409054349, '1rmh4cv0e6i00qtjtj6m9e4q13', 'b124d78eefdaf2c91f4a58a103c3f5da1f9ec341', 1, 'DTSlid', 1409054388, 39, 8, 4, 'lesson', 8),
(171, 1409054389, '1rmh4cv0e6i00qtjtj6m9e4q13', 'b124d78eefdaf2c91f4a58a103c3f5da1f9ec341', 1, 'DTSlid', 1409054394, 5, 8, 4, 'unit', 3),
(172, 1409054396, '1rmh4cv0e6i00qtjtj6m9e4q13', 'b124d78eefdaf2c91f4a58a103c3f5da1f9ec341', 1, 'DTSlid', 1409054464, 68, 8, 4, 'lesson', 8),
(173, 1409054464, '1rmh4cv0e6i00qtjtj6m9e4q13', 'b124d78eefdaf2c91f4a58a103c3f5da1f9ec341', 1, 'DTSlid', 1409054467, 3, 8, 4, 'unit', 3),
(174, 1409054468, '1rmh4cv0e6i00qtjtj6m9e4q13', 'b124d78eefdaf2c91f4a58a103c3f5da1f9ec341', 1, 'DTSlid', 1409054676, 208, 8, 4, 'lesson', 8),
(175, 1409054678, '1rmh4cv0e6i00qtjtj6m9e4q13', 'b124d78eefdaf2c91f4a58a103c3f5da1f9ec341', 1, 'DTSlid', 1409054680, 2, 8, 4, 'unit', 5),
(176, 1409054682, '1rmh4cv0e6i00qtjtj6m9e4q13', 'b124d78eefdaf2c91f4a58a103c3f5da1f9ec341', 1, 'DTSlid', 1409054796, 114, 8, 4, 'lesson', 8),
(177, 1409054797, '1rmh4cv0e6i00qtjtj6m9e4q13', 'b124d78eefdaf2c91f4a58a103c3f5da1f9ec341', 1, 'DTSlid', 1409054802, 5, 8, 4, 'unit', 5),
(178, 1409054802, '1rmh4cv0e6i00qtjtj6m9e4q13', 'b124d78eefdaf2c91f4a58a103c3f5da1f9ec341', 1, 'DTSlid', 1409054817, 15, 8, 4, 'lesson', 8),
(179, 1409054819, '1rmh4cv0e6i00qtjtj6m9e4q13', 'b124d78eefdaf2c91f4a58a103c3f5da1f9ec341', 1, 'DTSlid', 1409054834, 15, 8, 4, 'unit', 5),
(180, 1409054835, '1rmh4cv0e6i00qtjtj6m9e4q13', 'b124d78eefdaf2c91f4a58a103c3f5da1f9ec341', 1, 'DTSlid', 1409054843, 8, 8, 4, 'lesson', 8),
(181, 1409054843, '1rmh4cv0e6i00qtjtj6m9e4q13', 'b124d78eefdaf2c91f4a58a103c3f5da1f9ec341', 1, 'DTSlid', 1409054891, 48, 8, 4, 'unit', 5),
(182, 1409054896, '1rmh4cv0e6i00qtjtj6m9e4q13', 'b124d78eefdaf2c91f4a58a103c3f5da1f9ec341', 1, 'DTSlid', 1409054904, 8, 8, 4, 'lesson', 8),
(183, 1409054915, '1rmh4cv0e6i00qtjtj6m9e4q13', 'b124d78eefdaf2c91f4a58a103c3f5da1f9ec341', 1, 'DTSlid', 1409054920, 5, 8, 4, 'unit', 5),
(184, 1409054921, '1rmh4cv0e6i00qtjtj6m9e4q13', 'b124d78eefdaf2c91f4a58a103c3f5da1f9ec341', 1, 'DTSlid', 1409054934, 13, 8, 4, 'lesson', 8),
(185, 1409054935, '1rmh4cv0e6i00qtjtj6m9e4q13', 'b124d78eefdaf2c91f4a58a103c3f5da1f9ec341', 1, 'DTSlid', 1409054943, 8, 8, 4, 'unit', 5),
(186, 1409054947, '1rmh4cv0e6i00qtjtj6m9e4q13', 'b124d78eefdaf2c91f4a58a103c3f5da1f9ec341', 1, 'DTSlid', 1409055338, 391, 8, 4, 'lesson', 8),
(187, 1409055339, '1rmh4cv0e6i00qtjtj6m9e4q13', 'b124d78eefdaf2c91f4a58a103c3f5da1f9ec341', 1, 'DTSlid', 1409055342, 3, 8, 4, 'unit', 3),
(188, 1409055342, '1rmh4cv0e6i00qtjtj6m9e4q13', 'b124d78eefdaf2c91f4a58a103c3f5da1f9ec341', 1, 'DTSlid', 1409055421, 79, 8, 4, 'unit', 4),
(189, 1409055421, '1rmh4cv0e6i00qtjtj6m9e4q13', 'b124d78eefdaf2c91f4a58a103c3f5da1f9ec341', 1, 'DTSlid', 1409055442, 21, 8, 4, 'lesson', 8),
(190, 1409055506, 'jegkfhnl1c8iuvlhusbbljrp53', 'ba7334fdb81d51948ab1703bbe11e35031d9038e', 1, 'Eddie', 1409055794, 288, NULL, NULL, 'system', 0),
(191, 1409055805, '7fmuj60k8odoa6ku9fiqbabd73', '3144c334409a68762ac1c00d3ea1f5d73dfa11bf', 1, 'Eddie', 1409055832, 27, NULL, NULL, 'system', 0),
(192, 1409056276, 'a0c8jp9tab67eqfpg1u6grpmb6', '4896062484dc5f92d86b81dafc16370ef604e74c', 1, 'klmpersoon1', 1409056563, 287, NULL, NULL, 'system', 0),
(193, 1409056588, 'ktkeor2cinl19r3vb5pucj1386', '18ed2f30d97b491ae04fe9d07ea5c184eb4a9539', 1, 'Eddie', 1409057221, 633, NULL, NULL, 'system', 0),
(194, 1409057232, 'iv2m4v3nfteku42tadjdu8jvj7', '77bf8e0d56e326f6edd07df0d65f69ef9b639c2d', 1, 'klmpersoon1', 1409057263, 31, NULL, NULL, 'system', 0),
(195, 1409057263, 'iv2m4v3nfteku42tadjdu8jvj7', '77bf8e0d56e326f6edd07df0d65f69ef9b639c2d', 1, 'klmpersoon1', 1409057287, 24, 8, 4, 'lesson', 8),
(196, 1409057288, 'iv2m4v3nfteku42tadjdu8jvj7', '77bf8e0d56e326f6edd07df0d65f69ef9b639c2d', 1, 'klmpersoon1', 1409057539, 251, 4, 5, 'lesson', 4),
(197, 1409057558, '8pmsq9v03g51helf2ga52ojp83', '9d7bcdd3afba96b8b43a8af7921e8ab706403cf8', 1, 'Eddie', 1409057592, 34, NULL, NULL, 'system', 0),
(198, 1409057603, '61ueo4oskcqkqhpbujt3cd12b4', '1caf27d3945767278a256451cbdf79bb12ad3a27', 1, 'klmpersoon1', 1409057605, 2, NULL, NULL, 'system', 0),
(199, 1409057606, '61ueo4oskcqkqhpbujt3cd12b4', '1caf27d3945767278a256451cbdf79bb12ad3a27', 1, 'klmpersoon1', 1409057610, 4, 8, 4, 'lesson', 8),
(200, 1409057610, '61ueo4oskcqkqhpbujt3cd12b4', '1caf27d3945767278a256451cbdf79bb12ad3a27', 1, 'klmpersoon1', 1409057614, 4, 8, 4, 'unit', 3),
(201, 1409057615, '61ueo4oskcqkqhpbujt3cd12b4', '1caf27d3945767278a256451cbdf79bb12ad3a27', 1, 'klmpersoon1', 1409057628, 13, 8, 4, 'unit', 4),
(202, 1409057629, '61ueo4oskcqkqhpbujt3cd12b4', '1caf27d3945767278a256451cbdf79bb12ad3a27', 1, 'klmpersoon1', 1409057639, 10, 8, 4, 'lesson', 8),
(203, 1409057639, '61ueo4oskcqkqhpbujt3cd12b4', '1caf27d3945767278a256451cbdf79bb12ad3a27', 1, 'klmpersoon1', 1409057648, 9, 10, 6, 'lesson', 10),
(204, 1409057648, '61ueo4oskcqkqhpbujt3cd12b4', '1caf27d3945767278a256451cbdf79bb12ad3a27', 1, 'klmpersoon1', 1409057650, 2, 8, 4, 'lesson', 8),
(205, 1409057650, '61ueo4oskcqkqhpbujt3cd12b4', '1caf27d3945767278a256451cbdf79bb12ad3a27', 1, 'klmpersoon1', 1409057656, 6, 8, 4, 'unit', 6),
(206, 1409057659, '61ueo4oskcqkqhpbujt3cd12b4', '1caf27d3945767278a256451cbdf79bb12ad3a27', 1, 'klmpersoon1', 1409057661, 2, 8, 4, 'unit', 3),
(207, 1409057662, '61ueo4oskcqkqhpbujt3cd12b4', '1caf27d3945767278a256451cbdf79bb12ad3a27', 1, 'klmpersoon1', 1409057668, 6, 8, 4, 'unit', 4),
(208, 1409057668, '61ueo4oskcqkqhpbujt3cd12b4', '1caf27d3945767278a256451cbdf79bb12ad3a27', 1, 'klmpersoon1', 1409057675, 7, 8, 4, 'unit', 5),
(209, 1409057675, '61ueo4oskcqkqhpbujt3cd12b4', '1caf27d3945767278a256451cbdf79bb12ad3a27', 1, 'klmpersoon1', 1409057679, 4, 8, 4, 'unit', 6),
(210, 1409057679, '61ueo4oskcqkqhpbujt3cd12b4', '1caf27d3945767278a256451cbdf79bb12ad3a27', 1, 'klmpersoon1', 1409057681, 2, 8, 4, 'lesson', 8),
(211, 1409057704, 'q7cm3rivla2jt3idjnue9e3dd7', '50419a2cfee2c1886a1ceec00d487cdeeb955340', 1, 'Eddie', 1409058051, 347, NULL, NULL, 'system', 0),
(212, 1409058095, 'a31tgl7cp0df9dh862tfi3f515', 'd34e365bd448b89c6b2183e3d60fec13747596f2', 1, 'klmpersoon2', 1409058143, 48, NULL, NULL, 'system', 0),
(213, 1409058171, '0rhscd1a7m5vjn7p8bopi0pil7', '100daa17952d5e9473f072176bca995f31df448b', 1, 'Eddie', 1409058187, 16, NULL, NULL, 'system', 0),
(214, 1409058214, 'eaklrju59elm733j4dc9rh9qc2', 'd28c8f0f3bd453d79ceddcb39021db215a7140db', 1, 'klmpersoon3', 1409058240, 26, NULL, NULL, 'system', 0),
(215, 1409058253, 'fiao75gb4jlm9ptr664tkcj877', '188772fb3224361a2e8208c2fb59b2807c9de309', 1, 'Eddie', 1409058294, 41, NULL, NULL, 'system', 0),
(216, 1409058303, '93ma30qb69g162essg2botkau3', '2e033d250990863e59a3671e40ff6e8046d471d4', 1, 'klmpersoon3', 1409058319, 16, NULL, NULL, 'system', 0),
(217, 1409058329, 'hbh1tcv16d50iu2u9shd927mp6', 'a5f68fbb099492d89f003ea74a4d6a4fc7cd66f6', 1, 'Eddie', 1409058451, 122, NULL, NULL, 'system', 0),
(218, 1409058469, 'i3hngul6sffqou2a2l8ki9mjl7', 'e93e0e5486b80b05771804406de0a966544d23f3', 1, 'klmpersoon3', 1409058500, 31, NULL, NULL, 'system', 0),
(219, 1409058552, 'd0tuabcnetsh8a7j4j9bj232s5', '66e3b23ce0b34268bf3a2fe45ec9917bd206de19', 1, 'klmpersoon4', 1409058563, 11, NULL, NULL, 'system', 0),
(220, 1409058565, 'd0tuabcnetsh8a7j4j9bj232s5', '66e3b23ce0b34268bf3a2fe45ec9917bd206de19', 1, 'klmpersoon4', 1409058573, 8, 8, 4, 'lesson', 8),
(221, 1409058576, 'd0tuabcnetsh8a7j4j9bj232s5', '66e3b23ce0b34268bf3a2fe45ec9917bd206de19', 1, 'klmpersoon4', 1409058581, 5, 8, 4, 'unit', 3),
(222, 1409058581, 'd0tuabcnetsh8a7j4j9bj232s5', '66e3b23ce0b34268bf3a2fe45ec9917bd206de19', 1, 'klmpersoon4', 1409058594, 13, 8, 4, 'unit', 4),
(223, 1409058594, 'd0tuabcnetsh8a7j4j9bj232s5', '66e3b23ce0b34268bf3a2fe45ec9917bd206de19', 1, 'klmpersoon4', 1409058609, 15, 8, 4, 'unit', 3),
(224, 1409058610, 'd0tuabcnetsh8a7j4j9bj232s5', '66e3b23ce0b34268bf3a2fe45ec9917bd206de19', 1, 'klmpersoon4', 1409058619, 9, 8, 4, 'unit', 4),
(225, 1409058619, 'd0tuabcnetsh8a7j4j9bj232s5', '66e3b23ce0b34268bf3a2fe45ec9917bd206de19', 1, 'klmpersoon4', 1409058632, 13, 8, 4, 'unit', 5),
(226, 1409058632, 'd0tuabcnetsh8a7j4j9bj232s5', '66e3b23ce0b34268bf3a2fe45ec9917bd206de19', 1, 'klmpersoon4', 1409058680, 48, 8, 4, 'unit', 6),
(227, 1409058715, 'd0tuabcnetsh8a7j4j9bj232s5', '66e3b23ce0b34268bf3a2fe45ec9917bd206de19', 1, 'klmpersoon4', 1409058728, 13, 8, 4, 'lesson', 8),
(228, 1409058741, 'ed6a42hg9l8ginps62s2aj42i7', 'd5dc6d2176bf61dde1b697ae4b36db3135c00ea9', 1, 'DTSlid', 1409058747, 6, NULL, NULL, 'system', 0),
(229, 1409058747, 'ed6a42hg9l8ginps62s2aj42i7', 'd5dc6d2176bf61dde1b697ae4b36db3135c00ea9', 1, 'DTSlid', 1409058821, 74, 8, 4, 'lesson', 8),
(230, 1409072718, 'ps669eul18847rga2q770k2mq1', '31d1bc63ab1fe615e2c4ba85cce2777550c58352', 1, 'DTSlid', 1409072733, 15, NULL, NULL, 'system', 0),
(231, 1409072733, 'ps669eul18847rga2q770k2mq1', '31d1bc63ab1fe615e2c4ba85cce2777550c58352', 1, 'DTSlid', 1409072737, 4, 8, 4, 'lesson', 8),
(232, 1409072738, 'ps669eul18847rga2q770k2mq1', '31d1bc63ab1fe615e2c4ba85cce2777550c58352', 1, 'DTSlid', 1409072740, 2, 8, 4, 'unit', 3),
(233, 1409072741, 'ps669eul18847rga2q770k2mq1', '31d1bc63ab1fe615e2c4ba85cce2777550c58352', 1, 'DTSlid', 1409072747, 6, 8, 4, 'unit', 4),
(234, 1409073167, 'vrl00h0l48dbao1d78l2m27ue3', 'c132689f7140d05ac1a469e212982e953e4d4cb6', 1, 'Eddie', 1409073329, 162, NULL, NULL, 'system', 0),
(235, 1409074289, 'sdffph2jib46ds9jtu8ujhvok6', 'f7ba04a35157a8d0419635e9718d2d53ee7e2376', 1, 'klmpersoon5', 1409074443, 154, NULL, NULL, 'system', 0),
(236, 1409074443, 'sdffph2jib46ds9jtu8ujhvok6', 'f7ba04a35157a8d0419635e9718d2d53ee7e2376', 1, 'klmpersoon5', 1409074462, 19, 8, 4, 'lesson', 8),
(237, 1409074463, 'sdffph2jib46ds9jtu8ujhvok6', 'f7ba04a35157a8d0419635e9718d2d53ee7e2376', 1, 'klmpersoon5', 1409074498, 35, 8, 4, 'unit', 3),
(238, 1409074498, 'sdffph2jib46ds9jtu8ujhvok6', 'f7ba04a35157a8d0419635e9718d2d53ee7e2376', 1, 'klmpersoon5', 1409074508, 10, 8, 4, 'unit', 4),
(239, 1409074508, 'sdffph2jib46ds9jtu8ujhvok6', 'f7ba04a35157a8d0419635e9718d2d53ee7e2376', 1, 'klmpersoon5', 1409074520, 12, 8, 4, 'unit', 5),
(240, 1409074520, 'sdffph2jib46ds9jtu8ujhvok6', 'f7ba04a35157a8d0419635e9718d2d53ee7e2376', 1, 'klmpersoon5', 1409074539, 19, 8, 4, 'unit', 4),
(241, 1409074540, 'sdffph2jib46ds9jtu8ujhvok6', 'f7ba04a35157a8d0419635e9718d2d53ee7e2376', 1, 'klmpersoon5', 1409074543, 3, 8, 4, 'unit', 5),
(242, 1409074543, 'sdffph2jib46ds9jtu8ujhvok6', 'f7ba04a35157a8d0419635e9718d2d53ee7e2376', 1, 'klmpersoon5', 1409074603, 60, 8, 4, 'unit', 6),
(243, 1409074604, 'sdffph2jib46ds9jtu8ujhvok6', 'f7ba04a35157a8d0419635e9718d2d53ee7e2376', 1, 'klmpersoon5', 1409074622, 18, 8, 4, 'unit', 5),
(244, 1409074623, 'sdffph2jib46ds9jtu8ujhvok6', 'f7ba04a35157a8d0419635e9718d2d53ee7e2376', 1, 'klmpersoon5', 1409074639, 16, 9, 4, 'lesson', 9),
(245, 1409074649, 'an3i07c0jllrics4dvgd8s0un5', '2e785330e9d979457d256014bf11a47673d4dd2d', 1, 'DTSlid', 1409074658, 9, NULL, NULL, 'system', 0),
(246, 1409074658, 'an3i07c0jllrics4dvgd8s0un5', '2e785330e9d979457d256014bf11a47673d4dd2d', 1, 'DTSlid', 1409074665, 7, 8, 4, 'lesson', 8),
(247, 1409074665, 'an3i07c0jllrics4dvgd8s0un5', '2e785330e9d979457d256014bf11a47673d4dd2d', 1, 'DTSlid', 1409074672, 7, 8, 4, 'unit', 3),
(248, 1409074673, 'an3i07c0jllrics4dvgd8s0un5', '2e785330e9d979457d256014bf11a47673d4dd2d', 1, 'DTSlid', 1409074693, 20, 8, 4, 'lesson', 8),
(249, 1409074703, 'o4fk4im7haj0hlm88857uki5g6', '0fb0154bb778129111587dc701a419b591ccf62d', 1, 'Eddie', 1409076014, 1311, NULL, NULL, 'system', 0),
(250, 1409232917, 'bv61ou5bj0i95pat4vlgrev6p2', 'c9cac0c9b606fec2b166ee3d703cf672a2f52c91', 1, 'Eddie', 1409233614, 697, NULL, NULL, 'system', 0),
(251, 1409847254, 'dc2n0ic76ivi2ddu2rbgmmfh76', 'dd4eda8686345271745d12e401fa03f30d2e0d71', 1, 'Eddie', 1409847754, 500, NULL, NULL, 'system', 0),
(252, 1410804312, '5nr4g2h6v43bovoh5qf1tb8sv1', '5be584f4dc0bb5b61ca4a3c80802d8ddcfb305c4', 1, 'Eddie', 1410804319, 7, NULL, NULL, 'system', 0),
(253, 1419968958, '1q8v4na3u839r8si9m66cdccd0', 'dc129a2b91e58390e682439ac2dc0df1df9d5d05', 1, 'Eddie', 1419968994, 36, NULL, NULL, 'system', 0),
(254, 1419968996, '1q8v4na3u839r8si9m66cdccd0', 'aaf82448d0c513d470152939fb15f21b268f9077', 1, 'DTSlid', 1419969007, 11, NULL, NULL, 'system', 0),
(255, 1425159272, 't8kkj794k9i9ms1pr2t7l6jlu6', '69be9c48e29560e0d446f6dc261a62347de9b5d6', 1, 'Eddie', 1425159810, 538, NULL, NULL, 'system', 0),
(256, 1426319608, 'b3nlbjb0s3sgndjj2gjtkulfu3', 'ecc48fac73a9af661c9b44489b6d0d088dfaf0bc', 1, 'Eddie', 1426319757, 149, NULL, NULL, 'system', 0),
(257, 1440673037, 'c2hiei8atp1916o2j02tcml8s2', 'db581b2155ef16bf6477fa67cd94fd4175674556', 1, 'Eddie', 1440673040, 3, NULL, NULL, 'system', 0),
(258, 1440673051, 'c2hiei8atp1916o2j02tcml8s2', 'f22d852a3f21f104f85fa2b42ab705367d87f7b7', 1, 'DTSlid', 1440673062, 11, NULL, NULL, 'system', 0),
(259, 1440673062, 'c2hiei8atp1916o2j02tcml8s2', 'f22d852a3f21f104f85fa2b42ab705367d87f7b7', 1, 'DTSlid', 1440673065, 3, 8, 4, 'lesson', 8),
(260, 1440673065, 'c2hiei8atp1916o2j02tcml8s2', 'f22d852a3f21f104f85fa2b42ab705367d87f7b7', 1, 'DTSlid', 1440673068, 3, 8, 4, 'unit', 3),
(261, 1440673068, 'c2hiei8atp1916o2j02tcml8s2', 'f22d852a3f21f104f85fa2b42ab705367d87f7b7', 1, 'DTSlid', 1440673109, 41, 8, 4, 'lesson', 8),
(262, 1440673109, 'c2hiei8atp1916o2j02tcml8s2', 'f22d852a3f21f104f85fa2b42ab705367d87f7b7', 1, 'DTSlid', 1440673126, 17, 8, 4, 'unit', 3),
(263, 1440673126, 'c2hiei8atp1916o2j02tcml8s2', 'f22d852a3f21f104f85fa2b42ab705367d87f7b7', 1, 'DTSlid', 1440673152, 26, 8, 4, 'lesson', 8),
(264, 1440673152, 'c2hiei8atp1916o2j02tcml8s2', 'f22d852a3f21f104f85fa2b42ab705367d87f7b7', 1, 'DTSlid', 1440673157, 5, 8, 4, 'unit', 3),
(265, 1440673157, 'c2hiei8atp1916o2j02tcml8s2', 'f22d852a3f21f104f85fa2b42ab705367d87f7b7', 1, 'DTSlid', 1440673195, 38, 8, 4, 'lesson', 8),
(266, 1440673195, 'c2hiei8atp1916o2j02tcml8s2', 'f22d852a3f21f104f85fa2b42ab705367d87f7b7', 1, 'DTSlid', 1440673201, 6, 8, 4, 'unit', 3),
(267, 1440673201, 'c2hiei8atp1916o2j02tcml8s2', 'f22d852a3f21f104f85fa2b42ab705367d87f7b7', 1, 'DTSlid', 1440673214, 13, 8, 4, 'lesson', 8),
(268, 1440673215, 'c2hiei8atp1916o2j02tcml8s2', 'f22d852a3f21f104f85fa2b42ab705367d87f7b7', 1, 'DTSlid', 1440673234, 19, 8, 4, 'unit', 3),
(269, 1440673234, 'c2hiei8atp1916o2j02tcml8s2', 'f22d852a3f21f104f85fa2b42ab705367d87f7b7', 1, 'DTSlid', 1440673261, 27, 8, 4, 'lesson', 8),
(270, 1440673261, 'c2hiei8atp1916o2j02tcml8s2', 'f22d852a3f21f104f85fa2b42ab705367d87f7b7', 1, 'DTSlid', 1440673264, 3, 8, 4, 'unit', 3),
(271, 1440673265, 'c2hiei8atp1916o2j02tcml8s2', 'f22d852a3f21f104f85fa2b42ab705367d87f7b7', 1, 'DTSlid', 1440673292, 27, 8, 4, 'lesson', 8),
(272, 1440673296, 'vhqqu7t58pbra5dj65sqartfj4', 'bf722e4b987baed9dc3765d3659ba4b615b72ced', 1, 'Eddie', 1440673450, 154, NULL, NULL, 'system', 0),
(273, 1440673458, 'vhqqu7t58pbra5dj65sqartfj4', '1989dbf5a3676ef4b723e1d53080cc1be6d1e8e6', 1, 'DTSlid', 1440673463, 5, NULL, NULL, 'system', 0),
(274, 1440673463, 'vhqqu7t58pbra5dj65sqartfj4', '1989dbf5a3676ef4b723e1d53080cc1be6d1e8e6', 1, 'DTSlid', 1440673464, 1, 8, 4, 'lesson', 8),
(275, 1440673465, 'vhqqu7t58pbra5dj65sqartfj4', '1989dbf5a3676ef4b723e1d53080cc1be6d1e8e6', 1, 'DTSlid', 1440673468, 3, 8, 4, 'unit', 3),
(276, 1440673468, 'vhqqu7t58pbra5dj65sqartfj4', '1989dbf5a3676ef4b723e1d53080cc1be6d1e8e6', 1, 'DTSlid', 1440674391, 923, 8, 4, 'lesson', 8),
(277, 1440674402, 'g3pc2o8umk6dofjc2lf0uelqn3', '9b894a05e7df8d2e9c6a4e52cf61488899b85d2f', 1, 'Eddie', 1440674499, 97, NULL, NULL, 'system', 0),
(278, 1440674504, 'fldc2jf5vqqoggvs4o5c7n3fm3', '31bb8e000170cd4db25c351fe04d3924531e8f9c', 1, 'Eddie', 1440674780, 276, NULL, NULL, 'system', 0),
(279, 1440674822, 'os928gneodj5bavb2effp4t9g3', 'd404a3a06c08cec29a59591f1980e9ddca7f3000', 1, 'Eddie', 1440674902, 80, NULL, NULL, 'system', 0),
(280, 1440674918, 'l8qq25oa2gdbchfmbt6bpt1rk2', 'fe20595344cc289a1fdc4bd734317d2b05ceb6de', 1, 'Eddie', 1440674977, 59, NULL, NULL, 'system', 0),
(281, 1440674992, 'fqf7e34n6sf7ef47bn4s2okdc1', '52e7581735d89910531428b0cc41c2c30767c6d6', 1, 'Eddie', 1440675123, 131, NULL, NULL, 'system', 0),
(282, 1440675252, '9nmte5mrpm17jt5qoqjoo7f1e2', 'c551ebdb4b4b385d45873e3af9fe07b670291f30', 1, 'Eddie', 1440675954, 702, NULL, NULL, 'system', 0),
(283, 1440675968, '9nmte5mrpm17jt5qoqjoo7f1e2', 'f6816c5258ba00fe837b4b0978372107d8ef3bec', 1, 'DTSlid', 1440675970, 2, NULL, NULL, 'system', 0),
(284, 1440675970, '9nmte5mrpm17jt5qoqjoo7f1e2', 'f6816c5258ba00fe837b4b0978372107d8ef3bec', 1, 'DTSlid', 1440675971, 1, 8, 4, 'lesson', 8),
(285, 1440675971, '9nmte5mrpm17jt5qoqjoo7f1e2', 'f6816c5258ba00fe837b4b0978372107d8ef3bec', 1, 'DTSlid', 1440675974, 3, 8, 4, 'unit', 3),
(286, 1440675974, '9nmte5mrpm17jt5qoqjoo7f1e2', 'f6816c5258ba00fe837b4b0978372107d8ef3bec', 1, 'DTSlid', 1440675998, 24, 8, 4, 'lesson', 8),
(287, 1440675998, '9nmte5mrpm17jt5qoqjoo7f1e2', 'f6816c5258ba00fe837b4b0978372107d8ef3bec', 1, 'DTSlid', 1440676006, 8, 8, 4, 'unit', 3),
(288, 1440676006, '9nmte5mrpm17jt5qoqjoo7f1e2', 'f6816c5258ba00fe837b4b0978372107d8ef3bec', 1, 'DTSlid', 1440676013, 7, 8, 4, 'unit', 4),
(289, 1440676013, '9nmte5mrpm17jt5qoqjoo7f1e2', 'f6816c5258ba00fe837b4b0978372107d8ef3bec', 1, 'DTSlid', 1440676016, 3, 8, 4, 'unit', 3),
(290, 1440676016, '9nmte5mrpm17jt5qoqjoo7f1e2', 'f6816c5258ba00fe837b4b0978372107d8ef3bec', 1, 'DTSlid', 1440676030, 14, 8, 4, 'lesson', 8),
(291, 1440676030, '9nmte5mrpm17jt5qoqjoo7f1e2', 'f6816c5258ba00fe837b4b0978372107d8ef3bec', 1, 'DTSlid', 1440676208, 178, 8, 4, 'unit', 3),
(292, 1440676208, '9nmte5mrpm17jt5qoqjoo7f1e2', 'f6816c5258ba00fe837b4b0978372107d8ef3bec', 1, 'DTSlid', 1440676222, 14, 8, 4, 'lesson', 8),
(293, 1440676226, 'hlrnmn3hj90hqgve7260lbp2b0', '65bb078e341fdc3b85057f1c74f620eb6f1593f7', 1, 'Eddie', 1440676246, 20, NULL, NULL, 'system', 0),
(294, 1440676269, 'hlrnmn3hj90hqgve7260lbp2b0', '9e9ec79341097ccc8cb5251b5760445c616004b5', 1, 'DTSlid', 1440676272, 3, NULL, NULL, 'system', 0),
(295, 1440676272, 'hlrnmn3hj90hqgve7260lbp2b0', '9e9ec79341097ccc8cb5251b5760445c616004b5', 1, 'DTSlid', 1440676273, 1, 8, 4, 'lesson', 8),
(296, 1440676273, 'hlrnmn3hj90hqgve7260lbp2b0', '9e9ec79341097ccc8cb5251b5760445c616004b5', 1, 'DTSlid', 1440676279, 6, 8, 4, 'unit', 3),
(297, 1440676279, 'hlrnmn3hj90hqgve7260lbp2b0', '9e9ec79341097ccc8cb5251b5760445c616004b5', 1, 'DTSlid', 1440676283, 4, 8, 4, 'unit', 4),
(298, 1440676283, 'hlrnmn3hj90hqgve7260lbp2b0', '9e9ec79341097ccc8cb5251b5760445c616004b5', 1, 'DTSlid', 1440676285, 2, 8, 4, 'unit', 3),
(299, 1440676286, 'hlrnmn3hj90hqgve7260lbp2b0', '9e9ec79341097ccc8cb5251b5760445c616004b5', 1, 'DTSlid', 1440676288, 2, 8, 4, 'unit', 4),
(300, 1440676288, 'hlrnmn3hj90hqgve7260lbp2b0', '9e9ec79341097ccc8cb5251b5760445c616004b5', 1, 'DTSlid', 1440676289, 1, 8, 4, 'unit', 5),
(301, 1440676289, 'hlrnmn3hj90hqgve7260lbp2b0', '9e9ec79341097ccc8cb5251b5760445c616004b5', 1, 'DTSlid', 1440676291, 2, 8, 4, 'unit', 3),
(302, 1440676291, 'hlrnmn3hj90hqgve7260lbp2b0', '9e9ec79341097ccc8cb5251b5760445c616004b5', 1, 'DTSlid', 1440676818, 527, 8, 4, 'lesson', 8),
(303, 1440828199, 'qq0aaubh96251m3b44vej7nel5', '19b27078127a2613b4c1237bd5d9273a67e2abe0', 1, 'Eddie', 1440828309, 110, NULL, NULL, 'system', 0),
(304, 1441865040, 'fhk8ussp6bur5j4uve6s6she83', '1a107456e77d82a703f65447388db5676f74d622', 1, 'Eddie', 1441865057, 17, NULL, NULL, 'system', 0),
(305, 1441865067, 'fhk8ussp6bur5j4uve6s6she83', '5a4725a9a9d4e83644d66a9ee170e7bc253420d8', 1, 'DTSlid', 1441865071, 4, NULL, NULL, 'system', 0),
(306, 1441865071, 'fhk8ussp6bur5j4uve6s6she83', '5a4725a9a9d4e83644d66a9ee170e7bc253420d8', 1, 'DTSlid', 1441865072, 1, 8, 4, 'lesson', 8),
(307, 1441865072, 'fhk8ussp6bur5j4uve6s6she83', '5a4725a9a9d4e83644d66a9ee170e7bc253420d8', 1, 'DTSlid', 1441865075, 3, 8, 4, 'unit', 3),
(308, 1441865075, 'fhk8ussp6bur5j4uve6s6she83', '5a4725a9a9d4e83644d66a9ee170e7bc253420d8', 1, 'DTSlid', 1441865100, 25, 8, 4, 'lesson', 8),
(309, 1441865105, 'cgt3kurg8qqum14759h6ivj687', '2d3fb6c25701cb5d88fdb04601ab7d7dd6d28de8', 1, 'Eddie', 1441865732, 627, NULL, NULL, 'system', 0),
(310, 1446466845, '6c5vbr9m9086bjv3873tot4ls0', '5b68c67978bd070e496a80adb9c70e7b2bc75dfe', 1, 'Eddie', 1446466846, 1, NULL, NULL, 'system', 0),
(311, 1446466891, 'cai0fr37m4hap6jj5lu89ibhc1', '609a4b41a246fab63a5ba2623fa9dfe242cf4eeb', 1, 'Eddie', 1446466940, 49, NULL, NULL, 'system', 0),
(312, 1446466942, 'cai0fr37m4hap6jj5lu89ibhc1', 'a2c3ee7e529dcd705d1394f52ccefa4a3c461e84', 1, 'DTSlid', 1446466951, 9, NULL, NULL, 'system', 0),
(313, 1446466951, 'cai0fr37m4hap6jj5lu89ibhc1', 'a2c3ee7e529dcd705d1394f52ccefa4a3c461e84', 1, 'DTSlid', 1446467174, 223, 8, 4, 'lesson', 8),
(314, 1447747580, '6aurodd4lkf7gm2ehbb7s5ufg2', '689ab212d5f252aed08a56e84eb557a0b3fa7b9a', 1, 'Eddie', 1447747597, 17, NULL, NULL, 'system', 0),
(315, 1447747603, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447747617, 14, NULL, NULL, 'system', 0),
(316, 1447747617, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447747642, 25, 9, 4, 'lesson', 9),
(317, 1447747642, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447747644, 2, 8, 4, 'lesson', 8),
(318, 1447747644, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447747714, 70, 8, 4, 'unit', 3),
(319, 1447747714, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447747717, 3, 8, 4, 'lesson', 8),
(320, 1447747717, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447747723, 6, 8, 4, 'unit', 3),
(321, 1447747723, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447747846, 123, 8, 4, 'lesson', 8),
(322, 1447747847, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447747852, 5, 8, 4, 'unit', 3),
(323, 1447747853, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447747876, 23, 8, 4, 'unit', 7),
(324, 1447747876, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447747911, 35, 8, 4, 'unit', 8),
(325, 1447747911, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447747917, 6, 8, 4, 'unit', 3),
(326, 1447747918, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447747921, 3, 8, 4, 'unit', 8),
(327, 1447747921, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447748059, 138, 8, 4, 'unit', 7),
(328, 1447748059, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447748153, 94, 8, 4, 'unit', 8),
(329, 1447748153, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447748264, 111, 8, 4, 'lesson', 8),
(330, 1447748264, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447748272, 8, 8, 4, 'unit', 3),
(331, 1447748272, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447748290, 18, 8, 4, 'unit', 10),
(332, 1447748290, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447748294, 4, 8, 4, 'unit', 8),
(333, 1447748294, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447748322, 28, 8, 4, 'unit', 4),
(334, 1447748322, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447748332, 10, 8, 4, 'unit', 7),
(335, 1447748332, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447748346, 14, 8, 4, 'unit', 3),
(336, 1447748346, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447748416, 70, 8, 4, 'lesson', 8),
(337, 1447748416, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447748432, 16, 8, 4, 'unit', 11),
(338, 1447748432, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447748446, 14, 8, 4, 'unit', 10),
(339, 1447748446, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447748451, 5, 8, 4, 'unit', 8),
(340, 1447748451, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447748459, 8, 8, 4, 'unit', 10),
(341, 1447748460, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447748465, 5, 8, 4, 'unit', 11),
(342, 1447748465, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447748490, 25, 8, 4, 'lesson', 8),
(343, 1447748491, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447748500, 9, 8, 4, 'unit', 11),
(344, 1447748500, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447748534, 34, 8, 4, 'lesson', 8),
(345, 1447748534, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447748696, 162, 8, 4, 'unit', 11),
(346, 1447748696, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447748710, 14, 8, 4, 'unit', 7),
(347, 1447748710, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447749997, 1287, 8, 4, 'unit', 11),
(348, 1447750938, '6aurodd4lkf7gm2ehbb7s5ufg2', '2cd35ac01c2995eaa5a9b98da71b11697c4bdcaf', 1, 'DTSlid', 1447750943, 5, 8, 4, 'lesson', 8),
(349, 1447750943, '6aurodd4lkf7gm2ehbb7s5ufg2', 'f3b8b14a6ad941c58c6423a346167a2524f6b4fb', 1, 'Eddie', 1447750960, 17, NULL, NULL, 'system', 0),
(350, 1447750973, '6aurodd4lkf7gm2ehbb7s5ufg2', 'ed11b20d1e2a173ab572ea1d7d69d5b85c417458', 1, 'DTSlid', 1447750976, 3, NULL, NULL, 'system', 0),
(351, 1447750976, '6aurodd4lkf7gm2ehbb7s5ufg2', 'ed11b20d1e2a173ab572ea1d7d69d5b85c417458', 1, 'DTSlid', 1447750982, 6, 8, 4, 'lesson', 8),
(352, 1447750982, '6aurodd4lkf7gm2ehbb7s5ufg2', 'ed11b20d1e2a173ab572ea1d7d69d5b85c417458', 1, 'DTSlid', 1447750989, 7, 8, 4, 'unit', 3),
(353, 1447750993, '245pfe893jh1nlf06ouikuog31', '0312f1643b59c5073e6034eb093fa8ce30435745', 1, 'Eddie', 1447751214, 221, NULL, NULL, 'system', 0),
(354, 1447755921, '245pfe893jh1nlf06ouikuog31', '0312f1643b59c5073e6034eb093fa8ce30435745', 1, 'Eddie', 1447755930, 9, NULL, NULL, 'system', 0),
(355, 1447755930, '245pfe893jh1nlf06ouikuog31', '356706dfa0ea68144c9bfb15caa21dd0e1e43c97', 1, 'DTSlid', 1447755933, 3, NULL, NULL, 'system', 0),
(356, 1447755933, '245pfe893jh1nlf06ouikuog31', '356706dfa0ea68144c9bfb15caa21dd0e1e43c97', 1, 'DTSlid', 1447755935, 2, 8, 4, 'lesson', 8),
(357, 1447755935, '245pfe893jh1nlf06ouikuog31', '356706dfa0ea68144c9bfb15caa21dd0e1e43c97', 1, 'DTSlid', 1447755938, 3, 8, 4, 'unit', 3),
(358, 1447755939, '245pfe893jh1nlf06ouikuog31', '356706dfa0ea68144c9bfb15caa21dd0e1e43c97', 1, 'DTSlid', 1447755943, 4, 8, 4, 'unit', 11),
(359, 1447755943, '245pfe893jh1nlf06ouikuog31', '356706dfa0ea68144c9bfb15caa21dd0e1e43c97', 1, 'DTSlid', 1447755973, 30, 8, 4, 'lesson', 8),
(360, 1447755973, '245pfe893jh1nlf06ouikuog31', '356706dfa0ea68144c9bfb15caa21dd0e1e43c97', 1, 'DTSlid', 1447755976, 3, 8, 4, 'unit', 3),
(361, 1447755977, '245pfe893jh1nlf06ouikuog31', '356706dfa0ea68144c9bfb15caa21dd0e1e43c97', 1, 'DTSlid', 1447755984, 7, 8, 4, 'unit', 11),
(362, 1447755984, '245pfe893jh1nlf06ouikuog31', '356706dfa0ea68144c9bfb15caa21dd0e1e43c97', 1, 'DTSlid', 1447756074, 90, 8, 4, 'lesson', 8),
(363, 1447756075, '245pfe893jh1nlf06ouikuog31', '356706dfa0ea68144c9bfb15caa21dd0e1e43c97', 1, 'DTSlid', 1447756315, 240, 8, 4, 'unit', 3),
(364, 1447756315, '245pfe893jh1nlf06ouikuog31', '356706dfa0ea68144c9bfb15caa21dd0e1e43c97', 1, 'DTSlid', 1447756319, 4, 8, 4, 'lesson', 8),
(365, 1447756319, '245pfe893jh1nlf06ouikuog31', '356706dfa0ea68144c9bfb15caa21dd0e1e43c97', 1, 'DTSlid', 1447756329, 10, 8, 4, 'unit', 3),
(366, 1447756330, '245pfe893jh1nlf06ouikuog31', '356706dfa0ea68144c9bfb15caa21dd0e1e43c97', 1, 'DTSlid', 1447756345, 15, 8, 4, 'unit', 11),
(367, 1447756345, '245pfe893jh1nlf06ouikuog31', '356706dfa0ea68144c9bfb15caa21dd0e1e43c97', 1, 'DTSlid', 1447756466, 121, 8, 4, 'lesson', 8),
(368, 1447756466, '245pfe893jh1nlf06ouikuog31', '356706dfa0ea68144c9bfb15caa21dd0e1e43c97', 1, 'DTSlid', 1447756478, 12, 8, 4, 'unit', 3),
(369, 1447756478, '245pfe893jh1nlf06ouikuog31', '356706dfa0ea68144c9bfb15caa21dd0e1e43c97', 1, 'DTSlid', 1447756487, 9, 8, 4, 'unit', 12),
(370, 1447756487, '245pfe893jh1nlf06ouikuog31', '356706dfa0ea68144c9bfb15caa21dd0e1e43c97', 1, 'DTSlid', 1447756497, 10, 8, 4, 'unit', 10),
(371, 1447756497, '245pfe893jh1nlf06ouikuog31', '356706dfa0ea68144c9bfb15caa21dd0e1e43c97', 1, 'DTSlid', 1447756513, 16, 8, 4, 'unit', 8),
(372, 1447756513, '245pfe893jh1nlf06ouikuog31', '356706dfa0ea68144c9bfb15caa21dd0e1e43c97', 1, 'DTSlid', 1447756520, 7, 8, 4, 'unit', 7),
(373, 1447756520, '245pfe893jh1nlf06ouikuog31', '356706dfa0ea68144c9bfb15caa21dd0e1e43c97', 1, 'DTSlid', 1447756538, 18, 8, 4, 'unit', 4),
(374, 1447756539, '245pfe893jh1nlf06ouikuog31', '356706dfa0ea68144c9bfb15caa21dd0e1e43c97', 1, 'DTSlid', 1447756551, 12, 8, 4, 'unit', 3),
(375, 1447756551, '245pfe893jh1nlf06ouikuog31', '356706dfa0ea68144c9bfb15caa21dd0e1e43c97', 1, 'DTSlid', 1447756559, 8, 8, 4, 'lesson', 8),
(376, 1447756559, '245pfe893jh1nlf06ouikuog31', '356706dfa0ea68144c9bfb15caa21dd0e1e43c97', 1, 'DTSlid', 1447756571, 12, 8, 4, 'unit', 4),
(377, 1447756572, '245pfe893jh1nlf06ouikuog31', '356706dfa0ea68144c9bfb15caa21dd0e1e43c97', 1, 'DTSlid', 1447756575, 3, 8, 4, 'lesson', 8),
(378, 1447756575, '245pfe893jh1nlf06ouikuog31', '356706dfa0ea68144c9bfb15caa21dd0e1e43c97', 1, 'DTSlid', 1447756590, 15, 8, 4, 'unit', 3),
(379, 1447756590, '245pfe893jh1nlf06ouikuog31', '356706dfa0ea68144c9bfb15caa21dd0e1e43c97', 1, 'DTSlid', 1447756641, 51, 8, 4, 'lesson', 8),
(380, 1447756641, '245pfe893jh1nlf06ouikuog31', '356706dfa0ea68144c9bfb15caa21dd0e1e43c97', 1, 'DTSlid', 1447756968, 327, 8, 4, 'unit', 13),
(381, 1447756972, '25odn0ocvennr7q2t1u9tfi835', 'c51a77de1e521fccb85f9df16c8f790aab43531b', 1, 'Eddie', 1447757290, 318, NULL, NULL, 'system', 0),
(382, 1447757301, '25odn0ocvennr7q2t1u9tfi835', '23a12864c0b6f4a4de2b1f5d522e9f33a9dfbcc0', 1, 'test', 1447757305, 4, NULL, NULL, 'system', 0),
(383, 1447757305, '25odn0ocvennr7q2t1u9tfi835', '23a12864c0b6f4a4de2b1f5d522e9f33a9dfbcc0', 1, 'test', 1447757307, 2, 8, 4, 'lesson', 8),
(384, 1447757307, '25odn0ocvennr7q2t1u9tfi835', '23a12864c0b6f4a4de2b1f5d522e9f33a9dfbcc0', 1, 'test', 1447757388, 81, 8, 4, 'unit', 13),
(385, 1447757388, '25odn0ocvennr7q2t1u9tfi835', '23a12864c0b6f4a4de2b1f5d522e9f33a9dfbcc0', 1, 'test', 1447757391, 3, 8, 4, 'lesson', 8),
(386, 1447757392, '25odn0ocvennr7q2t1u9tfi835', '3b6599cff2a175fb06e4c111c66eed46f1621d5b', 1, 'Eddie', 1447757819, 427, NULL, NULL, 'system', 0),
(387, 1447757862, '25odn0ocvennr7q2t1u9tfi835', '2a805204bde9fc7de048f86de6c976d695ae923b', 1, 'test', 1447757870, 8, NULL, NULL, 'system', 0),
(388, 1447757873, 'jddp2ja0fp6qt3msqic8jts8p3', 'dbe008d42cf06ed27b9bb141399e5f408b97575d', 1, 'Eddie', 1447757891, 18, NULL, NULL, 'system', 0),
(389, 1447757901, 'jddp2ja0fp6qt3msqic8jts8p3', '46b38157d25921eb651bc52f560be54b5c555a3d', 1, 'test', 1447757947, 46, NULL, NULL, 'system', 0),
(390, 1447757951, 'sovn8l1b91fu4lm09sq5tj8ar6', '8c03cc81794218618cf65a13248dd6ebdc49370f', 1, 'Eddie', 1447758056, 105, NULL, NULL, 'system', 0),
(391, 1447758063, 'sovn8l1b91fu4lm09sq5tj8ar6', 'e22b92c2f76a1323fe8982708cd330e2f4892a81', 1, 'test', 1447758110, 47, NULL, NULL, 'system', 0),
(392, 1447758113, 'g5vphf22cat7neo3ocprbt9fv6', 'ac6d9156f9270bbabc969da4dc0905cb23bb9dfe', 1, 'Eddie', 1447758367, 254, NULL, NULL, 'system', 0),
(393, 1447758368, 'g5vphf22cat7neo3ocprbt9fv6', '895cc8803e067e8d1705c23c2cfd07a59fa697db', 1, 'test', 1447758401, 33, NULL, NULL, 'system', 0),
(394, 1447758407, 'uaeeq6empj45rnokeglvp8qq57', 'd404d9e0cc2ca29cefcfd406b0b5f3aac84bf7a5', 1, 'Eddie', 1447758450, 43, NULL, NULL, 'system', 0),
(395, 1447761224, '4m0f53futh1grfoo1nsoqs2rr0', '05857939cc3a39f41c566a8ed2ee5cd4a4c06960', 1, 'Eddie', 1447761803, 579, NULL, NULL, 'system', 0),
(396, 1447762068, 'rng7459odunqpucmhejmt7pd61', '03dafb0aabbc97b2d3c0c10e4ed6375a451aee93', 1, 'Eddie', 1447762208, 140, NULL, NULL, 'system', 0),
(397, 1447762224, 'odp24eeb93gdr1vsce0ufe21u5', '2b5aa1a81f1c7fa19c8db7f16bcfbddfdf72722b', 1, 'eddieedease', 1447762251, 27, NULL, NULL, 'system', 0),
(398, 1447762255, '2i8l7q8etnsagbc1ok69o4cci1', 'd3a90e7f6b3d620a87e8502f1d2900d8cde2c8bb', 1, 'Eddie', 1447762304, 49, NULL, NULL, 'system', 0),
(399, 1447762316, 'nvteh0m24sb9amvsvp8dbfqg43', 'e58c79f718e8db2c46b693f73ed0c0eb31efb73f', 1, 'eddieedease', 1447762781, 465, NULL, NULL, 'system', 0),
(400, 1447762786, 'm5c1olgj1ouic6h7qfh54bk9c5', 'f412f468be795f16c2cd9fb8bcfd8f77b95fc5bc', 1, 'Eddie', 1447762995, 209, NULL, NULL, 'system', 0),
(401, 1447763008, '4uvdokm2lft0hcbr4q6t8n5du7', '560006955135353b9ceb7fa5d1af54bcbf718ad2', 1, 'eddieedease', 1447763034, 26, NULL, NULL, 'system', 0),
(402, 1447763037, 'u9jh8v6n5hp1gcbgvpl1i0hak5', '50798ee3e778688e2e10d7c564a6247f3f9d430c', 1, 'Eddie', 1447763138, 101, NULL, NULL, 'system', 0),
(403, 1447763147, 'm3kn11fmp96o7j5i1ajs9qant2', '22f43db70a30f5d8e3f92d5ea584afd4c674fe33', 1, 'eddieedease', 1447763173, 26, NULL, NULL, 'system', 0),
(404, 1447763176, 'cpee4bgi7a9gqj61e4hf6omhr1', '8f0c018b01aea81cbf416817861f195389082437', 1, 'Eddie', 1447763379, 203, NULL, NULL, 'system', 0),
(405, 1447763391, 'f5r3umho6dit0ndeoqsv741cp2', 'a65a1042f2d11d9e9b189bc9659c985e12b9051c', 1, 'eddieedease', 1447763406, 15, NULL, NULL, 'system', 0),
(406, 1447763408, 'sa7iqqi7qs69fjoq296khslos0', '9d3a8826644c58fd732bfe99a30a5d2048489378', 1, 'Eddie', 1447763513, 105, NULL, NULL, 'system', 0),
(407, 1447763516, 'vcmpsk5222bbrbrtpl6lm77i77', '2468a879267b1b74b68874639c22a8fba18160e9', 1, 'Eddie', 1447763522, 6, NULL, NULL, 'system', 0),
(408, 1447763557, '6gs8i05u5n5c9vmjbqtucfnm31', '85379342d9d4473229d6b4982ec4553177a601bb', 1, 'eddieedease', 1447763560, 3, NULL, NULL, 'system', 0),
(409, 1447763561, '6gs8i05u5n5c9vmjbqtucfnm31', '85379342d9d4473229d6b4982ec4553177a601bb', 1, 'eddieedease', 1447763584, 23, 8, 4, 'lesson', 8),
(410, 1447763589, 'dkc7f3n8kns3iff81tufacee44', '5b1779fbc748dde5969b071faf4a5bb09eadf594', 1, 'Eddie', 1447764765, 1176, NULL, NULL, 'system', 0),
(411, 1447764773, 'm0vc7tlcfkhegr906tsb5jobo5', '6ac452ee363c47bf9e8e3b883c3148a112456e8d', 1, 'eddieedease', 1447765243, 470, NULL, NULL, 'system', 0),
(412, 1447765248, '67q3jb7oes1sk90tdat1ps0n53', '3063f037c8ffc7a599efd88f184cea04d3de1e75', 1, 'Eddie', 1447765326, 78, NULL, NULL, 'system', 0),
(413, 1447765352, 'hjbm58uqtg38c8rumpro6cipe4', '1131fd6195a13971308659f292fae90caeb3ff55', 1, 'edease', 1447765371, 19, NULL, NULL, 'system', 0),
(414, 1447766369, 'u2qk8fd8n7g2d81pj91rnnqbn7', 'ad5359a6840e906719db0d09ca781b5765291e38', 1, 'Eddie', 1447766440, 71, NULL, NULL, 'system', 0),
(415, 1447766447, 'am5daii9jvlhdak7c33f3os333', 'a151add766cc870ad75aced191afd01468d2e259', 1, 'edease', 1447766470, 23, NULL, NULL, 'system', 0),
(416, 1447766473, 'lmnanc7tugvcpc1n074kn9mod0', '733cf3152f21c44506370aac88da4a05226cb735', 1, 'Eddie', 1447766549, 76, NULL, NULL, 'system', 0),
(417, 1447766552, '0369v5i1ekl4t7ubg17em0ta21', '78337ce677ca35747c07acd923e4f34d61de8887', 1, 'Eddie', 1447766563, 11, NULL, NULL, 'system', 0),
(418, 1447766563, '0369v5i1ekl4t7ubg17em0ta21', '849d41a35cdebe8fc6567dc65401cd84fffce6ec', 1, 'edease', 1447766580, 17, NULL, NULL, 'system', 0),
(419, 1448398893, 'l372f60h1fsgj3080tem5h7nn1', 'd112ead407061467e1fbe336cfc40596f12939a6', 1, 'Eddie', 1448398911, 18, NULL, NULL, 'system', 0),
(420, 1448398923, 'l372f60h1fsgj3080tem5h7nn1', 'f521597689098aaa66708b25fb9612d3a8fc4bd9', 1, 'DTSlid', 1448398981, 58, NULL, NULL, 'system', 0),
(421, 1448398985, '3v9egic8padk590f4lpir31kg4', '78d1a78190844bced51e9ea49f57f5d568bed07c', 1, 'Eddie', 1448398989, 4, NULL, NULL, 'system', 0),
(422, 1448398992, '3v9egic8padk590f4lpir31kg4', 'ae43f99d0a91132f46614f0728c066986ee98f16', 1, 'test', 1448399002, 10, NULL, NULL, 'system', 0),
(423, 1448399005, '0faj5aiqqoega18l8iut9f93l5', '364017b48e5039497571de24c46c44b64a51ea3d', 1, 'Eddie', 1448399051, 46, NULL, NULL, 'system', 0),
(424, 1448399073, 'dkp4006q6ffvcvvs4l5n7m4q60', '452c4104ea2dff6090b04dc0be948f18b8b26693', 1, 'edease', 1448399093, 20, NULL, NULL, 'system', 0),
(425, 1448399093, 'dkp4006q6ffvcvvs4l5n7m4q60', '452c4104ea2dff6090b04dc0be948f18b8b26693', 1, 'edease', 1448399121, 28, 4, 7, 'lesson', 4),
(426, 1448399125, 'uqigi81au6q778j2knt6t6up70', '01a097ee1710444b5f615f6616e78a5680f78739', 1, 'Eddie', 1448399211, 86, NULL, NULL, 'system', 0),
(427, 1448399227, 'uqigi81au6q778j2knt6t6up70', '99064e22c2c5af1f0f1fd242fc4af6410bc64e27', 1, 'DTSlid', 1448399241, 14, NULL, NULL, 'system', 0),
(428, 1448399241, 'uqigi81au6q778j2knt6t6up70', '99064e22c2c5af1f0f1fd242fc4af6410bc64e27', 1, 'DTSlid', 1448399259, 18, 4, 7, 'lesson', 4),
(429, 1448632735, 'm9nddl6lujjq13f7ubgf7mkne2', 'b76ab9cf09c62a21f875d2c63fde018556fac94d', 1, 'Eddie', 1448633471, 736, NULL, NULL, 'system', 0),
(430, 1448977752, 'tk83eh73l824bg9s3570gtpid7', '09fb621610448927d370c8f7d41fc553bbd95c27', 1, 'Eddie', 1448978278, 526, NULL, NULL, 'system', 0),
(431, 1451476210, 'ef005bq2gc4vnopp4e858ck341', '5caa7af88eb06584a58ddd49f6f2623bfdbeaf4f', 1, 'Eddie', 1451476543, 333, NULL, NULL, 'system', 0),
(432, 1451476553, 'ef005bq2gc4vnopp4e858ck341', '0668dc68c4fd0bbaa1e6103725916781edb88cc6', 1, 'DTSlid', 1451476568, 15, NULL, NULL, 'system', 0),
(433, 1451476568, 'ef005bq2gc4vnopp4e858ck341', '0668dc68c4fd0bbaa1e6103725916781edb88cc6', 0, 'DTSlid', 1451479034, 2466, 4, 7, 'lesson', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
`id` mediumint(8) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `basic_user_type` varchar(50) NOT NULL,
  `core_access` text,
  `modules_access` text,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `name`, `basic_user_type`, `core_access`, `modules_access`, `active`) VALUES
(2, 'Team lid', 'student', 'a:13:{s:7:"content";s:6:"change";s:5:"users";s:6:"change";s:10:"statistics";s:6:"change";s:17:"personal_messages";s:6:"change";s:13:"control_panel";s:6:"change";s:10:"move_block";s:6:"change";s:13:"module_itself";s:6:"change";s:9:"dashboard";s:6:"change";s:16:"insert_group_key";s:6:"change";s:8:"calendar";s:6:"change";s:7:"surveys";s:6:"change";s:4:"news";s:6:"change";s:5:"forum";s:6:"change";}', NULL, 1),
(3, 'HoofdAdmin', 'administrator', 'a:23:{s:7:"lessons";s:6:"change";s:5:"users";s:6:"change";s:13:"configuration";s:6:"change";s:6:"themes";s:6:"change";s:11:"logout_user";s:6:"change";s:12:"user_profile";s:6:"change";s:10:"user_types";s:6:"change";s:6:"groups";s:6:"change";s:9:"languages";s:6:"change";s:11:"version_key";s:6:"change";s:11:"maintenance";s:6:"change";s:6:"backup";s:6:"change";s:7:"modules";s:6:"change";s:13:"module_itself";s:6:"change";s:10:"statistics";s:6:"change";s:7:"archive";s:6:"change";s:17:"personal_messages";s:6:"change";s:13:"notifications";s:6:"change";s:13:"control_panel";s:6:"change";s:9:"dashboard";s:6:"change";s:8:"calendar";s:6:"change";s:4:"news";s:6:"change";s:5:"forum";s:6:"change";}', NULL, 1),
(4, 'DTS', 'professor', 'a:19:{s:8:"settings";s:6:"change";s:5:"users";s:6:"change";s:7:"content";s:6:"change";s:5:"files";s:6:"change";s:8:"progress";s:6:"change";s:10:"statistics";s:6:"change";s:17:"personal_messages";s:6:"change";s:13:"control_panel";s:6:"change";s:9:"dashboard";s:6:"change";s:10:"move_block";s:6:"change";s:13:"module_itself";s:6:"change";s:17:"professor_courses";s:6:"change";s:15:"course_settings";s:6:"change";s:16:"insert_group_key";s:6:"change";s:8:"glossary";s:6:"change";s:8:"calendar";s:6:"change";s:7:"surveys";s:6:"change";s:4:"news";s:6:"change";s:5:"forum";s:6:"change";}', NULL, 1),
(5, 'asfsafsafa', 'student', 'a:13:{s:7:"content";s:6:"change";s:5:"users";s:6:"change";s:10:"statistics";s:6:"change";s:17:"personal_messages";s:6:"change";s:13:"control_panel";s:6:"change";s:10:"move_block";s:6:"change";s:13:"module_itself";s:6:"change";s:9:"dashboard";s:6:"change";s:16:"insert_group_key";s:6:"change";s:8:"calendar";s:6:"change";s:7:"surveys";s:6:"change";s:4:"news";s:6:"change";s:5:"forum";s:6:"change";}', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `words`
--

CREATE TABLE `words` (
  `groupid` varchar(10) NOT NULL DEFAULT '''lt''',
  `word` varchar(20) NOT NULL DEFAULT '',
  `question` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `benchmark`
--
ALTER TABLE `benchmark`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
 ADD PRIMARY KEY (`id`), ADD KEY `users_LOGIN` (`users_LOGIN`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
 ADD PRIMARY KEY (`cache_key`);

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `completed_tests`
--
ALTER TABLE `completed_tests`
 ADD PRIMARY KEY (`id`), ADD KEY `users_login` (`users_LOGIN`), ADD KEY `tests_ID` (`tests_ID`), ADD KEY `status` (`status`), ADD KEY `timestamp` (`timestamp`), ADD KEY `archive` (`archive`), ADD KEY `score` (`score`), ADD KEY `pending` (`pending`);

--
-- Indexes for table `completed_tests_blob`
--
ALTER TABLE `completed_tests_blob`
 ADD PRIMARY KEY (`id`), ADD KEY `ibfk_completed_tests_blob_1` (`completed_tests_ID`);

--
-- Indexes for table `configuration`
--
ALTER TABLE `configuration`
 ADD PRIMARY KEY (`name`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
 ADD PRIMARY KEY (`id`), ADD KEY `instance_source` (`instance_source`);

--
-- Indexes for table `courses_to_groups`
--
ALTER TABLE `courses_to_groups`
 ADD PRIMARY KEY (`courses_ID`,`groups_ID`);

--
-- Indexes for table `directions`
--
ALTER TABLE `directions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `done_questions`
--
ALTER TABLE `done_questions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `done_tests`
--
ALTER TABLE `done_tests`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
 ADD PRIMARY KEY (`id`), ADD KEY `users_LOGIN` (`users_LOGIN`), ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `event_notifications`
--
ALTER TABLE `event_notifications`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `f_configuration`
--
ALTER TABLE `f_configuration`
 ADD PRIMARY KEY (`name`);

--
-- Indexes for table `f_folders`
--
ALTER TABLE `f_folders`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`,`users_LOGIN`);

--
-- Indexes for table `f_forums`
--
ALTER TABLE `f_forums`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `f_messages`
--
ALTER TABLE `f_messages`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `f_personal_messages`
--
ALTER TABLE `f_personal_messages`
 ADD PRIMARY KEY (`id`), ADD KEY `pm_index` (`users_LOGIN`);

--
-- Indexes for table `f_poll`
--
ALTER TABLE `f_poll`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `f_topics`
--
ALTER TABLE `f_topics`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `f_users_to_polls`
--
ALTER TABLE `f_users_to_polls`
 ADD PRIMARY KEY (`f_poll_ID`,`users_LOGIN`);

--
-- Indexes for table `glossary`
--
ALTER TABLE `glossary`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lessons_timeline_topics`
--
ALTER TABLE `lessons_timeline_topics`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lessons_timeline_topics_data`
--
ALTER TABLE `lessons_timeline_topics_data`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lessons_to_courses`
--
ALTER TABLE `lessons_to_courses`
 ADD PRIMARY KEY (`lessons_ID`,`courses_ID`);

--
-- Indexes for table `lessons_to_groups`
--
ALTER TABLE `lessons_to_groups`
 ADD PRIMARY KEY (`lessons_ID`,`groups_ID`);

--
-- Indexes for table `lesson_conditions`
--
ALTER TABLE `lesson_conditions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
 ADD PRIMARY KEY (`id`), ADD KEY `timestamp` (`timestamp`), ADD KEY `users_LOGIN` (`users_LOGIN`), ADD KEY `action` (`action`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
 ADD PRIMARY KEY (`className`);

--
-- Indexes for table `module_bbb`
--
ALTER TABLE `module_bbb`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_bbb_users_to_meeting`
--
ALTER TABLE `module_bbb_users_to_meeting`
 ADD KEY `users_LOGIN` (`users_LOGIN`,`meeting_ID`);

--
-- Indexes for table `module_billboard`
--
ALTER TABLE `module_billboard`
 ADD PRIMARY KEY (`lessons_ID`);

--
-- Indexes for table `module_blogs`
--
ALTER TABLE `module_blogs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_blogs_articles`
--
ALTER TABLE `module_blogs_articles`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_blogs_comments`
--
ALTER TABLE `module_blogs_comments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_blogs_users`
--
ALTER TABLE `module_blogs_users`
 ADD PRIMARY KEY (`users_LOGIN`,`blogs_ID`);

--
-- Indexes for table `module_chat`
--
ALTER TABLE `module_chat`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_chat_users`
--
ALTER TABLE `module_chat_users`
 ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `module_faq`
--
ALTER TABLE `module_faq`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_gradebook_grades`
--
ALTER TABLE `module_gradebook_grades`
 ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `module_gradebook_objects`
--
ALTER TABLE `module_gradebook_objects`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_gradebook_ranges`
--
ALTER TABLE `module_gradebook_ranges`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_gradebook_users`
--
ALTER TABLE `module_gradebook_users`
 ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `module_journal_entries`
--
ALTER TABLE `module_journal_entries`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_journal_rules`
--
ALTER TABLE `module_journal_rules`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_journal_settings`
--
ALTER TABLE `module_journal_settings`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_links`
--
ALTER TABLE `module_links`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_outlook_invitation`
--
ALTER TABLE `module_outlook_invitation`
 ADD PRIMARY KEY (`courses_ID`);

--
-- Indexes for table `module_quote`
--
ALTER TABLE `module_quote`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_rss_feeds`
--
ALTER TABLE `module_rss_feeds`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_rss_provider`
--
ALTER TABLE `module_rss_provider`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_workbook_answers`
--
ALTER TABLE `module_workbook_answers`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_workbook_autosave`
--
ALTER TABLE `module_workbook_autosave`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_workbook_items`
--
ALTER TABLE `module_workbook_items`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_workbook_progress`
--
ALTER TABLE `module_workbook_progress`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_workbook_publish`
--
ALTER TABLE `module_workbook_publish`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_workbook_settings`
--
ALTER TABLE `module_workbook_settings`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_youtube`
--
ALTER TABLE `module_youtube`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
 ADD PRIMARY KEY (`id`), ADD KEY `recipient` (`recipient`);

--
-- Indexes for table `periods`
--
ALTER TABLE `periods`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_comments`
--
ALTER TABLE `profile_comments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
 ADD PRIMARY KEY (`id`), ADD KEY `creator_LOGIN` (`creator_LOGIN`), ADD KEY `deadline` (`deadline`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions_to_skills`
--
ALTER TABLE `questions_to_skills`
 ADD KEY `questions_id` (`questions_id`,`skills_ID`);

--
-- Indexes for table `questions_to_surveys`
--
ALTER TABLE `questions_to_surveys`
 ADD PRIMARY KEY (`id`), ADD KEY `surveys_ID` (`surveys_ID`);

--
-- Indexes for table `rules`
--
ALTER TABLE `rules`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scorm_data`
--
ALTER TABLE `scorm_data`
 ADD PRIMARY KEY (`id`), ADD KEY `users_LOGIN` (`users_LOGIN`);

--
-- Indexes for table `search_invertedindex`
--
ALTER TABLE `search_invertedindex`
 ADD PRIMARY KEY (`id`), ADD KEY `keyword` (`keyword`);

--
-- Indexes for table `search_keywords`
--
ALTER TABLE `search_keywords`
 ADD KEY `keyword` (`keyword`), ADD KEY `foreign_ID` (`foreign_ID`), ADD KEY `table_name` (`table_name`), ADD KEY `position` (`position`);

--
-- Indexes for table `sent_notifications`
--
ALTER TABLE `sent_notifications`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveys`
--
ALTER TABLE `surveys`
 ADD PRIMARY KEY (`id`), ADD KEY `survey_code` (`survey_code`);

--
-- Indexes for table `survey_questions_done`
--
ALTER TABLE `survey_questions_done`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
 ADD PRIMARY KEY (`id`), ADD KEY `lessons_ID` (`lessons_ID`);

--
-- Indexes for table `tests_to_questions`
--
ALTER TABLE `tests_to_questions`
 ADD PRIMARY KEY (`tests_ID`,`questions_ID`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
 ADD PRIMARY KEY (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`login`), ADD KEY `id` (`id`), ADD KEY `active` (`active`);

--
-- Indexes for table `users_to_content`
--
ALTER TABLE `users_to_content`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_LOGIN` (`users_LOGIN`,`content_ID`,`lessons_ID`);

--
-- Indexes for table `users_to_coupons`
--
ALTER TABLE `users_to_coupons`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_to_courses`
--
ALTER TABLE `users_to_courses`
 ADD PRIMARY KEY (`users_LOGIN`,`courses_ID`), ADD KEY `archive` (`archive`), ADD KEY `users_LOGIN` (`users_LOGIN`), ADD KEY `courses_ID` (`courses_ID`), ADD KEY `from_timestamp` (`from_timestamp`);

--
-- Indexes for table `users_to_done_surveys`
--
ALTER TABLE `users_to_done_surveys`
 ADD PRIMARY KEY (`users_LOGIN`,`surveys_ID`);

--
-- Indexes for table `users_to_groups`
--
ALTER TABLE `users_to_groups`
 ADD PRIMARY KEY (`groups_ID`,`users_LOGIN`);

--
-- Indexes for table `users_to_lessons`
--
ALTER TABLE `users_to_lessons`
 ADD PRIMARY KEY (`users_LOGIN`,`lessons_ID`), ADD KEY `users_LOGIN` (`users_LOGIN`), ADD KEY `lessons_ID` (`lessons_ID`), ADD KEY `from_timestamp` (`from_timestamp`), ADD KEY `archive` (`archive`);

--
-- Indexes for table `users_to_projects`
--
ALTER TABLE `users_to_projects`
 ADD PRIMARY KEY (`users_LOGIN`,`projects_ID`);

--
-- Indexes for table `users_to_surveys`
--
ALTER TABLE `users_to_surveys`
 ADD PRIMARY KEY (`users_LOGIN`,`surveys_ID`), ADD KEY `surveys_ID` (`surveys_ID`,`users_LOGIN`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
 ADD PRIMARY KEY (`name`);

--
-- Indexes for table `user_times`
--
ALTER TABLE `user_times`
 ADD PRIMARY KEY (`id`), ADD KEY `users_LOGIN` (`users_LOGIN`), ADD KEY `session_expired` (`session_expired`), ADD KEY `entity` (`entity`), ADD KEY `lessons_ID` (`lessons_ID`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `words`
--
ALTER TABLE `words`
 ADD PRIMARY KEY (`word`,`groupid`), ADD KEY `groupid` (`groupid`), ADD FULLTEXT KEY `word_3` (`word`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `benchmark`
--
ALTER TABLE `benchmark`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `completed_tests`
--
ALTER TABLE `completed_tests`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `completed_tests_blob`
--
ALTER TABLE `completed_tests_blob`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `directions`
--
ALTER TABLE `directions`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `done_questions`
--
ALTER TABLE `done_questions`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `done_tests`
--
ALTER TABLE `done_tests`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=475;
--
-- AUTO_INCREMENT for table `event_notifications`
--
ALTER TABLE `event_notifications`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `f_folders`
--
ALTER TABLE `f_folders`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `f_forums`
--
ALTER TABLE `f_forums`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `f_messages`
--
ALTER TABLE `f_messages`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `f_personal_messages`
--
ALTER TABLE `f_personal_messages`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `f_poll`
--
ALTER TABLE `f_poll`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `f_topics`
--
ALTER TABLE `f_topics`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glossary`
--
ALTER TABLE `glossary`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `lessons_timeline_topics`
--
ALTER TABLE `lessons_timeline_topics`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lessons_timeline_topics_data`
--
ALTER TABLE `lessons_timeline_topics_data`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lesson_conditions`
--
ALTER TABLE `lesson_conditions`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=432;
--
-- AUTO_INCREMENT for table `module_bbb`
--
ALTER TABLE `module_bbb`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `module_blogs`
--
ALTER TABLE `module_blogs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `module_blogs_articles`
--
ALTER TABLE `module_blogs_articles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `module_blogs_comments`
--
ALTER TABLE `module_blogs_comments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `module_chat`
--
ALTER TABLE `module_chat`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `module_faq`
--
ALTER TABLE `module_faq`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `module_gradebook_grades`
--
ALTER TABLE `module_gradebook_grades`
MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `module_gradebook_objects`
--
ALTER TABLE `module_gradebook_objects`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `module_gradebook_ranges`
--
ALTER TABLE `module_gradebook_ranges`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `module_gradebook_users`
--
ALTER TABLE `module_gradebook_users`
MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `module_journal_entries`
--
ALTER TABLE `module_journal_entries`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `module_journal_rules`
--
ALTER TABLE `module_journal_rules`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `module_journal_settings`
--
ALTER TABLE `module_journal_settings`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `module_links`
--
ALTER TABLE `module_links`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `module_quote`
--
ALTER TABLE `module_quote`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `module_rss_feeds`
--
ALTER TABLE `module_rss_feeds`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `module_rss_provider`
--
ALTER TABLE `module_rss_provider`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `module_workbook_answers`
--
ALTER TABLE `module_workbook_answers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `module_workbook_autosave`
--
ALTER TABLE `module_workbook_autosave`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `module_workbook_items`
--
ALTER TABLE `module_workbook_items`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `module_workbook_progress`
--
ALTER TABLE `module_workbook_progress`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `module_workbook_publish`
--
ALTER TABLE `module_workbook_publish`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `module_workbook_settings`
--
ALTER TABLE `module_workbook_settings`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `module_youtube`
--
ALTER TABLE `module_youtube`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `periods`
--
ALTER TABLE `periods`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `profile_comments`
--
ALTER TABLE `profile_comments`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `questions_to_surveys`
--
ALTER TABLE `questions_to_surveys`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rules`
--
ALTER TABLE `rules`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `scorm_data`
--
ALTER TABLE `scorm_data`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `search_invertedindex`
--
ALTER TABLE `search_invertedindex`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5610;
--
-- AUTO_INCREMENT for table `sent_notifications`
--
ALTER TABLE `sent_notifications`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `surveys`
--
ALTER TABLE `surveys`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `survey_questions_done`
--
ALTER TABLE `survey_questions_done`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `users_to_content`
--
ALTER TABLE `users_to_content`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_to_coupons`
--
ALTER TABLE `users_to_coupons`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_times`
--
ALTER TABLE `user_times`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=434;
--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `completed_tests_blob`
--
ALTER TABLE `completed_tests_blob`
ADD CONSTRAINT `ibfk_completed_tests_blob_1` FOREIGN KEY (`completed_tests_ID`) REFERENCES `completed_tests` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
