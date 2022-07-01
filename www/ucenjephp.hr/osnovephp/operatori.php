<?php

$i=2; $j=1;
$rez = $i + $j;
echo $rez, '<hr />';

// - * /

// modulo operator % - ostatak prilikom cjelobrojnog dijeljenja
$rez = 9 % 2;
// 9/2=4
// 4*2=8
// 9-8=1
// 9%2=1


// brže varijante
$suma=0;
$suma=$suma+2;
echo $suma, '<hr />';
// skraćenije
$suma +=2;
echo $suma, '<hr />';
// isti princip vrijedi i za: /, *, -, %

// specifičnost kod operatora je uvećanje za 1

$i=0;
echo $i, '<hr /'; // 0
$i = $i +1;
echo $i, '<hr /'; // 1
$i += 1;
echo $i, '<hr /'; // 2
$i++; // increment (- decrement, postoji samo za zbrajanje i oduzimanje)
echo $i, '<hr /'; // 3

// korištenje i uvećanje/umanjenje varijable
$i=1;
echo $i++, '<hr />'; // prvo koristi pa uveća --> 1
echo ++$i, '<hr />'; // prvo uveća pa koristi --> 3

// isto vrijedi i za umanjenje $i-- i --$i

// tipski zadaci za provjeru
$i = 0; $j = 1;
$k= $i + $j; // k=1, j=1, i=0
$j += ++$k; // k=2, j=3, i=0
echo $i + $j + $k; // 

// DZ: Prvo i nasumično zadati zadatak
// ručno izračunati i provjeriti  u pregledniku