<!DOCTYPE html>
<html>
	<head>
		<meta name="viewport" content="width=device-width" />
		<title>p0wer</title>
		<link href="/css/style.css" type="text/css" rel="stylesheet" />
	</head>
	<body>
		<center><h1>p0wer</h1>      
			<form method="get" action="index.php">                
				<input type="image" class="button" src="images/power.png" name="toggle_button">
			</form>
		</center>
	</body>
</html>

<?php

//	$all_channels = array('a','b','c','d');	// Define all possible channels.
$action = null;
//	for($i = 0; $i <= 3; $i++)		// Run check for each possible channel.
//	{
		// Check if the channel is to be set.
//		if(isset($_GET[$all_channels[$i]]))	$channel = $all_channels[$i];
//        if(isset($_GET['toggle'])) $action = "Toggle";

        if(isset($_GET['toggle_button_x'])) $action = "Toggle";

//	}
			
//	$action = $_GET[$channel];	// Determine how the channel should be set.

	exec("curl -G -d 'id=0' http://lamp2.lan/rpc/Switch.$action");
?>
