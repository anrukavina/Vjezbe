<?php

// Ulaz

$x = isset($_GET['x']) ? $_GET['x'] : 0;
$y = isset($_GET['y']) ? $_GET['y'] : 0;
$rez = isset($_GET['rez']) ? $_GET['rez'] : '';

// Obrada

if(isset($_GET['x']) & isset($_GET['y'])) {
    $rez = $x + $y;
    $rez *= 100;
    $rez = $rez + 10;
}

echo '<h2 style="background-color:gray;
padding: 15px;
">
Unesite parametre x i y u URL, na sljedeći način: 
<span style="color:white">?x=1&y=3</h2></span>', '<hr />';

echo '<strong>rez = x + y</strong>', '<br />';
echo '<strong>rez = rez * 100</strong>', '<br />';
echo '<strong>rez = rez + 10</strong>', '<br />';

echo '<h3 style="background-color:gray;
padding: 15px;
">
Kao što je u formuli prikazano, program će unesene brojeve x i y najprije zbrojiti, dobiveni rezultat pomnožiti sa 100, i uvećati za 10.</h3>', '<hr />';

// Izlaz

echo '<h3>Rezultat je:</h3>';
echo '<strong>'.$rez.'</strong>';