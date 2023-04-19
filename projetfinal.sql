-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 19 avr. 2023 à 10:28
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projetfinal`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `nom`) VALUES
(1, 'GTFO'),
(2, 'LOL'),
(3, 'McDungeon'),
(4, 'Autre');

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
('DoctrineMigrations\\Version20230310133022', '2023-04-03 10:46:49', 68),
('DoctrineMigrations\\Version20230403085237', '2023-04-03 10:52:45', 34),
('DoctrineMigrations\\Version20230403085910', '2023-04-03 10:59:16', 70),
('DoctrineMigrations\\Version20230411070917', '2023-04-11 09:09:30', 142),
('DoctrineMigrations\\Version20230411075801', '2023-04-11 09:58:13', 20),
('DoctrineMigrations\\Version20230411083022', '2023-04-11 10:30:28', 110),
('DoctrineMigrations\\Version20230417133529', '2023-04-17 15:35:42', 82);

-- --------------------------------------------------------

--
-- Structure de la table `equipe`
--

CREATE TABLE `equipe` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(35) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `bio` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `pseudo` varchar(20) NOT NULL,
  `image_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `is_verified`, `pseudo`, `image_name`) VALUES
(1, 'test@gmail.com', '[]', '$2y$13$q8uFKDbM/FYew8HfcRKbHeEejVVoCI08ChWgR4Q4tTAJvNH8tDyOK', 0, '', NULL),
(2, '123@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$PR.Va38FV9xRgR345kXQSu9LhrLHzCIs0xWoxULIqjw8zfcFZvGpy', 0, '123', 'zizou.jpg'),
(4, 'aaa@gmail.com', '[]', '$2y$13$2b6ivvL9hhk4B/G.umIMtO7djUe9pfpzRrfWxvcC6vRcJkQf/7kLK', 0, 'aaaaaa', NULL),
(5, 'zizou@gmail.com', '[]', '$2y$13$VsiToao7iGw7z/IiK7jkBetqIZqvDz/gYHuSkTQJABGXktNZBMYV2', 0, 'zizou', 'zizou.jpg'),
(6, 'aaaaaaaa@aaaaa.com', '[]', 'aaaaaaaaaaaaaaaaaaaa', 1, 'a o a', 'test.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `categorie_id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `lien` varchar(255) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `videos`
--

INSERT INTO `videos` (`id`, `categorie_id`, `titre`, `lien`, `description`) VALUES
(6, 3, 'Minecraft Dungeons avec un noob ep8. Ivre, il se fait renverser par un train.', 'https://www.youtube.com/watch?v=C-mEFTjgB58', 'Personne n\'a été blessé dans cette vidéo, l\'enfant va bien, le wagon aussi.'),
(7, 1, 'GTFO R7C2 avec un noob. On ouvre un bar a chicha. trop de fumée on fait toute la mission à 10hp!', 'https://www.youtube.com/watch?v=tcTwdYmLpJA', 'Quatre asthmatiques tentent de survivre à la rino finragite '),
(8, 4, 'La banane cendrée / Sea of thieves', 'https://www.youtube.com/watch?v=Q58hazSXLqk', 'Des bateaux, des canons et des épées tout ça pour une banane '),
(9, 2, 'LEAGUE OF LEGENDS | BestOof #1 | LosPetitsPanos | OH + turlupine + bégaye', 'https://www.youtube.com/watch?v=eKFxMTFkMXU', 'Déjà un classique'),
(10, 3, 'Minecraft Dungeons avec un noob ep 7. On se fait censurer à cause de nos voix de RockStar.', 'https://www.youtube.com/watch?v=us4TaSM090I', 'Un numéro vert est disponible si vous avez besoin de prendre contact avec un spécialiste de la santé pour parler de l\'aventure auditive que vous allez subir.'),
(11, 1, 'GTFO R7c1 Part1 avec un noob. on ce fait enclencher par des hérissons mutants\r\n', 'https://www.youtube.com/watch?v=N058TMJ5J2U', 'Un ivrogne, un enfant et deux ahuris tentent de comprendre comment ils en sont arrivés à combattre des hérissons mutants.');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Index pour la table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_29AA6432BCF5E72D` (`categorie_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `equipe`
--
ALTER TABLE `equipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `FK_29AA6432BCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
