<?php

define('SERVER', "localhost");
define('USER', "root");
define('PASSWORD', "root");
define('DATABASE', "php");
define('CHARSET', "utf8");

$dsn = 'mysql:host=' . SERVER . ';dbname=' . DATABASE . ';charset=' . CHARSET;
$opt = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES   => false,
];

//Подключение к БД
$db = new PDO($dsn, USER, PASSWORD, $opt);

//Список повторяющихся email в БД
$sql = ("SELECT email, COUNT(*) AS count FROM users GROUP BY email HAVING count > 1;");
$query = $db->prepare($sql);
$query->execute();
$emailsFromDB = $query->fetchAll();

//Список логинов пользователей, не сделавших ни одного заказа
$sql = ("SELECT * FROM users LEFT JOIN orders ON users.id = orders.user_id WHERE orders.user_id IS NULL");
$query = $db->prepare($sql);
$query->execute();
$usersFromDB = $query->fetchAll();

//Список логинов пользователей которые сделали более двух заказов
$sql = ("SELECT login, COUNT(*) AS count FROM users INNER JOIN orders ON users.id = orders.user_id GROUP BY login HAVING count > 2");
$query = $db->prepare($sql);
$query->execute();
$usersMoreTwoOrders = $query->fetchAll();