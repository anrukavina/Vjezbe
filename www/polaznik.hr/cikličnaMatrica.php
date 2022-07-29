<!doctype html>
<html class="no-js" lang="en" dir="ltr">

<head>

    <!-- Start zaglavlje -->
        <?php require_once 'zaglavlje.php'; ?>
    <!-- End zaglavlje -->

</head>
<body>

    <header>

        <div class="grid-container" id="container">      

        <!-- Start izbornik -->
            <?php require_once 'izbornik.php'; ?>
        <!-- End izbornik -->

    </header>
    
    <main>
        <!-- Start tijelo -->
                  
          <div class="tekst-zadatka">
            <div class="callout">
              <h5>LJETNI ZADATAK 1: Ciklična matrica</h5>
            </div>
          </div>

          <div class="callout" id="callout-zajednicki">
            <div class="grid-x grid-margin-x">
              <div class="cell small-4" id="prva-celija">
                <form action="" method="get">
                    <label id="broj-redaka">Broj redaka
                        <input id="broj-redaka-input" type="number" name="row" value="<?=$row?>" min=1 required>
                    </label>
                    <br>
                    <label id="broj-stupaca">Broj stupaca
                        <input id="broj-stupaca-input" type="number" name="col" value="<?=$col?>" min=1 required>
                    </label>
                    <br>
                    <label>
                        <input id="submit-dugme" type="submit" name="submit" value="kreiraj tablicu">
                    </label>
                </form>
              </div>
              <div class="cell small-5" id="druga-celija">
                <?php
                
                 echo '<table class="tablica">';

                  // Deklariraju se vrijednosti redaka i stupaca kojima korisnik, putem GET forme,
                  // određuje dimenziju matrice
                     
                  $brojRedaka = isset($_GET['row']) ? $_GET['row'] : 0;
                  $brojKolona = isset($_GET['col']) ? $_GET['col'] : 0;
                  
                  // Deklariraju se vrh i dno, lijeva i desna strana matrice, te indeksna (početna) 
                  // vrijednost, kako bi se moglo "putovati" matricom i pridruživati vrijednosti
                  
                  $vrh = 0;
                  $dno = $brojRedaka - 1;
                  $lijevo = 0;
                  $desno = $brojKolona - 1;
                  $indeksnaVrijednost = 1;

                  while ($brojRedaka != 0 && $brojKolona != 0 ) {
                   
                    // Popunjavanje vrijednosti DONJEG REDA matrice
                     for ($i = $desno; $i >= $lijevo; $i--) {
                           $mat[$dno][$i] = $indeksnaVrijednost++;
                           }
                     $dno--;
                    
                    // Ukoliko su svi gornji redovi matrice popunjeni program će se prekinuti
                     if ($vrh > $dno) { 
                           break;
                           }

                    // Popunjavanje vrijednosti LIJEVOG STUPCA matrice
                     for ($i = $dno; $i >= $vrh; $i--) {
                           $mat[$i][$lijevo] = $indeksnaVrijednost++;
                           }
                     $lijevo++;

                    // Ukoliko su svi stupci s lijeve strane popunjeni program će se prekinuti 
                     if ($lijevo > $desno) { 
                           break;
                           }

                    // Popunjavanje vrijednosti GORNJEG REDA matrice
                     for ($i = $lijevo; $i <= $desno; $i++) {
                           $mat[$vrh][$i] = $indeksnaVrijednost++;
                       }
                     $vrh++;

                    // Ukoliko su svi gornji redovi matrice popunjeni program će se prekinuti
                     if ($vrh > $dno) { 
                           break;
                           }

                    // Popunjavanje vrijednosti DESNOG STUPCA matrice
                     for ($i = $vrh; $i <= $dno; $i++) {
                           $mat[$i][$desno] = $indeksnaVrijednost++;
                       }
                     $desno--;

                    // Ukoliko su svi stupci s lijeve strane popunjeni program će se prekinuti
                     if ($lijevo > $desno) { 
                           break;
                           }
                  }
                   
                 // Ispisivanje matrice pomoću FOR petlje i HTML tablice
                  for ($i = 0; $i < $brojRedaka; $i++) {
                    echo '<tr>';
                      for ($j = 0; $j < $brojKolona; $j++) {
                           
                        if ($mat[$i][$j] == $brojRedaka * $brojKolona) {
                          echo '<td style="background-color: red">';
                            echo $mat[$i][$j];
                          echo '</td>';
                        } 
                          elseif ($mat[$i][$j] == $mat[$brojRedaka - 1][$brojKolona - 1] ) {
                            echo '<td style="background-color: gray">';
                              echo $mat[$i][$j];
                            echo '</td>';
                          }
                          else {
                            echo '<td>';
                              echo $mat[$i][$j];
                            echo '</td>';
                          }
                        
                       }
                     echo '</tr>';
                        
                   }
                  echo '</table>';

                 ?>
              </div>
            </div>
          </div>    
        <!-- End tijelo -->  
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