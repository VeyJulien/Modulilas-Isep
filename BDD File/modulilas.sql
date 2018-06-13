-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 13 juin 2018 à 09:15
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `content`
--

INSERT INTO `content` (`contentId`, `content`, `moduleId`, `fieldTypeId`) VALUES
(1, 'Électronique des objets', 1, 1),
(2, 'IE-1307', 1, 2),
(3, 'Xun Zhang', 1, 3),
(4, '5', 1, 4),
(5, '150', 1, 5),
(6, 'on', 1, 6),
(7, 'capteurs, microcontrôleur, communication I2C SPI, protocol radio, energie', 1, 7),
(8, 'Le marché des IOT connait une croissance exponentielle avec des besoins et des services de plus en plus\r\ninnovants. Ces objets connectés qui envahissent de plus en plus notre vie quotidienne sont composés du\r\npoint de vue matériel, de nombreuses briques fonctionnelles indispensables comme les capteurs pour la\r\ncollecte des données, les microcontrôleurs qui gèrent les données collectées, les batteries et les modules de\r\ntransmission Radio Fréquence.\r\nCe module fournit à l’élève ingénieur toutes les bases qui concernent la conception électronique d’un objet\r\ncommunicant allant du capteur vers le module RF.', 1, 8),
(9, 'Ce module a pour objectif de sensibiliser les élèves à différentes problématiques essentielles lors de la\r\nconception des objets communicants.\r\nLien avec le référentiel de compétence ISEP\r\nCompétences spécialisées :\r\n• Résoudre des problèmes scientifiques et techniques pluridisciplinaires sous contraintes dans le\r\ndomaine des TIC\r\no Analyse du problème posé et prise en compte des contraintes\r\n? Description interprétative et délimitation des champs disciplinaires du problème\r\n? Analyse exploratoire délimitant l’espace de résolution eu égard aux contraintes\r\no Evaluation des solutions\r\n? Etablir des critères de choix complets et cohérents\r\n? Faire preuve d’esprit critique\r\n? Opter pour une solution optimisée\r\n\r\n• Concevoir un objet technologique logiciel ou matériel à fonctionnement sûr et normalisé\r\no Maitriser les phases de conception\r\n? Déterminer l’échelle à laquelle se situe la conception dans le cadre des architectures\r\nglobales spécifiques aux différents domaines des TIC\r\n? Maitriser les conditions et les lois de passage d’une échelle à l’autre\r\n? Spécifier les conditions de fonctionnement en mode test\r\n? Valider la conception\r\no Analyser le mode de fonctionnement du système ainsi que ses dysfonctionnements\r\n• Agir en mode projet\r\no Maitriser le schéma global du projet : les différentes entités et les rapports entre elles\r\no Savoir agir en maitre d’œuvre\r\n? Faire des choix technologiques optimisés et adaptés\r\n\r\nCompétences générales ou transverses :\r\n• Agir en acteur dynamique et efficace dans un groupe\r\no Travailler en équipe en réseau, et dans un environnement culturellement diversifié\r\no Etre force de proposition\r\n• Agir en bon communicant dans un environnement scientifique et technique ouvert à l’international\r\no Ecouter et se faire écouter\r\n\r\no Mener un dialogue, argumenter convaincre\r\no Communiquer dans plusieurs langues\r\n\r\nEn fin de module, les élèves auront plus spécifiquement appris à :\r\n• A opérer le choix des capteurs, leur fabrication, les spécificités liées aux applications particulières\r\n(biomédicale, télémédecine, smart home, smart city, énergie, automobile, ...), le conditionnement\r\ndu signal brut issu du capteur physique, les interfaces de communication numérique des capteurs\r\nstandards, etc.\r\n• A maitriser l’alimentation et la gestion d’énergie\r\n• A utiliser le mini-calculateur embarqué\r\n• A utiliser les différents protocoles de communication avec ou sans fils permettant la transmission de\r\ndonnées entre les capteurs et serveur.\r\n• A concevoir des objets technologiques à base de microcontrôleur, de capteurs et d’électronique de\r\nconditionnement.\r\n• A modéliser les problèmes de conception de ce type d’objet.\r\n• A Communiquer, lire et rédiger des documents en anglais dans un environnement culturellement\r\ndiversifié.\r\n• A assimiler des termes techniques pour comprendre la documentation liée aux systèmes IoT\r\n• A agir en bon communicant, écouter et mener un dialogue, argumenter, convaincre, présenter et\r\ndéfendre leur solution.\r\nConnaissances\r\nLes enseignements donnés dans ce module permettent d’élaborer les concepts et savoir-faire suivants.\r\nConcepts\r\n• Introduction sur les capteurs numériques et analogiques, les paramètres mesurés (physiques,\r\nchimiques ou biologique...)\r\n• Les capteurs et réseaux de capteurs, leurs applications\r\n• Interface capteur-électronique\r\n• Optimisation d’énergie (niveau capteur, niveau réseau, niveau système)\r\n• Les bus de communication I2C et SPI\r\n• Les protocoles de communications\r\n• Partitionnement de charge entre objets et serveurs\r\nSavoir-faire\r\n• Conception et optimisation d’un nœud de mesure et de commande communicant\r\n• Optimisation et maitrise de l’énergie en fonction des différents critères de gestion des capteurs, de\r\nl’application, des moyens de communication...\r\nPrérequis\r\nConnaissance de base en électronique et en programmation. IE.1101 II.1101\r\nOutils utilisés par l’enseignant/intervenant\r\nMaquettes microcontrôleur, composants électroniques, capteurs, modules radio (LORA, BLUETOOTH...)', 1, 9),
(10, 'Méthodes d’apprentissage\r\nEn termes d’approche pédagogique ce module est constitué par :\r\n• Un cours / TP qui présente les principaux concepts liés à la conception d’objets communicants pour\r\ndes applications dans les domaines suivants : la télémédecine, les transports, le \"smart home \" et \"smart\r\ncity\". Il insiste particulièrement sur les évolutions en cours et à venir, et sur les problématiques encore\r\nouvertes de ces modules communicants. Les TP permettent de développer et mettre en œuvre les\r\ndifférentes notions.\r\n• Un mini projet en atelier permet aux étudiants d’appliquer les notions étudiées en cours et de\r\nconcevoir un objet communicant.\r\n\r\nModalités d’évaluation\r\nL’évaluation sera effectuée par un contrôle continu lors des TP et des mini-projets et atelier et par un examen\r\nécrit qui permettra d\'évaluer les compétences acquises au travers les différentes problématiques traitées.\r\nLes compétences transverses seront estimées lors du déroulement du travail par équipe mais également par\r\nla qualité du travail final présenté.\r\nLangue de travail\r\nModule entièrement délivré en anglais, productions des élèves en anglais', 1, 10),
(11, 'Systèmes radiofréquences', 2, 1),
(12, 'IE-2406', 2, 2),
(13, 'Raja Chiky', 2, 3),
(14, '5', 2, 4),
(15, '125', 2, 5),
(16, 'radio, ondes, CAO, RF design, Power amplifier, low noise amplifier, oscillator Mixer, class A Salle équipée des logiciels nécessaires (Cadence)', 2, 7),
(17, 'Les applications émergentes utilisant les systèmes radiofréquences de communication sans fil sont en pleine\r\nexplosion. Ces systèmes constituent un des éléments clés pour rendre les objets communicants, les véhicules\r\nconnectés ou encore pour développer de nouveaux systèmes de communications mobiles et satellitaires.\r\nAvec des besoins en pleine explosion, la conception des systèmes radiofréquences est devenue un enjeu\r\nmajeur car elle doit répondre à des besoins très variés (en débit ou en bande passante selon les applications)\r\net en constante évolution tout en garantissant un encombrement réduit et une consommation faible rendue\r\npossible grâce à des concepts émergents. Ce module vise à donner le savoir-faire nécessaire pour permettre\r\nau futur ingénieur de devenir un acteur de la révolution sans fil.', 2, 8),
(18, 'Lien avec le référentiel de compétences ISEP\r\n• Résoudre des problèmes scientifiques et techniques pluridisciplinaires sous contraintes dans le\r\ndomaine des TIC\r\no Analyse du problème posé et prise en compte des contraintes\r\n? Description interprétative et délimitation des champs disciplinaires du problème\r\n? Analyse exploratoire délimitant l’espace de résolution eu égard aux contraintes\r\no Évaluation des solutions\r\n? Établir des critères de choix complets et cohérents\r\n? Faire preuve d’esprit critique\r\n? Opter pour une solution optimisée\r\n\r\n• Concevoir un objet technologique logiciel ou matériel à fonctionnement sûr et normalisé\r\no Maitriser les phases de conception\r\n? Déterminer l’échelle à laquelle se situe la conception dans le cadre des architectures\r\nglobales spécifiques aux différents domaines des TIC\r\n? Valider la conception\r\no Analyser le mode de fonctionnement du système ainsi que ses dysfonctionnements\r\n• Agir en mode projet\r\no Maitriser le schéma global du projet : les différentes entités et les rapports entre elles\r\no Savoir agir en maitre d’œuvre\r\n? Faire des choix technologiques optimisés et adaptés\r\n\r\n• Agir en bon communicant dans un environnement scientifique et technique ouvert à l’international\r\no Communiquer dans plusieurs langues\r\no Documenter de façon efficace et facilement exploitable\r\n\r\nEn fin de module, les élèves auront plus spécifiquement :\r\n• Acquis une vue système et architecturale des solutions radiofréquences pour savoir concevoir des\r\nsolutions systèmes les mieux adaptées aux besoins des différentes applications\r\n• Compris les particularités importantes de chaque élément constituant le système et leur impact sur\r\nles performances du système radiofréquence.\r\n• Compris les différentes technologies utilisées pour la conception e la réalisation des systèmes\r\nradiofréquences.\r\n\r\n• Connaitrons les défis liés à la conception radiofréquence d’aujourd’hui et de demain, ainsi que les\r\nsolutions pour répondre à ces défis.\r\n• Communiqué, lu et rédigé des documents en anglais dans un environnement culturellement diversifié.\r\n• Assimilé des termes techniques pour comprendre la documentation liée aux systèmes\r\nradiofréquences.\r\nPrérequis\r\n• IE.1101\r\nContenu/programme\r\nLes concepts suivants, dont la compréhension est un objectif du module, seront abordés :\r\n• Théorie et propagation des ondes radiofréquences\r\n• Architecture et conception des systèmes émetteur/récepteur radiofréquences\r\n• Concepts fondamentaux des modules RF et HF constituant les systèmes radiofréquences\r\n• Introduction aux systèmes de radios reconfigurables\r\nOutils utilisés par l’enseignant/intervenant\r\nL’enseignant/intervenant utilisera les outils/méthodes suivants :\r\n• Pratique des outils de conception systèmes RF : Keysight ADS et SystemVue\r\n• Pratique des outils de conception circuits au niveau composant : Cadence\r\nOutils utilisés par l’apprenant\r\nEn fin de module, les apprenants auront appris à utiliser les outils/méthodes suivants :\r\n• Pratique des outils de conception systèmes RF : Keysight ADS et SystemVue\r\n• Pratique des outils de conception circuits au niveau composant : Cadence', 2, 9),
(19, 'Méthodes d’apprentissage\r\nEn termes d’approche :\r\nLes ce module seront accompagnés par des exercices pour permettre d’assimiler plus efficacement les\r\nthèmes abordés.\r\n• Les projets et les travaux pratiques permettront d’apprendre les outils indispensables pour l’étude\r\net la conception des systèmes radiofréquences et de mettre en pratique les connaissances\r\nacquises.\r\n• L’utilisation de nouveaux outils sera précédée d’une formation à l’outil accompagnée d’un\r\ntutoriel.\r\nModalités d’évaluation\r\nL’évaluation de ce module repose sur :\r\n• Un contrôle continu de connaissance (30%)\r\n• Une évaluation des comptes rendus des travaux pratiques (30%)\r\n• Un examen final à la fin du semestre (40%)\r\nLangue de travail\r\nModule entièrement délivré en anglais, productions des élèves en anglais', 2, 10),
(20, 'Microsystèmes électroniques', 3, 1),
(21, 'IE-2409', 3, 2),
(22, 'Xun Zhang', 3, 3),
(23, '5', 3, 4),
(24, '150', 3, 5),
(25, 'on', 3, 6),
(26, 'Architecture ordinateur, assembleur, registre, portes logiques, logique séquentielle Salle de cours puis salle machine pour les TPs et le projet', 3, 7),
(27, 'Les systèmes numériques complexes sont aujourd’hui constitués de milliards de transistors. Seule la\r\ndécomposition en sous-systèmes fonctionnels interconnectés permet de comprendre et de contrôler cette\r\ncomplexité. Ce module approfondit les connaissances en systèmes numériques. Il décrit également\r\nl’architecture interne des processeurs et approfondi et opère une jonction entre l’architecture des\r\nordinateurs (point de vue fonctionnel) et les circuits numériques.\r\nOn introduit également les techniques de conception basse consommation.', 3, 8),
(28, 'Dans ce module, il est question de conception de systèmes électroniques numériques. Mais plus\r\ngénéralement, on cherche à comprendre la jonction entre matériel et logiciel. On approfondit le codage\r\nbas niveau en regard de l’implémentation matérielle.\r\nEn outre, il s’agit d’initier les élèves à la notion de qualité et de sûreté de fonctionnement des systèmes étudiés\r\n: recours à des techniques de conception basse consommation et mise en place d’architectures sécurisées.\r\nLien avec le référentiel de compétences ISEP\r\nCompétences spécialisées\r\n• Concevoir un objet technologique logiciel ou matériel à fonctionnement sûr et normalisé\r\no Maitriser les phases de conception\r\n? Déterminer l’échelle à laquelle se situe la conception dans le cadre des architectures\r\nglobales spécifiques aux différents domaines des TIC\r\n? Maitriser les conditions et les lois de passage d’une échelle à l’autre\r\n? Spécifier les conditions de fonctionnement en mode test\r\n? Valider la conception\r\no Analyser le mode de fonctionnement du système ainsi que ses dysfonctionnements\r\n• Agir en mode projet\r\nCompétences générales ou transverses :\r\n• Agir en bon communicant dans un environnement scientifique et technique ouvert à l’international\r\no Communiquer dans plusieurs langues\r\no Documenter de façon efficace et facilement exploitable\r\n\r\nEn fin de module, les élèves auront plus spécifiquement :\r\n• Conçu des systèmes numériques matériel et logiciel de base\r\n• Maitrisé les phases de conception.\r\n• Maitrisé l’échelle de conception du système\r\n• Déterminé et mis en œuvre les procédés et outils de conception matériels et logiciels permettant\r\nl’implantation bas niveau d’algorithmes sur plateforme microprocesseur,\r\n• Spécifié les conditions de fonctionnement\r\n• Validé la conception.\r\n• D’autre part, le module étant enseigné en anglais, il permettra d’approfondir les compétences\r\nlinguistiques.\r\n\r\nPrérequis\r\nCe module implique de connaitre les fondamentaux de la logique et demande des bases en programmation\r\nde façon générale. (IE.1102 – IE.1101 – II .1101)\r\nContenu/programme\r\n• Conception de systèmes numériques\r\n• Utilisation d’outils de développements de conception de circuits numériques\r\n• Implémentation d\'algorithme sur microprocesseur\r\n• Programmation d’algorithmes\r\n• Evaluation des compromis logiciel / matériel\r\nConcepts\r\n• Conception de circuits digitaux numériques VLSI\r\n• Architecture interne d’un microprocesseur RISC\r\n• Codage de programme sur microprocesseur\r\n• Réduction de la puissance dissipée\r\nOutils utilisés par l’enseignant/intervenant\r\nL’enseignant/intervenant utilisera les outils/méthodes suivants :\r\n\r\n• Programme de cross développement spécifique à la cible étudiée\r\n• Chaine de développement logicielle NIOS II sur FPGA.\r\n\r\nOutils utilisés par l’apprenant\r\n\r\n• Simulateur spécifique, Logiciel de développement logiciel NIOS II sur FPGA.\r\n\r\nMobilisations ultérieures\r\nCe module de deuxième année est un module cœur pour le parcours Systèmes Embarqués', 3, 9),
(29, 'Méthodes d’apprentissage\r\nLe module est enseigné par un expert du domaine. Il est organisé \"à l’américaine\" :\r\n• Cours – TD (9 séances) TP (5 séances)\r\n• Mini projet\r\nModalités d’évaluation\r\nL’évaluation est effectuée par deux examens (un Midterm et un Final), par des Homework et une présentation\r\nde projet finale.\r\nCes évaluations permettront de valider les compétences spécifiques. Une maitrise de l’anglais minimum sera\r\nnécessaire pour suivre ce module de façon efficace.\r\nLangue de travail\r\nModule entièrement délivré en anglais, productions des élèves en anglais.', 3, 10);

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
(1, 'Électronique des objets', 1, 'IE-1307'),
(2, 'Systèmes radiofréquences', 1, 'IE-2406'),
(3, 'Microsystèmes électroniques', 1, 'IE-2409');

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
  `idStep` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `formStep` int(11) NOT NULL,
  PRIMARY KEY (`idStep`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `step`
--

INSERT INTO `step` (`idStep`, `titre`, `formStep`) VALUES
(1, 'Informations générales', 1),
(2, 'Présentation générale', 2),
(3, 'Objectifs pédagogiques', 3),
(4, 'Modalités pédagogiques', 4);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `view`
--

INSERT INTO `view` (`viewId`, `viewName`, `isActive`) VALUES
(1, 'Template 1', 1),
(2, 'All Active', 0),
(3, 'All Desactive', 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

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
(10, 1, 10, 0),
(11, 2, 1, 1),
(12, 2, 2, 1),
(13, 2, 3, 1),
(14, 2, 4, 1),
(15, 2, 5, 1),
(16, 2, 6, 1),
(17, 2, 7, 1),
(18, 2, 8, 1),
(19, 2, 9, 1),
(20, 2, 10, 1),
(21, 3, 1, 0),
(22, 3, 2, 0),
(23, 3, 3, 0),
(24, 3, 4, 0),
(25, 3, 5, 0),
(26, 3, 6, 0),
(27, 3, 7, 0),
(28, 3, 8, 0),
(29, 3, 9, 0),
(30, 3, 10, 0);

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
