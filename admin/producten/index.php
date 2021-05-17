<?php
include('../core/header.php');
include('../core/checklogin_admin.php');
?>
<h3>Producten Overzicht</h3>

<a href="add_products.php">Add product</a>

<?php
$liqry = $con->prepare("SELECT product_id, name  FROM `product` WHERE 1");
if ($liqry === false) {
    echo mysqli_error($con);
} else {
    $liqry->bind_result( $product_id, $product_name, );
    if ($liqry->execute()) {
        $liqry->store_result();
        while ($liqry->fetch()) {
?>
<p>Product: <?php echo $product_name ?> ID:<?php echo $product_id ?> <a href="delete_products.php">delete</a> <a href="edit_products.php">edit</a> </p>

<?php
        }
    }
    $liqry->close();
}
?>
<?php
include('../core/footer.php');
?>