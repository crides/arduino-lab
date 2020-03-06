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
L symbols:LCD LCD1
U 1 1 5E617F75
P 4800 4600
F 0 "LCD1" H 6228 4442 50  0000 L CNN
F 1 "LCD" H 6228 4351 50  0000 L CNN
F 2 "footprints:LCD" H 4800 4950 50  0001 C CNN
F 3 "" H 4800 4950 50  0001 C CNN
	1    4800 4600
	1    0    0    -1  
$EndComp
$Comp
L symbols:joystick J1
U 1 1 5E618266
P 3150 2000
F 0 "J1" H 3619 1926 50  0000 L CNN
F 1 "joystick" H 3619 1835 50  0000 L CNN
F 2 "footprints:joystick" H 3150 1550 50  0001 C CNN
F 3 "" H 3150 1550 50  0001 C CNN
	1    3150 2000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5E61869D
P 8650 4050
F 0 "SW2" H 8650 4335 50  0000 C CNN
F 1 "SW_Push" H 8650 4244 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 8650 4250 50  0001 C CNN
F 3 "~" H 8650 4250 50  0001 C CNN
	1    8650 4050
	1    0    0    -1  
$EndComp
$Comp
L arduino:Arduino_Uno_Shield XA1
U 1 1 5E619331
P 5300 2850
F 0 "XA1" H 5300 4237 60  0000 C CNN
F 1 "Arduino_Uno_Shield" H 5300 4131 60  0000 C CNN
F 2 "Arduino:Arduino_Uno_Shield" H 7100 6600 60  0001 C CNN
F 3 "https://store.arduino.cc/arduino-uno-rev3" H 7100 6600 60  0001 C CNN
	1    5300 2850
	1    0    0    -1  
$EndComp
Text GLabel 4000 3500 0    50   Input ~ 0
GND
Wire Wire Line
	4000 3600 4000 3500
Connection ~ 4000 3500
Wire Wire Line
	4000 3500 4000 3400
Text GLabel 4000 3800 0    50   Input ~ 0
5V
Text GLabel 5750 4450 1    50   Input ~ 0
5V
Text GLabel 5850 4450 1    50   Input ~ 0
GND
Text GLabel 4350 4450 1    50   Input ~ 0
GND
Wire Wire Line
	4350 4450 4450 4450
Text GLabel 3250 2350 3    50   Input ~ 0
GND
Text GLabel 3500 2100 2    50   Input ~ 0
GND
Text GLabel 3050 2350 3    50   Input ~ 0
5V
Text GLabel 3500 1900 2    50   Input ~ 0
5V
$Comp
L Switch:SW_Push SW1
U 1 1 5E62B1E9
P 8650 3700
F 0 "SW1" H 8650 3985 50  0000 C CNN
F 1 "SW_Push" H 8650 3894 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 8650 3900 50  0001 C CNN
F 3 "~" H 8650 3900 50  0001 C CNN
	1    8650 3700
	1    0    0    -1  
$EndComp
Text GLabel 8850 3700 2    50   Input ~ 0
GND
Text GLabel 8850 4050 2    50   Input ~ 0
GND
$Comp
L Switch:SW_Push SW3
U 1 1 5E6351E2
P 8650 4450
F 0 "SW3" H 8650 4735 50  0000 C CNN
F 1 "SW_Push" H 8650 4644 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 8650 4650 50  0001 C CNN
F 3 "~" H 8650 4650 50  0001 C CNN
	1    8650 4450
	1    0    0    -1  
$EndComp
Text GLabel 8850 4450 2    50   Input ~ 0
GND
$Comp
L Device:LED D4
U 1 1 5E638337
P 8600 2850
F 0 "D4" H 8593 3066 50  0000 C CNN
F 1 "LED" H 8593 2975 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 8600 2850 50  0001 C CNN
F 3 "~" H 8600 2850 50  0001 C CNN
	1    8600 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5E63833D
P 8900 2850
F 0 "R4" V 9107 2850 50  0000 C CNN
F 1 "250" V 9016 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8830 2850 50  0001 C CNN
F 3 "~" H 8900 2850 50  0001 C CNN
	1    8900 2850
	0    -1   -1   0   
$EndComp
Text GLabel 9050 2850 2    50   Input ~ 0
GND
$Comp
L Device:LED D3
U 1 1 5E650642
P 8600 2500
F 0 "D3" H 8593 2716 50  0000 C CNN
F 1 "LED" H 8593 2625 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 8600 2500 50  0001 C CNN
F 3 "~" H 8600 2500 50  0001 C CNN
	1    8600 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5E650648
