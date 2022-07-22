<?php

$temp = [];
$temp[0] = -2;
$temp[] = 2;
$temp[11] = 1;

echo '<pre>';
    print_r($temp);
echo '<pre>';

echo '<pre>';
    var_dump($temp);
echo '<pre>';

echo $temp[0], '<hr />';

$temp = [-2,2,3,12,15,16,26,28,26,16,11,2];

echo count($temp), '<hr />';