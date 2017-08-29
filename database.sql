-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 25 août 2017 à 10:25
-- Version du serveur :  10.1.22-MariaDB
-- Version de PHP :  7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `myshop`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `idcategories` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`idcategories`, `name`) VALUES
(1, 'Thé'),
(2, 'toto'),
(3, 'toto');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `idclients` int(11) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(45) NOT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `civility` tinyint(4) DEFAULT '1',
  `isok` tinyint(4) DEFAULT '1',
  `avatar` varchar(255) DEFAULT 'https://www.shareicon.net/data/128x128/2015/12/14/207815_face_300x300.png',
  `date_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`idclients`, `firstname`, `lastname`, `email`, `password`, `phone`, `civility`, `isok`, `avatar`, `date_create`) VALUES
(1, 'Mike', 'Sylvestre', 'Mike@Mike.Mike', '$2y$10$sTlKliZdQRFENFWBRKlOY.QmBkAGUvpiJU5.65', NULL, 1, 1, 'https://www.shareicon.net/data/128x128/2015/12/14/207815_face_300x300.png', '2017-08-22 11:06:13'),
(2, 'p,po,', 'p,po,', 'Mike@Mregreike.Mike', '$2y$10$hhlNSraz0lmoy9Prw71gl.a/G45/u/qCmL8oI6', NULL, 1, 1, 'https://www.shareicon.net/data/128x128/2015/12/14/207815_face_300x300.png', '2017-08-23 15:33:09'),
(3, 'gerqg', 'greqsg', 'gsreg@reqge', '$2y$10$2CO2Qk.AfeQhF424zpuBbetaQIEpJDAWQ3hf39', NULL, 1, 1, 'https://www.shareicon.net/data/128x128/2015/12/14/207815_face_300x300.png', '2017-08-23 16:06:27'),
(4, 'gbdwfg', 'wdg', 'a@a', '$2y$10$Zz6F8NvuG7njl.THt2JmOeFxYKTVoDAC9P4Htw', NULL, 1, 1, 'https://www.shareicon.net/data/128x128/2015/12/14/207815_face_300x300.png', '2017-08-23 16:11:39'),
(5, 'uioiu', 'oyito1@1', '1@1', '$2y$10$FqHdaIsKVl4rDZIEtp4g7uGqLlxSzo3LurxpFm', NULL, 1, 1, 'https://www.shareicon.net/data/128x128/2015/12/14/207815_face_300x300.png', '2017-08-23 16:12:44'),
(6, 'feef', 'feef', 'njygfjnydvsvds', '$2y$10$iD9DW19jzzBwtk7WPDUPoeZpt0NpumseApSL0P', NULL, 1, 1, 'https://www.shareicon.net/data/128x128/2015/12/14/207815_face_300x300.png', '2017-08-24 10:00:58'),
(7, 'feef', 'feef', 'njygfjnydvsvdsdhg', '$2y$10$hTDsKenj0e4uakNq.CJ.T.FIdvHtZ0j3fxMJB6', NULL, 1, 1, 'https://www.shareicon.net/data/128x128/2015/12/14/207815_face_300x300.png', '2017-08-24 10:11:14'),
(8, '<rqg', 'rqeg', 'qreg@qregre', '$2y$10$CNUWi.PtAMlswW72.b8yROwLzycrCQ6RQ6yO6g', NULL, 1, 1, 'https://www.shareicon.net/data/128x128/2015/12/14/207815_face_300x300.png', '2017-08-24 11:06:31'),
(9, 'eghstrhtrh', 'htrshtrh', 'qreg@qregretrhstrdhjtr', '$2y$10$qn82Zj/UybbgkOrHsSnUAOEhpkuAbfT62cQ2tA', NULL, 1, 1, 'https://www.shareicon.net/data/128x128/2015/12/14/207815_face_300x300.png', '2017-08-24 11:35:12'),
(10, 'htrqsht', 'hsrth', 'thrsht@thrs', '$2y$10$aAARoIcQwL1aXVDtT6uKXevHYQkyZDJykemrbF', NULL, 1, 1, 'https://www.shareicon.net/data/128x128/2015/12/14/207815_face_300x300.png', '2017-08-24 12:32:35');

-- --------------------------------------------------------

--
-- Structure de la table `clients_has_items`
--

CREATE TABLE `clients_has_items` (
  `clients_idclients` int(11) NOT NULL,
  `items_iditems` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `clients_has_items`
--

INSERT INTO `clients_has_items` (`clients_idclients`, `items_iditems`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `delivery`
--

CREATE TABLE `delivery` (
  `iddelivery` int(11) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `type` enum('Facturation','Livraisons') DEFAULT 'Livraisons',
  `clients_idclients` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `delivery`
--

INSERT INTO `delivery` (`iddelivery`, `street`, `city`, `country`, `type`, `clients_idclients`) VALUES
(1, '1 rue paolo uccelo', 'St Thibault des vigne', 'France', 'Livraisons', 1),
(2, '1 rue paolo uccelo', 'St Thibault des vigne', 'France', 'Facturation', 1);

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

CREATE TABLE `items` (
  `iditems` int(11) NOT NULL,
  `libelle` varchar(45) NOT NULL,
  `description` longtext NOT NULL,
  `code_item` varchar(45) NOT NULL,
  `stocks` smallint(5) DEFAULT NULL,
  `availabity` tinyint(4) NOT NULL DEFAULT '1',
  `price` float(3,2) NOT NULL,
  `categories_idcategories` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `items`
--

INSERT INTO `items` (`iditems`, `libelle`, `description`, `code_item`, `stocks`, `availabity`, `price`, `categories_idcategories`) VALUES
(1, 'test1', 'test', 'test', 5, 1, 3.30, 1),
(2, 'test2', 'test2', 'test2', 5, 1, 2.20, 2),
(4, 'test3', 'test2', 'test2', 5, 1, 2.20, 1),
(5, 'test4', 'test2', 'test2', 5, 1, 2.20, 1),
(6, 'test2', 'test2', 'test2', 5, 1, 2.20, 1),
(7, 'test2', 'test2', 'test2', 5, 1, 2.20, 1),
(8, 'test2', 'test2', 'test2', 5, 1, 2.20, 3),
(9, 'test2', 'test2', 'test2', 5, 1, 2.20, 1),
(10, 'test2', 'test2', 'test2', 5, 1, 2.20, 1),
(11, 'test2', 'test2', 'test2', 5, 1, 2.20, 1),
(12, 'test2', 'test2', 'test2', 5, 1, 2.20, 1),
(13, 'test2', 'test2', 'test2', 5, 1, 2.20, 1);

-- --------------------------------------------------------

--
-- Structure de la table `items_has_type`
--

CREATE TABLE `items_has_type` (
  `items_iditems` int(11) NOT NULL,
  `type_idtype` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `listenerfavorie`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `listenerfavorie` (
`iditems` int(11)
,`libelle` varchar(45)
,`description` longtext
,`code_item` varchar(45)
,`stocks` smallint(5)
,`availabity` tinyint(4)
,`price` float(3,2)
,`categories_idcategories` int(11)
,`idclients` int(11)
);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `idorders` int(11) NOT NULL,
  `num_order` varchar(45) NOT NULL,
  `date_order` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_send` datetime DEFAULT NULL,
  `status` tinyint(5) NOT NULL DEFAULT '0',
  `clients_idclients` int(11) NOT NULL,
  `delivery_iddelivery` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`idorders`, `num_order`, `date_order`, `date_send`, `status`, `clients_idclients`, `delivery_iddelivery`) VALUES
