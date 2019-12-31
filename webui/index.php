<html>
	<head>
		<meta name="viewport" content="width=device-width" />
		<title>p0wer</title>
		<link href="/css/style.css" type="text/css" rel="stylesheet" />
	</head>
	<body>
		<center><h1>p0wer</h1>      
			<form method="get" action="index.php">                
				<input type="submit" value="ON" name="a">
				A
				<input type="submit" value="OFF" name="a">
				</br>
				<input type="submit" value="ON" name="b">
				B
				<input type="submit" value="OFF" name="b">
				</br>
				<input type="submit" value="ON" name="c">
				C
				<input type="submit" value="OFF" name="c">
				</br>
				<input type="submit" value="ON" name="d">
				D
				<input type="submit" value="OFF" name="d">
			</form>​​​
		</center>

		<?php
			$all_channels = array('a','b','c','d');						//define all possible channels.

			for($i = 0; $i <= 3; $i++)							//run check for each possible channel
			{
				if(isset($_GET[$all_channels[$i]])) {$channel = $all_channels[$i];}	//check if the channel is to be set
			}
			
			$action = $_GET[$channel];							//determine how the channel should be set

			exec("/bin/super_p0wer $channel $action");					//rexecute the command to set the channel
		?>
	</body>
</html>