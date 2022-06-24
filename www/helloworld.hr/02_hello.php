<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

    <?php echo "Hello" ?>

    <?= "Hello" ?>

    <?php 

    // Znak za jednu liniju komentara

    /* 
    Znak za više linija
    komentara
    */

    echo 'Hello\nWorld'; // ovo se ne prevodi u novi red !!!!
    echo 'Hello' . PHP_EOL . 'world';
    echo "Hello\nWorld"; // ovo radi jer su u pitanju dvostruki navodnici

    ?>

    <pre>
        Ovo 
        je tekst u HTML
    </pre>

</body>
</html>