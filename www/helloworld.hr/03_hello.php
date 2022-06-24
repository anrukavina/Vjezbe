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
    
    // Mi ipak koristimo ECHO
    print "Hello World";
    
    ?>
    <hr />

    <?php
    echo "Hello'World";
    echo 'Hello"World';

    echo 'Hello\'World';

    // Best practice:

    echo 'Tekst<br />Novi red';
    echo 'prvi',PHP_EOL,'treći'; // definira parametre funkcije
    echo 'prvi'.'drugi'.'treći'; // . je nadoljepljivanje

    ?>
</body>
</html>