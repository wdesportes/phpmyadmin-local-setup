-- phpMyAdmin SQL Dump
-- version 4.8.0-dev
-- https://www.phpmyadmin.net/
--
-- Host: local:3306
-- Generation Time: Feb 12, 2018 at 10:15 PM
-- Server version: 10.2.10-MariaDB
-- PHP Version: 7.0.27-0+deb9u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wdesreservationv2`
--

-- --------------------------------------------------------

--
-- Table structure for table `Feed`
--

CREATE TABLE `Feed` (
  `uuidGroupe` binary(16) NOT NULL COMMENT 'Identifiant unique du groupe d''établissements',
  `min_version` decimal(4,2) NOT NULL COMMENT 'Version minimum de l''appli',
  `eventTime` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'TIMESTAMP de l''événement',
  `UTCPublishTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'TIMESTAMP UTC de publication l''événement',
  `type` set('NEW','UPDATE','REMOVE','RESET','ADD','SIGNAL') NOT NULL DEFAULT 'NEW' COMMENT 'type d''événément',
  `categorie` set('sections','menus','types','jours','feeds','upgrade','parametres','etablissement','reservations') NOT NULL COMMENT 'catégorie d''événément',
  `data` varchar(255) NOT NULL COMMENT 'données d''événément'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Feed`
--

INSERT INTO `Feed` (`uuidGroupe`, `min_version`, `eventTime`, `UTCPublishTime`, `type`, `categorie`, `data`) VALUES
(0x4d85ef8d2f394c3eafcdc90a1e8c3d9c, '1.00', '2017-12-14 12:39:25', '2017-12-14 11:39:25', 'NEW', 'menus', '201750'),
(0x4d85ef8d2f394c3eafcdc90a1e8c3d9c, '1.00', '2017-12-14 12:45:36', '2017-12-14 11:45:36', 'NEW', 'jours', ''),
(0x4d85ef8d2f394c3eafcdc90a1e8c3d9c, '1.00', '2017-12-14 12:45:37', '2017-12-14 11:45:37', 'NEW', 'types', ''),
(0x4d85ef8d2f394c3eafcdc90a1e8c3d9c, '1.00', '2017-12-14 12:45:38', '2017-12-14 11:45:38', 'NEW', 'sections', ''),
(0x4d85ef8d2f394c3eafcdc90a1e8c3d9c, '1.00', '2017-12-14 12:45:39', '2017-12-14 11:45:39', 'NEW', 'parametres', ''),
(0x49c98a5e0cf289d6a4bd1653d085cfa5, '1.00', '2018-02-12 21:11:41', '2018-02-12 20:11:41', 'NEW', 'menus', '20182');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Feed`
--
ALTER TABLE `Feed`
  ADD PRIMARY KEY (`eventTime`,`uuidGroupe`,`categorie`,`type`,`data`,`min_version`) USING BTREE,
  ADD UNIQUE KEY `UNIQUE` (`uuidGroupe`,`min_version`,`eventTime`,`type`,`categorie`) USING BTREE,
  ADD UNIQUE KEY `UNIQUE2` (`eventTime`,`uuidGroupe`),
  ADD KEY `INDEX` (`uuidGroupe`,`eventTime`,`min_version`) USING BTREE,
  ADD KEY `for_uuid` (`uuidGroupe`,`min_version`,`eventTime`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Feed`
--
ALTER TABLE `Feed`
  ADD CONSTRAINT `Feed_uuidGroupe` FOREIGN KEY (`uuidGroupe`) REFERENCES `Groupes` (`uuidGroupe`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
