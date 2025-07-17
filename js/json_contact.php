<?php

include('../config/conn_db.php');

$stmt = $conn->prepare("SELECT * FROM contact_admin");
$stmt->execute();
$result = $stmt->fetchAll(PDO::FETCH_ASSOC);

$data=json_encode($result); //konvert ke json
echo $data; //cetak
?>