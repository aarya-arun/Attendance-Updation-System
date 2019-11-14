-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2019 at 05:44 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_user_name` varchar(100) NOT NULL,
  `admin_password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_user_name`, `admin_password`) VALUES
(1, 'admin', '$2y$10$D74Zy1qMkATvmGRoVeq7hed4ajWof2aqDGnEaD3yPHABA.p.e7f4u');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `attendance_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `attendance_status` enum('Present','Absent') NOT NULL,
  `attendance_date` date NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`attendance_id`, `student_id`, `attendance_status`, `attendance_date`, `teacher_id`) VALUES
(1, 7, 'Present', '2019-05-01', 3),
(2, 8, 'Present', '2019-05-01', 3),
(3, 9, 'Absent', '2019-05-01', 3),
(4, 10, 'Present', '2019-05-01', 3),
(5, 11, 'Present', '2019-05-01', 3),
(6, 7, 'Absent', '2019-05-02', 3),
(7, 8, 'Present', '2019-05-02', 3),
(8, 9, 'Present', '2019-05-02', 3),
(9, 10, 'Present', '2019-05-02', 3),
(10, 11, 'Absent', '2019-05-02', 3),
(11, 1, 'Present', '2019-05-01', 2),
(12, 3, 'Present', '2019-05-01', 2),
(13, 4, 'Present', '2019-05-01', 2),
(14, 5, 'Present', '2019-05-01', 2),
(15, 6, 'Present', '2019-05-01', 2),
(16, 1, 'Present', '2019-05-02', 2),
(17, 3, 'Absent', '2019-05-02', 2),
(18, 4, 'Present', '2019-05-02', 2),
(19, 5, 'Absent', '2019-05-02', 2),
(20, 6, 'Present', '2019-05-02', 2),
(21, 1, 'Present', '2019-05-03', 2),
(22, 3, 'Present', '2019-05-03', 2),
(23, 4, 'Absent', '2019-05-03', 2),
(24, 5, 'Present', '2019-05-03', 2),
(25, 6, 'Present', '2019-05-03', 2),
(26, 1, 'Absent', '2019-05-04', 2),
(27, 3, 'Present', '2019-05-04', 2),
(28, 4, 'Present', '2019-05-04', 2),
(29, 5, 'Present', '2019-05-04', 2),
(30, 6, 'Present', '2019-05-04', 2),
(31, 1, 'Present', '2019-05-06', 2),
(32, 3, 'Present', '2019-05-06', 2),
(33, 4, 'Present', '2019-05-06', 2),
(34, 5, 'Present', '2019-05-06', 2),
(35, 6, 'Present', '2019-05-06', 2),
(36, 1, 'Present', '2019-05-07', 2),
(37, 3, 'Present', '2019-05-07', 2),
(38, 4, 'Present', '2019-05-07', 2),
(39, 5, 'Present', '2019-05-07', 2),
(40, 6, 'Absent', '2019-05-07', 2),
(41, 1, 'Present', '2019-05-08', 2),
(42, 3, 'Present', '2019-05-08', 2),
(43, 4, 'Present', '2019-05-08', 2),
(44, 5, 'Absent', '2019-05-08', 2),
(45, 6, 'Present', '2019-05-08', 2),
(46, 1, 'Present', '2019-05-09', 2),
(47, 3, 'Present', '2019-05-09', 2),
(48, 4, 'Present', '2019-05-09', 2),
(49, 5, 'Present', '2019-05-09', 2),
(50, 6, 'Present', '2019-05-09', 2),
(51, 1, 'Present', '2019-05-10', 2),
(52, 3, 'Absent', '2019-05-10', 2),
(53, 4, 'Absent', '2019-05-10', 2),
(54, 5, 'Present', '2019-05-10', 2),
(55, 6, 'Absent', '2019-05-10', 2),
(56, 1, 'Present', '2019-05-11', 2),
(57, 3, 'Present', '2019-05-11', 2),
(58, 4, 'Absent', '2019-05-11', 2),
(59, 5, 'Present', '2019-05-11', 2),
(60, 6, 'Absent', '2019-05-11', 2),
(61, 7, 'Present', '2019-05-03', 3),
(62, 8, 'Present', '2019-05-03', 3),
(63, 9, 'Present', '2019-05-03', 3),
(64, 10, 'Present', '2019-05-03', 3),
(65, 11, 'Present', '2019-05-03', 3),
(66, 7, 'Absent', '2019-05-04', 3),
(67, 8, 'Present', '2019-05-04', 3),
(68, 9, 'Absent', '2019-05-04', 3),
(69, 10, 'Present', '2019-05-04', 3),
(70, 11, 'Absent', '2019-05-04', 3),
(71, 7, 'Present', '2019-05-06', 3),
(72, 8, 'Present', '2019-05-06', 3),
(73, 9, 'Absent', '2019-05-06', 3),
(74, 10, 'Present', '2019-05-06', 3),
(75, 11, 'Present', '2019-05-06', 3),
(76, 7, 'Present', '2019-05-07', 3),
(77, 8, 'Present', '2019-05-07', 3),
(78, 9, 'Present', '2019-05-07', 3),
(79, 10, 'Present', '2019-05-07', 3),
(80, 11, 'Present', '2019-05-07', 3),
(81, 7, 'Present', '2019-05-08', 3),
(82, 8, 'Present', '2019-05-08', 3),
(83, 9, 'Present', '2019-05-08', 3),
(84, 10, 'Absent', '2019-05-08', 3),
(85, 11, 'Absent', '2019-05-08', 3),
(86, 7, 'Present', '2019-05-09', 3),
(87, 8, 'Present', '2019-05-09', 3),
(88, 9, 'Absent', '2019-05-09', 3),
(89, 10, 'Present', '2019-05-09', 3),
(90, 11, 'Present', '2019-05-09', 3),
(91, 7, 'Absent', '2019-05-10', 3),
(92, 8, 'Present', '2019-05-10', 3),
(93, 9, 'Present', '2019-05-10', 3),
(94, 10, 'Present', '2019-05-10', 3),
(95, 11, 'Absent', '2019-05-10', 3),
(96, 7, 'Present', '2019-05-11', 3),
(97, 8, 'Present', '2019-05-11', 3),
(98, 9, 'Present', '2019-05-11', 3),
(99, 10, 'Absent', '2019-05-11', 3),
(100, 11, 'Present', '2019-05-11', 3),
(101, 12, 'Present', '2019-05-01', 4),
(102, 13, 'Present', '2019-05-01', 4),
(103, 14, 'Present', '2019-05-01', 4),
(104, 15, 'Present', '2019-05-01', 4),
(105, 16, 'Present', '2019-05-01', 4),
(106, 12, 'Present', '2019-05-02', 4),
(107, 13, 'Absent', '2019-05-02', 4),
(108, 14, 'Present', '2019-05-02', 4),
(109, 15, 'Absent', '2019-05-02', 4),
(110, 16, 'Present', '2019-05-02', 4),
(111, 12, 'Present', '2019-05-03', 4),
(112, 13, 'Present', '2019-05-03', 4),
(113, 14, 'Present', '2019-05-03', 4),
(114, 15, 'Absent', '2019-05-03', 4),
(115, 16, 'Present', '2019-05-03', 4),
(116, 12, 'Present', '2019-05-04', 4),
(117, 13, 'Present', '2019-05-04', 4),
(118, 14, 'Present', '2019-05-04', 4),
(119, 15, 'Present', '2019-05-04', 4),
(120, 16, 'Present', '2019-05-04', 4),
(121, 12, 'Present', '2019-05-06', 4),
(122, 13, 'Absent', '2019-05-06', 4),
(123, 14, 'Absent', '2019-05-06', 4),
(124, 15, 'Present', '2019-05-06', 4),
(125, 16, 'Present', '2019-05-06', 4),
(126, 12, 'Absent', '2019-05-07', 4),
(127, 13, 'Present', '2019-05-07', 4),
(128, 14, 'Present', '2019-05-07', 4),
(129, 15, 'Present', '2019-05-07', 4),
(130, 16, 'Absent', '2019-05-07', 4),
(131, 12, 'Present', '2019-05-08', 4),
(132, 13, 'Absent', '2019-05-08', 4),
(133, 14, 'Present', '2019-05-08', 4),
(134, 15, 'Present', '2019-05-08', 4),
(135, 16, 'Present', '2019-05-08', 4),
(136, 12, 'Present', '2019-05-09', 4),
(137, 13, 'Present', '2019-05-09', 4),
(138, 14, 'Present', '2019-05-09', 4),
(139, 15, 'Present', '2019-05-09', 4),
(140, 16, 'Absent', '2019-05-09', 4),
(141, 12, 'Present', '2019-05-10', 4),
(142, 13, 'Absent', '2019-05-10', 4),
(143, 14, 'Present', '2019-05-10', 4),
(144, 15, 'Present', '2019-05-10', 4),
(145, 16, 'Absent', '2019-05-10', 4),
(146, 12, 'Present', '2019-05-11', 4),
(147, 13, 'Present', '2019-05-11', 4),
(148, 14, 'Present', '2019-05-11', 4),
(149, 15, 'Present', '2019-05-11', 4),
(150, 16, 'Present', '2019-05-11', 4),
(151, 17, 'Present', '2019-05-01', 5),
(152, 18, 'Present', '2019-05-01', 5),
(153, 19, 'Present', '2019-05-01', 5),
(154, 20, 'Absent', '2019-05-01', 5),
(155, 21, 'Absent', '2019-05-01', 5),
(156, 17, 'Present', '2019-05-02', 5),
(157, 18, 'Present', '2019-05-02', 5),
(158, 19, 'Present', '2019-05-02', 5),
(159, 20, 'Present', '2019-05-02', 5),
(160, 21, 'Present', '2019-05-02', 5),
(161, 17, 'Present', '2019-05-03', 5),
(162, 18, 'Present', '2019-05-03', 5),
(163, 19, 'Present', '2019-05-03', 5),
(164, 20, 'Present', '2019-05-03', 5),
(165, 21, 'Absent', '2019-05-03', 5),
(166, 17, 'Present', '2019-05-04', 5),
(167, 18, 'Present', '2019-05-04', 5),
(168, 19, 'Absent', '2019-05-04', 5),
(169, 20, 'Present', '2019-05-04', 5),
(170, 21, 'Present', '2019-05-04', 5),
(171, 17, 'Present', '2019-05-06', 5),
(172, 18, 'Present', '2019-05-06', 5),
(173, 19, 'Present', '2019-05-06', 5),
(174, 20, 'Present', '2019-05-06', 5),
(175, 21, 'Present', '2019-05-06', 5),
(176, 17, 'Present', '2019-05-07', 5),
(177, 18, 'Present', '2019-05-07', 5),
(178, 19, 'Present', '2019-05-07', 5),
(179, 20, 'Present', '2019-05-07', 5),
(180, 21, 'Absent', '2019-05-07', 5),
(181, 17, 'Present', '2019-05-08', 5),
(182, 18, 'Present', '2019-05-08', 5),
(183, 19, 'Present', '2019-05-08', 5),
(184, 20, 'Absent', '2019-05-08', 5),
(185, 21, 'Present', '2019-05-08', 5),
(186, 17, 'Present', '2019-05-09', 5),
(187, 18, 'Present', '2019-05-09', 5),
(188, 19, 'Absent', '2019-05-09', 5),
(189, 20, 'Absent', '2019-05-09', 5),
(190, 21, 'Present', '2019-05-09', 5),
(191, 17, 'Absent', '2019-05-10', 5),
(192, 18, 'Present', '2019-05-10', 5),
(193, 19, 'Present', '2019-05-10', 5),
(194, 20, 'Present', '2019-05-10', 5),
(195, 21, 'Present', '2019-05-10', 5),
(196, 17, 'Present', '2019-05-11', 5),
(197, 18, 'Present', '2019-05-11', 5),
(198, 19, 'Present', '2019-05-11', 5),
(199, 20, 'Absent', '2019-05-11', 5),
(200, 21, 'Present', '2019-05-11', 5),
(201, 7, 'Present', '2019-05-13', 3),
(202, 8, 'Present', '2019-05-13', 3),
(203, 9, 'Present', '2019-05-13', 3),
(204, 10, 'Absent', '2019-05-13', 3),
(205, 11, 'Present', '2019-05-13', 3),
(206, 7, 'Present', '2019-05-14', 3),
(207, 8, 'Present', '2019-05-14', 3),
(208, 9, 'Absent', '2019-05-14', 3),
(209, 10, 'Present', '2019-05-14', 3),
(210, 11, 'Present', '2019-05-14', 3),
(211, 23, 'Present', '2019-08-01', 6),
(212, 28, 'Absent', '2019-08-01', 6),
(213, 33, 'Present', '2019-08-01', 6),
(214, 38, 'Present', '2019-08-01', 6),
(215, 43, 'Present', '2019-08-01', 6),
(216, 48, 'Present', '2019-08-01', 6),
(217, 53, 'Present', '2019-08-01', 6),
(218, 58, 'Present', '2019-08-01', 6),
(219, 63, 'Absent', '2019-08-01', 6),
(220, 68, 'Absent', '2019-08-01', 6),
(221, 26, 'Absent', '2019-08-01', 9),
(222, 31, 'Present', '2019-08-01', 9),
(223, 36, 'Present', '2019-08-01', 9),
(224, 41, 'Present', '2019-08-01', 9),
(225, 46, 'Present', '2019-08-01', 9),
(226, 51, 'Present', '2019-08-01', 9),
(227, 56, 'Absent', '2019-08-01', 9),
(228, 61, 'Present', '2019-08-01', 9),
(229, 66, 'Absent', '2019-08-01', 9),
(230, 71, 'Present', '2019-08-01', 9),
(231, 24, 'Present', '2019-08-01', 7),
(232, 29, 'Present', '2019-08-01', 7),
(233, 34, 'Present', '2019-08-01', 7),
(234, 39, 'Present', '2019-08-01', 7),
(235, 44, 'Present', '2019-08-01', 7),
(236, 49, 'Present', '2019-08-01', 7),
(237, 54, 'Present', '2019-08-01', 7),
(238, 59, 'Absent', '2019-08-01', 7),
(239, 64, 'Present', '2019-08-01', 7),
(240, 69, 'Absent', '2019-08-01', 7),
(241, 25, 'Present', '2019-08-01', 8),
(242, 30, 'Absent', '2019-08-01', 8),
(243, 35, 'Present', '2019-08-01', 8),
(244, 40, 'Present', '2019-08-01', 8),
(245, 45, 'Present', '2019-08-01', 8),
(246, 50, 'Present', '2019-08-01', 8),
(247, 55, 'Present', '2019-08-01', 8),
(248, 60, 'Absent', '2019-08-01', 8),
(249, 65, 'Absent', '2019-08-01', 8),
(250, 70, 'Absent', '2019-08-01', 8),
(251, 27, 'Present', '2019-08-01', 10),
(252, 32, 'Present', '2019-08-01', 10),
(253, 37, 'Present', '2019-08-01', 10),
(254, 42, 'Present', '2019-08-01', 10),
(255, 47, 'Present', '2019-08-01', 10),
(256, 52, 'Present', '2019-08-01', 10),
(257, 57, 'Absent', '2019-08-01', 10),
(258, 62, 'Absent', '2019-08-01', 10),
(259, 67, 'Absent', '2019-08-01', 10),
(260, 72, 'Present', '2019-08-01', 10),
(261, 23, 'Present', '2019-11-13', 6),
(262, 28, 'Present', '2019-11-13', 6),
(263, 33, 'Present', '2019-11-13', 6),
(264, 38, 'Present', '2019-11-13', 6),
(265, 43, 'Present', '2019-11-13', 6),
(266, 48, 'Present', '2019-11-13', 6),
(267, 53, 'Present', '2019-11-13', 6),
(268, 58, 'Absent', '2019-11-13', 6),
(269, 63, 'Absent', '2019-11-13', 6),
(270, 68, 'Absent', '2019-11-13', 6),
(271, 23, 'Present', '2019-11-07', 12),
(272, 28, 'Present', '2019-11-07', 12),
(273, 33, 'Present', '2019-11-07', 12),
(274, 38, 'Present', '2019-11-07', 12),
(275, 43, 'Present', '2019-11-07', 12),
(276, 48, 'Present', '2019-11-07', 12),
(277, 53, 'Present', '2019-11-07', 12),
(278, 58, 'Absent', '2019-11-07', 12),
(279, 63, 'Absent', '2019-11-07', 12),
(280, 68, 'Absent', '2019-11-07', 12);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_grade`
--

CREATE TABLE `tbl_grade` (
  `grade_id` int(11) NOT NULL,
  `grade_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_grade`
--

INSERT INTO `tbl_grade` (`grade_id`, `grade_name`) VALUES
(1, '11 - A'),
(2, '11 - B'),
(3, '12 - A'),
(4, '12 - B'),
(5, '11 - C');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(150) NOT NULL,
  `student_roll_number` int(11) NOT NULL,
  `student_dob` date NOT NULL,
  `student_grade_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`student_id`, `student_name`, `student_roll_number`, `student_dob`, `student_grade_id`) VALUES