P 8900 2500
F 0 "R3" V 9107 2500 50  0000 C CNN
F 1 "250" V 9016 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8830 2500 50  0001 C CNN
F 3 "~" H 8900 2500 50  0001 C CNN
	1    8900 2500
	0    -1   -1   0   
$EndComp
Text GLabel 9050 2500 2    50   Input ~ 0
GND
$Comp
L Device:LED D2
U 1 1 5E650A05
P 8600 2150
F 0 "D2" H 8593 2366 50  0000 C CNN
F 1 "LED" H 8593 2275 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 8600 2150 50  0001 C CNN
F 3 "~" H 8600 2150 50  0001 C CNN
	1    8600 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5E650A0B
P 8900 2150
F 0 "R2" V 9107 2150 50  0000 C CNN
F 1 "250" V 9016 2150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8830 2150 50  0001 C CNN
F 3 "~" H 8900 2150 50  0001 C CNN
	1    8900 2150
	0    -1   -1   0   
$EndComp
Text GLabel 9050 2150 2    50   Input ~ 0
GND
$Comp
L Device:LED D1
U 1 1 5E651291
P 8600 1800
F 0 "D1" H 8593 2016 50  0000 C CNN
F 1 "LED" H 8593 1925 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 8600 1800 50  0001 C CNN
F 3 "~" H 8600 1800 50  0001 C CNN
	1    8600 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5E651297
P 8900 1800
F 0 "R1" V 9107 1800 50  0000 C CNN
F 1 "250" V 9016 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8830 1800 50  0001 C CNN
F 3 "~" H 8900 1800 50  0001 C CNN
	1    8900 1800
	0    -1   -1   0   
$EndComp
Text GLabel 9050 1800 2    50   Input ~ 0
GND
$Comp
L Device:LED D5
U 1 1 5E651B43
P 8600 3200
F 0 "D5" H 8593 3416 50  0000 C CNN
F 1 "LED" H 8593 3325 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 8600 3200 50  0001 C CNN
F 3 "~" H 8600 3200 50  0001 C CNN
	1    8600 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5E651B49
P 8900 3200
F 0 "R5" V 9107 3200 50  0000 C CNN
F 1 "250" V 9016 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8830 3200 50  0001 C CNN
F 3 "~" H 8900 3200 50  0001 C CNN
	1    8900 3200
	0    -1   -1   0   
$EndComp
Text GLabel 9050 3200 2    50   Input ~ 0
GND
Text GLabel 8450 3700 0    50   Input ~ 0
BTN1
Text GLabel 8450 4050 0    50   Input ~ 0
BTN2
Text GLabel 8450 1800 0    50   Input ~ 0
LED1
Text GLabel 8450 2150 0    50   Input ~ 0
LED2
Text GLabel 8450 2500 0    50   Input ~ 0
LED3
Text GLabel 8450 2850 0    50   Input ~ 0
LED4
Text GLabel 8450 3200 0    50   Input ~ 0
LED5
Text GLabel 3150 2350 3    50   Input ~ 0
Y
Text GLabel 3500 2000 2    50   Input ~ 0
X
Text GLabel 6600 2400 2    50   Input ~ 0
LED1
Text GLabel 6600 2300 2    50   Input ~ 0
LED2
Text GLabel 6600 2200 2    50   Input ~ 0
LED3
Text GLabel 6600 2100 2    50   Input ~ 0
LED4
Text GLabel 6600 2000 2    50   Input ~ 0
LED5
Text GLabel 6600 1900 2    50   Input ~ 0
BTN1
Text GLabel 6600 1800 2    50   Input ~ 0
BTN2
Text GLabel 6600 3800 2    50   Input ~ 0
RST
Text GLabel 8450 4450 0    50   Input ~ 0
RST
Text GLabel 4000 3000 0    50   Input ~ 0
X
Text GLabel 4000 2900 0    50   Input ~ 0
Y
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 5E676C5D
P 3250 3750
F 0 "J4" H 3330 3742 50  0000 L CNN
F 1 "Conn_01x04" H 3330 3651 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3250 3750 50  0001 C CNN
F 3 "~" H 3250 3750 50  0001 C CNN
	1    3250 3750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 5E676FD2
