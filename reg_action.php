<?php
include 'config/conn_db.php';

$username = $_POST['username'];
$password = $_POST['password'];
$email = $_POST['email'];

$sql="INSERT INTO user (username, password, email) VALUES ('$username', md5('$password'), '$email')";

$stmt = $conn->prepare($sql);
//var_dump($sql); die();

if ($stmt->execute())
    header("Location: index.php");

?>