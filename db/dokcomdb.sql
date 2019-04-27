-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2019 at 05:01 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dokcomdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `AppointmentId` varchar(225) NOT NULL,
  `PatientId` varchar(225) NOT NULL,
  `StartDate` varchar(225) NOT NULL,
  `EndDate` varchar(225) NOT NULL,
  `FromTime` varchar(25) NOT NULL,
  `ToTime` varchar(25) NOT NULL,
  `Description` varchar(225) NOT NULL,
  `CreateUserId` varchar(225) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`AppointmentId`, `PatientId`, `StartDate`, `EndDate`, `FromTime`, `ToTime`, `Description`, `CreateUserId`, `CreateDate`, `ModifyUserId`, `ModifyDate`, `StatusId`) VALUES
('53820417-34cd-11e9-8a5d-f48e38e878a3', 'ceb9d536-f4d3-11e8-bc75-f48e38e878a3', '2018-12-1', '2018-12-1', '8:30', '10:30', 'Check Wound', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2018-11-30 21:35:43', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2018-11-30 21:35:43', 1),
('53839ca7-34cd-11e9-8a5d-f48e38e878a3', 'ceb9d536-f4d3-11e8-bc75-f48e38e878a3', '2018-11-23', '2018-11-23', '12:30', '14:30', 'Check Up ', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2018-11-23 10:30:37', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2018-11-23 10:30:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contactperson`
--

CREATE TABLE `contactperson` (
  `ContactPersonId` varchar(225) NOT NULL,
  `PatientId` varchar(225) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Relationship` varchar(50) NOT NULL,
  `CellNumber` varchar(15) NOT NULL,
  `CreateUserId` varchar(225) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `StatusId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactperson`
--

INSERT INTO `contactperson` (`ContactPersonId`, `PatientId`, `Name`, `Relationship`, `CellNumber`, `CreateUserId`, `CreateDate`, `ModifyUserId`, `ModifyDate`, `StatusId`) VALUES
('514b51ae-3a58-11e9-8de3-80fa5b45280e', 'ceb9d536-f4d3-11e8-bc75-f48e38e878a3', 'Bongani Mthembu', 'Father', '08253536168', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-02-27 08:24:20', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-02-27 08:24:20', 1),
('67d7b033-3a58-11e9-8de3-80fa5b45280e', 'ceb9d536-f4d3-11e8-bc75-f48e38e878a3', 'Bongani Mthembu', 'Father', '08253536168', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-02-27 08:24:58', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-02-27 08:24:58', 1),
('8f6be7d9-4c02-11e9-b0af-f48e38e878a3', '4e08589d-4c02-11e9-b0af-f48e38e878a3', 'Charles Motaung', 'Friend', '08346528123', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-21 19:55:49', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-21 19:55:49', 1),
('b5588cd0-3ac9-11e9-ab03-80fa5b45280e', '84289ca6-3ac7-11e9-ab03-80fa5b45280e', 'dsad', 'dsad', '212213213', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-02-27 21:56:01', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-02-27 21:56:01', 1),
('db12cd9d-3ac9-11e9-ab03-80fa5b45280e', '84289ca6-3ac7-11e9-ab03-80fa5b45280e', 'daSD', 'DASD', 'DSADSA', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-02-27 21:57:04', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-02-27 21:57:04', 1),
('f1e8a356-3ac9-11e9-ab03-80fa5b45280e', '84289ca6-3ac7-11e9-ab03-80fa5b45280e', 'nDUMI', 'DSADD', 'DSADSA', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-02-27 21:57:42', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-02-27 21:57:42', 1),
('f847eb46-4c07-11e9-b0af-f48e38e878a3', 'ebf7b73c-4c07-11e9-b0af-f48e38e878a3', 'Sabelo ', 'Mkize', '0746856723', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-21 20:34:32', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-21 20:34:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `medicalaid`
--

CREATE TABLE `medicalaid` (
  `MedicalaidId` varchar(225) NOT NULL,
  `PatientId` varchar(225) NOT NULL,
  `MedicalaidName` varchar(150) NOT NULL,
  `MedicalaidType` varchar(150) NOT NULL,
  `MemberShipNumber` varchar(50) NOT NULL,
  `PrimaryMember` varchar(150) NOT NULL,
  `PrimaryMemberId` varchar(55) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicalaid`
--

INSERT INTO `medicalaid` (`MedicalaidId`, `PatientId`, `MedicalaidName`, `MedicalaidType`, `MemberShipNumber`, `PrimaryMember`, `PrimaryMemberId`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('482cb7da-34cd-11e9-8a5d-f48e38e878a3', '8c5285ec-f4d3-11e8-bc75-f48e38e878a3', 'Discovery', 'Delta server', '4545788778', 'Freedom Khanyile', '9306125458195', '2019-02-20 07:13:16', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-02-20 07:13:16', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('6c5e001a-4c02-11e9-b0af-f48e38e878a3', '4e08589d-4c02-11e9-b0af-f48e38e878a3', 'Discovery ', 'Key Care Plus', '2540585642423', 'Themba Mokoena', '92041925056433547', '2019-03-21 19:54:50', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-21 19:54:50', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('9c869524-359d-11e9-a52e-80fa5b45280e', '3d84c984-3513-11e9-845b-80fa5b45280e', 'Momentum', 'VIP Pack', 'M45784545424', 'Smith Sosibo', '92071445545454', '2019-02-21 07:57:46', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-02-21 07:57:46', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('ba395cea-3ac7-11e9-ab03-80fa5b45280e', '84289ca6-3ac7-11e9-ab03-80fa5b45280e', '32312', '434324', '3123@sadsa', '3123@sadsa', '3123@sadsa', '2019-02-27 21:41:50', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-02-27 21:41:50', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `medication`
--

CREATE TABLE `medication` (
  `medicationId` varchar(225) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `createdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medication`
--

INSERT INTO `medication` (`medicationId`, `name`, `description`, `createdate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('0198131b7121706caede38a84bd6a088', 'xdc', 'xdc', '2019-03-05 23:10:12', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 23:10:12', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('1551822376', 'test 33 drug', 'test 33 drug', '2019-03-05 23:46:16', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 23:46:16', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('1551822608', 'xx2 drug', 'xx2 drug', '2019-03-05 23:50:08', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 23:50:08', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('1551822699', 'xx2 drugrr', 'xx2 drugrr', '2019-03-05 23:51:39', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 23:51:39', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('1551823429', 'x11 drug', 'x11 drug', '2019-03-06 00:03:49', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 00:03:49', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('1551841059', '1', '1', '2019-03-06 04:57:39', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 04:57:39', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('1551841476', 'ss1', 'ss1', '2019-03-06 05:04:36', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 05:04:36', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('1551841547', 'w11', 'w11', '2019-03-06 05:05:47', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 05:05:47', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('1551841711', 'sssddd', 'sssddd', '2019-03-06 05:08:31', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 05:08:31', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('1551841855', 'umuthi woklala', 'umuthi woklala', '2019-03-06 05:10:55', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 05:10:55', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('1551842020', 'ulalamba dokk', 'ulalamba dokk', '2019-03-06 05:13:40', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 05:13:40', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('1551842265', 'fudu deg', 'fudu deg', '2019-03-06 05:17:45', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 05:17:45', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('1551843552', 'Madrix', 'Madrix', '2019-03-06 05:39:12', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 05:39:12', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('1551844843', 'sisu muthi', 'sisu muthi', '2019-03-06 06:00:43', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 06:00:43', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('1551853034', 'Test now drug', 'Test now drug', '2019-03-06 08:17:14', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 08:17:14', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('1551887101', 'Medlemon', 'Medlemon', '2019-03-06 17:45:01', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 17:45:01', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('28b314b975a7bf2e37177a32883416ca', 'wee', 'wee', '2019-03-05 21:07:17', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 21:07:17', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('2d6a6af7-34cd-11e9-8a5d-f48e38e878a3', 'Flue cough', 'Flue cough', '2018-11-23 10:24:25', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-02-01 21:49:25', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('2d708510-34cd-45412-8a5d-f48e38e878a3', 'Panado', 'Panado', '2018-11-23 12:19:11', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-02-01 21:49:25', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('2d708630-34cd-11e9-8a5d-f48e38e878a3', 'Cleanzing Agent', 'Cleanzing Agent', '2018-11-30 21:29:49', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-02-01 21:49:25', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('3418d8d8ff4af40ce3bbae5b017676c2', '2d708510-34cd-45412-8a5d-f48e38e878a3', '2d708510-34cd-45412-8a5d-f48e38e878a3', '2019-03-05 21:15:52', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 21:15:52', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('498b643e6e66765388b45fdc317b4da7', 'asas', 'asas', '2019-03-05 23:05:43', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 23:05:43', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('5de8cdf8ba0d7c4d5ae01c254535bfb8', 'eabe7c9483b0aba9f9d7a41a6ef46cd3', 'eabe7c9483b0aba9f9d7a41a6ef46cd3', '2019-03-05 23:04:09', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 23:04:09', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('662a0f492c630ec3bf90fc9a5c0d36e6', 'ffff', 'ffff', '2019-03-05 22:57:34', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 22:57:34', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('77d8f3f34f217936ee023cb97f459690', 'drf', 'drf', '2019-03-05 23:13:34', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 23:13:34', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('7ae84f2c1c51ce114de93178e3624170', 'ssss', 'ssss', '2019-03-05 21:13:23', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 21:13:23', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('a1c7b40491f5c2073732bea44cf1c075', 'asassas', 'asassas', '2019-03-05 23:05:55', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 23:05:55', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('a8679b1741a640ee1d9f741b78d212fd', 'test', 'test', '2019-03-05 20:35:19', '72812-gjaysgdj-27173', '2019-03-05 20:35:19', '72812-gjaysgdj-27173', 1),
('a88091bd8ed3998a5fdaa6bcd14b93fe', 'rrrr', 'rrrr', '2019-03-05 23:09:01', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 23:09:01', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('acc48bacae9146e589d98ceb4161db96', '2www', '2www', '2019-03-05 21:11:17', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 21:11:17', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('b598332b232b5d6b365edc53f7a817a6', 'werw', 'werw', '2019-03-05 23:21:12', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 23:21:12', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('ba8617701174fd3eef2baff19d42d1df', 'XX1', 'XX1', '2019-03-05 21:15:35', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 21:15:35', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('c45ac9e74263f3d91a5e8535c992a30e', 'W32', 'W32', '2019-03-05 23:18:26', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 23:18:26', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('eabe7c9483b0aba9f9d7a41a6ef46cd3', 'dxx', 'dxx', '2019-03-05 23:03:28', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 23:03:28', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('ee2749dfbe643778f37c00f940de8c25', 'test legit tablets', 'test legit tablets', '2019-03-05 23:31:42', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 23:31:42', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('f90c53d8528007ef5c021019e6b47d74', 'ss2', 'ss2', '2019-03-05 21:10:02', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 21:10:02', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `NoteId` varchar(225) NOT NULL,
  `PatientId` varchar(225) NOT NULL,
  `Notes` text NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(5) NOT NULL,
  `prescriptionGiven` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`NoteId`, `PatientId`, `Notes`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`, `prescriptionGiven`) VALUES
('1552721569', 'ceb9d536-f4d3-11e8-bc75-f48e38e878a3', 'In some countries, wood fire flues are often built into a heat preserving construction within which the flue gases circulate over heat retaining bricks before release to the atmosphere. The heat retaining bricks are covered in a decorative material such as brick, tiles or stone. This flue gas circulation avoids the considerable heat loss to the chimney and outside air in conventional systems.', '2019-03-16 09:32:49', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-16 09:32:49', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 0, 0),
('1552722379', 'ceb9d536-f4d3-11e8-bc75-f48e38e878a3', 'Materialize is a modern responsive CSS framework based on Material Design', '2019-03-16 09:46:19', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-16 09:46:19', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1, 0),
('1552722696', 'ceb9d536-f4d3-11e8-bc75-f48e38e878a3', 'Note 3', '2019-03-16 09:51:36', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-16 09:51:36', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1, 1),
('1552727374', 'cf9b3649-314d-44d5-abe5-3c5cc7363af6', 'NOTES ONE\n', '2019-03-16 11:09:34', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-16 11:09:34', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1, 1),
('1552727385', 'cf9b3649-314d-44d5-abe5-3c5cc7363af6', 'nOTES 2', '2019-03-16 11:09:45', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-16 11:09:45', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1, 0),
('1552728998', '8c62d729-f4d3-11e8-bc75-f48e38e878a3', 'Test', '2019-03-16 11:36:38', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-16 11:36:38', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1, 0),
('1552729762', '3d84c984-3513-11e9-845b-80fa5b45280e', 'Smitjh notes one', '2019-03-16 11:49:22', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-16 11:49:22', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1, 1),
('1552756861', 'ceb9d536-f4d3-11e8-bc75-f48e38e878a3', 'I will see him next week', '2019-03-16 19:21:01', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-16 19:21:01', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1, 0),
('1553173705', '3d84c984-3513-11e9-845b-80fa5b45280e', 'rest needed', '2019-03-21 15:08:25', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-21 15:08:25', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1, 1),
('1553191135', '849a510c-4bf3-11e9-95e2-80fa5b45280e', 'He was better today walking right', '2019-03-21 19:58:55', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-21 19:58:55', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1, 1),
('1553191307', '4e08589d-4c02-11e9-b0af-f48e38e878a3', 'Coole nots', '2019-03-21 20:01:47', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-21 20:01:47', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1, 1),
('1554318781', 'a6db1355-3abe-11e9-8de3-80fa5b45280e', 'Just testing nothing much', '2019-04-03 21:13:01', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-04-03 21:13:01', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1, 0),
('1555149815', '8c5285ec-f4d3-11e8-bc75-f48e38e878a3', 'New enquiry', '2019-04-13 12:03:35', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-04-13 12:03:35', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `PatientId` varchar(225) NOT NULL,
  `Title` varchar(10) NOT NULL,
  `FirstName` varchar(225) NOT NULL,
  `Surname` varchar(225) NOT NULL,
  `IdNumber` varchar(15) NOT NULL,
  `DOB` varchar(10) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Email` varchar(225) NOT NULL,
  `Cellphone` varchar(25) NOT NULL,
  `AddressLine1` varchar(225) NOT NULL,
  `City` varchar(225) NOT NULL,
  `Province` varchar(55) NOT NULL,
  `PostCode` varchar(225) NOT NULL,
  `CreateUserId` varchar(225) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`PatientId`, `Title`, `FirstName`, `Surname`, `IdNumber`, `DOB`, `Gender`, `Email`, `Cellphone`, `AddressLine1`, `City`, `Province`, `PostCode`, `CreateUserId`, `CreateDate`, `ModifyUserId`, `ModifyDate`, `StatusId`) VALUES
('3d84c984-3513-11e9-845b-80fa5b45280e', '', 'Smith', 'Sosibo', '92071445545454', '14/07/1992', 'male', 'smith122@gmail.com', '0821457845', '215 End St', 'Durban', 'KZN', '4002', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-02-20 15:27:16', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-02-20 15:27:16', 2),
('4e08589d-4c02-11e9-b0af-f48e38e878a3', 'Mr', 'Themba', 'Mokoena', '9204195800052', '1992-04-19', 'Male', 'themba.mokoena@gmail.com', '0746645665', 'Freedom street', 'Johannesburg', 'Gauteng', '2194', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-21 19:53:59', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-21 19:53:59', 2),
('849a510c-4bf3-11e9-95e2-80fa5b45280e', 'Mrs', 'Smith', 'Sosibo', '53454', '2019-03-20', 'Female', '1553184480@doc-io.net', '0821457845', '215 End St', 'Durban', 'KZN', '4002', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-21 18:08:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-21 18:08:00', 2),
('8c5285ec-f4d3-11e8-bc75-f48e38e878a3', '', 'Freedom', 'Khanyile', '920725050208', '1992-07-25', 'Male', 'freedom.khanyile1@gmail.com', '0746958061', '12 Jacaranda Lane', 'Johannesburg', '', '2100', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2018-11-23 10:13:55', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2018-11-23 10:20:07', 1),
('a6db1355-3abe-11e9-8de3-80fa5b45280e', '', 'Haenry', 'Hlongwana', '92071445545454', '14/07/1992', 'male', 'henry@mail.com', '0821457845', '215 End St', 'Durban', 'KZN', '4002', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-02-27 20:36:48', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-02-27 20:36:48', 2),
('ceb9d536-f4d3-11e8-bc75-f48e38e878a3', '', 'Nduduzo', 'Magwaza', '45454545', '1998-08-24', 'Male', 'magwaza@mail.com', '0748508258', 'Angular', 'Johannesburg', 'Gauteng', '2194', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2018-11-30 21:11:57', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2018-11-30 21:35:51', 1),
('cf9b3649-314d-44d5-abe5-3c5cc7363af6', '', 'Simiso', 'Shange', '830610050208', '1983-06-10', 'Male', 'Simiso.Shange@gmail.com', '0748258225', 'Braamfontein Gate', 'Johannesburg', '', '2100', '1', '2018-12-04 08:38:25', '1', '2018-12-04 08:38:26', 1),
('ebf7b73c-4c07-11e9-b0af-f48e38e878a3', 'Mr', 'Nkululeko', 'Magwaza', '9217051247558', '1992-07-25', 'Male', 'smith1222@gmail.com', '0821457845', '215 End St', 'Durban', 'KwaZulu-Natal', '4002', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-21 20:34:11', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-21 20:34:11', 2);

-- --------------------------------------------------------

--
-- Table structure for table `patient-doctor-practice`
--

CREATE TABLE `patient-doctor-practice` (
  `Id` varchar(225) NOT NULL,
  `PatientId` varchar(225) NOT NULL,
  `DoctorId` varchar(225) NOT NULL,
  `PracticeId` varchar(225) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `practice`
--

CREATE TABLE `practice` (
  `PracticeId` varchar(225) NOT NULL,
  `Name` varchar(225) DEFAULT NULL,
  `Address` varchar(225) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `prescriptionId` varchar(225) NOT NULL,
  `patientId` varchar(225) NOT NULL,
  `symptoms` varchar(225) NOT NULL,
  `diagnosis` text NOT NULL,
  `boolPreasure` varchar(150) NOT NULL,
  `pulseRate` varchar(150) NOT NULL,
  `createdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`prescriptionId`, `patientId`, `symptoms`, `diagnosis`, `boolPreasure`, `pulseRate`, `createdate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('0198131b7121706caede38a84bd6a088', '3d84c984-3513-11e9-845b-80fa5b45280e', 'sdad', 'dsad', 'dsa', 'dsad', '2019-03-05 23:10:12', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 23:10:12', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('1551822376', '3d84c984-3513-11e9-845b-80fa5b45280e', 'test 33', 'test 33', '33', '33', '2019-03-05 23:46:16', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 23:46:16', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('1551822608', '3d84c984-3513-11e9-845b-80fa5b45280e', 'xxx2', 'xxx2', 'xx2', 'xx2', '2019-03-05 23:50:08', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 23:50:08', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('1551822699', '3d84c984-3513-11e9-845b-80fa5b45280e', 'xxx2', 'xxx2', 'xx2', 'xx2', '2019-03-05 23:51:39', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 23:51:39', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('1551823429', '3d84c984-3513-11e9-845b-80fa5b45280e', 'x11', 'x11', 'x11', 'x11', '2019-03-06 00:03:49', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 00:03:49', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('1551841855', '3d84c984-3513-11e9-845b-80fa5b45280e', 'Uyalala', 'Ubuthongo', '11', '120', '2019-03-06 05:10:55', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 05:10:55', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('1551842020', '3d84c984-3513-11e9-845b-80fa5b45280e', 'ulalamba', 'ulalamba', '11', '11', '2019-03-06 05:13:40', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 05:13:40', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('1551842265', '3d84c984-3513-11e9-845b-80fa5b45280e', 'fudu', 'fudu', '1213', '22', '2019-03-06 05:17:45', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 05:17:45', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('1551843552', '8c62d729-f4d3-11e8-bc75-f48e38e878a3', 'Hot body', 'Flue', '110', '250', '2019-03-06 05:39:12', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 05:39:12', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('1551844843', 'ceb9d536-f4d3-11e8-bc75-f48e38e878a3', 'sisu', 'sisu', '2', '2', '2019-03-06 06:00:43', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 06:00:43', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('1551853034', '3d84c984-3513-11e9-845b-80fa5b45280e', 'Test now', 'Test now', 'Test now', 'Test now', '2019-03-06 08:17:14', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 08:17:14', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('1551887101', '8c5285ec-f4d3-11e8-bc75-f48e38e878a3', 'Hot body', 'Flue', '150k', '152', '2019-03-06 17:45:01', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 17:45:01', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('1552756972', 'ceb9d536-f4d3-11e8-bc75-f48e38e878a3', 'Hot body', 'Winter flue', '100', '55', '2019-03-16 19:22:52', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-16 19:22:52', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('1555149962', '8c5285ec-f4d3-11e8-bc75-f48e38e878a3', 'Nose blocked', 'Flue', '85', '25', '2019-04-13 12:06:02', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-04-13 12:06:02', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('210d4f40-34cd-11e9-8a5d-f48e38e878a3', 'ceb9d536-f4d3-11e8-bc75-f48e38e878a3', 'default value', 'Flue', '100', '100', '2018-11-23 10:24:31', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-02-01 21:51:07', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('2110a6e6-34cd-11e9-8a5d-f48e38e878a3', 'ceb9d536-f4d3-11e8-bc75-f48e38e878a3', 'default value', 'Headaches', '50', '50', '2018-11-23 12:19:13', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-02-01 21:51:07', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('2110a7eb-34cd-11e9-8a5d-f48e38e878a3', 'ceb9d536-f4d3-11e8-bc75-f48e38e878a3', 'default value', 'Injection Failed', '55', '25', '2018-11-30 21:33:25', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-02-01 21:51:07', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('738822e2cfc9af9cefcc5b44be4459e1', '3d84c984-3513-11e9-845b-80fa5b45280e', 'Heavy Feet', 'Lack of blood flow', '85', '95', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-04 22:53:56', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('77d8f3f34f217936ee023cb97f459690', '3d84c984-3513-11e9-845b-80fa5b45280e', 'Hot', 'Juju', '120', '22kho', '2019-03-05 23:13:34', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 23:13:34', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('7fc8af2d5cfb0798dbcfa8468845b060', '3d84c984-3513-11e9-845b-80fa5b45280e', 'Heavy Feet', 'Lack of blood flow', '85', '95', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-04 22:53:57', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('aed6f39c80310dc69e262612436ff7d4', 'fa095a49-353b-11e9-b04f-f48e38e878a3', 'Heavy Feet', 'Lack of blood flow', '85', '95', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-04 22:39:59', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('b598332b232b5d6b365edc53f7a817a6', '3d84c984-3513-11e9-845b-80fa5b45280e', 'ASA', 'SSAs', 'saS', 'SAs', '2019-03-05 23:21:12', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 23:21:12', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('c45ac9e74263f3d91a5e8535c992a30e', '3d84c984-3513-11e9-845b-80fa5b45280e', 'sasa', 'sas', 'sas', 'sasa', '2019-03-05 23:18:26', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 23:18:26', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('ee2749dfbe643778f37c00f940de8c25', '3d84c984-3513-11e9-845b-80fa5b45280e', 'test legit', 'test legit Diagnosis', '22', '22', '2019-03-05 23:31:42', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 23:31:42', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('f64e7f584f110ca93538d7d81583127e', '3d84c984-3513-11e9-845b-80fa5b45280e', 'Heavy Feet', 'Lack of blood flow', '85', '95', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-04 22:53:55', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `prescription_medication_drug`
--

CREATE TABLE `prescription_medication_drug` (
  `prescriptionMedicationId` varchar(225) NOT NULL,
  `prescriptionId` varchar(225) NOT NULL,
  `medicationId` varchar(225) NOT NULL,
  `unit` varchar(150) NOT NULL,
  `dosage` varchar(150) NOT NULL,
  `createdate` datetime NOT NULL,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription_medication_drug`
--

INSERT INTO `prescription_medication_drug` (`prescriptionMedicationId`, `prescriptionId`, `medicationId`, `unit`, `dosage`, `createdate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('118e878a-3f8b-11e9-91f0-80fa5b45280e', '0198131b7121706caede38a84bd6a088', '2d708510-34cd-45412-8a5d-f48e38e878a3', 'cc', '32', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 23:10:12', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('12ad76be-3f8e-11e9-91f0-80fa5b45280e', 'ee2749dfbe643778f37c00f940de8c25', '2d708510-34cd-45412-8a5d-f48e38e878a3', '1', '1', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 23:31:42', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('1bbb731a-3f90-11e9-91f0-80fa5b45280e', '1551822376', '2d708510-34cd-45412-8a5d-f48e38e878a3', '1', '1', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 23:46:16', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('2ce45b28-4810-11e9-a088-80fa5b45280e', '1552756972', '2d708510-34cd-45412-8a5d-f48e38e878a3', '1', '1', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-16 19:22:52', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('2ce4ab48-4810-11e9-a088-80fa5b45280e', '1552756972', '2d6a6af7-34cd-11e9-8a5d-f48e38e878a3', '2', '3', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-16 19:22:52', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('2ce4f6bd-4810-11e9-a088-80fa5b45280e', '1552756972', '1551853034', '1', '3', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-16 19:22:52', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('382bdd75-3f8c-11e9-91f0-80fa5b45280e', 'c45ac9e74263f3d91a5e8535c992a30e', '2d708510-34cd-45412-8a5d-f48e38e878a3', '3', '3', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 23:18:26', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('382c1e12-3f8c-11e9-91f0-80fa5b45280e', 'c45ac9e74263f3d91a5e8535c992a30e', '2d6a6af7-34cd-11e9-8a5d-f48e38e878a3', '2', '2', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 23:18:26', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('6bed10f4-3fc1-11e9-91f0-80fa5b45280e', '1551843552', '1551843552', '2', '1', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 05:39:12', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('6bed5de4-3fc1-11e9-91f0-80fa5b45280e', '1551843552', '2d708510-34cd-45412-8a5d-f48e38e878a3', '1', '1', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 05:39:12', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('6bed8e2a-3fc1-11e9-91f0-80fa5b45280e', '1551843552', '2d6a6af7-34cd-11e9-8a5d-f48e38e878a3', '1', '1', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 05:39:12', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('6ccc3e6a-3fbe-11e9-91f0-80fa5b45280e', '1551842265', '1551842265', '3', '3', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 05:17:45', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('6ccc7650-3fbe-11e9-91f0-80fa5b45280e', '1551842265', '2d708510-34cd-45412-8a5d-f48e38e878a3', '1', '1', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 05:17:45', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('6cccca8e-3fbe-11e9-91f0-80fa5b45280e', '1551842265', '1551841855', '1', '1', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 05:17:45', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('6d2e9c77-3fc4-11e9-91f0-80fa5b45280e', '1551844843', '1551844843', '2', '2', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 06:00:43', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('6d2ed2d3-3fc4-11e9-91f0-80fa5b45280e', '1551844843', '2d708510-34cd-45412-8a5d-f48e38e878a3', '1', '1', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 06:00:43', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('73ebbbe0-34cd-11e9-8a5d-f48e38e878a3', '210d4f40-34cd-11e9-8a5d-f48e38e878a3', '2d6a6af7-34cd-11e9-8a5d-f48e38e878a3', '1', '3', '2018-11-23 10:24:31', '', '2019-02-01 21:51:57', '', 1),
('73ee708f-34cd-11e9-8a5d-f48e38e878a3', '2110a6e6-34cd-11e9-8a5d-f48e38e878a3', '2d708510-34cd-11e9-8a5d-f48e38e878a3', '1', '3', '2018-11-23 12:19:14', '', '2019-02-01 21:51:57', '', 1),
('73ee7184-34cd-11e9-8a5d-f48e38e878a3', '2110a7eb-34cd-11e9-8a5d-f48e38e878a3', '2d708630-34cd-11e9-8a5d-f48e38e878a3', '2', '0', '2018-11-30 21:33:25', '', '2019-02-01 21:51:57', '', 1),
('789e6377-3fbd-11e9-91f0-80fa5b45280e', '1551841855', '2d708510-34cd-45412-8a5d-f48e38e878a3', '1', '1', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 05:10:55', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('789e9638-3fbd-11e9-91f0-80fa5b45280e', '1551841855', 'umuthi woklala', '1', '1', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 05:10:55', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('789ecaff-3fbd-11e9-91f0-80fa5b45280e', '1551841855', 'redbull', '2', '2', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 05:10:55', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('806b0190-3fd7-11e9-91f0-80fa5b45280e', '1551853034', '1551853034', '1', '1', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 08:17:14', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('806b7008-3fd7-11e9-91f0-80fa5b45280e', '1551853034', '2d708510-34cd-45412-8a5d-f48e38e878a3', '1', '1', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 08:17:14', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('8a56f832-3f8b-11e9-91f0-80fa5b45280e', '77d8f3f34f217936ee023cb97f459690', '2d708510-34cd-45412-8a5d-f48e38e878a3', '11', '11', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 23:13:34', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('8a57441b-3f8b-11e9-91f0-80fa5b45280e', '77d8f3f34f217936ee023cb97f459690', '2d6a6af7-34cd-11e9-8a5d-f48e38e878a3', '33', '33', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 23:13:34', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('8f949f5e-3f92-11e9-91f0-80fa5b45280e', '1551823429', 'x11 drug', '1', '1', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 00:03:49', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('8f94da79-3f92-11e9-91f0-80fa5b45280e', '1551823429', '2d708510-34cd-45412-8a5d-f48e38e878a3', '1', '1', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 00:03:49', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('9b322ab3-3f8c-11e9-91f0-80fa5b45280e', 'b598332b232b5d6b365edc53f7a817a6', '2d708510-34cd-45412-8a5d-f48e38e878a3', 'w', 'w', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 23:21:12', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('a0046c63-3ebf-11e9-a159-80fa5b45280e', 'f64e7f584f110ca93538d7d81583127e', '2d6a6af7-34cd-11e9-8a5d-f48e38e878a3', '200ml', '3 tbl spoons a day', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-04 22:53:55', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('a004c5a1-3ebf-11e9-a159-80fa5b45280e', 'f64e7f584f110ca93538d7d81583127e', '2d708510-34cd-45412-8a5d-f48e38e878a3', '10 tablets', '1 tablet 3 times a day after meals', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-04 22:53:55', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('a0b9fd62-3ebf-11e9-a159-80fa5b45280e', '738822e2cfc9af9cefcc5b44be4459e1', '2d6a6af7-34cd-11e9-8a5d-f48e38e878a3', '200ml', '3 tbl spoons a day', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-04 22:53:56', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('a0ba335f-3ebf-11e9-a159-80fa5b45280e', '738822e2cfc9af9cefcc5b44be4459e1', '2d708510-34cd-45412-8a5d-f48e38e878a3', '10 tablets', '1 tablet 3 times a day after meals', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-04 22:53:56', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('a1209399-3ebf-11e9-a159-80fa5b45280e', '7fc8af2d5cfb0798dbcfa8468845b060', '2d6a6af7-34cd-11e9-8a5d-f48e38e878a3', '200ml', '3 tbl spoons a day', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-04 22:53:57', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('a120e5f0-3ebf-11e9-a159-80fa5b45280e', '7fc8af2d5cfb0798dbcfa8468845b060', '2d708510-34cd-45412-8a5d-f48e38e878a3', '10 tablets', '1 tablet 3 times a day after meals', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-04 22:53:57', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('a5c153aa-3f90-11e9-91f0-80fa5b45280e', '1551822608', '2d708510-34cd-45412-8a5d-f48e38e878a3', '1', '1', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-05 23:50:08', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('ad85a457-3ebd-11e9-a159-80fa5b45280e', 'aed6f39c80310dc69e262612436ff7d4', '2d6a6af7-34cd-11e9-8a5d-f48e38e878a3', '200ml', '3 tbl spoons a day', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-04 22:39:59', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('ad85d922-3ebd-11e9-a159-80fa5b45280e', 'aed6f39c80310dc69e262612436ff7d4', '2d708510-34cd-45412-8a5d-f48e38e878a3', '10 tablets', '1 tablet 3 times a day after meals', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-04 22:39:59', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('be66278d-5dd3-11e9-9acf-f48e38e878a3', '1555149962', '2d6a6af7-34cd-11e9-8a5d-f48e38e878a3', '1', '3 times a day', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-04-13 12:06:02', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('d26ace12-4026-11e9-91f0-80fa5b45280e', '1551887101', '1551887101', '2', '2', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 17:45:01', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('d26b4081-4026-11e9-91f0-80fa5b45280e', '1551887101', '2d708510-34cd-45412-8a5d-f48e38e878a3', '1', '1tbs 3 times a day', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 17:45:01', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('dabbd5c4-3fbd-11e9-91f0-80fa5b45280e', '1551842020', '1551842020', '3', '3', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 05:13:40', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('dabc366b-3fbd-11e9-91f0-80fa5b45280e', '1551842020', '2d708510-34cd-45412-8a5d-f48e38e878a3', '1', '1', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 05:13:40', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('dabc871a-3fbd-11e9-91f0-80fa5b45280e', '1551842020', '1551841855', '2', '2', '0000-00-00 00:00:00', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-03-06 05:13:40', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `que`
--

CREATE TABLE `que` (
  `QuiID` int(11) NOT NULL,
  `PatientId` varchar(225) NOT NULL,
  `PatientName` varchar(100) NOT NULL,
  `Status` int(5) NOT NULL,
  `Createdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `que`
--

INSERT INTO `que` (`QuiID`, `PatientId`, `PatientName`, `Status`, `Createdate`, `CreateUserId`) VALUES
(1, '3d84c984-3513-11e9-845b-80fa5b45280e', 'Smith Sosibo', 2, '2019-03-05 07:38:53', 'gewqeu587321e'),
(2, '3d84c984-3513-11e9-845b-80fa5b45280e', 'Smith Sosibo', 2, '2019-03-05 07:41:06', 'gewqeu587321e'),
(3, '3d84c984-3513-11e9-899b-80fa5b45280e', 'Ndumiso Mthembu', 2, '2019-03-05 08:17:30', 'gewqeu587321e'),
(4, '8c5285ec-f4d3-11e8-bc75-f48e38e878a3', 'Freedom Khanyile', 2, '2019-03-05 08:21:49', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(5, '8c62d729-f4d3-11e8-bc75-f48e38e878a3', 'Jane Zikhali', 2, '2019-03-05 08:23:28', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(6, 'ceb9d536-f4d3-11e8-bc75-f48e38e878a3', 'Nduduzo Magwaza', 2, '2019-03-05 08:23:40', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(7, 'cf9b3649-314d-44d5-abe5-3c5cc7363af6', 'Simiso Shange', 2, '2019-03-05 08:24:05', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(8, '8c5285ec-f4d3-11e8-bc75-f48e38e878a3', 'Freedom Khanyile', 2, '2019-03-05 08:25:01', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(9, '3d84c984-3513-11e9-845b-80fa5b45280e', 'Smith Sosibo', 2, '2019-03-05 08:56:23', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(10, '8c62d729-f4d3-11e8-bc75-f48e38e878a3', 'Jane Zikhali', 2, '2019-03-05 09:14:57', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(11, 'ceb9d536-f4d3-11e8-bc75-f48e38e878a3', 'Nduduzo Magwaza', 2, '2019-03-05 09:15:06', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(12, '8c5285ec-f4d3-11e8-bc75-f48e38e878a3', 'Freedom Khanyile', 2, '2019-03-05 09:15:59', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(13, '3d84c984-3513-11e9-845b-80fa5b45280e', 'Smith Sosibo', 2, '2019-03-05 09:18:30', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(14, '8c62d729-f4d3-11e8-bc75-f48e38e878a3', 'Jane Zikhali', 2, '2019-03-05 09:18:33', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(15, '8c62d729-f4d3-11e8-bc75-f48e38e878a3', 'Jane Zikhali', 2, '2019-03-05 10:09:01', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(16, 'a6db1355-3abe-11e9-8de3-80fa5b45280e', 'Haenry Hlongwana', 2, '2019-03-05 10:09:04', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(17, '3d84c984-3513-11e9-845b-80fa5b45280e', 'Smith Sosibo', 2, '2019-03-05 10:10:05', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(18, '8c5285ec-f4d3-11e8-bc75-f48e38e878a3', 'Freedom Khanyile', 2, '2019-03-05 10:10:07', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(19, 'a6db1355-3abe-11e9-8de3-80fa5b45280e', 'Haenry Hlongwana', 2, '2019-03-05 10:10:09', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(20, 'ceb9d536-f4d3-11e8-bc75-f48e38e878a3', 'Nduduzo Magwaza', 2, '2019-03-05 10:10:11', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(21, 'cf9b3649-314d-44d5-abe5-3c5cc7363af6', 'Simiso Shange', 2, '2019-03-05 10:10:14', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(22, '3d84c984-3513-11e9-845b-80fa5b45280e', 'Smith Sosibo', 2, '2019-03-05 19:19:50', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(23, '8c5285ec-f4d3-11e8-bc75-f48e38e878a3', 'Freedom Khanyile', 2, '2019-03-05 19:19:54', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(24, 'a6db1355-3abe-11e9-8de3-80fa5b45280e', 'Haenry Hlongwana', 2, '2019-03-05 19:20:01', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(25, 'cf9b3649-314d-44d5-abe5-3c5cc7363af6', 'Simiso Shange', 2, '2019-03-05 19:20:06', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(26, 'ceb9d536-f4d3-11e8-bc75-f48e38e878a3', 'Nduduzo Magwaza', 2, '2019-03-05 19:20:38', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(27, '3d84c984-3513-11e9-845b-80fa5b45280e', 'Smith Sosibo', 2, '2019-03-05 19:20:43', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(28, '8c62d729-f4d3-11e8-bc75-f48e38e878a3', 'Jane Zikhali', 2, '2019-03-05 19:20:47', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(29, '3d84c984-3513-11e9-845b-80fa5b45280e', 'Smith Sosibo', 2, '2019-03-05 20:42:24', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(30, '3d84c984-3513-11e9-845b-80fa5b45280e', 'Smith Sosibo', 2, '2019-03-06 05:28:39', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(31, '8c5285ec-f4d3-11e8-bc75-f48e38e878a3', 'Freedom Khanyile', 2, '2019-03-06 05:30:29', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(32, '3d84c984-3513-11e9-845b-80fa5b45280e', 'Smith Sosibo', 2, '2019-03-06 05:33:50', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(33, '8c62d729-f4d3-11e8-bc75-f48e38e878a3', 'Jane Zikhali', 2, '2019-03-06 05:34:10', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(34, '8c62d729-f4d3-11e8-bc75-f48e38e878a3', 'Jane Zikhali', 2, '2019-03-06 05:35:13', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(35, '8c62d729-f4d3-11e8-bc75-f48e38e878a3', 'Jane Zikhali', 2, '2019-03-06 05:35:58', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(36, '8c62d729-f4d3-11e8-bc75-f48e38e878a3', 'Jane Zikhali', 2, '2019-03-06 05:37:33', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(37, '8c5285ec-f4d3-11e8-bc75-f48e38e878a3', 'Freedom Khanyile', 2, '2019-03-06 05:37:59', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(38, 'ceb9d536-f4d3-11e8-bc75-f48e38e878a3', 'Nduduzo Magwaza', 2, '2019-03-06 05:38:02', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(39, 'ceb9d536-f4d3-11e8-bc75-f48e38e878a3', 'Nduduzo Magwaza', 2, '2019-03-06 05:44:32', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(40, '3d84c984-3513-11e9-845b-80fa5b45280e', 'Smith Sosibo', 2, '2019-03-06 05:44:50', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(41, '3d84c984-3513-11e9-845b-80fa5b45280e', 'Smith Sosibo', 2, '2019-03-06 05:49:07', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(42, '8c62d729-f4d3-11e8-bc75-f48e38e878a3', 'Jane Zikhali', 2, '2019-03-06 05:49:09', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(43, 'ceb9d536-f4d3-11e8-bc75-f48e38e878a3', 'Nduduzo Magwaza', 2, '2019-03-06 05:50:22', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(44, '3d84c984-3513-11e9-845b-80fa5b45280e', 'Smith Sosibo', 2, '2019-03-06 05:54:15', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(45, '8c5285ec-f4d3-11e8-bc75-f48e38e878a3', 'Freedom Khanyile', 2, '2019-03-06 05:54:40', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(46, 'a6db1355-3abe-11e9-8de3-80fa5b45280e', 'Haenry Hlongwana', 2, '2019-03-06 05:55:02', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(47, 'cf9b3649-314d-44d5-abe5-3c5cc7363af6', 'Simiso Shange', 2, '2019-03-06 05:55:04', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(48, '8c62d729-f4d3-11e8-bc75-f48e38e878a3', 'Jane Zikhali', 2, '2019-03-06 05:56:03', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(49, 'ceb9d536-f4d3-11e8-bc75-f48e38e878a3', 'Nduduzo Magwaza', 2, '2019-03-06 05:56:05', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(50, '3d84c984-3513-11e9-845b-80fa5b45280e', 'Smith Sosibo', 2, '2019-03-06 05:59:59', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(51, '8c5285ec-f4d3-11e8-bc75-f48e38e878a3', 'Freedom Khanyile', 2, '2019-03-06 06:48:03', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(52, '3d84c984-3513-11e9-845b-80fa5b45280e', 'Smith Sosibo', 2, '2019-03-06 06:51:07', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(53, 'ceb9d536-f4d3-11e8-bc75-f48e38e878a3', 'Nduduzo Magwaza', 2, '2019-03-06 06:57:10', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(54, '8c5285ec-f4d3-11e8-bc75-f48e38e878a3', 'Freedom Khanyile', 2, '2019-03-06 14:00:12', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(55, 'a6db1355-3abe-11e9-8de3-80fa5b45280e', 'Haenry Hlongwana', 2, '2019-03-06 14:00:16', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(56, 'cf9b3649-314d-44d5-abe5-3c5cc7363af6', 'Simiso Shange', 2, '2019-03-06 17:41:58', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(57, '8c5285ec-f4d3-11e8-bc75-f48e38e878a3', 'Freedom Khanyile', 2, '2019-03-06 17:42:16', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(58, '3d84c984-3513-11e9-845b-80fa5b45280e', 'Smith Sosibo', 2, '2019-03-06 17:50:47', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(59, '8c62d729-f4d3-11e8-bc75-f48e38e878a3', 'Jane Zikhali', 2, '2019-03-06 17:50:50', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(60, 'cf9b3649-314d-44d5-abe5-3c5cc7363af6', 'Simiso Shange', 2, '2019-03-06 17:50:53', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(61, 'a6db1355-3abe-11e9-8de3-80fa5b45280e', 'Haenry Hlongwana', 2, '2019-03-13 19:09:04', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(62, '8c62d729-f4d3-11e8-bc75-f48e38e878a3', 'Jane Zikhali', 2, '2019-03-13 19:15:09', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(63, '3d84c984-3513-11e9-845b-80fa5b45280e', 'Smith Sosibo', 2, '2019-03-13 19:15:12', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(64, 'a6db1355-3abe-11e9-8de3-80fa5b45280e', 'Haenry Hlongwana', 2, '2019-03-13 19:15:15', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(65, 'cf9b3649-314d-44d5-abe5-3c5cc7363af6', 'Simiso Shange', 2, '2019-03-13 19:15:18', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(66, 'a6db1355-3abe-11e9-8de3-80fa5b45280e', 'Haenry Hlongwana', 2, '2019-03-13 19:18:27', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(67, 'cf9b3649-314d-44d5-abe5-3c5cc7363af6', 'Simiso Shange', 2, '2019-03-13 19:18:29', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(68, 'cf9b3649-314d-44d5-abe5-3c5cc7363af6', 'Simiso Shange', 2, '2019-03-13 19:18:43', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(69, '8c62d729-f4d3-11e8-bc75-f48e38e878a3', 'Jane Zikhali', 2, '2019-03-13 19:27:23', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(70, '8c5285ec-f4d3-11e8-bc75-f48e38e878a3', 'Freedom Khanyile', 2, '2019-03-13 19:27:25', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(71, '3d84c984-3513-11e9-845b-80fa5b45280e', 'Smith Sosibo', 2, '2019-03-13 19:27:26', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(72, '8c5285ec-f4d3-11e8-bc75-f48e38e878a3', 'Freedom Khanyile', 2, '2019-03-13 19:27:27', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(73, '8c62d729-f4d3-11e8-bc75-f48e38e878a3', 'Jane Zikhali', 2, '2019-03-13 19:27:28', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(74, 'a6db1355-3abe-11e9-8de3-80fa5b45280e', 'Haenry Hlongwana', 2, '2019-03-13 19:27:28', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(75, 'ceb9d536-f4d3-11e8-bc75-f48e38e878a3', 'Nduduzo Magwaza', 2, '2019-03-13 19:27:29', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(76, 'cf9b3649-314d-44d5-abe5-3c5cc7363af6', 'Simiso Shange', 2, '2019-03-13 19:27:30', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(77, 'ceb9d536-f4d3-11e8-bc75-f48e38e878a3', 'Nduduzo Magwaza', 2, '2019-03-13 19:27:30', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(78, 'a6db1355-3abe-11e9-8de3-80fa5b45280e', 'Haenry Hlongwana', 2, '2019-03-13 19:27:31', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(79, '8c62d729-f4d3-11e8-bc75-f48e38e878a3', 'Jane Zikhali', 2, '2019-03-13 19:27:32', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(80, '8c5285ec-f4d3-11e8-bc75-f48e38e878a3', 'Freedom Khanyile', 2, '2019-03-13 19:27:32', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(81, '3d84c984-3513-11e9-845b-80fa5b45280e', 'Smith Sosibo', 2, '2019-03-13 19:27:33', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(82, '8c5285ec-f4d3-11e8-bc75-f48e38e878a3', 'Freedom Khanyile', 2, '2019-03-13 19:27:34', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(83, '8c62d729-f4d3-11e8-bc75-f48e38e878a3', 'Jane Zikhali', 2, '2019-03-13 19:27:34', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(84, 'a6db1355-3abe-11e9-8de3-80fa5b45280e', 'Haenry Hlongwana', 2, '2019-03-13 19:27:35', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(85, 'ceb9d536-f4d3-11e8-bc75-f48e38e878a3', 'Nduduzo Magwaza', 2, '2019-03-13 19:27:36', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(86, 'a6db1355-3abe-11e9-8de3-80fa5b45280e', 'Haenry Hlongwana', 2, '2019-03-16 11:11:42', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(87, '3d84c984-3513-11e9-845b-80fa5b45280e', 'Smith Sosibo', 2, '2019-03-16 12:15:28', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(88, 'ceb9d536-f4d3-11e8-bc75-f48e38e878a3', 'Nduduzo Magwaza', 2, '2019-03-16 12:15:39', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(89, 'cf9b3649-314d-44d5-abe5-3c5cc7363af6', 'Simiso Shange', 2, '2019-03-16 19:24:40', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(90, 'a6db1355-3abe-11e9-8de3-80fa5b45280e', 'Haenry Hlongwana', 2, '2019-03-16 19:24:46', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(91, '3d84c984-3513-11e9-845b-80fa5b45280e', 'Smith Sosibo', 2, '2019-03-16 19:24:50', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(92, '8c5285ec-f4d3-11e8-bc75-f48e38e878a3', 'Freedom Khanyile', 2, '2019-03-18 23:05:54', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(93, 'ceb9d536-f4d3-11e8-bc75-f48e38e878a3', 'Nduduzo Magwaza', 2, '2019-03-18 23:06:04', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(94, '3d84c984-3513-11e9-845b-80fa5b45280e', 'Smith Sosibo', 2, '2019-03-21 15:11:40', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(95, '8c5285ec-f4d3-11e8-bc75-f48e38e878a3', 'Freedom Khanyile', 2, '2019-03-21 15:11:43', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(96, '3d84c984-3513-11e9-845b-80fa5b45280e', 'Smith Sosibo', 2, '2019-03-21 19:57:48', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(97, '849a510c-4bf3-11e9-95e2-80fa5b45280e', 'Smith Sosibo', 2, '2019-03-21 19:58:08', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(98, 'ceb9d536-f4d3-11e8-bc75-f48e38e878a3', 'Nduduzo Magwaza', 2, '2019-03-21 19:58:12', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(99, '4e08589d-4c02-11e9-b0af-f48e38e878a3', 'Themba Mokoena', 2, '2019-03-21 19:58:18', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(100, '3d84c984-3513-11e9-845b-80fa5b45280e', 'Smith Sosibo', 2, '2019-03-21 20:26:03', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(101, '4e08589d-4c02-11e9-b0af-f48e38e878a3', 'Themba Mokoena', 2, '2019-03-21 22:08:50', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(102, '849a510c-4bf3-11e9-95e2-80fa5b45280e', 'Smith Sosibo', 2, '2019-04-03 21:15:25', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(103, '8c5285ec-f4d3-11e8-bc75-f48e38e878a3', 'Freedom Khanyile', 2, '2019-04-03 22:21:23', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(104, '8c5285ec-f4d3-11e8-bc75-f48e38e878a3', 'Freedom Khanyile', 2, '2019-04-03 22:21:28', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(105, 'ceb9d536-f4d3-11e8-bc75-f48e38e878a3', 'Nduduzo Magwaza', 2, '2019-04-13 12:06:56', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3'),
(106, 'cf9b3649-314d-44d5-abe5-3c5cc7363af6', 'Simiso Shange', 1, '2019-04-13 12:07:01', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `RoleId` varchar(225) NOT NULL,
  `Description` varchar(225) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` varchar(225) NOT NULL,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `StatusId` int(11) NOT NULL,
  `Description` varchar(225) NOT NULL,
  `CreateUserId` varchar(225) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IsActive` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`StatusId`, `Description`, `CreateUserId`, `CreateDate`, `ModifyUserId`, `ModifyDate`, `IsActive`) VALUES
(1, 'active', '1', '2018-08-10 09:06:48', '1', '2018-08-10 09:06:48', 1),
(2, 'disabled', '1', '2018-08-10 09:07:57', '1', '2018-08-10 09:07:57', 1),
(3, 'blocked', '1', '2018-08-10 09:07:57', '1', '2018-08-10 09:07:57', 1),
(4, 'incomplete', '1', '2018-08-10 09:07:57', '1', '2018-08-10 09:07:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserId` varchar(225) NOT NULL,
  `Email` varchar(225) NOT NULL,
  `Password` varchar(225) NOT NULL,
  `FirstName` varchar(225) NOT NULL,
  `Surname` varchar(225) NOT NULL,
  `Title` varchar(10) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `PhoneNumber` varchar(20) NOT NULL,
  `IdNumber` varchar(20) NOT NULL,
  `CreateUserId` varchar(225) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ParentId` varchar(225) DEFAULT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserId`, `Email`, `Password`, `FirstName`, `Surname`, `Title`, `Gender`, `PhoneNumber`, `IdNumber`, `CreateUserId`, `CreateDate`, `ModifyUserId`, `ModifyDate`, `ParentId`, `StatusId`) VALUES
('0f567556-68fd-11e9-88fd-80fa5b45280e', 'WQS@EWD', '321', 'saS', 'S', 'Mrs', 'Male', '3213', '2132', 'SYS', '2019-04-27 16:59:30', 'SYS', '2019-04-27 16:59:30', NULL, 4),
('fe47252d-34cc-11e9-8a5d-f48e38e878a3', 'doc@mail.com', 'pass', 'n/a', 'n/a', '', '', 'n/a', 'n/a', '1', '2018-08-10 09:06:25', '1', '2018-08-10 09:06:25', '2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user-practice`
--

CREATE TABLE `user-practice` (
  `Id` varchar(225) NOT NULL,
  `UserId` varchar(225) NOT NULL,
  `PracticeId` varchar(225) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user-roles`
--

CREATE TABLE `user-roles` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(225) NOT NULL,
  `RoleId` varchar(225) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`AppointmentId`);

--
-- Indexes for table `contactperson`
--
ALTER TABLE `contactperson`
  ADD PRIMARY KEY (`ContactPersonId`);

--
-- Indexes for table `medicalaid`
--
ALTER TABLE `medicalaid`
  ADD PRIMARY KEY (`MedicalaidId`);

--
-- Indexes for table `medication`
--
ALTER TABLE `medication`
  ADD PRIMARY KEY (`medicationId`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`NoteId`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`PatientId`);

--
-- Indexes for table `practice`
--
ALTER TABLE `practice`
  ADD PRIMARY KEY (`PracticeId`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`prescriptionId`);

--
-- Indexes for table `prescription_medication_drug`
--
ALTER TABLE `prescription_medication_drug`
  ADD PRIMARY KEY (`prescriptionMedicationId`);

--
-- Indexes for table `que`
--
ALTER TABLE `que`
  ADD PRIMARY KEY (`QuiID`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`RoleId`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`StatusId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserId`);

--
-- Indexes for table `user-practice`
--
ALTER TABLE `user-practice`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `user-roles`
--
ALTER TABLE `user-roles`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `que`
--
ALTER TABLE `que`
  MODIFY `QuiID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `StatusId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user-roles`
--
ALTER TABLE `user-roles`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
