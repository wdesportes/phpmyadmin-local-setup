-- phpMyAdmin SQL Dump
-- version 4.8.3-dev
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  Dim 24 juin 2018 à 15:46
-- Version du serveur :  10.2.15-MariaDB-10.2.15+maria~artful-log
-- Version de PHP :  7.2.6-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `test`
--

-- --------------------------------------------------------

--
-- Structure de la table `"'"><iframe onload=alert(1)>`
--

CREATE TABLE `"'"><iframe onload=alert(1)>` (
  `"'"><iframe onload=alert(1)>` int(11) NOT NULL COMMENT '"''"><iframe onload=alert(1)>',
  `data` text NOT NULL DEFAULT '""><iframe onload=alert(1)>'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `"'"><iframe onload=alert(1)>`
--
ALTER TABLE `"'"><iframe onload=alert(1)>`
  ADD PRIMARY KEY (`"'"><iframe onload=alert(1)>`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `"'"><iframe onload=alert(1)>`
--
ALTER TABLE `"'"><iframe onload=alert(1)>`
  MODIFY `"'"><iframe onload=alert(1)>` int(11) NOT NULL AUTO_INCREMENT COMMENT '"''"><iframe onload=alert(1)>';

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `"'"><iframe onload=alert(1)>`
--
ALTER TABLE `"'"><iframe onload=alert(1)>`
  ADD CONSTRAINT `"'"><iframe onload=alert(1)>_ibfk_1` FOREIGN KEY (`"'"><iframe onload=alert(1)>`) REFERENCES `a` (`a`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
