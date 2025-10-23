<?php

// currently only one lamp on the network.

    // handle the toggle-all power button
    if(isset($_GET['toggle_button_x'])){

        $control_url = "http://lamp2.lan/rpc/Switch.Toggle";
        $control_id = "0";

        $curl_session_control = curl_init($control_url . "?id=" . $control_id);
        curl_setopt($curl_session_control, CURLOPT_RETURNTRANSFER, true);

        curl_exec($curl_session_control);
        curl_close($curl_session_control);
    }

    // handle the coffee lamp button
    if(isset($_GET['coffee_button_x'])){

        $control_url = "http://lamp2.lan/rpc/Switch.Toggle";
        $control_id = "0";

        $curl_session_control = curl_init($control_url . "?id=" . $control_id);
        curl_setopt($curl_session_control, CURLOPT_RETURNTRANSFER, true);

        curl_exec($curl_session_control);
        curl_close($curl_session_control);
    }


    // get current status of lamps
    $status_url = "http://lamp2.lan/rpc/Switch.GetStatus";
    $status_id = "0";

    $curl_session_status = curl_init($status_url . "?id=" . $status_id);
    curl_setopt($curl_session_status, CURLOPT_RETURNTRANSFER, true);

    $status_json = curl_exec($curl_session_status);
    curl_close($curl_session_status);

    $status = json_decode($status_json, true); //make associative array from json

    if ($status['output'])  $lamp_status_colour = "rgb(150,150,150)";
    else                    $lamp_status_colour = "rgb(50,50,50)";

?>


<!DOCTYPE html>
<html>

    <head>
        <meta name="viewport" content="width=device-width" />
        <title>p0wer</title>
        <link href="/css/style.css" type="text/css" rel="stylesheet" />
        <link rel="icon" type="image/x-icon" href="/favicon.ico">
    </head>

    <body>
        <h1><a href="/index.php">p0wer</a></h1>

        <form method="get" action="index.php">
            <input type="image" class="button" src="images/power.png" name="toggle_button">
        </form>

        <form method="get" action="index.php">
            <div class="box" style="background-color: <?=$lamp_status_colour ?>">
                <input type="image" class="button" src="images/coffee.png" name="coffee_button">
            </div>
        </form>
    </body>

</html>
