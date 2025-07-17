<?php
include '../config/conn_db.php';

$category = $_POST['category'];
$description = $_POST['desc'];
$nama_gambar = $_FILES['gambar']['name'];
$tmp_gambar = $_FILES['gambar']['tmp_name'];
//var_dump($_POST);die();
//var_dump($_FILES);die();


$folder_path = "../Images/" . $category;
if (!is_dir($folder_path)) {
    mkdir($folder_path, 0777, true);
}

move_uploaded_file($tmp_gambar, "../Images/".$category."/".$nama_gambar);

$sql="INSERT INTO imgallery (category, description, imgpath) VALUES ('$category', '$description', '$nama_gambar')";

$stmt = $conn->prepare($sql);
//var_dump($sql); die();
if ($stmt->execute()) {
    header("Location: index.php");
} else
    echo '<script>alert ("Failed to Add Category");</script>';
?>