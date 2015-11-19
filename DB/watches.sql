-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2015 at 09:42 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `watches`
--

-- --------------------------------------------------------

--
-- Table structure for table `cate`
--

CREATE TABLE IF NOT EXISTS `cate` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `des` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cate`
--

INSERT INTO `cate` (`id`, `name`, `target`, `des`, `status`) VALUES
(3, 'The thao ', 'the-thao', '', 1),
(4, 'Điện tử', 'dien-tu', '', 1),
(5, 'Vang', '', '', 0),
(6, 'Doong2', 'doong2', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cate` int(11) NOT NULL,
  `made` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `style` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `num` int(11) NOT NULL,
  `price` double NOT NULL,
  `color` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `des` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `numsale` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `target`, `images`, `cate`, `made`, `style`, `num`, `price`, `color`, `des`, `date`, `numsale`, `status`, `sort`) VALUES
(2, 'ĐỒNG HỒ ARMANI THÉP KHÔNG GỈ ĐÍNH ĐÁ DN9LV105 - DN9LV105', 'do-ng-ho-armani-the-p-khong-gi-di-nh-da-dn9lv105-dn9lv105', '/uploads/logo.png', 3, 'Hàn Quốc', 'Dây kim loại', 11, 500000, 'vàng', '', '0000-00-00 00:00:00', 0, 1, 0),
(4, 'Đồng Hồ Thông Minh R26 Màu Đen - R26', 'R26-mau-den', 'https://media3.scdn.vn/img1/2015/10_9/dong-ho-nam-skmei-sk063-sang-trong-1m4G3-ccda57.jpg', 3, 'Anh', '', 1, 1500000, '', '', '0000-00-00 00:00:00', 0, 0, 0),
(5, 'Đồng Hồ Thông Minh R26 Màu Đen - R26', 'dong-ho-thong-minh', 'https://media3.scdn.vn/img1/2015/10_1/dong-ho-thong-minh-r26-mau-den-1m4G3-8c1033.jpg', 3, '', '', 2, 0, '', '', '0000-00-00 00:00:00', 0, 0, 0),
(6, 'Titan 1494SM02', 'titan-1494SM02', 'http://static-01.lazada.vn/p/dong-ho-nam-day-kim-loai-titan-1494sm02-trang-4201-0723101-1-zoom.jpg', 3, 'Ấn Độ', '', 10, 1.701, '', '', '0000-00-00 00:00:00', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permittion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_product` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `fullname`, `password`, `permittion`, `id_product`) VALUES
(1, 'admin', 'admin', '6512bd43d9caa6e02c990b0a82652dca', 'admin', ''),
(2, 'user', 'user', '6512bd43d9caa6e02c990b0a82652dca', 'user', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cate`
--
ALTER TABLE `cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cate`
--
ALTER TABLE `cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
