<?php


// Stranica prima 4 GET parametara i ispisuje
// umnožak zbroja prvi i drugi te treći i četvrti

// primjer ulaza
// ulaz: 2 2 1 3
// izlaz: 16

$a = isset($_GET['a']) ? $_GET['a'] :0;
$b = isset($_GET['b']) ? $_GET['b'] :0;
$c = isset($_GET['c']) ? $_GET['c'] :0;
$d = isset($_GET['d']) ? $_GET['d'] :0;

$rezultat1 = $a + $b;
$rezultat2 = $c + $d;
$rezultat3 = $rezultat1 * $rezultat2;

echo $rezultat3;

// TEST: ?a=2&b=3&c=1&d=4
