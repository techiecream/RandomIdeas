<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="description" content="Given a text file with numbers on each line, shuffle them to make appear that the numbers are random">
<meta name="keywords" content="random,numbers,shuffle,php,text,">
<meta name="author" content="Kizige Stephen">
<meta name="version" content="1.0">
<link rel = "stylesheet" type= "text/css" href = "style.css" media= "screen"/>
<script src="jquery.js"></script>
<title>NUMBER SHUFFLE</title>
</head>
<body>
    <form method="POST" enctype="multipart/form-data">
	<h1>SHUFFLE NUMBERS</h1>
        <input type="file" name="file">
        <input type="submit" value="SHUFFLE NUMBERS">
				<?php if(isset($error_msg)) { ?>
			<p class="error"><?php echo $error_msg; ?></p>
		<?php } ?>
    </form>
</body>
</html>
<?php

// Check if a file was uploaded
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_FILES['file']) && $_FILES['file']['error'] === UPLOAD_ERR_OK) {
        // Read the uploaded file
        $filename = $_FILES['file']['tmp_name'];
		$lines = file($filename, FILE_IGNORE_NEW_LINES);
		// Shuffle the lines randomly
		shuffle($lines);
		// Output the randomized lines
		foreach ($lines as $line) {
			echo $line . "<br/>";
		}
	}
	else{
		// Display error message
		$error_msg = "Error uploading file.";
	}
}
?>