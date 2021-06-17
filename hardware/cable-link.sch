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
L Transistor_FET:BSS138 Q1
U 1 1 60C833C1
P 8600 3000
F 0 "Q1" V 8849 3000 50  0000 C CNN
F 1 "BSS138" V 8940 3000 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8800 2925 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 8600 3000 50  0001 L CNN
	1    8600 3000
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R10
U 1 1 60C8A3E5
P 8250 2900
F 0 "R10" H 8309 2946 50  0000 L CNN
F 1 "10k" H 8309 2855 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8250 2900 50  0001 C CNN
F 3 "~" H 8250 2900 50  0001 C CNN
	1    8250 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 60C8B083
P 8250 2700
F 0 "#PWR?" H 8250 2550 50  0001 C CNN
F 1 "+3V3" H 8265 2873 50  0000 C CNN
F 2 "" H 8250 2700 50  0001 C CNN
F 3 "" H 8250 2700 50  0001 C CNN
	1    8250 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R12
U 1 1 60C8F4C8
P 8800 2900
F 0 "R12" H 8859 2946 50  0000 L CNN
F 1 "10k" H 8859 2855 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8800 2900 50  0001 C CNN
F 3 "~" H 8800 2900 50  0001 C CNN
	1    8800 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60C8FFB2
P 8800 2700
F 0 "#PWR?" H 8800 2550 50  0001 C CNN
F 1 "+5V" H 8815 2873 50  0000 C CNN
F 2 "" H 8800 2700 50  0001 C CNN
F 3 "" H 8800 2700 50  0001 C CNN
	1    8800 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 2800 8600 2750
Wire Wire Line
	8600 2750 8250 2750
Wire Wire Line
	8250 2750 8250 2700
Wire Wire Line
	8250 2800 8250 2750
Connection ~ 8250 2750
Wire Wire Line
	8800 3100 8800 3000
Wire Wire Line
	8800 2800 8800 2700
$Comp
L power:GND #PWR?
U 1 1 60CCA21D
P 7500 3900
F 0 "#PWR?" H 7500 3650 50  0001 C CNN
F 1 "GND" H 7505 3727 50  0000 C CNN
F 2 "" H 7500 3900 50  0001 C CNN
F 3 "" H 7500 3900 50  0001 C CNN
	1    7500 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 3000 8250 3100
Wire Wire Line
	8250 3100 8400 3100
$Comp
L Security:ATECC608A-MAHDA U3
U 1 1 60D07D62
P 7600 5200
F 0 "U3" H 7371 5246 50  0000 R CNN
F 1 "ATECC608A-MAHDA" H 7371 5155 50  0000 R CNN
F 2 "Package_DFN_QFN:DFN-8-1EP_3x2mm_P0.5mm_EP1.3x1.5mm" H 7600 5200 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATECC608A-CryptoAuthentication-Device-Summary-Data-Sheet-DS40001977B.pdf" H 7750 5450 50  0001 C CNN
	1    7600 5200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 60D0CAD1
P 7600 4900
F 0 "#PWR?" H 7600 4750 50  0001 C CNN
F 1 "+3V3" H 7615 5073 50  0000 C CNN
F 2 "" H 7600 4900 50  0001 C CNN
F 3 "" H 7600 4900 50  0001 C CNN
	1    7600 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60D0EFD7
P 7600 5600
F 0 "#PWR?" H 7600 5350 50  0001 C CNN
F 1 "GND" H 7605 5427 50  0000 C CNN
F 2 "" H 7600 5600 50  0001 C CNN
F 3 "" H 7600 5600 50  0001 C CNN
	1    7600 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 5550 7600 5550
Wire Wire Line
	7600 5550 7600 5600
Wire Wire Line
	7600 5500 7600 5550
Connection ~ 7600 5550
Wire Wire Line
	7500 5550 7500 5500
$Comp
L Device:C_Small C17
U 1 1 60D41156
P 8450 5150
F 0 "C17" H 8542 5196 50  0000 L CNN
F 1 "100n" H 8542 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8450 5150 50  0001 C CNN
F 3 "~" H 8450 5150 50  0001 C CNN
	1    8450 5150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 60D45B53
P 8450 5050
F 0 "#PWR?" H 8450 4900 50  0001 C CNN
F 1 "+3V3" H 8465 5223 50  0000 C CNN
F 2 "" H 8450 5050 50  0001 C CNN
F 3 "" H 8450 5050 50  0001 C CNN
	1    8450 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60D4658F
P 8450 5250
F 0 "#PWR?" H 8450 5000 50  0001 C CNN
F 1 "GND" H 8455 5077 50  0000 C CNN
F 2 "" H 8450 5250 50  0001 C CNN
F 3 "" H 8450 5250 50  0001 C CNN
	1    8450 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D1
U 1 1 60D4B0A5
P 5000 1250
F 0 "D1" H 5000 1043 50  0000 C CNN
F 1 "RED" H 5000 1134 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 5000 1250 50  0001 C CNN
F 3 "~" V 5000 1250 50  0001 C CNN
	1    5000 1250
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 60D4E462
P 4750 1250
F 0 "#PWR?" H 4750 1100 50  0001 C CNN
F 1 "+3V3" H 4765 1423 50  0000 C CNN
F 2 "" H 4750 1250 50  0001 C CNN
F 3 "" H 4750 1250 50  0001 C CNN
	1    4750 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 60D4F494
P 5350 1250
F 0 "R4" V 5154 1250 50  0000 C CNN
F 1 "10k" V 5245 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5350 1250 50  0001 C CNN
F 3 "~" H 5350 1250 50  0001 C CNN
	1    5350 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 1250 4900 1250
Wire Wire Line
	5100 1250 5250 1250
$Comp
L Device:LED_Small D2
U 1 1 60D5F0FE
P 5000 1600
F 0 "D2" H 5000 1393 50  0000 C CNN
F 1 "RED" H 5000 1484 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 5000 1600 50  0001 C CNN
F 3 "~" V 5000 1600 50  0001 C CNN
	1    5000 1600
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 60D5F105
P 4750 1600
F 0 "#PWR?" H 4750 1450 50  0001 C CNN
F 1 "+3V3" H 4765 1773 50  0000 C CNN
F 2 "" H 4750 1600 50  0001 C CNN
F 3 "" H 4750 1600 50  0001 C CNN
	1    4750 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 60D5F10B
