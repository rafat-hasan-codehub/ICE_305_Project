-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2022 at 04:23 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bnkms`
--

-- --------------------------------------------------------

--
-- Table structure for table `atm`
--

CREATE TABLE `atm` (
  `id` int(10) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `account_no` int(10) NOT NULL,
  `atm_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `atm`
--

INSERT INTO `atm` (`id`, `cust_name`, `account_no`, `atm_status`) VALUES
(15, 'Demo Name', 696969, 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `bank_customers`
--

CREATE TABLE `bank_customers` (
  `Id` int(100) NOT NULL,
  `Username` varchar(20) DEFAULT NULL,
  `Password` varchar(15) DEFAULT NULL,
  `Customer_Photo` longblob DEFAULT NULL,
  `Photo_name` varchar(500) DEFAULT NULL,
  `Customer_ID` varchar(20) DEFAULT NULL,
  `Gender` varchar(10) NOT NULL,
  `Landline_no` varchar(10) NOT NULL,
  `Home_Addr` varchar(100) NOT NULL,
  `Office_Addr` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `State` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `Pin_code` varchar(255) NOT NULL,
  `Account_no` varchar(20) DEFAULT NULL,
  `Branch` varchar(50) DEFAULT NULL,
  `IFSC_Code` varchar(50) DEFAULT NULL,
  `PAN` varchar(10) DEFAULT NULL,
  `CITIZENSHIP` varchar(50) DEFAULT NULL,
  `Current_Balance` float(100,2) DEFAULT NULL,
  `LastTransaction` int(20) DEFAULT 0,
  `Mobile_no` varchar(20) DEFAULT NULL,
  `Email_ID` varchar(50) DEFAULT 'Nil',
  `Debit_Card_No` varchar(50) DEFAULT NULL,
  `Debit_Card_Pin` int(4) DEFAULT NULL,
  `CVV` int(3) DEFAULT NULL,
  `DOB` varchar(20) DEFAULT NULL,
  `Area_Loc` varchar(255) DEFAULT NULL,
  `Nominee_name` varchar(255) DEFAULT NULL,
  `Nominee_ac_no` varchar(255) DEFAULT NULL,
  `Last_Login` varchar(50) DEFAULT NULL,
  `Ac_Opening_Date` varchar(255) DEFAULT NULL,
  `Account_Status` varchar(10) NOT NULL,
  `Account_type` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_customers`
--

INSERT INTO `bank_customers` (`Id`, `Username`, `Password`, `Customer_Photo`, `Photo_name`, `Customer_ID`, `Gender`, `Landline_no`, `Home_Addr`, `Office_Addr`, `Country`, `State`, `City`, `Pin_code`, `Account_no`, `Branch`, `IFSC_Code`, `PAN`, `CITIZENSHIP`, `Current_Balance`, `LastTransaction`, `Mobile_no`, `Email_ID`, `Debit_Card_No`, `Debit_Card_Pin`, `CVV`, `DOB`, `Area_Loc`, `Nominee_name`, `Nominee_ac_no`, `Last_Login`, `Ac_Opening_Date`, `Account_Status`, `Account_type`) VALUES
(14, 'Musfiqur Rahim', 'password', NULL, NULL, '1011399', 'Male', '027654389', 'House no:07,Road Number:10,Block:d,Meradia', 'Vuiapara,dhaka', 'BD', 'Dhaka', 'Dhaka', '3456', '1011461011399', 'Demo Branch ', '1011', '863-23-987', '9442646757', 1950.00, 0, '1765432798', 'sfiq345@gmail.com', '421382092025', 7551, NULL, '1993-06-07', 'Rampura', 'Rafat', '', '11/01/22 04:51:50 PM', '11/01/22 04:43:05 PM', 'ACTIVE', 'Current'),
(13, 'Fazle Rabbi', 'password', NULL, NULL, '1011678', 'Male', '029364586', 'House no:27,Road Number:10,Block:d,Jamgora', 'Lotpura,Dhaka', 'BD', 'Dhaka', 'Dhaka', '1234', '1011781011678', 'Demo Branch ', '1011', '723-23-987', '9162783456', 6050.00, 0, '1692735498', 'mun3455@gmail.com', '421314124930', 3971, NULL, '1995-09-30', 'Rampura', 'none', 'none', '11/01/22 02:06:37 AM', '11/01/22 02:29:53 AM', 'ACTIVE', 'Saving'),
(12, 'Alid Hasan', 'password', NULL, NULL, '1011788', 'Male', '01010', '23, Jurain', '', 'US', 'California', 'Sitka', '1010', '1011261011788', 'Demo Branch ', '1011', '101010', '30102445', 14020.00, 0, '1408192861', 'alid@gmail.com', '421391784739', 3346, NULL, '2000-10-13', 'Sitka', 'Khalid', '10225781', '11/01/22 02:09:40 AM', '10/01/22 02:29:36 AM', 'ACTIVE', 'Current');

-- --------------------------------------------------------

--
-- Table structure for table `bank_staff`
--

CREATE TABLE `bank_staff` (
  `Id` int(255) NOT NULL,
  `staff_name` varchar(50) DEFAULT NULL,
  `staff_id` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Mobile_no` varchar(50) DEFAULT NULL,
  `Email_id` varchar(50) DEFAULT 'Nill',
  `Gender` varchar(50) DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL,
  `DOB` varchar(50) DEFAULT NULL,
  `CITIZENSHIP` varchar(50) DEFAULT NULL,
  `PAN` varchar(50) DEFAULT NULL,
  `Home_addr` varchar(50) DEFAULT NULL,
  `Last_login` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_staff`
--

INSERT INTO `bank_staff` (`Id`, `staff_name`, `staff_id`, `Password`, `Mobile_no`, `Email_id`, `Gender`, `Department`, `DOB`, `CITIZENSHIP`, `PAN`, `Home_addr`, `Last_login`) VALUES
(3, 'Khalid Hasan', '1002', 'password', '1869040413', 'khalid@gmail.com', 'Male', 'Revenue', '10/12/1997', '14569855', '379145632000', '100 Tangail', '11/01/22 12:13:50 AM'),
(4, 'Md Alid Hassan Sakib', '1003', 'password', '1559595517', 'sakib@gmail.com', 'Male', 'Revenue', '10/01/1997', '14569855', '379145632000', '607 Jurain', '11/01/22 12:14:07 AM'),
(5, 'Md Rafat Hasan', '1001', 'password', '1408192861', 'rafat@gmail.com', 'Male', 'Revenue', '13/10/1997', '14569855', '379145632000', '291 Shipaibag', '13/01/22 03:53:39 AM');

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary_1011399`
--

CREATE TABLE `beneficiary_1011399` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beneficiary_1011399`
--

INSERT INTO `beneficiary_1011399` (`id`, `Beneficiary_name`, `Beneficiary_ac_no`, `IFSC_code`, `Account_type`, `Status`, `Date_added`) VALUES
(1, 'Fazle Rabbi', '1011781011678', '1011', 'Saving', 'ACTIVE', '11/01/22 04:21:48 PM');

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary_1011678`
--

CREATE TABLE `beneficiary_1011678` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beneficiary_1011678`
--

INSERT INTO `beneficiary_1011678` (`id`, `Beneficiary_name`, `Beneficiary_ac_no`, `IFSC_code`, `Account_type`, `Status`, `Date_added`) VALUES
(1, 'Alid Hasan', '1011261011788', '1011', 'Saving', 'ACTIVE', '11/01/22 02:08:21 AM');

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary_1011779`
--

CREATE TABLE `beneficiary_1011779` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary_1011788`
--

CREATE TABLE `beneficiary_1011788` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cheque_book`
--

CREATE TABLE `cheque_book` (
  `id` int(10) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `account_no` int(10) NOT NULL,
  `cheque_book_status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cheque_book`
--

INSERT INTO `cheque_book` (`id`, `cust_name`, `account_no`, `cheque_book_status`) VALUES
(8, 'Thom Yorke', 960010101, 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `passbook_1011399`
--

CREATE TABLE `passbook_1011399` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passbook_1011399`
--

INSERT INTO `passbook_1011399` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '436416441', '11/01/22 04:43:05 PM', 'Account Opening', '0', '0', '0', NULL),
(2, '449483032', '11/01/22 04:51:01 PM', 'Cash Deposit/449483032', '5000', '0', '5000', 'Cash Deposit'),
(3, '710648933', '11/01/22 04:22:16 PM', 'Fazle Rabbi/1011781011678/1011', '0', '1050', '3950', 'none'),
(4, '469233499', '11/01/22 04:52:42 PM', 'Fazle Rabbi/1011781011678/1011', '0', '2000', '1950', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `passbook_1011678`
--

CREATE TABLE `passbook_1011678` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passbook_1011678`
--

INSERT INTO `passbook_1011678` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '343987536', '11/01/22 02:29:53 AM', 'Account Opening', '0', '0', '0', NULL),
(2, '992678419', '11/01/22 02:37:07 AM', 'Cash Deposit/992678419', '10000', '0', '10000', 'Cash Deposit'),
(3, '428148820', '11/01/22 02:09:06 AM', 'Alid Hasan/1011261011788/1011', '0', '3000', '7000', 'gift'),
(4, '710648933', '11/01/22 04:22:16 PM', 'Musfiqur Rahim/1011461011399/1011', '1050', '0', '8050', 'none'),
(5, '469233499', '11/01/22 04:52:42 PM', 'Musfiqur Rahim/1011461011399/1011', '2000', '0', '10050', 'none'),
(6, '892236254', '13/01/22 04:24:15 AM', 'Cash Deposit/892236254', '1000', '0', '11050', 'Cash Deposit'),
(7, '968193786', '13/01/22 03:55:53 AM', 'Alid Hasan/1011261011788/1011', '0', '5000', '6050', '');

-- --------------------------------------------------------

--
-- Table structure for table `passbook_1011779`
--

CREATE TABLE `passbook_1011779` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `passbook_1011788`
--

CREATE TABLE `passbook_1011788` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passbook_1011788`
--

INSERT INTO `passbook_1011788` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '111953448', '10/01/22 02:29:36 AM', 'Account Opening', '0', '0', '0', NULL),
(2, '388182689', '10/01/22 02:36:21 AM', 'Cash Deposit/388182689', '1000', '0', '1000', 'Cash Deposit'),
(3, '354534292', '10/01/22 04:52:02 PM', 'Cash Deposit/354534292', '5000', '0', '6000', 'Cash Deposit'),
(4, '112795715', '10/01/22 06:35:00 PM', 'Cash Deposit/112795715', '20', '0', '6020', 'Cash Deposit'),
(5, '428148820', '11/01/22 02:09:06 AM', 'Fazle Rabbi/1011781011678/1011', '3000', '0', '9020', 'gift'),
(6, '968193786', '13/01/22 03:55:53 AM', 'Fazle Rabbi/1011781011678/1011', '5000', '0', '14020', '');

-- --------------------------------------------------------

--
-- Table structure for table `pending_accounts`
--

CREATE TABLE `pending_accounts` (
  `Application_no` varchar(50) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `Mobile_no` varchar(50) DEFAULT NULL,
  `Email_id` varchar(50) DEFAULT 'Nil',
  `Landline_no` varchar(50) DEFAULT 'Nil',
  `DOB` varchar(50) DEFAULT NULL,
  `PAN` varchar(50) DEFAULT NULL,
  `CITIZENSHIP` varchar(50) DEFAULT NULL,
  `Home_Addr` varchar(100) DEFAULT NULL,
  `Office_Addr` varchar(100) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Pin` varchar(50) DEFAULT NULL,
  `Area_Loc` varchar(255) DEFAULT NULL,
  `Nominee_name` varchar(255) DEFAULT NULL,
  `Nominee_ac_no` varchar(255) DEFAULT NULL,
  `Account_type` varchar(50) DEFAULT NULL,
  `Application_Date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atm`
--
ALTER TABLE `atm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_customers`
--
ALTER TABLE `bank_customers`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `bank_staff`
--
ALTER TABLE `bank_staff`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `beneficiary_1011399`
--
ALTER TABLE `beneficiary_1011399`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiary_1011678`
--
ALTER TABLE `beneficiary_1011678`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiary_1011779`
--
ALTER TABLE `beneficiary_1011779`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiary_1011788`
--
ALTER TABLE `beneficiary_1011788`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cheque_book`
--
ALTER TABLE `cheque_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbook_1011399`
--
ALTER TABLE `passbook_1011399`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbook_1011678`
--
ALTER TABLE `passbook_1011678`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbook_1011779`
--
ALTER TABLE `passbook_1011779`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbook_1011788`
--
ALTER TABLE `passbook_1011788`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pending_accounts`
--
ALTER TABLE `pending_accounts`
  ADD PRIMARY KEY (`Application_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atm`
--
ALTER TABLE `atm`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `bank_customers`
--
ALTER TABLE `bank_customers`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `bank_staff`
--
ALTER TABLE `bank_staff`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `beneficiary_1011399`
--
ALTER TABLE `beneficiary_1011399`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `beneficiary_1011678`
--
ALTER TABLE `beneficiary_1011678`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `beneficiary_1011779`
--
ALTER TABLE `beneficiary_1011779`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beneficiary_1011788`
--
ALTER TABLE `beneficiary_1011788`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cheque_book`
--
ALTER TABLE `cheque_book`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `passbook_1011399`
--
ALTER TABLE `passbook_1011399`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `passbook_1011678`
--
ALTER TABLE `passbook_1011678`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `passbook_1011779`
--
ALTER TABLE `passbook_1011779`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `passbook_1011788`
--
ALTER TABLE `passbook_1011788`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
