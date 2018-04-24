EESchema Schematic File Version 2
LIBS:interphase-rescue
LIBS:Switch
LIBS:keyboard_parts
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
LIBS:core51822b
LIBS:switches
LIBS:mcp1640
LIBS:interphase-cache
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
L Battery_Cell BT1
U 1 1 59BBF201
P 700 5600
F 0 "BT1" H 800 5700 50  0000 L CNN
F 1 "Battery_Cell" H 800 5600 50  0000 L CNN
F 2 "Battery_Holders:Keystone_106_1x20mm-CoinCell" V 700 5660 50  0001 C CNN
F 3 "" V 700 5660 50  0001 C CNN
	1    700  5600
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR01
U 1 1 59BBF369
P 34400 -7050
F 0 "#PWR01" H 34400 -7200 50  0001 C CNN
F 1 "+3.3V" H 34400 -6910 50  0000 C CNN
F 2 "" H 34400 -7050 50  0001 C CNN
F 3 "" H 34400 -7050 50  0001 C CNN
	1    34400 -7050
	1    0    0    -1  
$EndComp
$Comp
L MOM-SPST SW32
U 1 1 59BFB4E3
P 9650 950
F 0 "SW32" H 9725 1050 60  0000 L BNB
F 1 "MOM-SPST" H 9725 850 40  0000 L TNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 9725 775 40  0001 L TNN
F 3 "" H 9550 1050 60  0001 C CNN
F 4 "-" H 9725 1150 40  0001 L BNN "Part"
F 5 "Switch" H 9725 1250 40  0001 L BNN "Family"
	1    9650 950 
	1    0    0    -1  
$EndComp
$Comp
L MOM-SPST SW27
U 1 1 59BFB5D8
P 9050 950
F 0 "SW27" H 9125 1050 60  0000 L BNB
F 1 "MOM-SPST" H 9125 850 40  0000 L TNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 9125 775 40  0001 L TNN
F 3 "" H 8950 1050 60  0001 C CNN
F 4 "-" H 9125 1150 40  0001 L BNN "Part"
F 5 "Switch" H 9125 1250 40  0001 L BNN "Family"
	1    9050 950 
	1    0    0    -1  
$EndComp
$Comp
L MOM-SPST SW22
U 1 1 59BFB673
P 8450 950
F 0 "SW22" H 8525 1050 60  0000 L BNB
F 1 "MOM-SPST" H 8525 850 40  0000 L TNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 8525 775 40  0001 L TNN
F 3 "" H 8350 1050 60  0001 C CNN
F 4 "-" H 8525 1150 40  0001 L BNN "Part"
F 5 "Switch" H 8525 1250 40  0001 L BNN "Family"
	1    8450 950 
	1    0    0    -1  
$EndComp
$Comp
L MOM-SPST SW17
U 1 1 59BFB70A
P 7850 950
F 0 "SW17" H 7925 1050 60  0000 L BNB
F 1 "MOM-SPST" H 7925 850 40  0000 L TNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 7925 775 40  0001 L TNN
F 3 "" H 7750 1050 60  0001 C CNN
F 4 "-" H 7925 1150 40  0001 L BNN "Part"
F 5 "Switch" H 7925 1250 40  0001 L BNN "Family"
	1    7850 950 
	1    0    0    -1  
$EndComp
$Comp
L MOM-SPST SW12
U 1 1 59BFB77F
P 7250 950
F 0 "SW12" H 7325 1050 60  0000 L BNB
F 1 "MOM-SPST" H 7325 850 40  0000 L TNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 7325 775 40  0001 L TNN
F 3 "" H 7150 1050 60  0001 C CNN
F 4 "-" H 7325 1150 40  0001 L BNN "Part"
F 5 "Switch" H 7325 1250 40  0001 L BNN "Family"
	1    7250 950 
	1    0    0    -1  
$EndComp
$Comp
L MOM-SPST SW7
U 1 1 59BFB7F0
P 6650 950
F 0 "SW7" H 6725 1050 60  0000 L BNB
F 1 "MOM-SPST" H 6725 850 40  0000 L TNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 6725 775 40  0001 L TNN
F 3 "" H 6550 1050 60  0001 C CNN
F 4 "-" H 6725 1150 40  0001 L BNN "Part"
F 5 "Switch" H 6725 1250 40  0001 L BNN "Family"
	1    6650 950 
	1    0    0    -1  
$EndComp
$Comp
L MOM-SPST SW2
U 1 1 59BFB879
P 6050 950
F 0 "SW2" H 6125 1050 60  0000 L BNB
F 1 "MOM-SPST" H 6125 850 40  0000 L TNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 6125 775 40  0001 L TNN
F 3 "" H 5950 1050 60  0001 C CNN
F 4 "-" H 6125 1150 40  0001 L BNN "Part"
F 5 "Switch" H 6125 1250 40  0001 L BNN "Family"
	1    6050 950 
	1    0    0    -1  
$EndComp
$Comp
L MOM-SPST SW28
U 1 1 59BFBA92
P 9050 1550
F 0 "SW28" H 9125 1650 60  0000 L BNB
F 1 "MOM-SPST" H 9125 1450 40  0000 L TNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 9125 1375 40  0001 L TNN
F 3 "" H 8950 1650 60  0001 C CNN
F 4 "-" H 9125 1750 40  0001 L BNN "Part"
F 5 "Switch" H 9125 1850 40  0001 L BNN "Family"
	1    9050 1550
	1    0    0    -1  
