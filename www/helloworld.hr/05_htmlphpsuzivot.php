<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        p{
            color: <?php echo 'red'; //BP OK ?>;
        }
    </style>
</head>
<body <?php echo 'style="background-color: gray;"'; //BP OK ?>> 
    <?php 
    echo 'unutar body elementa'; //BP OK
    ?>
    <div>
        <p<?php echo '>'; // NIJE dobra praksa ?>
            Tekst paragrafa
            <?php 
            echo '</p>'; // nije dobra praksa
            ?>
        /
     </div>
</body>
</html>