P 5350 1600
F 0 "R5" V 5154 1600 50  0000 C CNN
F 1 "10k" V 5245 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5350 1600 50  0001 C CNN
F 3 "~" H 5350 1600 50  0001 C CNN
	1    5350 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 1600 4900 1600
Wire Wire Line
	5100 1600 5250 1600
$Comp
L rp2040:RP2040 U2
U 1 1 60C932A1
P 3450 5350
F 0 "U2" H 2350 7300 50  0000 C CNN
F 1 "RP2040" H 4450 3400 50  0000 C CNN
F 2 "rp2048:RP2040-QFN-56" H 2700 5350 50  0001 C CNN
F 3 "" H 2700 5350 50  0001 C CNN
	1    3450 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 60D1A9B6
P 3400 2850
F 0 "C8" H 3492 2896 50  0000 L CNN
F 1 "100n" H 3492 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3400 2850 50  0001 C CNN
F 3 "~" H 3400 2850 50  0001 C CNN
	1    3400 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C10
U 1 1 60D1AE3B
P 3750 2850
F 0 "C10" H 3842 2896 50  0000 L CNN
F 1 "100n" H 3842 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3750 2850 50  0001 C CNN
F 3 "~" H 3750 2850 50  0001 C CNN
	1    3750 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C12
U 1 1 60D1B194
P 4100 2850
F 0 "C12" H 4192 2896 50  0000 L CNN
F 1 "100n" H 4192 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4100 2850 50  0001 C CNN
F 3 "~" H 4100 2850 50  0001 C CNN
	1    4100 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C13
U 1 1 60D1B479
P 4450 2850
F 0 "C13" H 4542 2896 50  0000 L CNN
F 1 "100n" H 4542 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4450 2850 50  0001 C CNN
F 3 "~" H 4450 2850 50  0001 C CNN
	1    4450 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C14
U 1 1 60D1CD98
P 4800 2850
F 0 "C14" H 4892 2896 50  0000 L CNN
F 1 "100n" H 4892 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4800 2850 50  0001 C CNN
F 3 "~" H 4800 2850 50  0001 C CNN
	1    4800 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C15
U 1 1 60D1D12E
P 5150 2850
F 0 "C15" H 5242 2896 50  0000 L CNN
F 1 "100n" H 5242 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5150 2850 50  0001 C CNN
F 3 "~" H 5150 2850 50  0001 C CNN
	1    5150 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C16
U 1 1 60D1E631
P 5500 2850
F 0 "C16" H 5592 2896 50  0000 L CNN
F 1 "100n" H 5592 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5500 2850 50  0001 C CNN
F 3 "~" H 5500 2850 50  0001 C CNN
	1    5500 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 60D1EC20
P 2950 2850
F 0 "C7" H 3042 2896 50  0000 L CNN
F 1 "1u" H 3042 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2950 2850 50  0001 C CNN
F 3 "~" H 2950 2850 50  0001 C CNN
	1    2950 2850
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C6
U 1 1 60D1F4AA
P 2000 3500
F 0 "C6" H 1800 3550 50  0000 L CNN
F 1 "1u" H 1800 3450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2000 3500 50  0001 C CNN
F 3 "~" H 2000 3500 50  0001 C CNN
	1    2000 3500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60D2E9A2
P 5500 3000
F 0 "#PWR?" H 5500 2750 50  0001 C CNN
F 1 "GND" H 5505 2827 50  0000 C CNN
F 2 "" H 5500 3000 50  0001 C CNN
F 3 "" H 5500 3000 50  0001 C CNN
	1    5500 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2950 5500 3000
Wire Wire Line
	5500 2750 5500 2700
Wire Wire Line
	5500 2700 5150 2700
Wire Wire Line
	3400 2700 3400 2750
Wire Wire Line
	3750 2750 3750 2700
Connection ~ 3750 2700
Wire Wire Line
	4100 2750 4100 2700
Connection ~ 4100 2700
Wire Wire Line
	4100 2700 3750 2700
Wire Wire Line
	4450 2750 4450 2700
Connection ~ 4450 2700
Wire Wire Line
	4450 2700 4100 2700
Wire Wire Line
	4800 2750 4800 2700
Connection ~ 4800 2700
Wire Wire Line
	4800 2700 4450 2700
Wire Wire Line
	5150 2750 5150 2700
Connection ~ 5150 2700
Wire Wire Line
	5150 2700 4800 2700
Wire Wire Line
	5150 2950 5150 3000
Wire Wire Line
	5150 3000 5500 3000
Wire Wire Line
	5150 3000 4800 3000
Connection ~ 5150 3000
Wire Wire Line
	3750 2950 3750 3000
Wire Wire Line
	4100 2950 4100 3000
Connection ~ 4100 3000
Wire Wire Line
	4100 3000 3750 3000
Wire Wire Line
	4450 2950 4450 3000
Connection ~ 4450 3000
Wire Wire Line
	4450 3000 4100 3000
Wire Wire Line
	4800 2950 4800 3000
Connection ~ 4800 3000
Wire Wire Line
	4800 3000 4450 3000
$Comp
L power:+3V3 #PWR?
U 1 1 60D52DE5
P 2950 2700
F 0 "#PWR?" H 2950 2550 50  0001 C CNN
F 1 "+3V3" H 2965 2873 50  0000 C CNN
F 2 "" H 2950 2700 50  0001 C CNN
F 3 "" H 2950 2700 50  0001 C CNN
	1    2950 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R6
U 1 1 60DFE45C
P 5450 3450
F 0 "R6" V 5254 3450 50  0000 C CNN
F 1 "27" V 5345 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 5450 3450 50  0001 C CNN
F 3 "~" H 5450 3450 50  0001 C CNN
	1    5450 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R7
