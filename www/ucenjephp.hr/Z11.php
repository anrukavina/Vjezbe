<?php

// Putem GET metode stranica prima 
// parametre koji su brojevi 
// ispišite najveći primljeni broj

// ?x=3&y=4&z=1
// 4

// ?x=3&y=4&z=1&k=8&l=6
// 8

// ?x=-3&y=-4&z=-1&k=-8&l=-6
// 8

$najveci = PHP_INT_MIN; // ako su nam brojevi u minusu budući da krećemo od 0 neće ispisati najveći, ZATO KORISTIMO KONSTANTU PHP_INT_MIN
foreach($_GET as $b){
   if($b>$najveci){
        $najveci=$b;
   }
}
echo $najveci;