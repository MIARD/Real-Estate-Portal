-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2020 at 09:25 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realstate`
--
CREATE DATABASE IF NOT EXISTS `realstate` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `realstate`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_id` int(100) NOT NULL,
  `User_name` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Current_address` varchar(50) NOT NULL,
  `Home_address` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Mobile_Number` varchar(15) NOT NULL,
  `password` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_id`, `User_name`, `Name`, `Gender`, `Current_address`, `Home_address`, `Email`, `Mobile_Number`, `password`) VALUES
(0, 'root', '', '', '', '', 'minhajul@g.bracu.ac.bd', '018', 'root'),
(1, '', '', '', '', '', 'abedin@gmail.com', '016', ''),
(12347326, 'Minhajul', 'Minhajul Abedin', 'Male', 'Brac University,Mohakhali,Dhaka', 'West Gomdandi, Boalkhali, Chittagong', 'minhajul.abedin@g.bracu.ac.bd', '01839694235', 'minhajul');

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `Advertisement_id` int(100) NOT NULL,
  `User_id` int(100) NOT NULL,
  `p_id` int(100) NOT NULL,
  `publish_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`Advertisement_id`, `User_id`, `p_id`, `publish_date`) VALUES
(323, 1111, 43443, '2020-09-24 01:10:30'),
(343, 1222, 454348, '2020-09-24 01:14:02'),
(456, 14343, 454355, '2020-09-24 01:14:02'),
(1004, 100024, 454350, '2020-09-15 16:10:54'),
(1005, 1222, 454358, '2020-09-18 23:00:03'),
(1006, 14343, 454359, '2020-09-18 23:03:50'),
(1007, 32434, 454360, '2020-09-18 23:53:36'),
(343432, 1221, 454345, '2020-09-24 01:10:30');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_sl` int(100) NOT NULL,
  `User_id` int(100) NOT NULL,
  `P_id` int(100) NOT NULL,
  `book_date` datetime DEFAULT current_timestamp(),
  `Expery_date` date NOT NULL,
  `CCN` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `Pin` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_sl`, `User_id`, `P_id`, `book_date`, `Expery_date`, `CCN`, `Pin`) VALUES
(1010, 14343, 3543, '2020-09-16 03:28:41', '0000-00-00', '213', '2342'),
(1011, 1221, 35325, '2020-09-16 03:28:41', '0000-00-00', '34332', '2333'),
(1212, 32434, 454357, '2020-09-24 01:07:35', '0000-00-00', '123432', '123'),
(4354, 1111, 454351, '2020-09-24 01:07:35', '0000-00-00', '3432', '2343'),
(12324, 1221, 3554, '2020-09-24 00:59:43', '0000-00-00', '345234', '4543');

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

CREATE TABLE `enquiries` (
  `Enquiry_number` int(100) NOT NULL,
  `User_id` int(100) NOT NULL,
  `P_id` int(100) NOT NULL,
  `Message` varchar(200) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `received_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enquiries`
--

INSERT INTO `enquiries` (`Enquiry_number`, `User_id`, `P_id`, `Message`, `Type`, `received_time`) VALUES
(4, 32434, 32545, 'I need more details about this property.', 'Buy', '2020-09-15 21:31:44'),
(6, 14343, 454349, 'Can we meet to discuss about the property.', 'Rent', '2020-09-15 21:31:44'),
(7, 14343, 454345, 'how long I can rent this property?', 'Rent', '2020-09-15 21:31:44'),
(8, 32434, 32545, 'I need more details about this property.', 'Buy', '2020-09-15 21:31:44');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `p_id` int(100) NOT NULL,
  `location` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`p_id`, `location`, `price`, `size`, `Status`) VALUES
