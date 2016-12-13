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
LIBS:comps
LIBS:w_connectors
LIBS:final-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
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
L LM6132 U301
U 1 1 5840D18A
P 4900 3300
F 0 "U301" H 4681 3850 50  0000 L CNN
F 1 "LM6132" H 4707 2489 50  0000 L CNN
F 2 "w_pth_circuits:dil_8-300" H 5750 3750 50  0001 L CNN
F 3 "SOIC-8 Texas Instruments" H 5100 3850 50  0001 L CNN
F 4 "Good" H 5750 3550 50  0001 L CNN "Availability"
F 5 "2.25 USD" H 5100 4150 50  0001 L CNN "Price"
F 6 "LM6132BIN/NOPB" H 5100 4050 50  0001 L CNN "MP"
F 7 "Dual Low Power 10 MHz Rail-to-Rail I/O Operational Amplifier 8-PDIP -40 to 85" H 5100 3950 50  0001 L CNN "Description"
F 8 "Texas Instruments" H 5750 3650 50  0001 L CNN "MF"
	1    4900 3300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 5840D281
P 4050 2100
F 0 "#PWR03" H 4050 1950 50  0001 C CNN
F 1 "+5V" H 4050 2240 50  0000 C CNN
F 2 "" H 4050 2100 50  0000 C CNN
F 3 "" H 4050 2100 50  0000 C CNN
	1    4050 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2100 4050 3000
$Comp
L GND #PWR04
U 1 1 5840D29F
P 4050 3950
F 0 "#PWR04" H 4050 3700 50  0001 C CNN
F 1 "GND" H 4050 3800 50  0000 C CNN
F 2 "" H 4050 3950 50  0000 C CNN
F 3 "" H 4050 3950 50  0000 C CNN
	1    4050 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3950 4050 3800
Wire Wire Line
	4050 3800 4200 3800
$Comp
L C C301
U 1 1 5840D2BB
P 3650 2400
F 0 "C301" H 3675 2500 50  0000 L CNN
F 1 "0.1u" H 3675 2300 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L4_W2.5_P2.5" H 3688 2250 50  0001 C CNN
F 3 "" H 3650 2400 50  0000 C CNN
	1    3650 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2250 3650 2200
Connection ~ 4050 2200
$Comp
L GND #PWR05
U 1 1 5840D2FA
P 3650 2600
F 0 "#PWR05" H 3650 2350 50  0001 C CNN
F 1 "GND" H 3650 2450 50  0000 C CNN
F 2 "" H 3650 2600 50  0000 C CNN
F 3 "" H 3650 2600 50  0000 C CNN
	1    3650 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2600 3650 2550
Wire Wire Line
	4050 3000 4200 3000
Wire Wire Line
	3650 2200 4050 2200
Wire Wire Line
	4200 3200 3900 3200
Wire Wire Line
	4200 3300 3900 3300
Text Label 3900 3200 0    60   ~ 0
INA+
Text Label 3900 3300 0    60   ~ 0
INA-
Wire Wire Line
	4200 3500 3900 3500
Wire Wire Line
	4200 3600 3900 3600
Text Label 3900 3600 0    60   ~ 0
OUTB
Text Label 3900 3500 0    60   ~ 0
INB+
Text HLabel 6900 5450 2    60   Input ~ 0
I_IN
$Comp
L CD4066 U302
U 1 1 5840D763
P 5250 5250
F 0 "U302" H 5039 5809 50  0000 L CNN
F 1 "CD4066" H 5099 4307 50  0000 L CNN
F 2 "w_pth_circuits:dil_14-300" H 5250 5250 50  0001 L CNN
F 3 "DIP-14 Texas Instruments" H 5250 5250 50  0001 L CNN
F 4 "Good" H 5250 5250 50  0001 L CNN "Availability"
F 5 "0.26 USD" H 5250 5250 50  0001 L CNN "Price"
F 6 "CD4066BE" H 5250 5250 50  0001 L CNN "MP"
F 7 "IC: cyfrowy; bilateralny, switch; CMOS; THT; DIP14" H 5250 5250 50  0001 L CNN "Description"
F 8 "Texas Instruments" H 5250 5250 50  0001 L CNN "MF"
	1    5250 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5450 6550 5450
