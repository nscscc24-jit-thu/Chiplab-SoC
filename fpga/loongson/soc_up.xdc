#set_property SEVERITY {Warning} [get_drc_checks RTSTAT-2]
#时钟信号连接
#create_clock -period 10.000 [get_ports clk]
set_property PACKAGE_PIN AC19 [get_ports clk]
set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets clk]
create_clock -period 10.000 -name clk -waveform {0.000 5.000} [get_ports clk]

#reset
set_property PACKAGE_PIN Y3 [get_ports resetn]

#LED
set_property PACKAGE_PIN K23 [get_ports {led[0]}]
set_property PACKAGE_PIN J21 [get_ports {led[1]}]
set_property PACKAGE_PIN H23 [get_ports {led[2]}]
set_property PACKAGE_PIN J19 [get_ports {led[3]}]
set_property PACKAGE_PIN G9 [get_ports {led[4]}]
set_property PACKAGE_PIN J26 [get_ports {led[5]}]
set_property PACKAGE_PIN J23 [get_ports {led[6]}]
set_property PACKAGE_PIN J8 [get_ports {led[7]}]
set_property PACKAGE_PIN H8 [get_ports {led[8]}]
set_property PACKAGE_PIN G8 [get_ports {led[9]}]
set_property PACKAGE_PIN F7 [get_ports {led[10]}]
set_property PACKAGE_PIN A4 [get_ports {led[11]}]
set_property PACKAGE_PIN A5 [get_ports {led[12]}]
set_property PACKAGE_PIN A3 [get_ports {led[13]}]
set_property PACKAGE_PIN D5 [get_ports {led[14]}]
set_property PACKAGE_PIN H7 [get_ports {led[15]}]

#led_rg 0/1
set_property PACKAGE_PIN G7 [get_ports {led_rg0[0]}]
set_property PACKAGE_PIN F8 [get_ports {led_rg0[1]}]
set_property PACKAGE_PIN B5 [get_ports {led_rg1[0]}]
set_property PACKAGE_PIN D6 [get_ports {led_rg1[1]}]

#NUM
set_property PACKAGE_PIN D3 [get_ports {num_csn[7]}]
set_property PACKAGE_PIN D25 [get_ports {num_csn[6]}]
set_property PACKAGE_PIN D26 [get_ports {num_csn[5]}]
set_property PACKAGE_PIN E25 [get_ports {num_csn[4]}]
set_property PACKAGE_PIN E26 [get_ports {num_csn[3]}]
set_property PACKAGE_PIN G25 [get_ports {num_csn[2]}]
set_property PACKAGE_PIN G26 [get_ports {num_csn[1]}]
set_property PACKAGE_PIN H26 [get_ports {num_csn[0]}]

set_property PACKAGE_PIN C3 [get_ports {num_a_g[0]}]
set_property PACKAGE_PIN E6 [get_ports {num_a_g[1]}]
set_property PACKAGE_PIN B2 [get_ports {num_a_g[2]}]
set_property PACKAGE_PIN B4 [get_ports {num_a_g[3]}]
set_property PACKAGE_PIN E5 [get_ports {num_a_g[4]}]
set_property PACKAGE_PIN D4 [get_ports {num_a_g[5]}]
set_property PACKAGE_PIN A2 [get_ports {num_a_g[6]}]
#set_property PACKAGE_PIN C4 :DP

#switch
set_property PACKAGE_PIN AC21 [get_ports {switch[7]}]
set_property PACKAGE_PIN AD24 [get_ports {switch[6]}]
set_property PACKAGE_PIN AC22 [get_ports {switch[5]}]
set_property PACKAGE_PIN AC23 [get_ports {switch[4]}]
set_property PACKAGE_PIN AB6 [get_ports {switch[3]}]
set_property PACKAGE_PIN W6 [get_ports {switch[2]}]
set_property PACKAGE_PIN AA7 [get_ports {switch[1]}]
set_property PACKAGE_PIN Y6 [get_ports {switch[0]}]

#btn_key
set_property PACKAGE_PIN V8 [get_ports {btn_key_col[0]}]
set_property PACKAGE_PIN V9 [get_ports {btn_key_col[1]}]
set_property PACKAGE_PIN Y8 [get_ports {btn_key_col[2]}]
set_property PACKAGE_PIN V7 [get_ports {btn_key_col[3]}]
set_property PACKAGE_PIN U7 [get_ports {btn_key_row[0]}]
set_property PACKAGE_PIN W8 [get_ports {btn_key_row[1]}]
set_property PACKAGE_PIN Y7 [get_ports {btn_key_row[2]}]
set_property PACKAGE_PIN AA8 [get_ports {btn_key_row[3]}]

#btn_step
set_property PACKAGE_PIN Y5 [get_ports {btn_step[0]}]
set_property PACKAGE_PIN V6 [get_ports {btn_step[1]}]

#SPI flash
set_property PACKAGE_PIN P20 [get_ports SPI_CLK]
set_property PACKAGE_PIN R20 [get_ports SPI_CS]
set_property PACKAGE_PIN P19 [get_ports SPI_MISO]
set_property PACKAGE_PIN N18 [get_ports SPI_MOSI]

