-- phpMyAdmin SQL Dump
-- version 4.8.6-dev
-- https://www.phpmyadmin.net/
--
-- Hôte : williamdes.local
-- Généré le :  lun. 01 avr. 2019 à 11:28
-- Version du serveur :  10.3.13-MariaDB-1:10.3.13+maria~bionic-log
-- Version de PHP :  7.2.16-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `当前所选内容没有包含唯一字段。单元格编辑、复选框、编辑、复制和删除无法正常使用。`
--

-- --------------------------------------------------------

--
-- Structure de la table `当前所选内容没有包含唯一无法正常使用。`
--

CREATE TABLE `当前所选内容没有包含唯一无法正常使用。` (
  `触发器` varchar(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT ' 导入 权限 权',
  `法正常使用` bit(1) NOT NULL,
  `除无法正常使` varchar(255) COLLATE koi8r_general_nopad_ci NOT NULL,
  `段。单元格编辑` varchar(255) COLLATE koi8r_general_nopad_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=koi8r COLLATE=koi8r_general_nopad_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
