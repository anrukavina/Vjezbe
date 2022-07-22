<?php

$i = 5;
$uvjet = $i > 0;

echo gettype($uvjet), '<hr />';

if ($uvjet) {
    echo '$i je veće od 0', '<hr />';
    echo "$i je veće od 0", '<hr />';
}

if ($i > 0) {
    echo $i. ' je veće od 0', '<hr />';
}

if ($i > 5) {
    echo 'Ok!', '<hr />';
} else {
    echo 'Edunova', '<hr />';
}

$t = 0;

if ($i > 5) {
    $t = 1;
} else if ($i < -5) {
    $t = 2;
} else {
    $t = 3;
}

echo $t, '<hr />';

$i=1; $j=2;
if($i == 1){
    if($j === 2){
        echo 'Požega', '<hr />';
    }
}

if($i===1 & $j===2) {
    echo 'Osijek', '<hr />';
}