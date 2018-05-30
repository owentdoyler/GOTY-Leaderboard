-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2017 at 12:47 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `goty`
--

-- --------------------------------------------------------

--
-- Table structure for table `competitions`
--

CREATE TABLE IF NOT EXISTS `competitions` (
  `compNum` int(11) NOT NULL,
  `compName` varchar(255) NOT NULL,
  `compDate` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `competitions`
--

INSERT INTO `competitions` (`compNum`, `compName`, `compDate`) VALUES
(1, 'March Medal', '2017-03-25'),
(2, 'April Medal', '2017-04-15'),
(3, 'May Medal', '2017-05-13'),
(4, 'June Medal', '2017-06-24'),
(5, 'Captain''s Prize', '2017-07-15'),
(6, 'July Medal', '2017-07-22'),
(7, 'August Medal', '2017-08-12'),
(8, 'Gold Medal', '2017-09-09'),
(9, 'President''s Prize', '2017-09-30'),
(10, 'October Medal', '2017-10-14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `competitions`
--
ALTER TABLE `competitions`
  ADD PRIMARY KEY (`compNum`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `competitions`
--
ALTER TABLE `competitions`
  MODIFY `compNum` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
