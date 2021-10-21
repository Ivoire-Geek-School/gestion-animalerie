-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 21 oct. 2021 à 11:22
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `igs_inventory`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `postcode` varchar(12) DEFAULT NULL,
  `telephone` varchar(16) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `paymethod` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `remote_ip` varchar(255) NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `log`
--

INSERT INTO `log` (`id`, `user_id`, `remote_ip`, `action`, `date`) VALUES
(1, 0, '::1', '', '2021-10-17'),
(2, 0, '::1', 'index.php', '2021-10-17'),
(3, 0, '::1', 'auth.php', '2021-10-17'),
(4, 0, '::1', 'index.php', '2021-10-17'),
(5, 0, '::1', 'auth.php', '2021-10-17'),
(6, 1, '::1', 'home.php', '2021-10-17'),
(7, 1, '::1', 'profile.php?id=1', '2021-10-17'),
(8, 1, '::1', 'edit_account.php', '2021-10-17'),
(9, 1, '::1', 'edit_account.php', '2021-10-17'),
(10, 1, '::1', 'edit_account.php', '2021-10-17'),
(11, 1, '::1', 'edit_account.php?id=1', '2021-10-17'),
(12, 1, '::1', 'edit_account.php', '2021-10-17'),
(13, 1, '::1', 'change_password.php', '2021-10-17'),
(14, 1, '::1', 'edit_account.php', '2021-10-17'),
(15, 1, '::1', 'admin.php', '2021-10-17'),
(16, 1, '::1', 'admin.php', '2021-10-17'),
(17, 1, '::1', 'admin.php', '2021-10-17'),
(18, 1, '::1', 'group.php', '2021-10-17'),
(19, 1, '::1', 'edit_group.php?id=1', '2021-10-17'),
(20, 1, '::1', 'users.php', '2021-10-17'),
(21, 1, '::1', 'log.php', '2021-10-17'),
(22, 1, '::1', 'add_order_by_customer.php', '2021-10-17'),
(23, 1, '::1', 'add_sale_by_sku.php', '2021-10-17'),
(24, 1, '::1', 'sales_by_order.php?id=', '2021-10-17'),
(25, 1, '::1', 'customers.php', '2021-10-17'),
(26, 1, '::1', 'media.php', '2021-10-17'),
(27, 1, '::1', 'media.php', '2021-10-17'),
(28, 1, '::1', 'media.php', '2021-10-17'),
(29, 1, '::1', 'categories.php', '2021-10-17'),
(30, 1, '::1', 'products.php', '2021-10-17'),
(31, 1, '::1', 'products.php', '2021-10-17'),
(32, 1, '::1', 'product_search.php', '2021-10-17'),
(33, 1, '::1', 'products.php', '2021-10-17'),
(34, 1, '::1', 'add_product.php', '2021-10-17'),
(35, 1, '::1', 'customers.php', '2021-10-17'),
(36, 1, '::1', 'add_customer.php', '2021-10-17'),
(37, 1, '::1', 'add_order_by_customer.php', '2021-10-17'),
(38, 1, '::1', 'orders.php', '2021-10-17'),
(39, 1, '::1', 'customers.php', '2021-10-17'),
(40, 1, '::1', 'stock.php', '2021-10-17'),
(41, 1, '::1', 'group.php', '2021-10-17'),
(42, 1, '::1', 'users.php', '2021-10-17'),
(43, 1, '::1', 'admin.php', '2021-10-17'),
(44, 1, '::1', 'orders.php', '2021-10-17'),
(45, 1, '::1', 'add_order_by_customer.php', '2021-10-17'),
(46, 1, '::1', 'stock_report.php', '2021-10-17'),
(47, 1, '::1', 'stock_report_process.php', '2021-10-17'),
(48, 1, '::1', 'stock_report.php', '2021-10-17'),
(49, 1, '::1', 'sales_report.php', '2021-10-17'),
(50, 1, '::1', 'admin.php', '2021-10-17'),
(51, 1, '::1', 'admin.php', '2021-10-17'),
(52, 2, '::1', 'home.php', '2021-10-20'),
(53, 2, '::1', 'logout.php', '2021-10-20'),
(54, 0, '::1', 'index.php', '2021-10-20'),
(55, 0, '::1', 'auth.php', '2021-10-20'),
(56, 1, '::1', 'home.php', '2021-10-20'),
(57, 1, '::1', 'users.php', '2021-10-20'),
(58, 1, '::1', 'admin.php', '2021-10-20'),
(59, 1, '::1', 'customers.php', '2021-10-20'),
(60, 1, '::1', 'add_customer.php', '2021-10-20'),
(61, 1, '::1', 'products.php', '2021-10-20'),
(62, 1, '::1', 'group.php', '2021-10-20'),
(63, 1, '::1', 'edit_group.php?id=3', '2021-10-20'),
(64, 1, '::1', 'orders.php', '2021-10-20'),
(65, 1, '::1', 'sales.php', '2021-10-20');

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

CREATE TABLE `media` (
  `id` int(11) UNSIGNED NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `media`
--

INSERT INTO `media` (`id`, `file_name`, `file_type`) VALUES
(1, 'no-image.png', 'image/png'),
(2, '1611299822554 - Copie (3).jpg', 'image/jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  `paymethod` varchar(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `sku` varchar(100) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `buy_price` decimal(25,2) DEFAULT NULL,
  `sale_price` decimal(25,2) NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL,
  `media_id` int(11) DEFAULT 0,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(25,2) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `comments` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_level` int(11) NOT NULL,
  `image` varchar(255) DEFAULT 'no_image.jpg',
  `status` int(1) NOT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `user_level`, `image`, `status`, `last_login`) VALUES
(1, 'Admin User', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1, 'tvx3b7f11.jpg', 1, '2021-10-20 10:54:13'),
(2, 'Supervisor', 'Special', 'ba36b97a41e7faf742ab09bf88405ac04f99599a', 2, 'vk529aeg2.jpg', 1, '2019-02-06 11:44:19'),
(3, 'Default User', 'user', '12dea96fec20593566ab75692c9949596833adc9', 3, 'q73muz1v3.jpg', 1, '2019-02-06 11:43:15');

-- --------------------------------------------------------

--
-- Structure de la table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(150) NOT NULL,
  `group_level` int(11) NOT NULL,
  `group_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user_groups`
--

INSERT INTO `user_groups` (`id`, `group_name`, `group_level`, `group_status`) VALUES
(1, 'Admin', 1, 1),
(2, 'Supervisor', 2, 1),
(3, 'User', 3, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `media_id` (`media_id`);

--
-- Index pour la table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Index pour la table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_level` (`user_level`);

--
-- Index pour la table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_level` (`group_level`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT pour la table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_products` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `SK` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_user` FOREIGN KEY (`user_level`) REFERENCES `user_groups` (`group_level`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
