-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2018 at 06:31 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wp_toyotires`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_cars`
--

CREATE TABLE `tb_cars` (
  `car_id` int(11) NOT NULL,
  `maker` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_cars`
--

INSERT INTO `tb_cars` (`car_id`, `maker`) VALUES
(1, 'isuzu'),
(2, 'mitsubishi'),
(3, 'toyota'),
(4, 'nissan'),
(5, 'mazda');

-- --------------------------------------------------------

--
-- Table structure for table `tb_model`
--

CREATE TABLE `tb_model` (
  `model_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `model` varchar(50) NOT NULL,
  `default_size` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_model`
--

INSERT INTO `tb_model` (`model_id`, `car_id`, `model`, `default_size`) VALUES
(1, 1, 'mu-x', '265/65 R 17'),
(2, 2, 'montero-sport', '265/60 R 18'),
(3, 3, 'avanza', '185/65 R 15'),
(4, 3, 'fortuner', '265/60 R 18'),
(5, 5, 'cx-3', '215/50 R 18'),
(6, 5, '3', '205/60 R 16');

-- --------------------------------------------------------

--
-- Table structure for table `tb_oitm`
--

CREATE TABLE `tb_oitm` (
  `item_id` int(11) NOT NULL,
  `item_code` varchar(50) NOT NULL,
  `item_desc` varchar(50) NOT NULL,
  `item_stocks` int(11) NOT NULL,
  `item_size` varchar(50) NOT NULL,
  `item_LISR` varchar(50) NOT NULL,
  `pattern_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_oitm`
--

INSERT INTO `tb_oitm` (`item_id`, `item_code`, `item_desc`, `item_stocks`, `item_size`, `item_LISR`, `pattern_id`) VALUES
(1, 'A10440041', '265/65 R 17 65 6 OPAT2 LTR TL TOYO r17', 10, '265/65 R 17', '110 / T', 2),
(2, 'A12859', '265/65 R 17 65 6 OPHT LTR TL TOYO r17', 10, '265/65 R 17', '110 / S', 1),
(3, 'M18850362', '265/65 R 17 65 6 OPUT-M LTR TL TOYO r17', 10, '265/65 R 17', '112 / H', 3),
(4, 'M22083', '265/60 R 18 60 6 OPA32-M LTR TL TOYO r18', 10, '265/60 R 18', 'BLANK', 4),
(5, 'M19950344', '265/60 R 18 60 6 OPUT-M LTR TL TOYO r18', 10, '265/60 R 18', '112 / H', 3),
(6, 'A14615', '265/60 R 18 60 6 PXTSS LTR TL TOYO r18', 10, '265/60 R 18', 'BLANK', 5),
(7, 'M13122210', '185/65 R 15 65 4 NEO3-M PCR TL TOYO r15', 10, '185/65 R 15', 'BLANK', 6),
(8, 'A13350132', '215/50 R 18 50 4 PXR40 PCR TL TOYO r18', 10, '215/50 R 18', 'BLANK', 7),
(9, 'A14703', '205/60 R 16 60 4 NER38 PCR TL TOYO r16', 10, '205/60 R 16', 'BLANK', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pairings`
--

CREATE TABLE `tb_pairings` (
  `pairing_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `item_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pairings`
--

INSERT INTO `tb_pairings` (`pairing_id`, `car_id`, `model_id`, `item_code`) VALUES
(1, 1, 1, 'A10440041'),
(2, 1, 1, 'A12859'),
(3, 1, 1, 'M18850362'),
(4, 2, 2, 'M22083'),
(5, 2, 2, 'M19950344'),
(6, 2, 2, 'A14615'),
(7, 3, 3, 'M13122210'),
(8, 3, 4, 'M22083'),
(9, 3, 4, 'M19950344'),
(10, 3, 4, 'A14615'),
(11, 5, 5, 'A13350132'),
(12, 5, 6, 'A14703');

-- --------------------------------------------------------

--
-- Table structure for table `tb_patterns`
--

CREATE TABLE `tb_patterns` (
  `pattern_id` int(11) NOT NULL,
  `pattern` varchar(50) NOT NULL,
  `pattern_code` varchar(50) NOT NULL,
  `pattern_fullDesc` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_patterns`
--

INSERT INTO `tb_patterns` (`pattern_id`, `pattern`, `pattern_code`, `pattern_fullDesc`) VALUES
(1, 'Open Country HT ', 'OPHT', '<span>The Open Country Highway Terrain (Open Country H/T) 4x4 tire provides high levels of grip on wet or dry sealed roads, very low levels of tread noise and superior ride comfort.</span>'),
(2, 'Open Country AT II', 'OPATII', '<span>This versattle all-terrain tire offers excellent traction and tread life along with a blantantly aggressive tread design and quiet ride.</span><span>The Open Country All-Terrain (Open Country A/T II) is an industry-leading all-terrain 4WD tyre for drivers of 4x4s and SUVs looking for superior on-and-off-road performance.</span>'),
(3, 'Open Country UT ', 'OPUT', '<span>The all-new Open COuntry Urban-Terrain (Open Country U/T) represents Toyo Tire\'s best highway-terrain tyre yet, delivering safety, performance and value to a wide range of everday utes, 4x4s and SUVs.</span>'),
(4, 'Open Country A32', 'OPA32', '<span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><span>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span>'),
(5, 'Proxes T1 Sports', 'PROXEST1S', '<span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span>  <span>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span>'),
(6, 'Nano Energy 3', 'NE03', '<span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span>  <span>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span>'),
(7, 'Proxes R40', 'PROXESR40', '<span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span>  <span>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span>'),
(8, 'Nano Energy R 38', 'NER38', '<span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span>  <span>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sizeoptions`
--

CREATE TABLE `tb_sizeoptions` (
  `id` int(11) NOT NULL,
  `Twidth` varchar(500) NOT NULL,
  `Tratio` varchar(500) NOT NULL,
  `Trim` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_sizeoptions`
--

INSERT INTO `tb_sizeoptions` (`id`, `Twidth`, `Tratio`, `Trim`) VALUES
(1, '145,155,175,185,195,205,215,225,235,245,255,265,275,285,295,305,315,325,335,345,385,30,31,33,35,37,38,40', '45,50,55,60,65,70,75', '15,16,17,18,50,60');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_cars`
--
ALTER TABLE `tb_cars`
  ADD PRIMARY KEY (`car_id`);

--
-- Indexes for table `tb_model`
--
ALTER TABLE `tb_model`
  ADD PRIMARY KEY (`model_id`);

--
-- Indexes for table `tb_oitm`
--
ALTER TABLE `tb_oitm`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `tb_pairings`
--
ALTER TABLE `tb_pairings`
  ADD PRIMARY KEY (`pairing_id`);

--
-- Indexes for table `tb_patterns`
--
ALTER TABLE `tb_patterns`
  ADD PRIMARY KEY (`pattern_id`);

--
-- Indexes for table `tb_sizeoptions`
--
ALTER TABLE `tb_sizeoptions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_cars`
--
ALTER TABLE `tb_cars`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_model`
--
ALTER TABLE `tb_model`
  MODIFY `model_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_oitm`
--
ALTER TABLE `tb_oitm`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_pairings`
--
ALTER TABLE `tb_pairings`
  MODIFY `pairing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_patterns`
--
ALTER TABLE `tb_patterns`
  MODIFY `pattern_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_sizeoptions`
--
ALTER TABLE `tb_sizeoptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
