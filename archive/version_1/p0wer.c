#include "p0wer.h"

// This function is called if there is an error with the usage syntax.  It will print the correct usage then exit.
void exit_usage(void)
{
	printf("Usage: %s <channel(a,b,c,d)> <on/off>\n", FILENAME);
	exit(EXIT_FAILURE);
}

// This function is called to pulse the pin once the channel and on/off setting are parsed from the arguments.
// Returns true if OK.
bool control_outlet(int pin)
{
	// Initialise raspi to interface with gpio, return false if this fails.
	if(gpioInitialise() == PI_INIT_FAILED)		return(false);

	// Set the desired pin to operate as an output.	 Note, gpioSetMode returns 0 if OK.
	if(gpioSetMode(pin, PI_OUTPUT))			return(false);

	// Activate a pull-down resistor on the seletced pin.  Note, gpioSetPullUpDown returns 0 if OK.
	if(gpioSetPullUpDown(pin, PI_PUD_DOWN))		return(false);

	// Pulse the selected pin.  Note, gpioWrite returns 0 if OK.
	// Note, gpioDelay function returns actual delay which should always be >= the requested delay.
	if(gpioWrite(pin, TURN_ON))			return(false);
	if(gpioDelay(PULSE_DURATION) < PULSE_DURATION)	return(false);
	if(gpioWrite(pin, TURN_OFF))			return(false);

	// Pin has successfully been pulsed.
	return(true);
}

// This function will return the gpio output pin number to be pulsed to achieve the desired control.
int get_pin(char channel, char* on_or_off)
{
	// Initialise integer "set" which will become either TURN_ON (=1) or TURN_OFF (=0).	
	int set;

	// Determine the intended contol by the second character of the string.  I.e. 'n/N' for on or 'f/F' for off.
	switch(on_or_off[1])
	{
		// Control argument is a variation of "on".
		case 'n':
		case 'N':	set = TURN_ON;
				break;

		// Control argument is a variation of "off".
		case 'f':
		case 'F':	set = TURN_OFF;
				break;

		// Bad control argument entered.  syntax_check() should prevent this case.
		default:	exit_usage();
	}

	// At this point we know the "channel" variable is a single character: A, a, B, b, C, c, D or d.
	// This switch will return the value of the pin to be pulsed to give the desired control. 
	switch(channel)
	{
		case 'A':
		case 'a':	if(set)	return(CHANNEL_A_ON);
				else	return(CHANNEL_A_OFF);
				break;
		case 'B':
		case 'b':	if(set)	return(CHANNEL_B_ON);
				else	return(CHANNEL_B_OFF);
				break;
		case 'C':
		case 'c':	if(set)	return(CHANNEL_C_ON);
				else	return(CHANNEL_C_OFF);
				break;
		case 'D':
		case 'd':	if(set)	return(CHANNEL_D_ON);
				else	return(CHANNEL_D_OFF);
				break;

               // Unexpected char.  syntax_check() should always prevent this case.
		default:	exit_usage();
	}
	
	// Should never reach this point.
	printf("Unknown error.  Quitting.\n");
	exit(EXIT_FAILURE);
}

// Check input arguments.  Returns true if OK.
bool syntax_check(int argc, char* argv[])
{
	// First ensure the command included the expected number of arguments (three including the executable).
	if(argc != 3)			return(false);
	// Check channel (second argument). Should be a single character: a-d or A-D.
	// First confirm it is a single character.
	if(strlen(ARG_CHANNEL) != 1)	return(false);
	// Then ensure the single character is A-D or a-d.
	if(	((ARG_CHANNEL[0] < 'a') || (ARG_CHANNEL[0] > 'd')) &&
		((ARG_CHANNEL[0] < 'A') || (ARG_CHANNEL[0] > 'D')) )			return(false);

	// Check state argument (third argument). Should be on or off (allowing case variations).
	// First character should always be 'o' or 'O'.
	if((ARG_ON_OR_OFF[0] != 'o') && (ARG_ON_OR_OFF[0] != 'O'))			return(false);
	// Now check for acceptable second and third characters.
	if(strlen(ARG_ON_OR_OFF) == 2)		// 2 characters so sould be a variation of "on".
	{
		if((ARG_ON_OR_OFF[1] != 'n') && (ARG_ON_OR_OFF[1] != 'N'))		return(false);
	}
	else if(strlen(ARG_ON_OR_OFF) == 3)	// 3 characters so should be a variation of "off".
	{
		if(	((ARG_ON_OR_OFF[1] != 'f') && (ARG_ON_OR_OFF[1] != 'F')) ||
			((ARG_ON_OR_OFF[2] != 'f') && (ARG_ON_OR_OFF[2] != 'F')) )	return(false);
	}
	else	return(false);		// Fewer than 2 or greater than 3 characters.

	// At this point, syntax check has passed.
	return(true);
}

// Main program function.
// argv[]: The user-provided arguments as an array of character arrays.
// arc: The number of provided arguments as an integer.
int main(int argc, char* argv[])
{
	// Do a basic syntax check.  Show usage and exit if something unexpected.
	if(!syntax_check(argc, argv))	exit_usage();

	// Call the get_pin() function to determine the desired pin to be pulsed, then pass it to the control outlet()
	// function to give the desired control action.
	if(!control_outlet(get_pin(ARG_CHANNEL[0], ARG_ON_OR_OFF)))	exit(EXIT_FAILURE);

	return(EXIT_SUCCESS);
}
