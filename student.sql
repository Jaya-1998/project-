-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2018 at 01:03 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(45) NOT NULL,
  `pasword` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `occupation` varchar(45) NOT NULL,
  `technology` varchar(45) NOT NULL,
  `companyname` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `mob` varchar(45) NOT NULL,
  `collagename` varchar(45) NOT NULL,
  `prn` varchar(20) NOT NULL,
  `dpt` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name`, `address`, `occupation`, `technology`, `companyname`, `dob`, `email`, `mob`, `collagename`, `prn`, `dpt`, `status`) VALUES
(8, 'atul', 'jkjh', 'kjhkjh', 'kjh', 'kjh', 'kj', 'hkj', 'hk', 'jh', 'kjh', 'kjhkjh', 'active'),
(10, 'lkj', 'lkj', 'lk', 'jlk', 'jlk', 'jlk', 'j', 'lkj', 'lk', 'jlksdasd', 'jlk', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `prn` (`prn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
