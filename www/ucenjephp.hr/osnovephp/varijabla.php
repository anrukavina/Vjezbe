<?php

// Varijabla je prostor u memoriji

// PHP je interpreter
$varijabla=7;

// funkcija gettype vraća tip podatka varijable
echo $varijabla,' = ', gettype($varijabla), '<hr />';

$varijabla = true;

echo $varijabla,' = ', gettype($varijabla), '<hr />';


$varijabla = 3.14;

echo $varijabla,' = ', gettype($varijabla), '<hr />';

$varijabla = 'Osijek';

echo $varijabla,' = ', gettype($varijabla), '<hr />';


$varijabla = [];

echo gettype($varijabla), '<hr />';

$varijabla = new stdClass();

echo  gettype($varijabla), '<hr />';

echo $_GET['brojDanaUGodini'], '<hr />';

$bdg = $_GET['brojDanaUGodini']; 

echo $bdg,' = ', gettype($bdg), '<hr />';

echo $bdg * 2, '<hr />'; //implicitna konverzija

// eksplicitna konverzija
$bdg = (int)$_GET['brojDanaUGodini']; //cast

// čitati https://www.educative.io/answers/what-are-the-naming-conventions-of-variables-in-php uz napomenu da koristimo ''

$v = 8; 
$t = $v;
echo $t;