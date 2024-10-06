-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2024 at 07:29 PM
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
-- Database: `school_erp_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `financeapp_feetypes`
--

CREATE TABLE `financeapp_feetypes` (
  `id` int(11) NOT NULL,
  `fee_type` varchar(50) NOT NULL,
  `insert_date` datetime(6) NOT NULL,
  `last_update` datetime(6) NOT NULL,
  `insert_by` int(11) NOT NULL,
  `update_by` int(11) NOT NULL,
  `is_transport` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `fee_group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `financeapp_feetypes`
--

INSERT INTO `financeapp_feetypes` (`id`, `fee_type`, `insert_date`, `last_update`, `insert_by`, `update_by`, `is_transport`, `status`, `fee_group_id`) VALUES
(1, 'Admission Fee', '2021-12-14 05:26:58.268804', '2021-12-14 05:26:58.268897', 1992, 0, 0, 1, NULL),
(2, 'Advance', '2021-12-14 05:26:58.274423', '2021-12-14 05:26:58.274507', 0, 0, 0, 1, NULL),
(3, 'Fine', '2021-12-14 05:26:58.279416', '2021-12-14 05:26:58.279499', 0, 0, 0, 1, NULL),
(4, 'Session Fee', '2021-12-14 05:27:13.792328', '2021-12-14 05:27:13.792430', 1992, 0, 0, 1, NULL),
(5, 'Tuition Fee January', '2021-12-14 05:27:25.116359', '2021-12-14 05:27:25.116380', 1992, 1992, 0, 1, NULL),
(6, 'Tuition Fee February', '2022-04-06 07:02:17.297872', '2022-04-06 07:02:17.297891', 1992, 0, 0, 1, NULL),
(7, 'Tuition Fee March', '2022-04-06 07:02:28.449888', '2022-04-06 07:02:28.449909', 1992, 0, 0, 1, NULL),
(8, 'Tuition Fee April', '2022-04-06 07:02:39.500066', '2022-04-06 07:02:39.500085', 1992, 0, 0, 1, NULL),
(9, 'Tuition Fee May', '2022-04-06 07:02:52.069928', '2022-04-06 07:02:52.069950', 1992, 0, 0, 1, NULL),
(10, 'Tuition Fee Jun', '2022-04-06 07:03:05.569696', '2022-04-06 07:03:05.569717', 1992, 0, 0, 1, NULL),
(11, 'Tuition Fee July', '2022-04-06 07:03:14.929577', '2022-04-06 07:03:14.929596', 1992, 0, 0, 1, NULL),
(12, 'Tuition Fee August', '2022-04-06 07:03:55.688231', '2022-04-06 07:03:55.688249', 1992, 0, 0, 1, NULL),
(13, 'Tuition Fee September', '2022-04-06 07:04:21.542279', '2022-04-06 07:04:21.542299', 1992, 0, 0, 1, NULL),
(14, 'Tuition Fee October', '2022-04-06 07:04:39.678347', '2022-04-06 07:04:39.678368', 1992, 0, 0, 1, NULL),
(15, 'Tuition Fee November', '2022-04-06 07:05:02.412020', '2022-04-06 07:05:02.412055', 1992, 0, 0, 1, NULL),
(16, 'Tuition Fee December', '2022-04-06 07:05:26.538519', '2022-04-06 07:05:26.538541', 1992, 0, 0, 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `financeapp_feetypes`
--
ALTER TABLE `financeapp_feetypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fee_type` (`fee_type`),
  ADD KEY `financeapp_feetypes_fee_group_id_2e81e50c_fk_financeap` (`fee_group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `financeapp_feetypes`
--
ALTER TABLE `financeapp_feetypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
