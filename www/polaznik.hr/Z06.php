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
                        <h5>ZADATAK 6: Stranica prima cijeli broj, ako je broj paran stranica treba biti zelene boje, a ako je neparan crvene</h5>

                        <?php
                            $a = isset($_GET['a']) ? $_GET['a'] : '';
                            $boja = isset($_GET['boja']) ? $_GET['boja'] : 'white';


                            if(isset($_GET['a']) && $a % 2 === 0){
                                $boja = 'green';
                            } elseif(isset($_GET['a']) && $a % 2 != 0) {
                                $boja = 'red';
                            } 

                        ?>
                    </div>
            </div>

            <div class="grid-x">
                <div class="cell">
                <div class="callout" style="background-color: <?php echo $boja; ?> ">

                    <?php
                    
                        if(isset($_GET['a']) && $a % 2 === 0){
                            echo '<h5>Ovo je testni tekst, boja je zelena jer je uneseni broj <em>a</em> <b>paran</b>.</h5>';
                            
                        } elseif(isset($_GET['a']) && $a % 2 != 0) {
                            echo '<h5>Ovo je testni tekst, boja je crvena jer je uneseni broj <em>a</em> <b>neparan</b>.</h5>';
                        } else {
                            echo '<h5>Ovdje će se ispisati tekst nakon što unesete parametar a.</h5>';
                        }
                    
                    ?>

                </div>
                </div>                    
            </div>

            <div class="test-tekst">
                <div class="callout" style="background-color: rgb(161, 156, 156)">
                    <h5><b>TEST:</b> za potrebe testiranja u URL unesite sljedeći primjere <b>?a=2</b></h5>
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