U 1 1 60E00550
P 5450 3750
F 0 "R7" V 5254 3750 50  0000 C CNN
F 1 "27" V 5345 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 5450 3750 50  0001 C CNN
F 3 "~" H 5450 3750 50  0001 C CNN
	1    5450 3750
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R8
U 1 1 60E3017C
P 7650 1550
F 0 "R8" V 7454 1550 50  0000 C CNN
F 1 "1k" V 7545 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 7650 1550 50  0001 C CNN
F 3 "~" H 7650 1550 50  0001 C CNN
	1    7650 1550
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R9
U 1 1 60E41653
P 8100 1150
F 0 "R9" H 8159 1196 50  0000 L CNN
F 1 "DNF" H 8159 1105 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8100 1150 50  0001 C CNN
F 3 "~" H 8100 1150 50  0001 C CNN
	1    8100 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60E56628
P 8800 2050
F 0 "#PWR?" H 8800 1800 50  0001 C CNN
F 1 "GND" H 8805 1877 50  0000 C CNN
F 2 "" H 8800 2050 50  0001 C CNN
F 3 "" H 8800 2050 50  0001 C CNN
	1    8800 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C18
U 1 1 60E57D02
P 9050 950
F 0 "C18" H 9142 996 50  0000 L CNN
F 1 "100n" H 9142 905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9050 950 50  0001 C CNN
F 3 "~" H 9050 950 50  0001 C CNN
	1    9050 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60E588BF
P 9050 1050
F 0 "#PWR?" H 9050 800 50  0001 C CNN
F 1 "GND" H 9055 877 50  0000 C CNN
F 2 "" H 9050 1050 50  0001 C CNN
F 3 "" H 9050 1050 50  0001 C CNN
	1    9050 1050
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 60E58ED2
P 8800 700
F 0 "#PWR?" H 8800 550 50  0001 C CNN
F 1 "+3V3" H 8815 873 50  0000 C CNN
F 2 "" H 8800 700 50  0001 C CNN
F 3 "" H 8800 700 50  0001 C CNN
	1    8800 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 1250 8800 900 
Wire Wire Line
	9050 850  9050 800 
Wire Wire Line
	9050 800  8800 800 
Connection ~ 8800 800 
Wire Wire Line
	8800 800  8800 700 
Wire Wire Line
	8300 1550 8100 1550
Wire Wire Line
	8100 1250 8100 1550
Wire Wire Line
	8100 1050 8100 900 
Wire Wire Line
	8100 900  8800 900 
Connection ~ 8800 900 
Wire Wire Line
	8800 900  8800 800 
Text Label 7750 1550 0    50   ~ 0
QSPI_SS
Text Label 1800 4100 0    50   ~ 0
QSPI_SS
Wire Wire Line
	2200 4100 1800 4100
Wire Wire Line
	8100 1550 7750 1550
Connection ~ 8100 1550
Text Label 9750 1450 2    50   ~ 0
QSPI_SDO
Text Label 9750 1550 2    50   ~ 0
QSPI_SD1
Wire Wire Line
	9750 1550 9300 1550
Wire Wire Line
	9300 1450 9750 1450
Text Label 9700 1750 2    50   ~ 0
QSPI_SD2
Text Label 9700 1850 2    50   ~ 0
QSPI_SD3
Wire Wire Line
	9300 1850 9700 1850
Wire Wire Line
	9700 1750 9300 1750
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 60EF6964
P 6950 1650
F 0 "J2" H 6950 1450 50  0000 C CNN
F 1 "Conn_01x02" H 6900 1800 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x01_P1.27mm_Vertical_SMD" H 6950 1650 50  0001 C CNN
F 3 "~" H 6950 1650 50  0001 C CNN
	1    6950 1650
	-1   0    0    1   
$EndComp
Text Label 7150 1550 0    50   ~ 0
~USB_BOOT
Wire Wire Line
	7550 1550 7150 1550
$Comp
L power:GND #PWR?
U 1 1 60F4620C
P 7400 1650
F 0 "#PWR?" H 7400 1400 50  0001 C CNN
F 1 "GND" H 7405 1477 50  0000 C CNN
F 2 "" H 7400 1650 50  0001 C CNN
F 3 "" H 7400 1650 50  0001 C CNN
	1    7400 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 1650 7150 1650
Text Label 7750 1750 0    50   ~ 0
QSPI_SCLK
$Comp
L Memory_Flash:W25Q128JVS U4
U 1 1 60C96A40
P 8800 1650
F 0 "U4" H 8450 2050 50  0000 C CNN
F 1 "W25Q128JVS" H 9150 1300 50  0000 C CNN
F 2 "Package_SO:SOIC-8_5.23x5.23mm_P1.27mm" H 8800 1650 50  0001 C CNN
F 3 "http://www.winbond.com/resource-files/w25q128jv_dtr%20revc%2003272018%20plus.pdf" H 8800 1650 50  0001 C CNN
	1    8800 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 1750 7750 1750
Text Label 1800 5450 0    50   ~ 0
XIN
Wire Wire Line
	2200 5450 1800 5450
Text Label 1800 5650 0    50   ~ 0
XOUT
Wire Wire Line
	1800 5650 2200 5650
Text Label 1800 6150 0    50   ~ 0
RUN
Wire Wire Line
	2200 6150 1800 6150
Text Label 1800 6600 0    50   ~ 0
SWCLK
Wire Wire Line
	2200 6600 1800 6600
Text Label 1800 6700 0    50   ~ 0
SWD
Wire Wire Line
	2200 6700 1800 6700
$Comp
L power:GND #PWR?
U 1 1 60F8B4B7
P 3450 7500
F 0 "#PWR?" H 3450 7250 50  0001 C CNN
F 1 "GND" H 3455 7327 50  0000 C CNN
F 2 "" H 3450 7500 50  0001 C CNN
F 3 "" H 3450 7500 50  0001 C CNN
	1    3450 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 7350 3450 7450
Wire Wire Line
	2950 7350 2950 7450
Wire Wire Line
	2950 7450 3450 7450
Wire Wire Line
	3450 7450 3450 7500
Text Label 5150 4050 2    50   ~ 0
SPI0_RX
Wire Wire Line
	5150 4050 4700 4050
Text Label 5150 4150 2    50   ~ 0
SPI0_CSN
Wire Wire Line
	5150 4150 4700 4150
