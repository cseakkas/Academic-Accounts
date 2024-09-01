-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2024 at 07:15 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accounts_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
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
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Menu', 7, 'add_menulist'),
(26, 'Can change Menu', 7, 'change_menulist'),
(27, 'Can delete Menu', 7, 'delete_menulist'),
(28, 'Can view Menu', 7, 'view_menulist'),
(29, 'Can add User Registration', 8, 'add_userregistration'),
(30, 'Can change User Registration', 8, 'change_userregistration'),
(31, 'Can delete User Registration', 8, 'delete_userregistration'),
(32, 'Can view User Registration', 8, 'view_userregistration'),
(33, 'Can add Access Control', 9, 'add_useraccesscontrol'),
(34, 'Can change Access Control', 9, 'change_useraccesscontrol'),
(35, 'Can delete Access Control', 9, 'delete_useraccesscontrol'),
(36, 'Can view Access Control', 9, 'view_useraccesscontrol');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$XLpsoy8Lvz0I6kvC7sImXa$roQziQW3w783lbrsZHj4Vaea10vKTB33z6NBkSa03L0=', '2024-08-30 07:11:21.359492', 1, 'accounts', '', '', '', 1, 1, '2024-08-30 00:38:19.039215');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
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
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-08-30 00:42:41.031046', '1', 'Md. Akkas Mia', 1, '[{\"added\": {}}]', 8, 1),
(2, '2024-08-30 00:44:08.461138', '1', 'Fee Collection Add', 1, '[{\"added\": {}}]', 7, 1),
(3, '2024-08-30 00:45:00.681786', '2', 'Fee Collection', 1, '[{\"added\": {}}]', 7, 1),
(4, '2024-08-30 00:45:38.244025', '3', 'Class Add', 1, '[{\"added\": {}}]', 7, 1),
(5, '2024-08-30 00:46:14.382102', '4', 'Class List', 1, '[{\"added\": {}}]', 7, 1),
(6, '2024-08-30 00:47:08.646222', '1', 'Md. Akkas Mia', 1, '[{\"added\": {}}]', 9, 1),
(7, '2024-08-30 00:47:21.911547', '2', 'Md. Akkas Mia', 1, '[{\"added\": {}}]', 9, 1),
(8, '2024-08-30 00:47:34.486553', '3', 'Md. Akkas Mia', 1, '[{\"added\": {}}]', 9, 1),
(9, '2024-08-30 00:47:42.296914', '4', 'Md. Akkas Mia', 1, '[{\"added\": {}}]', 9, 1),
(10, '2024-08-30 06:39:30.285184', '2', 'Md. Mahbub Hasan', 1, '[{\"added\": {}}]', 8, 1),
(11, '2024-08-30 06:50:17.029307', '2', 'Md. Mahbub Hasan', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 8, 1),
(12, '2024-08-30 06:50:24.264762', '1', 'Md. Akkas Mia', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 8, 1),
(13, '2024-08-30 06:51:48.905887', '2', 'Md. Mahbub Hasan', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 8, 1),
(14, '2024-08-30 06:52:45.459808', '3', 'adf', 1, '[{\"added\": {}}]', 8, 1),
(15, '2024-08-30 06:57:03.650842', '2', 'Md. Mahbub Hasan', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 8, 1),
(16, '2024-08-30 07:00:13.098354', '4', 'asdasdasd', 1, '[{\"added\": {}}]', 8, 1),
(17, '2024-08-30 07:12:26.002329', '5', 'Akkas Mondol', 1, '[{\"added\": {}}]', 8, 1),
(18, '2024-08-30 07:27:16.003623', '6', 'asdf asdfasdf', 1, '[{\"added\": {}}]', 8, 1),
(19, '2024-08-30 07:29:25.476267', '6', 'asdf asdfasdf', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 8, 1),
(20, '2024-08-30 07:31:09.948491', '6', 'asdf asdfasdf', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 8, 1),
(21, '2024-08-30 07:31:55.455733', '2', 'Md. Mahbub Hasan', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 8, 1),
(22, '2024-08-30 11:47:38.476046', '1', 'Md. Akkas Mia', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 8, 1),
(23, '2024-08-30 12:23:54.978096', '5', 'Md. Mahbub Hasan', 1, '[{\"added\": {}}]', 9, 1),
(24, '2024-08-30 12:24:01.343739', '6', 'Md. Mahbub Hasan', 1, '[{\"added\": {}}]', 9, 1),
(25, '2024-08-30 15:10:53.570873', '3', 'Class Add', 2, '[{\"changed\": {\"fields\": [\"Menu url\"]}}]', 7, 1),
(26, '2024-08-30 16:02:21.037196', '4', 'Class List', 2, '[{\"changed\": {\"fields\": [\"Menu url\"]}}]', 7, 1),
(27, '2024-08-30 16:20:28.362155', '5', 'Student List', 1, '[{\"added\": {}}]', 7, 1),
(28, '2024-08-30 16:20:40.511758', '7', 'Md. Akkas Mia', 1, '[{\"added\": {}}]', 9, 1),
(29, '2024-09-01 06:45:21.169477', '6', 'Chart Of Accounts Add', 1, '[{\"added\": {}}]', 7, 1),
(30, '2024-09-01 06:46:10.656391', '8', 'Md. Akkas Mia', 1, '[{\"added\": {}}]', 9, 1),
(31, '2024-09-01 06:52:47.004349', '6', 'Chart Of Accounts Add', 2, '[{\"changed\": {\"fields\": [\"Menu url\"]}}]', 7, 1),
(32, '2024-09-01 06:54:28.357056', '7', 'Chart Of Accounts List', 1, '[{\"added\": {}}]', 7, 1),
(33, '2024-09-01 06:54:39.486096', '7', 'Chart Of Accounts List', 2, '[{\"changed\": {\"fields\": [\"Menu order\"]}}]', 7, 1),
(34, '2024-09-01 07:05:43.434769', '9', 'Md. Akkas Mia', 1, '[{\"added\": {}}]', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'accounts_app', 'menulist'),
(9, 'accounts_app', 'useraccesscontrol'),
(8, 'accounts_app', 'userregistration'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'accounts_app', '0001_initial', '2024-08-30 00:37:38.315698'),
(2, 'contenttypes', '0001_initial', '2024-08-30 00:37:38.431905'),
(3, 'auth', '0001_initial', '2024-08-30 00:37:39.540738'),
(4, 'admin', '0001_initial', '2024-08-30 00:37:39.757601'),
(5, 'admin', '0002_logentry_remove_auto_add', '2024-08-30 00:37:39.788848'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2024-08-30 00:37:39.814149'),
(7, 'contenttypes', '0002_remove_content_type_name', '2024-08-30 00:37:39.943776'),
(8, 'auth', '0002_alter_permission_name_max_length', '2024-08-30 00:37:40.189032'),
(9, 'auth', '0003_alter_user_email_max_length', '2024-08-30 00:37:40.244591'),
(10, 'auth', '0004_alter_user_username_opts', '2024-08-30 00:37:40.268085'),
(11, 'auth', '0005_alter_user_last_login_null', '2024-08-30 00:37:40.421580'),
(12, 'auth', '0006_require_contenttypes_0002', '2024-08-30 00:37:40.438499'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2024-08-30 00:37:40.453589'),
(14, 'auth', '0008_alter_user_username_max_length', '2024-08-30 00:37:40.502392'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2024-08-30 00:37:40.552959'),
(16, 'auth', '0010_alter_group_name_max_length', '2024-08-30 00:37:40.594496'),
(17, 'auth', '0011_update_proxy_permissions', '2024-08-30 00:37:40.625301'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2024-08-30 00:37:40.661939'),
(19, 'sessions', '0001_initial', '2024-08-30 00:37:41.006172'),
(20, 'accounts_app', '0002_alter_userregistration_photo', '2024-08-30 07:26:43.250308');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('7tpc1a2mwqg2c9kipork7pa81k0n5rjq', '.eJxdj0tOxDAQRK8yyhqZ-G-zAvY5g9Wx24knH4_izApxdxyRQcCuu6r6qfqjcXDfR3cvuLkUmpeGNk-_tR78hOthhCusQyY-r_uWenJEyOkW0uWA8_uZ_QMYoYz1uqVa9tSjDRRMVIgIMRhNo0ChwQceo7AsIkPlrTJR9LxVgnMPkhov2wr96UjPGRdIc2XDNEEhvqCyr8Oh1ZJLPYhpK7tbYcEa6gK5vB3BB-m_fukSPLzbmPdcze9ly0Oa8VlbJSwV3FFmFdXMGM24NJI5JrgVVeBaW8lk_VW5lVxvQ_P5BThgcDA:1sk3An:FwmN1qaKu9bNq3GMeyYggHcmq2eeVHoef_Q5Xpo1p4c', '2024-09-13 15:04:25.904097');

-- --------------------------------------------------------

--
-- Table structure for table `menu_list`
--

CREATE TABLE `menu_list` (
  `id` bigint(20) NOT NULL,
  `menu_name` varchar(50) NOT NULL,
  `menu_url` varchar(90) NOT NULL,
  `module_name` varchar(50) NOT NULL,
  `module_order` int(11) NOT NULL,
  `menu_order` int(11) NOT NULL,
  `menu_icon` varchar(50) NOT NULL,
  `background_color` varchar(30) NOT NULL,
  `font_color` varchar(30) NOT NULL,
  `is_dashboard` tinyint(1) NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu_list`
--

INSERT INTO `menu_list` (`id`, `menu_name`, `menu_url`, `module_name`, `module_order`, `menu_order`, `menu_icon`, `background_color`, `font_color`, `is_dashboard`, `modified_by`, `created`, `modified`, `status`, `created_by_id`) VALUES
(1, 'Fee Collection Add', '/dashboard/fee-collection-add/', 'Students', 1, 1, '', '', '', 1, NULL, '2024-08-30 00:44:08.458140', '2024-08-30 00:44:08.459139', 1, 1),
(2, 'Fee Collection', '/dashboard/reports/fee-collection/', 'Reports', 2, 0, '', '', '', 0, NULL, '2024-08-30 00:45:00.678789', '2024-08-30 00:45:00.678789', 1, NULL),
(3, 'Class Add', '/settings/class-add/', 'Settings', 3, 1, '', '', '', 0, NULL, '2024-08-30 00:45:38.242025', '2024-08-30 15:10:53.566372', 1, 1),
(4, 'Class List', '/settings/class-list/', 'Settings', 3, 2, '', '', '', 0, NULL, '2024-08-30 00:46:14.380104', '2024-08-30 16:02:21.028172', 1, 1),
(5, 'Student List', '/settings/student-list/', 'Settings', 3, 3, '', '', '', 0, NULL, '2024-08-30 16:20:28.358470', '2024-08-30 16:20:28.358470', 1, 1),
(6, 'Chart Of Accounts Add', '/settings/chart-of-accounts-add/', 'Settings', 3, 5, '', '', '', 0, NULL, '2024-09-01 06:45:21.167474', '2024-09-01 06:52:47.001977', 1, 1),
(7, 'Chart Of Accounts List', '/settings/chart-of-accounts-list/', 'Settings', 3, 5, '', '', '', 0, NULL, '2024-09-01 06:54:28.354057', '2024-09-01 06:54:39.484096', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_control`
--

CREATE TABLE `user_access_control` (
  `id` bigint(20) NOT NULL,
  `view_action` tinyint(1) NOT NULL,
  `insert_action` tinyint(1) NOT NULL,
  `update_action` tinyint(1) NOT NULL,
  `delete_action` tinyint(1) NOT NULL,
  `permission_date` datetime(6) NOT NULL,
  `permitted_by` bigint(20) NOT NULL,
  `insert_date` datetime(6) NOT NULL,
  `last_update` datetime(6) NOT NULL,
  `insert_by` int(11) NOT NULL,
  `update_by` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `menu_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_access_control`
--

INSERT INTO `user_access_control` (`id`, `view_action`, `insert_action`, `update_action`, `delete_action`, `permission_date`, `permitted_by`, `insert_date`, `last_update`, `insert_by`, `update_by`, `status`, `menu_id`, `user_id`) VALUES
(1, 1, 1, 1, 1, '2024-08-30 00:47:08.640225', 0, '2024-08-30 00:47:08.640225', '2024-08-30 00:47:08.640225', 1, 1, 1, 1, 1),
(2, 1, 1, 1, 0, '2024-08-30 00:47:21.908550', 0, '2024-08-30 00:47:21.908550', '2024-08-30 00:47:21.908550', 0, 0, 1, 2, 1),
(3, 1, 1, 1, 0, '2024-08-30 00:47:34.476855', 0, '2024-08-30 00:47:34.476855', '2024-08-30 00:47:34.476855', 0, 0, 1, 3, 1),
(4, 1, 1, 1, 0, '2024-08-30 00:47:42.294952', 0, '2024-08-30 00:47:42.294952', '2024-08-30 00:47:42.294952', 0, 0, 1, 4, 1),
(5, 1, 1, 1, 1, '2024-08-30 12:23:54.976109', 0, '2024-08-30 12:23:54.976109', '2024-08-30 12:23:54.976109', 0, 0, 1, 3, 2),
(6, 1, 1, 1, 1, '2024-08-30 12:24:01.338099', 0, '2024-08-30 12:24:01.338099', '2024-08-30 12:24:01.338099', 0, 0, 1, 4, 2),
(7, 1, 1, 1, 1, '2024-08-30 16:20:40.508766', 0, '2024-08-30 16:20:40.508766', '2024-08-30 16:20:40.508766', 0, 0, 1, 5, 1),
(8, 1, 1, 1, 1, '2024-09-01 06:46:10.653392', 0, '2024-09-01 06:46:10.653392', '2024-09-01 06:46:10.653392', 0, 0, 1, 6, 1),
(9, 1, 1, 1, 1, '2024-09-01 07:05:43.432771', 0, '2024-09-01 07:05:43.432771', '2024-09-01 07:05:43.432771', 0, 0, 1, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_list`
--

CREATE TABLE `user_list` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(65) NOT NULL,
  `last_name` varchar(65) NOT NULL,
  `full_name` varchar(130) NOT NULL,
  `email` varchar(130) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `mobile2` varchar(50) NOT NULL,
  `designation` varchar(60) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `username` varchar(65) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_list`
--

INSERT INTO `user_list` (`id`, `first_name`, `last_name`, `full_name`, `email`, `mobile`, `mobile2`, `designation`, `photo`, `username`, `password`, `created`, `status`) VALUES
(1, 'Md. Akkas', 'Mia', 'Md. Akkas Mia', 'akkas.cse69@gmail.com', '01902353773', '', '', 'user_progile/79649143_1296172887235852_2439472837795250176_n.jpg', 'akkas.cse69@gmail.com', '12345678', '2024-08-30 00:42:41.028047', 1),
(2, 'Md. Mahbub', 'Hasan', 'Md. Mahbub Hasan', 'mahbub@gmail.com', '01902353784', '', '', 'user_progile/61080745_1130388140480995_7507175999558123520_n.jpg', 'mahbub@gmail.com', '12345678', '2024-08-30 06:39:30.275192', 1),
(3, 'asdf', 'asdf', 'adf', 'admin@gmail.com', '01902353773', '', '', 'images/user_progile/97854464_1425675890952217_4823629988626432000_n.jpg', 'admin@gmail.com', '123456', '2024-08-30 06:52:45.457809', 1),
(4, 'asdasd', 'asdasd', 'asdasdasd', 'teams.akmam@gmail.com', '01902353773', '', 'sad aSDASD', 'images/user_progile/diu-university-logo-0C53AF6B5B-seeklogo.com_1.png', 'ASDFSDF', 'SADFSDFSDF', '2024-08-30 07:00:13.096359', 1),
(5, 'Akkas', 'Mondol', 'Akkas Mondol', 'akkas@gmail.com', '345345834958', '', '', 'images/user_progile/diu-logo.png', 'akkas@gmail.com', '12345678', '2024-08-30 07:12:25.999328', 1),
(6, 'dsadfasdf sadf', 'asdfasdf asdf', 'asdf asdfasdf', 'asdf@sdf.com', '4354545', '', '', 'user_progile/diu-logo.png', 'sdfdsf', 'sdfsdfsdfdsf', '2024-08-30 07:27:16.000623', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `menu_list`
--
ALTER TABLE `menu_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_list_created_by_id_37c8f718_fk_user_list_id` (`created_by_id`);

--
-- Indexes for table `user_access_control`
--
ALTER TABLE `user_access_control`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_access_control_menu_id_63ecee08_fk_menu_list_id` (`menu_id`),
  ADD KEY `user_access_control_user_id_c6cf3be7_fk_user_list_id` (`user_id`);

--
-- Indexes for table `user_list`
--
ALTER TABLE `user_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `menu_list`
--
ALTER TABLE `menu_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_access_control`
--
ALTER TABLE `user_access_control`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_list`
--
ALTER TABLE `user_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `menu_list`
--
ALTER TABLE `menu_list`
  ADD CONSTRAINT `menu_list_created_by_id_37c8f718_fk_user_list_id` FOREIGN KEY (`created_by_id`) REFERENCES `user_list` (`id`);

--
-- Constraints for table `user_access_control`
--
ALTER TABLE `user_access_control`
  ADD CONSTRAINT `user_access_control_menu_id_63ecee08_fk_menu_list_id` FOREIGN KEY (`menu_id`) REFERENCES `menu_list` (`id`),
  ADD CONSTRAINT `user_access_control_user_id_c6cf3be7_fk_user_list_id` FOREIGN KEY (`user_id`) REFERENCES `user_list` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
