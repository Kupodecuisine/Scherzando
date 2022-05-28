-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 03 fév. 2022 à 10:19
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `librairie`
--

-- --------------------------------------------------------

--
-- Structure de la table `etat`
--

DROP TABLE IF EXISTS `etat`;
CREATE TABLE IF NOT EXISTS `etat` (
  `id_etat` int(11) NOT NULL AUTO_INCREMENT,
  `nom_etat` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_etat`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `etat`
--

INSERT INTO `etat` (`id_etat`, `nom_etat`) VALUES
(1, 'Excellent'),
(2, 'Bon'),
(3, 'Mauvais');

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE IF NOT EXISTS `genre` (
  `id_genre` int(11) NOT NULL AUTO_INCREMENT,
  `nom_genre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_genre`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id_genre`, `nom_genre`) VALUES
(1, 'Science-fiction'),
(2, 'Fantastique'),
(3, 'Littérature classique'),
(4, 'Historique'),
(5, 'Cuisine');

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

DROP TABLE IF EXISTS `livre`;
CREATE TABLE IF NOT EXISTS `livre` (
  `id_livre` int(11) NOT NULL AUTO_INCREMENT,
  `titre_livre` varchar(50) DEFAULT NULL,
  `auteur_livre` varchar(50) DEFAULT NULL,
  `editeur_livre` varchar(50) DEFAULT NULL,
  `nbr_pages_livre` int(11) DEFAULT NULL,
  `prix_livre` float DEFAULT NULL,
  `stock_livre` tinyint(1) DEFAULT NULL,
  `id_etat` int(11) DEFAULT NULL,
  `id_genre` int(11) DEFAULT NULL,
  `img_livre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_livre`),
  KEY `fk_livre_etat` (`id_etat`),
  KEY `fk_livre_genre` (`id_genre`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`id_livre`, `titre_livre`, `auteur_livre`, `editeur_livre`, `nbr_pages_livre`, `prix_livre`, `stock_livre`, `id_etat`, `id_genre`, `img_livre`) VALUES
(1, 'Dune', 'Franck Herbert', 'Robert Laffont', 690, 24.9, 1, 1, 1, '../img/dune.jpg'),
(2, 'Le nom de la rose', 'Umberto Eco', 'Le livre de poche', 739, 8.9, 0, 2, 4, '../img/nom_de_la_rose.jpg'),
(3, 'Jacques le fataliste et son maître', 'Denis Diderot', 'Le livre de poche', 408, 4.6, 1, 3, 3, '../img/jacques_le_fataliste.jpg'),
(4, 'Histoires extraordinaires', 'Edgar Allan Poe', 'Le livre de poche', 258, 3.9, 1, 1, 2, '../img/histoires_extraordinaires.jpg'),
(5, 'Traité de pâtisserie', 'Emile Darenne', 'Flammarion', 888, 29.9, 0, 2, 5, '../img/traite_patisserie.jpg'),
(6, 'Gargantua', 'François Rabelais', 'Points', 388, 7.9, 1, 1, 3, '../img/gargantua.png'),
(7, 'Pantagruel', 'François Rabelais', 'Points', 384, 5.9, 1, 2, 3, '../img/pantagruel.png'),
(8, 'Les Annales du Disque-Monde : La Huitième Couleur', 'Terry Pratchett', 'L\'Atalante', 256, 18.5, 1, 1, 1, '../img/huitieme_couleur.jpg'),
(9, 'Neuromancien', 'William Gibson', 'Le Diable Vauvert ', 448, 22, 0, 3, 1, '../img/neuromancien.jpg'),
(10, 'The Ultimate Final Fantasy XIV Online Cookbook', 'Victoria Rosenthal', 'Insight Editions', 192, 32.23, 0, 2, 5, '../img/ultimate_cookbook.png'),
(11, 'La Tour Sombre : Le Pistolero', 'Stephen King', 'J\'ai lu', 384, 8, 1, 2, 1, '../img/tour_sombre.png'),
(12, 'L\'Appel de Cthulhu', 'Howard Phillips Lovecraft', 'Bragelonne', 64, 24.9, 1, 1, 2, '../img/appel_cthulhu_.jpg'),
(13, 'Les Piliers de la Terre', 'Ken Follet', 'Le livre de poche', 1056, 11.9, 0, 3, 4, '../img/piliers_terre.png'),
(14, 'Le magicien d\'Auschwitz', ' José Rodrigues dos Dos Santos', 'Hervé Chopin Éditions', 443, 22, 1, 2, 4, '../img/magicien_auschtwiz.jpg'),
(15, 'Je, François Villon', 'Jean Teulé', 'Pocket', 448, 7.95, 0, 1, 4, '../img/je_francois_villon.jpg'),
(16, 'Dracula', 'Bram Stoker', 'J\'ai lu', 688, 4.7, 1, 2, 2, '../img/dracula.jpg'),
(17, 'Madame Bovary', 'Gustave Flaubert ', 'Folio', 528, 4.1, 0, 3, 3, '../img/bovary.jpg'),
(18, 'Le rouge et le noir', 'Stendhal', 'Belin Gallimard', 640, 4.5, 0, 1, 3, '../img/rouge_noir.jpg'),
(19, 'La Farce de maître Pierre Pathelin', 'Anonyme', 'Flammarion', 277, 7, 1, 1, 3, '../img/la_farce.jpg'),
(20, 'Vingt mille lieues sous les mers', 'Jules Verne', 'Librairie Générale Française', 606, 6.7, 0, 2, 3, '../img/vingt_mille_lieues.jpg'),
(22, 'Les Confessions', 'Rousseau', 'Folio', 864, 8.7, 0, 2, 3, '../img/confessions.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `nom_utilisateur` varchar(50) DEFAULT NULL,
  `prenom_utilisateur` varchar(50) DEFAULT NULL,
  `login_utilisateur` varchar(50) DEFAULT NULL,
  `mdp_utilisateur` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_utilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `nom_utilisateur`, `prenom_utilisateur`, `login_utilisateur`, `mdp_utilisateur`) VALUES
(1, 'Lefebvre', 'Yasmeen', 'yaslef', 'azerty'),
(2, 'Sigaud', 'Raphaël', 'rapsig', 'azerty'),
(3, 'Cresta', 'Nausicaa', 'naucre', 'qwerty');

-- --------------------------------------------------------

--
-- Structure de la table `visionner`
--

DROP TABLE IF EXISTS `visionner`;
CREATE TABLE IF NOT EXISTS `visionner` (
  `id_utilisateur` int(11) NOT NULL,
  `id_livre` int(11) NOT NULL,
  PRIMARY KEY (`id_utilisateur`,`id_livre`),
  KEY `fk_visionner_livre` (`id_livre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `livre`
--
ALTER TABLE `livre`
  ADD CONSTRAINT `fk_livre_etat` FOREIGN KEY (`id_etat`) REFERENCES `etat` (`id_etat`),
  ADD CONSTRAINT `fk_livre_genre` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id_genre`);

--
-- Contraintes pour la table `visionner`
--
ALTER TABLE `visionner`
  ADD CONSTRAINT `fk_visionner_livre` FOREIGN KEY (`id_livre`) REFERENCES `livre` (`id_livre`),
  ADD CONSTRAINT `fk_visionner_utilisateur` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