Text Label 5150 4250 2    50   ~ 0
SPI0_SCK
Wire Wire Line
	5150 4250 4700 4250
Text Label 5150 4350 2    50   ~ 0
SPI0_TX
Wire Wire Line
	5150 4350 4700 4350
Text Label 7900 3100 0    50   ~ 0
SPI0_TX
Wire Wire Line
	8250 3100 7900 3100
Connection ~ 8250 3100
Text Label 9150 3100 2    50   ~ 0
GB_SI
Wire Wire Line
	9150 3100 8800 3100
Connection ~ 8800 3100
$Comp
L Transistor_FET:BSS138 Q3
U 1 1 61012428
P 9950 3000
F 0 "Q3" V 10199 3000 50  0000 C CNN
F 1 "BSS138" V 10290 3000 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10150 2925 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 9950 3000 50  0001 L CNN
	1    9950 3000
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R14
U 1 1 6101242E
P 9600 2900
F 0 "R14" H 9659 2946 50  0000 L CNN
F 1 "10k" H 9659 2855 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 9600 2900 50  0001 C CNN
F 3 "~" H 9600 2900 50  0001 C CNN
	1    9600 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 61012434
P 9600 2700
F 0 "#PWR?" H 9600 2550 50  0001 C CNN
F 1 "+3V3" H 9615 2873 50  0000 C CNN
F 2 "" H 9600 2700 50  0001 C CNN
F 3 "" H 9600 2700 50  0001 C CNN
	1    9600 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R18
U 1 1 6101243A
P 10150 2900
F 0 "R18" H 10209 2946 50  0000 L CNN
F 1 "10k" H 10209 2855 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 10150 2900 50  0001 C CNN
F 3 "~" H 10150 2900 50  0001 C CNN
	1    10150 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61012440
P 10150 2700
F 0 "#PWR?" H 10150 2550 50  0001 C CNN
F 1 "+5V" H 10165 2873 50  0000 C CNN
F 2 "" H 10150 2700 50  0001 C CNN
F 3 "" H 10150 2700 50  0001 C CNN
	1    10150 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 2800 9950 2750
Wire Wire Line
	9950 2750 9600 2750
Wire Wire Line
	9600 2750 9600 2700
Wire Wire Line
	9600 2800 9600 2750
Connection ~ 9600 2750
Wire Wire Line
	10150 3100 10150 3000
Wire Wire Line
	10150 2800 10150 2700
Wire Wire Line
	9600 3000 9600 3100
Wire Wire Line
	9600 3100 9750 3100
Text Label 9250 3100 0    50   ~ 0
SPI0_RX
Wire Wire Line
	9600 3100 9250 3100
Connection ~ 9600 3100
Text Label 10500 3100 2    50   ~ 0
GB_SO
Wire Wire Line
	10500 3100 10150 3100
Connection ~ 10150 3100
$Comp
L Transistor_FET:BSS138 Q2
U 1 1 6101ECA9
P 8600 3900
F 0 "Q2" V 8849 3900 50  0000 C CNN
F 1 "BSS138" V 8940 3900 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8800 3825 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 8600 3900 50  0001 L CNN
	1    8600 3900
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R11
U 1 1 6101ECAF
P 8250 3800
F 0 "R11" H 8309 3846 50  0000 L CNN
F 1 "10k" H 8309 3755 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8250 3800 50  0001 C CNN
F 3 "~" H 8250 3800 50  0001 C CNN
	1    8250 3800
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 6101ECB5
P 8250 3600
F 0 "#PWR?" H 8250 3450 50  0001 C CNN
F 1 "+3V3" H 8265 3773 50  0000 C CNN
F 2 "" H 8250 3600 50  0001 C CNN
F 3 "" H 8250 3600 50  0001 C CNN
	1    8250 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R13
U 1 1 6101ECBB
P 8800 3800
F 0 "R13" H 8859 3846 50  0000 L CNN
F 1 "10k" H 8859 3755 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8800 3800 50  0001 C CNN
F 3 "~" H 8800 3800 50  0001 C CNN
	1    8800 3800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6101ECC1
P 8800 3600
F 0 "#PWR?" H 8800 3450 50  0001 C CNN
F 1 "+5V" H 8815 3773 50  0000 C CNN
F 2 "" H 8800 3600 50  0001 C CNN
F 3 "" H 8800 3600 50  0001 C CNN
	1    8800 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3700 8600 3650
Wire Wire Line
	8600 3650 8250 3650
Wire Wire Line
	8250 3650 8250 3600
Wire Wire Line
	8250 3700 8250 3650
Connection ~ 8250 3650
Wire Wire Line
	8800 4000 8800 3900
Wire Wire Line
	8800 3700 8800 3600
Wire Wire Line
	8250 3900 8250 4000
Wire Wire Line
	8250 4000 8400 4000
Text Label 7900 4000 0    50   ~ 0
SPI0_SCK
Wire Wire Line
	8250 4000 7900 4000
Connection ~ 8250 4000
Text Label 9150 4000 2    50   ~ 0
GB_SC
Wire Wire Line
	9150 4000 8800 4000
Connection ~ 8800 4000
$Comp
L Transistor_FET:BSS138 Q4
U 1 1 610329A5
P 9950 3900
F 0 "Q4" V 10199 3900 50  0000 C CNN
F 1 "BSS138" V 10290 3900 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10150 3825 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 9950 3900 50  0001 L CNN
	1    9950 3900
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R15
U 1 1 610329AB
P 9600 3800
F 0 "R15" H 9659 3846 50  0000 L CNN
F 1 "10k" H 9659 3755 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 9600 3800 50  0001 C CNN
F 3 "~" H 9600 3800 50  0001 C CNN
	1    9600 3800
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 610329B1
P 9600 3600
F 0 "#PWR?" H 9600 3450 50  0001 C CNN
F 1 "+3V3" H 9615 3773 50  0000 C CNN
F 2 "" H 9600 3600 50  0001 C CNN
F 3 "" H 9600 3600 50  0001 C CNN
	1    9600 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R19
