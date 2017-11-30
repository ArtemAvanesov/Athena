-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Дек 07 2016 г., 11:38
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `athena_base`
--

-- --------------------------------------------------------

--
-- Структура таблицы `chats`
--

CREATE TABLE IF NOT EXISTS `chats` (
  `n` int(6) NOT NULL AUTO_INCREMENT,
  `idCH` varchar(6) NOT NULL,
  `chat_name` varchar(20) NOT NULL,
  `id` varchar(6) NOT NULL,
  PRIMARY KEY (`idCH`),
  UNIQUE KEY `№` (`n`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `n` int(6) NOT NULL AUTO_INCREMENT,
  `idCO` varchar(13) NOT NULL,
  `name_course` varchar(20) NOT NULL,
  `idTU` varchar(13) NOT NULL,
  `idGR` varchar(13) NOT NULL,
  `date_exist_course` datetime NOT NULL,
  `sum_occup` int(3) NOT NULL,
  PRIMARY KEY (`idCO`),
  UNIQUE KEY `№` (`n`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;

--
-- Дамп данных таблицы `courses`
--

INSERT INTO `courses` (`n`, `idCO`, `name_course`, `idTU`, `idGR`, `date_exist_course`, `sum_occup`) VALUES
(1, '58436e1ba5007', 'Экономика (семинар)', '5843721b29aed', '5843566489b19', '0000-00-00 00:00:00', 0),
(2, '5843807c9cc12', 'Экономика (лекция)', '5843721b29aed', '5843566489b19', '0000-00-00 00:00:00', 0),
(37, '58438105f0674', 'ТАУ (лекция)', '58438154b471a', '5843566489b19', '0000-00-00 00:00:00', 0),
(38, '584381b6f35ae', 'ТАУ (практика)', '58438154b471a', '5843566489b19', '0000-00-00 00:00:00', 0),
(41, '5843826cb9486', 'Управление в организ', '584382547cc64', '5843566489b19', '0000-00-00 00:00:00', 0),
(42, '584382979dc11', 'Управление в организ', '584382547cc64', '5843566489b19', '0000-00-00 00:00:00', 0),
(43, '584382d75aaf3', 'Английский язык', '584382d14f98a', '5843566489b19', '0000-00-00 00:00:00', 0),
(44, '584382f41f414', 'СУД (лаб)', '584382edc2800', '5843566489b19', '0000-00-00 00:00:00', 0),
(45, '584382fe0b36b', 'СУД (лекция)', '584382edc2800', '5843566489b19', '0000-00-00 00:00:00', 0),
(46, '58438342368f6', 'Методы оптимизации (', '584383489a44f', '5843566489b19', '0000-00-00 00:00:00', 0),
(47, '58438717ea92c', 'Психология деловых и', '58438745ebab8', '5843566489b19', '0000-00-00 00:00:00', 0),
(48, '58438775dee84', 'Психология деловых и', '58438745ebab8', '5843566489b19', '0000-00-00 00:00:00', 0),
(49, '5843877c938d9', 'Технико-экономическо', '5843878e744cd', '5843566489b19', '0000-00-00 00:00:00', 0),
(50, '584387837336b', 'Технико-экономическо', '5843878e744cd', '5843566489b19', '0000-00-00 00:00:00', 0),
(51, '58438788ca323', 'Технико-экономическо', '5843878e744cd', '5843566489b19', '0000-00-00 00:00:00', 0),
(52, '5843883a11a44', 'ФВО', '584388435f199', '5843566489b19', '0000-00-00 00:00:00', 0),
(53, '5843887ebe722', 'Методы оптимизации (', '584383489a44f', '5843566489b19', '0000-00-00 00:00:00', 0),
(39, '58438945a8671', 'ТАУ (лаб)', '58438154b471a', '5843566489b19', '0000-00-00 00:00:00', 0),
(40, '584389b803c01', 'Методы оптимизации(л', '584382547cc64', '5843566489b19', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `data`
--

CREATE TABLE IF NOT EXISTS `data` (
  `n` int(6) NOT NULL AUTO_INCREMENT,
  `idDATA` varchar(6) NOT NULL,
  `nameDATA` varchar(30) NOT NULL,
  `url` text NOT NULL,
  `item_reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idDATA`),
  UNIQUE KEY `№` (`n`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `n` int(6) NOT NULL AUTO_INCREMENT,
  `idEV` varchar(6) NOT NULL,
  `nameEVENT` varchar(20) NOT NULL,
  `text` text NOT NULL,
  `event_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idEV`),
  UNIQUE KEY `№` (`n`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `group`
--

CREATE TABLE IF NOT EXISTS `group` (
  `n` int(3) NOT NULL AUTO_INCREMENT,
  `idGR` varchar(3) NOT NULL,
  `nameGR` varchar(20) NOT NULL,
  `time_ex` date NOT NULL,
  `idTU` varchar(6) NOT NULL,
  PRIMARY KEY (`idGR`),
  UNIQUE KEY `№` (`n`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `homework`
--

CREATE TABLE IF NOT EXISTS `homework` (
  `n` int(10) NOT NULL AUTO_INCREMENT,
  `idHW` varchar(13) NOT NULL,
  `deadline` date NOT NULL,
  `idTU` varchar(13) NOT NULL,
  `idCO` varchar(13) NOT NULL,
  `idGR` varchar(13) NOT NULL,
  `theme` varchar(50) NOT NULL,
  `descr` text NOT NULL,
  `link` text NOT NULL,
  PRIMARY KEY (`idHW`),
  UNIQUE KEY `n` (`n`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `homework`
--

INSERT INTO `homework` (`n`, `idHW`, `deadline`, `idTU`, `idCO`, `idGR`, `theme`, `descr`, `link`) VALUES
(1, '584351a4ca721', '2016-12-21', '584382edc2800', '584382f41f414', '5843566489b19', 'Физические основы механики. Кинематика.', 'Катер, двигаясь вниз по реке, обогнал плот в пункте А. Через τ = 60 мин после этого он повернул обратно и затем встретил плот на расстоянии l = 6,0 км ниже пункта А. Найти скорость течения, если при движении в обоих направлениях мотор катера работал одинаково.', ''),
(2, '58454c5c413fe', '2016-12-25', '584382edc2800', '584382f41f414', '5843566489b19', 'Бла бла бла...', '', '../homework/58454c5c413fe/');

-- --------------------------------------------------------

--
-- Структура таблицы `journal`
--

CREATE TABLE IF NOT EXISTS `journal` (
  `n` int(6) DEFAULT NULL,
  `idST` varchar(13) NOT NULL,
  `idGR` varchar(13) NOT NULL,
  `idCO` varchar(13) NOT NULL,
  `date` date NOT NULL,
  `occup` tinyint(1) NOT NULL,
  `sum_points` int(3) NOT NULL,
  `descr` int(11) NOT NULL,
  PRIMARY KEY (`idST`),
  UNIQUE KEY `№` (`n`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `messagehw`
--

CREATE TABLE IF NOT EXISTS `messagehw` (
  `n` int(100) NOT NULL AUTO_INCREMENT,
  `sender` varchar(1) NOT NULL,
  `idST` varchar(13) NOT NULL,
  `idHW` varchar(13) NOT NULL,
  `message` text NOT NULL,
  `link` text NOT NULL,
  PRIMARY KEY (`n`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Дамп данных таблицы `messagehw`
--

INSERT INTO `messagehw` (`n`, `sender`, `idST`, `idHW`, `message`, `link`) VALUES
(1, '0', '584318bc576da', '584351a4ca721', 'Здравствуйте, ниче не понял.', ''),
(2, '1', '584318bc576da', '584351a4ca721', 'Читай лучше.Читай лучше. Читай лучше.Читай лучше. Читай лучше. Читай лучше.Читай лучше.Читай лучше. Читай лучше.Читай лучше. Читай лучше. Читай лучше.Читай лучше.Читай лучше. Читай лучше.Читай лучше. Читай лучше. Читай лучше.', ''),
(3, '0', '584318bc576da', '584351a4ca721', 'Ок...', ''),
(4, '0', '584318bc576da', '584351a4ca721', 'Ща кину:', ''),
(5, '1', '584318bc576da', '584351a4ca721', 'Читай лучше.Читай лучше. Читай лучше.Читай лучше.Читай лучше.Читай лучше. Читай лучше.Читай лучше.Читай лучше.Читай лучше. Читай лучше.Читай лучше.', ''),
(6, '0', '584318bc576da', '584351a4ca721', 'Хорошо.... ((', ''),
(7, '0', '584318bc576da', '584351a4ca721', 'asfsdhjhkjljkhjfgfdsgsfafdsfdgfhjkjjgfd', ''),
(8, '0', '584318bc576da', '584351a4ca721', 'sadfsadf', ''),
(10, '1', '584318bc576da', '584351a4ca721', 'asdkasdl\r\n', ''),
(11, '1', '584318bc576da', '584351a4ca721', 'agdfhfghdg', ''),
(12, '1', '584318bc576da', '584351a4ca721', 'sadk', ''),
(13, '1', '584318bc576da', '584351a4ca721', 'привет,фдыов', ''),
(14, '1', '584318bc576da', '584351a4ca721', 'фыыаф', ''),
(15, '1', '584318bc576da', '584351a4ca721', 'шщз', ''),
(16, '1', '58431ca7a41f7', '584351a4ca721', 'чпарыпро', ''),
(17, '1', '584318bc576da', '58454c5c413fe', 'геаеананоа\r\n', ''),
(18, '1', '584318bc576da', '58454c5c413fe', 'нкыквннреоглнеп', '');

-- --------------------------------------------------------

--
-- Структура таблицы `mydata`
--

CREATE TABLE IF NOT EXISTS `mydata` (
  `n` int(6) NOT NULL AUTO_INCREMENT,
  `idmydata` varchar(13) NOT NULL,
  `name_mydata` text NOT NULL,
  `link` int(50) NOT NULL,
  `mydata_regtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idmydata`),
  UNIQUE KEY `№` (`n`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
  `n` int(6) NOT NULL AUTO_INCREMENT,
  `idGR` varchar(13) NOT NULL,
  `semester` varchar(6) NOT NULL,
  `mon` text NOT NULL,
  `tue` text NOT NULL,
  `wed` text NOT NULL,
  `thu` text NOT NULL,
  `fri` text NOT NULL,
  `sat` text NOT NULL,
  `descr` text NOT NULL,
  `updown_week` tinyint(1) NOT NULL,
  PRIMARY KEY (`idGR`),
  UNIQUE KEY `№` (`n`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `stats_student`
--

CREATE TABLE IF NOT EXISTS `stats_student` (
  `№` int(6) NOT NULL AUTO_INCREMENT,
  `idST` varchar(13) NOT NULL,
  `idGR` varchar(13) NOT NULL,
  `idCO` varchar(13) NOT NULL,
  `sum_points` int(3) NOT NULL,
  `modules` int(3) NOT NULL,
  `missed_occup` int(3) NOT NULL,
  PRIMARY KEY (`idST`),
  UNIQUE KEY `№` (`№`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `stats_tutor`
--

CREATE TABLE IF NOT EXISTS `stats_tutor` (
  `n` int(6) NOT NULL AUTO_INCREMENT,
  `idTU` varchar(13) NOT NULL,
  `idGR` varchar(13) NOT NULL,
  `idCO` varchar(13) NOT NULL,
  `sum_occup` int(3) NOT NULL,
  `missed_occup` int(3) NOT NULL,
  `sum_points` int(3) NOT NULL,
  PRIMARY KEY (`idTU`),
  UNIQUE KEY `№` (`n`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `n` int(6) NOT NULL AUTO_INCREMENT,
  `idST` varchar(6) NOT NULL,
  `f_name` varchar(20) NOT NULL,
  `s_name` varchar(20) NOT NULL,
  `l_name` varchar(20) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `mail` varchar(20) NOT NULL,
  `date_reg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `login` varchar(16) NOT NULL,
  `pass` varchar(16) NOT NULL,
  `id` varchar(6) NOT NULL,
  PRIMARY KEY (`idST`),
  UNIQUE KEY `№` (`n`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `tutors`
--

CREATE TABLE IF NOT EXISTS `tutors` (
  `n` int(6) NOT NULL AUTO_INCREMENT,
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
  `date_reg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idTU`),
  UNIQUE KEY `№` (`n`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `userlist`
--

CREATE TABLE IF NOT EXISTS `userlist` (
  `n` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(13) NOT NULL,
  `status` varchar(10) NOT NULL,
  `login` varchar(30) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) NOT NULL,
  `idGR` varchar(13) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `n` (`n`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Дамп данных таблицы `userlist`
--

INSERT INTO `userlist` (`n`, `id`, `status`, `login`, `pass`, `first_name`, `last_name`, `middle_name`, `idGR`) VALUES
(2, '584318bc576da', '0', 'podgornyy@sfedu.ru', 'pass', 'Никита', 'Подгорный', 'Александрович', '5843566489b19'),
(1, '58431a5a795da', '1', 'shb@sfedu.ru', 'pass', 'Ирина', 'Шабаршина', 'Сергеевна', ''),
(3, '58431ca7a41f7', '0', 'namc0@ya.ru', 'pass', 'Бронислав', 'Бильский', 'Витальевич', '5843566489b19'),
(4, '58431ef20440b', '0', '', '', 'Саша', 'Арапова', '', '5843566489b19'),
(5, '58431f031ded3', '0', '', '', 'Айрат', 'Утюшов', 'Анварович', '5843566489b19'),
(6, '58431f0d0f413', '0', '', '', 'Александра', 'Гусакова', '', '5843566489b19'),
(7, '58431f183fc35', '0', '', '', 'Артем', 'Аванесов', '', '5843566489b19'),
(8, '58431f245f546', '0', '', '', 'Вячеслав', 'Зайченко', '', '5843566489b19'),
(9, '58431f2bd7979', '0', '', '', 'Дмитрий', 'Собенин', '', '5843566489b19'),
(10, '58431f33697dc', '0', '', '', 'Марина', 'Аливердиева', '', '5843566489b19'),
(11, '58431f3ae0e80', '0', '', '', 'Мария', 'Ракович', '', '5843566489b19'),
(12, '58431f43a1632', '0', '', '', 'Олеся', 'Смирнова', '', '5843566489b19'),
(13, '58431f77eeeab', '0', '', '', 'Артем', 'Огай', '', '5843566489b19'),
(14, '58431f835ff30', '0', '', '', 'Дима', 'Никель', '', '5843566489b19'),
(15, '58431f8f5e8cc', '0', '', '', 'Станислав', 'Куренков', '', '5843566489b19'),
(16, '5843721b29aed', '1', '', '', 'Имя', 'Танышев', 'Отчество', ''),
(17, '584382edc2800', '1', 'kev@sfedu.ru', 'pass', 'Елена', 'Корохова', 'Вячеславовна', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
