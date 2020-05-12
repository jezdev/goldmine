-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2020 at 06:57 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `goldmine`
--

-- --------------------------------------------------------

--
-- Table structure for table `associated_store_items_and_store_item_colors`
--

CREATE TABLE `associated_store_items_and_store_item_colors` (
  `id` int(11) NOT NULL,
  `store_items_id` int(11) NOT NULL,
  `store_item_colors_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `associated_store_items_and_store_item_colors`
--

INSERT INTO `associated_store_items_and_store_item_colors` (`id`, `store_items_id`, `store_item_colors_id`) VALUES
(1, 1, 2),
(2, 1, 3),
(4, 1, 5),
(6, 1, 4),
(7, 2, 2),
(8, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `associated_store_items_and_store_item_sizes`
--

CREATE TABLE `associated_store_items_and_store_item_sizes` (
  `id` int(11) NOT NULL,
  `store_items_id` int(11) NOT NULL,
  `store_item_sizes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `associated_store_items_and_store_item_sizes`
--

INSERT INTO `associated_store_items_and_store_item_sizes` (`id`, `store_items_id`, `store_item_sizes_id`) VALUES
(1, 2, 2),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_created` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `target_table` varchar(125) NOT NULL,
  `update_id` int(11) NOT NULL,
  `code` varchar(6) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `store_items`
--

CREATE TABLE `store_items` (
  `id` int(11) NOT NULL,
  `url_string` varchar(255) DEFAULT NULL,
  `item_title` varchar(255) NOT NULL,
  `item_code` varchar(255) NOT NULL,
  `item_price` decimal(7,2) NOT NULL,
  `item_description` text NOT NULL,
  `item_stock` tinyint(1) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_items`
--

INSERT INTO `store_items` (`id`, `url_string`, `item_title`, `item_code`, `item_price`, `item_description`, `item_stock`, `picture`) VALUES
(1, 'first', 'First', '2DV3YD', '77.00', 'Here we go..', 1, 'watch1.jpg'),
(2, 'second', 'Second', 'DVCQ6A', '100.00', 'Further test...', 1, ''),
(3, 'three', 'Three', 'EFTDP7', '234.00', 'New desc...', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `store_item_colors`
--

CREATE TABLE `store_item_colors` (
  `id` int(11) NOT NULL,
  `item_color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_item_colors`
--

INSERT INTO `store_item_colors` (`id`, `item_color`) VALUES
(1, 'Red'),
(2, 'Black'),
(3, 'Blue'),
(4, 'Silver'),
(5, 'Gold');

-- --------------------------------------------------------

--
-- Table structure for table `store_item_sizes`
--

CREATE TABLE `store_item_sizes` (
  `id` int(11) NOT NULL,
  `item_size` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_item_sizes`
--

INSERT INTO `store_item_sizes` (`id`, `item_size`) VALUES
(1, 'Small'),
(2, 'Large');

-- --------------------------------------------------------

--
-- Table structure for table `trongate_administrators`
--

CREATE TABLE `trongate_administrators` (
  `id` int(11) NOT NULL,
  `username` varchar(65) NOT NULL,
  `password` varchar(60) NOT NULL,
  `trongate_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trongate_administrators`
--

INSERT INTO `trongate_administrators` (`id`, `username`, `password`, `trongate_user_id`) VALUES
(1, 'admin', '$2y$11$SoHZDvbfLSRHAi3WiKIBiu.tAoi/GCBBO4HRxVX1I3qQkq3wCWfXi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `trongate_tokens`
--

CREATE TABLE `trongate_tokens` (
  `id` int(11) NOT NULL,
  `token` varchar(125) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `expiry_date` int(11) NOT NULL,
  `code` varchar(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trongate_tokens`
--

INSERT INTO `trongate_tokens` (`id`, `token`, `user_id`, `expiry_date`, `code`) VALUES
(12, 'YLt5pkFMS7LVo_cpgIwECdIPhf3GpIFX', 1, 1589251461, '0');

-- --------------------------------------------------------

--
-- Table structure for table `trongate_users`
--

CREATE TABLE `trongate_users` (
  `id` int(11) NOT NULL,
  `code` varchar(32) DEFAULT NULL,
  `user_level_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trongate_users`
--

INSERT INTO `trongate_users` (`id`, `code`, `user_level_id`) VALUES
(1, 'L4oLs4rlsslKgTwAXonMSH8ATmpNtmfi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `trongate_user_levels`
--

CREATE TABLE `trongate_user_levels` (
  `id` int(11) NOT NULL,
  `level_title` varchar(125) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trongate_user_levels`
--

INSERT INTO `trongate_user_levels` (`id`, `level_title`) VALUES
(1, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `associated_store_items_and_store_item_colors`
--
ALTER TABLE `associated_store_items_and_store_item_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `associated_store_items_and_store_item_sizes`
--
ALTER TABLE `associated_store_items_and_store_item_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_items`
--
ALTER TABLE `store_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_item_colors`
--
ALTER TABLE `store_item_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_item_sizes`
--
ALTER TABLE `store_item_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trongate_administrators`
--
ALTER TABLE `trongate_administrators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trongate_tokens`
--
ALTER TABLE `trongate_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trongate_users`
--
ALTER TABLE `trongate_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trongate_user_levels`
--
ALTER TABLE `trongate_user_levels`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `associated_store_items_and_store_item_colors`
--
ALTER TABLE `associated_store_items_and_store_item_colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `associated_store_items_and_store_item_sizes`
--
ALTER TABLE `associated_store_items_and_store_item_sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_items`
--
ALTER TABLE `store_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `store_item_colors`
--
ALTER TABLE `store_item_colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `store_item_sizes`
--
ALTER TABLE `store_item_sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `trongate_administrators`
--
ALTER TABLE `trongate_administrators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `trongate_tokens`
--
ALTER TABLE `trongate_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `trongate_users`
--
ALTER TABLE `trongate_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `trongate_user_levels`
--
ALTER TABLE `trongate_user_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
