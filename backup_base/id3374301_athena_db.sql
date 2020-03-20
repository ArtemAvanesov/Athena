-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 24 2019 г., 21:22
-- Версия сервера: 5.5.50
-- Версия PHP: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `id3374301_athena_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
  `n` int(6) NOT NULL,
  `date` date NOT NULL,
  `idCO` varchar(13) CHARACTER SET utf8 NOT NULL,
  `idGR` varchar(13) CHARACTER SET utf8 NOT NULL,
  `list` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `attendance`
--

INSERT INTO `attendance` (`n`, `date`, `idCO`, `idGR`, `list`) VALUES
(0, '2017-11-15', '58436e1ba5007', '5843566489b19', '584318bc576da, 58431f245f546');

-- --------------------------------------------------------

--
-- Структура таблицы `chats`
--

CREATE TABLE IF NOT EXISTS `chats` (
  `n` int(6) NOT NULL,
  `idCH` varchar(6) NOT NULL,
  `chat_name` varchar(20) NOT NULL,
  `id` varchar(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `n` int(6) NOT NULL,
  `idCO` varchar(13) NOT NULL,
  `name_course` text NOT NULL,
  `idTU` varchar(13) NOT NULL,
  `idGR` varchar(13) NOT NULL,
  `date_exist_course` date NOT NULL,
  `sum_occup` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `courses`
--

INSERT INTO `courses` (`n`, `idCO`, `name_course`, `idTU`, `idGR`, `date_exist_course`, `sum_occup`) VALUES
(1, '58436e1ba5007', 'ТФКП (практика)', '5843721b29aed', '5843566489b19', '2018-06-10', 0),
(2, '5843807c9cc12', 'ТФКП (лекция)', '5843721b29aed', '5843566489b19', '2018-06-10', 0),
(37, '58438105f0674', 'Программирование', '58438154b471a', '5843566489b19', '2018-06-10', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `data`
--

CREATE TABLE IF NOT EXISTS `data` (
  `n` int(6) NOT NULL,
  `idDATA` varchar(6) NOT NULL,
  `nameDATA` varchar(30) NOT NULL,
  `url` text NOT NULL,
  `item_reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `n` int(11) NOT NULL,
  `id` varchar(100) NOT NULL,
  `nameDep` varchar(100) NOT NULL,
  `idInts` varchar(13) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `departments`
--

INSERT INTO `departments` (`n`, `id`, `nameDep`, `idInts`) VALUES
(1, '34234', 'Системный анализ и управление', '');

-- --------------------------------------------------------

--
-- Структура таблицы `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `n` int(6) NOT NULL,
  `idEV` varchar(6) NOT NULL,
  `nameEVENT` varchar(20) NOT NULL,
  `text` text NOT NULL,
  `event_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `groupe`
--

