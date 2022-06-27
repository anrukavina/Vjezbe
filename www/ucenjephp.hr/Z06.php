<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
        <?php

        // Stranica prima cijeli broj.
        // ako je broj paran boja stranice treba biti zelena
        // inače treba biti crvena

            $a = isset($_GET['a']) ? $_GET['a'] : 0;

            if (($a % 2) === 0) {
                echo '<body style="background-color: green">';
            } else{
                echo '<body style="background-color: red">';
            }

        
        // TEST: http://ucenjephp.hr/Z06.php?a=22

        ?>
</body>
</html>