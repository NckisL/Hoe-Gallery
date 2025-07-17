<?php
// Menghubungkan ke database
include 'config/conn_db.php';

// Query untuk mengambil data dari tabel imgallery
$sql = "SELECT * FROM imgallery";
$stmt = $conn->prepare($sql);
$stmt->execute();
$images = $stmt->fetchAll(PDO::FETCH_ASSOC);
shuffle($images);
?>

<div class="container-fluid" style="padding-bottom: 20px;">
  <div>
      <h2 class="galmain">Collections</h2>
      <p class="galmain">Welcome to our collections. See various types of images that are interesting.</p>
  </div>
  <div class="row padd row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4">
    <?php 

    foreach ($images as $image) {
      $imgPath = $image['imgpath'];
      $title = $image['category'];
      $desc = $image['description'];

      echo "
      <div class='col'>
        <div class='card rounded-1 shadow-sm h-100'>
          <img class='object-fit-cover' style='border-radius: 2.9px 2.9px 0 0;' src='Images/$title/$imgPath'>
          <div class='card-body'>
            <h5 class='card-title fw-bold'>$title</h5>
            <p class='card-text fw-medium'><small>$desc</small></p>
            <div class='btn-group float-end'>
              <a class='fw-medium btn btn-sm btn-primary' href='index.php?page=content&id=$title'>View</a>
            </div>
          </div>
        </div>
      </div>
    ";
    }
    ?>
  </div>
</div>
  