-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2023 at 05:34 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siem`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `college` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `interests` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name`, `college`, `branch`, `email`, `phone`, `interests`) VALUES
(1, 'Pratik Atul Gaikwad', 'Siem', 'IT', 'mrpratikonline@gmail.com', 7796761255, ''),
(2, 'Pratik Atul Gaikwad', 'Sitrc', 'It', 'mrpratikonline@gmail.com', 7796761255, 'reading'),
(3, 'Pratik Atul Gaikwad', 'Sitrc', 'It', 'mrpratikonline@gmail.com', 7796761255, 'reading'),
(4, 'grggg', 'gwgwgwg', 'gegrg', 'fgrggwg@gmial.com', 0, 'Online Programming Contest'),
(5, 'wrggg', 'dvvvevv', 'vdvv', 'ffefi@gml.co', 3554556666, 'Online Programming Contest,Treasure Hunt'),
(6, 'Pratik Atul Gaikwad', 'Sitrc', 'It', 'mrpratikonline@gmail.com', 7796761255, 'Online Programming Contest,Treasure Hunt,Project Expo'),
(7, 'Rushikesh Jadhav', 'Siem', 'mech', 'mrpratikonline@gmail.com', 7796761255, 'Treasure Hunt,Project Expo,ENGADGET');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
