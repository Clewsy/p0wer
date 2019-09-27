EESchema Schematic File Version 4
EELAYER 26 0
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
Text GLabel 2500 1550 0    60   Input ~ 0
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
Text GLabel 7250 1450 2    60   Input ~ 0
A_COM,B_COM
Text GLabel 2250 1950 0    60   Input ~ 0
A_ON,C_ON
Text GLabel 3650 1950 0    60   Input ~ 0
A_OFF,C_OFF
Text GLabel 3900 1550 0    60   Input ~ 0
RPI_A_OFF
Text GLabel 5050 1950 0    60   Input ~ 0
B_ON,D_ON
Text GLabel 6450 1950 0    60   Input ~ 0
B_OFF,D_OFF
Text GLabel 5300 1550 0    60   Input ~ 0
RPI_B_ON
Text GLabel 6700 1550 0    60   Input ~ 0
RPI_B_OFF
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
	8400 5350 8550 5350
Wire Notes Line
	1600 1050 1600 3650
Wire Notes Line
	1600 2350 8800 2350
Text Notes 1650 1200 0    60   ~ 0
4066_AB (CH A&B)
Text Notes 1650 2500 0    60   ~ 0
4066_CD (CH C&D)
Wire Wire Line
	2550 5200 2700 5200
Wire Wire Line
	2700 5200 2700 5250
Text Notes 2700 4700 0    60   ~ 0
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
2.0
Text Notes 8150 7650 0    60   ~ 0
20190927
Text Notes 3050 6100 0    60   ~ 0
WiringPi C Library Pin References\n----------------\nJ8 | pigpio | Function\n----------------\n29 | 05    | RPI_A_ON\n31 | 06    | RPI_A_OFF\n33 | 13    | RPI_B_ON\n35 | 19    | RPI_B_OFF\n36 | 26    | RPI_C_OFF\n37 | 16    | RPI_C_ON\n38 | 20    | RPI_D_ON\n40 | 21    | RPI_D_OFF
Wire Notes Line
	900  4300 4700 4300
Wire Notes Line
	4700 4300 4700 7050
$Comp
L 4xxx:4066 4066_AB_
U 1 1 5D8E055A
P 2600 1950
F 0 "4066_AB_" H 2600 1778 50  0000 C CNN
F 1 "4066" H 2600 1687 50  0000 C CNN
F 2 "" H 2600 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 2600 1950 50  0001 C CNN
	1    2600 1950
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4066 4066_AB_
U 2 1 5D8E06FF
P 4000 1950
F 0 "4066_AB_" H 4000 1778 50  0000 C CNN
F 1 "4066" H 4000 1687 50  0000 C CNN
F 2 "" H 4000 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 4000 1950 50  0001 C CNN
	2    4000 1950
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4066 4066_AB_
U 3 1 5D8E07C4
P 5400 1950
F 0 "4066_AB_" H 5400 1778 50  0000 C CNN
F 1 "4066" H 5400 1687 50  0000 C CNN
F 2 "" H 5400 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 5400 1950 50  0001 C CNN
	3    5400 1950
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4066 4066_AB_
U 4 1 5D8E0822
P 6800 1950
F 0 "4066_AB_" H 6800 1778 50  0000 C CNN
F 1 "4066" H 6800 1687 50  0000 C CNN
F 2 "" H 6800 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 6800 1950 50  0001 C CNN
	4    6800 1950
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4066 4066_AB_
U 5 1 5D8E0BE7
P 8200 1850
F 0 "4066_AB_" V 7833 1850 50  0000 C CNN
F 1 "4066" V 7924 1850 50  0000 C CNN
F 2 "" H 8200 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 8200 1850 50  0001 C CNN
	5    8200 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 1950 2300 1950
Wire Wire Line
	3650 1950 3700 1950
Wire Wire Line
	6500 1950 6450 1950
Wire Wire Line
	5100 1950 5050 1950
Wire Wire Line
	2500 1550 2600 1550
Wire Wire Line
	2600 1550 2600 1650
Wire Wire Line
	3900 1550 4000 1550
Wire Wire Line
	4000 1550 4000 1650
Wire Wire Line
	5300 1550 5400 1550
Wire Wire Line
	5400 1550 5400 1650
Wire Wire Line
	6700 1550 6800 1550
Wire Wire Line
	6800 1550 6800 1650
Wire Wire Line
	2900 1950 2950 1950
Wire Wire Line
	2950 1950 2950 1450
Wire Wire Line
	2950 1450 4350 1450
Wire Wire Line
	4300 1950 4350 1950
Wire Wire Line
	4350 1950 4350 1450
Connection ~ 4350 1450
Wire Wire Line
	4350 1450 5750 1450
Wire Wire Line
	5700 1950 5750 1950
Wire Wire Line
	5750 1950 5750 1450
Connection ~ 5750 1450
Wire Wire Line
	5750 1450 7150 1450
