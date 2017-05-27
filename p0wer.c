#include <stdio.h>
#include <stdlib.h>
#include <string.h>				//Required for using strcmp() (string compare)
#include <wiringPi.h>				//Required for utilising raspberry pi gpio

#define CHANNEL_A_ON	21
#define CHANNEL_A_OFF	22
#define CHANNEL_B_ON	23
#define CHANNEL_B_OFF	24
#define CHANNEL_C_ON	25
#define CHANNEL_C_OFF	27
#define CHANNEL_D_ON	28
#define CHANNEL_D_OFF	29 

#define false	0
#define true	1
#define TURN_OFF	0
#define TURN_ON		1

//main program loop.  arguments (argv[]) and number of arguments (argc)
int main(int argc, char* argv[])
{
	if (wiringPiSetup() < 0) { exit(EXIT_FAILURE); }	//initialise raspi to interface with gpio, exit if failure

	pinMode(CHANNEL_A_ON, OUTPUT);
	pinMode(CHANNEL_A_OFF, OUTPUT);
	pinMode(CHANNEL_B_ON, OUTPUT);
	pinMode(CHANNEL_B_OFF, OUTPUT);
	pinMode(CHANNEL_C_ON, OUTPUT);
	pinMode(CHANNEL_C_OFF, OUTPUT);
	pinMode(CHANNEL_D_ON, OUTPUT);
	pinMode(CHANNEL_D_OFF, OUTPUT);

	pullUpDnControl(CHANNEL_A_ON, PUD_DOWN);
	pullUpDnControl(CHANNEL_A_OFF, PUD_DOWN);
	pullUpDnControl(CHANNEL_B_ON, PUD_DOWN);
	pullUpDnControl(CHANNEL_B_OFF, PUD_DOWN);
	pullUpDnControl(CHANNEL_C_ON, PUD_DOWN);
	pullUpDnControl(CHANNEL_C_OFF, PUD_DOWN);
	pullUpDnControl(CHANNEL_D_ON, PUD_DOWN);
	pullUpDnControl(CHANNEL_D_OFF, PUD_DOWN);

int a = false;
int b = false;
int c = false;
int d = false;
int set = TURN_OFF;

printf("argv[0] is %s\n", argv[0]);
printf("argv[1] is %s\n", argv[1]);
printf("argv[2] is %s\n", argv[2]);

	switch(*argv[1])
	{
		case 'A' :
		case 'a' : a = true; break;
		case 'B' :
		case 'b' : b = true; break;
		case 'C' :
		case 'c' : c = true; break;
		case 'D' :
		case 'd' : d = true; break;
	}

	if (strcmp(argv[2], "on") == 0)
	{
		set = TURN_ON;
	}
	else if (strcmp(argv[2], "off") == 0)
	{
		set = TURN_OFF;
	}

if (a)
{
	if (set == TURN_ON)
	{
		digitalWrite(CHANNEL_A_ON, HIGH);
		delay(100);
		digitalWrite(CHANNEL_A_ON, LOW);
	}
	else if (set == TURN_OFF)
	{
		digitalWrite(CHANNEL_A_OFF, HIGH);
		delay(100);
		digitalWrite(CHANNEL_A_OFF, LOW);
	}
}	

if (b)
{
	if (set == TURN_ON)
	{
		digitalWrite(CHANNEL_B_ON, HIGH);
		delay(100);
		digitalWrite(CHANNEL_B_ON, LOW);
	}
	else if (set == TURN_OFF)
	{
		digitalWrite(CHANNEL_B_OFF, HIGH);
		delay(100);
		digitalWrite(CHANNEL_B_OFF, LOW);
	}
}

if (c)
{
	if (set == TURN_ON)
	{
		digitalWrite(CHANNEL_C_ON, HIGH);
		delay(100);      
		digitalWrite(CHANNEL_C_ON, LOW);
	}
	else if (set == TURN_OFF)
	{       
		digitalWrite(CHANNEL_C_OFF, HIGH);
		delay(100);
		digitalWrite(CHANNEL_C_OFF, LOW);
	}
}

if (d)
{
	if (set == TURN_ON)
	{
		digitalWrite(CHANNEL_D_ON, HIGH);
		delay(100);      
		digitalWrite(CHANNEL_D_ON, LOW);
	}
	else if (set == TURN_OFF)
	{       
		digitalWrite(CHANNEL_D_OFF, HIGH);
		delay(100);
		digitalWrite(CHANNEL_D_OFF, LOW);
	}
}

	return (0);
}


