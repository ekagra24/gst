-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2020 at 12:29 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gst`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(10) NOT NULL,
  `admin_password` varchar(10) NOT NULL,
  `admin_username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_password`, `admin_username`) VALUES
(1, 'Sudhanshu', 'pass@123', 'ekagra');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_state` varchar(255) NOT NULL,
  `customer_country` varchar(255) NOT NULL,
  `customer_postalcode` varchar(10) NOT NULL,
  `customer_mobile` varchar(12) NOT NULL,
  `product_id` varchar(10) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` decimal(10,0) NOT NULL,
  `product_price` decimal(10,0) NOT NULL,
  `product_discount` int(10) NOT NULL,
  `product_gst` int(10) NOT NULL,
  `product_total` decimal(10,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `customer_name`, `customer_email`, `customer_address`, `customer_state`, `customer_country`, `customer_postalcode`, `customer_mobile`, `product_id`, `product_name`, `product_quantity`, `product_price`, `product_discount`, `product_gst`, `product_total`) VALUES
(3, 'ekagra', 'ekagra@gmail.com', 'lpu', 'phagwara', 'India', '121231', '0912309842', '', '', '0', '0', 0, 0, '0.000'),
(4, 'ekagra', 'ekagra@gmail.com', 'lpu', 'phagwara', 'India', '121231', '0912309842', '', '', '0', '0', 0, 0, '0.000'),
(5, 'marie', 'marie@gmail.com', '13 china town', 'wuhan', 'chaina', '109219', '091209129', '', '', '0', '0', 0, 0, '0.000'),
(6, 'marie', 'marie@gmail.com', 'mainland', 'wuhan', 'chine', '133303', '10293409123', '192384123', 'asjdfkjasdf', '2', '1', 25, 18, '1.770'),
(7, 'Gourav Sharma', 'gourab@gmail.com', 'bathinda, mohalla 36', 'Punjab', 'India', '133312', '8930999930', 'ip123321a9', 'iphone-X pro', '2', '40000', 25, 18, '70800.000'),
(8, 'Saurabh', 'saurabh@gmail.com', 'rewari', 'haryana', 'india', '133323', '093140932', 'jo2093094', 'Iphone-x', '2', '20000', 25, 18, '35400.000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