U 1 1 610329B7
P 10150 3800
F 0 "R19" H 10209 3846 50  0000 L CNN
F 1 "10k" H 10209 3755 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 10150 3800 50  0001 C CNN
F 3 "~" H 10150 3800 50  0001 C CNN
	1    10150 3800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 610329BD
P 10150 3600
F 0 "#PWR?" H 10150 3450 50  0001 C CNN
F 1 "+5V" H 10165 3773 50  0000 C CNN
F 2 "" H 10150 3600 50  0001 C CNN
F 3 "" H 10150 3600 50  0001 C CNN
	1    10150 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 3700 9950 3650
Wire Wire Line
	9950 3650 9600 3650
Wire Wire Line
	9600 3650 9600 3600
Wire Wire Line
	9600 3700 9600 3650
Connection ~ 9600 3650
Wire Wire Line
	10150 4000 10150 3900
Wire Wire Line
	10150 3700 10150 3600
Wire Wire Line
	9600 3900 9600 4000
Wire Wire Line
	9600 4000 9750 4000
Text Label 9250 4000 0    50   ~ 0
SPI0_CSN
Wire Wire Line
	9600 4000 9250 4000
Connection ~ 9600 4000
Text Label 10500 4000 2    50   ~ 0
GB_SD
Wire Wire Line
	10500 4000 10150 4000
Connection ~ 10150 4000
Text Label 1800 4250 0    50   ~ 0
QSPI_SD0
Text Label 1800 4350 0    50   ~ 0
QSPI_SD1
Text Label 1800 4450 0    50   ~ 0
QSPI_SD2
Text Label 1800 4550 0    50   ~ 0
QSPI_SD3
Text Label 1800 4700 0    50   ~ 0
QSPI_SCK
Wire Wire Line
	2200 4250 1800 4250
Wire Wire Line
	1800 4350 2200 4350
Wire Wire Line
	2200 4450 1800 4450
Wire Wire Line
	1800 4550 2200 4550
Wire Wire Line
	2200 4700 1800 4700
Text Label 5900 3450 2    50   ~ 0
USB_D+
Wire Wire Line
	5900 3450 5550 3450
Text Label 5900 3750 2    50   ~ 0
USB_D-
Wire Wire Line
	5900 3750 5550 3750
$Comp
L Device:C_Small C11
U 1 1 6118EA84
P 4050 1350
F 0 "C11" H 4142 1396 50  0000 L CNN
F 1 "10u" H 4142 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4050 1350 50  0001 C CNN
F 3 "~" H 4050 1350 50  0001 C CNN
	1    4050 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 61199973
P 4050 1250
F 0 "#PWR?" H 4050 1100 50  0001 C CNN
F 1 "+3V3" H 4065 1423 50  0000 C CNN
F 2 "" H 4050 1250 50  0001 C CNN
F 3 "" H 4050 1250 50  0001 C CNN
	1    4050 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6119A4A7
P 4050 1450
F 0 "#PWR?" H 4050 1200 50  0001 C CNN
F 1 "GND" H 4055 1277 50  0000 C CNN
F 2 "" H 4050 1450 50  0001 C CNN
F 3 "" H 4050 1450 50  0001 C CNN
	1    4050 1450
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:NCP1117-3.3_SOT223 U1
U 1 1 611A2C9B
P 3200 1250
F 0 "U1" H 3200 1492 50  0000 C CNN
F 1 "NCP1117-3.3_SOT223" H 3200 1401 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3200 1450 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/NCP1117-D.PDF" H 3300 1000 50  0001 C CNN
	1    3200 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 611A5177
P 3200 1550
F 0 "#PWR?" H 3200 1300 50  0001 C CNN
F 1 "GND" H 3205 1377 50  0000 C CNN
F 2 "" H 3200 1550 50  0001 C CNN
F 3 "" H 3200 1550 50  0001 C CNN
	1    3200 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 611A5B07
P 2650 1350
F 0 "C5" H 2742 1396 50  0000 L CNN
F 1 "10u" H 2742 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2650 1350 50  0001 C CNN
F 3 "~" H 2650 1350 50  0001 C CNN
	1    2650 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 611A60E5
P 3700 1350
F 0 "C9" H 3792 1396 50  0000 L CNN
F 1 "10u" H 3792 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3700 1350 50  0001 C CNN
F 3 "~" H 3700 1350 50  0001 C CNN
	1    3700 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1250 3700 1250
$Comp
L power:+3V3 #PWR?
U 1 1 611E4899
P 3700 1150
F 0 "#PWR?" H 3700 1000 50  0001 C CNN
F 1 "+3V3" H 3715 1323 50  0000 C CNN
F 2 "" H 3700 1150 50  0001 C CNN
F 3 "" H 3700 1150 50  0001 C CNN
	1    3700 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1150 3700 1250
Connection ~ 3700 1250
$Comp
L power:GND #PWR?
U 1 1 611EC753
P 3700 1450
F 0 "#PWR?" H 3700 1200 50  0001 C CNN
F 1 "GND" H 3705 1277 50  0000 C CNN
F 2 "" H 3700 1450 50  0001 C CNN
F 3 "" H 3700 1450 50  0001 C CNN
	1    3700 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 611ECB60
P 2650 1450
F 0 "#PWR?" H 2650 1200 50  0001 C CNN
F 1 "GND" H 2655 1277 50  0000 C CNN
F 2 "" H 2650 1450 50  0001 C CNN
F 3 "" H 2650 1450 50  0001 C CNN
	1    2650 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1250 2650 1250
$Comp
L power:GND #PWR?
U 1 1 6120571A
P 650 1250
F 0 "#PWR?" H 650 1000 50  0001 C CNN
F 1 "GND" H 655 1077 50  0000 C CNN
F 2 "" H 650 1250 50  0001 C CNN
F 3 "" H 650 1250 50  0001 C CNN
	1    650  1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  1050 650  1050
Wire Wire Line
	700  750  650  750 
Wire Wire Line
	650  750  650  1050
Text Label 2400 2000 1    50   ~ 0
VBUS
Text Label 2650 1250 0    50   ~ 0
VBUS
$Comp
L Device:R_Small R3
U 1 1 6123BE1D
P 2000 1800
F 0 "R3" V 1804 1800 50  0000 C CNN
F 1 "5.11k" V 1895 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2000 1800 50  0001 C CNN
F 3 "~" H 2000 1800 50  0001 C CNN
	1    2000 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	2200 1700 2200 1650
