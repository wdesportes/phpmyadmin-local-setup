-- phpMyAdmin SQL Dump
-- version 5.0.0-dev
-- https://www.phpmyadmin.net/
--
-- Host: db.wdes.local
-- Generation Time: Apr 27, 2018 at 03:41 PM
-- Server version: 10.2.14-MariaDB-10.2.14+maria~stretch-log
-- PHP Version: 7.2.4-1+0~20180405085422.20+stretch~1.gbpbff9f0

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
-- Table structure for table `Sessions`
--

CREATE TABLE `Sessions` (
  `idUser` int(11) NOT NULL COMMENT 'Identifiant de l''utilisateur',
  `idSession` varchar(32) NOT NULL COMMENT 'Identifiant de la session',
  `token` varchar(32) NOT NULL COMMENT 'Token',
  `expires` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Timestamp d''expiration de la session',
  `ip` varchar(45) NOT NULL COMMENT 'Ip de connexion',
  `tag` varchar(500) NOT NULL COMMENT 'Tag de la session'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sessions des utilisateurs';

--
-- Dumping data for table `Sessions`
--

INSERT INTO `Sessions` (`idUser`, `idSession`, `token`, `expires`, `ip`, `tag`) VALUES
(2, '3568dtCshQgDe4wfuw1oIh2eSxSDmKxf', 'rk9EBUd1bJUszrXjyCkAO982EYMPEAPf', '2018-03-31 15:58:13', '80.13.205.161', 'Chrome||Windows 10.0||010'),
(2, '59k241MFSa2ACaREteDhjBUA2je5ztrF', 'Q3BEkukNTUFzdfB7FMLi4i8zkJxiLKh0', '2018-12-13 22:01:29', '37.172.96.253', 'WR||unknown||100'),
(2, '6CD8Aq9l8sH0KAyNcqmoKlnEXHs1AGvj', 'UsptZnJdCKKke2jjsajTn43T7Llf1eTD', '2018-03-31 07:13:02', '80.13.205.161', 'Firefox||Windows 10.0||010'),
(2, '7hVC9L9mcJS3t2CP6U4u3F0Q4GZMKhYQ', '80tbkXDdJZE4fznbCnT9W4nxn59m9x5C', '2018-12-17 22:19:57', '78.252.39.107', 'WR||unknown||100'),
(2, 'dGE0WwCnQX5ns0vkZLI9tHVlORGGbK0C', 'XJCMQJYdCkAOaetx4BDbSHIkikD28mg4', '2018-12-14 05:58:29', '37.168.245.87', 'WR||unknown||100'),
(2, 'dPk0UkKBDd1ihjBSqmmAHyyTFugICNWc', '1mywL8dxdChdR1nz7oqLrI7iWGpRUM3L', '2018-12-13 11:47:57', '37.170.9.164', 'WR||unknown||100');

--
-- Triggers `Sessions`
--
DELIMITER $$
CREATE TRIGGER `Create_TokensSessions` AFTER INSERT ON `Sessions` FOR EACH ROW BEGIN
INSERT INTO Api__TokenAlias (token, alias) (SELECT new.token,
Utilisateurs__Roles.groupName FROM Utilisateurs__Roles WHERE Utilisateurs__Roles.idUser = new.idUser);

INSERT INTO Api__TokenExpirations (token,created, expires) VALUES (new.token,UTC_TIMESTAMP(),new.expires);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `Delete_TokensSessions` BEFORE DELETE ON `Sessions` FOR EACH ROW BEGIN
DELETE FROM Api__TokenAlias WHERE token = old.token;
DELETE FROM Api__TokenExpirations WHERE token = old.token;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Sessions`
--
ALTER TABLE `Sessions`
  ADD PRIMARY KEY (`idUser`,`idSession`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `expires` (`expires`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Sessions`
--
ALTER TABLE `Sessions`
  ADD CONSTRAINT `Admin__Sessions_idUser` FOREIGN KEY (`idUser`) REFERENCES `Utilisateurs` (`idUser`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
