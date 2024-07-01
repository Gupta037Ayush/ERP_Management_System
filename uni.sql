-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2021 at 06:48 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uni`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'tipu', '202cb962ac59075b964b07152d234b70'),
(2, 'Ayush', '202cb962ac59075b964b07152d234b70'),
(3, 'Avya', '202cb962ac59075b964b07152d234b70'),
(4, 'Sonali', '202cb962ac59075b964b07152d234b70'),
(5, 'Ayush K', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `attn`
--

CREATE TABLE `attn` (
  `id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `atten` varchar(50) NOT NULL,
  `at_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attn`
--

INSERT INTO `attn` (`id`, `st_id`, `atten`, `at_date`) VALUES
(206, 12103072, 'absent', '2021-04-11'),
(207, 13103072, '', '0000-00-00'),
(208, 13203072, '', '0000-00-00'),
(209, 14103053, '', '0000-00-00'),
(210, 14203072, '', '0000-00-00'),
(211, 12103072, 'absent', '2021-06-05'),
(212, 13103072, 'absent', '2021-06-05'),
(213, 13203072, 'absent', '2021-06-05'),
(214, 14103053, 'present', '2021-06-05'),
(215, 14203072, 'absent', '2021-06-05'),
(216, 1454540, '', '0000-00-00'),
(217, 17699619, '', '0000-00-00'),
(218, 12103072, 'present', '2021-06-06'),
(219, 13103072, 'present', '2021-06-06'),
(220, 13203072, 'present', '2021-06-06'),
(221, 14103053, 'absent', '2021-06-06'),
(222, 14203072, 'absent', '2021-06-06'),
(223, 1454540, 'present', '2021-06-06'),
(224, 17699619, 'present', '2021-06-06');

-- --------------------------------------------------------

--
-- Table structure for table `at_student`
--

