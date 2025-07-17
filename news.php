<div class="container">

    
<?php
include "config/conn_db.php";

$sql = "SELECT * FROM berita";
$stmt = $conn->prepare($sql);
$stmt->execute();
$hasil = $stmt->fetchAll(PDO::FETCH_ASSOC);

if (count($hasil) > 0) {
    foreach($hasil as $row) {
        echo "<div class='card mb-3 mt-3'>";
        echo "<div class='blog-post container'>";
        echo "<h3 class='blog-post-title'>".$row['judul']."</h3>";
        echo "<p class='blog-post-meta'>".$row['tanggal']." by ".$row['penulis']."</p>";
        if (!empty($row['gambar'])) {
            echo "<img src='Images/News/".$row['gambar']."' class='img-fluid' alt='News Image'><br>";
        } else {
            echo "<p>----------------------------------------------------------</p>";
        }
        echo "<br><p>".$row['isi']."</p>";
        echo "</div>";
        echo "</div>";
    }
} else {
    echo "<h3 class='blog-post-title'>No News Available</h3>";
}

?>
</div>