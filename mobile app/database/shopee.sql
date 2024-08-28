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
(1, 'Apple', 'Apple iPhone 15 Pro Max', 151700.00 , './assets/products/1.jpg', '2024-07-28 11:08:57'), -- NOW()
(2, 'Apple', 'Apple iPhone 13', 52090.00 , './assets/products/2.jpg', '2024-07-28 11:08:57'),
(3, 'Apple', 'Apple iPhone 14 Pro Max',127350.00 , './assets/products/3.jpg', '2024-07-28 11:08:57'),
(4, 'Samsung', 'Samsung Galaxy S24 Ultra', 110194.00 , './assets/products/4.jpg', '2024-07-28 11:08:57'),
(5, 'Samsung', 'Samsung Galaxy Z Fold6', 200999.00, './assets/products/5.jpg', '2024-07-28 11:08:57'),
(6, 'Samsung', 'Samsung Galaxy M35 5G', 24499.00, './assets/products/6.jpg', '2024-07-28 11:08:57'),
(7, 'Samsung', 'Samsung Galaxy S24 Ultra', 89999.00, './assets/products/7.jpg', '2024-07-28 11:08:57'),
(8, 'Samsung', 'Samsung Galaxy S20 FE', 29000.00, './assets/products/8.jpg', '2024-07-28 11:08:57'),
(9, 'Redmi', 'Redmi 13C 5G', 10499.00, './assets/products/9.jpg', '2024-07-28 11:08:57'),
(10, 'Redmi', 'Redmi Note 13 5G', 16999.00, './assets/products/10.jpg', '2024-07-28 11:08:57'),
(11, 'Redmi', 'Redmi 13 5G', 13999.00, './assets/products/11.jpg', '2024-07-28 11:08:57'),
(12, 'Redmi', 'Redmi 13 5G', 13999.00, './assets/products/12.jpg', '2024-07-28 11:08:57'),
(13, 'Redmi', 'Redmi 12', 9999.00, './assets/products/13.jpg', '2024-07-28 11:08:57'),
(14, 'Apple', 'Apple iPhone 12', 27998.00, './assets/products/14.jpg', '2024-07-28 11:08:57'),
(15, 'Redmi', 'Redmi Note 11 SE', 13999.00, './assets/products/15.jpeg', '2024-07-28 11:08:57'),
(16, 'Redmi', 'Redmi Note 11', 12999.00, './assets/products/16.jpeg', '2024-07-28 11:08:57'),
(17, 'Redmi', 'Xiaomi Redmi 10X Pro', 11500.00, './assets/products/17.jpg', '2024-07-28 11:08:57'),
(18, 'Samsung', 'Galaxy S22', 36999.00, './assets/products/18.jpg', '2024-07-28 11:08:57');

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
(1, 'Daily', 'Tuition', '2020-03-28 13:07:17'),
(2, 'Akshay', 'Kashyap', '2020-03-28 13:07:17');

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
