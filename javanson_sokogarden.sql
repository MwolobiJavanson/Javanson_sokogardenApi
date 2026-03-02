-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 02, 2026 at 05:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `javanson_sokogarden`
--

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(50) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` text NOT NULL,
  `product_category` varchar(255) NOT NULL,
  `product_cost` int(50) NOT NULL,
  `product_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_id`, `product_name`, `product_description`, `product_category`, `product_cost`, `product_image`) VALUES
(1, 'oppo', '16gb RAM,128gb storage,android 14', 'electronics', 20000, 'oppo'),
(2, 'iphone 17 pro max', ' a 6.3-inch 120Hz LTPO display, the A19 chip, and an 18MP selfie camera with Center Stag', 'phone', 117000, 'iphone 17 pro max'),
(4, 'samsung z fold', '12GB/16GB RAM, and 200MP camera systems, with prices starting from roughly KSh 180,999 in Kenya.', 'phone', 92000, 'samsung z fold'),
(5, 'samsung smart tv', ' Featuring QD-Mini LED technology with hundreds of local dimming zones, achieving OLED-level blacks and a staggering 1700 nits peak brightness.', 'Televisions', 380000, 'samsung smart tv'),
(6, 'TCL 55\"', ' Featuring QD-Mini LED technology with hundreds of local dimming zones, achieving OLED-level blacks and a staggering 1700 nits peak brightness.', 'Televisions', 48000, 'TCL 55\"'),
(7, 'TCL 55\"', 'Featuring QD-Mini LED technology with hundreds of local dimming zones, achieving OLED-level blacks and a staggering 1700 nits peak brightness.', 'Televisions', 48000, 'TCL 55\"'),
(8, 'Kawarsaki', '998cc, four-cylinder, race-bred supersport machine producing approximately 200+ horsepower (151 kW) with RAM ai', 'Motorbikes', 480000, 'Kawarsaki'),
(9, 'Combarts Bomber', ' it’s powered by an S&S air-cooled V-twin and has a handmade aluminium monocoque chassis featuring a Hossack-style front-end. It’s available in raw aluminium or all-black.', 'Motorbikes', 680000, 'Combarts Bomber'),
(10, 'c310 combat', 'The C310 is the fully waterproof version of our classic combat trousers. The outer is made from our signature 50/50 ripstop is coated with a DWR finish and ...', 'Fashion', 7000, 'c310 combat'),
(12, 'cargo pant', 'Zip and button flyPopper fastened back pocketsHand slip pocketsPopper fastened side pocketsRipstop fabric', 'Fashion', 4000, 'cargo pant'),
(13, 'naked wolfe', 'SneakersTypeMen\'sGenderNaked WolfeBrand40, 41, 42, 43, 44, 45SizeOtherColorBrand New', ' mens shoes', 4000, 'naked wolfe'),
(14, 'Timberlands', 'Timberland Men\'s Voyager Park Mid Shoe', ' mens shoes', 2300, 'Timberlands'),
(15, 'Prada', 'Upper: fabric, synthetic materialLining: fabricSole: leather insole, rubber soleColor: blackToe shape: round toeMade in ItalyIncludes: shoe box, dust bagDesigner color name: BlackItem number: P01129459', ' mens shoes', 145000, 'Prada'),
(16, 'Basketball ball rebound', 'smart rebounded ball fine ncc', ' sports', 15000, 'Basketball ball rebound'),
(17, 'Saturey basketball shoe', 'CushioningShock-absorbing foam or air cushioning.The soleInsole for grip and traction.', ' sports', 20000, 'Saturey basketball shoe'),
(18, 'connate bbsr', 'wall mounted 32\" s010', ' sports', 15000, 'connate bbsr'),
(19, 'mikasa football ps PK C25\"', 'It features a FIFA Quality certification, indicating high standards for shape, bounce, and air retention. ', ' sports', 7715, 'mikasa football ps PK C25\"'),
(20, 'Nike phantoms', 'a premium football boot designed for precision, featuring Tuned Gripknit for enhanced ball control and a Cyclone 360 outsole for agility', ' sports', 10715, 'Nike phantoms');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `phone`, `password`) VALUES
(2, 'javanson', 'jans@gmail.com', '0718840790', 'qwerty1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
