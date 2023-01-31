-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mar. 31 jan. 2023 à 15:23
-- Version du serveur : 5.7.34
-- Version de PHP : 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `maBibliotheque`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE `auteur` (
  `ID` int(11) NOT NULL,
  `Nom` varchar(256) NOT NULL,
  `Prenom` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `catergorie`
--

CREATE TABLE `catergorie` (
  `ID` int(11) NOT NULL,
  `Categorie` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `edition`
--

CREATE TABLE `edition` (
  `ID` int(11) NOT NULL,
  `Edition` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE `livre` (
  `ID` int(11) NOT NULL,
  `ID_Titre` int(11) NOT NULL,
  `ID_Auteur` int(11) NOT NULL,
  `ID_Categorie` int(11) NOT NULL,
  `SynopsisEditeur` text NOT NULL,
  `DateParution` date NOT NULL,
  `ID_Edition` int(11) NOT NULL,
  `Stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `maBibliotheque`
--

CREATE TABLE `maBibliotheque` (
  `ID` int(11) NOT NULL,
  `nomLivre` varchar(256) NOT NULL,
  `nomAuteur` varchar(256) NOT NULL,
  `categorie` varchar(256) NOT NULL,
  `datePublication` int(4) NOT NULL,
  `synopsis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `maBibliotheque`
--

INSERT INTO `maBibliotheque` (`ID`, `nomLivre`, `nomAuteur`, `categorie`, `datePublication`, `synopsis`) VALUES
(3, 'Au guet !', 'Terry Pratchett', 'Fantasy', 1997, 'Une société secrète d’encagoulés complote pour renverser le seigneur Vétérini, Patricien d’Ankh-Morpork, et lui substituer un roi.\r\n            C’est sans compter avec le guet municipal et son équipe de fins limiers.\r\n            Une affaire à la mesure du capitaine Vimaire – s’il boit, c’est pour oublier les laideurs de la vie – et de ses brillants adjoints. (« Tous pour un ! » )\r\n            Et lorsqu’on retrouve au petit jour dans les rues les corps des citoyens transformés en biscuits calcinés, l’enquête s’oriente résolument vers un dragon de vingt-cinq mètres qui crache le feu ; on aurait quelques questions à lui poser.\r\n            Mais peut-être la collaboration du bibliothécaire de l’Université ne sera-t-elle pas inutile : n’arbore-t-il pas aussi une plaque de la DST (Défense simienne du territoire) ?');

-- --------------------------------------------------------

--
-- Structure de la table `titre`
--

CREATE TABLE `titre` (
  `ID` int(11) NOT NULL,
  `Titre` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auteur`
--
ALTER TABLE `auteur`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `catergorie`
--
ALTER TABLE `catergorie`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `edition`
--
ALTER TABLE `edition`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `maBibliotheque`
--
ALTER TABLE `maBibliotheque`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `titre`
--
ALTER TABLE `titre`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auteur`
--
ALTER TABLE `auteur`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `catergorie`
--
ALTER TABLE `catergorie`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `edition`
--
ALTER TABLE `edition`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `livre`
--
ALTER TABLE `livre`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `maBibliotheque`
--
ALTER TABLE `maBibliotheque`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `titre`
--
ALTER TABLE `titre`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
