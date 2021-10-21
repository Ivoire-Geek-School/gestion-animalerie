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
-- Base de données : `igs_inventory_demo`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(3, 'animal species'),
(2, 'animals'),
(1, 'Products');

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

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`id`, `name`, `address`, `city`, `region`, `postcode`, `telephone`, `email`, `paymethod`) VALUES
(2, 'Soumah Ibrahim', 'Bassam', 'ss', 'state', '225', '0110011100', 'e@igs.com', 'Cash');

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
(1, 1, '::1', 'admin.php', '2021-10-17'),
(2, 1, '::1', 'view_product.php?id=2', '2021-10-17'),
(3, 1, '::1', 'edit_product.php?id=2', '2021-10-17'),
(4, 1, '::1', 'group.php', '2021-10-17'),
(5, 1, '::1', 'add_order_by_customer.php', '2021-10-17'),
(6, 1, '::1', 'customers.php', '2021-10-17'),
(7, 1, '::1', 'profile.php?id=1', '2021-10-17'),
(8, 1, '::1', 'edit_account.php', '2021-10-17'),
(9, 1, '::1', 'edit_account.php?id=1', '2021-10-17'),
(10, 1, '::1', 'edit_account.php', '2021-10-17'),
(11, 1, '::1', 'edit_account.php', '2021-10-17'),
(12, 1, '::1', 'edit_account.php', '2021-10-17'),
(13, 1, '::1', 'edit_account.php', '2021-10-17'),
(14, 1, '::1', 'edit_account.php', '2021-10-17'),
(15, 1, '::1', 'edit_account.php?id=1', '2021-10-17'),
(16, 1, '::1', 'edit_account.php', '2021-10-17'),
(17, 1, '::1', 'admin.php', '2021-10-17'),
(18, 1, '::1', 'admin.php', '2021-10-17'),
(19, 1, '::1', 'admin.php', '2021-10-17'),
(20, 1, '::1', 'admin.php', '2021-10-17'),
(21, 1, '::1', 'media.php', '2021-10-17'),
(22, 1, '::1', 'categories.php', '2021-10-17'),
(23, 1, '::1', 'edit_category.php?id=2', '2021-10-17'),
(24, 1, '::1', 'products.php', '2021-10-17'),
(25, 1, '::1', 'add_product.php', '2021-10-17'),
(26, 1, '::1', 'products.php', '2021-10-17'),
(27, 1, '::1', 'product_search.php', '2021-10-17'),
(28, 1, '::1', 'ajax_product.php', '2021-10-17'),
(29, 1, '::1', 'ajax_product.php', '2021-10-17'),
(30, 1, '::1', 'ajax_product.php', '2021-10-17'),
(31, 1, '::1', 'ajax_product.php', '2021-10-17'),
(32, 1, '::1', 'ajax_product.php', '2021-10-17'),
(33, 1, '::1', 'customers.php', '2021-10-17'),
(34, 1, '::1', 'stock.php', '2021-10-17'),
(35, 1, '::1', 'customers.php', '2021-10-17'),
(36, 1, '::1', 'stock.php', '2021-10-17'),
(37, 1, '::1', 'customers.php', '2021-10-17'),
(38, 1, '::1', 'product_search.php', '2021-10-17'),
(39, 1, '::1', 'products.php', '2021-10-17'),
(40, 1, '::1', 'customers.php', '2021-10-17'),
(41, 1, '::1', 'add_order_by_customer.php', '2021-10-17'),
(42, 1, '::1', 'ajax_customer.php', '2021-10-17'),
(43, 1, '::1', 'orders.php', '2021-10-17'),
(44, 1, '::1', 'add_order.php', '2021-10-17'),
(45, 1, '::1', 'customers.php', '2021-10-17'),
(46, 1, '::1', 'orders.php', '2021-10-17'),
(47, 1, '::1', 'add_order.php', '2021-10-17'),
(48, 1, '::1', 'add_order.php', '2021-10-17'),
(49, 1, '::1', 'add_sale_by_search.php?id=102', '2021-10-17'),
(50, 1, '::1', 'add_sale_to_order.php?id=102', '2021-10-17'),
(51, 1, '::1', 'add_sale_to_order.php?id=102', '2021-10-17'),
(52, 1, '::1', 'sales_by_order.php?id=102', '2021-10-17'),
(53, 1, '::1', 'add_sale_by_search.php?id=102', '2021-10-17'),
(54, 1, '::1', 'add_sale_to_order.php?id=102', '2021-10-17'),
(55, 1, '::1', 'add_sale_to_order.php?id=102', '2021-10-17'),
(56, 1, '::1', 'sales_by_order.php?id=102', '2021-10-17'),
(57, 1, '::1', 'sales_invoice.php?id=102', '2021-10-17'),
(58, 1, '::1', 'orders.php', '2021-10-17'),
(59, 1, '::1', 'add_order.php', '2021-10-17'),
(60, 1, '::1', 'sales.php', '2021-10-17'),
(61, 1, '::1', 'add_sale_by_sku.php', '2021-10-17'),
(62, 1, '::1', 'stock_report.php', '2021-10-17'),
(63, 1, '::1', 'stock_report_process.php', '2021-10-17'),
(64, 1, '::1', 'stock_report.php', '2021-10-17'),
(65, 1, '::1', 'sales_report.php', '2021-10-17'),
(66, 1, '::1', 'sale_report_process.php', '2021-10-17'),
(67, 1, '::1', 'sales_report.php', '2021-10-17'),
(68, 1, '::1', 'sale_report_process.php', '2021-10-17'),
(69, 1, '::1', 'sales_report.php', '2021-10-17'),
(70, 1, '::1', 'add_sale_by_sku.php', '2021-10-17'),
(71, 1, '::1', 'stock_report.php', '2021-10-17'),
(72, 1, '::1', 'stock_report_process.php', '2021-10-17'),
(73, 1, '::1', 'stock_report.php', '2021-10-17'),
(74, 1, '::1', 'daily_sales.php', '2021-10-17'),
(75, 1, '::1', 'monthly_sales.php', '2021-10-17'),
(76, 1, '::1', 'sales_report.php', '2021-10-17'),
(77, 1, '::1', 'stock_report.php', '2021-10-17'),
(78, 1, '::1', 'stock_report_process.php', '2021-10-17'),
(79, 1, '::1', 'stock_report.php', '2021-10-17'),
(80, 1, '::1', 'stock_report_process.php', '2021-10-17'),
(81, 1, '::1', 'stock_report.php', '2021-10-17'),
(82, 1, '::1', 'group.php', '2021-10-17'),
(83, 1, '::1', 'admin.php', '2021-10-17'),
(84, 1, '::1', 'logout.php', '2021-10-17'),
(85, 0, '::1', 'index.php', '2021-10-17'),
(86, 0, '::1', 'auth.php', '2021-10-17'),
(87, 2, '::1', 'home.php', '2021-10-17'),
(88, 2, '::1', 'home.php', '2021-10-17'),
(89, 2, '::1', 'media.php', '2021-10-17'),
(90, 2, '::1', 'customers.php', '2021-10-17'),
(91, 2, '::1', 'home.php', '2021-10-17'),
(92, 2, '::1', 'orders.php', '2021-10-17'),
(93, 2, '::1', 'home.php', '2021-10-17'),
(94, 2, '::1', 'add_order_by_customer.php', '2021-10-17'),
(95, 2, '::1', 'home.php', '2021-10-17'),
(96, 2, '::1', 'group.php', '2021-10-17'),
(97, 2, '::1', 'home.php', '2021-10-17'),
(98, 2, '::1', 'stock_report.php', '2021-10-17'),
(99, 2, '::1', 'add_order_by_customer.php', '2021-10-17'),
(100, 2, '::1', 'home.php', '2021-10-17'),
(101, 2, '::1', 'home.php', '2021-10-17'),
(102, 2, '::1', 'group.php', '2021-10-17'),
(103, 2, '::1', 'home.php', '2021-10-17'),
(104, 2, '::1', 'users.php', '2021-10-17'),
(105, 2, '::1', 'home.php', '2021-10-17'),
(106, 2, '::1', 'product_search.php', '2021-10-17'),
(107, 0, '::1', 'stock_report.php', '2021-10-20'),
(108, 0, '::1', 'index.php', '2021-10-20'),
(109, 0, '::1', 'index.php', '2021-10-20'),
(110, 0, '::1', '', '2021-10-20'),
(111, 0, '::1', 'index.php', '2021-10-20'),
(112, 0, '::1', '', '2021-10-20'),
(113, 0, '::1', 'index.php', '2021-10-20'),
(114, 0, '::1', 'auth.php', '2021-10-20'),
(115, 3, '::1', 'home.php', '2021-10-20'),
(116, 3, '::1', 'home.php', '2021-10-20'),
(117, 3, '::1', 'customers.php', '2021-10-20'),
(118, 3, '::1', 'home.php', '2021-10-20'),
(119, 3, '::1', 'customers.php', '2021-10-20'),
(120, 3, '::1', 'home.php', '2021-10-20'),
(121, 3, '::1', 'customers.php', '2021-10-20'),
(122, 3, '::1', 'home.php', '2021-10-20'),
(123, 3, '::1', 'home.php', '2021-10-20'),
(124, 3, '::1', 'customers.php', '2021-10-20'),
(125, 3, '::1', 'home.php', '2021-10-20'),
(126, 3, '::1', 'add_order_by_customer.php', '2021-10-20'),
(127, 3, '::1', 'home.php', '2021-10-20'),
(128, 3, '::1', 'logout.php', '2021-10-20'),
(129, 0, '::1', 'index.php', '2021-10-20'),
(130, 0, '::1', 'auth.php', '2021-10-20'),
(131, 1, '::1', 'home.php', '2021-10-20'),
(132, 1, '::1', 'profile.php?id=1', '2021-10-20'),
(133, 1, '::1', 'log.php', '2021-10-20'),
(134, 1, '::1', 'users.php', '2021-10-20'),
(135, 1, '::1', 'group.php', '2021-10-20'),
(136, 1, '::1', 'stock_report.php', '2021-10-20'),
(137, 1, '::1', 'sales_report.php', '2021-10-20'),
(138, 1, '::1', 'sales_report.php', '2021-10-20'),
(139, 1, '::1', 'sales_report.php', '2021-10-20'),
(140, 1, '::1', 'users.php', '2021-10-20'),
(141, 1, '::1', 'edit_user.php?id=2', '2021-10-20'),
(142, 1, '::1', 'edit_user.php?id=2', '2021-10-20'),
(143, 1, '::1', 'edit_user.php?id=2', '2021-10-20'),
(144, 1, '::1', 'edit_user.php?id=2', '2021-10-20'),
(145, 1, '::1', 'edit_user.php?id=2', '2021-10-20'),
(146, 1, '::1', 'edit_user.php?id=2', '2021-10-20'),
(147, 1, '::1', 'edit_user.php?id=2', '2021-10-20'),
(148, 1, '::1', 'edit_user.php?id=2', '2021-10-20'),
(149, 1, '::1', 'edit_user.php?id=2', '2021-10-20'),
(150, 1, '::1', 'logout.php', '2021-10-20'),
(151, 0, '::1', 'index.php', '2021-10-20'),
(152, 0, '::1', 'auth.php', '2021-10-20'),
(153, 2, '::1', 'home.php', '2021-10-20'),
(154, 2, '::1', 'home.php', '2021-10-20'),
(155, 2, '::1', 'media.php', '2021-10-20'),
(156, 2, '::1', 'categories.php', '2021-10-20'),
(157, 2, '::1', 'home.php', '2021-10-20'),
(158, 1, '::1', 'sales.php', '2021-10-20'),
(159, 1, '::1', 'admin.php', '2021-10-20'),
(160, 1, '::1', 'categories.php', '2021-10-20'),
(161, 1, '::1', 'edit_category.php?id=2', '2021-10-20'),
(162, 1, '::1', 'stock.php', '2021-10-20'),
(163, 1, '::1', 'stock_report.php', '2021-10-20'),
(164, 1, '::1', 'group.php', '2021-10-20'),
(165, 1, '::1', 'admin.php', '2021-10-20'),
(166, 0, '::1', 'stock_report.php', '2021-10-21'),
(167, 0, '::1', 'index.php', '2021-10-21'),
(168, 0, '::1', 'index.php', '2021-10-21'),
(169, 0, '::1', 'auth.php', '2021-10-21'),
(170, 1, '::1', 'home.php', '2021-10-21'),
(171, 1, '::1', 'categories.php', '2021-10-21'),
(172, 1, '::1', 'edit_category.php?id=2', '2021-10-21'),
(173, 1, '::1', 'edit_category.php?id=2', '2021-10-21'),
(174, 1, '::1', 'categories.php', '2021-10-21'),
(175, 1, '::1', 'edit_category.php?id=1', '2021-10-21'),
(176, 1, '::1', 'edit_category.php?id=1', '2021-10-21'),
(177, 1, '::1', 'categories.php', '2021-10-21'),
(178, 1, '::1', 'edit_category.php?id=3', '2021-10-21'),
(179, 1, '::1', 'edit_category.php?id=3', '2021-10-21'),
(180, 1, '::1', 'categories.php', '2021-10-21'),
(181, 1, '::1', 'customers.php', '2021-10-21'),
(182, 1, '::1', 'edit_customer.php?id=1', '2021-10-21'),
(183, 1, '::1', 'customers.php', '2021-10-21'),
(184, 1, '::1', 'add_customer.php', '2021-10-21'),
(185, 1, '::1', 'add_customer.php', '2021-10-21'),
(186, 1, '::1', 'customers.php', '2021-10-21'),
(187, 1, '::1', 'add_order_by_customer.php', '2021-10-21'),
(188, 1, '::1', 'orders.php', '2021-10-21'),
(189, 1, '::1', 'add_order.php', '2021-10-21'),
(190, 1, '::1', 'add_order.php', '2021-10-21'),
(191, 1, '::1', 'add_sale_by_search.php?id=103', '2021-10-21'),
(192, 1, '::1', 'add_sale_to_order.php?id=103', '2021-10-21'),
(193, 1, '::1', 'add_sale_to_order.php?id=103', '2021-10-21'),
(194, 1, '::1', 'sales_by_order.php?id=103', '2021-10-21'),
(195, 1, '::1', 'sales_invoice.php?id=103', '2021-10-21'),
(196, 1, '::1', 'orders.php', '2021-10-21'),
(197, 1, '::1', 'edit_customer.php?id=2', '2021-10-21'),
(198, 1, '::1', 'orders.php', '2021-10-21'),
(199, 1, '::1', 'delete_order.php?id=102', '2021-10-21'),
(200, 1, '::1', 'orders.php', '2021-10-21'),
(201, 1, '::1', 'delete_order.php?id=101', '2021-10-21'),
(202, 1, '::1', 'orders.php', '2021-10-21'),
(203, 1, '::1', 'customers.php', '2021-10-21'),
(204, 1, '::1', 'delete_customer.php?id=1', '2021-10-21'),
(205, 1, '::1', 'customers.php', '2021-10-21'),
(206, 1, '::1', 'customers.php', '2021-10-21'),
(207, 1, '::1', 'add_order_by_customer.php', '2021-10-21'),
(208, 1, '::1', 'ajax_customer.php', '2021-10-21'),
(209, 1, '::1', 'ajax_customer.php', '2021-10-21'),
(210, 1, '::1', 'add_order.php', '2021-10-21'),
(211, 1, '::1', 'add_sale_by_search.php?id=104', '2021-10-21'),
(212, 1, '::1', 'add_sale_to_order.php?id=104', '2021-10-21'),
(213, 1, '::1', 'customers.php', '2021-10-21'),
(214, 1, '::1', 'add_sale_by_sku.php', '2021-10-21'),
(215, 1, '::1', 'sales.php', '2021-10-21'),
(216, 1, '::1', 'sales.php', '2021-10-21'),
(217, 1, '::1', 'orders.php', '2021-10-21'),
(218, 1, '::1', 'add_sale_by_sku.php', '2021-10-21'),
(219, 1, '::1', 'add_sale_by_sku.php', '2021-10-21'),
(220, 1, '::1', 'customers.php', '2021-10-21'),
(221, 1, '::1', 'customers.php', '2021-10-21'),
(222, 1, '::1', 'stock.php', '2021-10-21'),
(223, 1, '::1', 'edit_stock.php?id=1', '2021-10-21'),
(224, 1, '::1', 'stock.php', '2021-10-21'),
(225, 1, '::1', 'add_stock.php', '2021-10-21'),
(226, 1, '::1', 'products.php', '2021-10-21'),
(227, 1, '::1', 'add_stock.php?id=1', '2021-10-21'),
(228, 1, '::1', 'products.php', '2021-10-21'),
(229, 1, '::1', 'edit_product.php?id=1', '2021-10-21'),
(230, 1, '::1', 'products.php', '2021-10-21'),
(231, 1, '::1', 'edit_product.php?id=1', '2021-10-21'),
(232, 1, '::1', 'products.php', '2021-10-21'),
(233, 1, '::1', 'media.php', '2021-10-21'),
(234, 1, '::1', 'media.php', '2021-10-21'),
(235, 1, '::1', 'media.php', '2021-10-21'),
(236, 1, '::1', 'media.php', '2021-10-21'),
(237, 1, '::1', 'media.php', '2021-10-21'),
(238, 1, '::1', 'media.php', '2021-10-21'),
(239, 1, '::1', 'media.php', '2021-10-21'),
(240, 1, '::1', 'media.php', '2021-10-21'),
(241, 1, '::1', 'media.php', '2021-10-21'),
(242, 1, '::1', 'delete_media.php?id=2', '2021-10-21'),
(243, 1, '::1', 'media.php', '2021-10-21'),
(244, 1, '::1', 'delete_media.php?id=3', '2021-10-21'),
(245, 1, '::1', 'media.php', '2021-10-21'),
(246, 1, '::1', 'delete_media.php?id=4', '2021-10-21'),
(247, 1, '::1', 'media.php', '2021-10-21'),
(248, 1, '::1', 'admin.php', '2021-10-21'),
(249, 1, '::1', 'view_product.php?id=3', '2021-10-21'),
(250, 1, '::1', 'edit_product.php?id=3', '2021-10-21'),
(251, 1, '::1', 'media.php', '2021-10-21'),
(252, 1, '::1', 'edit_product.php?id=3', '2021-10-21'),
(253, 1, '::1', 'products.php', '2021-10-21'),
(254, 1, '::1', 'add_product.php', '2021-10-21'),
(255, 1, '::1', 'add_product.php', '2021-10-21'),
(256, 1, '::1', 'products.php', '2021-10-21'),
(257, 1, '::1', 'products.php', '2021-10-21'),
(258, 1, '::1', 'delete_product.php?id=1', '2021-10-21'),
(259, 1, '::1', 'stock.php', '2021-10-21'),
(260, 1, '::1', 'admin.php', '2021-10-21'),
(261, 1, '::1', 'products.php', '2021-10-21'),
(262, 1, '::1', 'delete_product.php?id=1', '2021-10-21'),
(263, 1, '::1', 'stock.php', '2021-10-21'),
(264, 1, '::1', 'stock.php', '2021-10-21'),
(265, 1, '::1', 'delete_stock.php?id=1', '2021-10-21'),
(266, 1, '::1', 'stock.php', '2021-10-21'),
(267, 1, '::1', 'delete_stock.php?id=2', '2021-10-21'),
(268, 1, '::1', 'stock.php', '2021-10-21'),
(269, 1, '::1', 'stock.php', '2021-10-21'),
(270, 1, '::1', 'product_search.php', '2021-10-21'),
(271, 1, '::1', 'admin.php', '2021-10-21'),
(272, 1, '::1', 'customers.php', '2021-10-21'),
(273, 1, '::1', 'products.php', '2021-10-21'),
(274, 1, '::1', 'delete_product.php?id=1', '2021-10-21'),
(275, 1, '::1', 'products.php', '2021-10-21'),
(276, 1, '::1', 'delete_product.php?id=2', '2021-10-21'),
(277, 1, '::1', 'products.php', '2021-10-21'),
(278, 1, '::1', 'add_product.php', '2021-10-21'),
(279, 1, '::1', 'add_product.php', '2021-10-21'),
(280, 1, '::1', 'products.php', '2021-10-21'),
(281, 1, '::1', 'add_stock.php?id=3', '2021-10-21'),
(282, 1, '::1', 'add_stock.php?id=3', '2021-10-21'),
(283, 1, '::1', 'stock.php', '2021-10-21'),
(284, 1, '::1', 'add_stock.php', '2021-10-21'),
(285, 1, '::1', 'stock_report.php', '2021-10-21'),
(286, 1, '::1', 'stock_report_process.php', '2021-10-21'),
(287, 1, '::1', 'stock_report.php', '2021-10-21'),
(288, 1, '::1', 'sales_report.php', '2021-10-21'),
(289, 1, '::1', 'sale_report_process.php', '2021-10-21'),
(290, 1, '::1', 'sales_report.php', '2021-10-21'),
(291, 1, '::1', 'daily_sales.php', '2021-10-21'),
(292, 1, '::1', 'monthly_sales.php', '2021-10-21'),
(293, 1, '::1', 'stock_report.php', '2021-10-21'),
(294, 1, '::1', 'stock_report_process.php', '2021-10-21'),
(295, 1, '::1', 'stock_report.php', '2021-10-21'),
(296, 1, '::1', 'sales.php', '2021-10-21'),
(297, 1, '::1', 'orders.php', '2021-10-21'),
(298, 1, '::1', 'add_order_by_customer.php', '2021-10-21'),
(299, 1, '::1', 'customers.php', '2021-10-21'),
(300, 1, '::1', 'stock.php', '2021-10-21'),
(301, 1, '::1', 'customers.php', '2021-10-21'),
(302, 1, '::1', 'media.php', '2021-10-21'),
(303, 1, '::1', 'products.php', '2021-10-21'),
(304, 1, '::1', 'customers.php', '2021-10-21'),
(305, 1, '::1', 'products.php', '2021-10-21'),
(306, 1, '::1', 'customers.php', '2021-10-21'),
(307, 1, '::1', 'media.php', '2021-10-21'),
(308, 1, '::1', 'admin.php', '2021-10-21'),
(309, 1, '::1', 'admin.php', '2021-10-21'),
(310, 1, '::1', 'categories.php', '2021-10-21'),
(311, 1, '::1', 'products.php', '2021-10-21'),
(312, 1, '::1', 'products.php', '2021-10-21'),
(313, 1, '::1', 'products.php', '2021-10-21'),
(314, 1, '::1', 'products.php', '2021-10-21'),
(315, 1, '::1', 'products.php', '2021-10-21'),
(316, 1, '::1', 'add_product.php', '2021-10-21'),
(317, 1, '::1', 'add_product.php', '2021-10-21'),
(318, 1, '::1', 'add_product.php', '2021-10-21'),
(319, 1, '::1', 'add_product.php', '2021-10-21'),
(320, 1, '::1', 'add_product.php', '2021-10-21'),
(321, 1, '::1', 'products.php', '2021-10-21'),
(322, 1, '::1', 'add_product.php', '2021-10-21'),
(323, 1, '::1', 'products.php', '2021-10-21'),
(324, 1, '::1', 'edit_product.php?id=3', '2021-10-21'),
(325, 1, '::1', 'edit_product.php?id=3', '2021-10-21'),
(326, 1, '::1', 'products.php', '2021-10-21'),
(327, 1, '::1', 'edit_product.php?id=3', '2021-10-21'),
(328, 1, '::1', 'products.php', '2021-10-21'),
(329, 1, '::1', 'product_search.php', '2021-10-21'),
(330, 1, '::1', 'product_search.php', '2021-10-21'),
(331, 1, '::1', 'ajax_product.php', '2021-10-21'),
(332, 1, '::1', 'add_order_by_customer.php', '2021-10-21'),
(333, 1, '::1', 'ajax_customer.php', '2021-10-21'),
(334, 1, '::1', 'ajax_customer.php', '2021-10-21'),
(335, 1, '::1', 'ajax_customer.php', '2021-10-21'),
(336, 1, '::1', 'customers.php', '2021-10-21'),
(337, 1, '::1', 'product_search.php', '2021-10-21'),
(338, 1, '::1', 'ajax_product.php', '2021-10-21'),
(339, 1, '::1', 'ajax_product.php', '2021-10-21'),
(340, 1, '::1', 'ajax_product.php', '2021-10-21'),
(341, 1, '::1', 'product_search.php', '2021-10-21'),
(342, 1, '::1', 'ajax_product.php', '2021-10-21'),
(343, 1, '::1', 'ajax_product.php', '2021-10-21'),
(344, 1, '::1', 'ajax_product.php', '2021-10-21'),
(345, 1, '::1', 'products.php', '2021-10-21'),
(346, 1, '::1', 'media.php', '2021-10-21'),
(347, 1, '::1', 'admin.php', '2021-10-21'),
(348, 1, '::1', 'orders.php', '2021-10-21'),
(349, 1, '::1', 'add_order_by_customer.php', '2021-10-21'),
(350, 1, '::1', 'ajax_customer.php', '2021-10-21'),
(351, 1, '::1', 'ajax_customer.php', '2021-10-21'),
(352, 1, '::1', 'ajax_customer.php', '2021-10-21'),
(353, 1, '::1', 'sales.php', '2021-10-21'),
(354, 1, '::1', 'orders.php', '2021-10-21'),
(355, 1, '::1', 'add_order_by_customer.php', '2021-10-21'),
(356, 1, '::1', 'stock_report.php', '2021-10-21'),
(357, 1, '::1', 'stock_report_process.php', '2021-10-21'),
(358, 1, '::1', 'stock_report.php', '2021-10-21'),
(359, 1, '::1', 'orders.php', '2021-10-21'),
(360, 1, '::1', 'users.php', '2021-10-21'),
(361, 1, '::1', 'sales.php', '2021-10-21');

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
(5, 'pngtree-animal-puppy-png-image_3859684.jpg', 'image/jpeg'),
(6, 'pngtree-sit-down-pet-dog-waleski-png-image_3234129.jpg', 'image/jpeg'),
(7, '644-6441620_vital-large-breed-chicken-meal-croquette-chien-senior.png', 'image/jpeg');

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

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `customer`, `notes`, `paymethod`, `date`) VALUES
(103, 'Soumah Ibrahim', '10', 'Cash', '2021-10-21'),
(104, 'Soumah Ibrahim', '', 'Cash', '2021-10-21');

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

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `sku`, `location`, `quantity`, `buy_price`, `sale_price`, `category_id`, `media_id`, `date`) VALUES
(3, 'Produit aliments ours', 'Description Description Description Description Description Description Description Description Description Description Description Description Description Description Description Description Description Description Description Description', 'N/A', 'Abobo', '260', '10000.00', '7500.00', 1, 7, '2020-03-26 09:28:07'),
(5, 'Chien', 'Description Description Description Description Description Description Description Description Description Description  Description Description Description Description Description Description Description Description Description Description  Description Description Description Description Description Description Description Description Description Description', 'race', '15 kg', '100', '20000.00', '90000.00', 2, 5, '2021-10-21 10:54:06'),
(6, 'Oiseau', 'description mange mil', 'mange mil', '0.10kg', '10', '1500.00', '3000.00', 2, 1, '2021-10-21 11:11:43');

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

--
-- Déchargement des données de la table `stock`
--

INSERT INTO `stock` (`id`, `product_id`, `quantity`, `comments`, `date`) VALUES
(3, 3, '20', 'initial stock', '2020-03-26 09:28:07'),
(4, 3, '50', 'initial stock', '2021-10-21 10:50:46'),
(5, 5, '100', 'initial stock', '2021-10-21 10:54:06'),
(6, 3, '160', 'Ajout', '2021-10-21 10:55:00'),
(7, 6, '10', 'initial stock', '2021-10-21 11:11:43');

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
(1, 'Admin User', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1, 'xp0vxidd1.jpg', 1, '2021-10-21 10:32:54'),
(2, 'Supervisor', 'supervisor', '0f4d09e43d208d5e9222322fbc7091ceea1a78c3', 2, 'vk529aeg2.jpg', 1, '2021-10-20 10:53:12'),
(3, 'Default User', 'user', '12dea96fec20593566ab75692c9949596833adc9', 3, 'q73muz1v3.jpg', 1, '2021-10-20 10:43:39');

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=362;

--
-- AUTO_INCREMENT pour la table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
