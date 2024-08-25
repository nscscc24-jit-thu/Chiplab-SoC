// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Aug  7 16:16:46 2024
// Host        : cslab-alder running 64-bit Debian GNU/Linux 12 (bookworm)
// Command     : write_verilog -force -mode funcsim -rename_top bd_soc_usb_controller_0 -prefix
//               bd_soc_usb_controller_0_ utmi_usb_controller_0_sim_netlist.v
// Design      : utmi_usb_controller_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* keep_hierarchy = "soft" *) 
module bd_soc_usb_controller_0_usbh_crc16
   (crc_i,
    data_i,
    crc_o);
  input [15:0]crc_i;
  input [7:0]data_i;
  output [15:0]crc_o;

  (* MARK_DEBUG *) wire [15:0]c;
  wire \crc_o[15]_INST_0_i_1_n_0 ;
  wire \crc_o[15]_INST_0_i_2_n_0 ;
  wire \crc_o[15]_INST_0_i_3_n_0 ;
  (* MARK_DEBUG *) wire [7:0]d;
  (* MARK_DEBUG *) wire [15:0]next_crc;

  assign c = crc_i[15:0];
  assign crc_o[15:0] = next_crc;
  assign d[7] = data_i[0];
  assign d[6] = data_i[1];
  assign d[5] = data_i[2];
  assign d[4] = data_i[3];
  assign d[3] = data_i[4];
  assign d[2] = data_i[5];
  assign d[1] = data_i[6];
  assign d[0] = data_i[7];
  LUT1 #(
    .INIT(2'h2)) 
    c_inst
       (.I0(c[6]),
        .O(next_crc[14]));
  LUT1 #(
    .INIT(2'h2)) 
    c_inst__0
       (.I0(c[5]),
        .O(next_crc[13]));
  LUT1 #(
    .INIT(2'h2)) 
    c_inst__1
       (.I0(c[4]),
        .O(next_crc[12]));
  LUT1 #(
    .INIT(2'h2)) 
    c_inst__2
       (.I0(c[3]),
        .O(next_crc[11]));
  LUT1 #(
    .INIT(2'h2)) 
    c_inst__3
       (.I0(c[2]),
        .O(next_crc[10]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_o[0]_INST_0 
       (.I0(c[8]),
        .I1(d[0]),
        .I2(\crc_o[15]_INST_0_i_3_n_0 ),
        .I3(\crc_o[15]_INST_0_i_2_n_0 ),
        .I4(\crc_o[15]_INST_0_i_1_n_0 ),
        .O(next_crc[0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_o[15]_INST_0 
       (.I0(d[0]),
        .I1(c[7]),
        .I2(c[8]),
        .I3(\crc_o[15]_INST_0_i_1_n_0 ),
        .I4(\crc_o[15]_INST_0_i_2_n_0 ),
        .I5(\crc_o[15]_INST_0_i_3_n_0 ),
        .O(next_crc[15]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_o[15]_INST_0_i_1 
       (.I0(d[4]),
        .I1(d[3]),
        .I2(d[2]),
        .I3(d[1]),
        .I4(c[14]),
        .I5(c[15]),
        .O(\crc_o[15]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_o[15]_INST_0_i_2 
       (.I0(d[5]),
        .I1(d[6]),
        .I2(d[7]),
        .I3(c[9]),
        .O(\crc_o[15]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_o[15]_INST_0_i_3 
       (.I0(c[10]),
        .I1(c[11]),
        .I2(c[12]),
        .I3(c[13]),
        .O(\crc_o[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_o[1]_INST_0 
       (.I0(\crc_o[15]_INST_0_i_1_n_0 ),
        .I1(\crc_o[15]_INST_0_i_2_n_0 ),
        .I2(c[10]),
        .I3(c[11]),
        .I4(c[12]),
        .I5(c[13]),
        .O(next_crc[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_o[2]_INST_0 
       (.I0(c[8]),
        .I1(c[9]),
        .I2(d[0]),
        .I3(d[1]),
        .O(next_crc[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_o[3]_INST_0 
       (.I0(c[9]),
        .I1(c[10]),
        .I2(d[1]),
        .I3(d[2]),
        .O(next_crc[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_o[4]_INST_0 
       (.I0(c[10]),
        .I1(c[11]),
        .I2(d[2]),
        .I3(d[3]),
        .O(next_crc[4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_o[5]_INST_0 
       (.I0(c[11]),
        .I1(c[12]),
        .I2(d[3]),
        .I3(d[4]),
        .O(next_crc[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_o[6]_INST_0 
       (.I0(c[12]),
        .I1(c[13]),
        .I2(d[4]),
        .I3(d[5]),
        .O(next_crc[6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_o[7]_INST_0 
       (.I0(c[13]),
        .I1(c[14]),
        .I2(d[5]),
        .I3(d[6]),
        .O(next_crc[7]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_o[8]_INST_0 
       (.I0(c[14]),
        .I1(c[15]),
        .I2(d[7]),
        .I3(d[6]),
        .I4(c[0]),
        .O(next_crc[8]));
  LUT3 #(
    .INIT(8'h96)) 
    \crc_o[9]_INST_0 
       (.I0(c[15]),
        .I1(d[7]),
        .I2(c[1]),
        .O(next_crc[9]));
endmodule

module bd_soc_usb_controller_0_usbh_fifo
   (D,
    usb_irq_mask_device_detect_q_reg,
    usb_irq_mask_err_q_reg,
    usb_irq_mask_done_q_reg,
    usb_irq_mask_sof_q_reg,
    rst_i,
    clk_i,
    wr_en,
    din,
    cfg_araddr_i,
    cfg_arvalid_i,
    xpm_fifo_sync_inst_i_2_0,
    \rd_data_q_reg[4] ,
    utmi_xcvrselect_o,
    \rd_data_q_reg[5] ,
    Q,
    utmi_termselect_o,
    \rd_data_q_reg[6] ,
    utmi_dppulldown_o,
    \rd_data_q_reg[7] ,
    utmi_dmpulldown_o,
    out,
    \rd_data_q_reg[2] ,
    utmi_op_mode_o,
    \rd_data_q_reg[1] ,
    \rd_data_q_reg[0] ,
    p_8_in);
  output [3:0]D;
  output usb_irq_mask_device_detect_q_reg;
  output usb_irq_mask_err_q_reg;
  output usb_irq_mask_done_q_reg;
  output usb_irq_mask_sof_q_reg;
  input rst_i;
  input clk_i;
  input wr_en;
  input [7:0]din;
  input [7:0]cfg_araddr_i;
  input cfg_arvalid_i;
  input xpm_fifo_sync_inst_i_2_0;
  input \rd_data_q_reg[4] ;
  input [1:0]utmi_xcvrselect_o;
  input \rd_data_q_reg[5] ;
  input [2:0]Q;
  input utmi_termselect_o;
  input \rd_data_q_reg[6] ;
  input utmi_dppulldown_o;
  input \rd_data_q_reg[7] ;
  input utmi_dmpulldown_o;
  input out;
  input \rd_data_q_reg[2] ;
  input [1:0]utmi_op_mode_o;
  input \rd_data_q_reg[1] ;
  input \rd_data_q_reg[0] ;
  input [0:0]p_8_in;

  wire [3:0]D;
  wire [2:0]Q;
  wire [7:0]cfg_araddr_i;
  wire cfg_arvalid_i;
  wire clk_i;
  wire [7:0]din;
  wire out;
  wire [0:0]p_8_in;
  wire \rd_data_q[4]_i_3_n_0 ;
  wire \rd_data_q[5]_i_3_n_0 ;
  wire \rd_data_q[6]_i_3_n_0 ;
  wire \rd_data_q[7]_i_3_n_0 ;
  wire \rd_data_q_reg[0] ;
  wire \rd_data_q_reg[1] ;
  wire \rd_data_q_reg[2] ;
  wire \rd_data_q_reg[4] ;
  wire \rd_data_q_reg[4]_i_2_n_0 ;
  wire \rd_data_q_reg[5] ;
  wire \rd_data_q_reg[5]_i_2_n_0 ;
  wire \rd_data_q_reg[6] ;
  wire \rd_data_q_reg[6]_i_2_n_0 ;
  wire \rd_data_q_reg[7] ;
  wire \rd_data_q_reg[7]_i_2_n_0 ;
  wire read_en_w;
  wire rst_i;
  wire usb_irq_mask_device_detect_q_reg;
  wire usb_irq_mask_done_q_reg;
  wire usb_irq_mask_err_q_reg;
  wire usb_irq_mask_sof_q_reg;
  wire [7:0]usb_rd_data_data_in_w;
  wire usb_rd_data_rd_req_w;
  wire utmi_dmpulldown_o;
  wire utmi_dppulldown_o;
  wire [1:0]utmi_op_mode_o;
  wire utmi_termselect_o;
  wire [1:0]utmi_xcvrselect_o;
  wire wr_en;
  wire xpm_fifo_sync_inst_i_2_0;
  wire xpm_fifo_sync_inst_i_3_n_0;
  wire xpm_fifo_sync_inst_i_5_n_0;
  wire xpm_fifo_sync_inst_i_6_n_0;
  wire NLW_xpm_fifo_sync_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_data_valid_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_empty_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_full_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_prog_full_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_wr_rst_busy_UNCONNECTED;
  wire [5:0]NLW_xpm_fifo_sync_inst_rd_data_count_UNCONNECTED;
  wire [5:0]NLW_xpm_fifo_sync_inst_wr_data_count_UNCONNECTED;

  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rd_data_q[0]_i_3 
       (.I0(\rd_data_q_reg[0] ),
        .I1(cfg_araddr_i[4]),
        .I2(usb_rd_data_data_in_w[0]),
        .I3(cfg_araddr_i[5]),
        .I4(p_8_in),
        .O(usb_irq_mask_sof_q_reg));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rd_data_q[1]_i_3 
       (.I0(\rd_data_q_reg[1] ),
        .I1(cfg_araddr_i[4]),
        .I2(usb_rd_data_data_in_w[1]),
        .I3(cfg_araddr_i[5]),
        .I4(utmi_op_mode_o[0]),
        .O(usb_irq_mask_done_q_reg));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rd_data_q[2]_i_3 
       (.I0(\rd_data_q_reg[2] ),
        .I1(cfg_araddr_i[4]),
        .I2(usb_rd_data_data_in_w[2]),
        .I3(cfg_araddr_i[5]),
        .I4(utmi_op_mode_o[1]),
        .O(usb_irq_mask_err_q_reg));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rd_data_q[3]_i_3 
       (.I0(out),
        .I1(cfg_araddr_i[4]),
        .I2(usb_rd_data_data_in_w[3]),
        .I3(cfg_araddr_i[5]),
        .I4(utmi_xcvrselect_o[0]),
        .O(usb_irq_mask_device_detect_q_reg));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \rd_data_q[4]_i_1 
       (.I0(cfg_araddr_i[0]),
        .I1(cfg_araddr_i[1]),
        .I2(cfg_araddr_i[6]),
        .I3(cfg_araddr_i[7]),
        .I4(\rd_data_q_reg[4]_i_2_n_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hEEEFFFEF)) 
    \rd_data_q[4]_i_3 
       (.I0(cfg_araddr_i[4]),
        .I1(cfg_araddr_i[3]),
        .I2(utmi_xcvrselect_o[1]),
        .I3(cfg_araddr_i[5]),
        .I4(usb_rd_data_data_in_w[4]),
        .O(\rd_data_q[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \rd_data_q[5]_i_1 
       (.I0(cfg_araddr_i[0]),
        .I1(cfg_araddr_i[1]),
        .I2(cfg_araddr_i[6]),
        .I3(cfg_araddr_i[7]),
        .I4(\rd_data_q_reg[5]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFC7CFF7CFC7FFF7F)) 
    \rd_data_q[5]_i_3 
       (.I0(Q[0]),
        .I1(cfg_araddr_i[4]),
        .I2(cfg_araddr_i[3]),
        .I3(cfg_araddr_i[5]),
        .I4(usb_rd_data_data_in_w[5]),
        .I5(utmi_termselect_o),
        .O(\rd_data_q[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \rd_data_q[6]_i_1 
       (.I0(cfg_araddr_i[0]),
        .I1(cfg_araddr_i[1]),
        .I2(cfg_araddr_i[6]),
        .I3(cfg_araddr_i[7]),
        .I4(\rd_data_q_reg[6]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFCFC7C7FFFFF7C7F)) 
    \rd_data_q[6]_i_3 
       (.I0(Q[1]),
        .I1(cfg_araddr_i[4]),
        .I2(cfg_araddr_i[3]),
        .I3(utmi_dppulldown_o),
        .I4(cfg_araddr_i[5]),
        .I5(usb_rd_data_data_in_w[6]),
        .O(\rd_data_q[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \rd_data_q[7]_i_1 
       (.I0(cfg_araddr_i[0]),
        .I1(cfg_araddr_i[1]),
        .I2(cfg_araddr_i[6]),
        .I3(cfg_araddr_i[7]),
        .I4(\rd_data_q_reg[7]_i_2_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFCFC7C7FFFFF7C7F)) 
    \rd_data_q[7]_i_3 
       (.I0(Q[2]),
        .I1(cfg_araddr_i[4]),
        .I2(cfg_araddr_i[3]),
        .I3(utmi_dmpulldown_o),
        .I4(cfg_araddr_i[5]),
        .I5(usb_rd_data_data_in_w[7]),
        .O(\rd_data_q[7]_i_3_n_0 ));
  MUXF7 \rd_data_q_reg[4]_i_2 
       (.I0(\rd_data_q[4]_i_3_n_0 ),
        .I1(\rd_data_q_reg[4] ),
        .O(\rd_data_q_reg[4]_i_2_n_0 ),
        .S(cfg_araddr_i[2]));
  MUXF7 \rd_data_q_reg[5]_i_2 
       (.I0(\rd_data_q[5]_i_3_n_0 ),
        .I1(\rd_data_q_reg[5] ),
        .O(\rd_data_q_reg[5]_i_2_n_0 ),
        .S(cfg_araddr_i[2]));
  MUXF7 \rd_data_q_reg[6]_i_2 
       (.I0(\rd_data_q[6]_i_3_n_0 ),
        .I1(\rd_data_q_reg[6] ),
        .O(\rd_data_q_reg[6]_i_2_n_0 ),
        .S(cfg_araddr_i[2]));
  MUXF7 \rd_data_q_reg[7]_i_2 
       (.I0(\rd_data_q[7]_i_3_n_0 ),
        .I1(\rd_data_q_reg[7] ),
        .O(\rd_data_q_reg[7]_i_2_n_0 ),
        .S(cfg_araddr_i[2]));
  (* CASCADE_HEIGHT = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* EN_ADV_FEATURE_SYNC = "16'b0000011100000111" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_WRITE_DEPTH = "64" *) 
  (* FULL_RESET_VALUE = "0" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_READ_MODE = "1" *) 
  (* P_WAKEUP_TIME = "2" *) 
  (* RD_DATA_COUNT_WIDTH = "6" *) 
  (* READ_DATA_WIDTH = "8" *) 
  (* READ_MODE = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "8" *) 
  (* WR_DATA_COUNT_WIDTH = "6" *) 
  (* XPM_MODULE = "TRUE" *) 
  bd_soc_usb_controller_0_xpm_fifo_sync xpm_fifo_sync_inst
       (.almost_empty(NLW_xpm_fifo_sync_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_sync_inst_almost_full_UNCONNECTED),
        .data_valid(NLW_xpm_fifo_sync_inst_data_valid_UNCONNECTED),
        .dbiterr(NLW_xpm_fifo_sync_inst_dbiterr_UNCONNECTED),
        .din(din),
        .dout(usb_rd_data_data_in_w),
        .empty(NLW_xpm_fifo_sync_inst_empty_UNCONNECTED),
        .full(NLW_xpm_fifo_sync_inst_full_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_sync_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_sync_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_sync_inst_prog_full_UNCONNECTED),
        .rd_data_count(NLW_xpm_fifo_sync_inst_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(usb_rd_data_rd_req_w),
        .rd_rst_busy(NLW_xpm_fifo_sync_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst_i),
        .sbiterr(NLW_xpm_fifo_sync_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(NLW_xpm_fifo_sync_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_sync_inst_wr_ack_UNCONNECTED),
        .wr_clk(clk_i),
        .wr_data_count(NLW_xpm_fifo_sync_inst_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(wr_en),
        .wr_rst_busy(NLW_xpm_fifo_sync_inst_wr_rst_busy_UNCONNECTED));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    xpm_fifo_sync_inst_i_2
       (.I0(cfg_araddr_i[4]),
        .I1(cfg_araddr_i[5]),
        .I2(xpm_fifo_sync_inst_i_3_n_0),
        .I3(read_en_w),
        .I4(xpm_fifo_sync_inst_i_5_n_0),
        .I5(xpm_fifo_sync_inst_i_6_n_0),
        .O(usb_rd_data_rd_req_w));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h1)) 
    xpm_fifo_sync_inst_i_3
       (.I0(cfg_araddr_i[6]),
        .I1(cfg_araddr_i[7]),
        .O(xpm_fifo_sync_inst_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    xpm_fifo_sync_inst_i_4
       (.I0(cfg_arvalid_i),
        .I1(xpm_fifo_sync_inst_i_2_0),
        .O(read_en_w));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hE)) 
    xpm_fifo_sync_inst_i_5
       (.I0(cfg_araddr_i[0]),
        .I1(cfg_araddr_i[1]),
        .O(xpm_fifo_sync_inst_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    xpm_fifo_sync_inst_i_6
       (.I0(cfg_araddr_i[2]),
        .I1(cfg_araddr_i[3]),
        .O(xpm_fifo_sync_inst_i_6_n_0));
endmodule

(* ADDR_W = "6" *) (* DEPTH = "64" *) (* ORIG_REF_NAME = "usbh_fifo" *) 
(* WIDTH = "8" *) 
module bd_soc_usb_controller_0_usbh_fifo__xdcDup__1
   (clk_i,
    rst_i,
    data_i,
    push_i,
    pop_i,
    flush_i,
    full_o,
    empty_o,
    data_o);
  input clk_i;
  input rst_i;
  input [7:0]data_i;
  input push_i;
  input pop_i;
  input flush_i;
  output full_o;
  output empty_o;
  output [7:0]data_o;

  wire \<const0> ;
  wire clk_i;
  wire [7:0]data_i;
  wire [7:0]data_o;
  wire pop_i;
  wire push_i;
  wire rst_i;
  wire NLW_xpm_fifo_sync_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_data_valid_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_empty_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_full_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_prog_full_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_wr_rst_busy_UNCONNECTED;
  wire [5:0]NLW_xpm_fifo_sync_inst_rd_data_count_UNCONNECTED;
  wire [5:0]NLW_xpm_fifo_sync_inst_wr_data_count_UNCONNECTED;

  assign empty_o = \<const0> ;
  assign full_o = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CASCADE_HEIGHT = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* EN_ADV_FEATURE_SYNC = "16'b0000011100000111" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_WRITE_DEPTH = "64" *) 
  (* FULL_RESET_VALUE = "0" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_READ_MODE = "1" *) 
  (* P_WAKEUP_TIME = "2" *) 
  (* RD_DATA_COUNT_WIDTH = "6" *) 
  (* READ_DATA_WIDTH = "8" *) 
  (* READ_MODE = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "8" *) 
  (* WR_DATA_COUNT_WIDTH = "6" *) 
  (* XPM_MODULE = "TRUE" *) 
  bd_soc_usb_controller_0_xpm_fifo_sync__2 xpm_fifo_sync_inst
       (.almost_empty(NLW_xpm_fifo_sync_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_sync_inst_almost_full_UNCONNECTED),
        .data_valid(NLW_xpm_fifo_sync_inst_data_valid_UNCONNECTED),
        .dbiterr(NLW_xpm_fifo_sync_inst_dbiterr_UNCONNECTED),
        .din(data_i),
        .dout(data_o),
        .empty(NLW_xpm_fifo_sync_inst_empty_UNCONNECTED),
        .full(NLW_xpm_fifo_sync_inst_full_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_sync_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_sync_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_sync_inst_prog_full_UNCONNECTED),
        .rd_data_count(NLW_xpm_fifo_sync_inst_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(pop_i),
        .rd_rst_busy(NLW_xpm_fifo_sync_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst_i),
        .sbiterr(NLW_xpm_fifo_sync_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(NLW_xpm_fifo_sync_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_sync_inst_wr_ack_UNCONNECTED),
        .wr_clk(clk_i),
        .wr_data_count(NLW_xpm_fifo_sync_inst_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(push_i),
        .wr_rst_busy(NLW_xpm_fifo_sync_inst_wr_rst_busy_UNCONNECTED));
endmodule

(* CLKS_PER_BIT = "16'b0000000000000101" *) (* EOF1_THRESHOLD = "16'b0000000011111010" *) (* MAX_XFER_PERIOD = "16'b0000110110101100" *) 
(* MAX_XFER_SIZE = "16'b0000000001000000" *) (* PID_SOF = "8'b10100101" *) (* SOF_GAURD_HIGH = "16'b1101101110111001" *) 
(* SOF_GAURD_LOW = "16'b0000000001100100" *) (* SOF_INC = "16'b0000000000000001" *) (* SOF_THRESHOLD = "16'b1110101001011111" *) 
(* SOF_ZERO = "16'b0000000000000000" *) (* keep_hierarchy = "soft" *) 
module bd_soc_usb_controller_0_usbh_host
   (clk_i,
    rst_i,
    cfg_awvalid_i,
    cfg_awaddr_i,
    cfg_wvalid_i,
    cfg_wdata_i,
    cfg_wstrb_i,
    cfg_bready_i,
    cfg_arvalid_i,
    cfg_araddr_i,
    cfg_rready_i,
    utmi_data_in_i,
    utmi_txready_i,
    utmi_rxvalid_i,
    utmi_rxactive_i,
    utmi_rxerror_i,
    utmi_linestate_i,
    cfg_awready_o,
    cfg_wready_o,
    cfg_bvalid_o,
    cfg_bresp_o,
    cfg_arready_o,
    cfg_rvalid_o,
    cfg_rdata_o,
    cfg_rresp_o,
    intr_o,
    utmi_data_out_o,
    utmi_txvalid_o,
    utmi_op_mode_o,
    utmi_xcvrselect_o,
    utmi_termselect_o,
    utmi_dppulldown_o,
    utmi_dmpulldown_o,
    utmi_reset_o);
  input clk_i;
  input rst_i;
  input cfg_awvalid_i;
  input [31:0]cfg_awaddr_i;
  input cfg_wvalid_i;
  input [31:0]cfg_wdata_i;
  input [3:0]cfg_wstrb_i;
  input cfg_bready_i;
  input cfg_arvalid_i;
  input [31:0]cfg_araddr_i;
  input cfg_rready_i;
  input [7:0]utmi_data_in_i;
  input utmi_txready_i;
  input utmi_rxvalid_i;
  input utmi_rxactive_i;
  input utmi_rxerror_i;
  input [1:0]utmi_linestate_i;
  output cfg_awready_o;
  output cfg_wready_o;
  output cfg_bvalid_o;
  output [1:0]cfg_bresp_o;
  output cfg_arready_o;
  output cfg_rvalid_o;
  output [31:0]cfg_rdata_o;
  output [1:0]cfg_rresp_o;
  output intr_o;
  output [7:0]utmi_data_out_o;
  output utmi_txvalid_o;
  output [1:0]utmi_op_mode_o;
  output [1:0]utmi_xcvrselect_o;
  output utmi_termselect_o;
  output utmi_dppulldown_o;
  output utmi_dmpulldown_o;
  output utmi_reset_o;

  wire \<const0> ;
  wire bvalid_q_i_1_n_0;
  wire [31:0]cfg_araddr_i;
  wire cfg_arready_o;
  wire cfg_arvalid_i;
  wire [31:0]cfg_awaddr_i;
  wire cfg_awready_o;
  wire cfg_awvalid_i;
  wire cfg_bready_i;
  wire cfg_bvalid_o;
  wire [31:0]cfg_rdata_o;
  wire cfg_rready_i;
  wire cfg_rvalid_o;
  wire [31:0]cfg_wdata_i;
  wire cfg_wready_o;
  wire cfg_wvalid_i;
  wire clk_i;
  wire [2:2]data1;
  (* MARK_DEBUG *) wire device_det_q;
  wire device_det_q_i_1_n_0;
  (* MARK_DEBUG *) wire err_cond_q;
  wire fifo_flush_q_reg_n_0;
  wire [7:0]fifo_rx_data_w;
  wire fifo_rx_push_w;
  wire [7:0]fifo_tx_data_w;
  wire fifo_tx_pop_w;
  wire in_transfer_q_reg_n_0;
  (* MARK_DEBUG *) wire intr_done_q;
  (* MARK_DEBUG *) wire intr_err_q;
  wire intr_err_q2;
  (* MARK_DEBUG *) wire intr_q;
  wire intr_q_i_2_n_0;
  wire intr_q_reg0;
  (* MARK_DEBUG *) wire intr_sof_q;
  wire intr_sof_q_i_1_n_0;
  wire [10:0]p_0_in__0;
  wire [30:5]p_3_in;
  wire p_44_in;
  wire [0:0]p_8_in;
  wire rd_data_q0;
  wire \rd_data_q[24]_i_1_n_0 ;
  wire \rd_data_q[25]_i_1_n_0 ;
  wire \rd_data_q[26]_i_1_n_0 ;
  wire \rd_data_q[26]_i_2_n_0 ;
  wire \rd_data_q[27]_i_1_n_0 ;
  wire \rd_data_q[31]_i_2_n_0 ;
  wire \rd_data_q[31]_i_3_n_0 ;
  wire resp_expected_q_reg_n_0;
  wire rst_i;
  wire rvalid_q_i_1_n_0;
  wire send_sof_w;
  wire sof_irq_q;
  wire [15:0]sof_time_q_reg;
  wire sof_transfer_q_reg_n_0;
  wire \sof_value_q[10]_i_2_n_0 ;
  wire [10:0]sof_value_q_reg;
  wire transfer_start_q_reg_n_0;
  wire u_fifo_rx_n_0;
  wire u_fifo_rx_n_1;
  wire u_fifo_rx_n_2;
  wire u_fifo_rx_n_3;
  wire u_fifo_rx_n_4;
  wire u_fifo_rx_n_5;
  wire u_fifo_rx_n_6;
  wire u_fifo_rx_n_7;
  wire u_sie_n_19;
  wire u_sie_n_20;
  wire u_sie_n_21;
  wire u_sie_n_24;
  wire u_sie_n_25;
  wire u_sie_n_26;
  wire u_sie_n_27;
  wire u_sie_n_28;
  wire u_sie_n_29;
  wire u_sie_n_30;
  wire u_sie_n_31;
  wire u_sie_n_32;
  wire u_sie_n_33;
  wire u_sie_n_34;
  wire u_sie_n_35;
  wire u_sie_n_36;
  wire u_sie_n_37;
  wire u_sie_n_38;
  wire u_sie_n_39;
  wire u_sie_n_40;
  wire u_sie_n_41;
  wire u_sie_n_42;
  wire u_sie_n_43;
  wire u_sie_n_44;
  wire u_sie_n_45;
  wire u_sie_n_46;
  wire u_sie_n_47;
  wire u_sie_n_48;
  wire u_sie_n_49;
  wire u_sie_n_50;
  wire u_sie_n_51;
  wire u_sie_n_52;
  wire u_sie_n_53;
  wire u_sie_n_54;
  wire u_sie_n_55;
  wire u_sie_n_56;
  wire u_sie_n_57;
  wire u_sie_n_58;
  wire u_sie_n_59;
  wire u_sie_n_60;
  wire u_sie_n_61;
  wire u_sie_n_62;
  wire u_sie_n_63;
  wire u_sie_n_64;
  wire u_sie_n_65;
  wire u_sie_n_66;
  wire u_sie_n_67;
  wire u_sie_n_68;
  wire u_sie_n_69;
  wire u_sie_n_70;
  wire u_sie_n_71;
  wire u_sie_n_72;
  wire usb_ctrl2_phy_reset_q_i_1_n_0;
  wire usb_ctrl2_phy_reset_q_i_3_n_0;
  wire \usb_ctrl_phy_opmode_q[1]_i_2_n_0 ;
  wire \usb_ctrl_phy_opmode_q[1]_i_3_n_0 ;
  wire usb_ctrl_wr_q;
  wire usb_ctrl_wr_q0;
  wire usb_err_q_i_1_n_0;
  wire usb_irq_ack_device_detect_q;
  wire usb_irq_ack_device_detect_q_reg_n_0;
  wire usb_irq_ack_done_q;
  wire usb_irq_ack_done_q_reg_n_0;
  wire usb_irq_ack_err_q;
  wire usb_irq_ack_err_q_reg_n_0;
  wire usb_irq_ack_sof_q;
  wire usb_irq_ack_sof_q_i_2_n_0;
  wire usb_irq_ack_sof_q_reg_n_0;
  (* MARK_DEBUG *) wire usb_irq_mask_device_detect_out_w;
  wire usb_irq_mask_device_detect_q0;
  (* MARK_DEBUG *) wire usb_irq_mask_done_out_w;
  (* MARK_DEBUG *) wire usb_irq_mask_err_out_w;
  (* MARK_DEBUG *) wire usb_irq_mask_sof_out_w;
  wire usb_wr_data_wr_req_w;
  wire [15:0]usb_xfer_data_tx_len_q;
  wire usb_xfer_data_tx_len_q0;
  wire \usb_xfer_token_ep_addr_q[3]_i_2_n_0 ;
  wire [7:0]usb_xfer_token_pid_bits_q;
  wire usb_xfer_token_pid_datax_q;
  wire usb_xfer_token_start_q;
  wire usb_xfer_token_start_q1;
  wire usb_xfer_token_start_q_i_1_n_0;
  wire [7:0]utmi_data_in_i;
  wire [7:0]utmi_data_out_o;
  wire utmi_dmpulldown_o;
  wire utmi_dppulldown_o;
  wire [1:0]utmi_linestate_i;
  wire [1:0]utmi_op_mode_o;
  wire utmi_reset_o;
  wire utmi_rxactive_i;
  wire utmi_rxerror_i;
  wire utmi_rxvalid_i;
  wire utmi_termselect_o;
  wire utmi_txready_i;
  wire utmi_txvalid_o;
  wire [1:0]utmi_xcvrselect_o;
  (* MARK_DEBUG *) wire [31:0]wr_addr_q;
  wire \wr_addr_q[0]_i_1_n_0 ;
  wire \wr_addr_q[10]_i_1_n_0 ;
  wire \wr_addr_q[11]_i_1_n_0 ;
  wire \wr_addr_q[12]_i_1_n_0 ;
  wire \wr_addr_q[13]_i_1_n_0 ;
  wire \wr_addr_q[14]_i_1_n_0 ;
  wire \wr_addr_q[15]_i_1_n_0 ;
  wire \wr_addr_q[16]_i_1_n_0 ;
  wire \wr_addr_q[17]_i_1_n_0 ;
  wire \wr_addr_q[18]_i_1_n_0 ;
  wire \wr_addr_q[19]_i_1_n_0 ;
  wire \wr_addr_q[1]_i_1_n_0 ;
  wire \wr_addr_q[20]_i_1_n_0 ;
  wire \wr_addr_q[21]_i_1_n_0 ;
  wire \wr_addr_q[22]_i_1_n_0 ;
  wire \wr_addr_q[23]_i_1_n_0 ;
  wire \wr_addr_q[24]_i_1_n_0 ;
  wire \wr_addr_q[25]_i_1_n_0 ;
  wire \wr_addr_q[26]_i_1_n_0 ;
  wire \wr_addr_q[27]_i_1_n_0 ;
  wire \wr_addr_q[28]_i_1_n_0 ;
  wire \wr_addr_q[29]_i_1_n_0 ;
  wire \wr_addr_q[2]_i_1_n_0 ;
  wire \wr_addr_q[30]_i_1_n_0 ;
  wire \wr_addr_q[31]_i_1_n_0 ;
  wire \wr_addr_q[31]_i_2_n_0 ;
  wire \wr_addr_q[3]_i_1_n_0 ;
  wire \wr_addr_q[4]_i_1_n_0 ;
  wire \wr_addr_q[5]_i_1_n_0 ;
  wire \wr_addr_q[6]_i_1_n_0 ;
  wire \wr_addr_q[7]_i_1_n_0 ;
  wire \wr_addr_q[8]_i_1_n_0 ;
  wire \wr_addr_q[9]_i_1_n_0 ;
  (* MARK_DEBUG *) wire wr_addr_valid_q;
  wire wr_addr_valid_q_reg0;
  (* MARK_DEBUG *) wire [31:0]wr_data_q;
  wire \wr_data_q[0]_i_1_n_0 ;
  wire \wr_data_q[10]_i_1_n_0 ;
  wire \wr_data_q[11]_i_1_n_0 ;
  wire \wr_data_q[12]_i_1_n_0 ;
  wire \wr_data_q[13]_i_1_n_0 ;
  wire \wr_data_q[14]_i_1_n_0 ;
  wire \wr_data_q[15]_i_1_n_0 ;
  wire \wr_data_q[16]_i_1_n_0 ;
  wire \wr_data_q[17]_i_1_n_0 ;
  wire \wr_data_q[18]_i_1_n_0 ;
  wire \wr_data_q[19]_i_1_n_0 ;
  wire \wr_data_q[1]_i_1_n_0 ;
  wire \wr_data_q[20]_i_1_n_0 ;
  wire \wr_data_q[21]_i_1_n_0 ;
  wire \wr_data_q[22]_i_1_n_0 ;
  wire \wr_data_q[23]_i_1_n_0 ;
  wire \wr_data_q[24]_i_1_n_0 ;
  wire \wr_data_q[25]_i_1_n_0 ;
  wire \wr_data_q[26]_i_1_n_0 ;
  wire \wr_data_q[27]_i_1_n_0 ;
  wire \wr_data_q[28]_i_1_n_0 ;
  wire \wr_data_q[29]_i_1_n_0 ;
  wire \wr_data_q[2]_i_1_n_0 ;
  wire \wr_data_q[30]_i_1_n_0 ;
  wire \wr_data_q[31]_i_1_n_0 ;
  wire \wr_data_q[31]_i_2_n_0 ;
  wire \wr_data_q[3]_i_1_n_0 ;
  wire \wr_data_q[4]_i_1_n_0 ;
  wire \wr_data_q[5]_i_1_n_0 ;
  wire \wr_data_q[6]_i_1_n_0 ;
  wire \wr_data_q[7]_i_1_n_0 ;
  wire \wr_data_q[8]_i_1_n_0 ;
  wire \wr_data_q[9]_i_1_n_0 ;
  (* MARK_DEBUG *) wire wr_data_valid_q;
  wire wr_data_valid_q_reg0;
  wire NLW_u_fifo_tx_empty_o_UNCONNECTED;
  wire NLW_u_fifo_tx_full_o_UNCONNECTED;

  assign cfg_bresp_o[1] = \<const0> ;
  assign cfg_bresp_o[0] = \<const0> ;
  assign cfg_rresp_o[1] = \<const0> ;
  assign cfg_rresp_o[0] = \<const0> ;
  assign intr_o = intr_q;
  GND GND
       (.G(\<const0> ));
  LUT4 #(
    .INIT(16'hD5C0)) 
    bvalid_q_i_1
       (.I0(cfg_bready_i),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .I3(cfg_bvalid_o),
        .O(bvalid_q_i_1_n_0));
  FDCE bvalid_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(bvalid_q_i_1_n_0),
        .Q(cfg_bvalid_o));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT1 #(
    .INIT(2'h1)) 
    cfg_arready_o_INST_0
       (.I0(cfg_rvalid_o),
        .O(cfg_arready_o));
  LUT3 #(
    .INIT(8'h01)) 
    cfg_awready_o_INST_0
       (.I0(wr_addr_valid_q),
        .I1(cfg_bvalid_o),
        .I2(cfg_arvalid_i),
        .O(cfg_awready_o));
  LUT4 #(
    .INIT(16'h0010)) 
    cfg_wready_o_INST_0
       (.I0(cfg_bvalid_o),
        .I1(cfg_arvalid_i),
        .I2(wr_addr_valid_q),
        .I3(wr_data_valid_q),
        .O(cfg_wready_o));
  LUT4 #(
    .INIT(16'hFFF4)) 
    device_det_q_i_1
       (.I0(usb_irq_ack_device_detect_q_reg_n_0),
        .I1(device_det_q),
        .I2(utmi_linestate_i[0]),
        .I3(utmi_linestate_i[1]),
        .O(device_det_q_i_1_n_0));
  (* KEEP = "yes" *) 
  FDCE device_det_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(device_det_q_i_1_n_0),
        .Q(device_det_q));
  (* KEEP = "yes" *) 
  FDCE err_cond_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(intr_err_q2),
        .Q(err_cond_q));
  FDCE fifo_flush_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(u_sie_n_69),
        .Q(fifo_flush_q_reg_n_0));
  FDCE in_transfer_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(u_sie_n_72),
        .Q(in_transfer_q_reg_n_0));
  (* KEEP = "yes" *) 
  FDCE intr_done_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(u_sie_n_20),
        .Q(intr_done_q));
  (* KEEP = "yes" *) 
  FDCE intr_err_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(u_sie_n_21),
        .Q(intr_err_q));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    intr_q_i_1
       (.I0(intr_done_q),
        .I1(usb_irq_mask_done_out_w),
        .I2(device_det_q),
        .I3(usb_irq_mask_device_detect_out_w),
        .I4(intr_q_i_2_n_0),
        .O(intr_q_reg0));
  LUT4 #(
    .INIT(16'hF888)) 
    intr_q_i_2
       (.I0(usb_irq_mask_err_out_w),
        .I1(intr_err_q),
        .I2(usb_irq_mask_sof_out_w),
        .I3(intr_sof_q),
        .O(intr_q_i_2_n_0));
  (* KEEP = "yes" *) 
  FDCE intr_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(intr_q_reg0),
        .Q(intr_q));
  LUT3 #(
    .INIT(8'hBA)) 
    intr_sof_q_i_1
       (.I0(sof_irq_q),
        .I1(usb_irq_ack_sof_q_reg_n_0),
        .I2(intr_sof_q),
        .O(intr_sof_q_i_1_n_0));
  (* KEEP = "yes" *) 
  FDCE intr_sof_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(intr_sof_q_i_1_n_0),
        .Q(intr_sof_q));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \rd_data_q[24]_i_1 
       (.I0(\rd_data_q[26]_i_2_n_0 ),
        .I1(cfg_araddr_i[6]),
        .I2(cfg_araddr_i[7]),
        .I3(sof_time_q_reg[8]),
        .O(\rd_data_q[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \rd_data_q[25]_i_1 
       (.I0(\rd_data_q[26]_i_2_n_0 ),
        .I1(cfg_araddr_i[6]),
        .I2(cfg_araddr_i[7]),
        .I3(sof_time_q_reg[9]),
        .O(\rd_data_q[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \rd_data_q[26]_i_1 
       (.I0(\rd_data_q[26]_i_2_n_0 ),
        .I1(cfg_araddr_i[6]),
        .I2(cfg_araddr_i[7]),
        .I3(sof_time_q_reg[10]),
        .O(\rd_data_q[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \rd_data_q[26]_i_2 
       (.I0(cfg_araddr_i[4]),
        .I1(cfg_araddr_i[3]),
        .I2(cfg_araddr_i[2]),
        .I3(cfg_araddr_i[5]),
        .I4(cfg_araddr_i[0]),
        .I5(cfg_araddr_i[1]),
        .O(\rd_data_q[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \rd_data_q[27]_i_1 
       (.I0(cfg_araddr_i[2]),
        .I1(u_sie_n_47),
        .I2(cfg_araddr_i[5]),
        .I3(cfg_araddr_i[3]),
        .I4(cfg_araddr_i[4]),
        .I5(sof_time_q_reg[11]),
        .O(\rd_data_q[27]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \rd_data_q[31]_i_1 
       (.I0(cfg_rready_i),
        .I1(cfg_rvalid_o),
        .O(rd_data_q0));
  LUT5 #(
    .INIT(32'h800A8000)) 
    \rd_data_q[31]_i_2 
       (.I0(\rd_data_q[31]_i_3_n_0 ),
        .I1(usb_xfer_token_start_q),
        .I2(cfg_araddr_i[4]),
        .I3(cfg_araddr_i[3]),
        .I4(sof_time_q_reg[15]),
        .O(\rd_data_q[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rd_data_q[31]_i_3 
       (.I0(cfg_araddr_i[5]),
        .I1(cfg_araddr_i[7]),
        .I2(cfg_araddr_i[6]),
        .I3(cfg_araddr_i[1]),
        .I4(cfg_araddr_i[0]),
        .I5(cfg_araddr_i[2]),
        .O(\rd_data_q[31]_i_3_n_0 ));
  FDCE \rd_data_q_reg[0] 
       (.C(clk_i),
        .CE(rd_data_q0),
        .CLR(rst_i),
        .D(u_sie_n_46),
        .Q(cfg_rdata_o[0]));
  FDCE \rd_data_q_reg[10] 
       (.C(clk_i),
        .CE(rd_data_q0),
        .CLR(rst_i),
        .D(u_sie_n_40),
        .Q(cfg_rdata_o[10]));
  FDCE \rd_data_q_reg[11] 
       (.C(clk_i),
        .CE(rd_data_q0),
        .CLR(rst_i),
        .D(u_sie_n_39),
        .Q(cfg_rdata_o[11]));
  FDCE \rd_data_q_reg[12] 
       (.C(clk_i),
        .CE(rd_data_q0),
        .CLR(rst_i),
        .D(u_sie_n_38),
        .Q(cfg_rdata_o[12]));
  FDCE \rd_data_q_reg[13] 
       (.C(clk_i),
        .CE(rd_data_q0),
        .CLR(rst_i),
        .D(u_sie_n_37),
        .Q(cfg_rdata_o[13]));
  FDCE \rd_data_q_reg[14] 
       (.C(clk_i),
        .CE(rd_data_q0),
        .CLR(rst_i),
        .D(u_sie_n_36),
        .Q(cfg_rdata_o[14]));
  FDCE \rd_data_q_reg[15] 
       (.C(clk_i),
        .CE(rd_data_q0),
        .CLR(rst_i),
        .D(u_sie_n_35),
        .Q(cfg_rdata_o[15]));
  FDCE \rd_data_q_reg[16] 
       (.C(clk_i),
        .CE(rd_data_q0),
        .CLR(rst_i),
        .D(u_sie_n_34),
        .Q(cfg_rdata_o[16]));
  FDCE \rd_data_q_reg[17] 
       (.C(clk_i),
        .CE(rd_data_q0),
        .CLR(rst_i),
        .D(u_sie_n_33),
        .Q(cfg_rdata_o[17]));
  FDCE \rd_data_q_reg[18] 
       (.C(clk_i),
        .CE(rd_data_q0),
        .CLR(rst_i),
        .D(u_sie_n_32),
        .Q(cfg_rdata_o[18]));
  FDCE \rd_data_q_reg[19] 
       (.C(clk_i),
        .CE(rd_data_q0),
        .CLR(rst_i),
        .D(u_sie_n_31),
        .Q(cfg_rdata_o[19]));
  FDCE \rd_data_q_reg[1] 
       (.C(clk_i),
        .CE(rd_data_q0),
        .CLR(rst_i),
        .D(u_sie_n_45),
        .Q(cfg_rdata_o[1]));
  FDCE \rd_data_q_reg[20] 
       (.C(clk_i),
        .CE(rd_data_q0),
        .CLR(rst_i),
        .D(u_sie_n_30),
        .Q(cfg_rdata_o[20]));
  FDCE \rd_data_q_reg[21] 
       (.C(clk_i),
        .CE(rd_data_q0),
        .CLR(rst_i),
        .D(u_sie_n_29),
        .Q(cfg_rdata_o[21]));
  FDCE \rd_data_q_reg[22] 
       (.C(clk_i),
        .CE(rd_data_q0),
        .CLR(rst_i),
        .D(u_sie_n_28),
        .Q(cfg_rdata_o[22]));
  FDCE \rd_data_q_reg[23] 
       (.C(clk_i),
        .CE(rd_data_q0),
        .CLR(rst_i),
        .D(u_sie_n_27),
        .Q(cfg_rdata_o[23]));
  FDCE \rd_data_q_reg[24] 
       (.C(clk_i),
        .CE(rd_data_q0),
        .CLR(rst_i),
        .D(\rd_data_q[24]_i_1_n_0 ),
        .Q(cfg_rdata_o[24]));
  FDCE \rd_data_q_reg[25] 
       (.C(clk_i),
        .CE(rd_data_q0),
        .CLR(rst_i),
        .D(\rd_data_q[25]_i_1_n_0 ),
        .Q(cfg_rdata_o[25]));
  FDCE \rd_data_q_reg[26] 
       (.C(clk_i),
        .CE(rd_data_q0),
        .CLR(rst_i),
        .D(\rd_data_q[26]_i_1_n_0 ),
        .Q(cfg_rdata_o[26]));
  FDCE \rd_data_q_reg[27] 
       (.C(clk_i),
        .CE(rd_data_q0),
        .CLR(rst_i),
        .D(\rd_data_q[27]_i_1_n_0 ),
        .Q(cfg_rdata_o[27]));
  FDCE \rd_data_q_reg[28] 
       (.C(clk_i),
        .CE(rd_data_q0),
        .CLR(rst_i),
        .D(u_sie_n_26),
        .Q(cfg_rdata_o[28]));
  FDCE \rd_data_q_reg[29] 
       (.C(clk_i),
        .CE(rd_data_q0),
        .CLR(rst_i),
        .D(u_sie_n_25),
        .Q(cfg_rdata_o[29]));
  FDCE \rd_data_q_reg[2] 
       (.C(clk_i),
        .CE(rd_data_q0),
        .CLR(rst_i),
        .D(u_sie_n_44),
        .Q(cfg_rdata_o[2]));
  FDCE \rd_data_q_reg[30] 
       (.C(clk_i),
        .CE(rd_data_q0),
        .CLR(rst_i),
        .D(u_sie_n_24),
        .Q(cfg_rdata_o[30]));
  FDCE \rd_data_q_reg[31] 
       (.C(clk_i),
        .CE(rd_data_q0),
        .CLR(rst_i),
        .D(\rd_data_q[31]_i_2_n_0 ),
        .Q(cfg_rdata_o[31]));
  FDCE \rd_data_q_reg[3] 
       (.C(clk_i),
        .CE(rd_data_q0),
        .CLR(rst_i),
        .D(u_sie_n_43),
        .Q(cfg_rdata_o[3]));
  FDCE \rd_data_q_reg[4] 
       (.C(clk_i),
        .CE(rd_data_q0),
        .CLR(rst_i),
        .D(u_fifo_rx_n_3),
        .Q(cfg_rdata_o[4]));
  FDCE \rd_data_q_reg[5] 
       (.C(clk_i),
        .CE(rd_data_q0),
        .CLR(rst_i),
        .D(u_fifo_rx_n_2),
        .Q(cfg_rdata_o[5]));
  FDCE \rd_data_q_reg[6] 
       (.C(clk_i),
        .CE(rd_data_q0),
        .CLR(rst_i),
        .D(u_fifo_rx_n_1),
        .Q(cfg_rdata_o[6]));
  FDCE \rd_data_q_reg[7] 
       (.C(clk_i),
        .CE(rd_data_q0),
        .CLR(rst_i),
        .D(u_fifo_rx_n_0),
        .Q(cfg_rdata_o[7]));
  FDCE \rd_data_q_reg[8] 
       (.C(clk_i),
        .CE(rd_data_q0),
        .CLR(rst_i),
        .D(u_sie_n_42),
        .Q(cfg_rdata_o[8]));
  FDCE \rd_data_q_reg[9] 
       (.C(clk_i),
        .CE(rd_data_q0),
        .CLR(rst_i),
        .D(u_sie_n_41),
        .Q(cfg_rdata_o[9]));
  FDCE resp_expected_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(u_sie_n_71),
        .Q(resp_expected_q_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h74)) 
    rvalid_q_i_1
       (.I0(cfg_rready_i),
        .I1(cfg_rvalid_o),
        .I2(cfg_arvalid_i),
        .O(rvalid_q_i_1_n_0));
  FDCE rvalid_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(rvalid_q_i_1_n_0),
        .Q(cfg_rvalid_o));
  FDCE sof_irq_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(send_sof_w),
        .Q(sof_irq_q));
  FDCE \sof_time_q_reg[0] 
       (.C(clk_i),
        .CE(u_sie_n_19),
        .CLR(rst_i),
        .D(u_sie_n_55),
        .Q(sof_time_q_reg[0]));
  FDCE \sof_time_q_reg[10] 
       (.C(clk_i),
        .CE(u_sie_n_19),
        .CLR(rst_i),
        .D(u_sie_n_61),
        .Q(sof_time_q_reg[10]));
  FDCE \sof_time_q_reg[11] 
       (.C(clk_i),
        .CE(u_sie_n_19),
        .CLR(rst_i),
        .D(u_sie_n_60),
        .Q(sof_time_q_reg[11]));
  FDCE \sof_time_q_reg[12] 
       (.C(clk_i),
        .CE(u_sie_n_19),
        .CLR(rst_i),
        .D(u_sie_n_67),
        .Q(sof_time_q_reg[12]));
  FDCE \sof_time_q_reg[13] 
       (.C(clk_i),
        .CE(u_sie_n_19),
        .CLR(rst_i),
        .D(u_sie_n_66),
        .Q(sof_time_q_reg[13]));
  FDCE \sof_time_q_reg[14] 
       (.C(clk_i),
        .CE(u_sie_n_19),
        .CLR(rst_i),
        .D(u_sie_n_65),
        .Q(sof_time_q_reg[14]));
  FDCE \sof_time_q_reg[15] 
       (.C(clk_i),
        .CE(u_sie_n_19),
        .CLR(rst_i),
        .D(u_sie_n_64),
        .Q(sof_time_q_reg[15]));
  FDCE \sof_time_q_reg[1] 
       (.C(clk_i),
        .CE(u_sie_n_19),
        .CLR(rst_i),
        .D(u_sie_n_54),
        .Q(sof_time_q_reg[1]));
  FDCE \sof_time_q_reg[2] 
       (.C(clk_i),
        .CE(u_sie_n_19),
        .CLR(rst_i),
        .D(u_sie_n_53),
        .Q(sof_time_q_reg[2]));
  FDCE \sof_time_q_reg[3] 
       (.C(clk_i),
        .CE(u_sie_n_19),
        .CLR(rst_i),
        .D(u_sie_n_52),
        .Q(sof_time_q_reg[3]));
  FDCE \sof_time_q_reg[4] 
       (.C(clk_i),
        .CE(u_sie_n_19),
        .CLR(rst_i),
        .D(u_sie_n_59),
        .Q(sof_time_q_reg[4]));
  FDCE \sof_time_q_reg[5] 
       (.C(clk_i),
        .CE(u_sie_n_19),
        .CLR(rst_i),
        .D(u_sie_n_58),
        .Q(sof_time_q_reg[5]));
  FDCE \sof_time_q_reg[6] 
       (.C(clk_i),
        .CE(u_sie_n_19),
        .CLR(rst_i),
        .D(u_sie_n_57),
        .Q(sof_time_q_reg[6]));
  FDCE \sof_time_q_reg[7] 
       (.C(clk_i),
        .CE(u_sie_n_19),
        .CLR(rst_i),
        .D(u_sie_n_56),
        .Q(sof_time_q_reg[7]));
  FDCE \sof_time_q_reg[8] 
       (.C(clk_i),
        .CE(u_sie_n_19),
        .CLR(rst_i),
        .D(u_sie_n_63),
        .Q(sof_time_q_reg[8]));
  FDCE \sof_time_q_reg[9] 
       (.C(clk_i),
        .CE(u_sie_n_19),
        .CLR(rst_i),
        .D(u_sie_n_62),
        .Q(sof_time_q_reg[9]));
  FDCE sof_transfer_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(u_sie_n_70),
        .Q(sof_transfer_q_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \sof_value_q[0]_i_1 
       (.I0(sof_value_q_reg[0]),
        .O(p_0_in__0[0]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \sof_value_q[10]_i_1 
       (.I0(sof_value_q_reg[10]),
        .I1(sof_value_q_reg[8]),
        .I2(sof_value_q_reg[6]),
        .I3(\sof_value_q[10]_i_2_n_0 ),
        .I4(sof_value_q_reg[7]),
        .I5(sof_value_q_reg[9]),
        .O(p_0_in__0[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sof_value_q[10]_i_2 
       (.I0(sof_value_q_reg[5]),
        .I1(sof_value_q_reg[3]),
        .I2(sof_value_q_reg[0]),
        .I3(sof_value_q_reg[1]),
        .I4(sof_value_q_reg[2]),
        .I5(sof_value_q_reg[4]),
        .O(\sof_value_q[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sof_value_q[1]_i_1 
       (.I0(sof_value_q_reg[0]),
        .I1(sof_value_q_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \sof_value_q[2]_i_1 
       (.I0(sof_value_q_reg[2]),
        .I1(sof_value_q_reg[1]),
        .I2(sof_value_q_reg[0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \sof_value_q[3]_i_1 
       (.I0(sof_value_q_reg[3]),
        .I1(sof_value_q_reg[0]),
        .I2(sof_value_q_reg[1]),
        .I3(sof_value_q_reg[2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \sof_value_q[4]_i_1 
       (.I0(sof_value_q_reg[4]),
        .I1(sof_value_q_reg[2]),
        .I2(sof_value_q_reg[1]),
        .I3(sof_value_q_reg[0]),
        .I4(sof_value_q_reg[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \sof_value_q[5]_i_1 
       (.I0(sof_value_q_reg[5]),
        .I1(sof_value_q_reg[3]),
        .I2(sof_value_q_reg[0]),
        .I3(sof_value_q_reg[1]),
        .I4(sof_value_q_reg[2]),
        .I5(sof_value_q_reg[4]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sof_value_q[6]_i_1 
       (.I0(sof_value_q_reg[6]),
        .I1(\sof_value_q[10]_i_2_n_0 ),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \sof_value_q[7]_i_1 
       (.I0(sof_value_q_reg[7]),
        .I1(\sof_value_q[10]_i_2_n_0 ),
        .I2(sof_value_q_reg[6]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \sof_value_q[8]_i_1 
       (.I0(sof_value_q_reg[8]),
        .I1(sof_value_q_reg[6]),
        .I2(\sof_value_q[10]_i_2_n_0 ),
        .I3(sof_value_q_reg[7]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \sof_value_q[9]_i_1 
       (.I0(sof_value_q_reg[9]),
        .I1(sof_value_q_reg[7]),
        .I2(\sof_value_q[10]_i_2_n_0 ),
        .I3(sof_value_q_reg[6]),
        .I4(sof_value_q_reg[8]),
        .O(p_0_in__0[9]));
  FDCE \sof_value_q_reg[0] 
       (.C(clk_i),
        .CE(send_sof_w),
        .CLR(rst_i),
        .D(p_0_in__0[0]),
        .Q(sof_value_q_reg[0]));
  FDCE \sof_value_q_reg[10] 
       (.C(clk_i),
        .CE(send_sof_w),
        .CLR(rst_i),
        .D(p_0_in__0[10]),
        .Q(sof_value_q_reg[10]));
  FDCE \sof_value_q_reg[1] 
       (.C(clk_i),
        .CE(send_sof_w),
        .CLR(rst_i),
        .D(p_0_in__0[1]),
        .Q(sof_value_q_reg[1]));
  FDCE \sof_value_q_reg[2] 
       (.C(clk_i),
        .CE(send_sof_w),
        .CLR(rst_i),
        .D(p_0_in__0[2]),
        .Q(sof_value_q_reg[2]));
  FDCE \sof_value_q_reg[3] 
       (.C(clk_i),
        .CE(send_sof_w),
        .CLR(rst_i),
        .D(p_0_in__0[3]),
        .Q(sof_value_q_reg[3]));
  FDCE \sof_value_q_reg[4] 
       (.C(clk_i),
        .CE(send_sof_w),
        .CLR(rst_i),
        .D(p_0_in__0[4]),
        .Q(sof_value_q_reg[4]));
  FDCE \sof_value_q_reg[5] 
       (.C(clk_i),
        .CE(send_sof_w),
        .CLR(rst_i),
        .D(p_0_in__0[5]),
        .Q(sof_value_q_reg[5]));
  FDCE \sof_value_q_reg[6] 
       (.C(clk_i),
        .CE(send_sof_w),
        .CLR(rst_i),
        .D(p_0_in__0[6]),
        .Q(sof_value_q_reg[6]));
  FDCE \sof_value_q_reg[7] 
       (.C(clk_i),
        .CE(send_sof_w),
        .CLR(rst_i),
        .D(p_0_in__0[7]),
        .Q(sof_value_q_reg[7]));
  FDCE \sof_value_q_reg[8] 
       (.C(clk_i),
        .CE(send_sof_w),
        .CLR(rst_i),
        .D(p_0_in__0[8]),
        .Q(sof_value_q_reg[8]));
  FDCE \sof_value_q_reg[9] 
       (.C(clk_i),
        .CE(send_sof_w),
        .CLR(rst_i),
        .D(p_0_in__0[9]),
        .Q(sof_value_q_reg[9]));
  FDCE transfer_start_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(u_sie_n_68),
        .Q(transfer_start_q_reg_n_0));
  bd_soc_usb_controller_0_usbh_fifo u_fifo_rx
       (.D({u_fifo_rx_n_0,u_fifo_rx_n_1,u_fifo_rx_n_2,u_fifo_rx_n_3}),
        .Q(p_3_in[7:5]),
        .cfg_araddr_i(cfg_araddr_i[7:0]),
        .cfg_arvalid_i(cfg_arvalid_i),
        .clk_i(clk_i),
        .din(fifo_rx_data_w),
        .out(usb_irq_mask_device_detect_out_w),
        .p_8_in(p_8_in),
        .\rd_data_q_reg[0] (usb_irq_mask_sof_out_w),
        .\rd_data_q_reg[1] (usb_irq_mask_done_out_w),
        .\rd_data_q_reg[2] (usb_irq_mask_err_out_w),
        .\rd_data_q_reg[4] (u_sie_n_48),
        .\rd_data_q_reg[5] (u_sie_n_49),
        .\rd_data_q_reg[6] (u_sie_n_50),
        .\rd_data_q_reg[7] (u_sie_n_51),
        .rst_i(rst_i),
        .usb_irq_mask_device_detect_q_reg(u_fifo_rx_n_4),
        .usb_irq_mask_done_q_reg(u_fifo_rx_n_6),
        .usb_irq_mask_err_q_reg(u_fifo_rx_n_5),
        .usb_irq_mask_sof_q_reg(u_fifo_rx_n_7),
        .utmi_dmpulldown_o(utmi_dmpulldown_o),
        .utmi_dppulldown_o(utmi_dppulldown_o),
        .utmi_op_mode_o(utmi_op_mode_o),
        .utmi_termselect_o(utmi_termselect_o),
        .utmi_xcvrselect_o(utmi_xcvrselect_o),
        .wr_en(fifo_rx_push_w),
        .xpm_fifo_sync_inst_i_2_0(cfg_rvalid_o));
  (* ADDR_W = "6" *) 
  (* DEPTH = "64" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* WIDTH = "8" *) 
  bd_soc_usb_controller_0_usbh_fifo__xdcDup__1 u_fifo_tx
       (.clk_i(clk_i),
        .data_i(wr_data_q[7:0]),
        .data_o(fifo_tx_data_w),
        .empty_o(NLW_u_fifo_tx_empty_o_UNCONNECTED),
        .flush_i(1'b0),
        .full_o(NLW_u_fifo_tx_full_o_UNCONNECTED),
        .pop_i(fifo_tx_pop_w),
        .push_i(usb_wr_data_wr_req_w),
        .rst_i(rst_i));
  LUT5 #(
    .INIT(32'h00002000)) 
    u_fifo_tx_i_1
       (.I0(usb_ctrl2_phy_reset_q_i_3_n_0),
        .I1(wr_addr_q[3]),
        .I2(wr_data_valid_q),
        .I3(wr_addr_valid_q),
        .I4(wr_addr_q[2]),
        .O(usb_wr_data_wr_req_w));
  bd_soc_usb_controller_0_usbh_sie u_sie
       (.D({u_sie_n_24,u_sie_n_25,u_sie_n_26,u_sie_n_27,u_sie_n_28,u_sie_n_29,u_sie_n_30,u_sie_n_31,u_sie_n_32,u_sie_n_33,u_sie_n_34,u_sie_n_35,u_sie_n_36,u_sie_n_37,u_sie_n_38,u_sie_n_39,u_sie_n_40,u_sie_n_41,u_sie_n_42,u_sie_n_43,u_sie_n_44,u_sie_n_45,u_sie_n_46}),
        .\FSM_onehot_state_q_reg[8]_0 (u_sie_n_19),
        .O({u_sie_n_52,u_sie_n_53,u_sie_n_54,u_sie_n_55}),
        .Q(usb_xfer_data_tx_len_q),
        .\cfg_araddr[5] (u_sie_n_48),
        .\cfg_araddr[5]_0 (u_sie_n_49),
        .\cfg_araddr[5]_1 (u_sie_n_50),
        .\cfg_araddr[5]_2 (u_sie_n_51),
        .\cfg_araddr[7] (u_sie_n_47),
        .cfg_araddr_i(cfg_araddr_i[7:0]),
        .clk_i(clk_i),
        .data1(data1),
        .data_o(fifo_tx_data_w),
        .din(fifo_rx_data_w),
        .fifo_flush_q_reg(fifo_flush_q_reg_n_0),
        .in_transfer_q_reg_0(in_transfer_q_reg_n_0),
        .intr_done_q_reg(usb_irq_ack_done_q_reg_n_0),
        .intr_err_q2(intr_err_q2),
        .intr_err_q_reg(usb_irq_ack_err_q_reg_n_0),
        .intr_err_q_reg_0(intr_err_q),
        .intr_err_q_reg_1(err_cond_q),
        .out(intr_done_q),
        .p_3_in({p_3_in[30:29],p_3_in[15:5]}),
        .p_8_in(p_8_in),
        .pop_i(fifo_tx_pop_w),
        .\rd_data_q_reg[0] (u_fifo_rx_n_7),
        .\rd_data_q_reg[0]_0 (intr_sof_q),
        .\rd_data_q_reg[1] (u_fifo_rx_n_6),
        .\rd_data_q_reg[2] (u_fifo_rx_n_5),
        .\rd_data_q_reg[3] (u_fifo_rx_n_4),
        .rst_i(rst_i),
        .send_sof_q_reg_0(sof_transfer_q_reg_n_0),
        .send_sof_w(send_sof_w),
        .sof_time_q_reg(sof_time_q_reg),
        .\sof_time_q_reg[10] ({u_sie_n_60,u_sie_n_61,u_sie_n_62,u_sie_n_63}),
        .\sof_time_q_reg[12] ({u_sie_n_64,u_sie_n_65,u_sie_n_66,u_sie_n_67}),
        .\sof_time_q_reg[7] ({u_sie_n_56,u_sie_n_57,u_sie_n_58,u_sie_n_59}),
        .\token_q_reg[5]_0 (sof_value_q_reg),
        .transfer_start_q_reg(u_sie_n_70),
        .usb_irq_ack_done_q_reg(u_sie_n_20),
        .usb_irq_ack_err_q_reg(u_sie_n_21),
        .usb_xfer_token_ack_q_reg(u_sie_n_71),
        .usb_xfer_token_in_q_reg(u_sie_n_72),
        .usb_xfer_token_pid_datax_q(usb_xfer_token_pid_datax_q),
        .usb_xfer_token_start_q(usb_xfer_token_start_q),
        .usb_xfer_token_start_q_reg(u_sie_n_68),
        .usb_xfer_token_start_q_reg_0(u_sie_n_69),
        .utmi_data_in_i(utmi_data_in_i),
        .\utmi_data_out[7] (usb_xfer_token_pid_bits_q),
        .utmi_data_out_o(utmi_data_out_o),
        .utmi_linestate_i(utmi_linestate_i),
        .utmi_rxactive_i(utmi_rxactive_i),
        .utmi_rxvalid_i(utmi_rxvalid_i),
        .utmi_txready_i(utmi_txready_i),
        .utmi_txvalid_o(utmi_txvalid_o),
        .wait_resp_q_reg_0(transfer_start_q_reg_n_0),
        .wait_resp_q_reg_1(resp_expected_q_reg_n_0),
        .wr_en(fifo_rx_push_w));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    usb_ctrl2_phy_reset_q_i_1
       (.I0(wr_data_q[0]),
        .I1(wr_addr_q[3]),
        .I2(p_44_in),
        .I3(wr_addr_q[2]),
        .I4(usb_ctrl2_phy_reset_q_i_3_n_0),
        .I5(utmi_reset_o),
        .O(usb_ctrl2_phy_reset_q_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    usb_ctrl2_phy_reset_q_i_2
       (.I0(wr_addr_valid_q),
        .I1(wr_data_valid_q),
        .O(p_44_in));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    usb_ctrl2_phy_reset_q_i_3
       (.I0(wr_addr_q[7]),
        .I1(wr_addr_q[6]),
        .I2(wr_addr_q[4]),
        .I3(wr_addr_q[5]),
        .I4(wr_addr_q[0]),
        .I5(wr_addr_q[1]),
        .O(usb_ctrl2_phy_reset_q_i_3_n_0));
  FDCE usb_ctrl2_phy_reset_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(usb_ctrl2_phy_reset_q_i_1_n_0),
        .Q(utmi_reset_o));
  FDCE usb_ctrl_enable_sof_q_reg
       (.C(clk_i),
        .CE(usb_ctrl_wr_q0),
        .CLR(rst_i),
        .D(wr_data_q[0]),
        .Q(p_8_in));
  FDCE usb_ctrl_phy_dmpulldown_q_reg
       (.C(clk_i),
        .CE(usb_ctrl_wr_q0),
        .CLR(rst_i),
        .D(wr_data_q[7]),
        .Q(utmi_dmpulldown_o));
  FDCE usb_ctrl_phy_dppulldown_q_reg
       (.C(clk_i),
        .CE(usb_ctrl_wr_q0),
        .CLR(rst_i),
        .D(wr_data_q[6]),
        .Q(utmi_dppulldown_o));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \usb_ctrl_phy_opmode_q[1]_i_1 
       (.I0(wr_addr_q[1]),
        .I1(wr_addr_q[0]),
        .I2(wr_addr_q[5]),
        .I3(wr_addr_q[2]),
        .I4(\usb_ctrl_phy_opmode_q[1]_i_2_n_0 ),
        .I5(\usb_ctrl_phy_opmode_q[1]_i_3_n_0 ),
        .O(usb_ctrl_wr_q0));
  LUT3 #(
    .INIT(8'h01)) 
    \usb_ctrl_phy_opmode_q[1]_i_2 
       (.I0(wr_addr_q[4]),
        .I1(wr_addr_q[6]),
        .I2(wr_addr_q[7]),
        .O(\usb_ctrl_phy_opmode_q[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \usb_ctrl_phy_opmode_q[1]_i_3 
       (.I0(wr_addr_q[3]),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .O(\usb_ctrl_phy_opmode_q[1]_i_3_n_0 ));
  FDCE \usb_ctrl_phy_opmode_q_reg[0] 
       (.C(clk_i),
        .CE(usb_ctrl_wr_q0),
        .CLR(rst_i),
        .D(wr_data_q[1]),
        .Q(utmi_op_mode_o[0]));
  FDCE \usb_ctrl_phy_opmode_q_reg[1] 
       (.C(clk_i),
        .CE(usb_ctrl_wr_q0),
        .CLR(rst_i),
        .D(wr_data_q[2]),
        .Q(utmi_op_mode_o[1]));
  FDCE usb_ctrl_phy_termselect_q_reg
       (.C(clk_i),
        .CE(usb_ctrl_wr_q0),
        .CLR(rst_i),
        .D(wr_data_q[5]),
        .Q(utmi_termselect_o));
  FDCE \usb_ctrl_phy_xcvrselect_q_reg[0] 
       (.C(clk_i),
        .CE(usb_ctrl_wr_q0),
        .CLR(rst_i),
        .D(wr_data_q[3]),
        .Q(utmi_xcvrselect_o[0]));
  FDCE \usb_ctrl_phy_xcvrselect_q_reg[1] 
       (.C(clk_i),
        .CE(usb_ctrl_wr_q0),
        .CLR(rst_i),
        .D(wr_data_q[4]),
        .Q(utmi_xcvrselect_o[1]));
  FDCE usb_ctrl_wr_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(usb_ctrl_wr_q0),
        .Q(usb_ctrl_wr_q));
  LUT3 #(
    .INIT(8'h54)) 
    usb_err_q_i_1
       (.I0(usb_ctrl_wr_q),
        .I1(utmi_rxerror_i),
        .I2(data1),
        .O(usb_err_q_i_1_n_0));
  FDCE usb_err_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(usb_err_q_i_1_n_0),
        .Q(data1));
  LUT5 #(
    .INIT(32'h80000000)) 
    usb_irq_ack_device_detect_q_i_1
       (.I0(wr_addr_valid_q),
        .I1(wr_data_valid_q),
        .I2(wr_addr_q[3]),
        .I3(usb_irq_ack_sof_q_i_2_n_0),
        .I4(wr_data_q[3]),
        .O(usb_irq_ack_device_detect_q));
  FDCE usb_irq_ack_device_detect_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(usb_irq_ack_device_detect_q),
        .Q(usb_irq_ack_device_detect_q_reg_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    usb_irq_ack_done_q_i_1
       (.I0(wr_addr_valid_q),
        .I1(wr_data_valid_q),
        .I2(wr_addr_q[3]),
        .I3(usb_irq_ack_sof_q_i_2_n_0),
        .I4(wr_data_q[1]),
        .O(usb_irq_ack_done_q));
  FDCE usb_irq_ack_done_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(usb_irq_ack_done_q),
        .Q(usb_irq_ack_done_q_reg_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    usb_irq_ack_err_q_i_1
       (.I0(wr_addr_valid_q),
        .I1(wr_data_valid_q),
        .I2(wr_addr_q[3]),
        .I3(usb_irq_ack_sof_q_i_2_n_0),
        .I4(wr_data_q[2]),
        .O(usb_irq_ack_err_q));
  FDCE usb_irq_ack_err_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(usb_irq_ack_err_q),
        .Q(usb_irq_ack_err_q_reg_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    usb_irq_ack_sof_q_i_1
       (.I0(wr_addr_valid_q),
        .I1(wr_data_valid_q),
        .I2(wr_addr_q[3]),
        .I3(usb_irq_ack_sof_q_i_2_n_0),
        .I4(wr_data_q[0]),
        .O(usb_irq_ack_sof_q));
  LUT5 #(
    .INIT(32'h00000002)) 
    usb_irq_ack_sof_q_i_2
       (.I0(\usb_ctrl_phy_opmode_q[1]_i_2_n_0 ),
        .I1(wr_addr_q[2]),
        .I2(wr_addr_q[5]),
        .I3(wr_addr_q[0]),
        .I4(wr_addr_q[1]),
        .O(usb_irq_ack_sof_q_i_2_n_0));
  FDCE usb_irq_ack_sof_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(usb_irq_ack_sof_q),
        .Q(usb_irq_ack_sof_q_reg_n_0));
  FDCE usb_irq_mask_device_detect_q_reg
       (.C(clk_i),
        .CE(usb_irq_mask_device_detect_q0),
        .CLR(rst_i),
        .D(wr_data_q[3]),
        .Q(usb_irq_mask_device_detect_out_w));
  FDCE usb_irq_mask_done_q_reg
       (.C(clk_i),
        .CE(usb_irq_mask_device_detect_q0),
        .CLR(rst_i),
        .D(wr_data_q[1]),
        .Q(usb_irq_mask_done_out_w));
  FDCE usb_irq_mask_err_q_reg
       (.C(clk_i),
        .CE(usb_irq_mask_device_detect_q0),
        .CLR(rst_i),
        .D(wr_data_q[2]),
        .Q(usb_irq_mask_err_out_w));
  LUT5 #(
    .INIT(32'h00002000)) 
    usb_irq_mask_sof_q_i_1
       (.I0(\usb_xfer_token_ep_addr_q[3]_i_2_n_0 ),
        .I1(wr_addr_q[2]),
        .I2(wr_addr_valid_q),
        .I3(wr_data_valid_q),
        .I4(wr_addr_q[3]),
        .O(usb_irq_mask_device_detect_q0));
  FDCE usb_irq_mask_sof_q_reg
       (.C(clk_i),
        .CE(usb_irq_mask_device_detect_q0),
        .CLR(rst_i),
        .D(wr_data_q[0]),
        .Q(usb_irq_mask_sof_out_w));
  LUT5 #(
    .INIT(32'h20000000)) 
    \usb_xfer_data_tx_len_q[15]_i_1 
       (.I0(\usb_xfer_token_ep_addr_q[3]_i_2_n_0 ),
        .I1(wr_addr_q[3]),
        .I2(wr_data_valid_q),
        .I3(wr_addr_valid_q),
        .I4(wr_addr_q[2]),
        .O(usb_xfer_data_tx_len_q0));
  FDCE \usb_xfer_data_tx_len_q_reg[0] 
       (.C(clk_i),
        .CE(usb_xfer_data_tx_len_q0),
        .CLR(rst_i),
        .D(wr_data_q[0]),
        .Q(usb_xfer_data_tx_len_q[0]));
  FDCE \usb_xfer_data_tx_len_q_reg[10] 
       (.C(clk_i),
        .CE(usb_xfer_data_tx_len_q0),
        .CLR(rst_i),
        .D(wr_data_q[10]),
        .Q(usb_xfer_data_tx_len_q[10]));
  FDCE \usb_xfer_data_tx_len_q_reg[11] 
       (.C(clk_i),
        .CE(usb_xfer_data_tx_len_q0),
        .CLR(rst_i),
        .D(wr_data_q[11]),
        .Q(usb_xfer_data_tx_len_q[11]));
  FDCE \usb_xfer_data_tx_len_q_reg[12] 
       (.C(clk_i),
        .CE(usb_xfer_data_tx_len_q0),
        .CLR(rst_i),
        .D(wr_data_q[12]),
        .Q(usb_xfer_data_tx_len_q[12]));
  FDCE \usb_xfer_data_tx_len_q_reg[13] 
       (.C(clk_i),
        .CE(usb_xfer_data_tx_len_q0),
        .CLR(rst_i),
        .D(wr_data_q[13]),
        .Q(usb_xfer_data_tx_len_q[13]));
  FDCE \usb_xfer_data_tx_len_q_reg[14] 
       (.C(clk_i),
        .CE(usb_xfer_data_tx_len_q0),
        .CLR(rst_i),
        .D(wr_data_q[14]),
        .Q(usb_xfer_data_tx_len_q[14]));
  FDCE \usb_xfer_data_tx_len_q_reg[15] 
       (.C(clk_i),
        .CE(usb_xfer_data_tx_len_q0),
        .CLR(rst_i),
        .D(wr_data_q[15]),
        .Q(usb_xfer_data_tx_len_q[15]));
  FDCE \usb_xfer_data_tx_len_q_reg[1] 
       (.C(clk_i),
        .CE(usb_xfer_data_tx_len_q0),
        .CLR(rst_i),
        .D(wr_data_q[1]),
        .Q(usb_xfer_data_tx_len_q[1]));
  FDCE \usb_xfer_data_tx_len_q_reg[2] 
       (.C(clk_i),
        .CE(usb_xfer_data_tx_len_q0),
        .CLR(rst_i),
        .D(wr_data_q[2]),
        .Q(usb_xfer_data_tx_len_q[2]));
  FDCE \usb_xfer_data_tx_len_q_reg[3] 
       (.C(clk_i),
        .CE(usb_xfer_data_tx_len_q0),
        .CLR(rst_i),
        .D(wr_data_q[3]),
        .Q(usb_xfer_data_tx_len_q[3]));
  FDCE \usb_xfer_data_tx_len_q_reg[4] 
       (.C(clk_i),
        .CE(usb_xfer_data_tx_len_q0),
        .CLR(rst_i),
        .D(wr_data_q[4]),
        .Q(usb_xfer_data_tx_len_q[4]));
  FDCE \usb_xfer_data_tx_len_q_reg[5] 
       (.C(clk_i),
        .CE(usb_xfer_data_tx_len_q0),
        .CLR(rst_i),
        .D(wr_data_q[5]),
        .Q(usb_xfer_data_tx_len_q[5]));
  FDCE \usb_xfer_data_tx_len_q_reg[6] 
       (.C(clk_i),
        .CE(usb_xfer_data_tx_len_q0),
        .CLR(rst_i),
        .D(wr_data_q[6]),
        .Q(usb_xfer_data_tx_len_q[6]));
  FDCE \usb_xfer_data_tx_len_q_reg[7] 
       (.C(clk_i),
        .CE(usb_xfer_data_tx_len_q0),
        .CLR(rst_i),
        .D(wr_data_q[7]),
        .Q(usb_xfer_data_tx_len_q[7]));
  FDCE \usb_xfer_data_tx_len_q_reg[8] 
       (.C(clk_i),
        .CE(usb_xfer_data_tx_len_q0),
        .CLR(rst_i),
        .D(wr_data_q[8]),
        .Q(usb_xfer_data_tx_len_q[8]));
  FDCE \usb_xfer_data_tx_len_q_reg[9] 
       (.C(clk_i),
        .CE(usb_xfer_data_tx_len_q0),
        .CLR(rst_i),
        .D(wr_data_q[9]),
        .Q(usb_xfer_data_tx_len_q[9]));
  FDCE usb_xfer_token_ack_q_reg
       (.C(clk_i),
        .CE(usb_xfer_token_start_q1),
        .CLR(rst_i),
        .D(wr_data_q[29]),
        .Q(p_3_in[29]));
  FDCE \usb_xfer_token_dev_addr_q_reg[0] 
       (.C(clk_i),
        .CE(usb_xfer_token_start_q1),
        .CLR(rst_i),
        .D(wr_data_q[9]),
        .Q(p_3_in[9]));
  FDCE \usb_xfer_token_dev_addr_q_reg[1] 
       (.C(clk_i),
        .CE(usb_xfer_token_start_q1),
        .CLR(rst_i),
        .D(wr_data_q[10]),
        .Q(p_3_in[10]));
  FDCE \usb_xfer_token_dev_addr_q_reg[2] 
       (.C(clk_i),
        .CE(usb_xfer_token_start_q1),
        .CLR(rst_i),
        .D(wr_data_q[11]),
        .Q(p_3_in[11]));
  FDCE \usb_xfer_token_dev_addr_q_reg[3] 
       (.C(clk_i),
        .CE(usb_xfer_token_start_q1),
        .CLR(rst_i),
        .D(wr_data_q[12]),
        .Q(p_3_in[12]));
  FDCE \usb_xfer_token_dev_addr_q_reg[4] 
       (.C(clk_i),
        .CE(usb_xfer_token_start_q1),
        .CLR(rst_i),
        .D(wr_data_q[13]),
        .Q(p_3_in[13]));
  FDCE \usb_xfer_token_dev_addr_q_reg[5] 
       (.C(clk_i),
        .CE(usb_xfer_token_start_q1),
        .CLR(rst_i),
        .D(wr_data_q[14]),
        .Q(p_3_in[14]));
  FDCE \usb_xfer_token_dev_addr_q_reg[6] 
       (.C(clk_i),
        .CE(usb_xfer_token_start_q1),
        .CLR(rst_i),
        .D(wr_data_q[15]),
        .Q(p_3_in[15]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \usb_xfer_token_ep_addr_q[3]_i_1 
       (.I0(wr_addr_valid_q),
        .I1(wr_data_valid_q),
        .I2(wr_addr_q[3]),
        .I3(\usb_xfer_token_ep_addr_q[3]_i_2_n_0 ),
        .I4(wr_addr_q[2]),
        .O(usb_xfer_token_start_q1));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \usb_xfer_token_ep_addr_q[3]_i_2 
       (.I0(wr_addr_q[6]),
        .I1(wr_addr_q[7]),
        .I2(wr_addr_q[0]),
        .I3(wr_addr_q[4]),
        .I4(wr_addr_q[1]),
        .I5(wr_addr_q[5]),
        .O(\usb_xfer_token_ep_addr_q[3]_i_2_n_0 ));
  FDCE \usb_xfer_token_ep_addr_q_reg[0] 
       (.C(clk_i),
        .CE(usb_xfer_token_start_q1),
        .CLR(rst_i),
        .D(wr_data_q[5]),
        .Q(p_3_in[5]));
  FDCE \usb_xfer_token_ep_addr_q_reg[1] 
       (.C(clk_i),
        .CE(usb_xfer_token_start_q1),
        .CLR(rst_i),
        .D(wr_data_q[6]),
        .Q(p_3_in[6]));
  FDCE \usb_xfer_token_ep_addr_q_reg[2] 
       (.C(clk_i),
        .CE(usb_xfer_token_start_q1),
        .CLR(rst_i),
        .D(wr_data_q[7]),
        .Q(p_3_in[7]));
  FDCE \usb_xfer_token_ep_addr_q_reg[3] 
       (.C(clk_i),
        .CE(usb_xfer_token_start_q1),
        .CLR(rst_i),
        .D(wr_data_q[8]),
        .Q(p_3_in[8]));
  FDCE usb_xfer_token_in_q_reg
       (.C(clk_i),
        .CE(usb_xfer_token_start_q1),
        .CLR(rst_i),
        .D(wr_data_q[30]),
        .Q(p_3_in[30]));
  FDCE \usb_xfer_token_pid_bits_q_reg[0] 
       (.C(clk_i),
        .CE(usb_xfer_token_start_q1),
        .CLR(rst_i),
        .D(wr_data_q[16]),
        .Q(usb_xfer_token_pid_bits_q[0]));
  FDCE \usb_xfer_token_pid_bits_q_reg[1] 
       (.C(clk_i),
        .CE(usb_xfer_token_start_q1),
        .CLR(rst_i),
        .D(wr_data_q[17]),
        .Q(usb_xfer_token_pid_bits_q[1]));
  FDCE \usb_xfer_token_pid_bits_q_reg[2] 
       (.C(clk_i),
        .CE(usb_xfer_token_start_q1),
        .CLR(rst_i),
        .D(wr_data_q[18]),
        .Q(usb_xfer_token_pid_bits_q[2]));
  FDCE \usb_xfer_token_pid_bits_q_reg[3] 
       (.C(clk_i),
        .CE(usb_xfer_token_start_q1),
        .CLR(rst_i),
        .D(wr_data_q[19]),
        .Q(usb_xfer_token_pid_bits_q[3]));
  FDCE \usb_xfer_token_pid_bits_q_reg[4] 
       (.C(clk_i),
        .CE(usb_xfer_token_start_q1),
        .CLR(rst_i),
        .D(wr_data_q[20]),
        .Q(usb_xfer_token_pid_bits_q[4]));
  FDCE \usb_xfer_token_pid_bits_q_reg[5] 
       (.C(clk_i),
        .CE(usb_xfer_token_start_q1),
        .CLR(rst_i),
        .D(wr_data_q[21]),
        .Q(usb_xfer_token_pid_bits_q[5]));
  FDCE \usb_xfer_token_pid_bits_q_reg[6] 
       (.C(clk_i),
        .CE(usb_xfer_token_start_q1),
        .CLR(rst_i),
        .D(wr_data_q[22]),
        .Q(usb_xfer_token_pid_bits_q[6]));
  FDCE \usb_xfer_token_pid_bits_q_reg[7] 
       (.C(clk_i),
        .CE(usb_xfer_token_start_q1),
        .CLR(rst_i),
        .D(wr_data_q[23]),
        .Q(usb_xfer_token_pid_bits_q[7]));
  FDCE usb_xfer_token_pid_datax_q_reg
       (.C(clk_i),
        .CE(usb_xfer_token_start_q1),
        .CLR(rst_i),
        .D(wr_data_q[28]),
        .Q(usb_xfer_token_pid_datax_q));
  LUT4 #(
    .INIT(16'hA3A0)) 
    usb_xfer_token_start_q_i_1
       (.I0(wr_data_q[31]),
        .I1(fifo_flush_q_reg_n_0),
        .I2(usb_xfer_token_start_q1),
        .I3(usb_xfer_token_start_q),
        .O(usb_xfer_token_start_q_i_1_n_0));
  FDCE usb_xfer_token_start_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(usb_xfer_token_start_q_i_1_n_0),
        .Q(usb_xfer_token_start_q));
  LUT3 #(
    .INIT(8'h2A)) 
    \wr_addr_q[0]_i_1 
       (.I0(cfg_awaddr_i[0]),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .O(\wr_addr_q[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \wr_addr_q[10]_i_1 
       (.I0(cfg_awaddr_i[10]),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .O(\wr_addr_q[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \wr_addr_q[11]_i_1 
       (.I0(cfg_awaddr_i[11]),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .O(\wr_addr_q[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \wr_addr_q[12]_i_1 
       (.I0(cfg_awaddr_i[12]),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .O(\wr_addr_q[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \wr_addr_q[13]_i_1 
       (.I0(cfg_awaddr_i[13]),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .O(\wr_addr_q[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \wr_addr_q[14]_i_1 
       (.I0(cfg_awaddr_i[14]),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .O(\wr_addr_q[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \wr_addr_q[15]_i_1 
       (.I0(cfg_awaddr_i[15]),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .O(\wr_addr_q[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \wr_addr_q[16]_i_1 
       (.I0(cfg_awaddr_i[16]),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .O(\wr_addr_q[16]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \wr_addr_q[17]_i_1 
       (.I0(cfg_awaddr_i[17]),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .O(\wr_addr_q[17]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \wr_addr_q[18]_i_1 
       (.I0(cfg_awaddr_i[18]),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .O(\wr_addr_q[18]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \wr_addr_q[19]_i_1 
       (.I0(cfg_awaddr_i[19]),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .O(\wr_addr_q[19]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \wr_addr_q[1]_i_1 
       (.I0(cfg_awaddr_i[1]),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .O(\wr_addr_q[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \wr_addr_q[20]_i_1 
       (.I0(cfg_awaddr_i[20]),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .O(\wr_addr_q[20]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \wr_addr_q[21]_i_1 
       (.I0(cfg_awaddr_i[21]),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .O(\wr_addr_q[21]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \wr_addr_q[22]_i_1 
       (.I0(cfg_awaddr_i[22]),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .O(\wr_addr_q[22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \wr_addr_q[23]_i_1 
       (.I0(cfg_awaddr_i[23]),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .O(\wr_addr_q[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \wr_addr_q[24]_i_1 
       (.I0(cfg_awaddr_i[24]),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .O(\wr_addr_q[24]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \wr_addr_q[25]_i_1 
       (.I0(cfg_awaddr_i[25]),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .O(\wr_addr_q[25]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \wr_addr_q[26]_i_1 
       (.I0(cfg_awaddr_i[26]),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .O(\wr_addr_q[26]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \wr_addr_q[27]_i_1 
       (.I0(cfg_awaddr_i[27]),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .O(\wr_addr_q[27]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \wr_addr_q[28]_i_1 
       (.I0(cfg_awaddr_i[28]),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .O(\wr_addr_q[28]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \wr_addr_q[29]_i_1 
       (.I0(cfg_awaddr_i[29]),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .O(\wr_addr_q[29]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \wr_addr_q[2]_i_1 
       (.I0(cfg_awaddr_i[2]),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .O(\wr_addr_q[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \wr_addr_q[30]_i_1 
       (.I0(cfg_awaddr_i[30]),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .O(\wr_addr_q[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h888B8888)) 
    \wr_addr_q[31]_i_1 
       (.I0(wr_data_valid_q),
        .I1(wr_addr_valid_q),
        .I2(cfg_bvalid_o),
        .I3(cfg_arvalid_i),
        .I4(cfg_awvalid_i),
        .O(\wr_addr_q[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \wr_addr_q[31]_i_2 
       (.I0(cfg_awaddr_i[31]),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .O(\wr_addr_q[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \wr_addr_q[3]_i_1 
       (.I0(cfg_awaddr_i[3]),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .O(\wr_addr_q[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \wr_addr_q[4]_i_1 
       (.I0(cfg_awaddr_i[4]),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .O(\wr_addr_q[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \wr_addr_q[5]_i_1 
       (.I0(cfg_awaddr_i[5]),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .O(\wr_addr_q[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \wr_addr_q[6]_i_1 
       (.I0(cfg_awaddr_i[6]),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .O(\wr_addr_q[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \wr_addr_q[7]_i_1 
       (.I0(cfg_awaddr_i[7]),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .O(\wr_addr_q[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \wr_addr_q[8]_i_1 
       (.I0(cfg_awaddr_i[8]),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .O(\wr_addr_q[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \wr_addr_q[9]_i_1 
       (.I0(cfg_awaddr_i[9]),
        .I1(wr_data_valid_q),
        .I2(wr_addr_valid_q),
        .O(\wr_addr_q[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_addr_q_reg[0] 
       (.C(clk_i),
        .CE(\wr_addr_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_addr_q[0]_i_1_n_0 ),
        .Q(wr_addr_q[0]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_addr_q_reg[10] 
       (.C(clk_i),
        .CE(\wr_addr_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_addr_q[10]_i_1_n_0 ),
        .Q(wr_addr_q[10]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_addr_q_reg[11] 
       (.C(clk_i),
        .CE(\wr_addr_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_addr_q[11]_i_1_n_0 ),
        .Q(wr_addr_q[11]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_addr_q_reg[12] 
       (.C(clk_i),
        .CE(\wr_addr_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_addr_q[12]_i_1_n_0 ),
        .Q(wr_addr_q[12]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_addr_q_reg[13] 
       (.C(clk_i),
        .CE(\wr_addr_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_addr_q[13]_i_1_n_0 ),
        .Q(wr_addr_q[13]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_addr_q_reg[14] 
       (.C(clk_i),
        .CE(\wr_addr_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_addr_q[14]_i_1_n_0 ),
        .Q(wr_addr_q[14]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_addr_q_reg[15] 
       (.C(clk_i),
        .CE(\wr_addr_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_addr_q[15]_i_1_n_0 ),
        .Q(wr_addr_q[15]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_addr_q_reg[16] 
       (.C(clk_i),
        .CE(\wr_addr_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_addr_q[16]_i_1_n_0 ),
        .Q(wr_addr_q[16]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_addr_q_reg[17] 
       (.C(clk_i),
        .CE(\wr_addr_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_addr_q[17]_i_1_n_0 ),
        .Q(wr_addr_q[17]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_addr_q_reg[18] 
       (.C(clk_i),
        .CE(\wr_addr_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_addr_q[18]_i_1_n_0 ),
        .Q(wr_addr_q[18]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_addr_q_reg[19] 
       (.C(clk_i),
        .CE(\wr_addr_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_addr_q[19]_i_1_n_0 ),
        .Q(wr_addr_q[19]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_addr_q_reg[1] 
       (.C(clk_i),
        .CE(\wr_addr_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_addr_q[1]_i_1_n_0 ),
        .Q(wr_addr_q[1]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_addr_q_reg[20] 
       (.C(clk_i),
        .CE(\wr_addr_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_addr_q[20]_i_1_n_0 ),
        .Q(wr_addr_q[20]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_addr_q_reg[21] 
       (.C(clk_i),
        .CE(\wr_addr_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_addr_q[21]_i_1_n_0 ),
        .Q(wr_addr_q[21]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_addr_q_reg[22] 
       (.C(clk_i),
        .CE(\wr_addr_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_addr_q[22]_i_1_n_0 ),
        .Q(wr_addr_q[22]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_addr_q_reg[23] 
       (.C(clk_i),
        .CE(\wr_addr_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_addr_q[23]_i_1_n_0 ),
        .Q(wr_addr_q[23]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_addr_q_reg[24] 
       (.C(clk_i),
        .CE(\wr_addr_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_addr_q[24]_i_1_n_0 ),
        .Q(wr_addr_q[24]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_addr_q_reg[25] 
       (.C(clk_i),
        .CE(\wr_addr_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_addr_q[25]_i_1_n_0 ),
        .Q(wr_addr_q[25]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_addr_q_reg[26] 
       (.C(clk_i),
        .CE(\wr_addr_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_addr_q[26]_i_1_n_0 ),
        .Q(wr_addr_q[26]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_addr_q_reg[27] 
       (.C(clk_i),
        .CE(\wr_addr_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_addr_q[27]_i_1_n_0 ),
        .Q(wr_addr_q[27]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_addr_q_reg[28] 
       (.C(clk_i),
        .CE(\wr_addr_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_addr_q[28]_i_1_n_0 ),
        .Q(wr_addr_q[28]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_addr_q_reg[29] 
       (.C(clk_i),
        .CE(\wr_addr_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_addr_q[29]_i_1_n_0 ),
        .Q(wr_addr_q[29]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_addr_q_reg[2] 
       (.C(clk_i),
        .CE(\wr_addr_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_addr_q[2]_i_1_n_0 ),
        .Q(wr_addr_q[2]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_addr_q_reg[30] 
       (.C(clk_i),
        .CE(\wr_addr_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_addr_q[30]_i_1_n_0 ),
        .Q(wr_addr_q[30]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_addr_q_reg[31] 
       (.C(clk_i),
        .CE(\wr_addr_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_addr_q[31]_i_2_n_0 ),
        .Q(wr_addr_q[31]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_addr_q_reg[3] 
       (.C(clk_i),
        .CE(\wr_addr_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_addr_q[3]_i_1_n_0 ),
        .Q(wr_addr_q[3]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_addr_q_reg[4] 
       (.C(clk_i),
        .CE(\wr_addr_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_addr_q[4]_i_1_n_0 ),
        .Q(wr_addr_q[4]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_addr_q_reg[5] 
       (.C(clk_i),
        .CE(\wr_addr_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_addr_q[5]_i_1_n_0 ),
        .Q(wr_addr_q[5]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_addr_q_reg[6] 
       (.C(clk_i),
        .CE(\wr_addr_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_addr_q[6]_i_1_n_0 ),
        .Q(wr_addr_q[6]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_addr_q_reg[7] 
       (.C(clk_i),
        .CE(\wr_addr_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_addr_q[7]_i_1_n_0 ),
        .Q(wr_addr_q[7]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_addr_q_reg[8] 
       (.C(clk_i),
        .CE(\wr_addr_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_addr_q[8]_i_1_n_0 ),
        .Q(wr_addr_q[8]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_addr_q_reg[9] 
       (.C(clk_i),
        .CE(\wr_addr_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_addr_q[9]_i_1_n_0 ),
        .Q(wr_addr_q[9]));
  LUT4 #(
    .INIT(16'h0002)) 
    wr_addr_valid_q_i_1
       (.I0(cfg_awvalid_i),
        .I1(cfg_arvalid_i),
        .I2(cfg_bvalid_o),
        .I3(wr_addr_valid_q),
        .O(wr_addr_valid_q_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE wr_addr_valid_q_reg
       (.C(clk_i),
        .CE(\wr_addr_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(wr_addr_valid_q_reg0),
        .Q(wr_addr_valid_q));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_q[0]_i_1 
       (.I0(cfg_wdata_i[0]),
        .I1(wr_data_valid_q),
        .O(\wr_data_q[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_q[10]_i_1 
       (.I0(cfg_wdata_i[10]),
        .I1(wr_data_valid_q),
        .O(\wr_data_q[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_q[11]_i_1 
       (.I0(cfg_wdata_i[11]),
        .I1(wr_data_valid_q),
        .O(\wr_data_q[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_q[12]_i_1 
       (.I0(cfg_wdata_i[12]),
        .I1(wr_data_valid_q),
        .O(\wr_data_q[12]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_q[13]_i_1 
       (.I0(cfg_wdata_i[13]),
        .I1(wr_data_valid_q),
        .O(\wr_data_q[13]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_q[14]_i_1 
       (.I0(cfg_wdata_i[14]),
        .I1(wr_data_valid_q),
        .O(\wr_data_q[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_q[15]_i_1 
       (.I0(cfg_wdata_i[15]),
        .I1(wr_data_valid_q),
        .O(\wr_data_q[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_q[16]_i_1 
       (.I0(cfg_wdata_i[16]),
        .I1(wr_data_valid_q),
        .O(\wr_data_q[16]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_q[17]_i_1 
       (.I0(cfg_wdata_i[17]),
        .I1(wr_data_valid_q),
        .O(\wr_data_q[17]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_q[18]_i_1 
       (.I0(cfg_wdata_i[18]),
        .I1(wr_data_valid_q),
        .O(\wr_data_q[18]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_q[19]_i_1 
       (.I0(cfg_wdata_i[19]),
        .I1(wr_data_valid_q),
        .O(\wr_data_q[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_q[1]_i_1 
       (.I0(cfg_wdata_i[1]),
        .I1(wr_data_valid_q),
        .O(\wr_data_q[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_q[20]_i_1 
       (.I0(cfg_wdata_i[20]),
        .I1(wr_data_valid_q),
        .O(\wr_data_q[20]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_q[21]_i_1 
       (.I0(cfg_wdata_i[21]),
        .I1(wr_data_valid_q),
        .O(\wr_data_q[21]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_q[22]_i_1 
       (.I0(cfg_wdata_i[22]),
        .I1(wr_data_valid_q),
        .O(\wr_data_q[22]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_q[23]_i_1 
       (.I0(cfg_wdata_i[23]),
        .I1(wr_data_valid_q),
        .O(\wr_data_q[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_q[24]_i_1 
       (.I0(cfg_wdata_i[24]),
        .I1(wr_data_valid_q),
        .O(\wr_data_q[24]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_q[25]_i_1 
       (.I0(cfg_wdata_i[25]),
        .I1(wr_data_valid_q),
        .O(\wr_data_q[25]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_q[26]_i_1 
       (.I0(cfg_wdata_i[26]),
        .I1(wr_data_valid_q),
        .O(\wr_data_q[26]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_q[27]_i_1 
       (.I0(cfg_wdata_i[27]),
        .I1(wr_data_valid_q),
        .O(\wr_data_q[27]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_q[28]_i_1 
       (.I0(cfg_wdata_i[28]),
        .I1(wr_data_valid_q),
        .O(\wr_data_q[28]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_q[29]_i_1 
       (.I0(cfg_wdata_i[29]),
        .I1(wr_data_valid_q),
        .O(\wr_data_q[29]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_q[2]_i_1 
       (.I0(cfg_wdata_i[2]),
        .I1(wr_data_valid_q),
        .O(\wr_data_q[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_q[30]_i_1 
       (.I0(cfg_wdata_i[30]),
        .I1(wr_data_valid_q),
        .O(\wr_data_q[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF010F000)) 
    \wr_data_q[31]_i_1 
       (.I0(cfg_bvalid_o),
        .I1(cfg_arvalid_i),
        .I2(wr_addr_valid_q),
        .I3(wr_data_valid_q),
        .I4(cfg_wvalid_i),
        .O(\wr_data_q[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_q[31]_i_2 
       (.I0(cfg_wdata_i[31]),
        .I1(wr_data_valid_q),
        .O(\wr_data_q[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_q[3]_i_1 
       (.I0(cfg_wdata_i[3]),
        .I1(wr_data_valid_q),
        .O(\wr_data_q[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_q[4]_i_1 
       (.I0(cfg_wdata_i[4]),
        .I1(wr_data_valid_q),
        .O(\wr_data_q[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_q[5]_i_1 
       (.I0(cfg_wdata_i[5]),
        .I1(wr_data_valid_q),
        .O(\wr_data_q[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_q[6]_i_1 
       (.I0(cfg_wdata_i[6]),
        .I1(wr_data_valid_q),
        .O(\wr_data_q[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_q[7]_i_1 
       (.I0(cfg_wdata_i[7]),
        .I1(wr_data_valid_q),
        .O(\wr_data_q[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_q[8]_i_1 
       (.I0(cfg_wdata_i[8]),
        .I1(wr_data_valid_q),
        .O(\wr_data_q[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_q[9]_i_1 
       (.I0(cfg_wdata_i[9]),
        .I1(wr_data_valid_q),
        .O(\wr_data_q[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_data_q_reg[0] 
       (.C(clk_i),
        .CE(\wr_data_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_data_q[0]_i_1_n_0 ),
        .Q(wr_data_q[0]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_data_q_reg[10] 
       (.C(clk_i),
        .CE(\wr_data_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_data_q[10]_i_1_n_0 ),
        .Q(wr_data_q[10]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_data_q_reg[11] 
       (.C(clk_i),
        .CE(\wr_data_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_data_q[11]_i_1_n_0 ),
        .Q(wr_data_q[11]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_data_q_reg[12] 
       (.C(clk_i),
        .CE(\wr_data_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_data_q[12]_i_1_n_0 ),
        .Q(wr_data_q[12]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_data_q_reg[13] 
       (.C(clk_i),
        .CE(\wr_data_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_data_q[13]_i_1_n_0 ),
        .Q(wr_data_q[13]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_data_q_reg[14] 
       (.C(clk_i),
        .CE(\wr_data_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_data_q[14]_i_1_n_0 ),
        .Q(wr_data_q[14]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_data_q_reg[15] 
       (.C(clk_i),
        .CE(\wr_data_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_data_q[15]_i_1_n_0 ),
        .Q(wr_data_q[15]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_data_q_reg[16] 
       (.C(clk_i),
        .CE(\wr_data_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_data_q[16]_i_1_n_0 ),
        .Q(wr_data_q[16]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_data_q_reg[17] 
       (.C(clk_i),
        .CE(\wr_data_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_data_q[17]_i_1_n_0 ),
        .Q(wr_data_q[17]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_data_q_reg[18] 
       (.C(clk_i),
        .CE(\wr_data_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_data_q[18]_i_1_n_0 ),
        .Q(wr_data_q[18]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_data_q_reg[19] 
       (.C(clk_i),
        .CE(\wr_data_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_data_q[19]_i_1_n_0 ),
        .Q(wr_data_q[19]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_data_q_reg[1] 
       (.C(clk_i),
        .CE(\wr_data_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_data_q[1]_i_1_n_0 ),
        .Q(wr_data_q[1]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_data_q_reg[20] 
       (.C(clk_i),
        .CE(\wr_data_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_data_q[20]_i_1_n_0 ),
        .Q(wr_data_q[20]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_data_q_reg[21] 
       (.C(clk_i),
        .CE(\wr_data_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_data_q[21]_i_1_n_0 ),
        .Q(wr_data_q[21]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_data_q_reg[22] 
       (.C(clk_i),
        .CE(\wr_data_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_data_q[22]_i_1_n_0 ),
        .Q(wr_data_q[22]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_data_q_reg[23] 
       (.C(clk_i),
        .CE(\wr_data_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_data_q[23]_i_1_n_0 ),
        .Q(wr_data_q[23]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_data_q_reg[24] 
       (.C(clk_i),
        .CE(\wr_data_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_data_q[24]_i_1_n_0 ),
        .Q(wr_data_q[24]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_data_q_reg[25] 
       (.C(clk_i),
        .CE(\wr_data_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_data_q[25]_i_1_n_0 ),
        .Q(wr_data_q[25]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_data_q_reg[26] 
       (.C(clk_i),
        .CE(\wr_data_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_data_q[26]_i_1_n_0 ),
        .Q(wr_data_q[26]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_data_q_reg[27] 
       (.C(clk_i),
        .CE(\wr_data_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_data_q[27]_i_1_n_0 ),
        .Q(wr_data_q[27]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_data_q_reg[28] 
       (.C(clk_i),
        .CE(\wr_data_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_data_q[28]_i_1_n_0 ),
        .Q(wr_data_q[28]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_data_q_reg[29] 
       (.C(clk_i),
        .CE(\wr_data_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_data_q[29]_i_1_n_0 ),
        .Q(wr_data_q[29]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_data_q_reg[2] 
       (.C(clk_i),
        .CE(\wr_data_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_data_q[2]_i_1_n_0 ),
        .Q(wr_data_q[2]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_data_q_reg[30] 
       (.C(clk_i),
        .CE(\wr_data_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_data_q[30]_i_1_n_0 ),
        .Q(wr_data_q[30]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_data_q_reg[31] 
       (.C(clk_i),
        .CE(\wr_data_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_data_q[31]_i_2_n_0 ),
        .Q(wr_data_q[31]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_data_q_reg[3] 
       (.C(clk_i),
        .CE(\wr_data_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_data_q[3]_i_1_n_0 ),
        .Q(wr_data_q[3]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_data_q_reg[4] 
       (.C(clk_i),
        .CE(\wr_data_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_data_q[4]_i_1_n_0 ),
        .Q(wr_data_q[4]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_data_q_reg[5] 
       (.C(clk_i),
        .CE(\wr_data_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_data_q[5]_i_1_n_0 ),
        .Q(wr_data_q[5]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_data_q_reg[6] 
       (.C(clk_i),
        .CE(\wr_data_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_data_q[6]_i_1_n_0 ),
        .Q(wr_data_q[6]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_data_q_reg[7] 
       (.C(clk_i),
        .CE(\wr_data_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_data_q[7]_i_1_n_0 ),
        .Q(wr_data_q[7]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_data_q_reg[8] 
       (.C(clk_i),
        .CE(\wr_data_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_data_q[8]_i_1_n_0 ),
        .Q(wr_data_q[8]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE \wr_data_q_reg[9] 
       (.C(clk_i),
        .CE(\wr_data_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wr_data_q[9]_i_1_n_0 ),
        .Q(wr_data_q[9]));
  LUT4 #(
    .INIT(16'h0002)) 
    wr_data_valid_q_i_1
       (.I0(cfg_wvalid_i),
        .I1(wr_data_valid_q),
        .I2(cfg_arvalid_i),
        .I3(cfg_bvalid_o),
        .O(wr_data_valid_q_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE wr_data_valid_q_reg
       (.C(clk_i),
        .CE(\wr_data_q[31]_i_1_n_0 ),
        .CLR(rst_i),
        .D(wr_data_valid_q_reg0),
        .Q(wr_data_valid_q));
endmodule

module bd_soc_usb_controller_0_usbh_sie
   (din,
    utmi_txvalid_o,
    utmi_data_out_o,
    wr_en,
    send_sof_w,
    \FSM_onehot_state_q_reg[8]_0 ,
    usb_irq_ack_done_q_reg,
    usb_irq_ack_err_q_reg,
    intr_err_q2,
    pop_i,
    D,
    \cfg_araddr[7] ,
    \cfg_araddr[5] ,
    \cfg_araddr[5]_0 ,
    \cfg_araddr[5]_1 ,
    \cfg_araddr[5]_2 ,
    O,
    \sof_time_q_reg[7] ,
    \sof_time_q_reg[10] ,
    \sof_time_q_reg[12] ,
    usb_xfer_token_start_q_reg,
    usb_xfer_token_start_q_reg_0,
    transfer_start_q_reg,
    usb_xfer_token_ack_q_reg,
    usb_xfer_token_in_q_reg,
    clk_i,
    rst_i,
    in_transfer_q_reg_0,
    usb_xfer_token_pid_datax_q,
    send_sof_q_reg_0,
    utmi_data_in_i,
    Q,
    wait_resp_q_reg_0,
    utmi_txready_i,
    utmi_linestate_i,
    \utmi_data_out[7] ,
    data_o,
    wait_resp_q_reg_1,
    utmi_rxvalid_i,
    utmi_rxactive_i,
    sof_time_q_reg,
    p_8_in,
    intr_done_q_reg,
    out,
    intr_err_q_reg,
    intr_err_q_reg_0,
    intr_err_q_reg_1,
    usb_xfer_token_start_q,
    \token_q_reg[5]_0 ,
    p_3_in,
    cfg_araddr_i,
    \rd_data_q_reg[0] ,
    \rd_data_q_reg[1] ,
    \rd_data_q_reg[2] ,
    \rd_data_q_reg[3] ,
    data1,
    \rd_data_q_reg[0]_0 ,
    fifo_flush_q_reg);
  output [7:0]din;
  output utmi_txvalid_o;
  output [7:0]utmi_data_out_o;
  output wr_en;
  output send_sof_w;
  output \FSM_onehot_state_q_reg[8]_0 ;
  output usb_irq_ack_done_q_reg;
  output usb_irq_ack_err_q_reg;
  output intr_err_q2;
  output pop_i;
  output [22:0]D;
  output \cfg_araddr[7] ;
  output \cfg_araddr[5] ;
  output \cfg_araddr[5]_0 ;
  output \cfg_araddr[5]_1 ;
  output \cfg_araddr[5]_2 ;
  output [3:0]O;
  output [3:0]\sof_time_q_reg[7] ;
  output [3:0]\sof_time_q_reg[10] ;
  output [3:0]\sof_time_q_reg[12] ;
  output usb_xfer_token_start_q_reg;
  output usb_xfer_token_start_q_reg_0;
  output transfer_start_q_reg;
  output usb_xfer_token_ack_q_reg;
  output usb_xfer_token_in_q_reg;
  input clk_i;
  input rst_i;
  input in_transfer_q_reg_0;
  input usb_xfer_token_pid_datax_q;
  input send_sof_q_reg_0;
  input [7:0]utmi_data_in_i;
  input [15:0]Q;
  input wait_resp_q_reg_0;
  input utmi_txready_i;
  input [1:0]utmi_linestate_i;
  input [7:0]\utmi_data_out[7] ;
  input [7:0]data_o;
  input wait_resp_q_reg_1;
  input utmi_rxvalid_i;
  input utmi_rxactive_i;
  input [15:0]sof_time_q_reg;
  input [0:0]p_8_in;
  input intr_done_q_reg;
  input out;
  input intr_err_q_reg;
  input intr_err_q_reg_0;
  input intr_err_q_reg_1;
  input usb_xfer_token_start_q;
  input [10:0]\token_q_reg[5]_0 ;
  input [12:0]p_3_in;
  input [7:0]cfg_araddr_i;
  input \rd_data_q_reg[0] ;
  input \rd_data_q_reg[1] ;
  input \rd_data_q_reg[2] ;
  input \rd_data_q_reg[3] ;
  input [0:0]data1;
  input \rd_data_q_reg[0]_0 ;
  input fifo_flush_q_reg;

  wire [22:0]D;
  wire \FSM_onehot_state_q[0]_i_1_n_0 ;
  wire \FSM_onehot_state_q[14]_i_10_n_0 ;
  wire \FSM_onehot_state_q[14]_i_11_n_0 ;
  wire \FSM_onehot_state_q[14]_i_12_n_0 ;
  wire \FSM_onehot_state_q[14]_i_13_n_0 ;
  wire \FSM_onehot_state_q[14]_i_14_n_0 ;
  wire \FSM_onehot_state_q[14]_i_15_n_0 ;
  wire \FSM_onehot_state_q[14]_i_1_n_0 ;
  wire \FSM_onehot_state_q[14]_i_2_n_0 ;
  wire \FSM_onehot_state_q[14]_i_3_n_0 ;
  wire \FSM_onehot_state_q[14]_i_4_n_0 ;
  wire \FSM_onehot_state_q[14]_i_5_n_0 ;
  wire \FSM_onehot_state_q[14]_i_6_n_0 ;
  wire \FSM_onehot_state_q[14]_i_7_n_0 ;
  wire \FSM_onehot_state_q[14]_i_8_n_0 ;
  wire \FSM_onehot_state_q[14]_i_9_n_0 ;
  wire \FSM_onehot_state_q[1]_i_1_n_0 ;
  wire \FSM_onehot_state_q[3]_i_1_n_0 ;
  wire \FSM_onehot_state_q[5]_i_1_n_0 ;
  wire \FSM_onehot_state_q[7]_i_1_n_0 ;
  wire \FSM_onehot_state_q[8]_i_1_n_0 ;
  wire \FSM_onehot_state_q[8]_i_2_n_0 ;
  wire \FSM_onehot_state_q[8]_i_3_n_0 ;
  wire \FSM_onehot_state_q[9]_i_1_n_0 ;
  wire \FSM_onehot_state_q[9]_i_2_n_0 ;
  wire \FSM_onehot_state_q[9]_i_3_n_0 ;
  wire \FSM_onehot_state_q[9]_i_4_n_0 ;
  wire \FSM_onehot_state_q[9]_i_5_n_0 ;
  wire \FSM_onehot_state_q[9]_i_6_n_0 ;
  wire \FSM_onehot_state_q[9]_i_7_n_0 ;
  wire \FSM_onehot_state_q[9]_i_8_n_0 ;
  wire \FSM_onehot_state_q_reg[8]_0 ;
  wire \FSM_onehot_state_q_reg_n_0_[10] ;
  wire \FSM_onehot_state_q_reg_n_0_[12] ;
  wire \FSM_onehot_state_q_reg_n_0_[13] ;
  wire \FSM_onehot_state_q_reg_n_0_[14] ;
  wire \FSM_onehot_state_q_reg_n_0_[1] ;
  wire \FSM_onehot_state_q_reg_n_0_[2] ;
  wire \FSM_onehot_state_q_reg_n_0_[4] ;
  wire \FSM_onehot_state_q_reg_n_0_[5] ;
  wire \FSM_onehot_state_q_reg_n_0_[7] ;
  wire \FSM_onehot_state_q_reg_n_0_[9] ;
  wire [3:0]O;
  wire [15:0]Q;
  wire byte_count_q0_carry__0_i_1_n_0;
  wire byte_count_q0_carry__0_i_2_n_0;
  wire byte_count_q0_carry__0_i_3_n_0;
  wire byte_count_q0_carry__0_i_4_n_0;
  wire byte_count_q0_carry__0_n_0;
  wire byte_count_q0_carry__0_n_1;
  wire byte_count_q0_carry__0_n_2;
  wire byte_count_q0_carry__0_n_3;
  wire byte_count_q0_carry__0_n_4;
  wire byte_count_q0_carry__0_n_5;
  wire byte_count_q0_carry__0_n_6;
  wire byte_count_q0_carry__0_n_7;
  wire byte_count_q0_carry__1_i_1_n_0;
  wire byte_count_q0_carry__1_i_2_n_0;
  wire byte_count_q0_carry__1_i_3_n_0;
  wire byte_count_q0_carry__1_i_4_n_0;
  wire byte_count_q0_carry__1_n_0;
  wire byte_count_q0_carry__1_n_1;
  wire byte_count_q0_carry__1_n_2;
  wire byte_count_q0_carry__1_n_3;
  wire byte_count_q0_carry__1_n_4;
  wire byte_count_q0_carry__1_n_5;
  wire byte_count_q0_carry__1_n_6;
  wire byte_count_q0_carry__1_n_7;
  wire byte_count_q0_carry__2_i_1_n_0;
  wire byte_count_q0_carry__2_i_2_n_0;
  wire byte_count_q0_carry__2_i_3_n_0;
  wire byte_count_q0_carry__2_n_2;
  wire byte_count_q0_carry__2_n_3;
  wire byte_count_q0_carry__2_n_5;
  wire byte_count_q0_carry__2_n_6;
  wire byte_count_q0_carry__2_n_7;
  wire byte_count_q0_carry_i_1_n_0;
  wire byte_count_q0_carry_i_2_n_0;
  wire byte_count_q0_carry_i_3_n_0;
  wire byte_count_q0_carry_i_4_n_0;
  wire byte_count_q0_carry_i_5_n_0;
  wire byte_count_q0_carry_n_0;
  wire byte_count_q0_carry_n_1;
  wire byte_count_q0_carry_n_2;
  wire byte_count_q0_carry_n_3;
  wire byte_count_q0_carry_n_4;
  wire byte_count_q0_carry_n_5;
  wire byte_count_q0_carry_n_6;
  wire byte_count_q0_carry_n_7;
  wire \byte_count_q[15]_i_1_n_0 ;
  wire \byte_count_q[15]_i_3_n_0 ;
  wire \byte_count_q[15]_i_4_n_0 ;
  wire \byte_count_q[15]_i_5_n_0 ;
  wire \cfg_araddr[5] ;
  wire \cfg_araddr[5]_0 ;
  wire \cfg_araddr[5]_1 ;
  wire \cfg_araddr[5]_2 ;
  wire \cfg_araddr[7] ;
  wire [7:0]cfg_araddr_i;
  wire clk_i;
  wire [7:0]crc_data_in_w;
  wire [15:0]crc_out_w;
  wire crc_sum_q;
  wire \crc_sum_q[0]_i_1_n_0 ;
  wire \crc_sum_q[10]_i_1_n_0 ;
  wire \crc_sum_q[11]_i_1_n_0 ;
  wire \crc_sum_q[12]_i_1_n_0 ;
  wire \crc_sum_q[13]_i_1_n_0 ;
  wire \crc_sum_q[14]_i_1_n_0 ;
  wire \crc_sum_q[15]_i_2_n_0 ;
  wire \crc_sum_q[1]_i_1_n_0 ;
  wire \crc_sum_q[2]_i_1_n_0 ;
  wire \crc_sum_q[3]_i_1_n_0 ;
  wire \crc_sum_q[4]_i_1_n_0 ;
  wire \crc_sum_q[5]_i_1_n_0 ;
  wire \crc_sum_q[6]_i_1_n_0 ;
  wire \crc_sum_q[7]_i_1_n_0 ;
  wire \crc_sum_q[8]_i_1_n_0 ;
  wire \crc_sum_q[9]_i_1_n_0 ;
  wire \crc_sum_q_reg_n_0_[0] ;
  wire \crc_sum_q_reg_n_0_[15] ;
  wire \crc_sum_q_reg_n_0_[1] ;
  wire \crc_sum_q_reg_n_0_[2] ;
  wire \crc_sum_q_reg_n_0_[3] ;
  wire \crc_sum_q_reg_n_0_[4] ;
  wire \crc_sum_q_reg_n_0_[5] ;
  wire \crc_sum_q_reg_n_0_[6] ;
  wire \crc_sum_q_reg_n_0_[7] ;
  wire \crc_sum_q_reg_n_0_[8] ;
  wire [0:0]data1;
  wire \data_buffer_q_reg[10]_u_sie_data_buffer_q_reg_c_1_n_0 ;
  wire \data_buffer_q_reg[11]_u_sie_data_buffer_q_reg_c_1_n_0 ;
  wire \data_buffer_q_reg[12]_u_sie_data_buffer_q_reg_c_1_n_0 ;
  wire \data_buffer_q_reg[13]_u_sie_data_buffer_q_reg_c_1_n_0 ;
  wire \data_buffer_q_reg[14]_u_sie_data_buffer_q_reg_c_1_n_0 ;
  wire \data_buffer_q_reg[15]_u_sie_data_buffer_q_reg_c_1_n_0 ;
  wire \data_buffer_q_reg[16]_srl2_u_sie_data_buffer_q_reg_c_0_n_0 ;
  wire \data_buffer_q_reg[17]_srl2_u_sie_data_buffer_q_reg_c_0_n_0 ;
  wire \data_buffer_q_reg[18]_srl2_u_sie_data_buffer_q_reg_c_0_n_0 ;
  wire \data_buffer_q_reg[19]_srl2_u_sie_data_buffer_q_reg_c_0_n_0 ;
  wire \data_buffer_q_reg[20]_srl2_u_sie_data_buffer_q_reg_c_0_n_0 ;
  wire \data_buffer_q_reg[21]_srl2_u_sie_data_buffer_q_reg_c_0_n_0 ;
  wire \data_buffer_q_reg[22]_srl2_u_sie_data_buffer_q_reg_c_0_n_0 ;
  wire \data_buffer_q_reg[23]_srl2_u_sie_data_buffer_q_reg_c_0_n_0 ;
  wire \data_buffer_q_reg[8]_u_sie_data_buffer_q_reg_c_1_n_0 ;
  wire \data_buffer_q_reg[9]_u_sie_data_buffer_q_reg_c_1_n_0 ;
  wire data_buffer_q_reg_c_0_n_0;
  wire data_buffer_q_reg_c_1_n_0;
  wire data_buffer_q_reg_c_n_0;
  wire data_buffer_q_reg_gate__0_n_0;
  wire data_buffer_q_reg_gate__1_n_0;
  wire data_buffer_q_reg_gate__2_n_0;
  wire data_buffer_q_reg_gate__3_n_0;
  wire data_buffer_q_reg_gate__4_n_0;
  wire data_buffer_q_reg_gate__5_n_0;
  wire data_buffer_q_reg_gate__6_n_0;
  wire data_buffer_q_reg_gate_n_0;
  wire [0:0]data_crc_q;
  wire \data_crc_q_reg_n_0_[1] ;
  wire [7:0]data_o;
  wire \data_valid_q[0]_i_1_n_0 ;
  wire \data_valid_q_reg_n_0_[0] ;
  wire \data_valid_q_reg_n_0_[1] ;
  wire \data_valid_q_reg_n_0_[2] ;
  wire \data_valid_q_reg_n_0_[3] ;
  wire [7:0]din;
  wire fifo_flush_q_reg;
  wire [7:3]in13;
  wire in_transfer_q;
  wire in_transfer_q_reg_0;
  wire intr_done_q_reg;
  wire intr_err_q2;
  wire intr_err_q_reg;
  wire intr_err_q_reg_0;
  wire intr_err_q_reg_1;
  wire \last_tx_time_q[5]_i_2_n_0 ;
  wire \last_tx_time_q[9]_i_1_n_0 ;
  wire \last_tx_time_q[9]_i_3_n_0 ;
  wire \last_tx_time_q[9]_i_4_n_0 ;
  wire \last_tx_time_q[9]_i_5_n_0 ;
  wire \last_tx_time_q[9]_i_6_n_0 ;
  wire \last_tx_time_q[9]_i_7_n_0 ;
  wire [9:0]last_tx_time_q_reg;
  wire out;
  wire [9:0]p_0_in;
  wire p_0_in10_in;
  wire p_0_in1_in;
  wire p_0_in2_in;
  wire p_0_in_0;
  wire p_1_in;
  wire [15:0]p_1_in__0;
  wire p_2_in;
  wire [12:0]p_3_in;
  wire p_3_in_1;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire p_7_in;
  wire [0:0]p_8_in;
  wire pop_i;
  wire \rd_data_q[0]_i_2_n_0 ;
  wire \rd_data_q[15]_i_2_n_0 ;
  wire \rd_data_q[16]_i_2_n_0 ;
  wire \rd_data_q[17]_i_2_n_0 ;
  wire \rd_data_q[18]_i_2_n_0 ;
  wire \rd_data_q[19]_i_2_n_0 ;
  wire \rd_data_q[1]_i_2_n_0 ;
  wire \rd_data_q[20]_i_2_n_0 ;
  wire \rd_data_q[21]_i_2_n_0 ;
  wire \rd_data_q[22]_i_2_n_0 ;
  wire \rd_data_q[23]_i_2_n_0 ;
  wire \rd_data_q[28]_i_2_n_0 ;
  wire \rd_data_q[29]_i_3_n_0 ;
  wire \rd_data_q[2]_i_2_n_0 ;
  wire \rd_data_q[30]_i_2_n_0 ;
  wire \rd_data_q[3]_i_2_n_0 ;
  wire \rd_data_q_reg[0] ;
  wire \rd_data_q_reg[0]_0 ;
  wire \rd_data_q_reg[1] ;
  wire \rd_data_q_reg[2] ;
  wire \rd_data_q_reg[3] ;
  wire rst_i;
  wire [0:0]rx_active_q;
  wire \rx_active_q_reg_n_0_[1] ;
  wire \rx_active_q_reg_n_0_[2] ;
  wire \rx_active_q_reg_n_0_[3] ;
  wire rx_time_en_q_i_1_n_0;
  wire rx_time_en_q_reg_n_0;
  wire rx_time_q2;
  wire \rx_time_q[0]_i_1_n_0 ;
  wire \rx_time_q[1]_i_1_n_0 ;
  wire \rx_time_q[2]_i_1_n_0 ;
  wire \rx_time_q[2]_i_2_n_0 ;
  wire \rx_time_q_reg_n_0_[0] ;
  wire \rx_time_q_reg_n_0_[1] ;
  wire \rx_time_q_reg_n_0_[2] ;
  wire send_ack_q;
  wire send_ack_q0;
  wire send_data1_q;
  wire send_sof_q;
  wire send_sof_q_reg_0;
  wire send_sof_w;
  wire shift_en_w;
  wire shift_en_w0;
  wire sof_irq_q_i_2_n_0;
  wire sof_irq_q_i_3_n_0;
  wire sof_irq_q_i_4_n_0;
  wire \sof_time_q[0]_i_3_n_0 ;
  wire \sof_time_q[0]_i_4_n_0 ;
  wire \sof_time_q[0]_i_5_n_0 ;
  wire \sof_time_q[0]_i_6_n_0 ;
  wire \sof_time_q[0]_i_7_n_0 ;
  wire \sof_time_q[12]_i_2_n_0 ;
  wire \sof_time_q[12]_i_3_n_0 ;
  wire \sof_time_q[12]_i_4_n_0 ;
  wire \sof_time_q[4]_i_2_n_0 ;
  wire \sof_time_q[4]_i_3_n_0 ;
  wire \sof_time_q[8]_i_2_n_0 ;
  wire \sof_time_q[8]_i_3_n_0 ;
  wire [15:0]sof_time_q_reg;
  wire \sof_time_q_reg[0]_i_2_n_0 ;
  wire \sof_time_q_reg[0]_i_2_n_1 ;
  wire \sof_time_q_reg[0]_i_2_n_2 ;
  wire \sof_time_q_reg[0]_i_2_n_3 ;
  wire [3:0]\sof_time_q_reg[10] ;
  wire [3:0]\sof_time_q_reg[12] ;
  wire \sof_time_q_reg[12]_i_1_n_1 ;
  wire \sof_time_q_reg[12]_i_1_n_2 ;
  wire \sof_time_q_reg[12]_i_1_n_3 ;
  wire \sof_time_q_reg[4]_i_1_n_0 ;
  wire \sof_time_q_reg[4]_i_1_n_1 ;
  wire \sof_time_q_reg[4]_i_1_n_2 ;
  wire \sof_time_q_reg[4]_i_1_n_3 ;
  wire [3:0]\sof_time_q_reg[7] ;
  wire \sof_time_q_reg[8]_i_1_n_0 ;
  wire \sof_time_q_reg[8]_i_1_n_1 ;
  wire \sof_time_q_reg[8]_i_1_n_2 ;
  wire \sof_time_q_reg[8]_i_1_n_3 ;
  wire sof_transfer_q_i_10_n_0;
  wire sof_transfer_q_i_11_n_0;
  wire sof_transfer_q_i_2_n_0;
  wire sof_transfer_q_i_3_n_0;
  wire sof_transfer_q_i_4_n_0;
  wire sof_transfer_q_i_5_n_0;
  wire sof_transfer_q_i_6_n_0;
  wire sof_transfer_q_i_7_n_0;
  wire sof_transfer_q_i_8_n_0;
  wire sof_transfer_q_i_9_n_0;
  wire status_crc_err_q_i_1_n_0;
  wire status_crc_err_w;
  wire status_response_q;
  wire \status_response_q[0]_i_1_n_0 ;
  wire \status_response_q[1]_i_1_n_0 ;
  wire \status_response_q[2]_i_1_n_0 ;
  wire \status_response_q[3]_i_1_n_0 ;
  wire \status_response_q[4]_i_1_n_0 ;
  wire \status_response_q[5]_i_1_n_0 ;
  wire \status_response_q[6]_i_1_n_0 ;
  wire \status_response_q[7]_i_2_n_0 ;
  wire status_rx_done_q_i_1_n_0;
  wire status_rx_done_w;
  wire status_sie_idle_w;
  wire status_timeout_q_i_1_n_0;
  wire status_timeout_w;
  wire status_tx_done_q_i_1_n_0;
  wire status_tx_done_q_i_2_n_0;
  wire status_tx_done_w;
  wire [6:0]token_dev_w;
  wire [3:0]token_ep_w;
  wire [0:0]token_q;
  wire token_q0;
  wire \token_q[0]_i_1_n_0 ;
  wire \token_q[0]_i_2_n_0 ;
  wire \token_q[1]_i_1_n_0 ;
  wire \token_q[2]_i_1_n_0 ;
  wire \token_q[3]_i_1_n_0 ;
  wire \token_q[3]_i_2_n_0 ;
  wire \token_q[4]_i_2_n_0 ;
  wire \token_q[4]_i_3_n_0 ;
  wire [10:0]\token_q_reg[5]_0 ;
  wire [10:0]token_rev_w;
  wire transfer_ack_w;
  wire transfer_start_q_reg;
  wire usb_irq_ack_done_q_reg;
  wire usb_irq_ack_err_q_reg;
  wire [15:0]usb_rx_stat_count_bits_in_w;
  wire [7:0]usb_rx_stat_resp_bits_in_w;
  wire usb_xfer_token_ack_q_reg;
  wire usb_xfer_token_in_q_reg;
  wire usb_xfer_token_pid_datax_q;
  wire usb_xfer_token_start_q;
  wire usb_xfer_token_start_q_reg;
  wire usb_xfer_token_start_q_reg_0;
  wire [7:0]utmi_data_in_i;
  wire [7:0]\utmi_data_out[7] ;
  wire [7:0]utmi_data_out_o;
  wire \utmi_data_out_o[0]_INST_0_i_1_n_0 ;
  wire \utmi_data_out_o[0]_INST_0_i_2_n_0 ;
  wire \utmi_data_out_o[1]_INST_0_i_1_n_0 ;
  wire \utmi_data_out_o[1]_INST_0_i_2_n_0 ;
  wire \utmi_data_out_o[2]_INST_0_i_1_n_0 ;
  wire \utmi_data_out_o[2]_INST_0_i_2_n_0 ;
  wire \utmi_data_out_o[3]_INST_0_i_1_n_0 ;
  wire \utmi_data_out_o[3]_INST_0_i_2_n_0 ;
  wire \utmi_data_out_o[3]_INST_0_i_3_n_0 ;
  wire \utmi_data_out_o[4]_INST_0_i_1_n_0 ;
  wire \utmi_data_out_o[4]_INST_0_i_2_n_0 ;
  wire \utmi_data_out_o[5]_INST_0_i_1_n_0 ;
  wire \utmi_data_out_o[5]_INST_0_i_2_n_0 ;
  wire \utmi_data_out_o[6]_INST_0_i_1_n_0 ;
  wire \utmi_data_out_o[6]_INST_0_i_2_n_0 ;
  wire \utmi_data_out_o[6]_INST_0_i_3_n_0 ;
  wire \utmi_data_out_o[7]_INST_0_i_1_n_0 ;
  wire \utmi_data_out_o[7]_INST_0_i_2_n_0 ;
  wire \utmi_data_out_o[7]_INST_0_i_3_n_0 ;
  wire [1:0]utmi_linestate_i;
  wire utmi_rxactive_i;
  wire utmi_rxvalid_i;
  wire utmi_txready_i;
  wire utmi_txvalid_o;
  wire utmi_txvalid_o_INST_0_i_1_n_0;
  wire wait_resp_q_i_1_n_0;
  wire wait_resp_q_reg_0;
  wire wait_resp_q_reg_1;
  wire wait_resp_q_reg_n_0;
  wire wr_en;
  wire [3:2]NLW_byte_count_q0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_byte_count_q0_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_sof_time_q_reg[12]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \FSM_onehot_state_q[0]_i_1 
       (.I0(\FSM_onehot_state_q_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_q[14]_i_5_n_0 ),
        .I2(utmi_txready_i),
        .O(\FSM_onehot_state_q[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEEEEEE)) 
    \FSM_onehot_state_q[14]_i_1 
       (.I0(\FSM_onehot_state_q[14]_i_3_n_0 ),
        .I1(\FSM_onehot_state_q[14]_i_4_n_0 ),
        .I2(\FSM_onehot_state_q[14]_i_5_n_0 ),
        .I3(utmi_txready_i),
        .I4(p_0_in_0),
        .I5(\FSM_onehot_state_q[14]_i_6_n_0 ),
        .O(\FSM_onehot_state_q[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state_q[14]_i_10 
       (.I0(usb_rx_stat_count_bits_in_w[5]),
        .I1(usb_rx_stat_count_bits_in_w[0]),
        .I2(usb_rx_stat_count_bits_in_w[1]),
        .I3(usb_rx_stat_count_bits_in_w[4]),
        .I4(\FSM_onehot_state_q[14]_i_12_n_0 ),
        .O(\FSM_onehot_state_q[14]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8000)) 
    \FSM_onehot_state_q[14]_i_11 
       (.I0(\FSM_onehot_state_q_reg_n_0_[9] ),
        .I1(rx_time_en_q_reg_n_0),
        .I2(send_ack_q),
        .I3(\FSM_onehot_state_q[14]_i_13_n_0 ),
        .I4(\FSM_onehot_state_q[14]_i_14_n_0 ),
        .I5(\FSM_onehot_state_q[14]_i_15_n_0 ),
        .O(\FSM_onehot_state_q[14]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state_q[14]_i_12 
       (.I0(usb_rx_stat_count_bits_in_w[7]),
        .I1(usb_rx_stat_count_bits_in_w[6]),
        .I2(usb_rx_stat_count_bits_in_w[12]),
        .I3(usb_rx_stat_count_bits_in_w[8]),
        .O(\FSM_onehot_state_q[14]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_onehot_state_q[14]_i_13 
       (.I0(\rx_time_q_reg_n_0_[2] ),
        .I1(\rx_time_q_reg_n_0_[0] ),
        .I2(\rx_time_q_reg_n_0_[1] ),
        .O(\FSM_onehot_state_q[14]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h444F444F444F4444)) 
    \FSM_onehot_state_q[14]_i_14 
       (.I0(rx_active_q),
        .I1(\FSM_onehot_state_q_reg_n_0_[7] ),
        .I2(utmi_linestate_i[1]),
        .I3(utmi_linestate_i[0]),
        .I4(p_0_in1_in),
        .I5(\FSM_onehot_state_q_reg_n_0_[14] ),
        .O(\FSM_onehot_state_q[14]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state_q[14]_i_15 
       (.I0(status_sie_idle_w),
        .I1(wait_resp_q_reg_0),
        .I2(p_0_in2_in),
        .I3(\data_valid_q_reg_n_0_[0] ),
        .O(\FSM_onehot_state_q[14]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFF202020)) 
    \FSM_onehot_state_q[14]_i_2 
       (.I0(in_transfer_q),
        .I1(send_sof_q),
        .I2(\FSM_onehot_state_q_reg_n_0_[13] ),
        .I3(\FSM_onehot_state_q_reg_n_0_[2] ),
        .I4(wait_resp_q_reg_n_0),
        .O(\FSM_onehot_state_q[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA888888888)) 
    \FSM_onehot_state_q[14]_i_3 
       (.I0(\FSM_onehot_state_q_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_q[14]_i_7_n_0 ),
        .I2(last_tx_time_q_reg[2]),
        .I3(\last_tx_time_q[5]_i_2_n_0 ),
        .I4(last_tx_time_q_reg[3]),
        .I5(last_tx_time_q_reg[4]),
        .O(\FSM_onehot_state_q[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80808000)) 
    \FSM_onehot_state_q[14]_i_4 
       (.I0(\FSM_onehot_state_q[14]_i_8_n_0 ),
        .I1(wait_resp_q_reg_n_0),
        .I2(p_0_in2_in),
        .I3(last_tx_time_q_reg[8]),
        .I4(last_tx_time_q_reg[9]),
        .O(\FSM_onehot_state_q[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state_q[14]_i_5 
       (.I0(\FSM_onehot_state_q[14]_i_9_n_0 ),
        .I1(usb_rx_stat_count_bits_in_w[11]),
        .I2(usb_rx_stat_count_bits_in_w[10]),
        .I3(usb_rx_stat_count_bits_in_w[3]),
        .I4(usb_rx_stat_count_bits_in_w[2]),
        .I5(\FSM_onehot_state_q[14]_i_10_n_0 ),
        .O(\FSM_onehot_state_q[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFD0000)) 
    \FSM_onehot_state_q[14]_i_6 
       (.I0(utmi_txvalid_o_INST_0_i_1_n_0),
        .I1(\FSM_onehot_state_q_reg_n_0_[5] ),
        .I2(\FSM_onehot_state_q_reg_n_0_[10] ),
        .I3(p_0_in10_in),
        .I4(utmi_txready_i),
        .I5(\FSM_onehot_state_q[14]_i_11_n_0 ),
        .O(\FSM_onehot_state_q[14]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state_q[14]_i_7 
       (.I0(last_tx_time_q_reg[9]),
        .I1(last_tx_time_q_reg[8]),
        .I2(last_tx_time_q_reg[6]),
        .I3(last_tx_time_q_reg[7]),
        .I4(last_tx_time_q_reg[5]),
        .O(\FSM_onehot_state_q[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFEFEFEFE)) 
    \FSM_onehot_state_q[14]_i_8 
       (.I0(last_tx_time_q_reg[6]),
        .I1(last_tx_time_q_reg[7]),
        .I2(last_tx_time_q_reg[9]),
        .I3(last_tx_time_q_reg[4]),
        .I4(\last_tx_time_q[9]_i_7_n_0 ),
        .I5(last_tx_time_q_reg[5]),
        .O(\FSM_onehot_state_q[14]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state_q[14]_i_9 
       (.I0(usb_rx_stat_count_bits_in_w[15]),
        .I1(usb_rx_stat_count_bits_in_w[14]),
        .I2(usb_rx_stat_count_bits_in_w[13]),
        .I3(usb_rx_stat_count_bits_in_w[9]),
        .O(\FSM_onehot_state_q[14]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hAEAA)) 
    \FSM_onehot_state_q[1]_i_1 
       (.I0(p_0_in_0),
        .I1(utmi_txready_i),
        .I2(\FSM_onehot_state_q[14]_i_5_n_0 ),
        .I3(\FSM_onehot_state_q_reg_n_0_[5] ),
        .O(\FSM_onehot_state_q[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \FSM_onehot_state_q[3]_i_1 
       (.I0(\FSM_onehot_state_q_reg_n_0_[13] ),
        .I1(send_sof_q),
        .I2(in_transfer_q),
        .O(\FSM_onehot_state_q[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state_q[5]_i_1 
       (.I0(\FSM_onehot_state_q_reg_n_0_[4] ),
        .I1(send_sof_q),
        .O(\FSM_onehot_state_q[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state_q[7]_i_1 
       (.I0(\data_valid_q_reg_n_0_[0] ),
        .I1(p_0_in2_in),
        .O(\FSM_onehot_state_q[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFB00)) 
    \FSM_onehot_state_q[8]_i_1 
       (.I0(\FSM_onehot_state_q[9]_i_3_n_0 ),
        .I1(send_ack_q),
        .I2(\FSM_onehot_state_q[9]_i_2_n_0 ),
        .I3(\FSM_onehot_state_q_reg_n_0_[7] ),
        .I4(\FSM_onehot_state_q[8]_i_2_n_0 ),
        .O(\FSM_onehot_state_q[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF222)) 
    \FSM_onehot_state_q[8]_i_2 
       (.I0(p_0_in2_in),
        .I1(\data_valid_q_reg_n_0_[0] ),
        .I2(send_sof_q),
        .I3(\FSM_onehot_state_q_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_q[8]_i_3_n_0 ),
        .I5(\FSM_onehot_state_q_reg_n_0_[10] ),
        .O(\FSM_onehot_state_q[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state_q[8]_i_3 
       (.I0(\FSM_onehot_state_q_reg_n_0_[2] ),
        .I1(wait_resp_q_reg_n_0),
        .O(\FSM_onehot_state_q[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \FSM_onehot_state_q[9]_i_1 
       (.I0(\FSM_onehot_state_q_reg_n_0_[7] ),
        .I1(\FSM_onehot_state_q[9]_i_2_n_0 ),
        .I2(send_ack_q),
        .I3(\FSM_onehot_state_q[9]_i_3_n_0 ),
        .O(\FSM_onehot_state_q[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \FSM_onehot_state_q[9]_i_2 
       (.I0(usb_rx_stat_resp_bits_in_w[0]),
        .I1(usb_rx_stat_resp_bits_in_w[1]),
        .I2(usb_rx_stat_resp_bits_in_w[5]),
        .I3(usb_rx_stat_resp_bits_in_w[6]),
        .I4(\FSM_onehot_state_q[9]_i_4_n_0 ),
        .O(\FSM_onehot_state_q[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E00000)) 
    \FSM_onehot_state_q[9]_i_3 
       (.I0(\FSM_onehot_state_q[9]_i_5_n_0 ),
        .I1(\FSM_onehot_state_q[9]_i_6_n_0 ),
        .I2(in_transfer_q),
        .I3(rx_active_q),
        .I4(\FSM_onehot_state_q_reg_n_0_[7] ),
        .I5(\FSM_onehot_state_q[9]_i_2_n_0 ),
        .O(\FSM_onehot_state_q[9]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFEEF)) 
    \FSM_onehot_state_q[9]_i_4 
       (.I0(usb_rx_stat_resp_bits_in_w[2]),
        .I1(usb_rx_stat_resp_bits_in_w[4]),
        .I2(usb_rx_stat_resp_bits_in_w[7]),
        .I3(usb_rx_stat_resp_bits_in_w[3]),
        .O(\FSM_onehot_state_q[9]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state_q[9]_i_5 
       (.I0(\crc_sum_q_reg_n_0_[6] ),
        .I1(\crc_sum_q_reg_n_0_[5] ),
        .I2(p_2_in),
        .I3(p_4_in),
        .I4(\FSM_onehot_state_q[9]_i_7_n_0 ),
        .O(\FSM_onehot_state_q[9]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \FSM_onehot_state_q[9]_i_6 
       (.I0(p_6_in),
        .I1(\crc_sum_q_reg_n_0_[7] ),
        .I2(\crc_sum_q_reg_n_0_[2] ),
        .I3(\crc_sum_q_reg_n_0_[0] ),
        .I4(\FSM_onehot_state_q[9]_i_8_n_0 ),
        .O(\FSM_onehot_state_q[9]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \FSM_onehot_state_q[9]_i_7 
       (.I0(\crc_sum_q_reg_n_0_[3] ),
        .I1(\crc_sum_q_reg_n_0_[1] ),
        .I2(\crc_sum_q_reg_n_0_[4] ),
        .I3(p_3_in_1),
        .O(\FSM_onehot_state_q[9]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FSM_onehot_state_q[9]_i_8 
       (.I0(\crc_sum_q_reg_n_0_[8] ),
        .I1(p_1_in),
        .I2(\crc_sum_q_reg_n_0_[15] ),
        .I3(p_5_in),
        .O(\FSM_onehot_state_q[9]_i_8_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_TX_CRC1:000000000000010,STATE_TX_DATA:000000000000001,STATE_TX_WAIT_EOP:000000000001000,STATE_TX_PID:000000000100000,STATE_TX_IFS:000000000010000,STATE_RX_WAIT:000000001000000,STATE_TX_WAIT:000001000000000,STATE_RX_DATA:000000010000000,STATE_IDLE:000000100000000,STATE_TX_TOKEN2:001000000000000,STATE_TX_ACKNAK:000010000000000,STATE_TX_TOKEN3:010000000000000,STATE_TX_TOKEN1:000100000000000,STATE_RX_WAIT_EOP:100000000000000,STATE_TX_CRC2:000000000000100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_q_reg[0] 
       (.C(clk_i),
        .CE(\FSM_onehot_state_q[14]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\FSM_onehot_state_q[0]_i_1_n_0 ),
        .Q(p_0_in_0));
  (* FSM_ENCODED_STATES = "STATE_TX_CRC1:000000000000010,STATE_TX_DATA:000000000000001,STATE_TX_WAIT_EOP:000000000001000,STATE_TX_PID:000000000100000,STATE_TX_IFS:000000000010000,STATE_RX_WAIT:000000001000000,STATE_TX_WAIT:000001000000000,STATE_RX_DATA:000000010000000,STATE_IDLE:000000100000000,STATE_TX_TOKEN2:001000000000000,STATE_TX_ACKNAK:000010000000000,STATE_TX_TOKEN3:010000000000000,STATE_TX_TOKEN1:000100000000000,STATE_RX_WAIT_EOP:100000000000000,STATE_TX_CRC2:000000000000100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_q_reg[10] 
       (.C(clk_i),
        .CE(\FSM_onehot_state_q[14]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\FSM_onehot_state_q_reg_n_0_[9] ),
        .Q(\FSM_onehot_state_q_reg_n_0_[10] ));
  (* FSM_ENCODED_STATES = "STATE_TX_CRC1:000000000000010,STATE_TX_DATA:000000000000001,STATE_TX_WAIT_EOP:000000000001000,STATE_TX_PID:000000000100000,STATE_TX_IFS:000000000010000,STATE_RX_WAIT:000000001000000,STATE_TX_WAIT:000001000000000,STATE_RX_DATA:000000010000000,STATE_IDLE:000000100000000,STATE_TX_TOKEN2:001000000000000,STATE_TX_ACKNAK:000010000000000,STATE_TX_TOKEN3:010000000000000,STATE_TX_TOKEN1:000100000000000,STATE_RX_WAIT_EOP:100000000000000,STATE_TX_CRC2:000000000000100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_q_reg[11] 
       (.C(clk_i),
        .CE(\FSM_onehot_state_q[14]_i_1_n_0 ),
        .CLR(rst_i),
        .D(status_sie_idle_w),
        .Q(p_0_in10_in));
  (* FSM_ENCODED_STATES = "STATE_TX_CRC1:000000000000010,STATE_TX_DATA:000000000000001,STATE_TX_WAIT_EOP:000000000001000,STATE_TX_PID:000000000100000,STATE_TX_IFS:000000000010000,STATE_RX_WAIT:000000001000000,STATE_TX_WAIT:000001000000000,STATE_RX_DATA:000000010000000,STATE_IDLE:000000100000000,STATE_TX_TOKEN2:001000000000000,STATE_TX_ACKNAK:000010000000000,STATE_TX_TOKEN3:010000000000000,STATE_TX_TOKEN1:000100000000000,STATE_RX_WAIT_EOP:100000000000000,STATE_TX_CRC2:000000000000100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_q_reg[12] 
       (.C(clk_i),
        .CE(\FSM_onehot_state_q[14]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_0_in10_in),
        .Q(\FSM_onehot_state_q_reg_n_0_[12] ));
  (* FSM_ENCODED_STATES = "STATE_TX_CRC1:000000000000010,STATE_TX_DATA:000000000000001,STATE_TX_WAIT_EOP:000000000001000,STATE_TX_PID:000000000100000,STATE_TX_IFS:000000000010000,STATE_RX_WAIT:000000001000000,STATE_TX_WAIT:000001000000000,STATE_RX_DATA:000000010000000,STATE_IDLE:000000100000000,STATE_TX_TOKEN2:001000000000000,STATE_TX_ACKNAK:000010000000000,STATE_TX_TOKEN3:010000000000000,STATE_TX_TOKEN1:000100000000000,STATE_RX_WAIT_EOP:100000000000000,STATE_TX_CRC2:000000000000100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_q_reg[13] 
       (.C(clk_i),
        .CE(\FSM_onehot_state_q[14]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\FSM_onehot_state_q_reg_n_0_[12] ),
        .Q(\FSM_onehot_state_q_reg_n_0_[13] ));
  (* FSM_ENCODED_STATES = "STATE_TX_CRC1:000000000000010,STATE_TX_DATA:000000000000001,STATE_TX_WAIT_EOP:000000000001000,STATE_TX_PID:000000000100000,STATE_TX_IFS:000000000010000,STATE_RX_WAIT:000000001000000,STATE_TX_WAIT:000001000000000,STATE_RX_DATA:000000010000000,STATE_IDLE:000000100000000,STATE_TX_TOKEN2:001000000000000,STATE_TX_ACKNAK:000010000000000,STATE_TX_TOKEN3:010000000000000,STATE_TX_TOKEN1:000100000000000,STATE_RX_WAIT_EOP:100000000000000,STATE_TX_CRC2:000000000000100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_q_reg[14] 
       (.C(clk_i),
        .CE(\FSM_onehot_state_q[14]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\FSM_onehot_state_q[14]_i_2_n_0 ),
        .Q(\FSM_onehot_state_q_reg_n_0_[14] ));
  (* FSM_ENCODED_STATES = "STATE_TX_CRC1:000000000000010,STATE_TX_DATA:000000000000001,STATE_TX_WAIT_EOP:000000000001000,STATE_TX_PID:000000000100000,STATE_TX_IFS:000000000010000,STATE_RX_WAIT:000000001000000,STATE_TX_WAIT:000001000000000,STATE_RX_DATA:000000010000000,STATE_IDLE:000000100000000,STATE_TX_TOKEN2:001000000000000,STATE_TX_ACKNAK:000010000000000,STATE_TX_TOKEN3:010000000000000,STATE_TX_TOKEN1:000100000000000,STATE_RX_WAIT_EOP:100000000000000,STATE_TX_CRC2:000000000000100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_q_reg[1] 
       (.C(clk_i),
        .CE(\FSM_onehot_state_q[14]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\FSM_onehot_state_q[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_q_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "STATE_TX_CRC1:000000000000010,STATE_TX_DATA:000000000000001,STATE_TX_WAIT_EOP:000000000001000,STATE_TX_PID:000000000100000,STATE_TX_IFS:000000000010000,STATE_RX_WAIT:000000001000000,STATE_TX_WAIT:000001000000000,STATE_RX_DATA:000000010000000,STATE_IDLE:000000100000000,STATE_TX_TOKEN2:001000000000000,STATE_TX_ACKNAK:000010000000000,STATE_TX_TOKEN3:010000000000000,STATE_TX_TOKEN1:000100000000000,STATE_RX_WAIT_EOP:100000000000000,STATE_TX_CRC2:000000000000100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_q_reg[2] 
       (.C(clk_i),
        .CE(\FSM_onehot_state_q[14]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\FSM_onehot_state_q_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_q_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "STATE_TX_CRC1:000000000000010,STATE_TX_DATA:000000000000001,STATE_TX_WAIT_EOP:000000000001000,STATE_TX_PID:000000000100000,STATE_TX_IFS:000000000010000,STATE_RX_WAIT:000000001000000,STATE_TX_WAIT:000001000000000,STATE_RX_DATA:000000010000000,STATE_IDLE:000000100000000,STATE_TX_TOKEN2:001000000000000,STATE_TX_ACKNAK:000010000000000,STATE_TX_TOKEN3:010000000000000,STATE_TX_TOKEN1:000100000000000,STATE_RX_WAIT_EOP:100000000000000,STATE_TX_CRC2:000000000000100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_q_reg[3] 
       (.C(clk_i),
        .CE(\FSM_onehot_state_q[14]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\FSM_onehot_state_q[3]_i_1_n_0 ),
        .Q(p_0_in1_in));
  (* FSM_ENCODED_STATES = "STATE_TX_CRC1:000000000000010,STATE_TX_DATA:000000000000001,STATE_TX_WAIT_EOP:000000000001000,STATE_TX_PID:000000000100000,STATE_TX_IFS:000000000010000,STATE_RX_WAIT:000000001000000,STATE_TX_WAIT:000001000000000,STATE_RX_DATA:000000010000000,STATE_IDLE:000000100000000,STATE_TX_TOKEN2:001000000000000,STATE_TX_ACKNAK:000010000000000,STATE_TX_TOKEN3:010000000000000,STATE_TX_TOKEN1:000100000000000,STATE_RX_WAIT_EOP:100000000000000,STATE_TX_CRC2:000000000000100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_q_reg[4] 
       (.C(clk_i),
        .CE(\FSM_onehot_state_q[14]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_0_in1_in),
        .Q(\FSM_onehot_state_q_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "STATE_TX_CRC1:000000000000010,STATE_TX_DATA:000000000000001,STATE_TX_WAIT_EOP:000000000001000,STATE_TX_PID:000000000100000,STATE_TX_IFS:000000000010000,STATE_RX_WAIT:000000001000000,STATE_TX_WAIT:000001000000000,STATE_RX_DATA:000000010000000,STATE_IDLE:000000100000000,STATE_TX_TOKEN2:001000000000000,STATE_TX_ACKNAK:000010000000000,STATE_TX_TOKEN3:010000000000000,STATE_TX_TOKEN1:000100000000000,STATE_RX_WAIT_EOP:100000000000000,STATE_TX_CRC2:000000000000100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_q_reg[5] 
       (.C(clk_i),
        .CE(\FSM_onehot_state_q[14]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\FSM_onehot_state_q[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_q_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "STATE_TX_CRC1:000000000000010,STATE_TX_DATA:000000000000001,STATE_TX_WAIT_EOP:000000000001000,STATE_TX_PID:000000000100000,STATE_TX_IFS:000000000010000,STATE_RX_WAIT:000000001000000,STATE_TX_WAIT:000001000000000,STATE_RX_DATA:000000010000000,STATE_IDLE:000000100000000,STATE_TX_TOKEN2:001000000000000,STATE_TX_ACKNAK:000010000000000,STATE_TX_TOKEN3:010000000000000,STATE_TX_TOKEN1:000100000000000,STATE_RX_WAIT_EOP:100000000000000,STATE_TX_CRC2:000000000000100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_q_reg[6] 
       (.C(clk_i),
        .CE(\FSM_onehot_state_q[14]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\FSM_onehot_state_q_reg_n_0_[14] ),
        .Q(p_0_in2_in));
  (* FSM_ENCODED_STATES = "STATE_TX_CRC1:000000000000010,STATE_TX_DATA:000000000000001,STATE_TX_WAIT_EOP:000000000001000,STATE_TX_PID:000000000100000,STATE_TX_IFS:000000000010000,STATE_RX_WAIT:000000001000000,STATE_TX_WAIT:000001000000000,STATE_RX_DATA:000000010000000,STATE_IDLE:000000100000000,STATE_TX_TOKEN2:001000000000000,STATE_TX_ACKNAK:000010000000000,STATE_TX_TOKEN3:010000000000000,STATE_TX_TOKEN1:000100000000000,STATE_RX_WAIT_EOP:100000000000000,STATE_TX_CRC2:000000000000100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_q_reg[7] 
       (.C(clk_i),
        .CE(\FSM_onehot_state_q[14]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\FSM_onehot_state_q[7]_i_1_n_0 ),
        .Q(\FSM_onehot_state_q_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "STATE_TX_CRC1:000000000000010,STATE_TX_DATA:000000000000001,STATE_TX_WAIT_EOP:000000000001000,STATE_TX_PID:000000000100000,STATE_TX_IFS:000000000010000,STATE_RX_WAIT:000000001000000,STATE_TX_WAIT:000001000000000,STATE_RX_DATA:000000010000000,STATE_IDLE:000000100000000,STATE_TX_TOKEN2:001000000000000,STATE_TX_ACKNAK:000010000000000,STATE_TX_TOKEN3:010000000000000,STATE_TX_TOKEN1:000100000000000,STATE_RX_WAIT_EOP:100000000000000,STATE_TX_CRC2:000000000000100" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_q_reg[8] 
       (.C(clk_i),
        .CE(\FSM_onehot_state_q[14]_i_1_n_0 ),
        .D(\FSM_onehot_state_q[8]_i_1_n_0 ),
        .PRE(rst_i),
        .Q(status_sie_idle_w));
  (* FSM_ENCODED_STATES = "STATE_TX_CRC1:000000000000010,STATE_TX_DATA:000000000000001,STATE_TX_WAIT_EOP:000000000001000,STATE_TX_PID:000000000100000,STATE_TX_IFS:000000000010000,STATE_RX_WAIT:000000001000000,STATE_TX_WAIT:000001000000000,STATE_RX_DATA:000000010000000,STATE_IDLE:000000100000000,STATE_TX_TOKEN2:001000000000000,STATE_TX_ACKNAK:000010000000000,STATE_TX_TOKEN3:010000000000000,STATE_TX_TOKEN1:000100000000000,STATE_RX_WAIT_EOP:100000000000000,STATE_TX_CRC2:000000000000100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_q_reg[9] 
       (.C(clk_i),
        .CE(\FSM_onehot_state_q[14]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\FSM_onehot_state_q[9]_i_1_n_0 ),
        .Q(\FSM_onehot_state_q_reg_n_0_[9] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 byte_count_q0_carry
       (.CI(1'b0),
        .CO({byte_count_q0_carry_n_0,byte_count_q0_carry_n_1,byte_count_q0_carry_n_2,byte_count_q0_carry_n_3}),
        .CYINIT(usb_rx_stat_count_bits_in_w[0]),
        .DI({usb_rx_stat_count_bits_in_w[3:1],byte_count_q0_carry_i_1_n_0}),
        .O({byte_count_q0_carry_n_4,byte_count_q0_carry_n_5,byte_count_q0_carry_n_6,byte_count_q0_carry_n_7}),
        .S({byte_count_q0_carry_i_2_n_0,byte_count_q0_carry_i_3_n_0,byte_count_q0_carry_i_4_n_0,byte_count_q0_carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 byte_count_q0_carry__0
       (.CI(byte_count_q0_carry_n_0),
        .CO({byte_count_q0_carry__0_n_0,byte_count_q0_carry__0_n_1,byte_count_q0_carry__0_n_2,byte_count_q0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(usb_rx_stat_count_bits_in_w[7:4]),
        .O({byte_count_q0_carry__0_n_4,byte_count_q0_carry__0_n_5,byte_count_q0_carry__0_n_6,byte_count_q0_carry__0_n_7}),
        .S({byte_count_q0_carry__0_i_1_n_0,byte_count_q0_carry__0_i_2_n_0,byte_count_q0_carry__0_i_3_n_0,byte_count_q0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    byte_count_q0_carry__0_i_1
       (.I0(usb_rx_stat_count_bits_in_w[7]),
        .I1(usb_rx_stat_count_bits_in_w[8]),
        .O(byte_count_q0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    byte_count_q0_carry__0_i_2
       (.I0(usb_rx_stat_count_bits_in_w[6]),
        .I1(usb_rx_stat_count_bits_in_w[7]),
        .O(byte_count_q0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    byte_count_q0_carry__0_i_3
       (.I0(usb_rx_stat_count_bits_in_w[5]),
        .I1(usb_rx_stat_count_bits_in_w[6]),
        .O(byte_count_q0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    byte_count_q0_carry__0_i_4
       (.I0(usb_rx_stat_count_bits_in_w[4]),
        .I1(usb_rx_stat_count_bits_in_w[5]),
        .O(byte_count_q0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 byte_count_q0_carry__1
       (.CI(byte_count_q0_carry__0_n_0),
        .CO({byte_count_q0_carry__1_n_0,byte_count_q0_carry__1_n_1,byte_count_q0_carry__1_n_2,byte_count_q0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(usb_rx_stat_count_bits_in_w[11:8]),
        .O({byte_count_q0_carry__1_n_4,byte_count_q0_carry__1_n_5,byte_count_q0_carry__1_n_6,byte_count_q0_carry__1_n_7}),
        .S({byte_count_q0_carry__1_i_1_n_0,byte_count_q0_carry__1_i_2_n_0,byte_count_q0_carry__1_i_3_n_0,byte_count_q0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    byte_count_q0_carry__1_i_1
       (.I0(usb_rx_stat_count_bits_in_w[11]),
        .I1(usb_rx_stat_count_bits_in_w[12]),
        .O(byte_count_q0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    byte_count_q0_carry__1_i_2
       (.I0(usb_rx_stat_count_bits_in_w[10]),
        .I1(usb_rx_stat_count_bits_in_w[11]),
        .O(byte_count_q0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    byte_count_q0_carry__1_i_3
       (.I0(usb_rx_stat_count_bits_in_w[9]),
        .I1(usb_rx_stat_count_bits_in_w[10]),
        .O(byte_count_q0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    byte_count_q0_carry__1_i_4
       (.I0(usb_rx_stat_count_bits_in_w[8]),
        .I1(usb_rx_stat_count_bits_in_w[9]),
        .O(byte_count_q0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 byte_count_q0_carry__2
       (.CI(byte_count_q0_carry__1_n_0),
        .CO({NLW_byte_count_q0_carry__2_CO_UNCONNECTED[3:2],byte_count_q0_carry__2_n_2,byte_count_q0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,usb_rx_stat_count_bits_in_w[13:12]}),
        .O({NLW_byte_count_q0_carry__2_O_UNCONNECTED[3],byte_count_q0_carry__2_n_5,byte_count_q0_carry__2_n_6,byte_count_q0_carry__2_n_7}),
        .S({1'b0,byte_count_q0_carry__2_i_1_n_0,byte_count_q0_carry__2_i_2_n_0,byte_count_q0_carry__2_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    byte_count_q0_carry__2_i_1
       (.I0(usb_rx_stat_count_bits_in_w[14]),
        .I1(usb_rx_stat_count_bits_in_w[15]),
        .O(byte_count_q0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    byte_count_q0_carry__2_i_2
       (.I0(usb_rx_stat_count_bits_in_w[13]),
        .I1(usb_rx_stat_count_bits_in_w[14]),
        .O(byte_count_q0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    byte_count_q0_carry__2_i_3
       (.I0(usb_rx_stat_count_bits_in_w[12]),
        .I1(usb_rx_stat_count_bits_in_w[13]),
        .O(byte_count_q0_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'h1F)) 
    byte_count_q0_carry_i_1
       (.I0(\FSM_onehot_state_q_reg_n_0_[5] ),
        .I1(p_0_in_0),
        .I2(utmi_txready_i),
        .O(byte_count_q0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    byte_count_q0_carry_i_2
       (.I0(usb_rx_stat_count_bits_in_w[3]),
        .I1(usb_rx_stat_count_bits_in_w[4]),
        .O(byte_count_q0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    byte_count_q0_carry_i_3
       (.I0(usb_rx_stat_count_bits_in_w[2]),
        .I1(usb_rx_stat_count_bits_in_w[3]),
        .O(byte_count_q0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    byte_count_q0_carry_i_4
       (.I0(usb_rx_stat_count_bits_in_w[1]),
        .I1(usb_rx_stat_count_bits_in_w[2]),
        .O(byte_count_q0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h666A)) 
    byte_count_q0_carry_i_5
       (.I0(usb_rx_stat_count_bits_in_w[1]),
        .I1(utmi_txready_i),
        .I2(p_0_in_0),
        .I3(\FSM_onehot_state_q_reg_n_0_[5] ),
        .O(byte_count_q0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h008000800080FFBF)) 
    \byte_count_q[0]_i_1 
       (.I0(Q[0]),
        .I1(status_sie_idle_w),
        .I2(wait_resp_q_reg_0),
        .I3(send_sof_q_reg_0),
        .I4(p_0_in2_in),
        .I5(usb_rx_stat_count_bits_in_w[0]),
        .O(p_1_in__0[0]));
  LUT6 #(
    .INIT(64'h00800080FFBF0080)) 
    \byte_count_q[10]_i_1 
       (.I0(Q[10]),
        .I1(status_sie_idle_w),
        .I2(wait_resp_q_reg_0),
        .I3(send_sof_q_reg_0),
        .I4(byte_count_q0_carry__1_n_6),
        .I5(p_0_in2_in),
        .O(p_1_in__0[10]));
  LUT6 #(
    .INIT(64'h00800080FFBF0080)) 
    \byte_count_q[11]_i_1 
       (.I0(Q[11]),
        .I1(status_sie_idle_w),
        .I2(wait_resp_q_reg_0),
        .I3(send_sof_q_reg_0),
        .I4(byte_count_q0_carry__1_n_5),
        .I5(p_0_in2_in),
        .O(p_1_in__0[11]));
  LUT6 #(
    .INIT(64'h00800080FFBF0080)) 
    \byte_count_q[12]_i_1 
       (.I0(Q[12]),
        .I1(status_sie_idle_w),
        .I2(wait_resp_q_reg_0),
        .I3(send_sof_q_reg_0),
        .I4(byte_count_q0_carry__1_n_4),
        .I5(p_0_in2_in),
        .O(p_1_in__0[12]));
  LUT6 #(
    .INIT(64'h00800080FFBF0080)) 
    \byte_count_q[13]_i_1 
       (.I0(Q[13]),
        .I1(status_sie_idle_w),
        .I2(wait_resp_q_reg_0),
        .I3(send_sof_q_reg_0),
        .I4(byte_count_q0_carry__2_n_7),
        .I5(p_0_in2_in),
        .O(p_1_in__0[13]));
  LUT6 #(
    .INIT(64'h00800080FFBF0080)) 
    \byte_count_q[14]_i_1 
       (.I0(Q[14]),
        .I1(status_sie_idle_w),
        .I2(wait_resp_q_reg_0),
        .I3(send_sof_q_reg_0),
        .I4(byte_count_q0_carry__2_n_6),
        .I5(p_0_in2_in),
        .O(p_1_in__0[14]));
  LUT6 #(
    .INIT(64'hFFFEFCFEFCFEFCFE)) 
    \byte_count_q[15]_i_1 
       (.I0(\FSM_onehot_state_q[14]_i_5_n_0 ),
        .I1(p_0_in2_in),
        .I2(\byte_count_q[15]_i_3_n_0 ),
        .I3(\byte_count_q[15]_i_4_n_0 ),
        .I4(\byte_count_q[15]_i_5_n_0 ),
        .I5(\FSM_onehot_state_q_reg_n_0_[7] ),
        .O(\byte_count_q[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00800080FFBF0080)) 
    \byte_count_q[15]_i_2 
       (.I0(Q[15]),
        .I1(status_sie_idle_w),
        .I2(wait_resp_q_reg_0),
        .I3(send_sof_q_reg_0),
        .I4(byte_count_q0_carry__2_n_5),
        .I5(p_0_in2_in),
        .O(p_1_in__0[15]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \byte_count_q[15]_i_3 
       (.I0(status_sie_idle_w),
        .I1(wait_resp_q_reg_0),
        .I2(send_sof_q_reg_0),
        .O(\byte_count_q[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \byte_count_q[15]_i_4 
       (.I0(\FSM_onehot_state_q_reg_n_0_[5] ),
        .I1(p_0_in_0),
        .I2(utmi_txready_i),
        .O(\byte_count_q[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \byte_count_q[15]_i_5 
       (.I0(\data_valid_q_reg_n_0_[0] ),
        .I1(data_crc_q),
        .O(\byte_count_q[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00800080FFBF0080)) 
    \byte_count_q[1]_i_1 
       (.I0(Q[1]),
        .I1(status_sie_idle_w),
        .I2(wait_resp_q_reg_0),
        .I3(send_sof_q_reg_0),
        .I4(byte_count_q0_carry_n_7),
        .I5(p_0_in2_in),
        .O(p_1_in__0[1]));
  LUT6 #(
    .INIT(64'h00800080FFBF0080)) 
    \byte_count_q[2]_i_1 
       (.I0(Q[2]),
        .I1(status_sie_idle_w),
        .I2(wait_resp_q_reg_0),
        .I3(send_sof_q_reg_0),
        .I4(byte_count_q0_carry_n_6),
        .I5(p_0_in2_in),
        .O(p_1_in__0[2]));
  LUT6 #(
    .INIT(64'h00800080FFBF0080)) 
    \byte_count_q[3]_i_1 
       (.I0(Q[3]),
        .I1(status_sie_idle_w),
        .I2(wait_resp_q_reg_0),
        .I3(send_sof_q_reg_0),
        .I4(byte_count_q0_carry_n_5),
        .I5(p_0_in2_in),
        .O(p_1_in__0[3]));
  LUT6 #(
    .INIT(64'h00800080FFBF0080)) 
    \byte_count_q[4]_i_1 
       (.I0(Q[4]),
        .I1(status_sie_idle_w),
        .I2(wait_resp_q_reg_0),
        .I3(send_sof_q_reg_0),
        .I4(byte_count_q0_carry_n_4),
        .I5(p_0_in2_in),
        .O(p_1_in__0[4]));
  LUT6 #(
    .INIT(64'h00800080FFBF0080)) 
    \byte_count_q[5]_i_1 
       (.I0(Q[5]),
        .I1(status_sie_idle_w),
        .I2(wait_resp_q_reg_0),
        .I3(send_sof_q_reg_0),
        .I4(byte_count_q0_carry__0_n_7),
        .I5(p_0_in2_in),
        .O(p_1_in__0[5]));
  LUT6 #(
    .INIT(64'h00800080FFBF0080)) 
    \byte_count_q[6]_i_1 
       (.I0(Q[6]),
        .I1(status_sie_idle_w),
        .I2(wait_resp_q_reg_0),
        .I3(send_sof_q_reg_0),
        .I4(byte_count_q0_carry__0_n_6),
        .I5(p_0_in2_in),
        .O(p_1_in__0[6]));
  LUT6 #(
    .INIT(64'h00800080FFBF0080)) 
    \byte_count_q[7]_i_1 
       (.I0(Q[7]),
        .I1(status_sie_idle_w),
        .I2(wait_resp_q_reg_0),
        .I3(send_sof_q_reg_0),
        .I4(byte_count_q0_carry__0_n_5),
        .I5(p_0_in2_in),
        .O(p_1_in__0[7]));
  LUT6 #(
    .INIT(64'h00800080FFBF0080)) 
    \byte_count_q[8]_i_1 
       (.I0(Q[8]),
        .I1(status_sie_idle_w),
        .I2(wait_resp_q_reg_0),
        .I3(send_sof_q_reg_0),
        .I4(byte_count_q0_carry__0_n_4),
        .I5(p_0_in2_in),
        .O(p_1_in__0[8]));
  LUT6 #(
    .INIT(64'h00800080FFBF0080)) 
    \byte_count_q[9]_i_1 
       (.I0(Q[9]),
        .I1(status_sie_idle_w),
        .I2(wait_resp_q_reg_0),
        .I3(send_sof_q_reg_0),
        .I4(byte_count_q0_carry__1_n_7),
        .I5(p_0_in2_in),
        .O(p_1_in__0[9]));
  FDCE \byte_count_q_reg[0] 
       (.C(clk_i),
        .CE(\byte_count_q[15]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_1_in__0[0]),
        .Q(usb_rx_stat_count_bits_in_w[0]));
  FDCE \byte_count_q_reg[10] 
       (.C(clk_i),
        .CE(\byte_count_q[15]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_1_in__0[10]),
        .Q(usb_rx_stat_count_bits_in_w[10]));
  FDCE \byte_count_q_reg[11] 
       (.C(clk_i),
        .CE(\byte_count_q[15]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_1_in__0[11]),
        .Q(usb_rx_stat_count_bits_in_w[11]));
  FDCE \byte_count_q_reg[12] 
       (.C(clk_i),
        .CE(\byte_count_q[15]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_1_in__0[12]),
        .Q(usb_rx_stat_count_bits_in_w[12]));
  FDCE \byte_count_q_reg[13] 
       (.C(clk_i),
        .CE(\byte_count_q[15]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_1_in__0[13]),
        .Q(usb_rx_stat_count_bits_in_w[13]));
  FDCE \byte_count_q_reg[14] 
       (.C(clk_i),
        .CE(\byte_count_q[15]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_1_in__0[14]),
        .Q(usb_rx_stat_count_bits_in_w[14]));
  FDCE \byte_count_q_reg[15] 
       (.C(clk_i),
        .CE(\byte_count_q[15]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_1_in__0[15]),
        .Q(usb_rx_stat_count_bits_in_w[15]));
  FDCE \byte_count_q_reg[1] 
       (.C(clk_i),
        .CE(\byte_count_q[15]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_1_in__0[1]),
        .Q(usb_rx_stat_count_bits_in_w[1]));
  FDCE \byte_count_q_reg[2] 
       (.C(clk_i),
        .CE(\byte_count_q[15]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_1_in__0[2]),
        .Q(usb_rx_stat_count_bits_in_w[2]));
  FDCE \byte_count_q_reg[3] 
       (.C(clk_i),
        .CE(\byte_count_q[15]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_1_in__0[3]),
        .Q(usb_rx_stat_count_bits_in_w[3]));
  FDCE \byte_count_q_reg[4] 
       (.C(clk_i),
        .CE(\byte_count_q[15]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_1_in__0[4]),
        .Q(usb_rx_stat_count_bits_in_w[4]));
  FDCE \byte_count_q_reg[5] 
       (.C(clk_i),
        .CE(\byte_count_q[15]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_1_in__0[5]),
        .Q(usb_rx_stat_count_bits_in_w[5]));
  FDCE \byte_count_q_reg[6] 
       (.C(clk_i),
        .CE(\byte_count_q[15]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_1_in__0[6]),
        .Q(usb_rx_stat_count_bits_in_w[6]));
  FDCE \byte_count_q_reg[7] 
       (.C(clk_i),
        .CE(\byte_count_q[15]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_1_in__0[7]),
        .Q(usb_rx_stat_count_bits_in_w[7]));
  FDCE \byte_count_q_reg[8] 
       (.C(clk_i),
        .CE(\byte_count_q[15]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_1_in__0[8]),
        .Q(usb_rx_stat_count_bits_in_w[8]));
  FDCE \byte_count_q_reg[9] 
       (.C(clk_i),
        .CE(\byte_count_q[15]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_1_in__0[9]),
        .Q(usb_rx_stat_count_bits_in_w[9]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \crc_sum_q[0]_i_1 
       (.I0(crc_out_w[0]),
        .I1(\FSM_onehot_state_q_reg_n_0_[5] ),
        .I2(p_0_in2_in),
        .O(\crc_sum_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \crc_sum_q[10]_i_1 
       (.I0(crc_out_w[10]),
        .I1(\FSM_onehot_state_q_reg_n_0_[5] ),
        .I2(p_0_in2_in),
        .O(\crc_sum_q[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \crc_sum_q[11]_i_1 
       (.I0(crc_out_w[11]),
        .I1(\FSM_onehot_state_q_reg_n_0_[5] ),
        .I2(p_0_in2_in),
        .O(\crc_sum_q[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \crc_sum_q[12]_i_1 
       (.I0(crc_out_w[12]),
        .I1(\FSM_onehot_state_q_reg_n_0_[5] ),
        .I2(p_0_in2_in),
        .O(\crc_sum_q[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \crc_sum_q[13]_i_1 
       (.I0(crc_out_w[13]),
        .I1(\FSM_onehot_state_q_reg_n_0_[5] ),
        .I2(p_0_in2_in),
        .O(\crc_sum_q[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \crc_sum_q[14]_i_1 
       (.I0(crc_out_w[14]),
        .I1(\FSM_onehot_state_q_reg_n_0_[5] ),
        .I2(p_0_in2_in),
        .O(\crc_sum_q[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \crc_sum_q[15]_i_1 
       (.I0(p_0_in_0),
        .I1(utmi_txready_i),
        .I2(p_0_in2_in),
        .I3(\FSM_onehot_state_q_reg_n_0_[5] ),
        .I4(\data_valid_q_reg_n_0_[0] ),
        .I5(\FSM_onehot_state_q_reg_n_0_[7] ),
        .O(crc_sum_q));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \crc_sum_q[15]_i_2 
       (.I0(crc_out_w[15]),
        .I1(\FSM_onehot_state_q_reg_n_0_[5] ),
        .I2(p_0_in2_in),
        .O(\crc_sum_q[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \crc_sum_q[1]_i_1 
       (.I0(crc_out_w[1]),
        .I1(\FSM_onehot_state_q_reg_n_0_[5] ),
        .I2(p_0_in2_in),
        .O(\crc_sum_q[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \crc_sum_q[2]_i_1 
       (.I0(crc_out_w[2]),
        .I1(\FSM_onehot_state_q_reg_n_0_[5] ),
        .I2(p_0_in2_in),
        .O(\crc_sum_q[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \crc_sum_q[3]_i_1 
       (.I0(crc_out_w[3]),
        .I1(\FSM_onehot_state_q_reg_n_0_[5] ),
        .I2(p_0_in2_in),
        .O(\crc_sum_q[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \crc_sum_q[4]_i_1 
       (.I0(crc_out_w[4]),
        .I1(\FSM_onehot_state_q_reg_n_0_[5] ),
        .I2(p_0_in2_in),
        .O(\crc_sum_q[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \crc_sum_q[5]_i_1 
       (.I0(crc_out_w[5]),
        .I1(\FSM_onehot_state_q_reg_n_0_[5] ),
        .I2(p_0_in2_in),
        .O(\crc_sum_q[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \crc_sum_q[6]_i_1 
       (.I0(crc_out_w[6]),
        .I1(\FSM_onehot_state_q_reg_n_0_[5] ),
        .I2(p_0_in2_in),
        .O(\crc_sum_q[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \crc_sum_q[7]_i_1 
       (.I0(crc_out_w[7]),
        .I1(\FSM_onehot_state_q_reg_n_0_[5] ),
        .I2(p_0_in2_in),
        .O(\crc_sum_q[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \crc_sum_q[8]_i_1 
       (.I0(crc_out_w[8]),
        .I1(\FSM_onehot_state_q_reg_n_0_[5] ),
        .I2(p_0_in2_in),
        .O(\crc_sum_q[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \crc_sum_q[9]_i_1 
       (.I0(crc_out_w[9]),
        .I1(\FSM_onehot_state_q_reg_n_0_[5] ),
        .I2(p_0_in2_in),
        .O(\crc_sum_q[9]_i_1_n_0 ));
  FDPE \crc_sum_q_reg[0] 
       (.C(clk_i),
        .CE(crc_sum_q),
        .D(\crc_sum_q[0]_i_1_n_0 ),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[0] ));
  FDPE \crc_sum_q_reg[10] 
       (.C(clk_i),
        .CE(crc_sum_q),
        .D(\crc_sum_q[10]_i_1_n_0 ),
        .PRE(rst_i),
        .Q(p_5_in));
  FDPE \crc_sum_q_reg[11] 
       (.C(clk_i),
        .CE(crc_sum_q),
        .D(\crc_sum_q[11]_i_1_n_0 ),
        .PRE(rst_i),
        .Q(p_4_in));
  FDPE \crc_sum_q_reg[12] 
       (.C(clk_i),
        .CE(crc_sum_q),
        .D(\crc_sum_q[12]_i_1_n_0 ),
        .PRE(rst_i),
        .Q(p_3_in_1));
  FDPE \crc_sum_q_reg[13] 
       (.C(clk_i),
        .CE(crc_sum_q),
        .D(\crc_sum_q[13]_i_1_n_0 ),
        .PRE(rst_i),
        .Q(p_2_in));
  FDPE \crc_sum_q_reg[14] 
       (.C(clk_i),
        .CE(crc_sum_q),
        .D(\crc_sum_q[14]_i_1_n_0 ),
        .PRE(rst_i),
        .Q(p_1_in));
  FDPE \crc_sum_q_reg[15] 
       (.C(clk_i),
        .CE(crc_sum_q),
        .D(\crc_sum_q[15]_i_2_n_0 ),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[15] ));
  FDPE \crc_sum_q_reg[1] 
       (.C(clk_i),
        .CE(crc_sum_q),
        .D(\crc_sum_q[1]_i_1_n_0 ),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[1] ));
  FDPE \crc_sum_q_reg[2] 
       (.C(clk_i),
        .CE(crc_sum_q),
        .D(\crc_sum_q[2]_i_1_n_0 ),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[2] ));
  FDPE \crc_sum_q_reg[3] 
       (.C(clk_i),
        .CE(crc_sum_q),
        .D(\crc_sum_q[3]_i_1_n_0 ),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[3] ));
  FDPE \crc_sum_q_reg[4] 
       (.C(clk_i),
        .CE(crc_sum_q),
        .D(\crc_sum_q[4]_i_1_n_0 ),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[4] ));
  FDPE \crc_sum_q_reg[5] 
       (.C(clk_i),
        .CE(crc_sum_q),
        .D(\crc_sum_q[5]_i_1_n_0 ),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[5] ));
  FDPE \crc_sum_q_reg[6] 
       (.C(clk_i),
        .CE(crc_sum_q),
        .D(\crc_sum_q[6]_i_1_n_0 ),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[6] ));
  FDPE \crc_sum_q_reg[7] 
       (.C(clk_i),
        .CE(crc_sum_q),
        .D(\crc_sum_q[7]_i_1_n_0 ),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[7] ));
  FDPE \crc_sum_q_reg[8] 
       (.C(clk_i),
        .CE(crc_sum_q),
        .D(\crc_sum_q[8]_i_1_n_0 ),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[8] ));
  FDPE \crc_sum_q_reg[9] 
       (.C(clk_i),
        .CE(crc_sum_q),
        .D(\crc_sum_q[9]_i_1_n_0 ),
        .PRE(rst_i),
        .Q(p_6_in));
  FDCE \data_buffer_q_reg[0] 
       (.C(clk_i),
        .CE(shift_en_w),
        .CLR(rst_i),
        .D(data_buffer_q_reg_gate__6_n_0),
        .Q(din[0]));
  FDRE \data_buffer_q_reg[10]_u_sie_data_buffer_q_reg_c_1 
       (.C(clk_i),
        .CE(shift_en_w),
        .D(\data_buffer_q_reg[18]_srl2_u_sie_data_buffer_q_reg_c_0_n_0 ),
        .Q(\data_buffer_q_reg[10]_u_sie_data_buffer_q_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \data_buffer_q_reg[11]_u_sie_data_buffer_q_reg_c_1 
       (.C(clk_i),
        .CE(shift_en_w),
        .D(\data_buffer_q_reg[19]_srl2_u_sie_data_buffer_q_reg_c_0_n_0 ),
        .Q(\data_buffer_q_reg[11]_u_sie_data_buffer_q_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \data_buffer_q_reg[12]_u_sie_data_buffer_q_reg_c_1 
       (.C(clk_i),
        .CE(shift_en_w),
        .D(\data_buffer_q_reg[20]_srl2_u_sie_data_buffer_q_reg_c_0_n_0 ),
        .Q(\data_buffer_q_reg[12]_u_sie_data_buffer_q_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \data_buffer_q_reg[13]_u_sie_data_buffer_q_reg_c_1 
       (.C(clk_i),
        .CE(shift_en_w),
        .D(\data_buffer_q_reg[21]_srl2_u_sie_data_buffer_q_reg_c_0_n_0 ),
        .Q(\data_buffer_q_reg[13]_u_sie_data_buffer_q_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \data_buffer_q_reg[14]_u_sie_data_buffer_q_reg_c_1 
       (.C(clk_i),
        .CE(shift_en_w),
        .D(\data_buffer_q_reg[22]_srl2_u_sie_data_buffer_q_reg_c_0_n_0 ),
        .Q(\data_buffer_q_reg[14]_u_sie_data_buffer_q_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \data_buffer_q_reg[15]_u_sie_data_buffer_q_reg_c_1 
       (.C(clk_i),
        .CE(shift_en_w),
        .D(\data_buffer_q_reg[23]_srl2_u_sie_data_buffer_q_reg_c_0_n_0 ),
        .Q(\data_buffer_q_reg[15]_u_sie_data_buffer_q_reg_c_1_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "\\inst/usb_host_inst /\\u_sie/data_buffer_q_reg " *) 
  (* srl_name = "\\inst/usb_host_inst /\\u_sie/data_buffer_q_reg[16]_srl2_u_sie_data_buffer_q_reg_c_0 " *) 
  SRL16E \data_buffer_q_reg[16]_srl2_u_sie_data_buffer_q_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shift_en_w),
        .CLK(clk_i),
        .D(utmi_data_in_i[0]),
        .Q(\data_buffer_q_reg[16]_srl2_u_sie_data_buffer_q_reg_c_0_n_0 ));
  (* srl_bus_name = "\\inst/usb_host_inst /\\u_sie/data_buffer_q_reg " *) 
  (* srl_name = "\\inst/usb_host_inst /\\u_sie/data_buffer_q_reg[17]_srl2_u_sie_data_buffer_q_reg_c_0 " *) 
  SRL16E \data_buffer_q_reg[17]_srl2_u_sie_data_buffer_q_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shift_en_w),
        .CLK(clk_i),
        .D(utmi_data_in_i[1]),
        .Q(\data_buffer_q_reg[17]_srl2_u_sie_data_buffer_q_reg_c_0_n_0 ));
  (* srl_bus_name = "\\inst/usb_host_inst /\\u_sie/data_buffer_q_reg " *) 
  (* srl_name = "\\inst/usb_host_inst /\\u_sie/data_buffer_q_reg[18]_srl2_u_sie_data_buffer_q_reg_c_0 " *) 
  SRL16E \data_buffer_q_reg[18]_srl2_u_sie_data_buffer_q_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shift_en_w),
        .CLK(clk_i),
        .D(utmi_data_in_i[2]),
        .Q(\data_buffer_q_reg[18]_srl2_u_sie_data_buffer_q_reg_c_0_n_0 ));
  (* srl_bus_name = "\\inst/usb_host_inst /\\u_sie/data_buffer_q_reg " *) 
  (* srl_name = "\\inst/usb_host_inst /\\u_sie/data_buffer_q_reg[19]_srl2_u_sie_data_buffer_q_reg_c_0 " *) 
  SRL16E \data_buffer_q_reg[19]_srl2_u_sie_data_buffer_q_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shift_en_w),
        .CLK(clk_i),
        .D(utmi_data_in_i[3]),
        .Q(\data_buffer_q_reg[19]_srl2_u_sie_data_buffer_q_reg_c_0_n_0 ));
  FDCE \data_buffer_q_reg[1] 
       (.C(clk_i),
        .CE(shift_en_w),
        .CLR(rst_i),
        .D(data_buffer_q_reg_gate__5_n_0),
        .Q(din[1]));
  (* srl_bus_name = "\\inst/usb_host_inst /\\u_sie/data_buffer_q_reg " *) 
  (* srl_name = "\\inst/usb_host_inst /\\u_sie/data_buffer_q_reg[20]_srl2_u_sie_data_buffer_q_reg_c_0 " *) 
  SRL16E \data_buffer_q_reg[20]_srl2_u_sie_data_buffer_q_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shift_en_w),
        .CLK(clk_i),
        .D(utmi_data_in_i[4]),
        .Q(\data_buffer_q_reg[20]_srl2_u_sie_data_buffer_q_reg_c_0_n_0 ));
  (* srl_bus_name = "\\inst/usb_host_inst /\\u_sie/data_buffer_q_reg " *) 
  (* srl_name = "\\inst/usb_host_inst /\\u_sie/data_buffer_q_reg[21]_srl2_u_sie_data_buffer_q_reg_c_0 " *) 
  SRL16E \data_buffer_q_reg[21]_srl2_u_sie_data_buffer_q_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shift_en_w),
        .CLK(clk_i),
        .D(utmi_data_in_i[5]),
        .Q(\data_buffer_q_reg[21]_srl2_u_sie_data_buffer_q_reg_c_0_n_0 ));
  (* srl_bus_name = "\\inst/usb_host_inst /\\u_sie/data_buffer_q_reg " *) 
  (* srl_name = "\\inst/usb_host_inst /\\u_sie/data_buffer_q_reg[22]_srl2_u_sie_data_buffer_q_reg_c_0 " *) 
  SRL16E \data_buffer_q_reg[22]_srl2_u_sie_data_buffer_q_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shift_en_w),
        .CLK(clk_i),
        .D(utmi_data_in_i[6]),
        .Q(\data_buffer_q_reg[22]_srl2_u_sie_data_buffer_q_reg_c_0_n_0 ));
  (* srl_bus_name = "\\inst/usb_host_inst /\\u_sie/data_buffer_q_reg " *) 
  (* srl_name = "\\inst/usb_host_inst /\\u_sie/data_buffer_q_reg[23]_srl2_u_sie_data_buffer_q_reg_c_0 " *) 
  SRL16E \data_buffer_q_reg[23]_srl2_u_sie_data_buffer_q_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shift_en_w),
        .CLK(clk_i),
        .D(utmi_data_in_i[7]),
        .Q(\data_buffer_q_reg[23]_srl2_u_sie_data_buffer_q_reg_c_0_n_0 ));
  FDCE \data_buffer_q_reg[2] 
       (.C(clk_i),
        .CE(shift_en_w),
        .CLR(rst_i),
        .D(data_buffer_q_reg_gate__4_n_0),
        .Q(din[2]));
  FDCE \data_buffer_q_reg[3] 
       (.C(clk_i),
        .CE(shift_en_w),
        .CLR(rst_i),
        .D(data_buffer_q_reg_gate__3_n_0),
        .Q(din[3]));
  FDCE \data_buffer_q_reg[4] 
       (.C(clk_i),
        .CE(shift_en_w),
        .CLR(rst_i),
        .D(data_buffer_q_reg_gate__2_n_0),
        .Q(din[4]));
  FDCE \data_buffer_q_reg[5] 
       (.C(clk_i),
        .CE(shift_en_w),
        .CLR(rst_i),
        .D(data_buffer_q_reg_gate__1_n_0),
        .Q(din[5]));
  FDCE \data_buffer_q_reg[6] 
       (.C(clk_i),
        .CE(shift_en_w),
        .CLR(rst_i),
        .D(data_buffer_q_reg_gate__0_n_0),
        .Q(din[6]));
  FDCE \data_buffer_q_reg[7] 
       (.C(clk_i),
        .CE(shift_en_w),
        .CLR(rst_i),
        .D(data_buffer_q_reg_gate_n_0),
        .Q(din[7]));
  FDRE \data_buffer_q_reg[8]_u_sie_data_buffer_q_reg_c_1 
       (.C(clk_i),
        .CE(shift_en_w),
        .D(\data_buffer_q_reg[16]_srl2_u_sie_data_buffer_q_reg_c_0_n_0 ),
        .Q(\data_buffer_q_reg[8]_u_sie_data_buffer_q_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \data_buffer_q_reg[9]_u_sie_data_buffer_q_reg_c_1 
       (.C(clk_i),
        .CE(shift_en_w),
        .D(\data_buffer_q_reg[17]_srl2_u_sie_data_buffer_q_reg_c_0_n_0 ),
        .Q(\data_buffer_q_reg[9]_u_sie_data_buffer_q_reg_c_1_n_0 ),
        .R(1'b0));
  FDCE data_buffer_q_reg_c
       (.C(clk_i),
        .CE(shift_en_w),
        .CLR(rst_i),
        .D(1'b1),
        .Q(data_buffer_q_reg_c_n_0));
  FDCE data_buffer_q_reg_c_0
       (.C(clk_i),
        .CE(shift_en_w),
        .CLR(rst_i),
        .D(data_buffer_q_reg_c_n_0),
        .Q(data_buffer_q_reg_c_0_n_0));
  FDCE data_buffer_q_reg_c_1
       (.C(clk_i),
        .CE(shift_en_w),
        .CLR(rst_i),
        .D(data_buffer_q_reg_c_0_n_0),
        .Q(data_buffer_q_reg_c_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_buffer_q_reg_gate
       (.I0(\data_buffer_q_reg[15]_u_sie_data_buffer_q_reg_c_1_n_0 ),
        .I1(data_buffer_q_reg_c_1_n_0),
        .O(data_buffer_q_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_buffer_q_reg_gate__0
       (.I0(\data_buffer_q_reg[14]_u_sie_data_buffer_q_reg_c_1_n_0 ),
        .I1(data_buffer_q_reg_c_1_n_0),
        .O(data_buffer_q_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_buffer_q_reg_gate__1
       (.I0(\data_buffer_q_reg[13]_u_sie_data_buffer_q_reg_c_1_n_0 ),
        .I1(data_buffer_q_reg_c_1_n_0),
        .O(data_buffer_q_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_buffer_q_reg_gate__2
       (.I0(\data_buffer_q_reg[12]_u_sie_data_buffer_q_reg_c_1_n_0 ),
        .I1(data_buffer_q_reg_c_1_n_0),
        .O(data_buffer_q_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_buffer_q_reg_gate__3
       (.I0(\data_buffer_q_reg[11]_u_sie_data_buffer_q_reg_c_1_n_0 ),
        .I1(data_buffer_q_reg_c_1_n_0),
        .O(data_buffer_q_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_buffer_q_reg_gate__4
       (.I0(\data_buffer_q_reg[10]_u_sie_data_buffer_q_reg_c_1_n_0 ),
        .I1(data_buffer_q_reg_c_1_n_0),
        .O(data_buffer_q_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_buffer_q_reg_gate__5
       (.I0(\data_buffer_q_reg[9]_u_sie_data_buffer_q_reg_c_1_n_0 ),
        .I1(data_buffer_q_reg_c_1_n_0),
        .O(data_buffer_q_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_buffer_q_reg_gate__6
       (.I0(\data_buffer_q_reg[8]_u_sie_data_buffer_q_reg_c_1_n_0 ),
        .I1(data_buffer_q_reg_c_1_n_0),
        .O(data_buffer_q_reg_gate__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \data_crc_q[1]_i_1 
       (.I0(utmi_rxactive_i),
        .O(rx_time_q2));
  FDCE \data_crc_q_reg[0] 
       (.C(clk_i),
        .CE(shift_en_w),
        .CLR(rst_i),
        .D(\data_crc_q_reg_n_0_[1] ),
        .Q(data_crc_q));
  FDCE \data_crc_q_reg[1] 
       (.C(clk_i),
        .CE(shift_en_w),
        .CLR(rst_i),
        .D(rx_time_q2),
        .Q(\data_crc_q_reg_n_0_[1] ));
  LUT3 #(
    .INIT(8'h8A)) 
    \data_valid_q[0]_i_1 
       (.I0(\data_valid_q_reg_n_0_[1] ),
        .I1(utmi_rxvalid_i),
        .I2(utmi_rxactive_i),
        .O(\data_valid_q[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \data_valid_q[3]_i_1 
       (.I0(utmi_rxvalid_i),
        .I1(utmi_rxactive_i),
        .O(shift_en_w));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_valid_q[3]_i_2 
       (.I0(utmi_rxvalid_i),
        .I1(utmi_rxactive_i),
        .O(shift_en_w0));
  FDCE \data_valid_q_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\data_valid_q[0]_i_1_n_0 ),
        .Q(\data_valid_q_reg_n_0_[0] ));
  FDCE \data_valid_q_reg[1] 
       (.C(clk_i),
        .CE(shift_en_w),
        .CLR(rst_i),
        .D(\data_valid_q_reg_n_0_[2] ),
        .Q(\data_valid_q_reg_n_0_[1] ));
  FDCE \data_valid_q_reg[2] 
       (.C(clk_i),
        .CE(shift_en_w),
        .CLR(rst_i),
        .D(\data_valid_q_reg_n_0_[3] ),
        .Q(\data_valid_q_reg_n_0_[2] ));
  FDCE \data_valid_q_reg[3] 
       (.C(clk_i),
        .CE(shift_en_w),
        .CLR(rst_i),
        .D(shift_en_w0),
        .Q(\data_valid_q_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hE)) 
    err_cond_q_i_1
       (.I0(status_crc_err_w),
        .I1(status_timeout_w),
        .O(intr_err_q2));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h2320)) 
    fifo_flush_q_i_1
       (.I0(usb_xfer_token_start_q),
        .I1(wait_resp_q_reg_0),
        .I2(sof_transfer_q_i_2_n_0),
        .I3(fifo_flush_q_reg),
        .O(usb_xfer_token_start_q_reg_0));
  LUT5 #(
    .INIT(32'hFF0B0008)) 
    in_transfer_q_i_1
       (.I0(p_3_in[12]),
        .I1(sof_transfer_q_i_2_n_0),
        .I2(send_sof_w),
        .I3(wait_resp_q_reg_0),
        .I4(in_transfer_q_reg_0),
        .O(usb_xfer_token_in_q_reg));
  FDCE in_transfer_q_reg
       (.C(clk_i),
        .CE(p_7_in),
        .CLR(rst_i),
        .D(in_transfer_q_reg_0),
        .Q(in_transfer_q));
  LUT4 #(
    .INIT(16'hFFF4)) 
    intr_done_q_i_1
       (.I0(intr_done_q_reg),
        .I1(out),
        .I2(status_rx_done_w),
        .I3(status_tx_done_w),
        .O(usb_irq_ack_done_q_reg));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h4444FFF4)) 
    intr_err_q_i_1
       (.I0(intr_err_q_reg),
        .I1(intr_err_q_reg_0),
        .I2(status_timeout_w),
        .I3(status_crc_err_w),
        .I4(intr_err_q_reg_1),
        .O(usb_irq_ack_err_q_reg));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_tx_time_q[0]_i_1 
       (.I0(\last_tx_time_q[9]_i_3_n_0 ),
        .I1(last_tx_time_q_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \last_tx_time_q[1]_i_1 
       (.I0(\last_tx_time_q[9]_i_3_n_0 ),
        .I1(last_tx_time_q_reg[0]),
        .I2(last_tx_time_q_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \last_tx_time_q[2]_i_1 
       (.I0(\last_tx_time_q[9]_i_3_n_0 ),
        .I1(last_tx_time_q_reg[0]),
        .I2(last_tx_time_q_reg[1]),
        .I3(last_tx_time_q_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \last_tx_time_q[3]_i_1 
       (.I0(\last_tx_time_q[9]_i_3_n_0 ),
        .I1(last_tx_time_q_reg[1]),
        .I2(last_tx_time_q_reg[0]),
        .I3(last_tx_time_q_reg[2]),
        .I4(last_tx_time_q_reg[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \last_tx_time_q[4]_i_1 
       (.I0(\last_tx_time_q[9]_i_3_n_0 ),
        .I1(last_tx_time_q_reg[3]),
        .I2(last_tx_time_q_reg[2]),
        .I3(last_tx_time_q_reg[1]),
        .I4(last_tx_time_q_reg[0]),
        .I5(last_tx_time_q_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \last_tx_time_q[5]_i_1 
       (.I0(\last_tx_time_q[9]_i_3_n_0 ),
        .I1(\last_tx_time_q[5]_i_2_n_0 ),
        .I2(last_tx_time_q_reg[2]),
        .I3(last_tx_time_q_reg[3]),
        .I4(last_tx_time_q_reg[4]),
        .I5(last_tx_time_q_reg[5]),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \last_tx_time_q[5]_i_2 
       (.I0(last_tx_time_q_reg[0]),
        .I1(last_tx_time_q_reg[1]),
        .O(\last_tx_time_q[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \last_tx_time_q[6]_i_1 
       (.I0(\last_tx_time_q[9]_i_3_n_0 ),
        .I1(\last_tx_time_q[9]_i_5_n_0 ),
        .I2(last_tx_time_q_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \last_tx_time_q[7]_i_1 
       (.I0(\last_tx_time_q[9]_i_3_n_0 ),
        .I1(\last_tx_time_q[9]_i_5_n_0 ),
        .I2(last_tx_time_q_reg[6]),
        .I3(last_tx_time_q_reg[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \last_tx_time_q[8]_i_1 
       (.I0(\last_tx_time_q[9]_i_3_n_0 ),
        .I1(last_tx_time_q_reg[6]),
        .I2(\last_tx_time_q[9]_i_5_n_0 ),
        .I3(last_tx_time_q_reg[7]),
        .I4(last_tx_time_q_reg[8]),
        .O(p_0_in[8]));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \last_tx_time_q[9]_i_1 
       (.I0(\last_tx_time_q[9]_i_3_n_0 ),
        .I1(\last_tx_time_q[9]_i_4_n_0 ),
        .I2(last_tx_time_q_reg[9]),
        .I3(last_tx_time_q_reg[7]),
        .I4(last_tx_time_q_reg[6]),
        .O(\last_tx_time_q[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \last_tx_time_q[9]_i_2 
       (.I0(\last_tx_time_q[9]_i_3_n_0 ),
        .I1(last_tx_time_q_reg[7]),
        .I2(\last_tx_time_q[9]_i_5_n_0 ),
        .I3(last_tx_time_q_reg[6]),
        .I4(last_tx_time_q_reg[8]),
        .I5(last_tx_time_q_reg[9]),
        .O(p_0_in[9]));
  LUT5 #(
    .INIT(32'h0000000B)) 
    \last_tx_time_q[9]_i_3 
       (.I0(\last_tx_time_q[9]_i_6_n_0 ),
        .I1(utmi_txready_i),
        .I2(p_0_in1_in),
        .I3(\FSM_onehot_state_q_reg_n_0_[14] ),
        .I4(status_sie_idle_w),
        .O(\last_tx_time_q[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFFFFFF)) 
    \last_tx_time_q[9]_i_4 
       (.I0(last_tx_time_q_reg[8]),
        .I1(last_tx_time_q_reg[4]),
        .I2(last_tx_time_q_reg[5]),
        .I3(last_tx_time_q_reg[0]),
        .I4(last_tx_time_q_reg[1]),
        .I5(\last_tx_time_q[9]_i_7_n_0 ),
        .O(\last_tx_time_q[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \last_tx_time_q[9]_i_5 
       (.I0(last_tx_time_q_reg[4]),
        .I1(last_tx_time_q_reg[3]),
        .I2(last_tx_time_q_reg[2]),
        .I3(last_tx_time_q_reg[1]),
        .I4(last_tx_time_q_reg[0]),
        .I5(last_tx_time_q_reg[5]),
        .O(\last_tx_time_q[9]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \last_tx_time_q[9]_i_6 
       (.I0(p_0_in10_in),
        .I1(p_0_in_0),
        .I2(\FSM_onehot_state_q_reg_n_0_[5] ),
        .I3(\FSM_onehot_state_q_reg_n_0_[10] ),
        .I4(utmi_txvalid_o_INST_0_i_1_n_0),
        .O(\last_tx_time_q[9]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \last_tx_time_q[9]_i_7 
       (.I0(last_tx_time_q_reg[2]),
        .I1(last_tx_time_q_reg[3]),
        .O(\last_tx_time_q[9]_i_7_n_0 ));
  FDCE \last_tx_time_q_reg[0] 
       (.C(clk_i),
        .CE(\last_tx_time_q[9]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_0_in[0]),
        .Q(last_tx_time_q_reg[0]));
  FDCE \last_tx_time_q_reg[1] 
       (.C(clk_i),
        .CE(\last_tx_time_q[9]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_0_in[1]),
        .Q(last_tx_time_q_reg[1]));
  FDCE \last_tx_time_q_reg[2] 
       (.C(clk_i),
        .CE(\last_tx_time_q[9]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_0_in[2]),
        .Q(last_tx_time_q_reg[2]));
  FDCE \last_tx_time_q_reg[3] 
       (.C(clk_i),
        .CE(\last_tx_time_q[9]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_0_in[3]),
        .Q(last_tx_time_q_reg[3]));
  FDCE \last_tx_time_q_reg[4] 
       (.C(clk_i),
        .CE(\last_tx_time_q[9]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_0_in[4]),
        .Q(last_tx_time_q_reg[4]));
  FDCE \last_tx_time_q_reg[5] 
       (.C(clk_i),
        .CE(\last_tx_time_q[9]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_0_in[5]),
        .Q(last_tx_time_q_reg[5]));
  FDCE \last_tx_time_q_reg[6] 
       (.C(clk_i),
        .CE(\last_tx_time_q[9]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_0_in[6]),
        .Q(last_tx_time_q_reg[6]));
  FDCE \last_tx_time_q_reg[7] 
       (.C(clk_i),
        .CE(\last_tx_time_q[9]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_0_in[7]),
        .Q(last_tx_time_q_reg[7]));
  FDCE \last_tx_time_q_reg[8] 
       (.C(clk_i),
        .CE(\last_tx_time_q[9]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_0_in[8]),
        .Q(last_tx_time_q_reg[8]));
  FDCE \last_tx_time_q_reg[9] 
       (.C(clk_i),
        .CE(\last_tx_time_q[9]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_0_in[9]),
        .Q(last_tx_time_q_reg[9]));
  LUT6 #(
    .INIT(64'h080008AA08000800)) 
    \rd_data_q[0]_i_1 
       (.I0(\cfg_araddr[7] ),
        .I1(\rd_data_q[0]_i_2_n_0 ),
        .I2(cfg_araddr_i[5]),
        .I3(cfg_araddr_i[2]),
        .I4(cfg_araddr_i[3]),
        .I5(\rd_data_q_reg[0] ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data_q[0]_i_2 
       (.I0(usb_rx_stat_count_bits_in_w[0]),
        .I1(\rd_data_q_reg[0]_0 ),
        .I2(cfg_araddr_i[3]),
        .I3(Q[0]),
        .I4(cfg_araddr_i[4]),
        .I5(utmi_linestate_i[0]),
        .O(\rd_data_q[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8A85808)) 
    \rd_data_q[10]_i_1 
       (.I0(cfg_araddr_i[3]),
        .I1(p_3_in[5]),
        .I2(cfg_araddr_i[2]),
        .I3(Q[10]),
        .I4(usb_rx_stat_count_bits_in_w[10]),
        .I5(\rd_data_q[15]_i_2_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h00000000F8A85808)) 
    \rd_data_q[11]_i_1 
       (.I0(cfg_araddr_i[3]),
        .I1(p_3_in[6]),
        .I2(cfg_araddr_i[2]),
        .I3(Q[11]),
        .I4(usb_rx_stat_count_bits_in_w[11]),
        .I5(\rd_data_q[15]_i_2_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h00000000F8A85808)) 
    \rd_data_q[12]_i_1 
       (.I0(cfg_araddr_i[3]),
        .I1(p_3_in[7]),
        .I2(cfg_araddr_i[2]),
        .I3(Q[12]),
        .I4(usb_rx_stat_count_bits_in_w[12]),
        .I5(\rd_data_q[15]_i_2_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h00000000F8A85808)) 
    \rd_data_q[13]_i_1 
       (.I0(cfg_araddr_i[3]),
        .I1(p_3_in[8]),
        .I2(cfg_araddr_i[2]),
        .I3(Q[13]),
        .I4(usb_rx_stat_count_bits_in_w[13]),
        .I5(\rd_data_q[15]_i_2_n_0 ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h00000000F8A85808)) 
    \rd_data_q[14]_i_1 
       (.I0(cfg_araddr_i[3]),
        .I1(p_3_in[9]),
        .I2(cfg_araddr_i[2]),
        .I3(Q[14]),
        .I4(usb_rx_stat_count_bits_in_w[14]),
        .I5(\rd_data_q[15]_i_2_n_0 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h00000000F8A85808)) 
    \rd_data_q[15]_i_1 
       (.I0(cfg_araddr_i[3]),
        .I1(p_3_in[10]),
        .I2(cfg_araddr_i[2]),
        .I3(Q[15]),
        .I4(usb_rx_stat_count_bits_in_w[15]),
        .I5(\rd_data_q[15]_i_2_n_0 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \rd_data_q[15]_i_2 
       (.I0(cfg_araddr_i[0]),
        .I1(cfg_araddr_i[1]),
        .I2(cfg_araddr_i[6]),
        .I3(cfg_araddr_i[7]),
        .I4(cfg_araddr_i[5]),
        .I5(cfg_araddr_i[4]),
        .O(\rd_data_q[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0800040408080404)) 
    \rd_data_q[16]_i_1 
       (.I0(cfg_araddr_i[4]),
        .I1(\cfg_araddr[7] ),
        .I2(\rd_data_q[16]_i_2_n_0 ),
        .I3(usb_rx_stat_resp_bits_in_w[0]),
        .I4(cfg_araddr_i[3]),
        .I5(cfg_araddr_i[2]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hF1F1F1F1F1FFFFFF)) 
    \rd_data_q[16]_i_2 
       (.I0(sof_time_q_reg[0]),
        .I1(cfg_araddr_i[4]),
        .I2(cfg_araddr_i[5]),
        .I3(cfg_araddr_i[3]),
        .I4(\utmi_data_out[7] [0]),
        .I5(cfg_araddr_i[2]),
        .O(\rd_data_q[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0800040408080404)) 
    \rd_data_q[17]_i_1 
       (.I0(cfg_araddr_i[4]),
        .I1(\cfg_araddr[7] ),
        .I2(\rd_data_q[17]_i_2_n_0 ),
        .I3(usb_rx_stat_resp_bits_in_w[1]),
        .I4(cfg_araddr_i[3]),
        .I5(cfg_araddr_i[2]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hCCCFDDDFCCCFFFFF)) 
    \rd_data_q[17]_i_2 
       (.I0(\utmi_data_out[7] [1]),
        .I1(cfg_araddr_i[5]),
        .I2(sof_time_q_reg[1]),
        .I3(cfg_araddr_i[4]),
        .I4(cfg_araddr_i[2]),
        .I5(cfg_araddr_i[3]),
        .O(\rd_data_q[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0800040408080404)) 
    \rd_data_q[18]_i_1 
       (.I0(cfg_araddr_i[4]),
        .I1(\cfg_araddr[7] ),
        .I2(\rd_data_q[18]_i_2_n_0 ),
        .I3(usb_rx_stat_resp_bits_in_w[2]),
        .I4(cfg_araddr_i[3]),
        .I5(cfg_araddr_i[2]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hCCCFDDDFCCCFFFFF)) 
    \rd_data_q[18]_i_2 
       (.I0(\utmi_data_out[7] [2]),
        .I1(cfg_araddr_i[5]),
        .I2(sof_time_q_reg[2]),
        .I3(cfg_araddr_i[4]),
        .I4(cfg_araddr_i[2]),
        .I5(cfg_araddr_i[3]),
        .O(\rd_data_q[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0800040408080404)) 
    \rd_data_q[19]_i_1 
       (.I0(cfg_araddr_i[4]),
        .I1(\cfg_araddr[7] ),
        .I2(\rd_data_q[19]_i_2_n_0 ),
        .I3(usb_rx_stat_resp_bits_in_w[3]),
        .I4(cfg_araddr_i[3]),
        .I5(cfg_araddr_i[2]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hF1F1F1F1F1FFFFFF)) 
    \rd_data_q[19]_i_2 
       (.I0(sof_time_q_reg[3]),
        .I1(cfg_araddr_i[4]),
        .I2(cfg_araddr_i[5]),
        .I3(cfg_araddr_i[3]),
        .I4(\utmi_data_out[7] [3]),
        .I5(cfg_araddr_i[2]),
        .O(\rd_data_q[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h080008AA08000800)) 
    \rd_data_q[1]_i_1 
       (.I0(\cfg_araddr[7] ),
        .I1(\rd_data_q[1]_i_2_n_0 ),
        .I2(cfg_araddr_i[5]),
        .I3(cfg_araddr_i[2]),
        .I4(cfg_araddr_i[3]),
        .I5(\rd_data_q_reg[1] ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data_q[1]_i_2 
       (.I0(usb_rx_stat_count_bits_in_w[1]),
        .I1(out),
        .I2(cfg_araddr_i[3]),
        .I3(Q[1]),
        .I4(cfg_araddr_i[4]),
        .I5(utmi_linestate_i[1]),
        .O(\rd_data_q[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0800040408080404)) 
    \rd_data_q[20]_i_1 
       (.I0(cfg_araddr_i[4]),
        .I1(\cfg_araddr[7] ),
        .I2(\rd_data_q[20]_i_2_n_0 ),
        .I3(usb_rx_stat_resp_bits_in_w[4]),
        .I4(cfg_araddr_i[3]),
        .I5(cfg_araddr_i[2]),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hF1F1F1F1F1FFFFFF)) 
    \rd_data_q[20]_i_2 
       (.I0(sof_time_q_reg[4]),
        .I1(cfg_araddr_i[4]),
        .I2(cfg_araddr_i[5]),
        .I3(cfg_araddr_i[3]),
        .I4(\utmi_data_out[7] [4]),
        .I5(cfg_araddr_i[2]),
        .O(\rd_data_q[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0800040408080404)) 
    \rd_data_q[21]_i_1 
       (.I0(cfg_araddr_i[4]),
        .I1(\cfg_araddr[7] ),
        .I2(\rd_data_q[21]_i_2_n_0 ),
        .I3(usb_rx_stat_resp_bits_in_w[5]),
        .I4(cfg_araddr_i[3]),
        .I5(cfg_araddr_i[2]),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hCCCFDDDFCCCFFFFF)) 
    \rd_data_q[21]_i_2 
       (.I0(\utmi_data_out[7] [5]),
        .I1(cfg_araddr_i[5]),
        .I2(sof_time_q_reg[5]),
        .I3(cfg_araddr_i[4]),
        .I4(cfg_araddr_i[2]),
        .I5(cfg_araddr_i[3]),
        .O(\rd_data_q[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0800040408080404)) 
    \rd_data_q[22]_i_1 
       (.I0(cfg_araddr_i[4]),
        .I1(\cfg_araddr[7] ),
        .I2(\rd_data_q[22]_i_2_n_0 ),
        .I3(usb_rx_stat_resp_bits_in_w[6]),
        .I4(cfg_araddr_i[3]),
        .I5(cfg_araddr_i[2]),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hCCCFDDDFCCCFFFFF)) 
    \rd_data_q[22]_i_2 
       (.I0(\utmi_data_out[7] [6]),
        .I1(cfg_araddr_i[5]),
        .I2(sof_time_q_reg[6]),
        .I3(cfg_araddr_i[4]),
        .I4(cfg_araddr_i[2]),
        .I5(cfg_araddr_i[3]),
        .O(\rd_data_q[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0800040408080404)) 
    \rd_data_q[23]_i_1 
       (.I0(cfg_araddr_i[4]),
        .I1(\cfg_araddr[7] ),
        .I2(\rd_data_q[23]_i_2_n_0 ),
        .I3(usb_rx_stat_resp_bits_in_w[7]),
        .I4(cfg_araddr_i[3]),
        .I5(cfg_araddr_i[2]),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hF1F1F1F1F1FFFFFF)) 
    \rd_data_q[23]_i_2 
       (.I0(sof_time_q_reg[7]),
        .I1(cfg_araddr_i[4]),
        .I2(cfg_araddr_i[5]),
        .I3(cfg_araddr_i[3]),
        .I4(\utmi_data_out[7] [7]),
        .I5(cfg_araddr_i[2]),
        .O(\rd_data_q[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0800040408080404)) 
    \rd_data_q[28]_i_1 
       (.I0(cfg_araddr_i[4]),
        .I1(\cfg_araddr[7] ),
        .I2(\rd_data_q[28]_i_2_n_0 ),
        .I3(status_sie_idle_w),
        .I4(cfg_araddr_i[3]),
        .I5(cfg_araddr_i[2]),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hCCCFDDDFCCCFFFFF)) 
    \rd_data_q[28]_i_2 
       (.I0(usb_xfer_token_pid_datax_q),
        .I1(cfg_araddr_i[5]),
        .I2(sof_time_q_reg[12]),
        .I3(cfg_araddr_i[4]),
        .I4(cfg_araddr_i[2]),
        .I5(cfg_araddr_i[3]),
        .O(\rd_data_q[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0800040408080404)) 
    \rd_data_q[29]_i_1 
       (.I0(cfg_araddr_i[4]),
        .I1(\cfg_araddr[7] ),
        .I2(\rd_data_q[29]_i_3_n_0 ),
        .I3(status_timeout_w),
        .I4(cfg_araddr_i[3]),
        .I5(cfg_araddr_i[2]),
        .O(D[21]));
  LUT4 #(
    .INIT(16'h0001)) 
    \rd_data_q[29]_i_2 
       (.I0(cfg_araddr_i[7]),
        .I1(cfg_araddr_i[6]),
        .I2(cfg_araddr_i[1]),
        .I3(cfg_araddr_i[0]),
        .O(\cfg_araddr[7] ));
  LUT5 #(
    .INIT(32'hFFFF113F)) 
    \rd_data_q[29]_i_3 
       (.I0(sof_time_q_reg[13]),
        .I1(cfg_araddr_i[4]),
        .I2(p_3_in[11]),
        .I3(cfg_araddr_i[2]),
        .I4(cfg_araddr_i[5]),
        .O(\rd_data_q[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h080008AA08000800)) 
    \rd_data_q[2]_i_1 
       (.I0(\cfg_araddr[7] ),
        .I1(\rd_data_q[2]_i_2_n_0 ),
        .I2(cfg_araddr_i[5]),
        .I3(cfg_araddr_i[2]),
        .I4(cfg_araddr_i[3]),
        .I5(\rd_data_q_reg[2] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data_q[2]_i_2 
       (.I0(usb_rx_stat_count_bits_in_w[2]),
        .I1(intr_err_q_reg_0),
        .I2(cfg_araddr_i[3]),
        .I3(Q[2]),
        .I4(cfg_araddr_i[4]),
        .I5(data1),
        .O(\rd_data_q[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \rd_data_q[30]_i_1 
       (.I0(cfg_araddr_i[5]),
        .I1(cfg_araddr_i[7]),
        .I2(cfg_araddr_i[6]),
        .I3(cfg_araddr_i[1]),
        .I4(cfg_araddr_i[0]),
        .I5(\rd_data_q[30]_i_2_n_0 ),
        .O(D[22]));
  LUT6 #(
    .INIT(64'h0FFF55FFFF33FFFF)) 
    \rd_data_q[30]_i_2 
       (.I0(p_3_in[12]),
        .I1(sof_time_q_reg[14]),
        .I2(status_crc_err_w),
        .I3(cfg_araddr_i[3]),
        .I4(cfg_araddr_i[2]),
        .I5(cfg_araddr_i[4]),
        .O(\rd_data_q[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h888A8888)) 
    \rd_data_q[3]_i_1 
       (.I0(\cfg_araddr[7] ),
        .I1(\rd_data_q[3]_i_2_n_0 ),
        .I2(cfg_araddr_i[3]),
        .I3(cfg_araddr_i[2]),
        .I4(\rd_data_q_reg[3] ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h4400400000004000)) 
    \rd_data_q[3]_i_2 
       (.I0(cfg_araddr_i[5]),
        .I1(cfg_araddr_i[2]),
        .I2(Q[3]),
        .I3(cfg_araddr_i[4]),
        .I4(cfg_araddr_i[3]),
        .I5(usb_rx_stat_count_bits_in_w[3]),
        .O(\rd_data_q[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBBBFFFBF)) 
    \rd_data_q[4]_i_4 
       (.I0(cfg_araddr_i[5]),
        .I1(cfg_araddr_i[4]),
        .I2(Q[4]),
        .I3(cfg_araddr_i[3]),
        .I4(usb_rx_stat_count_bits_in_w[4]),
        .O(\cfg_araddr[5] ));
  LUT5 #(
    .INIT(32'hBBBFFFBF)) 
    \rd_data_q[5]_i_4 
       (.I0(cfg_araddr_i[5]),
        .I1(cfg_araddr_i[4]),
        .I2(Q[5]),
        .I3(cfg_araddr_i[3]),
        .I4(usb_rx_stat_count_bits_in_w[5]),
        .O(\cfg_araddr[5]_0 ));
  LUT5 #(
    .INIT(32'hBBBFFFBF)) 
    \rd_data_q[6]_i_4 
       (.I0(cfg_araddr_i[5]),
        .I1(cfg_araddr_i[4]),
        .I2(Q[6]),
        .I3(cfg_araddr_i[3]),
        .I4(usb_rx_stat_count_bits_in_w[6]),
        .O(\cfg_araddr[5]_1 ));
  LUT5 #(
    .INIT(32'hBBBFFFBF)) 
    \rd_data_q[7]_i_4 
       (.I0(cfg_araddr_i[5]),
        .I1(cfg_araddr_i[4]),
        .I2(Q[7]),
        .I3(cfg_araddr_i[3]),
        .I4(usb_rx_stat_count_bits_in_w[7]),
        .O(\cfg_araddr[5]_2 ));
  LUT6 #(
    .INIT(64'h00000000F8A85808)) 
    \rd_data_q[8]_i_1 
       (.I0(cfg_araddr_i[3]),
        .I1(p_3_in[3]),
        .I2(cfg_araddr_i[2]),
        .I3(Q[8]),
        .I4(usb_rx_stat_count_bits_in_w[8]),
        .I5(\rd_data_q[15]_i_2_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h00000000F8A85808)) 
    \rd_data_q[9]_i_1 
       (.I0(cfg_araddr_i[3]),
        .I1(p_3_in[4]),
        .I2(cfg_araddr_i[2]),
        .I3(Q[9]),
        .I4(usb_rx_stat_count_bits_in_w[9]),
        .I5(\rd_data_q[15]_i_2_n_0 ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hFF0B0008)) 
    resp_expected_q_i_1
       (.I0(p_3_in[11]),
        .I1(sof_transfer_q_i_2_n_0),
        .I2(send_sof_w),
        .I3(wait_resp_q_reg_0),
        .I4(wait_resp_q_reg_1),
        .O(usb_xfer_token_ack_q_reg));
  FDCE \rx_active_q_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\rx_active_q_reg_n_0_[1] ),
        .Q(rx_active_q));
  FDCE \rx_active_q_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\rx_active_q_reg_n_0_[2] ),
        .Q(\rx_active_q_reg_n_0_[1] ));
  FDCE \rx_active_q_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\rx_active_q_reg_n_0_[3] ),
        .Q(\rx_active_q_reg_n_0_[2] ));
  FDCE \rx_active_q_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(utmi_rxactive_i),
        .Q(\rx_active_q_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h2322)) 
    rx_time_en_q_i_1
       (.I0(rx_time_en_q_reg_n_0),
        .I1(status_sie_idle_w),
        .I2(utmi_rxactive_i),
        .I3(\FSM_onehot_state_q_reg_n_0_[7] ),
        .O(rx_time_en_q_i_1_n_0));
  FDCE rx_time_en_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(rx_time_en_q_i_1_n_0),
        .Q(rx_time_en_q_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h37CC0000)) 
    \rx_time_q[0]_i_1 
       (.I0(\rx_time_q_reg_n_0_[2] ),
        .I1(\rx_time_q_reg_n_0_[0] ),
        .I2(\rx_time_q_reg_n_0_[1] ),
        .I3(rx_time_en_q_reg_n_0),
        .I4(\rx_time_q[2]_i_2_n_0 ),
        .O(\rx_time_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h38F00000)) 
    \rx_time_q[1]_i_1 
       (.I0(\rx_time_q_reg_n_0_[2] ),
        .I1(\rx_time_q_reg_n_0_[0] ),
        .I2(\rx_time_q_reg_n_0_[1] ),
        .I3(rx_time_en_q_reg_n_0),
        .I4(\rx_time_q[2]_i_2_n_0 ),
        .O(\rx_time_q[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \rx_time_q[2]_i_1 
       (.I0(\rx_time_q_reg_n_0_[2] ),
        .I1(\rx_time_q_reg_n_0_[0] ),
        .I2(\rx_time_q_reg_n_0_[1] ),
        .I3(rx_time_en_q_reg_n_0),
        .I4(\rx_time_q[2]_i_2_n_0 ),
        .O(\rx_time_q[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \rx_time_q[2]_i_2 
       (.I0(status_sie_idle_w),
        .I1(utmi_rxactive_i),
        .I2(\FSM_onehot_state_q_reg_n_0_[7] ),
        .O(\rx_time_q[2]_i_2_n_0 ));
  FDCE \rx_time_q_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\rx_time_q[0]_i_1_n_0 ),
        .Q(\rx_time_q_reg_n_0_[0] ));
  FDCE \rx_time_q_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\rx_time_q[1]_i_1_n_0 ),
        .Q(\rx_time_q_reg_n_0_[1] ));
  FDCE \rx_time_q_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\rx_time_q[2]_i_1_n_0 ),
        .Q(\rx_time_q_reg_n_0_[2] ));
  LUT2 #(
    .INIT(4'h8)) 
    send_ack_q_i_1
       (.I0(wait_resp_q_reg_0),
        .I1(status_sie_idle_w),
        .O(p_7_in));
  LUT2 #(
    .INIT(4'h8)) 
    send_ack_q_i_2
       (.I0(wait_resp_q_reg_1),
        .I1(in_transfer_q_reg_0),
        .O(send_ack_q0));
  FDCE send_ack_q_reg
       (.C(clk_i),
        .CE(p_7_in),
        .CLR(rst_i),
        .D(send_ack_q0),
        .Q(send_ack_q));
  FDCE send_data1_q_reg
       (.C(clk_i),
        .CE(p_7_in),
        .CLR(rst_i),
        .D(usb_xfer_token_pid_datax_q),
        .Q(send_data1_q));
  FDCE send_sof_q_reg
       (.C(clk_i),
        .CE(p_7_in),
        .CLR(rst_i),
        .D(send_sof_q_reg_0),
        .Q(send_sof_q));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    sof_irq_q_i_1
       (.I0(sof_irq_q_i_2_n_0),
        .I1(status_sie_idle_w),
        .I2(p_8_in),
        .I3(sof_time_q_reg[5]),
        .I4(sof_time_q_reg[14]),
        .O(send_sof_w));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    sof_irq_q_i_2
       (.I0(sof_irq_q_i_3_n_0),
        .I1(sof_irq_q_i_4_n_0),
        .I2(sof_time_q_reg[11]),
        .I3(sof_time_q_reg[6]),
        .I4(sof_time_q_reg[2]),
        .I5(sof_time_q_reg[1]),
        .O(sof_irq_q_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    sof_irq_q_i_3
       (.I0(sof_time_q_reg[4]),
        .I1(sof_time_q_reg[3]),
        .I2(sof_time_q_reg[7]),
        .I3(sof_time_q_reg[12]),
        .I4(sof_time_q_reg[8]),
        .I5(sof_time_q_reg[10]),
        .O(sof_irq_q_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    sof_irq_q_i_4
       (.I0(sof_time_q_reg[15]),
        .I1(sof_time_q_reg[13]),
        .I2(sof_time_q_reg[9]),
        .I3(sof_time_q_reg[0]),
        .O(sof_irq_q_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFFEAFFFF)) 
    \sof_time_q[0]_i_1 
       (.I0(sof_irq_q_i_2_n_0),
        .I1(status_sie_idle_w),
        .I2(p_8_in),
        .I3(sof_time_q_reg[5]),
        .I4(sof_time_q_reg[14]),
        .O(\FSM_onehot_state_q_reg[8]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sof_time_q[0]_i_3 
       (.I0(sof_time_q_reg[0]),
        .I1(send_sof_w),
        .O(\sof_time_q[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sof_time_q[0]_i_4 
       (.I0(sof_time_q_reg[3]),
        .I1(send_sof_w),
        .O(\sof_time_q[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sof_time_q[0]_i_5 
       (.I0(sof_time_q_reg[2]),
        .I1(send_sof_w),
        .O(\sof_time_q[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sof_time_q[0]_i_6 
       (.I0(sof_time_q_reg[1]),
        .I1(send_sof_w),
        .O(\sof_time_q[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \sof_time_q[0]_i_7 
       (.I0(sof_time_q_reg[0]),
        .I1(send_sof_w),
        .O(\sof_time_q[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sof_time_q[12]_i_2 
       (.I0(sof_time_q_reg[15]),
        .I1(send_sof_w),
        .O(\sof_time_q[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sof_time_q[12]_i_3 
       (.I0(sof_time_q_reg[14]),
        .I1(send_sof_w),
        .O(\sof_time_q[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sof_time_q[12]_i_4 
       (.I0(sof_time_q_reg[13]),
        .I1(send_sof_w),
        .O(\sof_time_q[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sof_time_q[4]_i_2 
       (.I0(sof_time_q_reg[6]),
        .I1(send_sof_w),
        .O(\sof_time_q[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sof_time_q[4]_i_3 
       (.I0(sof_time_q_reg[4]),
        .I1(send_sof_w),
        .O(\sof_time_q[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sof_time_q[8]_i_2 
       (.I0(sof_time_q_reg[11]),
        .I1(send_sof_w),
        .O(\sof_time_q[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sof_time_q[8]_i_3 
       (.I0(sof_time_q_reg[9]),
        .I1(send_sof_w),
        .O(\sof_time_q[8]_i_3_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \sof_time_q_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\sof_time_q_reg[0]_i_2_n_0 ,\sof_time_q_reg[0]_i_2_n_1 ,\sof_time_q_reg[0]_i_2_n_2 ,\sof_time_q_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\sof_time_q[0]_i_3_n_0 }),
        .O(O),
        .S({\sof_time_q[0]_i_4_n_0 ,\sof_time_q[0]_i_5_n_0 ,\sof_time_q[0]_i_6_n_0 ,\sof_time_q[0]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \sof_time_q_reg[12]_i_1 
       (.CI(\sof_time_q_reg[8]_i_1_n_0 ),
        .CO({\NLW_sof_time_q_reg[12]_i_1_CO_UNCONNECTED [3],\sof_time_q_reg[12]_i_1_n_1 ,\sof_time_q_reg[12]_i_1_n_2 ,\sof_time_q_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\sof_time_q_reg[12] ),
        .S({\sof_time_q[12]_i_2_n_0 ,\sof_time_q[12]_i_3_n_0 ,\sof_time_q[12]_i_4_n_0 ,sof_time_q_reg[12]}));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \sof_time_q_reg[4]_i_1 
       (.CI(\sof_time_q_reg[0]_i_2_n_0 ),
        .CO({\sof_time_q_reg[4]_i_1_n_0 ,\sof_time_q_reg[4]_i_1_n_1 ,\sof_time_q_reg[4]_i_1_n_2 ,\sof_time_q_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\sof_time_q_reg[7] ),
        .S({sof_time_q_reg[7],\sof_time_q[4]_i_2_n_0 ,sof_time_q_reg[5],\sof_time_q[4]_i_3_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \sof_time_q_reg[8]_i_1 
       (.CI(\sof_time_q_reg[4]_i_1_n_0 ),
        .CO({\sof_time_q_reg[8]_i_1_n_0 ,\sof_time_q_reg[8]_i_1_n_1 ,\sof_time_q_reg[8]_i_1_n_2 ,\sof_time_q_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\sof_time_q_reg[10] ),
        .S({\sof_time_q[8]_i_2_n_0 ,sof_time_q_reg[10],\sof_time_q[8]_i_3_n_0 ,sof_time_q_reg[8]}));
  LUT4 #(
    .INIT(16'hFD0C)) 
    sof_transfer_q_i_1
       (.I0(sof_transfer_q_i_2_n_0),
        .I1(send_sof_w),
        .I2(wait_resp_q_reg_0),
        .I3(send_sof_q_reg_0),
        .O(transfer_start_q_reg));
  LUT6 #(
    .INIT(64'hFE00000000000000)) 
    sof_transfer_q_i_10
       (.I0(sof_time_q_reg[0]),
        .I1(sof_time_q_reg[1]),
        .I2(sof_time_q_reg[2]),
        .I3(sof_time_q_reg[5]),
        .I4(sof_time_q_reg[3]),
        .I5(sof_time_q_reg[4]),
        .O(sof_transfer_q_i_10_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    sof_transfer_q_i_11
       (.I0(sof_time_q_reg[7]),
        .I1(sof_time_q_reg[9]),
        .I2(sof_time_q_reg[8]),
        .O(sof_transfer_q_i_11_n_0));
  LUT6 #(
    .INIT(64'h000000004454FFFF)) 
    sof_transfer_q_i_2
       (.I0(sof_transfer_q_i_3_n_0),
        .I1(sof_transfer_q_i_4_n_0),
        .I2(sof_transfer_q_i_5_n_0),
        .I3(sof_time_q_reg[13]),
        .I4(p_8_in),
        .I5(sof_transfer_q_i_6_n_0),
        .O(sof_transfer_q_i_2_n_0));
  LUT5 #(
    .INIT(32'h000000F7)) 
    sof_transfer_q_i_3
       (.I0(sof_time_q_reg[5]),
        .I1(sof_time_q_reg[6]),
        .I2(sof_transfer_q_i_7_n_0),
        .I3(sof_transfer_q_i_8_n_0),
        .I4(sof_transfer_q_i_9_n_0),
        .O(sof_transfer_q_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    sof_transfer_q_i_4
       (.I0(sof_time_q_reg[14]),
        .I1(sof_time_q_reg[15]),
        .O(sof_transfer_q_i_4_n_0));
  LUT6 #(
    .INIT(64'h77777777FFFF777F)) 
    sof_transfer_q_i_5
       (.I0(sof_time_q_reg[12]),
        .I1(sof_time_q_reg[11]),
        .I2(sof_transfer_q_i_10_n_0),
        .I3(sof_time_q_reg[6]),
        .I4(sof_transfer_q_i_11_n_0),
        .I5(sof_time_q_reg[10]),
        .O(sof_transfer_q_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h7)) 
    sof_transfer_q_i_6
       (.I0(status_sie_idle_w),
        .I1(usb_xfer_token_start_q),
        .O(sof_transfer_q_i_6_n_0));
  LUT5 #(
    .INIT(32'h00000057)) 
    sof_transfer_q_i_7
       (.I0(sof_time_q_reg[2]),
        .I1(sof_time_q_reg[0]),
        .I2(sof_time_q_reg[1]),
        .I3(sof_time_q_reg[4]),
        .I4(sof_time_q_reg[3]),
        .O(sof_transfer_q_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    sof_transfer_q_i_8
       (.I0(sof_time_q_reg[10]),
        .I1(sof_time_q_reg[8]),
        .I2(sof_time_q_reg[11]),
        .I3(sof_time_q_reg[15]),
        .I4(sof_time_q_reg[7]),
        .I5(sof_time_q_reg[12]),
        .O(sof_transfer_q_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    sof_transfer_q_i_9
       (.I0(sof_time_q_reg[9]),
        .I1(sof_time_q_reg[14]),
        .I2(sof_time_q_reg[13]),
        .O(sof_transfer_q_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    start_ack_q_i_1
       (.I0(utmi_txready_i),
        .I1(p_0_in10_in),
        .O(token_q0));
  FDCE start_ack_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(token_q0),
        .Q(transfer_ack_w));
  LUT6 #(
    .INIT(64'hBBBBBABB88888A88)) 
    status_crc_err_q_i_1
       (.I0(\FSM_onehot_state_q[9]_i_3_n_0 ),
        .I1(\byte_count_q[15]_i_3_n_0 ),
        .I2(\data_valid_q_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_q_reg_n_0_[7] ),
        .I4(rx_active_q),
        .I5(status_crc_err_w),
        .O(status_crc_err_q_i_1_n_0));
  FDCE status_crc_err_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(status_crc_err_q_i_1_n_0),
        .Q(status_crc_err_w));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \status_response_q[0]_i_1 
       (.I0(p_0_in2_in),
        .I1(din[0]),
        .O(\status_response_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \status_response_q[1]_i_1 
       (.I0(p_0_in2_in),
        .I1(din[1]),
        .O(\status_response_q[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \status_response_q[2]_i_1 
       (.I0(p_0_in2_in),
        .I1(din[2]),
        .O(\status_response_q[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \status_response_q[3]_i_1 
       (.I0(p_0_in2_in),
        .I1(din[3]),
        .O(\status_response_q[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \status_response_q[4]_i_1 
       (.I0(p_0_in2_in),
        .I1(din[4]),
        .O(\status_response_q[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \status_response_q[5]_i_1 
       (.I0(p_0_in2_in),
        .I1(din[5]),
        .O(\status_response_q[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \status_response_q[6]_i_1 
       (.I0(p_0_in2_in),
        .I1(din[6]),
        .O(\status_response_q[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \status_response_q[7]_i_1 
       (.I0(send_sof_q_reg_0),
        .I1(wait_resp_q_reg_0),
        .I2(status_sie_idle_w),
        .I3(p_0_in2_in),
        .I4(\data_valid_q_reg_n_0_[0] ),
        .O(status_response_q));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \status_response_q[7]_i_2 
       (.I0(p_0_in2_in),
        .I1(din[7]),
        .O(\status_response_q[7]_i_2_n_0 ));
  FDCE \status_response_q_reg[0] 
       (.C(clk_i),
        .CE(status_response_q),
        .CLR(rst_i),
        .D(\status_response_q[0]_i_1_n_0 ),
        .Q(usb_rx_stat_resp_bits_in_w[0]));
  FDCE \status_response_q_reg[1] 
       (.C(clk_i),
        .CE(status_response_q),
        .CLR(rst_i),
        .D(\status_response_q[1]_i_1_n_0 ),
        .Q(usb_rx_stat_resp_bits_in_w[1]));
  FDCE \status_response_q_reg[2] 
       (.C(clk_i),
        .CE(status_response_q),
        .CLR(rst_i),
        .D(\status_response_q[2]_i_1_n_0 ),
        .Q(usb_rx_stat_resp_bits_in_w[2]));
  FDCE \status_response_q_reg[3] 
       (.C(clk_i),
        .CE(status_response_q),
        .CLR(rst_i),
        .D(\status_response_q[3]_i_1_n_0 ),
        .Q(usb_rx_stat_resp_bits_in_w[3]));
  FDCE \status_response_q_reg[4] 
       (.C(clk_i),
        .CE(status_response_q),
        .CLR(rst_i),
        .D(\status_response_q[4]_i_1_n_0 ),
        .Q(usb_rx_stat_resp_bits_in_w[4]));
  FDCE \status_response_q_reg[5] 
       (.C(clk_i),
        .CE(status_response_q),
        .CLR(rst_i),
        .D(\status_response_q[5]_i_1_n_0 ),
        .Q(usb_rx_stat_resp_bits_in_w[5]));
  FDCE \status_response_q_reg[6] 
       (.C(clk_i),
        .CE(status_response_q),
        .CLR(rst_i),
        .D(\status_response_q[6]_i_1_n_0 ),
        .Q(usb_rx_stat_resp_bits_in_w[6]));
  FDCE \status_response_q_reg[7] 
       (.C(clk_i),
        .CE(status_response_q),
        .CLR(rst_i),
        .D(\status_response_q[7]_i_2_n_0 ),
        .Q(usb_rx_stat_resp_bits_in_w[7]));
  LUT6 #(
    .INIT(64'h550055FC55005500)) 
    status_rx_done_q_i_1
       (.I0(utmi_rxactive_i),
        .I1(\FSM_onehot_state_q_reg_n_0_[2] ),
        .I2(p_0_in2_in),
        .I3(\FSM_onehot_state_q_reg_n_0_[7] ),
        .I4(status_sie_idle_w),
        .I5(status_rx_done_w),
        .O(status_rx_done_q_i_1_n_0));
  FDCE status_rx_done_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(status_rx_done_q_i_1_n_0),
        .Q(status_rx_done_w));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFFBFFF00)) 
    status_timeout_q_i_1
       (.I0(send_sof_q_reg_0),
        .I1(wait_resp_q_reg_0),
        .I2(status_sie_idle_w),
        .I3(\FSM_onehot_state_q[14]_i_4_n_0 ),
        .I4(status_timeout_w),
        .O(status_timeout_q_i_1_n_0));
  FDCE status_timeout_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(status_timeout_q_i_1_n_0),
        .Q(status_timeout_w));
  LUT6 #(
    .INIT(64'h2F2F0F0022220000)) 
    status_tx_done_q_i_1
       (.I0(utmi_txready_i),
        .I1(wait_resp_q_reg_n_0),
        .I2(status_tx_done_q_i_2_n_0),
        .I3(\FSM_onehot_state_q_reg_n_0_[7] ),
        .I4(\FSM_onehot_state_q_reg_n_0_[2] ),
        .I5(status_tx_done_w),
        .O(status_tx_done_q_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    status_tx_done_q_i_2
       (.I0(status_sie_idle_w),
        .I1(p_0_in2_in),
        .O(status_tx_done_q_i_2_n_0));
  FDCE status_tx_done_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(status_tx_done_q_i_1_n_0),
        .Q(status_tx_done_w));
  LUT5 #(
    .INIT(32'h00006996)) 
    \token_q[0]_i_1 
       (.I0(token_rev_w[5]),
        .I1(token_rev_w[1]),
        .I2(token_rev_w[0]),
        .I3(\token_q[0]_i_2_n_0 ),
        .I4(status_sie_idle_w),
        .O(\token_q[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \token_q[0]_i_2 
       (.I0(token_rev_w[10]),
        .I1(token_rev_w[7]),
        .I2(token_rev_w[4]),
        .O(\token_q[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \token_q[10]_i_1 
       (.I0(\token_q_reg[5]_0 [5]),
        .I1(send_sof_q_reg_0),
        .I2(p_3_in[9]),
        .O(token_dev_w[1]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \token_q[11]_i_1 
       (.I0(\token_q_reg[5]_0 [4]),
        .I1(send_sof_q_reg_0),
        .I2(p_3_in[8]),
        .O(token_dev_w[2]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \token_q[12]_i_1 
       (.I0(\token_q_reg[5]_0 [3]),
        .I1(send_sof_q_reg_0),
        .I2(p_3_in[7]),
        .O(token_dev_w[3]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \token_q[13]_i_1 
       (.I0(\token_q_reg[5]_0 [2]),
        .I1(send_sof_q_reg_0),
        .I2(p_3_in[6]),
        .O(token_dev_w[4]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \token_q[14]_i_1 
       (.I0(\token_q_reg[5]_0 [1]),
        .I1(send_sof_q_reg_0),
        .I2(p_3_in[5]),
        .O(token_dev_w[5]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \token_q[15]_i_1 
       (.I0(\token_q_reg[5]_0 [0]),
        .I1(send_sof_q_reg_0),
        .I2(p_3_in[4]),
        .O(token_dev_w[6]));
  LUT6 #(
    .INIT(64'h0000000096696996)) 
    \token_q[1]_i_1 
       (.I0(token_rev_w[4]),
        .I1(token_rev_w[6]),
        .I2(token_rev_w[0]),
        .I3(token_rev_w[3]),
        .I4(token_rev_w[9]),
        .I5(status_sie_idle_w),
        .O(\token_q[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000096696996)) 
    \token_q[2]_i_1 
       (.I0(token_rev_w[8]),
        .I1(token_rev_w[4]),
        .I2(token_rev_w[7]),
        .I3(token_rev_w[10]),
        .I4(\token_q[3]_i_2_n_0 ),
        .I5(status_sie_idle_w),
        .O(\token_q[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h41141441)) 
    \token_q[3]_i_1 
       (.I0(status_sie_idle_w),
        .I1(token_rev_w[6]),
        .I2(token_rev_w[7]),
        .I3(token_rev_w[9]),
        .I4(\token_q[3]_i_2_n_0 ),
        .O(\token_q[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \token_q[3]_i_2 
       (.I0(token_rev_w[3]),
        .I1(token_rev_w[0]),
        .I2(token_rev_w[1]),
        .I3(token_rev_w[2]),
        .O(\token_q[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \token_q[4]_i_1 
       (.I0(status_sie_idle_w),
        .I1(p_0_in10_in),
        .I2(utmi_txready_i),
        .O(token_q));
  LUT5 #(
    .INIT(32'h00006996)) 
    \token_q[4]_i_2 
       (.I0(token_rev_w[5]),
        .I1(token_rev_w[6]),
        .I2(token_rev_w[8]),
        .I3(\token_q[4]_i_3_n_0 ),
        .I4(status_sie_idle_w),
        .O(\token_q[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \token_q[4]_i_3 
       (.I0(token_rev_w[2]),
        .I1(token_rev_w[1]),
        .I2(token_rev_w[0]),
        .O(\token_q[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \token_q[5]_i_1 
       (.I0(\token_q_reg[5]_0 [10]),
        .I1(send_sof_q_reg_0),
        .I2(p_3_in[3]),
        .O(token_ep_w[0]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \token_q[6]_i_1 
       (.I0(\token_q_reg[5]_0 [9]),
        .I1(send_sof_q_reg_0),
        .I2(p_3_in[2]),
        .O(token_ep_w[1]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \token_q[7]_i_1 
       (.I0(\token_q_reg[5]_0 [8]),
        .I1(send_sof_q_reg_0),
        .I2(p_3_in[1]),
        .O(token_ep_w[2]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \token_q[8]_i_1 
       (.I0(\token_q_reg[5]_0 [7]),
        .I1(send_sof_q_reg_0),
        .I2(p_3_in[0]),
        .O(token_ep_w[3]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \token_q[9]_i_1 
       (.I0(\token_q_reg[5]_0 [6]),
        .I1(send_sof_q_reg_0),
        .I2(p_3_in[10]),
        .O(token_dev_w[0]));
  FDCE \token_q_reg[0] 
       (.C(clk_i),
        .CE(token_q),
        .CLR(rst_i),
        .D(\token_q[0]_i_1_n_0 ),
        .Q(in13[7]));
  FDCE \token_q_reg[10] 
       (.C(clk_i),
        .CE(status_sie_idle_w),
        .CLR(rst_i),
        .D(token_dev_w[1]),
        .Q(token_rev_w[5]));
  FDCE \token_q_reg[11] 
       (.C(clk_i),
        .CE(status_sie_idle_w),
        .CLR(rst_i),
        .D(token_dev_w[2]),
        .Q(token_rev_w[4]));
  FDCE \token_q_reg[12] 
       (.C(clk_i),
        .CE(status_sie_idle_w),
        .CLR(rst_i),
        .D(token_dev_w[3]),
        .Q(token_rev_w[3]));
  FDCE \token_q_reg[13] 
       (.C(clk_i),
        .CE(status_sie_idle_w),
        .CLR(rst_i),
        .D(token_dev_w[4]),
        .Q(token_rev_w[2]));
  FDCE \token_q_reg[14] 
       (.C(clk_i),
        .CE(status_sie_idle_w),
        .CLR(rst_i),
        .D(token_dev_w[5]),
        .Q(token_rev_w[1]));
  FDCE \token_q_reg[15] 
       (.C(clk_i),
        .CE(status_sie_idle_w),
        .CLR(rst_i),
        .D(token_dev_w[6]),
        .Q(token_rev_w[0]));
  FDCE \token_q_reg[1] 
       (.C(clk_i),
        .CE(token_q),
        .CLR(rst_i),
        .D(\token_q[1]_i_1_n_0 ),
        .Q(in13[6]));
  FDCE \token_q_reg[2] 
       (.C(clk_i),
        .CE(token_q),
        .CLR(rst_i),
        .D(\token_q[2]_i_1_n_0 ),
        .Q(in13[5]));
  FDCE \token_q_reg[3] 
       (.C(clk_i),
        .CE(token_q),
        .CLR(rst_i),
        .D(\token_q[3]_i_1_n_0 ),
        .Q(in13[4]));
  FDCE \token_q_reg[4] 
       (.C(clk_i),
        .CE(token_q),
        .CLR(rst_i),
        .D(\token_q[4]_i_2_n_0 ),
        .Q(in13[3]));
  FDCE \token_q_reg[5] 
       (.C(clk_i),
        .CE(status_sie_idle_w),
        .CLR(rst_i),
        .D(token_ep_w[0]),
        .Q(token_rev_w[10]));
  FDCE \token_q_reg[6] 
       (.C(clk_i),
        .CE(status_sie_idle_w),
        .CLR(rst_i),
        .D(token_ep_w[1]),
        .Q(token_rev_w[9]));
  FDCE \token_q_reg[7] 
       (.C(clk_i),
        .CE(status_sie_idle_w),
        .CLR(rst_i),
        .D(token_ep_w[2]),
        .Q(token_rev_w[8]));
  FDCE \token_q_reg[8] 
       (.C(clk_i),
        .CE(status_sie_idle_w),
        .CLR(rst_i),
        .D(token_ep_w[3]),
        .Q(token_rev_w[7]));
  FDCE \token_q_reg[9] 
       (.C(clk_i),
        .CE(status_sie_idle_w),
        .CLR(rst_i),
        .D(token_dev_w[0]),
        .Q(token_rev_w[6]));
  LUT5 #(
    .INIT(32'h3F3A3F30)) 
    transfer_start_q_i_1
       (.I0(usb_xfer_token_start_q),
        .I1(transfer_ack_w),
        .I2(wait_resp_q_reg_0),
        .I3(send_sof_w),
        .I4(sof_transfer_q_i_2_n_0),
        .O(usb_xfer_token_start_q_reg));
  (* KEEP_HIERARCHY = "soft" *) 
  bd_soc_usb_controller_0_usbh_crc16 u_crc16
       (.crc_i({\crc_sum_q_reg_n_0_[15] ,p_1_in,p_2_in,p_3_in_1,p_4_in,p_5_in,p_6_in,\crc_sum_q_reg_n_0_[8] ,\crc_sum_q_reg_n_0_[7] ,\crc_sum_q_reg_n_0_[6] ,\crc_sum_q_reg_n_0_[5] ,\crc_sum_q_reg_n_0_[4] ,\crc_sum_q_reg_n_0_[3] ,\crc_sum_q_reg_n_0_[2] ,\crc_sum_q_reg_n_0_[1] ,\crc_sum_q_reg_n_0_[0] }),
        .crc_o(crc_out_w),
        .data_i(crc_data_in_w));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    u_crc16_i_1
       (.I0(din[7]),
        .I1(\FSM_onehot_state_q_reg_n_0_[7] ),
        .I2(data_o[7]),
        .O(crc_data_in_w[7]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    u_crc16_i_2
       (.I0(din[6]),
        .I1(\FSM_onehot_state_q_reg_n_0_[7] ),
        .I2(data_o[6]),
        .O(crc_data_in_w[6]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    u_crc16_i_3
       (.I0(din[5]),
        .I1(\FSM_onehot_state_q_reg_n_0_[7] ),
        .I2(data_o[5]),
        .O(crc_data_in_w[5]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    u_crc16_i_4
       (.I0(din[4]),
        .I1(\FSM_onehot_state_q_reg_n_0_[7] ),
        .I2(data_o[4]),
        .O(crc_data_in_w[4]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    u_crc16_i_5
       (.I0(din[3]),
        .I1(\FSM_onehot_state_q_reg_n_0_[7] ),
        .I2(data_o[3]),
        .O(crc_data_in_w[3]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    u_crc16_i_6
       (.I0(din[2]),
        .I1(\FSM_onehot_state_q_reg_n_0_[7] ),
        .I2(data_o[2]),
        .O(crc_data_in_w[2]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    u_crc16_i_7
       (.I0(din[1]),
        .I1(\FSM_onehot_state_q_reg_n_0_[7] ),
        .I2(data_o[1]),
        .O(crc_data_in_w[1]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    u_crc16_i_8
       (.I0(din[0]),
        .I1(\FSM_onehot_state_q_reg_n_0_[7] ),
        .I2(data_o[0]),
        .O(crc_data_in_w[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    u_fifo_tx_i_2
       (.I0(utmi_txready_i),
        .I1(p_0_in_0),
        .O(pop_i));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \utmi_data_out_o[0]_INST_0 
       (.I0(\utmi_data_out_o[0]_INST_0_i_1_n_0 ),
        .I1(token_rev_w[8]),
        .I2(\FSM_onehot_state_q_reg_n_0_[13] ),
        .I3(token_rev_w[0]),
        .I4(\FSM_onehot_state_q_reg_n_0_[12] ),
        .I5(\utmi_data_out_o[0]_INST_0_i_2_n_0 ),
        .O(utmi_data_out_o[0]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \utmi_data_out_o[0]_INST_0_i_1 
       (.I0(data_o[0]),
        .I1(p_0_in_0),
        .I2(\crc_sum_q_reg_n_0_[15] ),
        .I3(\FSM_onehot_state_q_reg_n_0_[1] ),
        .O(\utmi_data_out_o[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE0E0FFE0)) 
    \utmi_data_out_o[0]_INST_0_i_2 
       (.I0(send_sof_q_reg_0),
        .I1(\utmi_data_out[7] [0]),
        .I2(p_0_in10_in),
        .I3(\FSM_onehot_state_q_reg_n_0_[2] ),
        .I4(\crc_sum_q_reg_n_0_[7] ),
        .I5(\FSM_onehot_state_q_reg_n_0_[5] ),
        .O(\utmi_data_out_o[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAFFEAEA)) 
    \utmi_data_out_o[1]_INST_0 
       (.I0(\utmi_data_out_o[1]_INST_0_i_1_n_0 ),
        .I1(token_rev_w[1]),
        .I2(\FSM_onehot_state_q_reg_n_0_[12] ),
        .I3(p_1_in),
        .I4(\FSM_onehot_state_q_reg_n_0_[1] ),
        .I5(\utmi_data_out_o[1]_INST_0_i_2_n_0 ),
        .O(utmi_data_out_o[1]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \utmi_data_out_o[1]_INST_0_i_1 
       (.I0(token_rev_w[9]),
        .I1(\FSM_onehot_state_q_reg_n_0_[13] ),
        .I2(\crc_sum_q_reg_n_0_[6] ),
        .I3(\FSM_onehot_state_q_reg_n_0_[2] ),
        .O(\utmi_data_out_o[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF080808)) 
    \utmi_data_out_o[1]_INST_0_i_2 
       (.I0(p_0_in10_in),
        .I1(\utmi_data_out[7] [1]),
        .I2(send_sof_q_reg_0),
        .I3(p_0_in_0),
        .I4(data_o[1]),
        .I5(\utmi_data_out_o[6]_INST_0_i_3_n_0 ),
        .O(\utmi_data_out_o[1]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFEEE)) 
    \utmi_data_out_o[2]_INST_0 
       (.I0(\utmi_data_out_o[2]_INST_0_i_1_n_0 ),
        .I1(\utmi_data_out_o[2]_INST_0_i_2_n_0 ),
        .I2(p_0_in10_in),
        .I3(\utmi_data_out[7] [2]),
        .I4(send_sof_q_reg_0),
        .O(utmi_data_out_o[2]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \utmi_data_out_o[2]_INST_0_i_1 
       (.I0(data_o[2]),
        .I1(p_0_in_0),
        .I2(\FSM_onehot_state_q_reg_n_0_[2] ),
        .I3(\crc_sum_q_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_q_reg_n_0_[12] ),
        .I5(token_rev_w[2]),
        .O(\utmi_data_out_o[2]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \utmi_data_out_o[2]_INST_0_i_2 
       (.I0(token_rev_w[10]),
        .I1(\FSM_onehot_state_q_reg_n_0_[13] ),
        .I2(p_2_in),
        .I3(\FSM_onehot_state_q_reg_n_0_[1] ),
        .O(\utmi_data_out_o[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFEFEFEFEFEFE)) 
    \utmi_data_out_o[3]_INST_0 
       (.I0(\utmi_data_out_o[3]_INST_0_i_1_n_0 ),
        .I1(\utmi_data_out_o[3]_INST_0_i_2_n_0 ),
        .I2(\utmi_data_out_o[3]_INST_0_i_3_n_0 ),
        .I3(send_sof_q_reg_0),
        .I4(\utmi_data_out[7] [3]),
        .I5(p_0_in10_in),
        .O(utmi_data_out_o[3]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \utmi_data_out_o[3]_INST_0_i_1 
       (.I0(\FSM_onehot_state_q_reg_n_0_[5] ),
        .I1(send_data1_q),
        .I2(p_3_in_1),
        .I3(\FSM_onehot_state_q_reg_n_0_[1] ),
        .O(\utmi_data_out_o[3]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \utmi_data_out_o[3]_INST_0_i_2 
       (.I0(in13[3]),
        .I1(\FSM_onehot_state_q_reg_n_0_[13] ),
        .I2(data_o[3]),
        .I3(p_0_in_0),
        .O(\utmi_data_out_o[3]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \utmi_data_out_o[3]_INST_0_i_3 
       (.I0(token_rev_w[3]),
        .I1(\FSM_onehot_state_q_reg_n_0_[12] ),
        .I2(\crc_sum_q_reg_n_0_[4] ),
        .I3(\FSM_onehot_state_q_reg_n_0_[2] ),
        .O(\utmi_data_out_o[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAFFEAEA)) 
    \utmi_data_out_o[4]_INST_0 
       (.I0(\utmi_data_out_o[4]_INST_0_i_1_n_0 ),
        .I1(token_rev_w[4]),
        .I2(\FSM_onehot_state_q_reg_n_0_[12] ),
        .I3(p_4_in),
        .I4(\FSM_onehot_state_q_reg_n_0_[1] ),
        .I5(\utmi_data_out_o[4]_INST_0_i_2_n_0 ),
        .O(utmi_data_out_o[4]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \utmi_data_out_o[4]_INST_0_i_1 
       (.I0(data_o[4]),
        .I1(p_0_in_0),
        .I2(in13[4]),
        .I3(\FSM_onehot_state_q_reg_n_0_[13] ),
        .O(\utmi_data_out_o[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0808FF08)) 
    \utmi_data_out_o[4]_INST_0_i_2 
       (.I0(p_0_in10_in),
        .I1(\utmi_data_out[7] [4]),
        .I2(send_sof_q_reg_0),
        .I3(\FSM_onehot_state_q_reg_n_0_[2] ),
        .I4(\crc_sum_q_reg_n_0_[3] ),
        .I5(\FSM_onehot_state_q_reg_n_0_[10] ),
        .O(\utmi_data_out_o[4]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFEEE)) 
    \utmi_data_out_o[5]_INST_0 
       (.I0(\utmi_data_out_o[5]_INST_0_i_1_n_0 ),
        .I1(\utmi_data_out_o[5]_INST_0_i_2_n_0 ),
        .I2(p_0_in10_in),
        .I3(\utmi_data_out[7] [5]),
        .I4(send_sof_q_reg_0),
        .O(utmi_data_out_o[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \utmi_data_out_o[5]_INST_0_i_1 
       (.I0(in13[5]),
        .I1(\FSM_onehot_state_q_reg_n_0_[13] ),
        .I2(p_0_in_0),
        .I3(data_o[5]),
        .I4(\FSM_onehot_state_q_reg_n_0_[12] ),
        .I5(token_rev_w[5]),
        .O(\utmi_data_out_o[5]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \utmi_data_out_o[5]_INST_0_i_2 
       (.I0(p_5_in),
        .I1(\FSM_onehot_state_q_reg_n_0_[1] ),
        .I2(\crc_sum_q_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_q_reg_n_0_[2] ),
        .O(\utmi_data_out_o[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBABABA)) 
    \utmi_data_out_o[6]_INST_0 
       (.I0(\utmi_data_out_o[6]_INST_0_i_1_n_0 ),
        .I1(p_6_in),
        .I2(\FSM_onehot_state_q_reg_n_0_[1] ),
        .I3(data_o[6]),
        .I4(p_0_in_0),
        .I5(\utmi_data_out_o[6]_INST_0_i_2_n_0 ),
        .O(utmi_data_out_o[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \utmi_data_out_o[6]_INST_0_i_1 
       (.I0(token_rev_w[6]),
        .I1(\FSM_onehot_state_q_reg_n_0_[12] ),
        .I2(in13[6]),
        .I3(\FSM_onehot_state_q_reg_n_0_[13] ),
        .O(\utmi_data_out_o[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0808FF08)) 
    \utmi_data_out_o[6]_INST_0_i_2 
       (.I0(p_0_in10_in),
        .I1(\utmi_data_out[7] [6]),
        .I2(send_sof_q_reg_0),
        .I3(\FSM_onehot_state_q_reg_n_0_[2] ),
        .I4(\crc_sum_q_reg_n_0_[1] ),
        .I5(\utmi_data_out_o[6]_INST_0_i_3_n_0 ),
        .O(\utmi_data_out_o[6]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \utmi_data_out_o[6]_INST_0_i_3 
       (.I0(\FSM_onehot_state_q_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_q_reg_n_0_[10] ),
        .O(\utmi_data_out_o[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEFEFE)) 
    \utmi_data_out_o[7]_INST_0 
       (.I0(\utmi_data_out_o[7]_INST_0_i_1_n_0 ),
        .I1(\utmi_data_out_o[7]_INST_0_i_2_n_0 ),
        .I2(\utmi_data_out_o[7]_INST_0_i_3_n_0 ),
        .I3(p_0_in10_in),
        .I4(\utmi_data_out[7] [7]),
        .I5(send_sof_q_reg_0),
        .O(utmi_data_out_o[7]));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \utmi_data_out_o[7]_INST_0_i_1 
       (.I0(\crc_sum_q_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_q_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_q_reg_n_0_[12] ),
        .I3(token_rev_w[7]),
        .I4(p_0_in_0),
        .I5(data_o[7]),
        .O(\utmi_data_out_o[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \utmi_data_out_o[7]_INST_0_i_2 
       (.I0(\FSM_onehot_state_q_reg_n_0_[10] ),
        .I1(in13[7]),
        .I2(\FSM_onehot_state_q_reg_n_0_[13] ),
        .O(\utmi_data_out_o[7]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \utmi_data_out_o[7]_INST_0_i_3 
       (.I0(send_data1_q),
        .I1(\FSM_onehot_state_q_reg_n_0_[5] ),
        .I2(\crc_sum_q_reg_n_0_[8] ),
        .I3(\FSM_onehot_state_q_reg_n_0_[1] ),
        .O(\utmi_data_out_o[7]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    utmi_txvalid_o_INST_0
       (.I0(utmi_txvalid_o_INST_0_i_1_n_0),
        .I1(\FSM_onehot_state_q_reg_n_0_[10] ),
        .I2(\FSM_onehot_state_q_reg_n_0_[5] ),
        .I3(p_0_in_0),
        .I4(p_0_in10_in),
        .O(utmi_txvalid_o));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    utmi_txvalid_o_INST_0_i_1
       (.I0(\FSM_onehot_state_q_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_q_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_q_reg_n_0_[12] ),
        .I3(\FSM_onehot_state_q_reg_n_0_[13] ),
        .O(utmi_txvalid_o_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h00BFBFBF00808080)) 
    wait_resp_q_i_1
       (.I0(wait_resp_q_reg_1),
        .I1(status_sie_idle_w),
        .I2(wait_resp_q_reg_0),
        .I3(p_0_in2_in),
        .I4(\data_valid_q_reg_n_0_[0] ),
        .I5(wait_resp_q_reg_n_0),
        .O(wait_resp_q_i_1_n_0));
  FDCE wait_resp_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(wait_resp_q_i_1_n_0),
        .Q(wait_resp_q_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    xpm_fifo_sync_inst_i_1
       (.I0(data_crc_q),
        .I1(\data_valid_q_reg_n_0_[0] ),
        .I2(p_0_in2_in),
        .I3(status_sie_idle_w),
        .O(wr_en));
endmodule

module bd_soc_usb_controller_0_usbh_top
   (cfg_awready,
    cfg_wready,
    cfg_bvalid,
    cfg_arready,
    cfg_rvalid,
    cfg_rdata,
    intr,
    utmi_data_out,
    utmi_txvalid,
    utmi_opmode,
    utmi_xcvrsel,
    utmi_termsel,
    utmi_dppulldown,
    utmi_dmpulldown,
    utmi_reset,
    utmi_data_t,
    aclk,
    cfg_awvalid,
    cfg_awaddr,
    cfg_wvalid,
    cfg_wdata,
    cfg_bready,
    cfg_arvalid,
    cfg_araddr,
    cfg_rready,
    utmi_data_in,
    utmi_txready,
    utmi_rxvalid,
    utmi_rxactive,
    utmi_rxerror,
    utmi_linestate,
    aresetn);
  output cfg_awready;
  output cfg_wready;
  output cfg_bvalid;
  output cfg_arready;
  output cfg_rvalid;
  output [31:0]cfg_rdata;
  output intr;
  output [7:0]utmi_data_out;
  output utmi_txvalid;
  output [1:0]utmi_opmode;
  output [1:0]utmi_xcvrsel;
  output utmi_termsel;
  output utmi_dppulldown;
  output utmi_dmpulldown;
  output utmi_reset;
  output utmi_data_t;
  input aclk;
  input cfg_awvalid;
  input [31:0]cfg_awaddr;
  input cfg_wvalid;
  input [31:0]cfg_wdata;
  input cfg_bready;
  input cfg_arvalid;
  input [7:0]cfg_araddr;
  input cfg_rready;
  input [7:0]utmi_data_in;
  input utmi_txready;
  input utmi_rxvalid;
  input utmi_rxactive;
  input utmi_rxerror;
  input [1:0]utmi_linestate;
  input aresetn;

  wire aclk;
  wire aresetn;
  wire [7:0]cfg_araddr;
  wire cfg_arready;
  wire cfg_arvalid;
  wire [31:0]cfg_awaddr;
  wire cfg_awready;
  wire cfg_awvalid;
  wire cfg_bready;
  wire cfg_bvalid;
  wire [31:0]cfg_rdata;
  wire cfg_rready;
  wire cfg_rvalid;
  wire [31:0]cfg_wdata;
  wire cfg_wready;
  wire cfg_wvalid;
  wire intr;
  wire usb_host_inst_i_1_n_0;
  wire [7:0]utmi_data_in;
  wire [7:0]utmi_data_out;
  wire utmi_data_t;
  wire utmi_dmpulldown;
  wire utmi_dppulldown;
  wire [1:0]utmi_linestate;
  wire [1:0]utmi_opmode;
  wire utmi_reset;
  wire utmi_rxactive;
  wire utmi_rxerror;
  wire utmi_rxvalid;
  wire utmi_termsel;
  wire utmi_txready;
  wire utmi_txvalid;
  wire [1:0]utmi_xcvrsel;
  wire [1:0]NLW_usb_host_inst_cfg_bresp_o_UNCONNECTED;
  wire [1:0]NLW_usb_host_inst_cfg_rresp_o_UNCONNECTED;

  (* CLKS_PER_BIT = "16'b0000000000000101" *) 
  (* EOF1_THRESHOLD = "16'b0000000011111010" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_XFER_PERIOD = "16'b0000110110101100" *) 
  (* MAX_XFER_SIZE = "16'b0000000001000000" *) 
  (* PID_SOF = "8'b10100101" *) 
  (* SOF_GAURD_HIGH = "16'b1101101110111001" *) 
  (* SOF_GAURD_LOW = "16'b0000000001100100" *) 
  (* SOF_INC = "16'b0000000000000001" *) 
  (* SOF_THRESHOLD = "16'b1110101001011111" *) 
  (* SOF_ZERO = "16'b0000000000000000" *) 
  bd_soc_usb_controller_0_usbh_host usb_host_inst
       (.cfg_araddr_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cfg_araddr}),
        .cfg_arready_o(cfg_arready),
        .cfg_arvalid_i(cfg_arvalid),
        .cfg_awaddr_i(cfg_awaddr),
        .cfg_awready_o(cfg_awready),
        .cfg_awvalid_i(cfg_awvalid),
        .cfg_bready_i(cfg_bready),
        .cfg_bresp_o(NLW_usb_host_inst_cfg_bresp_o_UNCONNECTED[1:0]),
        .cfg_bvalid_o(cfg_bvalid),
        .cfg_rdata_o(cfg_rdata),
        .cfg_rready_i(cfg_rready),
        .cfg_rresp_o(NLW_usb_host_inst_cfg_rresp_o_UNCONNECTED[1:0]),
        .cfg_rvalid_o(cfg_rvalid),
        .cfg_wdata_i(cfg_wdata),
        .cfg_wready_o(cfg_wready),
        .cfg_wstrb_i({1'b0,1'b0,1'b0,1'b0}),
        .cfg_wvalid_i(cfg_wvalid),
        .clk_i(aclk),
        .intr_o(intr),
        .rst_i(usb_host_inst_i_1_n_0),
        .utmi_data_in_i(utmi_data_in),
        .utmi_data_out_o(utmi_data_out),
        .utmi_dmpulldown_o(utmi_dmpulldown),
        .utmi_dppulldown_o(utmi_dppulldown),
        .utmi_linestate_i(utmi_linestate),
        .utmi_op_mode_o(utmi_opmode),
        .utmi_reset_o(utmi_reset),
        .utmi_rxactive_i(utmi_rxactive),
        .utmi_rxerror_i(utmi_rxerror),
        .utmi_rxvalid_i(utmi_rxvalid),
        .utmi_termselect_o(utmi_termsel),
        .utmi_txready_i(utmi_txready),
        .utmi_txvalid_o(utmi_txvalid),
        .utmi_xcvrselect_o(utmi_xcvrsel));
  LUT1 #(
    .INIT(2'h1)) 
    usb_host_inst_i_1
       (.I0(aresetn),
        .O(usb_host_inst_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    utmi_data_t_INST_0
       (.I0(utmi_txvalid),
        .O(utmi_data_t));
endmodule

(* CHECK_LICENSE_TYPE = "utmi_usb_controller_0,usbh_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "usbh_top,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module bd_soc_usb_controller_0
   (aclk,
    aresetn,
    intr,
    cfg_awvalid,
    cfg_awaddr,
    cfg_wvalid,
    cfg_wdata,
    cfg_wstrb,
    cfg_bready,
    cfg_arvalid,
    cfg_araddr,
    cfg_rready,
    cfg_awready,
    cfg_wready,
    cfg_bvalid,
    cfg_bresp,
    cfg_arready,
    cfg_rvalid,
    cfg_rdata,
    cfg_rresp,
    utmi_data_in,
    utmi_data_out,
    utmi_data_t,
    utmi_reset,
    utmi_txready,
    utmi_rxvalid,
    utmi_rxactive,
    utmi_rxerror,
    utmi_linestate,
    utmi_txvalid,
    utmi_opmode,
    utmi_xcvrsel,
    utmi_termsel,
    utmi_dppulldown,
    utmi_dmpulldown,
    utmi_idpullup,
    utmi_chrgvbus,
    utmi_dischrgvbus,
    utmi_suspend_n,
    utmi_hostdisc,
    utmi_iddig,
    utmi_vbusvalid,
    utmi_sessend);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF cfg, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 intr INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME intr, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output intr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg AWVALID" *) input cfg_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg AWADDR" *) input [31:0]cfg_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg WVALID" *) input cfg_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg WDATA" *) input [31:0]cfg_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg WSTRB" *) input [3:0]cfg_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg BREADY" *) input cfg_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg ARVALID" *) input cfg_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg ARADDR" *) input [31:0]cfg_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg RREADY" *) input cfg_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg AWREADY" *) output cfg_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg WREADY" *) output cfg_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg BVALID" *) output cfg_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg BRESP" *) output [1:0]cfg_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg ARREADY" *) output cfg_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg RVALID" *) output cfg_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg RDATA" *) output [31:0]cfg_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg RRESP" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cfg, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [1:0]cfg_rresp;
  (* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi data_i" *) input [7:0]utmi_data_in;
  (* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi data_o" *) output [7:0]utmi_data_out;
  (* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi data_t" *) output utmi_data_t;
  (* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi reset" *) output utmi_reset;
  (* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi txready" *) input utmi_txready;
  (* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi rxvalid" *) input utmi_rxvalid;
  (* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi rxactive" *) input utmi_rxactive;
  (* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi rxerror" *) input utmi_rxerror;
  (* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi linestate" *) input [1:0]utmi_linestate;
  (* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi txvalid" *) output utmi_txvalid;
  (* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi opmode" *) output [1:0]utmi_opmode;
  (* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi xcvrsel" *) output [1:0]utmi_xcvrsel;
  (* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi termsel" *) output utmi_termsel;
  (* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi dppulldown" *) output utmi_dppulldown;
  (* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi dmpulldown" *) output utmi_dmpulldown;
  (* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi idpullup" *) output utmi_idpullup;
  (* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi chrgvbus" *) output utmi_chrgvbus;
  (* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi dischrgvbus" *) output utmi_dischrgvbus;
  (* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi suspend_n" *) output utmi_suspend_n;
  (* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi hostdisc" *) input utmi_hostdisc;
  (* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi iddig" *) input utmi_iddig;
  (* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi vbusvalid" *) input utmi_vbusvalid;
  (* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi sessend" *) input utmi_sessend;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire aresetn;
  wire [31:0]cfg_araddr;
  wire cfg_arready;
  wire cfg_arvalid;
  wire [31:0]cfg_awaddr;
  wire cfg_awready;
  wire cfg_awvalid;
  wire cfg_bready;
  wire cfg_bvalid;
  wire [31:0]cfg_rdata;
  wire cfg_rready;
  wire cfg_rvalid;
  wire [31:0]cfg_wdata;
  wire cfg_wready;
  wire cfg_wvalid;
  wire intr;
  wire [7:0]utmi_data_in;
  wire [7:0]utmi_data_out;
  wire utmi_data_t;
  wire utmi_dmpulldown;
  wire utmi_dppulldown;
  wire [1:0]utmi_linestate;
  wire [1:0]utmi_opmode;
  wire utmi_reset;
  wire utmi_rxactive;
  wire utmi_rxerror;
  wire utmi_rxvalid;
  wire utmi_termsel;
  wire utmi_txready;
  wire utmi_txvalid;
  wire [1:0]utmi_xcvrsel;

  assign cfg_bresp[1] = \<const0> ;
  assign cfg_bresp[0] = \<const0> ;
  assign cfg_rresp[1] = \<const0> ;
  assign cfg_rresp[0] = \<const0> ;
  assign utmi_chrgvbus = \<const0> ;
  assign utmi_dischrgvbus = \<const0> ;
  assign utmi_idpullup = \<const0> ;
  assign utmi_suspend_n = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  bd_soc_usb_controller_0_usbh_top inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .cfg_araddr(cfg_araddr[7:0]),
        .cfg_arready(cfg_arready),
        .cfg_arvalid(cfg_arvalid),
        .cfg_awaddr(cfg_awaddr),
        .cfg_awready(cfg_awready),
        .cfg_awvalid(cfg_awvalid),
        .cfg_bready(cfg_bready),
        .cfg_bvalid(cfg_bvalid),
        .cfg_rdata(cfg_rdata),
        .cfg_rready(cfg_rready),
        .cfg_rvalid(cfg_rvalid),
        .cfg_wdata(cfg_wdata),
        .cfg_wready(cfg_wready),
        .cfg_wvalid(cfg_wvalid),
        .intr(intr),
        .utmi_data_in(utmi_data_in),
        .utmi_data_out(utmi_data_out),
        .utmi_data_t(utmi_data_t),
        .utmi_dmpulldown(utmi_dmpulldown),
        .utmi_dppulldown(utmi_dppulldown),
        .utmi_linestate(utmi_linestate),
        .utmi_opmode(utmi_opmode),
        .utmi_reset(utmi_reset),
        .utmi_rxactive(utmi_rxactive),
        .utmi_rxerror(utmi_rxerror),
        .utmi_rxvalid(utmi_rxvalid),
        .utmi_termsel(utmi_termsel),
        .utmi_txready(utmi_txready),
        .utmi_txvalid(utmi_txvalid),
        .utmi_xcvrsel(utmi_xcvrsel));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module bd_soc_usb_controller_0_xpm_counter_updn__parameterized0
   (ram_full_i0,
    leaving_empty0,
    enb,
    Q,
    E,
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_0 ,
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 ,
    \count_value_i_reg[5]_0 ,
    wr_clk);
  output ram_full_i0;
  output leaving_empty0;
  output enb;
  output [5:0]Q;
  input [0:0]E;
  input \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input [5:0]\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_0 ;
  input [5:0]\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 ;
  input [0:0]\count_value_i_reg[5]_0 ;
  input wr_clk;

  wire [0:0]E;
  wire [5:0]Q;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_2__1_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[5]_0 ;
  wire enb;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_n_0 ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_n_0 ;
  wire [5:0]\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_0 ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_6_n_0 ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ;
  wire [5:0]\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 ;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_full_i0;
  wire rd_en;
  wire wr_clk;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__1 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__1 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__1 
       (.I0(Q[3]),
        .I1(\count_value_i[5]_i_2__1_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[5]_i_2__1 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[0]_0 [1]),
        .I2(\count_value_i_reg[0]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[5]_i_2__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(enb),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(enb),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(enb),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(enb),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(enb),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(enb),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFF00008080)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_1 
       (.I0(E),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_n_0 ),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_n_0 ),
        .I3(leaving_empty0),
        .I4(enb),
        .I5(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ),
        .O(ram_full_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 [0]),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 [3]),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4 
       (.I0(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5_n_0 ),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_6_n_0 ),
        .O(leaving_empty0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_0 [0]),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_6 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_0 [3]),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(enb));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module bd_soc_usb_controller_0_xpm_counter_updn__parameterized0_0
   (ram_empty_i0,
    Q,
    enb,
    leaving_empty0,
    E,
    ram_empty_i,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[0]_0 ,
    rst_d1,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    wr_clk);
  output ram_empty_i0;
  output [5:0]Q;
  input enb;
  input leaving_empty0;
  input [0:0]E;
  input ram_empty_i;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[0]_0 ;
  input rst_d1;
  input [5:0]\gen_pntr_flags_cc.ram_empty_i_reg ;
  input wr_clk;

  wire [0:0]E;
  wire [5:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_2__0_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire enb;
  wire \gen_pntr_flags_cc.ram_empty_i_i_2_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ;
  wire [5:0]\gen_pntr_flags_cc.ram_empty_i_reg ;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__0 
       (.I0(Q[3]),
        .I1(\count_value_i[5]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[5]_i_2__0 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[5]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFF00008080)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(enb),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_2_n_0 ),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ),
        .I3(leaving_empty0),
        .I4(E),
        .I5(ram_empty_i),
        .O(ram_empty_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_2 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg [0]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg [3]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module bd_soc_usb_controller_0_xpm_counter_updn__parameterized0_2
   (ram_full_i0,
    leaving_empty0,
    enb,
    Q,
    E,
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_0 ,
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 ,
    \count_value_i_reg[5]_0 ,
    wr_clk);
  output ram_full_i0;
  output leaving_empty0;
  output enb;
  output [5:0]Q;
  input [0:0]E;
  input \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input [5:0]\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_0 ;
  input [5:0]\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 ;
  input [0:0]\count_value_i_reg[5]_0 ;
  input wr_clk;

  wire [0:0]E;
  wire [5:0]Q;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_2__1_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[5]_0 ;
  wire enb;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_n_0 ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_n_0 ;
  wire [5:0]\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_0 ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_6_n_0 ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ;
  wire [5:0]\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 ;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_full_i0;
  wire rd_en;
  wire wr_clk;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__1 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__1 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__1 
       (.I0(Q[3]),
        .I1(\count_value_i[5]_i_2__1_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[5]_i_2__1 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[0]_0 [1]),
        .I2(\count_value_i_reg[0]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[5]_i_2__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(enb),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(enb),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(enb),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(enb),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(enb),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(enb),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFF00008080)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_1 
       (.I0(E),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_n_0 ),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_n_0 ),
        .I3(leaving_empty0),
        .I4(enb),
        .I5(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ),
        .O(ram_full_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 [0]),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 [3]),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4 
       (.I0(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5_n_0 ),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_6_n_0 ),
        .O(leaving_empty0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_0 [0]),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_6 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_0 [3]),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(enb));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module bd_soc_usb_controller_0_xpm_counter_updn__parameterized0_5
   (ram_empty_i0,
    Q,
    enb,
    leaving_empty0,
    E,
    ram_empty_i,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[0]_0 ,
    rst_d1,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    wr_clk);
  output ram_empty_i0;
  output [5:0]Q;
  input enb;
  input leaving_empty0;
  input [0:0]E;
  input ram_empty_i;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[0]_0 ;
  input rst_d1;
  input [5:0]\gen_pntr_flags_cc.ram_empty_i_reg ;
  input wr_clk;

  wire [0:0]E;
  wire [5:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_2__0_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire enb;
  wire \gen_pntr_flags_cc.ram_empty_i_i_2_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ;
  wire [5:0]\gen_pntr_flags_cc.ram_empty_i_reg ;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__0 
       (.I0(Q[3]),
        .I1(\count_value_i[5]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[5]_i_2__0 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[5]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFF00008080)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(enb),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_2_n_0 ),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ),
        .I3(leaving_empty0),
        .I4(E),
        .I5(ram_empty_i),
        .O(ram_empty_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_2 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg [0]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg [3]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module bd_soc_usb_controller_0_xpm_counter_updn__parameterized1
   (Q,
    \count_value_i_reg[1]_0 ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[1]_1 ,
    E,
    wr_clk);
  output [5:0]Q;
  input [1:0]\count_value_i_reg[1]_0 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]\count_value_i_reg[1]_1 ;
  input [0:0]E;
  input wr_clk;

  wire [0:0]E;
  wire [5:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_2__2_n_0 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire [0:0]\count_value_i_reg[1]_1 ;
  wire ram_empty_i;
  wire rd_en;
  wire wr_clk;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__2 
       (.I0(\count_value_i_reg[1]_0 [1]),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__2 
       (.I0(Q[3]),
        .I1(\count_value_i[5]_i_2__2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[5]_i_2__2 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[1]_0 [1]),
        .I2(\count_value_i_reg[1]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[5]_i_2__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__2_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[1]_1 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module bd_soc_usb_controller_0_xpm_counter_updn__parameterized1_1
   (Q,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[1]_0 ,
    rst_d1,
    E,
    wr_clk);
  output [5:0]Q;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[1]_0 ;
  input rst_d1;
  input [0:0]E;
  input wr_clk;

  wire [0:0]E;
  wire [5:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[5]_i_2_n_0 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1 
       (.I0(Q[3]),
        .I1(\count_value_i[5]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[5]_i_2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[1]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[5]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module bd_soc_usb_controller_0_xpm_counter_updn__parameterized1_3
   (Q,
    \count_value_i_reg[1]_0 ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[1]_1 ,
    E,
    wr_clk);
  output [5:0]Q;
  input [1:0]\count_value_i_reg[1]_0 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]\count_value_i_reg[1]_1 ;
  input [0:0]E;
  input wr_clk;

  wire [0:0]E;
  wire [5:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_2__2_n_0 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire [0:0]\count_value_i_reg[1]_1 ;
  wire ram_empty_i;
  wire rd_en;
  wire wr_clk;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__2 
       (.I0(\count_value_i_reg[1]_0 [1]),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__2 
       (.I0(Q[3]),
        .I1(\count_value_i[5]_i_2__2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[5]_i_2__2 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[1]_0 [1]),
        .I2(\count_value_i_reg[1]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[5]_i_2__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__2_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[1]_1 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module bd_soc_usb_controller_0_xpm_counter_updn__parameterized1_6
   (Q,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[1]_0 ,
    rst_d1,
    E,
    wr_clk);
  output [5:0]Q;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[1]_0 ;
  input rst_d1;
  input [0:0]E;
  input wr_clk;

  wire [0:0]E;
  wire [5:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[5]_i_2_n_0 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1 
       (.I0(Q[3]),
        .I1(\count_value_i[5]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[5]_i_2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[1]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[5]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[1]_0 ));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "1" *) 
(* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0000011100000111" *) (* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) 
(* EN_DVLD = "1'b0" *) (* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) 
(* EN_PF = "1'b1" *) (* EN_RDC = "1'b1" *) (* EN_UF = "1'b1" *) 
(* EN_WACK = "1'b0" *) (* EN_WDC = "1'b1" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) 
(* FIFO_MEMORY_TYPE = "0" *) (* FIFO_MEM_TYPE = "0" *) (* FIFO_READ_DEPTH = "64" *) 
(* FIFO_READ_LATENCY = "0" *) (* FIFO_SIZE = "512" *) (* FIFO_WRITE_DEPTH = "64" *) 
(* FULL_RESET_VALUE = "0" *) (* FULL_RST_VAL = "1'b0" *) (* PE_THRESH_ADJ = "8" *) 
(* PE_THRESH_MAX = "59" *) (* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "8" *) 
(* PF_THRESH_MAX = "59" *) (* PF_THRESH_MIN = "5" *) (* PROG_EMPTY_THRESH = "10" *) 
(* PROG_FULL_THRESH = "10" *) (* RD_DATA_COUNT_WIDTH = "6" *) (* RD_DC_WIDTH_EXT = "7" *) 
(* RD_LATENCY = "2" *) (* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "6" *) 
(* READ_DATA_WIDTH = "8" *) (* READ_MODE = "1" *) (* READ_MODE_LL = "1" *) 
(* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_ADV_FEATURES = "0707" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "8" *) (* WR_DATA_COUNT_WIDTH = "6" *) 
(* WR_DC_WIDTH_EXT = "7" *) (* WR_DEPTH_LOG = "6" *) (* WR_PNTR_WIDTH = "6" *) 
(* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "3" *) (* XPM_MODULE = "TRUE" *) 
(* both_stages_valid = "3" *) (* invalid = "0" *) (* keep_hierarchy = "soft" *) 
(* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module bd_soc_usb_controller_0_xpm_fifo_base
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [7:0]din;
  output full;
  output full_n;
  output prog_full;
  output [5:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [7:0]dout;
  output empty;
  output prog_empty;
  output [5:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire [5:0]count_value_i__0;
  wire [1:0]curr_fwft_state;
  wire [7:0]din;
  wire [7:0]dout;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_n_0 ;
  wire leaving_empty0;
  wire [1:0]next_fwft_state__0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_full_i0;
  wire ram_wr_en_pf;
  wire rd_en;
  wire [5:0]rd_pntr_ext;
  wire rdp_inst_n_2;
  wire rst;
  wire rst_d1;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire [5:0]wr_pntr_ext;
  wire wrpp1_inst_n_0;
  wire wrpp1_inst_n_1;
  wire wrpp1_inst_n_2;
  wire wrpp1_inst_n_3;
  wire wrpp1_inst_n_4;
  wire wrpp1_inst_n_5;
  wire xpm_fifo_rst_inst_n_1;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [7:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign full_n = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  LUT3 #(
    .INIT(8'h7C)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_1));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_1));
  GND GND
       (.G(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_full_i0),
        .Q(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_n_0 ),
        .R(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_1));
  (* ADDR_WIDTH_A = "6" *) 
  (* ADDR_WIDTH_B = "6" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "8" *) 
  (* BYTE_WRITE_WIDTH_B = "8" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_BIT_RANGE = "[7:0]" *) 
  (* ECC_MODE = "0" *) 
  (* ECC_TYPE = "NONE" *) 
  (* IGNORE_INIT_SYNTH = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "512" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "64" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "8" *) 
  (* P_MIN_WIDTH_DATA_A = "8" *) 
  (* P_MIN_WIDTH_DATA_B = "8" *) 
  (* P_MIN_WIDTH_DATA_ECC = "8" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "8" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "6" *) 
  (* P_WIDTH_ADDR_READ_B = "6" *) 
  (* P_WIDTH_ADDR_WRITE_A = "6" *) 
  (* P_WIDTH_ADDR_WRITE_B = "6" *) 
  (* P_WIDTH_COL_WRITE_A = "8" *) 
  (* P_WIDTH_COL_WRITE_B = "8" *) 
  (* RAM_DECOMP = "auto" *) 
  (* READ_DATA_WIDTH_A = "8" *) 
  (* READ_DATA_WIDTH_B = "8" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "8" *) 
  (* WRITE_DATA_WIDTH_B = "8" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "8" *) 
  (* rstb_loop_iter = "8" *) 
  bd_soc_usb_controller_0_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [7:0]),
        .doutb(dout),
        .ena(1'b0),
        .enb(rdp_inst_n_2),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(xpm_fifo_rst_inst_n_1),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(ram_wr_en_pf),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  bd_soc_usb_controller_0_xpm_counter_updn__parameterized0 rdp_inst
       (.E(ram_wr_en_pf),
        .Q(rd_pntr_ext),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[5]_0 (xpm_fifo_rst_inst_n_1),
        .enb(rdp_inst_n_2),
        .\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_0 (wr_pntr_ext),
        .\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg (\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 ({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5}),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_full_i0(ram_full_i0),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  bd_soc_usb_controller_0_xpm_counter_updn__parameterized1 rdpp1_inst
       (.E(rdp_inst_n_2),
        .Q(count_value_i__0),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .\count_value_i_reg[1]_1 (xpm_fifo_rst_inst_n_1),
        .ram_empty_i(ram_empty_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  bd_soc_usb_controller_0_xpm_fifo_reg_bit rst_d1_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk));
  bd_soc_usb_controller_0_xpm_counter_updn__parameterized0_0 wrp_inst
       (.E(ram_wr_en_pf),
        .Q(wr_pntr_ext),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_n_0 ),
        .enb(rdp_inst_n_2),
        .\gen_pntr_flags_cc.ram_empty_i_reg (count_value_i__0),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  bd_soc_usb_controller_0_xpm_counter_updn__parameterized1_1 wrpp1_inst
       (.E(ram_wr_en_pf),
        .Q({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5}),
        .\count_value_i_reg[1]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_n_0 ),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  bd_soc_usb_controller_0_xpm_fifo_rst xpm_fifo_rst_inst
       (.E(ram_wr_en_pf),
        .Q(xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5] (\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_n_0 ),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "1" *) 
(* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0000011100000111" *) (* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) 
(* EN_DVLD = "1'b0" *) (* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) 
(* EN_PF = "1'b1" *) (* EN_RDC = "1'b1" *) (* EN_UF = "1'b1" *) 
(* EN_WACK = "1'b0" *) (* EN_WDC = "1'b1" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) 
(* FIFO_MEMORY_TYPE = "0" *) (* FIFO_MEM_TYPE = "0" *) (* FIFO_READ_DEPTH = "64" *) 
(* FIFO_READ_LATENCY = "0" *) (* FIFO_SIZE = "512" *) (* FIFO_WRITE_DEPTH = "64" *) 
(* FULL_RESET_VALUE = "0" *) (* FULL_RST_VAL = "1'b0" *) (* ORIG_REF_NAME = "xpm_fifo_base" *) 
(* PE_THRESH_ADJ = "8" *) (* PE_THRESH_MAX = "59" *) (* PE_THRESH_MIN = "5" *) 
(* PF_THRESH_ADJ = "8" *) (* PF_THRESH_MAX = "59" *) (* PF_THRESH_MIN = "5" *) 
(* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) (* RD_DATA_COUNT_WIDTH = "6" *) 
(* RD_DC_WIDTH_EXT = "7" *) (* RD_LATENCY = "2" *) (* RD_MODE = "1" *) 
(* RD_PNTR_WIDTH = "6" *) (* READ_DATA_WIDTH = "8" *) (* READ_MODE = "1" *) 
(* READ_MODE_LL = "1" *) (* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0707" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "8" *) 
(* WR_DATA_COUNT_WIDTH = "6" *) (* WR_DC_WIDTH_EXT = "7" *) (* WR_DEPTH_LOG = "6" *) 
(* WR_PNTR_WIDTH = "6" *) (* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "3" *) 
(* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) (* invalid = "0" *) 
(* keep_hierarchy = "soft" *) (* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module bd_soc_usb_controller_0_xpm_fifo_base__2
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [7:0]din;
  output full;
  output full_n;
  output prog_full;
  output [5:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [7:0]dout;
  output empty;
  output prog_empty;
  output [5:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire [5:0]count_value_i__0;
  wire [1:0]curr_fwft_state;
  wire [7:0]din;
  wire [7:0]dout;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_n_0 ;
  wire leaving_empty0;
  wire [1:0]next_fwft_state__0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_full_i0;
  wire ram_wr_en_pf;
  wire rd_en;
  wire [5:0]rd_pntr_ext;
  wire rdp_inst_n_2;
  wire rst;
  wire rst_d1;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire [5:0]wr_pntr_ext;
  wire wrpp1_inst_n_0;
  wire wrpp1_inst_n_1;
  wire wrpp1_inst_n_2;
  wire wrpp1_inst_n_3;
  wire wrpp1_inst_n_4;
  wire wrpp1_inst_n_5;
  wire xpm_fifo_rst_inst_n_1;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [7:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign full_n = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  LUT3 #(
    .INIT(8'h7C)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_1));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_1));
  GND GND
       (.G(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_full_i0),
        .Q(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_n_0 ),
        .R(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_1));
  (* ADDR_WIDTH_A = "6" *) 
  (* ADDR_WIDTH_B = "6" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "8" *) 
  (* BYTE_WRITE_WIDTH_B = "8" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_BIT_RANGE = "[7:0]" *) 
  (* ECC_MODE = "0" *) 
  (* ECC_TYPE = "NONE" *) 
  (* IGNORE_INIT_SYNTH = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "512" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "64" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "8" *) 
  (* P_MIN_WIDTH_DATA_A = "8" *) 
  (* P_MIN_WIDTH_DATA_B = "8" *) 
  (* P_MIN_WIDTH_DATA_ECC = "8" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "8" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "6" *) 
  (* P_WIDTH_ADDR_READ_B = "6" *) 
  (* P_WIDTH_ADDR_WRITE_A = "6" *) 
  (* P_WIDTH_ADDR_WRITE_B = "6" *) 
  (* P_WIDTH_COL_WRITE_A = "8" *) 
  (* P_WIDTH_COL_WRITE_B = "8" *) 
  (* RAM_DECOMP = "auto" *) 
  (* READ_DATA_WIDTH_A = "8" *) 
  (* READ_DATA_WIDTH_B = "8" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "8" *) 
  (* WRITE_DATA_WIDTH_B = "8" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "8" *) 
  (* rstb_loop_iter = "8" *) 
  bd_soc_usb_controller_0_xpm_memory_base__2 \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [7:0]),
        .doutb(dout),
        .ena(1'b0),
        .enb(rdp_inst_n_2),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(xpm_fifo_rst_inst_n_1),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(ram_wr_en_pf),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  bd_soc_usb_controller_0_xpm_counter_updn__parameterized0_2 rdp_inst
       (.E(ram_wr_en_pf),
        .Q(rd_pntr_ext),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[5]_0 (xpm_fifo_rst_inst_n_1),
        .enb(rdp_inst_n_2),
        .\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_0 (wr_pntr_ext),
        .\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg (\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 ({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5}),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_full_i0(ram_full_i0),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  bd_soc_usb_controller_0_xpm_counter_updn__parameterized1_3 rdpp1_inst
       (.E(rdp_inst_n_2),
        .Q(count_value_i__0),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .\count_value_i_reg[1]_1 (xpm_fifo_rst_inst_n_1),
        .ram_empty_i(ram_empty_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  bd_soc_usb_controller_0_xpm_fifo_reg_bit_4 rst_d1_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk));
  bd_soc_usb_controller_0_xpm_counter_updn__parameterized0_5 wrp_inst
       (.E(ram_wr_en_pf),
        .Q(wr_pntr_ext),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_n_0 ),
        .enb(rdp_inst_n_2),
        .\gen_pntr_flags_cc.ram_empty_i_reg (count_value_i__0),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  bd_soc_usb_controller_0_xpm_counter_updn__parameterized1_6 wrpp1_inst
       (.E(ram_wr_en_pf),
        .Q({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5}),
        .\count_value_i_reg[1]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_n_0 ),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  bd_soc_usb_controller_0_xpm_fifo_rst_7 xpm_fifo_rst_inst
       (.E(ram_wr_en_pf),
        .Q(xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5] (\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_n_0 ),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

module bd_soc_usb_controller_0_xpm_fifo_reg_bit
   (rst_d1,
    Q,
    wr_clk);
  output rst_d1;
  input [0:0]Q;
  input wr_clk;

  wire [0:0]Q;
  wire rst_d1;
  wire wr_clk;

  FDRE #(
    .INIT(1'b0)) 
    d_out_int_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(Q),
        .Q(rst_d1),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module bd_soc_usb_controller_0_xpm_fifo_reg_bit_4
   (rst_d1,
    Q,
    wr_clk);
  output rst_d1;
  input [0:0]Q;
  input wr_clk;

  wire [0:0]Q;
  wire rst_d1;
  wire wr_clk;

  FDRE #(
    .INIT(1'b0)) 
    d_out_int_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(Q),
        .Q(rst_d1),
        .R(1'b0));
endmodule

module bd_soc_usb_controller_0_xpm_fifo_rst
   (E,
    Q,
    wr_en,
    \count_value_i_reg[5] ,
    rst_d1,
    rst,
    wr_clk);
  output [0:0]E;
  output [0:0]Q;
  input wr_en;
  input \count_value_i_reg[5] ;
  input rst_d1;
  input rst;
  input wr_clk;

  wire [0:0]E;
  wire [0:0]Q;
  wire \count_value_i_reg[5] ;
  wire [1:0]\gen_rst_cc.fifo_wr_rst_cc ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire wr_clk;
  wire wr_en;

  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_cc.fifo_wr_rst_cc[2]_i_1 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .Q(Q),
        .S(rst_i));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\count_value_i_reg[5] ),
        .I2(Q),
        .I3(rst_d1),
        .O(E));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module bd_soc_usb_controller_0_xpm_fifo_rst_7
   (E,
    Q,
    wr_en,
    \count_value_i_reg[5] ,
    rst_d1,
    rst,
    wr_clk);
  output [0:0]E;
  output [0:0]Q;
  input wr_en;
  input \count_value_i_reg[5] ;
  input rst_d1;
  input rst;
  input wr_clk;

  wire [0:0]E;
  wire [0:0]Q;
  wire \count_value_i_reg[5] ;
  wire [1:0]\gen_rst_cc.fifo_wr_rst_cc ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire wr_clk;
  wire wr_en;

  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_cc.fifo_wr_rst_cc[2]_i_1 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .Q(Q),
        .S(rst_i));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\count_value_i_reg[5] ),
        .I2(Q),
        .I3(rst_d1),
        .O(E));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* CASCADE_HEIGHT = "0" *) (* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_SYNC = "16'b0000011100000111" *) (* FIFO_MEMORY_TYPE = "auto" *) (* FIFO_READ_LATENCY = "0" *) 
(* FIFO_WRITE_DEPTH = "64" *) (* FULL_RESET_VALUE = "0" *) (* PROG_EMPTY_THRESH = "10" *) 
(* PROG_FULL_THRESH = "10" *) (* P_COMMON_CLOCK = "1" *) (* P_ECC_MODE = "0" *) 
(* P_FIFO_MEMORY_TYPE = "0" *) (* P_READ_MODE = "1" *) (* P_WAKEUP_TIME = "2" *) 
(* RD_DATA_COUNT_WIDTH = "6" *) (* READ_DATA_WIDTH = "8" *) (* READ_MODE = "fwft" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0707" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH = "8" *) (* WR_DATA_COUNT_WIDTH = "6" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) 
module bd_soc_usb_controller_0_xpm_fifo_sync
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [7:0]din;
  output full;
  output prog_full;
  output [5:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_en;
  output [7:0]dout;
  output empty;
  output prog_empty;
  output [5:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire [7:0]din;
  wire [7:0]dout;
  wire rd_en;
  wire rst;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_n_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED;
  wire [5:0]NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED;
  wire [5:0]NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "1" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0000011100000111" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b0" *) 
  (* EN_OF = "1'b1" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_UF = "1'b1" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "64" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "512" *) 
  (* FIFO_WRITE_DEPTH = "64" *) 
  (* FULL_RESET_VALUE = "0" *) 
  (* FULL_RST_VAL = "1'b0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "59" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "8" *) 
  (* PF_THRESH_MAX = "59" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "6" *) 
  (* RD_DC_WIDTH_EXT = "7" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "6" *) 
  (* READ_DATA_WIDTH = "8" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "8" *) 
  (* WR_DATA_COUNT_WIDTH = "6" *) 
  (* WR_DC_WIDTH_EXT = "7" *) 
  (* WR_DEPTH_LOG = "6" *) 
  (* WR_PNTR_WIDTH = "6" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "3" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  bd_soc_usb_controller_0_xpm_fifo_base xpm_fifo_base_inst
       (.almost_empty(NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED),
        .data_valid(NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(NLW_xpm_fifo_base_inst_empty_UNCONNECTED),
        .full(NLW_xpm_fifo_base_inst_full_UNCONNECTED),
        .full_n(NLW_xpm_fifo_base_inst_full_n_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_base_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED),
        .rd_clk(1'b0),
        .rd_data_count(NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(rd_en),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(sleep),
        .underflow(NLW_xpm_fifo_base_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(wr_en),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
endmodule

(* CASCADE_HEIGHT = "0" *) (* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_SYNC = "16'b0000011100000111" *) (* FIFO_MEMORY_TYPE = "auto" *) (* FIFO_READ_LATENCY = "0" *) 
(* FIFO_WRITE_DEPTH = "64" *) (* FULL_RESET_VALUE = "0" *) (* ORIG_REF_NAME = "xpm_fifo_sync" *) 
(* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) (* P_COMMON_CLOCK = "1" *) 
(* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "0" *) (* P_READ_MODE = "1" *) 
(* P_WAKEUP_TIME = "2" *) (* RD_DATA_COUNT_WIDTH = "6" *) (* READ_DATA_WIDTH = "8" *) 
(* READ_MODE = "fwft" *) (* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0707" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH = "8" *) (* WR_DATA_COUNT_WIDTH = "6" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) 
module bd_soc_usb_controller_0_xpm_fifo_sync__2
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [7:0]din;
  output full;
  output prog_full;
  output [5:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_en;
  output [7:0]dout;
  output empty;
  output prog_empty;
  output [5:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire [7:0]din;
  wire [7:0]dout;
  wire rd_en;
  wire rst;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_n_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED;
  wire [5:0]NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED;
  wire [5:0]NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "1" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0000011100000111" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b0" *) 
  (* EN_OF = "1'b1" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_UF = "1'b1" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "64" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "512" *) 
  (* FIFO_WRITE_DEPTH = "64" *) 
  (* FULL_RESET_VALUE = "0" *) 
  (* FULL_RST_VAL = "1'b0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "59" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "8" *) 
  (* PF_THRESH_MAX = "59" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "6" *) 
  (* RD_DC_WIDTH_EXT = "7" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "6" *) 
  (* READ_DATA_WIDTH = "8" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "8" *) 
  (* WR_DATA_COUNT_WIDTH = "6" *) 
  (* WR_DC_WIDTH_EXT = "7" *) 
  (* WR_DEPTH_LOG = "6" *) 
  (* WR_PNTR_WIDTH = "6" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "3" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  bd_soc_usb_controller_0_xpm_fifo_base__2 xpm_fifo_base_inst
       (.almost_empty(NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED),
        .data_valid(NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(NLW_xpm_fifo_base_inst_empty_UNCONNECTED),
        .full(NLW_xpm_fifo_base_inst_full_UNCONNECTED),
        .full_n(NLW_xpm_fifo_base_inst_full_n_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_base_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED),
        .rd_clk(1'b0),
        .rd_data_count(NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(rd_en),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(sleep),
        .underflow(NLW_xpm_fifo_base_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(wr_en),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
endmodule

(* ADDR_WIDTH_A = "6" *) (* ADDR_WIDTH_B = "6" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "8" *) (* BYTE_WRITE_WIDTH_B = "8" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "0" *) (* MEMORY_SIZE = "512" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* P_ECC_MODE = "0" *) 
(* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "64" *) 
(* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) (* P_MIN_WIDTH_DATA = "8" *) 
(* P_MIN_WIDTH_DATA_A = "8" *) (* P_MIN_WIDTH_DATA_B = "8" *) (* P_MIN_WIDTH_DATA_ECC = "8" *) 
(* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "8" *) (* P_NUM_COLS_WRITE_A = "1" *) 
(* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) 
(* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) 
(* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "6" *) (* P_WIDTH_ADDR_READ_B = "6" *) 
(* P_WIDTH_ADDR_WRITE_A = "6" *) (* P_WIDTH_ADDR_WRITE_B = "6" *) (* P_WIDTH_COL_WRITE_A = "8" *) 
(* P_WIDTH_COL_WRITE_B = "8" *) (* RAM_DECOMP = "auto" *) (* READ_DATA_WIDTH_A = "8" *) 
(* READ_DATA_WIDTH_B = "8" *) (* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "0" *) (* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "8" *) (* WRITE_DATA_WIDTH_B = "8" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* rsta_loop_iter = "8" *) 
(* rstb_loop_iter = "8" *) 
module bd_soc_usb_controller_0_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [5:0]addra;
  input [7:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [7:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [5:0]addrb;
  input [7:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [7:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [5:0]addra;
  wire [5:0]addrb;
  wire clka;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire enb;
  wire [7:0]\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg ;
  wire [7:0]\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 ;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_3_5_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_6_7_DOC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_6_7_DOD_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][0] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [0]),
        .Q(doutb[0]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][1] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [1]),
        .Q(doutb[1]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][2] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [2]),
        .Q(doutb[2]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][3] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [3]),
        .Q(doutb[3]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][4] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [4]),
        .Q(doutb[4]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [5]),
        .Q(doutb[5]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [6]),
        .Q(doutb[6]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][7] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [7]),
        .Q(doutb[7]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[0] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [0]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [0]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[1] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [1]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [1]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[2] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [2]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [2]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[3] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [3]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [3]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[4] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [4]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [4]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[5] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [5]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [5]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[6] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [6]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [6]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[7] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [7]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [7]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2 
       (.ADDRA(addrb),
        .ADDRB(addrb),
        .ADDRC(addrb),
        .ADDRD(addra),
        .DIA(dina[0]),
        .DIB(dina[1]),
        .DIC(dina[2]),
        .DID(1'b0),
        .DOA(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [0]),
        .DOB(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [1]),
        .DOC(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [2]),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(wea));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem_reg_0_63_3_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_63_3_5 
       (.ADDRA(addrb),
        .ADDRB(addrb),
        .ADDRC(addrb),
        .ADDRD(addra),
        .DIA(dina[3]),
        .DIB(dina[4]),
        .DIC(dina[5]),
        .DID(1'b0),
        .DOA(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [3]),
        .DOB(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [4]),
        .DOC(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [5]),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_3_5_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(wea));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem_reg_0_63_6_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_63_6_7 
       (.ADDRA(addrb),
        .ADDRB(addrb),
        .ADDRC(addrb),
        .ADDRD(addra),
        .DIA(dina[6]),
        .DIB(dina[7]),
        .DIC(1'b0),
        .DID(1'b0),
        .DOA(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [6]),
        .DOB(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [7]),
        .DOC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_6_7_DOC_UNCONNECTED ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_6_7_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(wea));
endmodule

(* ADDR_WIDTH_A = "6" *) (* ADDR_WIDTH_B = "6" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "8" *) (* BYTE_WRITE_WIDTH_B = "8" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "0" *) (* MEMORY_SIZE = "512" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "0" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "64" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) 
(* P_MIN_WIDTH_DATA = "8" *) (* P_MIN_WIDTH_DATA_A = "8" *) (* P_MIN_WIDTH_DATA_B = "8" *) 
(* P_MIN_WIDTH_DATA_ECC = "8" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "8" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "6" *) 
(* P_WIDTH_ADDR_READ_B = "6" *) (* P_WIDTH_ADDR_WRITE_A = "6" *) (* P_WIDTH_ADDR_WRITE_B = "6" *) 
(* P_WIDTH_COL_WRITE_A = "8" *) (* P_WIDTH_COL_WRITE_B = "8" *) (* RAM_DECOMP = "auto" *) 
(* READ_DATA_WIDTH_A = "8" *) (* READ_DATA_WIDTH_B = "8" *) (* READ_LATENCY_A = "2" *) 
(* READ_LATENCY_B = "2" *) (* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) 
(* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "0" *) (* USE_MEM_INIT_MMI = "0" *) 
(* VERSION = "0" *) (* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "8" *) 
(* WRITE_DATA_WIDTH_B = "8" *) (* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) 
(* WRITE_PROTECT = "1" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) 
(* rsta_loop_iter = "8" *) (* rstb_loop_iter = "8" *) 
module bd_soc_usb_controller_0_xpm_memory_base__2
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [5:0]addra;
  input [7:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [7:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [5:0]addrb;
  input [7:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [7:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [5:0]addra;
  wire [5:0]addrb;
  wire clka;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire enb;
  wire [7:0]\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg ;
  wire [7:0]\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 ;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_3_5_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_6_7_DOC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_6_7_DOD_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][0] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [0]),
        .Q(doutb[0]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][1] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [1]),
        .Q(doutb[1]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][2] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [2]),
        .Q(doutb[2]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][3] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [3]),
        .Q(doutb[3]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][4] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [4]),
        .Q(doutb[4]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [5]),
        .Q(doutb[5]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [6]),
        .Q(doutb[6]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][7] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [7]),
        .Q(doutb[7]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[0] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [0]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [0]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[1] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [1]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [1]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[2] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [2]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [2]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[3] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [3]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [3]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[4] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [4]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [4]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[5] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [5]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [5]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[6] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [6]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [6]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[7] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [7]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [7]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2 
       (.ADDRA(addrb),
        .ADDRB(addrb),
        .ADDRC(addrb),
        .ADDRD(addra),
        .DIA(dina[0]),
        .DIB(dina[1]),
        .DIC(dina[2]),
        .DID(1'b0),
        .DOA(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [0]),
        .DOB(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [1]),
        .DOC(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [2]),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(wea));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem_reg_0_63_3_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_63_3_5 
       (.ADDRA(addrb),
        .ADDRB(addrb),
        .ADDRC(addrb),
        .ADDRD(addra),
        .DIA(dina[3]),
        .DIB(dina[4]),
        .DIC(dina[5]),
        .DID(1'b0),
        .DOA(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [3]),
        .DOB(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [4]),
        .DOC(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [5]),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_3_5_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(wea));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem_reg_0_63_6_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_63_6_7 
       (.ADDRA(addrb),
        .ADDRB(addrb),
        .ADDRC(addrb),
        .ADDRD(addra),
        .DIA(dina[6]),
        .DIB(dina[7]),
        .DIC(1'b0),
        .DID(1'b0),
        .DOA(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [6]),
        .DOB(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [7]),
        .DOC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_6_7_DOC_UNCONNECTED ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_6_7_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(wea));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