Wire Wire Line
	2000 1650 2000 1700
Text Label 1400 2000 1    50   ~ 0
USB_D+
Wire Wire Line
	1400 2000 1400 1700
Text Label 1600 2000 1    50   ~ 0
USB_D-
Wire Wire Line
	1600 2000 1600 1700
$Comp
L power:GND #PWR?
U 1 1 612C943A
P 2000 1900
F 0 "#PWR?" H 2000 1650 50  0001 C CNN
F 1 "GND" V 2005 1772 50  0000 R CNN
F 2 "" H 2000 1900 50  0001 C CNN
F 3 "" H 2000 1900 50  0001 C CNN
	1    2000 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3250 6500 3250
Text Label 5150 4450 2    50   ~ 0
I2C0_SDA
Wire Wire Line
	5150 4450 4700 4450
Wire Wire Line
	5150 4550 4700 4550
Text Label 5150 4550 2    50   ~ 0
I2C0_SCL
Text Label 9300 5100 0    50   ~ 0
I2C0_SDA
Text Label 9300 5400 0    50   ~ 0
I2C0_SCL
$Comp
L power:+3V3 #PWR?
U 1 1 6144A5BE
P 10050 5100
F 0 "#PWR?" H 10050 4950 50  0001 C CNN
F 1 "+3V3" H 10065 5273 50  0000 C CNN
F 2 "" H 10050 5100 50  0001 C CNN
F 3 "" H 10050 5100 50  0001 C CNN
	1    10050 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R16
U 1 1 6144DB05
P 9800 5100
F 0 "R16" V 9604 5100 50  0000 C CNN
F 1 "10k" V 9695 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 9800 5100 50  0001 C CNN
F 3 "~" H 9800 5100 50  0001 C CNN
	1    9800 5100
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R17
U 1 1 6144F939
P 9800 5400
F 0 "R17" V 9604 5400 50  0000 C CNN
F 1 "10k" V 9695 5400 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 9800 5400 50  0001 C CNN
F 3 "~" H 9800 5400 50  0001 C CNN
	1    9800 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	9900 5100 10050 5100
Wire Wire Line
	9900 5400 10050 5400
Wire Wire Line
	10050 5400 10050 5100
Connection ~ 10050 5100
Wire Wire Line
	9300 5100 9700 5100
Wire Wire Line
	9700 5400 9300 5400
Text Label 8300 5100 2    50   ~ 0
I2C0_SDA
Text Label 8300 5300 2    50   ~ 0
I2C0_SCL
Wire Wire Line
	8300 5300 7900 5300
Wire Wire Line
	7900 5100 8300 5100
Text Label 6300 3350 0    50   ~ 0
GB_SI
Wire Wire Line
	6300 3350 6550 3350
Text Label 7800 3250 2    50   ~ 0
GB_SO
Text Label 7800 3350 2    50   ~ 0
GB_SD
Text Label 6300 3450 0    50   ~ 0
GB_SC
Wire Wire Line
	6550 3450 6300 3450
Text Label 5650 1250 2    50   ~ 0
LED0
Wire Wire Line
	5450 1250 5650 1250
Text Label 5650 1600 2    50   ~ 0
LED1
Wire Wire Line
	5450 1600 5650 1600
$Comp
L Device:R_Small R1
U 1 1 61635341
P 1400 5850
F 0 "R1" H 1459 5896 50  0000 L CNN
F 1 "1k" H 1459 5805 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1400 5850 50  0001 C CNN
F 3 "~" H 1400 5850 50  0001 C CNN
	1    1400 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 61636115
P 700 6150
F 0 "C1" H 792 6196 50  0000 L CNN
F 1 "12p" H 792 6105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 700 6150 50  0001 C CNN
F 3 "~" H 700 6150 50  0001 C CNN
	1    700  6150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 616368D7
P 1400 6150
F 0 "C2" H 1492 6196 50  0000 L CNN
F 1 "12p" H 1492 6105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1400 6150 50  0001 C CNN
F 3 "~" H 1400 6150 50  0001 C CNN
	1    1400 6150
	1    0    0    -1  
$EndComp
Text Label 1650 5650 2    50   ~ 0
XIN
Wire Wire Line
	1400 5650 1400 5750
$Comp
L power:GND #PWR?
U 1 1 61674EE4
P 1400 6250
F 0 "#PWR?" H 1400 6000 50  0001 C CNN
F 1 "GND" H 1405 6077 50  0000 C CNN
F 2 "" H 1400 6250 50  0001 C CNN
F 3 "" H 1400 6250 50  0001 C CNN
	1    1400 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal_GND24_Small Y1
U 1 1 616B140D
P 1100 6000
F 0 "Y1" H 900 6250 50  0000 L CNN
F 1 "12mhz" H 1050 6250 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3225-4Pin_3.2x2.5mm" H 1100 6000 50  0001 C CNN
F 3 "~" H 1100 6000 50  0001 C CNN
	1    1100 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 5900 1100 5850
Wire Wire Line
	1100 5850 950  5850
Wire Wire Line
	950  5850 950  6150
Wire Wire Line
	950  6150 1100 6150
$Comp
L power:GND #PWR?
U 1 1 616F8980
P 1100 6250
F 0 "#PWR?" H 1100 6000 50  0001 C CNN
F 1 "GND" H 1105 6077 50  0000 C CNN
F 2 "" H 1100 6250 50  0001 C CNN
F 3 "" H 1100 6250 50  0001 C CNN
	1    1100 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 6150 1100 6250
Wire Wire Line
	1100 6100 1100 6150
Connection ~ 1100 6150
$Comp
L power:GND #PWR?
U 1 1 61722F0E
P 700 6250
F 0 "#PWR?" H 700 6000 50  0001 C CNN
F 1 "GND" H 705 6077 50  0000 C CNN
F 2 "" H 700 6250 50  0001 C CNN
F 3 "" H 700 6250 50  0001 C CNN
	1    700  6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 5950 1400 6000
Wire Wire Line
	1000 6000 700  6000
