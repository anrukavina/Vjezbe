<?php 

$varijabla = 7;
echo $varijabla.' = '.gettype($varijabla), '<hr />';

$varijabla = true;
echo $varijabla.' = '.gettype($varijabla), '<hr />';

$varijabla = 6.99;
echo $varijabla. ' = '.gettype($varijabla), '<hr />';

$varijabla = 'Požega';
echo $varijabla. ' = '.gettype($varijabla), '<hr />';

$varijabla = [1,2,3];
print_r($varijabla);
echo ' = '.gettype($varijabla), '<hr />';

$varijabla = new stdClass();
print_r($varijabla);
echo ' = '.gettype($varijabla), '<hr />';

$brojDanaUGodini = isset($_GET['brojDanaUGodini']) ? $_GET['brojDanaUGodini'] : '';

echo '<p><strong>Test varijable</strong>: ?brojDanaUGodini=365</p>';
echo $brojDanaUGodini, '<hr />';

$bdg = $brojDanaUGodini;

echo '<p>Ovdje će se ispisati vrijednost varijable bdg i tip podatka iste: <br /></p>';
if(isset($_GET['brojDanaUGodini']) ? $_GET['brojDanaUGodini'] : '') {
    echo $bdg, ' = ', gettype($bdg),'<hr />';
}

echo '<p>Ovdje će se ispisati vrijednost varijable bdg uvećana 2 puta: <br /></p>';
if(isset($_GET['brojDanaUGodini']) ? $_GET['brojDanaUGodini'] : '') {
    echo $bdg * 2, '<hr />';
}