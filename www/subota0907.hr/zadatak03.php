<?php

// U odnosu na primljenu brojčanu vrijednost ocjene
// ispisati naziv

$p1 = isset($_GET['p1']) ? $_GET['p1'] : 0;

$p1 = (int) $p1;

if($p1 === 0) {
    echo 'Obavezno broj';
} else {
    switch($p1) {
        case 1:
            echo 'Nedovoljan';
            break;
        case 2: 
            echo 'Dovoljan';
            break;
        case 3:
            echo 'Dobar';
            break;
        case 4:
            echo 'Vrlo dobar';
            break;
        case 5:
            echo 'Odličan';
            break;
        default:
            echo 'Nije ocjena';
    }
}