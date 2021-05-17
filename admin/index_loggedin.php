<?php
include('core/header.php');
include('core/checklogin_admin.php');
?>

<h3>Welkom gebruiker <?php echo $_SESSION['Sadmin_email']; ?></h3>

<ul>
    <li><a href="users/">Gebruikers</a></li>
    <li><a href="orders/">Bestellingen</a></li>
    <li><a href="producten">Producten</a></li>
</ul>
<?php
include('core/footer.php');
?>