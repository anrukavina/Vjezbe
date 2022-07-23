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
                        <h5>LJETNI ZADATAK 1: Ciklična matrica</h5>
                    </div>
            </div>

            <div class="test-tekst">
                <div class="callout" style="background-color: rgb(161, 156, 156)">
                    <div class="grid-x">
                        <div class="cell small-3">
                                <form action="" method="get">
                                    <label>Unesite broj redaka (m):
                                        <input type="number" name="m" value="<?=$m?>" required>
                                    </label>
                                    <br>
                                    <label>Unesite broj stupaca (n):
                                        <input type="number" name="n" value="<?=$n?>" required>
                                    </label>
                                    <br>
                                        <input type="submit" value="Ispiši matricu">
                                </form>

                    <?php

                        // Unos dimenzija matrice (odabir parametara m i n)

                        $m = isset($_GET['m']) ? $_GET['m'] : '';
                        $n = isset($_GET['n']) ? $_GET['n'] : '';

                        $brojPolja = $m * $n;
                        $ulaz = range(1,$brojPolja);
                        $velicinaPodjele = $n;
                        $izlaz = array_chunk($ulaz, $velicinaPodjele);
                        rsort($izlaz);

                        // Stiliziranje matrice uz pomoć tablice (HTML + inline CSS)

                        echo '<br>';
                        echo '<table style="
                        background-color: dodgerblue;
                        border: 4px solid black;
                        border-collapse: collapse;
                        text-align: center;">';

                        // Prolazak kroz retke (m) pomoću FOR petlje

                        for($i=0;$i<$m;$i++) {

                            echo '<tr>';

                        // Prolazak kroz stupce (n) pomoću FOR petlje

                            for($j=0;$j<$n;$j++) {

                                echo '<td style="border: 1px solid black;
                                display: table-cell;
                                text-align: center;
                                padding: 5px;">';
                                
                                echo $izlaz[$i][$j];

                                echo '</td>';

                            }
                            echo '</tr>';
                        }
                        echo '</table>'; 

                    ?>
                        </div>  
                    </div>
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