-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 14, 2017 at 11:42 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registry`
--

-- --------------------------------------------------------

--
-- Table structure for table `gathering`
--

DROP TABLE IF EXISTS `gathering`;
CREATE TABLE IF NOT EXISTS `gathering` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `address_line1` varchar(20) DEFAULT NULL,
  `address_line2` varchar(20) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `state` varchar(15) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `inviter_username` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `inviter_username` (`inviter_username`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gathering`
--

INSERT INTO `gathering` (`id`, `name`, `date`, `description`, `address_line1`, `address_line2`, `city`, `state`, `zip_code`, `inviter_username`) VALUES
(1, 'Wedding', '2018-01-01 00:00:00', 'My wonderful wedding', '1061 Reese BLVD', 'A Baptist Church', 'Huntersville', 'North Carolina ', '32321', 'a1'),
(2, 'Baby Shower', '2018-03-01 00:00:00', 'My first baby', '1061 Tyron BLVD', 'Novant Hospital', 'Charlotte', 'North Carolina ', '28201', 'a2'),
(3, 'Wedding', '2018-02-11 00:00:00', 'My wedding', '1234 Park Ave', 'Catholic Church', 'Charlotte', 'North Carolina ', '20001', 'a3'),
(4, 'Baby Shower', '2018-03-17 00:00:00', 'My Second Son', '1220 Church Dr', NULL, 'Charlotte', 'North Carolina ', '22002', 'a4'),
(5, 'Birthday', '2017-12-25 00:00:00', 'My Birthday is coming', '2345 Northcross Ave', 'apt 205', 'Charlotte', 'North Carolina ', '21111', 'a5'),
(6, 'Wedding', '2020-12-12 00:00:00', 'Monica weds Chandler', '1111 Reese BLVD', 'A Baptist Church', 'Irvine', 'California ', '32321', 'a6'),
(7, 'birthday', '2020-12-12 00:00:00', 'Emma’s Birthday', '246B ', 'Central perk', 'New York', 'New York ', '32321', 'a6');

-- --------------------------------------------------------

--
-- Table structure for table `invitee`
--