Wire Wire Line
	700  6000 700  6050
Wire Wire Line
	1200 6000 1400 6000
Connection ~ 1400 6000
Wire Wire Line
	1400 6000 1400 6050
Wire Wire Line
	1650 5650 1400 5650
Text Label 1650 5450 2    50   ~ 0
XOUT
Wire Wire Line
	1650 5450 700  5450
Wire Wire Line
	700  5450 700  6000
Connection ~ 700  6000
Wire Wire Line
	2200 1700 2400 1700
Wire Wire Line
	2400 1700 2400 2000
Wire Notes Line
	4350 2350 4350 500 
Connection ~ 3450 7450
Wire Wire Line
	4100 3350 4100 3250
Wire Wire Line
	4100 3250 3950 3250
Wire Wire Line
	3300 3250 3300 3350
Wire Wire Line
	3400 3350 3400 3250
Connection ~ 3400 3250
Wire Wire Line
	3400 3250 3300 3250
Wire Wire Line
	3500 3350 3500 3250
Connection ~ 3500 3250
Wire Wire Line
	3500 3250 3400 3250
Wire Wire Line
	3600 3350 3600 3250
Connection ~ 3600 3250
Wire Wire Line
	3600 3250 3500 3250
Wire Wire Line
	3700 3350 3700 3250
Connection ~ 3700 3250
Wire Wire Line
	3700 3250 3600 3250
Wire Wire Line
	3800 3350 3800 3250
Connection ~ 3800 3250
Wire Wire Line
	3800 3250 3700 3250
Wire Wire Line
	3950 3350 3950 3250
Wire Wire Line
	3950 3250 3800 3250
Wire Wire Line
	2750 3350 2750 3250
Wire Wire Line
	2750 3250 2650 3250
Connection ~ 5500 3000
Connection ~ 3950 3250
Connection ~ 3400 2700
$Comp
L power:GND #PWR?
U 1 1 616C8F46
P 2000 3650
F 0 "#PWR?" H 2000 3400 50  0001 C CNN
F 1 "GND" H 2005 3477 50  0000 C CNN
F 2 "" H 2000 3650 50  0001 C CNN
F 3 "" H 2000 3650 50  0001 C CNN
	1    2000 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3650 2000 3600
Text Notes 4300 2300 2    50   ~ 0
USB+PWR
Text Notes 5900 2450 2    50   ~ 0
MCU
Wire Notes Line
	11200 4400 5950 4400
Wire Notes Line
	500  2350 11200 2350
Text Notes 11200 2450 2    50   ~ 0
GBA CONN
Wire Notes Line
	5950 6000 11200 6000
Text Notes 11200 4500 2    50   ~ 0
NervesKey
Wire Notes Line
	5950 500  5950 7800
Text Notes 5900 600  2    50   ~ 0
STATUS LEDS\n
Text Notes 11200 550  2    50   ~ 0
FLASH
Wire Wire Line
	650  1050 650  1250
Connection ~ 650  1050
Text Label 5150 4750 2    50   ~ 0
LED0
Wire Wire Line
	5150 4750 4700 4750
Text Label 5150 4650 2    50   ~ 0
LED1
Wire Wire Line
	5150 4650 4700 4650
NoConn ~ 4700 4850
NoConn ~ 4700 4950
NoConn ~ 4700 5050
NoConn ~ 4700 5150
NoConn ~ 4700 5250
NoConn ~ 4700 5350
NoConn ~ 4700 5450
NoConn ~ 4700 5550
NoConn ~ 4700 5650
NoConn ~ 4700 5750
NoConn ~ 4700 5850
NoConn ~ 4700 5950
NoConn ~ 4700 6050
NoConn ~ 4700 6150
NoConn ~ 4700 6250
NoConn ~ 4700 6350
NoConn ~ 4700 6450
NoConn ~ 4700 6550
NoConn ~ 4700 6750
NoConn ~ 4700 6850
NoConn ~ 4700 6950
NoConn ~ 4700 7050
$Comp
L cable-link:GBA-LINK J3
U 1 1 61A88CBC
P 7000 3350
F 0 "J3" V 7465 3325 50  0000 C CNN
F 1 "GBA-LINK" V 7374 3325 50  0000 C CNN
F 2 "Connector_GBA:GBA-LINK" V 7100 3800 50  0001 C CNN
F 3 "" V 7100 3800 50  0001 C CNN
	1    7000 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7500 3250 7800 3250
Wire Wire Line
	7500 3350 7800 3350
Wire Wire Line
	6950 3800 6950 3900
Wire Wire Line
	6950 3900 7050 3900
Wire Wire Line
	7500 3450 7500 3900
Connection ~ 7500 3900
Wire Wire Line
	7050 3800 7050 3900
Connection ~ 7050 3900
Wire Wire Line
	7050 3900 7500 3900
$Comp
L Connector:USB_C_Receptacle_USB2.0 J1
U 1 1 61BC91BE
P 1600 1050
F 0 "J1" V 1150 1700 50  0000 C CNN
F 1 "USB_C_Receptacle_USB2.0" V 1150 850 50  0000 C CNN
F 2 "Connector_USB_C_JLCPCB:TYPE-C-31-M-12" H 1750 1050 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 1750 1050 50  0001 C CNN
	1    1600 1050
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 61BE7BAB
P 1900 1800
F 0 "R2" V 1704 1800 50  0000 C CNN
F 1 "5.11k" V 1795 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1900 1800 50  0001 C CNN
F 3 "~" H 1900 1800 50  0001 C CNN
	1    1900 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1650 1500 1700
Wire Wire Line
	1500 1700 1400 1700
Connection ~ 1400 1700
Wire Wire Line
	1400 1700 1400 1650
Wire Wire Line
	1700 1650 1700 1700
Wire Wire Line
	1700 1700 1600 1700
Connection ~ 1600 1700
Wire Wire Line
	1600 1700 1600 1650
NoConn ~ 1000 1650
NoConn ~ 1100 1650
Wire Wire Line
	1900 1650 1900 1700
