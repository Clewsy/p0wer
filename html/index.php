<?php

    define("NUM_LAMPS", 2);

    // handle the toggle-all power button
    if(isset($_GET['toggle_button_x'])) {

        for ($lamp = 0; $lamp < NUM_LAMPS; $lamp++) {

            $control_url = "http://lamp" . $lamp . ".lan/rpc/Switch.Toggle?id=0";

            $curl_session_control = curl_init($control_url);
            curl_setopt($curl_session_control, CURLOPT_RETURNTRANSFER, true);

            curl_exec($curl_session_control);
            curl_close($curl_session_control);
        }
    }

    // handle the on button
    if(isset($_GET['on_button'])) {

        for ($lamp = 0; $lamp < NUM_LAMPS; $lamp++) {

            $control_url = "http://lamp" . $lamp . ".lan/rpc/Switch.Set?id=0&on=true";

            $curl_session_control = curl_init($control_url);
            curl_setopt($curl_session_control, CURLOPT_RETURNTRANSFER, true);

            curl_exec($curl_session_control);
            curl_close($curl_session_control);
        }
    }

    // handle the off button
    if(isset($_GET['off_button'])) {

        for ($lamp = 0; $lamp < NUM_LAMPS; $lamp++) {

            $control_url = "http://lamp" . $lamp . ".lan/rpc/Switch.Set?id=0&on=false";

            $curl_session_control = curl_init($control_url);
            curl_setopt($curl_session_control, CURLOPT_RETURNTRANSFER, true);

            curl_exec($curl_session_control);
            curl_close($curl_session_control);
        }
    }


    // handle the couch lamp button (lamp0)
    if(isset($_GET['couch_button_x'])) {

        $control_url = "http://lamp0.lan/rpc/Switch.Toggle?id=0";

        $curl_session_control = curl_init($control_url);
        curl_setopt($curl_session_control, CURLOPT_RETURNTRANSFER, true);

        curl_exec($curl_session_control);
        curl_close($curl_session_control);
    }

    // handle the coffee lamp button (lamp1)
    if(isset($_GET['coffee_button_x'])) {

        $control_url = "http://lamp1.lan/rpc/Switch.Toggle?id=0";

        $curl_session_control = curl_init($control_url);
        curl_setopt($curl_session_control, CURLOPT_RETURNTRANSFER, true);

        curl_exec($curl_session_control);
        curl_close($curl_session_control);
    }


    // get current status of lamps
    for ($lamp = 0; $lamp < NUM_LAMPS; $lamp++) {
        
        $status_url = "http://lamp" . $lamp . ".lan/rpc/Switch.GetStatus?id=0";

        $curl_session_status = curl_init($status_url);
        curl_setopt($curl_session_status, CURLOPT_RETURNTRANSFER, true);
        
        $status_json = curl_exec($curl_session_status);
        curl_close($curl_session_status);
        
        $status = json_decode($status_json, true); //make associative array from json
        
        if ($status['output'])  $lamp_status_colour[$lamp] = "rgb(150,150,150)";
        else                    $lamp_status_colour[$lamp] = "rgb(50,50,50)";
        
    }

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
        <h1>p0wer</h1>
        <table>
            <tr>
                <td colspan="2">
                    <!-- power button - toggles both lamps -->
                    <form method="get" action="index.php">
                            <div class="box">
                                <input type="image" class="button" src="images/power.png" name="toggle_button">
                            </div>
                    </form>
                </td>
            </tr>
            <tr>
                <td>
                    <!-- couch button - toggles lamp0 -->
                    <form method="get" action="index.php">
                        <div class="box" style="background-color: <?=$lamp_status_colour[0] ?>">
                            <input type="image" class="button" src="images/couch.png" name="couch_button">
                        </div>
                    </form>
                </td>
                <td>
                    <!-- coffee button - toggles lamp1 -->
                    <form method="get" action="index.php">
                        <div class="box" style="background-color: <?=$lamp_status_colour[1] ?>">
                            <input type="image" class="button" src="images/coffee.png" name="coffee_button">
                        </div>
                    </form>
                </td>
            </tr>
            <tr>
                <td>
                    <!-- both on button -->
                    <form method="get" action="index.php">
                        <div class="box">
                            <input type="submit" value="on" name="on_button">
                        </div>
                    </form>
                </td>
                <td>
                    <!-- both off button -->
                    <form method="get" action="index.php">
                        <div class="box">
                            <input type="submit" value="off" name="off_button">
                        </div>
                    </form>
                </td>
            </tr>
        </table>
    </body>
</html>