$EndComp
$Comp
L MOM-SPST SW23
U 1 1 59BFBA9A
P 8450 1550
F 0 "SW23" H 8525 1650 60  0000 L BNB
F 1 "MOM-SPST" H 8525 1450 40  0000 L TNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 8525 1375 40  0001 L TNN
F 3 "" H 8350 1650 60  0001 C CNN
F 4 "-" H 8525 1750 40  0001 L BNN "Part"
F 5 "Switch" H 8525 1850 40  0001 L BNN "Family"
	1    8450 1550
	1    0    0    -1  
$EndComp
$Comp
L MOM-SPST SW18
U 1 1 59BFBAA2
P 7850 1550
F 0 "SW18" H 7925 1650 60  0000 L BNB
F 1 "MOM-SPST" H 7925 1450 40  0000 L TNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 7925 1375 40  0001 L TNN
F 3 "" H 7750 1650 60  0001 C CNN
F 4 "-" H 7925 1750 40  0001 L BNN "Part"
F 5 "Switch" H 7925 1850 40  0001 L BNN "Family"
	1    7850 1550
	1    0    0    -1  
$EndComp
$Comp
L MOM-SPST SW13
U 1 1 59BFBAAA
P 7250 1550
F 0 "SW13" H 7325 1650 60  0000 L BNB
F 1 "MOM-SPST" H 7325 1450 40  0000 L TNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 7325 1375 40  0001 L TNN
F 3 "" H 7150 1650 60  0001 C CNN
F 4 "-" H 7325 1750 40  0001 L BNN "Part"
F 5 "Switch" H 7325 1850 40  0001 L BNN "Family"
	1    7250 1550
	1    0    0    -1  
$EndComp
$Comp
L MOM-SPST SW8
U 1 1 59BFBAB2
P 6650 1550
F 0 "SW8" H 6725 1650 60  0000 L BNB
F 1 "MOM-SPST" H 6725 1450 40  0000 L TNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 6725 1375 40  0001 L TNN
F 3 "" H 6550 1650 60  0001 C CNN
F 4 "-" H 6725 1750 40  0001 L BNN "Part"
F 5 "Switch" H 6725 1850 40  0001 L BNN "Family"
	1    6650 1550
	1    0    0    -1  
$EndComp
$Comp
L MOM-SPST SW3
U 1 1 59BFBABA
P 6050 1550
F 0 "SW3" H 6125 1650 60  0000 L BNB
F 1 "MOM-SPST" H 6125 1450 40  0000 L TNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 6125 1650 60  0001 L BNB
F 3 "" H 5950 1650 60  0001 C CNN
F 4 "-" H 6125 1750 40  0001 L BNN "Part"
F 5 "Switch" H 6125 1850 40  0001 L BNN "Family"
	1    6050 1550
	1    0    0    -1  
$EndComp
$Comp
L MOM-SPST SW29
U 1 1 59BFC0BA
P 9050 2150
F 0 "SW29" H 9125 2250 60  0000 L BNB
F 1 "MOM-SPST" H 9125 2050 40  0000 L TNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 9125 1975 40  0001 L TNN
F 3 "" H 8950 2250 60  0001 C CNN
F 4 "-" H 9125 2350 40  0001 L BNN "Part"
F 5 "Switch" H 9125 2450 40  0001 L BNN "Family"
	1    9050 2150
	1    0    0    -1  
$EndComp
$Comp
L MOM-SPST SW24
U 1 1 59BFC0C2
P 8450 2150
F 0 "SW24" H 8525 2250 60  0000 L BNB
F 1 "MOM-SPST" H 8525 2050 40  0000 L TNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 8525 1975 40  0001 L TNN
F 3 "" H 8350 2250 60  0001 C CNN
F 4 "-" H 8525 2350 40  0001 L BNN "Part"
F 5 "Switch" H 8525 2450 40  0001 L BNN "Family"
	1    8450 2150
	1    0    0    -1  
$EndComp
$Comp
L MOM-SPST SW19
U 1 1 59BFC0CA
P 7850 2150
F 0 "SW19" H 7925 2250 60  0000 L BNB
F 1 "MOM-SPST" H 7925 2050 40  0000 L TNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 7925 1975 40  0001 L TNN
F 3 "" H 7750 2250 60  0001 C CNN
F 4 "-" H 7925 2350 40  0001 L BNN "Part"
F 5 "Switch" H 7925 2450 40  0001 L BNN "Family"
	1    7850 2150
	1    0    0    -1  
$EndComp
$Comp
L MOM-SPST SW14
U 1 1 59BFC0D2
P 7250 2150
F 0 "SW14" H 7325 2250 60  0000 L BNB
F 1 "MOM-SPST" H 7325 2050 40  0000 L TNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 7325 1975 40  0001 L TNN
F 3 "" H 7150 2250 60  0001 C CNN
F 4 "-" H 7325 2350 40  0001 L BNN "Part"
F 5 "Switch" H 7325 2450 40  0001 L BNN "Family"
	1    7250 2150
	1    0    0    -1  
$EndComp
$Comp
L MOM-SPST SW9
U 1 1 59BFC0DA
P 6650 2150
F 0 "SW9" H 6725 2250 60  0000 L BNB
F 1 "MOM-SPST" H 6725 2050 40  0000 L TNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 6725 1975 40  0001 L TNN
F 3 "" H 6550 2250 60  0001 C CNN
F 4 "-" H 6725 2350 40  0001 L BNN "Part"
F 5 "Switch" H 6725 2450 40  0001 L BNN "Family"
	1    6650 2150
	1    0    0    -1  
