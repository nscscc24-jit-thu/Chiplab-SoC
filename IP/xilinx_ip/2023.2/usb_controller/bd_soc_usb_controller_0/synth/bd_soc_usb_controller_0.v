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

(* X_CORE_INFO = "usbh_top,Vivado 2023.2" *)
(* CHECK_LICENSE_TYPE = "bd_soc_usb_controller_0,usbh_top,{}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_soc_usb_controller_0 (
  aclk,
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
  utmi_sessend
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF cfg, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0, FREQ_TOLERANCE_HZ 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME intr, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 intr INTERRUPT" *)
output wire intr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg AWVALID" *)
input wire cfg_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg AWADDR" *)
input wire [31 : 0] cfg_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg WVALID" *)
input wire cfg_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg WDATA" *)
input wire [31 : 0] cfg_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg WSTRB" *)
input wire [3 : 0] cfg_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg BREADY" *)
input wire cfg_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg ARVALID" *)
input wire cfg_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg ARADDR" *)
input wire [31 : 0] cfg_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg RREADY" *)
input wire cfg_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg AWREADY" *)
output wire cfg_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg WREADY" *)
output wire cfg_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg BVALID" *)
output wire cfg_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg BRESP" *)
output wire [1 : 0] cfg_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg ARREADY" *)
output wire cfg_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg RVALID" *)
output wire cfg_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg RDATA" *)
output wire [31 : 0] cfg_rdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cfg, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_B\
ITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 cfg RRESP" *)
output wire [1 : 0] cfg_rresp;
(* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi data_i" *)
input wire [7 : 0] utmi_data_in;
(* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi data_o" *)
output wire [7 : 0] utmi_data_out;
(* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi data_t" *)
output wire utmi_data_t;
(* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi reset" *)
output wire utmi_reset;
(* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi txready" *)
input wire utmi_txready;
(* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi rxvalid" *)
input wire utmi_rxvalid;
(* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi rxactive" *)
input wire utmi_rxactive;
(* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi rxerror" *)
input wire utmi_rxerror;
(* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi linestate" *)
input wire [1 : 0] utmi_linestate;
(* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi txvalid" *)
output wire utmi_txvalid;
(* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi opmode" *)
output wire [1 : 0] utmi_opmode;
(* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi xcvrsel" *)
output wire [1 : 0] utmi_xcvrsel;
(* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi termsel" *)
output wire utmi_termsel;
(* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi dppulldown" *)
output wire utmi_dppulldown;
(* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi dmpulldown" *)
output wire utmi_dmpulldown;
(* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi idpullup" *)
output wire utmi_idpullup;
(* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi chrgvbus" *)
output wire utmi_chrgvbus;
(* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi dischrgvbus" *)
output wire utmi_dischrgvbus;
(* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi suspend_n" *)
output wire utmi_suspend_n;
(* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi hostdisc" *)
input wire utmi_hostdisc;
(* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi iddig" *)
input wire utmi_iddig;
(* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi vbusvalid" *)
input wire utmi_vbusvalid;
(* X_INTERFACE_INFO = "harrychen.xyz:user:utmi:1.0 utmi sessend" *)
input wire utmi_sessend;

  usbh_top inst (
    .aclk(aclk),
    .aresetn(aresetn),
    .intr(intr),
    .cfg_awvalid(cfg_awvalid),
    .cfg_awaddr(cfg_awaddr),
    .cfg_wvalid(cfg_wvalid),
    .cfg_wdata(cfg_wdata),
    .cfg_wstrb(cfg_wstrb),
    .cfg_bready(cfg_bready),
    .cfg_arvalid(cfg_arvalid),
    .cfg_araddr(cfg_araddr),
    .cfg_rready(cfg_rready),
    .cfg_awready(cfg_awready),
    .cfg_wready(cfg_wready),
    .cfg_bvalid(cfg_bvalid),
    .cfg_bresp(cfg_bresp),
    .cfg_arready(cfg_arready),
    .cfg_rvalid(cfg_rvalid),
    .cfg_rdata(cfg_rdata),
    .cfg_rresp(cfg_rresp),
    .utmi_data_in(utmi_data_in),
    .utmi_data_out(utmi_data_out),
    .utmi_data_t(utmi_data_t),
    .utmi_reset(utmi_reset),
    .utmi_txready(utmi_txready),
    .utmi_rxvalid(utmi_rxvalid),
    .utmi_rxactive(utmi_rxactive),
    .utmi_rxerror(utmi_rxerror),
    .utmi_linestate(utmi_linestate),
    .utmi_txvalid(utmi_txvalid),
    .utmi_opmode(utmi_opmode),
    .utmi_xcvrsel(utmi_xcvrsel),
    .utmi_termsel(utmi_termsel),
    .utmi_dppulldown(utmi_dppulldown),
    .utmi_dmpulldown(utmi_dmpulldown),
    .utmi_idpullup(utmi_idpullup),
    .utmi_chrgvbus(utmi_chrgvbus),
    .utmi_dischrgvbus(utmi_dischrgvbus),
    .utmi_suspend_n(utmi_suspend_n),
    .utmi_hostdisc(utmi_hostdisc),
    .utmi_iddig(utmi_iddig),
    .utmi_vbusvalid(utmi_vbusvalid),
    .utmi_sessend(utmi_sessend)
  );
endmodule
