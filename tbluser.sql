-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2018 at 08:53 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pdo`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `id` int(11) NOT NULL,
  `Name` varchar(120) NOT NULL,
  `PhoneNumber` char(11) NOT NULL,
  `Emailid` varchar(150) NOT NULL,
  `PostingDate` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`id`, `Name`, `PhoneNumber`, `Emailid`, `PostingDate`) VALUES
(3, 'Ak', '483642366', 'shjashj@gmail.com', '2018-06-22 07:'),
(4, 'Anuj', '371537152', 'phpfgurukulofficial@gmail.com', '6/22/2018 7:01'),
(5, 'Sanjeev', '564234234', 'test@test.com', '6/25/2018 7:01'),
(6, 'Demo', '653456789', 'phpfgurukulofficial@gmail.com', '6/28/2018 7:01'),
(7, 'User', '811662362', 'test@test.com', '7/1/2018 7:01'),
(8, 'Test', '952622180.5', 'phpfgurukulofficial@gmail.com', '7/4/2018 7:01'),
(9, 'asdasd', '1093581999', 'test@test.com', '7/7/2018 7:01'),
(10, 'Amit', '1234541818', 'phpfgurukulofficial@gmail.com', '7/10/2018 7:01'),
(11, 'Johm', '1375501636', 'test@test.com', '7/13/2018 7:01'),
(12, 'Herry', '1516461455', 'phpfgurukulofficial@gmail.com', '7/16/2018 7:01'),
(13, 'Alex', '1657421273', 'test@test.com', '7/19/2018 7:01'),
(14, 'Rahul', '1798381092', 'phpfgurukulofficial@gmail.com', '7/22/2018 7:01'),
(15, 'Dummy', '1939340910', 'test@test.com', '7/25/2018 7:01'),
(16, 'Xyzzz', '2080300729', 'phpfgurukulofficial@gmail.com', '7/28/2018 7:01'),
(17, 'ABX', '2221260547', 'test@test.com', '7/31/2018 7:01'),
(18, 'ABC', '2362220366', 'phpfgurukulofficial@gmail.com', '8/3/2018 7:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
