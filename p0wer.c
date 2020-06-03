#include <stdio.h>
#include <stdlib.h>
#include <string.h>	//Required for using strlen() (returns string length).
#include <pigpio.h>	//Required for utilising raspberry pi gpio.

//Definr values of SUCCESS and FAILURE used when checking function returns.
#define SUCCESS 0
#define FAILURE 1

//Define the pin numbers that correspond to the raspi circuit.
//The pigpio library uses the Broadcom numbering.
#define CHANNEL_A_ON	5
#define CHANNEL_A_OFF	6
#define CHANNEL_B_ON	13
#define CHANNEL_B_OFF	19
#define CHANNEL_C_ON	26
#define CHANNEL_C_OFF	16
#define CHANNEL_D_ON	20
#define CHANNEL_D_OFF	21 

//Assign a value for determining desired channel control when parsing arguments.
#define TURN_OFF	0
#define TURN_ON		1

//Define the name of the executable to be used when showing usage.
#define FILENAME	"p0wer"

//Easier to remember definitions from the executable arguments.
//Note, argv is an array of strings.
#define ARG_CHANNEL	argv[1]
#define ARG_ON_OR_OFF	argv[2]

//Duration in microseconds the raspi pin will pulse to trigger the remote.
#define PULSE_DURATION	200000	//Equates to 200 milliseconds

//This function is called if there is an error with the executable usage.
//It will print to screen the correct usage then exit.
void exit_usage(void)
{
	printf("Usage: %s <channel(a,b,c,d)> <on/off>\n", FILENAME);
	exit(EXIT_FAILURE);
}

//This function is called to pulse the pin once the channel
//and on/off setting are parsed from the arguments.
//Returns SUCCESS (=0) if OK.
int control_outlet(int pin)
{
	//Initialise raspi to interface with gpio, exit if failure.
	if(gpioInitialise() == PI_INIT_FAILED) {return(FAILURE);}

	//Set the desired pin to operate as an output.
	//Note, gpioSetMode returns 0 if OK.
	if(gpioSetMode(pin, PI_OUTPUT)) {return(FAILURE);}

	//Activate a pull-down resistor on the seletced pin.
	//Note, gpioSetPullUpDown returns 0 if OK.
	if(gpioSetPullUpDown(pin, PI_PUD_DOWN) != 0) {return(FAILURE);}

	//Pulse the selected pin.
	//Note, gpioWrite returns 0 if OK.
	//Note, gpioDelay function returns actual delay which should always be >= the requested delay.
	if(gpioWrite(pin, 1)) {return(FAILURE);}
	if(gpioDelay(PULSE_DURATION) < PULSE_DURATION) {return(FAILURE);};
	if(gpioWrite(pin, 0)) {return(FAILURE);}

	//Pin has successfully been pulsed.
	return(SUCCESS);
}

int get_pin(char channel, char* on_or_off)
{
	//Initialise integer "set" which will become either TURN_ON (1) or TURN_OFF (0).	
	int set;

	//Confirm the first character of the on_or_off string is either 'o' or 'O' for on/off.
	if(on_or_off[0] != 'o' && on_or_off[0] != 'O'){exit_usage();}

	//Determine the intended contol by the second character of the string.
	//I.e. 'n' for on or 'f' for off.
	switch(on_or_off[1])
	{
		case 'n' :	//Desired action is to set the channel on.
		case 'N' :	//Since the second character is 'n', confirm there is no third character.
			if(on_or_off[2]){exit_usage();}
			set = TURN_ON;
			break;
		case 'f' :	//Desired action is to set the channel on.
		case 'F' :	//Since the second char is 'f', confirm the third char is also 'f'.
			if(on_or_off[2] != 'f' && on_or_off[2] != 'F'){exit_usage();}
			set = TURN_OFF;
			break;
		default :	//Bad control argument entered.  Show syntax and exit.
			exit_usage();
	}

	//At this point we know the "channel" variable is a single character.
	//We are expecting it to be A, a, B, b, C, c, D or d.
	//This block will return the value of the pin to be pulsed
	//(according to pigpio/broadcom numbering) to give the desired control. 
	switch(channel)
	{
		case 'A' :
		case 'a' :
			if (set)	{return(CHANNEL_A_ON);}
			else		{return(CHANNEL_A_OFF);}
			break;
		case 'B' :
		case 'b' :
			if (set)	{return(CHANNEL_B_ON);}
			else		{return(CHANNEL_B_OFF);}
			break;
		case 'C' :
		case 'c' :
			if (set)	{return(CHANNEL_C_ON);}
			else		{return(CHANNEL_C_OFF);}
			break;
		case 'D' :
		case 'd' :
			if (set)	{return(CHANNEL_D_ON);}
			else		{return(CHANNEL_D_OFF);}
			break;
		default :               //unexpected char entered
			exit_usage();
	}
	
	//Should never reach this point.
	printf("Unknown error.  Quitting.\n");
	exit(EXIT_FAILURE);
}

//Basic check of input arguments.
//Returns SUCCESS (=0) if OK.
int syntax_check(int argc, char* argv[])
{
	//First ensure the command included the expected number of arguments
	//(three including the executable).  Else show syntax and exit.
	if(argc != 3) {return(FAILURE);}

	//Next confirm the second argument representing the desired
	//channel is a single character.  Else show syntax and exit.
	if(strlen(ARG_CHANNEL) != 1) {return(FAILURE);}

	//Then confirm the third argument is a string with no more than
	//three characters.  Else show syntax and exit.
	if(strlen(ARG_ON_OR_OFF) > 3) {return(FAILURE);}

	//At this point, syntax check has passed.
	return(SUCCESS);
}

//Main program loop.  Arguments (argv[]) and number of arguments (argc).
int main(int argc, char* argv[])
{
	//Do a basic syntax check.  Show usage and exit if something unexpected.
	if(syntax_check(argc, argv)) {exit_usage();}

	//Call the "get_pin" function to determine the desired pin
	//to be pulsed, then pass it to the "control outlet" function to give
	//the desired control action.
	if(control_outlet(get_pin(ARG_CHANNEL[0], ARG_ON_OR_OFF))) {exit(EXIT_FAILURE);}

	return (EXIT_SUCCESS);
}


