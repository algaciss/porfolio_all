-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : ven. 14 jan. 2022 à 12:20
-- Version du serveur :  5.7.34
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `portfolio`
--

-- --------------------------------------------------------

--
-- Structure de la table `addcv`
--

CREATE TABLE `addcv` (
  `addcv_id` int(11) NOT NULL,
  `lang` enum('fr','en') NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `addcv`
--

INSERT INTO `addcv` (`addcv_id`, `lang`, `name`) VALUES
(1, 'fr', 'T&eacute;l&eacute;charger mon cv'),
(2, 'en', 'Download curriculum');

-- --------------------------------------------------------

--
-- Structure de la table `citation`
--

CREATE TABLE `citation` (
  `citation_id` int(11) NOT NULL,
  `langue` enum('fr','en') NOT NULL,
  `quote` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `citation`
--

INSERT INTO `citation` (`citation_id`, `langue`, `quote`) VALUES
(1, 'fr', '\"apprendre quoi que ce soit, commencer par y trouver un sens\"'),
(2, 'en', '\"to learn anything, start to find meaning\"');

-- --------------------------------------------------------

--
-- Structure de la table `clique`
--

CREATE TABLE `clique` (
  `clique_id` int(11) NOT NULL,
  `merci` varchar(255) NOT NULL,
  `langue` enum('fr','en') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `clique`
--

INSERT INTO `clique` (`clique_id`, `merci`, `langue`) VALUES
(1, 'Je veux te dire merci clique-moi', 'fr'),
(2, 'I want to say thank you click me', 'en');

-- --------------------------------------------------------

--
-- Structure de la table `experience`
--

CREATE TABLE `experience` (
  `experience_id` int(11) NOT NULL,
  `annee` int(11) NOT NULL,
  `poste` varchar(255) NOT NULL,
  `entreprise` varchar(255) NOT NULL,
  `lieu` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `langue` enum('fr','en') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `experience`
--

INSERT INTO `experience` (`experience_id`, `annee`, `poste`, `entreprise`, `lieu`, `description`, `langue`) VALUES
(1, 2021, 'Agent de S&eacute;curit&eacute; ', 'Securi-France', 'D&eacute;partement du alpes maritime', 'Chef de poste du Parc Nature Plan de La Garde du conseil d&eacute;partemental du Var, Nous avons r&eacute;ussi &agrave; &eacute;viter tout d&eacute;part de feu pendant les fortes chaleurs de l\'&eacute;t&eacute; 2021', 'fr'),
(2, 2021, 'safety officer', 'Securi-France', 'Departement of Var', 'In this function i was a chief who apply a rules of environment ', 'en'),
(3, 2019, 'Employé polyvalent', 'KFC', 'La Valette-du-Var', 'Etant un employé polyvalent j\'ai exécuté plusieurs taches', 'fr'),
(4, 2019, 'versatile employee', 'KFC', 'La Valette-du-var', 'Being a versatile employee I have held many functions', 'en'),
(5, 2019, 'Bénévole', 'Ordre de Malte', 'Toulon', 'Maraude solidaire de distribution de boisson chaude aux SDF.', 'fr'),
(6, 2019, 'volunteer', 'Ordre de Malte', 'Toulon', 'Solidarity marauding distribution of hot drinks to homeless people.', 'en');

-- --------------------------------------------------------

--
-- Structure de la table `experiences`
--

CREATE TABLE `experiences` (
  `experience_id` int(11) NOT NULL,
  `annee` varchar(10) NOT NULL,
  `poste` varchar(255) NOT NULL,
  `societe` varchar(255) NOT NULL,
  `lieu` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `lang` enum('fr','en') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `experiences`
--

INSERT INTO `experiences` (`experience_id`, `annee`, `poste`, `societe`, `lieu`, `description`, `lang`) VALUES
(1, '2021', 'Agent de S&eacute;curit&eacute; ', 'Securi-France', 'D&eacute;partement du alpes maritime', 'Chef de poste du Parc Nature Plan de La Garde du conseil d&eacute;partemental du Var, Nous avons r&eacute;ussi &agrave; &eacute;viter tout d&eacute;part de feu pendant les fortes chaleurs de l\'&eacute;t&eacute; 2021', 'fr'),
(2, '2016-2019', 'Employé polyvalent', 'KFC', 'La Valette-du-Var', 'Etant un employé polyvalent j\'ai exécuté plusieurs taches', 'fr'),
(3, '2021', 'safety officer', 'Securi-France', 'Departement of Var', 'In this function i was a chief who apply a rules of environment ', 'en'),
(4, '2016-2019', 'versatile employee', 'KFC', 'La Valette-du-var', 'Being a versatile employee I have held many functions', 'en'),
(5, '2019', 'Bénévole', 'Ordre de Malte', 'Toulon', 'Maraude solidaire de distribution de boisson chaude aux SDF.', 'fr'),
(6, '2019', 'volunteer', 'Ordre de Malte', 'Toulon', 'Solidarity marauding distribution of hot drinks to homeless people.', 'en');

-- --------------------------------------------------------

--
-- Structure de la table `formations`
--

CREATE TABLE `formations` (
  `formation_id` int(11) NOT NULL,
  `langue` enum('fr','en') NOT NULL,
  `annee` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `univ` varchar(255) NOT NULL,
  `lieu` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `formations`
--

INSERT INTO `formations` (`formation_id`, `langue`, `annee`, `title`, `univ`, `lieu`, `description`) VALUES
(1, 'fr', 2021, 'Licence Professionnelle Informatique Multimédia appliquée', 'Université de Nice', 'Nice', 'Compétence acquise en développement web , sur la maitrise des langages back-end ( JavaScript, PHP,MySQL), front-end (HTML5,CSS3), en design (Photoshop), ainsi que des framework notamment(jQuery, Symphony, Ajax).'),
(2, 'en', 2021, 'Professional License in Applied Multimedia Computing', 'University of Nice\r\n', 'Nice', 'Skills acquired in web development, on the mastery of back-end languages (JavaScript, PHP, MySQL), front-end (HTML5, CSS3), in design (Photoshop), as well as frameworks in particular (jQuery, Symphony, Ajax)'),
(3, 'fr', 2020, 'Master 2 Sécurité et Défense', 'Université de Toulon', 'Toulon', 'Compétence acquise sur les thématiques qui concernent Droit international public, dont mon mémoire de fin d\'étude qui était axé autour du thème de la cybersécurité.'),
(4, 'en', 2020, 'Master degree Security and Defense', 'University of Toulon', 'Toulon', 'Competence acquired on themes relating to public international law, including my final thesis which focused on the theme of cybersecurity.'),
(5, 'fr', 2018, 'Master 1 carrières Publiques', 'Université de Toulon', 'Toulon\r\n', 'Études approfondies en droit public notamment les marché public et le doit constitutionnel.'),
(6, 'en', 2018, 'Masters in public law.', 'University of Toulon', 'Toulon', 'In-depth studies in public law, in particular public procurement and constitutional law.'),
(7, 'fr', 2015, 'Licence Générale en Droit Public', 'Université Hassan2', 'Casablanca', 'Après avoir fait un tronc commun en droit je me suis spécialisé en droit public.'),
(8, 'en', 2015, 'Bachelor in Law studies', 'University Hassan2', 'Casablanca', 'common studies about law');

-- --------------------------------------------------------

--
-- Structure de la table `formulaire`
--

CREATE TABLE `formulaire` (
  `form_id` int(11) NOT NULL,
  `langue` enum('fr','en') NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `formulaire`
--

INSERT INTO `formulaire` (`form_id`, `langue`, `name`) VALUES
(1, 'fr', 'Entrez votre email'),
(2, 'en', 'Enter your e-mail'),
(3, 'fr', 'Entrez votre nom'),
(4, 'en', 'Enter your name'),
(5, 'fr', 'Entrez votre message'),
(6, 'en', 'Enter your message'),
(7, 'fr', 'Envoyez'),
(8, 'en', 'Send');

-- --------------------------------------------------------

--
-- Structure de la table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu` varchar(255) NOT NULL,
  `lang` enum('en','fr') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu`, `lang`) VALUES
(1, 'Accueil', 'fr'),
(2, 'Home', 'en'),
(3, 'À propos de moi', 'fr'),
(4, 'About me', 'en'),
(5, 'Career', 'en'),
(6, 'Parcours', 'fr'),
(7, 'My projects', 'en'),
(8, 'Mes Projets', 'fr'),
(9, 'Contactez-moi', 'fr'),
(10, 'Contact me', 'en'),
(11, 'Language', 'en'),
(12, 'Langue', 'fr');

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `message` (`message_id`, `email`, `nom`, `message`) VALUES
(1, 'cissokoalga@gmail.com', '', 'ton verre'),
(2, 'cissokoalga@gmail.com', 'Algassimou Cissoko', 'ton verre'),
(3, 'dan@gmail.com', 'domi', 'une voiture'),
(4, 'cissokoalga@gmail.com', 'Algassimou Cissoko', 'ton beau');

-- --------------------------------------------------------

--
-- Structure de la table `moi`
--

CREATE TABLE `moi` (
  `moi_id` int(11) NOT NULL,
  `lang` enum('fr','en') NOT NULL,
  `home` varchar(255) NOT NULL,
  `qui` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `moi`
--

INSERT INTO `moi` (`moi_id`, `lang`, `home`, `qui`) VALUES
(1, 'fr', 'Bienvenue Je me nomme', 'Qui suis-je?'),
(2, 'en', 'Welcome My name is', 'WHO I AM?');

-- --------------------------------------------------------

--
-- Structure de la table `projetname`
--

CREATE TABLE `projetname` (
  `project_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `langue` enum('fr','en') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `projetname`
--

INSERT INTO `projetname` (`project_id`, `name`, `langue`) VALUES
(1, 'Projet en CSS3', 'fr'),
(2, 'Project in CSS3', 'en'),
(3, 'Projet en PHP', 'fr'),
(4, 'Project in PHP', 'en');

-- --------------------------------------------------------

--
-- Structure de la table `propodemoi`
--

CREATE TABLE `propodemoi` (
  `propodemoi_id` int(11) NOT NULL,
  `langue` enum('fr','en') NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `propodemoi`
--

INSERT INTO `propodemoi` (`propodemoi_id`, `langue`, `description`) VALUES
(1, 'fr', 'Je me nomme Algassimou Cissoko, je suis un Web D&eacute;veloppeur junior, actuellement en phase d\'apprentissage dans une licence professionnelle à l\'Université de Nice, cette licence professionnelle qui a par ailleurs fournit, l\'essentielle de mes connaissances en HTML5 , CSS3, Javascript, PHP, sans pour autant omettre la gestion des bases de données à travers la connaissance du langage MySQL.\r\nCet apprentissage m\'a fait découvrir qu\'un développeur peut coder mois par l\'usage des Frameworks notamment : Symphony, Jquery Boostrap Ajax.\r\nTéméraire et motiver je suis ouvert à toute connaissance qui va apporter un plus à mon métier de Web développeur. '),
(2, 'en', 'My name is Algassimou Cissoko, I am a junior Web Developer, currently learning a professional license at the University of Nice, this professional license which has also provided most of my knowledge in HTML5, CSS3, Javascript, PHP, without omitting the management of databases through knowledge of the MySQL language.\r\nThis learning made me discover that a developer can code months by using Frameworks in particular: Symphony, Jquery Boostrap Ajax.\r\nBold and motivating I am open to any knowledge that will bring more to my profession as a Web developer.');

-- --------------------------------------------------------

--
-- Structure de la table `skill`
--

CREATE TABLE `skill` (
  `skill_id` int(11) NOT NULL,
  `langue` enum('fr','en') NOT NULL,
  `lenom` varchar(255) NOT NULL,
  `competence` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `skill`
--

INSERT INTO `skill` (`skill_id`, `langue`, `lenom`, `competence`) VALUES
(1, 'fr', 'Je suis un web développeur ', 'Mes compétences dans le métier'),
(2, 'en', 'I\'m web developper', 'Read my skills');

-- --------------------------------------------------------

--
-- Structure de la table `stage`
--

CREATE TABLE `stage` (
  `stage_id` int(11) NOT NULL,
  `langue` enum('fr','en') NOT NULL,
  `annee` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `entite` varchar(255) NOT NULL,
  `lieu` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `stage`
--

INSERT INTO `stage` (`stage_id`, `langue`, `annee`, `titre`, `entite`, `lieu`, `description`) VALUES
(1, 'fr', 2020, 'Certificat de réussite en langage HTML et CSS', 'Openclassrooms en ligne', 'Paris', 'J\'ai appris les fondements de la création d\'un site et surtout front-end, cette étape fut une ouverture et un changement qui m\'a mené vers le monde du digital'),
(2, 'en', 2020, 'Certificate of Achievement in HTML and CSS', 'Openclassrooms', 'Paris', 'I learned the fundamentals of creating a site and especially front-end, this step was an opening and a change that led me to the digital world'),
(3, 'fr', 2019, 'Séminaire de Formation', 'Institut des Hautes Études de la Défense Nationale(IHEDN)', 'Nice', 'C\'est un panel qui réunit les étudiants de plusieurs universités de France afin de débattre sur les enjeux sécuritaires sur le plan national qu\'international à travers des conférences animées par des experts du domaine.'),
(4, 'en', 2019, 'training session', 'the National Defence Institute of Higher Education ', 'Nice', 'this forum are a discussion about the new challenge to improving the international security.'),
(5, 'fr', 2014, 'Gestion des contentieux (Stage)', 'Administration des Douanes et impôt indirect de Casablanca ', 'Casablanca', 'Service juridique de la douane j\'ai travaillé sur la constatation douanière et les moyens d\'établissement de preuves. '),
(6, 'en', 2014, 'Litigation management', 'Customs administration and indirect tax', 'Casablanca', 'Customs legal service I worked on the customs finding and the means of establishing evidence.\r\n'),
(7, 'fr', 2020, 'Certificat de réussite en langage Javascript', 'Openclassroom', 'Paris', 'Competences acquises en Javascript'),
(8, 'en', 2020, 'Certificate of achievement in JavaScript language', 'Openclassroom', 'Paris', 'Skills acquired in JavaScript');

-- --------------------------------------------------------

--
-- Structure de la table `titreparcours`
--

CREATE TABLE `titreparcours` (
  `titreparcours_id` int(11) NOT NULL,
  `langue` enum('fr','en') NOT NULL,
  `titre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `titreparcours`
--

INSERT INTO `titreparcours` (`titreparcours_id`, `langue`, `titre`) VALUES
(1, 'fr', 'Formations et Cursus Universitaire'),
(2, 'en', 'Training and University Curriculum'),
(3, 'fr', 'Stages et Certifications'),
(4, 'en', 'Internships and Certifications'),
(5, 'fr', 'Expériences professionnelles et associatives'),
(6, 'en', 'Professional and associative experiences'),
(7, 'fr', 'Mes projets'),
(8, 'en', 'My projects'),
(9, 'fr', 'Contactez-moi'),
(10, 'en', 'Contact me');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `utilisateur_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`utilisateur_id`, `password`) VALUES
('cissoko', '$2y$10$u9WaF/1cgrJPyosK7.r1cugkK7.gdhjf.6mes4HycltfbQ6XuSR/S');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `addcv`
--
ALTER TABLE `addcv`
  ADD PRIMARY KEY (`addcv_id`);

--
-- Index pour la table `citation`
--
ALTER TABLE `citation`
  ADD PRIMARY KEY (`citation_id`);

--
-- Index pour la table `clique`
--
ALTER TABLE `clique`
  ADD PRIMARY KEY (`clique_id`);

--
-- Index pour la table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`experience_id`);

--
-- Index pour la table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`experience_id`);

--
-- Index pour la table `formations`
--
ALTER TABLE `formations`
  ADD PRIMARY KEY (`formation_id`);

--
-- Index pour la table `formulaire`
--
ALTER TABLE `formulaire`
  ADD PRIMARY KEY (`form_id`);

--
-- Index pour la table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Index pour la table `moi`
--
ALTER TABLE `moi`
  ADD PRIMARY KEY (`moi_id`);

--
-- Index pour la table `projetname`
--
ALTER TABLE `projetname`
  ADD PRIMARY KEY (`project_id`);

--
-- Index pour la table `propodemoi`
--
ALTER TABLE `propodemoi`
  ADD PRIMARY KEY (`propodemoi_id`);

--
-- Index pour la table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`skill_id`);

--
-- Index pour la table `stage`
--
ALTER TABLE `stage`
  ADD PRIMARY KEY (`stage_id`);

--
-- Index pour la table `titreparcours`
--
ALTER TABLE `titreparcours`
  ADD PRIMARY KEY (`titreparcours_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `addcv`
--
ALTER TABLE `addcv`
  MODIFY `addcv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `citation`
--
ALTER TABLE `citation`
  MODIFY `citation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `clique`
--
ALTER TABLE `clique`
  MODIFY `clique_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `experience`
--
ALTER TABLE `experience`
  MODIFY `experience_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `experience_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `formations`
--
ALTER TABLE `formations`
  MODIFY `formation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `formulaire`
--
ALTER TABLE `formulaire`
  MODIFY `form_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `moi`
--
ALTER TABLE `moi`
  MODIFY `moi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `projetname`
--
ALTER TABLE `projetname`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `propodemoi`
--
ALTER TABLE `propodemoi`
  MODIFY `propodemoi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `skill`
--
ALTER TABLE `skill`
  MODIFY `skill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `stage`
--
ALTER TABLE `stage`
  MODIFY `stage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `titreparcours`
--
ALTER TABLE `titreparcours`
  MODIFY `titreparcours_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
