EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:p0wer-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 4066 U_4066_AB1
U 1 1 5930FF5E
P 3850 1700
F 0 "U_4066_AB1" H 4050 1551 50  0000 C CNN
F 1 "4066" H 4050 1850 50  0000 C CNN
F 2 "" H 3850 1700 60  0001 C CNN
F 3 "" H 3850 1700 60  0001 C CNN
	1    3850 1700
	1    0    0    -1  
$EndComp
$Comp
L 4066 U_4066_CD1
U 1 1 5930FF91
P 3850 3000
F 0 "U_4066_CD1" H 4050 2851 50  0000 C CNN
F 1 "4066" H 4050 3150 50  0000 C CNN
F 2 "" H 3850 3000 60  0001 C CNN
F 3 "" H 3850 3000 60  0001 C CNN
	1    3850 3000
	1    0    0    -1  
$EndComp
$Comp
L 4066 U_4066_AB1
U 2 1 59310088
P 5250 1700
F 0 "U_4066_AB1" H 5450 1551 50  0000 C CNN
F 1 "4066" H 5450 1850 50  0000 C CNN
F 2 "" H 5250 1700 60  0001 C CNN
F 3 "" H 5250 1700 60  0001 C CNN
	2    5250 1700
	1    0    0    -1  
$EndComp
$Comp
L 4066 U_4066_CD1
U 2 1 5931011C
P 5250 3000
F 0 "U_4066_CD1" H 5450 2851 50  0000 C CNN
F 1 "4066" H 5450 3150 50  0000 C CNN
F 2 "" H 5250 3000 60  0001 C CNN
F 3 "" H 5250 3000 60  0001 C CNN
	2    5250 3000
	1    0    0    -1  
$EndComp
$Comp
L 4066 U_4066_AB1
U 3 1 593101BF
P 6650 1700
F 0 "U_4066_AB1" H 6850 1551 50  0000 C CNN
F 1 "4066" H 6850 1850 50  0000 C CNN
F 2 "" H 6650 1700 60  0001 C CNN
F 3 "" H 6650 1700 60  0001 C CNN
	3    6650 1700
	1    0    0    -1  
$EndComp
$Comp
L 4066 U_4066_CD1
U 3 1 5931025B
P 6650 3000
F 0 "U_4066_CD1" H 6850 2851 50  0000 C CNN
F 1 "4066" H 6850 3150 50  0000 C CNN
F 2 "" H 6650 3000 60  0001 C CNN
F 3 "" H 6650 3000 60  0001 C CNN
	3    6650 3000
	1    0    0    -1  
$EndComp
$Comp
L 4066 U_4066_AB1
U 4 1 59310300
P 8050 1700
F 0 "U_4066_AB1" H 8250 1551 50  0000 C CNN
F 1 "4066" H 8250 1850 50  0000 C CNN
F 2 "" H 8050 1700 60  0001 C CNN
F 3 "" H 8050 1700 60  0001 C CNN
	4    8050 1700
	1    0    0    -1  
$EndComp
$Comp
L 4066 U_4066_CD1
U 4 1 59310347
P 8050 3000
F 0 "U_4066_CD1" H 8250 2851 50  0000 C CNN
F 1 "4066" H 8250 3150 50  0000 C CNN
F 2 "" H 8050 3000 60  0001 C CNN
F 3 "" H 8050 3000 60  0001 C CNN
	4    8050 3000
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X20 J8
U 1 1 5931042B
P 2300 5950
F 0 "J8" H 2300 7000 50  0000 C CNN
F 1 "CONN_02X20" V 2300 5950 50  0000 C CNN
F 2 "" H 2300 5000 50  0001 C CNN
F 3 "" H 2300 5000 50  0001 C CNN
	1    2300 5950
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X05 Remote1
U 1 1 5931050A
P 8150 5150
F 0 "Remote1" H 8150 5450 50  0000 C CNN
F 1 "CONN_02X05" H 8150 4850 50  0000 C CNN
F 2 "" H 8150 3950 50  0001 C CNN
F 3 "" H 8150 3950 50  0001 C CNN
	1    8150 5150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5931055A
