-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 21 sep. 2023 à 17:35
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `garage`
--

-- --------------------------------------------------------

--
-- Structure de la table `contact_form`
--

CREATE TABLE `contact_form` (
  `id` int(11) NOT NULL,
  `sujet` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230919171709', '2023-09-19 17:17:49', 7620),
('DoctrineMigrations\\Version20230919185106', '2023-09-19 18:51:21', 347),
('DoctrineMigrations\\Version20230919190822', '2023-09-19 19:08:36', 546),
('DoctrineMigrations\\Version20230921065633', '2023-09-21 06:58:20', 913),
('DoctrineMigrations\\Version20230921082843', '2023-09-21 08:33:59', 902),
('DoctrineMigrations\\Version20230921083414', '2023-09-21 08:34:26', 1044);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `nom`, `prenom`, `email`, `roles`, `password`) VALUES
(1, 'Parrot', 'Vincent', 'vincent.parrot@mail.com', '[“ROLE_ADMIN”]', '$2y$13$6Js65nNwKIEj2/65djziTe5bnQDSVsR9h4NVlJJkDjOlK40l467eW'),
(2, 'Francois', 'Jean', 'francois.jean@mail.com', '[“ROLE_USER”]', '$2y$13$5sELfuQLbZLXo8eNu.V86uaJuwVjfrkv93UCn9clJbwiXZ7xgukba'),
(3, 'Kugel', 'Eliane', 'kugel.eliane@mail.com', '[“ROLE_USER”]', '$2y$13$NT/oLP0AVY5YGt/f1kmaCeIAC6lHXvO4SAmdhJl1xkBJSVSriUm7q'),
(4, 'Foucher', 'Nathalie', 'foucher.nathalie@mail.com', '[“ROLE_USER”]', '$2y$13$LXfo6nAvMAGCzvkFz1/fiO.5OG0ZbxHxTwa18qXwtu4bNU7xt2UQG'),
(5, 'Paul', 'Jean', 'paul.jean@mail.com', '[“ROLE_USER”]', '$2y$13$NwSS0KAQITyRvN06viIFz.w0jsayRrEMC0T5gtC2rhP4wxVmtoiye'),
(6, 'Martin', 'Leo', 'martin.leo@mail.com', '[“ROLE_USER”]', '$2y$13$o6IhQiDws1neqioO65sfYuTpunEMUw.tpmsyPXrd1qMFv2TlZCHPK'),
(7, 'Dupuy', 'Simon', 'dupuy.simon@mail.com', '[“ROLE_USER”]', '$2y$13$2lY2PzBMX1JDoBuA9cnQve4.UZx5Gzax04xhdIVzhXuQ83vmNJYF6'),
(8, 'pruvot', 'cedric', 'pruvot.cedric@mail.com', '[“ROLE_USER”]', '$2y$13$nimvR0IilLqv.wApA6791.uW5FpTcqK6lw1b34EvkKrsLQjwM1iP6'),
(9, 'Petit', 'Virginie', 'petit.virginie@mail.com', '[“ROLE_USER”]', '$2y$13$gU1HCYqZfCXCeCpIG8S14uOxcffoEFdaK..Dv/UEU4XMDA2ediX/m'),
(10, 'Hubert', 'Bernard', 'hubert.bernard@mail.com', '[“ROLE_USER”]', '$2y$13$pQdfo7WAxfPkAnfH3KxjhOa2UnVm.yTESviK8F2VFPJdqaCxDIO8m'),
(11, 'Paris', 'Michel', 'paris.michel@mail.com', '[“ROLE_USER”]', '$2y$13$OU8/A70c1ryYcK42gyk/rO9r/Pi0TEDi.IfE9GrDsmoHeBQVNIjW6'),
(12, 'Perez', 'Leroy', 'perez.leroy@mail.com', '[“ROLE_USER”]', '$2y$13$5dVuqog7Rw3d8/JHG4lVJ.Q3DXJlWefT4ukR5YeONxEsR/qz0OGS6'),
(13, 'Boucher', 'David', 'boucher.david@mail.com', '[“ROLE_USER”]', '$2y$13$PqO0Cb4fqAfIZifLoFxXuuep.fiQAdn1vOpPZZx6oqe.Ws6QAzbDW'),
(14, 'Carre', 'Muller', 'carre.muller@mail.com', '[“ROLE_USER”]', '$2y$13$jFjdHfRhocCS6P5Nds3PFebffRNa7YPxwcVaECe26.ugfWD8Cjmxq'),
(15, 'Guyot', 'Vincent', 'guyot.vincent@mail.com', '[“ROLE_USER”]', '$2y$13$edk.X9TJPtPALa.WVsAkBuvMevM7ewdYQGbymuVFZkP/0eygbSDSC'),
(16, 'Weber', 'Celine', 'weber.celine@mail.com', '[“ROLE_USER”]', '$2y$13$wz6yD8ZzBSrVrM/vJpAwy.kbYpEyD1yaqr80jsf0W0uTEOzmiq1Dy');

