-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2024 at 07:30 PM
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
-- Table structure for table `financeapp_classwisefeesetup`
--

CREATE TABLE `financeapp_classwisefeesetup` (
  `id` int(11) NOT NULL,
  `applied_to` varchar(15) NOT NULL,
  `fee_amount` double NOT NULL,
  `late_amount` double NOT NULL,
  `fee_priority` int(11) NOT NULL,
  `fee_percent` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `insert_date` datetime(6) NOT NULL,
  `last_update` datetime(6) NOT NULL,
  `insert_by` int(11) NOT NULL,
  `update_by` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `class_name_id` int(11) NOT NULL,
  `fee_type_id` int(11) NOT NULL,
  `shift_name_id` int(11) NOT NULL,
  `version_name_id` int(11) NOT NULL,
  `year_id` int(11) NOT NULL,
  `group_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `financeapp_classwisefeesetup`
--

INSERT INTO `financeapp_classwisefeesetup` (`id`, `applied_to`, `fee_amount`, `late_amount`, `fee_priority`, `fee_percent`, `start_date`, `end_date`, `insert_date`, `last_update`, `insert_by`, `update_by`, `status`, `class_name_id`, `fee_type_id`, `shift_name_id`, `version_name_id`, `year_id`, `group_type_id`) VALUES
(16, 'all_st', 5000, 0, 1, 100, '2022-11-13', '2022-11-13', '2022-11-13 10:57:00.061469', '2022-11-13 10:57:00.061490', 0, 0, 1, 26, 1, 1, 1, 1, NULL),
(17, 'all_st', 0, 0, 100, 0, NULL, NULL, '2022-11-13 10:57:00.065094', '2022-11-13 10:57:00.065115', 0, 0, 1, 26, 2, 1, 1, 1, NULL),
(18, 'all_st', 0, 0, 101, 0, NULL, NULL, '2022-11-13 10:57:00.067361', '2022-11-13 10:57:00.067382', 0, 0, 1, 26, 3, 1, 1, 1, NULL),
(19, 'all_st', 200, 0, 1, 100, '2022-11-13', '2022-11-13', '2022-11-13 10:57:00.340055', '2022-11-13 10:57:00.340076', 0, 0, 1, 26, 4, 1, 1, 1, NULL),
(20, 'all_st', 200, 0, 1, 100, '2022-11-13', '2022-11-13', '2022-11-13 10:57:00.616310', '2022-11-13 10:57:00.616343', 0, 0, 1, 26, 5, 1, 1, 1, NULL),
(21, 'all_st', 200, 0, 1, 100, '2022-11-13', '2022-11-13', '2022-11-13 10:57:00.891941', '2022-11-13 10:57:00.891963', 0, 0, 1, 26, 6, 1, 1, 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `financeapp_classwisefeesetup`
--
ALTER TABLE `financeapp_classwisefeesetup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `financeapp_classwise_class_name_id_7d92cff1_fk_settingsa` (`class_name_id`),
  ADD KEY `financeapp_classwise_fee_type_id_101bcb7a_fk_financeap` (`fee_type_id`),
  ADD KEY `financeapp_classwise_shift_name_id_18b0164b_fk_settingsa` (`shift_name_id`),
  ADD KEY `financeapp_classwise_version_name_id_1276827c_fk_settingsa` (`version_name_id`),
  ADD KEY `financeapp_classwise_year_id_a3e6330f_fk_settingsa` (`year_id`),
  ADD KEY `financeapp_classwise_group_type_id_75aec8cd_fk_settingsa` (`group_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `financeapp_classwisefeesetup`
--
ALTER TABLE `financeapp_classwisefeesetup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `financeapp_classwisefeesetup`
--
ALTER TABLE `financeapp_classwisefeesetup`
  ADD CONSTRAINT `financeapp_classwise_class_name_id_7d92cff1_fk_settingsa` FOREIGN KEY (`class_name_id`) REFERENCES `settingsapp_classinfo` (`id`),
  ADD CONSTRAINT `financeapp_classwise_fee_type_id_101bcb7a_fk_financeap` FOREIGN KEY (`fee_type_id`) REFERENCES `financeapp_feetypes` (`id`),
  ADD CONSTRAINT `financeapp_classwise_group_type_id_75aec8cd_fk_settingsa` FOREIGN KEY (`group_type_id`) REFERENCES `settingsapp_grouptypelist` (`id`),
  ADD CONSTRAINT `financeapp_classwise_shift_name_id_18b0164b_fk_settingsa` FOREIGN KEY (`shift_name_id`) REFERENCES `settingsapp_shift` (`id`),
  ADD CONSTRAINT `financeapp_classwise_version_name_id_1276827c_fk_settingsa` FOREIGN KEY (`version_name_id`) REFERENCES `settingsapp_schoolversion` (`id`),
  ADD CONSTRAINT `financeapp_classwise_year_id_a3e6330f_fk_settingsa` FOREIGN KEY (`year_id`) REFERENCES `settingsapp_years` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
