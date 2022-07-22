<?php

// Napisati funkciju 
// (KOJA NE PRIMA PARAMETRE, I NE VRAĆA VRIJEDNOSTI) --> brojevi su fiksni, ne mora ih korisnik unositi 
// koja ispisuje sve parne brojeve 
// od 2 do 85, te pozvati tu funkciju

function ispisiParneBrojeve()
{
  for($i=2;$i<=85;$i++){
    if($i%2===0){
      echo $i, '<br />';
    }
  }
}

ispisiParneBrojeve();

echo '<hr />';

// Napisati funkciju koja prima parametar i ne vraća vrijednost
// funkcija prima indeksni niz brojeva
// i ispisuje zbroj svih brojeva u primljenom nizu
// Deklarirati niz, pozvati funkciju

 function ispisiZbroj($niz) 
 {
    echo array_sum($niz);
 }

 $niz = [2,4,6,8,10];

 ispisiZbroj($niz);