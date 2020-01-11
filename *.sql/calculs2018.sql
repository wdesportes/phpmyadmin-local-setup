-- phpMyAdmin SQL Dump
-- version 5.0.0-dev
-- https://www.phpmyadmin.net/
--
-- Host: 172.17.0.1
-- Generation Time: Dec 23, 2018 at 04:46 PM
-- Server version: 10.2.16-MariaDB-10.2.16+maria~artful-log
-- PHP Version: 7.2.13-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `calculs2018`
--
CREATE DATABASE IF NOT EXISTS `calculs2018` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `calculs2018`;

-- --------------------------------------------------------

--
-- Table structure for table `calcul`
--

CREATE TABLE `calcul` (
  `idC` int(10) UNSIGNED NOT NULL,
  `dateC` datetime NOT NULL,
  `joueurC` varchar(20) NOT NULL,
  `dureeC` time NOT NULL,
  `nbRepOkC` int(10) UNSIGNED NOT NULL,
  `nbRepMauvC` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `joueur`
--

CREATE TABLE `joueur` (
  `pseudoJ` varchar(20) NOT NULL,
  `prenomJ` varchar(20) NOT NULL,
  `nomJ` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calcul`
--
ALTER TABLE `calcul`
  ADD PRIMARY KEY (`idC`),
  ADD KEY `joueurC` (`joueurC`);

--
-- Indexes for table `joueur`
--
ALTER TABLE `joueur`
  ADD PRIMARY KEY (`pseudoJ`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calcul`
--
ALTER TABLE `calcul`
  MODIFY `idC` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `calcul`
--
ALTER TABLE `calcul`
  ADD CONSTRAINT `calcul_ibfk_1` FOREIGN KEY (`joueurC`) REFERENCES `joueur` (`pseudoJ`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
