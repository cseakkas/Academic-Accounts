-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2024 at 07:37 PM
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
-- Table structure for table `financeapp_collectedfee`
--

CREATE TABLE `financeapp_collectedfee` (
  `id` int(11) NOT NULL,
  `money_receipt` bigint(20) NOT NULL,
  `exam_paid_amount` double NOT NULL,
  `receive_type` varchar(2) NOT NULL,
  `cheque_number` varchar(15) NOT NULL,
  `reference_number` varchar(20) NOT NULL,
  `paid_amount` double NOT NULL,
  `collection_date` date NOT NULL,
  `insert_date` datetime(6) NOT NULL,
  `last_update` datetime(6) NOT NULL,
  `insert_by` int(11) NOT NULL,
  `update_by` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `class_name_id` int(11) NOT NULL,
  `employee_name_id` int(11) NOT NULL,
  `exam_name_id` int(11) DEFAULT NULL,
  `fee_type_id` int(11) NOT NULL,
  `shift_name_id` int(11) NOT NULL,
  `stid_id` int(11) NOT NULL,
  `version_name_id` int(11) NOT NULL,
  `year_id` int(11) NOT NULL,
  `group_type_id` int(11) DEFAULT NULL,
  `installment_name_id` int(11) DEFAULT NULL,
  `installment_paid_amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `financeapp_collectedfee`
--

INSERT INTO `financeapp_collectedfee` (`id`, `money_receipt`, `exam_paid_amount`, `receive_type`, `cheque_number`, `reference_number`, `paid_amount`, `collection_date`, `insert_date`, `last_update`, `insert_by`, `update_by`, `status`, `class_name_id`, `employee_name_id`, `exam_name_id`, `fee_type_id`, `shift_name_id`, `stid_id`, `version_name_id`, `year_id`, `group_type_id`, `installment_name_id`, `installment_paid_amount`) VALUES
(70, 116, 0, '1', '', '', 3000, '2022-11-13', '2022-11-13 10:59:13.182066', '2022-11-13 10:59:13.182087', 0, 0, 1, 26, 1, NULL, 1, 1, 1, 1, 1, NULL, NULL, 0),
(71, 116, 0, '1', '', '', 200, '2022-11-13', '2022-11-13 10:59:13.483079', '2022-11-13 10:59:13.483096', 0, 0, 1, 26, 1, NULL, 6, 1, 1, 1, 1, NULL, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `financeapp_collectedfee`
--
ALTER TABLE `financeapp_collectedfee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `financeapp_collected_class_name_id_d8c4f061_fk_settingsa` (`class_name_id`),
  ADD KEY `financeapp_collected_employee_name_id_0ee09776_fk_employeea` (`employee_name_id`),
  ADD KEY `financeapp_collected_exam_name_id_f7005f6f_fk_settingsa` (`exam_name_id`),
  ADD KEY `financeapp_collected_fee_type_id_7723083a_fk_financeap` (`fee_type_id`),
  ADD KEY `financeapp_collected_shift_name_id_09f8e92f_fk_settingsa` (`shift_name_id`),
  ADD KEY `financeapp_collected_stid_id_c6be7925_fk_studentap` (`stid_id`),
  ADD KEY `financeapp_collected_version_name_id_2933c726_fk_settingsa` (`version_name_id`),
  ADD KEY `financeapp_collectedfee_year_id_7c4aaf21_fk_settingsapp_years_id` (`year_id`),
  ADD KEY `financeapp_collected_installment_name_id_1d0be157_fk_financeap` (`installment_name_id`),
  ADD KEY `financeapp_collected_group_type_id_55ff084e_fk_settingsa` (`group_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `financeapp_collectedfee`
--
ALTER TABLE `financeapp_collectedfee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