-- --------------------------------------------------------

--
-- Structure de la table `voitures`
--

CREATE TABLE `voitures` (
  `id` int(11) NOT NULL,
  `voitures_order` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `marque` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `annee` varchar(255) NOT NULL,
  `km` varchar(255) NOT NULL,
  `energie` varchar(255) NOT NULL,
  `prix` varchar(255) NOT NULL,
  `vitesse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `voitures`
--

INSERT INTO `voitures` (`id`, `voitures_order`, `image`, `marque`, `model`, `annee`, `km`, `energie`, `prix`, `vitesse`) VALUES
(1, '1', '', 'Peugeot 308', 'Render', '2021', '25 344', 'Automatique', '18 970€', ''),
(2, '2', '', 'Mercedes', 'Classe E', '2016', '41 200', 'Manuelle', '28 490 €', ''),
(3, '3', '', 'BMW X5 ', 'Protection', '2017', '87 900', 'Automatique', '51 900 €', ''),
(4, '4', '', 'Audi', 'R8', '2002', '9000', 'Manuelle', '149 000 €', ''),
(5, '5', '', 'Toyota', 'GR86', '2020', '42000', 'Automatique', '120 900 €', ''),
(6, '6', '', 'DS7', 'Crossback', '2015', '34 200', 'Automatique', '54 000 €', ''),
(7, '7', '', 'Peugeot 308', 'Render', '2021', '25 344', 'Automatique', '18 970€', ''),
(8, '8', '', 'Mercedes', 'Classe E', '2016', '41 200', 'Manuelle', '28 490 €', ''),
(9, '9', '', 'BMW X5 ', 'Protection', '2017', '87 900', 'Automatique', '51 900 €', ''),
(10, '10', '', 'Audi', 'R8', '2002', '9000', 'Manuelle', '149 000 €', ''),
(11, '11', '', 'Toyota', 'GR86', '2020', '42000', 'Automatique', '120 900 €', ''),
(12, '12', '', 'DS7', 'Crossback', '2015', '34 200', 'Automatique', '54 000 €', ''),
(13, '13', '', 'Peugeot 308', 'Render', '2021', '25 344', 'Automatique', '18 970€', ''),
(14, '14', '', 'Mercedes', 'Classe E', '2016', '41 200', 'Manuelle', '28 490 €', ''),
(15, '15', '', 'BMW X5 ', 'Protection', '2017', '87 900', 'Automatique', '51 900 €', ''),
(16, '', '5-2023-toyota-gr86-uk-spec.webp', 'TOYOTA', 'GR86', '2020', '42000', 'diesel', '120 900 ?', 'automatique'),
(17, '', ' 6-yeni-ds-7-turkiye-de.webp', 'DS7', 'CROSSBACK', '2015', '34200km', 'diesel', '54 000 ?', 'manuelle');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `contact_form`
--
ALTER TABLE `contact_form`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Index pour la table `voitures`
--
ALTER TABLE `voitures`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `voitures`
--
ALTER TABLE `voitures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
