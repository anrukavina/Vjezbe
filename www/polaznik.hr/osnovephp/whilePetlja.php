<?php

$i=0;
$uvjet=$i<10;

while($uvjet){
    echo $i, '<br />';
    $uvjet=++$i<10;
}

echo '<hr />';

$i=0;
while($i<10) {
    echo $i++, '<br />';
}

// Prekidanje ugnježđenih petlji

$i=0;$j=0;
while($i<10){
    while($j<10){
        if($i===0){
            break 2;
        }
    }
}

$i=0;
while($i<0){
    // neće ući
}