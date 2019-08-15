-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2019 at 07:50 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lougehtravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `destination`
--

CREATE TABLE `destination` (
  `destination_id` int(3) NOT NULL,
  `city` varchar(55) NOT NULL,
  `country` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `destination`
--

INSERT INTO `destination` (`destination_id`, `city`, `country`) VALUES
(1, 'General Santos City', 'Sweden'),
(2, 'Davao City', 'Czech Republic'),
(3, 'Datong', 'China'),
(4, 'Tuanjie', 'China'),
(5, 'MSU', 'Pakistan'),
(6, 'Punta Alta', 'Argentina'),
(7, 'San Borja', 'Bolivia'),
(8, 'Bonpland', 'Argentina'),
(9, 'Gavea', 'Brazil'),
(10, 'Besuki', 'Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `groupdestination`
--

CREATE TABLE `groupdestination` (
  `group_id` int(3) NOT NULL,
  `year_travel` int(4) NOT NULL,
  `user_id` int(3) NOT NULL,
  `fullname` varchar(55) NOT NULL,
  `destination_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groupdestination`
--

INSERT INTO `groupdestination` (`group_id`, `year_travel`, `user_id`, `fullname`, `destination_id`) VALUES
(1, 2018, 1, 'Jenni Meddings', 2),
(1, 2018, 2, 'Petronia Andretti', 2),
(1, 2018, 3, 'Anabelle Portal', 2),
(1, 2018, 4, 'Kristoforo Dignum', 2),
(1, 2018, 5, 'Shay Dumbare', 2),
(1, 2018, 6, 'Bertrando Treharne', 2),
(1, 2018, 7, 'Federica Habron', 2),
(1, 2018, 8, 'Dela Stode', 2),
(1, 2018, 9, 'Granville Wims', 2),
(1, 2018, 10, 'Roscoe Oxlee', 2),
(1, 2018, 11, 'Fabien Moreby', 2),
(1, 2018, 12, 'Estrellita Perrin', 2),
(1, 2018, 13, 'Laurie Jodlkowski', 2),
(1, 2019, 11, 'Fabien Moreby', 5),
(1, 2019, 12, 'Estrellita Perrin', 5),
(1, 2019, 13, 'Laurie Jodlkowski', 5),
(1, 2019, 14, 'Humbert Casone', 5),
(1, 2019, 15, 'Nikola Walkowski', 5),
(1, 2019, 16, 'Fletcher Duell', 5),
(1, 2019, 17, 'Veronique Piechnik', 5),
(1, 2019, 18, 'Agace Reiner', 5),
(1, 2019, 19, 'Pietrek Tapsell', 5),
(1, 2019, 20, 'Anette Schriren', 5);

-- --------------------------------------------------------

--
-- Stand-in structure for view `groupdestinationsview`
-- (See below for the actual view)
--
CREATE TABLE `groupdestinationsview` (
`group_id` int(3)
,`group_name` varchar(55)
,`year_created` int(4)
,`year_travel` int(4)
,`destination_id` int(3)
,`city` varchar(55)
,`country` varchar(55)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `groupdetailsview`
-- (See below for the actual view)
--
CREATE TABLE `groupdetailsview` (
`group_id` int(3)
,`group_name` varchar(55)
,`year_created` int(4)
,`year_travel` int(4)
,`user_id` int(3)
,`fullname` varchar(55)
,`destination_id` int(3)
,`city` varchar(55)
,`country` varchar(55)
);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `group_id` int(3) NOT NULL,
  `group_name` varchar(55) NOT NULL,
  `year_created` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `group_name`, `year_created`) VALUES
(1, 'Vidoo', 2017),
(2, 'Fivechat', 2017),
(3, 'Jetpulse', 2018),
(4, 'Voonyx', 2019),
(5, 'Zoombox', 2019);

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `user_id` int(3) NOT NULL,
  `fullname` varchar(55) NOT NULL,
  `age` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`user_id`, `fullname`, `age`) VALUES
(1, 'Jenni Meddings', 31),
(2, 'Petronia Andretti', 34),
(3, 'Anabelle Portal', 39),
(4, 'Kristoforo Dignum', 36),
(5, 'Shay Dumbare', 43),
(6, 'Bertrando Treharne', 39),
(7, 'Federica Habron', 45),
(8, 'Dela Stode', 31),
(9, 'Granville Wims', 38),
(10, 'Roscoe Oxlee', 49),
(11, 'Fabien Moreby', 38),
(12, 'Estrellita Perrin', 42),
(13, 'Laurie Jodlkowski', 41),
(14, 'Humbert Casone', 50),
(15, 'Nikola Walkowski', 43),
(16, 'Fletcher Duell', 40),
(17, 'Veronique Piechnik', 37),
(18, 'Agace Reiner', 47),
(19, 'Pietrek Tapsell', 37),
(20, 'Anette Schriren', 37);

-- --------------------------------------------------------

--
-- Stand-in structure for view `usergroups`
-- (See below for the actual view)
--
CREATE TABLE `usergroups` (
`group_id` int(3)
,`group_name` varchar(55)
,`year_travel` int(4)
,`user_id` int(3)
,`fullname` varchar(55)
,`city` varchar(55)
,`country` varchar(55)
);

-- --------------------------------------------------------

--
-- Structure for view `groupdestinationsview`
--
DROP TABLE IF EXISTS `groupdestinationsview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `groupdestinationsview`  AS  select distinct `g`.`group_id` AS `group_id`,`g`.`group_name` AS `group_name`,`g`.`year_created` AS `year_created`,`gd`.`year_travel` AS `year_travel`,`gd`.`destination_id` AS `destination_id`,`d`.`city` AS `city`,`d`.`country` AS `country` from ((`groups` `g` join `groupdestination` `gd` on((`g`.`group_id` = `gd`.`group_id`))) join `destination` `d` on((`gd`.`destination_id` = `d`.`destination_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `groupdetailsview`
--
DROP TABLE IF EXISTS `groupdetailsview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `groupdetailsview`  AS  select `g`.`group_id` AS `group_id`,`g`.`group_name` AS `group_name`,`g`.`year_created` AS `year_created`,`gd`.`year_travel` AS `year_travel`,`gd`.`user_id` AS `user_id`,`gd`.`fullname` AS `fullname`,`gd`.`destination_id` AS `destination_id`,`d`.`city` AS `city`,`d`.`country` AS `country` from ((`groups` `g` join `groupdestination` `gd` on((`g`.`group_id` = `gd`.`group_id`))) join `destination` `d` on((`gd`.`destination_id` = `d`.`destination_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `usergroups`
--
DROP TABLE IF EXISTS `usergroups`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `usergroups`  AS  select distinct `gd`.`group_id` AS `group_id`,`g`.`group_name` AS `group_name`,`gd`.`year_travel` AS `year_travel`,`gd`.`user_id` AS `user_id`,`gd`.`fullname` AS `fullname`,`d`.`city` AS `city`,`d`.`country` AS `country` from ((`groupdestination` `gd` left join `destination` `d` on((`gd`.`destination_id` = `d`.`destination_id`))) left join `groups` `g` on((`gd`.`group_id` = `g`.`group_id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`destination_id`);

--
-- Indexes for table `groupdestination`
--
ALTER TABLE `groupdestination`
  ADD PRIMARY KEY (`group_id`,`year_travel`,`user_id`),
  ADD KEY `destination_id` (`destination_id`),
  ADD KEY `groupdestination_ibfk_2` (`user_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `destination`
--
ALTER TABLE `destination`
  MODIFY `destination_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `groupdestination`
--
ALTER TABLE `groupdestination`
  ADD CONSTRAINT `groupdestination_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `groupdestination_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `person` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `groupdestination_ibfk_3` FOREIGN KEY (`destination_id`) REFERENCES `destination` (`destination_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
