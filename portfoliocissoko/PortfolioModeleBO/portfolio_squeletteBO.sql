-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  mar. 17 déc. 2019 à 17:09
-- Version du serveur :  5.6.38
-- Version de PHP :  7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `portfolio_squeletteBO`
--
CREATE DATABASE IF NOT EXISTS `portfolio_squeletteBO` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `portfolio_squeletteBO`;

-- --------------------------------------------------------

--
-- Structure de la table `competences_informatiques`
--

CREATE TABLE `competences_informatiques` (
  `id_comp_info` int(11) NOT NULL,
  `nom_comp_info` varchar(100) NOT NULL,
  `type_comp_info` varchar(100) NOT NULL,
  `niveau_comp_info` int(11) NOT NULL,
  `lien_image_comp_info` varchar(150) NOT NULL,
  `alt_image_niveau` varchar(150) NOT NULL,
  `lien_logo` varchar(150) NOT NULL,
  `alt_image_logo` varchar(150) NOT NULL,
  `index_comp_info` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `competences_informatiques`
--

INSERT INTO `competences_informatiques` (`id_comp_info`, `nom_comp_info`, `type_comp_info`, `niveau_comp_info`, `lien_image_comp_info`, `alt_image_niveau`, `lien_logo`, `alt_image_logo`, `index_comp_info`) VALUES
(1, 'HTML', 'D&eacute;veloppement Web!', 70, 'images/etoile_3_5.png', 'niveau_html', 'images/html.png', 'logo_html', 1),
(2, 'CSS', 'Développement Web', 70, 'images/etoile_3_5.png', 'niveau_css', 'images/css.png', 'logo_css', 2),
(3, 'Javascript', 'Développement Web', 50, 'images/etoile_2_5.png', 'niveau_javascript', 'images/javascript.png', 'logo_javascript', 3),
(4, 'PHP', 'Développement Web', 50, 'images/etoile_2_5.png', 'niveau_php', 'images/php.png', 'logo_php', 4),
(5, 'MySQL', 'Développement Web', 70, 'images/etoile_3_5.png', 'niveau_mysql', 'images/mysql.png', 'logo_mysql', 5),
(9, 'Photoshop', 'Image', 80, 'images/etoile_4.png', 'niveau_photoshop', 'images/photoshop.png', 'logo_photoshop', 9),
(10, 'Illustrator', 'Image', 20, 'images/etoile_1.png', 'niveau_illustrator', 'images/illustrator.png', 'logo_illustrator', 10),
(11, 'Pack Office', 'Bureautique', 80, 'images/etoile_4.png', 'niveau_office', 'images/office.png', 'logo_office', 11),
(15, 'Sublime Text', 'Internet', 60, 'images/etoile_3.png', 'niveau_sublimetext', 'images/sublime.png', 'logo_sublime_text', 15),
(16, 'PHP MyAdmin', 'Internet', 50, 'images/etoile_2_5.png', 'niveau_phpmyadmin', 'images/phpmyadmin.png', 'logo_phpmyadmin', 16),
(17, 'Gantt Project', 'Internet', 50, 'images/etoile_2_5.png', 'niveau_ganttproject', 'images/ganttproject.png', 'logo_ganttproject', 17),
(18, 'Axure', 'Internet', 50, 'images/etoile_2_5.png', 'niveau_axure', 'images/axure.png', 'logo_axure', 18),
(19, 'Wamp', 'Internet', 15, 'images/etoile_2_5.png', 'niveau_wamp', 'images/wamp.png', 'logo_wamp', 19);

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id_contact` int(11) NOT NULL,
  `nom_contact` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`id_contact`, `nom_contact`, `prenom`, `email`, `message`) VALUES
(1, 'zaza', 'TITI', 'TITI@TOTO.FR', 'ESSAIbis'),
(29, 'Moi', 'Encore moi', 'r@t.f', 'Bonjour'),
(32, '2', 'jfgjfg', 'fgjfgj', 'Bonjour'),
(33, 'sss', 'ss', 'sss', 'sss');

-- --------------------------------------------------------

--
-- Structure de la table `designation_formation`
--

CREATE TABLE `designation_formation` (
  `id_designation_formation` int(11) NOT NULL,
  `nom_formation` varchar(150) NOT NULL,
  `lieu_formation` varchar(150) NOT NULL,
  `index_designation_formation` int(11) NOT NULL,
  `langue_designation_formation` enum('fr','en') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `designation_formation`
--

INSERT INTO `designation_formation` (`id_designation_formation`, `nom_formation`, `lieu_formation`, `index_designation_formation`, `langue_designation_formation`) VALUES
(1, 'Licence Professionnelle IMApp', 'Universit&eacute; Nice Sophia Antipolis', 1, 'fr'),
(2, 'Licence Professionnelle Imapp', 'Université Nice Sophia Antipolis', 1, 'en'),
(3, 'BTS Biophysique', 'ETSL Paris', 2, 'fr'),
(4, 'Biophysics Certificate', 'ETSL Paris', 2, 'en');

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

CREATE TABLE `formation` (
  `id_formation` int(11) NOT NULL,
  `date_formation` varchar(20) NOT NULL,
  `index_formation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `formation`
--

INSERT INTO `formation` (`id_formation`, `date_formation`, `index_formation`) VALUES
(1, '2019-2020', 1),
(2, '2017-2019', 2);

-- --------------------------------------------------------

--
-- Structure de la table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `lien` varchar(250) NOT NULL,
  `index_menu` int(11) NOT NULL,
  `langue` enum('fr','en') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `menu`
--

INSERT INTO `menu` (`id_menu`, `designation`, `lien`, `index_menu`, `langue`) VALUES
(1, 'Accueil', 'accueil', 1, 'fr'),
(21, 'C.V.', 'cv', 2, 'fr'),
(22, 'R&eacute;alisations', 'realisations', 3, 'fr'),
(23, 'Me contacter', 'contact', 4, 'fr'),
(25, 'Welcome', 'accueil', 1, 'en'),
(26, 'Resume', 'cv', 2, 'en'),
(27, 'Work', 'realisations', 3, 'en'),
(28, 'Contact me', 'contact', 4, 'en');

-- --------------------------------------------------------

--
-- Structure de la table `realisations`
--

CREATE TABLE `realisations` (
  `id_realisation` int(11) NOT NULL,
  `lien_image` varchar(150) NOT NULL,
  `description` varchar(200) NOT NULL,
  `description_en` varchar(200) NOT NULL,
  `lien_realisation` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `realisations`
--

INSERT INTO `realisations` (`id_realisation`, `lien_image`, `description`, `description_en`, `lien_realisation`) VALUES
(1, 'images/nature1.jpg', 'paysage 1', 'landscape one', ''),
(2, 'images/nature2.jpg', 'paysage deux', 'landscape two', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `competences_informatiques`
--
ALTER TABLE `competences_informatiques`
  ADD PRIMARY KEY (`id_comp_info`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_contact`);

--
-- Index pour la table `designation_formation`
--
ALTER TABLE `designation_formation`
  ADD PRIMARY KEY (`id_designation_formation`);

--
-- Index pour la table `formation`
--
ALTER TABLE `formation`
  ADD PRIMARY KEY (`id_formation`);

--
-- Index pour la table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Index pour la table `realisations`
--
ALTER TABLE `realisations`
  ADD PRIMARY KEY (`id_realisation`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `competences_informatiques`
--
ALTER TABLE `competences_informatiques`
  MODIFY `id_comp_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `designation_formation`
--
ALTER TABLE `designation_formation`
  MODIFY `id_designation_formation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `formation`
--
ALTER TABLE `formation`
  MODIFY `id_formation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `realisations`
--
ALTER TABLE `realisations`
  MODIFY `id_realisation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
