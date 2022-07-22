<?php

// Program ispisuje zbroj svih vrijednosti
// primljenih GET parametara

// VJEŽBATI OVAKVE ZADATKE

$suma = 0;

foreach($_GET as $vrijednost) {
    //echo $vrijednost, '<br />';
    $vrijednost = (int) $vrijednost;
    echo $vrijednost, '<br />';
    $suma += $vrijednost;

}

echo $suma, '<hr />';

// Ispisati umnožak

$umnozak = 1;
foreach($_GET as $vrijednost) {  
    echo $vrijednost, '<br />';  
    if ($vrijednost === '0'){
        $umnozak = 0;
        break;
    }
    $vrijednost = (int) $vrijednost;
    if ($vrijednost === 0){
        continue;
    }
    $umnozak *= $vrijednost;

}

echo $umnozak, '<hr />';