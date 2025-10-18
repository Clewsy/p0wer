#include <stdio.h>	// Required for printf() function.
#include <stdlib.h>	// Required for exit() function
#include <string.h>	// Required for using strlen() (returns string length).
#include <stdbool.h>	// For using bool types and true/false values.
#include <pigpio.h>	// Required for utilising raspberry pi gpio.

// Define the pin numbers that correspond to the raspi circuit.
// The pigpio library uses the Broadcom numbering.
#define CHANNEL_A_ON	5
#define CHANNEL_A_OFF	6
#define CHANNEL_B_ON	13
#define CHANNEL_B_OFF	19
#define CHANNEL_C_ON	26
#define CHANNEL_C_OFF	16
#define CHANNEL_D_ON	20
#define CHANNEL_D_OFF	21 

// Assign a value for determining desired channel control when parsing arguments.
#define TURN_OFF	0
#define TURN_ON		1

// Define the name of the executable to be used when showing usage.
#define FILENAME	"p0wer"

// Easier to remember definitions from the executable arguments.  Note, argv is an array of strings.
#define ARG_CHANNEL	argv[1]
#define ARG_ON_OR_OFF	argv[2]

// Duration in microseconds the raspi pin will pulse to trigger the remote switch.
#define PULSE_DURATION	200000	//Equates to 200 milliseconds
