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
LIBS:65xx
LIBS:tms9929
LIBS:ym3014
LIBS:ym3812
LIBS:cy62256
LIBS:av-board-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
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
L YM3014 U7
U 1 1 5852CC77
P 6000 3400
F 0 "U7" H 5600 3750 60  0000 L BNN
F 1 "YM3014" H 6000 3400 60  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_LongPads" H 6000 3400 60  0001 C CNN
F 3 "" H 6000 3400 60  0000 C CNN
	1    6000 3400
	1    0    0    -1  
$EndComp
$Comp
L YM3812 U6
U 1 1 5852CCA5
P 3800 3900
F 0 "U6" H 3400 4750 60  0000 L BNN
F 1 "YM3812" H 3800 3900 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-24W_7.5x15.4mm_Pitch1.27mm" H 3800 3900 60  0001 C CNN
F 3 "" H 3800 3900 60  0000 C CNN
	1    3800 3900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR036
U 1 1 5852CD0C
P 3800 3100
F 0 "#PWR036" H 3800 2950 50  0001 C CNN
F 1 "+5V" H 3800 3240 50  0000 C CNN
F 2 "" H 3800 3100 50  0000 C CNN
F 3 "" H 3800 3100 50  0000 C CNN
	1    3800 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR037
U 1 1 5852CD24
P 3800 4700
F 0 "#PWR037" H 3800 4450 50  0001 C CNN
F 1 "GND" H 3800 4550 50  0000 C CNN
F 2 "" H 3800 4700 50  0000 C CNN
F 3 "" H 3800 4700 50  0000 C CNN
	1    3800 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR038
U 1 1 5852CD4C
P 6000 3700
F 0 "#PWR038" H 6000 3450 50  0001 C CNN
F 1 "GND" H 6000 3550 50  0000 C CNN
F 2 "" H 6000 3700 50  0000 C CNN
F 3 "" H 6000 3700 50  0000 C CNN
	1    6000 3700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR039
U 1 1 5852CD61
P 6000 3100
F 0 "#PWR039" H 6000 2950 50  0001 C CNN
F 1 "+5V" H 6000 3240 50  0000 C CNN
F 2 "" H 6000 3100 50  0000 C CNN
F 3 "" H 6000 3100 50  0000 C CNN
	1    6000 3100
	1    0    0    -1  
$EndComp
Text HLabel 3000 3200 0    60   Input ~ 0
~SEL
Text HLabel 3000 3400 0    60   Input ~ 0
R
Text HLabel 3000 3300 0    60   Input ~ 0
W
Text HLabel 3100 3900 0    60   BiDi ~ 0
D0
Text HLabel 3100 4000 0    60   BiDi ~ 0
D1
Text HLabel 3100 4100 0    60   BiDi ~ 0
D2
Text HLabel 3100 4200 0    60   BiDi ~ 0
D3
Text HLabel 3100 4300 0    60   BiDi ~ 0
D4
Text HLabel 3100 4400 0    60   BiDi ~ 0
D5
Text HLabel 3100 4500 0    60   BiDi ~ 0
D6
Text HLabel 3100 4600 0    60   BiDi ~ 0
D7
Text HLabel 3100 3700 0    60   Input ~ 0
A0
Text HLabel 3000 3500 0    60   Input ~ 0
~RST
$Comp
L D_Small D2
U 1 1 58535C07
P 4500 3700
F 0 "D2" H 4450 3600 50  0000 L CNN
F 1 "D_Small" H 4350 3620 50  0001 L CNN
F 2 "Diodes_SMD:SMA-SMB_Universal_Handsoldering" V 4500 3700 50  0001 C CNN
F 3 "" V 4500 3700 50  0000 C CNN
	1    4500 3700
	1    0    0    -1  
$EndComp
Text HLabel 4700 3700 2    60   Output ~ 0
~IRQ
Text HLabel 4600 3200 2    60   Input ~ 0
3.58M
$Comp
L TL072 U17
U 2 1 58543366
P 7800 3500
F 0 "U17" H 7800 3700 50  0000 L CNN
F 1 "TL072" H 7800 3300 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 7800 3500 50  0001 C CNN
F 3 "" H 7800 3500 50  0000 C CNN
	2    7800 3500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR040
U 1 1 58543419
P 7700 3200
F 0 "#PWR040" H 7700 3050 50  0001 C CNN
F 1 "+5V" H 7700 3340 50  0000 C CNN
F 2 "" H 7700 3200 50  0000 C CNN
F 3 "" H 7700 3200 50  0000 C CNN
	1    7700 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR041
