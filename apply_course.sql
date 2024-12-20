-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2024 at 04:05 AM
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
-- Database: `strsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `apply_course`
--

CREATE TABLE `apply_course` (
  `slno` int(11) NOT NULL,
  `sid` varchar(20) NOT NULL,
  `courseName` varchar(50) NOT NULL,
  `Applydate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apply_course`
--

INSERT INTO `apply_course` (`slno`, `sid`, `courseName`, `Applydate`, `cid`) VALUES
(1, 'STU4572', 'Python\r\n', '2024-08-11 13:34:32', 101),
(2, 'STU6239', 'Java\r\n', '2024-08-11 13:34:37', 102);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apply_course`
--
ALTER TABLE `apply_course`
  ADD PRIMARY KEY (`slno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apply_course`
--
ALTER TABLE `apply_course`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
