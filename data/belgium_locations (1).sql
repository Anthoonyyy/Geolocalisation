-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 16 avr. 2024 à 11:24
-- Version du serveur : 8.0.31
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `belgium_locations`
--
CREATE DATABASE IF NOT EXISTS `belgium_locations` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `belgium_locations`;

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user` int UNSIGNED NOT NULL,
  `location` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `location` (`location`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `locations`
--

DROP TABLE IF EXISTS `locations`;
CREATE TABLE IF NOT EXISTS `locations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `long` decimal(9,6) NOT NULL,
  `lat` decimal(8,6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `locations`
--

INSERT INTO `locations` (`id`, `name`, `img_url`, `adresse`, `long`, `lat`) VALUES
(1, 'Les Aventures de Tintin', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/08/aventures_tintin.jpg', 'Rue de l\'Étuve 37 - 1000 Bruxelles', '4.350323', '50.845347'),
(2, 'Le passage', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/02_passage_rue_marche_aux_charbon_001-683x1024.jpg', 'Rue du Marché au Charbon 19 - 1000 Bruxelles', '4.350411', '50.846482'),
(3, 'Bob et Bobette', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/05_bob_bobette_rue_laeken_01_vb-685x1024.jpg', 'Rue de Laeken 116 - 1000 Bruxelles', '4.352087', '50.854687'),
(4, 'Cori le Moussaillon', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/11_cori_mousaillon_rue_fabriques_04_vb-685x1024.jpg', 'Rue des Fabriques 21 - 1000 Bruxelles', '4.341470', '50.848680'),
(5, 'Astérix le Gaulois', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/15_asterix_obelix_rue_buanderie_06-768x576.jpg', 'Rue de la Buanderie 33-35 - 1000 Bruxelles', '4.341801', '50.846931'),
(6, 'Le jeune Albert', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/21_jeune_albert_rue_alexiens_03-768x512.jpg', 'Rue des Alexiens 49 - 1000 Bruxelles', '4.350538', '50.842929'),
(7, 'Lincoln', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/34_lincoln_palais_outre_pont_02_vb-768x512.jpg', 'Rue des Palais-Outre-Ponts 423 - 1020 Laeken', '4.358506', '50.877500'),
(8, 'La Vache', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/39_vache_rue_damier_09_vb-768x514.jpg', 'Rue du Damier 23 - Sleep Well Youth Hostel - 1000 Bruxelles', '4.358200', '50.852968'),
(9, 'Corto Maltese', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/42_Corto_Maltese_Quai_des_-P%C2%AEniches_9-768x514.jpg', 'Quai des Péniches - 1000 Bruxelles', '4.349122', '50.861033'),
(10, 'Quick et Flupke', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/52_quick_flupke_rue_notre_seigneur_01-683x1024.jpg', 'Rue Notre-Seigneur 19 - 1000 Bruxelles', '4.350283', '50.840396'),
(11, 'Spirou', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/53_spirou_rue_notre_dame_graces_04_vb-768x512.jpg', 'Rue Notre Dames des Grâces 3 - 1000 Bruxelles', '4.350489', '50.838116'),
(12, 'Froud & Stouf', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/56_froud_stouf_bd_lemonnier_01_vb-683x1024.jpg', 'Bd Maurice Lemonnier 32 - 1000 Bruxelles', '4.345564', '50.844080'),
(13, 'Jommeke', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/57_jommeke_rue_chanterelle_02-768x512.jpg', 'Rue de la Chanterelle 3 - 1020 Laeken', '4.348336', '50.874694'),
(14, 'In my area', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/63_in-_my_area_rue_chartreux_01-768x1024.jpeg', 'Rue des Chartreux 39 - 1000 Bruxelles', '4.345158', '50.848669'),
(15, 'Jardin aux fleurs', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/64_jardin_fleurs_rue_grand_serment_05-768x1155.jpg', 'Rue du Grand Serment - 1000 Bruxelles', '4.341626', '50.850459'),
(16, 'Lélève Ducobu', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/65_ducobu_rue_six_jetons_01-768x1175.jpg', 'Rue des Six Jetons 25 - 1000 Bruxelles', '4.345121', '50.846594'),
(17, 'La voie lactée', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/68_voie_lactee_tunnel_sallaert_03-768x511.jpg', 'Rue Sallaert - tunnel - 1000 Bruxelles', '4.342596', '50.839472'),
(18, 'Le petit gilet', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/70_petit_gilet_tunnel_basse_04-768x511.jpg', 'Rue Basse - tunnel - 1000 Bruxelles', '4.342035', '50.839199'),
(19, 'Yasmina', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/75_yasmina_rue_verdun_03-768x1024.jpeg', 'Rue de Verdun 560 - 1130 Haren', '4.421027', '50.895995'),
(20, 'Après-midi place Bockstael', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/77_apres_midi_pl_bockstael_04-768x576.jpeg', 'Rue Laneau 1 - 1020 Laeken', '4.346599', '50.877146'),
(21, 'Billy the cat', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/06_billy_the_cat_rue_ophem_01_vb-685x1024.jpg', 'Rue d\'Ophem 24 - 1000 Bruxelles', '4.344980', '50.853589'),
(22, 'Solastalgie', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/78_solastalgie_rue_victor_mabille_2-768x1024.jpeg', 'Rue Victor Mabille 6 - 1020 Laeken', '4.343419', '50.880820'),
(23, 'Olivier Rameau', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/20_olivier_rameau_rue_chene_06-768x1024.jpg', 'Rue du Chêne 9 - 1000 Bruxelles', '4.350186', '50.844640'),
(24, 'La patrouille des Castors', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/26_patrouille_castors_rue_pieremans_03-768x1024.jpg', 'Rue Pieremans 47 - rue Blaes 200 - 1000 Bruxelles', '4.344937', '50.835557'),
(25, 'Passe-moi l\'ciel', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/29_passe_moi_ciel_rue_minimes_09-768x1024.jpg', 'Rue des Minimes 93 - 1000 Bruxelles', '4.351534', '50.838289'),
(26, 'Titeuf', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/30_titeuf_av_bockstael_04_vb-685x1024.jpg', 'Bouvelard Emile Bockstael 1 - 1020 Laeken', '4.343140', '50.869870'),
(27, 'Yoko Tsuno', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/40_yoko_tsuno_rue_terre_neuve_04_vb-683x1024.jpg', 'Rue Terre-Neuve 25 - 1000 Bruxelles', '4.347317', '50.842558'),
(28, 'Thorgal', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/49_thorgal_pl_anneessens_18-768x1024.jpg', 'Place Anneessens 2A - 1000 Bruxelles', '4.344076', '50.843602'),
(29, 'Léonard', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/51_leonard_rue_capucins_01-683x1024.jpg', 'Rue des Capucins 23A - 1000 Bruxelles', '4.347359', '50.838033'),
(30, 'Les Schtroumpfs', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/54_schtroumpfs_carrefour_europe_06_vb-1-768x512.jpg', 'Carrefour de l\'Europe 3 - Passage Hilton - 1000 Bruxelles', '4.355934', '50.845617'),
(31, 'Kinky & Cosy', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/59_kinky_cosi_rue_bogards_01-683x1024.jpg', 'Rue de la Gouttière 24 - 1000 Bruxelles', '4.347728', '50.844783'),
(32, 'Petit Poilu', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/71_petit_poilu_rue_paroisse_01-768x576.jpeg', 'Rue de la Paroisse 34 - 1130 Haren', '4.419909', '50.892449'),
(33, 'Un monde à l\'envers', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/fresco_original_001-768x927.jpg', 'Bd Emile Bockstael 209 A - 1020 Laeken', '4.348990', '50.877999'),
(34, 'La Cabane', 'https://www.parcoursbd.brussels/wp-content/uploads/2022/06/DSC0869-768x1155.jpg', 'Rue du Champ de l\'Eglise 4 - 1020 Laeken', '4.354654', '50.877248'),
(35, 'Boule et Bill', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/24_boule_bill_rue_chevreuil_01-683x1024.jpg', 'Rue du Chevreuil 19 - 1000 Bruxelles', '4.345633', '50.837773'),
(36, 'Jours de sable', 'https://www.parcoursbd.brussels/wp-content/uploads/2022/10/20221123_104925-768x355.jpg', 'Place Saint-Nicolas 14 - 1120 Neder-Over-Heembeek', '4.385780', '50.893620'),
(37, 'XIII', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/41_XIII_rue_champagne_06-768x576.jpeg', 'Rue Philippe de Champagne 31 - 1000 Bruxelles', '4.348264', '50.843160'),
(38, 'Natacha', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/43_natacha_rue_jan_bollen_04-768x1024.jpg', 'Rue Jan Bollen 78 - 1020 Laeken', '4.346778', '50.878858'),
(39, 'Marsupilami', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/48_marsupilami_av_houba_strooper_03_vb-768x512.jpg', 'Avenue Houba de Strooper 141 - 1020 Laeken', '4.337027', '50.890443'),
(40, 'Benoit Brisefer', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/50_benoit_brisefer_rue_haute_01-683x1024.jpg', 'Rue Haute 119 - 1000 Bruxelles', '4.350492', '50.839109'),
(41, 'Crocodiles', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/60_crocodiles_rue_canon_06-768x576.jpeg', 'Angle rue du Canon et rue aux Choux - 1000 Bruxelles', '4.357504', '50.852305'),
(42, 'Les ancêtres bienveillants', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/69_ancetres_bienveillants_tunnel_fontaine_06-768x511.jpg', 'Rue de la Fontaine - tunnel - 1000 Bruxelles', '4.343478', '50.839923'),
(43, 'L\'Arbre', 'https://www.parcoursbd.brussels/wp-content/uploads/2023/07/20230616_113843-768x355.jpg', 'Rue de Lombartzyde 150 - 1120 Neder-Over-Heembeek', '4.375987', '50.893071'),
(44, 'Les Carnets de Cerise', 'https://www.parcoursbd.brussels/wp-content/uploads/2023/07/20230731_111016-710x1536.jpg', 'Rue des Trois Pertuis 4 - 1120 Neder-Over-Heembeek', '4.390690', '50.894875'),
(45, 'L\'ange de Sambre', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/09_archange_xx_ciel_rue_chartreux_04_vb-685x1024.jpg', 'Rue des Chartreux 21 - 1000 Bruxelles', '4.346444', '50.848865'),
(46, 'Les rêves de Nic', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/12_reves_nic_rue_fabriques_01_vb-768x514.jpg', 'Rue des Fabriques 37 - 1000 Bruxelles', '4.340997', '50.848860'),
(47, 'Ric Hochet', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/08/ric_hochet.rue_des_bons_secours.0271_0.jpg', 'Rue du Bon Secours 9 - 1000 Bruxelles', '4.347871', '50.845964'),
(48, 'Blondin et Cirage', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/22_blondin_cirage_rue_capucins_03_vb-685x1024.jpg', 'Rue des Capucins 15 - 1000 Bruxelles', '4.346496', '50.838410'),
(49, 'Martine', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/32_martine_av_reine_06-768x1024.jpeg', 'Avenue de la Reine 325 - 1020 Laeken', '4.357961', '50.876229'),
(50, 'Le Roi des Mouches', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/33_roi_mouches_rue_stiernet_04-768x576.jpg', 'Rue Hubert Stiernet 23 - 1020 Laeken', '4.358191', '50.876678'),
(51, 'Le Petit Spirou', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/35_petit_spirou_bd_centenaire_03_vb-768x512.jpg', 'Bd du Centenaire - Bruparck - 1020 Laeken', '4.338028', '50.894935'),
(52, 'Gaston Lagaffe', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/36_gaston_lagaffe_rue_ecuyer_02-768x1024.jpeg', 'Rue de l\'Ecuyer 15 - 1000 Bruxelles', '4.353255', '50.849305'),
(53, 'Monsieur Jean', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/37_monsieur_jean_rue_bogards_01-scaled-e1631002818434-768x933.jpg', 'Rue des Bogards 28 - 1000 Bruxelles', '4.348085', '50.844439'),
(54, 'Gil Jourdan', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/44_gil_jourdan_rue_leopold_02_vb-768x512.jpg', 'Rue Léopold 1er 201 - 1020 Laeken', '4.344381', '50.877215'),
(55, 'De Kiekeboes', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/45_kiekeboes_av_gros_tilleul_03-768x432.jpg', 'Av du Gros Tilleul 2 - 1020 Laeken', '4.351554', '50.893763'),
(56, 'Grand Loup qui porte le mouton', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/62_grand_loup_rue_saint_jean_nepomucene_05-768x433.jpg', 'Rue Saint-Jean Népomucène 15 - 1000 Bruxelles', '4.353073', '50.855873'),
(57, 'Le Scorpion', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/03_scorpion_rue_treurenberg_001-715x1024.jpg', 'Rue du Treurenberg 14 - 1000 Bruxelles', '4.361810', '50.847685'),
(58, 'Cubitus', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/07_cubitus_rue_flandre_02_vb-685x1024.jpg', 'Rue de Flandre 109 - 1000 Bruxelles', '4.345309', '50.852963'),
(59, 'Blake & Mortimer', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/08_blake_mortimer_rue_temple_01-768x1024.jpeg', 'Rue du Temple 6 - 1000 Bruxelles', '4.351304', '50.839884'),
(60, 'Néron', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/10_neron_pl_saint_gery_03-768x1024.jpeg', 'Place Saint-Géry 20 - 1000 Bruxelles', '4.346852', '50.847851'),
(61, 'Caroline Baldwin', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/13_caroline_baldwin_rue_poudriere_01_vb-768x514.jpg', 'Place de Ninove 10 - 1000 Bruxelles', '4.338761', '50.848896'),
(62, 'Lucky Luke', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/14_lucky_luke_rue_buanderie_03-768x1152.jpg', 'Rue T\'Kint 54 - 1000 Bruxelles', '4.341365', '50.847423'),
(63, 'Victor Sackville', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/18_victor_sackville_rue_marche_charbons_01-683x1024.jpg', 'Rue du Marché au Charbon 60 - 1000 Bruxelles', '4.348803', '50.846225'),
(64, 'Broussaille', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/19_broussaille_rue_marche_charbons_01_vb-1-685x1024.jpg', 'Rue du Marché au Charbon 39 - 1000 Bruxelles', '4.349304', '50.846508'),
(65, 'Odilon Verjus', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/23_odilon_verjus_rue_capucins_05-768x1024.jpg', 'Rue des Capucins 13 - 1000 Bruxelles', '4.346244', '50.838509'),
(66, 'Le petit Jojo', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/25_petit_jojo_rue_pieremans_04_vb-685x1024.jpg', 'Rue Pieremans 43 - 1000 Bruxelles', '4.344525', '50.835744'),
(67, 'Parchis', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/47_parchis_rue_verhoeven-768x512.jpg', 'Rue Verhoeven 2 - 1020 Laeken', '4.342750', '50.870115'),
(68, 'Tour à Plomb', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/66_tour_plomb_rue_abattoir_02-768x512.jpg', 'Rue de l\'Abattoir 22 - 1000 Bruxelles', '4.339530', '50.847880'),
(69, 'Tamara', 'https://www.parcoursbd.brussels/wp-content/uploads/2021/09/67_tamara_rue_ter_plast_01-768x1024.jpg', 'Rue de Ter Plast 26 - 1020 Laeken', '4.344163', '50.881968'),
(70, 'Vandergoten', 'https://www.parcoursbd.brussels/wp-content/uploads/2022/10/20221026_160343-768x1024.jpg', 'Bd Emile Bockstael 304 - 1020 Laeken', '4.347529', '50.879605');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