$EndComp
$Comp
L MOM-SPST SW4
U 1 1 59BFC0E2
P 6050 2150
F 0 "SW4" H 6125 2250 60  0000 L BNB
F 1 "MOM-SPST" H 6125 2050 40  0000 L TNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 6125 1975 40  0001 L TNN
F 3 "" H 5950 2250 60  0001 C CNN
F 4 "-" H 6125 2350 40  0001 L BNN "Part"
F 5 "Switch" H 6125 2450 40  0001 L BNN "Family"
	1    6050 2150
	1    0    0    -1  
$EndComp
$Comp
L MOM-SPST SW30
U 1 1 59BFC0F2
P 9050 2750
F 0 "SW30" H 9125 2850 60  0000 L BNB
F 1 "MOM-SPST" H 9125 2650 40  0000 L TNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_2.75u_PCB" H 9125 2575 40  0001 L TNN
F 3 "" H 8950 2850 60  0001 C CNN
F 4 "-" H 9125 2950 40  0001 L BNN "Part"
F 5 "Switch" H 9125 3050 40  0001 L BNN "Family"
	1    9050 2750
	1    0    0    -1  
$EndComp
$Comp
L MOM-SPST SW25
U 1 1 59BFC0FA
P 8450 2750
F 0 "SW25" H 8525 2850 60  0000 L BNB
F 1 "MOM-SPST" H 8525 2650 40  0000 L TNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 8525 2575 40  0001 L TNN
F 3 "" H 8350 2850 60  0001 C CNN
F 4 "-" H 8525 2950 40  0001 L BNN "Part"
F 5 "Switch" H 8525 3050 40  0001 L BNN "Family"
	1    8450 2750
	1    0    0    -1  
$EndComp
$Comp
L MOM-SPST SW20
U 1 1 59BFC102
P 7850 2750
F 0 "SW20" H 7925 2850 60  0000 L BNB
F 1 "MOM-SPST" H 7925 2650 40  0000 L TNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 7925 2575 40  0001 L TNN
F 3 "" H 7750 2850 60  0001 C CNN
F 4 "-" H 7925 2950 40  0001 L BNN "Part"
F 5 "Switch" H 7925 3050 40  0001 L BNN "Family"
	1    7850 2750
	1    0    0    -1  
$EndComp
$Comp
L MOM-SPST SW15
U 1 1 59BFC10A
P 7250 2750
F 0 "SW15" H 7325 2850 60  0000 L BNB
F 1 "MOM-SPST" H 7325 2650 40  0000 L TNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 7325 2575 40  0001 L TNN
F 3 "" H 7150 2850 60  0001 C CNN
F 4 "-" H 7325 2950 40  0001 L BNN "Part"
F 5 "Switch" H 7325 3050 40  0001 L BNN "Family"
	1    7250 2750
	1    0    0    -1  
$EndComp
$Comp
L MOM-SPST SW5
U 1 1 59BFC11A
P 6050 2750
F 0 "SW5" H 6125 2850 60  0000 L BNB
F 1 "MOM-SPST" H 6125 2650 40  0000 L TNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 6125 2575 40  0001 L TNN
F 3 "" H 5950 2850 60  0001 C CNN
F 4 "-" H 6125 2950 40  0001 L BNN "Part"
F 5 "Switch" H 6125 3050 40  0001 L BNN "Family"
	1    6050 2750
	1    0    0    -1  
$EndComp
$Comp
L MOM-SPST SW16
U 1 1 59BFC364
P 7250 3350
F 0 "SW16" H 7325 3450 60  0000 L BNB
F 1 "MOM-SPST" H 7325 3250 40  0000 L TNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.25u_PCB" H 7325 3175 40  0001 L TNN
F 3 "" H 7150 3450 60  0001 C CNN
F 4 "-" H 7325 3550 40  0001 L BNN "Part"
F 5 "Switch" H 7325 3650 40  0001 L BNN "Family"
	1    7250 3350
	1    0    0    -1  
$EndComp
$Comp
L MOM-SPST SW11
U 1 1 59BFC36C
P 6650 3350
F 0 "SW11" H 6725 3450 60  0000 L BNB
F 1 "MOM-SPST" H 6725 3250 40  0000 L TNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 6725 3175 40  0001 L TNN
F 3 "" H 6550 3450 60  0001 C CNN
F 4 "-" H 6725 3550 40  0001 L BNN "Part"
F 5 "Switch" H 6725 3650 40  0001 L BNN "Family"
	1    6650 3350
	1    0    0    -1  
$EndComp
$Comp
L MOM-SPST SW6
U 1 1 59BFC374
P 6100 3350
F 0 "SW6" H 6175 3450 60  0000 L BNB
F 1 "MOM-SPST" H 6175 3250 40  0000 L TNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 6175 3175 40  0001 L TNN
F 3 "" H 6000 3450 60  0001 C CNN
F 4 "-" H 6175 3550 40  0001 L BNN "Part"
F 5 "Switch" H 6175 3650 40  0001 L BNN "Family"
	1    6100 3350
	1    0    0    -1  
$EndComp
$Comp
L D-RESCUE-interphase D1
U 1 1 59BFE840
P 6300 950
F 0 "D1" H 6300 1050 50  0000 C CNN
F 1 "D" H 6300 850 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 6300 950 50  0001 C CNN
F 3 "" H 6300 950 50  0001 C CNN
	1    6300 950 
	-1   0    0    -1  
$EndComp
$Comp
L D-RESCUE-interphase D6
U 1 1 59BFE952
P 6900 950
F 0 "D6" H 6900 1050 50  0000 C CNN
F 1 "D" H 6900 850 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 6900 950 50  0001 C CNN
F 3 "" H 6900 950 50  0001 C CNN
	1    6900 950 
	-1   0    0    -1  