P 3250 3250
F 0 "J3" H 3330 3292 50  0000 L CNN
F 1 "Conn_01x03" H 3330 3201 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3250 3250 50  0001 C CNN
F 3 "~" H 3250 3250 50  0001 C CNN
	1    3250 3250
	1    0    0    -1  
$EndComp
Text GLabel 3050 3350 0    50   Input ~ 0
GND
Text GLabel 3050 3150 0    50   Input ~ 0
SERVO1
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 5E67B088
P 3250 2900
F 0 "J2" H 3330 2942 50  0000 L CNN
F 1 "Conn_01x03" H 3330 2851 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3250 2900 50  0001 C CNN
F 3 "~" H 3250 2900 50  0001 C CNN
	1    3250 2900
	1    0    0    -1  
$EndComp
Text GLabel 3050 3000 0    50   Input ~ 0
GND
Text GLabel 3050 2800 0    50   Input ~ 0
SERVO2
Text GLabel 3050 3950 0    50   Input ~ 0
X-
Text GLabel 3050 3850 0    50   Input ~ 0
Y+
Text GLabel 3050 3750 0    50   Input ~ 0
X+
Text GLabel 3050 3650 0    50   Input ~ 0
Y-
Text GLabel 4000 2800 0    50   Input ~ 0
X-
Text GLabel 4000 2700 0    50   Input ~ 0
Y+
Text GLabel 4000 2600 0    50   Input ~ 0
X+
Text GLabel 4000 2500 0    50   Input ~ 0
Y-
Text GLabel 4000 3900 0    50   Input ~ 0
VIN
Text GLabel 3050 3250 0    50   Input ~ 0
VIN
Text GLabel 3050 2900 0    50   Input ~ 0
VIN
Text GLabel 6600 2600 2    50   Input ~ 0
SERVO2
Text GLabel 6600 2500 2    50   Input ~ 0
SERVO1
Text GLabel 4000 1800 0    50   Input ~ 0
RX
Text GLabel 4000 1900 0    50   Input ~ 0
TX
Text GLabel 4000 2100 0    50   Input ~ 0
SCL5
Text GLabel 4000 2200 0    50   Input ~ 0
SDA5
Text GLabel 5550 4450 1    50   Input ~ 0
SCL3V3
Text GLabel 5650 4450 1    50   Input ~ 0
SDA3V3
$Comp
L Logic_LevelTranslator:TXB0104D U1
U 1 1 5E6B15B7
P 7100 4750
F 0 "U1" H 7100 3961 50  0000 C CNN
F 1 "TXB0104D" H 7100 3870 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 7100 4000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0104.pdf" H 7210 4845 50  0001 C CNN
	1    7100 4750
	1    0    0    -1  
$EndComp
Text GLabel 6700 4450 0    50   Input ~ 0
SDA3V3
Text GLabel 6700 4650 0    50   Input ~ 0
SCL3V3
Text GLabel 7500 4650 2    50   Input ~ 0
SCL5
Text GLabel 7500 4450 2    50   Input ~ 0
SDA5
Wire Wire Line
	6700 4250 6700 4050
Wire Wire Line
	6700 4050 7000 4050
Text GLabel 7100 5450 3    50   Input ~ 0
GND
Text GLabel 7200 4050 1    50   Input ~ 0
5V
Text GLabel 4000 3700 0    50   Input ~ 0
3V3
Text GLabel 7000 4050 1    50   Input ~ 0
3V3
Text GLabel 3100 4350 0    50   Input ~ 0
SCL5
Text GLabel 3100 4650 0    50   Input ~ 0
SDA5
$Comp
L Device:R R6
U 1 1 5E722109
P 3250 4350
F 0 "R6" V 3457 4350 50  0000 C CNN
F 1 "470" V 3366 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3180 4350 50  0001 C CNN
F 3 "~" H 3250 4350 50  0001 C CNN
	1    3250 4350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 5E722910
P 3250 4650
F 0 "R7" V 3457 4650 50  0000 C CNN
F 1 "470" V 3366 4650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3180 4650 50  0001 C CNN
F 3 "~" H 3250 4650 50  0001 C CNN
	1    3250 4650
	0    -1   -1   0   
$EndComp
Text GLabel 3400 4350 2    50   Input ~ 0
5V
Text GLabel 3400 4650 2    50   Input ~ 0
5V
$EndSCHEMATC
