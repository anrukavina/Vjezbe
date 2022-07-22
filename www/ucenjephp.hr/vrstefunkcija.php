<?php

$niz = [2,3,3,3];


// Kreiranje funkcije
function logiranje()
{
    echo '<pre>';
    print_r($niz); // Varijabla ima područje djelovanja unutar funkcije. Stoga se u ovoj funkciji ne vidi varijabla $niz
    echo '</pre>';
}

// Poziv funkcije
logiranje();

// Vrste funkcija

// 1. Ne prima parametar, ne vraća vrijednost

function ispisiSifru(/* Lista parametara je prazna */)
{
    // Želim generirati šifru tipa A-Z0-100 slučajno
    $slova=[];
    for($i=65;$i<=90;$i++){
        $slova[]=chr($i);
    }
    $slova = array_merge($slova,['Č','Ć','Ž','Š','Đ']);
    $slovo = $slova[rand(0,29)];
    $broj = rand(0,100);
    echo $slovo,$broj;

// Nema return izraza
}

for($i=0;$i<10;$i++) {
    echo ispisiSifru(), '<br />';
}

echo '<hr />';

// 2. Prima parametar, ne vraća vrijednost

function logiranjeDobro($sto) // Lista parametara koju primamo
{
    echo '<pre>';
    print_r($sto);
    echo '</pre><hr />';
}

logiranjeDobro($niz);

logiranjeDobro($_GET);

// 2 parametra

function slucajniBroj($min,$max=10) // Opcionalni parametar u listi parametara ima zadanu vrijednost = 10
{
    echo rand($min,$max);
}

slucajniBroj(5,10);
echo '<hr />';

slucajniBroj(2); // Između 2 i 10
echo '<hr />';

slucajniBroj(1); // Između 1 i 10
echo '<hr />';

// 3. Ne prima parametre, ne vraća vrijednost
function dovuciPodatkeGradova(){
    return  json_decode(file_get_contents( // vjerojatno neće raditi na hostingu od edunove
        'https://raw.githubusercontent.com/ndekic/popis_naselja_u_republici_hrvatskoj/master/json/popis_naselja_u_republici_hrvatskoj.json')
    );
}

function grad()
{
    //string
     // struktura niz objekata
        $gradovi=dovuciPodatkeGradova();
        //logiranjeDobro($gradovi);
        return $gradovi[rand(0,count($gradovi)-1)]->mjesto;
}

echo grad(), '<hr />';


// 4. Prima parametre, vraća vrijednost
function gradovi($brojGradova)
{
    $gradovi=dovuciPodatkeGradova();
    $vrati=[];
    while($brojGradova>0){
        $sb = rand(0,count($gradovi)-1);
        $vrati[]=$gradovi[$sb]->mjesto;
        array_slice($gradovi,$sb,1);
        $brojGradova--;
    }

    return $vrati;
}

foreach(gradovi(2) as $grad){
    echo $grad, '<br />';
}