$EndComp
$Comp
L D-RESCUE-interphase D11
U 1 1 59BFEA33
P 7500 950
F 0 "D11" H 7500 1050 50  0000 C CNN
F 1 "D" H 7500 850 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 7500 950 50  0001 C CNN
F 3 "" H 7500 950 50  0001 C CNN
	1    7500 950 
	-1   0    0    -1  
$EndComp
$Comp
L D-RESCUE-interphase D16
U 1 1 59BFEB01
P 8100 950
F 0 "D16" H 8100 1050 50  0000 C CNN
F 1 "D" H 8100 850 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 8100 950 50  0001 C CNN
F 3 "" H 8100 950 50  0001 C CNN
	1    8100 950 
	-1   0    0    -1  
$EndComp
$Comp
L D-RESCUE-interphase D21
U 1 1 59BFEBBA
P 8700 950
F 0 "D21" H 8700 1050 50  0000 C CNN
F 1 "D" H 8700 850 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 8700 950 50  0001 C CNN
F 3 "" H 8700 950 50  0001 C CNN
	1    8700 950 
	-1   0    0    -1  
$EndComp
$Comp
L D-RESCUE-interphase D26
U 1 1 59BFEC74
P 9300 950
F 0 "D26" H 9300 1050 50  0000 C CNN
F 1 "D" H 9300 850 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 9300 950 50  0001 C CNN
F 3 "" H 9300 950 50  0001 C CNN
	1    9300 950 
	-1   0    0    -1  
$EndComp
$Comp
L D-RESCUE-interphase D31
U 1 1 59BFED2F
P 9900 950
F 0 "D31" H 9900 1050 50  0000 C CNN
F 1 "D" H 9900 850 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 9900 950 50  0001 C CNN
F 3 "" H 9900 950 50  0001 C CNN
	1    9900 950 
	-1   0    0    -1  
$EndComp
$Comp
L D-RESCUE-interphase D2
U 1 1 59C1093A
P 6300 1550
F 0 "D2" H 6300 1650 50  0000 C CNN
F 1 "D" H 6300 1450 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 6300 1550 50  0001 C CNN
F 3 "" H 6300 1550 50  0001 C CNN
	1    6300 1550
	-1   0    0    -1  
$EndComp
$Comp
L D-RESCUE-interphase D7
U 1 1 59C109FC
P 6900 1550
F 0 "D7" H 6900 1650 50  0000 C CNN
F 1 "D" H 6900 1450 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 6900 1550 50  0001 C CNN
F 3 "" H 6900 1550 50  0001 C CNN
	1    6900 1550
	-1   0    0    -1  
$EndComp
$Comp
L D-RESCUE-interphase D3
U 1 1 59C10ACB
P 6300 2150
F 0 "D3" H 6300 2250 50  0000 C CNN
F 1 "D" H 6300 2050 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 6300 2150 50  0001 C CNN
F 3 "" H 6300 2150 50  0001 C CNN
	1    6300 2150
	-1   0    0    -1  
$EndComp
$Comp
L D-RESCUE-interphase D4
U 1 1 59C10BA9
P 6300 2750
F 0 "D4" H 6300 2850 50  0000 C CNN
F 1 "D" H 6300 2650 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 6300 2750 50  0001 C CNN
F 3 "" H 6300 2750 50  0001 C CNN
	1    6300 2750
	-1   0    0    -1  
$EndComp
$Comp
L D-RESCUE-interphase D8
U 1 1 59C10D48
P 6900 2150
F 0 "D8" H 6900 2250 50  0000 C CNN
F 1 "D" H 6900 2050 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 6900 2150 50  0001 C CNN
F 3 "" H 6900 2150 50  0001 C CNN
	1    6900 2150
	-1   0    0    -1  
$EndComp
$Comp
L D-RESCUE-interphase D5
U 1 1 59C10EF1
P 6350 3350
F 0 "D5" H 6350 3450 50  0000 C CNN
F 1 "D" H 6350 3250 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 6350 3350 50  0001 C CNN
F 3 "" H 6350 3350 50  0001 C CNN
	1    6350 3350
	-1   0    0    -1  
$EndComp
$Comp
L D-RESCUE-interphase D12
U 1 1 59C10FCA
P 7500 1550
F 0 "D12" H 7500 1650 50  0000 C CNN
F 1 "D" H 7500 1450 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 7500 1550 50  0001 C CNN
F 3 "" H 7500 1550 50  0001 C CNN
	1    7500 1550
	-1   0    0    -1  
$EndComp
$Comp
L D-RESCUE-interphase D13
U 1 1 59C110A6
P 7500 2150
F 0 "D13" H 7500 2250 50  0000 C CNN
F 1 "D" H 7500 2050 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 7500 2150 50  0001 C CNN
F 3 "" H 7500 2150 50  0001 C CNN
	1    7500 2150
	-1   0    0    -1  
$EndComp
$Comp
L D-RESCUE-interphase D14
U 1 1 59C11185
P 7500 2750
F 0 "D14" H 7500 2850 50  0000 C CNN
F 1 "D" H 7500 2650 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 7500 2750 50  0001 C CNN
F 3 "" H 7500 2750 50  0001 C CNN
	1    7500 2750
	-1   0    0    -1  
$EndComp
$Comp
L D-RESCUE-interphase D10
U 1 1 59C1126F
P 6900 3350
F 0 "D10" H 6900 3450 50  0000 C CNN
F 1 "D" H 6900 3250 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 6900 3350 50  0001 C CNN
F 3 "" H 6900 3350 50  0001 C CNN
	1    6900 3350
	-1   0    0    -1  
