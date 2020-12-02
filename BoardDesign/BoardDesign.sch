EESchema Schematic File Version 4
EELAYER 30 0
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
L MCU_Module:Arduino_UNO_R2 A1
U 1 1 5FC338F6
P 5750 4300
F 0 "A1" V 5704 5344 50  0000 L CNN
F 1 "Arduino_UNO_R2" V 5795 5344 50  0000 L CNN
F 2 "Module:Arduino_UNO_R2" H 5750 4300 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 5750 4300 50  0001 C CNN
	1    5750 4300
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5FC37287
P 5650 2600
F 0 "R4" H 5720 2646 50  0000 L CNN
F 1 "330" H 5720 2555 50  0000 L CNN
F 2 "" V 5580 2600 50  0001 C CNN
F 3 "~" H 5650 2600 50  0001 C CNN
	1    5650 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5FC38718
P 5750 2900
F 0 "R3" H 5820 2946 50  0000 L CNN
F 1 "330" H 5820 2855 50  0000 L CNN
F 2 "" V 5680 2900 50  0001 C CNN
F 3 "~" H 5750 2900 50  0001 C CNN
	1    5750 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5FC38BD1
P 5850 3200
F 0 "R2" H 5780 3154 50  0000 R CNN
F 1 "330" H 5780 3245 50  0000 R CNN
F 2 "" V 5780 3200 50  0001 C CNN
F 3 "~" H 5850 3200 50  0001 C CNN
	1    5850 3200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5FC39072
P 5950 3500
F 0 "R1" H 6020 3546 50  0000 L CNN
F 1 "330" H 6020 3455 50  0000 L CNN
F 2 "" V 5880 3500 50  0001 C CNN
F 3 "~" H 5950 3500 50  0001 C CNN
	1    5950 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3800 5950 3650
$Comp
L Display_Character:CC56-12CGKWA U1
U 1 1 5FC40EA8
P 7450 2550
F 0 "U1" H 7450 1883 50  0000 C CNN
F 1 "CC56-12CGKWA" H 7450 1974 50  0000 C CNN
F 2 "Display_7Segment:CA56-12CGKWA" H 7450 1950 50  0001 C CNN
F 3 "http://www.kingbright.com/attachments/file/psearch/000/00/00/CC56-12CGKWA(Ver.8A).pdf" H 7020 2580 50  0001 C CNN
	1    7450 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	5650 2450 6350 2450
Wire Wire Line
	5750 2750 5750 2350
Wire Wire Line
	5750 2350 6350 2350
Wire Wire Line
	5850 3050 5850 2250
Wire Wire Line
	5850 2250 6350 2250
Wire Wire Line
	5950 3350 5950 2150
Wire Wire Line
	5950 2150 6350 2150
Wire Wire Line
	5850 3800 5850 3350
Wire Wire Line
	5750 3800 5750 3050
Wire Wire Line
	5650 3800 5650 2750
$Comp
L 74xx:74HC595 U2
U 1 1 5FC4D2DB
P 9300 4300
F 0 "U2" V 9346 3556 50  0000 R CNN
F 1 "74HC595" V 9255 3556 50  0000 R CNN
F 2 "" H 9300 4300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 9300 4300 50  0001 C CNN
	1    9300 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6750 4500 7100 4500
Wire Wire Line
	9000 3900 9000 2750
Wire Wire Line
	9000 2750 8550 2750
Wire Wire Line
	8900 3900 8900 2850
Wire Wire Line
	8900 2850 8550 2850
Wire Wire Line
	9100 3900 9100 2650
Wire Wire Line
	9100 2650 8550 2650
Wire Wire Line
	9200 3900 9200 2550
Wire Wire Line
	9200 2550 8550 2550
Wire Wire Line
	9300 3900 9300 2450
Wire Wire Line
	9300 2450 8550 2450
Wire Wire Line
	9400 3900 9400 2350
Wire Wire Line
	9400 2350 8550 2350
Wire Wire Line
	9500 3900 9500 2250
Wire Wire Line
	9500 2250 8550 2250
Wire Wire Line
	9600 3900 9600 2150
Wire Wire Line
	9600 2150 8550 2150
Wire Wire Line
	5050 3800 5050 3650
Wire Wire Line
	5050 3650 5950 3650
Wire Wire Line
	8250 3650 8250 4850
Wire Wire Line
	8250 4850 8900 4850
Wire Wire Line
	8900 4850 8900 4700
Connection ~ 5950 3650
Wire Wire Line
	5950 3650 8250 3650
Wire Wire Line
	5150 3800 5150 3700
Wire Wire Line
	5250 3800 5250 3750
Wire Wire Line
	5250 3750 8150 3750
Wire Wire Line
	8150 3750 8150 4950
Wire Wire Line
	8150 4950 9100 4950
Wire Wire Line
	9100 4950 9100 4700
Wire Wire Line
	9200 4700 9200 4750
