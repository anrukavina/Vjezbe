<?php

// Najpovoljnija za rad s nizovima

// Indeksni nizovi

$niz = [1,3,5,7,9,11,25];

foreach($niz as $e) {
    echo $e. '<br />';
}

echo '<hr />';

// Asocijativni nizovi

$niz = [
    'sifra'=>1,
    'naziv'=>'PHP'
];

foreach($niz as $key => $value) {
    echo $key, ': ', $value, '<br />';
}

echo '<hr />';

foreach($niz as $value) {
    echo $value, '<br />';
}
