-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 05 juin 2018 à 15:55
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `modulilas`
--

-- --------------------------------------------------------

--
-- Structure de la table `content`
--

DROP TABLE IF EXISTS `content`;
CREATE TABLE IF NOT EXISTS `content` (
  `contentId` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(6000) NOT NULL,
  `moduleId` int(11) NOT NULL,
  `fieldTypeId` int(11) NOT NULL,
  PRIMARY KEY (`contentId`),
  KEY `fk_fieldTypeId_content` (`fieldTypeId`),
  KEY `fk_moduleId_content` (`moduleId`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `content`
--

INSERT INTO `content` (`contentId`, `content`, `moduleId`, `fieldTypeId`) VALUES
(1, 'Poterie', 1, 1),
(2, 'II-1234', 1, 2),
(3, 'Mr le Potier', 1, 3),
(4, '5', 1, 4),
(5, '40', 1, 5),
(6, 'Poterie, argile, swag', 1, 7),
(7, 'On fait de la poterie mdr', 1, 8),
(8, 'S\'occuper jsp', 1, 9),
(9, 'Avoir des mains', 1, 10),
(10, 'Piscine', 2, 1),
(11, 'IT-1245', 2, 2),
(12, 'Laure Manaudou', 2, 3),
(13, '4', 2, 4),
(14, '10', 2, 5),
(15, 'on', 2, 6),
(16, 'Piscine, Nage, Baleine', 2, 7),
(17, 'On nage et c\'est bien', 2, 8),
(18, 'Nager dans l\'eau', 2, 9),
(19, 'Savoir nager c\'est pratique', 2, 10),
(20, 'Cheval', 3, 1),
(21, 'IE-2145', 3, 2),
(22, 'La fille sur facebook qui spam des photo de cheval', 3, 3),
(23, '1', 3, 4),
(24, '12', 3, 5),
(25, 'Cheval, Equitation', 3, 7),
(26, 'Le cheval, le cheval, c\'est vraiment génial', 3, 8),
(27, 'Aller vite ', 3, 9),
(28, 'Ne pas être horsophobe', 3, 10);

-- --------------------------------------------------------

--
-- Structure de la table `fieldtype`
--

DROP TABLE IF EXISTS `fieldtype`;
CREATE TABLE IF NOT EXISTS `fieldtype` (
  `fieldTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `format` int(10) NOT NULL,
  `formStep` int(10) NOT NULL,
  PRIMARY KEY (`fieldTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fieldtype`
--

INSERT INTO `fieldtype` (`fieldTypeId`, `title`, `description`, `format`, `formStep`) VALUES
(1, 'Titre du module', 'Entrez le nom de votre module', 2, 1),
(2, 'Identifiant du module', 'Entrez l\'identifiant de votre module', 2, 1),
(3, 'Responsable du module', 'Rentrez le nom du responsable du module', 2, 1),
(4, 'Nombre de crédits ECTS', '', 4, 1),
(5, 'Quantité de travail par élève', '', 4, 1),
(6, 'Travail par équipe', '', 3, 1),
(7, 'Mots clefs', 'Ajouter un mot clef', 2, 1),
(8, 'Présentation', 'Entrez une description détaillée de votre module', 1, 2),
(9, 'Objectifs pédagogiques', 'Entrez les différents objectifs pédagogiques de votre module', 1, 3),
(10, 'Modalités Pédagogiques', 'Entrez les différentes modalités pédagogiques de votre module', 1, 4);

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

DROP TABLE IF EXISTS `module`;
CREATE TABLE IF NOT EXISTS `module` (
  `moduleId` int(11) NOT NULL AUTO_INCREMENT,
  `moduleName` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  PRIMARY KEY (`moduleId`),
  KEY `fk_userId_module` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `module`
--

INSERT INTO `module` (`moduleId`, `moduleName`, `userId`, `code`) VALUES
(1, 'Poterie', 1, 'II-1234'),
(2, 'Piscine', 1, 'IT-1245'),
(3, 'Cheval', 1, 'IE-2145');

-- --------------------------------------------------------

--
-- Structure de la table `moduleskill`
--

DROP TABLE IF EXISTS `moduleskill`;
CREATE TABLE IF NOT EXISTS `moduleskill` (
  `moduleSkillId` int(11) NOT NULL AUTO_INCREMENT,
  `moduleId` int(11) NOT NULL,
  `skillId` int(11) NOT NULL,
  PRIMARY KEY (`moduleSkillId`),
  KEY `fk_skillId` (`skillId`),
  KEY `fk_moduleId_moduleskill` (`moduleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `notification`
--

DROP TABLE IF EXISTS `notification`;
CREATE TABLE IF NOT EXISTS `notification` (
  `notifId` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `message` varchar(1000) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`notifId`),
  KEY `fk_userId_notification` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `notification`
--

INSERT INTO `notification` (`notifId`, `date`, `message`, `userId`) VALUES
(1, '2018-05-22', 'Bienvenue ! \r\nFélicitations, ceci est votre 1ère connection !\r\nNous vous souhaitons une agréable navigation, si vous rencontrez des difficultés n\'hésitez pas à nous en faire part.', 1);

-- --------------------------------------------------------

--
-- Structure de la table `skill`
--

DROP TABLE IF EXISTS `skill`;
CREATE TABLE IF NOT EXISTS `skill` (
  `skillId` int(11) NOT NULL AUTO_INCREMENT,
  `skillName` varchar(255) NOT NULL,
  PRIMARY KEY (`skillId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `step`
--

DROP TABLE IF EXISTS `step`;
CREATE TABLE IF NOT EXISTS `step` (
  `titre` varchar(255) NOT NULL,
  `formStep` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `step`
--

INSERT INTO `step` (`titre`, `formStep`) VALUES
('Etape 1', 1),
('Etape 2', 2),
('Etape 3', 3),
('Etape 4', 4);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `mail` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`userId`, `mail`, `firstName`, `lastName`, `password`, `status`) VALUES
(1, 'maxime.breviere@isep.fr', 'Maxime', 'BREVIERE', 'lilas', 1),
(2, 'arthur.rouaix@isep.fr', 'Arthur', 'ROUAIX', 'lilas', 1),
(3, 'julien.vey@isep.fr', 'Julien', 'VEY', 'lilas', 1),
(4, 'guillaume.pasquereau@isep.fr', 'Guillaume', 'PASQUEREAU', 'lilas', 1),
(5, 'hugues.vincey@isep.fr', 'Hugues', 'VINCEY', 'lilas', 1),
(6, 'noe.faure@isep.fr', 'Noé', 'FAURE', 'lilas', 1),
(7, 'mathieu.manceny@isep.fr', 'Matthieu', 'MANCENY', 'lilas', 1),
(8, 'mohamed.sellami@isep.fr', 'Mohamed', 'Sellami', 'lilas', 2);

-- --------------------------------------------------------

--
-- Structure de la table `view`
--

DROP TABLE IF EXISTS `view`;
CREATE TABLE IF NOT EXISTS `view` (
  `viewId` int(11) NOT NULL AUTO_INCREMENT,
  `viewName` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  PRIMARY KEY (`viewId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `view`
--

INSERT INTO `view` (`viewId`, `viewName`, `isActive`) VALUES
(1, 'Default', 1),
(2, 'Template 2', 0);

-- --------------------------------------------------------

--
-- Structure de la table `viewfieldtype`
--

DROP TABLE IF EXISTS `viewfieldtype`;
CREATE TABLE IF NOT EXISTS `viewfieldtype` (
  `viewFieldTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `viewId` int(11) NOT NULL,
  `fieldTypeId` int(11) NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  PRIMARY KEY (`viewFieldTypeId`),
  KEY `fk_fieldTypeId_viewFieldType` (`fieldTypeId`),
  KEY `fk_viewId` (`viewId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `viewfieldtype`
--

INSERT INTO `viewfieldtype` (`viewFieldTypeId`, `viewId`, `fieldTypeId`, `IsActive`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 3, 1),
(4, 1, 4, 0),
(5, 1, 5, 0),
(6, 1, 6, 0),
(7, 1, 7, 0),
(8, 1, 8, 0),
(9, 1, 9, 0),
(10, 1, 10, 0);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `content`
--
ALTER TABLE `content`
  ADD CONSTRAINT `fk_fieldTypeId_content` FOREIGN KEY (`fieldTypeId`) REFERENCES `fieldtype` (`fieldTypeId`),
  ADD CONSTRAINT `fk_moduleId_content` FOREIGN KEY (`moduleId`) REFERENCES `module` (`moduleId`);

--
-- Contraintes pour la table `module`
--
ALTER TABLE `module`
  ADD CONSTRAINT `fk_userId_module` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`);

--
-- Contraintes pour la table `moduleskill`
--
ALTER TABLE `moduleskill`
  ADD CONSTRAINT `fk_moduleId_moduleskill` FOREIGN KEY (`moduleId`) REFERENCES `module` (`moduleId`),
  ADD CONSTRAINT `fk_skillId` FOREIGN KEY (`skillId`) REFERENCES `skill` (`skillId`);

--
-- Contraintes pour la table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `fk_userId_notification` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`);

--
-- Contraintes pour la table `viewfieldtype`
--
ALTER TABLE `viewfieldtype`
  ADD CONSTRAINT `fk_fieldTypeId_viewFieldType` FOREIGN KEY (`fieldTypeId`) REFERENCES `fieldtype` (`fieldTypeId`),
  ADD CONSTRAINT `fk_viewId` FOREIGN KEY (`viewId`) REFERENCES `view` (`viewId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
