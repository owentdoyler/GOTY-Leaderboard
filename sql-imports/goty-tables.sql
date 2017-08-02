-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2017 at 09:18 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `goty`
--

-- --------------------------------------------------------

--
-- Table structure for table `competitions`
--

CREATE TABLE `competitions` (
  `compNum` int(11) NOT NULL,
  `compName` varchar(255) NOT NULL,
  `compDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `competitions`
--

INSERT INTO `competitions` (`compNum`, `compName`, `compDate`) VALUES
(1, 'March Medal', '2017-03-25'),
(2, 'April Medal', '2017-04-15'),
(3, 'May Medal', '2017-05-13'),
(4, 'June Medal', '2017-06-24'),
(5, 'Captain\'s Prize', '2017-07-15'),
(6, 'July Medal', '2017-07-22'),
(7, 'August Medal', '2017-08-12'),
(8, 'Gold Medal', '2017-09-09'),
(9, 'President\'s Prize', '2017-09-30'),
(10, 'October Medal', '2017-10-14');

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `playerName` varchar(255) NOT NULL,
  `compNum` int(11) NOT NULL,
  `compName` varchar(255) NOT NULL,
  `css` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `gotyScore` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(196, 46, 'Noel Cunningham', 2, 'April Medal', 74, 105, 31),
(197, 1, 'Alan O Connor', 3, 'May Medal', 75, 69, -6),
(198, 2, 'David Curley', 3, 'May Medal', 75, 73, -2),
(199, 3, 'Jonathan Doyle', 3, 'May Medal', 75, 73, -2),
(200, 4, 'Michael Fetherston', 3, 'May Medal', 75, 73, -2),
(201, 5, 'Tadhg Gunnell', 3, 'May Medal', 75, 74, -1),
(202, 6, 'Wayne Osborne', 3, 'May Medal', 75, 74, -1),
(203, 7, 'Owen Doyle', 3, 'May Medal', 75, 75, 0),
(204, 8, 'Vincent Clohisey', 3, 'May Medal', 75, 75, 0),
(205, 9, 'Bobby Hawkshaw', 3, 'May Medal', 75, 76, 1),
(206, 10, 'Alan Bergin', 3, 'May Medal', 75, 76, 1),
(207, 11, 'Eddie Finn', 3, 'May Medal', 75, 76, 1),
(208, 12, 'Richard O Brien', 3, 'May Medal', 75, 77, 2),
(209, 13, 'David Riley', 3, 'May Medal', 75, 77, 2),
(210, 14, 'John Lawlor', 3, 'May Medal', 75, 77, 2),
(211, 15, 'Niall Carty', 3, 'May Medal', 75, 78, 3),
(212, 16, 'Joe Lynch', 3, 'May Medal', 75, 78, 3),
(213, 17, 'Michael Feeney', 3, 'May Medal', 75, 78, 3),
(214, 18, 'Michael Quinlan', 3, 'May Medal', 75, 78, 3),
(215, 19, 'Michael Hawkshaw', 3, 'May Medal', 75, 79, 4),
(216, 20, 'Gerard Farrelly', 3, 'May Medal', 75, 79, 4),
(217, 21, 'Dara Brady', 3, 'May Medal', 75, 80, 5),
(218, 22, 'Padraic Brennan', 3, 'May Medal', 75, 80, 5),
(219, 23, 'Marty Crawford', 3, 'May Medal', 75, 81, 6),
(220, 24, 'Rory Kilbane', 3, 'May Medal', 75, 81, 6),
(221, 25, 'Simon Madden', 3, 'May Medal', 75, 81, 6),
(222, 26, 'Paul Tobin', 3, 'May Medal', 75, 81, 6),
(223, 27, 'Ger Power', 3, 'May Medal', 75, 81, 6),
(224, 28, 'Patrick McGrath', 3, 'May Medal', 75, 81, 6),
(225, 29, 'Brian Smithers', 3, 'May Medal', 75, 81, 6),
(226, 30, 'Brian Bellew', 3, 'May Medal', 75, 82, 7),
(227, 31, 'John Murphy', 3, 'May Medal', 75, 83, 8),
(228, 32, 'Robert Emmett', 3, 'May Medal', 75, 83, 8),
(229, 33, 'Paul Kelly', 3, 'May Medal', 75, 83, 8),
(230, 34, 'Kieran Fitzmaurice', 3, 'May Medal', 75, 83, 8),
(231, 35, 'Paul Dillon', 3, 'May Medal', 75, 84, 9),
(232, 36, 'Liam Lynch', 3, 'May Medal', 75, 84, 9),
(233, 37, 'Michael J Fetherston', 3, 'May Medal', 75, 84, 9),
(234, 38, 'Paul Bergin', 3, 'May Medal', 75, 85, 10),
(235, 39, 'Shaun O Connor', 3, 'May Medal', 75, 85, 10),
(236, 40, 'Kevin Halpin', 3, 'May Medal', 75, 87, 12),
(237, 41, 'Noel Heffernan', 3, 'May Medal', 75, 87, 12),
(238, 42, 'Jerry O Mahony', 3, 'May Medal', 75, 89, 14),
(239, 43, 'Cathal McGinley', 3, 'May Medal', 75, 89, 14),
(240, 44, 'David Bergin Snr', 3, 'May Medal', 75, 89, 14),
(241, 45, 'John Smyth', 3, 'May Medal', 75, 89, 14),
(242, 46, 'Vincent Mone', 3, 'May Medal', 75, 90, 15),
(243, 47, 'Des McCormack', 3, 'May Medal', 75, 91, 16),
(244, 48, 'Ivan Cosgrave', 3, 'May Medal', 75, 91, 16),
(245, 49, 'Eamonn Coghlan', 3, 'May Medal', 75, 91, 16),
(246, 50, 'Michael Farrell', 3, 'May Medal', 75, 93, 18),
(247, 51, 'Enda Faughnan', 3, 'May Medal', 75, 94, 19),
(248, 52, 'Victor Black', 3, 'May Medal', 75, 101, 26),
(375, 1, 'Brendan McAtamney', 4, 'June Medal', 75, 73, -2),
(376, 2, 'Shane Maguire', 4, 'June Medal', 75, 74, -1),
(377, 3, 'Marc Guerin', 4, 'June Medal', 75, 74, -1),
(378, 4, 'Martin Moore', 4, 'June Medal', 75, 74, -1),
(379, 5, 'Ivan Cosgrave', 4, 'June Medal', 75, 75, 0),
(380, 6, 'Eugene Daly', 4, 'June Medal', 75, 75, 0),
(381, 7, 'Marty Crawford', 4, 'June Medal', 75, 75, 0),
(382, 8, 'Alan O Connor', 4, 'June Medal', 75, 76, 1),
(383, 9, 'John Murphy', 4, 'June Medal', 75, 77, 2),
(384, 10, 'Michael Hawkshaw', 4, 'June Medal', 75, 77, 2),
(385, 11, 'Brian Bellew', 4, 'June Medal', 75, 77, 2),
(386, 12, 'Wayne Osborne', 4, 'June Medal', 75, 77, 2),
(387, 13, 'Brian Smithers', 4, 'June Medal', 75, 78, 3),
(388, 14, 'Colm Kelly', 4, 'June Medal', 75, 78, 3),
(389, 15, 'Paul Browne', 4, 'June Medal', 75, 78, 3),
(390, 16, 'John W McCrory', 4, 'June Medal', 75, 78, 3),
(391, 17, 'Gerard Farrelly', 4, 'June Medal', 75, 78, 3),
(392, 18, 'Robert Emmett', 4, 'June Medal', 75, 79, 4),
(393, 19, 'Joe Lynch', 4, 'June Medal', 75, 79, 4),
(394, 20, 'Michael Feeney', 4, 'June Medal', 75, 79, 4),
(395, 21, 'Jonathan Doyle', 4, 'June Medal', 75, 79, 4),
(396, 22, 'Trevor Dargan ', 4, 'June Medal', 75, 80, 5),
(397, 23, 'David Hague', 4, 'June Medal', 75, 80, 5),
(398, 24, 'Liam Lynch', 4, 'June Medal', 75, 80, 5),
(399, 25, 'Alan Bergin', 4, 'June Medal', 75, 80, 5),
(400, 26, 'Ger Power', 4, 'June Medal', 75, 80, 5),
(401, 27, 'Padraic Brennan', 4, 'June Medal', 75, 81, 6),
(402, 28, 'Richard Bielenberg', 4, 'June Medal', 75, 81, 6),
(403, 29, 'Dermot Dooley', 4, 'June Medal', 75, 81, 6),
(404, 30, 'Richard O Brien', 4, 'June Medal', 75, 81, 6),
(405, 31, 'David Riley', 4, 'June Medal', 75, 81, 6),
(406, 32, 'Shaun O Connor', 4, 'June Medal', 75, 82, 7),
(407, 33, 'Gary Doherty', 4, 'June Medal', 75, 82, 7),
(408, 34, 'Barry McLaughlin', 4, 'June Medal', 75, 83, 8),
(409, 35, 'Terry Devitt', 4, 'June Medal', 75, 83, 8),
(410, 36, 'Paul Dillon', 4, 'June Medal', 75, 83, 8),
(411, 37, 'Kevin Halpin', 4, 'June Medal', 75, 83, 8),
(412, 38, 'Aidan McCormack', 4, 'June Medal', 75, 84, 9),
(413, 39, 'Hazem Kahlout', 4, 'June Medal', 75, 85, 10),
(414, 40, 'Bobby Hawkshaw', 4, 'June Medal', 75, 85, 10),
(415, 41, 'Petr Pandula', 4, 'June Medal', 75, 87, 12),
(416, 42, 'Gerry O Connor', 4, 'June Medal', 75, 87, 12),
(417, 43, 'Dara Brady', 4, 'June Medal', 75, 87, 12),
(418, 44, 'Des McCormack', 4, 'June Medal', 75, 88, 13),
(419, 45, 'Jerry Kelleher', 4, 'June Medal', 75, 89, 14),
(420, 46, 'Eamonn Coghlan', 4, 'June Medal', 75, 89, 14),
(421, 47, 'David Churchward', 4, 'June Medal', 75, 91, 16),
(422, 48, 'Eddie Finn', 4, 'June Medal', 75, 91, 16),
(423, 49, 'Simon Plunkett', 4, 'June Medal', 75, 92, 17),
(424, 50, 'John Smyth', 4, 'June Medal', 75, 94, 19),
(425, 51, 'Cathal McGinley', 4, 'June Medal', 75, 94, 19),
(426, 52, 'John McGlade', 4, 'June Medal', 75, 95, 20),
(427, 53, 'Rory Kilbane', 4, 'June Medal', 75, 98, 23),
(428, 54, 'Eugene Agnoli', 4, 'June Medal', 75, 108, 33),
(429, 1, 'Marty Crawford', 5, 'Captain\'s Prize', 74, 69, -5),
(430, 2, 'Michael Feeney', 5, 'Captain\'s Prize', 74, 70, -4),
(431, 3, 'Brendan McAtamney', 5, 'Captain\'s Prize', 74, 70, -4),
(432, 4, 'Dylan Brophy', 5, 'Captain\'s Prize', 74, 71, -3),
(433, 5, 'Daniel Griffin', 5, 'Captain\'s Prize', 74, 71, -3),
(434, 6, 'Stewart Dunne', 5, 'Captain\'s Prize', 74, 73, -1),
(435, 7, 'Paul Tobin', 5, 'Captain\'s Prize', 74, 73, -1),
(436, 8, 'John Wallace', 5, 'Captain\'s Prize', 74, 73, -1),
(437, 9, 'Patrick Judge', 5, 'Captain\'s Prize', 74, 74, 0),
(438, 10, 'Colin Woods', 5, 'Captain\'s Prize', 74, 74, 0),
(440, 12, 'Eugene Daly', 5, 'Captain\'s Prize', 74, 74, 0),
(441, 13, 'Rory Kilbane', 5, 'Captain\'s Prize', 74, 74, 0),
(442, 14, 'Mark McClean', 5, 'Captain\'s Prize', 74, 74, 0),
(443, 15, 'Colm Kelly', 5, 'Captain\'s Prize', 74, 74, 0),
(444, 16, 'Hazem Kahlout', 5, 'Captain\'s Prize', 74, 74, 0),
(445, 17, 'Brian Bellew', 5, 'Captain\'s Prize', 74, 75, 1),
(446, 18, 'Aidan McCormack', 5, 'Captain\'s Prize', 74, 75, 1),
(447, 19, 'Tom Close', 5, 'Captain\'s Prize', 74, 75, 1),
(448, 20, 'Michael P Quinlan', 5, 'Captain\'s Prize', 74, 75, 1),
(449, 21, 'Shane Maguire', 5, 'Captain\'s Prize', 74, 76, 2),
(450, 22, 'Paul Dillon', 5, 'Captain\'s Prize', 74, 76, 2),
(451, 23, 'Petr Pandula', 5, 'Captain\'s Prize', 74, 77, 3),
(452, 24, 'Martin Moore', 5, 'Captain\'s Prize', 74, 77, 3),
(453, 25, 'Richard O Brien', 5, 'Captain\'s Prize', 74, 77, 3),
(454, 26, 'Owen Doyle', 5, 'Captain\'s Prize', 74, 77, 3),
(455, 27, 'Patrick McGrath', 5, 'Captain\'s Prize', 74, 78, 4),
(456, 28, 'Alan O Connor', 5, 'Captain\'s Prize', 74, 78, 4),
(457, 29, 'Joe Lynch', 5, 'Captain\'s Prize', 74, 78, 4),
(458, 30, 'Alan Bergin', 5, 'Captain\'s Prize', 74, 78, 4),
(459, 31, 'Cathal McGinley', 5, 'Captain\'s Prize', 74, 78, 4),
(460, 32, 'Gerry Nangle', 5, 'Captain\'s Prize', 74, 79, 5),
(461, 33, 'John McGlade', 5, 'Captain\'s Prize', 74, 79, 5),
(462, 34, 'Gavan McAlinden', 5, 'Captain\'s Prize', 74, 80, 6),
(463, 35, 'Michael J Fetherston', 5, 'Captain\'s Prize', 74, 80, 6),
(464, 36, 'Robert Emmett', 5, 'Captain\'s Prize', 74, 80, 6),
(465, 37, 'John Smyth', 5, 'Captain\'s Prize', 74, 80, 6),
(466, 38, 'John W McCrory', 5, 'Captain\'s Prize', 74, 80, 6),
(467, 39, 'Simon Madden', 5, 'Captain\'s Prize', 74, 80, 6),
(468, 40, 'Eugene Garrihy', 5, 'Captain\'s Prize', 74, 80, 6),
(469, 41, 'David Hague', 5, 'Captain\'s Prize', 74, 81, 7),
(470, 42, 'Daniel Smyth', 5, 'Captain\'s Prize', 74, 82, 8),
(471, 43, 'Ivan Cosgrave', 5, 'Captain\'s Prize', 74, 82, 8),
(472, 44, 'Jerry O Mahony', 5, 'Captain\'s Prize', 74, 82, 8),
(473, 45, 'Paul Bergin', 5, 'Captain\'s Prize', 74, 82, 8),
(474, 46, 'Michael Hawkshaw', 5, 'Captain\'s Prize', 74, 82, 8),
(475, 47, 'Bobby Hawkshaw', 5, 'Captain\'s Prize', 74, 82, 8),
(476, 48, 'David Churchward', 5, 'Captain\'s Prize', 74, 82, 8),
(477, 49, 'John Lawlor', 5, 'Captain\'s Prize', 74, 82, 8),
(478, 50, 'Vincent Clohisey', 5, 'Captain\'s Prize', 74, 82, 8),
(479, 51, 'Simon Plunkett', 5, 'Captain\'s Prize', 74, 83, 9),
(480, 52, 'Kevin Halpin', 5, 'Captain\'s Prize', 74, 83, 9),
(481, 53, 'Marc Guerin', 5, 'Captain\'s Prize', 74, 83, 9),
(482, 54, 'Brian Smithers', 5, 'Captain\'s Prize', 74, 84, 10),
(483, 55, 'Shaun O Connor', 5, 'Captain\'s Prize', 74, 84, 10),
(484, 56, 'Oliver Coughlan', 5, 'Captain\'s Prize', 74, 84, 10),
(485, 57, 'Eamonn Coghlan', 5, 'Captain\'s Prize', 74, 84, 10),
(486, 58, 'Dara Brady', 5, 'Captain\'s Prize', 74, 84, 10),
(487, 59, 'Trevor Dargan ', 5, 'Captain\'s Prize', 74, 85, 11),
(488, 60, 'Vincent Mone', 5, 'Captain\'s Prize', 74, 85, 11),
(489, 61, 'Wayne Osborne', 5, 'Captain\'s Prize', 74, 85, 11),
(490, 62, 'Jonathan Doyle', 5, 'Captain\'s Prize', 74, 85, 11),
(491, 63, 'Paul Browne', 5, 'Captain\'s Prize', 74, 85, 11),
(492, 64, 'John O Leary', 5, 'Captain\'s Prize', 74, 86, 12),
(493, 65, 'Bruce Antoniotti', 5, 'Captain\'s Prize', 74, 86, 12),
(494, 66, 'David Curley', 5, 'Captain\'s Prize', 74, 87, 13),
(495, 67, 'Bernard Hudson', 5, 'Captain\'s Prize', 74, 87, 13),
(496, 68, 'Kieran Fitzmaurice', 5, 'Captain\'s Prize', 74, 87, 13),
(497, 69, 'Martin Doyle', 5, 'Captain\'s Prize', 74, 88, 14),
(498, 70, 'Niall Carty', 5, 'Captain\'s Prize', 74, 88, 14),
(499, 71, 'David Riley', 5, 'Captain\'s Prize', 74, 88, 14),
(500, 72, 'Ger Power', 5, 'Captain\'s Prize', 74, 89, 15),
(501, 73, 'Dermot Dooley', 5, 'Captain\'s Prize', 74, 90, 16),
(502, 74, 'Paul Carty', 5, 'Captain\'s Prize', 74, 91, 17),
(503, 75, 'Greg Harris', 5, 'Captain\'s Prize', 74, 92, 18),
(504, 76, 'Liam Lynch', 5, 'Captain\'s Prize', 74, 94, 20),
(505, 1, 'Mark McClean', 6, 'July Medal', 76, 73, -3),
(506, 2, 'Sean McDermott', 6, 'July Medal', 76, 74, -2),
(507, 3, 'Gerard Farrelly', 6, 'July Medal', 76, 76, 0),
(508, 4, 'Ivan Cosgrave', 6, 'July Medal', 76, 76, 0),
(509, 5, 'Eddie Finn', 6, 'July Medal', 76, 76, 0),
(510, 6, 'Martin Moore', 6, 'July Medal', 76, 76, 0),
(511, 7, 'Robert Emmett', 6, 'July Medal', 76, 77, 1),
(512, 8, 'Kevin Halpin', 6, 'July Medal', 76, 77, 1),
(513, 9, 'John W McCrory', 6, 'July Medal', 76, 78, 2),
(514, 10, 'Daniel Smyth', 6, 'July Medal', 76, 78, 2),
(515, 11, 'Vincent Clohisey', 6, 'July Medal', 76, 78, 2),
(516, 12, 'Alan Bergin', 6, 'July Medal', 76, 79, 3),
(517, 13, 'Dara Brady', 6, 'July Medal', 76, 79, 3),
(518, 14, 'Bobby Hawkshaw', 6, 'July Medal', 76, 79, 3),
(519, 15, 'Eugene Daly', 6, 'July Medal', 76, 79, 3),
(520, 16, 'David Riley', 6, 'July Medal', 76, 79, 3),
(521, 17, 'Alan O Connor', 6, 'July Medal', 76, 79, 3),
(522, 18, 'Michael Fetherston', 6, 'July Medal', 76, 79, 3),
(523, 19, 'Wayne Osborne', 6, 'July Medal', 76, 80, 4),
(524, 20, 'Oliver Coughlan', 6, 'July Medal', 76, 80, 4),
(525, 21, 'David Hague', 6, 'July Medal', 76, 81, 5),
(526, 22, 'Seamus Ross', 6, 'July Medal', 76, 81, 5),
(527, 23, 'Marty Crawford', 6, 'July Medal', 76, 81, 5),
(528, 24, 'Paul Bergin', 6, 'July Medal', 76, 81, 5),
(529, 25, 'John Smyth', 6, 'July Medal', 76, 82, 6),
(530, 26, 'Hazem Kahlout', 6, 'July Medal', 76, 82, 6),
(531, 27, 'Paul Dillon', 6, 'July Medal', 76, 82, 6),
(532, 28, 'Greg Harris', 6, 'July Medal', 76, 82, 6),
(533, 29, 'Barry McLaughlin', 6, 'July Medal', 76, 83, 7),
(534, 30, 'Michael J Fetherston', 6, 'July Medal', 76, 83, 7),
(535, 31, 'Cathal McGinley', 6, 'July Medal', 76, 84, 8),
(536, 32, 'Simon Plunkett', 6, 'July Medal', 76, 84, 8),
(537, 33, 'Daniel Griffin', 6, 'July Medal', 76, 84, 8),
(538, 34, 'Michael Feeney', 6, 'July Medal', 76, 85, 9),
(539, 35, 'Ger Power', 6, 'July Medal', 76, 85, 9),
(540, 36, 'Eamonn Coghlan', 6, 'July Medal', 76, 86, 10),
(541, 37, 'Joe Lynch', 6, 'July Medal', 76, 86, 10),
(542, 38, 'Brian Smithers', 6, 'July Medal', 76, 86, 10),
(543, 39, 'Mark Tobin', 6, 'July Medal', 76, 86, 10),
(544, 40, 'David Curley', 6, 'July Medal', 76, 87, 11),
(545, 41, 'Brian Bellew', 6, 'July Medal', 76, 87, 11),
(546, 42, 'Patrick McGrath', 6, 'July Medal', 76, 88, 12),
(547, 43, 'Noel Heffernan', 6, 'July Medal', 76, 90, 14),
(548, 44, 'Michael Tobin', 6, 'July Medal', 76, 90, 14),
(549, 45, 'Petr Pandula', 6, 'July Medal', 76, 92, 16),
(550, 46, 'David Churchward', 6, 'July Medal', 76, 94, 18);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `competitions`
--
ALTER TABLE `competitions`
  ADD PRIMARY KEY (`compNum`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `competitions`
--
ALTER TABLE `competitions`
  MODIFY `compNum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=551;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
