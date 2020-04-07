# p0wer
Remotely control power outlets via a raspberrypi zero W interfaced with a modified off-the-shelf wireless 4-channel mains remote control.  Check the KiCad directory for the [schematic][link_repo_p0wer_schematic]).  More info and photos can be found here: [clews.pro/projects/p0wer.html][link_clews_projects_p0wer].

## Installation:
On the raspberry pi install the pigpio library:
```bash
$ sudo apt update
$ sudo apt install pigpio
```

Clone this repository and enter the cloned project directory:
```bash
$ git clone https://gitlab.com/clewsy/p0wer
$ cd p0wer
```
Compile the executable:
```bash
$ make all
```
The binary is now ready to use.  For frequent calls it can be copied to the /usr/local/sbin directory:
```bash
$ sudo cp p0wer /usr/local/sbin/p0wer
```

## Usage:
The command can be called directly or from within a shell script (example script: [p0wer_switch.sh][link_repo_scripts_p0wer_switch]).
Note, super user access is required to manipulate the gpio.
```bash
$ sudo p0wer <channel(a,b,c,d)> <on/off>
```

## Usage (with php):
Using php provides a simple way to execute p0wer via a web browser.  An example php snippet follows that would effectively run the "p0wer a on" command:
```php
<?php
	exec("bin/p0wer a on");
?>
```
Note, executing p0wer this way from a browser likely means the host user is www-data.  As such, privileges may typically prevent this from being effective.  There are methods around this including setting the SUID bit as in the WebUI setup instructions below.  Do so only if you understand the implications.

## Photo:
Here is my hacked together rf remote and Raspberry Pi Zero W.

![The assembled device.][image_p0wer]

# WebUI:

If you'd like a simple web interface to run the executable you can use the html/php/css found in the [webui][link_repo_p0wer_webui] directory of this repo.  Here is a screenshot of the webui on an android smartphone:

![Screenshot of the webui from an android device.][image_webui]

## p0wer WebUI Installation:
First follow the instructions above to compile and install the executable.

To run the webui, the raspberry pi will require installation of php and also web server software such as [Apache][link_web_apache], [NGinX][link_web_nginx], [Lighttpd][link_web_lighttpd] or similar.  The following instructions will use Apache.

```shell
$ sudo apt update
$ sudo apt install apache2 php
```
By default, Apache will serve html/css/php files stored at /var/www/html.

From within this directory, delete any existing files then copy the webui files from the previously cloned repository:

```shell
$ cd /var/www/html
$ sudo rm -r *
$ sudo cp --recursive ~/p0wer/webui/* .
```

The php script expects the p0wer executable to be located at /var/www/html/bin/super_p0wer.  You will need to create this renamed copy of the p0wer executable and set the SUID bit.  Doing so will mean that when the webui user (typically www-data) calls the executable, it will actually be run as the file owner (root).  This allows the browser to run the file without being a superuser.

```shell
$ sudo cp ~/p0wer/p0wer /var/www/html/bin/super_p0wer
$ sudo chmod +s /var/www/html/bin/super_p0wer
```

Your web interface should now be available over your local network.  If the hostname of your raspberry pi remains as the default, then the p0wer WebUI should be accessible from your browser at http://raspberrypi/

## Bonus - run p0wer with ssh or cURL:

Once the p0wer WebUI is running, it is possible to use curl to control the wireless switches.  I found this useful for controlling a lamp by a script within a docker container.  The container image did not include an installation of the ssh client but it did include curl.  The following shows equivalent ssh/curl commands on a local network that both achieve the same result on a host that has been set up as per the instructions above:

* Using ssh (user "pi" on host "raspberrypi"):
```shell
$ ssh pi@raspberrypi "sudo p0wer a on"
```
* Using cURL (on host "raspberrypi"):
```shell
$ curl --silent http://raspberrypi/index.php?a=ON >> /dev/null
```

[link_repo_p0wer_schematic]:https://gitlab.com/clewsy/p0wer/-/blob/master/kicad_files/p0wer_schematic.pdf
[link_repo_p0wer_webui]:https://gitlab.com/clewsy/p0wer/tree/master/webui
[link_repo_scripts_p0wer_switch]:https://gitlab.com/clewsy/scripts/blob/master/p0wer_switch.sh

[link_clews_projects_p0wer]:https://clews.pro/projects/p0wer.html

[link_web_apache]:https://httpd.apache.org/
[link_web_nginx]:https://nginx.org/
[link_web_lighttpd]:https://www.lighttpd.net/

[image_p0wer]:/images/p0wer.jpg
[image_webui]:/images/p0wer_webui.png
