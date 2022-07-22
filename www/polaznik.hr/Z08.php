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
                        <h5>ZADATAK 8: Ispišite sve parne brojeve između dva primljena broja (a i b) putem GET metode</h5>

                        <?php
                            $a = isset($_GET['a']) ? $_GET['a'] : '';
                            $b = isset($_GET['b']) ? $_GET['b'] : '';
                        ?>
                    </div>
            </div>

            <div class="test-tekst">
                <div class="callout" style="background-color: rgb(161, 156, 156)">
                    
                    <?php

                        if($a > $b) {
                            for($i=$b;$i<=$a;$i++) {
                                if($i%2===0) {
                                    echo $i, '<br />';
                                }
                            }
                        } elseif($a < $b) {
                            for($i=$a;$i<=$b;$i++) {
                                if($i%2===0) {
                                    echo $i, '<br />';
                                }
                            }
                        }

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