-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2019 at 09:29 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `philhealth`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblemployee`
--

CREATE TABLE `tblemployee` (
  `ID` int(11) NOT NULL,
  `Efname` varchar(255) NOT NULL,
  `Elname` varchar(255) NOT NULL,
  `Egender` varchar(6) NOT NULL,
  `Ebirthdate` date NOT NULL,
  `Edept` varchar(255) NOT NULL,
  `rank` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployee`
--

INSERT INTO `tblemployee` (`ID`, `Efname`, `Elname`, `Egender`, `Ebirthdate`, `Edept`, `rank`) VALUES
(1, 'Timothyeo', 'Doe', 'Male', '1993-11-25', 'IT', '3'),
(2, 'John', 'Doe', 'Male', '1993-11-25', 'IT', ''),
(3, 'MARK', 'Doe', 'Male', '1994-12-15', 'ACCOUNTING', '1'),
(4, 'John', 'Mark', 'Male', '1984-12-15', 'ACCOUNTING', '1'),
(5, 'Matt', 'Slick', 'Male', '1954-12-15', 'ENGINEERING', '1'),
(6, 'Scott', 'Hahn', 'Male', '1996-12-15', 'ACCOUNTING', '1'),
(7, 'Patrick', 'Madrid', 'Male', '1998-12-15', 'MARKETING', '1'),
(8, 'Tim', 'Staples', 'Female', '1984-12-15', 'IT', '3'),
(9, 'Peter', 'Kreft', 'Male', '1995-12-15', 'ACCOUNTING', '1'),
(10, 'Trent', 'Horn', 'Male', '1996-12-15', 'SALES', '5'),
(11, 'Mike', 'Aqualina', 'Male', '2000-02-04', 'IT', '1'),
(12, 'Sherlock', 'Holmes', 'Male', '1993-04-12', 'IT', '1'),
(13, 'Shely', 'Ho', 'Male', '1900-12-03', 'IT', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `ID` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `nickname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`ID`, `username`, `password`, `role`, `nickname`) VALUES
(1, 'john123', '12345', 'admin', 'Johnny'),
(2, 'she123', '12345', 'admin', 'Sherlock'),
(3, 'gab', '12345', 'admin', 'gabby');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblemployee`
--
ALTER TABLE `tblemployee`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblemployee`
--
ALTER TABLE `tblemployee`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
