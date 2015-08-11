-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2015 at 04:03 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timeshare`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_tb`
--

CREATE TABLE IF NOT EXISTS `address_tb` (
  `address_id` int(11) NOT NULL,
  `country` varchar(50) NOT NULL DEFAULT 'Bangladesh',
  `district` int(11) NOT NULL,
  `Upzila` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address_tb`
--

INSERT INTO `address_tb` (`address_id`, `country`, `district`, `Upzila`) VALUES
(1, 'Bangladesh', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE IF NOT EXISTS `agent` (
  `a_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `agent_licence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE IF NOT EXISTS `buyer` (
  `b_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `total family memebr` int(11) NOT NULL,
  `yearly_income` double unsigned NOT NULL,
  `educational_qualification` varchar(100) NOT NULL,
  `other_existing_home` int(11) NOT NULL,
  `documents_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `buyer_has_doc`
--

CREATE TABLE IF NOT EXISTS `buyer_has_doc` (
  `b_d_no` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `home_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `developer`
--

CREATE TABLE IF NOT EXISTS `developer` (
  `dp_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `company_name` varchar(20) NOT NULL,
  `licence_no` int(11) NOT NULL,
  `company_chearman` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE IF NOT EXISTS `district` (
  `d_id` int(20) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE IF NOT EXISTS `documents` (
  `doc_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `size` int(11) NOT NULL,
  `content` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hire_tb`
--

CREATE TABLE IF NOT EXISTS `hire_tb` (
  `hire_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `dp_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE IF NOT EXISTS `home` (
  `home_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `developer` varchar(50) DEFAULT NULL,
  `owner` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `home_feature_tb`
--

CREATE TABLE IF NOT EXISTS `home_feature_tb` (
  `home_feature_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `address` int(11) NOT NULL,
  `no_of_room` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE IF NOT EXISTS `owner` (
  `owner_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rating_for_seller`
--

CREATE TABLE IF NOT EXISTS `rating_for_seller` (
  `rating_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rent_tb`
--

CREATE TABLE IF NOT EXISTS `rent_tb` (
  `rent_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `home_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sale_tb`
--

CREATE TABLE IF NOT EXISTS `sale_tb` (
  `sale_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `home_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE IF NOT EXISTS `seller` (
  `s_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `upzilla_tb`
--

CREATE TABLE IF NOT EXISTS `upzilla_tb` (
  `uzila_id` int(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `d_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `u_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `phone` int(20) NOT NULL,
  `Nationality` varchar(50) NOT NULL,
  `marital_status` varchar(60) NOT NULL,
  `National_id_or_passpost_no` varchar(60) NOT NULL,
  `tin_no` varchar(60) NOT NULL,
  `address_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

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
  `wish_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_tb`
--
ALTER TABLE `address_tb`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `address_id` (`address_id`),
  ADD KEY `district` (`district`),
  ADD KEY `Upzila` (`Upzila`);

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`a_id`),
  ADD UNIQUE KEY `licence` (`agent_licence`),
  ADD KEY `seller` (`seller_id`);

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`b_id`),
  ADD KEY `u_id` (`u_id`),
  ADD KEY `documents_id` (`documents_id`);

--
-- Indexes for table `buyer_has_doc`
--
ALTER TABLE `buyer_has_doc`
  ADD PRIMARY KEY (`b_d_no`);

--
-- Indexes for table `developer`
--
ALTER TABLE `developer`
  ADD PRIMARY KEY (`dp_id`),
  ADD KEY `seller_id` (`seller_id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`d_id`),
  ADD UNIQUE KEY `d_id` (`d_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `hire_tb`
--
ALTER TABLE `hire_tb`
  ADD PRIMARY KEY (`hire_id`),
  ADD KEY `agent_id` (`agent_id`),
  ADD KEY `dp_id` (`dp_id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`home_id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `home_feature_tb`
--
ALTER TABLE `home_feature_tb`
  ADD PRIMARY KEY (`home_feature_id`),
  ADD KEY `address` (`address`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`owner_id`),
  ADD KEY `uid` (`seller_id`),
  ADD KEY `seller_id` (`seller_id`);

--
-- Indexes for table `rating_for_seller`
--
ALTER TABLE `rating_for_seller`
  ADD PRIMARY KEY (`rating_id`),
  ADD KEY `seller_id` (`seller_id`),
  ADD KEY `buyer_id` (`buyer_id`);

--
-- Indexes for table `rent_tb`
--
ALTER TABLE `rent_tb`
  ADD PRIMARY KEY (`rent_id`),
  ADD KEY `seller_id` (`seller_id`),
  ADD KEY `home_id` (`home_id`);

--
-- Indexes for table `sale_tb`
--
ALTER TABLE `sale_tb`
  ADD PRIMARY KEY (`sale_id`),
  ADD KEY `seller_id` (`seller_id`),
  ADD KEY `home_id` (`home_id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `upzilla_tb`
--
ALTER TABLE `upzilla_tb`
  ADD PRIMARY KEY (`uzila_id`),
  ADD KEY `d_id` (`d_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`),
  ADD KEY `address_id` (`address_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wish_id`),
  ADD KEY `buyer_id` (`buyer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address_tb`
--
ALTER TABLE `address_tb`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `agent`
--
ALTER TABLE `agent`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `buyer_has_doc`
--
ALTER TABLE `buyer_has_doc`
  MODIFY `b_d_no` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `developer`
--
ALTER TABLE `developer`
  MODIFY `dp_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `d_id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hire_tb`
--
ALTER TABLE `hire_tb`
  MODIFY `hire_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `home_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `owner_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rating_for_seller`
--
ALTER TABLE `rating_for_seller`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rent_tb`
--
ALTER TABLE `rent_tb`
  MODIFY `rent_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sale_tb`
--
ALTER TABLE `sale_tb`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `upzilla_tb`
--
ALTER TABLE `upzilla_tb`
  MODIFY `uzila_id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wish_id` int(11) NOT NULL AUTO_INCREMENT;
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
-- Constraints for table `hire_tb`
--
ALTER TABLE `hire_tb`
  ADD CONSTRAINT `developer_hired` FOREIGN KEY (`dp_id`) REFERENCES `developer` (`dp_id`),
  ADD CONSTRAINT `hire_agent` FOREIGN KEY (`agent_id`) REFERENCES `agent` (`a_id`),
  ADD CONSTRAINT `owner_hired` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`owner_id`);

--
-- Constraints for table `home_feature_tb`
--
ALTER TABLE `home_feature_tb`
  ADD CONSTRAINT `home_address` FOREIGN KEY (`address`) REFERENCES `address_tb` (`address_id`),
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
-- Constraints for table `rent_tb`
--
ALTER TABLE `rent_tb`
  ADD CONSTRAINT `home` FOREIGN KEY (`home_id`) REFERENCES `home` (`home_id`),
  ADD CONSTRAINT `rent_home` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`s_id`);

--
-- Constraints for table `sale_tb`
--
ALTER TABLE `sale_tb`
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
  ADD CONSTRAINT `user_address` FOREIGN KEY (`address_id`) REFERENCES `address_tb` (`address_id`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `byer_wish` FOREIGN KEY (`buyer_id`) REFERENCES `buyer` (`b_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
