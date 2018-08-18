-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 18, 2018 at 09:42 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharma_all_jobs`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_requirement`
--

CREATE TABLE `add_requirement` (
  `requirement_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `requirement_name` text NOT NULL,
  `requirement_description` text NOT NULL,
  `requirement_date` date NOT NULL,
  `requirement_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `key_skills`
--

CREATE TABLE `key_skills` (
  `skill_id` int(11) NOT NULL,
  `skill_name` varchar(100) NOT NULL,
  `skill_type` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qualification`
--

CREATE TABLE `qualification` (
  `qualificationid` int(11) NOT NULL,
  `qualification_name` text NOT NULL,
  `completion_year` year(4) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_applied`
--

CREATE TABLE `tbl_applied` (
  `apply_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `requirement_id` int(11) NOT NULL,
  `applied_date` date NOT NULL,
  `applied_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company`
--

CREATE TABLE `tbl_company` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `company_logo` text NOT NULL,
  `company_type` varchar(250) NOT NULL,
  `email` text NOT NULL,
  `mob_num` int(11) NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jobtype`
--

CREATE TABLE `tbl_jobtype` (
  `jobtype_id` int(11) NOT NULL,
  `jobtype_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_resume`
--

CREATE TABLE `tbl_resume` (
  `resume_id` int(11) NOT NULL,
  `resume_name` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL,
  `uploaded_date&time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_registration`
--

CREATE TABLE `user_registration` (
  `userid` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `profilename` varchar(100) NOT NULL,
  `profileheading` varchar(500) NOT NULL,
  `mobilenumber` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_registration`
--

INSERT INTO `user_registration` (`userid`, `username`, `profilename`, `profileheading`, `mobilenumber`, `email`, `password`, `status`) VALUES
(1, 'grubbing', 'Bibb', 'WBC WNBA', 0, 'coach', 'we NFC', 'wsbcws'),
(2, 'grubbing', 'Bibb', 'WBC WNBA', 475242432, 'Chubb', 'fhvgjh', 'winces'),
(3, 'gjfnhfg', 'fghnfgvb', 'fgnhjfcgv', 2147483647, 'Bibb', 'tthryrt', 'ryhrtfg'),
(4, 'dcgjhncfg', 'bdgsfdx', 'asdfghjkl', 2147483647, 'asfdsx@gmail.com', 'fhfghnjr', 'fjty'),
(5, 'dcgjhncfg', 'bdgsfdx', 'asdfghjkl', 2147483647, 'asfdsx@gmail.com', 'fhfghnjr', 'fjty'),
(6, 'fgjhfg', 'dfhjnfg', 'dhgndf', 2147483647, 'zdgb@hbv.com', 'hfjs34!@', 'erhy'),
(7, 'Edith', 'ehjhut', 'rthtfrj', 2147483647, 'sdg@dfb.fy', 'ewrgh65!', 'cgj'),
(8, 'video', 'audio', 'heading', 2147483647, 'vidhi@yahoo.com', 'Vidhi0!', '00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `key_skills`
--
ALTER TABLE `key_skills`
  ADD PRIMARY KEY (`skill_id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `qualification`
--
ALTER TABLE `qualification`
  ADD PRIMARY KEY (`qualificationid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `tbl_applied`
--
ALTER TABLE `tbl_applied`
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `tbl_company`
--
ALTER TABLE `tbl_company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `tbl_resume`
--
ALTER TABLE `tbl_resume`
  ADD PRIMARY KEY (`resume_id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `user_registration`
--
ALTER TABLE `user_registration`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `key_skills`
--
ALTER TABLE `key_skills`
  MODIFY `skill_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qualification`
--
ALTER TABLE `qualification`
  MODIFY `qualificationid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_company`
--
ALTER TABLE `tbl_company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_resume`
--
ALTER TABLE `tbl_resume`
  MODIFY `resume_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_registration`
--
ALTER TABLE `user_registration`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `key_skills`
--
ALTER TABLE `key_skills`
  ADD CONSTRAINT `key_skills_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user_registration` (`userid`);

--
-- Constraints for table `qualification`
--
ALTER TABLE `qualification`
  ADD CONSTRAINT `qualification_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user_registration` (`userid`);

--
-- Constraints for table `tbl_applied`
--
ALTER TABLE `tbl_applied`
  ADD CONSTRAINT `tbl_applied_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user_registration` (`userid`);

--
-- Constraints for table `tbl_resume`
--
ALTER TABLE `tbl_resume`
  ADD CONSTRAINT `tbl_resume_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user_registration` (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