#mac phy connect
set_property PACKAGE_PIN AB21 [get_ports mtxclk_0]
set_property PACKAGE_PIN AA19 [get_ports mrxclk_0]
set_property PACKAGE_PIN AA15 [get_ports mtxen_0]
set_property PACKAGE_PIN AF18 [get_ports {mtxd_0[0]}]
set_property PACKAGE_PIN AE18 [get_ports {mtxd_0[1]}]
set_property PACKAGE_PIN W15 [get_ports {mtxd_0[2]}]
set_property PACKAGE_PIN W14 [get_ports {mtxd_0[3]}]
set_property PACKAGE_PIN AB20 [get_ports mtxerr_0]
set_property PACKAGE_PIN AE22 [get_ports mrxdv_0]
set_property PACKAGE_PIN V1 [get_ports {mrxd_0[0]}]
set_property PACKAGE_PIN V4 [get_ports {mrxd_0[1]}]
set_property PACKAGE_PIN V2 [get_ports {mrxd_0[2]}]
set_property PACKAGE_PIN V3 [get_ports {mrxd_0[3]}]
set_property PACKAGE_PIN W16 [get_ports mrxerr_0]
set_property PACKAGE_PIN Y15 [get_ports mcoll_0]
set_property PACKAGE_PIN AF20 [get_ports mcrs_0]
set_property PACKAGE_PIN W3 [get_ports mdc_0]
set_property PACKAGE_PIN W1 [get_ports mdio_0]
set_property PACKAGE_PIN AE26 [get_ports phy_rstn]

#uart
set_property PACKAGE_PIN F23 [get_ports UART_RX]
set_property IOSTANDARD LVCMOS33 [get_ports UART_RX]
set_property PACKAGE_PIN H19 [get_ports UART_TX]
set_property IOSTANDARD LVCMOS33 [get_ports UART_TX]

#debug uart
set_property PACKAGE_PIN M25 [get_ports UART_RX2]
set_property IOSTANDARD LVCMOS33 [get_ports UART_RX2]
set_property PACKAGE_PIN P25 [get_ports UART_TX2]
set_property IOSTANDARD LVCMOS33 [get_ports UART_TX2]

#nand flash
set_property PACKAGE_PIN V19 [get_ports NAND_CLE]
set_property PACKAGE_PIN W20 [get_ports NAND_ALE]
set_property PACKAGE_PIN AA25 [get_ports NAND_RDY]
set_property PACKAGE_PIN AA24 [get_ports NAND_RD]
set_property PACKAGE_PIN AB24 [get_ports NAND_CE]
set_property PACKAGE_PIN AA22 [get_ports NAND_WR]
set_property PACKAGE_PIN W19 [get_ports {NAND_DATA[7]}]
set_property PACKAGE_PIN Y20 [get_ports {NAND_DATA[6]}]
set_property PACKAGE_PIN Y21 [get_ports {NAND_DATA[5]}]
set_property PACKAGE_PIN V18 [get_ports {NAND_DATA[4]}]
set_property PACKAGE_PIN U19 [get_ports {NAND_DATA[3]}]
set_property PACKAGE_PIN U20 [get_ports {NAND_DATA[2]}]
set_property PACKAGE_PIN W21 [get_ports {NAND_DATA[1]}]
set_property PACKAGE_PIN AC24 [get_ports {NAND_DATA[0]}]

#ejtag
set_property PACKAGE_PIN J18 [get_ports EJTAG_TRST]
set_property PACKAGE_PIN K18 [get_ports EJTAG_TCK]
set_property PACKAGE_PIN K20 [get_ports EJTAG_TDI]
set_property PACKAGE_PIN K22 [get_ports EJTAG_TMS]
set_property PACKAGE_PIN K21 [get_ports EJTAG_TDO]


