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

//	exec("curl -G -d 'id=0' http://lamp2.lan/rpc/Switch.$action");



// Works but want to break out data variables.
//$url = "http://192.168.1.221/rpc/Switch.Toggle?id=0";
//$curl_session = curl_init($url);
//curl_setopt($curl_session, CURLOPT_URL, $url);
//curl_setopt($curl_session, CURLOPT_RETURNTRANSFER, true);


//$url = "http://192.168.1.221/rpc/Switch.Toggle?id=0";
//$url = "http://lamp2.lan/rpc/Switch.Toggle";
$post_data = array("id" => "0");
$url = "http://lamp2.lan/rpc/Switch.Toggle" . '?' . http_build_query($post_data);
$curl_session = curl_init($url);
curl_setopt($curl_session, CURLOPT_URL, $url);
curl_setopt($curl_session, CURLOPT_RETURNTRANSFER, true);






$response = curl_exec($curl_session);


//debugging
//$info = curl_getinfo($curl_session);
//$code = curl_getinfo($curl_session, CURLINFO_HTTP_CODE);
//curl_close($curl_session);
//
//echo $response;
//echo "testy";
//
//echo $response.'<br>';
//echo "<pre>";
//print_r($info);
//echo "</pre>";
//
//// Get response status code
//echo "<pre>";
//print_r($code);
//echo "</pre>";

?>
