-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2024 at 07:30 PM
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
(36, 'Can view Access Control', 9, 'view_useraccesscontrol'),
(37, 'Can add student list', 10, 'add_studentlist'),
(38, 'Can change student list', 10, 'change_studentlist'),
(39, 'Can delete student list', 10, 'delete_studentlist'),
(40, 'Can view student list', 10, 'view_studentlist'),
(41, 'Can add Class List', 11, 'add_classlist'),
(42, 'Can change Class List', 11, 'change_classlist'),
(43, 'Can delete Class List', 11, 'delete_classlist'),
(44, 'Can view Class List', 11, 'view_classlist'),
(45, 'Can add Chart of Account', 12, 'add_chartofaccounts'),
(46, 'Can change Chart of Account', 12, 'change_chartofaccounts'),
(47, 'Can delete Chart of Account', 12, 'delete_chartofaccounts'),
(48, 'Can view Chart of Account', 12, 'view_chartofaccounts'),
(49, 'Can add Financial Head', 13, 'add_financialhead'),
(50, 'Can change Financial Head', 13, 'change_financialhead'),
(51, 'Can delete Financial Head', 13, 'delete_financialhead'),
(52, 'Can view Financial Head', 13, 'view_financialhead'),
(53, 'Can add class wise fee setup', 14, 'add_classwisefeesetup'),
(54, 'Can change class wise fee setup', 14, 'change_classwisefeesetup'),
(55, 'Can delete class wise fee setup', 14, 'delete_classwisefeesetup'),
(56, 'Can view class wise fee setup', 14, 'view_classwisefeesetup');

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
(1, 'pbkdf2_sha256$260000$XLpsoy8Lvz0I6kvC7sImXa$roQziQW3w783lbrsZHj4Vaea10vKTB33z6NBkSa03L0=', '2024-08-30 07:11:21.359492', 1, 'accounts', '', '', '', 1, 1, '2024-08-30 00:38:19.039215'),
(2, 'pbkdf2_sha256$260000$qLbile5DZV7ywI0YZsQbKc$Ae+jUBLt0ywsgP483Z/mjVeHkLNuG1L5zuL85MYa9iU=', '2024-10-03 15:18:41.249633', 1, 'admin2', '', '', '', 1, 1, '2024-09-29 17:38:55.876151');

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
-- Table structure for table `chart_of_accounts`
--

CREATE TABLE `chart_of_accounts` (
  `id` bigint(20) NOT NULL,
  `text_id` varchar(32) NOT NULL,
  `chart_name` varchar(150) NOT NULL,
  `description` longtext DEFAULT NULL,
  `rank` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) DEFAULT NULL,
  `financial_head_id` bigint(20) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chart_of_accounts`
--

INSERT INTO `chart_of_accounts` (`id`, `text_id`, `chart_name`, `description`, `rank`, `created`, `updated`, `financial_head_id`, `status`) VALUES
(2, 'admissionfee', 'Admission Fee', 'Admission Fee', 2, '2024-10-16 13:53:06.077154', NULL, 1, 1),
(3, 'examinationfee', 'Examination Fee', 'Examination Fee', 3, '2024-10-16 13:53:19.788596', NULL, 1, 1),
(4, 'labfee', 'Lab Fee', 'Lab Fee', 4, '2024-10-16 13:53:32.971887', NULL, 1, 1),
(5, 'libraryfee', 'Library Fee', 'Library Fee', 5, '2024-10-16 13:53:49.252888', NULL, 1, 1),
(6, 'sportsfee', 'Sports Fee', 'Sports Fee', 6, '2024-10-16 13:54:11.427167', NULL, 1, 1),
(7, 'transportfee', 'Transport Fee', 'Transport Fee', 7, '2024-10-16 13:54:26.393425', NULL, 1, 1),
(8, 'idcardfee', 'ID Card Fee', 'ID Card Fee', 8, '2024-10-16 13:57:10.483180', NULL, 1, 1),
(9, 'latepaymentfee', 'Late Payment Fee', 'Late Payment Fee', 9, '2024-10-16 13:57:26.461185', NULL, 1, 1),
(10, 'sessionfee', 'Session Fee ', 'Typically charged annually to cover the expenses for the', 11, '2024-10-16 13:59:45.067199', NULL, 1, 1),
(11, 'scoutfee', 'Scout Fee', 'A fee collected for students participating in scouting activities, covering costs such as uniforms, materials, trips, and events organized by the scouts.', 15, '2024-10-16 14:00:08.793199', NULL, 1, 1),
(12, 'tuitionfeejanuary', 'Tuition Fee January', 'Tuition Fee January', 16, '2024-10-16 14:05:57.456173', NULL, 1, 1),
(13, 'tuitionfeefebruary', 'Tuition Fee February', 'Tuition Fee February', 17, '2024-10-16 14:06:12.633372', NULL, 1, 1),
(14, 'tuitionfeemarch', 'Tuition Fee March', 'Tuition Fee March', 18, '2024-10-16 14:06:30.478165', NULL, 1, 1),
(15, 'tuitionfeeapril', 'Tuition Fee April', 'Tuition Fee April', 19, '2024-10-16 14:06:56.807162', NULL, 1, 1),
(16, 'tuitionfeemay', 'Tuition Fee May', 'Tuition Fee May', 20, '2024-10-16 14:11:30.066138', NULL, 1, 1),
(17, 'tuitionfeejune', 'Tuition Fee June', 'Tuition Fee June', 21, '2024-10-16 14:11:44.600136', NULL, 1, 1),
(18, 'tuitionfeejuly', 'Tuition Fee July', 'Tuition Fee July', 22, '2024-10-16 14:12:02.759945', NULL, 1, 1),
(19, 'tuitionfeeaugust', 'Tuition Fee August', 'Tuition Fee August', 23, '2024-10-16 14:12:13.845130', NULL, 1, 1),
(20, 'tuitionfeeseptember', 'Tuition Fee September', 'Tuition Fee September', 24, '2024-10-16 14:12:27.686840', NULL, 1, 1),
(21, 'tuitionfeeoctober', 'Tuition Fee October', 'Tuition Fee October', 25, '2024-10-16 14:12:40.924564', NULL, 1, 1),
(22, 'tuitionfeenovember', 'Tuition Fee November', 'Tuition Fee November', 26, '2024-10-16 14:13:05.918127', NULL, 1, 1),
(23, 'tuitionfeedecember', 'Tuition Fee December', 'Tuition Fee December', 27, '2024-10-16 14:13:30.506935', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `class_list`
--

CREATE TABLE `class_list` (
  `id` bigint(20) NOT NULL,
  `text_id` varchar(32) NOT NULL,
  `class_name` varchar(50) NOT NULL,
  `short_name` varchar(10) NOT NULL,
  `rank` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class_list`
