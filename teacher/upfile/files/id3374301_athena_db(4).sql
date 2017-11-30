-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Ð¥Ð¾ÑÑ: localhost:8889
-- ÐÑÐµÐ¼Ñ ÑÐ¾Ð·Ð´Ð°Ð½Ð¸Ñ: ÐÐ¾Ñ 13 2017 Ð³., 15:21
-- ÐÐµÑÑÐ¸Ñ ÑÐµÑÐ²ÐµÑÐ°: 5.6.35
-- ÐÐµÑÑÐ¸Ñ PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- ÐÐ°Ð·Ð° Ð´Ð°Ð½Ð½ÑÑ: `id3374301_athena_db`
--

-- --------------------------------------------------------

--
-- Ð¡ÑÑÑÐºÑÑÑÐ° ÑÐ°Ð±Ð»Ð¸ÑÑ `chats`
--

CREATE TABLE `chats` (
  `n` int(6) NOT NULL,
  `idCH` varchar(6) NOT NULL,
  `chat_name` varchar(20) NOT NULL,
  `id` varchar(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Ð¡ÑÑÑÐºÑÑÑÐ° ÑÐ°Ð±Ð»Ð¸ÑÑ `courses`
--

CREATE TABLE `courses` (
  `n` int(6) NOT NULL,
  `idCO` varchar(13) NOT NULL,
  `name_course` varchar(20) NOT NULL,
  `idTU` varchar(13) NOT NULL,
  `idGR` varchar(13) NOT NULL,
  `date_exist_course` datetime NOT NULL,
  `sum_occup` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- ÐÐ°Ð¼Ð¿ Ð´Ð°Ð½Ð½ÑÑ ÑÐ°Ð±Ð»Ð¸ÑÑ `courses`
--

INSERT INTO `courses` (`n`, `idCO`, `name_course`, `idTU`, `idGR`, `date_exist_course`, `sum_occup`) VALUES
(1, '58436e1ba5007', 'Ð­ÐºÐ¾Ð½Ð¾Ð¼Ð¸ÐºÐ° (ÑÐµÐ¼Ð¸Ð½Ð°Ñ)', '5843721b29aed', '5843566489b19', '0000-00-00 00:00:00', 0),
(2, '5843807c9cc12', 'Ð­ÐºÐ¾Ð½Ð¾Ð¼Ð¸ÐºÐ° (Ð»ÐµÐºÑÐ¸Ñ)', '5843721b29aed', '5843566489b19', '0000-00-00 00:00:00', 0),
(37, '58438105f0674', 'Ð¢ÐÐ£ (Ð»ÐµÐºÑÐ¸Ñ)', '58438154b471a', '5843566489b19', '0000-00-00 00:00:00', 0),
(38, '584381b6f35ae', 'Ð¢ÐÐ£ (Ð¿ÑÐ°ÐºÑÐ¸ÐºÐ°)', '58438154b471a', '5843566489b19', '0000-00-00 00:00:00', 0),
(41, '5843826cb9486', 'Ð£Ð¿ÑÐ°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð² Ð¾ÑÐ³Ð°Ð½Ð¸Ð·', '584382547cc64', '5843566489b19', '0000-00-00 00:00:00', 0),
(42, '584382979dc11', 'Ð£Ð¿ÑÐ°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð² Ð¾ÑÐ³Ð°Ð½Ð¸Ð·', '584382547cc64', '5843566489b19', '0000-00-00 00:00:00', 0),
(43, '584382d75aaf3', 'ÐÐ½Ð³Ð»Ð¸Ð¹ÑÐºÐ¸Ð¹ ÑÐ·ÑÐº', '584382d14f98a', '5843566489b19', '0000-00-00 00:00:00', 0),
(44, '584382f41f414', 'Ð¡Ð£Ð (Ð»Ð°Ð±)', '584382edc2800', '5843566489b19', '0000-00-00 00:00:00', 0),
(45, '584382fe0b36b', 'Ð¡Ð£Ð (Ð»ÐµÐºÑÐ¸Ñ)', '584382edc2800', '5843566489b19', '0000-00-00 00:00:00', 0),
(46, '58438342368f6', 'ÐÐµÑÐ¾Ð´Ñ Ð¾Ð¿ÑÐ¸Ð¼Ð¸Ð·Ð°ÑÐ¸Ð¸ (', '584383489a44f', '5843566489b19', '0000-00-00 00:00:00', 0),
(47, '58438717ea92c', 'ÐÑÐ¸ÑÐ¾Ð»Ð¾Ð³Ð¸Ñ Ð´ÐµÐ»Ð¾Ð²ÑÑ Ð¸', '58438745ebab8', '5843566489b19', '0000-00-00 00:00:00', 0),
(48, '58438775dee84', 'ÐÑÐ¸ÑÐ¾Ð»Ð¾Ð³Ð¸Ñ Ð´ÐµÐ»Ð¾Ð²ÑÑ Ð¸', '58438745ebab8', '5843566489b19', '0000-00-00 00:00:00', 0),
(49, '5843877c938d9', 'Ð¢ÐµÑÐ½Ð¸ÐºÐ¾-ÑÐºÐ¾Ð½Ð¾Ð¼Ð¸ÑÐµÑÐºÐ¾', '5843878e744cd', '5843566489b19', '0000-00-00 00:00:00', 0),
(50, '584387837336b', 'Ð¢ÐµÑÐ½Ð¸ÐºÐ¾-ÑÐºÐ¾Ð½Ð¾Ð¼Ð¸ÑÐµÑÐºÐ¾', '5843878e744cd', '5843566489b19', '0000-00-00 00:00:00', 0),
(51, '58438788ca323', 'Ð¢ÐµÑÐ½Ð¸ÐºÐ¾-ÑÐºÐ¾Ð½Ð¾Ð¼Ð¸ÑÐµÑÐºÐ¾', '5843878e744cd', '5843566489b19', '0000-00-00 00:00:00', 0),
(52, '5843883a11a44', 'Ð¤ÐÐ', '584388435f199', '5843566489b19', '0000-00-00 00:00:00', 0),
(53, '5843887ebe722', 'ÐÐµÑÐ¾Ð´Ñ Ð¾Ð¿ÑÐ¸Ð¼Ð¸Ð·Ð°ÑÐ¸Ð¸ (', '584383489a44f', '5843566489b19', '0000-00-00 00:00:00', 0),
(39, '58438945a8671', 'Ð¢ÐÐ£ (Ð»Ð°Ð±)', '58438154b471a', '5843566489b19', '0000-00-00 00:00:00', 0),
(40, '584389b803c01', 'ÐÐµÑÐ¾Ð´Ñ Ð¾Ð¿ÑÐ¸Ð¼Ð¸Ð·Ð°ÑÐ¸Ð¸(Ð»', '584382547cc64', '5843566489b19', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Ð¡ÑÑÑÐºÑÑÑÐ° ÑÐ°Ð±Ð»Ð¸ÑÑ `data`
--

CREATE TABLE `data` (
  `n` int(6) NOT NULL,
  `idDATA` varchar(6) NOT NULL,
  `nameDATA` varchar(30) NOT NULL,
  `url` text NOT NULL,
  `item_reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Ð¡ÑÑÑÐºÑÑÑÐ° ÑÐ°Ð±Ð»Ð¸ÑÑ `events`
--

CREATE TABLE `events` (
  `n` int(6) NOT NULL,
  `idEV` varchar(6) NOT NULL,
  `nameEVENT` varchar(20) NOT NULL,
  `text` text NOT NULL,
  `event_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Ð¡ÑÑÑÐºÑÑÑÐ° ÑÐ°Ð±Ð»Ð¸ÑÑ `group`
--

CREATE TABLE `group` (
  `n` int(3) NOT NULL,
  `idGR` varchar(3) NOT NULL,
  `nameGR` varchar(20) NOT NULL,
  `time_ex` date NOT NULL,
  `idTU` varchar(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Ð¡ÑÑÑÐºÑÑÑÐ° ÑÐ°Ð±Ð»Ð¸ÑÑ `homework`
--

CREATE TABLE `homework` (
  `n` int(10) NOT NULL,
  `idHW` varchar(13) NOT NULL,
  `deadline` date NOT NULL,
  `idTU` varchar(13) NOT NULL,
  `idCO` varchar(13) NOT NULL,
  `idGR` varchar(13) NOT NULL,
  `theme` varchar(50) NOT NULL,
  `descr` text NOT NULL,
  `link` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- ÐÐ°Ð¼Ð¿ Ð´Ð°Ð½Ð½ÑÑ ÑÐ°Ð±Ð»Ð¸ÑÑ `homework`
--

INSERT INTO `homework` (`n`, `idHW`, `deadline`, `idTU`, `idCO`, `idGR`, `theme`, `descr`, `link`) VALUES
(1, '584351a4ca721', '2016-12-21', '584382edc2800', '584382f41f414', '5843566489b19', 'Ð¤Ð¸Ð·Ð¸ÑÐµÑÐºÐ¸Ðµ Ð¾ÑÐ½Ð¾Ð²Ñ Ð¼ÐµÑÐ°Ð½Ð¸ÐºÐ¸. ÐÐ¸Ð½ÐµÐ¼Ð°ÑÐ¸ÐºÐ°.', 'ÐÐ°ÑÐµÑ, Ð´Ð²Ð¸Ð³Ð°ÑÑÑ Ð²Ð½Ð¸Ð· Ð¿Ð¾ ÑÐµÐºÐµ, Ð¾Ð±Ð¾Ð³Ð½Ð°Ð» Ð¿Ð»Ð¾Ñ Ð² Ð¿ÑÐ½ÐºÑÐµ Ð. Ð§ÐµÑÐµÐ· Ï = 60 Ð¼Ð¸Ð½ Ð¿Ð¾ÑÐ»Ðµ ÑÑÐ¾Ð³Ð¾ Ð¾Ð½ Ð¿Ð¾Ð²ÐµÑÐ½ÑÐ» Ð¾Ð±ÑÐ°ÑÐ½Ð¾ Ð¸ Ð·Ð°ÑÐµÐ¼ Ð²ÑÑÑÐµÑÐ¸Ð» Ð¿Ð»Ð¾Ñ Ð½Ð° ÑÐ°ÑÑÑÐ¾ÑÐ½Ð¸Ð¸ l = 6,0 ÐºÐ¼ Ð½Ð¸Ð¶Ðµ Ð¿ÑÐ½ÐºÑÐ° Ð. ÐÐ°Ð¹ÑÐ¸ ÑÐºÐ¾ÑÐ¾ÑÑÑ ÑÐµÑÐµÐ½Ð¸Ñ, ÐµÑÐ»Ð¸ Ð¿ÑÐ¸ Ð´Ð²Ð¸Ð¶ÐµÐ½Ð¸Ð¸ Ð² Ð¾Ð±Ð¾Ð¸Ñ Ð½Ð°Ð¿ÑÐ°Ð²Ð»ÐµÐ½Ð¸ÑÑ Ð¼Ð¾ÑÐ¾Ñ ÐºÐ°ÑÐµÑÐ° ÑÐ°Ð±Ð¾ÑÐ°Ð» Ð¾Ð´Ð¸Ð½Ð°ÐºÐ¾Ð²Ð¾.', ''),
(2, '58454c5c413fe', '2016-12-25', '584382edc2800', '584382f41f414', '5843566489b19', 'ÐÐ»Ð° Ð±Ð»Ð° Ð±Ð»Ð°...', '', '../homework/58454c5c413fe/');

-- --------------------------------------------------------

--
-- Ð¡ÑÑÑÐºÑÑÑÐ° ÑÐ°Ð±Ð»Ð¸ÑÑ `journal`
--

CREATE TABLE `journal` (
  `n` int(6) DEFAULT NULL,
  `idST` varchar(13) NOT NULL,
  `idGR` varchar(13) NOT NULL,
  `idCO` varchar(13) NOT NULL,
  `date` date NOT NULL,
  `occup` tinyint(1) NOT NULL,
  `sum_points` int(3) NOT NULL,
  `descr` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Ð¡ÑÑÑÐºÑÑÑÐ° ÑÐ°Ð±Ð»Ð¸ÑÑ `messagehw`
--

CREATE TABLE `messagehw` (
  `n` int(100) NOT NULL,
  `sender` varchar(1) NOT NULL,
  `idST` varchar(13) NOT NULL,
  `idHW` varchar(13) NOT NULL,
  `message` text NOT NULL,
  `link` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- ÐÐ°Ð¼Ð¿ Ð´Ð°Ð½Ð½ÑÑ ÑÐ°Ð±Ð»Ð¸ÑÑ `messagehw`
--

INSERT INTO `messagehw` (`n`, `sender`, `idST`, `idHW`, `message`, `link`) VALUES
(1, '0', '584318bc576da', '584351a4ca721', 'ÐÐ´ÑÐ°Ð²ÑÑÐ²ÑÐ¹ÑÐµ, Ð½Ð¸ÑÐµ Ð½Ðµ Ð¿Ð¾Ð½ÑÐ».', ''),
(2, '1', '584318bc576da', '584351a4ca721', 'Ð§Ð¸ÑÐ°Ð¹ Ð»ÑÑÑÐµ.Ð§Ð¸ÑÐ°Ð¹ Ð»ÑÑÑÐµ. Ð§Ð¸ÑÐ°Ð¹ Ð»ÑÑÑÐµ.Ð§Ð¸ÑÐ°Ð¹ Ð»ÑÑÑÐµ. Ð§Ð¸ÑÐ°Ð¹ Ð»ÑÑÑÐµ. Ð§Ð¸ÑÐ°Ð¹ Ð»ÑÑÑÐµ.Ð§Ð¸ÑÐ°Ð¹ Ð»ÑÑÑÐµ.Ð§Ð¸ÑÐ°Ð¹ Ð»ÑÑÑÐµ. Ð§Ð¸ÑÐ°Ð¹ Ð»ÑÑÑÐµ.Ð§Ð¸ÑÐ°Ð¹ Ð»ÑÑÑÐµ. Ð§Ð¸ÑÐ°Ð¹ Ð»ÑÑÑÐµ. Ð§Ð¸ÑÐ°Ð¹ Ð»ÑÑÑÐµ.Ð§Ð¸ÑÐ°Ð¹ Ð»ÑÑÑÐµ.Ð§Ð¸ÑÐ°Ð¹ Ð»ÑÑÑÐµ. Ð§Ð¸ÑÐ°Ð¹ Ð»ÑÑÑÐµ.Ð§Ð¸ÑÐ°Ð¹ Ð»ÑÑÑÐµ. Ð§Ð¸ÑÐ°Ð¹ Ð»ÑÑÑÐµ. Ð§Ð¸ÑÐ°Ð¹ Ð»ÑÑÑÐµ.', ''),
(3, '0', '584318bc576da', '584351a4ca721', 'ÐÐº...', ''),
(4, '0', '584318bc576da', '584351a4ca721', 'Ð¡ÐµÐ¹ÑÐ°Ñ ÑÐºÐ¸Ð½Ñ:', ''),
(5, '1', '584318bc576da', '584351a4ca721', 'Ð§Ð¸ÑÐ°Ð¹ Ð»ÑÑÑÐµ.Ð§Ð¸ÑÐ°Ð¹ Ð»ÑÑÑÐµ. Ð§Ð¸ÑÐ°Ð¹ Ð»ÑÑÑÐµ.Ð§Ð¸ÑÐ°Ð¹ Ð»ÑÑÑÐµ.Ð§Ð¸ÑÐ°Ð¹ Ð»ÑÑÑÐµ.Ð§Ð¸ÑÐ°Ð¹ Ð»ÑÑÑÐµ. Ð§Ð¸ÑÐ°Ð¹ Ð»ÑÑÑÐµ.Ð§Ð¸ÑÐ°Ð¹ Ð»ÑÑÑÐµ.Ð§Ð¸ÑÐ°Ð¹ Ð»ÑÑÑÐµ.Ð§Ð¸ÑÐ°Ð¹ Ð»ÑÑÑÐµ. Ð§Ð¸ÑÐ°Ð¹ Ð»ÑÑÑÐµ.Ð§Ð¸ÑÐ°Ð¹ Ð»ÑÑÑÐµ.', ''),
(6, '0', '584318bc576da', '584351a4ca721', 'Ð¥Ð¾ÑÐ¾ÑÐ¾.... ((', ''),
(16, '1', '58431ca7a41f7', '584351a4ca721', 'ÑÐ¿Ð°ÑÑÐ¿ÑÐ¾', ''),
(17, '1', '584318bc576da', '58454c5c413fe', 'Ð³ÐµÐ°ÐµÐ°Ð½Ð°Ð½Ð¾Ð°\r\n', ''),
(18, '1', '584318bc576da', '58454c5c413fe', 'Ð½ÐºÑÐºÐ²Ð½Ð½ÑÐµÐ¾Ð³Ð»Ð½ÐµÐ¿', ''),
(20, '0', '58431ca7a41f7', '584351a4ca721', 'sjkjl;l', ''),
(21, '0', '58431f183fc35', '584351a4ca721', 'SDFSDFSD', ''),
(22, '0', '58431f183fc35', '584351a4ca721', 'SDFSDFSD', ''),
(23, '0', '58431f183fc35', '584351a4ca721', 'SDFSDFaeEDFADF', ''),
(24, '0', '584318bc576da', '584351a4ca721', 'asdasd', '');

-- --------------------------------------------------------

--
-- Ð¡ÑÑÑÐºÑÑÑÐ° ÑÐ°Ð±Ð»Ð¸ÑÑ `mydata`
--

CREATE TABLE `mydata` (
  `n` int(6) NOT NULL,
  `idmydata` varchar(13) NOT NULL,
  `name_mydata` text NOT NULL,
  `link` int(50) NOT NULL,
  `mydata_regtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Ð¡ÑÑÑÐºÑÑÑÐ° ÑÐ°Ð±Ð»Ð¸ÑÑ `schedule`
--

CREATE TABLE `schedule` (
  `n` int(6) NOT NULL,
  `id_group` int(6) NOT NULL,
  `year` int(4) NOT NULL,
  `semester` int(1) NOT NULL,
  `updown` int(1) NOT NULL,
  `mon` text NOT NULL,
  `tue` text NOT NULL,
  `Wed` text NOT NULL,
  `thu` text NOT NULL,
  `fri` text NOT NULL,
  `sat` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- ÐÐ°Ð¼Ð¿ Ð´Ð°Ð½Ð½ÑÑ ÑÐ°Ð±Ð»Ð¸ÑÑ `schedule`
--

INSERT INTO `schedule` (`n`, `id_group`, `year`, `semester`, `updown`, `mon`, `tue`, `Wed`, `thu`, `fri`, `sat`) VALUES
(1, 112782, 2017, 5, 0, '2?Ð­ÐºÐ¾Ð½Ð¾Ð¼Ð¸ÐºÐ°(ÑÐµÐ¼Ð¸Ð½Ð°Ñ) Ð¢Ð°ÑÐ¼ÑÐ½ Ð®.Ð  502;3?Ð­ÐºÐ¾Ð½Ð¾Ð¼Ð¸ÐºÐ° (Ð»ÐµÐºÑÐ¸Ñ) Ð¢Ð°ÑÐ¼ÑÐ½ Ð®.Ð  514;4?Ð¢ÐÐ£(Ð»ÐµÐºÑÐ¸Ñ) Ð.Ð 507;5?Ð¢ÐÐ£(Ð¿ÑÐ°ÐºÑÐ¸ÐºÐ°) Ð.Ð 503;6?Ð¢ÐÐ£(Ð»Ð°Ð±) Ð.Ð 507;', '1?Ð¤ÐÐ;', '3?ÐÐµÑÐ¾Ð´Ñ Ð¾Ð¿ÑÐ¸Ð¼Ð¸Ð·Ð°ÑÐ¸Ð¸(Ð»ÐµÐºÑÐ¸Ñ) ÐÑÐ°ÐµÑÐºÐ°Ñ Ð.Ð 514;4?Ð£Ð¿ÑÐ°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð² Ð¾ÑÐ³Ð°Ð½Ð¸Ð·Ð°ÑÐ¸Ð¾Ð½Ð½ÑÑ ÑÐ¸ÑÑÐµÐ¼Ð°Ñ(Ð»ÐµÐºÑÐ¸Ñ) ÐÑÐ°ÐµÑÐºÐ°Ñ Ð.Ð 507;5?Ð£Ð¿ÑÐ°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð² Ð¾ÑÐ³Ð°Ð½Ð¸Ð·Ð°ÑÐ¸Ð¾Ð½Ð½ÑÑ ÑÐ¸ÑÑÐµÐ¼Ð°Ñ(Ð¿ÑÐ°ÐºÑÐ¸ÐºÐ°) ÐÑÐ°ÐµÑÐºÐ°Ñ Ð.Ð 507;', '1?ÐÐ½Ð³Ð»Ð¸Ð¹ÑÐºÐ¸Ð¹ ÑÐ·ÑÐº Ð ÐµÐ·Ð½Ð¸ÐºÐ¾Ð²Ð° 506;2?Ð¡Ð£Ð(Ð»Ð°Ð±)ÐÐ¾ÑÐ¾ÑÐ¾Ð²Ð° Ð.Ð Ð§ÑÑÐ¾Ð²Ð° Ð®.Ð¡ 609Ð°;3?Ð¡Ð£Ð(Ð»ÐµÐºÑÐ¸Ñ)ÐÐ¾ÑÐ¾ÑÐ¾Ð²Ð° Ð.Ð 508;4?ÐÐµÑÐ¾Ð´Ñ Ð¾Ð¿ÑÐ¸Ð¼Ð¸Ð·Ð°ÑÐ¸Ð¸(Ð»Ð°Ð±) Ð§ÑÑÐ¾Ð²Ð° Ð®.Ð¡ 606;', '2?ÐÑÐ¸ÑÐ¾Ð»Ð¾Ð³Ð¸Ñ Ð´ÐµÐ»Ð¾Ð²ÑÑ Ð¸ Ð¼ÐµÐ¶Ð»Ð¸ÑÐ½Ð¾ÑÑÐ½ÑÑ ÐºÐ¾Ð¼Ð¼ÑÐ½Ð¸ÐºÐ°ÑÐ¸Ð¹(Ð»ÐµÐºÑÐ¸Ñ) ÐÑÑÑÐ¸Ð»ÐµÐ²Ð° Ð.Ð®Ð¼ 514;3?ÐÑÐ¸ÑÐ¾Ð»Ð¾Ð³Ð¸Ñ Ð´ÐµÐ»Ð¾Ð²ÑÑ Ð¸ Ð¼ÐµÐ¶Ð»Ð¸ÑÐ½Ð¾ÑÑÐ½ÑÑ ÐºÐ¾Ð¼Ð¼ÑÐ½Ð¸ÐºÐ°ÑÐ¸Ð¹(Ð¿ÑÐ°ÐºÑÐ¸ÐºÐ°) ÐÑÑÑÐ¸Ð»ÐµÐ²Ð° Ð.Ð®Ð¼ 511;', '3?Ð¢ÐµÑÐ½Ð¸ÐºÐ¾-ÑÐºÐ¾Ð½Ð¾Ð¼Ð¸ÑÐµÑÐºÐ¾Ðµ Ð¿ÑÐ¾ÐµÐºÑÐ¸ÑÐ¾Ð²Ð°Ð½Ð¸Ðµ(Ð¿ÑÐ°ÐºÑÐ¸ÐºÐ°) ÐÐ¾ÑÐ¾ÑÐ¾Ð² Ð.Ð 609;4?Ð¢ÐµÑÐ½Ð¸ÐºÐ¾-ÑÐºÐ¾Ð½Ð¾Ð¼Ð¸ÑÐµÑÐºÐ¾Ðµ Ð¿ÑÐ¾ÐµÐºÑÐ¸ÑÐ¾Ð²Ð°Ð½Ð¸Ðµ(Ð¿ÑÐ°ÐºÑÐ¸ÐºÐ°) ÐÐ¾ÑÐ¾ÑÐ¾Ð² Ð.Ð 503;5?Ð¢ÐµÑÐ½Ð¸ÐºÐ¾-ÑÐºÐ¾Ð½Ð¾Ð¼Ð¸ÑÐµÑÐºÐ¾Ðµ Ð¿ÑÐ¾ÐµÐºÑÐ¸ÑÐ¾Ð²Ð°Ð½Ð¸Ðµ(Ð»ÐµÐºÑÐ¸Ñ) ÐÐ¾ÑÐ¾ÑÐ¾Ð² Ð.Ð 510;'),
(2, 112782, 2017, 5, 1, '2?Ð­ÐºÐ¾Ð½Ð¾Ð¼Ð¸ÐºÐ°(ÑÐµÐ¼Ð¸Ð½Ð°Ñ) Ð¢Ð°ÑÐ¼ÑÐ½ Ð®.Ð  502;4?Ð¢ÐÐ£(Ð»ÐµÐºÑÐ¸Ñ) Ð.Ð 507;5?Ð¢ÐÐ£(Ð¿ÑÐ°ÐºÑÐ¸ÐºÐ°) Ð.Ð 503;', '1?Ð¤ÐÐ;', '3?ÐÐµÑÐ¾Ð´Ñ Ð¾Ð¿ÑÐ¸Ð¼Ð¸Ð·Ð°ÑÐ¸Ð¸(Ð»ÐµÐºÑÐ¸Ñ) ÐÑÐ°ÐµÑÐºÐ°Ñ Ð.Ð 514;4?Ð£Ð¿ÑÐ°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð² Ð¾ÑÐ³Ð°Ð½Ð¸Ð·Ð°ÑÐ¸Ð¾Ð½Ð½ÑÑ ÑÐ¸ÑÑÐµÐ¼Ð°Ñ(Ð»ÐµÐºÑÐ¸Ñ) ÐÑÐ°ÐµÑÐºÐ°Ñ Ð.Ð 507;5?Ð£Ð¿ÑÐ°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð² Ð¾ÑÐ³Ð°Ð½Ð¸Ð·Ð°ÑÐ¸Ð¾Ð½Ð½ÑÑ ÑÐ¸ÑÑÐµÐ¼Ð°Ñ(Ð¿ÑÐ°ÐºÑÐ¸ÐºÐ°) ÐÑÐ°ÐµÑÐºÐ°Ñ Ð.Ð 507;', '1?ÐÐ½Ð³Ð»Ð¸Ð¹ÑÐºÐ¸Ð¹ ÑÐ·ÑÐº Ð ÐµÐ·Ð½Ð¸ÐºÐ¾Ð²Ð° 506;2?ÐÐµÑÐ¾Ð´Ñ Ð¾Ð¿ÑÐ¸Ð¼Ð¸Ð·Ð°ÑÐ¸Ð¸(Ð¿ÑÐ°ÐºÑÐ¸ÐºÐ°) Ð§ÑÑÐ¾Ð²Ð° Ð®.Ð¡ 609Ð°;3?Ð¡Ð£Ð(Ð¿ÑÐ°ÐºÑÐ¸ÐºÐ°)ÐÐ¾ÑÐ¾ÑÐ¾Ð²Ð° Ð.Ð 508;4?ÐÐµÑÐ¾Ð´Ñ Ð¾Ð¿ÑÐ¸Ð¼Ð¸Ð·Ð°ÑÐ¸Ð¸(Ð»Ð°Ð±) Ð§ÑÑÐ¾Ð²Ð° Ð®.Ð¡ 606;', '', '4?Ð¢ÐµÑÐ½Ð¸ÐºÐ¾-ÑÐºÐ¾Ð½Ð¾Ð¼Ð¸ÑÐµÑÐºÐ¾Ðµ Ð¿ÑÐ¾ÐµÐºÑÐ¸ÑÐ¾Ð²Ð°Ð½Ð¸Ðµ(Ð¿ÑÐ°ÐºÑÐ¸ÐºÐ°) ÐÐ¾ÑÐ¾ÑÐ¾Ð² Ð.Ð 503;');

-- --------------------------------------------------------

--
-- Ð¡ÑÑÑÐºÑÑÑÐ° ÑÐ°Ð±Ð»Ð¸ÑÑ `stats_student`
--

CREATE TABLE `stats_student` (
  `â` int(6) NOT NULL,
  `idST` varchar(13) NOT NULL,
  `idGR` varchar(13) NOT NULL,
  `idCO` varchar(13) NOT NULL,
  `sum_points` int(3) NOT NULL,
  `modules` int(3) NOT NULL,
  `missed_occup` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Ð¡ÑÑÑÐºÑÑÑÐ° ÑÐ°Ð±Ð»Ð¸ÑÑ `stats_tutor`
--

CREATE TABLE `stats_tutor` (
  `n` int(6) NOT NULL,
  `idTU` varchar(13) NOT NULL,
  `idGR` varchar(13) NOT NULL,
  `idCO` varchar(13) NOT NULL,
  `sum_occup` int(3) NOT NULL,
  `missed_occup` int(3) NOT NULL,
  `sum_points` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Ð¡ÑÑÑÐºÑÑÑÐ° ÑÐ°Ð±Ð»Ð¸ÑÑ `students`
--

CREATE TABLE `students` (
  `n` int(6) NOT NULL,
  `idST` varchar(6) NOT NULL,
  `f_name` varchar(20) NOT NULL,
  `s_name` varchar(20) NOT NULL,
  `l_name` varchar(20) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `mail` varchar(20) NOT NULL,
  `date_reg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `login` varchar(16) NOT NULL,
  `pass` varchar(16) NOT NULL,
  `id` varchar(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Ð¡ÑÑÑÐºÑÑÑÐ° ÑÐ°Ð±Ð»Ð¸ÑÑ `tutors`
--

CREATE TABLE `tutors` (
  `n` int(6) NOT NULL,
  `idTU` varchar(6) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `sname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `phone` int(11) NOT NULL,
  `mail` varchar(20) NOT NULL,
  `idCO` varchar(6) NOT NULL,
  `idGR` varchar(6) NOT NULL,
  `id` varchar(6) NOT NULL,
  `login` varchar(16) NOT NULL,
  `pass` varchar(16) NOT NULL,
  `date_reg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Ð¡ÑÑÑÐºÑÑÑÐ° ÑÐ°Ð±Ð»Ð¸ÑÑ `userlist`
--

CREATE TABLE `userlist` (
  `n` int(11) NOT NULL,
  `id` varchar(13) NOT NULL,
  `status` varchar(10) NOT NULL,
  `login` varchar(30) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) NOT NULL,
  `idGR` varchar(13) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- ÐÐ°Ð¼Ð¿ Ð´Ð°Ð½Ð½ÑÑ ÑÐ°Ð±Ð»Ð¸ÑÑ `userlist`
--

INSERT INTO `userlist` (`n`, `id`, `status`, `login`, `pass`, `first_name`, `last_name`, `middle_name`, `idGR`) VALUES
(2, '584318bc576da', '0', 'podgornyy@sfedu.ru', 'pass', 'ÐÐ¸ÐºÐ¸ÑÐ°', 'ÐÐ¾Ð´Ð³Ð¾ÑÐ½ÑÐ¹', 'ÐÐ»ÐµÐºÑÐ°Ð½Ð´ÑÐ¾Ð²Ð¸Ñ', '5843566489b19'),
(1, '58431a5a795da', '1', 'issh@sfedu.ru', 'pass', 'ÐÑÐ¸Ð½Ð°', 'Ð¨Ð°Ð±Ð°ÑÑÐ¸Ð½Ð°', 'Ð¡ÐµÑÐ³ÐµÐµÐ²Ð½Ð°', ''),
(3, '58431ca7a41f7', '0', 'namc0@ya.ru', 'pass', 'ÐÑÐ¾Ð½Ð¸ÑÐ»Ð°Ð²', 'ÐÐ¸Ð»ÑÑÐºÐ¸Ð¹', 'ÐÐ¸ÑÐ°Ð»ÑÐµÐ²Ð¸Ñ', '5843566489b19'),
(4, '58431ef20440b', '0', '', '', 'Ð¡Ð°ÑÐ°', 'ÐÑÐ°Ð¿Ð¾Ð²Ð°', '', '5843566489b19'),
(5, '58431f031ded3', '0', '', '', 'ÐÐ¹ÑÐ°Ñ', 'Ð£ÑÑÑÐ¾Ð²', 'ÐÐ½Ð²Ð°ÑÐ¾Ð²Ð¸Ñ', '5843566489b19'),
(6, '58431f0d0f413', '0', '', '', 'ÐÐ»ÐµÐºÑÐ°Ð½Ð´ÑÐ°', 'ÐÑÑÐ°ÐºÐ¾Ð²Ð°', '', '5843566489b19'),
(7, '58431f183fc35', '0', 'avanesov@sfedu.ru', 'pass', 'ÐÑÑÐµÐ¼', 'ÐÐ²Ð°Ð½ÐµÑÐ¾Ð²', 'ÐÑÐºÐ°Ð´Ð¸ÐµÐ²Ð¸Ñ', '5843566489b19'),
(8, '58431f245f546', '0', '', '', 'ÐÑÑÐµÑÐ»Ð°Ð²', 'ÐÐ°Ð¹ÑÐµÐ½ÐºÐ¾', '', '5843566489b19'),
(9, '58431f2bd7979', '0', '', '', 'ÐÐ¼Ð¸ÑÑÐ¸Ð¹', 'Ð¡Ð¾Ð±ÐµÐ½Ð¸Ð½', '', '5843566489b19'),
(10, '58431f33697dc', '0', '', '', 'ÐÐ°ÑÐ¸Ð½Ð°', 'ÐÐ»Ð¸Ð²ÐµÑÐ´Ð¸ÐµÐ²Ð°', '', '5843566489b19'),
(11, '58431f3ae0e80', '0', '', '', 'ÐÐ°ÑÐ¸Ñ', 'Ð Ð°ÐºÐ¾Ð²Ð¸Ñ', '', '5843566489b19'),
(12, '58431f43a1632', '0', '', '', 'ÐÐ»ÐµÑÑ', 'Ð¡Ð¼Ð¸ÑÐ½Ð¾Ð²Ð°', '', '5843566489b19'),
(13, '58431f77eeeab', '0', '', '', 'ÐÑÑÐµÐ¼', 'ÐÐ³Ð°Ð¹', '', '5843566489b19'),
(14, '58431f835ff30', '0', '', '', 'ÐÐ¸Ð¼Ð°', 'ÐÐ¸ÐºÐµÐ»Ñ', '', '5843566489b19'),
(15, '58431f8f5e8cc', '0', '', '', 'Ð¡ÑÐ°Ð½Ð¸ÑÐ»Ð°Ð²', 'ÐÑÑÐµÐ½ÐºÐ¾Ð²', '', '5843566489b19'),
(16, '5843721b29aed', '1', '', '', 'ÐÐ¼Ñ', 'Ð¢Ð°Ð½ÑÑÐµÐ²', 'ÐÑÑÐµÑÑÐ²Ð¾', ''),
(17, '584382edc2800', '1', 'evk@sfedu.ru', 'pass', 'ÐÐ»ÐµÐ½Ð°', 'ÐÐ¾ÑÐ¾ÑÐ¾Ð²Ð°', 'ÐÑÑÐµÑÐ»Ð°Ð²Ð¾Ð²Ð½Ð°', '');

--
-- ÐÐ½Ð´ÐµÐºÑÑ ÑÐ¾ÑÑÐ°Ð½ÑÐ½Ð½ÑÑ ÑÐ°Ð±Ð»Ð¸Ñ
--

--
-- ÐÐ½Ð´ÐµÐºÑÑ ÑÐ°Ð±Ð»Ð¸ÑÑ `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`idCH`),
  ADD UNIQUE KEY `â` (`n`);

--
-- ÐÐ½Ð´ÐµÐºÑÑ ÑÐ°Ð±Ð»Ð¸ÑÑ `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`idCO`),
  ADD UNIQUE KEY `â` (`n`);

--
-- ÐÐ½Ð´ÐµÐºÑÑ ÑÐ°Ð±Ð»Ð¸ÑÑ `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`idDATA`),
  ADD UNIQUE KEY `â` (`n`);

--
-- ÐÐ½Ð´ÐµÐºÑÑ ÑÐ°Ð±Ð»Ð¸ÑÑ `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`idEV`),
  ADD UNIQUE KEY `â` (`n`);

--
-- ÐÐ½Ð´ÐµÐºÑÑ ÑÐ°Ð±Ð»Ð¸ÑÑ `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`idGR`),
  ADD UNIQUE KEY `â` (`n`);

--
-- ÐÐ½Ð´ÐµÐºÑÑ ÑÐ°Ð±Ð»Ð¸ÑÑ `homework`
--
ALTER TABLE `homework`
  ADD PRIMARY KEY (`idHW`),
  ADD UNIQUE KEY `n` (`n`);

--
-- ÐÐ½Ð´ÐµÐºÑÑ ÑÐ°Ð±Ð»Ð¸ÑÑ `journal`
--
ALTER TABLE `journal`
  ADD PRIMARY KEY (`idST`),
  ADD UNIQUE KEY `â` (`n`);

--
-- ÐÐ½Ð´ÐµÐºÑÑ ÑÐ°Ð±Ð»Ð¸ÑÑ `messagehw`
--
ALTER TABLE `messagehw`
  ADD PRIMARY KEY (`n`);

--
-- ÐÐ½Ð´ÐµÐºÑÑ ÑÐ°Ð±Ð»Ð¸ÑÑ `mydata`
--
ALTER TABLE `mydata`
  ADD PRIMARY KEY (`idmydata`),
  ADD UNIQUE KEY `â` (`n`);

--
-- ÐÐ½Ð´ÐµÐºÑÑ ÑÐ°Ð±Ð»Ð¸ÑÑ `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`n`);

--
-- ÐÐ½Ð´ÐµÐºÑÑ ÑÐ°Ð±Ð»Ð¸ÑÑ `stats_student`
--
ALTER TABLE `stats_student`
  ADD PRIMARY KEY (`idST`),
  ADD UNIQUE KEY `â` (`â`);

--
-- ÐÐ½Ð´ÐµÐºÑÑ ÑÐ°Ð±Ð»Ð¸ÑÑ `stats_tutor`
--
ALTER TABLE `stats_tutor`
  ADD PRIMARY KEY (`idTU`),
  ADD UNIQUE KEY `â` (`n`);

--
-- ÐÐ½Ð´ÐµÐºÑÑ ÑÐ°Ð±Ð»Ð¸ÑÑ `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`idST`),
  ADD UNIQUE KEY `â` (`n`);

--
-- ÐÐ½Ð´ÐµÐºÑÑ ÑÐ°Ð±Ð»Ð¸ÑÑ `tutors`
--
ALTER TABLE `tutors`
  ADD PRIMARY KEY (`idTU`),
  ADD UNIQUE KEY `â` (`n`);

--
-- ÐÐ½Ð´ÐµÐºÑÑ ÑÐ°Ð±Ð»Ð¸ÑÑ `userlist`
--
ALTER TABLE `userlist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `n` (`n`);

--
-- AUTO_INCREMENT Ð´Ð»Ñ ÑÐ¾ÑÑÐ°Ð½ÑÐ½Ð½ÑÑ ÑÐ°Ð±Ð»Ð¸Ñ
--

--
-- AUTO_INCREMENT Ð´Ð»Ñ ÑÐ°Ð±Ð»Ð¸ÑÑ `chats`
--
ALTER TABLE `chats`
  MODIFY `n` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT Ð´Ð»Ñ ÑÐ°Ð±Ð»Ð¸ÑÑ `courses`
--
ALTER TABLE `courses`
  MODIFY `n` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT Ð´Ð»Ñ ÑÐ°Ð±Ð»Ð¸ÑÑ `data`
--
ALTER TABLE `data`
  MODIFY `n` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT Ð´Ð»Ñ ÑÐ°Ð±Ð»Ð¸ÑÑ `events`
--
ALTER TABLE `events`
  MODIFY `n` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT Ð´Ð»Ñ ÑÐ°Ð±Ð»Ð¸ÑÑ `group`
--
ALTER TABLE `group`
  MODIFY `n` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT Ð´Ð»Ñ ÑÐ°Ð±Ð»Ð¸ÑÑ `homework`
--
ALTER TABLE `homework`
  MODIFY `n` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT Ð´Ð»Ñ ÑÐ°Ð±Ð»Ð¸ÑÑ `messagehw`
--
ALTER TABLE `messagehw`
  MODIFY `n` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT Ð´Ð»Ñ ÑÐ°Ð±Ð»Ð¸ÑÑ `mydata`
--
ALTER TABLE `mydata`
  MODIFY `n` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT Ð´Ð»Ñ ÑÐ°Ð±Ð»Ð¸ÑÑ `schedule`
--
ALTER TABLE `schedule`
  MODIFY `n` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT Ð´Ð»Ñ ÑÐ°Ð±Ð»Ð¸ÑÑ `stats_student`
--
ALTER TABLE `stats_student`
  MODIFY `â` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT Ð´Ð»Ñ ÑÐ°Ð±Ð»Ð¸ÑÑ `stats_tutor`
--
ALTER TABLE `stats_tutor`
  MODIFY `n` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT Ð´Ð»Ñ ÑÐ°Ð±Ð»Ð¸ÑÑ `students`
--
ALTER TABLE `students`
  MODIFY `n` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT Ð´Ð»Ñ ÑÐ°Ð±Ð»Ð¸ÑÑ `tutors`
--
ALTER TABLE `tutors`
  MODIFY `n` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT Ð´Ð»Ñ ÑÐ°Ð±Ð»Ð¸ÑÑ `userlist`
--
ALTER TABLE `userlist`
  MODIFY `n` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;