-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 17, 2025 at 06:30 PM
-- Server version: 8.0.40-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `NEW3131`
--

-- --------------------------------------------------------

--
-- Table structure for table `Countries`
--

CREATE TABLE `Countries` (
  `country_id` char(2) NOT NULL,
  `country_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `Countries`
--

INSERT INTO `Countries` (`country_id`, `country_name`) VALUES
('AU', 'Australia'),
('CA', 'Canada'),
('UK', 'United Kingdom'),
('US', 'United States');

-- --------------------------------------------------------

--
-- Table structure for table `Departments`
--

CREATE TABLE `Departments` (
  `dept_id` int NOT NULL,
  `dept_name` varchar(100) NOT NULL,
  `location_id` int DEFAULT NULL,
  `employee_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `Departments`
--

INSERT INTO `Departments` (`dept_id`, `dept_name`, `location_id`, `employee_id`) VALUES
(1, 'HR', 2, NULL),
(2, 'Engineering', 2, NULL),
(3, 'Sales', 3, NULL),
(4, 'Marketing', 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Employees`
--

CREATE TABLE `Employees` (
  `employee_id` int NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  `job_id` int DEFAULT NULL,
  `dept_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `Employees`
--

INSERT INTO `Employees` (`employee_id`, `first_name`, `last_name`, `email`, `phone_no`, `manager_id`, `job_id`, `dept_id`) VALUES
(1, 'Alice', 'Smith', 'alice.newemail@example.com', '123-456-7890', NULL, 1, 2),
(2, 'Bob', 'Brown', 'bob.brown@example.com', '123-456-7891', 1, 2, 1),
(3, 'Carol', 'Davis', 'carol.davis@example.com', '123-456-7892', 1, 3, 3),
(4, 'David', 'Evans', 'david.evans@example.com', '123-456-7893', 2, 1, 2),
(5, 'Eve', 'Foster', 'eve.foster@example.com', '123-456-7894', 3, 3, 3),
(6, 'Frank', 'Green', 'frank.green@example.com', '123-456-7895', NULL, 1, 1),
(7, 'Grace', 'Hall', 'grace.hall@example.com', '123-456-7896', 2, 2, 2),
(8, 'Hank', 'Ivy', 'hank.ivy@example.com', '123-456-7897', 3, 3, 3),
(9, 'Ivy', 'Jones', 'ivy.jones@example.com', '123-456-7898', 1, 1, 1),
(10, 'Jack', 'King', 'jack.king@example.com', '123-456-7899', NULL, 2, 2),
(11, 'Kara', 'Lee', 'kara.lee@example.com', '123-456-7900', 2, 3, 3),
(12, 'Liam', 'Morris', 'liam.morris@example.com', '123-456-7901', 3, 1, 1),
(13, 'Mia', 'Nelson', 'mia.nelson@example.com', '123-456-7902', 1, 2, 2),
(14, 'Nina', 'Owens', 'nina.owens@example.com', '123-456-7903', 2, 3, 3),
(15, 'Oscar', 'Perez', 'oscar.perez@example.com', '123-456-7904', 3, 1, 1),
(16, 'Paula', 'Quinn', 'paula.quinn@example.com', '123-456-7905', NULL, 2, 2),
(17, 'Quinn', 'Reed', 'quinn.reed@example.com', '123-456-7906', 1, 3, 3),
(18, 'Rachel', 'Stone', 'rachel.stone@example.com', '123-456-7907', 2, 1, 1),
(19, 'Steve', 'Taylor', 'steve.taylor@example.com', '123-456-7908', 3, 2, 2),
(20, 'Tina', 'Underwood', 'tina.underwood@example.com', '123-456-7909', 1, 3, 3),
(21, 'Uma', 'Vance', 'uma.vance@example.com', '123-456-7910', NULL, 1, 1),
(22, 'Victor', 'Wells', 'victor.wells@example.com', '123-456-7911', 2, 2, 2),
(23, 'Wendy', 'Xavier', 'wendy.xavier@example.com', '123-456-7912', 3, 3, 3),
(24, 'Xander', 'Young', 'xander.young@example.com', '123-456-7913', 1, 1, 1),
(25, 'Yara', 'Zimmer', 'yara.zimmer@example.com', '123-456-7914', 2, 2, 2),
(26, 'Zane', 'Adler', 'zane.adler@example.com', '123-456-7915', 3, 3, 3),
(27, 'Amy', 'Benson', 'amy.benson@example.com', '123-456-7916', NULL, 1, 1),
(28, 'Brian', 'Carter', 'brian.carter@example.com', '123-456-7917', 2, 2, 2),
(29, 'Clara', 'Dunn', 'clara.dunn@example.com', '123-456-7918', 3, 3, 3),
(30, 'Derek', 'Ellis', 'derek.ellis@example.com', '123-456-7919', 1, 1, 1),
(31, 'Buse', 'Erdem', 'buse.erdem@example.com', '513-456-7890', 1, 1, 2),
(32, 'Berfin', 'Akdemir', 'berfin.akdemir@example.com', '111-222-3333', 2, 2, 1),
(33, 'Nida', 'Karatas', 'nida.karatas@example.com', '523-456-7892', 3, 4, 4),
(35, 'Ian', 'Walker', 'ian.walker@example.com', '123-456-7895', NULL, 4, 4),
(36, 'Olivia', 'Parker', 'olivia.parker@example.com', '987-654-3210', 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `JobGrades`
--

CREATE TABLE `JobGrades` (
  `grade_level` varchar(10) NOT NULL,
  `job_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `JobGrades`
--

INSERT INTO `JobGrades` (`grade_level`, `job_id`) VALUES
('A', 1),
('B', 2),
('C', 3);

-- --------------------------------------------------------

--
-- Table structure for table `JobHistory`
--

CREATE TABLE `JobHistory` (
  `employee_id` int NOT NULL,
  `latest_work_experience` varchar(100) NOT NULL,
  `projects` varchar(100) DEFAULT NULL,
  `education` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `JobHistory`
--

INSERT INTO `JobHistory` (`employee_id`, `latest_work_experience`, `projects`, `education`, `start_date`, `end_date`) VALUES
(1, '5 years Software Engineering', 'Project Delta', 'BSc in Computer Science', '2015-06-01', '2020-06-01'),
(3, '7 years Sales', 'Project Gamma', 'BBA', '2013-06-01', '2020-06-01');

-- --------------------------------------------------------

--
-- Table structure for table `Jobs`
--

CREATE TABLE `Jobs` (
  `job_id` int NOT NULL,
  `job_title` varchar(100) NOT NULL,
  `salary` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `Jobs`
--

INSERT INTO `Jobs` (`job_id`, `job_title`, `salary`) VALUES
(1, 'Software Engineer', '95000.00'),
(2, 'HR Specialist', '60000.00'),
(3, 'Sales Manager', '75000.00'),
(4, 'Marketing Analyst', '65000.00'),
(5, 'Senior Data Scientist', '95000.00');

-- --------------------------------------------------------

--
-- Table structure for table `Locations`
--

CREATE TABLE `Locations` (
  `location_id` int NOT NULL,
  `full_address` varchar(255) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `country_id` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `Locations`
--

INSERT INTO `Locations` (`location_id`, `full_address`, `postal_code`, `country_id`) VALUES
(1, '123 Main St, New York, NY', '10001', 'US'),
(2, '456 Elm St, Toronto, ON', 'M4B 1B4', 'CA'),
(3, '789 High St, London', 'SW1A 1AA', 'UK'),
(4, '25 Queen St, Melbourne', '2000', 'AU');

-- --------------------------------------------------------

--
-- Table structure for table `Managers`
--

CREATE TABLE `Managers` (
  `manager_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `Managers`
--

INSERT INTO `Managers` (`manager_id`, `employee_id`, `first_name`, `last_name`, `email`, `phone_no`) VALUES
(1, 31, 'Buse', 'Erdem', 'buse.erdem@example.com', '503-456-7890'),
(2, 32, 'Berfin', 'Akdemir', 'berfin.akdemir@example.com', '513-456-7891'),
(3, 33, 'Nida', 'Karatas', 'nida.karatas@example.com', '523-456-7892');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Countries`
--
ALTER TABLE `Countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `Departments`
--
ALTER TABLE `Departments`
  ADD PRIMARY KEY (`dept_id`),
  ADD UNIQUE KEY `location_id` (`location_id`,`employee_id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`);

--
-- Indexes for table `Employees`
--
ALTER TABLE `Employees`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `manager_id` (`manager_id`) USING BTREE,
  ADD KEY `job_id` (`job_id`) USING BTREE,
  ADD KEY `dept_id` (`dept_id`) USING BTREE;

--
-- Indexes for table `JobGrades`
--
ALTER TABLE `JobGrades`
  ADD PRIMARY KEY (`grade_level`),
  ADD UNIQUE KEY `grade_level` (`grade_level`),
  ADD UNIQUE KEY `job_id` (`job_id`);

--
-- Indexes for table `JobHistory`
--
ALTER TABLE `JobHistory`
  ADD PRIMARY KEY (`employee_id`,`latest_work_experience`);

--
-- Indexes for table `Jobs`
--
ALTER TABLE `Jobs`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `Locations`
--
ALTER TABLE `Locations`
  ADD PRIMARY KEY (`location_id`),
  ADD UNIQUE KEY `country_id` (`country_id`);

--
-- Indexes for table `Managers`
--
ALTER TABLE `Managers`
  ADD PRIMARY KEY (`manager_id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Departments`
--
ALTER TABLE `Departments`
  ADD CONSTRAINT `Departments_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `Locations` (`location_id`),
  ADD CONSTRAINT `fk_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `Employees` (`employee_id`);

--
-- Constraints for table `Employees`
--
ALTER TABLE `Employees`
  ADD CONSTRAINT `Employees_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `Employees` (`employee_id`),
  ADD CONSTRAINT `Employees_ibfk_2` FOREIGN KEY (`job_id`) REFERENCES `Jobs` (`job_id`),
  ADD CONSTRAINT `fk_dept_id` FOREIGN KEY (`dept_id`) REFERENCES `Departments` (`dept_id`);

--
-- Constraints for table `JobGrades`
--
ALTER TABLE `JobGrades`
  ADD CONSTRAINT `JobGrades_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `Jobs` (`job_id`);

--
-- Constraints for table `JobHistory`
--
ALTER TABLE `JobHistory`
  ADD CONSTRAINT `JobHistory_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `Employees` (`employee_id`);

--
-- Constraints for table `Locations`
--
ALTER TABLE `Locations`
  ADD CONSTRAINT `Locations_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `Countries` (`country_id`);

--
-- Constraints for table `Managers`
--
ALTER TABLE `Managers`
  ADD CONSTRAINT `fk_employee` FOREIGN KEY (`employee_id`) REFERENCES `Employees` (`employee_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `Managers_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `Employees` (`employee_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
