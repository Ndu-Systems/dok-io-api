-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2019 at 06:14 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

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
('482cb7da-34cd-11e9-8a5d-f48e38e878a3', '8c5285ec-f4d3-11e8-bc75-f48e38e878a3', 'Discovery', 'Delta server', '4545788778', 'Freedom Khanyile', '9306125458195', '2019-02-20 07:13:16', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-02-20 07:13:16', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1);

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
('2d6a6af7-34cd-11e9-8a5d-f48e38e878a3', 'Flue cough', 'Flue cough', '2018-11-23 10:24:25', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-02-01 21:49:25', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('2d708510-34cd-11e9-8a5d-f48e38e878a3', 'Panado', 'Panado', '2018-11-23 12:19:11', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-02-01 21:49:25', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('2d708630-34cd-11e9-8a5d-f48e38e878a3', 'Cleanzing Agent', 'Cleanzing Agent', '2018-11-30 21:29:49', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-02-01 21:49:25', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `PatientId` varchar(225) NOT NULL,
  `FirstName` varchar(225) NOT NULL,
  `Surname` varchar(225) NOT NULL,
  `IdNumber` varchar(15) NOT NULL,
  `DOB` varchar(10) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Email` varchar(225) NOT NULL,
  `Cellphone` varchar(25) NOT NULL,
  `AddressLine1` varchar(225) NOT NULL,
  `AddressLine2` varchar(225) NOT NULL,
  `AddressLine3` varchar(225) NOT NULL,
  `City` varchar(225) NOT NULL,
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

INSERT INTO `patient` (`PatientId`, `FirstName`, `Surname`, `IdNumber`, `DOB`, `Gender`, `Email`, `Cellphone`, `AddressLine1`, `AddressLine2`, `AddressLine3`, `City`, `PostCode`, `CreateUserId`, `CreateDate`, `ModifyUserId`, `ModifyDate`, `StatusId`) VALUES
('8c5285ec-f4d3-11e8-bc75-f48e38e878a3', 'Freedom', 'Khanyile', '920725050208', '1992-07-25', 'Male', 'freedom.khanyile1@gmail.com', '0746958061', '12 Jacaranda Lane', 'Boskruin', '12 Panther Road', 'Johannesburg', '2100', '1', '2018-11-23 10:13:55', '1', '2018-11-23 10:20:07', 1),
('8c62d729-f4d3-11e8-bc75-f48e38e878a3', 'Jane', 'Zikhali', '530610050208', '1953-06-10', 'Female', 'Jane.Zikhali@gmail.com', '0748258825', 'Green Stones', 'News Cafe', '1 Main Road', 'Johannesburg', '2100', '1', '2018-11-28 22:01:23', '1', '2018-11-28 22:01:23', 1),
('ceb9d536-f4d3-11e8-bc75-f48e38e878a3', 'Nduduzo', 'Magwaza', '00000000000', '1998-08-24', 'Male', 'magwaza@mail.com', '0748508258', 'Angular', 'Road', '212', 'Johannesburg', '2194', '1', '2018-11-30 21:11:57', '1', '2018-11-30 21:35:51', 1),
('cf9b3649-314d-44d5-abe5-3c5cc7363af6', 'Simiso', 'Shange', '830610050208', '1983-06-10', 'Male', 'Simiso.Shange@gmail.com', '0748258225', 'Braamfontein Gate', 'Maboneng', '1 Main Road', 'Johannesburg', '2100', '1', '2018-12-04 08:38:25', '1', '2018-12-04 08:38:26', 1);

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
  `createdate` datetime NOT NULL,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`prescriptionId`, `patientId`, `symptoms`, `diagnosis`, `boolPreasure`, `pulseRate`, `createdate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('210d4f40-34cd-11e9-8a5d-f48e38e878a3', 'ceb9d536-f4d3-11e8-bc75-f48e38e878a3', 'default value', 'Flue', '100', '100', '2018-11-23 10:24:31', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-02-01 21:51:07', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('2110a6e6-34cd-11e9-8a5d-f48e38e878a3', 'ceb9d536-f4d3-11e8-bc75-f48e38e878a3', 'default value', 'Headaches', '50', '50', '2018-11-23 12:19:13', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-02-01 21:51:07', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1),
('2110a7eb-34cd-11e9-8a5d-f48e38e878a3', 'ceb9d536-f4d3-11e8-bc75-f48e38e878a3', 'default value', 'Injection Failed', '55', '25', '2018-11-30 21:33:25', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', '2019-02-01 21:51:07', 'fe47252d-34cc-11e9-8a5d-f48e38e878a3', 1);

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
('73ebbbe0-34cd-11e9-8a5d-f48e38e878a3', '210d4f40-34cd-11e9-8a5d-f48e38e878a3', '2d6a6af7-34cd-11e9-8a5d-f48e38e878a3', '1', '3', '2018-11-23 10:24:31', '', '2019-02-01 21:51:57', '', 1),
('73ee708f-34cd-11e9-8a5d-f48e38e878a3', '2110a6e6-34cd-11e9-8a5d-f48e38e878a3', '2d708510-34cd-11e9-8a5d-f48e38e878a3', '1', '3', '2018-11-23 12:19:14', '', '2019-02-01 21:51:57', '', 1),
('73ee7184-34cd-11e9-8a5d-f48e38e878a3', '2110a7eb-34cd-11e9-8a5d-f48e38e878a3', '2d708630-34cd-11e9-8a5d-f48e38e878a3', '2', '0', '2018-11-30 21:33:25', '', '2019-02-01 21:51:57', '', 1);

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
  `Username` varchar(225) NOT NULL,
  `Email` varchar(225) NOT NULL,
  `Password` varchar(225) NOT NULL,
  `CreateUserId` varchar(225) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UserFlags` int(11) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserId`, `Username`, `Email`, `Password`, `CreateUserId`, `CreateDate`, `ModifyUserId`, `ModifyDate`, `UserFlags`, `StatusId`) VALUES
('fe47252d-34cc-11e9-8a5d-f48e38e878a3', 'doc@mail.com', 'doc@mail.com', 'pass', '1', '2018-08-10 09:06:25', '1', '2018-08-10 09:06:25', 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`AppointmentId`);

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
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`PatientId`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `StatusId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
