-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2024 at 08:59 AM
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
(88, 4, '2024', 23, 250, 1, '2024-10-16 14:34:39.853204', NULL),
(89, 4, '2025', 2, 500, 1, '2024-10-25 17:33:13.587370', NULL),
(90, 4, '2025', 3, 150, 1, '2024-10-25 17:33:13.595378', NULL),
(91, 4, '2025', 4, 150, 1, '2024-10-25 17:33:13.598362', NULL),
(92, 4, '2025', 5, 100, 1, '2024-10-25 17:33:13.600360', NULL),
(93, 4, '2025', 6, 0, 1, '2024-10-25 17:33:13.603524', NULL),
(94, 4, '2025', 7, 0, 1, '2024-10-25 17:33:13.605354', NULL),
(95, 4, '2025', 8, 0, 1, '2024-10-25 17:33:13.607375', NULL),
(96, 4, '2025', 9, 0, 1, '2024-10-25 17:33:13.614350', NULL),
(97, 4, '2025', 10, 0, 1, '2024-10-25 17:33:13.617348', NULL),
(98, 4, '2025', 11, 0, 1, '2024-10-25 17:33:13.620349', NULL),
(99, 4, '2025', 12, 0, 1, '2024-10-25 17:33:13.623346', NULL),
(100, 4, '2025', 13, 0, 1, '2024-10-25 17:33:13.627345', NULL),
(101, 4, '2025', 14, 0, 1, '2024-10-25 17:33:13.633341', NULL),
(102, 4, '2025', 15, 0, 1, '2024-10-25 17:33:13.636340', NULL),
(103, 4, '2025', 16, 0, 1, '2024-10-25 17:33:13.638358', NULL),
(104, 4, '2025', 17, 0, 1, '2024-10-25 17:33:13.640358', NULL),
(105, 4, '2025', 18, 0, 1, '2024-10-25 17:33:13.645334', NULL),
(106, 4, '2025', 19, 0, 1, '2024-10-25 17:33:13.647331', NULL),
(107, 4, '2025', 20, 0, 1, '2024-10-25 17:33:13.650332', NULL),
(108, 4, '2025', 21, 0, 1, '2024-10-25 17:33:13.653329', NULL),
(109, 4, '2025', 22, 0, 1, '2024-10-25 17:33:13.658328', NULL),
(110, 4, '2025', 23, 0, 1, '2024-10-25 17:33:13.662325', NULL);

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
('f9296rbigbmraeefbuuzw92amx5k7xhc', '.eJxdi00OwiAYRK_SfOsG5R-60gP0DIS0iNhSGqgr492lqW7czbw384JncdmEETrcHtlFG2bowE6TLWgoTuiL3xkaUoQWbiGXzSw2ujrqR9Rc9yF83_-86YP9ufWetlTlUXLyYXYnqQXTmFGDiRZYEqUkoVxxYgijmlVApdSc8DOWwizosXp4fwB7IDhg:1t4O6u:KEXRLFZkzDoOIivBvyovvq_cyfcocE4sMuGGUUwX8MM', '2024-11-08 17:28:28.759652'),
('is1h19td5hv71tew50am37nrme5zzp2n', '.eJxdjs1uwyAQhF8l4hxRs_ws5NT27mdAi01sxz9ExjlVffdixa2U3nbnmxnNF3vkuPqhZRdxft5xpmFiF0bjSJk3ORr33u0ab9LMzuw6rHnzC82xmOqWnz52IzvS__VTPdAvu_dpSwU-nzV1wxTf0BnlhJJegDMCwVoEqa0GD0o6VQSJ6DToSqDxC7_du9Ln6bH1_m87g1ctUDPGZQftjZYulenLtg6B7xZ-0Mzr1Mbp8_C-FPSU-5J2AkVQjaiwxYAAGLVGbdEJKiUgyZS5AcwVRVUBkRZaKhPM1QpolLXs-wcZj24V:1swNbF:l1aAnIn0qGMzto7HMzWzrhSZVheqJHNcw9Euup8bUjo', '2024-10-17 15:18:41.267629'),
('lmecdga5sujwbz9utszyk2fukshcf4b5', '.eJxdi00OwiAYRK_SfOsG5R-60gP0DIS0iNhSGqgr492lqW7czbw384JncdmEETrcHtlFG2bowE6TLWgoTuiL3xkaUoQWbiGXzSw2ujrqR9Rc9yF83_-86YP9ufWetlTlUXLyYXYnqQXTmFGDiRZYEqUkoVxxYgijmlVApdSc8DOWwizosXp4fwB7IDhg:1t3cPw:1ZzWL9AOuiSsrw3S34MYR63R6bNZUDkV9VV9CGdXrjQ', '2024-11-06 14:32:56.963888'),
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
  `student_id` varchar(30) NOT NULL,
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

