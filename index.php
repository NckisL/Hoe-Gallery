<!DOCTYPE html>
<html>
<?php include('config/conn_db.php'); ?>
<?php include('framework/html_head.php'); ?>
<body>
    <?php
    include('framework/navbar.php');

    if (isset($_GET["page"])) {
        $page = $_GET["page"];
    } else {
        $page = "";
    }

    switch ($page) {
        case 'Gallery':
            $content = "gallery.php";
            break;
		case 'Collections':
            $content = "collections.php";
            break;
        case 'About':
            $content = "about.php";
            break;
        case 'credit':
            $content = "credit.php";
            break;
        case 'news':
            $content = "news.php";
            break;
        case 'content':
            $content = "content.php";
            break;
        case 'contact':
            $content = "contact_admin.php";
            break;
        case 'register':
            $content = "register.php";
            break;
        default:
            $content = "home.php";
    }

    include($content);
    ?>
    </div>
    <?php include "framework/footer.php"; ?>
</body>
</html>