U 1 1 58543430
P 7700 3800
F 0 "#PWR041" H 7700 3550 50  0001 C CNN
F 1 "GND" H 7700 3650 50  0000 C CNN
F 2 "" H 7700 3800 50  0000 C CNN
F 3 "" H 7700 3800 50  0000 C CNN
	1    7700 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR042
U 1 1 5854364E
P 7000 3700
F 0 "#PWR042" H 7000 3450 50  0001 C CNN
F 1 "GND" H 7000 3550 50  0000 C CNN
F 2 "" H 7000 3700 50  0000 C CNN
F 3 "" H 7000 3700 50  0000 C CNN
	1    7000 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3400 3200 3400
Wire Wire Line
	3000 3300 3200 3300
Wire Wire Line
	3200 3200 3000 3200
Wire Wire Line
	3100 3900 3200 3900
Wire Wire Line
	3100 4000 3200 4000
Wire Wire Line
	3200 4100 3100 4100
Wire Wire Line
	3100 4200 3200 4200
Wire Wire Line
	3200 4300 3100 4300
Wire Wire Line
	3100 4400 3200 4400
Wire Wire Line
	3200 4500 3100 4500
Wire Wire Line
	3100 4600 3200 4600
Wire Wire Line
	3100 3700 3200 3700
Wire Wire Line
	3200 3500 3000 3500
Wire Wire Line
	4700 3700 4600 3700
Wire Wire Line
	4400 3200 4600 3200
Wire Wire Line
	4400 3400 5400 3400
Wire Wire Line
	4400 3300 5200 3300
Wire Wire Line
	5200 3300 5200 3600
Wire Wire Line
	5200 3600 5400 3600
Wire Wire Line
	5400 3200 5300 3200
Wire Wire Line
	5300 3200 5300 3500
Wire Wire Line
	5300 3500 4400 3500
Wire Wire Line
	6600 3400 7500 3400
Wire Wire Line
	7000 3400 7000 3500
Connection ~ 7000 3400
Wire Wire Line
	7500 3600 7400 3600
Wire Wire Line
	7400 3600 7400 4100
Wire Wire Line
	7400 4100 8200 4100
Wire Wire Line
	8200 4100 8200 2900
Wire Wire Line
	8200 3500 8100 3500
Wire Wire Line
	6600 3200 7000 3200
Wire Wire Line
	7000 3200 7000 2900
Wire Wire Line
	7000 2900 8200 2900
Connection ~ 8200 3500
$Comp
L TL072 U17
U 1 1 5854388F
P 7300 4800
F 0 "U17" H 7300 5000 50  0000 L CNN
F 1 "TL072" H 7300 4600 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 7300 4800 50  0001 C CNN
F 3 "" H 7300 4800 50  0000 C CNN
	1    7300 4800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR043
U 1 1 58543895
P 7200 4500
F 0 "#PWR043" H 7200 4350 50  0001 C CNN
F 1 "+5V" H 7200 4640 50  0000 C CNN
F 2 "" H 7200 4500 50  0000 C CNN
F 3 "" H 7200 4500 50  0000 C CNN
	1    7200 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR044
U 1 1 5854389B
P 7200 5100
F 0 "#PWR044" H 7200 4850 50  0001 C CNN
F 1 "GND" H 7200 4950 50  0000 C CNN
F 2 "" H 7200 5100 50  0000 C CNN
F 3 "" H 7200 5100 50  0000 C CNN
	1    7200 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3600 6800 3600
Wire Wire Line
	6800 3600 6800 4700
Wire Wire Line
	6800 4700 7000 4700
Wire Wire Line
	7000 4900 6900 4900
Wire Wire Line
	6900 4900 6900 5400
Wire Wire Line
	6900 5400 7700 5400
Wire Wire Line
	7700 5400 7700 4800
Wire Wire Line
	7600 4800 8200 4800
Connection ~ 7700 4800
Text HLabel 8200 4800 2    60   Output ~ 0
OUT
$Comp
L CP1_Small C3
U 1 1 5852DE20
P 7000 3600
F 0 "C3" H 7010 3670 50  0000 L CNN
F 1 "10µ" H 7010 3520 50  0000 L CNN
F 2 "" H 7000 3600 50  0000 C CNN
F 3 "" H 7000 3600 50  0000 C CNN
	1    7000 3600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
