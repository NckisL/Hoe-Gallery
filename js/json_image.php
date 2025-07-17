<?php

include('../config/conn_db.php');

$stmt = $conn->prepare("SELECT * FROM images");
$stmt->execute();
$result = $stmt->fetchAll(PDO::FETCH_ASSOC);

$data=json_encode($result); //konvert ke json

$c_data = stripslashes($data);

echo $c_data; //cetak
?>