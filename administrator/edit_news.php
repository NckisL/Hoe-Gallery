<?php

if(isset($_GET['id'])){
	$proses="Edit";
	
	$stmt = $conn->prepare("SELECT * FROM berita WHERE id_news='$_GET[id]'");
	$stmt->execute();
	$result = $stmt->fetch(PDO::FETCH_ASSOC);
	
	//var_dump($result);die();
    //var_dump($_GET['id']);die();
	
}else
	$proses="Add";


?>
<div class="container" style="padding-bottom:3rem;">
    <form action="input_news.php" method="post" enctype="multipart/form-data">
        <legend class="mt-5"><?=$proses;?> News</legend>
        <input type="hidden" name="proses" value="<?=$proses;?>">
        <?php 
        if(isset($_GET['id']))
            echo '<input type="hidden" class="form-control" name="id" value="<?php echo $_GET[id];?>">';
        ?>
        <div class="mb-3">
            <label class="form-label">News Title</label>
            <input type="text" class="form-control" name='judul' placeholder="Enter Title"
                value="<?php if(isset($result['judul'])) echo $result['judul'];?>">
        </div>
        <div class="mb-3">
            <label class="form-label">Writer</label>
            <input type="text" class="form-control" name="penulis" placeholder="Enter Writer"
                value="<?php if(isset($result['penulis'])) echo $result['penulis'];?>">
        </div>
        <div class="mb-3">
            <label class="form-label">Date</label>
            <input type="date" class="form-control" name="tanggal"
                value="<?php if(isset($result['tanggal'])) echo $result['tanggal'];?>">
        </div>
        <div class="mb-3">
            <label class="form-label">News Content</label>
            <textarea class="form-control" name="isi" placeholder="Enter Content"><?php
            if(isset($result['isi'])) echo $result['isi'];?></textarea>
        </div>
        <div class="mb-3">
            <label class="form-label">Image(Optional)</label>
            <input type="file" class="form-control" name="gambar">
            <?php if(isset($_GET['id'])) echo "
                                            <input type='hidden' name='gambar2' value='$result[gambar]'>
                                            <img src='../Images/News/".$result['gambar']. "' alt='".$result['gambar']. "' Class='news-img'>"; ?>
        </div>
        <input type="submit" class="btn btn-primary" value="<?=$proses?>">
    </form>
</div>
