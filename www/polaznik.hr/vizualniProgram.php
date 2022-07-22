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
                <div class="callout">
                    <p>Program će unesene brojeve najprije zbrojiti, zatim pomnožiti sa 100, pa uvećati za 10.</p>
                </div>
            </div>

            <div class="cell">
                <div class="callout" style="background-color:white;">

                        <?php
                            $x = isset($_GET['x']) ? $_GET['x'] : 0;
                            $y = isset($_GET['y']) ? $_GET['y'] : 0;
                        ?>

                    <form action="" method="get">                    
                        x:
                        <input type="number" name="x" id="x" value="<?=$x?>">

                        y:
                        <input type="number" name="y" id="y" value="<?=$y?>"">

                        <input class="success button" type="submit" value="Izračunaj" style="border:1px solid black;
                        background-color:lightgray;">

                       
                       <a class="alert button" href="vizualniProgram.php"
                       style="border:1px solid black;
                       text-de">Reset</a>         

                        <?php

                        if(($_GET['x']) === '' && ($_GET['y']) === '') {
                                echo '';
                            }
                            else {
                                $rez = $x + $y;
                                $rez *= 100;
                                $rez += 10;
                                echo '<br />','Rezultat: ',$rez;
                            }
                        ?>

                    </form>
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