$EndComp
$Comp
L D-RESCUE-interphase D15
U 1 1 59C11350
P 7500 3350
F 0 "D15" H 7500 3450 50  0000 C CNN
F 1 "D" H 7500 3250 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 7500 3350 50  0001 C CNN
F 3 "" H 7500 3350 50  0001 C CNN
	1    7500 3350
	-1   0    0    -1  
$EndComp
$Comp
L D-RESCUE-interphase D19
U 1 1 59C11436
P 8100 2750
F 0 "D19" H 8100 2850 50  0000 C CNN
F 1 "D" H 8100 2650 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 8100 2750 50  0001 C CNN
F 3 "" H 8100 2750 50  0001 C CNN
	1    8100 2750
	-1   0    0    -1  
$EndComp
$Comp
L D-RESCUE-interphase D18
U 1 1 59C11521
P 8100 2150
F 0 "D18" H 8100 2250 50  0000 C CNN
F 1 "D" H 8100 2050 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 8100 2150 50  0001 C CNN
F 3 "" H 8100 2150 50  0001 C CNN
	1    8100 2150
	-1   0    0    -1  
$EndComp
$Comp
L D-RESCUE-interphase D17
U 1 1 59C1160F
P 8100 1550
F 0 "D17" H 8100 1650 50  0000 C CNN
F 1 "D" H 8100 1450 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 8100 1550 50  0001 C CNN
F 3 "" H 8100 1550 50  0001 C CNN
	1    8100 1550
	-1   0    0    -1  
$EndComp
$Comp
L D-RESCUE-interphase D22
U 1 1 59C11702
P 8700 1550
F 0 "D22" H 8700 1650 50  0000 C CNN
F 1 "D" H 8700 1450 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 8700 1550 50  0001 C CNN
F 3 "" H 8700 1550 50  0001 C CNN
	1    8700 1550
	-1   0    0    -1  
$EndComp
$Comp
L D-RESCUE-interphase D23
U 1 1 59C11806
P 8700 2150
F 0 "D23" H 8700 2250 50  0000 C CNN
F 1 "D" H 8700 2050 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 8700 2150 50  0001 C CNN
F 3 "" H 8700 2150 50  0001 C CNN
	1    8700 2150
	-1   0    0    -1  
$EndComp
$Comp
L D-RESCUE-interphase D24
U 1 1 59C118F7
P 8700 2750
F 0 "D24" H 8700 2850 50  0000 C CNN
F 1 "D" H 8700 2650 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 8700 2750 50  0001 C CNN
F 3 "" H 8700 2750 50  0001 C CNN
	1    8700 2750
	-1   0    0    -1  
$EndComp
$Comp
L D-RESCUE-interphase D20
U 1 1 59C119ED
P 8100 3350
F 0 "D20" H 8100 3450 50  0000 C CNN
F 1 "D" H 8100 3250 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 8100 3350 50  0001 C CNN
F 3 "" H 8100 3350 50  0001 C CNN
	1    8100 3350
	-1   0    0    -1  
$EndComp
$Comp
L D-RESCUE-interphase D29
U 1 1 59C11DEF
P 9300 2750
F 0 "D29" H 9300 2850 50  0000 C CNN
F 1 "D" H 9300 2650 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 9300 2750 50  0001 C CNN
F 3 "" H 9300 2750 50  0001 C CNN
	1    9300 2750
	-1   0    0    -1  
$EndComp
$Comp
L D-RESCUE-interphase D28
U 1 1 59C11EF4
P 9300 2150
F 0 "D28" H 9300 2250 50  0000 C CNN
F 1 "D" H 9300 2050 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 9300 2150 50  0001 C CNN
F 3 "" H 9300 2150 50  0001 C CNN
	1    9300 2150
	-1   0    0    -1  
$EndComp
$Comp
L D-RESCUE-interphase D27
U 1 1 59C12002
P 9300 1550
F 0 "D27" H 9300 1650 50  0000 C CNN
F 1 "D" H 9300 1450 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 9300 1550 50  0001 C CNN
F 3 "" H 9300 1550 50  0001 C CNN
	1    9300 1550
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 59C23F89
P 3550 1700
F 0 "#PWR02" H 3550 1450 50  0001 C CNN
F 1 "GND" H 3550 1550 50  0000 C CNN
F 2 "" H 3550 1700 50  0001 C CNN
F 3 "" H 3550 1700 50  0001 C CNN
	1    3550 1700
	0    -1   -1   0   
$EndComp
$Comp
L Conn_01x04_Male J1
U 1 1 59C3A25B
P 3350 1700
F 0 "J1" H 3350 1900 50  0000 C CNN
F 1 "Conn_01x04_Male" H 3350 1400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x04_Pitch2.54mm" H 3350 1700 50  0001 C CNN
F 3 "" H 3350 1700 50  0001 C CNN
	1    3350 1700
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR03
U 1 1 59CC64DF
P 3750 1250
F 0 "#PWR03" H 3750 1100 50  0001 C CNN
F 1 "+3.3V" H 3750 1390 50  0000 C CNN
F 2 "" H 3750 1250 50  0001 C CNN
F 3 "" H 3750 1250 50  0001 C CNN
	1    3750 1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 59CC64E5
P 4300 5750
F 0 "#PWR04" H 4300 5500 50  0001 C CNN
F 1 "GND" H 4300 5600 50  0000 C CNN
F 2 "" H 4300 5750 50  0001 C CNN
F 3 "" H 4300 5750 50  0001 C CNN
	1    4300 5750
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR05
U 1 1 59CFE3BD
P 5850 5050
F 0 "#PWR05" H 5850 4900 50  0001 C CNN
F 1 "+3.3V" H 5850 5190 50  0000 C CNN
F 2 "" H 5850 5050 50  0001 C CNN
F 3 "" H 5850 5050 50  0001 C CNN
	1    5850 5050
	1    0    0    -1  
