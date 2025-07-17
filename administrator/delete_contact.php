<?php
include('../config/conn_db.php');

if(isset($_GET["id"])){
    $id=$_GET["id"];
    $sql = "DELETE FROM contact_admin WHERE id_contact = '$id'";


    if($conn->exec($sql)){
		//berhasil
		    echo '<script>alert ("Delete Success");</script>';
        echo '<script>window.location.href = "index.php?page=rdmsg";</script>';
    }else
        //gagal
        echo "Delete Failed";
    
}
?>