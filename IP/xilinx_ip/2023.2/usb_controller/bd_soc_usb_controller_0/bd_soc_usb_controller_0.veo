// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: jiege.ch:user:utmi_usb_controller:1.0
// IP Revision: 2

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
bd_soc_usb_controller_0 your_instance_name (
  .aclk(aclk),                          // input wire aclk
  .aresetn(aresetn),                    // input wire aresetn
  .intr(intr),                          // output wire intr
  .cfg_awvalid(cfg_awvalid),            // input wire cfg_awvalid
  .cfg_awaddr(cfg_awaddr),              // input wire [31 : 0] cfg_awaddr
  .cfg_wvalid(cfg_wvalid),              // input wire cfg_wvalid
  .cfg_wdata(cfg_wdata),                // input wire [31 : 0] cfg_wdata
  .cfg_wstrb(cfg_wstrb),                // input wire [3 : 0] cfg_wstrb
  .cfg_bready(cfg_bready),              // input wire cfg_bready
  .cfg_arvalid(cfg_arvalid),            // input wire cfg_arvalid
  .cfg_araddr(cfg_araddr),              // input wire [31 : 0] cfg_araddr
  .cfg_rready(cfg_rready),              // input wire cfg_rready
  .cfg_awready(cfg_awready),            // output wire cfg_awready
  .cfg_wready(cfg_wready),              // output wire cfg_wready
  .cfg_bvalid(cfg_bvalid),              // output wire cfg_bvalid
  .cfg_bresp(cfg_bresp),                // output wire [1 : 0] cfg_bresp
  .cfg_arready(cfg_arready),            // output wire cfg_arready
  .cfg_rvalid(cfg_rvalid),              // output wire cfg_rvalid
  .cfg_rdata(cfg_rdata),                // output wire [31 : 0] cfg_rdata
  .cfg_rresp(cfg_rresp),                // output wire [1 : 0] cfg_rresp
  .utmi_data_in(utmi_data_in),          // input wire [7 : 0] utmi_data_in
  .utmi_data_out(utmi_data_out),        // output wire [7 : 0] utmi_data_out
  .utmi_data_t(utmi_data_t),            // output wire utmi_data_t
  .utmi_reset(utmi_reset),              // output wire utmi_reset
  .utmi_txready(utmi_txready),          // input wire utmi_txready
  .utmi_rxvalid(utmi_rxvalid),          // input wire utmi_rxvalid
  .utmi_rxactive(utmi_rxactive),        // input wire utmi_rxactive
  .utmi_rxerror(utmi_rxerror),          // input wire utmi_rxerror
  .utmi_linestate(utmi_linestate),      // input wire [1 : 0] utmi_linestate
  .utmi_txvalid(utmi_txvalid),          // output wire utmi_txvalid
  .utmi_opmode(utmi_opmode),            // output wire [1 : 0] utmi_opmode
  .utmi_xcvrsel(utmi_xcvrsel),          // output wire [1 : 0] utmi_xcvrsel
  .utmi_termsel(utmi_termsel),          // output wire utmi_termsel
  .utmi_dppulldown(utmi_dppulldown),    // output wire utmi_dppulldown
  .utmi_dmpulldown(utmi_dmpulldown),    // output wire utmi_dmpulldown
  .utmi_idpullup(utmi_idpullup),        // output wire utmi_idpullup
  .utmi_chrgvbus(utmi_chrgvbus),        // output wire utmi_chrgvbus
  .utmi_dischrgvbus(utmi_dischrgvbus),  // output wire utmi_dischrgvbus
  .utmi_suspend_n(utmi_suspend_n),      // output wire utmi_suspend_n
  .utmi_hostdisc(utmi_hostdisc),        // input wire utmi_hostdisc
  .utmi_iddig(utmi_iddig),              // input wire utmi_iddig
  .utmi_vbusvalid(utmi_vbusvalid),      // input wire utmi_vbusvalid
  .utmi_sessend(utmi_sessend)          // input wire utmi_sessend
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