CREATE TABLE `at_student` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `st_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `at_student`
--

INSERT INTO `at_student` (`id`, `name`, `st_id`) VALUES
(29, 'Ayush', 12103072),
(30, 'Rohan', 13103072),
(31, 'Mona', 13203072),
(32, 'Avya', 14103053),
(33, 'Sonali', 14203072),
(34, 'Vikas', 1454541),
(35, 'Vishal', 1454542),
(36, 'Deepali', 1454543),
(37, 'Divyanshu', 1454540),
(38, 'Tushar', 14545402),
(39, 'Neha', 1454544),
(40, 'Sneha', 1454545),
(41, 'Zainab', 1454546),
(42, 'Harsh', 14545462),
(43, 'Sourav', 1454547),
(44, 'Aryan', 1454548),
(45, 'Aman', 1454549),
(46, 'Sakshi', 1454550),
(47, 'Vanshika', 1454551),
(48, 'Abhishek', 17699619);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `education` varchar(100) DEFAULT NULL,
  `contact` int(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `username`, `password`, `name`, `email`, `birthday`, `gender`, `education`, `contact`, `address`) VALUES
(1, 'Md.Khalid', '202cb962ac59075b964b07152d234b70', 'Abdul Khalid', 'akhalid@gmail.com', '1986-04-01', 'Male', 'BIT, MIT', 900248750, 'Pari Chowk, Greater Noida'),
(2, 'nrajput', '202cb962ac59075b964b07152d234b70', 'Neetu Rajput', 'n.rajput@gmail.com', '1988-04-01', 'Female', 'AKTU', 8900248778, 'Alpha 1, Greater Noida'),
(3, 'a.mishra', '202cb962ac59075b964b07152d234b70', 'Amba Mishra', 'a.mishra@gmail.com', '1985-04-01', 'Female', 'AKTU', 900248750, 'Gamma 1, Greater Noida'),
(4, 'sharma.rahul', '202cb962ac59075b964b07152d234b70', 'Rahul Sharma', 'sharma.rahul@gmail.com', '1986-04-01', 'Male', 'AKTU,CCS', 900248750, 'Beta 1, Greater Noida'),
(5, 'n.chauhan', '202cb962ac59075b964b07152d234b70', 'Nidhi Chauhan', 'nidhi.chauhan@gmail.com', '1990-04-01', 'Female', 'AMITY', 900248750, 'Delta 1, Greater Noida'),
(13, 'sharma.r', '202cb962ac59075b964b07152d234b70', 'Rohini Sharma', 'rohinisharma@gmail.com', '1989-12-12', 'Female', 'AKTU,DU', 124785450, 'PI- 1, Greater Noida');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `marks` int(5) NOT NULL,
  `sub` varchar(50) NOT NULL,
  `semester` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `st_id`, `marks`, `sub`, `semester`) VALUES
(28, 12103072, 95, 'DBMS', '1st'),
(29, 12103072, 92, 'DBMS Lab', '1st'),
(30, 12103072, 90, 'Mathematics', '1st'),
(31, 12103072, 80, 'Programming', '1st'),
(32, 12103072, 90, 'Programming Lab', '1st'),
(35, 12103072, 95, 'Physics', '2nd'),
(36, 12103072, 96, 'Mathematics', '2nd'),
(37, 12103072, 85, 'Chemistry', '2nd'),
(38, 12103072, 78, 'Psychology', '2nd'),
(39, 15103058, 96, 'DBMS', '1st'),
(40, 15103058, 98, 'DBMS Lab', '1st'),
(41, 15103058, 65, 'Mathematics', '1st'),
(42, 15103058, 90, 'Programming', '1st'),
(43, 15103058, 92, 'Programming Lab', '1st'),
(44, 15103058, 95, 'English', '2nd'),
(45, 15103058, 50, 'Physics', '2nd'),
(46, 15103058, 68, 'Chemistry', '2nd'),
(47, 15103058, 92, 'Psychology', '2nd'),
(48, 15103157, 89, 'DBMS', '1st'),
(49, 15103157, 90, 'DBMS Lab', '1st'),
(50, 15103157, 80, 'Mathematics', '1st'),
(51, 15103157, 95, 'English', '1st'),
(52, 16303053, 85, 'DBMS', '1st'),
(53, 15103053, 75, 'DBMS Lab', '1st'),
(54, 15103053, 40, 'Mathematics', '1st'),
(55, 15103053, 85, 'Programming', '1st'),
(56, 15103053, 90, 'Programming Lab', '1st'),
(57, 15103053, 87, 'English', '1st'),
(58, 15103053, 60, 'Physics', '1st'),
(59, 15103053, 65, 'Chemistry', '1st'),
(60, 15103053, 69, 'Psychology', '1st'),
(61, 17699619, 71, 'DBMS', '1st'),
(62, 17699619, 82, 'DBMS Lab', '1st'),
(63, 17699619, 65, 'Mathematics', '1st'),
(64, 17699619, 85, 'Programming', '1st'),
(65, 17699619, 86, 'Programming Lab', '1st'),
(66, 17699619, 87, 'English', '1st'),
(67, 17699619, 70, 'Physics', '1st'),
(68, 17699619, 75, 'Chemistry', '1st'),
(69, 17699619, 70, 'Psychology', '1st');

-- --------------------------------------------------------

--
-- Table structure for table `st_info`
--

CREATE TABLE `st_info` (
  `st_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(50) NOT NULL,
  `bday` date NOT NULL,
  `program` varchar(10) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `st_info`
--

