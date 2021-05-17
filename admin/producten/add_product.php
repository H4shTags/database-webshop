<?php

// onderstaand bestand wordt ingeladen
include('../core/header.php');
include('../core/checklogin_admin.php');
?>


<?php
if (isset($_POST['naam_product']) != "") {

    $name = $con->real_escape_string($_POST['naam_product']);
    
    $liqry = $con->prepare("INSERT INTO product (name) VALUES (?) LIMIT 1");
    if ($liqry === false) {
        echo mysqli_error($con);
    } else {
        $liqry->bind_param( 's',$name);
        if ($liqry->execute()) {
            echo "product: " . $name . " toegevoegd.";
        }
    }
    $liqry->close();
}
?>
<form action="" method="POST">
    naam product:<input type="text" name="naam_product">
    <br>
    <br>
    <!-- beschrijving:<input type="text" name="beschrijving_product">
    <br>
    <br> -->
    <!-- Prijs:<input type="text" name="prijs_product">
    <br>
    <br>
    kleur:<input type="text" name="kleur_product">
    <br>
    <br>
    gewicht:<input type="text" name="gewicht_product">
    <br>
    <br> -->
    <input type="submit" name="submit" value="Toevoegen">
</form>

<?php
include('../core/footer.php');
?>