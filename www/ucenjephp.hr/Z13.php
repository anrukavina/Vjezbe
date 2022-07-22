<?php

// Složiti post formu koja prima tri cijela broja
// i ispisuje najveći

$najveci = PHP_INT_MIN;
$i1 = isset($_POST['i1'])  ? $_POST['i1'] : '';
$i2 = isset($_POST['i2'])  ? $_POST['i2'] : '';
$i3 = isset($_POST['i3'])  ? $_POST['i3'] : '';


?>

<!doctype html>
<html class="no-js" lang="en" dir="ltr">
  <head>
  <?php require_once 'zaglavlje.php'; ?>
  </head>
<body>
<div class="grid-container">
<?php include_once 'izbornik.php'; ?>
<!-- Start tijelo -->
<div class="grid-x grid-margin-x" id="tijelo">
      <div class="cell">
        <div class="callout">

            <form action="Z13.php" method="POST">

                <label for="prvi-broj">Unesite prvi broj</label>
                <input type="number" name="prvi-broj" id="prvi-broj" 
                value="<?=$i1?>" >

                <label for="drugi-broj">Unesite drugi broj</label>
                <input type="number" name="drugi-broj" id="drugi-broj"
                value="<?=$i2?>" >

                <label for="treci-broj">Unesite treći broj</label>
                <input type="number" name="treci-broj" id="treci-broj" 
                value="<?=$i3?>" >

                <input class="success button expanded" type="submit" value="predaj">
                
                <?php

                    if($i1 > $najveci){
                        $i1 = $najveci;
                        echo 'Najveći uneseni broj je: ', $i1; 
                    } else if($i2 > $najveci) {
                        $i2 = $najveci;
                        echo 'Najveći uneseni broj je: ', $i3; 
                    } else {
                        $i3 = $najveci;
                        echo 'Najveći uneseni broj je: ', $i3; 
                    }

                ?>


                </form>

        </div>
      </div>
    </div>
        <!-- End tijelo -->
        <?php 
    // čitati https://www.tutorialrepublic.com/php-tutorial/php-include-files.php
    require_once 'podnozje.php'; ?>
    </div>
    <?php require_once 'jsskripte.php'; ?>
  </body>
</html>