-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2019 at 01:42 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `umuzi_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `Gender` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `Phone` varchar(45) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `City` varchar(45) NOT NULL,
  `Country` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `FirstName`, `LastName`, `Gender`, `Address`, `Phone`, `Email`, `City`, `Country`) VALUES
(1, 'John', 'Hibert', 'Male', '284 Chaucer st', '084789657', 'john@gmail.com', 'Johannesburg', 'South Africa'),
(2, 'Thando', 'Sithole', 'Female', '240 Sect 1', '0794445584', 'thando@gmail.com', 'Cape Town', 'South Africa'),
(3, 'Leon', 'Glen', 'Male', '81 Everton Rd, Gillits', '0820832830', 'Leon@gmail.com', 'Durban', 'South Africa'),
(4, 'Charl', 'Muller', 'Male', '290A Dorset Ecke', '+44856872553', 'Charl.muller@yahoo.com', 'Berlin', 'Germany'),
(5, 'Julia', 'Stein', 'Female', '2 Wernerring', '+448672445058', 'Js234@yahoo.com', 'Frankfurt', 'Germany');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `EmployeeID` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `JobTitle` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`EmployeeID`, `FirstName`, `LastName`, `Email`, `JobTitle`) VALUES
(1, 'Kani', 'Mathew', 'mat@gmail.com', 'Manager'),
(2, 'Lesly', 'Cronje', 'LesC@gmail.com', 'Clerk'),
(3, 'Gideon', 'Maduku', 'm@gmail.com', 'Accountant');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `Order` datetime NOT NULL,
  `DateRequired` date NOT NULL,
  `DateShipped` date NOT NULL,
  `Status` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `Order`, `DateRequired`, `DateShipped`, `Status`) VALUES
(1, '2018-09-01 00:00:00', '2018-09-05', '2018-09-02', 'Not shipped'),
(2, '2018-09-01 00:00:00', '2018-09-04', '2018-09-03', 'Shipped'),
(3, '2018-09-01 00:00:00', '2018-09-03', '2018-09-02', 'Not shipped');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `CustomerID` int(11) NOT NULL,
  `PaymentDate` datetime NOT NULL,
  `Amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`CustomerID`, `PaymentDate`, `Amount`) VALUES
(1, '2018-09-01 00:00:00', '100.00'),
(2, '2018-09-01 00:00:00', '250.75');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(45) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `BuyPrice` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ProductName`, `Description`, `BuyPrice`) VALUES
(1, 'Harley Davidson Chopper', 'This replica features working kickstand, front suspension, gear-shift lever', '150.75'),
(2, 'Classic Car', 'Turnable front wheels, steering function', '550.75'),
(3, 'Sports car', 'Turnable front wheels, steering function', '700.60');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `EmployeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
