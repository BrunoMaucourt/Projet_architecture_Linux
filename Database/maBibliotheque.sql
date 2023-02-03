-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : jeu. 02 fév. 2023 à 10:29
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
(1, 'Au guet !', 'Terry Pratchett', 'Fantasy', 1997, 'Une société secrète d’encagoulés complote pour renverser le seigneur Vétérini, Patricien d’Ankh-Morpork, et lui substituer un roi.\r\nC’est sans compter avec le guet municipal et son équipe de fins limiers.\r\nUne affaire à la mesure du capitaine Vimaire – s’il boit, c’est pour oublier les laideurs de la vie – et de ses brillants adjoints. (« Tous pour un ! » )\r\nEt lorsqu’on retrouve au petit jour dans les rues les corps des citoyens transformés en biscuits calcinés, l’enquête s’oriente résolument vers un dragon de vingt-cinq mètres qui crache le feu ; on aurait quelques questions à lui poser.\r\nMais peut-être la collaboration du bibliothécaire de l’Université ne sera-t-elle pas inutile : n’arbore-t-il pas aussi une plaque de la DST (Défense simienne du territoire) ?'),
(2, 'Ronde de nuit ', 'Terry Pratchett', 'Fantasy', 2011, 'C\'est un homme comblé que le duc Sam Vimaire, commissaire divisionnaire du Guet d\'Ankh-Morpork, heureux père bientôt. Hélas ! la poursuite d\'un dangereux criminel entraîne un accident qui le ramène dans son propre passé, en un temps de tumulte et de violence.\r\nVivre dans le passé n\'est pas facile mais y mourir étonnamment simple. Il doit pourtant survivre car des tâches essentielles l\'attendent : mettre le grapin sur un meurtrier, s\'instruire lui-même, débutant, pour devenir un bon flic et canger l\'issue d\'une rébellion sanglante.\r\nÀ l\'assaut des paradoxes temporels, un \"conte d\'une ville\" façon Disque-monde, avec sa collection de gavroches, de dames à l\'affection négociable (\"L\'amour au juste prix !\"), de rebelles, de policiers de la Secrète et autres enfants de la révolution.\r\nAjouter une citation'),
(3, 'Coup de Tabac ', 'Terry Pratchett', 'Fantasy', 2011, 'Blousé, Vimaire. Dame Sybil, son épouse aimante, lui impose quinze jours de congés à la campagne dans le manoir familial. La vie de hobereau, rien de folichon pour le commissaire divisionnaire du Guet d Ankh-Morpork, non plus que la déférence servile qu on lui témoigne, à lui qui tient pour article de foi que les hommes sont tous les mêmes le pantalon baissé. La tradition le veut, le flic en vacances n a pas ouvert sa valise que le premier cadavre lui saute à la figure. Mais ce n est pas un meurtre ordinaire qui attend Vimaire, c est un crime contre l existence et la dignité d une espèce entière. Qu importe s il est hors de sa juridiction, si les repères lui manquent dans le monde rural et si l on s acharne à le mener en bateau, la justice doit passer.');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `maBibliotheque`
--
ALTER TABLE `maBibliotheque`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `maBibliotheque`
--
ALTER TABLE `maBibliotheque`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
