<?php
include_once("dbConnect.php");
$db = new DB;
include_once("header.php");
?>
<h1>Kunder</h1>
<?php
$query = "SELECT `name`, `birthday`, `address`, `zipcode`, `city`, `email`, `phone`, `tilmeldt`, `udmeldt`";
$query .= "FROM `kunder`";
$result = $db->query($query);
?>
<table border="1px solid #000000;">
    <th>
        <td>Navn</td>
        <td>Fødselsdato</td>
        <td>Adresse</td>
        <td>Postnummer</td>
        <td>By</td>
        <td>Email</td>
        <td>Telefon</td>
        <td>Tilmeldt</td>
        <td>Udmeldt</td>
    </th>
    <?php
    foreach($result as $row) {
        ?>
        <tr>
            <td><?php echo $row['name']; ?></td>
            <td><?php echo $row['birthday']; ?></td>
            <td><?php echo $row['address']; ?></td>
            <td><?php echo $row['zipcode']; ?></td>
            <td><?php echo $row['city']; ?></td>
            <td><?php echo $row['email']; ?></td>
            <td><?php echo $row['phone']; ?></td>
            <td><?php echo $row['tilmeldt']; ?></td>
            <td><?php echo $row['udmeldt']; ?></td>
        </tr>
        <?php
    }
    ?>
</table>
<?php
include_once("footer.php");
