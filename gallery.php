<?php
include 'config/conn_db.php';

$searchQuery = isset($_GET['src']) ? $_GET['src'] : '';

$sql = "SELECT * FROM images WHERE LOWER(img_name) LIKE '%$searchQuery%' OR LOWER(category) LIKE '%$searchQuery%'";
$stmt = $conn->prepare($sql);
$stmt->execute();
$images = $stmt->fetchAll(PDO::FETCH_ASSOC);


?>
<div class="container">
    <h3 class="gal-item">Image Gallery</h3>

    <form class="form-inline" method="get" action="index.php">
        <input type="hidden" name="page" value="Gallery">
        <div class="mt-3">
            <input class="form-control mr-sm-2" type="search" placeholder="Search by Name or Category" name="src">
        </div>
        <button class="form-control fw-medium btn btn-sm btn-primary" type="submit">Search</button>
    </form>
    <p class="mt-3 gal-items"><?php echo $searchQuery;?> Images</p>
    <p class='gal-items' style='padding-top: 0px;'>Tip: Click the image to download the image immediately.</p>

    <div class="category" style="padding-bottom: 20px;">
        <?php
        foreach ($images as $image) {
            echo "
            <a class='text-decoration-none' href='{$image['imagepath']}' download>
                <img class='imgallery' src='{$image['imagepath']}' alt='{$image['img_name']}'>
            </a>";
        }
        ?>
    </div>
</div>
