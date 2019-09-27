# p0wer
Remotely control power outlets via a raspberrypi zero W interfaced with a modified off-the-shelf wireless 4-channel mains remote control.  Check the KiCad directory for the [schematic](KiCad_p0wer/p0wer_schematic.pdf).  More info can be found here: [clews.pro/projects/p0wer.html](https://clews.pro/projects/p0wer.html)

## Installation:
On the raspberry pi install the pigpio library:
```
$ sudo apt update
$ sudo apt install pigpio
```

Clone this repository and enter the cloned project directory:
```
$ git clone https://gitlab.com/clewsy/p0wer
$ cd p0wer
```
Compile the executable:
```
$ make all
```
The binary is now ready to use.  For frequent calls it can be copied to the /usr/local/sbin directory:
```
$ sudo cp p0wer /usr/local/sbin/p0wer
```

## Usage:
The command can be called directly or from within a shell script (example script: [p0wer_switch.sh](https://gitlab.com/clewsy/scripts/blob/master/p0wer_switch.sh)).
Note, super user access is required to manipulate the gpio.
```
$ sudo p0wer <channel(a,b,c,d)> <on/off>
```
## Photo:
Here is my hacked together rf remote and Raspberry Pi Zero W.

![p0wer photo](p0wer.jpg)
