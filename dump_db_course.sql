-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 22 2017 г., 18:00
-- Версия сервера: 5.7.16-log
-- Версия PHP: 7.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `course`
--

-- --------------------------------------------------------

--
-- Структура таблицы `direction`
--

CREATE TABLE `direction` (
  `id_direction` int(11) NOT NULL,
  `name_direction` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `direction`
--

INSERT INTO `direction` (`id_direction`, `name_direction`) VALUES
(1, 'back_end'),
(2, 'front_end'),
(3, 'sale'),
(4, 'english');

-- --------------------------------------------------------

--
-- Структура таблицы `direction_to_group`
--

CREATE TABLE `direction_to_group` (
  `id_direction` int(11) NOT NULL,
  `id_group` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `direction_to_group`
--

INSERT INTO `direction_to_group` (`id_direction`, `id_group`) VALUES
(1, 1),
(1, 2),
(1, 7),
(1, 8),
(1, 9),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `direction_to_teacher`
--

CREATE TABLE `direction_to_teacher` (
  `id_direction` int(11) NOT NULL,
  `id_teacher` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `direction_to_teacher`
--

INSERT INTO `direction_to_teacher` (`id_direction`, `id_teacher`) VALUES
(1, 1),
(1, 2),
(1, 5),
(2, 2),
(2, 6),
(3, 3),
(3, 7),
(4, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `group_alevel`
--

CREATE TABLE `group_alevel` (
  `id_group` int(11) NOT NULL,
  `name_group` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `group_alevel`
--

INSERT INTO `group_alevel` (`id_group`, `name_group`) VALUES
(1, 'php_basic_1'),
(2, 'php_basic_2'),
(3, 'front_end_1'),
(4, 'front_end_2'),
(5, 'sale_1'),
(6, 'sale_2'),
(7, 'php_adv_1'),
(8, 'php_avd_2'),
(9, 'php_adv_3'),
(10, 'it_english');

-- --------------------------------------------------------

--
-- Структура таблицы `group_to_student`
--

CREATE TABLE `group_to_student` (
  `id_group` int(11) NOT NULL,
  `id_student` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `group_to_student`
--

INSERT INTO `group_to_student` (`id_group`, `id_student`) VALUES
(1, 1),
(1, 3),
(1, 5),
(2, 2),
(2, 4),
(2, 6),
(3, 7),
(3, 9),
(3, 11),
(4, 8),
(4, 10),
(4, 12),
(5, 1),
(5, 4),
(5, 8),
(6, 2),
(6, 3),
(6, 9),
(6, 11),
(7, 12),
(7, 13),
(7, 2),
(7, 3),
(7, 5),
(8, 14),
(8, 11),
(9, 4),
(9, 9),
(9, 15),
(10, 2),
(10, 3),
(10, 5),
(10, 7),
(10, 8),
(10, 12),
(10, 14);

-- --------------------------------------------------------

--
-- Структура таблицы `student`
--

CREATE TABLE `student` (
  `id_student` int(11) NOT NULL,
  `name_student` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `student`
--

INSERT INTO `student` (`id_student`, `name_student`) VALUES
(1, 'Sergey'),
(2, 'Vasiya'),
(3, 'Ivan'),
(4, 'Gleb'),
(5, 'Taniya'),
(6, 'Nina'),
(7, 'Vova'),
(8, 'Petr'),
(9, 'Andrey'),
(10, 'Oleg'),
(11, 'Natasha'),
(12, 'Dima'),
(13, 'Taras'),
(14, 'Artur'),
(15, 'Stas');

-- --------------------------------------------------------

--
-- Структура таблицы `teacher`
--

CREATE TABLE `teacher` (
  `id_teacher` int(11) NOT NULL,
  `name_teacher` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `teacher`
--

INSERT INTO `teacher` (`id_teacher`, `name_teacher`) VALUES
(1, 'Daniil'),
(2, 'Ivan'),
(3, 'Alex'),
(4, 'Olga'),
(5, 'Artem'),
(6, 'Nataliya'),
(7, 'Taras');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `direction`
--
ALTER TABLE `direction`
  ADD PRIMARY KEY (`id_direction`);

--
-- Индексы таблицы `group_alevel`
--
ALTER TABLE `group_alevel`
  ADD PRIMARY KEY (`id_group`);

--
-- Индексы таблицы `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id_student`);

--
-- Индексы таблицы `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id_teacher`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `direction`
--
ALTER TABLE `direction`
  MODIFY `id_direction` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `group_alevel`
--
ALTER TABLE `group_alevel`
  MODIFY `id_group` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `student`
--
ALTER TABLE `student`
  MODIFY `id_student` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id_teacher` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
