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
                <div class="callout" id="prvi" style="background-color: white">
                     Za potrebe testiranja u postojeći URL potrebno je proizvoljni tekst i željenu boju: <strong>?tekst=proizvoljnitekst&boja=proizvoljnaboja</strong>
                </div>

                <div class="callout">
                    <strong>TEKST :</strong>

                         <p style="color: <?php echo (isset($_GET['boja'])) ? $_GET['boja'] : '' ?>">
                                     
                            <!-- PHP start -->
                            <?php echo (isset($_GET['tekst'])) ? $_GET['tekst'] : '' ?>
                            <!-- PHP end -->
                        </p>

                </div>

                <div class="callout" id="koristena" style="background-color: white">
                    Korištena je boja: 
                    <p style="color: <?php echo (isset($_GET['boja'])) ? $_GET['boja'] : '' ?>"> 
                            <!-- PHP start -->
                            <?php echo (isset($_GET['boja'])) ? $_GET['boja'] : '' ?>
                            <!-- PHP end --> 
                    </p>

                </div>
                
                <div class="callout" id="napomena">
                   <strong>* NAPOMENA:</strong> Parametar boje je potrebno unijeti na engleskom jeziku.
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