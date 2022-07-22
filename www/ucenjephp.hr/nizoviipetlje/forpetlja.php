<?php
// 5 puta jedno ispod drugog ispiši Hello
echo 'Hello', '<br />';
echo 'Hello', '<br />';
echo 'Hello', '<br />';
echo 'Hello', '<br />';
echo 'Hello', '<br />';

// Ovo iznad nije rješenje dobre prakse
echo '<hr />';
// sintaksa for()

for ($i=0;$i<5;$i++){
    echo 'Hello','<br />';
}

echo '<hr />';

// for petlja MORA imati varijablu koja mijenja vrijednost
for($i=0;$i<25;$i++){
    echo $i+1, '<br />';
}

echo '<hr />';

for($i=100;$i>0;$i-=7){
    echo $i, '<br />';
}

echo '<hr />';
$sum=0;
for($i=1;$i<=100;$i++){
    $sum+=$i;
}
echo $sum,'<br />';

echo '<hr />';

// Domaća zadaća: s CSS lijepo stilizirati tablicu množenja
echo '<table>';
for($i=1;$i<=10;$i++){
    echo '<tr>';
    for($j=1;$j<=10;$j++){
        echo '<td>',$i*$j,'</td>';
    }
    echo '</tr>';
}
echo '</table>';

echo '<hr />';

// petlja se može preskočiti / nastaviti

for($i=0;$i<=10;$i++){
    if($i===2){
        continue; // preskakanje broja 2 u petlji
    }
    echo $i, '<br />';
}

echo '<hr />';

// petlja se može nasilno prekinuti
for($i=0;$i<10;$i++){
    if($i===5){
        break;
    }
    echo $i,'<br />';
}

echo '<hr />';

// RAD S NIZOVIMA
// for radi s indeksnim nizovima
$niz=[2,3,4,'Osijek',true,2.99];

for($i=0;$i<count($niz);$i++){
    echo $niz[$i], '<br />';
}

echo '<hr />';

// BESKONAČNE PETLJE

// for($i=0;$i<-1;$i++) {} --> NIJE BESKONAČNA PETLJA

// ovo je beskonačna petlja - prekine se gašenjem xampp-a i nasilnim breakom (break;)
for(;;){
    echo 2;
    break;
}

// u for se ne mora ući !!!
$i=10; // ovo je unio čovjek
for($t=$i;$t<5;$t++){
    echo $t;
}

// SAMO ZA NAPREDNE 
