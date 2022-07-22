<?php

// Ispišite sve parne brojeve od 1 do 21

for($i=1;$i<=21;$i++){
    if(($i%2)===0){
        echo $i, '<br />';
    }
}