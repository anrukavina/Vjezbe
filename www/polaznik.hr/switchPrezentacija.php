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
                    <p>Unesite naziv jednog grada, od izbora sljedećih gradova:</p>
                    <ul>
                        <li>Požega</li>
                        <li>Osijek</li>
                        <li>Zagreb</li>
                        <li>Split</li>
                    </ul>

                    <form action="" method="get">
                            
                            <label for="naj-grad"><h5>Najbolji grad je:</h5> 
                                <input type="text" name="naj-grad" id="naj-grad" value="<?$grad?>">

                            </label>

                        <input class="success button expanded" type="submit" name="submit" value="Predaj">
                    </form>

                    <?php


                        if (isset($_GET['submit']) ? $_GET['submit'] : '') {

                            $najgrad = $_GET['naj-grad'];

                            switch($najgrad) {
                                case 'Požega':
                                    echo '<h5>Najbolji grad</h5>';
                                    break;
                                case 'Osijek':
                                    echo '<h5>Dosta dobar grad</h5>';
                                    break;
                                case 'Zagreb':
                                case 'Split':
                                    echo '<h5>Veliki grad</h5>';
                                    break;
                                default:
                                    echo '<h5>Nepoznato</h5>';

                            }
                        }
                        
                    ?>


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