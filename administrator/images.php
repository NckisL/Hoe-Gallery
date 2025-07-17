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
	
}else
	$proses="Add";


?>

<div class="container">

<h2 class="text-center mt-3 mb-3">Images</h2>

<div>
	<a class="btnTambah btn btn-primary"><i class="fa-solid fa-plus"></i> Add Images</a>
  <a class="btn btn-primary" href="index.php?page=categ"><i class="fa-solid fa-plus"></i> Add Category</a>
</div>

<table class="table table-hover table-striped">
    <thead>
        <td>No.</td>
        <td>Image Name</td>
        <td>Category</td>
        <td>Images</td>
        <td>Action</td>
    </thead>
    <tbody></tbody>
</table>

<div class="modal fade" id="addImgModal" tabindex="-1" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><?=$proses?> Images</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
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
                    <img src='../Images/".$result['category']."/".$result['imagepath']. "' alt='".$result['img_name']. "' Class='news-img'>"; ?>
          </div>
          <div class="mb-3">
            <input type="submit" class="btn btn-primary" value="<?=$proses?>"></input>
          </div>
        </form>  
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
        
      </div>
    </div>
  </div>
</div>

<script>
  $(document).ready(function(){

    $.ajax({
      url: 'http://localhost/hoegallery_v2/js/json_image.php',
        method: 'post',
        dataType: 'json',
        success: function(result){
          console.log(result);
          let row, table="";
          $.each(result, function(key, value){
            //alert(value.id_img);
            row = '<tr>';
            row += '<td>' + value.id_img + '</td>';
            row += '<td>' + value.img_name + '</td>';
            row += '<td>' + value.category + '</td>';
            row += "<td><img src='../" + value.imagepath + "' alt='"+ value.img_name +"' Class='news-img'></td><td>";
            row += '<a href="index.php?page=edimg&id='+value.id_img+'" class="btn btn-primary"><i class="fa-solid fa-pen-to-square"></i></a> ';
            row += '<a href="delete_img.php?id=' + value.id_img + '"class="btn btn-danger"><i class="fa-solid fa-trash"></i></a>';
            row += '</td>';
            row += '</tr>';
            table += row;
          });

          //alert(table);

          $('tbody').append(table);

          $('.btnTambah').on("click", function(){
            $('#addImgModal').modal('show');
          });

        }
    });

  })
</script>