-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2021 at 02:53 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_country` text NOT NULL,
  `admin_about` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_job` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_country`, `admin_about`, `admin_contact`, `admin_job`) VALUES
(0, 'Darrel Mendoza', 'darrelmendoza85@gmail.com', 'darrel1402', '66316097_2407729779442937_5521859978668802048_n.jpg', 'Dumaguete', ' ', '09297789855', 'Developer'),
(0, 'Kazuo', 'kazuo@gmail.com', '123', 'man_4.jpg', 'Philippines', 'I like cookies', '09297789855', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `boxes_section`
--

CREATE TABLE `boxes_section` (
  `box_id` int(10) NOT NULL,
  `box_title` text NOT NULL,
  `box_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(1, 'Men', 'yes', ''),
(2, 'Women', 'yes', ''),
(3, 'Kids', 'yes', ''),
(4, 'Other', 'yes', '');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` int(100) NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(4, 'Emma Stone', 'emmastone@gmail.com', 'darrel1402', 'Philippines', 0, '09875589877', 'Isugan Bacong Negros Oriental', 'emma.jpg', '::1'),
(5, 'Jennifer Lawrence', 'jenniferlawrence@gmail.com', 'darrel1402', 'Philippines', 0, '09857789855', 'Isugan Bacong Negros Oriental', 'jennifer.jpg', '::1'),
(6, 'Kazuo', 'kazhir0502@gmail.com', '1625', 'Philippines', 0, '09218082090', 'Bagacay', 'acc.jpg', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(6, 4, 500, 1826876157, 1, 'Medium', '2021-08-19', 'pending'),
(7, 4, 500, 1826876157, 1, 'Medium', '2021-08-19', 'pending'),
(8, 5, 500, 2000809006, 1, 'Medium', '2021-08-19', 'pending'),
(9, 5, 500, 2000809006, 1, 'Medium', '2021-08-19', 'pending'),
(10, 6, 1500, 246279189, 3, '', '2021-08-20', 'Complete'),
(11, 4, 500, 1572649782, 1, 'Medium', '2021-08-27', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(1, 'Nike', 'yes', 'nike.png'),
(2, 'Adidas', 'yes', 'adidas.png'),
(3, 'Under Armour', 'yes', '800px-Under_armour_logo.svg.png');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(2, 342353, 435345, 'Paypall', 4353455, 43543543, '8/19/21');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(6, 4, 1826876157, '36', 1, 'Medium', 'pending'),
(7, 4, 1826876157, '23', 1, 'Medium', 'pending'),
(8, 5, 2000809006, '35', 1, 'Medium', 'pending'),
(9, 5, 2000809006, '28', 1, 'Medium', 'pending'),
(10, 6, 246279189, '42', 3, '', 'Complete'),
(11, 4, 1572649782, '48', 1, 'Medium', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` text NOT NULL,
  `product_label` text NOT NULL,
  `product_sale` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`, `product_label`, `product_sale`) VALUES
(11, 5, 1, 1, '2021-08-20 01:25:22', 'Nike Shirt', 'nike front.jpg', 'nike back.jpg', 'nike front 2.jpg', 500, 'Shirt', '<p>Nike Shirt</p>', 'sale', 99),
(12, 5, 1, 1, '2021-08-20 13:00:24', 'Nike Shirt Blue', 'nike blue front.jpg', 'nike blue back.jpg', 'nike blue back.jpg', 500, 'Shirt', '<p>Nike Shirt Blue</p>', 'sale', 0),
(13, 5, 1, 1, '2021-08-20 13:00:57', 'Nike Shirt Red', 'manila front.jpg', 'manila back.jpg', 'manila back.jpg', 500, 'Shirt', '<p>Nike Shirt Red</p>', 'sale', 0),
(14, 5, 1, 1, '2021-08-20 13:01:16', 'Nike Shirt Navy', 'swoosh front.jpg', 'swoosh back.jpg', 'swoosh back.jpg', 500, 'Shirt', '<p>Nike Shirt Navy</p>', 'new', 0),
(16, 1, 1, 1, '2021-08-20 13:02:11', 'Green Celtics Hoodie', 'boston celtics front.jpg', 'boston celtics back.jpg', 'boston celtics back.jpg', 500, 'Hoodie', '<p>Green Celtics Hoodie</p>', 'sale', 0),
(17, 1, 1, 1, '2021-08-20 13:02:06', 'Red Black Striped Hoodie', 'liverpool-fc-fleece-pullover-hoodie-front.jpg', 'liverpool-fc-fleece-pullover-hoodie-back.jpg', 'liverpool-fc-fleece-pullover-hoodie-close.jpg', 500, 'Jacket', '<p>Red Jacket</p>', 'sale', 0),
(18, 1, 1, 1, '2021-08-20 13:02:18', 'Blue Warriors Hoodie', 'golden states front.jpg', 'golden states back.jpg', 'golden states back.jpg', 500, 'Jacket', '<p>Golden State Warriors</p>', 'sale', 0),
(20, 1, 1, 1, '2021-08-20 13:02:34', 'Blue Camo Hoodie', 'golden states camo front.jpg', 'golden states camo back2.jpg', 'golden states camo back.jpg', 500, 'Jacket', '<p>Blue Hoodie</p>', 'new', 0),
(21, 5, 2, 1, '2021-08-20 13:02:40', 'Women T-Shirt Black', 'sportswear-boxy-t-shirt-front.jpg', 'sportswear-boxy-t-shirt-back.jpg', 'sportswear-boxy-t-shirt-close.jpg', 500, 'Shirt', '<p>Women T-Shirt Black</p>', 'new', 0),
(22, 5, 2, 1, '2021-08-20 13:02:47', 'Women T-Shirt Blue', 'sportswear-t-shirt-front.jpg', 'sportswear-t-shirt-black.jpg', 'sportswear-t-shirt-close.jpg', 500, 'Shirt', '<p>Women T-Shirt Blue</p>', 'new', 0),
(23, 5, 2, 1, '2021-08-20 13:03:04', 'Women T-Shirt Pink', 'sportswear-t-shirt-pink front.jpg', 'sportswear-t-shirt-pink back.jpg', 'sportswear-t-shirt-pink close.jpg', 500, 'Shirt', '<p>Women T-Shirt Pink</p>', 'sale', 0),
(24, 5, 2, 1, '2021-08-20 13:03:10', 'Women T-Shirt White', 'sportswear-t-shirt-white front.jpg', 'sportswear-t-shirt-white back.jpg', 'sportswear-t-shirt-white close.jpg', 500, 'Shirt', '<p>Women T-Shirt Pink</p>', 'new', 0),
(25, 1, 2, 0, '2021-08-20 01:03:55', 'Blue Hoodie Women', 'jordan-23-engineered-fleece-pullover-hoodie-front.jpg', 'jordan-23-engineered-fleece-pullover-hoodie-back.jpg', 'jordan-23-engineered-fleece-pullover-hoodie-close.jpg', 500, 'Jacket', '<p>Blue Hoodie Women</p>', 'new', 0),
(28, 1, 2, 0, '2021-08-20 01:03:56', 'Pink Hoodie Women', 'jordan-flight-fleece-pullover-hoodie-front.jpg', 'jordan-flight-fleece-pullover-hoodie-back.jpg', 'jordan-flight-fleece-pullover-hoodie-close.jpg', 500, 'Jacket', '<p>Pink Hoodie Women</p>', 'new', 0),
(29, 1, 2, 0, '2021-08-20 01:03:57', 'Grey Hoodie Women', 'sportswear-hoodie-grey-front.jpg', 'sportswear-hoodie-grey-back.jpg', 'sportswear-hoodie-grey-close.jpg', 500, 'Jacket', '<p>Pink Hoodie Women</p>', 'new', 0),
(31, 1, 2, 0, '2021-08-20 01:04:01', 'White Hoodie Women', 'sportswear-fleece-hoodie-front.jpg', 'sportswear-fleece-hoodie-back.jpg', 'sportswear-fleece-hoodie-close.jpg', 500, 'Jacket', '<p>White Hoodie Women</p>', 'new', 0),
(33, 3, 2, 0, '2021-08-20 01:04:03', 'Women Air Force 1 Red', 'air-force-1-07-essential-shoe-front.jpg', 'air-force-1-07-essential-shoe-back.jpg', 'air-force-1-07-essential-shoe-close.jpg', 500, 'Shoes', '<p>Women Shoes Nike Air Force 1 Red</p>', 'new', 0),
(34, 3, 2, 0, '2021-08-20 01:04:04', 'Women Air Force 1', 'air-force-1-07-shoe-front.jpg', 'air-force-1-07-shoe-back.jpg', 'air-force-1-07-shoe-close.jpg', 500, 'Shoes', '<p>Women Nike Air Force 1 Pink</p>', 'new', 0),
(35, 3, 2, 0, '2021-08-20 01:04:07', 'Women Air Force 1 Crater', 'air-force-1-crater-shoe-front.jpg', 'air-force-1-crater-shoe-back.jpg', 'air-force-1-crater-shoe-close.jpg', 500, 'Shoes', '<p>Women Air Force 1 Crater</p>', 'sale', 0),
(36, 3, 2, 0, '2021-08-20 01:04:14', 'Women Air Max Pink', 'air-max-90-shoe-front.jpg', 'air-max-90-shoe-back.jpg', 'air-max-90-shoe-close.jpg', 500, 'Shoes', '<p>Women Air Max Pink</p>', 'sale', 0),
(37, 3, 1, 0, '2021-08-20 01:04:17', 'Men Air Force 1', 'air-force-1-07-shoe-men-front.jpg', 'air-force-1-07-shoe-men-back.jpg', 'air-force-1-07-shoe-men-close.jpg', 500, 'Shoes', '<p>Men Air Force 1</p>', 'sale', 0),
(38, 3, 1, 0, '2021-08-20 01:04:21', 'Men Air Force 1 Blue', 'air-force-1-07-lv8-shoe-front.jpg', 'air-force-1-07-lv8-shoe-back.jpg', 'air-force-1-07-lv8-shoe-close.jpg', 500, 'Shoes', '<p>Men Air Force 1 Blue</p>', 'new', 0),
(39, 3, 1, 0, '2021-08-20 01:04:23', 'Men Nike Zoom Black', 'air-zoom-vomero-16-road-running-shoe-front.jpg', 'air-zoom-vomero-16-road-running-shoe-back.jpg', 'air-zoom-vomero-16-road-running-shoe-close.jpg', 500, 'Shoes', '<p>Men Nike Zoom Black</p>', 'new', 0),
(40, 3, 1, 0, '2021-08-20 01:04:25', 'Men Air Max Black', 'air-max-90-shoe-men-front.jpg', 'air-max-90-shoe-men-back.jpg', 'air-max-90-shoe-men-close.jpg', 500, 'Shoes', '<p>Men Air Max Black</p>', 'new', 0),
(41, 2, 1, 0, '2021-08-20 01:04:27', 'Nike Backpack', 'heritage-backpack-front.jpg', 'heritage-backpack-close.jpg', 'heritage-backpack-back.jpg', 500, 'Bag', '<p>Nike Backpack</p>', 'new', 0),
(42, 2, 1, 0, '2021-08-18 16:42:20', 'Men Nike Bag', 'tech-cross-body-bag-front.jpg', 'tech-cross-body-bag-back.jpg', 'tech-cross-body-bag-close.jpg', 500, 'Bag', '<p>Men Nike Bag</p>', '', 0),
(43, 2, 2, 0, '2021-08-18 16:44:47', 'Women Gymsack Bag', 'printed-gymsack-front.jpg', 'printed-gymsack-back.jpg', 'printed-gymsack-close.jpg', 500, 'Bag', '<p>Women Nike Gymsack Bag</p>', '', 0),
(44, 2, 2, 0, '2021-08-18 16:43:59', 'Women Nike Bag', 'heritage-cross-body-bag-front.jpg', 'heritage-cross-body-bag-back.jpg', 'heritage-cross-body-bag-close.jpg', 500, 'Bag', '<p>Women Nike Bag</p>', '', 0),
(46, 5, 3, 0, '2021-08-19 02:29:53', 'Kids Brazil Jersey', 'brazil-2020-stadium-home-older-football-shirt-front.jpg', 'brazil-2020-stadium-home-older-football-shirt-back.jpg', 'brazil-2020-stadium-home-older-football-shirt-close.jpg', 500, 'Shirt', '<p>Kids Brazil Jersey</p>', '', 0),
(48, 5, 3, 1, '2021-08-20 13:01:58', 'Kids Liverpool Jersey', 'liverpool-fc-older-football-t-shirt-front.jpg', 'liverpool-fc-older-football-t-shirt-back.jpg', 'liverpool-fc-older-football-t-shirt-close.jpg', 500, 'Shirt', '<p>Kids Liverpool Jersey</p>', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(1, ' Jackets ', 'yes', ''),
(2, ' Accessories ', 'yes', ''),
(3, ' Shoes ', 'yes', ''),
(4, ' Coats ', 'yes', ''),
(5, ' T-Shirt ', 'yes', '');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  `slide_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`, `slide_url`) VALUES
(1, 'Slide number 1', 'slide1.jpg', 'http://localhost/BADBEATS/index.php'),
(2, 'Slide number 1', 'slide2.jpg', 'http://localhost/BADBEATS/shop.php'),
(3, 'Slide number 3', 'slide3.jpg', 'http://localhost/BADBEATS/contact.php'),
(4, 'Slide number 4', 'slide4.jpg', 'http://localhost/BADBEATS/customer_register.php');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `boxes_section`
--
ALTER TABLE `boxes_section`
  ADD PRIMARY KEY (`box_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `boxes_section`
--
ALTER TABLE `boxes_section`
  MODIFY `box_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
