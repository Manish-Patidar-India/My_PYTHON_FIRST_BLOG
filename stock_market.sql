-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2021 at 02:54 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stock market`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(9, 'WHAT IS THE MINIMUM AMOUNT REQUIRED TO OPEN A DEMAT ACCOUNT?', 'In investing, what is comfortable is rarely profitable.', 'post1', 'Demat account has been a point of discussion in the past blogs. Every individual which has fair knowledge about share market knows that holding a demat account is mandatory in order to trade in the share market. Any investor in India who intends to own securities such as stocks, bonds, or mutual funds must first open a demat account. Demat accounts are electronic records that track the ownership of tradable assets.', 'share.sgv', '2021-03-07 19:13:57'),
(10, 'TATA MOTORS, ELECTRONIC MOTOR VEHICLES, AUTOMOBILE ', 'TATA MOTORS LIKELY TO LAUNCH MORE ELECTRIC MOTOR VEHICLES IN 2021-22', 'post2', 'Recognizing electric vehicles as transportation\'\'s future, the automotive industry is revolutionizing the way energy is used, produced and redirected to address the growing concerns about greenhouse gas emissions and their contribution to global warming by bringing in an era of smart transport with the help of electric vehicles.', 'post-bg.jpg', '2021-03-07 19:00:07'),
(11, 'INTRADAY TRADING, POSITION TRADING, INTRADAY VS PO ', 'INTRADAY TRADING VS POSITION TRADING', 'post3', 'Each trader has an opportunity to choose the form of trading from the two key options available on the share market, i.e., Intraday and Positional. There is no need to pick one of them as the trader can choose both options with his single D-mat account for trading. But according to his investment, the trader must choose his form of exchange', 'intaday.sgv', '2021-03-07 19:11:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
