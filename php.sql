-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 24 2020 г., 10:36
-- Версия сервера: 5.7.29
-- Версия PHP: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `php`
--

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `price`) VALUES
(1, 7, 500),
(2, 8, 900),
(3, 10, 700),
(4, 12, 800),
(5, 10, 1200),
(6, 10, 300);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(55) NOT NULL,
  `login` varchar(55) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(55) NOT NULL,
  `surname` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `login`, `password`, `name`, `surname`) VALUES
(6, 'email1@mail.ru', 'login', '$2y$10$L6JUhl1ZtHomeHx8PJd8ruNDWIxIGQEFmr8HQj7QOEEIA1yw/FYwK', 'Sergey', 'Ivanov'),
(7, 'email2@mail.ru', 'login2', '$2y$10$nS0pMwKXLiDztvQs3Ax5vuUnARQEY3fA7ahUPOH1KbZaFl7RIOtDO', 'Sasha', 'Ivanov'),
(8, 'email1@mail.ru', 'login1', '$2y$10$o4QwfbMNzH17bRK0jQmdwe5tfFDlGuS2gXb9tup5USSny7a0NDjdS', 'Igor', 'Petrov'),
(9, 'email2@mail.ru', 'login3', '$2y$10$vYM8GslmJhu3On0ycVXAUeZYj8qG46x0CNckTwZZ7J8KPYBMTPEP2', 'Viktor', 'Petrov'),
(10, 'email1@mail.ru', 'login4', '$2y$10$GytXZA.V5XxWzAqQZKyRru/h3hdVH/A8VtqmdjEjXOzihWg4i8YhC', 'Misha', 'Fedorov');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
