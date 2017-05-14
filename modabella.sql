-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2017 at 05:20 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `modabella`
--

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE IF NOT EXISTS `loaisanpham` (
  `id_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ten_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `image` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE IF NOT EXISTS `sanpham` (
  `id_sanpham` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ten_sanpham` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_thuonghieu` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `id_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `image` longblob NOT NULL,
  `giaban` float NOT NULL,
  `size` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `note` longtext COLLATE utf8_unicode_ci NOT NULL,
  `chatlieu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngaynhaphang` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE IF NOT EXISTS `taikhoan` (
  `account` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thuonghieu`
--

CREATE TABLE IF NOT EXISTS `thuonghieu` (
  `id_thuonghieu` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ten_thuonghieu` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
 ADD PRIMARY KEY (`id_type`), ADD KEY `id_type` (`id_type`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
 ADD PRIMARY KEY (`id_sanpham`), ADD KEY `id_sanpham` (`id_sanpham`), ADD KEY `id_type` (`id_type`), ADD KEY `id_type_2` (`id_type`), ADD KEY `id_thuonghieu` (`id_thuonghieu`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
 ADD PRIMARY KEY (`account`), ADD KEY `account` (`account`);

--
-- Indexes for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
 ADD PRIMARY KEY (`id_thuonghieu`), ADD KEY `id_thuonghieu` (`id_thuonghieu`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `loaisanpham` (`id_type`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`id_thuonghieu`) REFERENCES `thuonghieu` (`id_thuonghieu`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
