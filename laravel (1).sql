-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 18 avr. 2022 à 01:21
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `laravel`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2022-03-31 14:21:21', '2022-03-31 14:21:21'),
(2, NULL, 1, 'Category 2', 'category-2', '2022-03-31 14:21:21', '2022-03-31 14:21:21');

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 1, 1, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 1, 1, 0, 0, 0, '{}', 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '{}', 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '{}', 2),
(31, 5, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, '{}', 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '{}', 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{}', 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(69, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(70, 14, 'code', 'text', 'Code', 0, 1, 1, 1, 1, 1, '{}', 2),
(71, 14, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 3),
(72, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(73, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(74, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(75, 15, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 2),
(76, 15, 'prenom', 'text', 'Prenom', 0, 1, 1, 1, 1, 1, '{}', 3),
(77, 15, 'photo', 'image', 'Photo', 0, 1, 1, 1, 1, 1, '{}', 4),
(78, 15, 'cin', 'text', 'Cin', 0, 1, 1, 1, 1, 1, '{}', 5),
(79, 15, 'drpp', 'text', 'Drpp', 0, 1, 1, 1, 1, 1, '{}', 6),
(80, 15, 'dateRecrut', 'date', 'DateRecrut', 0, 1, 1, 1, 1, 1, '{}', 7),
(81, 15, 'telephone', 'text', 'Telephone', 0, 1, 1, 1, 1, 1, '{}', 8),
(82, 15, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 9),
(83, 15, 'dateNaiss', 'date', 'DateNaiss', 0, 1, 1, 1, 1, 1, '{}', 10),
(84, 15, 'specialite', 'text', 'Specialite', 0, 1, 1, 1, 1, 1, '{\"showAutocompleteInput\":true,\"showLatLngInput\":false}', 11),
(86, 15, 'DossierS', 'file', 'DossierS', 0, 1, 1, 1, 1, 1, '{}', 13),
(87, 15, 'DossierA', 'file', 'DossierA', 0, 1, 1, 1, 1, 1, '{}', 14),
(88, 15, 'DossierP', 'file', 'DossierP', 0, 1, 1, 1, 1, 1, '{}', 15),
(89, 15, 'etat', 'checkbox', 'Etat', 0, 1, 1, 1, 1, 1, '{\"on\":\"Prof interne\",\"off\":\"Prof externe\",\"checked\":true}', 16),
(90, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 1, 1, '{}', 17),
(91, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 18),
(92, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(93, 16, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 2),
(94, 16, 'code', 'text', 'Code', 0, 1, 1, 1, 1, 1, '{}', 3),
(95, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(96, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(97, 15, 'structure', 'text', 'Structure', 0, 1, 1, 1, 1, 1, '{\"showAutocompleteInput\":true,\"showLatLngInput\":false}', 12),
(99, 15, 'professeur_belongsto_specialite_relationship', 'relationship', 'specialites', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Specialite\",\"table\":\"specialites\",\"type\":\"belongsTo\",\"column\":\"specialite\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 19),
(100, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 6),
(101, 15, 'professeur_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"id_user\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 20),
(102, 15, 'id_user', 'text', 'Id User', 0, 1, 1, 1, 1, 1, '{}', 19),
(103, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(104, 17, 'dossier', 'file', 'Dossier', 0, 1, 1, 1, 1, 1, '{}', 2),
(105, 17, 'etat', 'select_dropdown', 'Etat', 0, 1, 1, 1, 0, 0, '{\"default\":\"option1\",\"options\":{\"option1\":\"En Attente \",\"option2\":\"En Cours \",\"option3\":\"Valid\\u00e9 \",\"option4\":\"Refus\\u00e9\"}}', 3),
(107, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(108, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(110, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(111, 18, 'dossier', 'file', 'Dossier', 0, 1, 1, 1, 1, 1, '{}', 2),
(112, 18, 'etat', 'select_dropdown', 'Etat', 0, 1, 1, 1, 0, 0, '{\"default\":\"option1\",\"options\":{\"option1\":\"En Attente \",\"option2\":\"En Cours \",\"option3\":\"Valid\\u00e9 \",\"option4\":\"Refus\\u00e9\"}}', 3),
(114, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(115, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(117, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(118, 19, 'dossier', 'file', 'Dossier', 0, 1, 1, 1, 1, 1, '{}', 2),
(119, 19, 'etat', 'select_dropdown', 'Etat', 0, 1, 1, 1, 0, 0, '{\"default\":\"option1\",\"options\":{\"option1\":\"En Attente \",\"option2\":\"En Cours \",\"option3\":\"Valid\\u00e9 \",\"option4\":\"Refus\\u00e9\"}}', 3),
(121, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(122, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(124, 1, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 12),
(125, 1, 'prenom', 'text', 'Prenom', 0, 1, 1, 1, 1, 1, '{}', 13),
(126, 1, 'cin', 'text', 'Cin', 0, 1, 1, 1, 1, 1, '{}', 14),
(127, 1, 'drpp', 'text', 'Drpp', 0, 1, 1, 1, 1, 1, '{}', 15),
(128, 1, 'DateRecrut', 'text', 'DateRecrut', 0, 1, 1, 1, 1, 1, '{}', 16),
(129, 1, 'telephone', 'text', 'Telephone', 0, 1, 1, 1, 1, 1, '{}', 17),
(130, 1, 'DateNaiss', 'text', 'DateNaiss', 0, 1, 1, 1, 1, 1, '{}', 18),
(131, 1, 'Structure', 'text', 'Structure', 0, 1, 1, 1, 1, 1, '{}', 19),
(132, 1, 'Etat', 'text', 'Etat', 0, 1, 1, 1, 1, 1, '{}', 20),
(133, 1, 'specialites', 'text', 'Specialites', 0, 1, 1, 1, 1, 1, '{}', 21),
(136, 17, 'id_user', 'text', 'Id User', 0, 1, 1, 0, 0, 0, '{}', 4),
(138, 18, 'id_user', 'text', 'Id User', 0, 1, 1, 0, 0, 0, '{}', 4),
(140, 19, 'id_user', 'text', 'Id User', 0, 1, 1, 0, 0, 0, '{}', 4);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'Utilisateur', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-03-31 14:21:20', '2022-04-15 14:11:27'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-03-31 14:21:20', '2022-03-31 14:21:20'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-03-31 14:21:20', '2022-04-07 11:26:18'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2022-03-31 14:21:21', '2022-03-31 14:21:21'),
(5, 'posts', 'posts', 'Graphes', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-03-31 14:21:21', '2022-04-06 23:06:41'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2022-03-31 14:21:21', '2022-03-31 14:21:21'),
(14, 'specialites', 'specialites', 'Specialite', 'Specialites', 'voyager-file-text', 'App\\Specialite', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-03-31 16:02:55', '2022-03-31 16:02:55'),
(15, 'professeurs', 'professeurs', 'Professeur', 'Professeurs', 'voyager-person', 'App\\Professeur', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":\"profs\"}', '2022-03-31 16:36:15', '2022-04-07 11:35:13'),
(16, 'structures', 'structures', 'Structure', 'Structures', 'voyager-categories', 'App\\Structure', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-03-31 16:41:53', '2022-03-31 16:41:53'),
(17, 'dossiers_academiques', 'dossiers-academiques', 'Dossiers Academique', 'Dossiers Academiques', 'voyager-folder', 'App\\DossiersAcademique', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":\"currentUser\"}', '2022-04-13 14:41:10', '2022-04-16 00:23:46'),
(18, 'dossiers_pedagogiques', 'dossiers-pedagogiques', 'Dossiers Pedagogique', 'Dossiers Pedagogiques', 'voyager-folder', 'App\\DossiersPedagogique', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":\"currentUser\"}', '2022-04-13 14:52:38', '2022-04-16 00:24:02'),
(19, 'dossiers_scientifiques', 'dossiers-scientifiques', 'Dossiers Scientifique', 'Dossiers Scientifiques', 'voyager-folder', 'App\\DossiersScientifique', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":\"currentUser\"}', '2022-04-13 15:10:18', '2022-04-16 00:24:21');

-- --------------------------------------------------------

--
-- Structure de la table `dossiers_academiques`
--

CREATE TABLE `dossiers_academiques` (
  `id` int(10) UNSIGNED NOT NULL,
  `dossier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `dossiers_academiques`
--

INSERT INTO `dossiers_academiques` (`id`, `dossier`, `etat`, `id_user`, `created_at`, `updated_at`) VALUES
(12, '[{\"download_link\":\"dossiers-academiques\\\\April2022\\\\YhXd3DeqzfTE6sx0mw0v.zip\",\"original_name\":\"localStorage.zip\"}]', 'En attente', '6', '2022-04-15 14:08:00', '2022-04-15 15:57:36'),
(14, '[{\"download_link\":\"dossiers-academiques\\\\April2022\\\\nMAxLg00iROULFaIzoEk.zip\",\"original_name\":\"meryem (3).zip\"}]', 'option2', '4', '2022-04-15 16:01:00', '2022-04-16 03:23:06'),
(17, '[{\"download_link\":\"dossiers-academiques\\\\April2022\\\\9lRudyrauTiq8SotEaSb.zip\",\"original_name\":\"Event.zip\"}]', 'option3', 'meryem', '2022-04-16 00:25:00', '2022-04-16 04:46:49'),
(18, '[{\"download_link\":\"dossiers-academiques\\\\April2022\\\\ZdAu6BkFGmDaxIvOQuDz.zip\",\"original_name\":\"Code-source-GES_STAGIAIRE-master.zip\"}]', 'en attente', 'meryem', '2022-04-16 04:47:50', '2022-04-16 04:47:50');

-- --------------------------------------------------------

--
-- Structure de la table `dossiers_pedagogiques`
--

CREATE TABLE `dossiers_pedagogiques` (
  `id` int(10) UNSIGNED NOT NULL,
  `dossier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `dossiers_pedagogiques`
--

INSERT INTO `dossiers_pedagogiques` (`id`, `dossier`, `etat`, `id_user`, `created_at`, `updated_at`) VALUES
(3, '[{\"download_link\":\"dossiers-pedagogiques\\\\April2022\\\\RtuljmKAoRJcf63P02QI.zip\",\"original_name\":\"ProjetPHP5.zip\"}]', 'option1', '6', '2022-04-13 23:27:00', '2022-04-14 23:44:25'),
(5, '[{\"download_link\":\"dossiers-pedagogiques\\\\April2022\\\\15ugWbNahojyaKXm40k6.zip\",\"original_name\":\"NiceAdmin.zip\"}]', 'option3', '4', '2022-04-15 16:01:00', '2022-04-15 16:02:31'),
(6, '[{\"download_link\":\"dossiers-pedagogiques\\\\April2022\\\\LIafJfyTMRCyNBwChaCh.zip\",\"original_name\":\"Code-source-GES_STAGIAIRE-master.zip\"}]', 'option2', 'meryem', '2022-04-16 04:48:00', '2022-04-16 04:49:10');

-- --------------------------------------------------------

--
-- Structure de la table `dossiers_scientifiques`
--

CREATE TABLE `dossiers_scientifiques` (
  `id` int(10) UNSIGNED NOT NULL,
  `dossier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-03-31 14:21:20', '2022-03-31 14:21:20');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Tableau de bord', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2022-03-31 14:21:20', '2022-04-15 23:39:22', 'voyager.dashboard', 'null'),
(3, 1, 'Utilisateurs', '', '_self', 'voyager-person', '#000000', NULL, 3, '2022-03-31 14:21:20', '2022-04-07 12:24:05', 'voyager.users.index', 'null'),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2022-03-31 14:21:20', '2022-03-31 14:21:20', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 5, '2022-03-31 14:21:20', '2022-04-15 23:41:21', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2022-03-31 14:21:20', '2022-03-31 14:56:56', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2022-03-31 14:21:20', '2022-03-31 14:56:56', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2022-03-31 14:21:20', '2022-03-31 14:56:56', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2022-03-31 14:21:20', '2022-03-31 14:56:56', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 6, '2022-03-31 14:21:20', '2022-04-15 23:41:21', 'voyager.settings.index', NULL),
(12, 1, 'Graphes', '', '_self', 'voyager-news', '#000000', NULL, 4, '2022-03-31 14:21:21', '2022-04-15 23:41:21', 'voyager.posts.index', 'null'),
(17, 1, 'Specialites', '', '_self', 'voyager-file-text', '#000000', NULL, 7, '2022-03-31 16:02:55', '2022-04-15 23:41:21', 'voyager.specialites.index', 'null'),
(18, 1, 'Professeurs', '', '_self', 'voyager-person', NULL, NULL, 8, '2022-03-31 16:36:15', '2022-04-15 23:41:21', 'voyager.professeurs.index', NULL),
(20, 1, 'profile', '/admin/profile', '_self', 'voyager-person', '#000000', NULL, 9, '2022-04-13 14:23:44', '2022-04-15 23:41:21', NULL, ''),
(21, 1, 'Dossiers Academiques', '', '_self', 'voyager-folder', NULL, 24, 1, '2022-04-13 14:41:10', '2022-04-13 15:19:32', 'voyager.dossiers-academiques.index', NULL),
(22, 1, 'Dossiers Pedagogiques', '', '_self', 'voyager-folder', '#000000', 24, 2, '2022-04-13 14:52:38', '2022-04-13 15:19:32', 'voyager.dossiers-pedagogiques.index', 'null'),
(23, 1, 'Dossiers Scientifiques', '', '_self', 'voyager-folder', NULL, 24, 3, '2022-04-13 15:10:18', '2022-04-13 15:19:32', 'voyager.dossiers-scientifiques.index', NULL),
(24, 1, 'Dossiers', '', '_self', 'voyager-categories', '#000000', NULL, 10, '2022-04-13 15:15:25', '2022-04-15 23:41:21', NULL, '');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2022-03-31 14:21:22', '2022-03-31 14:21:22');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-03-31 14:21:20', '2022-03-31 14:21:20'),
(2, 'browse_bread', NULL, '2022-03-31 14:21:20', '2022-03-31 14:21:20'),
(3, 'browse_database', NULL, '2022-03-31 14:21:20', '2022-03-31 14:21:20'),
(4, 'browse_media', NULL, '2022-03-31 14:21:20', '2022-03-31 14:21:20'),
(5, 'browse_compass', NULL, '2022-03-31 14:21:20', '2022-03-31 14:21:20'),
(6, 'browse_menus', 'menus', '2022-03-31 14:21:20', '2022-03-31 14:21:20'),
(7, 'read_menus', 'menus', '2022-03-31 14:21:20', '2022-03-31 14:21:20'),
(8, 'edit_menus', 'menus', '2022-03-31 14:21:20', '2022-03-31 14:21:20'),
(9, 'add_menus', 'menus', '2022-03-31 14:21:20', '2022-03-31 14:21:20'),
(10, 'delete_menus', 'menus', '2022-03-31 14:21:20', '2022-03-31 14:21:20'),
(11, 'browse_roles', 'roles', '2022-03-31 14:21:20', '2022-03-31 14:21:20'),
(12, 'read_roles', 'roles', '2022-03-31 14:21:20', '2022-03-31 14:21:20'),
(13, 'edit_roles', 'roles', '2022-03-31 14:21:20', '2022-03-31 14:21:20'),
(14, 'add_roles', 'roles', '2022-03-31 14:21:20', '2022-03-31 14:21:20'),
(15, 'delete_roles', 'roles', '2022-03-31 14:21:20', '2022-03-31 14:21:20'),
(16, 'browse_users', 'users', '2022-03-31 14:21:20', '2022-03-31 14:21:20'),
(17, 'read_users', 'users', '2022-03-31 14:21:20', '2022-03-31 14:21:20'),
(18, 'edit_users', 'users', '2022-03-31 14:21:20', '2022-03-31 14:21:20'),
(19, 'add_users', 'users', '2022-03-31 14:21:20', '2022-03-31 14:21:20'),
(20, 'delete_users', 'users', '2022-03-31 14:21:20', '2022-03-31 14:21:20'),
(21, 'browse_settings', 'settings', '2022-03-31 14:21:20', '2022-03-31 14:21:20'),
(22, 'read_settings', 'settings', '2022-03-31 14:21:20', '2022-03-31 14:21:20'),
(23, 'edit_settings', 'settings', '2022-03-31 14:21:20', '2022-03-31 14:21:20'),
(24, 'add_settings', 'settings', '2022-03-31 14:21:20', '2022-03-31 14:21:20'),
(25, 'delete_settings', 'settings', '2022-03-31 14:21:20', '2022-03-31 14:21:20'),
(26, 'browse_categories', 'categories', '2022-03-31 14:21:21', '2022-03-31 14:21:21'),
(27, 'read_categories', 'categories', '2022-03-31 14:21:21', '2022-03-31 14:21:21'),
(28, 'edit_categories', 'categories', '2022-03-31 14:21:21', '2022-03-31 14:21:21'),
(29, 'add_categories', 'categories', '2022-03-31 14:21:21', '2022-03-31 14:21:21'),
(30, 'delete_categories', 'categories', '2022-03-31 14:21:21', '2022-03-31 14:21:21'),
(31, 'browse_posts', 'posts', '2022-03-31 14:21:21', '2022-03-31 14:21:21'),
(32, 'read_posts', 'posts', '2022-03-31 14:21:21', '2022-03-31 14:21:21'),
(33, 'edit_posts', 'posts', '2022-03-31 14:21:21', '2022-03-31 14:21:21'),
(34, 'add_posts', 'posts', '2022-03-31 14:21:21', '2022-03-31 14:21:21'),
(35, 'delete_posts', 'posts', '2022-03-31 14:21:21', '2022-03-31 14:21:21'),
(36, 'browse_pages', 'pages', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(37, 'read_pages', 'pages', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(38, 'edit_pages', 'pages', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(39, 'add_pages', 'pages', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(40, 'delete_pages', 'pages', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(56, 'browse_specialites', 'specialites', '2022-03-31 16:02:55', '2022-03-31 16:02:55'),
(57, 'read_specialites', 'specialites', '2022-03-31 16:02:55', '2022-03-31 16:02:55'),
(58, 'edit_specialites', 'specialites', '2022-03-31 16:02:55', '2022-03-31 16:02:55'),
(59, 'add_specialites', 'specialites', '2022-03-31 16:02:55', '2022-03-31 16:02:55'),
(60, 'delete_specialites', 'specialites', '2022-03-31 16:02:55', '2022-03-31 16:02:55'),
(61, 'browse_professeurs', 'professeurs', '2022-03-31 16:36:15', '2022-03-31 16:36:15'),
(62, 'read_professeurs', 'professeurs', '2022-03-31 16:36:15', '2022-03-31 16:36:15'),
(63, 'edit_professeurs', 'professeurs', '2022-03-31 16:36:15', '2022-03-31 16:36:15'),
(64, 'add_professeurs', 'professeurs', '2022-03-31 16:36:15', '2022-03-31 16:36:15'),
(65, 'delete_professeurs', 'professeurs', '2022-03-31 16:36:15', '2022-03-31 16:36:15'),
(66, 'browse_structures', 'structures', '2022-03-31 16:41:53', '2022-03-31 16:41:53'),
(67, 'read_structures', 'structures', '2022-03-31 16:41:53', '2022-03-31 16:41:53'),
(68, 'edit_structures', 'structures', '2022-03-31 16:41:53', '2022-03-31 16:41:53'),
(69, 'add_structures', 'structures', '2022-03-31 16:41:53', '2022-03-31 16:41:53'),
(70, 'delete_structures', 'structures', '2022-03-31 16:41:53', '2022-03-31 16:41:53'),
(71, 'browse_dossiers_academiques', 'dossiers_academiques', '2022-04-13 14:41:10', '2022-04-13 14:41:10'),
(72, 'read_dossiers_academiques', 'dossiers_academiques', '2022-04-13 14:41:10', '2022-04-13 14:41:10'),
(73, 'edit_dossiers_academiques', 'dossiers_academiques', '2022-04-13 14:41:10', '2022-04-13 14:41:10'),
(74, 'add_dossiers_academiques', 'dossiers_academiques', '2022-04-13 14:41:10', '2022-04-13 14:41:10'),
(75, 'delete_dossiers_academiques', 'dossiers_academiques', '2022-04-13 14:41:10', '2022-04-13 14:41:10'),
(76, 'browse_dossiers_pedagogiques', 'dossiers_pedagogiques', '2022-04-13 14:52:38', '2022-04-13 14:52:38'),
(77, 'read_dossiers_pedagogiques', 'dossiers_pedagogiques', '2022-04-13 14:52:38', '2022-04-13 14:52:38'),
(78, 'edit_dossiers_pedagogiques', 'dossiers_pedagogiques', '2022-04-13 14:52:38', '2022-04-13 14:52:38'),
(79, 'add_dossiers_pedagogiques', 'dossiers_pedagogiques', '2022-04-13 14:52:38', '2022-04-13 14:52:38'),
(80, 'delete_dossiers_pedagogiques', 'dossiers_pedagogiques', '2022-04-13 14:52:38', '2022-04-13 14:52:38'),
(81, 'browse_dossiers_scientifiques', 'dossiers_scientifiques', '2022-04-13 15:10:18', '2022-04-13 15:10:18'),
(82, 'read_dossiers_scientifiques', 'dossiers_scientifiques', '2022-04-13 15:10:18', '2022-04-13 15:10:18'),
(83, 'edit_dossiers_scientifiques', 'dossiers_scientifiques', '2022-04-13 15:10:18', '2022-04-13 15:10:18'),
(84, 'add_dossiers_scientifiques', 'dossiers_scientifiques', '2022-04-13 15:10:18', '2022-04-13 15:10:18'),
(85, 'delete_dossiers_scientifiques', 'dossiers_scientifiques', '2022-04-13 15:10:18', '2022-04-13 15:10:18');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(1, 4),
(1, 5),
(2, 3),
(2, 5),
(3, 3),
(3, 5),
(4, 3),
(4, 5),
(5, 3),
(5, 5),
(6, 3),
(6, 5),
(7, 3),
(7, 5),
(8, 3),
(8, 5),
(9, 3),
(9, 5),
(10, 3),
(10, 5),
(11, 3),
(11, 5),
(12, 3),
(12, 5),
(13, 3),
(13, 5),
(14, 3),
(14, 5),
(15, 3),
(15, 5),
(16, 1),
(16, 3),
(16, 5),
(17, 1),
(17, 3),
(17, 5),
(18, 1),
(18, 3),
(18, 5),
(19, 1),
(19, 3),
(19, 5),
(20, 1),
(20, 3),
(20, 5),
(21, 3),
(21, 5),
(22, 3),
(22, 5),
(23, 3),
(23, 5),
(24, 3),
(24, 5),
(25, 3),
(25, 5),
(26, 3),
(26, 5),
(27, 3),
(27, 5),
(28, 3),
(28, 5),
(29, 3),
(29, 5),
(30, 3),
(30, 5),
(31, 3),
(31, 5),
(32, 3),
(32, 5),
(33, 3),
(33, 5),
(34, 3),
(34, 5),
(35, 3),
(35, 5),
(36, 3),
(36, 5),
(37, 3),
(37, 5),
(38, 3),
(38, 5),
(39, 3),
(39, 5),
(40, 3),
(40, 5),
(56, 1),
(56, 3),
(56, 4),
(56, 5),
(57, 1),
(57, 3),
(57, 4),
(57, 5),
(58, 1),
(58, 3),
(58, 5),
(59, 1),
(59, 3),
(59, 5),
(60, 1),
(60, 3),
(60, 5),
(61, 1),
(61, 3),
(61, 4),
(61, 5),
(62, 1),
(62, 3),
(62, 4),
(62, 5),
(63, 1),
(63, 3),
(63, 4),
(63, 5),
(64, 1),
(64, 3),
(64, 5),
(65, 1),
(65, 3),
(65, 5),
(66, 1),
(66, 3),
(66, 5),
(67, 1),
(67, 3),
(67, 5),
(68, 1),
(68, 3),
(68, 5),
(69, 1),
(69, 3),
(69, 5),
(70, 1),
(70, 3),
(70, 5),
(71, 1),
(71, 3),
(71, 4),
(71, 5),
(72, 1),
(72, 3),
(72, 4),
(72, 5),
(73, 1),
(73, 3),
(73, 5),
(74, 4),
(74, 5),
(75, 4),
(75, 5),
(76, 1),
(76, 3),
(76, 4),
(76, 5),
(77, 1),
(77, 3),
(77, 4),
(77, 5),
(78, 1),
(78, 3),
(78, 5),
(79, 4),
(79, 5),
(80, 4),
(80, 5),
(81, 1),
(81, 3),
(81, 4),
(81, 5),
(82, 1),
(82, 3),
(82, 4),
(82, 5),
(83, 1),
(83, 3),
(83, 5),
(84, 4),
(84, 5),
(85, 4),
(85, 5);

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-03-31 14:21:21', '2022-03-31 14:21:21'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-03-31 14:21:21', '2022-03-31 14:21:21'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-03-31 14:21:21', '2022-03-31 14:21:21'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-03-31 14:21:21', '2022-03-31 14:21:21');

-- --------------------------------------------------------

--
-- Structure de la table `professeurs`
--

CREATE TABLE `professeurs` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drpp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateRecrut` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateNaiss` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `structure` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `professeurs`
--

INSERT INTO `professeurs` (`id`, `nom`, `prenom`, `photo`, `cin`, `drpp`, `dateRecrut`, `telephone`, `email`, `dateNaiss`, `specialite`, `structure`, `etat`, `created_at`, `updated_at`, `id_user`) VALUES
(6, 'hanine', 'hanine', 'professeurs\\April2022\\7D8dQWOE0lNQdcbeVCkV.jpg', 'h6656', NULL, '2010-02-13 00:00:00', '252662727', 'hanine@gmail.com', '1986-01-15 00:00:00', NULL, 'Laboratoire des Sciences de l’Ingénieur Pour l’Energie (LabSIPE)', '1', '2022-04-07 12:02:00', '2022-04-07 12:02:12', 4),
(7, 'lachgar', 'lachgar', 'professeurs\\April2022\\p0ETJD1GqoNh7spc2aMo.jpg', 'CD762367', NULL, '2011-01-12 00:00:00', '27272627', 'lachgar@gmail.com', '1976-09-18 00:00:00', '1', 'OOOO', '1', '2022-04-07 12:02:00', '2022-04-07 12:02:26', 5),
(8, 'YOUSFI', 'Meryem', 'professeurs\\May2022\\RzlAtuZGEhQlh83nK69t.jpg', 'DJ40125', NULL, '2024-01-15 00:00:00', '+33762911820', 'meryem@gmail.com', '2001-01-15 00:00:00', '1', 'Laboratoire des Sciences de l’Ingénieur Pour l’Energie (LabSIPE)', '1', '2022-05-07 12:20:00', '2022-05-07 12:20:38', 6);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-03-31 14:21:20', '2022-03-31 14:21:20'),
(2, 'user', 'Normal User', '2022-03-31 14:21:20', '2022-03-31 14:21:20'),
(3, 'supAdmin', 'SuperAdministrateur', '2022-03-31 17:10:05', '2022-03-31 17:10:05'),
(4, 'professeur', 'professeur', '2022-04-01 19:11:06', '2022-04-01 19:11:06'),
(5, 'admin1', 'admin1', '2022-04-15 23:46:19', '2022-04-15 23:46:19');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\April2022\\0xUkGnNeL1dOyBsidx8w.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `specialites`
--

CREATE TABLE `specialites` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `specialites`
--

INSERT INTO `specialites` (`id`, `code`, `nom`, `created_at`, `updated_at`) VALUES
(1, '2022', 'informatique', '2022-03-31 16:09:57', '2022-03-31 16:09:57'),
(2, '2023', 'mathematiques', '2022-03-31 16:10:36', '2022-03-31 16:10:36'),
(3, 'ind', 'industriel', '2022-04-07 11:03:22', '2022-04-07 11:03:22');

-- --------------------------------------------------------

--
-- Structure de la table `structures`
--

CREATE TABLE `structures` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2022-03-31 14:21:22', '2022-03-31 14:21:22'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2022-03-31 14:21:22', '2022-03-31 14:21:22');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drpp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DateRecrut` date DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DateNaiss` date DEFAULT NULL,
  `Structure` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Etat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialites` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `nom`, `prenom`, `cin`, `drpp`, `DateRecrut`, `telephone`, `DateNaiss`, `Structure`, `Etat`, `specialites`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$OXlV2upfj7POLaASEqW8P.j3FRbNp1kuJAEWhf3ZNt/aW9lAlqnEy', 'ApsyoDJ8GP9CkKSzT85OB9gBTyN4chhebX1joz5L8MvS6NXutSgIkRIyHQWZ', NULL, '2022-03-31 14:21:21', '2022-03-31 14:21:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 'superadmin', 'superadmin@gmail.com', 'users/default.png', NULL, '$2y$10$Aks/TLHDqEOwB7tghhzRn.szO7rAnUIXAcIiE5dI6cCh97p1e.RcO', NULL, '{\"locale\":\"en\"}', '2022-04-01 19:25:58', '2022-04-15 15:55:05', NULL, 'super admin', 'DJ40125', '1233', NULL, '38839', '2001-01-15', NULL, NULL, 'informatique'),
(4, 4, 'hanine', 'hanine@gmail.com', 'users\\April2022\\bm7ywwftk6BAU9udcJO1.jpg', NULL, '$2y$10$fA9VzunF7XLdkvZr/2sAmuou9WR7jmcQGsgLu7k0FS8Cgr1WqqOMG', NULL, '{\"locale\":\"en\"}', '2022-04-07 11:33:57', '2022-04-13 14:27:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 4, 'lachgar', 'lachgar@gmail.com', 'users/default.png', NULL, '$2y$10$Plxqjzb.eVI2wLzJFW.LiukH970IihPBpLt4K3mGyVHjViJ6/AyRq', NULL, '{\"locale\":\"en\"}', '2022-04-07 11:43:39', '2022-04-07 11:43:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 4, 'Meryem', 'meryem@gmail.com', 'users/default.png', NULL, '$2y$10$TGCP3iydn6UwMFfWDjuSP.0GLc8Oq2T7zNhK7wvW2/Ltw8TzsA2Xy', NULL, '{\"locale\":\"en\"}', '2022-05-07 12:17:58', '2022-05-07 12:17:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 2, 'Meryem', 'meryemelyoussfi175@gmail.com', 'users/default.png', NULL, '$2y$10$ywsVsCCDRr7rrP4CicTo6OQUsdFC9CN0skAC0UH0JDuAhHu3VpbHC', NULL, NULL, '2022-04-13 14:09:28', '2022-04-13 14:09:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, 'elhadi', 'elhadirefki@gfhf.com', 'users/default.png', NULL, '$2y$10$02/GU9Td4sZ6zytVY/vrj.uKafCA/8vBObF3BQT03e/L608r8F4UO', NULL, NULL, '2022-04-14 00:04:03', '2022-04-14 00:04:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, NULL, 'elhadi', 'elhadirefki1234@gfhf.com', 'users/default.png', NULL, '$2y$10$2tG6vdWzAnaVVWFzUddpfOmHU3EwKewXozH2gKYdp4YPLKDwgRGDe', NULL, NULL, '2022-04-14 00:08:01', '2022-04-14 00:08:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 2, 'Meryem YOUSFI', 'meryemelyoussfi17566@gmail.com', 'users/default.png', '2022-04-14 00:15:22', '$2y$10$H.JQQGVWpvNqo2EHs.MLkePhLyfHMOQYevfYRJTXr5nhiolG5JWwW', NULL, NULL, '2022-04-14 00:14:41', '2022-04-14 00:15:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 2, 'DOHA YOUSFI', 'dohayousfi2020@gmail.com', 'users/default.png', '2022-04-14 14:54:41', '$2y$10$4RjkrNehMaAimY/mya587OJdUC8Pno/VzVZLLsRDo2cSUHXzZ6mve', NULL, NULL, '2022-04-14 14:53:47', '2022-04-14 14:54:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 2, 'piw', 'piwpiw@gmail.com', 'users/default.png', NULL, '$2y$10$//qtGLd56dU6CvM4aHtfuuJFg7YiQvDKizqKlTvkkT1eWT3jEc1nO', NULL, NULL, '2022-04-14 14:56:58', '2022-04-14 14:56:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 2, 'amine', 'amine@gmail.com', 'users/default.png', NULL, '$2y$10$ekpZDl4AZjJYFv1L9M/2jewjuBhzIc6gBO8NUlHYHEOCWTWXySGlS', NULL, NULL, '2022-04-15 00:20:24', '2022-04-15 00:20:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 2, 'rabab', 'rabab@gmail.com', 'users/default.png', NULL, '$2y$10$mqMQm.ESSqacHgzcr9g1Ju9d.rSWVyrGqk6N4Uqvyuzi0etMGx4fW', NULL, NULL, '2022-04-15 05:26:47', '2022-04-15 05:26:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 2, 'rabab', 'rabab123@gmail.com', 'users/default.png', NULL, '$2y$10$vrDX4y5FVKL3ngCB5LjK5uekwIrQWlG9lIhlJLWRLXVmp08.eXrEi', NULL, NULL, '2022-04-15 05:28:38', '2022-04-15 05:28:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 2, 'doha', 'doha@gmail.com', 'users/default.png', NULL, '$2y$10$UIoaNmmjCmTHDGS1NMUws.wF1.O3L5rs.f6j5qcVzBDbdKBofhnmK', NULL, NULL, '2022-04-15 15:07:06', '2022-04-15 15:07:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 2, 'douae', 'douae@gmail.com', 'users/default.png', '2022-04-15 15:11:10', '$2y$10$9wtGlSaBiVnz4G/NXLPh2OUBc/i6XKcPo.l2kdppx9c8APALDSJci', NULL, NULL, '2022-04-15 15:09:58', '2022-04-15 15:11:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 2, 'douae', 'douae2@gmail.com', 'users/default.png', '2022-04-15 15:33:20', '$2y$10$BuBU7K.SIHgqninHwFO2V.Arq413TmErSND9qWINaXEaN.FsHKVBW', NULL, NULL, '2022-04-15 15:32:40', '2022-04-15 15:33:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 2, 'douae', 'douae3@gmail.com', 'users/default.png', '2022-04-15 15:39:25', '$2y$10$SeAtqzY8H7gMHLYNk2DmRe3BDHd0zWCdvOqb0HeplyEy9N7j0KO3W', NULL, NULL, '2022-04-15 15:39:00', '2022-04-15 15:39:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 4, 'meryem', 'meryem2@gmail.com', 'users/default.png', NULL, '$2y$10$BoI3JL5SoJqZJHHA/AnyaOQSOLy1FJ.QoDEbdYEwJaT3KEOSPGvHG', NULL, '{\"locale\":\"fr\"}', '2022-04-15 15:58:45', '2022-04-15 23:44:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 5, 'admin2', 'admin2@gmail.com', 'users/default.png', NULL, '$2y$10$OIZgU2yyVeorzwkltLHfJ.R5tNDpoQbUdI8OEQG78luUJfc/PLVWG', NULL, '{\"locale\":\"fr\"}', '2022-04-15 23:43:45', '2022-04-15 23:53:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 2, 'meryem3', 'meryem3@gmail.com', 'users/default.png', '2022-04-16 03:22:26', '$2y$10$nukkXaLf5d/42/7S4hOqb.TpgjqBFt2vE885BwPUwZTqgSkNUQNui', NULL, NULL, '2022-04-16 03:21:49', '2022-04-16 03:22:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 2, 'meryem4', 'meryem4@gmail.com', 'users/default.png', '2022-04-16 03:25:58', '$2y$10$j/q7BtMFrrEZhHCHig5GA.Su3SyGPhwnAFXOK5vqVDUWf9AF7Xk8e', NULL, NULL, '2022-04-16 03:25:23', '2022-04-16 03:25:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 2, 'meryem9', 'meryem9@gmail.com', 'users/default.png', '2022-04-16 04:45:37', '$2y$10$aBWURKkuQm3kovBA6syywe5PZZGHzgqJq77DCEiLa4hoPs99gsNzi', NULL, NULL, '2022-04-16 04:44:51', '2022-04-16 04:45:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(4, 4),
(5, 4),
(6, 4),
(20, 4),
(21, 5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Index pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Index pour la table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Index pour la table `dossiers_academiques`
--
ALTER TABLE `dossiers_academiques`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dossiers_pedagogiques`
--
ALTER TABLE `dossiers_pedagogiques`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dossiers_scientifiques`
--
ALTER TABLE `dossiers_scientifiques`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Index pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Index pour la table `professeurs`
--
ALTER TABLE `professeurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Index pour la table `specialites`
--
ALTER TABLE `specialites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `structures`
--
ALTER TABLE `structures`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `dossiers_academiques`
--
ALTER TABLE `dossiers_academiques`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `dossiers_pedagogiques`
--
ALTER TABLE `dossiers_pedagogiques`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `dossiers_scientifiques`
--
ALTER TABLE `dossiers_scientifiques`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `professeurs`
--
ALTER TABLE `professeurs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `specialites`
--
ALTER TABLE `specialites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `structures`
--
ALTER TABLE `structures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
