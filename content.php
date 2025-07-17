<?php
// Menghubungkan ke database
include 'config/conn_db.php';

// Query untuk mengambil data dari tabel images
$sql = "SELECT im.category AS categories, im.imagepath AS imgpath, ig.description AS description 
          FROM images im INNER JOIN imgallery ig ON im.category=ig.category";


$stmt = $conn->prepare($sql);
$stmt->execute();
$images = $stmt->fetchAll(PDO::FETCH_ASSOC);

?>
<div class="container">
  <div>
      <?php
      
      foreach ($images as $image) {
        if ($image['categories'] == $_GET['id']) {
          $title = $image['categories'];
          $desc = $image['description'];
          break;
        }
      }

      echo "
      <h3 class='gal-item'>$title</h3>
      <h5 class='gal-items'>$desc</h5>
      <p class='gal-items' style='padding-top: 0px;'>Tip: Click the image to download the image immediately.</p>
      ";
      ?>
  </div>
  <div class="category" style="padding-bottom: 20px;">
    <?php
    $id = $_GET['id'];
    $imageFile = array('png', 'jpg', 'jpeg', 'gif', 'webp');

    foreach ($images as $image) {
      if ($image['categories'] == $id) {
        $fileExt = pathinfo($image['imgpath'], PATHINFO_EXTENSION);
        if (in_array($fileExt, $imageFile)) {
          echo "
          <a class='text-decoration-none' href='{$image['imgpath']}' download>
            <img class='imgallery' src='{$image['imgpath']}'>
          </a>";
        }
      }
    }

    ?>
  </div>
</div>