Wire Wire Line
	7100 1950 7150 1950
Wire Wire Line
	7150 1950 7150 1450
Connection ~ 7150 1450
Wire Wire Line
	7150 1450 7250 1450
$Comp
L power:GND #PWR?
U 1 1 5D913301
P 7650 1900
F 0 "#PWR?" H 7650 1650 50  0001 C CNN
F 1 "GND" H 7655 1727 50  0000 C CNN
F 2 "" H 7650 1900 50  0001 C CNN
F 3 "" H 7650 1900 50  0001 C CNN
	1    7650 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5D913357
P 8750 1800
F 0 "#PWR?" H 8750 1650 50  0001 C CNN
F 1 "+3.3V" H 8765 1973 50  0000 C CNN
F 2 "" H 8750 1800 50  0001 C CNN
F 3 "" H 8750 1800 50  0001 C CNN
	1    8750 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1850 7650 1850
Wire Wire Line
	7650 1850 7650 1900
Wire Wire Line
	8700 1850 8750 1850
Wire Wire Line
	8750 1850 8750 1800
Text GLabel 2500 2850 0    60   Input ~ 0
RPI_C_ON
Text GLabel 7250 2750 2    60   Input ~ 0
C_COM,D_COM
Text GLabel 2250 3250 0    60   Input ~ 0
A_ON,C_ON
Text GLabel 3650 3250 0    60   Input ~ 0
A_OFF,C_OFF
Text GLabel 3900 2850 0    60   Input ~ 0
RPI_C_OFF
Text GLabel 5050 3250 0    60   Input ~ 0
B_ON,D_ON
Text GLabel 6450 3250 0    60   Input ~ 0
B_OFF,D_OFF
Text GLabel 5300 2850 0    60   Input ~ 0
RPI_D_ON
Text GLabel 6700 2850 0    60   Input ~ 0
RPI_D_OFF
$Comp
L 4xxx:4066 4066_CD_
U 1 1 5D92C1FD
P 2600 3250
F 0 "4066_CD_" H 2600 3078 50  0000 C CNN
F 1 "4066" H 2600 2987 50  0000 C CNN
F 2 "" H 2600 3250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 2600 3250 50  0001 C CNN
	1    2600 3250
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4066 4066_CD_
U 2 1 5D92C203
P 4000 3250
F 0 "4066_CD_" H 4000 3078 50  0000 C CNN
F 1 "4066" H 4000 2987 50  0000 C CNN
F 2 "" H 4000 3250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 4000 3250 50  0001 C CNN
	2    4000 3250
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4066 4066_CD_
U 3 1 5D92C209
P 5400 3250
F 0 "4066_CD_" H 5400 3078 50  0000 C CNN
F 1 "4066" H 5400 2987 50  0000 C CNN
F 2 "" H 5400 3250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 5400 3250 50  0001 C CNN
	3    5400 3250
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4066 4066_CD_
U 4 1 5D92C20F
P 6800 3250
F 0 "4066_CD_" H 6800 3078 50  0000 C CNN
F 1 "4066" H 6800 2987 50  0000 C CNN
F 2 "" H 6800 3250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 6800 3250 50  0001 C CNN
	4    6800 3250
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4066 4066_CD_
U 5 1 5D92C215
P 8200 3150
F 0 "4066_CD_" V 7833 3150 50  0000 C CNN
F 1 "4066" V 7924 3150 50  0000 C CNN
F 2 "" H 8200 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 8200 3150 50  0001 C CNN
	5    8200 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 3250 2300 3250
Wire Wire Line
	3650 3250 3700 3250
Wire Wire Line
	6500 3250 6450 3250
Wire Wire Line
	5100 3250 5050 3250
Wire Wire Line
	2500 2850 2600 2850
Wire Wire Line
	2600 2850 2600 2950
Wire Wire Line
	3900 2850 4000 2850
Wire Wire Line
	4000 2850 4000 2950
Wire Wire Line
	5300 2850 5400 2850
Wire Wire Line
	5400 2850 5400 2950
Wire Wire Line
	6700 2850 6800 2850
Wire Wire Line
	6800 2850 6800 2950
Wire Wire Line
	2900 3250 2950 3250
Wire Wire Line
	2950 3250 2950 2750
Wire Wire Line
	2950 2750 4350 2750
Wire Wire Line
	4300 3250 4350 3250
Wire Wire Line
	4350 3250 4350 2750
Connection ~ 4350 2750
Wire Wire Line
	4350 2750 5750 2750
Wire Wire Line
	5700 3250 5750 3250
Wire Wire Line
	5750 3250 5750 2750
Connection ~ 5750 2750
Wire Wire Line
	5750 2750 7150 2750
Wire Wire Line
	7100 3250 7150 3250
Wire Wire Line
	7150 3250 7150 2750
Connection ~ 7150 2750
Wire Wire Line
	7150 2750 7250 2750
