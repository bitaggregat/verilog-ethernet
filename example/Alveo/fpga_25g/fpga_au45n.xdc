# XDC constraints for the Xilinx Alveo U50 board
# part: xcu26-vsva1365-2LV-e

# General configuration
set_property CFGBVS GND                                [current_design]
set_property CONFIG_VOLTAGE 1.8                        [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE           [current_design]
set_property CONFIG_MODE SPIx4                         [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4           [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 72.9          [current_design]
set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN DISABLE [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES        [current_design]
set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR YES       [current_design]

set_operating_conditions -design_power_budget 160

# System clocks
# 100 MHz
#set_property -dict {LOC G17 IOSTANDARD LVDS} [get_ports clk_100mhz_0_p]
#set_property -dict {LOC G16 IOSTANDARD LVDS} [get_ports clk_100mhz_0_n]
#create_clock -period 10 -name clk_100mhz_0 [get_ports clk_100mhz_0_p]

# 100 MHz
#set_property -dict {LOC BB18 IOSTANDARD LVDS} [get_ports clk_100mhz_1_p]
#set_property -dict {LOC BC18 IOSTANDARD LVDS} [get_ports clk_100mhz_1_n]
#create_clock -period 10 -name clk_100mhz_1 [get_ports clk_100mhz_1_p]

# LEDs
#set_property -dict {LOC E18 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports qsfp_led_act]
#set_property -dict {LOC E16 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports qsfp_led_stat_g]
#set_property -dict {LOC F17 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports qsfp_led_stat_y]

#set_false_path -to [get_ports {qsfp_led_act qsfp_led_stat_g qsfp_led_stat_y}]
#set_output_delay 0 [get_ports {qsfp_led_act qsfp_led_stat_g qsfp_led_stat_y}]

# UART
#set_property -dict {LOC BE26 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports usb_uart0_txd]
#set_property -dict {LOC BF26 IOSTANDARD LVCMOS18} [get_ports usb_uart0_rxd]
#set_property -dict {LOC A17  IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports usb_uart1_txd]
#set_property -dict {LOC B15  IOSTANDARD LVCMOS18} [get_ports usb_uart1_rxd]
#set_property -dict {LOC A19  IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports usb_uart2_txd]
#set_property -dict {LOC A18  IOSTANDARD LVCMOS18} [get_ports usb_uart2_rxd]

#set_false_path -to [get_ports {usb_uart0_txd usb_uart1_txd usb_uart2_txd}]
#set_output_delay 0 [get_ports {usb_uart0_txd usb_uart1_txd usb_uart2_txd}]
#set_false_path -from [get_ports {usb_uart0_rxd usb_uart1_rxd usb_uart2_rxd}]
#set_input_delay 0 [get_ports {usb_uart0_rxd usb_uart1_rxd usb_uart2_rxd}]

# BMC
#set_property -dict {LOC C16  IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 4} [get_ports {msp_gpio[0]}]
#set_property -dict {LOC C17  IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 4} [get_ports {msp_gpio[1]}]
#set_property -dict {LOC BB25 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 4} [get_ports {msp_uart_txd}]
#set_property -dict {LOC BB26 IOSTANDARD LVCMOS18} [get_ports {msp_uart_rxd}]

#set_false_path -to [get_ports {msp_uart_txd}]
#set_output_delay 0 [get_ports {msp_uart_txd}]
#set_false_path -from [get_ports {msp_gpio[*] msp_uart_rxd}]
#set_input_delay 0 [get_ports {msp_gpio[*] msp_uart_rxd}]

# SI5394 (SI5394B-A10605-GM)
# I2C address 0x68
# IN0: 161.1328125 MHz from qsfp_recclk
# OUT0: 161.1328125 MHz to qsfp_mgt_refclk_0
# OUT2: 322.265625 MHz to qsfp_mgt_refclk_1
# OUT3: 100 MHz to clk_100mhz_0, clk_100mhz_1, pcie_refclk_2, pcie_refclk_3
#set_property -dict {LOC F20 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports si5394_rst_b]
#set_property -dict {LOC H18 IOSTANDARD LVCMOS18 PULLUP true} [get_ports si5394_int_b]
#set_property -dict {LOC G19 IOSTANDARD LVCMOS18 PULLUP true} [get_ports si5394_lol_b]
#set_property -dict {LOC H19 IOSTANDARD LVCMOS18 PULLUP true} [get_ports si5394_los_b]
#set_property -dict {LOC J16 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8 PULLUP true} [get_ports si5394_i2c_sda]
#set_property -dict {LOC L19 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8 PULLUP true} [get_ports si5394_i2c_scl]

#set_false_path -to [get_ports {si5394_rst_b}]
#set_output_delay 0 [get_ports {si5394_rst_b}]
#set_false_path -from [get_ports {si5394_int_b si5394_lol_b si5394_los_b}]
#set_input_delay 0 [get_ports {si5394_int_b si5394_lol_b si5394_los_b}]

#set_false_path -to [get_ports {si5394_i2c_sda si5394_i2c_scl}]
#set_output_delay 0 [get_ports {si5394_i2c_sda si5394_i2c_scl}]
#set_false_path -from [get_ports {si5394_i2c_sda si5394_i2c_scl}]
#set_input_delay 0 [get_ports {si5394_i2c_sda si5394_i2c_scl}]


# QSFP56 Interface (GTM) @QSFP #0 Connector
#set_property -dict {LOC A13 } [get_ports qsfp0_rx_p[0]] ;# MGTYRXP0_234 GTM_DUAL_X0Y1 / GTM_REFCLK_X0Y1
#set_property -dict {LOC A12 } [get_ports qsfp0_rx_n[0]] ;# MGTYRXN0_234 GTM_DUAL_X0Y1 / GTM_REFCLK_X0Y1
#set_property -dict {LOC C15 } [get_ports qsfp0_tx_p[0]] ;# MGTYTXP0_234 GTM_DUAL_X0Y1 / GTM_REFCLK_X0Y1
#set_property -dict {LOC C14 } [get_ports qsfp0_tx_n[0]] ;# MGTYTXN0_234 GTM_DUAL_X0Y1 / GTM_REFCLK_X0Y1
#set_property -dict {LOC A16 } [get_ports qsfp0_rx_p[1]] ;# MGTYRXP1_234 GTM_DUAL_X0Y1 / GTM_REFCLK_X0Y1
#set_property -dict {LOC A15 } [get_ports qsfp0_rx_n[1]] ;# MGTYRXN1_234 GTM_DUAL_X0Y1 / GTM_REFCLK_X0Y1
#set_property -dict {LOC C17 } [get_ports qsfp0_tx_p[1]] ;# MGTYTXP1_234 GTM_DUAL_X0Y1 / GTM_REFCLK_X0Y1
#set_property -dict {LOC C18 } [get_ports qsfp0_tx_n[1]] ;# MGTYTXN1_234 GTM_DUAL_X0Y1 / GTM_REFCLK_X0Y1
#set_property -dict {LOC A7 } [get_ports qsfp0_rx_p[2]] ;# MGTYRXP2_233 GTM_DUAL_X0Y0 / GTM_REFCLK_X0Y0
#set_property -dict {LOC A6 } [get_ports qsfp0_rx_n[2]] ;# MGTYRXN2_233 GTM_DUAL_X0Y0 / GTM_REFCLK_X0Y0
#set_property -dict {LOC C9 } [get_ports qsfp0_tx_p[2]] ;# MGTYTXP2_233 GTM_DUAL_X0Y0 / GTM_REFCLK_X0Y0
#set_property -dict {LOC C8 } [get_ports qsfp0_tx_n[2]] ;# MGTYTXN2_233 GTM_DUAL_X0Y0 / GTM_REFCLK_X0Y0
#set_property -dict {LOC A10 } [get_ports qsfp0_rx_p[3]] ;# MGTYRXP3_233 GTM_DUAL_X0Y0 / GTM_REFCLK_X0Y0
#set_property -dict {LOC A9  } [get_ports qsfp0_rx_n[3]] ;# MGTYRXN3_233 GTM_DUAL_X0Y0 / GTM_REFCLK_X0Y0
#set_property -dict {LOC C12 } [get_ports qsfp0_tx_p[3]] ;# MGTYTXP3_233 GTM_DUAL_X0Y0 / GTM_REFCLK_X0Y0
#set_property -dict {LOC C11 } [get_ports qsfp0_tx_n[3]] ;# MGTYTXN3_233 GTM_DUAL_X0Y0 / GTM_REFCLK_X0Y0
#set_property -dict {LOC J10 } [get_ports qsfp0_mgt_refclk_1_p] ;# MGTREFCLKP_233 from SI53306 OUT1
#set_property -dict {LOC J9 } [get_ports qsfp0_mgt_refclk_1_n]  ;# MGTREFCLKN_233 from SI53306 OUT1
#set_property -dict {LOC G10 } [get_ports qsfp0_mgt_refclk_0_p] ;# MGTREFCLKP_234 from SI53306 OUT2
#set_property -dict {LOC G9 } [get_ports qsfp0_mgt_refclk_0_n]  ;# MGTREFCLKN_234 from SI53306 OUT2

# 161.1328125 MHz MGT reference clock (SI53306 OUT1 & OUT2)
#create_clock -period 6.206 -name qsfp0_mgt_refclk_0 [get_ports qsfp0_mgt_refclk_0_p]
#create_clock -period 6.206 -name qsfp0_mgt_refclk_1 [get_ports qsfp0_mgt_refclk_1_p]

# QSFP28 Interface (GTY) @ QSFP #1 Connector
set_property -dict {LOC E2 } [get_ports qsfp1_rx_p[0]] ;# MGTYRXP0_231 GTYE4_CHANNEL_X0Y28 / GTYE4_COMMON_X0Y7
set_property -dict {LOC E1 } [get_ports qsfp1_rx_n[0]] ;# MGTYRXN0_231 GTYE4_CHANNEL_X0Y28 / GTYE4_COMMON_X0Y7
set_property -dict {LOC F5 } [get_ports qsfp1_tx_p[0]] ;# MGTYTXP0_231 GTYE4_CHANNEL_X0Y28 / GTYE4_COMMON_X0Y7
set_property -dict {LOC F4 } [get_ports qsfp1_tx_n[0]] ;# MGTYTXN0_231 GTYE4_CHANNEL_X0Y28 / GTYE4_COMMON_X0Y7
set_property -dict {LOC G2 } [get_ports qsfp1_rx_p[1]] ;# MGTYRXP1_231 GTYE4_CHANNEL_X0Y29 / GTYE4_COMMON_X0Y7
set_property -dict {LOC G1 } [get_ports qsfp1_rx_n[1]] ;# MGTYRXN1_231 GTYE4_CHANNEL_X0Y29 / GTYE4_COMMON_X0Y7
set_property -dict {LOC G7 } [get_ports qsfp1_tx_p[1]] ;# MGTYTXP1_231 GTYE4_CHANNEL_X0Y29 / GTYE4_COMMON_X0Y7
set_property -dict {LOC G6 } [get_ports qsfp1_tx_n[1]] ;# MGTYTXN1_231 GTYE4_CHANNEL_X0Y29 / GTYE4_COMMON_X0Y7
set_property -dict {LOC J2 } [get_ports qsfp1_rx_p[2]] ;# MGTYRXP2_231 GTYE4_CHANNEL_X0Y30 / GTYE4_COMMON_X0Y7
set_property -dict {LOC J1 } [get_ports qsfp1_rx_n[2]] ;# MGTYRXN2_231 GTYE4_CHANNEL_X0Y30 / GTYE4_COMMON_X0Y7
set_property -dict {LOC H5 } [get_ports qsfp1_tx_p[2]] ;# MGTYTXP2_231 GTYE4_CHANNEL_X0Y30 / GTYE4_COMMON_X0Y7
set_property -dict {LOC H4 } [get_ports qsfp1_tx_n[2]] ;# MGTYTXN2_231 GTYE4_CHANNEL_X0Y30 / GTYE4_COMMON_X0Y7
set_property -dict {LOC K4 } [get_ports qsfp1_rx_p[3]] ;# MGTYRXP3_231 GTYE4_CHANNEL_X0Y31 / GTYE4_COMMON_X0Y7
set_property -dict {LOC K3 } [get_ports qsfp1_rx_n[3]] ;# MGTYRXN3_231 GTYE4_CHANNEL_X0Y31 / GTYE4_COMMON_X0Y7
set_property -dict {LOC J7 } [get_ports qsfp1_tx_p[3]] ;# MGTYTXP3_231 GTYE4_CHANNEL_X0Y31 / GTYE4_COMMON_X0Y7
set_property -dict {LOC J6 } [get_ports qsfp1_tx_n[3]] ;# MGTYTXN3_231 GTYE4_CHANNEL_X0Y31 / GTYE4_COMMON_X0Y7
set_property -dict {LOC P9 } [get_ports qsfp1_mgt_refclk_0_p] ;# MGTREFCLK0P_231 from SI53306 OUT0
set_property -dict {LOC P8 } [get_ports qsfp1_mgt_refclk_0_n] ;# MGTREFCLK0N_231 from SI53306 OUT0

# 161.1328125 MHz MGT reference clock (SI53306 OUT0)
create_clock -period 6.206 -name qsfp1_mgt_refclk_0 [get_ports qsfp1_mgt_refclk_0_p]

# VERIFIED
# PCIe Interface
#set_property -dict {LOC AF4 } [get_ports {pcie_rx_p[0]}]  ;# MGTYRXP3_227 GTYE4_CHANNEL_X0Y15 / GTYE4_COMMON_X0Y3
#set_property -dict {LOC AF3 } [get_ports {pcie_rx_n[0]}]  ;# MGTYRXN3_227 GTYE4_CHANNEL_X0Y15 / GTYE4_COMMON_X0Y3
#set_property -dict {LOC AD8 } [get_ports {pcie_tx_p[0]}]  ;# MGTYTXP3_227 GTYE4_CHANNEL_X0Y15 / GTYE4_COMMON_X0Y3
#set_property -dict {LOC AD7 } [get_ports {pcie_tx_n[0]}]  ;# MGTYTXN3_227 GTYE4_CHANNEL_X0Y15 / GTYE4_COMMON_X0Y3
#set_property -dict {LOC AG2 } [get_ports {pcie_rx_p[1]}]  ;# MGTYRXP2_227 GTYE4_CHANNEL_X0Y14 / GTYE4_COMMON_X0Y3
#set_property -dict {LOC AG1 } [get_ports {pcie_rx_n[1]}]  ;# MGTYRXN2_227 GTYE4_CHANNEL_X0Y14 / GTYE4_COMMON_X0Y3
#set_property -dict {LOC AE6 } [get_ports {pcie_tx_p[1]}]  ;# MGTYTXP2_227 GTYE4_CHANNEL_X0Y14 / GTYE4_COMMON_X0Y3
#set_property -dict {LOC AE5 } [get_ports {pcie_tx_n[1]}]  ;# MGTYTXN2_227 GTYE4_CHANNEL_X0Y14 / GTYE4_COMMON_X0Y3
#set_property -dict {LOC AJ2 } [get_ports {pcie_rx_p[2]}]  ;# MGTYRXP1_227 GTYE4_CHANNEL_X0Y13 / GTYE4_COMMON_X0Y3
#set_property -dict {LOC AJ1 } [get_ports {pcie_rx_n[2]}]  ;# MGTYRXN1_227 GTYE4_CHANNEL_X0Y13 / GTYE4_COMMON_X0Y3
#set_property -dict {LOC AG6 } [get_ports {pcie_tx_p[2]}]  ;# MGTYTXP1_227 GTYE4_CHANNEL_X0Y13 / GTYE4_COMMON_X0Y3
#set_property -dict {LOC AG5 } [get_ports {pcie_tx_n[2]}]  ;# MGTYTXN1_227 GTYE4_CHANNEL_X0Y13 / GTYE4_COMMON_X0Y3
#set_property -dict {LOC AK4 } [get_ports {pcie_rx_p[3]}]  ;# MGTYRXP0_227 GTYE4_CHANNEL_X0Y12 / GTYE4_COMMON_X0Y3
#set_property -dict {LOC AK3 } [get_ports {pcie_rx_n[3]}]  ;# MGTYRXN0_227 GTYE4_CHANNEL_X0Y12 / GTYE4_COMMON_X0Y3
#set_property -dict {LOC AH4 } [get_ports {pcie_tx_p[3]}]  ;# MGTYTXP0_227 GTYE4_CHANNEL_X0Y12 / GTYE4_COMMON_X0Y3
#set_property -dict {LOC AH3 } [get_ports {pcie_tx_n[3]}]  ;# MGTYTXN0_227 GTYE4_CHANNEL_X0Y12 / GTYE4_COMMON_X0Y3
#set_property -dict {LOC AL2 } [get_ports {pcie_rx_p[4]}]  ;# MGTYRXP3_226 GTYE4_CHANNEL_X0Y11 / GTYE4_COMMON_X0Y2
#set_property -dict {LOC AL1 } [get_ports {pcie_rx_n[4]}]  ;# MGTYRXN3_226 GTYE4_CHANNEL_X0Y11 / GTYE4_COMMON_X0Y2
#set_property -dict {LOC AJ6 } [get_ports {pcie_tx_p[4]}]  ;# MGTYTXP3_226 GTYE4_CHANNEL_X0Y11 / GTYE4_COMMON_X0Y2
#set_property -dict {LOC AJ5 } [get_ports {pcie_tx_n[4]}]  ;# MGTYTXN3_226 GTYE4_CHANNEL_X0Y11 / GTYE4_COMMON_X0Y2
#set_property -dict {LOC AM4 } [get_ports {pcie_rx_p[5]}]  ;# MGTYRXP2_226 GTYE4_CHANNEL_X0Y10 / GTYE4_COMMON_X0Y2
#set_property -dict {LOC AM3 } [get_ports {pcie_rx_n[5]}]  ;# MGTYRXN2_226 GTYE4_CHANNEL_X0Y10 / GTYE4_COMMON_X0Y2
#set_property -dict {LOC AL6 } [get_ports {pcie_tx_p[5]}]  ;# MGTYTXP2_226 GTYE4_CHANNEL_X0Y10 / GTYE4_COMMON_X0Y2
#set_property -dict {LOC AL5 } [get_ports {pcie_tx_n[5]}]  ;# MGTYTXN2_226 GTYE4_CHANNEL_X0Y10 / GTYE4_COMMON_X0Y2
#set_property -dict {LOC AN2 } [get_ports {pcie_rx_p[6]}]  ;# MGTYRXP1_226 GTYE4_CHANNEL_X0Y9 / GTYE4_COMMON_X0Y2
#set_property -dict {LOC AN1 } [get_ports {pcie_rx_n[6]}]  ;# MGTYRXN1_226 GTYE4_CHANNEL_X0Y9 / GTYE4_COMMON_X0Y2
#set_property -dict {LOC AN6 } [get_ports {pcie_tx_p[6]}]  ;# MGTYTXP1_226 GTYE4_CHANNEL_X0Y9 / GTYE4_COMMON_X0Y2
#set_property -dict {LOC AN5 } [get_ports {pcie_tx_n[6]}]  ;# MGTYTXN1_226 GTYE4_CHANNEL_X0Y9 / GTYE4_COMMON_X0Y2
#set_property -dict {LOC AR2 } [get_ports {pcie_rx_p[7]}]  ;# MGTYRXP0_226 GTYE4_CHANNEL_X0Y8 / GTYE4_COMMON_X0Y2
#set_property -dict {LOC AR1 } [get_ports {pcie_rx_n[7]}]  ;# MGTYRXN0_226 GTYE4_CHANNEL_X0Y8 / GTYE4_COMMON_X0Y2
#set_property -dict {LOC AP4 } [get_ports {pcie_tx_p[7]}]  ;# MGTYTXP0_226 GTYE4_CHANNEL_X0Y8 / GTYE4_COMMON_X0Y2
#set_property -dict {LOC AP3 } [get_ports {pcie_tx_n[7]}]  ;# MGTYTXN0_226 GTYE4_CHANNEL_X0Y8 / GTYE4_COMMON_X0Y2
#set_property -dict {LOC AT4 } [get_ports {pcie_rx_p[8]}]  ;# MGTYRXP3_225 GTYE4_CHANNEL_X0Y7 / GTYE4_COMMON_X0Y1
#set_property -dict {LOC AT3 } [get_ports {pcie_rx_n[8]}]  ;# MGTYRXN3_225 GTYE4_CHANNEL_X0Y7 / GTYE4_COMMON_X0Y1
#set_property -dict {LOC AP8 } [get_ports {pcie_tx_p[8]}]  ;# MGTYTXP3_225 GTYE4_CHANNEL_X0Y7 / GTYE4_COMMON_X0Y1
#set_property -dict {LOC AP7 } [get_ports {pcie_tx_n[8]}]  ;# MGTYTXN3_225 GTYE4_CHANNEL_X0Y7 / GTYE4_COMMON_X0Y1
#set_property -dict {LOC AU6 } [get_ports {pcie_rx_p[9]}]  ;# MGTYRXP2_225 GTYE4_CHANNEL_X0Y6 / GTYE4_COMMON_X0Y1
#set_property -dict {LOC AU5 } [get_ports {pcie_rx_n[9]}]  ;# MGTYRXN2_225 GTYE4_CHANNEL_X0Y6 / GTYE4_COMMON_X0Y1
#set_property -dict {LOC AR6 } [get_ports {pcie_tx_p[9]}]  ;# MGTYTXP2_225 GTYE4_CHANNEL_X0Y6 / GTYE4_COMMON_X0Y1
#set_property -dict {LOC AR5 } [get_ports {pcie_tx_n[9]}]  ;# MGTYTXN2_225 GTYE4_CHANNEL_X0Y6 / GTYE4_COMMON_X0Y1
#set_property -dict {LOC AT8 } [get_ports {pcie_rx_p[10]}] ;# MGTYRXP1_225 GTYE4_CHANNEL_X0Y5 / GTYE4_COMMON_X0Y1
#set_property -dict {LOC AT7 } [get_ports {pcie_rx_n[10]}] ;# MGTYRXN1_225 GTYE4_CHANNEL_X0Y5 / GTYE4_COMMON_X0Y1
#set_property -dict {LOC AR10 } [get_ports {pcie_tx_p[10]}] ;# MGTYTXP1_225 GTYE4_CHANNEL_X0Y5 / GTYE4_COMMON_X0Y1
#set_property -dict {LOC AR9} [get_ports {pcie_tx_n[10]}] ;# MGTYTXN1_225 GTYE4_CHANNEL_X0Y5 / GTYE4_COMMON_X0Y1
#set_property -dict {LOC AU10 } [get_ports {pcie_rx_p[11]}] ;# MGTYRXP0_225 GTYE4_CHANNEL_X0Y4 / GTYE4_COMMON_X0Y1
#set_property -dict {LOC AU9 } [get_ports {pcie_rx_n[11]}] ;# MGTYRXN0_225 GTYE4_CHANNEL_X0Y4 / GTYE4_COMMON_X0Y1
#set_property -dict {LOC AT12 } [get_ports {pcie_tx_p[11]}] ;# MGTYTXP0_225 GTYE4_CHANNEL_X0Y4 / GTYE4_COMMON_X0Y1
#set_property -dict {LOC AT11 } [get_ports {pcie_tx_n[11]}] ;# MGTYTXN0_225 GTYE4_CHANNEL_X0Y4 / GTYE4_COMMON_X0Y1
#set_property -dict {LOC AU14 } [get_ports {pcie_rx_p[12]}] ;# MGTYRXP3_224 GTYE4_CHANNEL_X0Y3 / GTYE4_COMMON_X0Y0
#set_property -dict {LOC AU13 } [get_ports {pcie_rx_n[12]}] ;# MGTYRXN3_224 GTYE4_CHANNEL_X0Y3 / GTYE4_COMMON_X0Y0
#set_property -dict {LOC AR14 } [get_ports {pcie_tx_p[12]}] ;# MGTYTXP3_224 GTYE4_CHANNEL_X0Y3 / GTYE4_COMMON_X0Y0
#set_property -dict {LOC AR13 } [get_ports {pcie_tx_n[12]}] ;# MGTYTXN3_224 GTYE4_CHANNEL_X0Y3 / GTYE4_COMMON_X0Y0
#set_property -dict {LOC AT16 } [get_ports {pcie_rx_p[13]}] ;# MGTYRXP2_224 GTYE4_CHANNEL_X0Y2 / GTYE4_COMMON_X0Y0
#set_property -dict {LOC AT15 } [get_ports {pcie_rx_n[13]}] ;# MGTYRXN2_224 GTYE4_CHANNEL_X0Y2 / GTYE4_COMMON_X0Y0
#set_property -dict {LOC AR18 } [get_ports {pcie_tx_p[13]}] ;# MGTYTXP2_224 GTYE4_CHANNEL_X0Y2 / GTYE4_COMMON_X0Y0
#set_property -dict {LOC AR17 } [get_ports {pcie_tx_n[13]}] ;# MGTYTXN2_224 GTYE4_CHANNEL_X0Y2 / GTYE4_COMMON_X0Y0
#set_property -dict {LOC AU18 } [get_ports {pcie_rx_p[14]}] ;# MGTYRXP1_224 GTYE4_CHANNEL_X0Y1 / GTYE4_COMMON_X0Y0
#set_property -dict {LOC AU17 } [get_ports {pcie_rx_n[14]}] ;# MGTYRXN1_224 GTYE4_CHANNEL_X0Y1 / GTYE4_COMMON_X0Y0
#set_property -dict {LOC AT20 } [get_ports {pcie_tx_p[14]}] ;# MGTYTXP1_224 GTYE4_CHANNEL_X0Y1 / GTYE4_COMMON_X0Y0
#set_property -dict {LOC AT19 } [get_ports {pcie_tx_n[14]}] ;# MGTYTXN1_224 GTYE4_CHANNEL_X0Y1 / GTYE4_COMMON_X0Y0
#set_property -dict {LOC AU22 } [get_ports {pcie_rx_p[15]}] ;# MGTYRXP0_224 GTYE4_CHANNEL_X0Y0 / GTYE4_COMMON_X0Y0
#set_property -dict {LOC AU21 } [get_ports {pcie_rx_n[15]}] ;# MGTYRXN0_224 GTYE4_CHANNEL_X0Y0 / GTYE4_COMMON_X0Y0
#set_property -dict {LOC AR22 } [get_ports {pcie_tx_p[15]}] ;# MGTYTXP0_224 GTYE4_CHANNEL_X0Y0 / GTYE4_COMMON_X0Y0
#set_property -dict {LOC AR21 } [get_ports {pcie_tx_n[15]}] ;# MGTYTXN0_224 GTYE4_CHANNEL_X0Y0 / GTYE4_COMMON_X0Y0
#set_property -dict {LOC AL10 } [get_ports pcie_refclk_0_p] ;# MGTREFCLK0P_225 (for x8 bifurcated lanes 0-7)
#set_property -dict {LOC AL9  } [get_ports pcie_refclk_0_n] ;# MGTREFCLK0N_225 (for x8 bifurcated lanes 0-7)
#set_property -dict {LOC AF8 } [get_ports pcie_refclk_1_p] ;# MGTREFCLK0P_227 (for x16 or x8 bifurcated lanes 8-16)
#set_property -dict {LOC AF7 } [get_ports pcie_refclk_1_n] ;# MGTREFCLK0N_227 (for x16 or x8 bifurcated lanes 8-16)
#set_property -dict {LOC AK8 } [get_ports pcie_refclk_2_p] ;# MGTREFCLK1P_225 (for async x8 bifurcated lanes 0-7)
#set_property -dict {LOC AK7 } [get_ports pcie_refclk_2_n] ;# MGTREFCLK1N_225 (for async x8 bifurcated lanes 0-7)
#set_property -dict {LOC AE10 } [get_ports pcie_refclk_3_p] ;# MGTREFCLK1P_227 (for async x16 or x8 bifurcated lanes 8-16)
#set_property -dict {LOC AE9 } [get_ports pcie_refclk_3_n] ;# MGTREFCLK1N_227 (for async x16 or x8 bifurcated lanes 8-16)
#set_property -dict {LOC AK18 IOSTANDARD LVCMOS18 PULLUP true} [get_ports pcie_reset_n]

# 100 MHz MGT reference clock
#create_clock -period 10 -name pcie_mgt_refclk_0 [get_ports pcie_refclk_0_p]
#create_clock -period 10 -name pcie_mgt_refclk_1 [get_ports pcie_refclk_1_p]
#create_clock -period 10 -name pcie_mgt_refclk_2 [get_ports pcie_refclk_2_p]
#create_clock -period 10 -name pcie_mgt_refclk_3 [get_ports pcie_refclk_3_p]

#set_false_path -from [get_ports {pcie_reset_n}]
#set_input_delay 0 [get_ports {pcie_reset_n}]

set_property IOSTANDARD LVCMOS18 [get_ports {qsfp_led_act[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {qsfp_led_stat_g[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {qsfp_led_stat_y[0]}]
set_property PACKAGE_PIN AM23 [get_ports {qsfp_led_act[0]}]
set_property PACKAGE_PIN AM22 [get_ports {qsfp_led_stat_g[0]}]
set_property PACKAGE_PIN AN23 [get_ports {qsfp_led_stat_y[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {qsfp_led_act[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {qsfp_led_stat_g[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {qsfp_led_stat_y[1]}]
set_property PACKAGE_PIN AJ25 [get_ports {qsfp_led_act[1]}]
set_property PACKAGE_PIN AH25 [get_ports {qsfp_led_stat_g[1]}]
set_property PACKAGE_PIN AN24 [get_ports {qsfp_led_stat_y[1]}]


set_property IOSTANDARD LVCMOS18 [get_ports {uart_rxd[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {uart_rxd[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {uart_rxd[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {uart_txd[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {uart_txd[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {uart_txd[0]}]
set_property PACKAGE_PIN AK21 [get_ports {uart_rxd[0]}]
set_property PACKAGE_PIN AJ21 [get_ports {uart_txd[0]}]
set_property PACKAGE_PIN AK17 [get_ports {uart_rxd[1]}]
set_property PACKAGE_PIN AK16 [get_ports {uart_txd[1]}]
set_property PACKAGE_PIN AR24 [get_ports {uart_rxd[2]}]
set_property PACKAGE_PIN AP24 [get_ports {uart_txd[2]}]