INSERT INTO `st_info` (`st_id`, `name`, `password`, `email`, `bday`, `program`, `contact`, `gender`, `address`, `img`) VALUES
(12103072, 'Ayush Gupta', '202cb962ac59075b964b07152d234b70', 'akg@gmail.com', '1995-10-10', 'BTECH', '7548884541', 'male', 'Gamma 1,Greater Noida', 'F34FEDE2-0BE0-400A-82CC-2FCC984A21C4.png'),
(13103072, 'Ayush Kant', '202cb962ac59075b964b07152d234b70', 'ak47@mail.com', '1995-10-10', 'BTECH', '2457778450', 'male', 'Alpha 1,Greater Noida', '7E230FB0-C157-4544-B270-97F3C8FDB1AA.png'),
(13203072, 'Avya Gupta', '202cb962ac59075b964b07152d234b70', 'avya@mail.com', '1995-10-10', 'BTECH', '4570002480', 'female', 'PI 1,Greater Noida', '20DE853C-35DC-4D91-BB0F-BBAEB2388294.png'),
(14103053, 'Sonali Chaurasia', '202cb962ac59075b964b07152d234b70', 's.chauhan@mail.com', '1996-08-09', 'BTECH', '97410000002', 'female', 'PI 1 ,Greater Noida', 'FB637BF3-101A-4B7F-B365-5645CDF14AE4.png'),
(14203072, 'Aryan Singh', '202cb962ac59075b964b07152d234b70', 'singharyan@mail.com', '1995-10-10', 'Bsc', '3457854445', 'male', 'Delta 1,Greater Noida', 'A048670B-178D-4D31-B802-B5B7DBF00E78.png'),
(15103023, 'Abhishek Singh', '202cb962ac59075b964b07152d234b70', 'a.singh@mail.com', '1996-08-09', 'Bsc', '7541112450', 'Male', 'Gaur city,Greater Noida', 'FFE697B5-F021-41FA-8267-53496890A002.png'),
(15103033, 'Vishal Raj ', '202cb962ac59075b964b07152d234b70', 'rajvishal@mail.com', '1996-08-09', 'BBA', '2145785550', 'Male', 'Beta 1,Greater Noida', 'C6F031D6-2249-4CDC-B513-DC16D9F2325E.png'),
(15103052, 'Ishika Gupta', '202cb962ac59075b964b07152d234b70', 'gupta.ishika@mail.com', '1995-10-10', 'BTECH', '8542145780', 'female', 'Alpha 2,Greater Noida', 'C9E6BD3E-8306-4385-BFE1-517DF1ACC505.png'),
(15103053, 'Deepali Kumari', '202cb962ac59075b964b07152d234b70', 'deepali@mail.com', '1996-08-09', 'BTECH', '1547854555', 'female', 'Sector 101,Noida', '70C5DB91-B97E-44D0-9B5D-298105F3FBE4.png'),
(15103057, 'Monalisha', '202cb962ac59075b964b07152d234b70', 'lishamona@gmail.com', '1996-04-12', 'BTECH', '7547854650', 'female', 'Delhi,New Delhi', '0AD69827-DDEF-485F-8721-E18F29C9A1DE.png'),
(15103058, 'Arman Khan', '202cb962ac59075b964b07152d234b70', 'anaskhan@gmail.com', '1996-10-28', 'Mtech', '3124578450', 'Male', 'Gamma 1,Greater Noida', '94E5BBB2-A0FF-4F19-BA12-C07F0C4C617A.png'),
(15103092, 'Pratyush Yadav', '202cb962ac59075b964b07152d234b70', 'yadav.pratyush@mail.com', '1995-10-10', 'Bsc', '3457856969', 'male', 'Parthala,Noida', '2112827E-7215-4CB3-BC87-590B2B848955.png'),
(16303053, 'Sahil Yadav', '202cb962ac59075b964b07152d234b70', 's.yadav@mail.com', '1996-08-09', 'Mtech', '7531598520', 'male', 'Gamma 1,Greater Noida', 'F6417D01-7D58-406A-B781-867ED93BACC0.png'),
(17699619, 'Aditi', '202cb962ac59075b964b07152d234b70', 'aditi@gmail.com', '1995-04-01', 'BTECH', '7410000058', 'Female', 'Alpha 1,Greater Noida', 'E2EB3AB3-379F-49E2-A558-E7CE535778A0.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attn`
--
ALTER TABLE `attn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `at_student`
--
ALTER TABLE `at_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `st_info`
--
ALTER TABLE `st_info`
  ADD PRIMARY KEY (`st_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attn`
--
ALTER TABLE `attn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;
--
-- AUTO_INCREMENT for table `at_student`
--
ALTER TABLE `at_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
