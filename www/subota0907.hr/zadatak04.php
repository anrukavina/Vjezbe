<?php

// Ispisati brojeve od 1 do 55 odvojeno zarezom
// nakon zadnjeg broja ne smije biti zarez

$i;
for($i=1; $i<=55; $i++){
    echo $i;
    if ($i===55) {
        break;
    }
    echo ',';
}