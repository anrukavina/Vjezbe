<?php

// 5 puta jedno ispod drugog ispiši Hello

echo 'Hello!', '<br />';
echo 'Hello!', '<br />';
echo 'Hello!', '<br />';
echo 'Hello!', '<br />';
echo 'Hello!', '<hr />';

// Isti zadatak kao i gore napraviti koristeći se petljom FOR

for($i=0;$i<5;$i++) {
    echo 'Hello!', '<br />';
}

echo '<hr />';

// Ispisuje brojeve od 1 do 25, isto smo mogli postići na sljedeći način:
        // for($i=1;$i<=25;$i++) { echo $i;  }

for($i=0;$i<25;$i++) {
    echo $i+1, '<br />';
}

echo '<hr />';
 
// Ispisuje brojeve od 50 do 1, uz postavljen uvjet da je svaki drugi broj manji za 7

for($i=50;$i>0;$i-=7) {
    echo $i, '<br />';
}

echo '<hr />';

// Zbrojiti prvih 100 brojeva

        // Najprije moramo postaviti varijablu $sum na vrijednost 0

$sum = 0;
for($i=1;$i<=100;$i++) {
    $sum=$sum+$i;
}

echo $sum, '<hr />';

// Ispisati tablicu množenja

echo '<table style="
background-color: dodgerblue;
border: 4px solid black;
border-collapse: collapse;
text-align: center;
">';
for($i=1;$i<=10;$i++) {
    echo '<tr>';
    for($j=1;$j<=10;$j++) {
        echo '<td style="border: 1px solid black;
        display: table-cell;
        text-align: center;
        padding: 5px;">',$i*$j,'</td>';
    }
    echo '</tr>';
}
echo '</table>';

echo '<hr />';

// Ispisati brojeve od 0 do 10, ali preskočiti broj 2

for($i=0;$i<=10;$i++) {
    if ($i===2){
        continue;
    }
    echo $i, '<br />';
}

echo '<hr />';

// Prekinuti petlju kod broja 5

for($i=0;$i<10;$i++) {
    if($i===5){
        break;
    }
    echo $i, '<br />';
}

echo '<hr />';

$niz=[2,3,4,'Osijek',true,2.99];

for($i=0;$i<count($niz);$i++){
    echo $niz[$i], '<br />';
}

echo '<hr />';

$i=10;
for($t=$i;$t<5;$t++){
    echo $t;
}