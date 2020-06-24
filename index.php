<?php require_once "config.php";?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

<div class="container">
    
    <div>
        <h3>Список повторяющихся email в БД:</h3>
        <?php
            foreach ($emailsFromDB as $item) :
        ?>
        <ul>
            <li><?= $item['email'] ?> - <?= $item['count'] ?> раза</li>
        </ul>
        <?php
            endforeach;
        ?>
    </div>

    <div>
        <h3>Список логинов пользователей, не сделавших ни одного заказа:</h3>
        <?php
            foreach ($usersFromDB as $item) :
        ?>
            <ul>
                <li><?= $item['login'] ?></li>
            </ul>
        <?php
            endforeach;
        ?>
    </div>

    <div>
        <h3>Список логинов пользователей которые сделали более двух заказов:</h3>
        <?php
            foreach ($usersMoreTwoOrders as $item) :
        ?>
            <ul>
                <li><?= $item['login'] ?> - <?= $item['count'] ?> заказа</li>
            </ul>
        <?php
            endforeach;
        ?>
    </div>

</div>

</body>
</html>