P 5250 2000
F 0 "#PWR01" H 5250 1750 50  0001 C CNN
F 1 "GND" H 5250 1850 50  0000 C CNN
F 2 "" H 5250 2000 50  0001 C CNN
F 3 "" H 5250 2000 50  0001 C CNN
	1    5250 2000
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR02
U 1 1 59310582
P 1950 4950
F 0 "#PWR02" H 1950 4800 50  0001 C CNN
F 1 "+3.3V" H 1950 5090 50  0000 C CNN
F 2 "" H 1950 4950 50  0001 C CNN
F 3 "" H 1950 4950 50  0001 C CNN
	1    1950 4950
	1    0    0    -1  
$EndComp
Text GLabel 2000 6400 0    60   Input ~ 0
RPI_A_ON
Text GLabel 1500 6500 0    60   Input ~ 0
RPI_A_OFF
Text GLabel 2000 6600 0    60   Input ~ 0
RPI_B_ON
Text GLabel 1500 6700 0    60   Input ~ 0
RPI_B_OFF
Text GLabel 2000 6800 0    60   Input ~ 0
RPI_C_ON
Text GLabel 2600 6700 2    60   Input ~ 0
RPI_C_OFF
Text GLabel 3150 6800 2    60   Input ~ 0
RPI_D_ON
Text GLabel 2600 6900 2    60   Input ~ 0
RPI_D_OFF
Text GLabel 3500 1850 0    60   Input ~ 0
RPI_A_ON
Text GLabel 7850 4950 0    60   Input ~ 0
A_COM,B_COM
Text GLabel 7150 5050 0    60   Input ~ 0
C_COM,D_COM
Text GLabel 8450 4950 2    60   Input ~ 0
A_ON,C_ON
Text GLabel 9000 5050 2    60   Input ~ 0
B_ON,D_ON
Text GLabel 7850 5250 0    60   Input ~ 0
B_OFF,D_OFF
Text GLabel 7200 5350 0    60   Input ~ 0
A_OFF,C_OFF
$Comp
L +3.3V #PWR03
U 1 1 593133A4
P 8550 5250
F 0 "#PWR03" H 8550 5100 50  0001 C CNN
F 1 "+3.3V" H 8550 5390 50  0000 C CNN
F 2 "" H 8550 5250 50  0001 C CNN
F 3 "" H 8550 5250 50  0001 C CNN
	1    8550 5250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 593133CC
P 8550 5350
F 0 "#PWR04" H 8550 5100 50  0001 C CNN
F 1 "GND" H 8550 5200 50  0000 C CNN
F 2 "" H 8550 5350 50  0001 C CNN
F 3 "" H 8550 5350 50  0001 C CNN
	1    8550 5350
	1    0    0    -1  
$EndComp
Text GLabel 8450 1200 2    60   Input ~ 0
A_COM,B_COM
Text GLabel 3500 1700 0    60   Input ~ 0
A_ON,C_ON
Text GLabel 4900 1700 0    60   Input ~ 0
A_OFF,C_OFF
Text GLabel 4900 1850 0    60   Input ~ 0
RPI_A_OFF
Text GLabel 6300 1700 0    60   Input ~ 0
B_ON,D_ON
Text GLabel 7700 1700 0    60   Input ~ 0
B_OFF,D_OFF
Text GLabel 6300 1850 0    60   Input ~ 0
RPI_B_ON
Text GLabel 7700 1850 0    60   Input ~ 0
RPI_B_OFF
$Comp
L +3.3V #PWR05
U 1 1 59313BB9
P 3850 1400
F 0 "#PWR05" H 3850 1250 50  0001 C CNN
F 1 "+3.3V" H 3850 1540 50  0000 C CNN
F 2 "" H 3850 1400 50  0001 C CNN
F 3 "" H 3850 1400 50  0001 C CNN
	1    3850 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 59313BE1
