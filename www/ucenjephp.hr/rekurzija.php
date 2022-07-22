<?php

// Rekurzija je kada funkcija zove samu sebe

/*
function rekurzija() 
{
    rekurzija();
}
rekurzija();

stackoverflow error
*/

// Rekurzija je kada funkcija zove samu sebe
// uz uvjet prekida rekurzije


// Zadatak: zbrojiti prvih 100 brojeva

$suma = 0;
for($i=1;$i<=100;$i++){
    $suma+=$i;
}
echo $suma, '<hr />';

// Rješenje zadatka s rekurzijom:

function zbroj($broj)
{
    if($broj===1){
        return 1;
    }
    return $broj + zbroj($broj-1);
}

echo zbroj(100), '<hr />';

// Primjer rekurzije koju nije moguće realizirati s petljama

require_once 'vrstefunkcija.php';

function suma($var,$suma=0)
{
    if(gettype($var)==='integer'){
        return $suma + $var;
    }
    foreach($var as $e){
        logiranjeDobro($var);
        $suma += suma($e,$suma);
    }
}

$niz =
[
    'x'=>[
        'y'=>2
    ],
    'z'=>3,
    'k'=>[
        'j'=>[
            'l'=>7
        ]
    ]
        ];

    


echo suma($niz), '<hr />';