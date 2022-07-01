<?php

$niz = [2,3,2,3,23,2,2,2,3,2,2];

echo '<pre>';
print_r($niz);
echo '</pre>';

// promjena --> mijenjamo 23 u 2
$niz[4] = 7;

echo '<pre>';
print_r($niz);
echo '</pre>';

// brisanje elementa niza zajedno sa indeksom
//unset($niz[4]);
// renumerira indexe -- na index 4 se vraća vrijednost koja je bila na indexu 5
array_splice($niz,4,1);

echo '<pre>';
print_r($niz);
echo '</pre>';

asort($niz); // sortira niz prema vrijednostima --> 222222333

echo '<pre>';
print_r($niz);
echo '</pre>';

$o = (object) $niz;

echo '<pre>';
print_r($o);
echo '</pre>';

echo $o->naziv, '<hr />';