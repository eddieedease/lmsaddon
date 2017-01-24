-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Nov 19, 2016 at 09:56 PM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dtsextra`
--

-- --------------------------------------------------------

--
-- Table structure for table `aa`
--

CREATE TABLE `aa` (
  `id` int(10) NOT NULL,
  `ww` varchar(500) NOT NULL,
  `skips` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aa`
--

INSERT INTO `aa` (`id`, `ww`, `skips`) VALUES
(1, '82a3f212c95c1516907f27e1220c6f13', '');

-- --------------------------------------------------------

--
-- Table structure for table `power`
--

CREATE TABLE `power` (
  `id` int(11) NOT NULL,
  `bedrijf` varchar(200) NOT NULL,
  `naam` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `ww` varchar(50) NOT NULL,
  `info` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aa`
--
ALTER TABLE `aa`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `power`
--
ALTER TABLE `power`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id_5` (`id`), ADD KEY `id` (`id`), ADD KEY `id_2` (`id`), ADD KEY `id_3` (`id`), ADD KEY `id_4` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
