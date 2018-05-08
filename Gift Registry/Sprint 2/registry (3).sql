-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 16, 2017 at 10:02 PM
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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT NULL,
  `Product_id` int(11) DEFAULT NULL,
  `Invitee_email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Product_id` (`Product_id`),
  KEY `Invitee_email` (`Invitee_email`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`Id`, `quantity`, `Product_id`, `Invitee_email`) VALUES
(1, 1, 1, 'NSusan@g-mail.com'),
(2, 2, 5, 'michel@gmail.com'),
(3, 2, 4, 'ghashju@gmail.com'),
(4, 1, 8, 'youngljul@gmail.com'),
(5, 1, 11, 'stevefrick@gmail.com');

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
-- Table structure for table `gatheringguests`
--

DROP TABLE IF EXISTS `gatheringguests`;
CREATE TABLE IF NOT EXISTS `gatheringguests` (
  `email_address` varchar(50) NOT NULL,
  `gathering_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`email_address`),
  KEY `gathering_id` (`gathering_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gatheringguests`
--

INSERT INTO `gatheringguests` (`email_address`, `gathering_id`) VALUES
('lee@gmail.com', 1),
('NSusan@gmail.com', 1),
('yjeff22@gmail.com', 1),
('lkelv@yahoo.com', 2),
('ghashju@gmail.com', 2),
('FrancoKeith@gmail.com,', 2),
('Jerry@gmail.com', 2),
('julie@gmail.com', 2),
('michel@gmail.com', 3),
('Taylor@gmail.com', 3),
('youngljul@gmail.com', 3),
('marysy@gmail.com', 3),
('valthompson@gmail.com', 4),
('martaher@gmail.com', 4),
('stevefrick@gmail.com', 4),
('winghaung@gmail.com', 4),
('brownjul@gmail.com', 5),
('brownwill@gmail.com', 5),
('chandlerb@gmail.com', 5),
('yosho@gmail.com', 6),
('mariaherenandaz@gmail.com', 6),
('danlewis@gmail.com', 6),
('suwfrick@gmail.com', 7),
('francoval@gmail.com', 7),
('rosasal@gmail.com', 7);

-- --------------------------------------------------------

--
-- Table structure for table `invitee`
--

DROP TABLE IF EXISTS `invitee`;
CREATE TABLE IF NOT EXISTS `invitee` (
  `email_address` varchar(50) DEFAULT NULL,
  `first_name` varchar(15) DEFAULT NULL,
  `middle_name` varchar(15) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `password` varchar(15) NOT NULL,
  `address_line1` varchar(50) DEFAULT NULL,
  `address_line2` varchar(50) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `state` varchar(15) DEFAULT NULL,
  `zipcode` varchar(20) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invitee`
--

INSERT INTO `invitee` (`email_address`, `first_name`, `middle_name`, `last_name`, `password`, `address_line1`, `address_line2`, `city`, `state`, `zipcode`, `phone_number`) VALUES
('NSusan@g-mail.com', 'Susan', 'S', 'Nelson', 'bdshba', '5677 Strong St.', NULL, 'San Rafael', 'CA', '97562', '4155551450'),
('lee@gmail.com', 'Kwai', 'A', 'Lee', 'dsjbda', '897 Long Airport Avenue', NULL, 'NYC', 'NY', '10022', '2125557818'),
('yjeff22@gmail.com', 'Jeff', NULL, 'Young', 'ncjdskn66', '4092 Furth Circle', 'Suite 400', 'NYC', 'NY', '10022', '2125557413'),
('lkelv@yahoo.com', 'Kelvin', 'K', 'Leong', 'asasa1', '7586 Pompton St.', NULL, 'Allentown', 'PA', '70267', '2155551555'),
('ghashju@gmail.com', 'Juri', 'Z', 'Hashimoto', 'dbshaa', '9408 Furth Circle', NULL, 'Burlingame', 'CA', '94217', '6505556809'),
('FrancoKeith@gmail.com', 'Keith', NULL, 'Franco', 'dasadx1', '149 Spinnaker Dr.', 'Suite 101', 'New Haven', 'CT', '97823', '2035557845'),
('Jerry@gmail.com', 'Jerry', NULL, 'Tseng', 'tom11', '4658 Baden Av.', NULL, 'Cambridge', 'MA', '51247', '6175555555'),
('julie@gmail.com', 'Julie', 'D', 'King', 'ddsdsa', '25593 South Bay Ln.', NULL, 'Bridgewater', 'CT', '97562', '2035552570'),
('michel@gmail.com', 'Michael', NULL, 'Frick', 'dsad22', '2678 Kingston Rd.', 'Suite 101', 'NYC', 'NY', '10022', '2125551500'),
('Taylor@gmail.com', 'Leslie', 'K', 'Taylor', 'dbaadakn', '16780 Pompton St.', NULL, 'Brickhaven', 'MA', '58339', '6175558428'),
('youngljul@gmail.com', 'Julie', 'L', 'Young', 'kajwdna', '78934 Hillside Dr.', NULL, 'Pasadena', 'CA', '90003', '6265557265'),
('marysy@gmail.com', 'Mary', 'S', 'Young', 'k.qdjw', '4097 Douglas Av.', NULL, 'Glendale', 'CA', '92561', '3105552373'),
('valthompson@gmail.com', 'Valarie', 'C', 'Thompson', 'kasjdn', '361 Furth Circle', NULL, 'San Diego', 'CA', '91217', '7605558146'),
('martaher@gmail.com', 'Marta', NULL, 'Hernandez', 'wkdlbsd', '39323 Spinnaker Dr.', NULL, 'Cambridge', 'MA', '51247', '6175558555'),
('stevefrick@gmail.com', 'Steve', 'P', 'Frick', 'weknf', '3758 North Pendale Street', NULL, 'White Plains', 'NY', '24067', '9145554562'),
('winghaung@gmail.com', 'Wing', 'V', 'Huang', 'sdnfsd', '4575 Hillside Dr.', NULL, 'New Bedford', 'MA', '50553', '5085559555'),
('brownjul@gmail.com', 'Julie', NULL, 'Brown', 'wsajkjk', '7734 Strong St.', NULL, 'San Francisco', 'CA', '94217', '6505551386'),
('brownwill@gmail.com', 'William', 'L', 'Brown', 'hjbhjb', '7476 Moss Rd.', NULL, 'Newark', 'NJ', '94019', '2015559350'),
('chandlerb@gmail.com', 'Brian', 'N', 'Chandler', 'huhub', '6047 Douglas Av.', NULL, 'Los Angeles', 'CA', '91003', '2155554369'),
('yosho@gmail.com', 'Juri', 'Y', 'Yoshido', 'nnnml', '8616 Spinnaker Dr.', NULL, 'Boston', 'MA', '51003', '6175559555'),
('mariaherenandaz@gmail.com', 'Maria', 'Z', 'Hernandez', 'fgcgkhj', '5905 Pompton St.', 'Suite 750', 'NYC', 'NY', '10022', '2125558493'),
('danlewis@gmail.com', 'Dan', 'R', 'Lewis', 'sfdxfdxf.', '2440 Pompton St.', NULL, 'Glendale', 'CT', '97561', '2035554407'),
('suwfrick@gmail.com', 'Sue', 'H', 'Frick', 'gvghvy', '3086 Ingle Ln.', NULL, 'San Jose', 'CA', '94217', '4085553659'),
('francoval@gmail.com', 'Valarie', 'K', 'Franco', 'HDnjdns', '6251 Ingle Ln.', NULL, 'Boston', 'MA', '51003', '6175552555'),
('rosasal@gmail.com', 'Rosa', 'G', 'Salazar', 'dnesds', '11328 Douglas Av.', NULL, 'Philadelphia', 'PA', '71270', '2155559857'),
('stevethomp@gmail.com', 'Steve', 'D', 'Thompson', 'ewjkdn', '3675 Furth Circle', NULL, 'Burbank', 'CA', '94019', '3105553722'),
('benvio@gmail.com', 'Violeta', NULL, 'Benitez', 'wqhba@', '1785 First Street', NULL, 'New Bedford', 'MA', '50553', '5085552555'),
('choi_yu@gmail.com', 'Yu', 'F', 'Choi', 'denmcds', '5290 North Pendale Street', 'Suite 200', 'NYC', 'NY', '10022', '2125551957');

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
  `address_line1` varchar(50) DEFAULT NULL,
  `address_line2` varchar(50) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `state` varchar(15) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `email_address` varchar(20) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inviter`
--

INSERT INTO `inviter` (`username`, `first_name`, `middle_name`, `last_name`, `password`, `address_line1`, `address_line2`, `city`, `state`, `zip_code`, `email_address`, `phone_number`) VALUES
('dhwanirc', 'Dhwani', NULL, 'Contractor', '12345', 'University terrace drive', NULL, 'Charlotte', 'NC', '28262', 'dhwani@gmail.com', '9998887777'),
('a1', 'Gregory', 'M', 'House', 'a1', '1061 E Main St', 'Apt 1', 'Roxboro', 'North Carolina ', '32321', 'a01@gmail.com', '9801112222'),
('a2', 'James', NULL, 'Wilson', 'a2', '2345 Park Ave', NULL, 'Roxboro', 'North Carolina ', '32465', 'a02@gmail.com', '9801112233'),
('a3', 'Lisa', NULL, 'Cuddy', 'a3', '10 Downing Rd', NULL, 'Roxboro', 'North Carolina ', '32847', 'a03@gmail.com', '9801112244'),
('a4', 'Allison', NULL, 'Cameron', 'a4', '43 N Sadie Ln', NULL, 'Roxboro', 'North Carolina ', '32986', 'a04@gmail.com', '9801112255'),
('a5', 'Eric', 'R', 'Foreman', 'a5', '89 Ridge Rd', NULL, 'Roxboro', 'North Carolina ', '32321', 'a05@gmail.com', '9801112266'),
('a6', 'Robert', NULL, 'Chase', 'a6', '91 Conifer Dr', NULL, 'Roxboro', 'North Carolina ', '32986', 'a06@gmail.com', '9801112277'),
('a7', 'James', NULL, 'Wilson', 'a7', '103 River Rd', 'Apt 7', 'Roxboro', 'North Carolina', '35263', 'a07@gmail.com', '9801112288');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `unit_price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `pm_username` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  KEY `category_id` (`category_id`),
  KEY `pm_username` (`pm_username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `unit_price`, `quantity`, `company_id`, `category_id`, `pm_username`) VALUES
(1, 'Watch', 'Wrist watch,black metal', 250, 9, 1, NULL, 'sparepal'),
(2, 'Blender', 'With regulator', 25, 8, 2, 9, 'dcontra1'),
(3, 'Xbox360', '2.7.2,black', 150, 5, NULL, 11, 'jpark'),
(4, 'Perfume chrome', '15oz', 50, 5, 3, 8, 'pshirodk'),
(5, 'Crockery set', 'Set of 8 plates,bowls&spoons', 60, 10, 4, 9, 'dcontra1'),
(6, 'baby shusher', 'Made to sooth the baby', 33, 15, 5, 5, 'pshirodk'),
(7, 'Photo frame', 'To beautify your memories', 60, 10, 6, 1, 'jpark'),
(8, 'Baby kit', 'Contains Body lotion,poweder for babies', 40, 10, 7, 5, 'sparepal'),
(9, 'Night lamp', 'To lighten up your home and life', 30, 5, 6, 2, 'jpark'),
(10, 'Dinning table', 'To enjoy your meal', 100, 10, 8, NULL, 'pshirodk'),
(11, 'Dressing table', 'Contains mirror and 8 drawers', 120, 5, 8, 2, 'dcontra1'),
(12, 'Stroller', 'To take your baby anywhere with you', 70, 5, 9, 5, 'dcontra1'),
(13, 'Cradle', 'To let your baby have sound sleep', 100, 10, 9, 5, 'sparepal'),
(14, 'Wall clock', 'Brown oval shaped', 25, 30, 9, 2, 'sparepal'),
(15, 'Frames', 'Decoration Items', 10, 500, 17, 1, 'jpark'),
(16, 'Sneakers', 'Shoes', 30, 200, 6, 7, 'sparepal'),
(17, 'Barbie Set', 'Disney Barbie doll set', 25, 100, 17, 8, 'dcontra1'),
(18, 'Stationary set', 'Consists Pencil & pen', 18, 50, 9, 10, 'dcontra1'),
(19, 'Make up kit', 'Consists of eye shadow,eye liner and lipstick', 50, 100, 10, 8, 'pshirodk'),
(20, 'Baby Winter Wear', 'Consists of sweaters,caps and gloves', 100, 250, 16, 6, 'pshirodk'),
(21, 'GIRLS GOTHAM 2.0 DOW', 'Super lightweight and warm', 61, 12, 10, 3, 'dcontra1'),
(22, 'Aircraft Carrier Plane', 'Perfect play for age 5-7', 50, 5, 17, 5, 'jpark'),
(23, 'HALO SleepSack Winter', 'Ideal for the colder winters', 32, 10, 16, 4, 'jpark'),
(24, 'Carters Baby Boys', 'gives high comfort hoodie', 21, 20, 6, 5, 'pshirodk'),
(25, 'Vintage Round glases', 'Carfia Polarized Sun cooloing shades', 16, 20, 13, 7, 'sparepal'),
(26, 'Chicco KeyFit 30 Zicp car seat', 'Give your child the car seat ', 270, 5, 15, 5, 'pshirodk'),
(27, 'LEGO City Coast Guard Play store', ' (415 Piece)', 46, 10, 8, 5, 'dcontra1'),
(28, 'Mens ColdGear React', 'Ideal for the cold', 75, 10, 14, 7, 'sparepal'),
(29, 'Funko Harry Potter ', ' Movie Vinyl Collection', 30, 40, 17, 5, 'pshirodk'),
(30, ' Toes, Ears, & Nose!', ' Marion Dane Bauer,soothe ', 13, 10, 10, 8, 'jpark'),
(31, 'Vacuum cleaner', 'Super powerful', 35, 10, 9, 11, 'dcontra1'),
(32, 'Girls Striped Cardigan', 'Long Sleeve Cap ', 20, 5, 10, 8, 'sparepal'),
(33, 'Pink chiffon perfume', 'Mild and sweet fragrance', 8, 10, 3, 8, 'dcontra1'),
(34, 'Round Decorative Wall hanging', 'With the finishing of oil', 33, 15, 8, 2, 'dcontra1'),
(35, 'Amped Fleece Throw Comforter', 'Supersoft to have a sound sleep', 25, 20, 9, 1, 'jpark'),
(36, 'Baxton Studio Nelson', 'small table to enjoy a tea', 45, 5, 8, 1, 'sparepal');

-- --------------------------------------------------------

--
-- Table structure for table `productcategory`
--

DROP TABLE IF EXISTS `productcategory`;
CREATE TABLE IF NOT EXISTS `productcategory` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productcategory`
--

INSERT INTO `productcategory` (`id`, `name`) VALUES
(1, 'Home decor'),
(2, 'Furniture'),
(3, 'Women clothing'),
(4, 'Men Clothing'),
(5, 'Baby Product'),
(6, 'Baby wearing'),
(7, 'Men accessories'),
(8, 'Women accessories'),
(9, 'Kitchen'),
(10, 'Books'),
(11, 'Electronics');

-- --------------------------------------------------------

--
-- Table structure for table `productcompany`
--

DROP TABLE IF EXISTS `productcompany`;
CREATE TABLE IF NOT EXISTS `productcompany` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productcompany`
--

INSERT INTO `productcompany` (`id`, `name`) VALUES
(1, 'Fossil'),
(2, 'MainStays'),
(3, 'Calvin Klein'),
(4, 'Correl'),
(5, 'Beige'),
(6, 'Amazon'),
(7, 'johnson & johnson'),
(8, 'IKEA'),
(9, 'Walmart'),
(10, 'Forever 21'),
(11, 'Diesel'),
(12, 'Rolex'),
(13, 'Capresse'),
(14, 'Tommy Hilfiger'),
(15, 'G-Shock'),
(16, 'Lovedbaby'),
(17, 'Target');

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
  `email_address` varchar(40) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productmanager`
--

INSERT INTO `productmanager` (`username`, `first_name`, `middle_name`, `last_name`, `password`, `address_line1`, `address_line2`, `city`, `state`, `zip_code`, `email_address`, `phone_number`) VALUES
('dcontra1', 'Dhwani', NULL, 'Contractor', '1234clt', '9527 university Terrace Drive', 'Apt #F', 'Charlotte', 'NC', '28262', 'dhwani.contractor9@gmail.com', '980-365-9169'),
('sparepal', 'Vikhyat', NULL, 'Sai', '5678clt', '9548 university Terrace Drive', 'Apt #F', 'Charlotte', 'NC', '28262', 'saivikhyat@gmail.com', '980-365-9999'),
('jpark', 'Jeongwan', NULL, 'Park', '1478clt', 'Colonial grand', 'Apt #G', 'Charlotte', 'NC', '28232', 'jpark@gmail.com', '980-333-9169'),
('pshirodk', 'Prutha', NULL, 'Shirodkar', '1596clt', '10001 University Terrace North', 'Apt #B', 'Charlotte', 'NC', '28262', 'pshirodk@gmail.com', '980-333-9898');

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewgathering_byinvter`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `viewgathering_byinvter`;
CREATE TABLE IF NOT EXISTS `viewgathering_byinvter` (
`id` int(11)
,`name` varchar(15)
,`date` datetime
,`description` varchar(100)
,`address_line1` varchar(20)
,`address_line2` varchar(20)
,`city` varchar(15)
,`state` varchar(15)
,`zip_code` varchar(10)
,`inviter_username` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewwishlist_invitee`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `viewwishlist_invitee`;
CREATE TABLE IF NOT EXISTS `viewwishlist_invitee` (
`Product Name` varchar(40)
,`Description` varchar(50)
,`Quantity` int(11)
,`Unit Price` int(11)
,`email_address` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewwishlist_pmanager`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `viewwishlist_pmanager`;
CREATE TABLE IF NOT EXISTS `viewwishlist_pmanager` (
`ID` int(11)
,`Category ID` int(11)
,`Company ID` int(11)
,`Quantity` int(11)
,`Unit Price` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `wishlistproduct`
--

DROP TABLE IF EXISTS `wishlistproduct`;
CREATE TABLE IF NOT EXISTS `wishlistproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT '1',
  `gathering_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gathering_id` (`gathering_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlistproduct`
--

INSERT INTO `wishlistproduct` (`id`, `quantity`, `gathering_id`, `product_id`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 9),
(3, 1, 1, 10),
(4, 1, 1, 11),
(5, 2, 2, 8),
(6, 1, 2, 12),
(7, 1, 2, 13),
(8, 1, 5, 1),
(9, 1, 5, 25),
(10, 1, 5, 21),
(11, 1, 5, 4);

-- --------------------------------------------------------

--
-- Structure for view `viewgathering_byinvter`
--
DROP TABLE IF EXISTS `viewgathering_byinvter`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewgathering_byinvter`  AS  select `a`.`id` AS `id`,`a`.`name` AS `name`,`a`.`date` AS `date`,`a`.`description` AS `description`,`a`.`address_line1` AS `address_line1`,`a`.`address_line2` AS `address_line2`,`a`.`city` AS `city`,`a`.`state` AS `state`,`a`.`zip_code` AS `zip_code`,`a`.`inviter_username` AS `inviter_username` from (`gathering` `a` join `inviter` `b` on((`a`.`inviter_username` = `b`.`username`))) group by `a`.`inviter_username` ;

-- --------------------------------------------------------

--
-- Structure for view `viewwishlist_invitee`
--
DROP TABLE IF EXISTS `viewwishlist_invitee`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewwishlist_invitee`  AS  select `p`.`name` AS `Product Name`,`p`.`description` AS `Description`,`p`.`quantity` AS `Quantity`,`p`.`unit_price` AS `Unit Price`,`gg`.`email_address` AS `email_address` from ((`gatheringguests` `gg` join `wishlistproduct` `wl` on((`gg`.`gathering_id` = `wl`.`gathering_id`))) join `product` `p` on((`p`.`id` = `wl`.`product_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `viewwishlist_pmanager`
--
DROP TABLE IF EXISTS `viewwishlist_pmanager`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewwishlist_pmanager`  AS  select `p`.`id` AS `ID`,`p`.`category_id` AS `Category ID`,`p`.`company_id` AS `Company ID`,`p`.`quantity` AS `Quantity`,`p`.`unit_price` AS `Unit Price` from (`product` `p` join `productmanager` `pm` on((`p`.`pm_username` = `pm`.`username`))) ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
