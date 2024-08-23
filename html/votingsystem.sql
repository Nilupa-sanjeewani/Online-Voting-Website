-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2020 at 08:35 AM
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
-- Database: `votingsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `name` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `phonenumber` int(11) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `logininfo`
--

CREATE TABLE `logininfo` (
  `userid` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logininfo`
--

INSERT INTO `logininfo` (`userid`, `username`, `password`) VALUES
(1, 'benjamin4', '123456vI@'),
(2, 'martin143', '234567cI@'),
(3, 'timcook15', '345678sI@');

-- --------------------------------------------------------

--
-- Table structure for table `performer`
--

CREATE TABLE `performer` (
  `performerid` int(11) NOT NULL,
  `performername` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `performer`
--

INSERT INTO `performer` (`performerid`, `performername`, `city`, `age`) VALUES
(1, 'Selena Michelle', 'New York', 24),
(2, 'Martin Arthur', 'San Francisco', 21),
(3, 'Megan Daniel', 'Chicago', 22),
(4, 'Oliver James', 'Los Angeles', 21),
(5, 'Ann Amelin', 'Boston', 23),
(6, 'Robert Harry', 'Chicago', 24),
(7, 'Noah Alexander', 'Washington', 19),
(8, 'Charlotte Harpe', 'New York', 20),
(9, 'Liam Jacob', 'Boston', 21),
(10, 'Isabella Sophia', 'London', 24),
(11, 'James Mason', 'Paris', 22),
(12, 'Emily Natalia', 'Chicago', 19);

-- --------------------------------------------------------

--
-- Table structure for table `registerinfo`
--

CREATE TABLE `registerinfo` (
  `fname` varchar(10) NOT NULL,
  `lname` varchar(10) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `mnumber` int(12) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `dobd` int(11) NOT NULL,
  `dobm` varchar(12) NOT NULL,
  `doby` int(4) NOT NULL,
  `password` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ses1results`
--

CREATE TABLE `ses1results` (
  `performerid` int(11) NOT NULL,
  `performername` varchar(15) NOT NULL,
  `votes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ses1results`
--

INSERT INTO `ses1results` (`performerid`, `performername`, `votes`) VALUES
(1, 'Selena Michelle', 1034),
(2, 'Martin Arthur', 1236),
(3, 'Megan Daniel', 2756),
(4, 'Oliver James', 1745),
(5, 'Ann Amelin', 1877),
(6, 'Robert Harry', 1877);

-- --------------------------------------------------------

--
-- Table structure for table `ses2results`
--

CREATE TABLE `ses2results` (
  `performerid` int(11) NOT NULL,
  `performername` varchar(15) NOT NULL,
  `votes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ses2results`
--

INSERT INTO `ses2results` (`performerid`, `performername`, `votes`) VALUES
(7, 'Noah Alexander', 2317),
(8, 'Charlotte Harpe', 1566),
(9, 'Liam Jacob', 2458),
(10, 'Isabella Sophia', 1745),
(11, 'James Mason', 1649),
(12, 'Emily Natalia', 2236);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`phonenumber`);

--
-- Indexes for table `logininfo`
--
ALTER TABLE `logininfo`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `performer`
--
ALTER TABLE `performer`
  ADD PRIMARY KEY (`performerid`);

--
-- Indexes for table `registerinfo`
--
ALTER TABLE `registerinfo`
  ADD PRIMARY KEY (`mnumber`);

--
-- Indexes for table `ses1results`
--
ALTER TABLE `ses1results`
  ADD PRIMARY KEY (`performerid`);

--
-- Indexes for table `ses2results`
--
ALTER TABLE `ses2results`
  ADD PRIMARY KEY (`performerid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
