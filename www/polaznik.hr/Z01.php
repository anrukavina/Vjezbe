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
        <div class="grid-x grid-margin-x" id="tijelo">
            <div class="cell">
                <div class="callout">
                    <h5>ZADATAK 1: U okvirima trenutnog prijeloma stranice ispisati 'Hello World!'</h5>
                </div>
                <div class="callout" style="background-color: rgb(161, 156, 156)">
                    <p>Hello World!</p>
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