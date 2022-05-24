-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2022 at 08:24 PM
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
-- Database: `phoenix_airline`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` int(11) NOT NULL,
  `aname` varchar(100) DEFAULT NULL,
  `akey` varchar(100) DEFAULT NULL,
  `aemail` varchar(100) DEFAULT NULL,
  `atele` char(10) DEFAULT NULL,
  `apass` varchar(100) DEFAULT NULL,
  `acopass` varchar(100) DEFAULT NULL,
  `aaddress` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `aname`, `akey`, `aemail`, `atele`, `apass`, `acopass`, `aaddress`) VALUES
(101, 'Kavindu', '200017900187', 'kavindulakmal2000@gmail.com', '071511302', '21871', '21871', 'Rathnapura'),
(102, 'Ishara', '123456', 'user@gmail.com', '1234567890', '20456', '20456', 'Kurunegala');

-- --------------------------------------------------------

--
-- Table structure for table `flightdetails`
--

CREATE TABLE `flightdetails` (
  `flightID` varchar(30) NOT NULL,
  `departing_from` varchar(30) DEFAULT NULL,
  `departing_to` varchar(30) DEFAULT NULL,
  `departing_date` date DEFAULT NULL,
  `departureTime` time DEFAULT NULL,
  `arrivalTime` time DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flightdetails`
--

INSERT INTO `flightdetails` (`flightID`, `departing_from`, `departing_to`, `departing_date`, `departureTime`, `arrivalTime`, `price`) VALUES
('117', 'Italy ', 'Sri Lanka', '2022-05-13', '20:57:53', '08:23:53', 70000);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `sid` int(11) NOT NULL,
  `sname` varchar(100) DEFAULT NULL,
  `skey` varchar(100) DEFAULT NULL,
  `semail` varchar(100) DEFAULT NULL,
  `stele` varchar(100) DEFAULT NULL,
  `spass` varchar(100) DEFAULT NULL,
  `scopass` varchar(100) DEFAULT NULL,
  `saddress` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`sid`, `sname`, `skey`, `semail`, `stele`, `spass`, `scopass`, `saddress`) VALUES
(202, 'Lucky', '2000000000000000', 'user@gmail.com', '1234567890', '1111', '1111', 'user'),
(203, 'Chamathka', '30000000000000', 'newStaff3@gmail.com', '0769125651', '21268', '21268', 'staff3');

-- --------------------------------------------------------

--
-- Table structure for table `ticketdetails`
--

CREATE TABLE `ticketdetails` (
  `ticketID` int(11) NOT NULL,
  `passengerName` varchar(30) DEFAULT NULL,
  `cabinnClass` varchar(30) DEFAULT NULL,
  `seatType` varchar(30) DEFAULT NULL,
  `seatNum` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticketdetails`
--

INSERT INTO `ticketdetails` (`ticketID`, `passengerName`, `cabinnClass`, `seatType`, `seatNum`, `email`, `phone`) VALUES
(321, 'Kavindu', 'First Class', 'Center', '103', 'Kavindu@gmaill.comm', 71511500),
(322, 'Ishara', 'Economy Class', 'Center', '104', 'user@gmail.ccom', 1991991990);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(100) DEFAULT NULL,
  `ukey` varchar(100) DEFAULT NULL,
  `uemail` varchar(100) DEFAULT NULL,
  `utele` char(10) DEFAULT NULL,
  `upass` varchar(100) DEFAULT NULL,
  `ucopass` varchar(100) DEFAULT NULL,
  `uaddress` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `uname`, `ukey`, `uemail`, `utele`, `upass`, `ucopass`, `uaddress`) VALUES
(301, 'kevin', '200020202020202', 'asdas@gmial.com', '21233432', '1111', '1111', 'asdsxzc'),
(302, 'Madhushani', '10000000000', 'newUser@gmail.com', '0716254695', '21243', '21243', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`),
  ADD UNIQUE KEY `akey` (`akey`);

--
-- Indexes for table `flightdetails`
--
ALTER TABLE `flightdetails`
  ADD PRIMARY KEY (`flightID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `skey` (`skey`);

--
-- Indexes for table `ticketdetails`
--
ALTER TABLE `ticketdetails`
  ADD PRIMARY KEY (`ticketID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `ukey` (`ukey`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30005;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
