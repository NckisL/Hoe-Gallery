<?php
session_start();
?>

<!DOCTYPE html>
<html>
	
	<?php include('../config/conn_db.php');?>
	<?php include('../framework/html_head.php');?>
	
	<body>
		<?php
		if(!isset($_SESSION['auth'])){
		
		?>
			<!--login page-->
			<div class="container mt-5">
				<h2>Login as Admin</h2>
				<?php
				if(isset($_SESSION['msg'])){
					echo '<div class="alert alert-primary" role="alert">';
					echo 'Warning: '.$_SESSION['msg'];
					echo '</div>';
					unset($_SESSION['msg']);
				}?>
				<form method="POST" action="authentication.php">
					<div class="mb-3">
						<label class="form-label">Username</label>
						<input type="text" class="form-control" name="username">
					</div>
					<div class="mb-3">
						<label class="form-label">Password</label>
						<input type="password" class="form-control" name="pswd">
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
				</form>
			</div>

		<?php
		} else {
		?>

			<!--show dashboard-->
			<?php include('../framework/navbar_admin.php');?>
			
			<div class="container-fluid">
			
			<?php
			
			
			if(isset($_GET["page"]))	
				$page=$_GET["page"];
			else 
				$page="";
			
				switch ($page) {	
					case "edstk":
						$content="edit_stock.php";
						break;
					case "news":
						$content="admin_news.php";
						break;
					case "ednews":
						$content="edit_news.php";
						break;
					case "usr":
						$content="user.php";
						break;
					case "rdmsg":
						$content="read_contact.php";
						break;
					case "edimg":
						$content="edit_img.php";
						break;
					case "lgout":
						$content="logout.php";
						break;
					case "categ":
						$content="add_category.php";
						break;

					default:
						$content="images.php";
				}
			
			include($content);
			
			?>
			</div>
		
		<?php } ?>
		<style>
			<?php include "style.css"?>
		</style>
	</body>

</html>