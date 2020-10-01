-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 01 oct. 2020 à 16:19
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `miniblog`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL,
  `img` varchar(200) NOT NULL,
  `author` varchar(50) NOT NULL DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `date`, `img`, `author`) VALUES
(1, 'Article 1', 'Lorem ipsum dolor sit amet, Nullam in metus venenatis, vestibulum enim et, sodales ex. Vestibulum iaculis dictum ullamcorper. Vivamus vehicula dui ornare, lacinia purus id, dignissim elit. Sed vel scelerisque velit. Aliquam at mi velit. Donec risus elit, posuere ut lorem ac, porta consequat orci. Morbi volutpat accumsan mollis. Ut justo sem, convallis id lobortis at, placerat at magna. Cras nec sollicitudin sapien, vitae congue purus. Quisque et enim sit amet massa tempus posuere. Maecenas odio odio, commodo scelerisque tempus sagittis, laoreet hendrerit metus. Proin a magna non metus aliquet ornare sed ut magna.', '2020-09-30 13:31:51', 'app/View/images/invader.jpg', 'admin'),
(2, 'Article 2', 'Lorem ipsum dolor sit amet, Pellentesque eleifend, metus non feugiat consequat, urna orci convallis mauris, eu mattis metus eros non enim. Nam condimentum ante quis diam interdum, vitae dapibus turpis sagittis. Vivamus eget ligula ornare, consectetur libero eu, lacinia tortor. Etiam ac rutrum augue. Sed ultrices eros non eros euismod fringilla. Integer vehicula ut nibh non porta. Cras semper fermentum magna, ut malesuada lectus efficitur vitae. Morbi sodales semper dapibus. Vivamus finibus odio quis consequat ullamcorper. Fusce et faucibus ex, a posuere sapien. Vivamus eu feugiat libero, bibendum venenatis tellus. Sed lacinia, ipsum at eleifend aliquam, ante lacus efficitur odio, ut sodales neque justo et lacus. Morbi accumsan urna eget pretium blandit. Morbi accumsan quis odio finibus ornare.', '2020-09-30 13:32:06', 'app/View/images/php.png', 'admin'),
(3, 'Article 3', 'Lorem ipsum dolor sit amet, Nunc at quam mauris. Phasellus vulputate enim vel porttitor dignissim. Etiam porta at ipsum eget fringilla. Maecenas malesuada posuere consectetur. Quisque rutrum a risus ut viverra. Duis vel dapibus felis. Maecenas egestas felis sed nunc ultricies, quis placerat tortor pharetra. Nunc sed malesuada felis.\r\n\r\nPhasellus eu suscipit odio. Suspendisse at tempor tellus. Vestibulum id tellus tortor. Integer at neque magna. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus convallis enim ac faucibus gravida. Curabitur nec hendrerit felis. In mattis ut sem quis scelerisque. Mauris ac dignissim tortor. In hac habitasse platea dictumst. Aliquam facilisis tortor sed nisl sodales, et rutrum dui ultricies. Vestibulum vestibulum dignissim nibh. Integer neque eros, vestibulum vel purus sit amet, porttitor feugiat ligula.', '2020-09-30 13:32:14', 'app/View/images/unreal.jpg', 'admin'),
(4, 'Article 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sed nisl sed orci tristique vehicula at in neque. Vestibulum facilisis vehicula viverra. Sed maximus, neque vel tincidunt imperdiet, est tellus tristique augue, vel venenatis risus nisl cursus lacus. Nam nisl nisl, condimentum et malesuada vitae, viverra sit amet risus. Suspendisse at neque orci. Duis eu augue ac urna elementum posuere. Mauris id lorem vehicula, dapibus nunc quis, fermentum leo. Nullam sit amet nisi at eros malesuada mollis quis nec leo. Etiam id nibh commodo, pulvinar nulla in, varius odio. Curabitur vitae nulla in tortor tincidunt pharetra id non leo. Suspendisse potenti. Ut eu pretium leo. Integer nec purus eget lorem convallis iaculis. Morbi eget nisi sit amet odio sagittis sodales. Curabitur venenatis a odio eu congue. Sed felis diam, tempor feugiat erat non, tincidunt dapibus dolor.\r\n\r\nVivamus sapien ipsum, tempus quis sem et, aliquam viverra nulla. Fusce vitae auctor sapien, quis placerat orci. Mauris ut semper turpis. Nullam lectus velit, fermentum vel sem vel, convallis mollis lacus. Ut commodo varius risus, quis ornare risus. Quisque viverra porta ligula at pretium. Nullam condimentum feugiat magna commodo tristique. Nullam placerat pretium viverra. Praesent nec dignissim dui. Mauris quis massa est. Nullam dictum ante sem, id interdum tellus tincidunt sed.', '2020-10-01 14:14:55', 'app/View/images/unity.PNG', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `articleId` int(11) NOT NULL,
  `author` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `articleId`, `author`, `comment`, `date`) VALUES
(1, 3, 'hello', 'hello world', '2020-09-30 15:34:24'),
(2, 2, 'simon', 'hello world', '2020-09-30 15:38:12'),
(3, 2, 'simon', 'hello world', '2020-09-30 15:41:38');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articleId` (`articleId`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`articleId`) REFERENCES `articles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
