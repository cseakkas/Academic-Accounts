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
-- Table structure for table `financeapp_chartofaccounts`
--

CREATE TABLE `financeapp_chartofaccounts` (
  `id` int(11) NOT NULL,
  `head_code` varchar(30) NOT NULL,
  `sl_number` int(11) NOT NULL,
  `account_type` varchar(30) NOT NULL,
  `account_name` varchar(90) NOT NULL,
  `account_group` varchar(60) NOT NULL,
  `insert_date` datetime(6) NOT NULL,
  `last_update` datetime(6) NOT NULL,
  `insert_by` int(11) NOT NULL,
  `update_by` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sub_account_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `financeapp_chartofaccounts`
--

INSERT INTO `financeapp_chartofaccounts` (`id`, `head_code`, `sl_number`, `account_type`, `account_name`, `account_group`, `insert_date`, `last_update`, `insert_by`, `update_by`, `status`, `sub_account_type_id`) VALUES
(12, 'A001', 1, 'Assets', 'Cash in Hand', 'NON OPERATING', '2022-03-29 05:35:27.384531', '2022-03-29 05:35:27.384550', 1992, 0, 1, 3),
(13, 'I001', 1, 'Income', 'Fee Collection of Students', 'OPERATING', '2022-03-29 05:37:53.100750', '2022-03-29 05:37:53.100771', 0, 0, 1, 1),
(14, 'E001', 1, 'Expenses', 'Salary & bonus', 'OPERATING', '2022-03-29 05:41:37.484393', '2022-03-29 05:41:37.484414', 0, 1992, 1, 1),
(15, 'E002', 2, 'Expenses', 'Entertainment', 'OPERATING', '2022-03-29 05:45:15.362541', '2022-03-29 05:45:15.362562', 1992, 0, 1, 1),
(16, 'E003', 3, 'Expenses', 'Office Stationery', 'OPERATING', '2022-03-29 05:45:56.528596', '2022-03-29 05:45:56.528617', 1992, 0, 1, 1),
(17, 'E004', 4, 'Expenses', 'Advertising and promotion', 'OPERATING', '2022-03-29 05:46:54.795439', '2022-03-29 05:46:54.795456', 1992, 0, 1, 1),
(18, 'E005', 5, 'Expenses', ' Newspaper bill', 'OPERATING', '2022-03-29 05:47:50.238043', '2022-03-29 05:47:50.238065', 1992, 0, 1, 1),
(19, 'E006', 6, 'Expenses', 'Publishing', 'OPERATING', '2022-03-29 05:48:42.429598', '2022-03-29 05:48:42.429629', 1992, 0, 1, 1),
(20, 'E007', 7, 'Expenses', 'Electricity bill', 'OPERATING', '2022-03-29 05:49:48.188776', '2022-03-29 05:49:48.188798', 1992, 0, 1, 1),
(21, 'E008', 8, 'Expenses', 'Mobile Bill', 'OPERATING', '2022-03-29 05:50:49.921158', '2022-03-29 05:50:49.921179', 1992, 0, 1, 1),
(22, 'E009', 9, 'Expenses', 'Repair of parts', 'OPERATING', '2022-03-29 05:52:47.251762', '2022-03-29 05:52:47.251795', 1992, 0, 1, 1),
(23, 'E010', 10, 'Expenses', 'Motorbike Fuel', 'OPERATING', '2022-03-29 05:54:38.226569', '2022-03-29 05:54:38.226587', 1992, 0, 1, 1),
(24, 'E011', 11, 'Expenses', 'Parent assembly', 'OPERATING', '2022-03-29 05:56:04.172496', '2022-03-29 05:56:04.172517', 1992, 0, 1, 1),
(25, 'E012', 12, 'Expenses', 'Miscellaneous Expense', 'OPERATING', '2022-03-29 05:57:23.316531', '2022-03-29 05:57:23.316551', 1992, 0, 1, 1),
(26, 'E013', 13, 'Expenses', 'Cultural Program ', 'OPERATING', '2022-03-29 05:58:28.341351', '2022-03-29 05:58:28.341368', 1992, 0, 1, 1),
(27, 'E014', 14, 'Expenses', 'Board Fee', 'OPERATING', '2022-03-29 05:59:26.106428', '2022-03-29 05:59:26.106446', 1992, 0, 1, 1),
(28, 'E015', 15, 'Expenses', 'Annual sports ', 'OPERATING', '2022-03-29 06:01:03.305825', '2022-03-29 06:01:03.305842', 1992, 0, 1, 1),
(29, 'E016', 16, 'Expenses', 'Software bill', 'OPERATING', '2022-03-29 06:18:30.821491', '2022-03-29 06:18:30.821529', 1992, 0, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `financeapp_chartofaccounts`
--
ALTER TABLE `financeapp_chartofaccounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `financeapp_chartofaccounts_head_code_30197e10_uniq` (`head_code`),
  ADD KEY `financeapp_chartofac_sub_account_type_id_14fab93b_fk_financeap` (`sub_account_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `financeapp_chartofaccounts`
--
ALTER TABLE `financeapp_chartofaccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `financeapp_chartofaccounts`
--
ALTER TABLE `financeapp_chartofaccounts`
  ADD CONSTRAINT `financeapp_chartofac_sub_account_type_id_14fab93b_fk_financeap` FOREIGN KEY (`sub_account_type_id`) REFERENCES `financeapp_subaccounttype` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
