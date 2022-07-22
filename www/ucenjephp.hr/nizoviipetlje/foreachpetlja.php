<?php

// specijalizirana za rad s nizovima
// indeksni niz - postoji for petlja način

$niz = [2,2,2,3,4];
        
foreach($niz as $e){ // varijabla e postaje svaki element niza
    echo $e. '<br />';
}

echo '<hr />';

// asocijativni nizovi 
$niz = [
    'sifra'=>1,
    'naziv'=>'PHP'
];

foreach($niz as $key => $value){
    echo $key, ': ', $value, '<br />';
}

// sva ostala pravila za petlje vrijede i za foreach
// jedino ne postoji beskonačna foreach petlja