P 3850 2000
F 0 "#PWR06" H 3850 1750 50  0001 C CNN
F 1 "GND" H 3850 1850 50  0000 C CNN
F 2 "" H 3850 2000 50  0001 C CNN
F 3 "" H 3850 2000 50  0001 C CNN
	1    3850 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 6500 1500 6500
Wire Wire Line
	2050 6700 1500 6700
Wire Wire Line
	2550 6800 3150 6800
Wire Wire Line
	2050 6400 2000 6400
Wire Wire Line
	2050 6600 2000 6600
Wire Wire Line
	2050 6800 2000 6800
Wire Wire Line
	2600 6700 2550 6700
Wire Wire Line
	2600 6900 2550 6900
Wire Wire Line
	7900 4950 7850 4950
Wire Wire Line
	7900 5050 7150 5050
Wire Wire Line
	7900 5250 7850 5250
Wire Wire Line
	7900 5350 7200 5350
Wire Wire Line
	8450 4950 8400 4950
Wire Wire Line
	8400 5050 9000 5050
Wire Wire Line
	8400 5250 8550 5250
Wire Wire Line
	8400 5350 8550 5350
Wire Wire Line
	3500 1700 3550 1700
Wire Wire Line
	3550 1850 3500 1850
Wire Wire Line
	4900 1700 4950 1700
Wire Wire Line
	4900 1850 4950 1850
Wire Wire Line
	6350 1700 6300 1700
Wire Wire Line
	6300 1850 6350 1850
Wire Wire Line
	7700 1700 7750 1700
Wire Wire Line
	7700 1850 7750 1850
Wire Wire Line
	3850 1950 3850 2000
Wire Wire Line
	3850 1450 3850 1400
$Comp
L +3.3V #PWR07
U 1 1 59314791
P 5250 1400
F 0 "#PWR07" H 5250 1250 50  0001 C CNN
F 1 "+3.3V" H 5250 1540 50  0000 C CNN
F 2 "" H 5250 1400 50  0001 C CNN
F 3 "" H 5250 1400 50  0001 C CNN
	1    5250 1400
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR08
U 1 1 593147BA
P 6650 1400
F 0 "#PWR08" H 6650 1250 50  0001 C CNN
F 1 "+3.3V" H 6650 1540 50  0000 C CNN
F 2 "" H 6650 1400 50  0001 C CNN
F 3 "" H 6650 1400 50  0001 C CNN
	1    6650 1400
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR09
U 1 1 593147E3
P 8050 1400
F 0 "#PWR09" H 8050 1250 50  0001 C CNN
F 1 "+3.3V" H 8050 1540 50  0000 C CNN
F 2 "" H 8050 1400 50  0001 C CNN
F 3 "" H 8050 1400 50  0001 C CNN
	1    8050 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 1450 5250 1400
Wire Wire Line
	6650 1450 6650 1400
Wire Wire Line
	8050 1450 8050 1400
Wire Wire Line
	4150 1700 4200 1700
Wire Wire Line
	4200 1700 4200 1200
Wire Wire Line
	4200 1200 8450 1200
Wire Wire Line
	8400 1200 8400 1700
Wire Wire Line
	8400 1700 8350 1700
Wire Wire Line
	5550 1700 5600 1700
Wire Wire Line
	5600 1700 5600 1200
Connection ~ 5600 1200
Wire Wire Line
	6950 1700 7000 1700
Wire Wire Line
	7000 1700 7000 1200
Connection ~ 7000 1200
Connection ~ 8400 1200
$Comp
L GND #PWR010
U 1 1 5931498C
P 6650 2000
F 0 "#PWR010" H 6650 1750 50  0001 C CNN
F 1 "GND" H 6650 1850 50  0000 C CNN
F 2 "" H 6650 2000 50  0001 C CNN
F 3 "" H 6650 2000 50  0001 C CNN
	1    6650 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 593149B5
P 8050 2000
F 0 "#PWR011" H 8050 1750 50  0001 C CNN
F 1 "GND" H 8050 1850 50  0000 C CNN
F 2 "" H 8050 2000 50  0001 C CNN
F 3 "" H 8050 2000 50  0001 C CNN
	1    8050 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 1950 8050 2000
