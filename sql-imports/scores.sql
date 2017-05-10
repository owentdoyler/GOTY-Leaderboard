-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2017 at 12:45 AM
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
-- Table structure for table `scores`
--

CREATE TABLE IF NOT EXISTS `scores` (
  `id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `playerName` varchar(255) NOT NULL,
  `compNum` int(11) NOT NULL,
  `compName` varchar(255) NOT NULL,
  `css` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `gotyScore` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`id`, `position`, `playerName`, `compNum`, `compName`, `css`, `score`, `gotyScore`) VALUES
(100, 1, 'Bobby Hawkshaw', 1, 'March Medal', 74, 71, -3),
(101, 2, 'Shaun O Connor', 1, 'March Medal', 74, 72, -2),
(102, 3, 'Mark McClean', 1, 'March Medal', 74, 72, -2),
(103, 4, 'Dylan Brophy', 1, 'March Medal', 74, 73, -1),
(104, 5, 'Colm Kelly', 1, 'March Medal', 74, 74, 0),
(105, 6, 'David Hague', 1, 'March Medal', 74, 75, 1),
(106, 7, 'Eugene Daly', 1, 'March Medal', 74, 75, 1),
(107, 8, 'George Coombes', 1, 'March Medal', 74, 76, 2),
(108, 9, 'Oliver Coughlan', 1, 'March Medal', 74, 77, 3),
(109, 10, 'Owen Doyle', 1, 'March Medal', 74, 77, 3),
(110, 11, 'David Riley', 1, 'March Medal', 74, 77, 3),
(111, 12, 'Rory Kilbane', 1, 'March Medal', 74, 79, 5),
(112, 13, 'John Lawlor', 1, 'March Medal', 74, 79, 5),
(113, 14, 'Martin Doyle', 1, 'March Medal', 74, 79, 5),
(114, 15, 'Jonathan Doyle', 1, 'March Medal', 74, 79, 5),
(115, 16, 'Paul Kelly', 1, 'March Medal', 74, 80, 6),
(116, 17, 'Gerard Farrelly', 1, 'March Medal', 74, 80, 6),
(117, 18, 'Kieran Fitzmaurice', 1, 'March Medal', 74, 82, 8),
(118, 19, 'Ger Power', 1, 'March Medal', 74, 83, 9),
(119, 20, 'Wayne Osborne', 1, 'March Medal', 74, 85, 11),
(120, 21, 'Brian Bellew', 1, 'March Medal', 74, 74, 0),
(121, 22, 'Tadhg Gunnell', 1, 'March Medal', 74, 76, 2),
(122, 23, 'Robert Emmett', 1, 'March Medal', 74, 78, 4),
(123, 24, 'Ivan Cosgrave', 1, 'March Medal', 74, 78, 4),
(124, 25, 'Noel Cunningham', 1, 'March Medal', 74, 80, 6),
(125, 26, 'Dara Brady', 1, 'March Medal', 74, 80, 6),
(126, 27, 'Noel Heffernan', 1, 'March Medal', 74, 80, 6),
(127, 28, 'Marty Crawford', 1, 'March Medal', 74, 81, 7),
(128, 29, 'Michael Feeney', 1, 'March Medal', 74, 81, 7),
(129, 30, 'Ian McClelland', 1, 'March Medal', 74, 81, 7),
(130, 31, 'Martin Moore', 1, 'March Medal', 74, 82, 8),
(131, 32, 'Cathal McGinley', 1, 'March Medal', 74, 83, 9),
(132, 33, 'John Smyth', 1, 'March Medal', 74, 84, 10),
(133, 34, 'Shane Maguire', 1, 'March Medal', 74, 85, 11),
(134, 35, 'Michael J Fetherston', 1, 'March Medal', 74, 86, 12),
(135, 36, 'Marcus McAlinden', 1, 'March Medal', 74, 86, 12),
(136, 37, 'Petr Pandula', 1, 'March Medal', 74, 87, 13),
(137, 38, 'Patrick McGrath', 1, 'March Medal', 74, 88, 14),
(138, 39, 'Daniel Smyth', 1, 'March Medal', 74, 88, 14),
(139, 40, 'Alan O Connor', 1, 'March Medal', 74, 95, 21),
(140, 41, 'Brendan McAtamney', 1, 'March Medal', 74, 72, -2),
(141, 42, 'Frank Mee', 1, 'March Medal', 74, 79, 5),
(142, 43, 'Terry Devitt', 1, 'March Medal', 74, 81, 7),
(143, 44, 'Bruce Antoniotti', 1, 'March Medal', 74, 82, 8),
(144, 45, 'Paul Browne', 1, 'March Medal', 74, 82, 8),
(145, 46, 'Gavan McAlinden', 1, 'March Medal', 74, 84, 10),
(146, 47, 'Daniel Griffin', 1, 'March Medal', 74, 85, 11),
(147, 48, 'Dermot Dooley', 1, 'March Medal', 74, 86, 12),
(148, 49, 'Mr John McGlade', 1, 'March Medal', 74, 88, 14),
(149, 50, 'David Curley', 1, 'March Medal', 74, 89, 15),
(150, 51, 'John W McCrory', 1, 'March Medal', 74, 91, 17),
(151, 1, 'Eddie Finn', 2, 'April Medal', 74, 71, -3),
(152, 2, 'David Hague', 2, 'April Medal', 74, 71, -3),
(153, 3, 'Gerard Farrelly', 2, 'April Medal', 74, 73, -1),
(154, 4, 'Robert Emmett', 2, 'April Medal', 74, 73, -1),
(155, 5, 'Paul Dillon', 2, 'April Medal', 74, 73, -1),
(156, 6, 'David Curley', 2, 'April Medal', 74, 74, 0),
(157, 7, 'Tadhg Gunnell', 2, 'April Medal', 74, 74, 0),
(158, 8, 'Michael Farrell', 2, 'April Medal', 74, 75, 1),
(159, 9, 'Richard O Brien', 2, 'April Medal', 74, 75, 1),
(160, 10, 'Martin Moore', 2, 'April Medal', 74, 75, 1),
(161, 11, 'Ger Power', 2, 'April Medal', 74, 75, 1),
(162, 12, 'Bobby Hawkshaw', 2, 'April Medal', 74, 75, 1),
(163, 13, 'Simon Madden', 2, 'April Medal', 74, 75, 1),
(164, 14, 'Wayne Osborne', 2, 'April Medal', 74, 76, 2),
(165, 15, 'Marty Crawford', 2, 'April Medal', 74, 76, 2),
(166, 16, 'Dermot Dooley', 2, 'April Medal', 74, 77, 3),
(167, 17, 'Joe Lynch', 2, 'April Medal', 74, 77, 3),
(168, 18, 'Maurice McNamara', 2, 'April Medal', 74, 77, 3),
(169, 19, 'Brian Bellew', 2, 'April Medal', 74, 77, 3),
(170, 20, 'Brian Smithers', 2, 'April Medal', 74, 78, 4),
(171, 21, 'Patrick McGrath', 2, 'April Medal', 74, 80, 6),
(172, 22, 'Alan Bergin', 2, 'April Medal', 74, 80, 6),
(173, 23, 'Kieran Fitzmaurice', 2, 'April Medal', 74, 80, 6),
(174, 24, 'Noel Heffernan', 2, 'April Medal', 74, 81, 7),
(175, 25, 'Eamonn Coghlan', 2, 'April Medal', 74, 81, 7),
(176, 26, 'David Heary', 2, 'April Medal', 74, 81, 7),
(177, 27, 'Jonathan Doyle', 2, 'April Medal', 74, 81, 7),
(178, 28, 'Jason Morris', 2, 'April Medal', 74, 81, 7),
(179, 29, 'Vincent Clohisey', 2, 'April Medal', 74, 82, 8),
(180, 30, 'Colin Scanlan', 2, 'April Medal', 74, 82, 8),
(181, 31, 'Kevin Halpin', 2, 'April Medal', 74, 82, 8),
(182, 32, 'Richard Bielenberg', 2, 'April Medal', 74, 83, 9),
(183, 33, 'Michael Feeney', 2, 'April Medal', 74, 83, 9),
(184, 34, 'Aidan McCormack', 2, 'April Medal', 74, 84, 10),
(185, 35, 'Alan O Connor', 2, 'April Medal', 74, 85, 11),
(186, 36, 'David Bergin Snr', 2, 'April Medal', 74, 87, 13),
(187, 37, 'Shane Maguire', 2, 'April Medal', 74, 88, 14),
(188, 38, 'Colm Kelly', 2, 'April Medal', 74, 88, 14),
(189, 39, 'John W McCrory', 2, 'April Medal', 74, 90, 16),
(190, 40, 'Ian McClelland', 2, 'April Medal', 74, 90, 16),
(191, 41, 'Martin Doyle', 2, 'April Medal', 74, 90, 16),
(192, 42, 'David Riley', 2, 'April Medal', 74, 91, 17),
(193, 43, 'Frank Mee', 2, 'April Medal', 74, 95, 21),
(194, 44, 'Dave Bergin Jnr.', 2, 'April Medal', 74, 95, 21),
(195, 45, 'Michael Quinlan', 2, 'April Medal', 74, 96, 22),
(196, 46, 'Noel Cunningham', 2, 'April Medal', 74, 105, 31);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=197;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
