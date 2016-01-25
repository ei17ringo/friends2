-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016 年 1 月 25 日 10:57
-- サーバのバージョン： 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `FriendsDB`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `area_table`
--

CREATE TABLE IF NOT EXISTS `area_table` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `area_table`
--

INSERT INTO `area_table` (`id`, `name`) VALUES
(1, '北海道'),
(2, '青森県'),
(3, '岩手県'),
(4, '宮城県'),
(5, '秋田県'),
(6, '山形県'),
(7, '福島県'),
(8, '茨城県'),
(9, '栃木県'),
(10, '群馬県'),
(11, '埼玉県'),
(12, '千葉県'),
(13, '東京都'),
(14, '神奈川県'),
(15, '新潟県'),
(16, '富山県'),
(17, '石川県'),
(18, '福井県'),
(19, '山梨県'),
(20, '長野県'),
(21, '岐阜県'),
(22, '静岡県'),
(23, '愛知県'),
(24, '三重県'),
(25, '滋賀県'),
(26, '京都府'),
(27, '大阪府'),
(28, '兵庫県'),
(29, '奈良県'),
(30, '和歌山県'),
(31, '鳥取県'),
(32, '島根県'),
(33, '岡山県'),
(34, '広島県'),
(35, '山口県'),
(36, '徳島県'),
(37, '香川県'),
(38, '愛媛県'),
(39, '高知県'),
(40, '福岡県'),
(41, '佐賀県'),
(42, '長崎県'),
(43, '熊本県'),
(44, '大分県'),
(45, '宮崎県'),
(46, '鹿児島県'),
(47, '沖縄県');

-- --------------------------------------------------------

--
-- テーブルの構造 `friends_table`
--

CREATE TABLE IF NOT EXISTS `friends_table` (
  `id` int(11) NOT NULL,
  `area_table_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `friends_table`
--

INSERT INTO `friends_table` (`id`, `area_table_id`, `name`, `age`, `gender`) VALUES
(1, 1, 'ひでき', 28, '男');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area_table`
--
ALTER TABLE `area_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friends_table`
--
ALTER TABLE `friends_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area_table`
--
ALTER TABLE `area_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `friends_table`
--
ALTER TABLE `friends_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
