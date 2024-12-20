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
-- Table structure for table `stu_table`
--

CREATE TABLE `stu_table` (
  `Sl_No` int(11) NOT NULL,
  `S_Id` varchar(20) NOT NULL,
  `Student_Name` varchar(50) NOT NULL,
  `Stream` varchar(20) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Phon_No` varchar(15) NOT NULL,
  `Student_Email` varchar(30) NOT NULL,
  `Password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stu_table`
--

INSERT INTO `stu_table` (`Sl_No`, `S_Id`, `Student_Name`, `Stream`, `City`, `Gender`, `Phon_No`, `Student_Email`, `Password`) VALUES
(2, 'STU8581', 'Srijit Bera', 'BCA', 'Kolkata', 'Male', '9073391252', 'jitbera2003@gmail.com', '12345'),
(4, 'STU2419', 'riya roy', 'BCA', 'Bengalore', 'Female', '9874563210', 'riya@gmail.com', '123456'),
(5, 'STU3137', 'rima shaw', 'BBA', 'Kolkata', 'Female', '8745632541', 'rima@gmail.com', '123456'),
(21, 'STU7537', 'Raja Das', 'B.Sc', 'Delhi', 'Male', '3164978529', 'raja@gmail.com', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stu_table`
--
ALTER TABLE `stu_table`
  ADD PRIMARY KEY (`Sl_No`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stu_table`
--
ALTER TABLE `stu_table`
  MODIFY `Sl_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