INSERT INTO `student_list` (`id`, `first_name`, `last_name`, `student_id`, `roll`, `reg_no`, `date_of_birth`, `email`, `phone_number`, `address`, `father_name`, `mother_name`, `guardian_name`, `class_name_id`, `created`, `status`) VALUES
(1, 'Student1', 'LastName1', 'S0001', '001', 'R001', '2010-01-01', 'student1@mail.com', '01900000001', 'Address 1', 'Father1', 'Mother1', 'Guardian1', 5, '2024-10-23 20:45:19.000000', 1),
(2, 'Student2', 'LastName2', 'S0002', '002', 'R002', '2010-02-01', 'student2@mail.com', '01900000002', 'Address 2', 'Father2', 'Mother2', 'Guardian2', 5, '2024-10-23 20:45:19.000000', 1),
(3, 'Student3', 'LastName3', 'S0003', '003', 'R003', '2010-03-01', 'student3@mail.com', '01900000003', 'Address 3', 'Father3', 'Mother3', 'Guardian3', 5, '2024-10-23 20:45:19.000000', 1),
(4, 'Student4', 'LastName4', 'S0004', '004', 'R004', '2010-04-01', 'student4@mail.com', '01900000004', 'Address 4', 'Father4', 'Mother4', 'Guardian4', 5, '2024-10-23 20:45:19.000000', 1),
(5, 'Student5', 'LastName5', 'S0005', '005', 'R005', '2010-05-01', 'student5@mail.com', '01900000005', 'Address 5', 'Father5', 'Mother5', 'Guardian5', 5, '2024-10-23 20:45:19.000000', 1),
(6, 'Student6', 'LastName6', 'S0006', '006', 'R006', '2010-06-01', 'student6@mail.com', '01900000006', 'Address 6', 'Father6', 'Mother6', 'Guardian6', 5, '2024-10-23 20:45:19.000000', 1),
(7, 'Student7', 'LastName7', 'S0007', '007', 'R007', '2010-07-01', 'student7@mail.com', '01900000007', 'Address 7', 'Father7', 'Mother7', 'Guardian7', 5, '2024-10-23 20:45:19.000000', 1),
(8, 'Student8', 'LastName8', 'S0008', '008', 'R008', '2010-08-01', 'student8@mail.com', '01900000008', 'Address 8', 'Father8', 'Mother8', 'Guardian8', 5, '2024-10-23 20:45:19.000000', 1),
(9, 'Student9', 'LastName9', 'S0009', '009', 'R009', '2010-09-01', 'student9@mail.com', '01900000009', 'Address 9', 'Father9', 'Mother9', 'Guardian9', 5, '2024-10-23 20:45:19.000000', 1),
(10, 'Student10', 'LastName10', 'S0010', '010', 'R010', '2010-10-01', 'student10@mail.com', '01900000010', 'Address 10', 'Father10', 'Mother10', 'Guardian10', 5, '2024-10-23 20:45:19.000000', 1),
(11, 'Student11', 'LastName11', 'S0011', '011', 'R011', '2010-11-01', 'student11@mail.com', '01900000011', 'Address 11', 'Father11', 'Mother11', 'Guardian11', 5, '2024-10-23 20:45:19.000000', 1),
(12, 'Student12', 'LastName12', 'S0012', '012', 'R012', '2010-12-01', 'student12@mail.com', '01900000012', 'Address 12', 'Father12', 'Mother12', 'Guardian12', 5, '2024-10-23 20:45:19.000000', 1),
(13, 'Student13', 'LastName13', 'S0013', '013', 'R013', '2010-01-02', 'student13@mail.com', '01900000013', 'Address 13', 'Father13', 'Mother13', 'Guardian13', 5, '2024-10-23 20:45:19.000000', 1),
(14, 'Student14', 'LastName14', 'S0014', '014', 'R014', '2010-02-02', 'student14@mail.com', '01900000014', 'Address 14', 'Father14', 'Mother14', 'Guardian14', 5, '2024-10-23 20:45:19.000000', 1),
(15, 'Student15', 'LastName15', 'S0015', '015', 'R015', '2010-03-02', 'student15@mail.com', '01900000015', 'Address 15', 'Father15', 'Mother15', 'Guardian15', 5, '2024-10-23 20:45:19.000000', 1),
(16, 'Student16', 'LastName16', 'S0016', '016', 'R016', '2010-04-02', 'student16@mail.com', '01900000016', 'Address 16', 'Father16', 'Mother16', 'Guardian16', 5, '2024-10-23 20:45:19.000000', 1),
(17, 'Student17', 'LastName17', 'S0017', '017', 'R017', '2010-05-02', 'student17@mail.com', '01900000017', 'Address 17', 'Father17', 'Mother17', 'Guardian17', 5, '2024-10-23 20:45:19.000000', 1),
(18, 'Student18', 'LastName18', 'S0018', '018', 'R018', '2010-06-02', 'student18@mail.com', '01900000018', 'Address 18', 'Father18', 'Mother18', 'Guardian18', 5, '2024-10-23 20:45:19.000000', 1),
(19, 'Student19', 'LastName19', 'S0019', '019', 'R019', '2010-07-02', 'student19@mail.com', '01900000019', 'Address 19', 'Father19', 'Mother19', 'Guardian19', 5, '2024-10-23 20:45:19.000000', 1),
(20, 'Student20', 'LastName20', 'S0020', '020', 'R020', '2010-08-02', 'student20@mail.com', '01900000020', 'Address 20', 'Father20', 'Mother20', 'Guardian20', 5, '2024-10-23 20:45:19.000000', 1),
(21, 'Student21', 'LastName21', 'S0021', '021', 'R021', '2010-09-02', 'student21@mail.com', '01900000021', 'Address 21', 'Father21', 'Mother21', 'Guardian21', 5, '2024-10-23 20:45:19.000000', 1),
(22, 'Student22', 'LastName22', 'S0022', '022', 'R022', '2010-10-02', 'student22@mail.com', '01900000022', 'Address 22', 'Father22', 'Mother22', 'Guardian22', 5, '2024-10-23 20:45:19.000000', 1),
(23, 'Student23', 'LastName23', 'S0023', '023', 'R023', '2010-11-02', 'student23@mail.com', '01900000023', 'Address 23', 'Father23', 'Mother23', 'Guardian23', 5, '2024-10-23 20:45:19.000000', 1),
(24, 'Student24', 'LastName24', 'S0024', '024', 'R024', '2010-12-02', 'student24@mail.com', '01900000024', 'Address 24', 'Father24', 'Mother24', 'Guardian24', 5, '2024-10-23 20:45:19.000000', 1),
(25, 'Student25', 'LastName25', 'S0025', '025', 'R025', '2010-01-03', 'student25@mail.com', '01900000025', 'Address 25', 'Father25', 'Mother25', 'Guardian25', 5, '2024-10-23 20:45:19.000000', 1),
(26, 'Student26', 'LastName26', 'S0026', '026', 'R026', '2010-02-03', 'student26@mail.com', '01900000026', 'Address 26', 'Father26', 'Mother26', 'Guardian26', 5, '2024-10-23 20:45:19.000000', 1),
(27, 'Student27', 'LastName27', 'S0027', '027', 'R027', '2010-03-03', 'student27@mail.com', '01900000027', 'Address 27', 'Father27', 'Mother27', 'Guardian27', 5, '2024-10-23 20:45:19.000000', 1),
(28, 'Student28', 'LastName28', 'S0028', '028', 'R028', '2010-04-03', 'student28@mail.com', '01900000028', 'Address 28', 'Father28', 'Mother28', 'Guardian28', 5, '2024-10-23 20:45:19.000000', 1),
(29, 'Student29', 'LastName29', 'S0029', '029', 'R029', '2010-05-03', 'student29@mail.com', '01900000029', 'Address 29', 'Father29', 'Mother29', 'Guardian29', 5, '2024-10-23 20:45:19.000000', 1),
(30, 'John', 'Smith', 'SID001', 'R001', 'REG001', '2010-01-01', 'john.smith1@example.com', '0123456789', '123 Main St', 'Father Smith', 'Mother Smith', 'Guardian Smith', 6, '2024-10-23 20:51:25.000000', 1),
(31, 'Jane', 'Doe', 'SID002', 'R002', 'REG002', '2010-02-02', 'jane.doe2@example.com', '0123456790', '456 Main St', 'Father Doe', 'Mother Doe', 'Guardian Doe', 6, '2024-10-23 20:51:25.000000', 1),
(32, 'Alice', 'Brown', 'SID003', 'R003', 'REG003', '2010-03-03', 'alice.brown3@example.com', '0123456791', '789 Main St', 'Father Brown', 'Mother Brown', 'Guardian Brown', 6, '2024-10-23 20:51:25.000000', 1),
(33, 'Bob', 'Johnson', 'SID004', 'R004', 'REG004', '2010-04-04', 'bob.johnson4@example.com', '0123456792', '101 Main St', 'Father Johnson', 'Mother Johnson', 'Guardian Johnson', 6, '2024-10-23 20:51:25.000000', 1),
(34, 'Charlie', 'Williams', 'SID005', 'R005', 'REG005', '2010-05-05', 'charlie.williams5@example.com', '0123456793', '202 Main St', 'Father Williams', 'Mother Williams', 'Guardian Williams', 6, '2024-10-23 20:51:25.000000', 1),
(35, 'David', 'Jones', 'SID006', 'R006', 'REG006', '2010-06-06', 'david.jones6@example.com', '0123456794', '303 Main St', 'Father Jones', 'Mother Jones', 'Guardian Jones', 6, '2024-10-23 20:51:25.000000', 1),
(36, 'Emily', 'Garcia', 'SID007', 'R007', 'REG007', '2010-07-07', 'emily.garcia7@example.com', '0123456795', '404 Main St', 'Father Garcia', 'Mother Garcia', 'Guardian Garcia', 6, '2024-10-23 20:51:25.000000', 1),
(37, 'Frank', 'Martinez', 'SID008', 'R008', 'REG008', '2010-08-08', 'frank.martinez8@example.com', '0123456796', '505 Main St', 'Father Martinez', 'Mother Martinez', 'Guardian Martinez', 6, '2024-10-23 20:51:25.000000', 1),
(38, 'Grace', 'Rodriguez', 'SID009', 'R009', 'REG009', '2010-09-09', 'grace.rodriguez9@example.com', '0123456797', '606 Main St', 'Father Rodriguez', 'Mother Rodriguez', 'Guardian Rodriguez', 6, '2024-10-23 20:51:25.000000', 1),
(39, 'Henry', 'Lee', 'SID010', 'R010', 'REG010', '2010-10-10', 'henry.lee10@example.com', '0123456798', '707 Main St', 'Father Lee', 'Mother Lee', 'Guardian Lee', 6, '2024-10-23 20:51:25.000000', 1),
(40, 'Ivy', 'Clark', 'SID011', 'R011', 'REG011', '2010-11-11', 'ivy.clark11@example.com', '0123456799', '808 Main St', 'Father Clark', 'Mother Clark', 'Guardian Clark', 6, '2024-10-23 20:51:25.000000', 1),
(41, 'Jack', 'Lewis', 'SID012', 'R012', 'REG012', '2010-12-12', 'jack.lewis12@example.com', '0123456700', '909 Main St', 'Father Lewis', 'Mother Lewis', 'Guardian Lewis', 6, '2024-10-23 20:51:25.000000', 1),
(42, 'Katie', 'Walker', 'SID013', 'R013', 'REG013', '2011-01-01', 'katie.walker13@example.com', '0123456701', '1010 Main St', 'Father Walker', 'Mother Walker', 'Guardian Walker', 6, '2024-10-23 20:51:25.000000', 1),
(43, 'Liam', 'Young', 'SID014', 'R014', 'REG014', '2011-02-02', 'liam.young14@example.com', '0123456702', '111 Main St', 'Father Young', 'Mother Young', 'Guardian Young', 6, '2024-10-23 20:51:25.000000', 1),
(44, 'Mia', 'Harris', 'SID015', 'R015', 'REG015', '2011-03-03', 'mia.harris15@example.com', '0123456703', '222 Main St', 'Father Harris', 'Mother Harris', 'Guardian Harris', 6, '2024-10-23 20:51:25.000000', 1),
(45, 'Noah', 'Hall', 'SID016', 'R016', 'REG016', '2011-04-04', 'noah.hall16@example.com', '0123456704', '333 Main St', 'Father Hall', 'Mother Hall', 'Guardian Hall', 6, '2024-10-23 20:51:25.000000', 1),
(46, 'Olivia', 'Allen', 'SID017', 'R017', 'REG017', '2011-05-05', 'olivia.allen17@example.com', '0123456705', '444 Main St', 'Father Allen', 'Mother Allen', 'Guardian Allen', 6, '2024-10-23 20:51:25.000000', 1),
(47, 'Paul', 'Scott', 'SID018', 'R018', 'REG018', '2011-06-06', 'paul.scott18@example.com', '0123456706', '555 Main St', 'Father Scott', 'Mother Scott', 'Guardian Scott', 6, '2024-10-23 20:51:25.000000', 1),
(48, 'Quinn', 'Torres', 'SID019', 'R019', 'REG019', '2011-07-07', 'quinn.torres19@example.com', '0123456707', '666 Main St', 'Father Torres', 'Mother Torres', 'Guardian Torres', 6, '2024-10-23 20:51:25.000000', 1),
(49, 'Ryan', 'Nguyen', 'SID020', 'R020', 'REG020', '2011-08-08', 'ryan.nguyen20@example.com', '0123456708', '777 Main St', 'Father Nguyen', 'Mother Nguyen', 'Guardian Nguyen', 6, '2024-10-23 20:51:25.000000', 1),
(50, 'Zara', 'Wilson', 'SID050', 'R050', 'REG050', '2012-10-10', 'zara.wilson50@example.com', '0123456750', '5050 Main St', 'Father Wilson', 'Mother Wilson', 'Guardian Wilson', 6, '2024-10-23 20:51:25.000000', 1),
(51, 'Aiden', 'Scott', 'SID051', 'R051', 'REG051', '2011-01-01', 'aiden.scott51@example.com', '0123456711', '1001 Main St', 'Father Scott', 'Mother Scott', 'Guardian Scott', 7, '2024-10-23 20:54:37.000000', 1),
(52, 'Sophia', 'Adams', 'SID052', 'R052', 'REG052', '2011-02-02', 'sophia.adams52@example.com', '0123456712', '1002 Main St', 'Father Adams', 'Mother Adams', 'Guardian Adams', 7, '2024-10-23 20:54:37.000000', 1),
(53, 'Ethan', 'Baker', 'SID053', 'R053', 'REG053', '2011-03-03', 'ethan.baker53@example.com', '0123456713', '1003 Main St', 'Father Baker', 'Mother Baker', 'Guardian Baker', 7, '2024-10-23 20:54:37.000000', 1),
(54, 'Isabella', 'Campbell', 'SID054', 'R054', 'REG054', '2011-04-04', 'isabella.campbell54@example.com', '0123456714', '1004 Main St', 'Father Campbell', 'Mother Campbell', 'Guardian Campbell', 7, '2024-10-23 20:54:37.000000', 1),
(55, 'James', 'Davis', 'SID055', 'R055', 'REG055', '2011-05-05', 'james.davis55@example.com', '0123456715', '1005 Main St', 'Father Davis', 'Mother Davis', 'Guardian Davis', 7, '2024-10-23 20:54:37.000000', 1),
(56, 'Ava', 'Evans', 'SID056', 'R056', 'REG056', '2011-06-06', 'ava.evans56@example.com', '0123456716', '1006 Main St', 'Father Evans', 'Mother Evans', 'Guardian Evans', 7, '2024-10-23 20:54:37.000000', 1),
(57, 'Benjamin', 'Garcia', 'SID057', 'R057', 'REG057', '2011-07-07', 'benjamin.garcia57@example.com', '0123456717', '1007 Main St', 'Father Garcia', 'Mother Garcia', 'Guardian Garcia', 7, '2024-10-23 20:54:37.000000', 1),
(58, 'Lily', 'Hall', 'SID058', 'R058', 'REG058', '2011-08-08', 'lily.hall58@example.com', '0123456718', '1008 Main St', 'Father Hall', 'Mother Hall', 'Guardian Hall', 7, '2024-10-23 20:54:37.000000', 1),
(59, 'Lucas', 'King', 'SID059', 'R059', 'REG059', '2011-09-09', 'lucas.king59@example.com', '0123456719', '1009 Main St', 'Father King', 'Mother King', 'Guardian King', 7, '2024-10-23 20:54:37.000000', 1),
(60, 'Chloe', 'Lee', 'SID060', 'R060', 'REG060', '2011-10-10', 'chloe.lee60@example.com', '0123456720', '1010 Main St', 'Father Lee', 'Mother Lee', 'Guardian Lee', 7, '2024-10-23 20:54:37.000000', 1),
(61, 'Matthew', 'Martinez', 'SID061', 'R061', 'REG061', '2011-11-11', 'matthew.martinez61@example.com', '0123456721', '1011 Main St', 'Father Martinez', 'Mother Martinez', 'Guardian Martinez', 7, '2024-10-23 20:54:37.000000', 1),
(62, 'Ella', 'Miller', 'SID062', 'R062', 'REG062', '2011-12-12', 'ella.miller62@example.com', '0123456722', '1012 Main St', 'Father Miller', 'Mother Miller', 'Guardian Miller', 7, '2024-10-23 20:54:37.000000', 1),
(63, 'Jacob', 'Moore', 'SID063', 'R063', 'REG063', '2012-01-01', 'jacob.moore63@example.com', '0123456723', '1013 Main St', 'Father Moore', 'Mother Moore', 'Guardian Moore', 7, '2024-10-23 20:54:37.000000', 1),
(64, 'Emily', 'Nelson', 'SID064', 'R064', 'REG064', '2012-02-02', 'emily.nelson64@example.com', '0123456724', '1014 Main St', 'Father Nelson', 'Mother Nelson', 'Guardian Nelson', 7, '2024-10-23 20:54:37.000000', 1),
(65, 'Michael', 'Parker', 'SID065', 'R065', 'REG065', '2012-03-03', 'michael.parker65@example.com', '0123456725', '1015 Main St', 'Father Parker', 'Mother Parker', 'Guardian Parker', 7, '2024-10-23 20:54:37.000000', 1),
(66, 'Mia', 'Perez', 'SID066', 'R066', 'REG066', '2012-04-04', 'mia.perez66@example.com', '0123456726', '1016 Main St', 'Father Perez', 'Mother Perez', 'Guardian Perez', 7, '2024-10-23 20:54:37.000000', 1),
(67, 'Daniel', 'Robinson', 'SID067', 'R067', 'REG067', '2012-05-05', 'daniel.robinson67@example.com', '0123456727', '1017 Main St', 'Father Robinson', 'Mother Robinson', 'Guardian Robinson', 7, '2024-10-23 20:54:37.000000', 1),
(68, 'Grace', 'Sanchez', 'SID068', 'R068', 'REG068', '2012-06-06', 'grace.sanchez68@example.com', '0123456728', '1018 Main St', 'Father Sanchez', 'Mother Sanchez', 'Guardian Sanchez', 7, '2024-10-23 20:54:37.000000', 1),
(69, 'Jackson', 'Smith', 'SID069', 'R069', 'REG069', '2012-07-07', 'jackson.smith69@example.com', '0123456729', '1019 Main St', 'Father Smith', 'Mother Smith', 'Guardian Smith', 7, '2024-10-23 20:54:37.000000', 1),
(70, 'Harper', 'Taylor', 'SID070', 'R070', 'REG070', '2012-08-08', 'harper.taylor70@example.com', '0123456730', '1020 Main St', 'Father Taylor', 'Mother Taylor', 'Guardian Taylor', 7, '2024-10-23 20:54:37.000000', 1),
(71, 'Zachary', 'Williams', 'SID100', 'R100', 'REG100', '2013-10-10', 'zachary.williams100@example.com', '0123456750', '1050 Main St', 'Father Williams', 'Mother Williams', 'Guardian Williams', 7, '2024-10-23 20:54:37.000000', 1),
(72, 'Ethan', 'Johnson', 'SID101', '01', 'REG101', '2011-01-01', 'ethan.johnson101@example.com', '0123456781', '101 Main St', 'Father Johnson', 'Mother Johnson', 'Guardian Johnson', 8, '2024-10-23 20:58:07.000000', 1),
(73, 'Sophia', 'Anderson', 'SID102', '02', 'REG102', '2011-02-02', 'sophia.anderson102@example.com', '0123456782', '102 Main St', 'Father Anderson', 'Mother Anderson', 'Guardian Anderson', 8, '2024-10-23 20:58:07.000000', 1),
(74, 'Liam', 'Harris', 'SID103', '03', 'REG103', '2011-03-03', 'liam.harris103@example.com', '0123456783', '103 Main St', 'Father Harris', 'Mother Harris', 'Guardian Harris', 8, '2024-10-23 20:58:07.000000', 1),
(75, 'Isabella', 'Clark', 'SID104', '04', 'REG104', '2011-04-04', 'isabella.clark104@example.com', '0123456784', '104 Main St', 'Father Clark', 'Mother Clark', 'Guardian Clark', 8, '2024-10-23 20:58:07.000000', 1),
(76, 'Noah', 'Davis', 'SID105', '05', 'REG105', '2011-05-05', 'noah.davis105@example.com', '0123456785', '105 Main St', 'Father Davis', 'Mother Davis', 'Guardian Davis', 8, '2024-10-23 20:58:07.000000', 1),
(77, 'Mia', 'Martinez', 'SID106', '06', 'REG106', '2011-06-06', 'mia.martinez106@example.com', '0123456786', '106 Main St', 'Father Martinez', 'Mother Martinez', 'Guardian Martinez', 8, '2024-10-23 20:58:07.000000', 1),
(78, 'Lucas', 'Garcia', 'SID107', '07', 'REG107', '2011-07-07', 'lucas.garcia107@example.com', '0123456787', '107 Main St', 'Father Garcia', 'Mother Garcia', 'Guardian Garcia', 8, '2024-10-23 20:58:07.000000', 1),
(79, 'Charlotte', 'Moore', 'SID108', '08', 'REG108', '2011-08-08', 'charlotte.moore108@example.com', '0123456788', '108 Main St', 'Father Moore', 'Mother Moore', 'Guardian Moore', 8, '2024-10-23 20:58:07.000000', 1),
(80, 'James', 'Taylor', 'SID109', '09', 'REG109', '2011-09-09', 'james.taylor109@example.com', '0123456789', '109 Main St', 'Father Taylor', 'Mother Taylor', 'Guardian Taylor', 8, '2024-10-23 20:58:07.000000', 1),
(81, 'Amelia', 'Jackson', 'SID110', '10', 'REG110', '2011-10-10', 'amelia.jackson110@example.com', '0123456790', '110 Main St', 'Father Jackson', 'Mother Jackson', 'Guardian Jackson', 8, '2024-10-23 20:58:07.000000', 1),
(82, 'Logan', 'White', 'SID111', '11', 'REG111', '2011-11-11', 'logan.white111@example.com', '0123456791', '111 Main St', 'Father White', 'Mother White', 'Guardian White', 8, '2024-10-23 20:58:07.000000', 1),
(83, 'Ava', 'Thompson', 'SID112', '12', 'REG112', '2011-12-12', 'ava.thompson112@example.com', '0123456792', '112 Main St', 'Father Thompson', 'Mother Thompson', 'Guardian Thompson', 8, '2024-10-23 20:58:07.000000', 1),
(84, 'Mason', 'Lee', 'SID113', '13', 'REG113', '2012-01-01', 'mason.lee113@example.com', '0123456793', '113 Main St', 'Father Lee', 'Mother Lee', 'Guardian Lee', 8, '2024-10-23 20:58:07.000000', 1),
(85, 'Ella', 'Perez', 'SID114', '14', 'REG114', '2012-02-02', 'ella.perez114@example.com', '0123456794', '114 Main St', 'Father Perez', 'Mother Perez', 'Guardian Perez', 8, '2024-10-23 20:58:07.000000', 1),
(86, 'Jacob', 'Walker', 'SID115', '15', 'REG115', '2012-03-03', 'jacob.walker115@example.com', '0123456795', '115 Main St', 'Father Walker', 'Mother Walker', 'Guardian Walker', 8, '2024-10-23 20:58:07.000000', 1),
(87, 'Lily', 'Gonzalez', 'SID116', '16', 'REG116', '2012-04-04', 'lily.gonzalez116@example.com', '0123456796', '116 Main St', 'Father Gonzalez', 'Mother Gonzalez', 'Guardian Gonzalez', 8, '2024-10-23 20:58:07.000000', 1),
(88, 'Alexander', 'Hall', 'SID117', '17', 'REG117', '2012-05-05', 'alexander.hall117@example.com', '0123456797', '117 Main St', 'Father Hall', 'Mother Hall', 'Guardian Hall', 8, '2024-10-23 20:58:07.000000', 1),
(89, 'Harper', 'Allen', 'SID118', '18', 'REG118', '2012-06-06', 'harper.allen118@example.com', '0123456798', '118 Main St', 'Father Allen', 'Mother Allen', 'Guardian Allen', 8, '2024-10-23 20:58:07.000000', 1),
(90, 'Oliver', 'Young', 'SID119', '19', 'REG119', '2012-07-07', 'oliver.young119@example.com', '0123456799', '119 Main St', 'Father Young', 'Mother Young', 'Guardian Young', 8, '2024-10-23 20:58:07.000000', 1),
(91, 'Scarlett', 'Hernandez', 'SID120', '20', 'REG120', '2012-08-08', 'scarlett.hernandez120@example.com', '0123456710', '120 Main St', 'Father Hernandez', 'Mother Hernandez', 'Guardian Hernandez', 8, '2024-10-23 20:58:07.000000', 1),
(92, 'Zoe', 'Wilson', 'SID150', '50', 'REG150', '2013-10-10', 'zoe.wilson150@example.com', '0123456750', '150 Main St', 'Father Wilson', 'Mother Wilson', 'Guardian Wilson', 8, '2024-10-23 20:58:07.000000', 1),
(114, 'Aiden', 'Williams', 'SID151', '01', 'REG151', '2010-01-01', 'aiden.williams151@example.com', '0123456711', '101 Main St', 'Father Williams', 'Mother Williams', 'Guardian Williams', 9, '2024-10-23 21:03:19.000000', 1),
(115, 'Olivia', 'Brown', 'SID152', '02', 'REG152', '2010-02-02', 'olivia.brown152@example.com', '0123456712', '102 Main St', 'Father Brown', 'Mother Brown', 'Guardian Brown', 9, '2024-10-23 21:03:19.000000', 1),
(116, 'Liam', 'Jones', 'SID153', '03', 'REG153', '2010-03-03', 'liam.jones153@example.com', '0123456713', '103 Main St', 'Father Jones', 'Mother Jones', 'Guardian Jones', 9, '2024-10-23 21:03:19.000000', 1),
(117, 'Emma', 'Garcia', 'SID154', '04', 'REG154', '2010-04-04', 'emma.garcia154@example.com', '0123456714', '104 Main St', 'Father Garcia', 'Mother Garcia', 'Guardian Garcia', 9, '2024-10-23 21:03:19.000000', 1),
(118, 'Noah', 'Rodriguez', 'SID155', '05', 'REG155', '2010-05-05', 'noah.rodriguez155@example.com', '0123456715', '105 Main St', 'Father Rodriguez', 'Mother Rodriguez', 'Guardian Rodriguez', 9, '2024-10-23 21:03:19.000000', 1),
(119, 'Sophia', 'Martinez', 'SID156', '06', 'REG156', '2010-06-06', 'sophia.martinez156@example.com', '0123456716', '106 Main St', 'Father Martinez', 'Mother Martinez', 'Guardian Martinez', 9, '2024-10-23 21:03:19.000000', 1),
(120, 'Lucas', 'Davis', 'SID157', '07', 'REG157', '2010-07-07', 'lucas.davis157@example.com', '0123456717', '107 Main St', 'Father Davis', 'Mother Davis', 'Guardian Davis', 9, '2024-10-23 21:03:19.000000', 1),
(121, 'Isabella', 'Hernandez', 'SID158', '08', 'REG158', '2010-08-08', 'isabella.hernandez158@example.com', '0123456718', '108 Main St', 'Father Hernandez', 'Mother Hernandez', 'Guardian Hernandez', 9, '2024-10-23 21:03:19.000000', 1),
(122, 'Mason', 'Miller', 'SID159', '09', 'REG159', '2010-09-09', 'mason.miller159@example.com', '0123456719', '109 Main St', 'Father Miller', 'Mother Miller', 'Guardian Miller', 9, '2024-10-23 21:03:19.000000', 1),
(123, 'Mia', 'Lopez', 'SID160', '10', 'REG160', '2010-10-10', 'mia.lopez160@example.com', '0123456720', '110 Main St', 'Father Lopez', 'Mother Lopez', 'Guardian Lopez', 9, '2024-10-23 21:03:19.000000', 1),
(124, 'Ethan', 'Wilson', 'SID161', '11', 'REG161', '2010-11-11', 'ethan.wilson161@example.com', '0123456721', '111 Main St', 'Father Wilson', 'Mother Wilson', 'Guardian Wilson', 9, '2024-10-23 21:03:19.000000', 1),
(125, 'Ava', 'Moore', 'SID162', '12', 'REG162', '2010-12-12', 'ava.moore162@example.com', '0123456722', '112 Main St', 'Father Moore', 'Mother Moore', 'Guardian Moore', 9, '2024-10-23 21:03:19.000000', 1),
(126, 'Benjamin', 'Taylor', 'SID163', '13', 'REG163', '2011-01-01', 'benjamin.taylor163@example.com', '0123456723', '113 Main St', 'Father Taylor', 'Mother Taylor', 'Guardian Taylor', 9, '2024-10-23 21:03:19.000000', 1),
(127, 'Amelia', 'Anderson', 'SID164', '14', 'REG164', '2011-02-02', 'amelia.anderson164@example.com', '0123456724', '114 Main St', 'Father Anderson', 'Mother Anderson', 'Guardian Anderson', 9, '2024-10-23 21:03:19.000000', 1),
(128, 'Elijah', 'Thomas', 'SID165', '15', 'REG165', '2011-03-03', 'elijah.thomas165@example.com', '0123456725', '115 Main St', 'Father Thomas', 'Mother Thomas', 'Guardian Thomas', 9, '2024-10-23 21:03:19.000000', 1),
(129, 'Harper', 'Jackson', 'SID166', '16', 'REG166', '2011-04-04', 'harper.jackson166@example.com', '0123456726', '116 Main St', 'Father Jackson', 'Mother Jackson', 'Guardian Jackson', 9, '2024-10-23 21:03:19.000000', 1),
(130, 'Logan', 'White', 'SID167', '17', 'REG167', '2011-05-05', 'logan.white167@example.com', '0123456727', '117 Main St', 'Father White', 'Mother White', 'Guardian White', 9, '2024-10-23 21:03:19.000000', 1),
(131, 'Emily', 'Harris', 'SID168', '18', 'REG168', '2011-06-06', 'emily.harris168@example.com', '0123456728', '118 Main St', 'Father Harris', 'Mother Harris', 'Guardian Harris', 9, '2024-10-23 21:03:19.000000', 1),
(132, 'Oliver', 'Martin', 'SID169', '19', 'REG169', '2011-07-07', 'oliver.martin169@example.com', '0123456729', '119 Main St', 'Father Martin', 'Mother Martin', 'Guardian Martin', 9, '2024-10-23 21:03:19.000000', 1),
(133, 'Avery', 'Thompson', 'SID170', '20', 'REG170', '2011-08-08', 'avery.thompson170@example.com', '0123456730', '120 Main St', 'Father Thompson', 'Mother Thompson', 'Guardian Thompson', 9, '2024-10-23 21:03:19.000000', 1),
(134, 'Zoe', 'Martinez', 'SID200', '50', 'REG200', '2012-10-10', 'zoe.martinez200@example.com', '0123456750', '150 Main St', 'Father Martinez', 'Mother Martinez', 'Guardian Martinez', 9, '2024-10-23 21:03:19.000000', 1),
(135, 'Jackson', 'Harris', 'SID201', '01', 'REG201', '2013-01-01', 'jackson.harris201@example.com', '0123456801', '101 Main St', 'Father Harris', 'Mother Harris', 'Guardian Harris', 2, '2024-10-23 21:05:34.000000', 1),
(136, 'Lily', 'Clark', 'SID202', '02', 'REG202', '2013-02-02', 'lily.clark202@example.com', '0123456802', '102 Main St', 'Father Clark', 'Mother Clark', 'Guardian Clark', 2, '2024-10-23 21:05:34.000000', 1),
(137, 'William', 'Lewis', 'SID203', '03', 'REG203', '2013-03-03', 'william.lewis203@example.com', '0123456803', '103 Main St', 'Father Lewis', 'Mother Lewis', 'Guardian Lewis', 2, '2024-10-23 21:05:34.000000', 1),
(138, 'Grace', 'Robinson', 'SID204', '04', 'REG204', '2013-04-04', 'grace.robinson204@example.com', '0123456804', '104 Main St', 'Father Robinson', 'Mother Robinson', 'Guardian Robinson', 2, '2024-10-23 21:05:34.000000', 1),
(139, 'Henry', 'Walker', 'SID205', '05', 'REG205', '2013-05-05', 'henry.walker205@example.com', '0123456805', '105 Main St', 'Father Walker', 'Mother Walker', 'Guardian Walker', 2, '2024-10-23 21:05:34.000000', 1),
(140, 'Aria', 'Young', 'SID206', '06', 'REG206', '2013-06-06', 'aria.young206@example.com', '0123456806', '106 Main St', 'Father Young', 'Mother Young', 'Guardian Young', 2, '2024-10-23 21:05:34.000000', 1),
(141, 'Sebastian', 'King', 'SID207', '07', 'REG207', '2013-07-07', 'sebastian.king207@example.com', '0123456807', '107 Main St', 'Father King', 'Mother King', 'Guardian King', 2, '2024-10-23 21:05:34.000000', 1),
(142, 'Sofia', 'Wright', 'SID208', '08', 'REG208', '2013-08-08', 'sofia.wright208@example.com', '0123456808', '108 Main St', 'Father Wright', 'Mother Wright', 'Guardian Wright', 2, '2024-10-23 21:05:34.000000', 1),
(143, 'David', 'Scott', 'SID209', '09', 'REG209', '2013-09-09', 'david.scott209@example.com', '0123456809', '109 Main St', 'Father Scott', 'Mother Scott', 'Guardian Scott', 2, '2024-10-23 21:05:34.000000', 1),
(144, 'Ella', 'Green', 'SID210', '10', 'REG210', '2013-10-10', 'ella.green210@example.com', '0123456810', '110 Main St', 'Father Green', 'Mother Green', 'Guardian Green', 2, '2024-10-23 21:05:34.000000', 1),
(145, 'Daniel', 'Baker', 'SID211', '11', 'REG211', '2013-11-11', 'daniel.baker211@example.com', '0123456811', '111 Main St', 'Father Baker', 'Mother Baker', 'Guardian Baker', 2, '2024-10-23 21:05:34.000000', 1),
(146, 'Mila', 'Adams', 'SID212', '12', 'REG212', '2013-12-12', 'mila.adams212@example.com', '0123456812', '112 Main St', 'Father Adams', 'Mother Adams', 'Guardian Adams', 2, '2024-10-23 21:05:34.000000', 1),
(147, 'Matthew', 'Nelson', 'SID213', '13', 'REG213', '2014-01-01', 'matthew.nelson213@example.com', '0123456813', '113 Main St', 'Father Nelson', 'Mother Nelson', 'Guardian Nelson', 2, '2024-10-23 21:05:34.000000', 1),
(148, 'Emily', 'Mitchell', 'SID214', '14', 'REG214', '2014-02-02', 'emily.mitchell214@example.com', '0123456814', '114 Main St', 'Father Mitchell', 'Mother Mitchell', 'Guardian Mitchell', 2, '2024-10-23 21:05:34.000000', 1),
(149, 'Owen', 'Perez', 'SID215', '15', 'REG215', '2014-03-03', 'owen.perez215@example.com', '0123456815', '115 Main St', 'Father Perez', 'Mother Perez', 'Guardian Perez', 2, '2024-10-23 21:05:34.000000', 1),
(150, 'Scarlett', 'Hall', 'SID216', '16', 'REG216', '2014-04-04', 'scarlett.hall216@example.com', '0123456816', '116 Main St', 'Father Hall', 'Mother Hall', 'Guardian Hall', 2, '2024-10-23 21:05:34.000000', 1),
(151, 'Samuel', 'Rivera', 'SID217', '17', 'REG217', '2014-05-05', 'samuel.rivera217@example.com', '0123456817', '117 Main St', 'Father Rivera', 'Mother Rivera', 'Guardian Rivera', 2, '2024-10-23 21:05:34.000000', 1),
(152, 'Aubrey', 'Campbell', 'SID218', '18', 'REG218', '2014-06-06', 'aubrey.campbell218@example.com', '0123456818', '118 Main St', 'Father Campbell', 'Mother Campbell', 'Guardian Campbell', 2, '2024-10-23 21:05:34.000000', 1),
(153, 'Gabriel', 'Carter', 'SID219', '19', 'REG219', '2014-07-07', 'gabriel.carter219@example.com', '0123456819', '119 Main St', 'Father Carter', 'Mother Carter', 'Guardian Carter', 2, '2024-10-23 21:05:34.000000', 1),
(154, 'Hannah', 'Roberts', 'SID220', '20', 'REG220', '2014-08-08', 'hannah.roberts220@example.com', '0123456820', '120 Main St', 'Father Roberts', 'Mother Roberts', 'Guardian Roberts', 2, '2024-10-23 21:05:34.000000', 1),
(155, 'Zoe', 'Thompson', 'SID250', '50', 'REG250', '2015-10-10', 'zoe.thompson250@example.com', '0123456850', '150 Main St', 'Father Thompson', 'Mother Thompson', 'Guardian Thompson', 2, '2024-10-23 21:05:34.000000', 1);

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
  ADD UNIQUE KEY `reg_no` (`reg_no`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `student_id` (`student_id`),
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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

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