(2, '#92ff38c638e01b94900ac9', '2017-08-22 14:45:31', NULL, 0, 1, 1),
(3, '#12f8e8580fee7b5d5d1350', '2017-08-22 14:49:53', NULL, 0, 1, 1),
(4, '#d1d5dfb5d57871ef69faee', '2017-08-23 15:07:04', NULL, 0, 1, 1),
(5, '#c84c1d9c0661ac3847251f', '2017-08-23 15:07:17', NULL, 0, 1, 1),
(6, '#2833f9a8441c88fb318988', '2017-08-23 15:07:25', NULL, 0, 1, 1),
(7, '#6277708da267296340fd82', '2017-08-23 15:07:33', NULL, 0, 1, 1),
(8, '#f5fcf4c3ff91a3f6e10feb', '2017-08-23 15:24:25', NULL, 0, 1, 1),
(9, '#5784b7f04a0004cce34f2a', '2017-08-23 15:24:49', NULL, 0, 1, 1),
(10, '#bd09518c2fb04797266c42', '2017-08-23 15:25:15', NULL, 0, 1, 1),
(11, '#3507db3a7698e97bbce176', '2017-08-23 15:25:27', NULL, 0, 1, 1),
(12, '#1908d2743f305a301e954c', '2017-08-23 15:26:09', NULL, 0, 1, 1),
(13, '#c07646643d4a2d3ff27e8e', '2017-08-23 15:26:15', NULL, 0, 1, 1),
(14, '#d618274691a36090db942f', '2017-08-23 15:26:34', NULL, 0, 1, 1),
(15, '#fd7ccbe99e302469d2920e', '2017-08-23 15:26:50', NULL, 0, 1, 1),
(16, '#8a679af8fad9649ac48322', '2017-08-23 15:27:19', NULL, 0, 1, 1),
(17, '#5ddfeb48d4a97d00fc6b46', '2017-08-23 15:27:44', NULL, 0, 1, 1),
(18, '#09afa8dfd60f31314455ac', '2017-08-23 15:27:45', NULL, 0, 1, 1),
(19, '#b0d15223c3732b204df9b5', '2017-08-23 15:27:45', NULL, 0, 1, 1),
(20, '#15a19f1263611005c74299', '2017-08-23 15:27:45', NULL, 0, 1, 1),
(21, '#90305c4dfbf8578c43f6a1', '2017-08-23 15:28:32', NULL, 0, 1, 1),
(22, '#bf89623a1ebb374ed02ae9', '2017-08-23 15:28:50', NULL, 0, 1, 1),
(23, '#e2a3a92f2bfa9a00c95836', '2017-08-23 15:29:01', NULL, 0, 1, 1),
(24, '#72f9ddf1f0cedb400568c2', '2017-08-23 15:29:21', NULL, 0, 1, 1),
(25, '#e06c57a91a8a3f087542ee', '2017-08-23 15:29:24', NULL, 0, 1, 1),
(26, '#89d1e15234568b17e1150b', '2017-08-23 15:29:29', NULL, 0, 1, 1),
(27, '#59c8711d79714ac95c9751', '2017-08-23 15:29:36', NULL, 0, 1, 1),
(28, '#b8014feb1d4df28cde5ed0', '2017-08-23 15:29:59', NULL, 0, 1, 1),
(29, '#8b507a5ac6f5575ce56d96', '2017-08-23 15:33:00', NULL, 0, 1, 1),
(30, '#9bcfea31df3fd2dcc9d1ef', '2017-08-23 15:33:09', NULL, 0, 1, 1),
(31, '#189126bf9fd5a673ed0f1d', '2017-08-23 16:05:15', NULL, 0, 1, 1),
(32, '#c1dbe7b9c7bf2f03b44307', '2017-08-23 16:05:45', NULL, 0, 1, 1),
(33, '#cddd53c5c69c092a1b62b5', '2017-08-23 16:06:27', NULL, 0, 1, 1),
(34, '#8b55a69e1b0bcec14c1d80', '2017-08-23 16:11:19', NULL, 0, 1, 1),
(35, '#4ce7ab9d71e1fdc868327b', '2017-08-23 16:11:39', NULL, 0, 1, 1),
(36, '#cd88b60980532b3eaad0a2', '2017-08-23 16:12:23', NULL, 0, 1, 1),
(37, '#3d652cc6e96f31c0f020c6', '2017-08-23 16:12:44', NULL, 0, 1, 1),
(38, '#5037d2b7d88857fdd586dd', '2017-08-23 16:12:54', NULL, 0, 1, 1),
(39, '#07d67480bb57de2d8e334e', '2017-08-24 10:00:58', NULL, 0, 1, 1),
(40, '#2e5877b325e14fea40588c', '2017-08-24 10:10:54', NULL, 0, 1, 1),
(41, '#25a2582e3e19b14eacdbf2', '2017-08-24 10:11:13', NULL, 0, 1, 1),
(42, '#01a596685ce31ef15b6b9c', '2017-08-24 10:29:53', NULL, 0, 1, 1),
(43, '#64f1d33875641d3fad8d5c', '2017-08-24 10:29:59', NULL, 0, 1, 1),
(44, '#7b6cc1dea3caaee3215b46', '2017-08-24 10:58:31', NULL, 0, 1, 1),
(45, '#e67e05a9e84723ea0d8c9d', '2017-08-24 11:06:31', NULL, 0, 1, 1),
(46, '#170dd79d0c23a074b4a2dc', '2017-08-24 11:34:39', NULL, 0, 1, 1),
(47, '#ad5797c600269bfc689bed', '2017-08-24 11:35:12', NULL, 0, 1, 1),
(48, '#e5022d2e6b8fa36b970d0d', '2017-08-24 12:32:35', NULL, 0, 1, 1),
(49, '#5851171997aad2a09750ed', '2017-08-24 14:11:02', NULL, 0, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `orders_has_items`
--

CREATE TABLE `orders_has_items` (
  `orders_idorders` int(11) NOT NULL,
  `items_iditems` int(11) NOT NULL,
  `qte` tinyint(5) NOT NULL,
  `price_final` float(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `orders_has_items`
--

INSERT INTO `orders_has_items` (`orders_idorders`, `items_iditems`, `qte`, `price_final`) VALUES
(2, 2, 10, 9.99);

-- --------------------------------------------------------

--
-- Structure de la table `payments`
--

CREATE TABLE `payments` (
  `idpayments` int(11) NOT NULL,
  `amount` float(3,2) NOT NULL,
  `type` enum('Bank','Stripe','Paypal') NOT NULL DEFAULT 'Bank',
  `currency` enum('Euro','Dollard') NOT NULL DEFAULT 'Euro',
  `rule` tinyint(4) NOT NULL,
  `date_rule` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `orders_idorders` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `pictures`
--

CREATE TABLE `pictures` (
  `idpictures` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `date_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `items_iditems` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `pictures`
--

INSERT INTO `pictures` (`idpictures`, `name`, `url`, `date_create`, `items_iditems`) VALUES
(1, NULL, 'https://www.odelices.com/blog/wp-content/uploads/2010/12/mini_cuilleres_au_potiron_et_saint_jacques2.jpg', '2017-08-24 14:24:55', 1),
(2, NULL, 'https://4.bp.blogspot.com/-imqp7Y7aK1c/VvOICHN_5PI/AAAAAAAACO4/ClNGiMAEAeIZYBYngeKGkYPf8xz3vMO8w/s320/vitamin%2BC.jpg', '2017-08-24 14:25:49', 1),
(3, NULL, 'https://www.odelices.com/blog/wp-content/uploads/2010/12/mini_cuilleres_au_potiron_et_saint_jacques2.jpg', '2017-08-24 14:25:49', 2),
(4, NULL, 'https://www.odelices.com/blog/wp-content/uploads/2010/12/mini_cuilleres_au_potiron_et_saint_jacques2.jpg', '2017-08-24 14:24:55', 4),
(5, NULL, 'https://www.odelices.com/blog/wp-content/uploads/2010/12/mini_cuilleres_au_potiron_et_saint_jacques2.jpg', '2017-08-24 14:24:55', 5),
(6, NULL, 'https://www.odelices.com/blog/wp-content/uploads/2010/12/mini_cuilleres_au_potiron_et_saint_jacques2.jpg', '2017-08-24 14:24:55', 6),
(7, NULL, 'https://www.odelices.com/blog/wp-content/uploads/2010/12/mini_cuilleres_au_potiron_et_saint_jacques2.jpg', '2017-08-24 14:24:55', 7),
(8, NULL, 'https://www.odelices.com/blog/wp-content/uploads/2010/12/mini_cuilleres_au_potiron_et_saint_jacques2.jpg', '2017-08-24 14:24:55', 8),
(9, NULL, 'https://www.odelices.com/blog/wp-content/uploads/2010/12/mini_cuilleres_au_potiron_et_saint_jacques2.jpg', '2017-08-24 14:24:55', 9),
(10, NULL, 'https://www.odelices.com/blog/wp-content/uploads/2010/12/mini_cuilleres_au_potiron_et_saint_jacques2.jpg', '2017-08-24 14:24:55', 10),
(11, NULL, 'https://www.odelices.com/blog/wp-content/uploads/2010/12/mini_cuilleres_au_potiron_et_saint_jacques2.jpg', '2017-08-24 14:24:55', 11),
(12, NULL, 'https://www.odelices.com/blog/wp-content/uploads/2010/12/mini_cuilleres_au_potiron_et_saint_jacques2.jpg', '2017-08-24 14:24:55', 12),
(13, NULL, 'https://www.odelices.com/blog/wp-content/uploads/2010/12/mini_cuilleres_au_potiron_et_saint_jacques2.jpg', '2017-08-24 14:24:55', 13);

-- --------------------------------------------------------

--
-- Structure de la table `reviews`
--

CREATE TABLE `reviews` (
  `idreviews` int(11) NOT NULL,
  `note` varchar(45) NOT NULL,
  `commentaire` varchar(45) DEFAULT NULL,
  `date_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `items_iditems` int(11) NOT NULL,
  `clients_idclients` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `reviews`
--

INSERT INTO `reviews` (`idreviews`, `note`, `commentaire`, `date_create`, `items_iditems`, `clients_idclients`) VALUES
(1, '5', NULL, '2017-08-24 16:26:41', 1, 1),
(2, '0', NULL, '2017-08-24 16:26:41', 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `idtype` int(11) NOT NULL,
  `libeller` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la vue `listenerfavorie`
--
DROP TABLE IF EXISTS `listenerfavorie`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `listenerfavorie`  AS  select `i`.`iditems` AS `iditems`,`i`.`libelle` AS `libelle`,`i`.`description` AS `description`,`i`.`code_item` AS `code_item`,`i`.`stocks` AS `stocks`,`i`.`availabity` AS `availabity`,`i`.`price` AS `price`,`i`.`categories_idcategories` AS `categories_idcategories`,`c`.`idclients` AS `idclients` from ((`items` `i` join `clients` `c`) join `clients_has_items` `chi`) where ((`chi`.`items_iditems` = `i`.`iditems`) and (`chi`.`clients_idclients` = `c`.`idclients`)) ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`idcategories`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`idclients`);

--
-- Index pour la table `clients_has_items`
--
ALTER TABLE `clients_has_items`
  ADD PRIMARY KEY (`clients_idclients`,`items_iditems`),
  ADD KEY `fk_clients_has_items_items1_idx` (`items_iditems`),
  ADD KEY `fk_clients_has_items_clients1_idx` (`clients_idclients`);

--
-- Index pour la table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`iddelivery`),
  ADD KEY `fk_delivery_clients1_idx` (`clients_idclients`);

--
-- Index pour la table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`iditems`),
  ADD KEY `fk_items_categories1_idx` (`categories_idcategories`);

--
-- Index pour la table `items_has_type`
--
ALTER TABLE `items_has_type`
  ADD PRIMARY KEY (`items_iditems`,`type_idtype`),
  ADD KEY `fk_items_has_type_type1_idx` (`type_idtype`),
  ADD KEY `fk_items_has_type_items1_idx` (`items_iditems`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`idorders`),
  ADD KEY `fk_orders_clients_idx` (`clients_idclients`),
  ADD KEY `fk_orders_delivery1_idx` (`delivery_iddelivery`);

--
-- Index pour la table `orders_has_items`
--
ALTER TABLE `orders_has_items`
  ADD PRIMARY KEY (`orders_idorders`,`items_iditems`),
  ADD KEY `fk_orders_has_items_items1_idx` (`items_iditems`),
  ADD KEY `fk_orders_has_items_orders1_idx` (`orders_idorders`);

--
-- Index pour la table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`idpayments`),
  ADD KEY `fk_payments_orders1_idx` (`orders_idorders`);

--
-- Index pour la table `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`idpictures`),
  ADD KEY `fk_pictures_items1_idx` (`items_iditems`);

--
-- Index pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`idreviews`),
  ADD KEY `fk_reviews_items1_idx` (`items_iditems`),
  ADD KEY `fk_reviews_clients1_idx` (`clients_idclients`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`idtype`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `idcategories` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `idclients` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `iddelivery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `items`
--
ALTER TABLE `items`
  MODIFY `iditems` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `idorders` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT pour la table `payments`
--
ALTER TABLE `payments`
  MODIFY `idpayments` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `pictures`
--
ALTER TABLE `pictures`
  MODIFY `idpictures` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `idreviews` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `type`
--
ALTER TABLE `type`
  MODIFY `idtype` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `clients_has_items`
--
ALTER TABLE `clients_has_items`
  ADD CONSTRAINT `fk_clients_has_items_clients1` FOREIGN KEY (`clients_idclients`) REFERENCES `clients` (`idclients`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_clients_has_items_items1` FOREIGN KEY (`items_iditems`) REFERENCES `items` (`iditems`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `fk_delivery_clients1` FOREIGN KEY (`clients_idclients`) REFERENCES `clients` (`idclients`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `fk_items_categories1` FOREIGN KEY (`categories_idcategories`) REFERENCES `categories` (`idcategories`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `items_has_type`
--
ALTER TABLE `items_has_type`
  ADD CONSTRAINT `fk_items_has_type_items1` FOREIGN KEY (`items_iditems`) REFERENCES `items` (`iditems`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_items_has_type_type1` FOREIGN KEY (`type_idtype`) REFERENCES `type` (`idtype`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_clients` FOREIGN KEY (`clients_idclients`) REFERENCES `clients` (`idclients`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_orders_delivery1` FOREIGN KEY (`delivery_iddelivery`) REFERENCES `delivery` (`iddelivery`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `orders_has_items`
--
ALTER TABLE `orders_has_items`
  ADD CONSTRAINT `fk_orders_has_items_items1` FOREIGN KEY (`items_iditems`) REFERENCES `items` (`iditems`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_orders_has_items_orders1` FOREIGN KEY (`orders_idorders`) REFERENCES `orders` (`idorders`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `fk_payments_orders1` FOREIGN KEY (`orders_idorders`) REFERENCES `orders` (`idorders`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `pictures`
--
ALTER TABLE `pictures`
  ADD CONSTRAINT `fk_pictures_items1` FOREIGN KEY (`items_iditems`) REFERENCES `items` (`iditems`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `fk_reviews_clients1` FOREIGN KEY (`clients_idclients`) REFERENCES `clients` (`idclients`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_reviews_items1` FOREIGN KEY (`items_iditems`) REFERENCES `items` (`iditems`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
