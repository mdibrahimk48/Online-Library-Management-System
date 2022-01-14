-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2020 at 08:10 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Manzida Mou', 'admin@gmail.com', 'admin', '202cb962ac59075b964b07152d234b70', '2020-10-07 17:06:29');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(2, 'Chetan Bhagatt', '2020-07-08 14:30:23', '2020-07-08 15:15:09'),
(3, 'Anita Desai', '2020-07-08 14:35:08', NULL),
(4, 'HC Verma', '2020-07-08 14:35:21', NULL),
(10, 'Paul 1', '2020-10-10 19:00:39', '2020-10-10 20:21:54'),
(11, 'Umar Faruk', '2020-10-14 17:28:01', NULL),
(12, 'Abdullah Bin Kashem', '2020-10-14 17:28:25', NULL),
(13, 'Al Kawsar Majumder', '2020-10-14 17:28:39', NULL),
(14, 'Saila Nasrin', '2020-10-14 17:28:50', NULL),
(15, 'Nusrat Ima', '2020-10-14 17:28:59', NULL),
(16, 'Ibrahim Khalil', '2020-10-14 17:29:07', NULL),
(17, 'Fahima Nova', '2020-10-14 17:29:19', NULL),
(18, 'Shawkhat Hossain', '2020-10-14 17:29:34', NULL),
(19, 'Liton Das', '2020-10-14 17:29:42', NULL),
(20, 'Saifullah Sajib', '2020-10-14 17:30:17', NULL),
(21, 'Alauddin Ahmed', '2020-10-14 17:30:34', NULL),
(22, 'Manzida Rahman', '2020-10-14 17:30:47', NULL),
(23, 'Sanzida Medha', '2020-10-14 17:30:58', NULL),
(24, 'Maliha Rahman', '2020-10-14 17:31:09', NULL),
(25, 'Nadil Hasan', '2020-10-14 17:31:26', NULL),
(26, 'Kohinoor Rahman', '2020-10-14 17:31:35', NULL),
(27, 'Habib Hossain', '2020-10-14 17:31:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`) VALUES
(1, 'PHP And MySql programming', 5, 15, 222333, 20, '2020-07-08 20:04:55', '2020-10-14 17:36:21'),
(3, 'physics', 6, 4, 1111, 15, '2020-08-08 20:17:31', '2020-08-15 06:13:17'),
(4, 'Classification of Java', 8, 10, 12345, 120, '2020-10-10 19:01:09', NULL),
(5, 'History of Indian Subcontinent', 18, 25, 149863, 200, '2020-10-14 17:32:34', NULL),
(6, 'Introduction of Business', 17, 24, 93284238, 100, '2020-10-14 17:33:27', NULL),
(7, 'Test Book', 9, 17, 2523466, 150, '2020-10-14 17:35:26', NULL),
(8, 'Technology World', 10, 16, 232523, 500, '2020-10-14 17:35:58', NULL),
(9, 'Math Classification', 12, 13, 245235, 300, '2020-10-14 17:37:26', NULL),
(10, 'Sports World Bangladesh', 13, 19, 35235, 120, '2020-10-14 17:37:52', NULL),
(11, 'Fantasy World', 15, 21, 34634, 400, '2020-10-14 17:38:25', NULL),
(12, 'Programming World', 5, 11, 300, 240, '2020-10-14 17:39:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(4, 'Romantic', 1, '2020-07-04 18:35:25', '2020-10-14 17:14:45'),
(5, 'Technology', 1, '2020-07-04 18:35:39', '2020-10-14 17:15:07'),
(6, 'Science', 0, '2020-07-04 18:35:55', '2020-10-14 17:27:08'),
(8, 'Java', 1, '2020-10-10 19:00:28', '0000-00-00 00:00:00'),
(9, 'Test Category', 1, '2020-10-13 18:13:58', '0000-00-00 00:00:00'),
(10, 'Computer Science', 1, '2020-10-14 17:25:10', '0000-00-00 00:00:00'),
(11, 'ICT', 0, '2020-10-14 17:25:19', '2020-10-14 17:25:48'),
(12, 'Math', 1, '2020-10-14 17:25:28', '0000-00-00 00:00:00'),
(13, 'Sports', 1, '2020-10-14 17:25:36', '0000-00-00 00:00:00'),
(14, 'Story', 0, '2020-10-14 17:26:10', '0000-00-00 00:00:00'),
(15, 'Novel', 1, '2020-10-14 17:26:48', '0000-00-00 00:00:00'),
(16, 'Science', 1, '2020-10-14 17:27:01', '0000-00-00 00:00:00'),
(17, 'Commerce ', 1, '2020-10-14 17:27:27', '0000-00-00 00:00:00'),
(18, 'History', 1, '2020-10-14 17:27:37', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(7, 1, 'SID012', '2020-10-07 21:09:25', '2020-10-07 21:09:37', 1, 500),
(8, 3, 'SID012', '2020-10-07 21:18:39', NULL, NULL, NULL),
(12, 4, 'SID012', '2020-10-10 19:03:44', NULL, NULL, NULL),
(15, 3, 'SID010', '2020-10-10 19:36:43', NULL, NULL, NULL),
(16, 4, 'SID010', '2020-10-10 19:40:52', '2020-10-14 17:57:18', 1, 0),
(17, 4, 'SID013', '2020-10-13 18:22:02', NULL, NULL, NULL),
(18, 12, 'SID013', '2020-10-14 17:40:27', NULL, NULL, NULL),
(19, 11, 'SID023', '2020-10-14 17:55:25', '2020-10-14 17:57:47', 1, 300),
(20, 6, 'SID020', '2020-10-14 17:58:09', NULL, NULL, NULL),
(21, 7, 'SID018', '2020-10-14 17:58:38', NULL, NULL, NULL),
(22, 9, 'SID015', '2020-10-14 17:59:18', NULL, NULL, NULL),
(23, 10, 'SID021', '2020-10-14 18:00:02', NULL, NULL, NULL),
(24, 3, 'SID016', '2020-10-14 18:00:49', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(8, 'SID009', 'test', 'test@gmail.com', '2359874527', '202cb962ac59075b964b07152d234b70\r\n', 0, '2020-07-11 15:58:28', '2020-10-14 17:54:40'),
(9, 'SID010', 'Amit', 'amit@gmail.com', '8585856224', '202cb962ac59075b964b07152d234b70', 1, '2020-07-15 13:40:30', '2020-10-14 17:16:50'),
(11, 'SID012', 'Ibrahim Khalil', 'mdibrahimk48@gmail.com', '1737328916', '202cb962ac59075b964b07152d234b70', 1, '2020-10-07 16:42:01', NULL),
(12, 'SID013', 'Manzida Mou', 'manzida@gmail.com', '1737328918', '202cb962ac59075b964b07152d234b70', 1, '2020-10-07 16:42:01', '2020-10-07 16:42:01'),
(14, 'SID014', 'Alauddin Ahmed', 'alauddin1@gmail.com', '0183830099', '202cb962ac59075b964b07152d234b70', 1, '2020-10-14 17:42:05', NULL),
(15, 'SID015', 'Fahima Nizam Nova', 'fahima@gmail.com', '1897427354', '202cb962ac59075b964b07152d234b70', 1, '2020-10-14 17:44:05', NULL),
(16, 'SID016', 'Saifullah Sajib', 'sajib@gmail.com', '1284723747', '202cb962ac59075b964b07152d234b70', 0, '2020-10-14 17:44:41', '2020-10-14 17:54:49'),
(17, 'SID017', 'Al Kawsar Majumder', 'kawsar@gmail.com', '1334523534', '202cb962ac59075b964b07152d234b70', 1, '2020-10-14 17:45:14', NULL),
(18, 'SID018', 'Saila Nasrin', 'saila@gmail.com', '1382784757', '202cb962ac59075b964b07152d234b70', 1, '2020-10-14 17:45:49', NULL),
(19, 'SID019', 'Nusrat Jahan Ima', 'nusrat@gmail.com', '1893257364', '202cb962ac59075b964b07152d234b70', 1, '2020-10-14 17:46:22', NULL),
(20, 'SID020', 'Umar Faruk Akash', 'umar@gmail.com', '1837457457', '202cb962ac59075b964b07152d234b70', 1, '2020-10-14 17:47:48', NULL),
(21, 'SID021', 'Nadil Hasan', 'nadil@gmail.com', '1324235346', '202cb962ac59075b964b07152d234b70', 1, '2020-10-14 17:51:16', NULL),
(22, 'SID022', 'Sunzida Medha', 'sunzida@gmail.com', '1923523563', '202cb962ac59075b964b07152d234b70', 1, '2020-10-14 17:52:18', NULL),
(23, 'SID023', 'Maliha Rahman', 'maliha@gmail.com', '1652352352', '202cb962ac59075b964b07152d234b70', 1, '2020-10-14 17:52:53', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
