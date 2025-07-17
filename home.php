<?php
// Menghubungkan ke database
include 'config/conn_db.php';

// Query untuk mengambil data dari tabel imgallery
$sql = "SELECT * FROM imgallery";
$stmt = $conn->prepare($sql);
$stmt->execute();
$images = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<div class="container-fluid padding-home bg-image"style="position: relative;">
	<img id="gambar" src="Images/Animals/mammal-cat-002.jpg">
  <div>
    <h1 class="homesl">The Gallery that Digs Your Creativity</h1>
    <p class="hometxt">Find various themes of images that you can download for free, from nature, animals, humans, to fantasy and Many More!</p>
  </div>
	<a href="index.php?section=Gallery" class="homebtn">Explore</a>
</div>
<div class="featured">
  <h2 class="gal-item">Featured Images</h2>
  <p class="gal-items">Find various themes of images that you can download for free</p>
  <div class="row">
    <?php
    // Hanya menampilkan 4 gambar pertama
    for ($i = 0; $i < 4; $i++) {
      $image = $images[$i];
      $imgPath = $image['imgpath'];
      $category = $image['category'];
      $description = $image['description'];

      echo '<div class="homeimg">';
      echo '<a class="hm-text" href="index.php?page=content&id=' . $category . '">';
      echo '<img class="object-fit-cover home-height" src="Images/' . $category .'/'. $imgPath . '">';
      echo '<span class="hm-txt-sz">' . $category . '</span>';
      echo '</a>';
      echo '</div>';
    }
    ?>
  </div>
  <div class="row">
    <div class="homeimg" style="width: 96%; margin: 20px;">
      <a class="hm-text" href="index.php?page=Gallery">
        <span class="hm-txt-sz">See More</span>
      </a>
    </div>
  </div>
</div>

