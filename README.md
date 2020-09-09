# p0wer
Remotely control power outlets via a raspberrypi zero W interfaced with a modified off-the-shelf wireless 4-channel mains remote control.  Check the KiCad directory for the [schematic][link_repo_p0wer_schematic].  More info and photos can be found [here][link_clews_projects_p0wer].

## Installation:
On the raspberry pi install the pigpio library.  This is required for interfacing with the gpio pins:
```bash
$ sudo apt update
$ sudo apt install pigpio
```

Clone this repository and enter the cloned project directory:
```bash
$ git clone https://gitlab.com/clewsy/p0wer
$ cd p0wer
```
Compile and install the executable:
```bash
$ sudo make install
```
The binary is now ready to use.  To test try running with no arguments and it should print the usage to screen:
```bash
$ p0wer
Usage: p0wer <channel(a,b,c,d)> <on/off>
```
**NOTE** using the `sudo make install` command as per the instructions above will automatically set the SUID bit (i.e. set the setuid flag) for the executable file.  This means it is executed with owner (root) privileges.  As such, it can be run (and the GPIO pins can be manipulated) with out prepending the command with `sudo`.  If you want to install the file without this permission, use the following commands instead of running `sudo make install`.
```bash
$ make
$ sudo cp p0wer /usr/local/sbin/p0wer
```
The command can now be run but will require superuser privileges (sudo).

## Usage:
The command can be called directly.  For example, if you have configured a remote power switch to be controlled by channel C, you could turn this switch on with the following command:
```bash
$ p0wer c on
```
Alternatively, the command can be called from within a shell script (example script: [p0wer_switch.sh][link_repo_scripts_p0wer_switch]).

## Usage (with php):
Using php provides a simple way to execute p0wer via a web browser.  An example php snippet follows that would effectively run the `p0wer a on` command:
```php
<?php
	exec("p0wer a on");
?>
```

## Photo:
Here is my hacked together rf remote and Raspberry Pi Zero W.

![The assembled device.][image_p0wer]

# WebUI:

If you'd like a simple web interface to run the executable you can use the html/php/css found in the [webui][link_repo_p0wer_webui] directory of this repo.  Here is a screenshot of the webui on an android smartphone:

![Screenshot of the webui from an android device.][image_webui]

## p0wer WebUI Installation:
First follow the instructions above to compile and install the executable.

To run the webui, the raspberry pi will require installation of [php][link_web_php] and also web server software such as [Apache][link_web_apache], [NGinX][link_web_nginx], [Lighttpd][link_web_lighttpd] or similar.  The following instructions will use Apache.

```shell
$ sudo apt update
$ sudo apt install apache2 php
```
By default, Apache will serve html/css/php files stored at */var/www/html*.

From within this directory, delete any existing files then copy the webui files from the previously cloned repository:

```shell
$ cd /var/www/html
$ sudo rm -r *
$ sudo cp --recursive ~/p0wer/webui/* .	#Assumes this repo was cloned to the home (~) directory.
```

The php script expects the p0wer executable to be installed as per the `sudo make install` instructions listed above.

Your web interface should now be available over your local network.  If the hostname of your raspberry pi remains as the default, then the p0wer WebUI should be accessible from your browser at http://raspberrypi/

# Bonus - run p0wer with ssh or curl:

Once the p0wer WebUI is running, it is possible to use curl to control the wireless switches.  I found this useful for controlling a lamp by a script within a docker container.  The container image did not include an installation of the ssh client but it did include curl.  The following shows equivalent ssh/curl commands on a local network that both achieve the same result on a host that has been configured as per the instructions above:

* Using ssh (user "pi" on host "raspberrypi"):
```shell
$ ssh pi@raspberrypi "sudo p0wer a on"
```
* Using curl (on host "raspberrypi"):
```shell
$ curl --silent http://raspberrypi/index.php?a=ON >> /dev/null
```

# Second Bonus - Install and Configure with [Ansible][link_web_ansible]

For another project ([clewsy_ansible][link_gitlab_clewsy_clewsy_ansible]) I have been automating deployment, configuration and maintenance of hosts on my home network.  In doing so, I created an [ansible role][link_gitlab_clewsy_clewsy_ansible_roles_p0wer] that when run, will automatically install the dependencies, download this repo, compile/install the executable and configure up the WebUI.  I have a [playbook][link_gitlab_clewsy_clewsy_ansible_p0wer] that I use which will take a raspberry pi with a fresh install of raspbian and run through all the tasks required to turn it into a p0wer remote server.

[link_clews_projects_p0wer]:https://clews.pro/projects/p0wer.php

[link_gitlab_clewsy_clewsy_ansible]:https://gitlab.com/clewsy/clewsy_ansible
[link_gitlab_clewsy_clewsy_ansible_p0wer]:https://gitlab.com/clewsy/clewsy_ansible/-/blob/master/p0wer.yml
[link_gitlab_clewsy_clewsy_ansible_roles_p0wer]:https://gitlab.com/clewsy/clewsy_ansible/-/tree/master/roles/p0wer

[link_repo_p0wer_schematic]:https://gitlab.com/clewsy/p0wer/-/blob/master/kicad_files/p0wer_schematic.pdf
[link_repo_p0wer_webui]:https://gitlab.com/clewsy/p0wer/tree/master/webui
[link_repo_scripts_p0wer_switch]:https://gitlab.com/clewsy/scripts/blob/master/p0wer_switch.sh

[link_web_ansible]:https://docs.ansible.com/
[link_web_apache]:https://httpd.apache.org/
[link_web_lighttpd]:https://www.lighttpd.net/
[link_web_nginx]:https://nginx.org/
[link_web_php]:https://www.php.net/

[image_p0wer]:/images/p0wer.jpg
[image_webui]:/images/p0wer_webui.png
