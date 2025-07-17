<?php


$stmt = $conn->prepare("SELECT * FROM berita");
$stmt->execute();
$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
//var_dump($result);die();

?>

<div class="container-fluid" style="padding-bottom:3rem;">


<h1 class="text-center" style="padding-top: 2rem;">List News</h1>

<div>
	<a href="index.php?page=ednews" class="btn btn-primary"><i class="fa-solid fa-plus"></i> Add News</a>
</div>

<table class="table table-bordered mt-2">
    <thead>
        <td>No.</td>
        <td>Title</td>
        <td>Writer</td>
        <td>Date</td>
		<td>Image</td>
        <td>Content</td>
        <td>Action</td>

    </thead>
<?php
//menghandle isi tabel
//var_dump($result);

foreach($result as $row){

    echo "<tr>";  //baris baru di tabel

    echo "<td>".$row['id_news'].".</td>"; 
    echo "<td>".$row['judul']."</td>";
    echo "<td>".$row['penulis']."</td>";
    echo "<td>".$row['tanggal']."</td>";
    echo "<td><img src='../Images/News/".$row['gambar']. "' alt='".$row['gambar']. "' Class='news-img'></td>";
    echo "<td>".$row['isi']."</td>";
	echo '<td>';
    echo '<a href="index.php?page=ednews&id='.$row['id_news'].'" class="btn btn-primary"><i class="fa-solid fa-pen-to-square"></i></a> ';
    echo '<a href="delete_news.php?id='.$row['id_news'].'" class="btn btn-danger"><i class="fa-solid fa-trash"></i></a>';
    echo '</td>';
    echo "</tr>";
}


?>

</table>
</div>