Wire Wire Line
	6650 1950 6650 2000
Wire Wire Line
	5250 1950 5250 2000
$Comp
L +3.3V #PWR012
U 1 1 59314BAA
P 3850 2700
F 0 "#PWR012" H 3850 2550 50  0001 C CNN
F 1 "+3.3V" H 3850 2840 50  0000 C CNN
F 2 "" H 3850 2700 50  0001 C CNN
F 3 "" H 3850 2700 50  0001 C CNN
	1    3850 2700
	1    0    0    -1  
$EndComp
Text GLabel 3500 3000 0    60   Input ~ 0
A_ON,C_ON
Text GLabel 4900 3000 0    60   Input ~ 0
A_OFF,C_OFF
Text GLabel 6300 3000 0    60   Input ~ 0
B_ON,D_ON
Text GLabel 7700 3000 0    60   Input ~ 0
B_OFF,D_OFF
Text GLabel 3500 3150 0    60   Input ~ 0
RPI_C_ON
Text GLabel 4900 3150 0    60   Input ~ 0
RPI_C_OFF
Text GLabel 6300 3150 0    60   Input ~ 0
RPI_D_ON
Text GLabel 7700 3150 0    60   Input ~ 0
RPI_D_OFF
$Comp
L +3.3V #PWR013
U 1 1 593162C0
P 5250 2700
F 0 "#PWR013" H 5250 2550 50  0001 C CNN
F 1 "+3.3V" H 5250 2840 50  0000 C CNN
F 2 "" H 5250 2700 50  0001 C CNN
F 3 "" H 5250 2700 50  0001 C CNN
	1    5250 2700
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR014
U 1 1 593162E9
P 6650 2700
F 0 "#PWR014" H 6650 2550 50  0001 C CNN
F 1 "+3.3V" H 6650 2840 50  0000 C CNN
F 2 "" H 6650 2700 50  0001 C CNN
F 3 "" H 6650 2700 50  0001 C CNN
	1    6650 2700
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR015
U 1 1 59316312
P 8050 2700
F 0 "#PWR015" H 8050 2550 50  0001 C CNN
F 1 "+3.3V" H 8050 2840 50  0000 C CNN
F 2 "" H 8050 2700 50  0001 C CNN
F 3 "" H 8050 2700 50  0001 C CNN
	1    8050 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 5931633B
P 8050 3300
F 0 "#PWR016" H 8050 3050 50  0001 C CNN
F 1 "GND" H 8050 3150 50  0000 C CNN
F 2 "" H 8050 3300 50  0001 C CNN
F 3 "" H 8050 3300 50  0001 C CNN
	1    8050 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 59316364
P 6650 3300
F 0 "#PWR017" H 6650 3050 50  0001 C CNN
F 1 "GND" H 6650 3150 50  0000 C CNN
F 2 "" H 6650 3300 50  0001 C CNN
F 3 "" H 6650 3300 50  0001 C CNN
	1    6650 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 5931638D
P 5250 3300
F 0 "#PWR018" H 5250 3050 50  0001 C CNN
F 1 "GND" H 5250 3150 50  0000 C CNN
F 2 "" H 5250 3300 50  0001 C CNN
F 3 "" H 5250 3300 50  0001 C CNN
	1    5250 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 593163B6
P 3850 3300
F 0 "#PWR019" H 3850 3050 50  0001 C CNN
F 1 "GND" H 3850 3150 50  0000 C CNN
F 2 "" H 3850 3300 50  0001 C CNN
F 3 "" H 3850 3300 50  0001 C CNN
	1    3850 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3000 3550 3000
Wire Wire Line
	3550 3150 3500 3150
Wire Wire Line
	4900 3000 4950 3000
Wire Wire Line
	4950 3150 4900 3150
Wire Wire Line
	6300 3000 6350 3000
Wire Wire Line
	6300 3150 6350 3150
Wire Wire Line
	7700 3000 7750 3000
Wire Wire Line
	7700 3150 7750 3150
