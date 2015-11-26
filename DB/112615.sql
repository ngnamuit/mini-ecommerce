-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2015 at 10:49 AM
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
(5, 'Đồng hồ đôi', 'dong-ho-doi', '', 0),
(6, 'Phụ kiện', 'phu-kien', '', 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `target`, `images`, `cate`, `made`, `style`, `num`, `price`, `color`, `des`, `date`, `numsale`, `status`, `sort`) VALUES
(2, 'ĐỒNG HỒ ARMANI THÉP KHÔNG GỈ ĐÍNH ĐÁ DN9LV105 - DN9LV105', 'do-ng-ho-armani-the-p-khong-gi-di-nh-da-dn9lv105-dn9lv105', '/uploads/logo.png', 3, 'Hàn Quốc', 'Dây kim loại', 11, 500000, 'vàng', '', '0000-00-00 00:00:00', 0, 1, 0),
(4, 'Đồng Hồ Thông Minh R26 Màu Đen - R26', 'R26-mau-den', 'https://media3.scdn.vn/img1/2015/10_9/dong-ho-nam-skmei-sk063-sang-trong-1m4G3-ccda57.jpg', 3, 'Anh', '', 1, 1500000, '', '', '0000-00-00 00:00:00', 0, 0, 0),
(5, 'Đồng Hồ Thông Minh R26 Màu Đen - R26', 'dong-ho-thong-minh', 'https://media3.scdn.vn/img1/2015/10_1/dong-ho-thong-minh-r26-mau-den-1m4G3-8c1033.jpg', 3, '', '', 2, 0, '', '', '0000-00-00 00:00:00', 0, 0, 0),
(6, 'Titan 1494SM02', 'titan-1494SM02', 'http://static-01.lazada.vn/p/dong-ho-nam-day-kim-loai-titan-1494sm02-trang-4201-0723101-1-zoom.jpg', 3, 'Ấn Độ', '', 10, 1.701, '', '', '0000-00-00 00:00:00', 0, 0, 0),
(7, 'ROMANSON NAM – QUARTZ (PIN) – DÂY DA (TL0337MCWH)', 'romanson-nam-quartz-pin-day-da-tl0337mcwh', 'http://donghohaitrieu.com/wp-content/uploads/2014/12/4363-TL0337MCWH.jpg', 3, 'Hàn quốc', '', 2, 3500000, '', '', '0000-00-00 00:00:00', 0, 0, 0),
(8, 'Romanson Nam – Quartz (Pin) – Dây Da (TL0336MWWH)', 'romanson-nam-quartz-pin-day-da-tl0336mwwh', 'http://donghohaitrieu.com/wp-content/uploads/2014/12/5228-TL0336MWWH-261x261.jpg', 3, '', '', 0, 3400000, '', '', '0000-00-00 00:00:00', 0, 0, 0),
(9, 'Romanson Nam – Quartz (Pin) – Dây Da (TL3204FMWWH)', 'romanson-nam-quartz-pin-day-da-tl3204fmwwh', 'http://donghohaitrieu.com/wp-content/uploads/2014/12/4460-TL3204FMWWH-261x261.jpg', 3, '', '', 0, 40000000, '', '', '0000-00-00 00:00:00', 0, 0, 0),
(10, 'Casio EF-546D-5AVUDF – Nam – Quartz (Pin) – Dây Kim Loại', 'casio-ef-546d-5avudf-nam-quartz-pin-day-kim-loai', 'http://donghohaitrieu.com/wp-content/uploads/2015/10/232_EF-546D-5AVUDF-261x261.jpg', 4, '', '', 0, 3009999, '', '', '0000-00-00 00:00:00', 0, 0, 0),
(11, 'Casio EF-550D-7AVUDF – Nam – Quartz (Pin) – Dây Kim Loại', 'casio-ef-550d-7avudf-nam-quartz-pin-day-kim-loai', 'http://donghohaitrieu.com/wp-content/uploads/2015/07/209_EF-550D-7AVUDF-1-261x261.jpg', 4, '', '', 0, 370000, '', '', '0000-00-00 00:00:00', 0, 0, 0),
(12, 'Casio EFR-104D-5AVUDF – Nam – Quartz (Pin) – Dây Kim Loại', 'casio-efr-104d-5avudf-nam-quartz-pin-day-kim-loai', 'http://donghohaitrieu.com/wp-content/uploads/2014/10/7922-EFR-104D-5AVUDF-261x261.jpg', 4, '', '', 0, 3800000, '', '', '0000-00-00 00:00:00', 0, 0, 0),
(13, 'Citizen Đôi – Eco-Drive (Năng Lượng Ánh Sáng) – Kính Sapphire – Dây Kim Loại (BM6772-56A – EW1582-54A)', 'citizen-doi-eco-drive-nang-luong-anh-sang-kinh-sapphire-day-kim-loai-bm6772-56a-ew1582-54a', 'http://donghohaitrieu.com/wp-content/uploads/2015/02/10_BM6772-56A-EW1582-54A-261x261.jpg', 5, '', '', 0, 12000000, '', '', '0000-00-00 00:00:00', 0, 0, 0),
(14, 'Citizen Đôi – Quartz (Pin) – Dây Da (BD0022-08A – ER0182-08A)', 'citizen-doi-quartz-pin-day-da-bd0022-08a-er0182-08a', 'http://donghohaitrieu.com/wp-content/uploads/2015/02/24_BD0022-08A-ER0182-08A-261x261.jpg', 5, '', '', 0, 5400000, '', '', '0000-00-00 00:00:00', 0, 0, 0),
(15, 'OP Đôi – Quartz (Pin) – Kính Sapphire – Dây Da (130MK-GL-T-03 – 130-03LK-GL-T)', 'op-doi-quartz-pin-kinh-sapphire-day-da-130mk-gl-t-03-130-03lk-gl-t', 'http://donghohaitrieu.com/wp-content/uploads/2015/02/9_B130-03YL01-G130-03YL01-261x261.jpg', 5, '', '', 0, 5400000, '', '', '0000-00-00 00:00:00', 0, 0, 0),
(16, 'Dây Da ZRC 513 – SAN MARINO', 'day-da-zrc-513-san-marino', 'http://donghohaitrieu.com/wp-content/uploads/2015/01/Day-Da-ZRC-513-–-San-Marino-261x261.jpg', 6, '', '', 0, 480000, '', '', '0000-00-00 00:00:00', 0, 0, 0),
(17, 'Dây Da ZRC 628 – NEWPORT', 'day-da-zrc-628-newport', 'http://donghohaitrieu.com/wp-content/uploads/2015/01/Day-Da-ZRC-628-–-Newport-261x261.jpg', 6, '', '', 0, 390000, '', '', '0000-00-00 00:00:00', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permittion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_product` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `fullname`, `password`, `permittion`, `id_product`) VALUES
(1, 'admin', '', 'admin', '6512bd43d9caa6e02c990b0a82652dca', 'admin', ''),
(2, 'user', '', 'user', '6512bd43d9caa6e02c990b0a82652dca', 'user', ''),
(3, 'user2', 'ngnamuit07@gmail.com', '', '6512bd43d9caa6e02c990b0a82652dca', '', '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
