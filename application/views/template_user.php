<!DOCTYPE html>
<html lang="en">
<head>
	<title>Home</title>
	<?php require_once('user/layout/css.php');?>

</head>

<body class="animsition">
<header>
<?php require_once('user/layout/sidebar.php');?>

</header>

	<div class="page-wrapper">
        <div class="content">
            <?php echo $contents?>
        </div>
    </div>
	<?php require_once('user/layout/js.php');?>
	<?php require_once('user/layout/footer.php');?>

</body>

</html>