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
P 4200 4550
F 0 "LCD1" H 5628 4392 50  0000 L CNN
F 1 "LCD" H 5628 4301 50  0000 L CNN
F 2 "footprints:LCD" H 4200 4900 50  0001 C CNN
F 3 "" H 4200 4900 50  0001 C CNN
	1    4200 4550
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
Text GLabel 4000 3500 0    50   Input ~ 0
GND
Text GLabel 4000 3800 0    50   Input ~ 0
5V
Text GLabel 5150 4400 1    50   Input ~ 0
5V
Text GLabel 5250 4400 1    50   Input ~ 0
GND
Text GLabel 3750 4400 1    50   Input ~ 0
GND
Wire Wire Line
	3750 4400 3850 4400
Text GLabel 3250 2350 3    50   Input ~ 0
GND
Text GLabel 3500 2100 2    50   Input ~ 0
GND
Text GLabel 3050 2350 3    50   Input ~ 0
5V
Text GLabel 3500 1900 2    50   Input ~ 0
5V
Text GLabel 7750 3700 2    50   Input ~ 0
GND
Text GLabel 7750 4050 2    50   Input ~ 0
GND
Text GLabel 7750 4450 2    50   Input ~ 0
GND
Text GLabel 7950 2850 2    50   Input ~ 0
GND
Text GLabel 7950 2500 2    50   Input ~ 0
GND
Text GLabel 7950 2150 2    50   Input ~ 0
GND
Text GLabel 7950 1800 2    50   Input ~ 0
GND
Text GLabel 7950 3200 2    50   Input ~ 0
GND
Text GLabel 7350 3700 0    50   Input ~ 0
BTN1
Text GLabel 7350 4050 0    50   Input ~ 0
BTN2
Text GLabel 7350 1800 0    50   Input ~ 0
LED1
Text GLabel 7350 2150 0    50   Input ~ 0
LED2
Text GLabel 7350 2500 0    50   Input ~ 0
LED3
Text GLabel 7350 2850 0    50   Input ~ 0
LED4
Text GLabel 7350 3200 0    50   Input ~ 0
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
Text GLabel 7350 4450 0    50   Input ~ 0
RST
Text GLabel 4000 3000 0    50   Input ~ 0
X
Text GLabel 4000 2900 0    50   Input ~ 0
Y
Text GLabel 3100 3300 0    50   Input ~ 0
GND
Text GLabel 3100 3100 0    50   Input ~ 0
SERVO1
Text GLabel 3100 2950 0    50   Input ~ 0
GND
Text GLabel 3100 2750 0    50   Input ~ 0
SERVO2
Text GLabel 3100 3900 0    50   Input ~ 0
X-
Text GLabel 3100 3800 0    50   Input ~ 0
Y+
Text GLabel 3100 3700 0    50   Input ~ 0
X+
Text GLabel 3100 3600 0    50   Input ~ 0
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
Text GLabel 3100 3200 0    50   Input ~ 0
VIN
Text GLabel 3100 2850 0    50   Input ~ 0
VIN
Text GLabel 6600 2700 2    50   Input ~ 0
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
Text GLabel 4950 4400 1    50   Input ~ 0
SCL3V3
Text GLabel 5050 4400 1    50   Input ~ 0
SDA3V3
Text GLabel 6300 4750 0    50   Input ~ 0
SDA3V3
Text GLabel 6300 4950 0    50   Input ~ 0
SCL3V3
Text GLabel 7100 4950 2    50   Input ~ 0
SCL5
Text GLabel 7100 4750 2    50   Input ~ 0
SDA5
Wire Wire Line
	6300 4550 6300 4350
Wire Wire Line
	6300 4350 6600 4350
Text GLabel 6700 5750 3    50   Input ~ 0
GND
Text GLabel 6800 4350 1    50   Input ~ 0
5V
Text GLabel 4000 3700 0    50   Input ~ 0
3V3
Text GLabel 6600 4350 1    50   Input ~ 0
3V3
Text GLabel 3100 4350 0    50   Input ~ 0
SCL5
Text GLabel 3100 4650 0    50   Input ~ 0
SDA5
Text GLabel 3400 4350 2    50   Input ~ 0
5V
Text GLabel 3400 4650 2    50   Input ~ 0
5V
$Comp
L Switch:SW_Push SW1
U 1 1 5E7DB036
P 7550 3700
F 0 "SW1" H 7550 3985 50  0000 C CNN
F 1 "SW_Push" H 7550 3894 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 7550 3900 50  0001 C CNN
F 3 "~" H 7550 3900 50  0001 C CNN
	1    7550 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:LED LED1
U 1 1 5E7DD817
P 7500 1800
F 0 "LED1" H 7493 2016 50  0000 C CNN
F 1 "LED" H 7493 1925 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 7500 1800 50  0001 C CNN
F 3 "~" H 7500 1800 50  0001 C CNN
	1    7500 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5E7DDEA7