(23, 'Aarya', 1, '2019-01-01', 1),
(24, 'Gagana', 2, '2019-01-02', 1),
(25, 'Indu', 3, '2019-01-03', 1),
(26, 'Athira', 4, '2019-01-04', 1),
(27, 'Maneesha', 5, '2019-01-05', 1),
(28, 'Niveditha', 1, '2019-01-06', 2),
(29, 'Tejvi', 2, '2019-01-07', 2),
(30, 'Aishwarya', 3, '2019-01-08', 2),
(55, 'Sindhu ', 4, '2019-02-02', 2),
(60, 'Asha', 5, '2019-02-07', 2),
(73, 'kabir', 1, '2017-11-22', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teacher`
--

CREATE TABLE `tbl_teacher` (
  `teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(150) NOT NULL,
  `teacher_address` text NOT NULL,
  `teacher_emailid` varchar(100) NOT NULL,
  `teacher_password` varchar(100) NOT NULL,
  `teacher_qualification` varchar(100) NOT NULL,
  `teacher_doj` date NOT NULL,
  `teacher_image` varchar(100) NOT NULL,
  `teacher_grade_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_teacher`
--

INSERT INTO `tbl_teacher` (`teacher_id`, `teacher_name`, `teacher_address`, `teacher_emailid`, `teacher_password`, `teacher_qualification`, `teacher_doj`, `teacher_image`, `teacher_grade_id`) VALUES
(6, 'Rani Mukherjee', '123, Street number 1, Bangalore -34', 'rani@rani.com', '$2y$10$RSSe4XbK5ylnAnWYkkVKl.uE.C8GoFmpPzttUztd5pBrPJNZIhSF.', 'MEd', '2019-01-01', '5dcad2bc5cd6c.jpg', 1),
(7, 'Akshay Kumar', '123, Street number 2, Bangalore - 56', 'akshay@akshay.com', '$2y$10$QcW3g5su97ZPJoVSfqlKl.3Tyz0pyADO.WEeP2/ILL2TvioCbN1b2', 'MEd', '2019-01-01', '5dcad31197b2a.jpg', 2),
(8, 'Madhuri Dixit', '123, Street number 3, Bangalore - 76', 'madhuri@madhuri.com', '$2y$10$ni9lqWNRohWyGwQyTv06l.CuUJ4G7mq1UvgHfow2qRJgD5d2JUkL2', 'MEd', '2019-01-01', '5dcad396d73ac.jpg', 5),
(9, 'Saif Ali Khan', '123, Street number 4, Bangalore - 66', 'saif@saif.com', '$2y$10$KNfXxkhiJ3juPvHJX2Vtj.i5MKXu1cjuNvSSM.VDDaw4pVc5I4DpK', 'MEd', '2019-01-01', '5dcad402ebf21.jpg', 3),
(10, 'Preity Zinta', '123, Street number 5, Bangalore - 89', 'preity@preity.com', '$2y$10$B6KRRCGN.3jpgkjpHHRW6uOR/4XzncQco4buco4HyfcJ0LSz3rR7O', 'MEd', '2019-01-01', '5dcad4466f109.jpg', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `tbl_grade`
--
ALTER TABLE `tbl_grade`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT for table `tbl_grade`
--
ALTER TABLE `tbl_grade`
  MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