--

INSERT INTO `class_list` (`id`, `text_id`, `class_name`, `short_name`, `rank`, `status`, `created`) VALUES
(1, 'classone', 'Class One', '1', 1, 1, '2024-10-03 10:03:25.008282'),
(2, 'classtwo', 'Class Two', '2', 2, 1, '2024-10-03 10:03:40.016254'),
(3, 'three', 'Three', '3', 3, 1, '2024-10-03 10:03:59.046250'),
(4, 'four', 'Four', '4', 4, 1, '2024-10-03 10:04:08.946239'),
(5, 'five', 'Five', '5', 5, 1, '2024-10-16 14:19:49.676829'),
(6, 'six', 'Six', '6', 6, 1, '2024-10-16 14:20:03.464047'),
(7, 'seven', 'Seven', '7', 7, 1, '2024-10-16 14:20:21.764232'),
(8, 'eight', 'Eight', '8', 8, 1, '2024-10-16 14:20:48.346084'),
(9, 'nine', 'Nine', '9', 9, 1, '2024-10-16 14:21:11.715079'),
(10, 'ten', 'Ten', '10', 10, 1, '2024-10-16 14:21:23.616099');

-- --------------------------------------------------------

--
-- Table structure for table `class_wise_fee_setup`
--

CREATE TABLE `class_wise_fee_setup` (
  `id` bigint(20) NOT NULL,
  `class_name_id` bigint(20) NOT NULL,
  `year` varchar(32) NOT NULL,
  `fees_head_id` bigint(20) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class_wise_fee_setup`
--

INSERT INTO `class_wise_fee_setup` (`id`, `class_name_id`, `year`, `fees_head_id`, `amount`, `status`, `created`, `updated`) VALUES
(1, 1, '2024', 2, 1000, 1, '2024-10-16 14:27:52.353031', NULL),
(2, 1, '2024', 3, 100, 1, '2024-10-16 14:27:52.356026', NULL),
(3, 1, '2024', 4, 50, 1, '2024-10-16 14:27:52.359024', NULL),
(4, 1, '2024', 5, 100, 1, '2024-10-16 14:27:52.367020', NULL),
(5, 1, '2024', 6, 300, 1, '2024-10-16 14:27:52.369021', NULL),
(6, 1, '2024', 7, 100, 1, '2024-10-16 14:27:52.372016', NULL),
(7, 1, '2024', 8, 100, 1, '2024-10-16 14:27:52.375018', NULL),
(8, 1, '2024', 9, 10, 1, '2024-10-16 14:27:52.379025', NULL),
(9, 1, '2024', 10, 500, 1, '2024-10-16 14:27:52.382011', NULL),
(10, 1, '2024', 11, 500, 1, '2024-10-16 14:27:52.384030', NULL),
(11, 1, '2024', 12, 300, 1, '2024-10-16 14:27:52.388009', NULL),
(12, 1, '2024', 13, 300, 1, '2024-10-16 14:27:52.391006', NULL),
(13, 1, '2024', 14, 300, 1, '2024-10-16 14:27:52.394004', NULL),
(14, 1, '2024', 15, 300, 1, '2024-10-16 14:27:52.398001', NULL),
(15, 1, '2024', 16, 300, 1, '2024-10-16 14:27:52.400998', NULL),
(16, 1, '2024', 17, 300, 1, '2024-10-16 14:27:52.403017', NULL),
(17, 1, '2024', 18, 300, 1, '2024-10-16 14:27:52.405018', NULL),
(18, 1, '2024', 19, 300, 1, '2024-10-16 14:27:52.408015', NULL),
(19, 1, '2024', 20, 300, 1, '2024-10-16 14:27:52.409993', NULL),
(20, 1, '2024', 21, 300, 1, '2024-10-16 14:27:52.413993', NULL),
(21, 1, '2024', 22, 300, 1, '2024-10-16 14:27:52.415993', NULL),
(22, 1, '2024', 23, 300, 1, '2024-10-16 14:27:52.417992', NULL),
(23, 2, '2024', 2, 1200, 1, '2024-10-16 14:30:51.907269', NULL),
(24, 2, '2024', 3, 150, 1, '2024-10-16 14:30:51.912255', NULL),
(25, 2, '2024', 4, 149, 1, '2024-10-16 14:30:51.920270', NULL),
(26, 2, '2024', 5, 50, 1, '2024-10-16 14:30:51.923271', NULL),
(27, 2, '2024', 6, 150, 1, '2024-10-16 14:30:51.928285', NULL),
(28, 2, '2024', 7, 40, 1, '2024-10-16 14:30:51.932263', NULL),
(29, 2, '2024', 8, 120, 1, '2024-10-16 14:30:51.934262', NULL),
(30, 2, '2024', 9, 20, 1, '2024-10-16 14:30:51.936263', NULL),
(31, 2, '2024', 10, 500, 1, '2024-10-16 14:30:51.938259', NULL),
(32, 2, '2024', 11, 500, 1, '2024-10-16 14:30:51.941259', NULL),
(33, 2, '2024', 12, 150, 1, '2024-10-16 14:30:51.944260', NULL),
(34, 2, '2024', 13, 150, 1, '2024-10-16 14:30:51.947259', NULL),
(35, 2, '2024', 14, 150, 1, '2024-10-16 14:30:51.950575', NULL),
(36, 2, '2024', 15, 150, 1, '2024-10-16 14:30:51.952576', NULL),
(37, 2, '2024', 16, 150, 1, '2024-10-16 14:30:51.954589', NULL),
(38, 2, '2024', 17, 150, 1, '2024-10-16 14:30:52.754873', NULL),
(39, 2, '2024', 18, 150, 1, '2024-10-16 14:30:52.757874', NULL),
(40, 2, '2024', 19, 150, 1, '2024-10-16 14:30:52.760871', NULL),
(41, 2, '2024', 20, 150, 1, '2024-10-16 14:30:52.764869', NULL),
(42, 2, '2024', 21, 150, 1, '2024-10-16 14:30:52.766867', NULL),
(43, 2, '2024', 22, 150, 1, '2024-10-16 14:30:52.769867', NULL),
(44, 2, '2024', 23, 150, 1, '2024-10-16 14:30:52.772865', NULL),
(45, 3, '2024', 2, 1500, 1, '2024-10-16 14:33:13.064004', NULL),
(46, 3, '2024', 3, 200, 1, '2024-10-16 14:33:13.069999', NULL),
(47, 3, '2024', 4, 10, 1, '2024-10-16 14:33:13.072997', NULL),
(48, 3, '2024', 5, 100, 1, '2024-10-16 14:33:13.075995', NULL),
(49, 3, '2024', 6, 100, 1, '2024-10-16 14:33:13.078016', NULL),
(50, 3, '2024', 7, 100, 1, '2024-10-16 14:33:13.082993', NULL),
(51, 3, '2024', 8, 200, 1, '2024-10-16 14:33:13.088014', NULL),
(52, 3, '2024', 9, 10, 1, '2024-10-16 14:33:13.091987', NULL),
(53, 3, '2024', 10, 300, 1, '2024-10-16 14:33:13.095988', NULL),
(54, 3, '2024', 11, 300, 1, '2024-10-16 14:33:13.100983', NULL),
(55, 3, '2024', 12, 250, 1, '2024-10-16 14:33:13.104980', NULL),
(56, 3, '2024', 13, 250, 1, '2024-10-16 14:33:13.106999', NULL),
(57, 3, '2024', 14, 250, 1, '2024-10-16 14:33:13.108997', NULL),
(58, 3, '2024', 15, 250, 1, '2024-10-16 14:33:13.111977', NULL),
(59, 3, '2024', 16, 250, 1, '2024-10-16 14:33:13.113975', NULL),
(60, 3, '2024', 17, 250, 1, '2024-10-16 14:33:13.117973', NULL),
(61, 3, '2024', 18, 250, 1, '2024-10-16 14:33:13.119969', NULL),
(62, 3, '2024', 19, 250, 1, '2024-10-16 14:33:13.121969', NULL),
(63, 3, '2024', 20, 250, 1, '2024-10-16 14:33:13.123991', NULL),
(64, 3, '2024', 21, 250, 1, '2024-10-16 14:33:13.127968', NULL),
(65, 3, '2024', 22, 250, 1, '2024-10-16 14:33:13.129966', NULL),
(66, 3, '2024', 23, 250, 1, '2024-10-16 14:33:13.134963', NULL),
(67, 4, '2024', 2, 1500, 1, '2024-10-16 14:34:39.790382', NULL),
(68, 4, '2024', 3, 300, 1, '2024-10-16 14:34:39.794343', NULL),
(69, 4, '2024', 4, 10, 1, '2024-10-16 14:34:39.799357', NULL),
(70, 4, '2024', 5, 10, 1, '2024-10-16 14:34:39.802340', NULL),
(71, 4, '2024', 6, 10, 1, '2024-10-16 14:34:39.804336', NULL),
(72, 4, '2024', 7, 100, 1, '2024-10-16 14:34:39.807227', NULL),
(73, 4, '2024', 8, 200, 1, '2024-10-16 14:34:39.809228', NULL),
(74, 4, '2024', 9, 10, 1, '2024-10-16 14:34:39.811225', NULL),
(75, 4, '2024', 10, 200, 1, '2024-10-16 14:34:39.816222', NULL),
(76, 4, '2024', 11, 400, 1, '2024-10-16 14:34:39.819221', NULL),
(77, 4, '2024', 12, 250, 1, '2024-10-16 14:34:39.825215', NULL),
(78, 4, '2024', 13, 250, 1, '2024-10-16 14:34:39.829213', NULL),
(79, 4, '2024', 14, 250, 1, '2024-10-16 14:34:39.832212', NULL),
(80, 4, '2024', 15, 250, 1, '2024-10-16 14:34:39.834210', NULL),
(81, 4, '2024', 16, 250, 1, '2024-10-16 14:34:39.836212', NULL),
(82, 4, '2024', 17, 250, 1, '2024-10-16 14:34:39.838210', NULL),
(83, 4, '2024', 18, 250, 1, '2024-10-16 14:34:39.841208', NULL),
(84, 4, '2024', 19, 250, 1, '2024-10-16 14:34:39.843205', NULL),
(85, 4, '2024', 20, 250, 1, '2024-10-16 14:34:39.845207', NULL),
(86, 4, '2024', 21, 250, 1, '2024-10-16 14:34:39.848204', NULL),
(87, 4, '2024', 22, 250, 1, '2024-10-16 14:34:39.850202', NULL),
(88, 4, '2024', 23, 250, 1, '2024-10-16 14:34:39.853204', NULL);

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
(34, '2024-09-01 07:05:43.434769', '9', 'Md. Akkas Mia', 1, '[{\"added\": {}}]', 9, 1),
(35, '2024-09-29 17:41:37.768608', '8', 'Students Fees Setup', 1, '[{\"added\": {}}]', 7, 2),
(36, '2024-09-29 17:41:58.409922', '10', 'Md. Akkas Mia', 1, '[{\"added\": {}}]', 9, 2),
(37, '2024-10-03 15:24:15.418621', '9', 'User Access Control', 1, '[{\"added\": {}}]', 7, 2),
(38, '2024-10-03 15:25:12.500555', '10', 'Access Control Add', 1, '[{\"added\": {}}]', 7, 2),
(39, '2024-10-03 15:25:28.586637', '11', 'Md. Akkas Mia', 1, '[{\"added\": {}}]', 9, 2),
(40, '2024-10-03 15:25:40.017787', '12', 'Md. Akkas Mia', 1, '[{\"added\": {}}]', 9, 2),
(41, '2024-10-03 15:26:37.315480', '9', 'Access Control List', 2, '[{\"changed\": {\"fields\": [\"Menu name\", \"Menu order\"]}}]', 7, 2),
(42, '2024-10-03 15:26:44.608475', '10', 'Access Control Add', 2, '[{\"changed\": {\"fields\": [\"Menu order\"]}}]', 7, 2),
(43, '2024-10-03 15:32:32.252049', '11', 'User Add', 1, '[{\"added\": {}}]', 7, 2),
(44, '2024-10-03 15:32:46.014918', '13', 'Md. Akkas Mia', 1, '[{\"added\": {}}]', 9, 2),
(45, '2024-10-16 14:44:35.785490', '2', 'Fee Collection', 2, '[{\"changed\": {\"fields\": [\"Menu url\", \"Module name\"]}}]', 7, 2),
(46, '2024-10-16 14:45:29.725968', '1', 'Md. Akkas Mia', 3, '', 9, 2),
(47, '2024-10-16 14:45:44.695659', '2', 'Md. Akkas Mia', 2, '[]', 9, 2),
(48, '2024-10-16 15:38:49.129445', '2', 'Fee Collection', 2, '[{\"changed\": {\"fields\": [\"Menu url\"]}}]', 7, 2);

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
(12, 'accounts_app', 'chartofaccounts'),
(11, 'accounts_app', 'classlist'),
(14, 'accounts_app', 'classwisefeesetup'),
(13, 'accounts_app', 'financialhead'),
(7, 'accounts_app', 'menulist'),
(10, 'accounts_app', 'studentlist'),
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
(20, 'accounts_app', '0002_alter_userregistration_photo', '2024-08-30 07:26:43.250308'),
(21, 'accounts_app', '0003_classlist_studentlist', '2024-09-28 17:32:13.637167'),
(22, 'accounts_app', '0004_auto_20240929_0032', '2024-09-28 18:33:02.606281'),
(23, 'accounts_app', '0005_chartofaccounts_financialhead', '2024-09-29 16:05:17.025541'),
(24, 'accounts_app', '0006_auto_20240929_2207', '2024-09-29 16:07:50.741736'),
(25, 'accounts_app', '0007_auto_20240929_2210', '2024-09-29 16:10:48.865430'),
(26, 'accounts_app', '0008_classwisefeesetup', '2024-10-02 18:00:00.849839');

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
('4tlkmyhln7pyk6dz64b0sn8dtmds2wvb', '.eJxdi00OwiAYRK_SfOsG5R-60gP0DIS0iNhSGqgr492lqW7czbw384JncdmEETrcHtlFG2bowE6TLWgoTuiL3xkaUoQWbiGXzSw2ujrqR9Rc9yF83_-86YP9ufWetlTlUXLyYXYnqQXTmFGDiRZYEqUkoVxxYgijmlVApdSc8DOWwizosXp4fwB7IDhg:1sua5z:vRvbghi8g2FSzQaj3ciouZgpTMOF7Zp76PZBMBUPkbE', '2024-10-12 16:14:59.194292'),
('7tpc1a2mwqg2c9kipork7pa81k0n5rjq', '.eJxdj0tOxDAQRK8yyhqZ-G-zAvY5g9Wx24knH4_izApxdxyRQcCuu6r6qfqjcXDfR3cvuLkUmpeGNk-_tR78hOthhCusQyY-r_uWenJEyOkW0uWA8_uZ_QMYoYz1uqVa9tSjDRRMVIgIMRhNo0ChwQceo7AsIkPlrTJR9LxVgnMPkhov2wr96UjPGRdIc2XDNEEhvqCyr8Oh1ZJLPYhpK7tbYcEa6gK5vB3BB-m_fukSPLzbmPdcze9ly0Oa8VlbJSwV3FFmFdXMGM24NJI5JrgVVeBaW8lk_VW5lVxvQ_P5BThgcDA:1sldqE:I_GOfiUFw_KtXfyk5GIlzDwTdespfr9ApasH-SEAj1M', '2024-09-18 00:25:46.440750'),
('is1h19td5hv71tew50am37nrme5zzp2n', '.eJxdjs1uwyAQhF8l4hxRs_ws5NT27mdAi01sxz9ExjlVffdixa2U3nbnmxnNF3vkuPqhZRdxft5xpmFiF0bjSJk3ORr33u0ab9LMzuw6rHnzC82xmOqWnz52IzvS__VTPdAvu_dpSwU-nzV1wxTf0BnlhJJegDMCwVoEqa0GD0o6VQSJ6DToSqDxC7_du9Ln6bH1_m87g1ctUDPGZQftjZYulenLtg6B7xZ-0Mzr1Mbp8_C-FPSU-5J2AkVQjaiwxYAAGLVGbdEJKiUgyZS5AcwVRVUBkRZaKhPM1QpolLXs-wcZj24V:1swNbF:l1aAnIn0qGMzto7HMzWzrhSZVheqJHNcw9Euup8bUjo', '2024-10-17 15:18:41.267629'),
('rlh2xxl6bhpwz0rwpftr8sxst3ig7029', '.eJxdjs1uwyAQhF8l4hxRs_ws5NT27mdAi01sxz9ExjlVffdixa2U3nbnmxnNF3vkuPqhZRdxft5xpmFiF0bjSJk3ORr33u0ab9LMzuw6rHnzC82xmOqWnz52IzvS__VTPdAvu_dpSwU-nzV1wxTf0BnlhJJegDMCwVoEqa0GD0o6VQSJ6DToSqDxC7_du9Ln6bH1_m87g1ctUDPGZQftjZYulenLtg6B7xZ-0Mzr1Mbp8_C-FPSU-5J2AkVQjaiwxYAAGLVGbdEJKiUgyZS5AcwVRVUBkRZaKhPM1QpolLXs-wcZj24V:1suxts:BA2UAyX1ZTg3cOMnUxKw9xWfkGPV11Uagox4kRNQNCc', '2024-10-13 17:40:04.012169'),
('ump71q7giffv1vnznhqs70184myavgcg', '.eJxdi00OwiAYRK_SfOsG5R-60gP0DIS0iNhSGqgr492lqW7czbw384JncdmEETrcHtlFG2bowE6TLWgoTuiL3xkaUoQWbiGXzSw2ujrqR9Rc9yF83_-86YP9ufWetlTlUXLyYXYnqQXTmFGDiRZYEqUkoVxxYgijmlVApdSc8DOWwizosXp4fwB7IDhg:1svzrn:qHFN_zhwNdlUtEh0g5HOdIhft-ddl7a8aBa5apmderE', '2024-10-16 13:58:11.514320'),
('w3veu8pt58kgry04q0bpra54vgmy9a56', '.eJxdi00OwiAYRK_SfOsG5R-60gP0DIS0iNhSGqgr492lqW7czbw384JncdmEETrcHtlFG2bowE6TLWgoTuiL3xkaUoQWbiGXzSw2ujrqR9Rc9yF83_-86YP9ufWetlTlUXLyYXYnqQXTmFGDiRZYEqUkoVxxYgijmlVApdSc8DOWwizosXp4fwB7IDhg:1stS1z:3Ih3D-SndKRYkT3rXlWPhhasF6cip4JUB-gjT7Asbu8', '2024-10-09 13:26:11.308355');

-- --------------------------------------------------------

--
-- Table structure for table `financial_head`
--

CREATE TABLE `financial_head` (
  `id` bigint(20) NOT NULL,
  `text_id` varchar(32) NOT NULL,
  `head_name` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `rank` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `financial_head`
--

INSERT INTO `financial_head` (`id`, `text_id`, `head_name`, `description`, `rank`, `created`, `updated`, `status`) VALUES
(1, 'income', 'Income', 'This is income head details.', 1, '2024-09-29 22:06:50.000000', NULL, 1),
(2, 'expense', 'Expense', 'This is Expense details', 2, '2024-09-29 22:06:56.000000', NULL, 1),
(3, 'liability', 'Liability', 'This is Liability details', 3, '2024-09-29 22:06:56.000000', NULL, 1);

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
(2, 'Fee Collection', '/students/fee-collection/', 'Students', 2, 0, '', '', '', 0, NULL, '2024-08-30 00:45:00.678789', '2024-10-16 15:38:49.077023', 1, NULL),
(3, 'Class Add', '/settings/class-add/', 'Settings', 3, 1, '', '', '', 0, NULL, '2024-08-30 00:45:38.242025', '2024-08-30 15:10:53.566372', 1, 1),
(4, 'Class List', '/settings/class-list/', 'Settings', 3, 2, '', '', '', 0, NULL, '2024-08-30 00:46:14.380104', '2024-08-30 16:02:21.028172', 1, 1),
(5, 'Student List', '/settings/student-list/', 'Settings', 3, 3, '', '', '', 0, NULL, '2024-08-30 16:20:28.358470', '2024-08-30 16:20:28.358470', 1, 1),
(6, 'Chart Of Accounts Add', '/settings/chart-of-accounts-add/', 'Settings', 3, 5, '', '', '', 0, NULL, '2024-09-01 06:45:21.167474', '2024-09-01 06:52:47.001977', 1, 1),
(7, 'Chart Of Accounts List', '/settings/chart-of-accounts-list/', 'Settings', 3, 5, '', '', '', 0, NULL, '2024-09-01 06:54:28.354057', '2024-09-01 06:54:39.484096', 1, 1),
(8, 'Students Fees Setup', '/settings/students-fees-setup/', 'Settings', 5, 7, '', '', '', 0, NULL, '2024-09-29 17:41:37.765611', '2024-09-29 17:41:37.765611', 1, 1),
(9, 'Access Control List', '/settings/access-control-list/', 'Settings', 4, 10, '', '', '', 0, NULL, '2024-10-03 15:24:15.415623', '2024-10-03 15:26:37.313464', 1, NULL),
(10, 'Access Control Add', '/settings/access-control-add/', 'Settings', 4, 9, '', '', '', 0, NULL, '2024-10-03 15:25:12.497569', '2024-10-03 15:26:44.605481', 1, NULL),
(11, 'User Add', '/users/user-add/', 'Users', 5, 1, '', '', '', 0, NULL, '2024-10-03 15:32:32.249049', '2024-10-03 15:32:32.249049', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_list`
--

CREATE TABLE `student_list` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `roll` varchar(50) NOT NULL,
  `reg_no` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `father_name` varchar(100) NOT NULL,
  `mother_name` varchar(100) NOT NULL,
  `guardian_name` varchar(100) NOT NULL,
  `class_name_id` bigint(20) NOT NULL,
  `created` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_list`
--

INSERT INTO `student_list` (`id`, `first_name`, `last_name`, `roll`, `reg_no`, `date_of_birth`, `email`, `phone_number`, `address`, `father_name`, `mother_name`, `guardian_name`, `class_name_id`, `created`, `status`) VALUES
(1, 'Xandra', 'Zimmerman', '01', '62', '2024-10-10', 'datuvi@mailinator.com', '0197779-9574', 'Aliqua Eos ipsum v', 'Ulysses Pruitt', 'Carson Stewart', 'Autumn Garrett', 1, '2024-10-03 18:59:40.582582', 1),
(2, 'Brielle', 'Middleton', '81', '82', '2018-10-04', 'zomyxora@mailinator.com', '01811-9376', 'Esse aut dolorem re', 'Ori Bishop', 'Sharon Alford', 'Hadassah Hudson', 3, '2024-09-28 18:38:23.928949', 1),
(3, 'Logan', 'Powers', '83', '48', '1988-09-18', 'neribiw@mailinator.com', '01949-1355', 'Excepteur voluptate ', 'Brennan Flowers', 'Rhiannon Britt', 'Cairo Hanson', 4, '2024-09-28 18:38:34.380835', 1),
(4, 'Ross', 'Pope', '68', '76', '2003-07-21', 'tytuza@mailinator.com', '+1 (267) 443-54', 'Numquam quia fugiat', 'Hamish Skinner', 'Daryl Thomas', 'Jacob Schneider', 2, '2024-10-02 18:15:58.950802', 1),
(5, 'Coby', 'Chen', '94', '99', '1986-07-15', 'rekogenijo@mailinator.com', '0214667-2594', 'Nulla consequatur a', 'Leslie Paul', 'Bree Casey', 'Macaulay Villarreal', 1, '2024-10-02 18:16:19.401108', 1);

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
(2, 1, 1, 1, 0, '2024-08-30 00:47:21.908550', 0, '2024-08-30 00:47:21.908550', '2024-10-16 14:45:44.693037', 0, 0, 1, 2, 1),
(3, 1, 1, 1, 0, '2024-08-30 00:47:34.476855', 0, '2024-08-30 00:47:34.476855', '2024-08-30 00:47:34.476855', 0, 0, 1, 3, 1),
(4, 1, 1, 1, 0, '2024-08-30 00:47:42.294952', 0, '2024-08-30 00:47:42.294952', '2024-08-30 00:47:42.294952', 0, 0, 1, 4, 1),
(5, 1, 1, 1, 1, '2024-08-30 12:23:54.976109', 0, '2024-08-30 12:23:54.976109', '2024-08-30 12:23:54.976109', 0, 0, 1, 3, 2),
(6, 1, 1, 1, 1, '2024-08-30 12:24:01.338099', 0, '2024-08-30 12:24:01.338099', '2024-08-30 12:24:01.338099', 0, 0, 1, 4, 2),
(7, 1, 1, 1, 1, '2024-08-30 16:20:40.508766', 0, '2024-08-30 16:20:40.508766', '2024-08-30 16:20:40.508766', 0, 0, 1, 5, 1),
(8, 1, 1, 1, 1, '2024-09-01 06:46:10.653392', 0, '2024-09-01 06:46:10.653392', '2024-09-01 06:46:10.653392', 0, 0, 1, 6, 1),
(9, 1, 1, 1, 1, '2024-09-01 07:05:43.432771', 0, '2024-09-01 07:05:43.432771', '2024-09-01 07:05:43.432771', 0, 0, 1, 7, 1),
(10, 1, 1, 1, 1, '2024-09-29 17:41:58.406618', 0, '2024-09-29 17:41:58.407618', '2024-09-29 17:41:58.407618', 0, 0, 1, 8, 1),
(11, 1, 1, 1, 1, '2024-10-03 15:25:28.584565', 0, '2024-10-03 15:25:28.584565', '2024-10-03 15:25:28.584565', 0, 0, 1, 9, 1),
(12, 1, 1, 1, 1, '2024-10-03 15:25:40.015551', 0, '2024-10-03 15:25:40.016551', '2024-10-03 15:25:40.016551', 0, 0, 1, 10, 1),
(13, 1, 1, 1, 1, '2024-10-03 15:32:46.014061', 0, '2024-10-03 15:32:46.014061', '2024-10-03 15:32:46.014061', 0, 0, 1, 11, 1);

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
(1, 'Md. Akkas', 'Mia', 'Md. Akkas Mia', 'akkas.cse69@gmail.com', '01902353773', '', 'Employee', 'user_progile/79649143_1296172887235852_2439472837795250176_n.jpg', 'akkas.cse69@gmail.com', '12345678', '2024-08-30 00:42:41.028047', 1),
(2, 'Md. Mahbub', 'Hasan', 'Md. Mahbub Hasan', 'mahbub@gmail.com', '01902353784', '', 'Manager', 'user_progile/61080745_1130388140480995_7507175999558123520_n.jpg', 'mahbub@gmail.com', '12345678', '2024-08-30 06:39:30.275192', 1),
(6, 'dsadfasdf sadf', 'asdfasdf asdf', 'dsadfasdf sadf asdfasdf asdf', 'asdf@sdf.com', '4354545', '', 'Employee', 'user_progile/diu-logo.png', 'asdf@sdf.com', 'sdfsdfsdfdsf', '2024-08-30 07:27:16.000623', 1),
(7, 'Kamrul Hasan', 'Rijon', 'Kamrul Hasan Rijon', 'khrijon@gmail.com', '01902353781', '', 'Employee', 'user_progile/DALLE_2024-10-03_21.03.19_-_A_modern_graphic_design_image_similar_to_a_hir_UVOGoqD.webp', 'khrijon@gmail.com', 'Pa$$w0rd!', '2024-10-03 17:25:42.313346', 1);

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
-- Indexes for table `chart_of_accounts`
--
ALTER TABLE `chart_of_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `text_id` (`text_id`),
  ADD UNIQUE KEY `chart_of_accounts_text_id_financial_head_id_d9a30609_uniq` (`text_id`,`financial_head_id`),
  ADD KEY `chart_of_accounts_financial_head_id_5176fd2e_fk_financial` (`financial_head_id`);

--
-- Indexes for table `class_list`
--
ALTER TABLE `class_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `text_id` (`text_id`);

--
-- Indexes for table `class_wise_fee_setup`
--
ALTER TABLE `class_wise_fee_setup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_wise_fee_setup_class_name_id_32b0c9bb_fk_class_list_id` (`class_name_id`),
  ADD KEY `class_wise_fee_setup_fees_head_id_c6e00bbb_fk_chart_of_` (`fees_head_id`);

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
-- Indexes for table `financial_head`
--
ALTER TABLE `financial_head`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `text_id` (`text_id`);

--
-- Indexes for table `menu_list`
--
ALTER TABLE `menu_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_list_created_by_id_37c8f718_fk_user_list_id` (`created_by_id`);

--
-- Indexes for table `student_list`
--
ALTER TABLE `student_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roll` (`roll`),
  ADD UNIQUE KEY `reg_no` (`reg_no`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `student_list_class_name_id_695dc80f_fk_class_list_id` (`class_name_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT for table `chart_of_accounts`
--
ALTER TABLE `chart_of_accounts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `class_list`
--
ALTER TABLE `class_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `class_wise_fee_setup`
--
ALTER TABLE `class_wise_fee_setup`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `financial_head`
--
ALTER TABLE `financial_head`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu_list`
--
ALTER TABLE `menu_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `student_list`
--
ALTER TABLE `student_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_access_control`
--
ALTER TABLE `user_access_control`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_list`
--
ALTER TABLE `user_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
-- Constraints for table `chart_of_accounts`
--
ALTER TABLE `chart_of_accounts`
  ADD CONSTRAINT `chart_of_accounts_financial_head_id_5176fd2e_fk_financial` FOREIGN KEY (`financial_head_id`) REFERENCES `financial_head` (`id`);

--
-- Constraints for table `class_wise_fee_setup`
--
ALTER TABLE `class_wise_fee_setup`
  ADD CONSTRAINT `class_wise_fee_setup_class_name_id_32b0c9bb_fk_class_list_id` FOREIGN KEY (`class_name_id`) REFERENCES `class_list` (`id`),
  ADD CONSTRAINT `class_wise_fee_setup_fees_head_id_c6e00bbb_fk_chart_of_` FOREIGN KEY (`fees_head_id`) REFERENCES `chart_of_accounts` (`id`);

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
-- Constraints for table `student_list`
--
ALTER TABLE `student_list`
  ADD CONSTRAINT `student_list_class_name_id_695dc80f_fk_class_list_id` FOREIGN KEY (`class_name_id`) REFERENCES `class_list` (`id`);

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
