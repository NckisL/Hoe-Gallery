<?php
$stmt = $conn->prepare("SELECT * FROM imgallery");
$stmt->execute();
$cat_result = $stmt->fetchAll(PDO::FETCH_ASSOC);

if(isset($_GET['id'])){
	$proses="Edit";
	
	$stmt = $conn->prepare("SELECT * FROM images WHERE id_img='$_GET[id]'");
	$stmt->execute();
	$result = $stmt->fetch(PDO::FETCH_ASSOC);
	
	//var_dump($result);die();
  //var_dump($_GET['id']);die();
	
}
?>
<div class="container">
    <form action="img_proccess.php" method="post" enctype="multipart/form-data">
        <div class="mb-3">
            <input type="hidden" name="proses" value="<?=$proses;?>">
            <?php 
            if(isset($_GET['id']))
                echo '<input type="hidden" class="form-control" name="id" value="<?php echo $_GET[id];?>">';
            ?>
            <label class="form-label">Image Name</label>
            <input type="text" class="form-control" name="name" value="<?php if(isset($result['img_name'])) echo $result['img_name'];?>">                
        </div>
        <div class="mb-3">
            <label class="form-label">Category</label>
            <select class="form-control" name="category">
                <?php
                foreach($cat_result as $val)
                if($result['category']==$val['category'])
                    echo '<option value="'.$val['category'].'" selected>'.$val['category'].'</option>';
                else
                    echo '<option value="'.$val['category'].'">'.$val['category'].'</option>';
                ?>
            </select>
        </div>
        <div class="mb-3">
            <label class="form-label">Images</label>
            <input type="file" class="form-control" name="gambar">
            <?php if(isset($_GET['id'])) echo "
                    <input type='hidden' name='gambar2' value='$result[imagepath]'>
                    <img src='../".$result['imagepath']. "' alt='".$result['img_name']. "' Class='news-img'>"; ?>
        </div>
        <div class="mb-3">
            <input type="submit" class="btn btn-primary" value="<?=$proses?>"></input>
        </div>
    </form>  
</div>