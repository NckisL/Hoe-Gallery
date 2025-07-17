<?php
include 'config/conn_db.php';

$email = $_POST['email'];
$name = $_POST['name'];
$subject = $_POST['subject'];
$msg = $_POST['msg'];
//var_dump($_POST);die();
    
$isi = str_replace("'", "\\'", $msg);

$sql="INSERT INTO contact_admin (email, name, subject, message) VALUES ('$email', '$name', '$subject', '$msg')";
$stmt = $conn->prepare($sql);
//var_dump($sql); die();

    if ($stmt->execute()) {
        echo '<script>alert ("Form Sent");</script>';
        echo '<script>window.location.href = "index.php";</script>';
    }