P 7800 1800
F 0 "R3" V 7593 1800 50  0000 C CNN
F 1 "250" V 7684 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7730 1800 50  0001 C CNN
F 3 "~" H 7800 1800 50  0001 C CNN
	1    7800 1800
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5E7F8BF3
P 3250 4350
F 0 "R1" V 3043 4350 50  0000 C CNN
F 1 "470" V 3134 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3180 4350 50  0001 C CNN
F 3 "~" H 3250 4350 50  0001 C CNN
	1    3250 4350
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5E7F918E
P 3250 4650
F 0 "R2" V 3043 4650 50  0000 C CNN
F 1 "470" V 3134 4650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3180 4650 50  0001 C CNN
F 3 "~" H 3250 4650 50  0001 C CNN
	1    3250 4650
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5E7FE59F
P 7800 2150
F 0 "R4" V 7593 2150 50  0000 C CNN
F 1 "250" V 7684 2150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7730 2150 50  0001 C CNN
F 3 "~" H 7800 2150 50  0001 C CNN
	1    7800 2150
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5E7FEB56
P 7800 2500
F 0 "R5" V 7593 2500 50  0000 C CNN
F 1 "250" V 7684 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7730 2500 50  0001 C CNN
F 3 "~" H 7800 2500 50  0001 C CNN
	1    7800 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5E7FEF14
P 7800 2850
F 0 "R6" V 7593 2850 50  0000 C CNN
F 1 "250" V 7684 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7730 2850 50  0001 C CNN
F 3 "~" H 7800 2850 50  0001 C CNN
	1    7800 2850
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5E7FF318
P 7800 3200
F 0 "R7" V 7593 3200 50  0000 C CNN
F 1 "250" V 7684 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7730 3200 50  0001 C CNN
F 3 "~" H 7800 3200 50  0001 C CNN
	1    7800 3200
	0    1    1    0   
$EndComp
$Comp
L Device:LED LED2
U 1 1 5E80D0AB
P 7500 2150
F 0 "LED2" H 7493 2366 50  0000 C CNN
F 1 "LED" H 7493 2275 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 7500 2150 50  0001 C CNN
F 3 "~" H 7500 2150 50  0001 C CNN
	1    7500 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:LED LED3
U 1 1 5E80D4E6
P 7500 2500
F 0 "LED3" H 7493 2716 50  0000 C CNN
F 1 "LED" H 7493 2625 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 7500 2500 50  0001 C CNN
F 3 "~" H 7500 2500 50  0001 C CNN
	1    7500 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED LED4
U 1 1 5E80D8B7
P 7500 2850
F 0 "LED4" H 7493 3066 50  0000 C CNN
F 1 "LED" H 7493 2975 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 7500 2850 50  0001 C CNN
F 3 "~" H 7500 2850 50  0001 C CNN
	1    7500 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:LED LED5
U 1 1 5E80DD4F
P 7500 3200
F 0 "LED5" H 7493 3416 50  0000 C CNN
F 1 "LED" H 7493 3325 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 7500 3200 50  0001 C CNN
F 3 "~" H 7500 3200 50  0001 C CNN
	1    7500 3200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5E81323E
P 7550 4050
F 0 "SW2" H 7550 4335 50  0000 C CNN
F 1 "SW_Push" H 7550 4244 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 7550 4250 50  0001 C CNN
F 3 "~" H 7550 4250 50  0001 C CNN
	1    7550 4050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 5E8135A6
P 7550 4450
F 0 "SW3" H 7550 4735 50  0000 C CNN
F 1 "SW_Push" H 7550 4644 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 7550 4650 50  0001 C CNN
F 3 "~" H 7550 4650 50  0001 C CNN
	1    7550 4450
	1    0    0    -1  
$EndComp
$Comp
L Logic_LevelTranslator:TXB0104D U1
U 1 1 5E81555D
P 6700 5050
F 0 "U1" H 6700 4261 50  0000 C CNN
F 1 "TXB0104D" H 6700 4170 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6700 4300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0104.pdf" H 6810 5145 50  0001 C CNN
	1    6700 5050
	1    0    0    -1  
$EndComp
$Comp
L arduino-shields:Arduino_Uno_Shield XA1
U 1 1 5E8277B8
P 5300 2850
F 0 "XA1" H 5300 4237 60  0000 C CNN
F 1 "Arduino_Uno_Shield" H 5300 4131 60  0000 C CNN
F 2 "arduino-shields:Arduino_Uno_Shield" H 7100 6600 60  0001 C CNN
F 3 "https://store.arduino.cc/arduino-uno-rev3" H 7100 6600 60  0001 C CNN
	1    5300 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3500 4000 3600
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 5E8341A9
P 3300 2850
F 0 "J2" H 3380 2892 50  0000 L CNN
F 1 "Conn_01x03" H 3380 2801 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3300 2850 50  0001 C CNN
F 3 "~" H 3300 2850 50  0001 C CNN
	1    3300 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 5E834B51
P 3300 3200
F 0 "J3" H 3380 3242 50  0000 L CNN
F 1 "Conn_01x03" H 3380 3151 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3300 3200 50  0001 C CNN
F 3 "~" H 3300 3200 50  0001 C CNN
	1    3300 3200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 5E835690
P 3300 3700
F 0 "J4" H 3380 3692 50  0000 L CNN
F 1 "Conn_01x04" H 3380 3601 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3300 3700 50  0001 C CNN
F 3 "~" H 3300 3700 50  0001 C CNN
	1    3300 3700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