Wire Wire Line
	3850 2700 3850 2750
Wire Wire Line
	3850 3250 3850 3300
Wire Wire Line
	5250 3300 5250 3250
Wire Wire Line
	5250 2750 5250 2700
Wire Wire Line
	6650 2700 6650 2750
Wire Wire Line
	6650 3250 6650 3300
Wire Wire Line
	8050 3300 8050 3250
Wire Wire Line
	8050 2750 8050 2700
Wire Wire Line
	4150 3000 4200 3000
Wire Wire Line
	4200 3000 4200 2500
Wire Wire Line
	4200 2500 8450 2500
Wire Wire Line
	8400 2500 8400 3000
Wire Wire Line
	8400 3000 8350 3000
Wire Wire Line
	6950 3000 7000 3000
Wire Wire Line
	7000 3000 7000 2500
Connection ~ 7000 2500
Wire Wire Line
	5550 3000 5600 3000
Wire Wire Line
	5600 3000 5600 2500
Connection ~ 5600 2500
Text GLabel 8450 2500 2    60   Input ~ 0
C_COM,D_COM
Connection ~ 8400 2500
Wire Notes Line
	9250 1000 2850 1000
Wire Notes Line
	2850 1000 2850 3600
Wire Notes Line
	2850 2300 9250 2300
Wire Notes Line
	9250 1000 9250 3600
Wire Notes Line
	9250 3600 2850 3600
Text Notes 2900 1150 0    60   ~ 0
4066_AB (CH A&B)
Text Notes 2900 2450 0    60   ~ 0
4066_CD (CH C&D)
Wire Wire Line
	2050 5000 1950 5000
Wire Wire Line
	1950 5000 1950 4950
$Comp
L GND #PWR020
U 1 1 59317E52
P 2700 5250
F 0 "#PWR020" H 2700 5000 50  0001 C CNN
F 1 "GND" H 2700 5100 50  0000 C CNN
F 2 "" H 2700 5250 50  0001 C CNN
F 3 "" H 2700 5250 50  0001 C CNN
	1    2700 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 5200 2700 5200
Wire Wire Line
	2700 5200 2700 5250
$Comp
L +5V #PWR021
U 1 1 59318252
P 2800 4750
F 0 "#PWR021" H 2800 4600 50  0001 C CNN
F 1 "+5V" H 2800 4890 50  0000 C CNN
F 2 "" H 2800 4750 50  0001 C CNN
F 3 "" H 2800 4750 50  0001 C CNN
	1    2800 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 5000 2800 5000
Wire Wire Line
	2800 5000 2800 4750
Text Notes 2650 4550 0    60   ~ 0
5V_Supply
Text Notes 950  4450 0    60   ~ 0
RaspberryPi_Header
Text Notes 6500 4700 0    60   ~ 0
Remote_Control_Interface
Wire Notes Line
	6400 4550 6400 5600
Wire Notes Line
	6400 5600 9700 5600
Wire Notes Line
	9700 5600 9700 4550
Wire Notes Line
	9700 4550 6400 4550
Wire Notes Line
	900  7050 4700 7050
Wire Notes Line
	900  7050 900  4300
Text Notes 7450 7500 0    60   ~ 0
p0wer - raspberry pi remote control mains interface
Text Notes 10600 7650 0    60   ~ 0
1.0
Text Notes 8150 7650 0    60   ~ 0
20170602
Text Notes 3050 6100 0    60   ~ 0
WiringPi C Library Pin References\n----------------\nJ8 | WiringPi | Function\n----------------\n29 | 21      | RPI_A_ON\n31 | 22      | RPI_A_OFF\n33 | 23      | RPI_B_ON\n35 | 24      | RPI_B_OFF\n36 | 27      | RPI_C_OFF\n37 | 25      | RPI_C_ON\n38 | 28      | RPI_D_ON\n40 | 29      | RPI_D_OFF
Wire Notes Line
	900  4300 4700 4300
Wire Notes Line
	4700 4300 4700 7050
$EndSCHEMATC
