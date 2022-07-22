<?php
// if je binarno grananje
// pretpostavka je kako korisnik unosi vrijednost 2
$i = 2;

$uvjet = $i > 0;

echo gettype($uvjet), '<hr />';

if($uvjet){ // if radi sa boolean tipom podatka
    echo '$i je veće od 0','<hr />'; // pod ' ne ispisuje se vrijednost varijable
    echo "$i je veće od 0", '<hr />'; // pod " se ispisuje vrijednost varijable
}

if($i>0){ // koristit ćemo ovakvu sintaksu kod if uvjeta

    echo $i. ' je veće od 0','<hr />'; // . je operator nadoljepljivanja --> OVO KORISTIMO, KORIŠTENJE "" NIje PREPORUČENo OD STRANE PHP-A
} 

if($i>2){
    echo 'OK';
} else{
    echo 'Edunova', '<hr />';
}

$t=0;
if($i>2){
    $t=1;
}else if($i<-2){
    $t=2;
}else{
    $t=3;
}
echo $t, '<hr />';

// OVO NE TREBA RADITI (iako je sintaksa ispravna)
if($i>2)
echo $i;
else
echo 0;
echo 2; // ovo nije dio else naredbe
// ako nema {} tada se if/else odnosi samo na prvu sljedeću liniju koda 


// ugnježđivanje if naredbe
$i=1; $j=2;
if($i==1){ // == je operator provjere jednakosti po vrijednosti (je li i jednako 1)
    if($j===2){ // === je operator provjere jednakosti po tipu i prototipu
        echo 'Osijek','<hr />';
    }
}

// logički operatori and (&), or (|) i not(!)
if($i===1 & $j===2){
    echo 'Osijek','<hr />';
}

// razlika između & i &&
// & provjeravaju se oba uvjeta
// && u slučaju da prvi uvjet ne prođe ne provjerava drugi --> OVO ĆEMO KORISTITI

// razlika između | i ||
// | provjeravaju se oba uvjeta
// || u slučaju da prvi uvjet ne prođe ne provjerava drugi


if(isset($_GET['x'])){
    $x=$_GET['x'];
}else{
    $x=2;
}
// identično gornjih 5 linija koda
$x = isset($_GET['x']) ? $_GET['x'] : 2; // inline if