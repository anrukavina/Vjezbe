<?php

$niz = [];
$niz ['sifra'] = 2;
$niz ['naziv'] = 'PHP programiranje';
$niz ['cijena'] = 5999.99;
$niz ['verificiran'] = false;

echo '<pre>';
    print_r($niz);
echo '</pre>';

echo $niz['naziv'], '<hr />';

$niz = [
    'sifra' => 2,
    'naziv' => 'PHP programiranje',
    'cijena' => 5999.99,
    'verificiran' => false,
];

echo '<pre>';
    print_r($niz);
echo '</pre>';

$grupe = [
    [
    'sifra' => 1,
    'naziv' => 'PHP programiranje',
    'cijena' => 5999.99,
    'verificiran' => false,
    ],
    [
    'sifra' => 2,
    'naziv' => 'Java programiranje',
    'cijena' => 6999.99,
    'verificiran' => true,
    ],
];

echo '<pre>';
    print_r($grupe);
echo '</pre>';

echo $grupe[0]['naziv'], '<br />';