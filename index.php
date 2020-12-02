<?php
include_once("dbConnect.php");
$db = new DB;
include_once("header.php");
?>
<div>
    <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
        Navn: <input type="text" name="name" /><br />
        Fødselsdato: <input type="text" name="birthday" /><br />
        Adresse: <input type="text" name="address" /><br />
        Postnummer: <input type="number" name="zipcode" /><br />
        By: <input type="text" name="city" /><br />
        Telefon: <input type="number" name="phone" /><br />
        Email: <input type="text" name="email" /><br />
        <input type="submit" value="Opret konto i Korrupt bank!" /><br />
    </form>
</div>
<div>
    <?php
    $sql = "INSERT INTO `kunder` (`name`, `birthday`, `address`, `zipcode`, `city`, `phone`, `email`) VALUES (:name, :birthday, :address, :zipcode, :city, :phone, :email);";
    $values = [
        [":name", $_REQUEST['name']],
        [":birthday", $_REQUEST['birthday']],
        [":address", $_REQUEST['address']],
        [":zipcode", $_REQUEST['zipcode']],
        [":city", $_REQUEST['city']],
        [":phone", $_REQUEST['phone']],
        [":email", $_REQUEST['email']],
    ];
    $db->query($sql, $values);
    if(!empty($_REQUEST['name'])) {
        ?>
        Navn: <?php echo $_REQUEST['name']; ?><br />
        Fødselsdato: <?php echo $_REQUEST['birthday']; ?><br />
        Adresse: <?php echo $_REQUEST['address']; ?><br />
        Postnummer: <?php echo $_REQUEST['zipcode']; ?><br />
        By: <?php echo $_REQUEST['city']; ?><br />
        Telefon: <?php echo $_REQUEST['phone']; ?><br />
        Email: <?php echo $_REQUEST['email']; ?><br />
        <?php
    }
    ?>
</div>
<?php
include_once("footer.php");
