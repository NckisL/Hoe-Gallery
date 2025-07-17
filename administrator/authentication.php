<?php
session_start();

include('../config/conn_db.php');

//var_dump($_POST);

if(isset($_POST['username'])){
    $username = $_POST['username'];
    $pswd = $_POST['pswd'];

    $stmt = $conn->prepare("SELECT username FROM user WHERE username='$username' AND password=md5('$pswd')");
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);

    //var_dump($stmt);die();

    if($result)
        $_SESSION['auth']=$username;
     else 
        $_SESSION['msg']="Proses login tidak berhasil";
    
    header("Location: index.php");
}

?>