$EndComp
$Comp
L Core51822B U1
U 1 1 59B7D1A9
P 4800 4200
F 0 "U1" H 4800 4300 60  0000 C CNN
F 1 "Core51822B" H 4800 4150 60  0000 C CNN
F 2 "Misc:Core51822(B)" H 4800 4300 60  0001 C CNN
F 3 "" H 4800 4300 60  0001 C CNN
	1    4800 4200
	0    -1   -1   0   
$EndComp
$Comp
L MOM-SPST SW10
U 1 1 5ACC6B6E
P 6700 2750
F 0 "SW10" H 6775 2850 60  0000 L BNB
F 1 "MOM-SPST" H 6775 2650 40  0000 L TNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 6775 2575 40  0001 L TNN
F 3 "" H 6600 2850 60  0001 C CNN
F 4 "-" H 6775 2950 40  0001 L BNN "Part"
F 5 "Switch" H 6775 3050 40  0001 L BNN "Family"
	1    6700 2750
	1    0    0    -1  
$EndComp
$Comp
L D-RESCUE-interphase D9
U 1 1 5ACC7CE0
P 6950 2750
F 0 "D9" H 6950 2850 50  0000 C CNN
F 1 "D" H 6950 2650 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 6950 2750 50  0001 C CNN
F 3 "" H 6950 2750 50  0001 C CNN
	1    6950 2750
	-1   0    0    -1  
$EndComp
$Comp
L MOM-SPST SW21
U 1 1 59BFC35C
P 7850 3350
F 0 "SW21" H 7925 3450 60  0000 L BNB
F 1 "MOM-SPST" H 7925 3250 40  0000 L TNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.50u_PCB" H 7925 3175 40  0001 L TNN
F 3 "" H 7750 3450 60  0001 C CNN
F 4 "-" H 7925 3550 40  0001 L BNN "Part"
F 5 "Switch" H 7925 3650 40  0001 L BNN "Family"
	1    7850 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  5400 700  5300
Wire Wire Line
	1650 4900 1550 4900
Connection ~ 1550 5300
Wire Wire Line
	1950 4900 2250 4900
Wire Wire Line
	2950 5400 2950 5500
Wire Wire Line
	2700 5450 2950 5450
Connection ~ 2950 5450
Wire Wire Line
	2700 5300 2750 5300
Wire Wire Line
	2750 5300 2750 5050
Wire Wire Line
	2750 5050 3350 5050
Wire Wire Line
	3350 4900 3350 5300
Wire Wire Line
	2950 5100 2950 5050
Connection ~ 2950 5050
Wire Wire Line
	2950 5900 2950 5800
Connection ~ 2250 5900
Wire Wire Line
	3350 5900 3350 5600
Connection ~ 2950 5900
Wire Wire Line
	1650 5450 1900 5450
Wire Wire Line
	1650 5450 1650 5300
Connection ~ 1650 5300
Wire Wire Line
	9550 650  9550 950 
Wire Wire Line
	8950 650  8950 950 
Connection ~ 8950 650 
Wire Wire Line
	8350 650  8350 950 
Connection ~ 8350 650 
Wire Wire Line
	7750 650  7750 950 
Connection ~ 7750 650 
Wire Wire Line
	7150 650  7150 950 
Connection ~ 7150 650 
Wire Wire Line
	6550 650  6550 950 
Connection ~ 6550 650 
Wire Wire Line
	5950 950  5950 650 
Connection ~ 5950 650 
Wire Wire Line
	8950 1250 8950 1550
Connection ~ 8950 1250
Wire Wire Line
	8350 1250 8350 1550
Connection ~ 8350 1250
Wire Wire Line
	7750 1250 7750 1550
Connection ~ 7750 1250
Wire Wire Line
	7150 1250 7150 1550
Connection ~ 7150 1250
Wire Wire Line
	6550 1250 6550 1550
Connection ~ 6550 1250
Wire Wire Line
	5950 1550 5950 1250
Connection ~ 5950 1250
Wire Wire Line
	5550 1850 11000 1850
Wire Wire Line
	5500 2450 11200 2450
Wire Wire Line
	5950 2150 5950 1850
Connection ~ 5950 1850
Wire Wire Line
	5950 2750 5950 2450
Connection ~ 5950 2450
Wire Wire Line
	6550 3050 6550 3350
Connection ~ 6550 3050
Connection ~ 6550 2450
Wire Wire Line
	6550 2150 6550 1850
Connection ~ 6550 1850
Wire Wire Line
	7150 2150 7150 1850
Connection ~ 7150 1850
Wire Wire Line
	7150 2750 7150 2450
Connection ~ 7150 2450
Wire Wire Line
	7150 3050 7150 3350
Connection ~ 7150 3050
Wire Wire Line
	7750 3050 7750 3350
Connection ~ 7750 3050
Wire Wire Line
	7750 2750 7750 2450
Connection ~ 7750 2450
Wire Wire Line
	7750 2150 7750 1850
Connection ~ 7750 1850
Wire Wire Line
	8350 3050 8350 3350
Connection ~ 8350 3050
Wire Wire Line
	8350 2750 8350 2450
Connection ~ 8350 2450
Wire Wire Line
	8350 2150 8350 1850
Connection ~ 8350 1850
Wire Wire Line
	8950 2150 8950 1850
