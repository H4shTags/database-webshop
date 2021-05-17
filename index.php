<?php
include('core/header.php');
// include('');

?>
<main>

    <!-- alles voor de Koop nu gedeelte -->
    <section class="section-random">
        <div class="titel-container">
            <h2>Koop nu!</h2>
        </div>
        <div class="wrapper-random">
           <?php include('/xampp/htdocs/programming/webshop/functions/rand_products_functions.php') ?>
        </div>
    </section>

    <!-- alles voor de category producten -->
    <section class="section-category">
        <div class="titel-container">
            <h2>Categorie overzicht</h2>
        </div>
        <div class="wrapper">
            <?php
            include('/xampp/htdocs/programming/webshop/functions/category_function.php')
            ?>
        </div>
    </section>
</main>
<?php
include('core/footer.php');
?>