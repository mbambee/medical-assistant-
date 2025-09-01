-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 25 avr. 2025 à 11:29
-- Version du serveur : 10.4.8-MariaDB
-- Version de PHP : 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `medical`
--

-- --------------------------------------------------------

--
-- Structure de la table `consultation`
--

CREATE TABLE `consultation` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prenom` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sexe` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `symptomes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `maladie` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `listemedicament` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `maladie`
--

CREATE TABLE `maladie` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `symptomes` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `maladie`
--

INSERT INTO `maladie` (`id`, `nom`, `symptomes`) VALUES
(1, 'Grippe', 'fièvre,toux,fatigue'),
(2, 'Migraine', 'maux de tête,nausées'),
(3, 'Rhume', 'toux,éternuements');

-- --------------------------------------------------------

--
-- Structure de la table `medicament`
--

CREATE TABLE `medicament` (
  `id` int(11) NOT NULL,
  `maladie` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicaments` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `medicament`
--

INSERT INTO `medicament` (`id`, `maladie`, `medicaments`) VALUES
(1, 'Grippe', 'Doliprane,Actifed,Vitamine C'),
(2, 'Migraine', 'Ibuprofène,Doliprane'),
(3, 'Rhume', 'RhinAdvil,Humex');

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

CREATE TABLE `patient` (
  `nom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `age` int(4) DEFAULT NULL,
  `adresse` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `patient`
--

INSERT INTO `patient` (`nom`, `prenom`, `age`, `adresse`, `tel`) VALUES
('Ali ', 'Ben Salah', 25, 'Monastir', 31200200),
('Balsem', 'Boubaker', 21, 'Sousse', 22202020),
('Mohamed ', 'Sabri', 54, 'Sfax', 52525252);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `consultation`
--
ALTER TABLE `consultation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `maladie`
--
ALTER TABLE `maladie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `medicament`
--
ALTER TABLE `medicament`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`nom`,`prenom`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `consultation`
--
ALTER TABLE `consultation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `maladie`
--
ALTER TABLE `maladie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `medicament`
--
ALTER TABLE `medicament`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
