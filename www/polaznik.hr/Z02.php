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
            <div class="grid-x">
                <div class="cell">
                    <div class="callout">
                        <h5>ZADATAK 2: Stranica ispisuje Shaquille O'Neal koristeći echo funkciju i jednostruke navodnike</h5>
                    </div>
                    <div class="callout" style="background-color: rgb(161, 156, 156)">
                        <p><?php echo 'Shaquille O\'Neal'; ?></p>
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