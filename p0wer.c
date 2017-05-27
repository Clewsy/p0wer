#include <stdio.h>
#include <stdlib.h>
#include <string.h>		//Required for using strcmp() (string compare)
#include <wiringPi.h>		//Required for utilising raspberry pi gpio

//define the pin numbers that corrspond to the raspi circuit.  refer wiringPi documentation
#define CHANNEL_A_ON	21
#define CHANNEL_A_OFF	22
#define CHANNEL_B_ON	23
#define CHANNEL_B_OFF	24
#define CHANNEL_C_ON	25
#define CHANNEL_C_OFF	27
#define CHANNEL_D_ON	28
#define CHANNEL_D_OFF	29 

#define TURN_OFF	0
#define TURN_ON		1

//easier to remember definitions from the executable arguments.  Note, argv is an array of strings.
#define ARG_FILENAME	argv[0]
#define ARG_CHANNEL	argv[1]
#define ARG_ON_OR_OFF	argv[2]

//duration in milliseconds the raspi pin will pulse to trigger the remote
#define PULSE_DURATION	200

//This function is called if there is an error with the executable usage.  It will print to screen the correct usage then exit.
void exit_usage(char* filename)
{
	printf("Usage: %s <channel(a,b,c,d)> <on/off>\n", filename);
	exit(EXIT_FAILURE);
}

//This function is called to pulde the pin once the channel and on/off setting are parsed from the arguments
void control_outlet(int pin)
{
	if (wiringPiSetup() < 0) { exit(EXIT_FAILURE); }	//initialise raspi to interface with gpio, exit if failure 

	pinMode(pin, OUTPUT);			//set the pin to an output
	pullUpDnControl(pin, PUD_DOWN);		//enable the internal pull-down resistor

	digitalWrite(pin, HIGH);		//pull the pin high
	delay(PULSE_DURATION);			//pause
	digitalWrite(pin, LOW);			//bring the pin back town low
}


//main program loop.  arguments (argv[]) and number of arguments (argc)
int main(int argc, char* argv[])
{
	//first ensure the execution included the expected number of arguments (three including the executable).  else show syntax and exit
	if (argc != 3)  { exit_usage(ARG_FILENAME); }

	//need to determine from the arguments which channel is intended to be controlled and if it is to be set on or off
	char channel;
	int set;

	//following block determines the channel intended to be switched. only a single character will be accepted and then only A, a, B, b, C, c, D or d.
	if(strlen(ARG_CHANNEL) != 1){ exit_usage(ARG_FILENAME); }	//confirm the execution argument for the desired channel is a single character.  else show syntax and exit.
	switch(ARG_CHANNEL[0])
	{
		case 'A' :
		case 'a' :	//desired channel is 'a'
			channel = 'a';
			break;
		case 'B' :
		case 'b' :	//desired channel is 'b'
			channel = 'b';
			break;
		case 'C' :
		case 'c' :	//desired channel is 'c'
			channel = 'c';
			break;
		case 'D' :
		case 'd' :	//desired channel is 'd'
			channel = 'd';
			break;
		default	:	//bad channel argument entered.  show syntax and exit.
			exit_usage(ARG_FILENAME);
	}

	//following block determines if the selected channel should be turned on or off.  anything will be rejected if it is not on, oN, On, ON, off, ofF, oFf, oFF, Off, OfF, OFf or OFF
	if(strlen(ARG_ON_OR_OFF) > 3){ exit_usage(ARG_FILENAME); }	//confirm the argument string has no more than three characters.  else show syntax and exit
	if(ARG_ON_OR_OFF[0] != 'o' && ARG_ON_OR_OFF[0] != 'O'){ exit_usage(ARG_FILENAME); }	//confirm the first character of the argument string is either 'o' or 'O' for on/off
	switch(ARG_ON_OR_OFF[1])	//determine the intended contol by the second character of the string.  i.e. 'n' for on or 'f' for off
	{
		case 'n' :
		case 'N' :	//desired control is to set the channel on
			set = TURN_ON;
			break;
		case 'f' :
		case 'F' :	//desired control is to set the channel off
			if(ARG_ON_OR_OFF[2] != 'f' && ARG_ON_OR_OFF[2] != 'F'){ exit_usage(ARG_FILENAME); }	//since the second char is 'f', confirm the third char is also 'f'.  else show syntax and exit
			set = TURN_OFF;
			break;
		default :	//bad control argument entered.  show syntax and exit
			exit_usage(ARG_FILENAME);
	}


	//at this pont we have verified the input arguments and know which channel to be operated (channel='a', 'b', 'c' or 'd') and if it should be set on (set=1) or off (set=0)
	//next, use this information to determine which pin on the raspberry pi to pulse
	int pin_to_pulse;	//initialise an integer representing the number of the pin corresponding to the desired control.  refer wiringPi
	switch(channel)
	{
		case 'a' :
			if (set)	{ pin_to_pulse = CHANNEL_A_ON; }
			else 		{ pin_to_pulse = CHANNEL_A_OFF; }	
			break;
		case 'b' :
			if (set)        { pin_to_pulse = CHANNEL_B_ON; }
			else            { pin_to_pulse = CHANNEL_B_OFF; }
			break;
		case 'c' :
			if (set)        { pin_to_pulse = CHANNEL_C_ON; }
			else            { pin_to_pulse = CHANNEL_C_OFF; }
			break;
		case 'd' :
			if (set)        { pin_to_pulse = CHANNEL_D_ON; }
			else            { pin_to_pulse = CHANNEL_D_OFF; }
			break;
		default :		//should never reach this
			printf("Unknown error.  Quitting\n");
			exit(EXIT_FAILURE);
	}

	//we now know which pin to pulse to give the desired control
	control_outlet(pin_to_pulse);
	return (EXIT_SUCCESS);
}


