<?php
include '../config/conn_db.php';

    //var_dump($_FILES);die();
$proses=$_POST["proses"];
if(isset($_GET['id'])) $id = $_POST['id'];
$imgname = $_POST['name'];
$category = $_POST['category'];
$nama_gambar = $_FILES['gambar']['name'];
$tmp_gambar = $_FILES['gambar']['tmp_name'];
$imgpath = "Images/".$category."/".$nama_gambar;
$imgpath2 = $_POST['gambar2'];

    //var_dump($_FILES);die();

move_uploaded_file($tmp_gambar, "../Images/".$category."/".$nama_gambar);


if($proses=="Add"){ //insert record baru
	$sql="INSERT INTO images (img_name, category, imagepath) VALUES ('$imgname', '$category', '$imgpath')";

} else{ //update record
    if($nama_gambar==""){
        $sql="UPDATE images SET img_name='$imgname', category='$category', imagepath='$imgpath2' WHERE id_img='$id'";
    }else{
		$sql="UPDATE images SET img_name='$imgname', category='$category', imagepath='$imgpath' WHERE id_img='$id'";
    }
}
$stmt = $conn->prepare($sql);
//var_dump($sql); die();
if ($stmt->execute()) {
    if ($proses=="Add")
        header("Location: index.php");
    }else {
        header("Location: index.php");
    }

?>