-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2023 at 06:05 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uifrdb_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`, `contact`, `email`, `address`) VALUES
(1, 'Trisha Pojas', 'Password1', '09638018363', 'admin@phinmaed.com', 'Sooc Arevalo Iloilo City');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `message`, `date`) VALUES
(4, 'hello', '2023-03-12 17:46:26'),
(9, 'our system is under maintenance right now/;\r\n;\r\n\r\n', '2023-09-21 12:36:31');

-- --------------------------------------------------------

--
-- Table structure for table `council`
--

CREATE TABLE `council` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `council`
--

INSERT INTO `council` (`id`, `name`, `password`, `contact`, `email`, `address`) VALUES
(2, 'John Lloyd Gallaron', 'Gallaron21', '09093456123', 'joro.gallaron.ui@phinmaed.com', 'Sooc Arevalo ILoilo City'),
(4, 'Jahi Pojas', 'Jahi0618', '09454724234', 'jagu.pojas.ui@phinmaed.com', 'Sooc Arevalo ILoilo City'),
(8, 'Trisha Pojas', '@Trisha123', '0909311', 'trisha@phinmaed.com', 'Mandurriao'),
(9, 'John  Jornadal Jr.', 'Jornadal@123', '09955982572', 'ohme.jornadal.ui@phinmaed.com', 'Barangay So-oc arevalo iloilo'),
(10, 'Trisha Pojas', 'Password1', '23456789456', 'tring@phinmaed.com', '23456ykjhgfdd'),
(11, 'ROBERT', 'B_b12345', '09638018363', 'bert@phinmaed.com', 'Sooc Arevalo Iloilo City');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `name`, `description`, `image`) VALUES
(8, 'Uygunco', '', '64234e48c8b59.jpg'),
(9, 'Gym', '', '64234e53dac9e.jpg'),
(10, 'Mini Park', '', '64234e5dcb110.jpg'),
(11, 'Quadrangle A', '', '64234e6972f4b.jpg'),
(12, 'Quadrangle B', '', '64234e7809bad.jpg'),
(13, 'Students Common', '', '64234e8957f18.jpg'),
(14, 'AVR', '', '64234e92e62de.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(255) NOT NULL,
  `facility_id` int(255) NOT NULL,
  `requestor_id` int(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `facility_id`, `requestor_id`, `status`) VALUES
(2, 1, 2, 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_list`
--

CREATE TABLE `schedule_list` (
  `id` int(30) NOT NULL,
  `requestor` varchar(255) NOT NULL,
  `facility` varchar(255) NOT NULL,
  `status` varchar(11) NOT NULL,
  `start_datetime` datetime NOT NULL,
  `end_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule_list`
--

INSERT INTO `schedule_list` (`id`, `requestor`, `facility`, `status`, `start_datetime`, `end_datetime`) VALUES
(11, 'Kent Chuatico', 'AVR', 'Approved', '2023-03-30 08:00:00', '2023-03-31 22:20:00'),
(12, 'Kent Chuatico', 'AVR', 'Pending', '2023-03-30 08:00:00', '2023-03-30 20:30:00'),
(13, 'Kent Chuatico', 'AVR', 'Pending', '2023-03-31 10:50:00', '2023-03-31 12:48:00'),
(14, 'tep saxor', 'AVR', 'Pending', '2023-04-13 10:10:00', '2023-04-29 22:10:00'),
(17, 'Marvin', 'AVR', 'Pending', '2023-08-19 17:14:00', '2023-08-19 20:14:00');

-- --------------------------------------------------------

--
-- Table structure for table `sog`
--

CREATE TABLE `sog` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sog`
--

INSERT INTO `sog` (`id`, `name`, `password`, `contact`, `email`, `address`) VALUES
(8, 'Trisha Pojas', 'Password1', '09123456789', 'trisha@phinmaed.com', 'Iloilo'),
(9, 'Kent Chuatico', 'Pojas0223', '111', 'pojas@phinmaed.com', 'ajdasd');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `password`, `contact`, `email`, `address`) VALUES
(6, 'tep saxor', 'Roxas1234567', '09651245589', 'roxas@phinmaed.com', 'igbaras iloilo'),
(8, 'asda', 'Pojas1234', '09638018363', 'pojas@phinmaed.com', 'dgfsfg'),
(9, 'Marvin', '@MARVIn12345', '1231', 'marvinaungon10@phinmaed.com', 'san juan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `council`
--
ALTER TABLE `council`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule_list`
--
ALTER TABLE `schedule_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sog`
--
ALTER TABLE `sog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `council`
--
ALTER TABLE `council`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `schedule_list`
--
ALTER TABLE `schedule_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sog`
--
ALTER TABLE `sog`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
