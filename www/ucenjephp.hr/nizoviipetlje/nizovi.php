<?php

// problem pohranjivanja prosječne temperature 
// mjeseci u godini
$t1=-2;
$t2=2;
//...
$t12=1;
// ovo gore nije dobra praksa

// INDEKSNI NIZOVI

$temp=[]; // inicijalno deklariranje niza, $niz=array(); -> stari način dekl. niza
// index niza kreće od 0
$temp[0]=-2;
$temp[]=2; // kada se u [] ne stavi index on dodaje 
$temp[11]=1;

// kada niz ima index + vrijednost naziva se indeksni niz
// echo $temp; --> ne može se niz prebaciti u string
echo '<pre>';
print_r($temp);
echo '</pre>';
echo '<pre>';
var_dump($temp);
echo '</pre>';

echo $temp[0], '<hr />';

// istovremeno deklariranje i dodjeljivanje vrijednosti nizu
$temp = [-2,2,3,12,15,16,26,28,26,16,11,2];
echo count($temp), '<hr />';

// ASOCIJATIVNI NIZOVI
// sastoje se od ključ i vrijednost

$niz = [];
$niz['sifra']=2;
$niz['naziv']='PHP programiranje';
$niz['cijena']=5999.99;
$niz['verificiran']=false;

echo '<pre>';
print_r($niz);
echo '</pre>';

echo $niz['naziv'], '<hr />';

// istovremeno deklariranje i dodjeljivanje vrijednosti nizu
$niz = [
    'sifra'=>2,
    'naziv'=>'PHP programiranje',
    'cijena'=>5999.99,
    'verificiran'=>false,
];

echo '<pre>';
print_r($niz);
echo '</pre>';

echo $niz['naziv'], '<hr />';

// kombinacija indeksni i asocijativni - LOŠA
$kombinacija = [
    2,
    'Osijek',
    'skola'=>'Edunova',
];

echo '<pre>';
print_r($kombinacija);
echo '</pre>';

$grupe = [
    [
    'sifra'=>1,
    'naziv'=>'PHP programiranje',
    'cijena'=>5999.99,
    'verificiran'=>false,
    ],
    [
    'sifra'=>2,
    'naziv'=>'Java programiranje',
    'cijena'=>6999.99,
    'verificiran'=>true,
    ],
];

echo '<pre>';
print_r($grupe);
echo '</pre>';

echo $grupe[1]['naziv'], '<br />';