-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 14 mai 2024 à 13:53
-- Version du serveur : 8.0.30
-- Version de PHP : 8.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `php_intermediaire_julius`
--
CREATE DATABASE IF NOT EXISTS `php_intermediaire_julius` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `php_intermediaire_julius`;

-- --------------------------------------------------------

--
-- Structure de la table `advert`
--

CREATE TABLE `advert` (
  `id_advert` int NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `postal_code` int DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `type` enum('achat','location') DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `reservation_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `advert`
--

INSERT INTO `advert` (`id_advert`, `photo`, `title`, `description`, `postal_code`, `city`, `type`, `price`, `reservation_message`) VALUES
(1, 'https://www.photographie-cours.fr/wp-content/uploads/2020/07/photo-bien-immobilier-scaled.jpg', 'MAISSON A PARIS', 'Belle maison a Paris avec 3 chambres.Lorem Ipsum est simplement un texte factice de l\'industrie de l\'impression et de la composition. Le Lorem Ipsum est le texte factice standard de l\'industrie depuis les années 1500, quand un imprimeur inconnu a pris une galère de caractères et l\'a scramblé pour en faire un livre de spécimens de caractères. Il a survécu non seulement cinq siècles, mais aussi à l\'entrée dans la composition assistée par ordinateur, ', 75001, 'Paris', 'achat', 750000.00, 'Disponible immédiatement'),
(2, 'https://images.squarespace-cdn.com/content/v1/5c0f24d2b27e39c94b194c1e/1664320980267-S3717S9647FOY7X3DXOU/480+Bondville-YD2_9587-HDR.jpg', 'APPARTEMENT A LYON', 'Appartement spacieux à Lyon. Lorem Ipsum est simplement un texte factice de l\'industrie de l\'impression et de la composition. Le Lorem Ipsum est le texte factice standard de l\'industrie depuis les années 1500, quand un imprimeur inconnu a pris une galère de caractères et l\'a scramblé pour en faire un livre de spécimens de caractères. Il a survécu non seulement cinq siècles, mais aussi à l\'entrée dans la composition assistée par ordinateur, ', 69001, 'Lyon', 'location', 1200.00, 'Disponible à partir de juin'),
(3, 'https://i.f1g.fr/media/eidos/805x453_crop/2022/02/25/XVMbb611c8c-9561-11ec-b001-059cef568df6.jpg', 'APPARTEMENT A MARSEILLE', 'Studio cosy en plein centre de Marseille.Lorem Ipsum est simplement un texte factice de l\'industrie de l\'impression et de la composition. Le Lorem Ipsum est le texte factice standard de l\'industrie depuis les années 1500, quand un imprimeur inconnu a pris une galère de caractères et l\'a scramblé pour en faire un livre de spécimens de caractères. Il a survécu non seulement cinq siècles, mais aussi à l\'entrée dans la composition assistée par ordinateur, ', 13001, 'Marseille', 'location', 700.00, 'Réservé'),
(4, 'https://www.dili.fr/user/themes/digit-website/images/vendre-maison.jpg', 'VILLA A NICE', 'Villa avec vue sur la mer à Nice.Lorem Ipsum est simplement un texte factice de l\'industrie de l\'impression et de la composition. Le Lorem Ipsum est le texte factice standard de l\'industrie depuis les années 1500, quand un imprimeur inconnu a pris une galère de caractères et l\'a scramblé pour en faire un livre de spécimens de caractères. Il a survécu non seulement cinq siècles, mais aussi à l\'entrée dans la composition assistée par ordinateur, ', 6000, 'Nice', 'achat', 1500000.00, 'Disponible immédiatement'),
(5, 'https://images.squarespace-cdn.com/content/v1/5c0f24d2b27e39c94b194c1e/1659490351286-IWWBWI8L54ZE7QAI9OU0/20220715-B-Exte%CC%81rieur-YD2_9822.jpg', 'MAISON A LYON', 'Belle maison à Lyon avec 4 chambres.Lorem Ipsum est simplement un texte factice de l\'industrie de l\'impression et de la composition. Le Lorem Ipsum est le texte factice standard de l\'industrie depuis les années 1500, quand un imprimeur inconnu a pris une galère de caractères et l\'a scramblé pour en faire un livre de spécimens de caractères. Il a survécu non seulement cinq siècles, mais aussi à l\'entrée dans la composition assistée par ordinateur, ', 69004, 'Lyon', 'achat', 800000.00, NULL),
(6, 'https://www.sebastien-picard.com/v2016/wp-content/uploads/2015/11/Photographe-immobilier-a-Quebec-01-640x427.jpg', 'APPARTEMENT A MARSEILLE', 'Appartement spacieux à Marseille', 13005, 'Marseille', 'location', 1500.00, 'Disponible à partir de juillet'),
(7, 'https://www.reponses-bien-vieillir.fr/wp-content/uploads/2019/08/vendre-maison-promoteur-immobilier.png', 'MAISON A PARIS', 'Studio cosy en plein centre de Paris.Lorem Ipsum est simplement un texte factice de l\'industrie de l\'impression et de la composition. Le Lorem Ipsum est le texte factice standard de l\'industrie depuis les années 1500, quand un imprimeur inconnu a pris une galère de caractères et l\'a scramblé pour en faire un livre de spécimens de caractères. Il a survécu non seulement cinq siècles, mais aussi à l\'entrée dans la composition assistée par ordinateur, ', 75006, 'Paris', 'location', 900.00, 'Réservé'),
(8, 'https://immobilierespagne.com/wp-content/uploads/2018/03/comment-vendre-maison-en-espagne-thegem-blog-default.jpg', 'MAISON A MARSEILLE', 'Belle maison à Marseille avec 5 chambres', 13007, 'Marseille', 'achat', 850000.00, NULL),
(9, 'https://retraiteenespagne.com/wp-content/uploads/2021/08/kSnFBMOg-compressed-1280x853.jpg', 'APPARTEMENT A LYON', 'Appartement spacieux à Lyon.Lorem Ipsum est simplement un texte factice de l\'industrie de l\'impression et de la composition. Le Lorem Ipsum est le texte factice standard de l\'industrie depuis les années 1500, quand un imprimeur inconnu a pris une galère de caractères et l\'a scramblé pour en faire un livre de spécimens de caractères. Il a survécu non seulement cinq siècles, mais aussi à l\'entrée dans la composition assistée par ordinateur, ', 69008, 'Lyon', 'location', 1800.00, 'Disponible à partir daoût'),
(10, 'https://www.escapasol.com/wp-content/uploads/2020/05/maison-neuve-avec-piscine.jpg', 'APPARTEMENT A MARSEILLE', 'Studio cosy en plein centre de Marseille.Lorem Ipsum est simplement un texte factice de l\'industrie de l\'impression et de la composition. Le Lorem Ipsum est le texte factice standard de l\'industrie depuis les années 1500, quand un imprimeur inconnu a pris une galère de caractères et l\'a scramblé pour en faire un livre de spécimens de caractères. Il a survécu non seulement cinq siècles, mais aussi à l\'entrée dans la composition assistée par ordinateur, ', 13009, 'Marseille', 'location', 1100.00, 'Réservé'),
(11, 'https://retraiteenespagne.com/wp-content/uploads/2021/08/kSnFBMOg-compressed-1280x853.jpg', 'APPARTEMENT A PARIS', 'Belle maison à Lyon avec 4 chambres.Lorem Ipsum est simplement un texte factice de l\'industrie de l\'impression et de la composition. Le Lorem Ipsum est le texte factice standard de l\'industrie depuis les années 1500, quand un imprimeur inconnu a pris une galère de caractères et l\'a scramblé pour en faire un livre de spécimens de caractères. Il a survécu non seulement cinq siècles, mais aussi à l\'entrée dans la composition assistée par ordinateur, ', 75002, 'Lyon', 'achat', 800000.00, NULL),
(12, 'https://retraiteenespagne.com/wp-content/uploads/2021/01/An4S8OKA-compressed-1280x1330.jpg', 'APPARTEMENT A MARSEILLE', 'Appartement spacieux à Marseille.Lorem Ipsum est simplement un texte factice de l\'industrie de l\'impression et de la composition. Le Lorem Ipsum est le texte factice standard de l\'industrie depuis les années 1500, quand un imprimeur inconnu a pris une galère de caractères et l\'a scramblé pour en faire un livre de spécimens de caractères. Il a survécu non seulement cinq siècles, mais aussi à l\'entrée dans la composition assistée par ordinateur, ', 13005, 'Marseille', 'location', 1500.00, 'Disponible à partir de juillet'),
(13, 'https://assets-global.website-files.com/609171e52ab58f79692ae11b/64d340ad90357850c7dfdc1a_location-villa-espagne.jpg', 'APPARTEMENT A MONACO', 'Studio cosy en plein centre de Paris.Lorem Ipsum est simplement un texte factice de l\'industrie de l\'impression et de la composition. Le Lorem Ipsum est le texte factice standard de l\'industrie depuis les années 1500, quand un imprimeur inconnu a pris une galère de caractères et l\'a scramblé pour en faire un livre de spécimens de caractères. Il a survécu non seulement cinq siècles, mais aussi à l\'entrée dans la composition assistée par ordinateur, ', 75006, 'Paris', 'location', 900.00, 'Réservé'),
(14, 'https://rbplace.com/wp-content/uploads/2018/03/maison-villamartin-espagne.jpg', 'APPARTEMENT A RENNES', 'Belle maison à Lyon avec 4 chambres.Lorem Ipsum est simplement un texte factice de l\'industrie de l\'impression et de la composition. Le Lorem Ipsum est le texte factice standard de l\'industrie depuis les années 1500, quand un imprimeur inconnu a pris une galère de caractères et l\'a scramblé pour en faire un livre de spécimens de caractères. Il a survécu non seulement cinq siècles, mais aussi à l\'entrée dans la composition assistée par ordinateur, ', 69004, 'Lyon', 'achat', 800000.00, NULL),
(15, 'https://rbplace.com/wp-content/uploads/2018/03/villa-finestrat-alicante.jpg', 'APPARTEMENT A NICE', 'Appartement spacieux à Marseille.Lorem Ipsum est simplement un texte factice de l\'industrie de l\'impression et de la composition. Le Lorem Ipsum est le texte factice standard de l\'industrie depuis les années 1500, quand un imprimeur inconnu a pris une galère de caractères et l\'a scramblé pour en faire un livre de spécimens de caractères. Il a survécu non seulement cinq siècles, mais aussi à l\'entrée dans la composition assistée par ordinateur, ', 13005, 'Marseille', 'location', 1500.00, 'Disponible à partir de juillet');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `advert`
--
ALTER TABLE `advert`
  ADD PRIMARY KEY (`id_advert`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
