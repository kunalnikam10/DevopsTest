-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2022 at 05:17 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendancesys`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `emailAddress` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`Id`, `firstName`, `lastName`, `emailAddress`, `password`) VALUES
(1, 'Admin', '', 'admin@mail.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `tblattendance`
--

CREATE TABLE `tblattendance` (
  `Id` int(10) NOT NULL,
  `admissionNo` varchar(255) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmId` varchar(10) NOT NULL,
  `sessionTermId` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `dateTimeTaken` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblattendance`
--

INSERT INTO `tblattendance` (`Id`, `admissionNo`, `classId`, `classArmId`, `sessionTermId`, `status`, `dateTimeTaken`) VALUES
(220, '08', '7', '10', '11', '1', '17-09-2022'),
(219, '05', '7', '10', '11', '1', '17-09-2022'),
(206, '41', '7', '9', '4', '1', '2022-09-17'),
(207, '57', '7', '9', '4', '1', '2022-09-17'),
(208, '48', '7', '9', '4', '1', '2022-09-17'),
(218, '67', '7', '10', '11', '1', '17-09-2022'),
(215, '41', '7', '9', '11', '1', '17-09-2022'),
(216, '57', '7', '9', '11', '1', '17-09-2022'),
(217, '48', '7', '9', '11', '1', '17-09-2022'),
(221, '67', '7', '10', '1', '1', '18-09-2022'),
(222, '05', '7', '10', '1', '0', '18-09-2022'),
(223, '08', '7', '10', '1', '1', '18-09-2022'),
(224, '67', '7', '10', '11', '1', '2022-09-18'),
(225, '05', '7', '10', '11', '0', '2022-09-18'),
(226, '08', '7', '10', '11', '1', '2022-09-18'),
(235, '48', '7', '9', '11', '1', '2022-09-18'),
(234, '57', '7', '9', '11', '1', '2022-09-18'),
(233, '41', '7', '9', '11', '1', '2022-09-18'),
(236, '43', '7', '9', '11', '1', '2022-09-18'),
(237, '35', '8', '11', '11', '1', '2022-09-18'),
(238, '52', '8', '11', '11', '1', '2022-09-18'),
(239, '35', '8', '11', '11', '0', '2022-09-19'),
(240, '52', '8', '11', '11', '1', '2022-09-19'),
(241, '41', '7', '9', '11', '1', '2022-10-07'),
(242, '57', '7', '9', '11', '1', '2022-10-07'),
(299, '67', '7', '9', '11', '0', '2022-10-30'),
(298, '43', '7', '9', '11', '0', '2022-10-30'),
(297, '48', '7', '9', '11', '1', '2022-10-30'),
(296, '57', '7', '9', '11', '1', '2022-10-30'),
(295, '41', '7', '9', '11', '1', '2022-10-30'),
(294, '67', '7', '9', '11', '0', '2022-10-11'),
(293, '43', '7', '9', '11', '0', '2022-10-11'),
(292, '48', '7', '9', '11', '1', '2022-10-11'),
(291, '57', '7', '9', '11', '1', '2022-10-11'),
(290, '41', '7', '9', '11', '1', '2022-10-11');

-- --------------------------------------------------------

--
-- Table structure for table `tblclass`
--

CREATE TABLE `tblclass` (
  `Id` int(10) NOT NULL,
  `className` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclass`
--

INSERT INTO `tblclass` (`Id`, `className`) VALUES
(8, 'SE'),
(7, 'TE'),
(9, 'BE');

-- --------------------------------------------------------

--
-- Table structure for table `tblclassarms`
--

