<?php

echo '<p><strong>Zbrajanje: </strong></p>';
echo '$i = 2; $j = 1;', '<br />';
$i = 2; $j = 2;
echo '$rez = $i + $j;', '<br />';
$rez = $i + $j;
echo '<strong>rez</strong>', ' = ', $rez, '<hr />';

echo '<p><strong>Modulo operator: </strong></p>';
echo '$rez = 9 % 2;', '<br />';
$rez = 9 % 2;
echo '<strong>rez</strong>', ' = ', $rez, '<hr />';

echo '<p><strong>Kraće varijante osnovnih operacija: </strong></p>';
echo '$suma = 0;', '<br />';
$suma = 0;
echo '$suma = $suma + 2;', '<br />';
$suma = $suma + 2;
echo '<strong>suma</strong>', ' = ', $suma, '<br />';
echo '<br />';
echo '$suma += 2;', '<br />';
$suma += 2;
echo '<strong>suma</strong>', ' = ', $suma, '<hr />';

echo '<p><strong>Uvećavanje za 1: </strong></p>';
echo '$i = 0;', '<br />';
$i = 0;
echo '<strong>i</strong>', ' = ', $i, '<br />'; // $i = 0
echo '<br />';
echo '$i = $i + 1;', '<br />';
$i = $i + 1;
echo '<strong>i</strong>', ' = ', $i , '<br />'; // $i = 1
echo '<br />';
echo '$i = $i += 1;', '<br />'; 
$i = $i += 1;
echo '<strong>i</strong>', ' = ', $i, '<br />'; // $i = 2
echo '<br />';
echo '$i++;','<br />';
$i++;
echo '<strong>i</strong>', ' = ', $i, '<hr />'; // $i = 3

echo '<p><strong>Uvećanje/umanjenje vr. varijable, ovisno o redoslijedu korištenja increment operatora: </strong></p>';
echo '$i = 1;', '<br />';
$i = 1;
echo '<strong>i</strong>', ' = ', $i, '<br />'; // $i = 1

echo '<p>U ovom slučaju najprije se varijabla koristi pa zatim uveća: </p>';
echo '$i++;', '<br />';
$i++;
echo '<strong>i</strong>', ' = ', $i, '<br />'; // $i = 2

echo '<p>U ovom slučaju je obrnuto, varijabla se prvo uveća pa zatim koristi:: </p>';
echo '++$i;', '<br />';
++$i;
echo '<strong>i</strong>', ' = ', $i, '<br />'; // $i = 4
echo '<p>Isto vrijedi i za decrement: <strong>$i--</strong> i <strong>--$i</strong>.</p>';
