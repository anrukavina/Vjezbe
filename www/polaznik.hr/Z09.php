<!doctype html>
<html class="no-js" lang="en" dir="ltr">
  <head>

    <!-- Start zaglavlje -->
        <?php require_once 'zaglavlje.php'; ?>
    <!-- End zaglavlje -->

  </head>
<body>

    <div class="grid-container" id="container">

    <header>
        <!-- Start izbornik -->
            <?php require_once 'izbornik.php'; ?>
        <!-- End izbornik -->

        <!-- Start tijelo -->            
            <div class="tekst-zadatka">
                    <div class="callout">
                        <h5>ZADATAK 9: Ispišite tablicu 3x3 na način da u ćelijama kuteva stavite znak X</h5>
                    </div>
            </div>

            <div class="test-tekst">
                <div class="callout" style="background-color: rgb(161, 156, 156)">
                    
                    <?php

                        echo '<table table style="
                        background-color: dodgerblue;
                        border: 4px solid black;
                        border-collapse: collapse;
                        text-align: center;">';
                        for($i=0;$i<3;$i++) {
                            echo '<tr>';
                            for($j=0;$j<3;$j++) {
                                echo '<td style="border: 1px solid black;
                                display: table-cell;
                                text-align: center;
                                padding: 5px;">';
                                if(
                                    ($i===0 && $j===0)
                                    ||
                                    ($i===2 && $j===0)
                                    ||
                                    ($i===0 && $j===2)
                                    ||
                                    ($i===2 && $j===2)
                                  ) {
                                    echo 'X';
                                  } else {
                                    echo '&nbsp';
                                  }
                            }
                            echo '</tr>';
                        }
                        echo '</table>';

                    ?>
               
                
                </div>
            </div>
        

        </div>
        <!-- End tijelo -->
    </header>
       
    <main>
        <!-- Obrisano za potrebe zadatka -->
    </main>

    <footer>
        <!-- Start podnožje -->
            <?php require_once 'podnozje.php'; ?>
        <!-- End podnožje -->
    </footer>

    </div>

    <!-- Start js_skripte -->
        <?php require_once 'js_skripte.php' ?>
    <!-- End js_skripte -->

  </body>
</html>