Connection ~ 8950 1850
Wire Wire Line
	8950 2750 8950 2450
Connection ~ 8950 2450
Connection ~ 8950 3050
Wire Wire Line
	6450 950  6500 950 
Wire Wire Line
	6450 1550 6500 1550
Connection ~ 6500 1550
Wire Wire Line
	6500 2150 6450 2150
Connection ~ 6500 2150
Wire Wire Line
	6500 2750 6450 2750
Connection ~ 6500 2750
Connection ~ 6500 3350
Wire Wire Line
	7050 950  7100 950 
Wire Wire Line
	7100 950  7100 3800
Wire Wire Line
	7650 950  7700 950 
Wire Wire Line
	7700 950  7700 3900
Wire Wire Line
	8250 950  8300 950 
Wire Wire Line
	8300 950  8300 4000
Wire Wire Line
	8850 950  8900 950 
Wire Wire Line
	8900 950  8900 4100
Wire Wire Line
	9450 950  9500 950 
Wire Wire Line
	9500 950  9500 4200
Wire Wire Line
	10050 950  10100 950 
Connection ~ 1900 5900
Connection ~ 3350 5050
Wire Wire Line
	7050 1550 7100 1550
Connection ~ 7100 1550
Wire Wire Line
	7050 2150 7100 2150
Connection ~ 7100 2150
Wire Wire Line
	7050 3350 7100 3350
Connection ~ 7100 3350
Wire Wire Line
	7650 3350 7700 3350
Connection ~ 7700 3350
Wire Wire Line
	7650 2750 7700 2750
Connection ~ 7700 2750
Wire Wire Line
	7650 2150 7700 2150
Connection ~ 7700 2150
Wire Wire Line
	7650 1550 7700 1550
Connection ~ 7700 1550
Wire Wire Line
	8250 2150 8300 2150
Connection ~ 8300 2150
Wire Wire Line
	8250 2750 8300 2750
Connection ~ 8300 2750
Wire Wire Line
	8250 3350 8300 3350
Connection ~ 8300 3350
Wire Wire Line
	8850 3350 8900 3350
Connection ~ 8900 3350
Wire Wire Line
	8850 2750 8900 2750
Connection ~ 8900 2750
Wire Wire Line
	8850 2150 8900 2150
Connection ~ 8900 2150
Wire Wire Line
	8850 1550 8900 1550
Connection ~ 8900 1550
Wire Wire Line
	9450 1550 9500 1550
Connection ~ 9500 1550
Wire Wire Line
	9450 2150 9500 2150
Connection ~ 9500 2150
Wire Wire Line
	9450 2750 9500 2750
Connection ~ 9500 2750
Connection ~ 9500 3350
Wire Wire Line
	8250 1550 8300 1550
Connection ~ 8300 1550
Connection ~ 700  5900
Wire Wire Line
	5200 6150 5050 6150
Connection ~ 5200 6150
Wire Wire Line
	3750 3200 4700 3200
Wire Wire Line
	4700 3200 4700 3250
Wire Wire Line
	4000 3150 4800 3150
Wire Wire Line
	4800 3150 4800 3250
Wire Wire Line
	3550 1600 3750 1600
Wire Wire Line
	3750 1600 3750 1250
Wire Wire Line
	3550 1800 4000 1800
Wire Wire Line
	4800 800  4800 900 
Wire Wire Line
	5400 5150 5850 5150
Wire Wire Line
	5850 5150 5850 5050
Connection ~ 3750 2250
Wire Wire Line
	4300 5150 4300 5750
Wire Wire Line
	5300 5150 5300 5550
Wire Wire Line
	5300 5550 4300 5550
Wire Wire Line
	6000 4550 5850 4550
Wire Wire Line
	3550 1900 3750 1900
Wire Wire Line
	3750 1900 3750 3200
Connection ~ 4300 5550
Connection ~ 4000 1800
Connection ~ 4050 1700
Wire Wire Line
	5700 3050 11200 3050
Wire Wire Line
	10100 950  10100 4300
Wire Wire Line
	5600 1250 10950 1250
Wire Wire Line
	6550 2450 6550 2750
Wire Wire Line
	6550 2750 6600 2750
Connection ~ 7100 2750
Wire Wire Line
	6500 950  6500 3700
Wire Wire Line
	700  5700 700  5900
Wire Wire Line
	4000 1800 4000 3150
Text Label 5650 650  0    60   ~ 0
row0
Text Label 5600 1250 0    60   ~ 0
row1
Text Label 5550 1850 0    60   ~ 0
row2
Text Label 5500 2450 0    60   ~ 0
row3
Text Label 5700 3050 0    60   ~ 0
row4
Text Label 6500 3700 0    60   ~ 0
col0
Text Label 7100 3800 0    60   ~ 0
col1
Text Label 7700 3900 0    60   ~ 0
col2
Text Label 8300 4000 0    60   ~ 0
col3
Text Label 8900 4100 0    60   ~ 0
col4
Text Label 9500 4200 0    60   ~ 0
col5
Text Label 10100 4300 0    60   ~ 0
col6
Text Label 4300 3250 0    60   ~ 0
row0
Text Label 4400 3250 0    60   ~ 0
row1
Text Label 4500 3250 0    60   ~ 0
row2
Text Label 4600 3250 0    60   ~ 0
row3
Text Label 4900 3250 0    60   ~ 0
row4
Text Label 5850 3950 0    60   ~ 0
col4
Text Label 5850 4350 0    60   ~ 0
col0
Text Label 5850 4250 0    60   ~ 0
col1
Text Label 5850 4150 0    60   ~ 0
col2
Text Label 5850 4050 0    60   ~ 0
col3
Text Label 5850 3850 0    60   ~ 0
col5
Text Label 5850 3750 0    60   ~ 0
col6
Connection ~ 9550 650 
$Comp
L D-RESCUE-interphase D36
U 1 1 5ACD91A7
P 10650 950
F 0 "D36" H 10650 1050 50  0000 C CNN
F 1 "D" H 10650 850 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 10650 950 50  0001 C CNN
F 3 "" H 10650 950 50  0001 C CNN
	1    10650 950 
	-1   0    0    -1  
