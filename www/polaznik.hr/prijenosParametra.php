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

    </header>
       
    <main>
        <div class="grid-x">
            <div class="cell">
                <div class="callout" id="prvi">
                     Za potrebe testiranja u postojeći URL potrebno je dodati sljedeće znakove i proizvoljni tekst: <strong>?tekst=proizvoljnitekst</strong>
                </div>

                <div class="callout">
                    <strong>TEKST :</strong>

                    <!-- PHP start -->
                    <?php if(isset($_GET['tekst'])): ?> 
                    <?php echo $_GET['tekst']; ?>
                    <?php endif; ?>
                    <!-- PHP end -->

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