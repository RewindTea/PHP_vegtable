-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2023-05-27 15:26:43
-- 服务器版本： 10.3.16-MariaDB
-- PHP 版本： 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `vegetable`
--

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `regdate` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `phone`, `email`, `regdate`) VALUES
(1, 'test', '123', '15602684726', '2690@qq.com', '2023-05-22'),
(6, 'hyt', '202cb962ac59075b964b07152d234b70', '15602684726', '2690@qq.com', '2023-05-24'),
(7, '茶茶', '202cb962ac59075b964b07152d234b70', '15602684726', '2690@qq.com', '2023-05-25');

-- --------------------------------------------------------

--
-- 表的结构 `vegetable`
--

CREATE TABLE `vegetable` (
  `vegid` int(11) NOT NULL,
  `vegname` varchar(30) CHARACTER SET gb2312 NOT NULL,
  `vegprice` varchar(10) CHARACTER SET gb2312 NOT NULL,
  `norms` int(11) NOT NULL,
  `photo` varchar(100) CHARACTER SET gb2312 NOT NULL,
  `introduction` varchar(1000) CHARACTER SET gb2312 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `vegetable`
--

INSERT INTO `vegetable` (`vegid`, `vegname`, `vegprice`, `norms`, `photo`, `introduction`) VALUES
(1, '胡萝卜', '10', 1, 'carrot.jpg', '别看我姓胡，但是我从来不胡来。'),
(2, '大葱', '2', 2, 'greenOnion.jpg', '吃我的时候说我够味儿\r\n亲我的时候说我有味儿'),
(3, '苦瓜', '3', 3, 'BitterGourd.jpg', '做人真是太苦了，做瓜也是。'),
(4, '番茄', '2', 4, 'tomato.jpg', '我脸红不是因为腼腆，是因为我甜。'),
(5, '鸡蛋', '5', 5, 'egg.jpg', '别晃，再晃我就成混蛋啦'),
(6, '洋葱', '2', 6, 'onion.jpg', '如果你一层一层地剥开我的心\r\n你会发现我很辣眼睛'),
(7, '土豆', '99', 7, 'potato.jpg', '高贵版土豆，皮肤超光滑');

-- --------------------------------------------------------

--
-- 表的结构 `vegindent`
--

CREATE TABLE `vegindent` (
  `orderid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `commodity` varchar(100) DEFAULT NULL,
  `quantity` varchar(100) DEFAULT NULL,
  `consignee` varchar(30) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `telephone` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `express` varchar(30) DEFAULT NULL,
  `orderdate` varchar(11) DEFAULT NULL,
  `buyer` varchar(30) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `total` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

--
-- 转存表中的数据 `vegindent`
--

INSERT INTO `vegindent` (`orderid`, `userid`, `commodity`, `quantity`, `consignee`, `sex`, `address`, `postcode`, `telephone`, `email`, `express`, `orderdate`, `buyer`, `state`, `total`) VALUES
(83, 6, '胡萝卜@大葱@', '2@1@', 'hyt', '女', '存固定的', '516421', '15602684726', '2690@qq.com', '特快专递', '2023-05-27', 'hyt', '未处理', '22');

--
-- 转储表的索引
--

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- 表的索引 `vegetable`
--
ALTER TABLE `vegetable`
  ADD PRIMARY KEY (`vegid`);

--
-- 表的索引 `vegindent`
--
ALTER TABLE `vegindent`
  ADD PRIMARY KEY (`orderid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `vegetable`
--
ALTER TABLE `vegetable`
  MODIFY `vegid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `vegindent`
--
ALTER TABLE `vegindent`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
