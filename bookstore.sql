-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2018 at 10:31 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(250) NOT NULL,
  `book_name` varchar(200) NOT NULL,
  `author` varchar(500) NOT NULL,
  `book_price` varchar(200) NOT NULL,
  `book_type` varchar(200) NOT NULL,
  `publisher_name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book_name`, `author`, `book_price`, `book_type`, `publisher_name`) VALUES
(1, 'java script', '', '250', 'study', ''),
(2, 'java', '', '500', 'study', ''),
(3, 'java', '', '500', 'study', 'publisher'),
(4, 'english', '', '200', 'study', 'test'),
(5, 'Programing C', 'Rupesh', '999', 'study', 'publisher'),
(6, 'Java', 'Rupesh', '369', 'study', 'publisher'),
(7, 'Advanced Java', 'Sunil', '989', 'Notes', 'publisher'),
(8, 'Advanced Java', 'Sunil', '989', 'Notes', 'publisher'),
(9, 'Advanced Java', 'Rupesh', '1028', 'Notes', 'publisher'),
(10, 'Advanced JAVA', 'Rupesh', '1949', 'Notes', 'publisher'),
(11, 'Advanced JAVA', 'Rupesh', '1949', 'Novel', 'publisher'),
(12, 'Advanced JAVA', 'Rupesh', '1949', 'Novel', 'publisher');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `txn_no` int(250) NOT NULL,
  `customer_name` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `contact` varchar(500) NOT NULL,
  `item` varchar(500) NOT NULL,
  `price` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`txn_no`, `customer_name`, `address`, `contact`, `item`, `price`) VALUES
(1, 'rupesh', 'bbsr', '8095124559', 'java book', '500'),
(3, 'rupesh', 'bbsr', '8461946616', 'Programing C', '999'),
(4, 'rupesh', 'bermunda', '8968457215', 'Programing C', '999'),
(5, 'rupesh', 'jagamara', '16155151615', 'Programing C', '999'),
(6, 'rupesh', 'bbsr', '9856214573', 'java script', '250'),
(7, 'rupesh', 'bbsr', '9856214573', 'java script', '250'),
(8, 'rupesh', 'bbsr', '9856214573', 'java script', '250'),
(9, 'rupesh', 'bbsr', '9856214573', 'Programing C', '999'),
(10, 'rupesh', 'bbsr', '9856214573', 'Programing C', '999'),
(11, 'rupesh', 'bbsr', '9856214573', 'Programing C', '999'),
(12, 'rupesh', 'bermunda', '16155151615', 'Advanced JAVA', '1949');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(250) NOT NULL,
  `name` varchar(500) NOT NULL,
  `uname` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `cpassword` varchar(500) NOT NULL,
  `utype` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `uname`, `password`, `cpassword`, `utype`) VALUES
(9, 'publisher', 'publisher', 'publisher', 'publisher', 'publisher'),
(10, 'admin', 'admin', 'admin', 'admin', 'admin'),
(11, 'test', 'rupesh', 'rupesh', 'rupesh', 'publisher'),
(12, 'vu', 'test', '065', '161', 'admin'),
(13, 'vu', 'test', '5555', '1616', 'admin'),
(14, 'fty', 'cycyg', 'vu', 'vgj', 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`txn_no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `txn_no` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
