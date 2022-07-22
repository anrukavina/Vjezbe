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
                        <h5>ZADATAK 3: Stranica prima 4 parametra i ispisuje ih jedno podred drugog svaki u svom panelu, na large širini</h5>

                        <?php
                            $p1 = isset($_GET['p1']) ? $_GET['p1'] : 0;
                            $p2 = isset($_GET['p2']) ? $_GET['p2'] : 0;
                            $p3 = isset($_GET['p3']) ? $_GET['p3'] : 0;
                            $p4 = isset($_GET['p4']) ? $_GET['p4'] : 0;
                        ?>
                    </div>
            </div>

            <div class="grid-x grid-paddin-x align-center">
                    <div class="alert callout">
                        <?php
                            echo $_GET['p1'];
                        ?>
                    </div>
                    <div class="warning callout">
                        <?php
                            echo $_GET['p2'];
                        ?>
                    </div>
                    <div class="success callout">
                        <?php
                            echo $_GET['p3'];
                        ?>
                    </div>
                    <div class="alert callout">
                        <?php
                            echo $_GET['p4'];
                        ?>
                    </div>
            </div>

            <div class="test-tekst">
                <div class="callout" style="background-color: rgb(161, 156, 156)">
                    <h5><b>TEST:</b> za potrebe testiranja u URL unesite sljedeće primjere <b>?p1=2&p2=4&p3=6&p4=8</b></h5>
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