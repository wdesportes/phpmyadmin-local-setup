-- phpMyAdmin SQL Dump
-- version 5.0.0-dev
-- https://www.phpmyadmin.net/
--
-- Host: hrr5mwqn9zs54rg4.chr7pe7iynqr.eu-west-1.rds.amazonaws.com
-- Generation Time: Jul 25, 2018 at 01:28 PM
-- Server version: 10.0.24-MariaDB
-- PHP Version: 7.2.7-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jk5l34n09ailxyhh`
--

-- --------------------------------------------------------

--
-- Table structure for table `monitoring__servers`
--

CREATE TABLE `monitoring__servers` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'Id',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Url',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Name',
  `monitoringInterval` time NOT NULL COMMENT 'Monitoring interval',
  `disabled` tinyint(1) UNSIGNED NOT NULL COMMENT 'Disabled'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `monitoring__servers`
--
ALTER TABLE `monitoring__servers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`,`monitoringInterval`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `monitoring__servers`
--
ALTER TABLE `monitoring__servers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
