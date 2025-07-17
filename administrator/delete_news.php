<?php
include('../config/conn_db.php');

if(isset($_GET["id"])){
    $id=$_GET["id"];
    $sql = "DELETE FROM berita WHERE id_news = '$id'";


    if($conn->exec($sql)){
		//berhasil
		    echo '<script>alert ("Delete Success");</script>';
        echo '<script>window.location.href = "index.php?page=news";</script>';
    }else
        //gagal
        echo "Delete Failed";
    
}
?>