CREATE TABLE IF NOT EXISTS `groupe` (
  `n` int(3) NOT NULL,
  `idGR` varchar(13) NOT NULL,
  `nameGR` varchar(20) NOT NULL,
  `orientation` varchar(100) NOT NULL,
  `time_ex` date NOT NULL,
  `idTU` varchar(13) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `groupe`
--

INSERT INTO `groupe` (`n`, `idGR`, `nameGR`, `orientation`, `time_ex`, `idTU`) VALUES
(1, '5843566489b19', '4.1', 'Системный анализ и управление', '2018-09-01', '584382edc2800');

-- --------------------------------------------------------

--
-- Структура таблицы `homework`
--

CREATE TABLE IF NOT EXISTS `homework` (
  `n` int(10) NOT NULL,
  `idHW` varchar(13) NOT NULL,
  `download_time` date NOT NULL,
  `publ_time` date NOT NULL,
  `deadline` datetime NOT NULL,
  `idTU` varchar(13) NOT NULL,
  `idCO` varchar(13) NOT NULL,
  `idGR` varchar(13) NOT NULL,
  `theme` varchar(50) NOT NULL,
  `descr` text NOT NULL,
  `link` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `homework`
--

INSERT INTO `homework` (`n`, `idHW`, `download_time`, `publ_time`, `deadline`, `idTU`, `idCO`, `idGR`, `theme`, `descr`, `link`) VALUES
(1, '584351a4ca721', '2016-09-07', '2016-11-10', '2017-11-27 23:30:00', '5843721b29aed', '58436e1ba5007', '5843566489b19', 'Физические основы механики. Кинематика.', 'Катер, двигаясь вниз по реке, обогнал плот в пункте А. Через τ = 60 мин после этого он повернул обратно и затем встретил плот на расстоянии l = 6,0 км ниже пункта А. Найти скорость течения, если при движении в обоих направлениях мотор катера работал одинаково.', ''),
(2, '58454c5c413fe', '2016-03-08', '2016-06-10', '2016-12-25 11:00:00', '584382edc2800', '584382f41f414', '5843566489b19', 'Что-то по СУД', 'Описание задачи СУД', '../homework/58454c5c413fe/'),
(3, '58454c5c413fr', '2017-11-25', '2017-11-25', '2017-12-04 12:00:01', '5843721b29aed', '58436e1ba5007', '5843566489b19', 'Физические основы механики. Динамика.', 'Что-нибудь о задаче', ''),
(4, '584351a4ca723', '2017-12-02', '2017-12-02', '2018-12-04 12:00:00', '5843721b29aed', '584382d75aaf3', '5843566489b19', 'Времена', 'Выучить времена в английском языке', '');

-- --------------------------------------------------------

--
-- Структура таблицы `institutes`
--

CREATE TABLE IF NOT EXISTS `institutes` (
  `n` int(11) NOT NULL,
  `idInst` varchar(13) NOT NULL,
  `nameInst` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `institutes`
--

INSERT INTO `institutes` (`n`, `idInst`, `nameInst`, `city`) VALUES
(1, '2346536', 'Институт высоких технологий и пьезотехники', 'Ростов-на-Дону');

-- --------------------------------------------------------

--
-- Структура таблицы `journal`
--

CREATE TABLE IF NOT EXISTS `journal` (
  `n` int(6) DEFAULT NULL,
  `idST` varchar(13) NOT NULL,
  `idCO` varchar(13) NOT NULL,
  `date` date NOT NULL,
  `descr` text NOT NULL,
  `value` int(3) DEFAULT NULL COMMENT 'Количество баллов, которые студент получил в этот день, по этому предмету'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `journal`
--

INSERT INTO `journal` (`n`, `idST`, `idCO`, `date`, `descr`, `value`) VALUES
(0, '58431f183fc35', '58436e1ba5007', '2017-11-15', 'За красивые глазки', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `messagehw`
--

CREATE TABLE IF NOT EXISTS `messagehw` (
  `n` int(100) NOT NULL,
  `sender` varchar(1) NOT NULL,
  `time_mes` datetime NOT NULL,
  `idST` varchar(13) NOT NULL,
  `idHW` varchar(13) NOT NULL,
  `message` text NOT NULL,
  `link` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `messagehw`
--

INSERT INTO `messagehw` (`n`, `sender`, `time_mes`, `idST`, `idHW`, `message`, `link`) VALUES
(1, '0', '2017-11-24 16:35:12', '58431f0d0f413', '584351a4ca721', 'Ответ - 5 км/ч', ''),
(15, '1', '2017-11-24 17:08:31', '58431f0d0f413', '584351a4ca721', 'Ответ неправильный! Попробуйте найти ошибку!', '');

-- --------------------------------------------------------

--
-- Структура таблицы `mydata`
--

CREATE TABLE IF NOT EXISTS `mydata` (
  `n` int(6) NOT NULL,
  `idmydata` varchar(13) NOT NULL,
  `name_mydata` text NOT NULL,
  `link` int(50) NOT NULL,
  `mydata_regtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `rating`
--

CREATE TABLE IF NOT EXISTS `rating` (
  `n` int(4) NOT NULL,
  `idRating` varchar(13) NOT NULL,
  `idCO` varchar(13) NOT NULL,
  `idMOD` varchar(13) NOT NULL,
  `idEVE` varchar(13) NOT NULL,
  `idST` varchar(13) NOT NULL,
  `value` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `rating`
--

INSERT INTO `rating` (`n`, `idRating`, `idCO`, `idMOD`, `idEVE`, `idST`, `value`) VALUES
(1, '5aa7de4f616eb', '5a957f2ca1c62', '5a957dd734c5e', '5a95810c3afdf', '584318bc576da', 8),
(2, '5aa7de76a54f8', '5a957f2ca1c62', '5a957dd734c5e', '5a95811af2f36', '584318bc576da', 5),
(68, '5ab14ffb7b114', '5a957f2ca1c62', '5a957dd734c5e', '5a95810c3afdf', '58431f183fc35', 0),
(69, '5ab14ffb7bdee', '5a957f2ca1c62', '5a957dd734c5e', '5a95810c3afdf', '58431f33697dc', 22),
(70, '5ab14ffb7c92f', '5a957f2ca1c62', '5a957dd734c5e', '5a95810c3afdf', '58431ef20440b', 3),
(71, '5ab14ffb7d321', '5a957f2ca1c62', '5a957dd734c5e', '5a95810c3afdf', '58431ca7a41f7', 6),
(72, '5ab14ffb7df47', '5a957f2ca1c62', '5a957dd734c5e', '5a95810c3afdf', '58431f0d0f413', 5),
(73, '5ab14ffb7ec33', '5a957f2ca1c62', '5a957dd734c5e', '5a95810c3afdf', '58431f245f546', 1),
(74, '5ab14ffb7b1f8', '5a957f2ca1c62', '5a957dd734c5e', '5a95811af2f36', '58431f183fc35', 9),
(75, '5ab14ffb7beb9', '5a957f2ca1c62', '5a957dd734c5e', '5a95811af2f36', '58431f33697dc', 10),
(76, '5ab14ffb7c9dd', '5a957f2ca1c62', '5a957dd734c5e', '5a95811af2f36', '58431ef20440b', 6),
(77, '5ab14ffb7d3c1', '5a957f2ca1c62', '5a957dd734c5e', '5a95811af2f36', '58431ca7a41f7', 12),
(78, '5ab14ffb7e01b', '5a957f2ca1c62', '5a957dd734c5e', '5a95811af2f36', '58431f0d0f413', 16),
(79, '5ab153d07a664', '5a957f2ca1c62', '5a957dd734c5e', '5a95810c3afdf', '58431f8f5e8cc', 8),
(80, '5ab153dcbe445', '5a957f2ca1c62', '5a957dd734c5e', '5a95817b88842', '58431f33697dc', 17),
(81, '5ab157f31635e', '5a957f2ca1c62', '5a957deeecb9b', '5a95823b5dfa7', '58431f33697dc', 6),
(82, '5ab15a00ef062', '5a957f2ca1c62', '5a957dd734c5e', '5a95817b88842', '58431ef20440b', 2),
(83, '5ab15a04e46ba', '5a957f2ca1c62', '5a957dd734c5e', '5a95817b88842', '58431f0d0f413', 6),
(84, '5ab15a0c58f13', '5a957f2ca1c62', '5a957dd734c5e', '5a95817b88842', '58431ca7a41f7', 5),
(85, '5ab15aa76d94b', '5a957f2ca1c62', '5a957dd734c5e', '5a95810c3afdf', '58431f835ff30', 2),
(86, '5ab26f39cccda', '5a957f2ca1c62', '5a957deeecb9b', '5a95823b5dfa7', '58431ef20440b', 2),
(87, '5ab66897300bb', '5a957f2ca1c62', '5a957dd734c5e', '5a95811af2f36', '58431f245f546', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `rating_events`
--

CREATE TABLE IF NOT EXISTS `rating_events` (
  `n` int(4) NOT NULL,
  `id` varchar(13) NOT NULL,
  `name` varchar(40) NOT NULL,
  `description` text NOT NULL,
  `maxpoint` int(2) NOT NULL,
  `idMOD` varchar(13) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `rating_events`
--

INSERT INTO `rating_events` (`n`, `id`, `name`, `description`, `maxpoint`, `idMOD`) VALUES
(1, '5a95810c3afdf', 'Выполнение и защита лабораторных работ', '', 12, '5a957dd734c5e'),
(2, '5a95811af2f36', 'Индивидуальное задание', '', 2, '5a957dd734c5e'),
(3, '5a95817b88842', 'Опрос', '', 3, '5a957dd734c5e'),
(4, '5a95823b5dfa7', 'Выполнение и защита лабораторных работ', '', 3, '5a957deeecb9b'),
(5, '5a95824480c51', 'Индивидуальное задание', '', 6, '5a957deeecb9b'),
(6, '5a95824d546d1', 'Опрос', '', 2, '5a957deeecb9b'),
(7, '5a9582586ac3b', 'Тестирование', '', 8, '5a957deeecb9b'),
(8, '5a9582e6e340c', 'Выполнение и защита лабораторных работ', '', 28, '5a957e0574fb2'),
(9, '5a9582f367eac', 'Индивидуальное задание', '', 24, '5a957e0574fb2'),
(10, '5a9582fae6c26', 'Опрос', '', 2, '5a957e0574fb2'),
(11, '5a958303164b9', 'Тестирование', '', 10, '5a957e0574fb2');

-- --------------------------------------------------------

--
-- Структура таблицы `rating_modules`
--

CREATE TABLE IF NOT EXISTS `rating_modules` (
  `n` int(4) NOT NULL,
  `id` varchar(13) NOT NULL,
  `name` varchar(40) NOT NULL,
  `description` text NOT NULL,
  `maxpoint` int(2) NOT NULL,
  `idCO` varchar(13) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `rating_modules`
--

INSERT INTO `rating_modules` (`n`, `id`, `name`, `description`, `maxpoint`, `idCO`) VALUES
(4, '5a957dd734c5e', 'Основы работы с системой Mathcad', '', 17, '5a957f2ca1c62'),
(5, '5a957deeecb9b', 'Основы графической визуализации данных', '', 19, '5a957f2ca1c62');

-- --------------------------------------------------------

--
-- Структура таблицы `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `schedule`
--

INSERT INTO `schedule` (`n`, `id_group`, `year`, `semester`, `updown`, `mon`, `tue`, `Wed`, `thu`, `fri`, `sat`) VALUES
(1, 112782, 2018, 5, 0, '2?Экономика(семинар) Таумян Ю.Р 502;3?Экономика (лекция) Таумян Ю.Р 514;4?ТАУ(лекция) А.В 507;5?ТАУ(практика) А.В 503;6?ТАУ(лаб) А.В 507;', '1?ФВО;', '3?Методы оптимизации(лекция) Граецкая О.В 514;4?Управление в организационных системах(лекция) Граецкая О.В 507;5?Управление в организационных системах(практика) Граецкая О.В 507;', '1?Английский язык Резникова 506;2?СУД(лаб)Корохова Е.В Чусова Ю.С 609а;3?СУД(лекция)Корохова Е.В 508;4?Методы оптимизации(лаб) Чусова Ю.С 606;', '2?Психология деловых и межличностных коммуникаций(лекция) Крутилева Л.Юм 514;3?Психология деловых и межличностных коммуникаций(практика) Крутилева Л.Юм 511;', '3?Технико-экономическое проектирование(практика) Корохов В.В 609;4?Технико-экономическое проектирование(практика) Корохов В.В 503;5?Технико-экономическое проектирование(лекция) Корохов В.В 510;'),
(2, 112782, 2018, 5, 1, '2?Экономика(семинар) Таумян Ю.Р 502;4?ТАУ(лекция) А.В 507;5?ТАУ(практика) А.В 503;', '1?ФВО;', '3?Методы оптимизации(лекция) Граецкая О.В 514;4?Управление в организационных системах(лекция) Граецкая О.В 507;5?Управление в организационных системах(практика) Граецкая О.В 507;', '1?Английский язык Резникова 506;2?Методы оптимизации(практика) Чусова Ю.С 609а;3?СУД(практика)Корохова Е.В 508;4?Методы оптимизации(лаб) Чусова Ю.С 606;', '', '4?Технико-экономическое проектирование(практика) Корохов В.В 503;');

-- --------------------------------------------------------

--
-- Структура таблицы `status_hw`
--

CREATE TABLE IF NOT EXISTS `status_hw` (
  `n` int(20) NOT NULL,
  `idHW` varchar(13) NOT NULL,
  `id` varchar(13) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `status_hw`
--

INSERT INTO `status_hw` (`n`, `idHW`, `id`, `status`) VALUES
(1, '584351a4ca721', '58431f183fc35', 0),
(2, '58454c5c413fe', '58431f183fc35', 0),
(3, '58454c5c413fr', '58431f183fc35', 0),
(4, '584351a4ca723', '58431f183fc35', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE IF NOT EXISTS `students` (
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
-- Структура таблицы `tutors`
--

CREATE TABLE IF NOT EXISTS `tutors` (
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
-- Структура таблицы `userlist`
--

CREATE TABLE IF NOT EXISTS `userlist` (
  `n` int(11) NOT NULL,
  `id` varchar(13) NOT NULL,
  `status` varchar(10) NOT NULL,
  `login` varchar(30) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) NOT NULL,
  `idGR` varchar(13) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `userlist`
--

INSERT INTO `userlist` (`n`, `id`, `status`, `login`, `pass`, `first_name`, `last_name`, `middle_name`, `idGR`) VALUES
(2, '584318bc576da', '0', 'podgornyy@sfedu.ru', 'pass', 'Никита', 'Подгорный', 'Александрович', '5843566489b19'),
(1, '58431a5a795da', '1', 'teacher@sfedu.ru', 'pass', 'Ирина', 'Шабаршина', 'Сергеевна', ''),
(3, '58431ca7a41f7', '0', 'namc0@ya.ru', 'pass', 'Бронислав', 'Бильский', 'Витальевич', '5843566489b19'),
(4, '58431ef20440b', '0', 'arapova@ya.ru', 'pass', 'Александра', 'Арапова', '', '5843566489b19'),
(5, '58431f031ded3', '1', 'utushov@ya.ru', 'pass', 'Айрат', 'Утюшов', 'Анварович', '5843566489b19'),
(6, '58431f0d0f413', '0', '', 'pass', 'Александра', 'Гусакова', '', '5843566489b19'),
(7, '58431f183fc35', '0', 'student@sfedu.ru', 'pass', 'Артем', 'Аванесов', 'Аркадиевич', '5843566489b19'),
(8, '58431f245f546', '0', '', 'pass', 'Вячеслав', 'Зайченко', '', '5843566489b19'),
(9, '58431f2bd7979', '0', '', 'pass', 'Дмитрий', 'Собенин', '', '5843566489b19'),
(10, '58431f33697dc', '0', '', 'pass', 'Марина', 'Аливердиева', '', '5843566489b19'),
(11, '58431f3ae0e80', '3', 'monitor@sfedu.ru', 'pass', 'Мария', 'Ракович', '', '5843566489b19'),
(12, '58431f43a1632', '0', '', 'pass', 'Олеся', 'Смирнова', '', '5843566489b19'),
(13, '58431f77eeeab', '0', '', 'pass', 'Артем', 'Огай', '', '5843566489b19'),
(14, '58431f835ff30', '4', 'administrator@sfedu.ru', 'pass', 'Иван', 'Иванов', '', '5843566489b19'),
(15, '58431f8f5e8cc', '2', 'curator@sfedu.ru', 'pass', 'Елена', 'Корохова', 'Вячеславна', '5843566489b19'),
(16, '5843721b29aed', '1', '', 'pass', 'Сергей', 'Герасимов', 'Анатольевич', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`idCH`),
  ADD UNIQUE KEY `№` (`n`);

--
-- Индексы таблицы `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`idCO`),
  ADD UNIQUE KEY `№` (`n`);

--
-- Индексы таблицы `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`idDATA`),
  ADD UNIQUE KEY `№` (`n`);

--
-- Индексы таблицы `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`n`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`idEV`),
  ADD UNIQUE KEY `№` (`n`);

--
-- Индексы таблицы `groupe`
--
ALTER TABLE `groupe`
  ADD PRIMARY KEY (`idGR`),
  ADD UNIQUE KEY `№` (`n`);

--
-- Индексы таблицы `homework`
--
ALTER TABLE `homework`
  ADD PRIMARY KEY (`idHW`),
  ADD UNIQUE KEY `n` (`n`);

--
-- Индексы таблицы `institutes`
--
ALTER TABLE `institutes`
  ADD PRIMARY KEY (`n`,`idInst`);

--
-- Индексы таблицы `journal`
--
ALTER TABLE `journal`
  ADD PRIMARY KEY (`idST`),
  ADD UNIQUE KEY `№` (`n`);

--
-- Индексы таблицы `messagehw`
--
ALTER TABLE `messagehw`
  ADD PRIMARY KEY (`n`);

--
-- Индексы таблицы `mydata`
--
ALTER TABLE `mydata`
  ADD PRIMARY KEY (`idmydata`),
  ADD UNIQUE KEY `№` (`n`);

--
-- Индексы таблицы `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`n`);

--
-- Индексы таблицы `rating_events`
--
ALTER TABLE `rating_events`
  ADD PRIMARY KEY (`n`);

--
-- Индексы таблицы `rating_modules`
--
ALTER TABLE `rating_modules`
  ADD PRIMARY KEY (`n`);

--
-- Индексы таблицы `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`n`);

--
-- Индексы таблицы `status_hw`
--
ALTER TABLE `status_hw`
  ADD PRIMARY KEY (`n`);

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`idST`),
  ADD UNIQUE KEY `№` (`n`);

--
-- Индексы таблицы `tutors`
--
ALTER TABLE `tutors`
  ADD PRIMARY KEY (`idTU`),
  ADD UNIQUE KEY `№` (`n`);

--
-- Индексы таблицы `userlist`
--
ALTER TABLE `userlist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `n` (`n`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `chats`
--
ALTER TABLE `chats`
  MODIFY `n` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `courses`
--
ALTER TABLE `courses`
  MODIFY `n` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT для таблицы `data`
--
ALTER TABLE `data`
  MODIFY `n` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `departments`
--
ALTER TABLE `departments`
  MODIFY `n` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `events`
--
ALTER TABLE `events`
  MODIFY `n` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `groupe`
--
ALTER TABLE `groupe`
  MODIFY `n` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `homework`
--
ALTER TABLE `homework`
  MODIFY `n` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `institutes`
--
ALTER TABLE `institutes`
  MODIFY `n` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `messagehw`
--
ALTER TABLE `messagehw`
  MODIFY `n` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT для таблицы `mydata`
--
ALTER TABLE `mydata`
  MODIFY `n` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `rating`
--
ALTER TABLE `rating`
  MODIFY `n` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT для таблицы `rating_events`
--
ALTER TABLE `rating_events`
  MODIFY `n` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `rating_modules`
--
ALTER TABLE `rating_modules`
  MODIFY `n` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `schedule`
--
ALTER TABLE `schedule`
  MODIFY `n` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `status_hw`
--
ALTER TABLE `status_hw`
  MODIFY `n` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `students`
--
ALTER TABLE `students`
  MODIFY `n` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `tutors`
--
ALTER TABLE `tutors`
  MODIFY `n` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `userlist`
--
ALTER TABLE `userlist`
  MODIFY `n` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
