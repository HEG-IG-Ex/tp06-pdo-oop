-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : jeu. 10 mars 2022 à 13:40
-- Version du serveur :  5.7.32
-- Version de PHP : 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `BasesCC`
--

-- --------------------------------------------------------

--
-- Structure de la table `sommets`
--

CREATE TABLE `sommets` (
  `som_id` int(11) NOT NULL,
  `som_nom` varchar(255) NOT NULL,
  `som_region` varchar(255) NOT NULL,
  `som_altitude` int(11) NOT NULL,
  `som_coord` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sommets`
--

INSERT INTO `sommets` (`som_id`, `som_nom`, `som_region`, `som_altitude`, `som_coord`) VALUES
(1, 'Everest', 'Mahalangur Himal, Himalaya', 8848, NULL),
(2, 'K2', 'Baltoro Muztagh, Karakoram', 8611, NULL),
(3, 'Kangchenjunga', 'Kangchenjunga, Himalaya', 8586, NULL),
(4, 'Lhotse', 'Mahalangur Himal, Himalaya', 8516, NULL),
(5, 'Makalu', 'Mahalangur Himal, Himalaya', 8485, NULL),
(6, 'Cho Oyu', 'Mahalangur Himal, Himalaya', 8188, NULL),
(7, 'Dhaulagiri I', 'Dhaulagiri, Himalaya', 8167, NULL),
(8, 'Manaslu', 'Manaslu, Himalaya', 8163, NULL),
(9, 'Nanga Parbat', 'Nanga Parbat, Himalaya', 8126, NULL),
(10, 'Annapurna I', 'Annapurna, Himalaya', 8091, NULL),
(11, 'Gasherbrum I', 'Baltoro Muztagh, Karakoram', 8080, NULL),
(12, 'Broad Peak', 'Baltoro Muztagh, Karakoram', 8051, NULL),
(13, 'Gasherbrum II', 'Baltoro Muztagh, Karakoram', 8034, NULL),
(14, 'Shishapangma', 'Langtang, Himalaya', 8027, NULL),
(15, 'Gyachung Kang', 'Mahalangur Himal, Himalaya', 7952, NULL),
(16, 'Gasherbrum III', 'Baltoro Muztagh, Karakoram', 7946, NULL),
(17, 'Annapurna II', 'Annapurna, Himalaya', 7937, NULL),
(18, 'Gasherbrum IV', 'Baltoro Muztagh, Karakoram', 7932, NULL),
(19, 'Himalchuli', 'Manaslu, Himalaya', 7893, NULL),
(20, 'Distaghil Sar', 'Hispar Muztagh, Karakoram', 7884, NULL),
(21, 'Ngadi Chuli', 'Manaslu, Himalaya', 7871, NULL),
(22, 'Nuptse', 'Mahalangur Himal, Himalaya', 7864, NULL),
(23, 'Khunyang Chhish', 'Hispar Muztagh, Karakoram', 7823, NULL),
(24, 'Masherbrum', 'Masherbrum, Karakoram', 7821, NULL),
(25, 'Nanda Devi', 'Kumaon Himalaya', 7816, NULL),
(26, 'Chomo Lonzo', 'Mahalangur Himal, Himalaya', 7804, NULL),
(27, 'Batura Sar', 'Batura Muztagh, Karakoram', 7795, NULL),
(28, 'Kanjut Sar', 'Hispar Muztagh, Karakoram', 7790, NULL),
(29, 'Rakaposhi', 'Rakaposhi-Haramosh, Karakoram', 7788, NULL),
(30, 'Namcha Barwa', 'Assam, Himalaya', 7782, NULL),
(31, 'Kamet', 'Garhwal Himalaya, Himalaya', 7756, NULL),
(32, 'Dhaulagiri II', 'Dhaulagiri, Himalaya', 7751, NULL),
(33, 'Saltoro Kangri', 'Saltoro Muztagh, Karakoram', 7742, NULL),
(34, 'Jannu', 'Kangchenjunga, Himalaya', 7711, NULL),
(35, 'Tirich Mir', 'Hindou Kouch', 7708, NULL),
(36, 'Molamenqing', 'Langtang, Himalaya', 7703, NULL),
(37, 'Gurla Mandhata', 'Nalakankar Himal, Himalaya', 7694, NULL),
(38, 'Saser Kangri I', 'Saser Muztagh, Karakoram', 7672, NULL),
(39, 'Chogolisa', 'Masherbrum, Karakoram', 7665, NULL),
(40, 'Dhaulagiri IV', 'Dhaulagiri, Himalaya', 7661, NULL),
(41, 'Kongur Tagh', 'Chaînon Kashgar, Cordillère du Kunlun', 7649, NULL),
(42, 'Dhaulagiri V', 'Dhaulagiri, Himalaya', 7618, NULL),
(43, 'Shispare', 'Batura Muztagh, Karakoram', 7611, NULL),
(44, 'Trivor', 'Hispar Muztagh, Karakoram', 7577, NULL),
(45, 'Gangkhar Puensum', 'Kula Kangri, Himalaya', 7570, NULL),
(46, 'Minya Konka', 'Daxue Shan', 7556, NULL),
(47, 'Annapurna III', 'Annapurna, Himalaya', 7555, NULL),
(48, 'Mustagh Ata', 'Chaînon Kashgar, Cordillère du Kunlun', 7546, NULL),
(49, 'Skyang Kangri', 'Baltoro Muztagh, Karakoram', 7545, NULL),
(50, 'Changtse', 'Mahalangur Himal, Himalaya', 7543, NULL),
(51, 'Kula Kangri', 'Kula Kangri, Himalaya', 7538, NULL),
(52, 'Kongur Tiube', 'Chaînon Kashgar, Cordillère du Kunlun', 7530, NULL),
(53, 'Mamostong Kangri', 'Rimo Muztagh, Karakoram', 7516, NULL),
(54, 'Saser Kangri II E', 'Saser Muztagh, Karakoram', 7513, NULL),
(55, 'Saser Kangri III', 'Saser Muztagh, Karakoram', 7495, NULL),
(56, 'Pic Ismail Samani', 'Chaînon de l\'Académie des Sciences, Pamir', 7495, NULL),
(57, 'Pumari Chhish', 'Hispar Muztagh, Karakoram', 7492, NULL),
(58, 'Noshaq', 'Hindou Kouch', 7492, NULL),
(59, 'Pasu Sar', 'Batura Muztagh, Karakoram', 7476, NULL),
(60, 'Yukshin Gardan Sar', 'Hispar Muztagh, Karakoram', 7469, NULL),
(61, 'Teram Kangri I', 'Siachen Muztagh, Karakoram', 7462, NULL),
(62, 'Pic Jongsong', 'Kangchenjunga, Himalaya', 7462, NULL),
(63, 'Malubiting', 'Rakaposhi-Haramosh, Karakoram', 7458, NULL),
(64, 'Gangapurna', 'Annapurna, Himalaya', 7455, NULL),
(65, 'Jengish Chokusu', 'Tian Shan', 7439, NULL),
(66, 'K12', 'Saltoro Muztagh, Karakoram', 7428, NULL),
(67, 'Sia Kangri', 'Siachen Muztagh, Karakoram', 7422, NULL),
(68, 'Yangra (Ganesh I)', 'Ganesh Himal, Himalaya', 7422, NULL),
(69, 'Momhil Sar', 'Hispar Muztagh, Karakoram', 7414, NULL),
(70, 'Kabru N', 'Kangchenjunga, Himalaya', 7412, NULL),
(71, 'Skil Brum', 'Baltoro Muztagh, Karakoram', 7410, NULL),
(72, 'Haramosh', 'Rakaposhi-Haramosh, Karakoram', 7409, NULL),
(73, 'Istor-o-Nal', 'Hindou Kouch', 7403, NULL),
(74, 'Ghent Kangri', 'Saltoro Muztagh, Karakoram', 7401, NULL),
(75, 'Ultar Sar', 'Batura Muztagh, Karakoram', 7388, NULL),
(76, 'Rimo I', 'Rimo Muztagh, Karakoram', 7385, NULL),
(77, 'Churen Himal', 'Dhaulagiri, Himalaya', 7385, NULL),
(78, 'Teram Kangri III', 'Siachen Muztagh, Karakoram', 7382, NULL),
(79, 'Sherpi Kangri', 'Saltoro Muztagh, Karakoram', 7380, NULL),
(80, 'Labuche Kang', 'Labuche, Himalaya', 7367, NULL),
(81, 'Kirat Chuli', 'Kangchenjunga, Himalaya', 7362, NULL),
(82, 'Abi Gamin', 'Garhwal Himalaya, Himalaya', 7355, NULL),
(83, 'Nangpai Gosum', 'Mahalangur Himal, Himalaya', 7350, NULL),
(84, 'Gimmigela', 'Kangchenjunga, Himalaya', 7350, NULL),
(85, 'Saraghrar', 'Hindou Kouch', 7349, NULL),
(86, 'Chamlang', 'Mahalangur Himal, Himalaya', 7321, NULL),
(87, 'Chomolhari4', 'Chomolhari, Himalaya', 7315, NULL),
(88, 'Chongtar', 'Baltoro Muztagh, Karakoram', 7315, NULL),
(89, 'Baltoro Kangri', 'Masherbrum, Karakoram', 7312, NULL),
(90, 'Siguang Ri', 'Mahalangur Himal, Himalaya', 7309, NULL),
(91, 'The Crown', 'Yengisogat, Karakoram', 7295, NULL),
(92, 'Gyala Peri', 'Assam, Himalaya', 7294, NULL),
(93, 'Porong Ri', 'Langtang, Himalaya', 7292, NULL),
(94, 'Baintha Brakk (l\'Ogre)', 'Panmah Muztagh, Karakoram', 7285, NULL),
(95, 'Yutmaru Sar', 'Hispar Muztagh, Karakoram', 7283, NULL),
(96, 'Baltistan Peak (K6)', 'Masherbrum, Karakoram', 7282, NULL),
(97, 'Kangpenqing', 'Baiku, Himalaya', 7281, NULL),
(98, 'Muztagh Tower', 'Baltoro Muztagh, Karakoram', 7276, NULL),
(99, 'Mana', 'Garhwal Himalaya, Himalaya', 7272, NULL),
(100, 'Dhaulagiri VI', 'Dhaulagiri, Himalaya', 7268, NULL),
(101, 'Diran', 'Rakaposhi-Haramosh, Karakoram', 7266, NULL),
(102, 'Labuche Kang III / E5', 'Labuche, Himalaya', 7250, NULL),
(103, 'Putha Hiunchuli', 'Dhaulagiri, Himalaya', 7246, NULL),
(104, 'Apsarasas Kangri', 'Siachen Muztagh, Karakoram', 7245, NULL),
(105, 'Mukut Parbat', 'Garhwal Himalaya, Himalaya', 7242, NULL),
(106, 'Rimo III', 'Rimo Muztagh, Karakoram', 7233, NULL),
(107, 'Langtang Lirung', 'Langtang, Himalaya', 7227, NULL),
(108, 'Karjiang', 'Kula Kangri, Himalaya', 7221, NULL),
(109, 'Annapurna Dakshin', 'Annapurna, Himalaya', 7219, NULL),
(110, 'Khartaphu', 'Mahalangur Himal, Himalaya', 7213, NULL),
(111, 'Tongshanjiabu', 'Lunana, Himalaya', 7207, NULL),
(112, 'Malangutti Sar', 'Hispar Muztagh, Karakoram', 7207, NULL),
(113, 'Noijin Kangsang / Norin Kang', 'Nagarze, Himalaya', 7206, NULL),
(114, 'Langtang Ri', 'Langtang, Himalaya', 7205, NULL),
(115, 'Kangphu Kang', 'Lunana, Himalaya', 7204, NULL),
(116, 'Singhi Kangri', 'Siachen Muztagh, Karakoram', 7202, NULL),
(117, 'Lupghar Sar', 'Hispar Muztagh, Karakoram', 7200, NULL),
(118, 'Mont Blanc', 'France', 4809, NULL),
(119, 'Grossglockner', 'Autriche', 3798, NULL),
(120, 'Finsteraarhorn', 'Suisse', 4274, NULL),
(121, 'Wildspitze', 'Autriche', 3768, NULL),
(122, 'Piz Bernina', 'Suisse', 4049, NULL),
(123, 'Hochkönig', 'Autriche', 2941, NULL),
(124, 'Pointe Dufour', 'Suisse', 4634, NULL),
(125, 'Hoher Dachstein', 'Autriche', 2995, NULL),
(126, 'Marmolada', 'Italie', 3343, NULL),
(127, 'Mont Viso', 'Italie', 3841, NULL),
(128, 'Triglav', 'Slovénie', 2864, NULL),
(129, 'Barre des Écrins', 'France', 4102, NULL),
(130, 'Säntis', 'Suisse', 2503, NULL),
(131, 'Ortles', 'Italie', 3905, NULL),
(132, 'Monte Baldo', 'Italie', 2218, NULL),
(133, 'Grand Paradis', 'Italie', 4061, NULL),
(134, 'Pizzo di Coca', 'Italie', 3050, NULL),
(135, 'Cima Dodici', 'Italie', 2336, NULL),
(136, 'Dents du Midi', 'Suisse', 3257, NULL),
(137, 'Chamechaude', 'France', 2082, NULL),
(138, 'Zugspitze', 'Allemagne / Autriche', 2962, NULL),
(139, 'Antelao', 'Italie', 3263, NULL),
(140, 'Arcalod', 'France', 2217, NULL),
(141, 'Grintovec', 'Slovénie', 2558, NULL),
(142, 'Grosser Priel', 'Autriche', 2515, NULL),
(143, 'Grigna Settentrionale', 'Italie', 2410, NULL),
(144, 'Monte Bondone', 'Italie', 2180, NULL),
(145, 'Cima Presanella', 'Italie', 3558, NULL),
(146, 'Birnhorn', 'Autriche', 2634, NULL),
(147, 'Col Nudo', 'Italie', 2472, NULL),
(148, 'Pointe Percée', 'France', 2753, NULL),
(149, 'Montasch', 'Italie', 2752, NULL),
(150, 'Polinik', 'Autriche', 2784, NULL),
(151, 'Tödi', 'Suisse', 3614, NULL),
(152, 'Birkkarspitze', 'Autriche', 2749, NULL),
(153, 'Ellmauer Halt', 'Autriche', 2344, NULL),
(154, 'Grande Tête de l\'Obiou', 'France', 2790, NULL),
(155, 'Cima Tosa', 'Italie', 3173, NULL),
(156, 'Hochtor', 'Autriche', 2369, NULL),
(157, 'Grimming', 'Autriche', 2351, NULL),
(158, 'Grand Combin', 'Suisse', 4314, NULL),
(159, 'La Tournette', 'France', 2351, NULL),
(160, 'Piz Kesch', 'Suisse', 3418, NULL),
(161, 'Zirbitzkogel', 'Autriche', 2396, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `sommets`
--
ALTER TABLE `sommets`
  ADD PRIMARY KEY (`som_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `sommets`
--
ALTER TABLE `sommets`
  MODIFY `som_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
