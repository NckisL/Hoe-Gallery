<?php
include '../config/conn_db.php';

//var_dump($_POST);die();
    //var_dump($_FILES);die();
$proses=$_POST["proses"];

$id = $_POST['id'];
$judul = $_POST['judul'];
$isi = $_POST['isi'];
$penulis = $_POST['penulis'];
$tanggal = $_POST['tanggal'];
$nama_gambar = $_FILES['gambar']['name'];
$tmp_gambar = $_FILES['gambar']['tmp_name'];
$nama_gambar2 = $_POST['gambar2'];

    //var_dump($_FILES);die();
$isi = str_replace("'", "\\'", $isi);

move_uploaded_file($tmp_gambar, "../Images/News/".$nama_gambar);

if($proses=="Add"){ //insert record baru
	$sql="INSERT INTO berita (judul, isi, penulis, tanggal, gambar)
        VALUES (('$judul'), ('$isi'), ('$penulis'), ('$tanggal'), ('$nama_gambar'))";

} else{ //update record
    if($nama_gambar==""){
        $sql="UPDATE berita SET judul='$judul', isi='$isi', penulis='$penulis', 
            tanggal='$tanggal', gambar='$nama_gambar2' WHERE id_news='$id'";
    }else{
		$sql="UPDATE berita SET judul='$judul', isi='$isi', penulis='$penulis', 
            tanggal='$tanggal', gambar='$nama_gambar' WHERE id_news='$id'";
    }
}
$stmt = $conn->prepare($sql);
//var_dump($sql); die();
if ($stmt->execute()) {
    if ($proses=="Add"){}
        header("Location: index.php?page=news");
    }else {
        header("Location: index.php?page=news");
    }


?>