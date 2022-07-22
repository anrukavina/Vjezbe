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
                    <p>Program je nasumično ispisao 2 vrijednosti varijable <b>$a</b> i  varijable <b>$b</b>. Unesite rezultat računskog zadatka, a program će Vam reći je li isti <b>točan<b> ili <b>netočan</b>.</p>

                    <?php

                        if(isset($_GET['rez'])) {
                            $rez = $_GET['rez'];
                            $a = $_GET['a'];
                            $b = $_GET['b'];
                            $J = $b;
                            $rezKod = $a + ++$J;
                            $rezKod1 = $rezKod + $b;
                        } else {
                            $rez = '';
                            $a = rand(1,5);
                            $b = rand(1,5);
                            $J = $b;
                            $rezKod = $a + ++$J;
                            $rezKod1 = $rezKod + $b;                        
                        }

                    ?>
                </div>
            

            
                <div class="ulaz" style="
                padding: 15px 30px;">
                    
                    a = <?=$a?>
                    <br>
                    b = <?=$b?>
                    <br>
                    rez = a + ++b
                    <br>
                    rez += b

                </div>
            
            
            
                <div class="callout">
                    rez = ?
                    <form action="" method="get">                    
                        <label>
                            <input type="number" name="rez"
                            value="<?=$rez?>" required>
                            <input type="hidden" name="a" value="<?=$a?>">
                            <input type="hidden" name="b" value="<?=$b?>">
                            <input class="success button" type="submit" value="Izračunaj" style="border:1px solid black;
                            background-color:lightgray;">
                            <a class="alert button" href="vizualniProgram1.php"
                        style="border:1px solid black;">Reset</a>
                            <input class="warning button" type="submit" name="pomoc" value="Pomoć" style="border:1px solid black;">    
                        </label>
                    </form>

                            <?php

                            if(isset($_GET['rez']) && $rez == $rezKod1) {
                                echo 'Bravo, Vaš odgovor je točan!';
                            } elseif(isset($_GET['rez']) && $rez === '') {
                                echo '';
                            } elseif(isset($_GET['rez']) && $rez != $rezKod1 && isset($_GET['pomoc'])) {
                                echo 'Odgovor je: '.$rezKod1; 
                            } elseif(isset($_GET['rez']) && $rez != $rezKod1) {
                                echo 'Netočan odgovor, pokušajte ponovno ili odaberite pomoć!';
                            }

                            ?>
                    
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