CREATE TABLE `tblclassarms` (
  `Id` int(10) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmName` varchar(255) NOT NULL,
  `isAssigned` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclassarms`
--

INSERT INTO `tblclassarms` (`Id`, `classId`, `classArmName`, `isAssigned`) VALUES
(11, '7', 'SE', '0'),
(10, '7', 'CNS', '1'),
(9, '7', 'IP', '1'),
(12, '8', 'DSA', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tblclassteacher`
--

CREATE TABLE `tblclassteacher` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phoneNo` varchar(50) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmId` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclassteacher`
--

INSERT INTO `tblclassteacher` (`Id`, `firstName`, `lastName`, `emailAddress`, `password`, `phoneNo`, `classId`, `classArmId`, `dateCreated`) VALUES
(9, 'Aditi', 'Menon', 'aditi@mail.com', 'aditi123', '7236391272', '7', '9', '2022-09-17'),
(10, 'Rohan', 'Kadam', 'rohan@mail.com', 'rohan123', '8946446338', '7', '10', '2022-09-17');

-- --------------------------------------------------------

--
-- Table structure for table `tblsessionterm`
--

CREATE TABLE `tblsessionterm` (
  `Id` int(10) NOT NULL,
  `sessionName` varchar(50) NOT NULL,
  `termId` varchar(50) NOT NULL,
  `isActive` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsessionterm`
--

INSERT INTO `tblsessionterm` (`Id`, `sessionName`, `termId`, `isActive`, `dateCreated`) VALUES
(11, '2022/2023', '1', '1', '2022-09-17'),
(10, '2022/2023', '2', '0', '2022-09-17');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `otherName` varchar(255) NOT NULL,
  `admissionNumber` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmId` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`Id`, `firstName`, `lastName`, `otherName`, `admissionNumber`, `password`, `classId`, `classArmId`, `dateCreated`) VALUES
(24, 'Chitra', 'Chirag', 'Nair', '40', '12345', '7', '10', '2022-09-17'),
(19, 'Chitra', 'Chirag', 'Nair', '41', '12345', '7', '9', '2022-09-17'),
(20, 'Abhishek', 'Prabhu', 'Raman', '57', '12345', '7', '9', '2022-09-17'),
(21, 'Kusum', 'Himesh', 'Baria', '48', '12345', '7', '9', '2022-09-17'),
(22, 'Abhishek', 'Prabhu', 'Raman', '56', '12345', '7', '10', '2022-09-17'),
(23, 'Kusum', 'Himesh', 'Baria', '47', '12345', '7', '10', '2022-09-17'),
(25, 'Kartik', 'Mohan', 'Bhagat', '43', '12345', '7', '9', '18-09-2022'),
(26, 'Abhishek', 'Prabhu', 'Raman', '55', '12345', '7', '11', '18-09-2022'),
(27, 'Kusum', 'Himesh', 'Baria', '50', '12345', '7', '11', '18-09-2022'),
(13, 'Tejas', 'Sanjay', 'Sawant', '54', '12345', '7', '11', '18-09-2022'),
(28, 'Gaurav', 'Ganesh', 'Nori', '67', '12345', '7', '9', '10-10-2022');

-- --------------------------------------------------------

--
-- Table structure for table `tblterm`
--

CREATE TABLE `tblterm` (
  `Id` int(10) NOT NULL,
  `termName` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblterm`
--

INSERT INTO `tblterm` (`Id`, `termName`) VALUES
(1, 'Fifth'),
(2, 'Sixth');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblattendance`
--
ALTER TABLE `tblattendance`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblclass`
--
ALTER TABLE `tblclass`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblclassarms`
--
ALTER TABLE `tblclassarms`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblclassteacher`
--
ALTER TABLE `tblclassteacher`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblsessionterm`
--
ALTER TABLE `tblsessionterm`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblterm`
--
ALTER TABLE `tblterm`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblattendance`
--
ALTER TABLE `tblattendance`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;

--
-- AUTO_INCREMENT for table `tblclass`
--
ALTER TABLE `tblclass`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblclassarms`
--
ALTER TABLE `tblclassarms`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblclassteacher`
--
ALTER TABLE `tblclassteacher`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblsessionterm`
--
ALTER TABLE `tblsessionterm`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tblterm`
--
ALTER TABLE `tblterm`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
