-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2024 at 07:00 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `it_resource_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `id` int(11) NOT NULL,
  `resource_name` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `specification` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `allocated_to` varchar(255) DEFAULT NULL,
  `date_allocated` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`id`, `resource_name`, `type`, `specification`, `status`, `allocated_to`, `date_allocated`) VALUES
(1, 'laptop', 'hardware', 'acer acer', 'Available', 'factory', '2024-09-04'),
(2, 'Computer', 'ACER', '18 TB', 'available', 'comshop', '2024-09-02'),
(3, 'CELLPHONE', 'apple', 'BRAND NEW', 'FOR SALE', 'APPLE Store', '2024-09-03'),
(4, 'IPAD', 'mac', 'mac ios', 'Available', 'SCHOOL', '2024-09-11'),
(5, 'Laptop', 'Lenovo', 'BRAND NEW', 'many', 'houseq', '2024-09-03'),
(6, 'PHONE', 'cherry mobile', 'flipphone', 'vintage', 'stores', '2024-09-03'),
(7, 'PC', 'DELL', 'many units', 'MANY PC AVAILABLE', 'PISONET', '2024-09-03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
