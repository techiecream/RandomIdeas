<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="description" content="How much should you stake">
<meta name="keywords" content="System,winner,lets play">
<meta name="author" content="Kizige Stephen">
<meta name="version" content="1.0">
<link rel = "stylesheet" type= "text/css" href = "style.css" media= "screen"/>
<script src="jquery.js"></script>
<?php
// Check if the login form has been submitted
if (isset($_POST['do']) && $_POST['do'] === 'agrant') {
	// Sanitize input data
	$bak=filter_input(INPUT_POST, 'amount', FILTER_SANITIZE_STRING);
	$gd=filter_input(INPUT_POST, 'odd', FILTER_SANITIZE_STRING);
	$ad=filter_input(INPUT_POST, 'mt', FILTER_SANITIZE_STRING);
	if ($ad==='0'){
		$error_msg=($bak/($gd-1));		
	}
	else{
		$error_msg=($bak/($gd-1))*1.5;
	}
}
else {
    echo ''; // No action needed
}
?>
<title>LETS PLAY</title>
</head>
<body>
<form method="POST" action="">
<h1>GAME ON</h1>
<h2><a href="?howto">How it Works</a></h2><br/>
<?php
if (isset($_GET["howto"]))
{
echo "
<p>While I took care of making sure it works, i don't think you 
took alot of precaution to make sure you have the right game.</p>
<p>Any ways here is how it works</p>	

<ul>
	<li>Pick a game you want to bet on</li>
	<li>Note down the odds of the game</li>
	<li>Determine how broke you are and how much you need</li>
	<li>Enter the information and hope you betted on the right team</li>
</ul><p></p>
";}
?>

<input type="number" name="amount" placeholder="Amount you intend to make" id="amt" required>
<input type="text" name="odd" placeholder="The Odd of the game you have selected" id="godd" required>
<input type="number" name="mt" placeholder="Previous amount staked" id="gamt" required>
<input type="hidden" name="do" value="agrant">
<input type="submit" value="Calculate">
<?php if(isset($error_msg)) { ?>
<p class="error"><?php echo "Recommended Stake is:".round(($error_msg),0); ?></p>
<?php } ?>
		
</form>

</body>
</html>
