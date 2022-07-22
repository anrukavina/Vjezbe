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
            <div class="cell large-2 medium-4 small-6">
                <div class="success callout">
                    Edunova
                </div>
            </div>
            <div class="cell large-2 medium-4 small-6">
                <div class="warning callout">  
                    Osijek
                </div>
            </div>
            <div class="cell large-2 medium-4 small-6">
                <div class="alert callout">
                    Ponedjeljak
                </div>
            </div>
        </div>
        <!-- End tijelo -->
    </header>

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