-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Дек 01 2016 г., 18:53
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
-- Структура таблицы `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
  `n` int(6) NOT NULL AUTO_INCREMENT,
  `id_group` int(6) NOT NULL,
  `year` int(4) NOT NULL,
  `semester` int(1) NOT NULL,
  `updown` int(1) NOT NULL,
  `mon` text NOT NULL,
  `tue` text NOT NULL,
  `wed` text NOT NULL,
  `thu` text NOT NULL,
  `fri` text NOT NULL,
  `sat` text NOT NULL,
  PRIMARY KEY (`n`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `schedule`
--

INSERT INTO `schedule` (`n`, `id_group`, `year`, `semester`, `updown`, `mon`, `tue`, `wed`, `thu`, `fri`, `sat`) VALUES
(1, 112782, 2016, 5, 0, '2?Экономика(семинар) Таумян Ю.Р 502;3?Экономика (лекция) Таумян Ю.Р 514;4?ТАУ(лекция) А.В 507;5?ТАУ(практика) А.В 503;6?ТАУ(лаб) А.В 507;', '1?ФВО;', '3?Методы оптимизации(лекция) Граецкая О.В 514;4?Управление в организационных системах(лекция) Граецкая О.В 507;5?Управление в организационных системах(практика) Граецкая О.В 507;', '1?Английский язык Резникова 506;2?СУД(лаб)Корохова Е.В Чусова Ю.С 609а;3?СУД(лекция)Корохова Е.В 508;4?Методы оптимизации(лаб) Чусова Ю.С 606;', '2?Психология деловых и межличностных коммуникаций(лекция) Крутилева Л.Юм 514;3?Психология деловых и межличностных коммуникаций(практика) Крутилева Л.Юм 511;', '3?Технико-экономическое проектирование(практика) Корохов В.В 609;4?Технико-экономическое проектирование(практика) Корохов В.В 503;5?Технико-экономическое проектирование(лекция) Корохов В.В 510;'),
(2, 112782, 2016, 5, 1, '2?Экономика(семинар) Таумян Ю.Р 502;4?ТАУ(лекция) А.В 507;5?ТАУ(практика) А.В 503;', '1?ФВО;', '3?Методы оптимизации(лекция) Граецкая О.В 514;4?Управление в организационных системах(лекция) Граецкая О.В 507;5?Управление в организационных системах(практика) Граецкая О.В 507;', '1?Английский язык Резникова 506;2?Методы оптимизации(практика) Чусова Ю.С 609а;3?СУД(практика)Корохова Е.В 508;4?Методы оптимизации(лаб) Чусова Ю.С 606;', '', '4?Технико-экономическое проектирование(практика) Корохов В.В 503;');

-- --------------------------------------------------------

--
-- Структура таблицы `userlist`
--

CREATE TABLE IF NOT EXISTS `userlist` (
  `№` int(6) NOT NULL AUTO_INCREMENT,
  `status` varchar(10) NOT NULL,
  `login` varchar(30) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) NOT NULL,
  PRIMARY KEY (`№`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `userlist`
--

INSERT INTO `userlist` (`№`, `status`, `login`, `pass`, `first_name`, `last_name`, `middle_name`) VALUES
(1, 'teacher', 'loginteacher@sfedu.ru', 'testpass', 'Имя', 'Фамилия', 'Отчество'),
(2, 'student', 'podgornyy@sfedu.ru', 'pass', 'Подгорный', 'Никита', 'Александрович');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;