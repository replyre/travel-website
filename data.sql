-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2023 at 11:08 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trip_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `Sno` int(3) NOT NULL,
  `Name` text NOT NULL,
  `Age` int(3) NOT NULL,
  `Gender` varchar(8) NOT NULL,
  `email` text NOT NULL,
  `phone` varchar(10) NOT NULL,
  `covid` text NOT NULL,
  `dt` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`Sno`, `Name`, `Age`, `Gender`, `email`, `phone`, `covid`, `dt`) VALUES
(1, 'testcase', 23, 'male', 'this@that.com', '2323565689', 'No, I have been infected with covid till now.', '2023-01-06 21:24:37'),
(2, 'basic', 34, 'male', 'base@gmail.com', '6688669923', 'No, been fine since last year after bben infected once.', '2023-01-07 07:04:45'),
(3, 'red', 45, 'Male', 'fer@gmail.com', '4578784578', 'no, been fine since last year.', '2023-01-07 07:08:08'),
(4, 'red', 45, 'Male', 'fer@gmail.com', '4578784578', 'no, been fine since last year.', '2023-01-07 07:15:31'),
(5, 'red', 45, 'Male', 'red@gmail.com', '4578784578', 'yes, but me fine now, all my reports are -ve.', '2023-01-07 07:15:54'),
(6, 'red', 45, 'Male', 'red@gmail.com', '4578784578', 'yes, but me fine now, all my reports are -ve.', '2023-01-07 07:22:22'),
(7, 'red', 45, 'Male', 'red@gmail.com', '4578784578', 'yes, but me fine now, all my reports are -ve.', '2023-01-07 07:22:48'),
(8, 'red', 45, 'Male', 'red@gmail.com', '4578784578', 'yes, but me fine now, all my reports are -ve.', '2023-01-07 07:22:59'),
(9, 'red', 45, 'Male', 'red@gmail.com', '4578784578', 'yes, but me fine now, all my reports are -ve.', '2023-01-07 07:24:39'),
(10, 'red', 45, 'Male', 'red@gmail.com', '4578784578', 'yes, but me fine now, all my reports are -ve.', '2023-01-07 07:24:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`Sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `Sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
