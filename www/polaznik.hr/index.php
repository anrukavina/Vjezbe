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
                <h4>Dobrodošli na moju web-stranicu!</h4>
            </div>
        </div>
        <!-- End tijelo -->
    </header>
       
    <main>
        <div class="grid-x">
            <div class="cell">
                <div class="callout">
                    <p>Za početak pregledavanja pristupite gornjem izborniku.</p>
                </div>
            </div>
        </div>
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