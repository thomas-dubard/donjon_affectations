-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 23 mai 2023 à 20:09
-- Version du serveur : 5.7.40
-- Version de PHP : 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `affectations`
--

-- --------------------------------------------------------

--
-- Structure de la table `dispos_mj`
--

DROP TABLE IF EXISTS `dispos_mj`;
CREATE TABLE IF NOT EXISTS `dispos_mj` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `lundi_matin` tinyint(1) NOT NULL DEFAULT '0',
  `lundi_soir` tinyint(1) NOT NULL DEFAULT '0',
  `mardi_matin` tinyint(1) NOT NULL DEFAULT '0',
  `mardi_soir` tinyint(1) NOT NULL DEFAULT '0',
  `mercredi_matin` tinyint(1) NOT NULL DEFAULT '0',
  `mercredi_soir` tinyint(1) NOT NULL DEFAULT '0',
  `jeudi_matin` tinyint(1) NOT NULL DEFAULT '0',
  `jeudi_soir` tinyint(1) NOT NULL DEFAULT '0',
  `vendredi_matin` tinyint(1) NOT NULL DEFAULT '0',
  `vendredi_soir` tinyint(1) NOT NULL DEFAULT '0',
  `samedi_matin` tinyint(1) NOT NULL DEFAULT '0',
  `samedi_soir` tinyint(1) NOT NULL DEFAULT '0',
  `dimanche_matin` tinyint(1) NOT NULL DEFAULT '0',
  `dimanche_soir` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dispos_mj`
--

INSERT INTO `dispos_mj` (`id`, `user`, `lundi_matin`, `lundi_soir`, `mardi_matin`, `mardi_soir`, `mercredi_matin`, `mercredi_soir`, `jeudi_matin`, `jeudi_soir`, `vendredi_matin`, `vendredi_soir`, `samedi_matin`, `samedi_soir`, `dimanche_matin`, `dimanche_soir`) VALUES
(0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 1),
(1, 2, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, 1, 1),
(2, 3, 1, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0),
(3, 4, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0, 0, 1),
(4, 5, 0, 0, 1, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 1),
(5, 6, 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1),
(6, 7, 0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1),
(7, 8, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `formation_salles`
--

DROP TABLE IF EXISTS `formation_salles`;
CREATE TABLE IF NOT EXISTS `formation_salles` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `salle_1` tinyint(1) NOT NULL DEFAULT '0',
  `salle_2` tinyint(1) NOT NULL DEFAULT '0',
  `salle_3` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `formation_salles`
--

INSERT INTO `formation_salles` (`id`, `user`, `salle_1`, `salle_2`, `salle_3`) VALUES
(0, 1, 1, 1, 0),
(1, 2, 0, 1, 1),
(2, 3, 1, 0, 1),
(3, 4, 1, 1, 1),
(4, 5, 1, 1, 0),
(5, 6, 1, 0, 1),
(6, 7, 0, 1, 0),
(7, 8, 0, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `nombre_heures`
--

DROP TABLE IF EXISTS `nombre_heures`;
CREATE TABLE IF NOT EXISTS `nombre_heures` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `nb_heures` decimal(10,0) NOT NULL,
  `nb_heures_totales` decimal(11,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `nombre_heures`
--

INSERT INTO `nombre_heures` (`id`, `user`, `nb_heures`, `nb_heures_totales`) VALUES
(0, 1, '19', '65'),
(1, 2, '24', '65'),
(2, 3, '22', '65'),
(3, 4, '32', '156'),
(4, 5, '15', '65'),
(5, 6, '21', '65'),
(6, 7, '12', '45'),
(7, 8, '8', '65');

-- --------------------------------------------------------

--
-- Structure de la table `semaine_actuelle`
--

DROP TABLE IF EXISTS `semaine_actuelle`;
CREATE TABLE IF NOT EXISTS `semaine_actuelle` (
  `id` int(11) NOT NULL,
  `salle` int(11) NOT NULL,
  `lundi_matin` int(11) NOT NULL,
  `lundi_soir` int(11) NOT NULL,
  `mardi_matin` int(11) NOT NULL,
  `mardi_soir` int(11) NOT NULL,
  `mercredi_matin` int(11) NOT NULL,
  `mercredi_soir` int(11) NOT NULL,
  `jeudi_matin` int(11) NOT NULL,
  `jeudi_soir` int(11) NOT NULL,
  `vendredi_matin` int(11) NOT NULL,
  `vendredi_soir` int(11) NOT NULL,
  `samedi_matin` int(11) NOT NULL,
  `samedi_soir` int(11) NOT NULL,
  `dimanche_matin` int(11) NOT NULL,
  `dimanche_soir` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `semaine_precedente`
--

DROP TABLE IF EXISTS `semaine_precedente`;
CREATE TABLE IF NOT EXISTS `semaine_precedente` (
  `id` int(11) NOT NULL,
  `salle` int(11) NOT NULL,
  `lundi_matin` int(11) NOT NULL,
  `lundi_soir` int(11) NOT NULL,
  `mardi_matin` int(11) NOT NULL,
  `mardi_soir` int(11) NOT NULL,
  `mercredi_matin` int(11) NOT NULL,
  `mercredi_soir` int(11) NOT NULL,
  `jeudi_matin` int(11) NOT NULL,
  `jeudi_soir` int(11) NOT NULL,
  `vendredi_matin` int(11) NOT NULL,
  `vendredi_soir` int(11) NOT NULL,
  `samedi_matin` int(11) NOT NULL,
  `samedi_soir` int(11) NOT NULL,
  `dimanche_matin` int(11) NOT NULL,
  `dimanche_soir` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `semaine_precedente`
--

INSERT INTO `semaine_precedente` (`id`, `salle`, `lundi_matin`, `lundi_soir`, `mardi_matin`, `mardi_soir`, `mercredi_matin`, `mercredi_soir`, `jeudi_matin`, `jeudi_soir`, `vendredi_matin`, `vendredi_soir`, `samedi_matin`, `samedi_soir`, `dimanche_matin`, `dimanche_soir`) VALUES
(0, 1, 4, 3, 4, 6, 1, 6, 3, 5, 1, 5, 5, 3, 6, 1),
(1, 2, 8, 1, 7, 5, 7, 5, 1, 2, 2, 7, 2, 7, 7, 5),
(2, 3, 6, 2, 2, 3, 4, 2, 6, 3, 4, 3, 4, 6, 2, 4);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