Wire Wire Line
	6550 5050 6900 5050
Text Label 6900 5050 2    60   ~ 0
INA-
Wire Wire Line
	6550 5150 7200 5150
$Comp
L R R304
U 1 1 5840D8B5
P 7350 5150
F 0 "R304" V 7430 5150 50  0000 C CNN
F 1 "1K" V 7350 5150 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Vertical_RM5mm" V 7280 5150 50  0001 C CNN
F 3 "" H 7350 5150 50  0000 C CNN
	1    7350 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	7500 5150 7650 5150
Wire Wire Line
	7650 5150 7650 4950
$Comp
L +3V3 #PWR06
U 1 1 5840D901
P 7650 4950
F 0 "#PWR06" H 7650 4800 50  0001 C CNN
F 1 "+3V3" H 7650 5090 50  0000 C CNN
F 2 "" H 7650 4950 50  0000 C CNN
F 3 "" H 7650 4950 50  0000 C CNN
	1    7650 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 5550 6900 5550
Text Label 6900 5550 2    60   ~ 0
INA-
Wire Wire Line
	5600 3100 5900 3100
Wire Wire Line
	5600 3000 6450 3000
Text Label 5900 3100 2    60   ~ 0
OUTB
$Comp
L R R301
U 1 1 5840DA28
P 2550 3400
F 0 "R301" V 2630 3400 50  0000 C CNN
F 1 "910" V 2550 3400 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Vertical_RM5mm" V 2480 3400 50  0001 C CNN
F 3 "" H 2550 3400 50  0000 C CNN
	1    2550 3400
	1    0    0    -1  
$EndComp
$Comp
L R R302
U 1 1 5840DA55
P 2550 3850
F 0 "R302" V 2630 3850 50  0000 C CNN
F 1 "9.1K" V 2550 3850 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Vertical_RM5mm" V 2480 3850 50  0001 C CNN
F 3 "" H 2550 3850 50  0000 C CNN
	1    2550 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 4000 2550 4100
$Comp
L GND #PWR07
U 1 1 5840DA9A
P 2550 4100
F 0 "#PWR07" H 2550 3850 50  0001 C CNN
F 1 "GND" H 2550 3950 50  0000 C CNN
F 2 "" H 2550 4100 50  0000 C CNN
F 3 "" H 2550 4100 50  0000 C CNN
	1    2550 4100
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR08
U 1 1 5840DAC0
P 2550 3100
F 0 "#PWR08" H 2550 2950 50  0001 C CNN
F 1 "+3V3" H 2550 3240 50  0000 C CNN
F 2 "" H 2550 3100 50  0000 C CNN
F 3 "" H 2550 3100 50  0000 C CNN
	1    2550 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 3550 2550 3700
Wire Wire Line
	2550 3250 2550 3100
Wire Wire Line
	2550 3650 2800 3650
Connection ~ 2550 3650
Text Label 2800 3650 2    60   ~ 0
INA+
$Comp
L +5V #PWR09
U 1 1 5840DC8B
P 3850 4400
F 0 "#PWR09" H 3850 4250 50  0001 C CNN
F 1 "+5V" H 3850 4540 50  0000 C CNN
F 2 "" H 3850 4400 50  0000 C CNN
F 3 "" H 3850 4400 50  0000 C CNN
	1    3850 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5840DCB1
P 3850 5900
F 0 "#PWR010" H 3850 5650 50  0001 C CNN
F 1 "GND" H 3850 5750 50  0000 C CNN
F 2 "" H 3850 5900 50  0000 C CNN
F 3 "" H 3850 5900 50  0000 C CNN
	1    3850 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 5550 3850 5900
Wire Wire Line
	3850 5750 3950 5750
Wire Wire Line
	3850 4400 3850 5050
Wire Wire Line
	3850 5050 3950 5050
$Comp
L C C302
U 1 1 5840DE19
P 3650 4700
F 0 "C302" H 3675 4800 50  0000 L CNN
F 1 "0.1u" H 3675 4600 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L4_W2.5_P2.5" H 3688 4550 50  0001 C CNN
F 3 "" H 3650 4700 50  0000 C CNN
	1    3650 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 4550 3650 4450
