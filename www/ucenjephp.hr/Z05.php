<?php


// Stranica prima 3 GET parametra koji su cijeli brojevi
// stranica ispisuje najveći primljeni broj

// pr. ulaz: 3 8 92
// izlaz: 92
// pr. ulaz: 3 3 2
// izlaz: 3
// pr. ulaz: -1 0 -1
// izlaz: 0

$a = isset($_GET['a']) ? $_GET['a'] :0;
$b = isset($_GET['b']) ? $_GET['b'] :0;
$c = isset($_GET['c']) ? $_GET['c'] :0;

if($a > $b && $a > $c){
    echo 'Najveći broj je a = '. $a;
}else if($b > $a && $b > $c){
    echo 'Najveći broj je b = ' . $b;
}else {
    echo 'Najveći broj je c = ' . $c;
}

// TEST: ?a=3&b=6&c=11