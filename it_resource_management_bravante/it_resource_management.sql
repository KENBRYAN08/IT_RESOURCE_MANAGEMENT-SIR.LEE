-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2024 at 05:12 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

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
(1, 'laptopp', 'hardware', 'acer acerr', 'Available', 'factory', '2024-09-04'),
(2, 'CELLPHONE', 'apple', 'BRAND NEW', 'FOR SALE', 'APPLE Store', '2024-09-03'),
(3, 'IPAD', 'mac', 'mac ios', 'Available', 'SCHOOL', '2024-09-11'),
(4, 'Laptop', 'Lenovo', 'BRAND NEW', 'many', 'houseq', '2024-09-03'),
(5, 'PHONE', 'cherry mobile', 'flipphone', 'vintage', 'stores', '2024-09-03'),
(6, 'PC', 'DELL', 'many units', 'MANY PC AVAILABLE', 'PISONETs', '2024-09-03'),
(7, 'laptop', 'laptop', 'laptop', 'LAPTOP', 'LAPTOP', '2024-10-21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'ken', '$2y$10$2rcnkrMpx8JWR7LCVTxm6eWtjX2FOVxyMP/V2FIqftPbQojvCXxMm', 'user'),
(2, 'bry', '$2y$10$DuBjnUoGzcxtGdziYbFhDeBiZa8bAUuTPBia28VwY/xPAPGgu5gUC', 'admin'),
(3, 'neth', '$2y$10$1s3eCS2/MBcc0FP395bfPee8urCnXeyKG/Hnztty3SrshqGRSCY6.', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