$Comp
L power:GND #PWR?
U 1 1 61C43232
P 1900 1900
F 0 "#PWR?" H 1900 1650 50  0001 C CNN
F 1 "GND" V 1905 1772 50  0000 R CNN
F 2 "" H 1900 1900 50  0001 C CNN
F 3 "" H 1900 1900 50  0001 C CNN
	1    1900 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 3350 2950 3250
Wire Wire Line
	2950 3250 2750 3250
Connection ~ 2750 3250
Connection ~ 2650 3250
Wire Wire Line
	2000 3250 2000 3400
Wire Wire Line
	2000 3250 2650 3250
Wire Wire Line
	2650 3250 2650 3350
Connection ~ 2000 3000
Wire Wire Line
	2000 3000 1900 3000
Wire Wire Line
	2650 2700 2650 3250
Connection ~ 2650 2700
Wire Wire Line
	2350 2700 2650 2700
Connection ~ 2350 2700
$Comp
L power:+1V1 #PWR?
U 1 1 613EBBBE
P 2650 2700
F 0 "#PWR?" H 2650 2550 50  0001 C CNN
F 1 "+1V1" H 2665 2873 50  0000 C CNN
F 2 "" H 2650 2700 50  0001 C CNN
F 3 "" H 2650 2700 50  0001 C CNN
	1    2650 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3000 2000 2950
Wire Wire Line
	2350 3000 2000 3000
Wire Wire Line
	2350 2950 2350 3000
Wire Wire Line
	2000 2700 2000 2750
Wire Wire Line
	2350 2700 2000 2700
Wire Wire Line
	2350 2700 2350 2750
$Comp
L power:GND #PWR?
U 1 1 60D9492A
P 1900 3000
F 0 "#PWR?" H 1900 2750 50  0001 C CNN
F 1 "GND" H 1905 2827 50  0000 C CNN
F 2 "" H 1900 3000 50  0001 C CNN
F 3 "" H 1900 3000 50  0001 C CNN
	1    1900 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 60D11501
P 2350 2850
F 0 "C4" H 2442 2896 50  0000 L CNN
F 1 "100n" H 2442 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2350 2850 50  0001 C CNN
F 3 "~" H 2350 2850 50  0001 C CNN
	1    2350 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 60D0FEDC
P 2000 2850
F 0 "C3" H 2092 2896 50  0000 L CNN
F 1 "100n" H 2092 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2000 2850 50  0001 C CNN
F 3 "~" H 2000 2850 50  0001 C CNN
	1    2000 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2700 3100 3250
Connection ~ 3100 2700
Wire Wire Line
	3100 2700 2950 2700
Wire Wire Line
	3400 2700 3750 2700
$Comp
L power:GND #PWR?
U 1 1 61E10DA7
P 2950 2950
F 0 "#PWR?" H 2950 2700 50  0001 C CNN
F 1 "GND" H 2955 2777 50  0000 C CNN
F 2 "" H 2950 2950 50  0001 C CNN
F 3 "" H 2950 2950 50  0001 C CNN
	1    2950 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2750 2950 2700
Wire Wire Line
	3400 2950 3400 3000
Wire Wire Line
	3400 3000 3750 3000
Connection ~ 3750 3000
Connection ~ 2950 2700
Connection ~ 3300 3250
Wire Wire Line
	3300 3250 3100 3250
Connection ~ 3100 3250
Wire Wire Line
	3100 3250 3100 3350
Wire Wire Line
	3100 2700 3400 2700
$Comp
L power:+5V #PWR?
U 1 1 61F813A8
P 6500 3000
F 0 "#PWR?" H 6500 2850 50  0001 C CNN
F 1 "+5V" H 6515 3173 50  0000 C CNN
F 2 "" H 6500 3000 50  0001 C CNN
F 3 "" H 6500 3000 50  0001 C CNN
	1    6500 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3000 6500 3250
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 62005D37
P 3050 1950
F 0 "H4" H 3050 2150 50  0000 C CNN
F 1 "MountingHole_Pad" V 3196 1953 50  0001 C CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 3050 1950 50  0001 C CNN
F 3 "~" H 3050 1950 50  0001 C CNN
	1    3050 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62007583
P 3200 2100
F 0 "#PWR?" H 3200 1850 50  0001 C CNN
F 1 "GND" H 3205 1927 50  0000 C CNN
F 2 "" H 3200 2100 50  0001 C CNN
F 3 "" H 3200 2100 50  0001 C CNN
	1    3200 2100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 6201F1B1
P 2900 1950
F 0 "H3" H 2900 2150 50  0000 C CNN
F 1 "MountingHole_Pad" V 3046 1953 50  0001 C CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 2900 1950 50  0001 C CNN
F 3 "~" H 2900 1950 50  0001 C CNN
	1    2900 1950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 6202CCA7
P 2750 1950
F 0 "H2" H 2750 2150 50  0000 C CNN
F 1 "MountingHole_Pad" V 2896 1953 50  0001 C CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 2750 1950 50  0001 C CNN
F 3 "~" H 2750 1950 50  0001 C CNN
	1    2750 1950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 6203A75E
P 2600 1950
F 0 "H1" H 2600 2150 50  0000 C CNN
F 1 "MountingHole_Pad" V 2746 1953 50  0001 C CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 2600 1950 50  0001 C CNN
F 3 "~" H 2600 1950 50  0001 C CNN
	1    2600 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2050 2600 2100
Wire Wire Line
	2750 2050 2750 2100
Wire Wire Line
	2750 2100 2600 2100
Wire Wire Line
	2900 2050 2900 2100
Wire Wire Line
	2900 2100 2750 2100
Connection ~ 2750 2100
Wire Wire Line
	3050 2050 3050 2100
Wire Wire Line
	3050 2100 2900 2100
Connection ~ 2900 2100
Wire Wire Line
	3050 2100 3200 2100
Connection ~ 3050 2100
Text Label 4800 3450 0    50   ~ 0
MCU_USB_D+
Wire Wire Line
	4700 3650 4800 3650
Wire Wire Line
	4800 3650 4800 3450
Wire Wire Line
	4800 3450 5350 3450
Text Label 4800 3750 0    50   ~ 0
MCU_USB_D-
Wire Wire Line
	4700 3750 5350 3750
$EndSCHEMATC
