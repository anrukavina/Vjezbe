<?php

// Ispišite sve parne brojeve između
// dva primljena broja putem GET metode

$a = isset($_GET['a']) ? $_GET['a'] : 2;
$b = isset($_GET['b']) ? $_GET['b'] : 22;

// $min = $a<=$b ? $a : $b;
// $max = $a riješiti do kraja na ovaj način

for($i=$a;$i<=$b;$i++){
    if($i%2!==0){
        continue;
    }
    echo $i, '<br />';
}