$EndComp
$Comp
L MOM-SPST SW37
U 1 1 5ACD9433
P 10400 950
F 0 "SW37" H 10475 1050 60  0000 L BNB
F 1 "MOM-SPST" H 10475 850 40  0000 L TNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 10475 775 40  0001 L TNN
F 3 "" H 10300 1050 60  0001 C CNN
F 4 "-" H 10475 1150 40  0001 L BNN "Part"
F 5 "Switch" H 10475 1250 40  0001 L BNN "Family"
	1    10400 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 650  10300 950 
Connection ~ 10300 650 
Wire Wire Line
	5650 650  10400 650 
Wire Wire Line
	10800 950  10850 950 
Wire Wire Line
	10850 950  10850 4400
$Comp
L D-RESCUE-interphase D32
U 1 1 5ACD97FD
P 9950 1550
F 0 "D32" H 9950 1650 50  0000 C CNN
F 1 "D" H 9950 1450 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 9950 1550 50  0001 C CNN
F 3 "" H 9950 1550 50  0001 C CNN
	1    9950 1550
	-1   0    0    -1  
$EndComp
$Comp
L MOM-SPST SW33
U 1 1 5ACD98EB
P 9700 1550
F 0 "SW33" H 9775 1650 60  0000 L BNB
F 1 "MOM-SPST" H 9775 1450 40  0000 L TNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 9775 1375 40  0001 L TNN
F 3 "" H 9600 1650 60  0001 C CNN
F 4 "-" H 9775 1750 40  0001 L BNN "Part"
F 5 "Switch" H 9775 1850 40  0001 L BNN "Family"
	1    9700 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 1550 9600 1250
Connection ~ 9600 1250
$Comp
L D-RESCUE-interphase D37
U 1 1 5ACD9B2D
P 10700 1550
F 0 "D37" H 10700 1650 50  0000 C CNN
F 1 "D" H 10700 1450 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 10700 1550 50  0001 C CNN
F 3 "" H 10700 1550 50  0001 C CNN
	1    10700 1550
	-1   0    0    -1  
$EndComp
$Comp
L MOM-SPST SW38
U 1 1 5ACD9C22
P 10450 1550
F 0 "SW38" H 10525 1650 60  0000 L BNB
F 1 "MOM-SPST" H 10525 1450 40  0000 L TNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.50u_PCB" H 10525 1375 40  0001 L TNN
F 3 "" H 10350 1650 60  0001 C CNN
F 4 "-" H 10525 1750 40  0001 L BNN "Part"
F 5 "Switch" H 10525 1850 40  0001 L BNN "Family"
	1    10450 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 1550 10350 1250
Connection ~ 10350 1250
$Comp
L D-RESCUE-interphase D33
U 1 1 5ACD9E23
P 9950 2150
F 0 "D33" H 9950 2250 50  0000 C CNN
F 1 "D" H 9950 2050 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 9950 2150 50  0001 C CNN
F 3 "" H 9950 2150 50  0001 C CNN
	1    9950 2150
	-1   0    0    -1  
$EndComp
$Comp
L MOM-SPST SW34
U 1 1 5ACD9F19
P 9700 2150
F 0 "SW34" H 9775 2250 60  0000 L BNB
F 1 "MOM-SPST" H 9775 2050 40  0000 L TNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_2.25u_PCB" H 9775 1975 40  0001 L TNN
F 3 "" H 9600 2250 60  0001 C CNN
F 4 "-" H 9775 2350 40  0001 L BNN "Part"
F 5 "Switch" H 9775 2450 40  0001 L BNN "Family"
	1    9700 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 2150 9600 1850
Connection ~ 9600 1850
Connection ~ 10100 1550
Connection ~ 10100 2150
Connection ~ 10850 1550
Connection ~ 10400 4400
Text Label 10850 4400 0    60   ~ 0
col7
Text Label 5850 3650 0    60   ~ 0
col7
Wire Wire Line
	6000 3350 6000 3050
Connection ~ 6000 3050
$Comp
L SW_SPDT SW1
U 1 1 5ADEA364
P 800 5100
F 0 "SW1" H 800 5270 50  0000 C CNN
F 1 "SW_SPDT" H 800 4900 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_E-Switch_EG1224_SPDT" H 800 5100 50  0001 C CNN
F 3 "" H 800 5100 50  0001 C CNN
	1    800  5100
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR06
U 1 1 59C15857
P 800 4900
F 0 "#PWR06" H 800 4750 50  0001 C CNN
F 1 "+3.3V" H 800 5040 50  0000 C CNN
F 2 "" H 800 4900 50  0001 C CNN
F 3 "" H 800 4900 50  0001 C CNN
	1    800  4900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5ADEC7F1
P 700 5900
F 0 "#PWR?" H 700 5650 50  0001 C CNN
F 1 "GND" H 700 5750 50  0000 C CNN
F 2 "" H 700 5900 50  0001 C CNN
F 3 "" H 700 5900 50  0001 C CNN
	1    700  5900
	1    0    0    -1  
$EndComp
$EndSCHEMATC