DROP TABLE IF EXISTS `invitee`;
CREATE TABLE IF NOT EXISTS `invitee` (
  `username` varchar(20) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `middle_name` varchar(15) DEFAULT NULL,
  `last_name` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `address_line1` varchar(20) NOT NULL,
  `address_line2` varchar(20) DEFAULT NULL,
  `city` varchar(15) NOT NULL,
  `state` varchar(15) NOT NULL,
  `zipcode` varchar(20) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `rsvp` tinyint(1) NOT NULL,
  `gathering_id` int(11) DEFAULT NULL,
  `inviter_username` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`username`),
  KEY `gathering_id` (`gathering_id`),
  KEY `inviter_username` (`inviter_username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inviter`
--

DROP TABLE IF EXISTS `inviter`;
CREATE TABLE IF NOT EXISTS `inviter` (
  `username` varchar(20) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `middle_name` varchar(15) DEFAULT NULL,
  `last_name` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `address_line1` varchar(20) DEFAULT NULL,
  `address_line2` varchar(20) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `state` varchar(15) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `email_address` varchar(20) NOT NULL,
  `phone_number1` varchar(15) DEFAULT NULL,
  `phone_number2` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inviter`
--

INSERT INTO `inviter` (`username`, `first_name`, `middle_name`, `last_name`, `password`, `address_line1`, `address_line2`, `city`, `state`, `zip_code`, `email_address`, `phone_number1`, `phone_number2`) VALUES
('a1', 'Gregory', 'M', 'House', 'a1', '1061 E Main St', 'Apt 1', 'Roxboro', 'North Carolina ', '32321', 'a01@gmail.com', '9801112222', NULL),
('a2', 'James', NULL, 'Wilson', 'a2', '2345 Park Ave', NULL, 'Roxboro', 'North Carolina ', '32465', 'a02@gmail.com', '9801112233', NULL),
('a3', 'Lisa', NULL, 'Cuddy', 'a3', '10 Downing Rd', NULL, 'Roxboro', 'North Carolina ', '32847', 'a03@gmail.com', '9801112244', NULL),
('a4', 'Allison', NULL, 'Cameron', 'a4', '43 N Sadie Ln', NULL, 'Roxboro', 'North Carolina ', '32986', 'a04@gmail.com', '9801112255', NULL),
('a5', 'Eric', 'R', 'Foreman', 'a5', '89 Ridge Rd', NULL, 'Roxboro', 'North Carolina ', '32321', 'a05@gmail.com', '9801112266', NULL),
('a6', 'Robert', NULL, 'Chase', 'a6', '91 Conifer Dr', NULL, 'Roxboro', 'North Carolina ', '32986', 'a06@gmail.com', '9801112277', NULL),
('a7', 'James', NULL, 'Wilson', 'a7', '103 River Rd', 'Apt 7', 'Roxboro', 'North Carolina', '35263', 'a07@gmail.com', '9801112288', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `company` varchar(20) DEFAULT NULL,
  `insert_date` date DEFAULT NULL,
  `pm_username` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pm_username` (`pm_username`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `quantity`, `company`, `insert_date`, `pm_username`) VALUES
(1, 'Watch', 'Wrist watch,black metal', 250, 9, 'Fossil', '2017-11-02', 'sparepal'),
(2, 'Blender', 'With regulator', 25, 8, 'MainStays', '2017-11-02', 'dcontra1'),
(3, 'Xbox360', '2.7.2,black', 150, 5, 'Fossil', '2017-11-02', 'jpark'),
(4, 'Perfume chrome', '15oz', 50, 5, 'CalvinKlein', '2017-11-02', 'pshirodk'),
(5, 'Crockery set', 'Set of 8 plates,bowls,spoon', 60, 10, 'Correl', '2017-11-02', 'dcontra1'),
(6, 'baby shusher', 'Made to sooth the baby', 32.99, 15, 'Beige', '2017-11-02', 'pshirodk'),
(7, 'Photo frame', 'To beautify your memories', 60, 10, 'Amazon', '2017-11-02', 'jpark'),
(8, 'Baby kit', 'Contains Body lotion,powder,soap specially for babies', 40, 10, 'johnson & jofnson', '2017-11-02', 'sparepal'),
(9, 'Night lamp', 'To lighten up your home and life', 30, 5, 'Amazon', '2017-11-02', 'jpark'),
(10, 'Dinning table', 'To enjoy your meal', 100, 10, 'IKEA', '2017-11-02', 'pshirodk'),
(11, 'Dressing table', 'Contains mirror and 8 drawers', 119.99, 5, 'IKEA', '2017-11-02', 'dcontra1'),
(12, 'Stroller', 'To take your baby anywhere with you', 70, 5, 'Walmart', '2017-11-02', 'dcontra1'),
(13, 'Cradle', 'To let your baby have a sound sleep', 100, 10, 'Walmart', '2017-11-02', 'sparepal'),
(14, 'Wall clock', 'Brown oval shaped', 25, 30, 'Walmart', '2017-11-02', 'sparepal');

-- --------------------------------------------------------

--
-- Table structure for table `productmanager`
--

DROP TABLE IF EXISTS `productmanager`;
CREATE TABLE IF NOT EXISTS `productmanager` (
  `username` varchar(20) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `middle_name` varchar(15) DEFAULT NULL,
  `last_name` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `address_line1` varchar(100) DEFAULT NULL,
  `address_line2` varchar(100) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `state` varchar(15) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `email_address` varchar(50) NOT NULL,
  `phone_number1` varchar(15) DEFAULT NULL,
  `phone_number2` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productmanager`
--

INSERT INTO `productmanager` (`username`, `first_name`, `middle_name`, `last_name`, `password`, `address_line1`, `address_line2`, `city`, `state`, `zip_code`, `email_address`, `phone_number1`, `phone_number2`) VALUES
('dcontra1', 'Dhwani', NULL, 'Contractor', '1234clt', '9527 university Terrace Drive', 'Apt #F', 'Charlotte', 'NC', '28262', 'dhwani.contractor9@gmail.com', '980-365-9169', NULL),
('sparepal', 'Vikhyat', NULL, 'Sai', '5678clt', '9548 university Terrace Drive', 'Apt #F', 'Charlotte', 'NC', '28262', 'saivikhyat@gmail.com', '980-365-9999', NULL),
('jpark', 'Jeongwan', NULL, 'Park', '1478clt', 'Colonial grand', 'Apt #G', 'Charlotte', 'NC', '28232', 'jpark@gmail.com', '980-333-9169', NULL),
('pshirodk', 'Prutha', NULL, 'Shirodkar', '1596clt', '10001 University Terrace North', 'Apt #B', 'Charlotte', 'NC', '28262', 'pshirodk@gmail.com', '980-333-9898', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `gathering_id` int(11) DEFAULT NULL,
  `inviter_username` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gathering_id` (`gathering_id`),
  KEY `inviter_username` (`inviter_username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
