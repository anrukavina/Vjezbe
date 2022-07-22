<?php

$grad='Osijek';

switch($grad){
    case 'Osijek':
        echo 'Najbolji grad';
        break;
    case 'Donji Miholjac':
        echo 'Tamo se okreće lova';
        break;
    case 'Zagreb':
    case 'Split':
        echo 'Preveliko';
        break;
    default:
        echo 'Nepoznato';
}

?>