Wire Wire Line
	9200 4750 8700 4750
Wire Wire Line
	8700 4300 8700 4500
Connection ~ 8700 4500
Wire Wire Line
	8700 4500 8700 4750
Wire Wire Line
	5150 3700 8200 3700
Wire Wire Line
	8200 3700 8200 4900
Wire Wire Line
	8200 4900 9400 4900
Wire Wire Line
	9400 4900 9400 4700
NoConn ~ 9800 3900
NoConn ~ 5650 4800
NoConn ~ 5550 4800
NoConn ~ 5450 4800
NoConn ~ 5350 4800
NoConn ~ 5250 4800
NoConn ~ 5950 4800
NoConn ~ 6150 4800
NoConn ~ 6350 4800
NoConn ~ 6750 4400
NoConn ~ 6750 4200
$Comp
L Device:R R5
U 1 1 5FC67A15
P 7100 5000
F 0 "R5" H 7170 5046 50  0000 L CNN
F 1 "10000" H 7170 4955 50  0000 L CNN
F 2 "" V 7030 5000 50  0001 C CNN
F 3 "~" H 7100 5000 50  0001 C CNN
	1    7100 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:Thermistor_NTC TH1
U 1 1 5FC68995
P 7100 5450
F 0 "TH1" H 7198 5496 50  0000 L CNN
F 1 "Thermistor_NTC" H 7198 5405 50  0000 L CNN
F 2 "" H 7100 5500 50  0001 C CNN
F 3 "~" H 7100 5500 50  0001 C CNN
	1    7100 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4500 7100 4850
Connection ~ 7100 4500
Wire Wire Line
	7100 4500 8700 4500
Wire Wire Line
	7100 5300 7100 5150
Wire Wire Line
	7100 5300 5750 5300
Wire Wire Line
	5750 5300 5750 4800
Connection ~ 7100 5300
NoConn ~ 6050 3800
NoConn ~ 6150 3800
NoConn ~ 6250 3800
NoConn ~ 6350 3800
NoConn ~ 5550 3800
NoConn ~ 5450 3800
NoConn ~ 5350 3800
$Comp
L power:GND #PWR0101
U 1 1 5FCA7732
P 4050 4200
F 0 "#PWR0101" H 4050 3950 50  0001 C CNN
F 1 "GND" H 4055 4027 50  0000 C CNN
F 2 "" H 4050 4200 50  0001 C CNN
F 3 "" H 4050 4200 50  0001 C CNN
	1    4050 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5FCA7CF9
P 4200 4300
F 0 "#PWR0102" H 4200 4050 50  0001 C CNN
F 1 "GND" H 4205 4127 50  0000 C CNN
F 2 "" H 4200 4300 50  0001 C CNN
F 3 "" H 4200 4300 50  0001 C CNN
	1    4200 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5FCA817D
P 4350 4400
F 0 "#PWR0103" H 4350 4150 50  0001 C CNN
F 1 "GND" H 4355 4227 50  0000 C CNN
F 2 "" H 4350 4400 50  0001 C CNN
F 3 "" H 4350 4400 50  0001 C CNN
	1    4350 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5FCA8748
P 7100 5700
F 0 "#PWR0104" H 7100 5450 50  0001 C CNN
F 1 "GND" H 7105 5527 50  0000 C CNN
F 2 "" H 7100 5700 50  0001 C CNN
F 3 "" H 7100 5700 50  0001 C CNN
	1    7100 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5FCA8CCA
P 9500 4800
F 0 "#PWR0105" H 9500 4550 50  0001 C CNN
F 1 "GND" H 9505 4627 50  0000 C CNN
F 2 "" H 9500 4800 50  0001 C CNN
F 3 "" H 9500 4800 50  0001 C CNN
	1    9500 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5FCA92BB
P 10150 4500
F 0 "#PWR0106" H 10150 4250 50  0001 C CNN
F 1 "GND" H 10155 4327 50  0000 C CNN
F 2 "" H 10150 4500 50  0001 C CNN
F 3 "" H 10150 4500 50  0001 C CNN
	1    10150 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 4300 10150 4300
Wire Wire Line
	10150 4300 10150 4500
Wire Wire Line
	9500 4700 9500 4800
Wire Wire Line
	7100 5600 7100 5700
Wire Wire Line
	4650 4400 4350 4400
Wire Wire Line
	4650 4300 4200 4300
Wire Wire Line
	4650 4200 4100 4200
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5FC48752
P 4100 4100
F 0 "#FLG0101" H 4100 4175 50  0001 C CNN
F 1 "PWR_FLAG" H 4100 4273 50  0000 C CNN
F 2 "" H 4100 4100 50  0001 C CNN
F 3 "~" H 4100 4100 50  0001 C CNN
	1    4100 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4100 4100 4200
Connection ~ 4100 4200
Wire Wire Line
	4100 4200 4050 4200
$EndSCHEMATC
