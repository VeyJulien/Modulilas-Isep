-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  mar. 05 juin 2018 à 15:03
-- Version du serveur :  5.6.38
-- Version de PHP :  7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `Modulilas`
--

-- --------------------------------------------------------

--
-- Structure de la table `content`
--

CREATE TABLE `content` (
  `contentId` int(11) NOT NULL,
  `content` varchar(6000) NOT NULL,
  `moduleId` int(11) NOT NULL,
  `fieldTypeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `fieldtype`
--

CREATE TABLE `fieldtype` (
  `fieldTypeId` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `format` int(10) NOT NULL,
  `formStep` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `module` (
  `moduleId` int(11) NOT NULL,
  `moduleName` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `moduleskill`
--

CREATE TABLE `moduleskill` (
  `moduleSkillId` int(11) NOT NULL,
  `moduleId` int(11) NOT NULL,
  `skillId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `notification`
--

CREATE TABLE `notification` (
  `notifId` int(11) NOT NULL,
  `date` date NOT NULL,
  `message` varchar(1000) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `notification`
--

INSERT INTO `notification` (`notifId`, `date`, `message`, `userId`) VALUES
(1, '2018-05-22', 'Bienvenue ! \r\nFélicitations, ceci est votre 1ère connection !\r\nNous vous souhaitons une agréable navigation, si vous rencontrez des difficultés n\'hésitez pas à nous en faire part.', 1);

-- --------------------------------------------------------

--
-- Structure de la table `skill`
--

CREATE TABLE `skill` (
  `skillId` int(11) NOT NULL,
  `skillName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `step`
--

CREATE TABLE `step` (
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

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `view` (
  `viewId` int(11) NOT NULL,
  `viewName` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `viewfieldtype` (
  `viewFieldTypeId` int(11) NOT NULL,
  `viewId` int(11) NOT NULL,
  `fieldTypeId` int(11) NOT NULL,
  `IsActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Index pour les tables déchargées
--

--
-- Index pour la table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`contentId`),
  ADD KEY `fk_fieldTypeId_content` (`fieldTypeId`),
  ADD KEY `fk_moduleId_content` (`moduleId`);

--
-- Index pour la table `fieldtype`
--
ALTER TABLE `fieldtype`
  ADD PRIMARY KEY (`fieldTypeId`);

--
-- Index pour la table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`moduleId`),
  ADD KEY `fk_userId_module` (`userId`);

--
-- Index pour la table `moduleskill`
--
ALTER TABLE `moduleskill`
  ADD PRIMARY KEY (`moduleSkillId`),
  ADD KEY `fk_skillId` (`skillId`),
  ADD KEY `fk_moduleId_moduleskill` (`moduleId`);

--
-- Index pour la table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notifId`),
  ADD KEY `fk_userId_notification` (`userId`);

--
-- Index pour la table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`skillId`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- Index pour la table `view`
--
ALTER TABLE `view`
  ADD PRIMARY KEY (`viewId`);

--
-- Index pour la table `viewfieldtype`
--
ALTER TABLE `viewfieldtype`
  ADD PRIMARY KEY (`viewFieldTypeId`),
  ADD KEY `fk_fieldTypeId_viewFieldType` (`fieldTypeId`),
  ADD KEY `fk_viewId` (`viewId`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `content`
--
ALTER TABLE `content`
  MODIFY `contentId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fieldtype`
--
ALTER TABLE `fieldtype`
  MODIFY `fieldTypeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `module`
--
ALTER TABLE `module`
  MODIFY `moduleId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `moduleskill`
--
ALTER TABLE `moduleskill`
  MODIFY `moduleSkillId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `notification`
--
ALTER TABLE `notification`
  MODIFY `notifId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `skill`
--
ALTER TABLE `skill`
  MODIFY `skillId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `view`
--
ALTER TABLE `view`
  MODIFY `viewId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `viewfieldtype`
--
ALTER TABLE `viewfieldtype`
  MODIFY `viewFieldTypeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
