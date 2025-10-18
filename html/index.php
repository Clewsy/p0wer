<!DOCTYPE html>
<html>
	<head>
		<meta name="viewport" content="width=device-width" />
		<title>p0wer</title>
		<link href="/css/style.css" type="text/css" rel="stylesheet" />
	</head>
	<body>
		<center><h1><a href="/index.php">p0wer</a></h1>      
			<form method="get" action="index.php">                
				<input type="image" class="button" src="images/power.png" name="toggle_button">
			</form>
		</center>
	</body>
</html>

<?php

    if(isset($_GET['toggle_button_x'])){


		// Works but want to break out data variables.
		//$url = "http://192.168.1.221/rpc/Switch.Toggle?id=0";
		//$curl_session = curl_init($url);
		//curl_setopt($curl_session, CURLOPT_URL, $url);
		//curl_setopt($curl_session, CURLOPT_RETURNTRANSFER, true);


		$post_data = array("id" => "0");
		$url = "http://lamp2.lan/rpc/Switch.Toggle" . '?' . http_build_query($post_data);
		$curl_session = curl_init($url);
		curl_setopt($curl_session, CURLOPT_URL, $url);
		curl_setopt($curl_session, CURLOPT_RETURNTRANSFER, true);


		$response = curl_exec($curl_session);
		curl_close($curl_session);


		//debugging
		//$info = curl_getinfo($curl_session);
		//$code = curl_getinfo($curl_session, CURLINFO_HTTP_CODE);
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
	}
?>
