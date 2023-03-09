-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 09, 2023 at 07:56 PM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uofuathletics`
--

-- --------------------------------------------------------

--
-- Table structure for table `Athlete`
--

CREATE TABLE `Athlete` (
  `AthleteID` int(11) NOT NULL,
  `TeamID` int(11) NOT NULL,
  `LastName` varchar(250) NOT NULL,
  `FirstName` varchar(250) NOT NULL,
  `Position` varchar(250) NOT NULL,
  `Academic_level` varchar(100) NOT NULL,
  `Contact` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Athlete`
--

INSERT INTO `Athlete` (`AthleteID`, `TeamID`, `LastName`, `FirstName`, `Position`, `Academic_level`, `Contact`) VALUES
(1, 5, 'Henderson', 'Sophie', 'right side', 'freshman', 65),
(3, 5, 'Lampkin', 'Zach', 'third base', 'junior', 80),
(4, 16, 'Coffman', 'Luke', 'thrower', 'Junior', 76),
(5, 4, 'Henderson', 'Jenna', 'left', 'freshman', 801),
(6, 17, 'Rydners', 'Greyson', 'upper', 'senior', 456),
(7, 16, 'Kolson', 'Sanders', 'Defense', 'sophmore', 678),
(8, 1, 'Jackson', 'Driver', 'hitter', 'junior', 901),
(9, 10, 'Beard', 'Josh', 'seventeen', 'senior', 801),
(10, 12, 'Emma', 'Lare', 'libero', 'senior', 123),
(11, 19, 'Oh', 'Chong', 'offense', 'graduate', 24578),
(12, 14, 'Professor', 'Vandana', 'passer', 'Sophomore', 567),
(13, 16, 'Stark', 'Jackson', 'goat', 'junior', 335),
(14, 18, 'Wallen', 'Morgan', 'distracter', 'undergrad', 865),
(15, 4, 'Patel', 'Pearl', 'outside', 'senior', 991),
(16, 15, 'Henderson', 'Jenna', 'protection', 'senior', 775),
(17, 8, 'Gupta', 'Misha', 'defense', 'junior', 765),
(18, 16, 'B', 'John', 'surfer', 'freshman', 124),
(19, 5, 'Cameron', 'Sarah', 'hitter', 'sophmore', 999),
(20, 17, 'Henderson', 'Sara', 'defense', 'freshman', 801),
(21, 21, 'John', 'Taylor', 'Forward', 'junior', 1024);

-- --------------------------------------------------------

--
-- Table structure for table `Employee`
--

