<!doctype html>
<html class="no-js" lang="en" dir="ltr">
  <head>
    <?php require_once 'zaglavlje.php'; ?>
  </head>
<body>
    <div class="grid-container">
    <?php include_once 'izbornik.php'; ?>
    <!-- Start tijelo -->
      <div class="grid-x grid-margin-x" id="tijelo">
        <div class="cell large-2 medium-4 small-6">
          <div class="primary callout">
            <?php echo $_GET['par1']; ?>
          </div>
        </div>
        <div class="cell large-2 medium-4 small-6">
          <div class="success callout">  
            <?php echo $_GET['par2']; ?>
          </div>
        </div>
        <div class="cell large-2 medium-4 small-6">
          <div class="warning callout">
            <?php echo $_GET['par3'];?>
          </div>
        </div>
        <div class="cell large-2 medium-4 small-6">
          <div class="alert callout">
            <?php echo $_GET['par4']; ?>
          </div>
      </div>
    <!-- End tijelo -->
    </div>
    <?php 
    // čitati https://www.tutorialrepublic.com/php-tutorial/php-include-files.php
    require_once 'podnozje.php'; ?>
    <?php require_once 'jsskripte.php'; ?>  
  </body>
</html>

// TEST: ?par1=Parametar_1&par2=Parametar_2&par3=Parametar_3&par4=Parametar_4

// Stranica prima 4 parametara i ispisuje ih jedno
// pored drugom svaki u svom panelu (callout)
// na large širini