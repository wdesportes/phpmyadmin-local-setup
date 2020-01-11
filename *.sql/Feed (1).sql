-- phpMyAdmin SQL Dump
-- version 4.7.6
-- https://www.phpmyadmin.net/
--
-- Hôte : local:3306
-- Généré le :  Dim 03 déc. 2017 à 17:57
-- Version du serveur :  10.2.10-MariaDB
-- Version de PHP :  7.0.19-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `wdesmenu`
--

-- --------------------------------------------------------

--
-- Structure de la table `Feed`
--

CREATE TABLE `Feed` (
  `for_uuid` char(36) NOT NULL,
  `min_version` decimal(4,2) NOT NULL,
  `eventTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `UTCPublishTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` set('NEW','UPDATE','REMOVE','RESET','ADD','SIGNAL') NOT NULL DEFAULT 'NEW',
  `categorie` set('sections','menus','types','jours','feeds','upgrade','parametres','etablissement') NOT NULL,
  `data` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Feed`
--

INSERT INTO `Feed` (`for_uuid`, `min_version`, `eventTime`, `UTCPublishTime`, `type`, `categorie`, `data`) VALUES
('0c66bb0f-b216-11e6-ab59-b827ebdafb0b', '4.00', '2017-02-19 23:00:01', '2017-06-03 15:15:15', 'NEW', 'sections', ''),
('0c66bb0f-b216-11e6-ab59-b827ebdafb0b', '4.00', '2017-02-19 23:01:00', '2017-06-03 15:15:15', 'NEW', 'types', ''),
('fb1e8bf3-ac0c-11e6-bf48-b827ebdafb0b', '4.00', '2017-02-19 23:01:00', '2017-06-03 15:15:15', 'NEW', 'types', ''),
('0c66bb0f-b216-11e6-ab59-b827ebdafb0b', '4.00', '2017-02-19 23:02:00', '2017-06-03 15:15:15', 'NEW', 'jours', ''),
('fb1e8bf3-ac0c-11e6-bf48-b827ebdafb0b', '4.00', '2017-02-19 23:02:00', '2017-06-03 15:15:15', 'NEW', 'jours', ''),
('fb1e8bf3-ac0c-11e6-bf48-b827ebdafb0b', '4.00', '2017-02-20 00:00:00', '2017-06-03 15:15:15', 'NEW', 'sections', ''),
('fb1e8bf3-ac0c-11e6-bf48-b827ebdafb0b', '4.00', '2017-03-05 20:44:42', '2017-06-03 15:15:15', 'UPDATE', 'feeds', '600'),
('0c66bb0f-b216-11e6-ab59-b827ebdafb0b', '4.00', '2017-03-27 09:34:00', '2017-06-03 15:15:15', 'UPDATE', 'feeds', '600'),
('0c66bb0f-b216-11e6-ab59-b827ebdafb0b', '4.00', '2017-05-15 09:27:00', '2017-06-03 15:15:15', 'NEW', 'menus', '20'),
('0c66bb0f-b216-11e6-ab59-b827ebdafb0b', '4.12', '2017-05-15 17:35:45', '2017-06-03 15:15:15', 'SIGNAL', 'upgrade', ''),
('fb1e8bf3-ac0c-11e6-bf48-b827ebdafb0b', '4.12', '2017-05-15 17:35:45', '2017-06-03 15:15:15', 'SIGNAL', 'upgrade', ''),
('fb1e8bf3-ac0c-11e6-bf48-b827ebdafb0b', '4.12', '2017-05-26 13:31:00', '2017-06-03 15:15:15', 'NEW', 'parametres', ''),
('0c66bb0f-b216-11e6-ab59-b827ebdafb0b', '4.12', '2017-05-27 02:10:00', '2017-06-03 15:15:15', 'NEW', 'parametres', ''),
('fb1e8bf3-ac0c-11e6-bf48-b827ebdafb0b', '4.00', '2017-06-11 07:00:00', '2017-06-11 07:00:00', 'NEW', 'menus', '24'),
('fb1e8bf3-ac0c-11e6-bf48-b827ebdafb0b', '4.00', '2017-09-06 14:28:00', '2017-09-06 12:28:00', 'RESET', 'menus', ''),
('fb1e8bf3-ac0c-11e6-bf48-b827ebdafb0b', '4.00', '2017-09-06 14:35:00', '2017-09-06 12:35:00', 'NEW', 'types', ''),
('fb1e8bf3-ac0c-11e6-bf48-b827ebdafb0b', '4.00', '2017-09-06 14:36:00', '2017-09-06 12:36:00', 'NEW', 'parametres', ''),
('fb1e8bf3-ac0c-11e6-bf48-b827ebdafb0b', '4.00', '2017-11-26 22:10:00', '2017-11-26 20:10:00', 'NEW', 'menus', '48');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Feed`
--
ALTER TABLE `Feed`
  ADD PRIMARY KEY (`eventTime`,`for_uuid`,`categorie`,`type`,`data`,`min_version`) USING BTREE,
  ADD UNIQUE KEY `UNIQUE` (`for_uuid`,`min_version`,`eventTime`,`type`,`categorie`) USING BTREE,
  ADD UNIQUE KEY `UNIQUE2` (`eventTime`,`for_uuid`),
  ADD KEY `INDEX` (`for_uuid`,`eventTime`,`min_version`) USING BTREE,
  ADD KEY `for_uuid` (`for_uuid`,`min_version`,`eventTime`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Feed`
--
ALTER TABLE `Feed`
  ADD CONSTRAINT `Feed_for_uuid_group` FOREIGN KEY (`for_uuid`) REFERENCES `EtablissementsGroup` (`uuidGroup`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
