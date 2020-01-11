-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Hôte : local:3306
-- Généré le :  mar. 11 juil. 2017 à 17:16
-- Version du serveur :  5.6.22-71.0
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
-- Base de données :  `radicale`
--

-- --------------------------------------------------------

--
-- Structure de la table `collection`
--

CREATE TABLE `collection` (
  `path` varchar(200) NOT NULL,
  `parent_path` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `collection`
--

INSERT INTO `collection` (`path`, `parent_path`) VALUES
('bdesportes/contacts.vcf', NULL),
('fdesportes/contacts.vcf', NULL),
('wdesportes/contacts.vcf', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `header`
--

CREATE TABLE `header` (
  `name` varchar(200) NOT NULL,
  `value` varchar(5000) NOT NULL,
  `collection_path` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `header`
--

INSERT INTO `header` (`name`, `value`, `collection_path`) VALUES
('PRODID', '-//Radicale//NONSGML Radicale Server//EN', 'fdesportes/contacts.vcf'),
('PRODID', '-//Radicale//NONSGML Radicale Server//EN', 'wdesportes/contacts.vcf'),
('VERSION', '3.0', 'fdesportes/contacts.vcf'),
('VERSION', '3.0', 'wdesportes/contacts.vcf');

-- --------------------------------------------------------

--
-- Structure de la table `item`
--

CREATE TABLE `item` (
  `name` varchar(200) NOT NULL,
  `tag` varchar(300) NOT NULL,
  `collection_path` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `item`
--

INSERT INTO `item` (`name`, `tag`, `collection_path`) VALUES
('C7990B34-9750-0001-8328-1A606900C660.vcf', 'VCARD', 'wdesportes/contacts.vcf'),
('C7998D5E-AD20-0001-536A-FAA01275E0D0.vcf', 'VCARD', 'fdesportes/contacts.vcf');

-- --------------------------------------------------------

--
-- Structure de la table `line`
--

CREATE TABLE `line` (
  `name` varchar(200) NOT NULL,
  `value` varchar(5000) NOT NULL,
  `item_name` varchar(200) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `line`
--

INSERT INTO `line` (`name`, `value`, `item_name`, `timestamp`) VALUES
('BEGIN', 'VCARD', 'C7990B34-9750-0001-8328-1A606900C660.vcf', '0000-00-00 00:00:00'),
('VERSION', '3.0', 'C7990B34-9750-0001-8328-1A606900C660.vcf', '0000-00-00 00:00:00'),
('PRODID', '-//Inverse inc.//SOGo Connector 1.0//EN', 'C7990B34-9750-0001-8328-1A606900C660.vcf', '0000-00-00 00:00:00'),
('UID', 'C7990B34-9750-0001-8328-1A606900C660.vcf', 'C7990B34-9750-0001-8328-1A606900C660.vcf', '0000-00-00 00:00:00'),
('N', 'a;b', 'C7990B34-9750-0001-8328-1A606900C660.vcf', '0000-00-00 00:00:00'),
('FN', 'b', 'C7990B34-9750-0001-8328-1A606900C660.vcf', '0000-00-00 00:00:00'),
('X-MOZILLA-HTML', 'FALSE', 'C7990B34-9750-0001-8328-1A606900C660.vcf', '0000-00-00 00:00:00'),
('X-RADICALE-NAME', 'C7990B34-9750-0001-8328-1A606900C660.vcf', 'C7990B34-9750-0001-8328-1A606900C660.vcf', '0000-00-00 00:00:00'),
('END', 'VCARD', 'C7990B34-9750-0001-8328-1A606900C660.vcf', '0000-00-00 00:00:00'),
('BEGIN', 'VCARD', 'C7998D5E-AD20-0001-536A-FAA01275E0D0.vcf', '0000-00-00 00:00:00'),
('VERSION', '3.0', 'C7998D5E-AD20-0001-536A-FAA01275E0D0.vcf', '0000-00-00 00:00:00'),
('PRODID', '-//Inverse inc.//SOGo Connector 1.0//EN', 'C7998D5E-AD20-0001-536A-FAA01275E0D0.vcf', '0000-00-00 00:00:00'),
('UID', 'C7998D5E-AD20-0001-536A-FAA01275E0D0.vcf', 'C7998D5E-AD20-0001-536A-FAA01275E0D0.vcf', '0000-00-00 00:00:00'),
('N', 'Desportes;William', 'C7998D5E-AD20-0001-536A-FAA01275E0D0.vcf', '0000-00-00 00:00:00'),
('FN', 'William Desportes', 'C7998D5E-AD20-0001-536A-FAA01275E0D0.vcf', '0000-00-00 00:00:00'),
('ORG', 'Wdes;', 'C7998D5E-AD20-0001-536A-FAA01275E0D0.vcf', '0000-00-00 00:00:00'),
('NICKNAME', 'williamdes', 'C7998D5E-AD20-0001-536A-FAA01275E0D0.vcf', '0000-00-00 00:00:00'),
('CATEGORIES', 'Famille', 'C7998D5E-AD20-0001-536A-FAA01275E0D0.vcf', '0000-00-00 00:00:00'),
('ADR;TYPE=home', ';;6 impasse jean perre;Paris;;XXXX;France', 'C7998D5E-AD20-0001-536A-FAA01275E0D0.vcf', '0000-00-00 00:00:00'),
('X-MOZILLA-HTML', 'FALSE', 'C7998D5E-AD20-0001-536A-FAA01275E0D0.vcf', '0000-00-00 00:00:00'),
('EMAIL;TYPE=work', 'williamdes@wdes.fr', 'C7998D5E-AD20-0001-536A-FAA01275E0D0.vcf', '0000-00-00 00:00:00'),
('EMAIL;TYPE=home', 'williamdes+home@wdes.fr', 'C7998D5E-AD20-0001-536A-FAA01275E0D0.vcf', '0000-00-00 00:00:00'),
('URL;TYPE=home', 'https://william.wdes.fr', 'C7998D5E-AD20-0001-536A-FAA01275E0D0.vcf', '0000-00-00 00:00:00'),
('BDAY', '1998-07-12', 'C7998D5E-AD20-0001-536A-FAA01275E0D0.vcf', '0000-00-00 00:00:00'),
('X-RADICALE-NAME', 'C7998D5E-AD20-0001-536A-FAA01275E0D0.vcf', 'C7998D5E-AD20-0001-536A-FAA01275E0D0.vcf', '0000-00-00 00:00:00'),
('END', 'VCARD', 'C7998D5E-AD20-0001-536A-FAA01275E0D0.vcf', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `property`
--

CREATE TABLE `property` (
  `name` varchar(200) NOT NULL,
  `value` varchar(5000) NOT NULL,
  `collection_path` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `property`
--

INSERT INTO `property` (`name`, `value`, `collection_path`) VALUES
('tag', 'VADDRESSBOOK', 'fdesportes/contacts.vcf'),
('tag', 'VADDRESSBOOK', 'wdesportes/contacts.vcf');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`path`);

--
-- Index pour la table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`name`,`collection_path`),
  ADD KEY `collection_path` (`collection_path`);

--
-- Index pour la table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`name`) USING BTREE,
  ADD KEY `collection_path` (`collection_path`);

--
-- Index pour la table `line`
--
ALTER TABLE `line`
  ADD KEY `item_name` (`item_name`);

--
-- Index pour la table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`name`,`collection_path`),
  ADD KEY `collection_path` (`collection_path`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `header`
--
ALTER TABLE `header`
  ADD CONSTRAINT `header_ibfk_1` FOREIGN KEY (`collection_path`) REFERENCES `collection` (`path`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
