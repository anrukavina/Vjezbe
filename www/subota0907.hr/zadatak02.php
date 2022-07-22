<?php

$x = isset($_GET['x']) ? $_GET['x'] : 0;
$y= isset($_GET['y']) ? $_GET['y'] : 0;

echo $x, ' , ' ,$y, '<hr />';

// Primljeni parametar GET metode naziv, ispisati crvenom bojom

$naziv = isset($_GET['naziv']) ? $_GET['naziv'] : '';
echo '<span style="color:red">', $naziv, '</span>', '<hr />';

$broj1 = isset($_GET['broj1']) ? (int) $_GET['broj1']: 2;
$broj2 = isset($_GET['broj2']) ? (int) $_GET['broj2'] : 4;

echo gettype($broj2), '<hr />';
$rezultat = $broj1 + $broj2;
echo $rezultat, '<hr />';

echo $rezultat * 2, '<hr />';

// Program bira parametar x ako je vrijednost cijeli broj ispisuje ga, inače ispisuje poruku da mora biti cijeli broj

$stringX = isset($_GET['x']) ? $_GET['x'] : 0;
$intX = (int)$stringX;

if($intX !== 0){
    echo $intX;
} else {
    echo 'Uneseni parametar mora biti cijeli broj!';
}