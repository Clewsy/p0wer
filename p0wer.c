#include <stdio.h>
#include <stdlib.h>
#include <string.h>		//Required for using strcmp() (string compare)
#include <wiringPi.h>		//Required for utilising raspberry pi gpio

//define the pin numbers that corrspond to the raspi circuit.
//refer wiringPi documentation
#define CHANNEL_A_ON	21
#define CHANNEL_A_OFF	22
#define CHANNEL_B_ON	23
#define CHANNEL_B_OFF	24
#define CHANNEL_C_ON	25
#define CHANNEL_C_OFF	27
#define CHANNEL_D_ON	28
#define CHANNEL_D_OFF	29 

//assign a value for determining desired channel control when parsing arguments.
#define TURN_OFF	0
#define TURN_ON		1

//define the name of the executable to be used when showing usage.
#define FILENAME	"p0wer"

//easier to remember definitions from the executable arguments.
//Note, argv is an array of strings.
#define ARG_CHANNEL	argv[1]
#define ARG_ON_OR_OFF	argv[2]

//duration in milliseconds the raspi pin will pulse to trigger the remote
#define PULSE_DURATION	200

//This function is called if there is an error with the executable usage.
//It will print to screen the correct usage then exit.
void exit_usage(void)
{
	printf("Usage: %s <channel(a,b,c,d)> <on/off>\n", FILENAME);
	exit(EXIT_FAILURE);
}

//This function is called to pulde the pin once the channel
//and on/off setting are parsed from the arguments
void control_outlet(int pin)
{
	//initialise raspi to interface with gpio, exit if failure 
	if (wiringPiSetup() < 0) { exit(EXIT_FAILURE); }

	pinMode(pin, OUTPUT);		//set the pin to an output
	pullUpDnControl(pin, PUD_DOWN);	//enable internal pull-down resistor

	digitalWrite(pin, HIGH);	//pull the pin high
	delay(PULSE_DURATION);		//pause
	digitalWrite(pin, LOW);		//bring the pin back town low
}

int get_pin(char channel, char* on_or_off)
{
	//initialise integer "set" which will become either TURN_ON (1) or TURN_OFF (0)	
	int set;

        //confirm the first character of the on_or_off string is either 'o' or 'O' for on/off
        if(on_or_off[0] != 'o' && on_or_off[0] != 'O'){ exit_usage(); }

        //determine the intended contol by the second character of the string.
        //i.e. 'n' for on or 'f' for off
        switch(on_or_off[1])
        {
                case 'n' :
                case 'N' :      //desired control is to set the channel on
				//since the second character is 'n', confirm there is no third
				//character.  else show syntax and exit.
			if(on_or_off[2]){ exit_usage(); }
                        set = TURN_ON;
                        break;
                case 'f' :
                case 'F' :      //desired control is to set the channel off
                		//since the second char is 'f', confirm the third char is also 'f'.
                		//else show syntax and exit
                        if(on_or_off[2] != 'f' && on_or_off[2] != 'F'){ exit_usage(); }
                        set = TURN_OFF;
                        break;
                default :       //bad control argument entered.  show syntax and exit
                        exit_usage();
        }

	//at this point we know the "channel" variable is a single character
	//we are expecting it to be A, a, B, b, C, c, D or d.  This block
	//will return the value of the pin to be pulsed (according to
	//WiringPi numbering) to give the desired control. 
        switch(channel)
        {
		case 'A' :
                case 'a' :
                        if (set)        { return(CHANNEL_A_ON); }
                        else            { return(CHANNEL_A_OFF); }
                        break;
		case 'B' :
                case 'b' :
                        if (set)        { return(CHANNEL_B_ON); }
                        else            { return(CHANNEL_B_OFF); }
                        break;
		case 'C' :
                case 'c' :
                        if (set)        { return(CHANNEL_C_ON); }
                        else            { return(CHANNEL_C_OFF); }
                        break;
		case 'D' :
                case 'd' :
                        if (set)        { return(CHANNEL_D_ON); }
                        else            { return(CHANNEL_D_OFF); }
                        break;
                default :               //unexpected char entered
                        exit_usage();
        }
	
	//Should never reach this point.
	printf("Unknown error.  Quitting.\n");
	exit(EXIT_FAILURE);
}

//main program loop.  arguments (argv[]) and number of arguments (argc)
int main(int argc, char* argv[])
{
	//do a basic syntax check.  Show syntax and exit if something unexpected.

	//first ensure the execution included the expected number of arguments
	//(three including the executable).  else show syntax and exit.
	if (argc != 3)  { exit_usage(); }

	//next confirm the second argument representing the desired
	//channel is a single character.  else show syntax and exit.
	if(strlen(ARG_CHANNEL) != 1){ exit_usage(); }

	//then confirm the third argument is a string with no more than
	//three characters.  else show syntax and exit
	if(strlen(ARG_ON_OR_OFF) > 3){ exit_usage(); }

	//finally call the "get_pin" function to determine the desired pin
	//to be pulsed, then pass it to the "control outlet" function to give
	//the desired control
	control_outlet(get_pin(ARG_CHANNEL[0], ARG_ON_OR_OFF));
	return (EXIT_SUCCESS);
}


