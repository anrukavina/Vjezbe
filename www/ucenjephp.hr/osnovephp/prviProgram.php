<?php

// ulaz
// GET parametar x i y
$x = isset($_GET['x']) ? $_GET['x'] : 0; // inline if
$y = isset($_GET['y']) ? $_GET['y'] : 0;

// obrada
$rez = $x + $y;
$rez *= 100;
$rez = $rez +10;

// izlaz
echo $rez;