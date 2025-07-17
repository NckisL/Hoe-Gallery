<?php
// Database connection
include 'config/conn_db.php';

// Tentukan path ke folder Images dan kategori-kategori
$imageFolders = [
    'Animals' => 'Images/Animals',
    'Animation' => 'Images/Animation',
    'Christmas' => 'Images/Christmas',
    'Decorative' => 'Images/Decorative',
    'Fantasy' => 'Images/Fantasy',
    'Food' => 'Images/Food',
    'Game' => 'Images/Game',
    'Horror' => 'Images/Horror',
    'Music' => 'Images/Music',
    'Nature' => 'Images/Nature',
    'Photography' => 'Images/Photography',
    'Sports' => 'Images/Sports',
    'Travel' => 'Images/Travel',
    // Tambahkan kategori lain di sini
];

foreach ($imageFolders as $category => $folderPath) {
    $files = glob($folderPath . '/*.{jpg,jpeg,png,gif}', GLOB_BRACE);

    foreach ($files as $file) {
        $imgName = basename($file);
        $imgPath = $file;

        // Query untuk menyimpan data gambar ke dalam tabel images
        $sql = "INSERT INTO images (img_name, category, imagepath) VALUES (?, ?, ?)";
        $stmt = $conn->prepare($sql);
        $stmt->execute([$imgName, $category, $imgPath]);
    }
}

$conn = null;
?>