(3543, 'Chorkidirpur', 3455, 100, 'Sold'),
(3554, 'west gomdandi', 2000, 200, 'sold'),
(32545, 'Mohakali', 100000, 100, 'In Rent'),
(35325, 'Uttara', 23453, 320, 'In Rent'),
(43443, 'jamadarhat', 24342, 243, 'For sold or rent'),
(454345, 'Dhanmondi', 234345, 100, 'For sold'),
(454348, 'Firm Gate', 13434, 2432, 'For rent'),
(454349, 'Firm Gate', 13434, 2432, 'For sold or ren'),
(454350, 'Firm Gate', 1343, 34223, 'For rent'),
(454351, 'Batiari', 123424, 3234, 'Sold'),
(454355, 'Batiari', 123424, 3234, 'For sold or rent'),
(454357, 'batiari', 2345435, 132, 'Sold'),
(454358, 'Hathirzil', 1234, 243, 'For Sold'),
(454359, 'Uttara', 234243, 23423, 'For rent'),
(454360, 'Faridpur', 1234, 234, 'For sold or rent');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_id` int(100) NOT NULL,
  `User_name` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Current_address` varchar(50) NOT NULL,
  `Home_Address` varchar(50) NOT NULL,
  `Mobile_Number` varchar(15) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `password` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_id`, `User_name`, `Name`, `Gender`, `Current_address`, `Home_Address`, `Mobile_Number`, `Email`, `password`) VALUES
(1111, 'Anika', 'Anika Faiza', 'Female', 'Palbari, jessoure', 'Kuet, Khulna', '01624674674', 'shoily@gmail.com', '1234'),
(1221, 'Rizbi', 'Mohammed Rizbi', 'male', 'Dhanmondi, Dhaka', 'Uttara, Dhaka', '01839694234', 'mohammedrizbi@gmail.com', 'rizbi'),
(1222, 'Irfan', 'Irfan Hossain', 'male', 'Al kharij, Riyadh, KSA', 'Khadurkil, Boalkhali,Chittagong', '01830364420', 'irfan_hossain@gmail.com', 'irfan'),
(14343, 'Ishmam', 'Ishmam Abedin', 'Male', 'Mohakali,Dhaka', 'Ramo,Cox\'s Bazar', '01845634756', 'ismam@yahoo.com', '12345'),
(32434, 'Rishad', 'rishad', 'Male', '', 'Boalkhali,Chittagong', '01624674673', 'rishad@gmail.com', 'rishad'),
(100024, 'Riyadh', 'Riyadh', 'Male', '', 'WestGomdandi,Chittagong', '01871386533', 'mohammedh.riyadh@gmail.com', 'riyadh'),
(100025, 'Minhajul', 'mihajul', 'Male', '', 'Mohakali,Dhaka', '018383843', 'noone@gmail.com', 'riyadh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_id`),
  ADD UNIQUE KEY `User_name` (`User_name`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`Advertisement_id`),
  ADD UNIQUE KEY `p_id` (`p_id`),
  ADD KEY `User_id` (`User_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_sl`),
  ADD UNIQUE KEY `P_id` (`P_id`),
  ADD KEY `User_id` (`User_id`);

--
-- Indexes for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD PRIMARY KEY (`Enquiry_number`),
  ADD KEY `P_id` (`P_id`),
  ADD KEY `User_id` (`User_id`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_id`),
  ADD UNIQUE KEY `User_name` (`User_name`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Admin_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12347333;

--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `Advertisement_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=343433;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_sl` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12325;

--
-- AUTO_INCREMENT for table `enquiries`
--
ALTER TABLE `enquiries`
  MODIFY `Enquiry_number` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `p_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=454361;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100026;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD CONSTRAINT `advertisement_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `user` (`User_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `advertisement_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `property` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`P_id`) REFERENCES `property` (`p_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `book_ibfk_2` FOREIGN KEY (`User_id`) REFERENCES `user` (`User_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD CONSTRAINT `enquiries_ibfk_1` FOREIGN KEY (`P_id`) REFERENCES `property` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `enquiries_ibfk_2` FOREIGN KEY (`User_id`) REFERENCES `user` (`User_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
