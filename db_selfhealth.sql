-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2021 at 07:29 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_selfhealth`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_akun`
--

CREATE TABLE `tb_akun` (
  `id_akun` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `usia` int(11) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `tinggi_badan` double(11,0) NOT NULL,
  `berat_badan` double(11,0) NOT NULL,
  `diet` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tb_akun`
--

INSERT INTO `tb_akun` (`id_akun`, `fullname`, `username`, `password`, `tanggal_lahir`, `usia`, `jenis_kelamin`, `tinggi_badan`, `berat_badan`, `diet`, `register_date`) VALUES
(32, 'audrey', 'audrey', '200c6c827295131d59ec36370f91e1a5', '2021-06-15', 0, 'Perempuan', 100, 100, 'no', '2021-06-15 05:17:42'),
(34, 'user', 'user', 'ee11cbb19052e40b07aac0ca060c23ee', '1998-10-10', 22, 'Perempuan', 170, 150, 'yes', '2021-06-15 05:19:07');

-- --------------------------------------------------------

--
-- Table structure for table `tb_data_makanan`
--

CREATE TABLE `tb_data_makanan` (
  `id_dm` int(11) NOT NULL,
  `food_name` varchar(41) DEFAULT NULL,
  `calories` int(8) DEFAULT NULL,
  `taste` varchar(6) DEFAULT NULL,
  `cuisene` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_data_makanan`
--

INSERT INTO `tb_data_makanan` (`id_dm`, `food_name`, `calories`, `taste`, `cuisene`) VALUES
(1, 'Artichoke', 60, 'Bitter', 'Vegetables'),
(2, 'Arugula', 1, 'Bitter', 'Vegetables'),
(3, 'Asparagus', 2, 'Bitter', 'Vegetables'),
(4, 'Aubergine', 115, 'Bitter', 'Vegetables'),
(5, 'Beetroot', 35, 'Bitter', 'Vegetables'),
(6, 'Bell Pepper', 15, 'Sweets', 'Vegetables'),
(7, 'Black Olives', 2, 'Bitter', 'Vegetables'),
(8, 'Broccoli', 207, 'Bitter', 'Vegetables'),
(9, 'Brussels Sprouts', 8, 'Sweets', 'Vegetables'),
(10, 'Cabbage', 227, 'Bitter', 'Vegetables'),
(11, 'Capsicum', 12, 'Sweets', 'Vegetables'),
(12, 'Carrot', 25, 'Sweets', 'Vegetables'),
(13, 'Cauliflower', 3, 'Swett', 'Vegetables'),
(14, 'Celery', 6, 'Salty', 'Vegetables'),
(15, 'Chard', 9, 'Sweets', 'Vegetables'),
(16, 'Cherry Tomato', 20, 'Sweets', 'Vegetables'),
(17, 'Chicory', 38, 'Bitter', 'Vegetables'),
(18, 'Chinese Cabbage', 134, 'Sweets', 'Vegetables'),
(19, 'Chives', 1, 'Bitter', 'Vegetables'),
(20, 'Collard Greens', 12, 'Bitter', 'Vegetables'),
(21, 'Corn', 562, 'Sweets', 'Vegetables'),
(22, 'Courgette', 33, 'Bitter', 'Vegetables'),
(23, 'Creamed Spinach', 148, 'Salty', 'Vegetables'),
(24, 'Cucumber', 66, 'Bitter', 'Vegetables'),
(25, 'Eggplant', 115, 'Sweets', 'Vegetables'),
(26, 'Endive', 87, 'Bitter', 'Vegetables'),
(27, 'Fennel', 73, 'Bitter', 'Vegetables'),
(28, 'Garlic', 4, 'Bitter', 'Vegetables'),
(29, 'Gherkin', 9, 'Sour', 'Vegetables'),
(30, 'Gourd', 108, 'Bitter', 'Vegetables'),
(31, 'Green Beans', 34, 'Bitter', 'Vegetables'),
(32, 'Green Olives', 2, 'Sour', 'Vegetables'),
(33, 'Green Onion', 5, 'Bitter', 'Vegetables'),
(34, 'Horseradish', 7, 'Bitter', 'Vegetables'),
(35, 'Kale', 33, 'Bitter', 'Vegetables'),
(36, 'Kohlrabi', 108, 'Bitter', 'Vegetables'),
(37, 'Kumara', 112, 'Sweets', 'Vegetables'),
(38, 'Leek', 54, 'Bitter', 'Vegetables'),
(39, 'Lettuce', 90, 'Bitter', 'Vegetables'),
(40, 'Mushrooms', 1, 'Sweets', 'Vegetables'),
(41, 'Mustard Greens', 15, 'Bitter', 'Vegetables'),
(42, 'Nori', 1, 'Salty', 'Vegetables'),
(43, 'Okra', 4, 'Sweets', 'Vegetables'),
(44, 'Olives', 2, 'Salty', 'Vegetables'),
(45, 'Onion', 34, 'Bitter', 'Vegetables'),
(46, 'Parsnips', 128, 'Sweets', 'Vegetables'),
(47, 'Peas', 79, 'Sweets', 'Vegetables'),
(48, 'Pepper', 20, 'Sweets', 'Vegetables'),
(49, 'Potato', 164, 'Salty', 'Vegetables'),
(50, 'Pumpkin', 51, 'Sweets', 'Vegetables'),
(51, 'Radishes', 1, 'Sweets', 'Vegetables'),
(52, 'Red Cabbage', 7, 'Sweets', 'Vegetables'),
(53, 'Rutabaga', 147, 'Bitter', 'Vegetables'),
(54, 'Shallots', 18, 'Sweets', 'Vegetables'),
(55, 'Spinach', 78, 'Sweets', 'Vegetables'),
(56, 'Squash', 88, 'Sweets', 'Vegetables'),
(57, 'Sweets Potato', 112, 'Sweets', 'Vegetables'),
(58, 'Tomato', 20, 'Sweets', 'Vegetables'),
(59, 'Turnip Greens', 34, 'Bitter', 'Vegetables'),
(60, 'Turnips', 34, 'Sweets', 'Vegetables'),
(61, 'Wasabi', 184, 'Bitter', 'Vegetables'),
(62, 'Winter Squash', 147, 'Sweets', 'Vegetables'),
(63, 'Zucchini', 33, 'Sweets', 'Vegetables'),
(64, 'Acai', 20, 'Sweets', 'Fruits'),
(65, 'Apple', 95, 'Sweets', 'Fruits'),
(66, 'Applesauce', 167, 'Sweets', 'Fruits'),
(67, 'Apricot', 17, 'Sweets', 'Fruits'),
(68, 'Avocado', 320, 'Bitter', 'Fruits'),
(69, 'Banana', 111, 'Sweets', 'Fruits'),
(70, 'Blackberries', 62, 'Sour', 'Fruits'),
(71, 'Blood Oranges', 70, 'Sweets', 'Fruits'),
(72, 'Blueberries', 84, 'Sour', 'Fruits'),
(73, 'Cantaloupe', 23, 'Sweets', 'Fruits'),
(74, 'Cherries', 4, 'Sweets', 'Fruits'),
(75, 'Clementine', 35, 'Sweets', 'Fruits'),
(76, 'Cranberries', 46, 'Sweets', 'Fruits'),
(77, 'Currants', 63, 'Sweets', 'Fruits'),
(78, 'Custard Apple', 136, 'Sweets', 'Fruits'),
(79, 'Dates', 20, 'Sweets', 'Fruits'),
(80, 'Figs', 37, 'Sweets', 'Fruits'),
(81, 'Fruit salad', 125, 'Sweets', 'Fruits'),
(82, 'Grapes', 104, 'Sweets', 'Fruits'),
(83, 'Greengage', 2, 'Sweets', 'Fruits'),
(84, 'Guava', 37, 'Sweets', 'Fruits'),
(85, 'Jackfruit', 143, 'Sweets', 'Fruits'),
(86, 'Jujube', 22, 'Sweets', 'Fruits'),
(87, 'Kiwi', 112, 'Sweets', 'Fruits'),
(88, 'Lemon', 17, 'Sour', 'Fruits'),
(89, 'Lime', 20, 'Bitter', 'Fruits'),
(90, 'Lychees', 7, 'Sweets', 'Fruits'),
(91, 'Mandarin Oranges', 47, 'Sweets', 'Fruits'),
(92, 'Mango', 202, 'Sweets', 'Fruits'),
(93, 'Minneola', 70, 'Sweets', 'Fruits'),
(94, 'Mulberries', 60, 'Sweets', 'Fruits'),
(95, 'Nectarine', 66, 'Sweets', 'Fruits'),
(96, 'Olives', 2, 'Salty', 'Vegetables'),
(97, 'Orange', 62, 'Sweets', 'Fruits'),
(98, 'Papaya', 215, 'Sweets', 'Fruits'),
(99, 'Passion Fruit', 17, 'Sweets', 'Fruits'),
(100, 'Peach', 59, 'Sweets', 'Fruits'),
(101, 'Pear', 101, 'Sweets', 'Fruits'),
(102, 'Persimmon', 32, 'Sweets', 'Fruits'),
(103, 'Physalis', 2, 'Sweets', 'Fruits'),
(104, 'Pineapple', 453, 'Sweets', 'Fruits'),
(105, 'Plantains', 218, 'Sweets', 'Fruits'),
(106, 'Plum', 30, 'Sweets', 'Fruits'),
(107, 'Pomegranate', 234, 'Sweets', 'Fruits'),
(108, 'Quince', 52, 'Sour', 'Fruits'),
(109, 'Raisins', 434, 'Sweets', 'Fruits'),
(110, 'Rambutan', 7, 'Sweets', 'Fruits'),
(111, 'Raspberries', 64, 'Sweets', 'Fruits'),
(112, 'Rhubarb', 11, 'Sour', 'Fruits'),
(113, 'Starfruit', 28, 'Sweets', 'Fruits'),
(114, 'Strawberries', 49, 'Sweets', 'Fruits'),
(115, 'Tamarind', 5, 'Sweets', 'Fruits'),
(116, 'Tangerine', 47, 'Sweets', 'Fruits'),
(117, 'Watermelon', 86, 'Sweets', 'Fruits'),
(118, 'Baby Back Ribs', 360, 'Salty', 'Western'),
(119, 'Bacon and Eggs', 539, 'Salty', 'Western'),
(120, 'Baked Beans', 244, 'Salty', 'Western'),
(121, 'BBQ Ribs', 360, 'Salty', 'Western'),
(122, 'Beef Stew', 186, 'Salty', 'Western'),
(123, 'Biryani', 484, 'Salty', 'Indian'),
(124, 'Black Pudding', 101, 'Salty', 'Western'),
(125, 'Black Rice', 323, 'Salty', 'Rice'),
(126, 'BLT', 593, 'Salty', 'Western'),
(127, 'Brown Rice', 670, 'Salty', 'Rice'),
(128, 'Burrito', 326, 'Salty', 'Western'),
(129, 'Butter Chicken', 490, 'Salty', 'Western'),
(130, 'California Roll', 33, 'Salty', 'Western'),
(131, 'Chicken Caesar Salad', 392, 'Salty', 'Fast Food'),
(132, 'Chicken Fried Steak', 423, 'Salty', 'Western'),
(133, 'Chicken Marsala', 2209, 'Salty', 'Western'),
(134, 'Chicken Parmesan', 250, 'Salty', 'Western'),
(135, 'Chicken Pot Pie', 673, 'Salty', 'Western'),
(136, 'Chicken Tikka Masala', 195, 'Salty', 'Western'),
(137, 'Chili con Carne', 266, 'Salty', 'Western'),
(138, 'Chimichanga', 418, 'Salty', 'Western'),
(139, 'Cobb Salad', 632, 'Salty', 'Fast Food'),
(140, 'Collard Greens', 13, 'Salty', 'Fast Food'),
(141, 'Corn Dog', 438, 'Salty', 'Fast Food'),
(142, 'Corned Beef Hash', 349, 'Salty', 'Western'),
(143, 'Cottage Pie', 523, 'Salty', 'Western'),
(144, 'Dal', 304, 'Salty', 'Indian'),
(145, 'Deviled Eggs', 62, 'Salty', 'Snacks'),
(146, 'Dim Sum', 37, 'Salty', 'Snacks'),
(147, 'Dosa', 287, 'Salty', 'Indian'),
(148, 'Enchiladas', 323, 'Salty', 'Mexican'),
(149, 'Fajita', 290, 'Salty', 'Mexican'),
(150, 'Fish and Chips', 585, 'Salty', 'Seafood'),
(151, 'Fried Rice', 662, 'Salty', 'Rice'),
(152, 'Fried Shrimp', 75, 'Salty', 'Snacks'),
(153, 'Grilled Cheese Sandwich', 392, 'Salty', 'Fast Food'),
(154, 'Ham and Cheese Sandwich', 352, 'Salty', 'Fast Food'),
(155, 'Hummus', 435, 'Salty', 'Middle Eastern'),
(156, 'Jambalaya', 250, 'Salty', 'Middle Eastern'),
(157, 'Kebab', 774, 'Salty', 'Middle Eastern'),
(158, 'Lasagne', 284, 'Salty', 'Pasta'),
(159, 'Mac and Cheese', 699, 'Salty', 'Pasta'),
(160, 'Macaroni and Cheese', 699, 'Salty', 'Pasta'),
(161, 'Mashed Potatoes', 174, 'Salty', 'Western'),
(162, 'Meat Pie', 290, 'Salty', 'Western'),
(163, 'Meatloaf', 721, 'Salty', 'Western'),
(164, 'Naan', 260, 'Salty', 'Middle Eastern'),
(165, 'Orange Chicken', 420, 'Salty', 'Fast Food'),
(166, 'Pad Thai', 375, 'Salty', 'Snacks'),
(167, 'Paella', 200, 'Salty', 'Seafood'),
(168, 'Paratha', 260, 'Salty', 'Middle Eastern'),
(169, 'Pea Soup', 190, 'Salty', 'Soup'),
(170, 'Peanut Butter Sandwich', 200, 'Sweets', 'Fast Food'),
(171, 'Peking Duck', 401, 'Salty', 'Duck'),
(172, 'Philly Cheese Steak', 300, 'Salty', 'Fast Food'),
(173, 'Pizza', 272, 'Salty', 'Pizza'),
(174, 'Pork Chop', 295, 'Salty', 'Fast Food'),
(175, 'Potato Salad', 136, 'Salty', 'Fast Food'),
(176, 'Pulled Pork Sandwich', 551, 'Salty', 'Fast Food'),
(177, 'Ramen', 380, 'Salty', 'Noodles'),
(178, 'Ravioli', 134, 'Salty', 'Pasta'),
(179, 'Reuben Sandwich', 641, 'Salty', 'Fast Food'),
(180, 'Roast Beef', 23, 'Salty', 'Western'),
(181, 'Roast Dinner', 240, 'Salty', 'Western'),
(182, 'Samosa', 107, 'Salty', 'Snacks'),
(183, 'Sausage Roll', 361, 'Salty', 'Snacks'),
(184, 'Sausage Rolls', 101, 'Salty', 'Snacks'),
(185, 'Shepherds Pie', 159, 'Salty', 'Western'),
(186, 'Shrimp Cocktail', 130, 'Salty', 'Seafood'),
(187, 'Sloppy Joe', 101, 'Salty', 'Western'),
(188, 'Sloppy Joes', 397, 'Salty', 'Western'),
(189, 'Spaghetti Bolognese', 374, 'Salty', 'Pasta'),
(190, 'Spring Roll', 350, 'Salty', 'Middle Eastern'),
(191, 'Spring Rolls', 350, 'Salty', 'Middle Eastern'),
(192, 'Taco', 213, 'Salty', 'Mexican'),
(193, 'Tandoori Chicken', 198, 'Salty', 'Chicken'),
(194, 'Yorkshire Pudding', 83, 'Sweets', 'Snacks'),
(195, 'Amaranth', 716, 'Salty', 'Western'),
(196, 'Barley', 556, 'Salty', 'Rice'),
(197, 'Barley Groats', 31, 'Salty', 'Rice'),
(198, 'Brown Rice', 757, 'Salty', 'Rice'),
(199, 'Buckwheat', 583, 'Salty', 'Fast Food'),
(200, 'Buckwheat Groats', 567, 'Salty', 'Fast Food'),
(201, 'Corn Waffles', 110, 'Salty', 'Fast Food'),
(202, 'Cornmeal', 442, 'Salty', 'Fast Food'),
(203, 'Cornstarch', 488, 'Salty', 'Fast Food'),
(204, 'Couscous', 650, 'Salty', 'Middle Eastern'),
(205, 'Cracker', 35, 'Sweets', 'Snacks'),
(206, 'Durum Wheat Semolina', 119, 'Salty', 'Pasta'),
(207, 'Flaxseed', 897, 'Salty', 'Fast Food'),
(208, 'Freekeh', 832, 'Sweets', 'Fast Food'),
(209, 'Gluten', 104, 'Salty', 'Bakery'),
(210, 'Grissini', 20, 'Salty', 'Bakery'),
(211, 'Kamut', 627, 'Salty', 'Rice'),
(212, 'Millet', 484, 'Sweets', 'Fast Food'),
(213, 'Millet Flour', 521, 'Sweets', 'Fast Food'),
(214, 'Millet Gruel', 80, 'Sweets', 'Fast Food'),
(215, 'Oat Bran', 231, 'Sweets', 'Fast Food'),
(216, 'Pearl Barley', 553, 'Sweets', 'Fast Food'),
(217, 'Polenta', 549, 'Sweets', 'Middle Eastern'),
(218, 'Prawn Crackers', 16, 'Salty', 'Snacks'),
(219, 'Pretzel Sticks', 46, 'Salty', 'Snacks'),
(220, 'Quinoa', 626, 'Sweets', 'Indian'),
(221, 'Rusk', 41, 'Sweets', 'Snacks'),
(222, 'Rye Bran', 422, 'Sweets', 'Rice'),
(223, 'Sago', 99, 'Sweets', 'Fast Food'),
(224, 'Savoury Biscuits', 139, 'Sweets', 'Snacks'),
(225, 'Shortbread', 95, 'Sweets', 'Bakery'),
(226, 'Spelt', 588, 'Sweets', 'Fast Food'),
(227, 'Spelt Bran', 283, 'Sweets', 'Fast Food'),
(228, 'Spelt Semolina', 601, 'Sweets', 'Fast Food'),
(229, 'Sunflower Seeds', 818, 'Sweets', 'Snacks'),
(230, 'Tortilla', 467, 'Salty', 'Mexican'),
(231, 'Tortilla Chips', 160, 'Salty', 'Snacks'),
(232, 'Wheat Bran', 125, 'Sweets', 'Fast Food'),
(233, 'Wheat Germ', 432, 'Sweets', 'Fast Food'),
(234, 'Wheat Gluten', 10, 'Sweets', 'Fast Food'),
(235, 'Wheat Semolina', 601, 'Sweets', 'Fast Food'),
(236, 'Wheat Starch', 386, 'Sweets', 'Fast Food'),
(237, 'Whole Grain Wheat', 407, 'Sweets', 'Fast Food'),
(238, 'Wholegrain Oat', 300, 'Sweets', 'Fast Food'),
(239, 'Almond Oil', 123, 'Sweets', 'Oil'),
(240, 'Apricot Kernel Oil', 124, 'Sweets', 'Oil'),
(241, 'Argan Oil', 125, 'Sweets', 'Oil'),
(242, 'Avocado Oil', 120, 'Bitter', 'Oil'),
(243, 'Babassu Oil', 124, 'Sweets', 'Oil'),
(244, 'Canola Oil', 124, 'Sweets', 'Oil'),
(245, 'Coconut Oil', 120, 'Sweets', 'Oil'),
(246, 'Corn Oil', 120, 'Sweets', 'Oil'),
(247, 'Cottonseed Oil', 123, 'Sweets', 'Oil'),
(248, 'Flaxseed Oil', 124, 'Sweets', 'Oil'),
(249, 'Grape Seed Oil', 124, 'Sweets', 'Oil'),
(250, 'Hazelnut Oil', 124, 'Sweets', 'Oil'),
(251, 'Linseed Oil', 117, 'Sweets', 'Oil'),
(252, 'Menhaden Oil', 128, 'Sweets', 'Oil'),
(253, 'Mustard Oil', 124, 'Salty', 'Oil'),
(254, 'Oat Oil', 124, 'Sweets', 'Oil'),
(255, 'Olive Oil', 120, 'Sweets', 'Oil'),
(256, 'Palm Kernel Oil', 123, 'Sweets', 'Oil'),
(257, 'Palm Oil', 123, 'Sweets', 'Oil'),
(258, 'Peanut Oil', 120, 'Sweets', 'Oil'),
(259, 'Poppy Seed Oil', 124, 'Sweets', 'Oil'),
(260, 'Pumpkin Seed Oil', 123, 'Sweets', 'Oil'),
(261, 'Rice Bran Oil', 124, 'Sweets', 'Oil'),
(262, 'Safflower Oil', 120, 'Sweets', 'Oil'),
(263, 'Salmon Oil', 128, 'Sweets', 'Oil'),
(264, 'Sesame Oil', 124, 'Sweets', 'Oil'),
(265, 'Shea Oil', 124, 'Sweets', 'Oil'),
(266, 'Soy Oil', 123, 'Sweets', 'Oil'),
(267, 'Sunflower Oil', 124, 'Sweets', 'Oil'),
(268, 'Tomato Seed Oil', 124, 'Sweets', 'Oil'),
(269, 'Vegetable Oil', 120, 'Bitter', 'Oil'),
(270, 'Walnut Oil', 124, 'Sweets', 'Oil'),
(271, 'Wheat Germ Oil', 130, 'Sweets', 'Oil'),
(272, 'Alphabet Soup', 62, 'Sweets', 'Soups'),
(273, 'Bean Stew', 335, 'Sweets', 'Mexican'),
(274, 'Beef Bouillon', 7, 'Salty', 'Paste'),
(275, 'Beef Noodle Soup', 83, 'Salty', 'Soups'),
(276, 'Beef Soup', 70, 'Salty', 'Soups'),
(277, 'Bouillon', 39, 'Salty', 'Soups'),
(278, 'Broccoli Cheese Soup', 264, 'Salty', 'Soups'),
(279, 'Broccoli Soup', 206, 'Salty', 'Soups'),
(280, 'Cabbage Soup', 69, 'Salty', 'Soups'),
(281, 'Carrot Ginger Soup', 95, 'Sweets', 'Soups'),
(282, 'Carrot Soup', 95, 'Sweets', 'Soups'),
(283, 'Chicken Bouillon', 10, 'Salty', 'Chicken'),
(284, 'Chicken Broth', 39, 'Salty', 'Chicken'),
(285, 'Chicken Gumbo Soup', 56, 'Salty', 'Soups'),
(286, 'Chicken Noodle Soup', 62, 'Salty', 'Soups'),
(287, 'Chicken Stock', 39, 'Salty', 'Chicken'),
(288, 'Chicken Vegetable Soup', 77, 'Salty', 'Soups'),
(289, 'Chicken with Rice Soup', 58, 'Salty', 'Soups'),
(290, 'Cream of Asparagus Soup', 85, 'Salty', 'Soups'),
(291, 'Cream of Broccoli Soup', 140, 'Salty', 'Soups'),
(292, 'Cream of Celery Soup', 92, 'Salty', 'Soups'),
(293, 'Cream of Chicken Soup', 117, 'Salty', 'Soups'),
(294, 'Cream of Mushroom Soup', 97, 'Salty', 'Soups'),
(295, 'Cream of Onion Soup', 107, 'Salty', 'Soups'),
(296, 'Cream of Potato Soup', 73, 'Salty', 'Soups'),
(297, 'Creamy Chicken Noodle Soup', 56, 'Salty', 'Soups'),
(298, 'French Onion Soup', 56, 'Salty', 'Soups'),
(299, 'Golden Mushroom Soup', 161, 'Salty', 'Soups'),
(300, 'Goulash', 1887, 'Salty', 'Soups'),
(301, 'Instant Ramen', 371, 'Salty', 'Noodles'),
(302, 'Lentil Soup', 139, 'Salty', 'Middle Eastern'),
(303, 'Lobster Bisque Soup', 248, 'Salty', 'Seafood'),
(304, 'Meatball Soup', 120, 'Salty', 'Soups'),
(305, 'Minestrone', 82, 'Salty', 'Soups'),
(306, 'Mushroom Soup', 85, 'Salty', 'Soups'),
(307, 'Noodle Soup', 83, 'Salty', 'Soups'),
(308, 'Onion Soup', 56, 'Salty', 'Soups'),
(309, 'Oxtail Soup', 68, 'Bitter', 'Soups'),
(310, 'Pea Soup', 190, 'Bitter', 'Soups'),
(311, 'Potato Soup', 192, 'Salty', 'Soups'),
(312, 'Pumpkin Soup', 71, 'Sweets', 'Soups'),
(313, 'Ramen', 371, 'Salty', 'Noodles'),
(314, 'Scotch Broth', 80, 'Salty', 'Soups'),
(315, 'Succotash', 221, 'Salty', 'Western'),
(316, 'Thai Soup', 147, 'Sour', 'Thai'),
(317, 'Tomato Rice Soup', 116, 'Sweets', 'Soups'),
(318, 'Tomato Soup', 74, 'Sweets', 'Soups'),
(319, 'Vegetable Beef Soup', 76, 'Salty', 'Soups'),
(320, 'Vegetable Broth', 12, 'Salty', 'Vegetables'),
(321, 'Vegetable Soup', 67, 'Salty', 'Soups'),
(322, 'Vegetable Stock', 12, 'Salty', 'Vegetables'),
(323, 'Wedding Soup', 130, 'Salty', 'Soups'),
(324, 'Baskin-Robbins', 170, 'Sweets', 'Sweetss'),
(325, 'Ben and Jerry’s', 210, 'Sweets', 'Sweetss'),
(326, 'Butter Pecan Ice Cream', 280, 'Sweets', 'Sweetss'),
(327, 'Carvel', 449, 'Sweets', 'Sweetss'),
(328, 'Chocolate Chip Ice Cream', 155, 'Sweets', 'Sweetss'),
(329, 'Chocolate Ice Cream', 156, 'Sweets', 'Sweetss'),
(330, 'Ciao Bella', 240, 'Salty', 'Western'),
(331, 'Coffee Ice Cream', 170, 'Sweets', 'Sweetss'),
(332, 'Cold Stone Creamery', 329, 'Sweets', 'Sweetss'),
(333, 'Cookie Dough Ice Cream', 130, 'Sweets', 'Sweetss'),
(334, 'Crunchie McFlurry', 318, 'Sweets', 'Sweetss'),
(335, 'Dairy Milk McFlurry', 340, 'Sweets', 'Sweetss'),
(336, 'Dippin Dots', 381, 'Sweets', 'Sweetss'),
(337, 'Double Rainbow', 185, 'Sweets', 'Sweetss'),
(338, 'Drumsticks', 360, 'Bitter', 'Vegetables'),
(339, 'French Vanilla Ice Cream', 145, 'Sweets', 'Sweetss'),
(340, 'Friendly’s', 140, 'Sweets', 'Sweetss'),
(341, 'Healthy Choice', 80, 'Sweets', 'Sweetss'),
(342, 'Hot Fudge Sundae', 333, 'Sweets', 'Sweetss'),
(343, 'Ice Cream Sandwich', 265, 'Sweets', 'Sweetss'),
(344, 'Ice Cream Sundae', 253, 'Sweets', 'Sweetss'),
(345, 'Ice Milk', 164, 'Sweets', 'Sweetss'),
(346, 'Magnolia', 166, 'Sweets', 'Sweetss'),
(347, 'Magnum', 258, 'Sweets', 'Sweetss'),
(348, 'Magnum Almond', 271, 'Sweets', 'Sweetss'),
(349, 'Magnum Double Caramel', 305, 'Sweets', 'Sweetss'),
(350, 'Magnum Double Chocolate', 327, 'Sweets', 'Sweetss'),
(351, 'Magnum Gold', 290, 'Sweets', 'Sweetss'),
(352, 'Magnum White', 255, 'Sweets', 'Sweetss'),
(353, 'McFlurry', 205, 'Sweets', 'Sweetss'),
(354, 'McFlurry Oreo', 340, 'Sweets', 'Sweetss'),
(355, 'Mini Milk', 30, 'Sweets', 'Beverages'),
(356, 'Mint Chocolate Chip Ice Cream', 172, 'Sweets', 'Sweetss'),
(357, 'Rocky Road Ice Cream', 290, 'Sweets', 'Sweetss'),
(358, 'Schwan’s', 177, 'Sweets', 'Sweetss'),
(359, 'Smarties McFlurry', 400, 'Sweets', 'Sweetss'),
(360, 'Snickers Ice Cream', 180, 'Sweets', 'Sweetss'),
(361, 'Soft Serve', 191, 'Sweets', 'Sweetss'),
(362, 'Solero', 75, 'Sweets', 'Sweetss'),
(363, 'Strawberry Ice Cream', 170, 'Sweets', 'Sweetss'),
(364, 'Strawberry Sundae', 281, 'Sweets', 'Sweetss'),
(365, 'Sundae', 155, 'Sweets', 'Sweetss'),
(366, 'Turkey Hill', 190, 'Sweets', 'Sweetss'),
(367, 'Vanilla Cone', 230, 'Sweets', 'Sweetss'),
(368, 'Vanilla Ice Cream', 145, 'Sweets', 'Sweetss'),
(369, 'Cannelloni', 82, 'Salty', 'Pasta'),
(370, 'Capellini', 198, 'Salty', 'Pasta'),
(371, 'Cappelletti', 92, 'Salty', 'Pasta'),
(372, 'Cellophane Noodles', 491, 'Salty', 'Noodles'),
(373, 'Cheese Tortellini', 329, 'Salty', 'Pasta'),
(374, 'Dampfnudel', 233, 'Sweets', 'Bakery'),
(375, 'Dumpling Dough', 55, 'Sweets', 'Bakery'),
(376, 'Durum Wheat Semolina', 222, 'Salty', 'Vegetables'),
(377, 'Egg Noodles', 146, 'Salty', 'Noodles'),
(378, 'Farfalle', 200, 'Salty', 'Pasta'),
(379, 'Fettuccine', 198, 'Salty', 'Pasta'),
(380, 'Fusilli', 197, 'Salty', 'Pasta'),
(381, 'Glass Noodles', 108, 'Salty', 'Noodles'),
(382, 'Lasagne Sheets', 57, 'Salty', 'Pasta'),
(383, 'Linguine', 200, 'Salty', 'Pasta'),
(384, 'Low Carb Pasta', 158, 'Salty', 'Pasta'),
(385, 'Macaroni', 422, 'Salty', 'Pasta'),
(386, 'Manicotti', 200, 'Salty', 'Pasta'),
(387, 'Mostaccioli', 103, 'Salty', 'Pasta'),
(388, 'Orecchiette', 207, 'Salty', 'Pasta'),
(389, 'Orzo', 200, 'Salty', 'Pasta'),
(390, 'Penne', 197, 'Salty', 'Pasta'),
(391, 'Penne Rigate', 207, 'Salty', 'Pasta'),
(392, 'Pierogi', 200, 'Salty', 'Pasta'),
(393, 'Ravioli', 43, 'Salty', 'Pasta'),
(394, 'Rigatoni', 198, 'Salty', 'Pasta'),
(395, 'Rotini', 198, 'Salty', 'Pasta'),
(396, 'Shells', 300, 'Salty', 'Seafood'),
(397, 'Shirataki Noodles', 10, 'Salty', 'Noodles'),
(398, 'Soy Noodles', 121, 'Salty', 'Noodles'),
(399, 'Spaetzle', 206, 'Salty', 'Pasta'),
(400, 'Spaghetti', 207, 'Salty', 'Pasta'),
(401, 'Spinach Tortellini', 320, 'Salty', 'Pasta'),
(402, 'Spirelli', 206, 'Salty', 'Pasta'),
(403, 'Tagliatelle', 207, 'Salty', 'Pasta'),
(404, 'Tortellini', 329, 'Salty', 'Pasta'),
(405, 'Vermicelli', 206, 'Salty', 'Pasta'),
(406, 'Whole Grain Noodles', 194, 'Salty', 'Noodles'),
(407, 'Whole Grain Spaghetti', 197, 'Salty', 'Pasta'),
(408, 'Ziti', 197, 'Salty', 'Pasta'),
(409, 'BBQ Chicken Pizza', 309, 'Salty', 'Pizza'),
(410, 'BBQ Pizza', 314, 'Salty', 'Pizza'),
(411, 'Beef Pizza', 714, 'Salty', 'Pizza'),
(412, 'Bianca Pizza', 460, 'Salty', 'Pizza'),
(413, 'Buffalo Chicken Pizza', 600, 'Salty', 'Pizza'),
(414, 'Calabrese Pizza', 254, 'Salty', 'Pizza'),
(415, 'Calzone', 841, 'Salty', 'Pizza'),
(416, 'Capricciosa Pizza', 192, 'Salty', 'Pizza'),
(417, 'Cheese Pizza', 168, 'Salty', 'Pizza'),
(418, 'Chicken Pizza', 309, 'Salty', 'Pizza'),
(419, 'Deep Dish Pizza', 313, 'Salty', 'Pizza'),
(420, 'Dominos Philly Cheese Steak Pizza', 356, 'Salty', 'Pizza'),
(421, 'Four Cheese Pizza', 250, 'Salty', 'Pizza'),
(422, 'Goat Cheese Pizza', 138, 'Salty', 'Pizza'),
(423, 'Grilled Pizza', 280, 'Salty', 'Pizza'),
(424, 'Hawaiian Pizza', 154, 'Salty', 'Pizza'),
(425, 'Margherita Pizza', 173, 'Salty', 'Pizza'),
(426, 'Mozzarella Pizza', 154, 'Salty', 'Pizza'),
(427, 'Mushroom Pizza', 611, 'Salty', 'Pizza'),
(428, 'Napoli Pizza', 248, 'Salty', 'Pizza'),
(429, 'New York Style Pizza', 174, 'Salty', 'Pizza'),
(430, 'Pepperoni Pizza', 181, 'Salty', 'Pizza'),
(431, 'Pizza Dough', 130, 'Sweets', 'Pizza'),
(432, 'Pizza Hut Stuffed Crust Pizza', 380, 'Salty', 'Pizza'),
(433, 'Pizza Hut Supreme Pizza', 305, 'Salty', 'Pizza'),
(434, 'Pizza Rolls', 35, 'Salty', 'Pizza'),
(435, 'Quattro Formaggi Pizza', 330, 'Salty', 'Pizza'),
(436, 'Red Pepper Pizza', 165, 'Salty', 'Pizza'),
(437, 'Salami Pizza', 181, 'Salty', 'Pizza'),
(438, 'Sausage Pizza', 177, 'Salty', 'Pizza'),
(439, 'Seafood Pizza', 186, 'Salty', 'Pizza'),
(440, 'Shrimp Pizza', 190, 'Salty', 'Pizza'),
(441, 'Sicilian Pizza', 321, 'Salty', 'Pizza'),
(442, 'Spinach Feta Pizza', 150, 'Salty', 'Pizza'),
(443, 'Spinach Pizza', 145, 'Salty', 'Pizza'),
(444, 'Stuffed Crust Pizza', 380, 'Salty', 'Pizza'),
(445, 'Tarte Flambée', 142, 'Salty', 'Pizza'),
(446, 'Thin Crust Pizza', 157, 'Salty', 'Pizza'),
(447, 'Tuna Pizza', 318, 'Salty', 'Pizza'),
(448, 'Vegetable Pizza', 399, 'Salty', 'Pizza'),
(449, 'Vegetarian Pizza', 399, 'Salty', 'Pizza'),
(450, 'Veggie Pizza', 263, 'Salty', 'Pizza'),
(451, 'White Pizza', 571, 'Salty', 'Pizza'),
(452, 'Acerola', 1, 'Sweets', 'Fruits'),
(453, 'Asian Pear', 75, 'Sweets', 'Fruits'),
(454, 'Avocado', 320, 'Bitter', 'Fruits'),
(455, 'Banana', 111, 'Sweets', 'Fruits'),
(456, 'Breadfruit', 99, 'Bitter', 'Fruits'),
(457, 'Cantaloupe Melon', 23, 'Sweets', 'Fruits'),
(458, 'Casaba Melon', 35, 'Sweets', 'Fruits'),
(459, 'Cherimoya', 176, 'Sweets', 'Fruits'),
(460, 'Dragon Fruit', 120, 'Sweets', 'Fruits'),
(461, 'Durian', 885, 'Sweets', 'Fruits'),
(462, 'Feijoa', 23, 'Sweets', 'Fruits'),
(463, 'Galia Melon', 30, 'Sweets', 'Fruits'),
(464, 'Grapefruit', 52, 'Sweets', 'Fruits'),
(465, 'Guava', 37, 'Sweets', 'Fruits'),
(466, 'Honeydew', 45, 'Sweets', 'Fruits'),
(467, 'Jackfruit', 143, 'Sweets', 'Fruits'),
(468, 'Kiwi', 112, 'Sour', 'Fruits'),
(469, 'Kumquat', 13, 'Sour', 'Fruits'),
(470, 'Lychee', 7, 'Sweets', 'Fruits'),
(471, 'Mandarin Oranges', 48, 'Sweets', 'Fruits'),
(472, 'Mango', 202, 'Sweets', 'Fruits'),
(473, 'Mangosteen', 58, 'Sweets', 'Fruits'),
(474, 'Maracuya', 17, 'Sour', 'Fruits'),
(475, 'Maraschino Cherries', 8, 'Sweets', 'Fruits'),
(476, 'Muskmelon', 23, 'Sweets', 'Fruits'),
(477, 'Noni', 15, 'Sour', 'Fruits'),
(478, 'Passion Fruit', 17, 'Sweets', 'Fruits'),
(479, 'Pineapple', 453, 'Sour', 'Fruits'),
(480, 'Pink Grapefruit', 52, 'Sweets', 'Fruits'),
(481, 'Plantain', 218, 'Sweets', 'Fruits'),
(482, 'Pomegranate', 234, 'Sweets', 'Fruits'),
(483, 'Pomelo', 231, 'Sweets', 'Fruits'),
(484, 'Prickly Pear', 8, 'Sour', 'Fruits'),
(485, 'Rambutan', 7, 'Sweets', 'Fruits'),
(486, 'Sapodilla', 141, 'Sweets', 'Fruits'),
(487, 'Soursop Fruit', 413, 'Sour', 'Fruits'),
(488, 'Star Fruit', 28, 'Sour', 'Fruits'),
(489, 'Tamarind', 5, 'Sweets', 'Fruits'),
(490, 'Watermelon', 86, 'Sweets', 'Fruits'),
(491, 'Arby’s Grand Turkey Club', 489, 'Salty', 'Fast Food'),
(492, 'Arby’s Reuben', 641, 'Salty', 'Fast Food'),
(493, 'Arby’s Roast Beef Classic', 360, 'Salty', 'Fast Food'),
(494, 'Arby’s Roast Beef Max', 360, 'Salty', 'Fast Food'),
(495, 'BBQ Rib', 142, 'Salty', 'Western'),
(496, 'Bean Burrito', 380, 'Salty', 'Fast Food'),
(497, 'Big N’ Tasty', 517, 'Salty', 'Fast Food'),
(498, 'Bratwurst', 283, 'Salty', 'Fast Food'),
(499, 'Burger King Angry Whopper', 740, 'Salty', 'Fast Food'),
(500, 'Burger King Double Whopper', 894, 'Salty', 'Fast Food'),
(501, 'Burger King Double Whopper with Cheese', 994, 'Salty', 'Fast Food'),
(502, 'Burger King Original Chicken Sandwich', 659, 'Salty', 'Fast Food'),
(503, 'Burger King Premium Alaskan Fish Sandwich', 591, 'Salty', 'Fast Food'),
(504, 'Burger King Triple Whopper', 1471, 'Salty', 'Fast Food'),
(505, 'Burger King Whopper', 672, 'Salty', 'Fast Food'),
(506, 'Burger King Whopper Jr.', 346, 'Salty', 'Fast Food'),
(507, 'Burger King Whopper with Cheese', 759, 'Salty', 'Fast Food'),
(508, 'Cheeseburger', 410, 'Salty', 'Fast Food'),
(509, 'Chicken Breast', 116, 'Salty', 'Chicken'),
(510, 'Chicken Fajita', 326, 'Salty', 'Chicken'),
(511, 'Chicken McNuggets', 48, 'Salty', 'Chicken'),
(512, 'Chicken Nuggets', 59, 'Salty', 'Chicken'),
(513, 'Chicken Pizziola', 451, 'Salty', 'Chicken'),
(514, 'Chicken Sandwich', 410, 'Salty', 'Fast Food'),
(515, 'Chicken Teriyaki Sandwich', 367, 'Salty', 'Fast Food'),
(516, 'Chicken Wings', 94, 'Salty', 'Chicken'),
(517, 'Chop Suey', 585, 'Salty', 'Chinese'),
(518, 'Curly Fries', 398, 'Salty', 'Fast Food'),
(519, 'Double Cheeseburger', 414, 'Salty', 'Fast Food'),
(520, 'Egg Roll', 200, 'Salty', 'Fast Food'),
(521, 'Falafel', 57, 'Bitter', 'Middle Eastern'),
(522, 'Filet-o-Fish', 400, 'Salty', 'Seafood'),
(523, 'Fish and Chips', 585, 'Salty', 'Seafood'),
(524, 'Fish Sandwich', 431, 'Salty', 'Fast Food'),
(525, 'French Fries', 222, 'Salty', 'Fast Food'),
(526, 'Grilled Chicken Salad', 268, 'Salty', 'Fast Food'),
(527, 'Ham Sandwich', 352, 'Salty', 'Fast Food'),
(528, 'Hamburger', 279, 'Salty', 'Fast Food'),
(529, 'Hot Dog', 312, 'Salty', 'Fast Food'),
(530, 'Italian BMT', 410, 'Salty', 'Fast Food'),
(531, 'Lasagna', 172, 'Salty', 'Pasta'),
(532, 'McDonald’s Big Mac', 561, 'Salty', 'Fast Food'),
(533, 'McDonald’s Cheeseburger', 300, 'Salty', 'Fast Food'),
(534, 'McDonald’s Chicken Nuggets', 48, 'Salty', 'Fast Food'),
(535, 'McDonald’s Double Cheeseburger', 437, 'Salty', 'Fast Food'),
(536, 'McDonald’s Filet-o-Fish', 391, 'Salty', 'Fast Food'),
(537, 'McDonald’s McChicken', 359, 'Salty', 'Fast Food'),
(538, 'McDonald’s McDouble', 403, 'Salty', 'Fast Food'),
(539, 'McDonald’s McMuffi Egg', 290, 'Salty', 'Fast Food'),
(540, 'McDonald’s McRib', 451, 'Salty', 'Fast Food'),
(541, 'McDonald’s Mighty Wings', 95, 'Salty', 'Fast Food'),
(542, 'McRib', 451, 'Salty', 'Fast Food'),
(543, 'Meatball Sandwich', 481, 'Salty', 'Fast Food'),
(544, 'Nachos with Cheese', 575, 'Salty', 'Fast Food'),
(545, 'Onion Rings', 25, 'Salty', 'Fast Food'),
(546, 'Poutine', 511, 'Salty', 'Western'),
(547, 'Smoked Salmon', 44, 'Salty', 'Seafood'),
(548, 'Spicy Italian', 480, 'Salty', 'Pasta'),
(549, 'Subway Club Sandwich', 312, 'Salty', 'Fast Food'),
(550, 'Tortilla Wrap', 171, 'Salty', 'Middle Eastern'),
(551, 'Tuna', 24, 'Salty', 'Seafood'),
(552, 'Turkey', 29, 'Salty', 'Middle Eastern'),
(553, 'Veggie Burger', 389, 'Salty', 'Fast Food'),
(554, 'Veggie Delight', 229, 'Salty', 'Fast Food'),
(555, 'Veggie Patty', 963, 'Salty', 'Fast Food'),
(556, 'Wendy’s Baconator', 839, 'Salty', 'Fast Food'),
(557, 'Wendy’s Jr. Bacon Cheeseburger', 420, 'Salty', 'Fast Food'),
(558, 'Wendy’s Jr. Cheeseburger', 290, 'Salty', 'Fast Food'),
(559, 'Wendy’s Son of Baconator', 700, 'Salty', 'Fast Food'),
(560, 'Whopper', 672, 'Salty', 'Fast Food'),
(561, 'Zinger', 517, 'Salty', 'Fast Food'),
(562, 'Zinger Burger', 517, 'Salty', 'Fast Food'),
(564, 'Ayam Geprek', 200, 'Salty', 'Chicken');

-- --------------------------------------------------------

--
-- Table structure for table `tb_data_olahraga`
--

CREATE TABLE `tb_data_olahraga` (
  `id_do` int(11) NOT NULL,
  `sport` varchar(41) NOT NULL,
  `calories` double(17,0) NOT NULL,
  `intensitas` varchar(5) NOT NULL,
  `tools` varchar(3) NOT NULL,
  `sixty` int(255) NOT NULL,
  `seventy` int(255) NOT NULL,
  `eighty` int(255) NOT NULL,
  `ninety` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_data_olahraga`
--

INSERT INTO `tb_data_olahraga` (`id_do`, `sport`, `calories`, `intensitas`, `tools`, `sixty`, `seventy`, `eighty`, `ninety`) VALUES
(1, 'Cycling, mountain bike, bmx', 2, 'heavy', 'yes', 502, 598, 695, 791),
(2, 'Cycling, <10 mph, leisure bicycling', 1, 'heavy', 'yes', 236, 281, 327, 372),
(3, 'Cycling, >20 mph, racing', 3, 'heavy', 'yes', 944, 1126, 1308, 1489),
(4, 'Cycling, 10-11.9 mph, light', 1, 'light', 'yes', 354, 422, 490, 558),
(5, 'Cycling, 12-13.9 mph, moderate', 2, 'light', 'yes', 472, 563, 654, 745),
(6, 'Cycling, 14-15.9 mph, vigorous', 2, 'heavy', 'yes', 590, 704, 817, 931),
(7, 'Cycling, 16-19 mph, very fast, racing', 2, 'heavy', 'yes', 708, 844, 981, 1117),
(8, 'Unicycling', 1, 'light', 'yes', 295, 352, 409, 465),
(9, 'Stationary cycling, very light', 1, 'light', 'yes', 177, 211, 245, 279),
(10, 'Stationary cycling, light', 1, 'light', 'yes', 325, 387, 449, 512),
(11, 'Stationary cycling, moderate', 1, 'light', 'yes', 413, 493, 572, 651),
(12, 'Stationary cycling, vigorous', 2, 'heavy', 'yes', 620, 739, 858, 977),
(13, 'Stationary cycling, very vigorous', 3, 'heavy', 'yes', 738, 880, 1022, 1163),
(14, 'Calisthenics, vigorous, pushups, situps…', 2, 'light', 'no', 472, 563, 654, 745),
(15, 'Calisthenics, light', 1, 'light', 'no', 207, 246, 286, 326),
(16, 'Circuit training, minimal rest', 2, 'light', 'yes', 472, 563, 654, 745),
(17, 'Weight lifting, body building, vigorous', 1, 'heavy', 'yes', 354, 422, 490, 558),
(18, 'Weight lifting, light workout', 1, 'light', 'yes', 177, 211, 245, 279),
(19, 'Health club exercise', 1, 'light', 'yes', 325, 387, 449, 512),
(20, 'Stair machine', 2, 'light', 'yes', 531, 633, 735, 838),
(21, 'Rowing machine, light', 1, 'light', 'yes', 207, 246, 286, 326),
(22, 'Rowing machine, moderate', 1, 'light', 'yes', 413, 493, 572, 651),
(23, 'Rowing machine, vigorous', 2, 'heavy', 'yes', 502, 598, 695, 791),
(24, 'Rowing machine, very vigorous', 2, 'heavy', 'yes', 708, 844, 981, 1117),
(25, 'Ski machine', 1, 'light', 'yes', 413, 493, 572, 651),
(26, 'Aerobics, low impact', 1, 'light', 'no', 295, 352, 409, 465),
(27, 'Aerobics, high impact', 1, 'light', 'no', 413, 493, 572, 651),
(28, 'Aerobics, step aerobics', 2, 'light', 'no', 502, 598, 695, 791),
(29, 'Aerobics, general', 1, 'light', 'no', 384, 457, 531, 605),
(30, 'Jazzercise', 1, 'light', 'no', 354, 422, 490, 558),
(31, 'Stretching, hatha yoga', 1, 'light', 'no', 236, 281, 327, 372),
(32, 'Mild stretching', 1, 'light', 'no', 148, 176, 204, 233),
(33, 'Instructing aerobic class', 1, 'light', 'no', 354, 422, 490, 558),
(34, 'Water aerobics', 1, 'light', 'no', 236, 281, 327, 372),
(35, 'Ballet, twist, jazz, tap', 1, 'light', 'no', 266, 317, 368, 419),
(36, 'Ballroom dancing, slow', 1, 'light', 'no', 177, 211, 245, 279),
(37, 'Ballroom dancing, fast', 1, 'light', 'no', 325, 387, 449, 512),
(38, 'Running, 5 mph (12 minute mile)', 2, 'heavy', 'no', 472, 563, 654, 745),
(39, 'Running, 5.2 mph (11.5 minute mile)', 2, 'heavy', 'no', 531, 633, 735, 838),
(40, 'Running, 6 mph (10 min mile)', 2, 'heavy', 'no', 590, 704, 817, 931),
(41, 'Running, 6.7 mph (9 min mile)', 2, 'heavy', 'no', 649, 774, 899, 1024),
(42, 'Running, 7 mph (8.5 min mile)', 2, 'heavy', 'no', 679, 809, 940, 1070),
(43, 'Running, 7.5mph (8 min mile)', 3, 'heavy', 'no', 738, 880, 1022, 1163),
(44, 'Running, 8 mph (7.5 min mile)', 3, 'heavy', 'no', 797, 950, 1103, 1256),
(45, 'Running, 8.6 mph (7 min mile)', 3, 'heavy', 'no', 826, 985, 1144, 1303),
(46, 'Running, 9 mph (6.5 min mile)', 3, 'heavy', 'no', 885, 1056, 1226, 1396),
(47, 'Running, 10 mph (6 min mile)', 3, 'heavy', 'no', 944, 1126, 1308, 1489),
(48, 'Running, 10.9 mph (5.5 min mile)', 4, 'heavy', 'no', 1062, 1267, 1471, 1675),
(49, 'Running, cross country', 2, 'heavy', 'no', 531, 633, 735, 838),
(50, 'Running, general', 2, 'heavy', 'no', 472, 563, 654, 745),
(51, 'Running, on a track, team practice', 2, 'heavy', 'no', 590, 704, 817, 931),
(52, 'Running, stairs, up', 3, 'heavy', 'no', 885, 1056, 1226, 1396),
(53, 'Track and field (shot, discus)', 1, 'heavy', 'yes', 236, 281, 327, 372),
(54, 'Track and field (high jump, pole vault)', 1, 'heavy', 'yes', 354, 422, 490, 558),
(55, 'Track and field (hurdles)', 2, 'heavy', 'yes', 590, 704, 817, 931),
(56, 'Archery', 1, 'light', 'yes', 207, 246, 286, 326),
(57, 'Badminton', 1, 'heavy', 'yes', 266, 317, 368, 419),
(58, 'Basketball game, competitive', 2, 'heavy', 'yes', 472, 563, 654, 745),
(59, 'Playing basketball, non game', 1, 'light', 'yes', 354, 422, 490, 558),
(60, 'Basketball, officiating', 1, 'light', 'yes', 413, 493, 572, 651),
(61, 'Basketball, shooting baskets', 1, 'light', 'yes', 266, 317, 368, 419),
(62, 'Basketball, wheelchair', 1, 'light', 'yes', 384, 457, 531, 605),
(63, 'Running, training, pushing wheelchair', 2, 'heavy', 'yes', 472, 563, 654, 745),
(64, 'Billiards', 1, 'light', 'yes', 148, 176, 204, 233),
(65, 'Bowling', 1, 'light', 'yes', 177, 211, 245, 279),
(66, 'Boxing, in ring', 2, 'heavy', 'yes', 708, 844, 981, 1117),
(67, 'Boxing, punching bag', 1, 'light', 'yes', 354, 422, 490, 558),
(68, 'Boxing, sparring', 2, 'heavy', 'yes', 531, 633, 735, 838),
(69, 'Coaching: football, basketball, soccer…', 1, 'light', 'no', 236, 281, 327, 372),
(70, 'Cricket (batting, bowling)', 1, 'light', 'yes', 295, 352, 409, 465),
(71, 'Croquet', 1, 'light', 'yes', 148, 176, 204, 233),
(72, 'Curling', 1, 'light', 'yes', 236, 281, 327, 372),
(73, 'Darts (wall or lawn)', 1, 'light', 'yes', 148, 176, 204, 233),
(74, 'Fencing', 1, 'heavy', 'yes', 354, 422, 490, 558),
(75, 'Football, competitive', 2, 'heavy', 'yes', 531, 633, 735, 838),
(76, 'Football, touch, flag, general', 2, 'light', 'no', 472, 563, 654, 745),
(77, 'Football or baseball, playing catch', 1, 'light', 'yes', 148, 176, 204, 233),
(78, 'Frisbee playing, general', 1, 'light', 'yes', 177, 211, 245, 279),
(79, 'Frisbee, ultimate frisbee', 2, 'heavy', 'yes', 472, 563, 654, 745),
(80, 'Golf, general', 1, 'light', 'yes', 266, 317, 368, 419),
(81, 'Golf, walking and carrying clubs', 1, 'light', 'yes', 266, 317, 368, 419),
(82, 'Golf, driving range', 1, 'light', 'yes', 177, 211, 245, 279),
(83, 'Golf, miniature golf', 1, 'light', 'yes', 177, 211, 245, 279),
(84, 'Golf, walking and pulling clubs', 1, 'light', 'yes', 254, 303, 351, 400),
(85, 'Golf, using power cart', 1, 'light', 'yes', 207, 246, 286, 326),
(86, 'Gymnastics', 1, 'light', 'no', 236, 281, 327, 372),
(87, 'Hacky sack', 1, 'light', 'yes', 236, 281, 327, 372),
(88, 'Handball', 2, 'heavy', 'yes', 708, 844, 981, 1117),
(89, 'Handball, team', 2, 'heavy', 'yes', 472, 563, 654, 745),
(90, 'Hockey, field hockey', 2, 'heavy', 'yes', 472, 563, 654, 745),
(91, 'Hockey, ice hockey', 2, 'heavy', 'yes', 472, 563, 654, 745),
(92, 'Riding a horse, general', 1, 'light', 'yes', 236, 281, 327, 372),
(93, 'Horesback riding, saddling horse', 1, 'light', 'yes', 207, 246, 286, 326),
(94, 'Horseback riding, grooming horse', 1, 'light', 'yes', 207, 246, 286, 326),
(95, 'Horseback riding, trotting', 1, 'light', 'yes', 384, 457, 531, 605),
(96, 'Horseback riding, walking', 1, 'light', 'yes', 148, 176, 204, 233),
(97, 'Horse racing, galloping', 2, 'heavy', 'yes', 472, 563, 654, 745),
(98, 'Horse grooming, moderate', 1, 'light', 'yes', 354, 422, 490, 558),
(99, 'Horseshoe pitching', 1, 'light', 'yes', 177, 211, 245, 279),
(100, 'Jai alai', 2, 'heavy', 'yes', 708, 844, 981, 1117),
(101, 'Martial arts, judo, karate, jujitsu', 2, 'heavy', 'no', 590, 704, 817, 931),
(102, 'Martial arts, kick boxing', 2, 'heavy', 'no', 590, 704, 817, 931),
(103, 'Martial arts, tae kwan do', 2, 'heavy', 'no', 590, 704, 817, 931),
(104, 'Krav maga training', 2, 'heavy', 'no', 590, 704, 817, 931),
(105, 'Juggling', 1, 'light', 'yes', 236, 281, 327, 372),
(106, 'Kickball', 1, 'light', 'yes', 413, 493, 572, 651),
(107, 'Lacrosse', 2, 'heavy', 'yes', 472, 563, 654, 745),
(108, 'Orienteering', 2, 'light', 'yes', 531, 633, 735, 838),
(109, 'Playing paddleball', 1, 'heavy', 'yes', 354, 422, 490, 558),
(110, 'Paddleball, competitive', 2, 'light', 'yes', 590, 704, 817, 931),
(111, 'Polo', 2, 'heavy', 'yes', 472, 563, 654, 745),
(112, 'Racquetball, competitive', 2, 'heavy', 'yes', 590, 704, 817, 931),
(113, 'Playing racquetball', 1, 'light', 'yes', 413, 493, 572, 651),
(114, 'Rock climbing, ascending rock', 2, 'heavy', 'no', 649, 774, 899, 1024),
(115, 'Rock climbing, rappelling', 2, 'heavy', 'no', 472, 563, 654, 745),
(116, 'Jumping rope, fast', 2, 'heavy', 'yes', 708, 844, 981, 1117),
(117, 'Jumping rope, moderate', 2, 'light', 'yes', 590, 704, 817, 931),
(118, 'Jumping rope, slow', 2, 'light', 'yes', 472, 563, 654, 745),
(119, 'Rugby', 2, 'heavy', 'yes', 590, 704, 817, 931),
(120, 'Shuffleboard, lawn bowling', 1, 'light', 'yes', 177, 211, 245, 279),
(121, 'Skateboarding', 1, 'light', 'yes', 295, 352, 409, 465),
(122, 'Roller skating', 1, 'light', 'yes', 413, 493, 572, 651),
(123, 'Roller blading, in-line skating', 2, 'light', 'yes', 708, 844, 981, 1117),
(124, 'Sky diving', 1, 'heavy', 'yes', 177, 211, 245, 279),
(125, 'Soccer, competitive', 2, 'heavy', 'yes', 590, 704, 817, 931),
(126, 'Playing soccer', 1, 'light', 'yes', 413, 493, 572, 651),
(127, 'Softball or baseball', 1, 'heavy', 'yes', 295, 352, 409, 465),
(128, 'Softball, officiating', 1, 'light', 'yes', 236, 281, 327, 372),
(129, 'Softball, pitching', 1, 'light', 'yes', 354, 422, 490, 558),
(130, 'Squash', 2, 'light', 'yes', 708, 844, 981, 1117),
(131, 'Table tennis, ping pong', 1, 'light', 'yes', 236, 281, 327, 372),
(132, 'Tai chi', 1, 'light', 'no', 236, 281, 327, 372),
(133, 'Playing tennis', 1, 'light', 'yes', 413, 493, 572, 651),
(134, 'Tennis, doubles', 1, 'heavy', 'yes', 354, 422, 490, 558),
(135, 'Tennis, singles', 2, 'heavy', 'yes', 472, 563, 654, 745),
(136, 'Trampoline', 1, 'light', 'yes', 207, 246, 286, 326),
(137, 'Volleyball, competitive', 2, 'heavy', 'yes', 472, 563, 654, 745),
(138, 'Playing volleyball', 1, 'light', 'yes', 177, 211, 245, 279),
(139, 'Volleyball, beach', 2, 'heavy', 'yes', 472, 563, 654, 745),
(140, 'Wrestling', 1, 'heavy', 'no', 354, 422, 490, 558),
(141, 'Wallyball', 1, 'light', 'yes', 413, 493, 572, 651),
(142, 'Backpacking, Hiking with pack', 1, 'light', 'yes', 413, 493, 572, 651),
(143, 'Carrying infant, level ground', 1, 'light', 'yes', 207, 246, 286, 326),
(144, 'Carrying infant, upstairs', 1, 'light', 'yes', 295, 352, 409, 465),
(145, 'Carrying 16 to 24 lbs, upstairs', 1, 'heavy', 'yes', 354, 422, 490, 558),
(146, 'Carrying 25 to 49 lbs, upstairs', 2, 'heavy', 'yes', 472, 563, 654, 745),
(147, 'Standing, playing with children, light', 1, 'light', 'yes', 165, 197, 229, 261),
(148, 'Walk/run, playing with children, moderate', 1, 'light', 'no', 236, 281, 327, 372),
(149, 'Walk/run, playing with children, vigorous', 1, 'heavy', 'no', 295, 352, 409, 465),
(150, 'Carrying small children', 1, 'light', 'no', 177, 211, 245, 279),
(151, 'Loading, unloading car', 1, 'light', 'no', 177, 211, 245, 279),
(152, 'Climbing hills, carrying up to 9 lbs', 1, 'light', 'yes', 413, 493, 572, 651),
(153, 'Climbing hills, carrying 10 to 20 lb', 2, 'heavy', 'yes', 443, 528, 613, 698),
(154, 'Climbing hills, carrying 21 to 42 lb', 2, 'heavy', 'yes', 472, 563, 654, 745),
(155, 'Climbing hills, carrying over 42 lb', 2, 'heavy', 'yes', 531, 633, 735, 838),
(156, 'Walking downstairs', 1, 'light', 'no', 177, 211, 245, 279),
(157, 'Hiking, cross country', 1, 'heavy', 'no', 354, 422, 490, 558),
(158, 'Bird watching', 1, 'light', 'no', 148, 176, 204, 233),
(159, 'Marching, rapidly, military', 1, 'heavy', 'no', 384, 457, 531, 605),
(160, 'Children\'s games, hopscotch, dodgeball', 1, 'light', 'yes', 295, 352, 409, 465),
(161, 'Pushing stroller or walking with children', 1, 'light', 'no', 148, 176, 204, 233),
(162, 'Pushing a wheelchair', 1, 'light', 'yes', 236, 281, 327, 372),
(163, 'Race walking', 1, 'light', 'no', 384, 457, 531, 605),
(164, 'Rock climbing, mountain climbing', 2, 'heavy', 'no', 472, 563, 654, 745),
(165, 'Walking using crutches', 1, 'light', 'yes', 295, 352, 409, 465),
(166, 'Walking the dog', 1, 'light', 'no', 177, 211, 245, 279),
(167, 'Walking, under 2.0 mph, very slow', 0, 'light', 'no', 118, 141, 163, 186),
(168, 'Walking 2.0 mph, slow', 1, 'light', 'no', 148, 176, 204, 233),
(169, 'Walking 2.5 mph', 1, 'light', 'no', 177, 211, 245, 279),
(170, 'Walking 3.0 mph, moderate', 1, 'light', 'no', 195, 232, 270, 307),
(171, 'Walking 3.5 mph, brisk pace', 1, 'heavy', 'no', 224, 267, 311, 354),
(172, 'Walking 3.5 mph, uphill', 1, 'heavy', 'no', 354, 422, 490, 558),
(173, 'Walking 4.0 mph, very brisk', 1, 'heavy', 'no', 295, 352, 409, 465),
(174, 'Walking 4.5 mph', 1, 'heavy', 'no', 372, 443, 515, 586),
(175, 'Walking 5.0 mph', 2, 'heavy', 'no', 472, 563, 654, 745),
(176, 'Boating, power, speed boat', 1, 'heavy', 'yes', 148, 176, 204, 233),
(177, 'Canoeing, camping trip', 1, 'light', 'yes', 236, 281, 327, 372),
(178, 'Canoeing, rowing, light', 1, 'light', 'yes', 177, 211, 245, 279),
(179, 'Canoeing, rowing, moderate', 1, 'light', 'yes', 413, 493, 572, 651),
(180, 'Canoeing, rowing, vigorous', 2, 'heavy', 'yes', 708, 844, 981, 1117),
(181, 'Crew, sculling, rowing, competition', 2, 'heavy', 'yes', 708, 844, 981, 1117),
(182, 'Kayaking', 1, 'light', 'yes', 295, 352, 409, 465),
(183, 'Paddle boat', 1, 'light', 'yes', 236, 281, 327, 372),
(184, 'Windsurfing, sailing', 1, 'heavy', 'yes', 177, 211, 245, 279),
(185, 'Sailing, competition', 1, 'heavy', 'yes', 295, 352, 409, 465),
(186, 'Sailing, yachting, ocean sailing', 1, 'heavy', 'yes', 177, 211, 245, 279),
(187, 'Skiing, water skiing', 1, 'light', 'yes', 354, 422, 490, 558),
(188, 'Ski mobiling', 1, 'light', 'yes', 413, 493, 572, 651),
(189, 'Skin diving, fast', 3, 'light', 'yes', 944, 1126, 1308, 1489),
(190, 'Skin diving, moderate', 3, 'light', 'yes', 738, 880, 1022, 1163),
(191, 'Skin diving, scuba diving', 1, 'light', 'yes', 413, 493, 572, 651),
(192, 'Snorkeling', 1, 'light', 'yes', 295, 352, 409, 465),
(193, 'Surfing, body surfing or board surfing', 1, 'light', 'yes', 177, 211, 245, 279),
(194, 'Whitewater rafting, kayaking, canoeing', 1, 'light', 'yes', 295, 352, 409, 465),
(195, 'Swimming laps, freestyle, fast', 2, 'heavy', 'no', 590, 704, 817, 931),
(196, 'Swimming laps, freestyle, slow', 1, 'light', 'no', 413, 493, 572, 651),
(197, 'Swimming backstroke', 1, 'light', 'no', 413, 493, 572, 651),
(198, 'Swimming breaststroke', 2, 'light', 'no', 590, 704, 817, 931),
(199, 'Swimming butterfly', 2, 'heavy', 'no', 649, 774, 899, 1024),
(200, 'Swimming leisurely, not laps', 1, 'light', 'no', 354, 422, 490, 558),
(201, 'Swimming sidestroke', 2, 'light', 'no', 472, 563, 654, 745),
(202, 'Swimming synchronized', 2, 'light', 'no', 472, 563, 654, 745),
(203, 'Swimming, treading water, fast, vigorous', 2, 'heavy', 'no', 590, 704, 817, 931),
(204, 'Swimming, treading water, moderate', 1, 'heavy', 'no', 236, 281, 327, 372),
(205, 'Water aerobics, water calisthenics', 1, 'light', 'no', 236, 281, 327, 372),
(206, 'Water polo', 2, 'heavy', 'yes', 590, 704, 817, 931),
(207, 'Water volleyball', 1, 'heavy', 'yes', 177, 211, 245, 279),
(208, 'Water jogging', 2, 'light', 'no', 472, 563, 654, 745),
(209, 'Diving, springboard or platform', 1, 'light', 'yes', 177, 211, 245, 279),
(210, 'Ice skating, < 9 mph', 1, 'light', 'yes', 325, 387, 449, 512),
(211, 'Ice skating, average speed', 1, 'light', 'yes', 413, 493, 572, 651),
(212, 'Ice skating, rapidly', 2, 'heavy', 'yes', 531, 633, 735, 838),
(213, 'Speed skating, ice, competitive', 3, 'heavy', 'yes', 885, 1056, 1226, 1396),
(214, 'Cross country snow skiing, slow', 1, 'heavy', 'yes', 413, 493, 572, 651),
(215, 'Cross country skiing, moderate', 2, 'heavy', 'yes', 472, 563, 654, 745),
(216, 'Cross country skiing, vigorous', 2, 'heavy', 'yes', 531, 633, 735, 838),
(217, 'Cross country skiing, racing', 3, 'heavy', 'yes', 826, 985, 1144, 1303),
(218, 'Cross country skiing, uphill', 3, 'heavy', 'yes', 974, 1161, 1348, 1536),
(219, 'Snow skiing, downhill skiing, light', 1, 'light', 'yes', 295, 352, 409, 465),
(220, 'Downhill snow skiing, moderate', 1, 'heavy', 'yes', 354, 422, 490, 558),
(221, 'Downhill snow skiing, racing', 2, 'heavy', 'yes', 472, 563, 654, 745),
(222, 'Sledding, tobagganing, luge', 1, 'light', 'yes', 413, 493, 572, 651),
(223, 'Snow shoeing', 2, 'light', 'yes', 472, 563, 654, 745),
(224, 'Snowmobiling', 1, 'light', 'yes', 207, 246, 286, 326),
(225, 'General housework', 1, 'light', 'yes', 207, 246, 286, 326),
(226, 'Cleaning gutters', 1, 'light', 'no', 295, 352, 409, 465),
(227, 'Painting', 1, 'light', 'yes', 266, 317, 368, 419),
(228, 'Sit, playing with animals', 1, 'light', 'no', 148, 176, 204, 233),
(229, 'Walk / run, playing with animals', 1, 'light', 'no', 236, 281, 327, 372),
(230, 'Bathing dog', 1, 'light', 'no', 207, 246, 286, 326),
(231, 'Mowing lawn, walk, power mower', 1, 'light', 'yes', 325, 387, 449, 512),
(232, 'Mowing lawn, riding mower', 1, 'light', 'yes', 148, 176, 204, 233),
(233, 'Walking, snow blower', 1, 'light', 'yes', 207, 246, 286, 326),
(234, 'Riding, snow blower', 1, 'light', 'yes', 177, 211, 245, 279),
(235, 'Shoveling snow by hand', 1, 'heavy', 'yes', 354, 422, 490, 558),
(236, 'Raking lawn', 1, 'light', 'yes', 254, 303, 351, 400),
(237, 'Gardening, general', 1, 'light', 'yes', 236, 281, 327, 372),
(238, 'Bagging grass, leaves', 1, 'light', 'yes', 236, 281, 327, 372),
(239, 'Watering lawn or garden', 0, 'light', 'yes', 89, 106, 123, 140),
(240, 'Weeding, cultivating garden', 1, 'light', 'yes', 266, 317, 368, 419),
(241, 'Carpentry, general', 1, 'heavy', 'yes', 207, 246, 286, 326),
(242, 'Carrying heavy loads', 2, 'heavy', 'no', 472, 563, 654, 745),
(243, 'Carrying moderate loads upstairs', 2, 'heavy', 'no', 472, 563, 654, 745),
(244, 'General cleaning', 1, 'light', 'yes', 207, 246, 286, 326),
(245, 'Cleaning, dusting', 1, 'light', 'yes', 148, 176, 204, 233),
(246, 'Taking out trash', 1, 'light', 'no', 177, 211, 245, 279),
(247, 'Walking, pushing a wheelchair', 1, 'light', 'no', 236, 281, 327, 372),
(248, 'Teach physical education,exercise class', 1, 'light', 'no', 236, 281, 327, 372);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kesehatan`
--

CREATE TABLE `tb_kesehatan` (
  `id_kesehatan` int(255) NOT NULL,
  `id_kes_akun` int(255) NOT NULL,
  `target` int(11) NOT NULL,
  `persentase_pencapaian` double(255,0) NOT NULL,
  `deadline` date NOT NULL,
  `kalori_target` int(255) NOT NULL,
  `tanggal_submit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kesehatan`
--

INSERT INTO `tb_kesehatan` (`id_kesehatan`, `id_kes_akun`, `target`, `persentase_pencapaian`, `deadline`, `kalori_target`, `tanggal_submit`) VALUES
(7, 34, 2, 0, '2021-06-29', 21000, '2021-06-15 05:24:17');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sejarah_bmi`
--

CREATE TABLE `tb_sejarah_bmi` (
  `id_bmi` int(255) NOT NULL,
  `id_bmi_akun` int(255) NOT NULL,
  `bmi` varchar(255) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_sejarah_bmi`
--

INSERT INTO `tb_sejarah_bmi` (`id_bmi`, `id_bmi_akun`, `bmi`, `tanggal`) VALUES
(23, 32, '100', '2021-06-15 05:17:42'),
(25, 34, '51.9', '2021-06-15 05:19:07');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sejarah_makanan`
--

CREATE TABLE `tb_sejarah_makanan` (
  `id_sm` int(255) NOT NULL,
  `id_sm_makanan` int(255) NOT NULL,
  `id_sm_smh` int(255) NOT NULL,
  `jumlah` int(255) NOT NULL,
  `kalori_total` int(255) NOT NULL,
  `tanggal_sm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_sejarah_makanan`
--

INSERT INTO `tb_sejarah_makanan` (`id_sm`, `id_sm_makanan`, `id_sm_smh`, `jumlah`, `kalori_total`, `tanggal_sm`) VALUES
(32, 121, 5, 1, 360, '2021-06-15 05:20:07'),
(33, 189, 5, 1, 374, '2021-06-15 05:20:17');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sejarah_olahraga`
--

CREATE TABLE `tb_sejarah_olahraga` (
  `id_so` int(255) NOT NULL,
  `id_so_olahraga` int(255) NOT NULL,
  `id_so_soh` int(255) NOT NULL,
  `durasi` int(255) NOT NULL,
  `pembakaran_kalori` float(255,0) NOT NULL,
  `tanggal_so` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_sejarah_olahraga`
--

INSERT INTO `tb_sejarah_olahraga` (`id_so`, `id_so_olahraga`, `id_so_soh`, `durasi`, `pembakaran_kalori`, `tanggal_so`) VALUES
(25, 63, 4, 30, 372, '2021-06-15 05:20:01');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sm_harian`
--

CREATE TABLE `tb_sm_harian` (
  `id_sm_harian` int(255) NOT NULL,
  `id_smh_akun` int(255) NOT NULL,
  `total_smh` int(255) NOT NULL,
  `tanggal_smh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_sm_harian`
--

INSERT INTO `tb_sm_harian` (`id_sm_harian`, `id_smh_akun`, `total_smh`, `tanggal_smh`) VALUES
(5, 34, 1006, '2021-06-15');

-- --------------------------------------------------------

--
-- Table structure for table `tb_so_harian`
--

CREATE TABLE `tb_so_harian` (
  `id_so_harian` int(255) NOT NULL,
  `id_soh_akun` int(255) NOT NULL,
  `total_soh` int(255) NOT NULL,
  `tanggal_soh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_so_harian`
--

INSERT INTO `tb_so_harian` (`id_so_harian`, `id_soh_akun`, `total_soh`, `tanggal_soh`) VALUES
(4, 34, 373, '2021-06-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_akun`
--
ALTER TABLE `tb_akun`
  ADD PRIMARY KEY (`id_akun`) USING BTREE;

--
-- Indexes for table `tb_data_makanan`
--
ALTER TABLE `tb_data_makanan`
  ADD PRIMARY KEY (`id_dm`);

--
-- Indexes for table `tb_data_olahraga`
--
ALTER TABLE `tb_data_olahraga`
  ADD PRIMARY KEY (`id_do`) USING BTREE;

--
-- Indexes for table `tb_kesehatan`
--
ALTER TABLE `tb_kesehatan`
  ADD PRIMARY KEY (`id_kesehatan`),
  ADD KEY `id_kes_akun` (`id_kes_akun`);

--
-- Indexes for table `tb_sejarah_bmi`
--
ALTER TABLE `tb_sejarah_bmi`
  ADD PRIMARY KEY (`id_bmi`),
  ADD KEY `id_bmi_akun` (`id_bmi_akun`);

--
-- Indexes for table `tb_sejarah_makanan`
--
ALTER TABLE `tb_sejarah_makanan`
  ADD PRIMARY KEY (`id_sm`) USING BTREE,
  ADD KEY `id_sm_makanan` (`id_sm_makanan`),
  ADD KEY `id_sm_smh` (`id_sm_smh`);

--
-- Indexes for table `tb_sejarah_olahraga`
--
ALTER TABLE `tb_sejarah_olahraga`
  ADD PRIMARY KEY (`id_so`),
  ADD KEY `id_so_olahraga` (`id_so_olahraga`),
  ADD KEY `id_soh_so` (`id_so_soh`);

--
-- Indexes for table `tb_sm_harian`
--
ALTER TABLE `tb_sm_harian`
  ADD PRIMARY KEY (`id_sm_harian`),
  ADD KEY `id_smh_akun` (`id_smh_akun`);

--
-- Indexes for table `tb_so_harian`
--
ALTER TABLE `tb_so_harian`
  ADD PRIMARY KEY (`id_so_harian`),
  ADD KEY `id_soh_akun` (`id_soh_akun`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_akun`
--
ALTER TABLE `tb_akun`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tb_data_makanan`
--
ALTER TABLE `tb_data_makanan`
  MODIFY `id_dm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=565;

--
-- AUTO_INCREMENT for table `tb_data_olahraga`
--
ALTER TABLE `tb_data_olahraga`
  MODIFY `id_do` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `tb_kesehatan`
--
ALTER TABLE `tb_kesehatan`
  MODIFY `id_kesehatan` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_sejarah_bmi`
--
ALTER TABLE `tb_sejarah_bmi`
  MODIFY `id_bmi` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tb_sejarah_makanan`
--
ALTER TABLE `tb_sejarah_makanan`
  MODIFY `id_sm` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tb_sejarah_olahraga`
--
ALTER TABLE `tb_sejarah_olahraga`
  MODIFY `id_so` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tb_sm_harian`
--
ALTER TABLE `tb_sm_harian`
  MODIFY `id_sm_harian` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_so_harian`
--
ALTER TABLE `tb_so_harian`
  MODIFY `id_so_harian` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_kesehatan`
--
ALTER TABLE `tb_kesehatan`
  ADD CONSTRAINT `tb_kesehatan_ibfk_1` FOREIGN KEY (`id_kes_akun`) REFERENCES `tb_akun` (`id_akun`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_sejarah_bmi`
--
ALTER TABLE `tb_sejarah_bmi`
  ADD CONSTRAINT `tb_sejarah_bmi_ibfk_1` FOREIGN KEY (`id_bmi_akun`) REFERENCES `tb_akun` (`id_akun`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_sejarah_makanan`
--
ALTER TABLE `tb_sejarah_makanan`
  ADD CONSTRAINT `tb_sejarah_makanan_ibfk_2` FOREIGN KEY (`id_sm_makanan`) REFERENCES `tb_data_makanan` (`id_dm`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_sejarah_makanan_ibfk_3` FOREIGN KEY (`id_sm_smh`) REFERENCES `tb_sm_harian` (`id_sm_harian`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_sejarah_olahraga`
--
ALTER TABLE `tb_sejarah_olahraga`
  ADD CONSTRAINT `tb_sejarah_olahraga_ibfk_3` FOREIGN KEY (`id_so_olahraga`) REFERENCES `tb_data_olahraga` (`id_do`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_sejarah_olahraga_ibfk_4` FOREIGN KEY (`id_so_soh`) REFERENCES `tb_so_harian` (`id_so_harian`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_sm_harian`
--
ALTER TABLE `tb_sm_harian`
  ADD CONSTRAINT `tb_sm_harian_ibfk_1` FOREIGN KEY (`id_smh_akun`) REFERENCES `tb_akun` (`id_akun`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_so_harian`
--
ALTER TABLE `tb_so_harian`
  ADD CONSTRAINT `tb_so_harian_ibfk_1` FOREIGN KEY (`id_soh_akun`) REFERENCES `tb_akun` (`id_akun`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
