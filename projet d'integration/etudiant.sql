-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 28 fév. 2024 à 10:49
-- Version du serveur : 8.2.0
-- Version de PHP : 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `etudiant`
--

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

DROP TABLE IF EXISTS `etudiant`;
CREATE TABLE IF NOT EXISTS `etudiant` (
  `ncin_etud1` int NOT NULL,
  `ncin_etud2` int NOT NULL,
  `nomprenom_etud1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nomprenom_etud2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `groupe_etud1` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `groupe_etud2` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email_etud1` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email_etud2` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ncin_etud1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

DROP TABLE IF EXISTS `projet`;
CREATE TABLE IF NOT EXISTS `projet` (
  `ncin_etud1` int NOT NULL,
  `titre` varchar(50) NOT NULL,
  `sujet` varchar(50) NOT NULL,
  `encadreur_iset` varchar(50) NOT NULL,
  `nom_entreprise` varchar(50) NOT NULL,
  `encadreur_entreprise` varchar(50) NOT NULL,
  PRIMARY KEY (`ncin_etud1`),
  KEY `ncin_etud1` (`ncin_etud1`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