$Comp
L power:GND #PWR?
U 1 1 5D92C236
P 7650 3200
F 0 "#PWR?" H 7650 2950 50  0001 C CNN
F 1 "GND" H 7655 3027 50  0000 C CNN
F 2 "" H 7650 3200 50  0001 C CNN
F 3 "" H 7650 3200 50  0001 C CNN
	1    7650 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5D92C23C
P 8750 3100
F 0 "#PWR?" H 8750 2950 50  0001 C CNN
F 1 "+3.3V" H 8765 3273 50  0000 C CNN
F 2 "" H 8750 3100 50  0001 C CNN
F 3 "" H 8750 3100 50  0001 C CNN
	1    8750 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3150 7650 3150
Wire Wire Line
	7650 3150 7650 3200
Wire Wire Line
	8700 3150 8750 3150
Wire Wire Line
	8750 3150 8750 3100
Wire Notes Line
	8950 1050 8950 3650
Wire Notes Line
	8950 3650 1600 3650
Wire Notes Line
	1600 1050 8950 1050
$Comp
L Connector_Generic:Conn_02x05_Odd_Even REMOTE1
U 1 1 5D93745F
P 8100 5150
F 0 "REMOTE1" H 8150 5567 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 8150 5476 50  0000 C CNN
F 2 "" H 8100 5150 50  0001 C CNN
F 3 "~" H 8100 5150 50  0001 C CNN
	1    8100 5150
	1    0    0    -1  
$EndComp
NoConn ~ 7900 5150
NoConn ~ 8400 5150
$Comp
L power:GND #PWR?
U 1 1 5D93AB76
P 8550 5350
F 0 "#PWR?" H 8550 5100 50  0001 C CNN
F 1 "GND" H 8550 5200 50  0000 C CNN
F 2 "" H 8550 5350 50  0001 C CNN
F 3 "" H 8550 5350 50  0001 C CNN
	1    8550 5350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5D93AB97
P 8550 5250
F 0 "#PWR?" H 8550 5100 50  0001 C CNN
F 1 "+3.3V" H 8550 5400 50  0000 C CNN
F 2 "" H 8550 5250 50  0001 C CNN
F 3 "" H 8550 5250 50  0001 C CNN
	1    8550 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 5250 8550 5250
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J8
U 1 1 5D93CB80
P 2250 5900
F 0 "J8" H 2300 7017 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 2300 6926 50  0000 C CNN
F 2 "" H 2250 5900 50  0001 C CNN
F 3 "~" H 2250 5900 50  0001 C CNN
	1    2250 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D93CC5C
P 2700 5250
F 0 "#PWR?" H 2700 5000 50  0001 C CNN
F 1 "GND" H 2700 5100 50  0000 C CNN
F 2 "" H 2700 5250 50  0001 C CNN
F 3 "" H 2700 5250 50  0001 C CNN
	1    2700 5250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5D93CCD3
P 1750 4950
F 0 "#PWR?" H 1750 4800 50  0001 C CNN
F 1 "+3.3V" H 1750 5100 50  0000 C CNN
F 2 "" H 1750 4950 50  0001 C CNN
F 3 "" H 1750 4950 50  0001 C CNN
	1    1750 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 5000 1750 5000
Wire Wire Line
	1750 5000 1750 4950
Wire Wire Line
	2850 5000 2550 5000
$Comp
L power:+5V #PWR?
U 1 1 5D943BC8
P 2850 4950
F 0 "#PWR?" H 2850 4800 50  0001 C CNN
F 1 "+5V" H 2865 5123 50  0000 C CNN
F 2 "" H 2850 4950 50  0001 C CNN
F 3 "" H 2850 4950 50  0001 C CNN
	1    2850 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 5000 2850 4950
Text Notes 7050 6850 0    60   ~ 0
Rev_2.0 changes:\n- Updated components for compatibility with latest KiCAD\n- Updated pinout numbering for pigpio (replaces wiringpi)
NoConn ~ 2050 5100
NoConn ~ 2050 5200
NoConn ~ 2050 5300
NoConn ~ 2050 5400
NoConn ~ 2050 5500
NoConn ~ 2050 5600
NoConn ~ 2050 5700
NoConn ~ 2050 5800
NoConn ~ 2050 5900
NoConn ~ 2050 6000
NoConn ~ 2050 6100
NoConn ~ 2050 6200
NoConn ~ 2050 6300
NoConn ~ 2050 6900
NoConn ~ 2550 6600
NoConn ~ 2550 6500
NoConn ~ 2550 6400
NoConn ~ 2550 6300
NoConn ~ 2550 6200
NoConn ~ 2550 6100
NoConn ~ 2550 6000
NoConn ~ 2550 5900
NoConn ~ 2550 5800
NoConn ~ 2550 5700
NoConn ~ 2550 5600
NoConn ~ 2550 5500
NoConn ~ 2550 5400
NoConn ~ 2550 5300
NoConn ~ 2550 5100
$EndSCHEMATC
