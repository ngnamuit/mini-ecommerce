-- MySQL dump 10.13  Distrib 5.6.24, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: vietuc
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adv`
--

DROP TABLE IF EXISTS `adv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adv`
--

LOCK TABLES `adv` WRITE;
/*!40000 ALTER TABLE `adv` DISABLE KEYS */;
/*!40000 ALTER TABLE `adv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apartment`
--

DROP TABLE IF EXISTS `apartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apartment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_ja` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) DEFAULT '0',
  `content_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_ja` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apartment`
--

LOCK TABLES `apartment` WRITE;
/*!40000 ALTER TABLE `apartment` DISABLE KEYS */;
INSERT INTO `apartment` VALUES (1,'Binh duong Province','Bình Dương','Bình Dương','Bình Dương',0,'Address:<br />\r\nPhone:','address:','address:','address:'),(2,'Viet Australia Auditing Ltd ','ベトナムの監査会社 - USTRALIA','ベトナムの監査会社 - US china','Kiểm toán Việt Úc',1,'18B Nam Quốc Cang, Quận 1,TP.HCM, Việt Nam','18B Nam Quoc Cang, District 1, HCMC, Vietnam','18Bナムコック倉、1区、ホーチミン市、ベトナム','18B南富国苍，1区，胡志明市，越南');
/*!40000 ALTER TABLE `apartment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_ja` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_cn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `parent_id` int(11) DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `sort` int(11) DEFAULT NULL,
  `f_post` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Giới thiệu','Giới thiệu','Giới thiệu','','gioi-thieu','2015-10-07 07:00:00',0,'giới thiệu',1,1,0),(2,'Dịch vụ','','Dịch vụ','Dịch vụ','dich-vu','2015-10-07 07:07:59',0,'dịch vụ',1,2,1),(3,'Khách hàng','','','','khach-hang','2015-10-07 07:19:07',0,'khách hàng',1,3,0),(4,'Tin tức & Sự kiện','','','','tin-tuc-su-kien','2015-10-07 07:20:43',0,'Tin tức & Sự kiện',1,4,0),(5,'Tài liệu','','','','tai-lieu','2015-10-07 07:21:02',0,'Tài liệu',1,5,0),(6,'Tuyển dụng','','','','tuyen-dung','2015-10-07 07:24:14',0,'Tuyển dụng',1,6,0),(7,'Khách hàng tiêu biểu','','','','khach-hang-tieu-bieu','2015-10-07 07:32:22',3,'khách hàng tiêu biểu',1,1,1),(8,'Dự án tiêu biểu','','','','du-an-tieu-bieu','2015-10-07 07:32:52',3,'Dự án tiêu biểu',1,2,1),(9,'Tuyển nhân sự','','','','tuyen-nhan-su','2015-10-07 07:45:06',6,'tuyển nhân sự',1,1,1),(10,'Tuyển thực tập','','','','tuyen-thuc-tap','2015-10-07 07:47:26',6,'Tuyển thực tập',1,2,1),(11,'Tuyển dụng cho khách hàng','','','','tuyen-dung-cho-khach-hang','2015-10-07 07:47:56',6,'Tuyển dụng cho khách hàng',1,3,1),(12,'Giới thiệu về công ty','Giới thiệu về công ty','Giới thiệu về công ty','Giới thiệu về công ty','','2015-10-12 16:38:21',1,'Giới thiệu về công ty',1,1,1),(13,'Tài liệu về kế toán','Document Accounting','タイルドンナイ','文档会计','','2015-10-13 16:00:19',5,'kế toán',1,1,1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hotline` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_analysis` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `map` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_vi` text COLLATE utf8_unicode_ci,
  `content_en` text COLLATE utf8_unicode_ci,
  `content_ja` text COLLATE utf8_unicode_ci,
  `content_cn` text COLLATE utf8_unicode_ci,
  `name_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_ja` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'0938 964 988','UA-63932444-1','https://www.google.com/maps/ms?msa=0&msid=210377107822346182940.0004f77cf7d492e9ffc2b&hl=vi&ie=UTF8&ll=10.807214,106.662408&spn=0,0&t=m&iwloc=0004f77cf7d6f8367daa2&output=embed','C&Ocirc;NG TY TNHH KIỂM TO&Aacute;N VIỆT &Uacute;C<br />\r\n18B Nam Quốc Cang, Quận 1,TP.HCM, Việt Nam<br />\r\nTel: (84-8) 3925 1360 - Fax: (84-8) 3925 1359<br />\r\nMobile: +84 903770777<br />\r\nEmail: info@vietaustralia.com - Website: www.vietaustralia.com','VIETNAM AUDIT COMPANY LIMITED AUSTRALIA<br />\r\n18B Nam Quoc Cang, District 1, HCMC, Vietnam<br />\r\nTel: (84-8) 3925 1360 - Fax: (84-8) 3925 1359<br />\r\nMobile: +84 903770777<br />\r\nEmail: info@vietaustralia.com - Website: www.vietaustralia.com','ベトナムAUDITカンパニーリミテッドオーストラリア<br />\r\n18Bナムコック倉、1区、ホーチミン市、ベトナム<br />\r\n電話：（84-8）3925 1360 - ファックス：（84-8）3925 1359<br />\r\n携帯電話：+84 903770777<br />\r\n電子メール：info@vietaustralia.com - ウェブサイト：www.vietaustralia.com','越南AUDIT COMPANY LIMITED澳大利亚<br />\r\n18B南富国苍，1区，胡志明市，越南<br />\r\n电话：（84-8）39251360 - 传真：（84-8）39251359<br />\r\n手机：+84903770777<br />\r\n电子邮件：info@vietaustralia.com - 网址：www.vietaustralia.com','Công ty kiểm toán việt - úc','Viet Australia Auditing Ltd ','ベトナムの監査会社 - USTRALIA','ベトナムの監査会社 - US china','http://www.vietaustralia.com/','http://www.vietaustralia.com/','http://www.vietaustralia.com/','http://www.vietaustralia.com/','http://www.vietaustralia.com/');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `phone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `roomcontact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `images` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `sort` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `name_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_ja` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `legislation`
--

DROP TABLE IF EXISTS `legislation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `legislation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_vi` text COLLATE utf8_unicode_ci,
  `content_en` text COLLATE utf8_unicode_ci,
  `content_ja` text COLLATE utf8_unicode_ci,
  `content_cn` text COLLATE utf8_unicode_ci,
  `images` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `name_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_ja` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_ja` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `legislation`
--

LOCK TABLES `legislation` WRITE;
/*!40000 ALTER TABLE `legislation` DISABLE KEYS */;
INSERT INTO `legislation` VALUES (1,'Reuters ng&agrave;y 5/6 dẫn c&aacute;c nguồn tin biết r&otilde; về c&aacute;c cuộc đ&agrave;m ph&aacute;n n&agrave;y cho hay c&aacute;c cuộc thương lượng trước đ&acirc;y chưa từng được tiết lộ c&oacute; li&ecirc;n quan đến nh&agrave; thầu quốc ph&ograve;ng Saab của Thụy Điển, h&atilde;ng Eurofighter của Ch&acirc;u &Acirc;u, chi nh&aacute;nh quốc ph&ograve;ng của Tập đo&agrave;n Airbus, Tập đo&agrave;n Lockheed Martin v&agrave; c&ocirc;ng ty Boeing của Mỹ.<br />\r\n<br />\r\nC&aacute;c nguồn tin vừa kể n&oacute;i rằng c&aacute;c nh&agrave; thầu quốc ph&ograve;ng n&agrave;y trong những th&aacute;ng gần đ&acirc;y đ&atilde; thực hiện nhiều chuyến đi Việt Nam để thảo luận nhưng chưa đạt được thỏa thuận n&agrave;o sắp tới. C&aacute;c nguồn tin n&agrave;y đều kh&ocirc;ng muốn n&ecirc;u danh v&igrave; t&iacute;nh nhạy cảm của vấn đề, v&agrave; một số trong đ&oacute; cho biết c&aacute;c cuộc đ&agrave;m ph&aacute;n vẫn đang tiếp diễn.<br />\r\n<br />\r\nMột nh&agrave; thầu quốc ph&ograve;ng T&acirc;y phương n&oacute;i với Reuters rằng H&agrave; Nội muốn hiện đại h&oacute;a kh&ocirc;ng lực qua việc thay thế hơn 100 m&aacute;y bay chiến đấu của Nga MiG-21 đ&atilde; cũ kỹ trong khi muốn giảm bớt sự lệ thuộc v&agrave;o Moscow về vũ kh&iacute;.<br />\r\n<br />\r\nNguồn tin n&agrave;y được Reuters dẫn lời n&oacute;i rằng &lsquo;Việt Nam tỏ &yacute; muốn giảm lệ thuộc v&agrave;o Nga. Quan hệ tăng tiến với Mỹ v&agrave; Ch&acirc;u &Acirc;u sẽ gi&uacute;p họ thực hiện việc đ&oacute;.&rsquo;<br />\r\n<br />\r\nViệt Nam đ&atilde; đặt mua th&ecirc;m khoảng một chục chiếc Sukhoi Su-30 của Nga để tăng cường cho hạm đội Sukhoi Su-27, Su-30 cũ hơn.<br />\r\n<br />\r\nSau khi đ&atilde; tiếp nhận 3 t&agrave;u ngầm lớp Kilo do Nga sản xuất, H&agrave; Nội đang chờ nhận th&ecirc;m 3 chiếc nữa trong hợp đồng trị gi&aacute; 2,6 tỷ đ&ocirc; la thỏa thuận hồi năm 2009.<br />\r\n<br />\r\nNgo&agrave;i ra, Việt Nam cũng muốn mua c&aacute;c m&aacute;y bay do th&aacute;m kh&ocirc;ng người l&aacute;i của c&aacute;c nh&agrave; thầu qu&acirc;n sự Ch&acirc;u &Aacute; v&agrave; T&acirc;y phương.<br />\r\n<br />\r\nN&acirc;ng cấp kh&ocirc;ng lực sẽ gi&uacute;p Việt Nam trở th&agrave;nh một trong những lực lượng qu&acirc;n sự h&ugrave;ng mạnh nhất ở Đ&ocirc;ng Nam &Aacute; trong nỗ lực củng cố quốc ph&ograve;ng bảo vệ chủ quyền hải phận, kh&ocirc;ng phận, v&agrave; l&atilde;nh thổ trước sức b&agrave;nh trướng kh&ocirc;ng khoan nhượng từ Bắc Kinh.<br />\r\n<br />\r\nTrong chuyến thăm Việt Nam h&ocirc;m chủ nhật vừa qua, Bộ trưởng Quốc ph&ograve;ng Mỹ Ashton Carter đ&atilde; cam kết ng&acirc;n khoản 18 triệu đ&ocirc; la gi&uacute;p H&agrave; Nội mua c&aacute;c t&agrave;u tuần duy&ecirc;n của Hoa Kỳ.<br />\r\n<br />\r\nNếu Việt Nam tậu được c&aacute;c sản phẩm quốc ph&ograve;ng từ h&atilde;ng Lockheed Martin hay Boeing th&igrave; đ&oacute; sẽ l&agrave; c&aacute;c thỏa thuận đ&aacute;ng kể nhất li&ecirc;n quan tới c&aacute;c c&ocirc;ng ty Mỹ kể từ th&aacute;ng 10 tới nay khi Washington bắt đầu nới lỏng một phần lệnh cấm vận v&otilde; kh&iacute; s&aacute;t thương l&acirc;u nay đối với H&agrave; Nội.<br />\r\n<br />\r\nGiữa bối cảnh tranh chấp Biển Đ&ocirc;ng leo thang căng thẳng v&agrave; c&aacute;c ch&iacute;nh s&aacute;ch chủ quyền g&acirc;y hấn của Bắc Kinh, Việt Nam muốn được Hoa Kỳ dỡ bỏ ho&agrave;n to&agrave;n cấm vận n&agrave;y. Tuy nhi&ecirc;n, trở ngại lớn nhất l&agrave; th&agrave;nh t&iacute;ch nh&acirc;n quyền của ch&iacute;nh phủ H&agrave; Nội, điều m&agrave; Washington lu&ocirc;n đặt trọng t&acirc;m h&agrave;ng đầu trong mối bang giao Việt-Mỹ sau 20 năm b&igrave;nh thường h&oacute;a quan hệ.<br />\r\n<br />\r\nTrong cuộc phỏng vấn mới đ&acirc;y với VOA Việt ngữ, quan chức h&agrave;ng đầu của Hoa Kỳ về nh&acirc;n quyền nhấn mạnh Mỹ chỉ mới dỡ bỏ một phần rất nhỏ trong lệnh cấm vận n&agrave;y v&agrave; khả năng Hoa Kỳ c&oacute; thể cung cấp th&ecirc;m vũ kh&iacute; cho Việt Nam thế n&agrave;o ho&agrave;n to&agrave;n t&ugrave;y thuộc v&agrave;o tiến bộ nh&acirc;n quyền từ H&agrave; Nội.','Reuters 5/6 day guide to sources familiar with the talks said the negotiations had not previously been disclosed relating to defense contractor Saab of Sweden, the firm&#39;s European Eurofighter and spending defense arm of the Group Airbus, Lockheed Martin and Boeing of the US company. The source said the reports defense contractors in recent months have made many trips to Vietnam to discuss but not reached an agreement yet to come. The sources did not want to name because of the sensitivity of the issue, and some of them said the talks are continuing. A Western defense contractors Hanoi told Reuters that want to modernize the air force by replacing more than 100 Russian fighter MiG-21 has worn while want to reduce dependence on Moscow for weapons . Reuters sources are quoted as saying &quot;Vietnam expressed interest in reducing dependence on Russia. Progressive relations with the US and Europe will help them do that. &#39; Vietnam has ordered more about a dozen of the Russian Sukhoi Su-30 fleet to augment the Sukhoi Su-27, Su-30 earlier. After receiving three Russian Kilo class submarines manufacturing, Hanoi is expecting to receive another 3 more aircraft in a deal worth $ 2.6 billion deal in 2009. In addition, Vietnam also wanted to buy the aircraft&#39;s reconnaissance unmanned military contractors and Western Asia. Upgrade Air Force will help Vietnam become one of the strongest military forces in Southeast Asia in an effort to strengthen national defense and protection of sovereignty waters, airspace, and territorial expansion and resist no drilling concessions from Beijing. During his visit to Vietnam last Sunday, US Defense Secretary Ashton Carter has pledged funding of 18 million dollars to help Hanoi buy the ship of the US Coast Guard. If Vietnam acquisition of defense products from Lockheed Martin or Boeing, it would be the most significant agreement involving US companies since October when Washington started to date partially easing sanctions Damage has long arms for Hanoi. Amid South China Sea dispute escalation and aggression policy sovereignty of Beijing, Vietnam wants the United States to lift the embargo altogether. However, the biggest obstacle is the human rights record of the government in Hanoi, which Washington has always placed primary focus in Vietnam-US relations after 20 years of normalized relations. In a recent interview with VOA Vietnamese, top officials of the United States of America emphasize human rights unload only a very small part of this embargo and US capabilities can provide additional weapons Vietnam how totally dependent on human rights progress from Hanoi.','交渉に詳しい情報筋にロイター5/6日のガイドは交渉が先に、スウェーデンの防衛請負業者サーブに関連する企業の欧州ユーロファイターと過ごし開示されていなかったと述べましたグループエアバス、米国企業のロッキード&middot;マーチンとボーイングの防衛腕。 ソースは、ここ数カ月の間にレポートの防衛請負業者は、議論するためにベトナムに多くの旅行をしたが、まだ来てすることで合意に達していないと述べました。ソースがあるため、問題の感度の名前にしたくなかった、そのうちのいくつかは、協議が継続していると述べました。 100以上のロシアの戦闘機ミグ21が摩耗している一方で置換することにより、空気力を近代化したいハノイがロイターに語った西の防衛請負業者は、武器のためモスクワへの依存を減らしたいです。 ロイターのソースはベトナムがロシアへの依存を減らすことに関心を示し、「発言として引用されています。米国や欧州とのプログレッシブな関係は、彼らがそれを行うのに役立ちます。」 ベトナムは蘇30以前、スホーイ蘇27を補強するためにロシアのスホーイ蘇30艦隊のダースの詳細を命じました。 3ロシアのキロ級潜水艦の製造を受信した後、ハ​​ノイは、2009年26億ドルの契約の価値の取引に別の3以上の航空機を受信するように期待しています。 また、ベトナムはまた、航空機の偵察無人軍事請負業者や西アジアを購入したいです。 空軍はベトナムが国防と主権の海域、空域の保護、領土拡張を強化し、何の掘削に抵抗しないための努力の東南アジアでの最強の軍事力の一つになるのに役立ちますアップグレード北京から譲歩。 ベトナムを訪問最後の日曜日の間に、米国防長官アシュトン&middot;カーターは、ハノイは、米国沿岸警備隊の船を購入するため、18万ドルの資金提供を約束しています。 ロッキード&middot;マーティンやボーイングからの防御製品のベトナムの買収は、それはワシントンが部分的に制裁を緩和日付に開始10月から米国企業が関与する最も重要な契約であるかどう損傷は、ハノイのための長い腕を持っています。 南シナ海の紛争のエスカレーションと北京の侵略政策の主権の中で、ベトナムは米国が完全に禁輸措置を解除したいと考えています。しかし、最大の障害は、ワシントンは、常に正規化された関係の20年後のベトナム米関係に主な焦点を置いているハノイ、政府の人権記録です。 VOAベトナムとの最近のインタビューで、アメリカの幹部は、人権がこの禁輸のごく小さな部分アン強調し、米国の能力は、追加の武器を提供することができますどのようにベトナムのハノイから人権の進歩に完全に依存。','路透社戈&middot;恩盖5/6丹CACnguồn锡biếtRO VE CACcuộcDjam的藩不然町干草CACcuộc商信陈德良trướcđ&acirc;y蔡彤đượcTIET LO CO留置权全đến芽thầu富国海防萨博CUA翠Điển，杭欧洲战斗机CUA洲AU，阴气nh&aacute;nh富国海防CUA自来水đo&agrave;n空中客车公司，TAPđo&agrave;n洛克希德&middot;马丁公司VA丛TY波音CUA我了。<br />\r\n<br />\r\nCACnguồn锡VUA柯NOI响CAC芽thầu富国海防不然仲những胜甘đ&acirc;y贾thựcHIENnhiềuchuyếnDJI越南东江环保邵族栾nhưng蔡đạtđượcthỏa顺淖SAP TOI。 CACnguồn锡不然đềuKhong的&mu;介子NEU danh VI静省nhạyCAM CUA面包车DJE，VA MOT所以仲DJO町biếtCACcuộcDjam的潘文凯đang奠TIEP。<br />\r\n<br />\r\nMOT芽thầu富国蓬泰芳NOI VOI路透社响起河内介子HIENđại安和清孔吕克QUAviệc大公的提问100海湾简đấuCUA牙米格-21贾铜KY仲川崎介子giảmBOT苏乐thuộc维罗莫斯科VE VU KHI 。<br />\r\n<br />\r\nNguồn锡不然được路透社丹莱NOI响了&ldquo;越南为y&mu;介子giảm乐thuộc维罗牙。全荷堂添VOIMỹVA洲悠SEgi&uacute;p何thựcHIENviệcDJO&ldquo;。<br />\r\n<br />\r\n越南贾đặtMUA他们khoảngMOTchụcchiếc苏霍伊公司苏-30 CUA牙东江环保唐CUONG町火腿đội苏霍伊公司的苏-27，苏-30 CU HON。<br />\r\n<br />\r\n秀川崎贾TIEP NHAN 3牛头岩罗布泊基洛做牙SANxuất河内đang町NHAN他们3chiếc诺仲跳đồng三GIA 2,6 TY DJO拉thỏa顺海NAM 2009年。<br />\r\n<br />\r\nNgo&agrave;i岭，越南cũng介子MUA CAC可能湾景点谭清孔người赖CUA CAC芽thầu全苏洲VA TAY芳。<br />\r\n<br />\r\n馕端型清孔吕克SEgi&uacute;p越南TRO THANH MOT仲những吕克良全苏鸿孟山一&Oslash;Đ&ocirc;ng南&Aacute;仲没有吕克củng有限公司富国海防宝VE楚quyền海藩，清孔藩，VA达洛寿trướcSUC迪班张庭选清孔khoan nhượng恩北京族。<br />\r\n<br />\r\n仲chuyến谭越南坎楚山一VUA之四，博张庭选富国海防Mỹ阿什顿&middot;卡特贾凸轮KET颜khoản18triệuDJO拉gi&uacute;p河内MUA CAC牛头疃Duyen酒店CUA安和KY。<br />\r\n<br />\r\nNEU越南牛头đượcCAC产品代码富国海防涂挂洛克希德&middot;马丁公司的干草波音氏DJO SEL&agrave;CACthỏa顺đ&aacute;ng柯山一留置权全台岛CAC丛TYMỹ柯涂胜10 TOI不仅如此KHI华盛顿免费注册开始NOI长MOT藩lệnhCAM VAN VO KHI SAT商信刘德华拒绝đốiVOI河内。<br />\r\n<br />\r\nGiữaBOI CANH tranh CHAP边Đ&ocirc;ng狮子座胜苍胜VA CACch&iacute;nh萨克楚quyền同性恋韩CUA北京族，越南介子được安和KY办博的还TOAN CAM VAN不然。绥nhi&ecirc;n，卓艺朗山一L&agrave;清TICH NHANquyềnCUAch&iacute;nh富河内，điềuM&agrave;华盛顿lu&ocirc;nđặt仲潭挂đầu仲莫伊爆炸GIAO合作频道 - 我的秀20平南安和商信铨他。<br />\r\n<br />\r\n仲cuộc蓬货车莫伊đ&acirc;yVOI美国之音合作频道NGU，全chức挂đầuCUA安和KY VE NHANquyềnNHAN农德孟Mỹ志莫伊办博MOT藩大鼠儒仲lệnhCAM VAN不然VA KHA馕安和KY合作的cung封帽将VU川崎町越南国家审计署的还TOAN绥thuộc维罗田博NHANquyền恩河内。','/uploads/services/service-3.jpg','/uploads/adv/2.jpg',0,'Việt Nam muốn có thêm vũ khí để tự vệ trước Trung Quốc','ベトナムは中国に対して自分自身を守るために多くの武器を持って望んでいる','Vietnam wants to have more weapons to defend itself against China','越南介子共同他们VU KHI东江环保涂VEtrước忠富国','Vietnam wants to have more weapons to defend itself against China','Vietnam wants to have more weapons to defend itself against China','Vietnam wants to have more weapons to defend itself against China','Vietnam wants to have more weapons to defend itself against China','Vietnam wants to have more weapons to defend itself against China'),(2,'Theo tin tức t&igrave;nh b&aacute;o, 140 sư đo&agrave;n bộ binh, 8 sư đo&agrave;n tăng thiết gi&aacute;p, v&agrave; 12 sư đo&agrave;n ph&aacute;o cao xạ, 27 trung đo&agrave;n Th&ocirc;ng Tin li&ecirc;n lạc, t&ecirc;n lửa ph&ograve;ng kh&ocirc;ng... được điều động khẩn cấp đợt một &aacute;p s&aacute;t dọc bi&ecirc;n giới Việt - Trung.<br />\r\n<br />\r\nCũng v&agrave;o thời điểm c&ugrave;ng ng&agrave;y Hạm đội Hải nam được lệnh s&atilde;n s&agrave;ng v&agrave;o vị tr&iacute; chiến đấu, qu&acirc;n số được điều động tăng gấp hai hơn so với b&igrave;nh thường. từ một số h&igrave;nh ảnh được cung cấp cho ta thấy c&aacute;c khu vực V&acirc;n Nam, Quế dương v&agrave; Nam Ninh, l&iacute;nh Bộ binh v&agrave; xe tăng được bố tr&iacute; dầy đặc, hiện t&ocirc;i vẫn chưa nhận được th&ocirc;ng tin r&otilde; hơn về việc n&agrave;y. dự đo&aacute;n tới hết giờ chiều nay sẽ c&oacute; tin tức cập nhập ch&iacute;nh x&aacute;c v&agrave; thống k&ecirc; cụ thể hơn,<br />\r\n<br />\r\nTin được b&aacute;o về s&aacute;ng sớm ng&agrave;y h&ocirc;m nay, trong ng&agrave;y h&ocirc;m nay t&ocirc;i sẽ cố gắng cập nhập tin tức sớm nhất về t&igrave;nh h&igrave;nh qu&acirc;n sự của Trung quốc triển khai tại Biển đ&ocirc;ng.<br />\r\n&nbsp;\r\n<div class=\"separator\" style=\"line-height: 20.8px; clear: both; text-align: center;\"><a href=\"http://4.bp.blogspot.com/-2h7Kt-TW_8U/VaY02lvYD5I/AAAAAAAAJLU/TXh4iAGZHKo/s1600/tq1.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img alt=\"tq1.jpg\" src=\"http://4.bp.blogspot.com/-2h7Kt-TW_8U/VaY02lvYD5I/AAAAAAAAJLU/TXh4iAGZHKo/s600/tq1.jpg\" /></a></div>\r\n&nbsp;\r\n\r\n<div class=\"separator\" style=\"line-height: 20.8px; clear: both; text-align: center;\"><a href=\"http://2.bp.blogspot.com/-k6lzRq6ykDE/VaY02axkwzI/AAAAAAAAJLY/nBDp6513M7I/s1600/tq2.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img alt=\"tq2.jpg\" src=\"http://2.bp.blogspot.com/-k6lzRq6ykDE/VaY02axkwzI/AAAAAAAAJLY/nBDp6513M7I/s600/tq2.jpg\" /></a></div>\r\n&nbsp;\r\n\r\n<div class=\"separator\" style=\"line-height: 20.8px; clear: both; text-align: center;\"><a href=\"http://2.bp.blogspot.com/-w9ihXtdM2uQ/VaY02uV6YaI/AAAAAAAAJLQ/-9Viggh5i94/s1600/tq3.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img alt=\"tq3.jpg\" src=\"http://2.bp.blogspot.com/-w9ihXtdM2uQ/VaY02uV6YaI/AAAAAAAAJLQ/-9Viggh5i94/s600/tq3.jpg\" /></a></div>\r\n&nbsp;\r\n\r\n<div class=\"separator\" style=\"line-height: 20.8px; clear: both; text-align: center;\"><a href=\"http://2.bp.blogspot.com/-owgAA6HUvc0/VaY03YYBy3I/AAAAAAAAJLg/vB2X8Kn7ODg/s1600/tq4.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img alt=\"tq4.jpg\" src=\"http://2.bp.blogspot.com/-owgAA6HUvc0/VaY03YYBy3I/AAAAAAAAJLg/vB2X8Kn7ODg/s600/tq4.jpg\" /></a></div>\r\n&nbsp;\r\n\r\n<div class=\"separator\" style=\"line-height: 20.8px; clear: both; text-align: center;\"><a href=\"http://1.bp.blogspot.com/-Pl_inPWLPbo/VaY03iHvTII/AAAAAAAAJLc/EuWswEZrw9Y/s1600/tq5.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img alt=\"tq5.jpg\" src=\"http://1.bp.blogspot.com/-Pl_inPWLPbo/VaY03iHvTII/AAAAAAAAJLc/EuWswEZrw9Y/s600/tq5.jpg\" /></a></div>\r\n&nbsp;\r\n\r\n<div class=\"separator\" style=\"line-height: 20.8px; clear: both; text-align: center;\"><a href=\"http://3.bp.blogspot.com/-UUqVq_ersRE/VaY04DY9bnI/AAAAAAAAJL0/pwg0jNO4jBo/s1600/tq6.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img alt=\"tq6.jpg\" src=\"http://3.bp.blogspot.com/-UUqVq_ersRE/VaY04DY9bnI/AAAAAAAAJL0/pwg0jNO4jBo/s600/tq6.jpg\" /></a></div>\r\n&nbsp;\r\n\r\n<div class=\"separator\" style=\"line-height: 20.8px; clear: both; text-align: center;\"><a href=\"http://2.bp.blogspot.com/-7bIWXxx-RG4/VaY04Xme1DI/AAAAAAAAJLo/JE6-kzQ9EDM/s1600/tq7.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img alt=\"tq7.jpg\" src=\"http://2.bp.blogspot.com/-7bIWXxx-RG4/VaY04Xme1DI/AAAAAAAAJLo/JE6-kzQ9EDM/s600/tq7.jpg\" /></a></div>\r\n<br />\r\n<strong>Th&ugrave;y Tr&acirc;m</strong>&nbsp;tổng hợp<br />\r\n<a href=\"https://www.facebook.com/le.julian.73?fref=ts\" style=\"color: rgb(51, 51, 51); line-height: 20.8px;\">Theo FB Le Julian</a>','According to intelligence reports, 140 infantry divisions, eight armored divisions and 12 artillery divisions, 27 regiments communications, air defense missiles were mobilized emergency ... a pressure wave Vietnamese border police - Central.<br />\r\n<br />\r\nAlso at the same date Hainan fleet was ordered into position ready to fight, troops were mobilized doubled than usual. from some image provided shows the area of ​​Yunnan, Guilin and Nanning positive, infantry troops and tanks are arranged dense, now I have not received further information about this. anticipate coming out this afternoon will have accurate updated news and statistics in more detail,<br />\r\n<br />\r\nReported on the morning news today, today I will try to update the earliest news about the situation of China&#39;s military deployment in the South China Sea.','インテリジェンスレポート、140歩兵師団、8装甲師団と12砲兵師団、27連隊通信によると、防空ミサイルは動員された緊急...圧力波ベトナム国境警察 - 中央。<br />\r\n<br />\r\nまた、同じ日に海南艦隊は戦う準備ができた位置に命じられた、軍が動員されたがいつもより倍増しました。提供されるいくつかの画像は、歩兵部隊や戦車が密に配置されている雲南省、桂林と正の南寧、の領域を示してから、今私はこれについてのさらなる情報を受け取っていません。今日の午後は、より詳細に正確な更新のニュースや統計情報を持っています出てくる予想し、<br />\r\n<br />\r\n朝のニュース今日に報告し、今日の私は、南シナ海における中国の軍事展開の状況について最も初期のニュースを更新しようとします。','据情报部门的报告，140个步兵师，八装甲师和第12炮兵师，27个团通信，防空导弹被动员紧急...的压力波中越边境警察 - 中央。<br />\r\n<br />\r\n比平常在同日海南舰队奉命到位准备战斗，部队被动员起来了一倍。从提供的一些图像显示了云南，桂林，南宁积极，步兵和坦克被安排密集的区域，目前我还没有收到关于此的更多信息。预计出来，今天下午将有准确的最新的新闻和统计数据更详细，<br />\r\n<br />\r\n报道今天上午的新闻，今天我会尽量更新关于中国的军事部署在中国南海局势的最早的消息。','/uploads/adv/2.jpg','/uploads/adv/img1.jpg',0,'Hàng trăm xe tăng và pháo trên đường tới Miền Trung?','0銅と空気衛生現代、あなたは知っていますか？','Air Hygiene Hyundai with 0 copper, you know?','杭电车XE唐VApháo特伦đườngTOI勉忠？','Quân đội Trung Quốc tập trung lực lượng áp sát dọc biên giới Việt - Trung','Quân đội Trung Quốc tập trung lực lượng áp sát dọc biên giới Việt - Trung','Quân đội Trung Quốc tập trung lực lượng áp sát dọc biên giới Việt - Trung','Quân đội Trung Quốc tập trung lực lượng áp sát dọc biên giới Việt - Trung','Quân đội Trung Quốc tập trung lực lượng áp sát dọc biên giới Việt - Trung');
/*!40000 ALTER TABLE `legislation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `category` int(11) DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `images` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `title_vi` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `title_ja` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `title_cn` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `content_vi` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_en` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_ja` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_cn` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description_vi` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description_en` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description_ja` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description_cn` longtext COLLATE utf8_unicode_ci NOT NULL,
  `viewed` int(11) NOT NULL,
  `slider` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (3,'2015-10-08 10:14:16',8,NULL,'b',1,2,'/uploads/adv/2.jpg',0,'b','b','b','b','b','b','b','b','b','b','b','b',0,0),(5,'2015-10-12 16:42:48',2,NULL,'.html',1,1,'/uploads/1440833708-1440576882-iphone-6s.jpg',1,'Kiểm toán báo cáo tài chính','Kiểm toán báo cáo tài chính','Kiểm toán báo cáo tài chính','Kiểm toán báo cáo tài chính','<span style=\"color:rgb(34, 34, 34); font-family:dejavu sans mono,monospace; font-size:11px\">Kiểm to&aacute;n b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh</span>','<span style=\"color:rgb(34, 34, 34); font-family:dejavu sans mono,monospace; font-size:11px\">Kiểm to&aacute;n b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh</span>','<span style=\"color:rgb(34, 34, 34); font-family:dejavu sans mono,monospace; font-size:11px\">Kiểm to&aacute;n b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh</span>','<span style=\"color:rgb(34, 34, 34); font-family:dejavu sans mono,monospace; font-size:11px\">Kiểm to&aacute;n b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh</span>','Kiểm toán báo cáo tài chính','Kiểm toán báo cáo tài chính','Kiểm toán báo cáo tài chính','Kiểm toán báo cáo tài chính',0,0),(6,'2015-10-13 16:01:21',13,NULL,'.html',1,1,'/uploads/adv/1.png',1,'test kế toán','test kế toán','test kế toán','test kế toán','test kế to&aacute;n','test kế to&aacute;n','test kế to&aacute;n','test kế to&aacute;n','test kế toán','test kế toán','test kế toán','test kế toán',0,1);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `images` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `description` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quick_links`
--

DROP TABLE IF EXISTS `quick_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quick_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_vi` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_ja` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_cn` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(512) NOT NULL,
  `sort` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quick_links`
--

LOCK TABLES `quick_links` WRITE;
/*!40000 ALTER TABLE `quick_links` DISABLE KEYS */;
INSERT INTO `quick_links` VALUES (1,'Bộ tài chính','Ministry of Finance','MOF','财政部','https://translate.google.com/',0,1),(2,'Hệ thống khai thuế','Tax system','税制','税收制度','https://translate.google.com',0,1);
/*!40000 ALTER TABLE `quick_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` VALUES (1,'Công ty Kiểm Toán Việt Úc  ','vietaustralia, viet australia, Auditing, kiem toan, ke toan, dich vu, nhan su, tai chinh, vietnam, asiviportal, infotechvn, Audit, accounting','Công ty Ki?m Toán Vi?t Úc là t? ch?c ki?m toán ??c l?p ???c c?p gi?y phép và thành l?p t?i n??c C?ng Hoà Xã H?i Ch? Ngh?a Vi?t Nam');
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permittion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','6512bd43d9caa6e02c990b0a82652dca','admin@test.com','admin',1,'phuong nam web');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-13 23:02:24
