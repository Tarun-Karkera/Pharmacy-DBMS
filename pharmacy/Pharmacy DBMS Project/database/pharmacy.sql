-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2020 at 11:01 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopee`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `item_id` int(11) NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_register`) VALUES
(1, 'Glucon', 'GLucon D', 200.00, './assets/products/1.png', '2020-03-28 11:08:57'), -- NOW()
(2, 'Creatine', 'Creatin', 250.00, './assets/products/2.png', '2020-03-28 11:08:57'),
(3, 'HealthKart', 'MultiVitamin', 300.00, './assets/products/3.png', '2020-03-28 11:08:57'),
(4, 'MPEssentials', 'BCAA', 350.00, './assets/products/4.png', '2020-03-28 11:08:57'),
(5, 'Glutamine', 'Glutamine Powder', 400.00, './assets/products/5.png', '2020-03-28 11:08:57'),
(6, 'Life', 'Fat Burner', 450.00, './assets/products/6.png', '2020-03-28 11:08:57'),
(7, 'AstraZenica', 'Tagrisso', 752.00, './assets/products/7.png', '2020-03-28 11:08:57'),
(8, 'Reddy', 'Zyrflic Syrup', 1452.00, './assets/products/8.png', '2020-03-28 11:08:57'),
(9, 'Cipla', 'Tadflo', 52.00, './assets/products/10.png', '2020-03-28 11:08:57'),
(10, 'Reddy', 'ZyrCold', 450.00, './assets/products/11.png', '2020-03-28 11:08:57'),
(11, 'Cipla', 'Etozox-90', 252.00, './assets/products/12.png', '2020-03-28 11:08:57'),
(12, 'Cipla', 'Okacet', 300.00, './assets/products/13.png', '2020-03-28 11:08:57'),
(13, 'Cipla', 'Ciplar-10', 1152.00, './assets/products/14.png', '2020-03-28 11:08:57'),
(14, 'Reddy', 'Nise', 556.00, './assets/products/15.png', '2020-03-28 11:08:57'),
(15, 'AstraZenica', 'Neksium', 342.00, './assets/products/16.png', '2020-03-28 11:08:57'),
(16, 'Reddy', 'Xyzal', 252.00, './assets/products/17.png', '2020-03-28 11:08:57'),
(17, 'HealthKart', 'Omega-3', 200.00, './assets/products/18.png', '2020-03-28 11:08:57'),
(18, 'OptimumNutrition', 'Whey Protien', 2000.00, './assets/products/19.png', '2020-03-28 11:08:57'),
(19, 'Unknown', 'Tart Cherry', 800.00, './assets/products/20.png', '2020-03-28 11:08:57'),
(20, 'WOW Organic', 'Apple Cider Vinegar', 300.00, './assets/products/21.png', '2020-03-28 11:08:57'),
(21, 'Himalaya', 'Liv.52 DS', 150.00, './assets/products/22.png', '2020-03-28 11:08:57'),
(22, 'SavC', 'Ascovill-DX', 600.00, './assets/products/23.jpg', '2020-03-28 11:08:57');


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `register_date`) VALUES
(1, 'Abhishek', 'Harikumar', '2020-03-28 13:07:17'),
(2, 'Tarun', 'Karkera', '2020-03-28 13:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
