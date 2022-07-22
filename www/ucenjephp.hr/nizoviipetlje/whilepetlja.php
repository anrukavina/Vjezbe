<?php

// while radi s booleanom tipa podatka
$i=0;
$uvjet=$i<10;

while($uvjet){
    echo $i, '<br />';
    $uvjet=++$i<10;
}

echo '<hr />';

while ($i<10){
    echo $i++, '<br />';
}

// prekidanje ugnježđenih petlji
$i=0;$j=0;
while($i<10){
    while($j<10){
        if($i===0){
            break 2;
        }
    }
}

// continue i break rade isto

// u while se ne mora ući

$i=0;
while($i<0){
    // neće ući
}

// beskonačna petlja
while(true){
    break;
}