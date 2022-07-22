<?php

$niz = [2,4,6,8,10,12,14,15,18,20,22,24];

echo '<pre>';
print_r($niz);
echo '</pre>', '<hr />';

// Promjena broja 15 u broj 16

$niz[7] = 16;

echo '<pre>';
print_r($niz);
echo '</pre>', '<hr />';

// Brisanje elementa 12 zajedno sa pripadajućim indeksom [5]

unset($niz[5]);

echo '<pre>';
print_r($niz);
echo '</pre>', '<hr />';

// Renumeriranje indeksa, na indeks 5 se vraća vrijednost sa indeksa 6

array_splice($niz,5,1);

echo '<pre>';
print_r($niz);
echo '</pre>', '<hr />';

// Sortiranje niza prema vrijednostima (od manjeg do većeg)

asort($niz);

echo '<pre>';
print_r($niz);
echo '</pre>', '<hr />';

$o = (object) $niz;

echo '<pre>';
print_r($o);
echo '</pre>', '<hr />';

// echo $o->naziv, '<hr />'; --> UZIMA SE IZ BAZE PODATAKA