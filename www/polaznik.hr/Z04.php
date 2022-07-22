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
                        <h5>ZADATAK 4: Stranica prima 4 parametra i ispisuje umnožak zbroja prvog i drugog, te trećeg i četvrtog</h5>

                        <?php
                            $a = isset($_GET['a']) ? $_GET['a'] : '';
                            $b = isset($_GET['b']) ? $_GET['b'] : '';
                            $c = isset($_GET['c']) ? $_GET['c'] : '';
                            $d = isset($_GET['d']) ? $_GET['d'] : '';
                        ?>
                    </div>
            </div>

            <div class="grid-x">
                <div class="cell">
                <div class="callout">

                    <?php
                        
                        // Ispis unesenih parametara

                        echo 'a = ', $a, '<br />';
                        echo 'b = ', $b, '<br />';
                        echo 'c = ', $c, '<br />';
                        echo 'd = ', $d, '<br />';

                        echo '<br />';
                        echo 'Rezultat: ', '<br />';

                        if(isset($_GET['a']) === '' && isset($_GET['b']) === '' && isset($_GET['c']) === '' && isset($_GET['d']) === '') {
                            echo '';
                        } else {
                            $rez1 = $a + $b;
                            $rez2 = $c + $d;
                            $rez3 = $rez1 * $rez2;

                            if(isset($_GET['a']) != '' && isset($_GET['b']) != '' && isset($_GET['c']) != '' && isset($_GET['d']) != '') {
                                echo $rez3;
                                }
                        }
                        
                    ?>
                </div>
                </div>                    
            </div>

            <div class="test-tekst">
                <div class="callout" style="background-color: rgb(161, 156, 156)">
                    <h5><b>TEST:</b> za potrebe testiranja u URL unesite sljedeće primjere <b>?a=2&b=4&c=6&d=8</b></h5>
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