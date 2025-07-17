<div class="container">
    <form action="add_cate_proc.php" method="post" enctype="multipart/form-data">
        <div class="mb-3">
            <label class="form-label">Category</label>
            <input type="text" class="form-control" name="category">                
        </div>
        <div class="mb-3">
            <label class="form-label">Description</label>
            <input type="text" class="form-control" name="desc"> 
        </div>
        <div class="mb-3">
            <label class="form-label">Images</label>
            <input type="file" class="form-control" name="gambar">
        </div>
        <div class="mb-3">
            <input type="submit" class="btn btn-primary"></input>
        </div>
    </form>  
</div>