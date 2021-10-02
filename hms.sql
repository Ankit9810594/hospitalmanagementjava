-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 30, 2021 at 03:11 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctor_record`
--

CREATE TABLE `doctor_record` (
  `id` varchar(200) NOT NULL,
  `DoctorName` text NOT NULL,
  `Specialization` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor_record`
--

INSERT INTO `doctor_record` (`id`, `DoctorName`, `Specialization`) VALUES
('1', 'Neurology', '10'),
('15', 'Roshan', 'Nerves'),
('3', 'Ishwor', 'Child Doctor'),
('4', 'Ishan Sharma', 'Psychology');

-- --------------------------------------------------------

--
-- Table structure for table `nurse_record`
--

CREATE TABLE `nurse_record` (
  `id` varchar(200) NOT NULL,
  `nurseName` text NOT NULL,
  `department` text NOT NULL,
  `ward` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nurse_record`
--

INSERT INTO `nurse_record` (`id`, `nurseName`, `department`, `ward`) VALUES
('1', 'Roshani Dhakal', 'ICU', '12'),
('2', 'Binita Adhikari', 'Maternity', '2');

-- --------------------------------------------------------

--
-- Table structure for table `paitient_record`
--

CREATE TABLE `paitient_record` (
  `id` varchar(200) NOT NULL,
  `PatientName` varchar(200) NOT NULL,
  `PatientDisease` text NOT NULL,
  `date` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paitient_record`
--

INSERT INTO `paitient_record` (`id`, `PatientName`, `PatientDisease`, `date`, `time`) VALUES
('12', 'Bishal', 'Fever', '29-09-2021', '15:17:25:PM'),
('2', 'Roshan', 'Common Cold', '22-10-2020', '00:41:19:AM'),
('4', 'Ishwor', 'Fever', '30-09-2021', '15:37:40:PM'),
('5', 'Shova Thapa', 'Fever', '30-09-2021', '16:27:23:PM');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `id` int(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor_record`
--
ALTER TABLE `doctor_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paitient_record`
--
ALTER TABLE `paitient_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
