<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    Subota
    <ul>
        <li>
            <a href="zadatak01.php">Zadatak 1</a>
        </li>
        <li>
            <a href="zadatak02.php">Zadatak 2</a>
        </li>
        <li>
            <a href="zadatak03.php">Zadatak 3</a>
        </li>
        <li>
            <a href="zadatak04.php">Zadatak 4</a>
        </li>
        <li>
            <a href="zadatak05.php">Zadatak 5</a>
        </li>
    </ul>

    <!-- POST forma koja šalje select listu sa 3 stavke -->

    <form action="" method="post">
        <select name="stavka" id="stavka">
            <option value="1">Stavka 1</option>
            <option value="2">Stavka 2</option>
            <option value="3">Stavka 3</option>
        </select>

        <select name="stavka2" id="stavka2">
            <?php  
                for($i=1;$i<=333;$i++):
            ?>
            <option value="<?=$i?>">Stavka<?=$i?></option>
            <?php endfor; ?>
        </select>
    </form>


</body>

</html>