<?php

// Ispišite tablicu 3 x 3 na način
// da u ćelijama kuteva stavite znak X

echo '<table border="1">';

    for($i=0;$i<3;$i++){
        echo '<tr>';
        for($j=0;$j<=3;$j++){
            echo '<td>';
            if(
                ($i===0 && $j===0)
                ||
                ($i===0 && $j===2)
                ||
                ($i===2 && $j===0)
                ||
                ($i===2 && $j===2)
              )
            {
            echo 'X';
        }
            echo '</td>';
        }
        echo '</tr>';
    }

echo '</table>';