CREATE TABLE `Employee` (
  `EmployeeID` int(11) NOT NULL,
  `Lastname` varchar(250) NOT NULL,
  `Firstname` varchar(250) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `Start_date` date NOT NULL,
  `End_date` date NOT NULL,
  `Type(salary, hourly)` varchar(10) NOT NULL,
  `Cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Equipment`
--

CREATE TABLE `Equipment` (
  `EquipmentID` int(11) NOT NULL,
  `TeamID` int(11) NOT NULL,
  `Type` varchar(250) NOT NULL,
  `Annual_cost` int(11) NOT NULL,
  `Year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Equipment`
--

INSERT INTO `Equipment` (`EquipmentID`, `TeamID`, `Type`, `Annual_cost`, `Year`) VALUES
(2, 1, 'bench press', 200000, 1980),
(3, 1, 'squat machine', 50000, 2020),
(4, 1, 'squat machine', 20000, 2001),
(5, 2, 'Net', 200, 2005),
(6, 3, 'Net', 20, 2010),
(7, 3, 'Net', 200, 2019),
(8, 4, 'Baseballs', 7000, 2019),
(9, 4, 'Baseballs', 7000, 2020),
(10, 4, 'baseball bats', 10000, 2020),
(11, 4, 'Baseball bats', 20000, 2021),
(12, 5, 'swim caps', 1700, 1995),
(13, 5, 'swim caps', 2000000, 2020),
(14, 6, 'sticks', 50000, 2020),
(15, 6, 'sticks', 20000, 2021),
(16, 6, 'sticks', 20001, 2022),
(17, 7, 'softballs', 2000, 2015),
(18, 7, 'softballs', 7000, 2016),
(19, 9, 'racket', 5000, 2018),
(20, 9, 'racket', 12000, 2021),
(21, 12, 'clubs', 100000, 2022);

-- --------------------------------------------------------

--
-- Table structure for table `Event`
--

CREATE TABLE `Event` (
  `EventID` int(11) NOT NULL,
  `TeamID` int(11) NOT NULL,
  `Venue` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Income` int(11) NOT NULL,
  `Expenses` int(11) NOT NULL,
  `Opponent` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Income`
--

CREATE TABLE `Income` (
  `IncomeID` int(11) NOT NULL,
  `TeamID` int(11) NOT NULL,
  `Type` varchar(250) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Income`
--

INSERT INTO `Income` (`IncomeID`, `TeamID`, `Type`, `Amount`, `Year`) VALUES
(1, 1, 'Football', 10000000, 2002),
(2, 4, 'Volleyball', 100000, 2019),
(4, 6, 'Lacrosse', 1000, 1980),
(5, 3, 'Volleyball', 1000000, 2020),
(6, 4, 'Baseball', 20000, 2013),
(7, 5, 'Swimming', 60, 2005),
(8, 7, 'Softball', 600, 2003),
(9, 8, 'Badminton', 40000, 2016),
(10, 9, 'Tennis', 9000, 2005),
(11, 10, 'Cross Country', 350, 2010),
(12, 11, 'TrackField', 7000, 2007),
(13, 12, 'Golf', 5000, 2015),
(14, 13, 'Rugby', 750, 2001),
(15, 14, 'WaterPolo', 5000, 2015),
(16, 15, 'Gymnastics', 7800, 2003),
(17, 16, 'Wrestling', 2000, 2014),
(18, 17, 'Basketweaving', 5000, 2013),
(19, 19, 'PingPong', 2300, 2018),
(20, 20, 'Horseback', 90000, 2020),
(21, 21, 'hockey', 60, 2017),
(22, 22, 'Pickleball', 8600, 2011);

-- --------------------------------------------------------

--
-- Table structure for table `Rank`
--

CREATE TABLE `Rank` (
  `RankID` int(11) NOT NULL,
  `TeamID` int(11) NOT NULL,
  `Rank` int(11) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `username`, `role`) VALUES
(1, 'bsmith', 'admin'),
(2, 'pjones', 'employee');

-- --------------------------------------------------------

--
-- Table structure for table `Scholarship`
--

CREATE TABLE `Scholarship` (
  `ScholarshipID` int(11) NOT NULL,
  `AthleteID` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Donor` varchar(100) NOT NULL,
  `Type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Scholarship`
--

INSERT INTO `Scholarship` (`ScholarshipID`, `AthleteID`, `Amount`, `Date`, `Donor`, `Type`) VALUES
(1, 1, 4, '2023-10-10', 'Chong Oh', 'Academic'),
(3, 3, 900, '2023-10-10', 'Jenna Henderson', 'gift'),
(4, 4, 270, '2016-09-09', 'uofu', 'academic'),
(5, 5, 70000, '2001-10-10', 'Chong Oh', 'gift'),
(6, 6, 800, '2003-10-09', 'Josh Beard', 'Gift'),
(7, 7, 850, '2009-08-08', 'Sophia Mckay', 'academic'),
(8, 7, 2801, '2018-05-06', 'Luke Coffman', 'gift'),
(9, 8, 220, '2012-10-10', 'Parent', 'Gift'),
(10, 9, 10000, '2020-10-10', 'Grandparents', 'Gift'),
(11, 10, 700, '2020-10-10', 'Professor Vandana', 'Academic'),
(12, 11, 300, '2018-10-19', 'Buzz Welch', 'Academic'),
(13, 12, 600, '2017-04-04', 'Jenna Henderson', 'because'),
(14, 14, 5600, '1999-07-07', 'Famous Musician', 'gift'),
(15, 15, 23000, '2019-08-08', 'The president ', 'Academic'),
(16, 16, 7000, '2002-05-11', 'Parents', 'Gift'),
(17, 17, 8000, '2009-10-10', 'Ruth Watson', 'Academic'),
(18, 18, 5600, '2018-03-19', 'Business School', 'Academic'),
(19, 19, 8900, '1970-05-24', 'Grandparents', 'Gift'),
(20, 20, 20000, '2012-12-12', 'Business School', 'Academic'),
(21, 21, 7684, '2013-09-14', 'Doctors', 'gift');

-- --------------------------------------------------------

--
-- Table structure for table `Team`
--

CREATE TABLE `Team` (
  `TeamID` int(11) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Email` varchar(230) NOT NULL,
  `Established_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Team`
--

INSERT INTO `Team` (`TeamID`, `Type`, `Email`, `Established_date`) VALUES
(1, 'Football', 'football@utah.edu', '1970-10-12'),
(3, 'Volleyball', 'volleyball@utah.edu', '1999-10-10'),
(4, 'Baseball', 'baseball@utah.edu', '2016-12-12'),
(5, 'Swimming', 'swimming@utah.edu', '1970-04-04'),
(6, 'Lacrosse', 'lacrosse@utah.edu', '1998-03-03'),
(7, 'Softball', 'softball@utah.edu', '1876-09-10'),
(8, 'Badminton', 'badminton@utah.edu', '1905-10-01'),
(9, 'Tennis', 'tennis@utah.edu', '1920-08-07'),
(10, 'Cross Country', 'crosscountry@utah.edu', '2013-12-12'),
(11, 'TrackField', 'trackfield@utah.edu', '1933-04-04'),
(12, 'Golf', 'golf@utah.edu', '1950-08-08'),
(13, 'Rugby', 'rugby@utah.edu', '2005-10-02'),
(14, 'WaterPolo', 'waterpolo@utah.edu', '2020-12-12'),
(15, 'Gymnastics', 'gymnastics@utah.edu', '1975-07-07'),
(16, 'Wrestling', 'wrestling@utah.edu', '1920-07-07'),
(17, 'BasketWeaving', 'basketweaving@utah.edu', '2023-09-03'),
(19, 'PingPong', 'pingpong@utah.edu', '2022-10-09'),
(20, 'Horseback', 'horse@utah.edu', '1989-10-11'),
(21, 'hockey', 'hockey@utah.edu', '2000-01-31'),
(22, 'pickleball', 'pickleball@utah.edu', '1890-10-11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `forename` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `forename`, `surname`, `password`) VALUES
(1, 'bsmith', 'Bill', 'Smith', '$2y$10$jCvBf203U3qgxGDBeWuVhuoUBLlcoC80D2HQKeMQAsVzmEe2z1QzO'),
(2, 'pjones', 'Pauline', 'Jones', '$2y$10$QsrNMmXUMbFDCD2NuutPjuuYncJsf9eR5F67/WMZSP1GyzEzYAzne'),
(4, 'jennyhen', 'jenna', 'henderson', '$2y$10$Hv9eJveXRVAE6VvgtLaZxuwMqvviXcZt9MHieGEW16wW7OIZSrRBK'),
(5, 'zachlamp', 'Zach', 'Lampkin', '$2y$10$eoYtr3RBGlUwFpuU9YA10eIWv3F3jY4S.GAB8WQcrGOK8JO.11nF2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Athlete`
--
ALTER TABLE `Athlete`
  ADD PRIMARY KEY (`AthleteID`);

--
-- Indexes for table `Employee`
--
ALTER TABLE `Employee`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `Equipment`
--
ALTER TABLE `Equipment`
  ADD PRIMARY KEY (`EquipmentID`);

--
-- Indexes for table `Event`
--
ALTER TABLE `Event`
  ADD PRIMARY KEY (`EventID`);

--
-- Indexes for table `Income`
--
ALTER TABLE `Income`
  ADD PRIMARY KEY (`IncomeID`);

--
-- Indexes for table `Rank`
--
ALTER TABLE `Rank`
  ADD PRIMARY KEY (`RankID`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Scholarship`
--
ALTER TABLE `Scholarship`
  ADD PRIMARY KEY (`ScholarshipID`);

--
-- Indexes for table `Team`
--
ALTER TABLE `Team`
  ADD PRIMARY KEY (`TeamID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Athlete`
--
ALTER TABLE `Athlete`
  MODIFY `AthleteID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `Employee`
--
ALTER TABLE `Employee`
  MODIFY `EmployeeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Equipment`
--
ALTER TABLE `Equipment`
  MODIFY `EquipmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `Event`
--
ALTER TABLE `Event`
  MODIFY `EventID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Income`
--
ALTER TABLE `Income`
  MODIFY `IncomeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `Rank`
--
ALTER TABLE `Rank`
  MODIFY `RankID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Scholarship`
--
ALTER TABLE `Scholarship`
  MODIFY `ScholarshipID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `Team`
--
ALTER TABLE `Team`
  MODIFY `TeamID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