set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports resetn]
set_property IOSTANDARD LVCMOS33 [get_ports {led[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_rg0[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_rg1[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {num_a_g[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {num_csn[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switch[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {btn_key_col[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {btn_key_row[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {btn_step[*]}]

set_property IOSTANDARD LVCMOS33 [get_ports SPI_MOSI]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_MISO]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_CS]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_CLK]

set_property IOSTANDARD LVCMOS33 [get_ports {mrxd_0[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mtxd_0[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports phy_rstn]
set_property IOSTANDARD LVCMOS33 [get_ports mtxerr_0]
set_property IOSTANDARD LVCMOS33 [get_ports mtxen_0]
set_property IOSTANDARD LVCMOS33 [get_ports mtxclk_0]
set_property IOSTANDARD LVCMOS33 [get_ports mrxerr_0]
set_property IOSTANDARD LVCMOS33 [get_ports mcoll_0]
set_property IOSTANDARD LVCMOS33 [get_ports mcrs_0]
set_property IOSTANDARD LVCMOS33 [get_ports mdc_0]
set_property IOSTANDARD LVCMOS33 [get_ports mdio_0]
set_property IOSTANDARD LVCMOS33 [get_ports mrxclk_0]
set_property IOSTANDARD LVCMOS33 [get_ports mrxdv_0]

set_property IOSTANDARD LVCMOS33 [get_ports NAND_CLE]
set_property IOSTANDARD LVCMOS33 [get_ports NAND_ALE]
set_property IOSTANDARD LVCMOS33 [get_ports NAND_RDY]
set_property IOSTANDARD LVCMOS33 [get_ports NAND_RD]
set_property IOSTANDARD LVCMOS33 [get_ports NAND_CE]
set_property IOSTANDARD LVCMOS33 [get_ports NAND_WR]
set_property IOSTANDARD LVCMOS33 [get_ports {NAND_DATA[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {NAND_DATA[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {NAND_DATA[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {NAND_DATA[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {NAND_DATA[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {NAND_DATA[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {NAND_DATA[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {NAND_DATA[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports EJTAG_TRST]
set_property IOSTANDARD LVCMOS33 [get_ports EJTAG_TCK]
set_property IOSTANDARD LVCMOS33 [get_ports EJTAG_TDI]
set_property IOSTANDARD LVCMOS33 [get_ports EJTAG_TMS]
set_property IOSTANDARD LVCMOS33 [get_ports EJTAG_TDO]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets EJTAG_TCK_IBUF]

create_clock -period 40.000 -name mrxclk_0 -waveform {0.000 20.000} [get_ports mrxclk_0]
create_clock -period 40.000 -name mtxclk_0 -waveform {0.000 20.000} [get_ports mtxclk_0]

set_false_path -from [get_clocks clk_pll_i] -to [get_clocks clk_out2_clk_pll_33]
set_false_path -from [get_clocks mrxclk_0] -to [get_clocks clk_out2_clk_pll_33]
set_false_path -from [get_clocks mtxclk_0] -to [get_clocks clk_out2_clk_pll_33]
set_false_path -from [get_clocks clk_out2_clk_pll_33] -to [get_clocks clk_out1_clk_pll_33]
set_false_path -from [get_clocks clk_out1_clk_pll_33] -to [get_clocks clk_out2_clk_pll_33]
set_false_path -from [get_clocks clk_out2_clk_pll_33] -to [get_clocks mrxclk_0]
set_false_path -from [get_clocks clk_out2_clk_pll_33] -to [get_clocks mrxclk_0]
set_false_path -from [get_clocks clk_out2_clk_pll_33] -to [get_clocks mtxclk_0]
set_false_path -from [get_clocks clk_out2_clk_pll_33] -to [get_clocks mtxclk_0]

set_property IOSTANDARD LVCMOS33 [get_ports VGA_*]

set_property PACKAGE_PIN U4 [get_ports {VGA_r[3]}]
set_property PACKAGE_PIN U2 [get_ports {VGA_r[2]}]
set_property PACKAGE_PIN T2 [get_ports {VGA_r[1]}]
set_property PACKAGE_PIN T3 [get_ports {VGA_r[0]}]

set_property PACKAGE_PIN R5 [get_ports {VGA_g[3]}]
set_property PACKAGE_PIN U1 [get_ports {VGA_g[2]}]
set_property PACKAGE_PIN R1 [get_ports {VGA_g[1]}]
set_property PACKAGE_PIN R2 [get_ports {VGA_g[0]}]

set_property PACKAGE_PIN P3 [get_ports {VGA_b[3]}]
set_property PACKAGE_PIN P1 [get_ports {VGA_b[2]}]
set_property PACKAGE_PIN N1 [get_ports {VGA_b[1]}]
set_property PACKAGE_PIN P5 [get_ports {VGA_b[0]}]

set_property PACKAGE_PIN U5 [get_ports VGA_hsync]
set_property PACKAGE_PIN U6 [get_ports VGA_vsync]




connect_debug_port u_ila_3/probe0 [get_nets [list {VGA_blue[0]} {VGA_blue[1]} {VGA_blue[2]} {VGA_blue[3]} {VGA_blue[4]} {VGA_blue[5]}]]
connect_debug_port u_ila_3/probe1 [get_nets [list {VGA_red[0]} {VGA_red[1]} {VGA_red[2]} {VGA_red[3]} {VGA_red[4]} {VGA_red[5]}]]
connect_debug_port u_ila_3/probe2 [get_nets [list {VGA_green[0]} {VGA_green[1]} {VGA_green[2]} {VGA_green[3]} {VGA_green[4]} {VGA_green[5]}]]

# USB UTMI
set_property IOSTANDARD LVCMOS33 [get_ports UTMI_*]

set_property PACKAGE_PIN AF3 [get_ports UTMI_chrgvbus]
set_property PACKAGE_PIN AA20 [get_ports UTMI_clk]
set_property PACKAGE_PIN AA3 [get_ports {UTMI_data[0]}]
set_property PACKAGE_PIN AC3 [get_ports {UTMI_data[1]}]
set_property PACKAGE_PIN AE1 [get_ports {UTMI_data[2]}]
set_property PACKAGE_PIN AB4 [get_ports {UTMI_data[3]}]
set_property PACKAGE_PIN AD3 [get_ports {UTMI_data[4]}]
set_property PACKAGE_PIN AA4 [get_ports {UTMI_data[5]}]
set_property PACKAGE_PIN AC4 [get_ports {UTMI_data[6]}]
set_property PACKAGE_PIN AE2 [get_ports {UTMI_data[7]}]
set_property PACKAGE_PIN AE3 [get_ports UTMI_dischrgvbus]
set_property PACKAGE_PIN AC1 [get_ports UTMI_dmpulldown]
set_property PACKAGE_PIN AC2 [get_ports UTMI_dppulldown]
set_property PACKAGE_PIN AD4 [get_ports UTMI_hostdisc]
set_property PACKAGE_PIN W4 [get_ports UTMI_iddig]
set_property PACKAGE_PIN AD5 [get_ports UTMI_idpullup]
set_property PACKAGE_PIN AA5 [get_ports {UTMI_linestate[0]}]
set_property PACKAGE_PIN AE5 [get_ports {UTMI_linestate[1]}]
set_property PACKAGE_PIN AC6 [get_ports {UTMI_opmode[0]}]
set_property PACKAGE_PIN AF5 [get_ports {UTMI_opmode[1]}]
set_property PACKAGE_PIN AD23 [get_ports UTMI_reset]
set_property PACKAGE_PIN AB5 [get_ports UTMI_rxactive]
set_property PACKAGE_PIN AB2 [get_ports UTMI_rxerror]
set_property PACKAGE_PIN AF22 [get_ports UTMI_rxvalid]
set_property PACKAGE_PIN AF2 [get_ports UTMI_sessend]
set_property PACKAGE_PIN AE20 [get_ports UTMI_suspend_n]
set_property PACKAGE_PIN AE21 [get_ports UTMI_termsel]
set_property PACKAGE_PIN AD21 [get_ports UTMI_txready]
set_property PACKAGE_PIN AF23 [get_ports UTMI_txvalid]
set_property PACKAGE_PIN AB1 [get_ports UTMI_vbusvalid]
set_property PACKAGE_PIN AD20 [get_ports {UTMI_xcvrsel[0]}]
set_property PACKAGE_PIN AF4 [get_ports {UTMI_xcvrsel[1]}]







create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 2 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list UTMI_clk_IBUF_BUFG]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 16 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {usb_controller/inst/usb_host_inst/u_sie/u_crc16/c[0]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/c[1]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/c[2]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/c[3]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/c[4]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/c[5]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/c[6]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/c[7]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/c[8]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/c[9]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/c[10]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/c[11]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/c[12]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/c[13]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/c[14]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/c[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 16 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {usb_controller/inst/usb_host_inst/u_sie/u_crc16/next_crc[0]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/next_crc[1]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/next_crc[2]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/next_crc[3]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/next_crc[4]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/next_crc[5]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/next_crc[6]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/next_crc[7]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/next_crc[8]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/next_crc[9]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/next_crc[10]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/next_crc[11]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/next_crc[12]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/next_crc[13]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/next_crc[14]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/next_crc[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 4 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {usb_controller/inst/usb_host_inst/u_sie/state_q[0]} {usb_controller/inst/usb_host_inst/u_sie/state_q[1]} {usb_controller/inst/usb_host_inst/u_sie/state_q[2]} {usb_controller/inst/usb_host_inst/u_sie/state_q[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 8 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {usb_controller/inst/usb_host_inst/u_sie/u_crc16/d[0]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/d[1]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/d[2]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/d[3]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/d[4]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/d[5]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/d[6]} {usb_controller/inst/usb_host_inst/u_sie/u_crc16/d[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 32 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {usb_controller/inst/usb_host_inst/wr_data_q[0]} {usb_controller/inst/usb_host_inst/wr_data_q[1]} {usb_controller/inst/usb_host_inst/wr_data_q[2]} {usb_controller/inst/usb_host_inst/wr_data_q[3]} {usb_controller/inst/usb_host_inst/wr_data_q[4]} {usb_controller/inst/usb_host_inst/wr_data_q[5]} {usb_controller/inst/usb_host_inst/wr_data_q[6]} {usb_controller/inst/usb_host_inst/wr_data_q[7]} {usb_controller/inst/usb_host_inst/wr_data_q[8]} {usb_controller/inst/usb_host_inst/wr_data_q[9]} {usb_controller/inst/usb_host_inst/wr_data_q[10]} {usb_controller/inst/usb_host_inst/wr_data_q[11]} {usb_controller/inst/usb_host_inst/wr_data_q[12]} {usb_controller/inst/usb_host_inst/wr_data_q[13]} {usb_controller/inst/usb_host_inst/wr_data_q[14]} {usb_controller/inst/usb_host_inst/wr_data_q[15]} {usb_controller/inst/usb_host_inst/wr_data_q[16]} {usb_controller/inst/usb_host_inst/wr_data_q[17]} {usb_controller/inst/usb_host_inst/wr_data_q[18]} {usb_controller/inst/usb_host_inst/wr_data_q[19]} {usb_controller/inst/usb_host_inst/wr_data_q[20]} {usb_controller/inst/usb_host_inst/wr_data_q[21]} {usb_controller/inst/usb_host_inst/wr_data_q[22]} {usb_controller/inst/usb_host_inst/wr_data_q[23]} {usb_controller/inst/usb_host_inst/wr_data_q[24]} {usb_controller/inst/usb_host_inst/wr_data_q[25]} {usb_controller/inst/usb_host_inst/wr_data_q[26]} {usb_controller/inst/usb_host_inst/wr_data_q[27]} {usb_controller/inst/usb_host_inst/wr_data_q[28]} {usb_controller/inst/usb_host_inst/wr_data_q[29]} {usb_controller/inst/usb_host_inst/wr_data_q[30]} {usb_controller/inst/usb_host_inst/wr_data_q[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 4 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {usb_cfg_converted_wstrb[0]} {usb_cfg_converted_wstrb[1]} {usb_cfg_converted_wstrb[2]} {usb_cfg_converted_wstrb[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 32 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {usb_cfg_converted_rdata[0]} {usb_cfg_converted_rdata[1]} {usb_cfg_converted_rdata[2]} {usb_cfg_converted_rdata[3]} {usb_cfg_converted_rdata[4]} {usb_cfg_converted_rdata[5]} {usb_cfg_converted_rdata[6]} {usb_cfg_converted_rdata[7]} {usb_cfg_converted_rdata[8]} {usb_cfg_converted_rdata[9]} {usb_cfg_converted_rdata[10]} {usb_cfg_converted_rdata[11]} {usb_cfg_converted_rdata[12]} {usb_cfg_converted_rdata[13]} {usb_cfg_converted_rdata[14]} {usb_cfg_converted_rdata[15]} {usb_cfg_converted_rdata[16]} {usb_cfg_converted_rdata[17]} {usb_cfg_converted_rdata[18]} {usb_cfg_converted_rdata[19]} {usb_cfg_converted_rdata[20]} {usb_cfg_converted_rdata[21]} {usb_cfg_converted_rdata[22]} {usb_cfg_converted_rdata[23]} {usb_cfg_converted_rdata[24]} {usb_cfg_converted_rdata[25]} {usb_cfg_converted_rdata[26]} {usb_cfg_converted_rdata[27]} {usb_cfg_converted_rdata[28]} {usb_cfg_converted_rdata[29]} {usb_cfg_converted_rdata[30]} {usb_cfg_converted_rdata[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 32 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list {usb_cfg_converted_wdata[0]} {usb_cfg_converted_wdata[1]} {usb_cfg_converted_wdata[2]} {usb_cfg_converted_wdata[3]} {usb_cfg_converted_wdata[4]} {usb_cfg_converted_wdata[5]} {usb_cfg_converted_wdata[6]} {usb_cfg_converted_wdata[7]} {usb_cfg_converted_wdata[8]} {usb_cfg_converted_wdata[9]} {usb_cfg_converted_wdata[10]} {usb_cfg_converted_wdata[11]} {usb_cfg_converted_wdata[12]} {usb_cfg_converted_wdata[13]} {usb_cfg_converted_wdata[14]} {usb_cfg_converted_wdata[15]} {usb_cfg_converted_wdata[16]} {usb_cfg_converted_wdata[17]} {usb_cfg_converted_wdata[18]} {usb_cfg_converted_wdata[19]} {usb_cfg_converted_wdata[20]} {usb_cfg_converted_wdata[21]} {usb_cfg_converted_wdata[22]} {usb_cfg_converted_wdata[23]} {usb_cfg_converted_wdata[24]} {usb_cfg_converted_wdata[25]} {usb_cfg_converted_wdata[26]} {usb_cfg_converted_wdata[27]} {usb_cfg_converted_wdata[28]} {usb_cfg_converted_wdata[29]} {usb_cfg_converted_wdata[30]} {usb_cfg_converted_wdata[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 32 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list {usb_cfg_converted_araddr[0]} {usb_cfg_converted_araddr[1]} {usb_cfg_converted_araddr[2]} {usb_cfg_converted_araddr[3]} {usb_cfg_converted_araddr[4]} {usb_cfg_converted_araddr[5]} {usb_cfg_converted_araddr[6]} {usb_cfg_converted_araddr[7]} {usb_cfg_converted_araddr[8]} {usb_cfg_converted_araddr[9]} {usb_cfg_converted_araddr[10]} {usb_cfg_converted_araddr[11]} {usb_cfg_converted_araddr[12]} {usb_cfg_converted_araddr[13]} {usb_cfg_converted_araddr[14]} {usb_cfg_converted_araddr[15]} {usb_cfg_converted_araddr[16]} {usb_cfg_converted_araddr[17]} {usb_cfg_converted_araddr[18]} {usb_cfg_converted_araddr[19]} {usb_cfg_converted_araddr[20]} {usb_cfg_converted_araddr[21]} {usb_cfg_converted_araddr[22]} {usb_cfg_converted_araddr[23]} {usb_cfg_converted_araddr[24]} {usb_cfg_converted_araddr[25]} {usb_cfg_converted_araddr[26]} {usb_cfg_converted_araddr[27]} {usb_cfg_converted_araddr[28]} {usb_cfg_converted_araddr[29]} {usb_cfg_converted_araddr[30]} {usb_cfg_converted_araddr[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 32 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list {usb_cfg_converted_awaddr[0]} {usb_cfg_converted_awaddr[1]} {usb_cfg_converted_awaddr[2]} {usb_cfg_converted_awaddr[3]} {usb_cfg_converted_awaddr[4]} {usb_cfg_converted_awaddr[5]} {usb_cfg_converted_awaddr[6]} {usb_cfg_converted_awaddr[7]} {usb_cfg_converted_awaddr[8]} {usb_cfg_converted_awaddr[9]} {usb_cfg_converted_awaddr[10]} {usb_cfg_converted_awaddr[11]} {usb_cfg_converted_awaddr[12]} {usb_cfg_converted_awaddr[13]} {usb_cfg_converted_awaddr[14]} {usb_cfg_converted_awaddr[15]} {usb_cfg_converted_awaddr[16]} {usb_cfg_converted_awaddr[17]} {usb_cfg_converted_awaddr[18]} {usb_cfg_converted_awaddr[19]} {usb_cfg_converted_awaddr[20]} {usb_cfg_converted_awaddr[21]} {usb_cfg_converted_awaddr[22]} {usb_cfg_converted_awaddr[23]} {usb_cfg_converted_awaddr[24]} {usb_cfg_converted_awaddr[25]} {usb_cfg_converted_awaddr[26]} {usb_cfg_converted_awaddr[27]} {usb_cfg_converted_awaddr[28]} {usb_cfg_converted_awaddr[29]} {usb_cfg_converted_awaddr[30]} {usb_cfg_converted_awaddr[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list {int_out[6]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 32 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list {usb_controller/inst/usb_host_inst/wr_addr_q[0]} {usb_controller/inst/usb_host_inst/wr_addr_q[1]} {usb_controller/inst/usb_host_inst/wr_addr_q[2]} {usb_controller/inst/usb_host_inst/wr_addr_q[3]} {usb_controller/inst/usb_host_inst/wr_addr_q[4]} {usb_controller/inst/usb_host_inst/wr_addr_q[5]} {usb_controller/inst/usb_host_inst/wr_addr_q[6]} {usb_controller/inst/usb_host_inst/wr_addr_q[7]} {usb_controller/inst/usb_host_inst/wr_addr_q[8]} {usb_controller/inst/usb_host_inst/wr_addr_q[9]} {usb_controller/inst/usb_host_inst/wr_addr_q[10]} {usb_controller/inst/usb_host_inst/wr_addr_q[11]} {usb_controller/inst/usb_host_inst/wr_addr_q[12]} {usb_controller/inst/usb_host_inst/wr_addr_q[13]} {usb_controller/inst/usb_host_inst/wr_addr_q[14]} {usb_controller/inst/usb_host_inst/wr_addr_q[15]} {usb_controller/inst/usb_host_inst/wr_addr_q[16]} {usb_controller/inst/usb_host_inst/wr_addr_q[17]} {usb_controller/inst/usb_host_inst/wr_addr_q[18]} {usb_controller/inst/usb_host_inst/wr_addr_q[19]} {usb_controller/inst/usb_host_inst/wr_addr_q[20]} {usb_controller/inst/usb_host_inst/wr_addr_q[21]} {usb_controller/inst/usb_host_inst/wr_addr_q[22]} {usb_controller/inst/usb_host_inst/wr_addr_q[23]} {usb_controller/inst/usb_host_inst/wr_addr_q[24]} {usb_controller/inst/usb_host_inst/wr_addr_q[25]} {usb_controller/inst/usb_host_inst/wr_addr_q[26]} {usb_controller/inst/usb_host_inst/wr_addr_q[27]} {usb_controller/inst/usb_host_inst/wr_addr_q[28]} {usb_controller/inst/usb_host_inst/wr_addr_q[29]} {usb_controller/inst/usb_host_inst/wr_addr_q[30]} {usb_controller/inst/usb_host_inst/wr_addr_q[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 1 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list usb_controller/inst/usb_host_inst/device_det_q]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 1 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list usb_controller/inst/usb_host_inst/err_cond_q]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 1 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list usb_controller/inst/usb_host_inst/intr_done_q]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 1 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list usb_controller/inst/usb_host_inst/intr_err_q]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 1 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list usb_controller/inst/usb_host_inst/intr_q]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
set_property port_width 1 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list usb_controller/inst/usb_host_inst/intr_sof_q]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe18]
set_property port_width 1 [get_debug_ports u_ila_0/probe18]
connect_debug_port u_ila_0/probe18 [get_nets [list usb_controller/inst/usb_host_inst/status_crc_err_w]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe19]
set_property port_width 1 [get_debug_ports u_ila_0/probe19]
connect_debug_port u_ila_0/probe19 [get_nets [list usb_controller/inst/usb_host_inst/status_timeout_w]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe20]
set_property port_width 1 [get_debug_ports u_ila_0/probe20]
connect_debug_port u_ila_0/probe20 [get_nets [list usb_cfg_converted_arready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe21]
set_property port_width 1 [get_debug_ports u_ila_0/probe21]
connect_debug_port u_ila_0/probe21 [get_nets [list usb_cfg_converted_arvalid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe22]
set_property port_width 1 [get_debug_ports u_ila_0/probe22]
connect_debug_port u_ila_0/probe22 [get_nets [list usb_cfg_converted_awready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe23]
set_property port_width 1 [get_debug_ports u_ila_0/probe23]
connect_debug_port u_ila_0/probe23 [get_nets [list usb_cfg_converted_awvalid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe24]
set_property port_width 1 [get_debug_ports u_ila_0/probe24]
connect_debug_port u_ila_0/probe24 [get_nets [list usb_cfg_converted_bready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe25]
set_property port_width 1 [get_debug_ports u_ila_0/probe25]
connect_debug_port u_ila_0/probe25 [get_nets [list usb_cfg_converted_bvalid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe26]
set_property port_width 1 [get_debug_ports u_ila_0/probe26]
connect_debug_port u_ila_0/probe26 [get_nets [list usb_cfg_converted_rready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe27]
set_property port_width 1 [get_debug_ports u_ila_0/probe27]
connect_debug_port u_ila_0/probe27 [get_nets [list usb_cfg_converted_rvalid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe28]
set_property port_width 1 [get_debug_ports u_ila_0/probe28]
connect_debug_port u_ila_0/probe28 [get_nets [list usb_cfg_converted_wready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe29]
set_property port_width 1 [get_debug_ports u_ila_0/probe29]
connect_debug_port u_ila_0/probe29 [get_nets [list usb_cfg_converted_wvalid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe30]
set_property port_width 1 [get_debug_ports u_ila_0/probe30]
connect_debug_port u_ila_0/probe30 [get_nets [list usb_controller/inst/usb_host_inst/usb_irq_mask_device_detect_out_w]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe31]
set_property port_width 1 [get_debug_ports u_ila_0/probe31]
connect_debug_port u_ila_0/probe31 [get_nets [list usb_controller/inst/usb_host_inst/usb_irq_mask_done_out_w]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe32]
set_property port_width 1 [get_debug_ports u_ila_0/probe32]
connect_debug_port u_ila_0/probe32 [get_nets [list usb_controller/inst/usb_host_inst/usb_irq_mask_err_out_w]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe33]
set_property port_width 1 [get_debug_ports u_ila_0/probe33]
connect_debug_port u_ila_0/probe33 [get_nets [list usb_controller/inst/usb_host_inst/usb_irq_mask_sof_out_w]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe34]
set_property port_width 1 [get_debug_ports u_ila_0/probe34]
connect_debug_port u_ila_0/probe34 [get_nets [list usb_controller/inst/usb_host_inst/u_sie/utmi_txready_i]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe35]
set_property port_width 1 [get_debug_ports u_ila_0/probe35]
connect_debug_port u_ila_0/probe35 [get_nets [list usb_controller/inst/usb_host_inst/u_sie/utmi_txvalid_o]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe36]
set_property port_width 1 [get_debug_ports u_ila_0/probe36]
connect_debug_port u_ila_0/probe36 [get_nets [list usb_controller/inst/usb_host_inst/wr_addr_valid_q]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe37]
set_property port_width 1 [get_debug_ports u_ila_0/probe37]
connect_debug_port u_ila_0/probe37 [get_nets [list usb_controller/inst/usb_host_inst/wr_data_valid_q]]
create_debug_core u_ila_1 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_1]
set_property ALL_PROBE_SAME_MU_CNT 2 [get_debug_cores u_ila_1]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_1]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_1]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_1]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_1]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_1]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_1]
set_property port_width 1 [get_debug_ports u_ila_1/clk]
connect_debug_port u_ila_1/clk [get_nets [list clk_pll_33/inst/clk_out1]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe0]
set_property port_width 32 [get_debug_ports u_ila_1/probe0]
connect_debug_port u_ila_1/probe0 [get_nets [list {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_0[0]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_0[1]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_0[2]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_0[3]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_0[4]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_0[5]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_0[6]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_0[7]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_0[8]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_0[9]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_0[10]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_0[11]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_0[12]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_0[13]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_0[14]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_0[15]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_0[16]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_0[17]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_0[18]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_0[19]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_0[20]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_0[21]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_0[22]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_0[23]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_0[24]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_0[25]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_0[26]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_0[27]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_0[28]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_0[29]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_0[30]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_0[31]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe1]
set_property port_width 32 [get_debug_ports u_ila_1/probe1]
connect_debug_port u_ila_1/probe1 [get_nets [list {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_1[0]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_1[1]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_1[2]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_1[3]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_1[4]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_1[5]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_1[6]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_1[7]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_1[8]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_1[9]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_1[10]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_1[11]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_1[12]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_1[13]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_1[14]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_1[15]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_1[16]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_1[17]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_1[18]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_1[19]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_1[20]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_1[21]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_1[22]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_1[23]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_1[24]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_1[25]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_1[26]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_1[27]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_1[28]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_1[29]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_1[30]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_1[31]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe2]
set_property port_width 32 [get_debug_ports u_ila_1/probe2]
connect_debug_port u_ila_1/probe2 [get_nets [list {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_2[0]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_2[1]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_2[2]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_2[3]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_2[4]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_2[5]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_2[6]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_2[7]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_2[8]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_2[9]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_2[10]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_2[11]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_2[12]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_2[13]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_2[14]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_2[15]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_2[16]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_2[17]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_2[18]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_2[19]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_2[20]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_2[21]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_2[22]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_2[23]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_2[24]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_2[25]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_2[26]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_2[27]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_2[28]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_2[29]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_2[30]} {cpu_mid/DifftestDelayBundle_DifftestInstrCommitPC_2[31]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe3]
set_property port_width 32 [get_debug_ports u_ila_1/probe3]
connect_debug_port u_ila_1/probe3 [get_nets [list {m0_awaddr[0]} {m0_awaddr[1]} {m0_awaddr[2]} {m0_awaddr[3]} {m0_awaddr[4]} {m0_awaddr[5]} {m0_awaddr[6]} {m0_awaddr[7]} {m0_awaddr[8]} {m0_awaddr[9]} {m0_awaddr[10]} {m0_awaddr[11]} {m0_awaddr[12]} {m0_awaddr[13]} {m0_awaddr[14]} {m0_awaddr[15]} {m0_awaddr[16]} {m0_awaddr[17]} {m0_awaddr[18]} {m0_awaddr[19]} {m0_awaddr[20]} {m0_awaddr[21]} {m0_awaddr[22]} {m0_awaddr[23]} {m0_awaddr[24]} {m0_awaddr[25]} {m0_awaddr[26]} {m0_awaddr[27]} {m0_awaddr[28]} {m0_awaddr[29]} {m0_awaddr[30]} {m0_awaddr[31]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe4]
set_property port_width 32 [get_debug_ports u_ila_1/probe4]
connect_debug_port u_ila_1/probe4 [get_nets [list {m0_araddr[0]} {m0_araddr[1]} {m0_araddr[2]} {m0_araddr[3]} {m0_araddr[4]} {m0_araddr[5]} {m0_araddr[6]} {m0_araddr[7]} {m0_araddr[8]} {m0_araddr[9]} {m0_araddr[10]} {m0_araddr[11]} {m0_araddr[12]} {m0_araddr[13]} {m0_araddr[14]} {m0_araddr[15]} {m0_araddr[16]} {m0_araddr[17]} {m0_araddr[18]} {m0_araddr[19]} {m0_araddr[20]} {m0_araddr[21]} {m0_araddr[22]} {m0_araddr[23]} {m0_araddr[24]} {m0_araddr[25]} {m0_araddr[26]} {m0_araddr[27]} {m0_araddr[28]} {m0_araddr[29]} {m0_araddr[30]} {m0_araddr[31]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe5]
set_property port_width 1 [get_debug_ports u_ila_1/probe5]
connect_debug_port u_ila_1/probe5 [get_nets [list cpu_mid/DifftestDelayBundle_DifftestInstrCommitValid_0]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe6]
set_property port_width 1 [get_debug_ports u_ila_1/probe6]
connect_debug_port u_ila_1/probe6 [get_nets [list cpu_mid/DifftestDelayBundle_DifftestInstrCommitValid_1]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe7]
set_property port_width 1 [get_debug_ports u_ila_1/probe7]
connect_debug_port u_ila_1/probe7 [get_nets [list cpu_mid/DifftestDelayBundle_DifftestInstrCommitValid_2]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe8]
set_property port_width 1 [get_debug_ports u_ila_1/probe8]
connect_debug_port u_ila_1/probe8 [get_nets [list m0_arready]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe9]
set_property port_width 1 [get_debug_ports u_ila_1/probe9]
connect_debug_port u_ila_1/probe9 [get_nets [list m0_arvalid]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe10]
set_property port_width 1 [get_debug_ports u_ila_1/probe10]
connect_debug_port u_ila_1/probe10 [get_nets [list m0_awready]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe11]
set_property port_width 1 [get_debug_ports u_ila_1/probe11]
connect_debug_port u_ila_1/probe11 [get_nets [list m0_awvalid]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe12]
set_property port_width 1 [get_debug_ports u_ila_1/probe12]
connect_debug_port u_ila_1/probe12 [get_nets [list m0_bready]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe13]
set_property port_width 1 [get_debug_ports u_ila_1/probe13]
connect_debug_port u_ila_1/probe13 [get_nets [list m0_bvalid]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe14]
set_property port_width 1 [get_debug_ports u_ila_1/probe14]
connect_debug_port u_ila_1/probe14 [get_nets [list m0_wready]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe15]
set_property port_width 1 [get_debug_ports u_ila_1/probe15]
connect_debug_port u_ila_1/probe15 [get_nets [list m0_wvalid]]
create_debug_core u_ila_2 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_2]
set_property ALL_PROBE_SAME_MU_CNT 2 [get_debug_cores u_ila_2]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_2]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_2]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_2]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_2]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_2]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_2]
set_property port_width 1 [get_debug_ports u_ila_2/clk]
connect_debug_port u_ila_2/clk [get_nets [list clk_pll_33/inst/clk_out2]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_2/probe0]
set_property port_width 6 [get_debug_ports u_ila_2/probe0]
connect_debug_port u_ila_2/probe0 [get_nets [list {int_out[0]} {int_out[1]} {int_out[2]} {int_out[3]} {int_out[4]} {int_out[5]}]]
create_debug_port u_ila_2 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_2/probe1]
set_property port_width 1 [get_debug_ports u_ila_2/probe1]
connect_debug_port u_ila_2/probe1 [get_nets [list s8_unfifo_awready]]
create_debug_port u_ila_2 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_2/probe2]
set_property port_width 1 [get_debug_ports u_ila_2/probe2]
connect_debug_port u_ila_2/probe2 [get_nets [list usb_cfg_awready]]
create_debug_port u_ila_2 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_2/probe3]
set_property port_width 1 [get_debug_ports u_ila_2/probe3]
connect_debug_port u_ila_2/probe3 [get_nets [list usb_s_awready]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets aclk]