Wire Wire Line
	3650 4450 3850 4450
Connection ~ 3850 4450
Wire Wire Line
	3650 4850 3650 4950
$Comp
L GND #PWR011
U 1 1 5840DE9A
P 3650 4950
F 0 "#PWR011" H 3650 4700 50  0001 C CNN
F 1 "GND" H 3650 4800 50  0000 C CNN
F 2 "" H 3650 4950 50  0000 C CNN
F 3 "" H 3650 4950 50  0000 C CNN
	1    3650 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 5250 3500 5250
Wire Wire Line
	3950 5350 3500 5350
Wire Wire Line
	3950 5450 3500 5450
Text HLabel 3500 5250 0    60   Input ~ 0
RAMPUP
Text HLabel 3500 5350 0    60   Input ~ 0
RAMPDOWN
Text HLabel 3500 5450 0    60   Input ~ 0
CLEAR
Wire Wire Line
	3950 5550 3850 5550
Connection ~ 3850 5750
$Comp
L LM311N U303
U 1 1 5840E585
P 7950 3050
F 0 "U303" H 7950 3300 50  0000 L CNN
F 1 "LM311N" H 7950 3200 50  0000 L CNN
F 2 "w_pth_circuits:dil_8-300" H 7950 3050 50  0001 C CNN
F 3 "" H 7950 3050 50  0000 C CNN
	1    7950 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 3350 7950 3550
Wire Wire Line
	7850 3350 7850 3500
Wire Wire Line
	7850 3500 7950 3500
Connection ~ 7950 3500
$Comp
L GND #PWR012
U 1 1 5840E672
P 7950 3550
F 0 "#PWR012" H 7950 3300 50  0001 C CNN
F 1 "GND" H 7950 3400 50  0000 C CNN
F 2 "" H 7950 3550 50  0000 C CNN
F 3 "" H 7950 3550 50  0000 C CNN
	1    7950 3550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR013
U 1 1 5840E70D
P 7850 2650
F 0 "#PWR013" H 7850 2500 50  0001 C CNN
F 1 "+5V" H 7850 2790 50  0000 C CNN
F 2 "" H 7850 2650 50  0000 C CNN
F 3 "" H 7850 2650 50  0000 C CNN
	1    7850 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 2650 7850 2750
NoConn ~ 8250 3150
NoConn ~ 8050 3350
NoConn ~ 6550 5750
NoConn ~ 6550 5350
$Comp
L R R308
U 1 1 5840EA71
P 8800 2600
F 0 "R308" V 8880 2600 50  0000 C CNN
F 1 "1K" V 8800 2600 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Vertical_RM5mm" V 8730 2600 50  0001 C CNN
F 3 "" H 8800 2600 50  0000 C CNN
	1    8800 2600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR014
U 1 1 5840EADC
P 8800 2350
F 0 "#PWR014" H 8800 2200 50  0001 C CNN
F 1 "+5V" H 8800 2490 50  0000 C CNN
F 2 "" H 8800 2350 50  0000 C CNN
F 3 "" H 8800 2350 50  0000 C CNN
	1    8800 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 2350 8800 2450
Wire Wire Line
	8800 2750 8800 3050
Wire Wire Line
	8800 3050 8250 3050
Wire Wire Line
	7150 2950 7650 2950
$Comp
L R R307
U 1 1 58439012
P 7850 2200
F 0 "R307" V 7930 2200 50  0000 C CNN
F 1 "R" V 7850 2200 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Vertical_RM5mm" V 7780 2200 50  0001 C CNN
F 3 "" H 7850 2200 50  0000 C CNN
	1    7850 2200
	0    1    1    0   
$EndComp
$Comp
L R R306
U 1 1 58439053
P 7400 2450
F 0 "R306" V 7480 2450 50  0000 C CNN
F 1 "9.1K" V 7400 2450 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Vertical_RM5mm" V 7330 2450 50  0001 C CNN
F 3 "" H 7400 2450 50  0000 C CNN
	1    7400 2450
	1    0    0    -1  
