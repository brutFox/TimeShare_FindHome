-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2015 at 10:18 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `timeshare`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(50) NOT NULL DEFAULT 'Bangladesh',
  `district` int(11) NOT NULL,
  `Upzila` int(11) NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `address_id` (`address_id`),
  KEY `district` (`district`),
  KEY `Upzila` (`Upzila`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `country`, `district`, `Upzila`) VALUES
(1, 'Bangladesh', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE IF NOT EXISTS `agent` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_id` int(11) NOT NULL,
  `agent_licence` int(11) NOT NULL,
  PRIMARY KEY (`a_id`),
  UNIQUE KEY `licence` (`agent_licence`),
  KEY `seller` (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE IF NOT EXISTS `buyer` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `total family memebr` int(11) NOT NULL,
  `yearly_income` double unsigned NOT NULL,
  `educational_qualification` varchar(100) NOT NULL,
  `other_existing_home` int(11) NOT NULL,
  `documents_id` int(11) NOT NULL,
  PRIMARY KEY (`b_id`),
  KEY `u_id` (`u_id`),
  KEY `documents_id` (`documents_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `buyer_has_doc`
--

CREATE TABLE IF NOT EXISTS `buyer_has_doc` (
  `b_d_no` int(11) NOT NULL AUTO_INCREMENT,
  `buyer_id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `home_id` int(11) NOT NULL,
  PRIMARY KEY (`b_d_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `developer`
--

CREATE TABLE IF NOT EXISTS `developer` (
  `dp_id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_id` int(11) NOT NULL,
  `company_name` varchar(20) NOT NULL,
  `licence_no` int(11) NOT NULL,
  `company_chearman` varchar(20) NOT NULL,
  PRIMARY KEY (`dp_id`),
  KEY `seller_id` (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE IF NOT EXISTS `district` (
  `d_id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`d_id`),
  UNIQUE KEY `d_id` (`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE IF NOT EXISTS `documents` (
  `doc_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `size` int(11) NOT NULL,
  `content` mediumblob NOT NULL,
  PRIMARY KEY (`doc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hire`
--

CREATE TABLE IF NOT EXISTS `hire` (
  `hire_id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `dp_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`hire_id`),
  KEY `agent_id` (`agent_id`),
  KEY `dp_id` (`dp_id`),
  KEY `owner_id` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE IF NOT EXISTS `home` (
  `home_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `developer` varchar(50) DEFAULT NULL,
  `owner` varchar(50) NOT NULL,
  PRIMARY KEY (`home_id`),
  KEY `u_id` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `home_feature`
--

CREATE TABLE IF NOT EXISTS `home_feature` (
  `home_feature_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `address` int(11) NOT NULL,
  `no_of_room` int(11) NOT NULL,
  PRIMARY KEY (`home_feature_id`),
  KEY `address` (`address`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE IF NOT EXISTS `owner` (
  `owner_id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_id` int(11) NOT NULL,
  PRIMARY KEY (`owner_id`),
  KEY `uid` (`seller_id`),
  KEY `seller_id` (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rating_for_seller`
--

CREATE TABLE IF NOT EXISTS `rating_for_seller` (
  `rating_id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  PRIMARY KEY (`rating_id`),
  KEY `seller_id` (`seller_id`),
  KEY `buyer_id` (`buyer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rent`
--

CREATE TABLE IF NOT EXISTS `rent` (
  `rent_id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_id` int(11) NOT NULL,
  `home_id` int(11) NOT NULL,
  PRIMARY KEY (`rent_id`),
  KEY `seller_id` (`seller_id`),
  KEY `home_id` (`home_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE IF NOT EXISTS `sale` (
  `sale_id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_id` int(11) NOT NULL,
  `home_id` int(11) NOT NULL,
  PRIMARY KEY (`sale_id`),
  KEY `seller_id` (`seller_id`),
  KEY `home_id` (`home_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE IF NOT EXISTS `seller` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  PRIMARY KEY (`s_id`),
  KEY `u_id` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `upazilla`
--

CREATE TABLE IF NOT EXISTS `upazilla` (
  `uzila_id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `d_id` int(20) NOT NULL,
  PRIMARY KEY (`uzila_id`),
  KEY `d_id` (`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `phone` int(20) NOT NULL,
  `Nationality` varchar(50) NOT NULL,
  `marital_status` varchar(60) NOT NULL,
  `National_id_or_passpost_no` varchar(60) NOT NULL,
  `tin_no` varchar(60) NOT NULL,
  `address_id` int(11) NOT NULL,
  PRIMARY KEY (`u_id`),
  KEY `address_id` (`address_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `name`, `email`, `gender`, `phone`, `Nationality`, `marital_status`, `National_id_or_passpost_no`, `tin_no`, `address_id`) VALUES
(1, 'rafat', 'r4rafat@ymail.com', 'm', 155324372, 'Bangladeshi', 'Single', '01234', '98765', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE IF NOT EXISTS `wishlist` (
  `wish_id` int(11) NOT NULL AUTO_INCREMENT,
  `buyer_id` int(11) NOT NULL,
  PRIMARY KEY (`wish_id`),
  KEY `buyer_id` (`buyer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agent`
--
ALTER TABLE `agent`
  ADD CONSTRAINT `agend_sid` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`s_id`);

--
-- Constraints for table `buyer`
--
ALTER TABLE `buyer`
  ADD CONSTRAINT `documents` FOREIGN KEY (`documents_id`) REFERENCES `documents` (`doc_id`),
  ADD CONSTRAINT `u_id` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`);

--
-- Constraints for table `developer`
--
ALTER TABLE `developer`
  ADD CONSTRAINT `dp_seller_id` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`s_id`);

--
-- Constraints for table `hire`
--
ALTER TABLE `hire`
  ADD CONSTRAINT `developer_hired` FOREIGN KEY (`dp_id`) REFERENCES `developer` (`dp_id`),
  ADD CONSTRAINT `hire_agent` FOREIGN KEY (`agent_id`) REFERENCES `agent` (`a_id`),
  ADD CONSTRAINT `owner_hired` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`owner_id`);

--
-- Constraints for table `home_feature`
--
ALTER TABLE `home_feature`
  ADD CONSTRAINT `home_address` FOREIGN KEY (`address`) REFERENCES `address` (`address_id`),
  ADD CONSTRAINT `home_id` FOREIGN KEY (`home_feature_id`) REFERENCES `home` (`home_id`);

--
-- Constraints for table `owner`
--
ALTER TABLE `owner`
  ADD CONSTRAINT `owner_sid` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`s_id`);

--
-- Constraints for table `rating_for_seller`
--
ALTER TABLE `rating_for_seller`
  ADD CONSTRAINT `rate_by_buyer` FOREIGN KEY (`buyer_id`) REFERENCES `buyer` (`b_id`),
  ADD CONSTRAINT `rate_seller` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`s_id`);

--
-- Constraints for table `rent`
--
ALTER TABLE `rent`
  ADD CONSTRAINT `home` FOREIGN KEY (`home_id`) REFERENCES `home` (`home_id`),
  ADD CONSTRAINT `rent_home` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`s_id`);

--
-- Constraints for table `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `home_sell` FOREIGN KEY (`home_id`) REFERENCES `home` (`home_id`),
  ADD CONSTRAINT `sell_home` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`s_id`);

--
-- Constraints for table `seller`
--
ALTER TABLE `seller`
  ADD CONSTRAINT `seller_uid` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_address` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `byer_wish` FOREIGN KEY (`buyer_id`) REFERENCES `buyer` (`b_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
