<?php
// onderstaand bestand wordt ingeladen
include('../core/header.php');
include('../core/checklogin_admin.php');

?>

<h1>dit is edit user</h1>

<pre>
<?php
print_r($_POST);
?>
</pre>

<?php
if (isset($_POST['editen']) && $_POST['editen'] != '') {

    //echo 'dit komt er binnen: ' .  $_POST['email'];

    $email = $con->real_escape_string($_POST['email']);
    $uid = $con->real_escape_string($_POST['uid']);
    $query1 = $con->prepare("UPDATE admin_user SET email = ? WHERE admin_user_id = ?");

    if ($query1 === false) {
        echo mysqli_error($con);
    }

    $query1->bind_param('si', $email, $uid);
    if ($query1->execute() === false) {
        echo mysqli_error($con);
    }
    echo "Het is aangepast<br>";

    $query1->close();
}


if (isset($_GET['uid']) && $_GET['uid'] != '') {
    $uid = $con->real_escape_string($_GET['uid']);

    $edituserqry = $con->prepare("SELECT admin_user_id,email,password_changed,datetime FROM admin_user WHERE admin_user_id = ? LIMIT 1;");
    // als de voorbereiding niet goed is, geef dan een foutmelding met de msqli-fout
    if ($edituserqry === false) {
        trigger_error(mysqli_error($con));
    } else {
        $edituserqry->bind_param('i', $uid);

        $edituserqry->bind_result($adminId, $email, $password_changed, $datetime);
        // de query wordt uitgevoerd
        if ($edituserqry->execute()) {
            // resultaat van de uitgevoerde query wordt opgeslagen
            $edituserqry->store_result();
            //             de gegevens van de query worden binnengehaald
            while ($edituserqry->fetch()) {
?>
                <form action="" method="POST">
                    <input type="text" name="uid" id="" value="<?php echo $adminId; ?>" readonly>
                    <input type="text" name="email" id="" value="<?php echo $email; ?>">
                    <br>
                    <input type="submit" name="editen" value="Verstuur">
                </form>
<?php
            }
        }
    }
}
?>

<?php
include('../core/footer.php');
?>