$EndComp
$Comp
L R R305
U 1 1 58439092
P 7400 1950
F 0 "R305" V 7480 1950 50  0000 C CNN
F 1 "910" V 7400 1950 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Vertical_RM5mm" V 7330 1950 50  0001 C CNN
F 3 "" H 7400 1950 50  0000 C CNN
	1    7400 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 2100 7400 2300
Wire Wire Line
	7150 2200 7700 2200
Connection ~ 7400 2200
Wire Wire Line
	8000 2200 8500 2200
Wire Wire Line
	8500 2200 8500 2800
Wire Wire Line
	8500 2800 8800 2800
Connection ~ 8800 2800
Wire Wire Line
	7150 2200 7150 2950
$Comp
L GND #PWR015
U 1 1 58439230
P 7400 2700
F 0 "#PWR015" H 7400 2450 50  0001 C CNN
F 1 "GND" H 7400 2550 50  0000 C CNN
F 2 "" H 7400 2700 50  0000 C CNN
F 3 "" H 7400 2700 50  0000 C CNN
	1    7400 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 2700 7400 2600
Wire Wire Line
	7400 1800 7400 1700
$Comp
L +3V3 #PWR016
U 1 1 584392FD
P 7400 1700
F 0 "#PWR016" H 7400 1550 50  0001 C CNN
F 1 "+3V3" H 7400 1840 50  0000 C CNN
F 2 "" H 7400 1700 50  0000 C CNN
F 3 "" H 7400 1700 50  0000 C CNN
	1    7400 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3150 6450 3150
Wire Wire Line
	6450 3150 6450 3000
Text Label 7500 2950 0    60   ~ 0
V+
Text HLabel 8800 3050 2    60   Output ~ 0
COMP_OUT
$Comp
L C C304
U 1 1 5843958A
P 8200 2600
F 0 "C304" H 8225 2700 50  0000 L CNN
F 1 "0.1u" H 8225 2500 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L4_W2.5_P2.5" H 8238 2450 50  0001 C CNN
F 3 "" H 8200 2600 50  0000 C CNN
	1    8200 2600
	0    1    1    0   
$EndComp
$Comp
L GND #PWR017
U 1 1 584395F0
P 8350 2800
F 0 "#PWR017" H 8350 2550 50  0001 C CNN
F 1 "GND" H 8350 2650 50  0000 C CNN
F 2 "" H 8350 2800 50  0000 C CNN
F 3 "" H 8350 2800 50  0000 C CNN
	1    8350 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 2600 8350 2800
Wire Wire Line
	8050 2600 7950 2600
Wire Wire Line
	7950 2600 7950 2700
Wire Wire Line
	7950 2700 7850 2700
Connection ~ 7850 2700
$Comp
L C C303
U 1 1 584397C4
P 5450 2350
F 0 "C303" H 5475 2450 50  0000 L CNN
F 1 "0.82u" H 5475 2250 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L4_W2.5_P2.5" H 5488 2200 50  0001 C CNN
F 3 "" H 5450 2350 50  0000 C CNN
	1    5450 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 2350 5800 2350
Wire Wire Line
	5800 2350 5800 3000
Connection ~ 5800 3000
Wire Wire Line
	5300 2350 4900 2350
Text Label 4900 2350 0    60   ~ 0
INA-
Text Label 6150 3000 0    60   ~ 0
RAMP
Wire Wire Line
	6550 5250 6900 5250
Wire Wire Line
	6550 5650 6900 5650
Text Label 6900 5250 2    60   ~ 0
RAMP
Text Label 6900 5650 2    60   ~ 0
INA-
Wire Wire Line
	3900 3500 3900 3700
Connection ~ 3900 3600
$Comp
L GND #PWR?
U 1 1 58460168
P 3900 3700
F 0 "#PWR?" H 3900 3450 50  0001 C CNN
F 1 "GND" H 3900 3550 50  0000 C CNN
F 2 "" H 3900 3700 50  0000 C CNN
F 3 "" H 3900 3700 50  0000 C CNN
	1    3900 3700
	1    0    0    -1  
$EndComp
NoConn ~ 5900 3100
$EndSCHEMATC
