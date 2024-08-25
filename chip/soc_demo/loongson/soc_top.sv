/*------------------------------------------------------------------------------
--------------------------------------------------------------------------------
Copyright (c) 2016, Loongson Technology Corporation Limited.

All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this 
list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, 
this list of conditions and the following disclaimer in the documentation and/or
other materials provided with the distribution.

3. Neither the name of Loongson Technology Corporation Limited nor the names of 
its contributors may be used to endorse or promote products derived from this 
software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND 
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED 
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE 
DISCLAIMED. IN NO EVENT SHALL LOONGSON TECHNOLOGY CORPORATION LIMITED BE LIABLE
TO ANY PARTY FOR DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR 
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE 
GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) 
HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT 
LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF
THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
--------------------------------------------------------------------------------
------------------------------------------------------------------------------*/

`include "config.h"
`include "iobuf_helper.svh"

module soc_top(
    input         resetn, 
    input         clk,

    //------gpio----------------
    output [15:0] led,
    output [1 :0] led_rg0,
    output [1 :0] led_rg1,
    output [7 :0] num_csn,
    output [6 :0] num_a_g,
    input  [7 :0] switch, 
    output [3 :0] btn_key_col,
    input  [3 :0] btn_key_row,
    input  [1 :0] btn_step,

    //------DDR3 interface------
    inout  [15:0] ddr3_dq,
    output [12:0] ddr3_addr,
    output [2 :0] ddr3_ba,
    output        ddr3_ras_n,
    output        ddr3_cas_n,
    output        ddr3_we_n,
    output        ddr3_odt,
    output        ddr3_reset_n,
    output        ddr3_cke,
    output [1:0]  ddr3_dm,
    inout  [1:0]  ddr3_dqs_p,
    inout  [1:0]  ddr3_dqs_n,
    output        ddr3_ck_p,
    output        ddr3_ck_n,

    //------mac controller-------
    //TX
    input         mtxclk_0,     
    output        mtxen_0,      
    output [3:0]  mtxd_0,       
    output        mtxerr_0,
    //RX
    input         mrxclk_0,      
    input         mrxdv_0,     
    input  [3:0]  mrxd_0,        
    input         mrxerr_0,
    input         mcoll_0,
    input         mcrs_0,
    // MIIM
    output        mdc_0,
    inout         mdio_0,
    
    output        phy_rstn,
 
    //------EJTAG-------
    input         EJTAG_TRST,
    input         EJTAG_TCK,
    input         EJTAG_TDI,
    input         EJTAG_TMS,
    output        EJTAG_TDO,

    //------uart-------
    inout         UART_RX,
    inout         UART_TX,

    //------debug-uart------
    input         UART_RX2,
    output        UART_TX2,

    //------nand-------
    output        NAND_CLE ,
    output        NAND_ALE ,
    input         NAND_RDY ,
    inout [7:0]   NAND_DATA,
    output        NAND_RD  ,
    output        NAND_CE  ,  //low active
    output        NAND_WR  ,  
       
    //------spi flash-------
    output        SPI_CLK,
    output        SPI_CS,
    inout         SPI_MISO,
    inout         SPI_MOSI,

    inout wire [3:0] VGA_r,
    inout wire [3:0] VGA_g,
    inout wire [3:0] VGA_b,
    output wire VGA_hsync,
    output wire VGA_vsync,

    // USB
    input  wire       UTMI_clk,
    inout  wire [7:0] UTMI_data,
    output wire       UTMI_reset,
    input  wire       UTMI_txready,
    input  wire       UTMI_rxvalid,
    input  wire       UTMI_rxactive,
    input  wire       UTMI_rxerror,
    input  wire [1:0] UTMI_linestate,
    input  wire       UTMI_hostdisc,
    input  wire       UTMI_iddig,
    input  wire       UTMI_vbusvalid,
    input  wire       UTMI_sessend,
    output wire       UTMI_txvalid,
    output wire [1:0] UTMI_opmode,
    output wire [1:0] UTMI_xcvrsel,
    output wire       UTMI_termsel,
    output wire       UTMI_dppulldown,
    output wire       UTMI_dmpulldown,
    output wire       UTMI_idpullup,
    output wire       UTMI_chrgvbus,
    output wire       UTMI_dischrgvbus,
    output wire       UTMI_suspend_n
);
wire        aclk;
wire        aresetn;
wire        cpu_clk;
wire        uncore_clk;

wire [`LID         -1 :0] m0_awid;
(* MARK_DEBUG = "TRUE" *)wire [`Lawaddr     -1 :0] m0_awaddr;
wire [`Lawlen      -1 :0] m0_awlen;
wire [`Lawsize     -1 :0] m0_awsize;
wire [`Lawburst    -1 :0] m0_awburst;
wire [`Lawlock     -1 :0] m0_awlock;
wire [`Lawcache    -1 :0] m0_awcache;
wire [`Lawprot     -1 :0] m0_awprot;
(* MARK_DEBUG = "TRUE" *)wire                      m0_awvalid;
(* MARK_DEBUG = "TRUE" *)wire                      m0_awready;
wire [`LID         -1 :0] m0_wid;
wire [`Lwdata      -1 :0] m0_wdata;
wire [`Lwstrb      -1 :0] m0_wstrb;
wire                      m0_wlast;
(* MARK_DEBUG = "TRUE" *)wire                      m0_wvalid;
(* MARK_DEBUG = "TRUE" *)wire                      m0_wready;
wire [`LID         -1 :0] m0_bid;
wire [`Lbresp      -1 :0] m0_bresp;
(* MARK_DEBUG = "TRUE" *)wire                      m0_bvalid;
(* MARK_DEBUG = "TRUE" *)wire                      m0_bready;
wire [`LID         -1 :0] m0_arid;
(* MARK_DEBUG = "TRUE" *)wire [`Laraddr     -1 :0] m0_araddr;
wire [`Larlen      -1 :0] m0_arlen;
wire [`Larsize     -1 :0] m0_arsize;
wire [`Larburst    -1 :0] m0_arburst;
wire [`Larlock     -1 :0] m0_arlock;
wire [`Larcache    -1 :0] m0_arcache;
wire [`Larprot     -1 :0] m0_arprot;
(* MARK_DEBUG = "TRUE" *)wire                      m0_arvalid;
(* MARK_DEBUG = "TRUE" *)wire                      m0_arready;
wire [`LID         -1 :0] m0_rid;
wire [`Lrdata      -1 :0] m0_rdata;
wire [`Lrresp      -1 :0] m0_rresp;
wire                      m0_rlast;
wire                      m0_rvalid;
wire                      m0_rready;

wire [`LID         -1 :0] m0_async_awid;
wire [`Lawaddr     -1 :0] m0_async_awaddr;
wire [`Lawlen      -1 :0] m0_async_awlen;
wire [`Lawsize     -1 :0] m0_async_awsize;
wire [`Lawburst    -1 :0] m0_async_awburst;
wire [`Lawlock     -1 :0] m0_async_awlock;
wire [`Lawcache    -1 :0] m0_async_awcache;
wire [`Lawprot     -1 :0] m0_async_awprot;
wire                      m0_async_awvalid;
wire                      m0_async_awready;
wire [`LID         -1 :0] m0_async_wid;
wire [`Lwdata      -1 :0] m0_async_wdata;
wire [`Lwstrb      -1 :0] m0_async_wstrb;
wire                      m0_async_wlast;
wire                      m0_async_wvalid;
wire                      m0_async_wready;
wire [`LID         -1 :0] m0_async_bid;
wire [`Lbresp      -1 :0] m0_async_bresp;
wire                      m0_async_bvalid;
wire                      m0_async_bready;
wire [`LID         -1 :0] m0_async_arid;
wire [`Laraddr     -1 :0] m0_async_araddr;
wire [`Larlen      -1 :0] m0_async_arlen;
wire [`Larsize     -1 :0] m0_async_arsize;
wire [`Larburst    -1 :0] m0_async_arburst;
wire [`Larlock     -1 :0] m0_async_arlock;
wire [`Larcache    -1 :0] m0_async_arcache;
wire [`Larprot     -1 :0] m0_async_arprot;
wire                      m0_async_arvalid;
wire                      m0_async_arready;
wire [`LID         -1 :0] m0_async_rid;
wire [`Lrdata      -1 :0] m0_async_rdata;
wire [`Lrresp      -1 :0] m0_async_rresp;
wire                      m0_async_rlast;
wire                      m0_async_rvalid;
wire                      m0_async_rready;

wire [`LID         -1 :0] m0_async_sliced_awid;
wire [`Lawaddr     -1 :0] m0_async_sliced_awaddr;
wire [`Lawlen      -1 :0] m0_async_sliced_awlen;
wire [`Lawsize     -1 :0] m0_async_sliced_awsize;
wire [`Lawburst    -1 :0] m0_async_sliced_awburst;
wire [`Lawlock     -1 :0] m0_async_sliced_awlock;
wire [`Lawcache    -1 :0] m0_async_sliced_awcache;
wire [`Lawprot     -1 :0] m0_async_sliced_awprot;
wire                      m0_async_sliced_awvalid;
wire                      m0_async_sliced_awready;
wire [`LID         -1 :0] m0_async_sliced_wid;
wire [`Lwdata      -1 :0] m0_async_sliced_wdata;
wire [`Lwstrb      -1 :0] m0_async_sliced_wstrb;
wire                      m0_async_sliced_wlast;
wire                      m0_async_sliced_wvalid;
wire                      m0_async_sliced_wready;
wire [`LID         -1 :0] m0_async_sliced_bid;
wire [`Lbresp      -1 :0] m0_async_sliced_bresp;
wire                      m0_async_sliced_bvalid;
wire                      m0_async_sliced_bready;
wire [`LID         -1 :0] m0_async_sliced_arid;
wire [`Laraddr     -1 :0] m0_async_sliced_araddr;
wire [`Larlen      -1 :0] m0_async_sliced_arlen;
wire [`Larsize     -1 :0] m0_async_sliced_arsize;
wire [`Larburst    -1 :0] m0_async_sliced_arburst;
wire [`Larlock     -1 :0] m0_async_sliced_arlock;
wire [`Larcache    -1 :0] m0_async_sliced_arcache;
wire [`Larprot     -1 :0] m0_async_sliced_arprot;
wire                      m0_async_sliced_arvalid;
wire                      m0_async_sliced_arready;
wire [`LID         -1 :0] m0_async_sliced_rid;
wire [`Lrdata      -1 :0] m0_async_sliced_rdata;
wire [`Lrresp      -1 :0] m0_async_sliced_rresp;
wire                      m0_async_sliced_rlast;
wire                      m0_async_sliced_rvalid;
wire                      m0_async_sliced_rready;

wire [`LID         -1 :0] m0_async_fifo_awid;
wire [`Lawaddr     -1 :0] m0_async_fifo_awaddr;
wire [`Lawlen      -1 :0] m0_async_fifo_awlen;
wire [`Lawsize     -1 :0] m0_async_fifo_awsize;
wire [`Lawburst    -1 :0] m0_async_fifo_awburst;
wire [`Lawlock     -1 :0] m0_async_fifo_awlock;
wire [`Lawcache    -1 :0] m0_async_fifo_awcache;
wire [`Lawprot     -1 :0] m0_async_fifo_awprot;
wire                      m0_async_fifo_awvalid;
wire                      m0_async_fifo_awready;
wire [`LID         -1 :0] m0_async_fifo_wid;
wire [`Lwdata      -1 :0] m0_async_fifo_wdata;
wire [`Lwstrb      -1 :0] m0_async_fifo_wstrb;
wire                      m0_async_fifo_wlast;
wire                      m0_async_fifo_wvalid;
wire                      m0_async_fifo_wready;
wire [`LID         -1 :0] m0_async_fifo_bid;
wire [`Lbresp      -1 :0] m0_async_fifo_bresp;
wire                      m0_async_fifo_bvalid;
wire                      m0_async_fifo_bready;
wire [`LID         -1 :0] m0_async_fifo_arid;
wire [`Laraddr     -1 :0] m0_async_fifo_araddr;
wire [`Larlen      -1 :0] m0_async_fifo_arlen;
wire [`Larsize     -1 :0] m0_async_fifo_arsize;
wire [`Larburst    -1 :0] m0_async_fifo_arburst;
wire [`Larlock     -1 :0] m0_async_fifo_arlock;
wire [`Larcache    -1 :0] m0_async_fifo_arcache;
wire [`Larprot     -1 :0] m0_async_fifo_arprot;
wire                      m0_async_fifo_arvalid;
wire                      m0_async_fifo_arready;
wire [`LID         -1 :0] m0_async_fifo_rid;
wire [`Lrdata      -1 :0] m0_async_fifo_rdata;
wire [`Lrresp      -1 :0] m0_async_fifo_rresp;
wire                      m0_async_fifo_rlast;
wire                      m0_async_fifo_rvalid;
wire                      m0_async_fifo_rready;


wire [`LID         -1 :0] s0_unfifo_awid;
wire [`Lawaddr     -1 :0] s0_unfifo_awaddr;
wire [`Lawlen      -1 :0] s0_unfifo_awlen;
wire [`Lawsize     -1 :0] s0_unfifo_awsize;
wire [`Lawburst    -1 :0] s0_unfifo_awburst;
wire [`Lawlock     -1 :0] s0_unfifo_awlock;
wire [`Lawcache    -1 :0] s0_unfifo_awcache;
wire [`Lawprot     -1 :0] s0_unfifo_awprot;
wire                      s0_unfifo_awvalid;
wire                      s0_unfifo_awready;
wire [`LID         -1 :0] s0_unfifo_wid;
wire [`Lwdata      -1 :0] s0_unfifo_wdata;
wire [`Lwstrb      -1 :0] s0_unfifo_wstrb;
wire                      s0_unfifo_wlast;
wire                      s0_unfifo_wvalid;
wire                      s0_unfifo_wready;
wire [`LID         -1 :0] s0_unfifo_bid;
wire [`Lbresp      -1 :0] s0_unfifo_bresp;
wire                      s0_unfifo_bvalid;
wire                      s0_unfifo_bready;
wire [`LID         -1 :0] s0_unfifo_arid;
wire [`Laraddr     -1 :0] s0_unfifo_araddr;
wire [`Larlen      -1 :0] s0_unfifo_arlen;
wire [`Larsize     -1 :0] s0_unfifo_arsize;
wire [`Larburst    -1 :0] s0_unfifo_arburst;
wire [`Larlock     -1 :0] s0_unfifo_arlock;
wire [`Larcache    -1 :0] s0_unfifo_arcache;
wire [`Larprot     -1 :0] s0_unfifo_arprot;
wire                      s0_unfifo_arvalid;
wire                      s0_unfifo_arready;
wire [`LID         -1 :0] s0_unfifo_rid;
wire [`Lrdata      -1 :0] s0_unfifo_rdata;
wire [`Lrresp      -1 :0] s0_unfifo_rresp;
wire                      s0_unfifo_rlast;
wire                      s0_unfifo_rvalid;
wire                      s0_unfifo_rready;

wire [`LID         -1 :0] s1_unfifo_awid;
wire [`Lawaddr     -1 :0] s1_unfifo_awaddr;
wire [`Lawlen      -1 :0] s1_unfifo_awlen;
wire [`Lawsize     -1 :0] s1_unfifo_awsize;
wire [`Lawburst    -1 :0] s1_unfifo_awburst;
wire [`Lawlock     -1 :0] s1_unfifo_awlock;
wire [`Lawcache    -1 :0] s1_unfifo_awcache;
wire [`Lawprot     -1 :0] s1_unfifo_awprot;
wire                      s1_unfifo_awvalid;
wire                      s1_unfifo_awready;
wire [`LID         -1 :0] s1_unfifo_wid;
wire [`Lwdata      -1 :0] s1_unfifo_wdata;
wire [`Lwstrb      -1 :0] s1_unfifo_wstrb;
wire                      s1_unfifo_wlast;
wire                      s1_unfifo_wvalid;
wire                      s1_unfifo_wready;
wire [`LID         -1 :0] s1_unfifo_bid;
wire [`Lbresp      -1 :0] s1_unfifo_bresp;
wire                      s1_unfifo_bvalid;
wire                      s1_unfifo_bready;
wire [`LID         -1 :0] s1_unfifo_arid;
wire [`Laraddr     -1 :0] s1_unfifo_araddr;
wire [`Larlen      -1 :0] s1_unfifo_arlen;
wire [`Larsize     -1 :0] s1_unfifo_arsize;
wire [`Larburst    -1 :0] s1_unfifo_arburst;
wire [`Larlock     -1 :0] s1_unfifo_arlock;
wire [`Larcache    -1 :0] s1_unfifo_arcache;
wire [`Larprot     -1 :0] s1_unfifo_arprot;
wire                      s1_unfifo_arvalid;
wire                      s1_unfifo_arready;
wire [`LID         -1 :0] s1_unfifo_rid;
wire [`Lrdata      -1 :0] s1_unfifo_rdata;
wire [`Lrresp      -1 :0] s1_unfifo_rresp;
wire                      s1_unfifo_rlast;
wire                      s1_unfifo_rvalid;
wire                      s1_unfifo_rready;

wire [`LID         -1 :0] s2_unfifo_awid;
wire [`Lawaddr     -1 :0] s2_unfifo_awaddr;
wire [`Lawlen      -1 :0] s2_unfifo_awlen;
wire [`Lawsize     -1 :0] s2_unfifo_awsize;
wire [`Lawburst    -1 :0] s2_unfifo_awburst;
wire [`Lawlock     -1 :0] s2_unfifo_awlock;
wire [`Lawcache    -1 :0] s2_unfifo_awcache;
wire [`Lawprot     -1 :0] s2_unfifo_awprot;
wire                      s2_unfifo_awvalid;
wire                      s2_unfifo_awready;
wire [`LID         -1 :0] s2_unfifo_wid;
wire [`Lwdata      -1 :0] s2_unfifo_wdata;
wire [`Lwstrb      -1 :0] s2_unfifo_wstrb;
wire                      s2_unfifo_wlast;
wire                      s2_unfifo_wvalid;
wire                      s2_unfifo_wready;
wire [`LID         -1 :0] s2_unfifo_bid;
wire [`Lbresp      -1 :0] s2_unfifo_bresp;
wire                      s2_unfifo_bvalid;
wire                      s2_unfifo_bready;
wire [`LID         -1 :0] s2_unfifo_arid;
wire [`Laraddr     -1 :0] s2_unfifo_araddr;
wire [`Larlen      -1 :0] s2_unfifo_arlen;
wire [`Larsize     -1 :0] s2_unfifo_arsize;
wire [`Larburst    -1 :0] s2_unfifo_arburst;
wire [`Larlock     -1 :0] s2_unfifo_arlock;
wire [`Larcache    -1 :0] s2_unfifo_arcache;
wire [`Larprot     -1 :0] s2_unfifo_arprot;
wire                      s2_unfifo_arvalid;
wire                      s2_unfifo_arready;
wire [`LID         -1 :0] s2_unfifo_rid;
wire [`Lrdata      -1 :0] s2_unfifo_rdata;
wire [`Lrresp      -1 :0] s2_unfifo_rresp;
wire                      s2_unfifo_rlast;
wire                      s2_unfifo_rvalid;
wire                      s2_unfifo_rready;

wire [`LID         -1 :0] s3_unfifo_awid;
wire [`Lawaddr     -1 :0] s3_unfifo_awaddr;
wire [`Lawlen      -1 :0] s3_unfifo_awlen;
wire [`Lawsize     -1 :0] s3_unfifo_awsize;
wire [`Lawburst    -1 :0] s3_unfifo_awburst;
wire [`Lawlock     -1 :0] s3_unfifo_awlock;
wire [`Lawcache    -1 :0] s3_unfifo_awcache;
wire [`Lawprot     -1 :0] s3_unfifo_awprot;
wire                      s3_unfifo_awvalid;
wire                      s3_unfifo_awready;
wire [`LID         -1 :0] s3_unfifo_wid;
wire [`Lwdata      -1 :0] s3_unfifo_wdata;
wire [`Lwstrb      -1 :0] s3_unfifo_wstrb;
wire                      s3_unfifo_wlast;
wire                      s3_unfifo_wvalid;
wire                      s3_unfifo_wready;
wire [`LID         -1 :0] s3_unfifo_bid;
wire [`Lbresp      -1 :0] s3_unfifo_bresp;
wire                      s3_unfifo_bvalid;
wire                      s3_unfifo_bready;
wire [`LID         -1 :0] s3_unfifo_arid;
wire [`Laraddr     -1 :0] s3_unfifo_araddr;
wire [`Larlen      -1 :0] s3_unfifo_arlen;
wire [`Larsize     -1 :0] s3_unfifo_arsize;
wire [`Larburst    -1 :0] s3_unfifo_arburst;
wire [`Larlock     -1 :0] s3_unfifo_arlock;
wire [`Larcache    -1 :0] s3_unfifo_arcache;
wire [`Larprot     -1 :0] s3_unfifo_arprot;
wire                      s3_unfifo_arvalid;
wire                      s3_unfifo_arready;
wire [`LID         -1 :0] s3_unfifo_rid;
wire [`Lrdata      -1 :0] s3_unfifo_rdata;
wire [`Lrresp      -1 :0] s3_unfifo_rresp;
wire                      s3_unfifo_rlast;
wire                      s3_unfifo_rvalid;
wire                      s3_unfifo_rready;

wire [`LID         -1 :0] s4_unfifo_awid;
wire [`Lawaddr     -1 :0] s4_unfifo_awaddr;
wire [`Lawlen      -1 :0] s4_unfifo_awlen;
wire [`Lawsize     -1 :0] s4_unfifo_awsize;
wire [`Lawburst    -1 :0] s4_unfifo_awburst;
wire [`Lawlock     -1 :0] s4_unfifo_awlock;
wire [`Lawcache    -1 :0] s4_unfifo_awcache;
wire [`Lawprot     -1 :0] s4_unfifo_awprot;
wire                      s4_unfifo_awvalid;
wire                      s4_unfifo_awready;
wire [`LID         -1 :0] s4_unfifo_wid;
wire [`Lwdata      -1 :0] s4_unfifo_wdata;
wire [`Lwstrb      -1 :0] s4_unfifo_wstrb;
wire                      s4_unfifo_wlast;
wire                      s4_unfifo_wvalid;
wire                      s4_unfifo_wready;
wire [`LID         -1 :0] s4_unfifo_bid;
wire [`Lbresp      -1 :0] s4_unfifo_bresp;
wire                      s4_unfifo_bvalid;
wire                      s4_unfifo_bready;
wire [`LID         -1 :0] s4_unfifo_arid;
wire [`Laraddr     -1 :0] s4_unfifo_araddr;
wire [`Larlen      -1 :0] s4_unfifo_arlen;
wire [`Larsize     -1 :0] s4_unfifo_arsize;
wire [`Larburst    -1 :0] s4_unfifo_arburst;
wire [`Larlock     -1 :0] s4_unfifo_arlock;
wire [`Larcache    -1 :0] s4_unfifo_arcache;
wire [`Larprot     -1 :0] s4_unfifo_arprot;
wire                      s4_unfifo_arvalid;
wire                      s4_unfifo_arready;
wire [`LID         -1 :0] s4_unfifo_rid;
wire [`Lrdata      -1 :0] s4_unfifo_rdata;
wire [`Lrresp      -1 :0] s4_unfifo_rresp;
wire                      s4_unfifo_rlast;
wire                      s4_unfifo_rvalid;
wire                      s4_unfifo_rready;

wire [`LID         -1 :0] s5_unfifo_awid;
wire [`Lawaddr     -1 :0] s5_unfifo_awaddr;
wire [`Lawlen      -1 :0] s5_unfifo_awlen;
wire [`Lawsize     -1 :0] s5_unfifo_awsize;
wire [`Lawburst    -1 :0] s5_unfifo_awburst;
wire [`Lawlock     -1 :0] s5_unfifo_awlock;
wire [`Lawcache    -1 :0] s5_unfifo_awcache;
wire [`Lawprot     -1 :0] s5_unfifo_awprot;
wire                      s5_unfifo_awvalid;
wire                      s5_unfifo_awready;
wire [`LID         -1 :0] s5_unfifo_wid;
wire [`Lwdata      -1 :0] s5_unfifo_wdata;
wire [`Lwstrb      -1 :0] s5_unfifo_wstrb;
wire                      s5_unfifo_wlast;
wire                      s5_unfifo_wvalid;
wire                      s5_unfifo_wready;
wire [`LID         -1 :0] s5_unfifo_bid;
wire [`Lbresp      -1 :0] s5_unfifo_bresp;
wire                      s5_unfifo_bvalid;
wire                      s5_unfifo_bready;
wire [`LID         -1 :0] s5_unfifo_arid;
wire [`Laraddr     -1 :0] s5_unfifo_araddr;
wire [`Larlen      -1 :0] s5_unfifo_arlen;
wire [`Larsize     -1 :0] s5_unfifo_arsize;
wire [`Larburst    -1 :0] s5_unfifo_arburst;
wire [`Larlock     -1 :0] s5_unfifo_arlock;
wire [`Larcache    -1 :0] s5_unfifo_arcache;
wire [`Larprot     -1 :0] s5_unfifo_arprot;
wire                      s5_unfifo_arvalid;
wire                      s5_unfifo_arready;
wire [`LID         -1 :0] s5_unfifo_rid;
wire [`Lrdata      -1 :0] s5_unfifo_rdata;
wire [`Lrresp      -1 :0] s5_unfifo_rresp;
wire                      s5_unfifo_rlast;
wire                      s5_unfifo_rvalid;
wire                      s5_unfifo_rready;

wire [`LID         -1 :0] s6_unfifo_awid;
wire [`Lawaddr     -1 :0] s6_unfifo_awaddr;
wire [`Lawlen      -1 :0] s6_unfifo_awlen;
wire [`Lawsize     -1 :0] s6_unfifo_awsize;
wire [`Lawburst    -1 :0] s6_unfifo_awburst;
wire [`Lawlock     -1 :0] s6_unfifo_awlock;
wire [`Lawcache    -1 :0] s6_unfifo_awcache;
wire [`Lawprot     -1 :0] s6_unfifo_awprot;
wire                      s6_unfifo_awvalid;
wire                      s6_unfifo_awready;
wire [`LID         -1 :0] s6_unfifo_wid;
wire [`Lwdata      -1 :0] s6_unfifo_wdata;
wire [`Lwstrb      -1 :0] s6_unfifo_wstrb;
wire                      s6_unfifo_wlast;
wire                      s6_unfifo_wvalid;
wire                      s6_unfifo_wready;
wire [`LID         -1 :0] s6_unfifo_bid;
wire [`Lbresp      -1 :0] s6_unfifo_bresp;
wire                      s6_unfifo_bvalid;
wire                      s6_unfifo_bready;
wire [`LID         -1 :0] s6_unfifo_arid;
wire [`Laraddr     -1 :0] s6_unfifo_araddr;
wire [`Larlen      -1 :0] s6_unfifo_arlen;
wire [`Larsize     -1 :0] s6_unfifo_arsize;
wire [`Larburst    -1 :0] s6_unfifo_arburst;
wire [`Larlock     -1 :0] s6_unfifo_arlock;
wire [`Larcache    -1 :0] s6_unfifo_arcache;
wire [`Larprot     -1 :0] s6_unfifo_arprot;
wire                      s6_unfifo_arvalid;
wire                      s6_unfifo_arready;
wire [`LID         -1 :0] s6_unfifo_rid;
wire [`Lrdata      -1 :0] s6_unfifo_rdata;
wire [`Lrresp      -1 :0] s6_unfifo_rresp;
wire                      s6_unfifo_rlast;
wire                      s6_unfifo_rvalid;
wire                      s6_unfifo_rready;

wire [`LID         -1 :0] s7_unfifo_awid;
wire [`Lawaddr     -1 :0] s7_unfifo_awaddr;
wire [`Lawlen      -1 :0] s7_unfifo_awlen;
wire [`Lawsize     -1 :0] s7_unfifo_awsize;
wire [`Lawburst    -1 :0] s7_unfifo_awburst;
wire [`Lawlock     -1 :0] s7_unfifo_awlock;
wire [`Lawcache    -1 :0] s7_unfifo_awcache;
wire [`Lawprot     -1 :0] s7_unfifo_awprot;
wire                      s7_unfifo_awvalid;
wire                      s7_unfifo_awready;
wire [`LID         -1 :0] s7_unfifo_wid;
wire [`Lwdata      -1 :0] s7_unfifo_wdata;
wire [`Lwstrb      -1 :0] s7_unfifo_wstrb;
wire                      s7_unfifo_wlast;
wire                      s7_unfifo_wvalid;
wire                      s7_unfifo_wready;
wire [`LID         -1 :0] s7_unfifo_bid;
wire [`Lbresp      -1 :0] s7_unfifo_bresp;
wire                      s7_unfifo_bvalid;
wire                      s7_unfifo_bready;
wire [`LID         -1 :0] s7_unfifo_arid;
wire [`Laraddr     -1 :0] s7_unfifo_araddr;
wire [`Larlen      -1 :0] s7_unfifo_arlen;
wire [`Larsize     -1 :0] s7_unfifo_arsize;
wire [`Larburst    -1 :0] s7_unfifo_arburst;
wire [`Larlock     -1 :0] s7_unfifo_arlock;
wire [`Larcache    -1 :0] s7_unfifo_arcache;
wire [`Larprot     -1 :0] s7_unfifo_arprot;
wire                      s7_unfifo_arvalid;
wire                      s7_unfifo_arready;
wire [`LID         -1 :0] s7_unfifo_rid;
wire [`Lrdata      -1 :0] s7_unfifo_rdata;
wire [`Lrresp      -1 :0] s7_unfifo_rresp;
wire                      s7_unfifo_rlast;
wire                      s7_unfifo_rvalid;
wire                      s7_unfifo_rready;

wire [`LID         -1 :0] s8_unfifo_awid;
wire [`Lawaddr     -1 :0] s8_unfifo_awaddr;
wire [`Lawlen      -1 :0] s8_unfifo_awlen;
wire [`Lawsize     -1 :0] s8_unfifo_awsize;
wire [`Lawburst    -1 :0] s8_unfifo_awburst;
wire [`Lawlock     -1 :0] s8_unfifo_awlock;
wire [`Lawcache    -1 :0] s8_unfifo_awcache;
wire [`Lawprot     -1 :0] s8_unfifo_awprot;
wire                      s8_unfifo_awvalid;
wire                      s8_unfifo_awready;
wire [`LID         -1 :0] s8_unfifo_wid;
wire [`Lwdata      -1 :0] s8_unfifo_wdata;
wire [`Lwstrb      -1 :0] s8_unfifo_wstrb;
wire                      s8_unfifo_wlast;
wire                      s8_unfifo_wvalid;
wire                      s8_unfifo_wready;
wire [`LID         -1 :0] s8_unfifo_bid;
wire [`Lbresp      -1 :0] s8_unfifo_bresp;
wire                      s8_unfifo_bvalid;
wire                      s8_unfifo_bready;
wire [`LID         -1 :0] s8_unfifo_arid;
wire [`Laraddr     -1 :0] s8_unfifo_araddr;
wire [`Larlen      -1 :0] s8_unfifo_arlen;
wire [`Larsize     -1 :0] s8_unfifo_arsize;
wire [`Larburst    -1 :0] s8_unfifo_arburst;
wire [`Larlock     -1 :0] s8_unfifo_arlock;
wire [`Larcache    -1 :0] s8_unfifo_arcache;
wire [`Larprot     -1 :0] s8_unfifo_arprot;
wire                      s8_unfifo_arvalid;
wire                      s8_unfifo_arready;
wire [`LID         -1 :0] s8_unfifo_rid;
wire [`Lrdata      -1 :0] s8_unfifo_rdata;
wire [`Lrresp      -1 :0] s8_unfifo_rresp;
wire                      s8_unfifo_rlast;
wire                      s8_unfifo_rvalid;
wire                      s8_unfifo_rready;

wire [`LID         -1 :0] spi_s_awid;
wire [`Lawaddr     -1 :0] spi_s_awaddr;
wire [`Lawlen      -1 :0] spi_s_awlen;
wire [`Lawsize     -1 :0] spi_s_awsize;
wire [`Lawburst    -1 :0] spi_s_awburst;
wire [`Lawlock     -1 :0] spi_s_awlock;
wire [`Lawcache    -1 :0] spi_s_awcache;
wire [`Lawprot     -1 :0] spi_s_awprot;
wire                      spi_s_awvalid;
wire                      spi_s_awready;
wire [`LID         -1 :0] spi_s_wid;
wire [`Lwdata      -1 :0] spi_s_wdata;
wire [`Lwstrb      -1 :0] spi_s_wstrb;
wire                      spi_s_wlast;
wire                      spi_s_wvalid;
wire                      spi_s_wready;
wire [`LID         -1 :0] spi_s_bid;
wire [`Lbresp      -1 :0] spi_s_bresp;
wire                      spi_s_bvalid;
wire                      spi_s_bready;
wire [`LID         -1 :0] spi_s_arid;
wire [`Laraddr     -1 :0] spi_s_araddr;
wire [`Larlen      -1 :0] spi_s_arlen;
wire [`Larsize     -1 :0] spi_s_arsize;
wire [`Larburst    -1 :0] spi_s_arburst;
wire [`Larlock     -1 :0] spi_s_arlock;
wire [`Larcache    -1 :0] spi_s_arcache;
wire [`Larprot     -1 :0] spi_s_arprot;
wire                      spi_s_arvalid;
wire                      spi_s_arready;
wire [`LID         -1 :0] spi_s_rid;
wire [`Lrdata      -1 :0] spi_s_rdata;
wire [`Lrresp      -1 :0] spi_s_rresp;
wire                      spi_s_rlast;
wire                      spi_s_rvalid;
wire                      spi_s_rready;

wire [`LID         -1 :0] conf_s_awid;
wire [`Lawaddr     -1 :0] conf_s_awaddr;
wire [`Lawlen      -1 :0] conf_s_awlen;
wire [`Lawsize     -1 :0] conf_s_awsize;
wire [`Lawburst    -1 :0] conf_s_awburst;
wire [`Lawlock     -1 :0] conf_s_awlock;
wire [`Lawcache    -1 :0] conf_s_awcache;
wire [`Lawprot     -1 :0] conf_s_awprot;
wire                      conf_s_awvalid;
wire                      conf_s_awready;
wire [`LID         -1 :0] conf_s_wid;
wire [`Lwdata      -1 :0] conf_s_wdata;
wire [`Lwstrb      -1 :0] conf_s_wstrb;
wire                      conf_s_wlast;
wire                      conf_s_wvalid;
wire                      conf_s_wready;
wire [`LID         -1 :0] conf_s_bid;
wire [`Lbresp      -1 :0] conf_s_bresp;
wire                      conf_s_bvalid;
wire                      conf_s_bready;
wire [`LID         -1 :0] conf_s_arid;
wire [`Laraddr     -1 :0] conf_s_araddr;
wire [`Larlen      -1 :0] conf_s_arlen;
wire [`Larsize     -1 :0] conf_s_arsize;
wire [`Larburst    -1 :0] conf_s_arburst;
wire [`Larlock     -1 :0] conf_s_arlock;
wire [`Larcache    -1 :0] conf_s_arcache;
wire [`Larprot     -1 :0] conf_s_arprot;
wire                      conf_s_arvalid;
wire                      conf_s_arready;
wire [`LID         -1 :0] conf_s_rid;
wire [`Lrdata      -1 :0] conf_s_rdata;
wire [`Lrresp      -1 :0] conf_s_rresp;
wire                      conf_s_rlast;
wire                      conf_s_rvalid;
wire                      conf_s_rready;

wire [`LID         -1 :0] mac_s_awid;
wire [`Lawaddr     -1 :0] mac_s_awaddr;
wire [`Lawlen      -1 :0] mac_s_awlen;
wire [`Lawsize     -1 :0] mac_s_awsize;
wire [`Lawburst    -1 :0] mac_s_awburst;
wire [`Lawlock     -1 :0] mac_s_awlock;
wire [`Lawcache    -1 :0] mac_s_awcache;
wire [`Lawprot     -1 :0] mac_s_awprot;
wire                      mac_s_awvalid;
wire                      mac_s_awready;
wire [`LID         -1 :0] mac_s_wid;
wire [`Lwdata      -1 :0] mac_s_wdata;
wire [`Lwstrb      -1 :0] mac_s_wstrb;
wire                      mac_s_wlast;
wire                      mac_s_wvalid;
wire                      mac_s_wready;
wire [`LID         -1 :0] mac_s_bid;
wire [`Lbresp      -1 :0] mac_s_bresp;
wire                      mac_s_bvalid;
wire                      mac_s_bready;
wire [`LID         -1 :0] mac_s_arid;
wire [`Laraddr     -1 :0] mac_s_araddr;
wire [`Larlen      -1 :0] mac_s_arlen;
wire [`Larsize     -1 :0] mac_s_arsize;
wire [`Larburst    -1 :0] mac_s_arburst;
wire [`Larlock     -1 :0] mac_s_arlock;
wire [`Larcache    -1 :0] mac_s_arcache;
wire [`Larprot     -1 :0] mac_s_arprot;
wire                      mac_s_arvalid;
wire                      mac_s_arready;
wire [`LID         -1 :0] mac_s_rid;
wire [`Lrdata      -1 :0] mac_s_rdata;
wire [`Lrresp      -1 :0] mac_s_rresp;
wire                      mac_s_rlast;
wire                      mac_s_rvalid;
wire                      mac_s_rready;

wire [`LID         -1 :0] mac_m_awid;
wire [`Lawaddr     -1 :0] mac_m_awaddr;
wire [`Lawlen      -1 :0] mac_m_awlen;
wire [`Lawsize     -1 :0] mac_m_awsize;
wire [`Lawburst    -1 :0] mac_m_awburst;
wire [`Lawlock     -1 :0] mac_m_awlock;
wire [`Lawcache    -1 :0] mac_m_awcache;
wire [`Lawprot     -1 :0] mac_m_awprot;
wire                      mac_m_awvalid;
wire                      mac_m_awready;
wire [`LID         -1 :0] mac_m_wid;
wire [`Lwdata      -1 :0] mac_m_wdata;
wire [`Lwstrb      -1 :0] mac_m_wstrb;
wire                      mac_m_wlast;
wire                      mac_m_wvalid;
wire                      mac_m_wready;
wire [`LID         -1 :0] mac_m_bid;
wire [`Lbresp      -1 :0] mac_m_bresp;
wire                      mac_m_bvalid;
wire                      mac_m_bready;
wire [`LID         -1 :0] mac_m_arid;
wire [`Laraddr     -1 :0] mac_m_araddr;
wire [`Larlen      -1 :0] mac_m_arlen;
wire [`Larsize     -1 :0] mac_m_arsize;
wire [`Larburst    -1 :0] mac_m_arburst;
wire [`Larlock     -1 :0] mac_m_arlock;
wire [`Larcache    -1 :0] mac_m_arcache;
wire [`Larprot     -1 :0] mac_m_arprot;
wire                      mac_m_arvalid;
wire                      mac_m_arready;
wire [`LID         -1 :0] mac_m_rid;
wire [`Lrdata      -1 :0] mac_m_rdata;
wire [`Lrresp      -1 :0] mac_m_rresp;
wire                      mac_m_rlast;
wire                      mac_m_rvalid;
wire                      mac_m_rready;

wire [`LID         -1 :0] s0_awid;
wire [`Lawaddr     -1 :0] s0_awaddr;
wire [`Lawlen      -1 :0] s0_awlen;
wire [`Lawsize     -1 :0] s0_awsize;
wire [`Lawburst    -1 :0] s0_awburst;
wire [`Lawlock     -1 :0] s0_awlock;
wire [`Lawcache    -1 :0] s0_awcache;
wire [`Lawprot     -1 :0] s0_awprot;
wire                      s0_awvalid;
wire                      s0_awready;
wire [`LID         -1 :0] s0_wid;
wire [`Lwdata      -1 :0] s0_wdata;
wire [`Lwstrb      -1 :0] s0_wstrb;
wire                      s0_wlast;
wire                      s0_wvalid;
wire                      s0_wready;
wire [`LID         -1 :0] s0_bid;
wire [`Lbresp      -1 :0] s0_bresp;
wire                      s0_bvalid;
wire                      s0_bready;
wire [`LID         -1 :0] s0_arid;
wire [`Laraddr     -1 :0] s0_araddr;
wire [`Larlen      -1 :0] s0_arlen;
wire [`Larsize     -1 :0] s0_arsize;
wire [`Larburst    -1 :0] s0_arburst;
wire [`Larlock     -1 :0] s0_arlock;
wire [`Larcache    -1 :0] s0_arcache;
wire [`Larprot     -1 :0] s0_arprot;
wire                      s0_arvalid;
wire                      s0_arready;
wire [`LID         -1 :0] s0_rid;
wire [`Lrdata      -1 :0] s0_rdata;
wire [`Lrresp      -1 :0] s0_rresp;
wire                      s0_rlast;
wire                      s0_rvalid;
wire                      s0_rready;

wire [8            -1 :0] mig_awid;
wire [`Lawaddr     -1 :0] mig_awaddr;
wire [8            -1 :0] mig_awlen;
wire [`Lawsize     -1 :0] mig_awsize;
wire [`Lawburst    -1 :0] mig_awburst;
wire [`Lawlock     -1 :0] mig_awlock;
wire [`Lawcache    -1 :0] mig_awcache;
wire [`Lawprot     -1 :0] mig_awprot;
wire                      mig_awvalid;
wire                      mig_awready;
wire [8            -1 :0] mig_wid;
wire [`Lwdata      -1 :0] mig_wdata;
wire [`Lwstrb      -1 :0] mig_wstrb;
wire                      mig_wlast;
wire                      mig_wvalid;
wire                      mig_wready;
wire [8            -1 :0] mig_bid;
wire [`Lbresp      -1 :0] mig_bresp;
wire                      mig_bvalid;
wire                      mig_bready;
wire [8            -1 :0] mig_arid;
wire [`Laraddr     -1 :0] mig_araddr;
wire [8            -1 :0] mig_arlen;
wire [`Larsize     -1 :0] mig_arsize;
wire [`Larburst    -1 :0] mig_arburst;
wire [`Larlock     -1 :0] mig_arlock;
wire [`Larcache    -1 :0] mig_arcache;
wire [`Larprot     -1 :0] mig_arprot;
wire                      mig_arvalid;
wire                      mig_arready;
wire [8            -1 :0] mig_rid;
wire [`Lrdata      -1 :0] mig_rdata;
wire [`Lrresp      -1 :0] mig_rresp;
wire                      mig_rlast;
wire                      mig_rvalid;
wire                      mig_rready;

wire [`LID         -1 :0] dma0_awid       ;
wire [`Lawaddr     -1 :0] dma0_awaddr     ;
wire [`Lawlen      -1 :0] dma0_awlen      ;
wire [`Lawsize     -1 :0] dma0_awsize     ;
wire [`Lawburst    -1 :0] dma0_awburst    ;
wire [`Lawlock     -1 :0] dma0_awlock     ;
wire [`Lawcache    -1 :0] dma0_awcache    ;
wire [`Lawprot     -1 :0] dma0_awprot     ;
wire                      dma0_awvalid    ;
wire                      dma0_awready    ;
wire [`LID         -1 :0] dma0_wid        ;
wire [64           -1 :0] dma0_wdata      ;
wire [8            -1 :0] dma0_wstrb      ;
wire                      dma0_wlast      ;
wire                      dma0_wvalid     ;
wire                      dma0_wready     ;
wire [`LID         -1 :0] dma0_bid        ;
wire [`Lbresp      -1 :0] dma0_bresp      ;
wire                      dma0_bvalid     ;
wire                      dma0_bready     ;
wire [`LID         -1 :0] dma0_arid       ;
wire [`Laraddr     -1 :0] dma0_araddr     ;
wire [`Larlen      -1 :0] dma0_arlen      ;
wire [`Larsize     -1 :0] dma0_arsize     ;
wire [`Larburst    -1 :0] dma0_arburst    ;
wire [`Larlock     -1 :0] dma0_arlock     ;
wire [`Larcache    -1 :0] dma0_arcache    ;
wire [`Larprot     -1 :0] dma0_arprot     ;
wire                      dma0_arvalid    ;
wire                      dma0_arready    ;
wire [`LID         -1 :0] dma0_rid        ;
wire [64           -1 :0] dma0_rdata      ;
wire [`Lrresp      -1 :0] dma0_rresp      ;
wire                      dma0_rlast      ;
wire                      dma0_rvalid     ;
wire                      dma0_rready     ;

wire [`LID         -1 :0] apb_s_awid;
wire [`Lawaddr     -1 :0] apb_s_awaddr;
wire [`Lawlen      -1 :0] apb_s_awlen;
wire [`Lawsize     -1 :0] apb_s_awsize;
wire [`Lawburst    -1 :0] apb_s_awburst;
wire [`Lawlock     -1 :0] apb_s_awlock;
wire [`Lawcache    -1 :0] apb_s_awcache;
wire [`Lawprot     -1 :0] apb_s_awprot;
wire                      apb_s_awvalid;
wire                      apb_s_awready;
wire [`LID         -1 :0] apb_s_wid;
wire [`Lwdata      -1 :0] apb_s_wdata;
wire [`Lwstrb      -1 :0] apb_s_wstrb;
wire                      apb_s_wlast;
wire                      apb_s_wvalid;
wire                      apb_s_wready;
wire [`LID         -1 :0] apb_s_bid;
wire [`Lbresp      -1 :0] apb_s_bresp;
wire                      apb_s_bvalid;
wire                      apb_s_bready;
wire [`LID         -1 :0] apb_s_arid;
wire [`Laraddr     -1 :0] apb_s_araddr;
wire [`Larlen      -1 :0] apb_s_arlen;
wire [`Larsize     -1 :0] apb_s_arsize;
wire [`Larburst    -1 :0] apb_s_arburst;
wire [`Larlock     -1 :0] apb_s_arlock;
wire [`Larcache    -1 :0] apb_s_arcache;
wire [`Larprot     -1 :0] apb_s_arprot;
wire                      apb_s_arvalid;
wire                      apb_s_arready;
wire [`LID         -1 :0] apb_s_rid;
wire [`Lrdata      -1 :0] apb_s_rdata;
wire [`Lrresp      -1 :0] apb_s_rresp;
wire                      apb_s_rlast;
wire                      apb_s_rvalid;
wire                      apb_s_rready;

wire [`LID         -1 :0] tft_s_awid;
wire [`Lawaddr     -1 :0] tft_s_awaddr;
wire [`Lawlen      -1 :0] tft_s_awlen;
wire [`Lawsize     -1 :0] tft_s_awsize;
wire [`Lawburst    -1 :0] tft_s_awburst;
wire [`Lawlock     -1 :0] tft_s_awlock;
wire [`Lawcache    -1 :0] tft_s_awcache;
wire [`Lawprot     -1 :0] tft_s_awprot;
wire                      tft_s_awvalid;
wire                      tft_s_awready;
wire [`LID         -1 :0] tft_s_wid;
wire [`Lwdata      -1 :0] tft_s_wdata;
wire [`Lwstrb      -1 :0] tft_s_wstrb;
wire                      tft_s_wlast;
wire                      tft_s_wvalid;
wire                      tft_s_wready;
wire [`LID         -1 :0] tft_s_bid;
wire [`Lbresp      -1 :0] tft_s_bresp;
wire                      tft_s_bvalid;
wire                      tft_s_bready;
wire [`LID         -1 :0] tft_s_arid;
wire [`Laraddr     -1 :0] tft_s_araddr;
wire [`Larlen      -1 :0] tft_s_arlen;
wire [`Larsize     -1 :0] tft_s_arsize;
wire [`Larburst    -1 :0] tft_s_arburst;
wire [`Larlock     -1 :0] tft_s_arlock;
wire [`Larcache    -1 :0] tft_s_arcache;
wire [`Larprot     -1 :0] tft_s_arprot;
wire                      tft_s_arvalid;
wire                      tft_s_arready;
wire [`LID         -1 :0] tft_s_rid;
wire [`Lrdata      -1 :0] tft_s_rdata;
wire [`Lrresp      -1 :0] tft_s_rresp;
wire                      tft_s_rlast;
wire                      tft_s_rvalid;
wire                      tft_s_rready;

wire [`LID         -1 :0] tft_s_100_awid;
wire [`Lawaddr     -1 :0] tft_s_100_awaddr;
wire [`Lawlen      -1 :0] tft_s_100_awlen;
wire [`Lawsize     -1 :0] tft_s_100_awsize;
wire [`Lawburst    -1 :0] tft_s_100_awburst;
wire [`Lawlock     -1 :0] tft_s_100_awlock;
wire [`Lawcache    -1 :0] tft_s_100_awcache;
wire [`Lawprot     -1 :0] tft_s_100_awprot;
wire                      tft_s_100_awvalid;
wire                      tft_s_100_awready;
wire [`LID         -1 :0] tft_s_100_wid;
wire [`Lwdata      -1 :0] tft_s_100_wdata;
wire [`Lwstrb      -1 :0] tft_s_100_wstrb;
wire                      tft_s_100_wlast;
wire                      tft_s_100_wvalid;
wire                      tft_s_100_wready;
wire [`LID         -1 :0] tft_s_100_bid;
wire [`Lbresp      -1 :0] tft_s_100_bresp;
wire                      tft_s_100_bvalid;
wire                      tft_s_100_bready;
wire [`LID         -1 :0] tft_s_100_arid;
wire [`Laraddr     -1 :0] tft_s_100_araddr;
wire [`Larlen      -1 :0] tft_s_100_arlen;
wire [`Larsize     -1 :0] tft_s_100_arsize;
wire [`Larburst    -1 :0] tft_s_100_arburst;
wire [`Larlock     -1 :0] tft_s_100_arlock;
wire [`Larcache    -1 :0] tft_s_100_arcache;
wire [`Larprot     -1 :0] tft_s_100_arprot;
wire                      tft_s_100_arvalid;
wire                      tft_s_100_arready;
wire [`LID         -1 :0] tft_s_100_rid;
wire [`Lrdata      -1 :0] tft_s_100_rdata;
wire [`Lrresp      -1 :0] tft_s_100_rresp;
wire                      tft_s_100_rlast;
wire                      tft_s_100_rvalid;
wire                      tft_s_100_rready;

wire [`LID         -1 :0] tft_m_awid;
wire [`Lawaddr     -1 :0] tft_m_awaddr;
wire [`Lawlen      -1 :0] tft_m_awlen;
wire [`Lawsize     -1 :0] tft_m_awsize;
wire [`Lawburst    -1 :0] tft_m_awburst;
wire [`Lawlock     -1 :0] tft_m_awlock;
wire [`Lawcache    -1 :0] tft_m_awcache;
wire [`Lawprot     -1 :0] tft_m_awprot;
wire                      tft_m_awvalid;
wire                      tft_m_awready;
wire [`LID         -1 :0] tft_m_wid;
wire [`Lwdata      -1 :0] tft_m_wdata;
wire [`Lwstrb      -1 :0] tft_m_wstrb;
wire                      tft_m_wlast;
wire                      tft_m_wvalid;
wire                      tft_m_wready;
wire [`LID         -1 :0] tft_m_bid;
wire [`Lbresp      -1 :0] tft_m_bresp;
wire                      tft_m_bvalid;
wire                      tft_m_bready;
wire [`LID         -1 :0] tft_m_arid;
wire [`Laraddr     -1 :0] tft_m_araddr;
wire [`Larlen      -1 :0] tft_m_arlen;
wire [`Larsize     -1 :0] tft_m_arsize;
wire [`Larburst    -1 :0] tft_m_arburst;
wire [`Larlock     -1 :0] tft_m_arlock;
wire [`Larcache    -1 :0] tft_m_arcache;
wire [`Larprot     -1 :0] tft_m_arprot;
wire                      tft_m_arvalid;
wire                      tft_m_arready;
wire [`LID         -1 :0] tft_m_rid;
wire [`Lrdata      -1 :0] tft_m_rdata;
wire [`Lrresp      -1 :0] tft_m_rresp;
wire                      tft_m_rlast;
wire                      tft_m_rvalid;
wire                      tft_m_rready;

wire [31 : 0] tft_axi_lite_awaddr;
wire tft_axi_lite_awvalid;
wire tft_axi_lite_awready;
wire [31 : 0] tft_axi_lite_wdata;
wire [3 : 0] tft_axi_lite_wstrb;
wire tft_axi_lite_wvalid;
wire tft_axi_lite_wready;
wire [1 : 0] tft_axi_lite_bresp;
wire tft_axi_lite_bvalid;
wire tft_axi_lite_bready;
wire [31 : 0] tft_axi_lite_araddr;
wire tft_axi_lite_arvalid;
wire tft_axi_lite_arready;
wire [31 : 0] tft_axi_lite_rdata;
wire [1 : 0] tft_axi_lite_rresp;
wire tft_axi_lite_rvalid;
wire tft_axi_lite_rready;

wire [`LID         -1 :0] fb_write_s_awid       ;
wire [`Lawaddr     -1 :0] fb_write_s_awaddr     ;
wire [`Lawlen      -1 :0] fb_write_s_awlen      ;
wire [`Lawsize     -1 :0] fb_write_s_awsize     ;
wire [`Lawburst    -1 :0] fb_write_s_awburst    ;
wire [`Lawlock     -1 :0] fb_write_s_awlock     ;
wire [`Lawcache    -1 :0] fb_write_s_awcache    ;
wire [`Lawprot     -1 :0] fb_write_s_awprot     ;
wire                      fb_write_s_awvalid    ;
wire                      fb_write_s_awready    ;
wire [`LID         -1 :0] fb_write_s_wid        ;
wire [64           -1 :0] fb_write_s_wdata      ;
wire [8            -1 :0] fb_write_s_wstrb      ;
wire                      fb_write_s_wlast      ;
wire                      fb_write_s_wvalid     ;
wire                      fb_write_s_wready     ;
wire [`LID         -1 :0] fb_write_s_bid        ;
wire [`Lbresp      -1 :0] fb_write_s_bresp      ;
wire                      fb_write_s_bvalid     ;
wire                      fb_write_s_bready     ;
wire [`LID         -1 :0] fb_write_s_arid       ;
wire [`Laraddr     -1 :0] fb_write_s_araddr     ;
wire [`Larlen      -1 :0] fb_write_s_arlen      ;
wire [`Larsize     -1 :0] fb_write_s_arsize     ;
wire [`Larburst    -1 :0] fb_write_s_arburst    ;
wire [`Larlock     -1 :0] fb_write_s_arlock     ;
wire [`Larcache    -1 :0] fb_write_s_arcache    ;
wire [`Larprot     -1 :0] fb_write_s_arprot     ;
wire                      fb_write_s_arvalid    ;
wire                      fb_write_s_arready    ;
wire [`LID         -1 :0] fb_write_s_rid        ;
wire [64           -1 :0] fb_write_s_rdata      ;
wire [`Lrresp      -1 :0] fb_write_s_rresp      ;
wire                      fb_write_s_rlast      ;
wire                      fb_write_s_rvalid     ;
wire                      fb_write_s_rready     ;

wire [`LID         -1 :0] fb_write_s_100M_awid       ;
wire [`Lawaddr     -1 :0] fb_write_s_100M_awaddr     ;
wire [`Lawlen      -1 :0] fb_write_s_100M_awlen      ;
wire [`Lawsize     -1 :0] fb_write_s_100M_awsize     ;
wire [`Lawburst    -1 :0] fb_write_s_100M_awburst    ;
wire [`Lawlock     -1 :0] fb_write_s_100M_awlock     ;
wire [`Lawcache    -1 :0] fb_write_s_100M_awcache    ;
wire [`Lawprot     -1 :0] fb_write_s_100M_awprot     ;
wire                      fb_write_s_100M_awvalid    ;
wire                      fb_write_s_100M_awready    ;
wire [`LID         -1 :0] fb_write_s_100M_wid        ;
wire [64           -1 :0] fb_write_s_100M_wdata      ;
wire [8            -1 :0] fb_write_s_100M_wstrb      ;
wire                      fb_write_s_100M_wlast      ;
wire                      fb_write_s_100M_wvalid     ;
wire                      fb_write_s_100M_wready     ;
wire [`LID         -1 :0] fb_write_s_100M_bid        ;
wire [`Lbresp      -1 :0] fb_write_s_100M_bresp      ;
wire                      fb_write_s_100M_bvalid     ;
wire                      fb_write_s_100M_bready     ;
wire [`LID         -1 :0] fb_write_s_100M_arid       ;
wire [`Laraddr     -1 :0] fb_write_s_100M_araddr     ;
wire [`Larlen      -1 :0] fb_write_s_100M_arlen      ;
wire [`Larsize     -1 :0] fb_write_s_100M_arsize     ;
wire [`Larburst    -1 :0] fb_write_s_100M_arburst    ;
wire [`Larlock     -1 :0] fb_write_s_100M_arlock     ;
wire [`Larcache    -1 :0] fb_write_s_100M_arcache    ;
wire [`Larprot     -1 :0] fb_write_s_100M_arprot     ;
wire                      fb_write_s_100M_arvalid    ;
wire                      fb_write_s_100M_arready    ;
wire [`LID         -1 :0] fb_write_s_100M_rid        ;
wire [64           -1 :0] fb_write_s_100M_rdata      ;
wire [`Lrresp      -1 :0] fb_write_s_100M_rresp      ;
wire                      fb_write_s_100M_rlast      ;
wire                      fb_write_s_100M_rvalid     ;
wire                      fb_write_s_100M_rready     ;

wire [`LID         -1 :0] fb_read_s_awid       ;
wire [`Lawaddr     -1 :0] fb_read_s_awaddr     ;
wire [`Lawlen      -1 :0] fb_read_s_awlen      ;
wire [`Lawsize     -1 :0] fb_read_s_awsize     ;
wire [`Lawburst    -1 :0] fb_read_s_awburst    ;
wire [`Lawlock     -1 :0] fb_read_s_awlock     ;
wire [`Lawcache    -1 :0] fb_read_s_awcache    ;
wire [`Lawprot     -1 :0] fb_read_s_awprot     ;
wire                      fb_read_s_awvalid    ;
wire                      fb_read_s_awready    ;
wire [`LID         -1 :0] fb_read_s_wid        ;
wire [64           -1 :0] fb_read_s_wdata      ;
wire [8            -1 :0] fb_read_s_wstrb      ;
wire                      fb_read_s_wlast      ;
wire                      fb_read_s_wvalid     ;
wire                      fb_read_s_wready     ;
wire [`LID         -1 :0] fb_read_s_bid        ;
wire [`Lbresp      -1 :0] fb_read_s_bresp      ;
wire                      fb_read_s_bvalid     ;
wire                      fb_read_s_bready     ;
wire [`LID         -1 :0] fb_read_s_arid       ;
wire [`Laraddr     -1 :0] fb_read_s_araddr     ;
wire [`Larlen      -1 :0] fb_read_s_arlen      ;
wire [`Larsize     -1 :0] fb_read_s_arsize     ;
wire [`Larburst    -1 :0] fb_read_s_arburst    ;
wire [`Larlock     -1 :0] fb_read_s_arlock     ;
wire [`Larcache    -1 :0] fb_read_s_arcache    ;
wire [`Larprot     -1 :0] fb_read_s_arprot     ;
wire                      fb_read_s_arvalid    ;
wire                      fb_read_s_arready    ;
wire [`LID         -1 :0] fb_read_s_rid        ;
wire [64           -1 :0] fb_read_s_rdata      ;
wire [`Lrresp      -1 :0] fb_read_s_rresp      ;
wire                      fb_read_s_rlast      ;
wire                      fb_read_s_rvalid     ;
wire                      fb_read_s_rready     ;

wire [`LID         -1 :0] fb_read_s_100M_awid       ;
wire [`Lawaddr     -1 :0] fb_read_s_100M_awaddr     ;
wire [`Lawlen      -1 :0] fb_read_s_100M_awlen      ;
wire [`Lawsize     -1 :0] fb_read_s_100M_awsize     ;
wire [`Lawburst    -1 :0] fb_read_s_100M_awburst    ;
wire [`Lawlock     -1 :0] fb_read_s_100M_awlock     ;
wire [`Lawcache    -1 :0] fb_read_s_100M_awcache    ;
wire [`Lawprot     -1 :0] fb_read_s_100M_awprot     ;
wire                      fb_read_s_100M_awvalid    ;
wire                      fb_read_s_100M_awready    ;
wire [`LID         -1 :0] fb_read_s_100M_wid        ;
wire [64           -1 :0] fb_read_s_100M_wdata      ;
wire [8            -1 :0] fb_read_s_100M_wstrb      ;
wire                      fb_read_s_100M_wlast      ;
wire                      fb_read_s_100M_wvalid     ;
wire                      fb_read_s_100M_wready     ;
wire [`LID         -1 :0] fb_read_s_100M_bid        ;
wire [`Lbresp      -1 :0] fb_read_s_100M_bresp      ;
wire                      fb_read_s_100M_bvalid     ;
wire                      fb_read_s_100M_bready     ;
wire [`LID         -1 :0] fb_read_s_100M_arid       ;
wire [`Laraddr     -1 :0] fb_read_s_100M_araddr     ;
wire [`Larlen      -1 :0] fb_read_s_100M_arlen      ;
wire [`Larsize     -1 :0] fb_read_s_100M_arsize     ;
wire [`Larburst    -1 :0] fb_read_s_100M_arburst    ;
wire [`Larlock     -1 :0] fb_read_s_100M_arlock     ;
wire [`Larcache    -1 :0] fb_read_s_100M_arcache    ;
wire [`Larprot     -1 :0] fb_read_s_100M_arprot     ;
wire                      fb_read_s_100M_arvalid    ;
wire                      fb_read_s_100M_arready    ;
wire [`LID         -1 :0] fb_read_s_100M_rid        ;
wire [64           -1 :0] fb_read_s_100M_rdata      ;
wire [`Lrresp      -1 :0] fb_read_s_100M_rresp      ;
wire                      fb_read_s_100M_rlast      ;
wire                      fb_read_s_100M_rvalid     ;
wire                      fb_read_s_100M_rready     ;

wire [`LID         -1 :0] usb_s_awid       ;
wire [`Lawaddr     -1 :0] usb_s_awaddr     ;
wire [`Lawlen      -1 :0] usb_s_awlen      ;
wire [`Lawsize     -1 :0] usb_s_awsize     ;
wire [`Lawburst    -1 :0] usb_s_awburst    ;
wire [`Lawlock     -1 :0] usb_s_awlock     ;
wire [`Lawcache    -1 :0] usb_s_awcache    ;
wire [`Lawprot     -1 :0] usb_s_awprot     ;
wire                      usb_s_awvalid    ;
(* MARK_DEBUG = "TRUE" *)wire                      usb_s_awready    ;
wire [`LID         -1 :0] usb_s_wid        ;
wire [64           -1 :0] usb_s_wdata      ;
wire [8            -1 :0] usb_s_wstrb      ;
wire                      usb_s_wlast      ;
wire                      usb_s_wvalid     ;
wire                      usb_s_wready     ;
wire [`LID         -1 :0] usb_s_bid        ;
wire [`Lbresp      -1 :0] usb_s_bresp      ;
wire                      usb_s_bvalid     ;
wire                      usb_s_bready     ;
wire [`LID         -1 :0] usb_s_arid       ;
wire [`Laraddr     -1 :0] usb_s_araddr     ;
wire [`Larlen      -1 :0] usb_s_arlen      ;
wire [`Larsize     -1 :0] usb_s_arsize     ;
wire [`Larburst    -1 :0] usb_s_arburst    ;
wire [`Larlock     -1 :0] usb_s_arlock     ;
wire [`Larcache    -1 :0] usb_s_arcache    ;
wire [`Larprot     -1 :0] usb_s_arprot     ;
wire                      usb_s_arvalid    ;
wire                      usb_s_arready    ;
wire [`LID         -1 :0] usb_s_rid        ;
wire [64           -1 :0] usb_s_rdata      ;
wire [`Lrresp      -1 :0] usb_s_rresp      ;
wire                      usb_s_rlast      ;
wire                      usb_s_rvalid     ;
wire                      usb_s_rready     ;

wire [6 : 0] fb_wr_axi4lite_AWADDR;
wire fb_wr_axi4lite_AWVALID       ;
wire fb_wr_axi4lite_AWREADY       ;
wire [31 : 0] fb_wr_axi4lite_WDATA;
wire [3 : 0] fb_wr_axi4lite_WSTRB ;
wire fb_wr_axi4lite_WVALID        ;
wire fb_wr_axi4lite_WREADY        ;
wire [1 : 0] fb_wr_axi4lite_BRESP ;
wire fb_wr_axi4lite_BVALID        ;
wire fb_wr_axi4lite_BREADY        ;
wire [6 : 0] fb_wr_axi4lite_ARADDR;
wire fb_wr_axi4lite_ARVALID       ;
wire fb_wr_axi4lite_ARREADY       ;
wire [31 : 0] fb_wr_axi4lite_RDATA;
wire [1 : 0] fb_wr_axi4lite_RRESP ;
wire fb_wr_axi4lite_RVALID        ;
wire fb_wr_axi4lite_RREADY        ;

wire [6 : 0] fb_rd_axi4lite_AWADDR;
wire fb_rd_axi4lite_AWVALID       ;
wire fb_rd_axi4lite_AWREADY       ;
wire [31 : 0] fb_rd_axi4lite_WDATA;
wire [3 : 0] fb_rd_axi4lite_WSTRB ;
wire fb_rd_axi4lite_WVALID        ;
wire fb_rd_axi4lite_WREADY        ;
wire [1 : 0] fb_rd_axi4lite_BRESP ;
wire fb_rd_axi4lite_BVALID        ;
wire fb_rd_axi4lite_BREADY        ;
wire [6 : 0] fb_rd_axi4lite_ARADDR;
wire fb_rd_axi4lite_ARVALID       ;
wire fb_rd_axi4lite_ARREADY       ;
wire [31 : 0] fb_rd_axi4lite_RDATA;
wire [1 : 0] fb_rd_axi4lite_RRESP ;
wire fb_rd_axi4lite_RVALID        ;
wire fb_rd_axi4lite_RREADY        ;

wire [31 : 0] fb_wr_video_AWADDR;
wire [7 : 0] fb_wr_video_AWLEN  ;
wire [2 : 0] fb_wr_video_AWSIZE  ; 
wire [1 : 0] fb_wr_video_AWBURST;
wire [1 : 0] fb_wr_video_AWLOCK;
wire [3 : 0] fb_wr_video_AWREGION;
wire [3 : 0] fb_wr_video_AWCACHE;
wire [2 : 0] fb_wr_video_AWPROT;
wire [3 : 0] fb_wr_video_AWQOS;
wire fb_wr_video_AWVALID;
wire fb_wr_video_AWREADY;
wire [63 : 0] fb_wr_video_WDATA;
wire [7 : 0] fb_wr_video_WSTRB;
wire fb_wr_video_WLAST;
wire fb_wr_video_WVALID;
wire fb_wr_video_WREADY;
wire [1 : 0] fb_wr_video_BRESP;
wire fb_wr_video_BVALID;
wire fb_wr_video_BREADY;
wire [31 : 0] fb_wr_video_ARADDR;
wire [7 : 0] fb_wr_video_ARLEN;
wire [2 : 0] fb_wr_video_ARSIZE;
wire [1 : 0] fb_wr_video_ARBURST;
wire [1 : 0] fb_wr_video_ARLOCK;
wire [3 : 0] fb_wr_video_ARREGION;
wire [3 : 0] fb_wr_video_ARCACHE;
wire [2 : 0] fb_wr_video_ARPROT;
wire [3 : 0] fb_wr_video_ARQOS;
wire fb_wr_video_ARVALID;
wire fb_wr_video_ARREADY;
wire [63 : 0] fb_wr_video_RDATA;
wire [1 : 0] fb_wr_video_RRESP;
wire fb_wr_video_RLAST;
wire fb_wr_video_RVALID;
wire fb_wr_video_RREADY;

wire [31 : 0] fb_rd_video_AWADDR;
wire [7 : 0] fb_rd_video_AWLEN  ;
wire [2 : 0] fb_rd_video_AWSIZE  ; 
wire [1 : 0] fb_rd_video_AWBURST;
wire [1 : 0] fb_rd_video_AWLOCK;
wire [3 : 0] fb_rd_video_AWREGION;
wire [3 : 0] fb_rd_video_AWCACHE;
wire [2 : 0] fb_rd_video_AWPROT;
wire [3 : 0] fb_rd_video_AWQOS;
wire fb_rd_video_AWVALID;
wire fb_rd_video_AWREADY;
wire [63 : 0] fb_rd_video_WDATA;
wire [7 : 0] fb_rd_video_WSTRB;
wire fb_rd_video_WLAST;
wire fb_rd_video_WVALID;
wire fb_rd_video_WREADY;
wire [1 : 0] fb_rd_video_BRESP;
wire fb_rd_video_BVALID;
wire fb_rd_video_BREADY;
wire [31 : 0] fb_rd_video_ARADDR;
wire [7 : 0] fb_rd_video_ARLEN;
wire [2 : 0] fb_rd_video_ARSIZE;
wire [1 : 0] fb_rd_video_ARBURST;
wire [1 : 0] fb_rd_video_ARLOCK;
wire [3 : 0] fb_rd_video_ARREGION;
wire [3 : 0] fb_rd_video_ARCACHE;
wire [2 : 0] fb_rd_video_ARPROT;
wire [3 : 0] fb_rd_video_ARQOS;
wire fb_rd_video_ARVALID;
wire fb_rd_video_ARREADY;
wire [63 : 0] fb_rd_video_RDATA;
wire [1 : 0] fb_rd_video_RRESP;
wire fb_rd_video_RLAST;
wire fb_rd_video_RVALID;
wire fb_rd_video_RREADY;


wire          apb_ready_dma0;
wire          apb_start_dma0;
wire          apb_rw_dma0;
wire          apb_psel_dma0;
wire          apb_penable_dma0;
wire[31:0]    apb_addr_dma0;
wire[31:0]    apb_wdata_dma0;
wire[31:0]    apb_rdata_dma0;

wire         dma_int;
wire         dma_ack;
wire         dma_req;

wire                      dma0_gnt;
wire[31:0]                order_addr_in;
wire                      write_dma_end;
wire                      finish_read_order;

wire [31:0]usb_cfg_awaddr;
wire       usb_cfg_awvalid;
(* MARK_DEBUG = "TRUE" *)wire       usb_cfg_awready;
wire [31:0]usb_cfg_wdata;
wire [3:0] usb_cfg_wstrb;
wire       usb_cfg_wvalid;
wire       usb_cfg_wready;
wire [1:0] usb_cfg_bresp;
wire       usb_cfg_bvalid;
wire       usb_cfg_bready;
wire [31:0]usb_cfg_araddr;
wire       usb_cfg_arvalid;
wire       usb_cfg_arready;
wire [31:0]usb_cfg_rdata;
wire [1:0] usb_cfg_rresp;
wire       usb_cfg_rvalid;
wire       usb_cfg_rready;

(* MARK_DEBUG = "TRUE" *)wire [31:0]usb_cfg_converted_awaddr;
(* MARK_DEBUG = "TRUE" *)wire       usb_cfg_converted_awvalid;
(* MARK_DEBUG = "TRUE" *)wire       usb_cfg_converted_awready;
(* MARK_DEBUG = "TRUE" *)wire [31:0]usb_cfg_converted_wdata;
(* MARK_DEBUG = "TRUE" *)wire [3:0] usb_cfg_converted_wstrb;
(* MARK_DEBUG = "TRUE" *)wire       usb_cfg_converted_wvalid;
(* MARK_DEBUG = "TRUE" *)wire       usb_cfg_converted_wready;
(* MARK_DEBUG = "TRUE" *)wire [1:0] usb_cfg_converted_bresp;
(* MARK_DEBUG = "TRUE" *)wire       usb_cfg_converted_bvalid;
(* MARK_DEBUG = "TRUE" *)wire       usb_cfg_converted_bready;
(* MARK_DEBUG = "TRUE" *)wire [31:0]usb_cfg_converted_araddr;
(* MARK_DEBUG = "TRUE" *)wire       usb_cfg_converted_arvalid;
(* MARK_DEBUG = "TRUE" *)wire       usb_cfg_converted_arready;
(* MARK_DEBUG = "TRUE" *)wire [31:0]usb_cfg_converted_rdata;
(* MARK_DEBUG = "TRUE" *)wire [1:0] usb_cfg_converted_rresp;
(* MARK_DEBUG = "TRUE" *)wire       usb_cfg_converted_rvalid;
(* MARK_DEBUG = "TRUE" *)wire       usb_cfg_converted_rready;

wire usb_rst;
//spi
wire [3:0]spi_csn_o ;
wire [3:0]spi_csn_en;
wire spi_sck_o ;
wire spi_sdo_i ;
wire spi_sdo_o ;
wire spi_sdo_en;
wire spi_sdi_i ;
wire spi_sdi_o ;
wire spi_sdi_en;
wire spi_inta_o;
assign     SPI_CLK = spi_sck_o;
assign     SPI_CS  = ~spi_csn_en[0] & spi_csn_o[0];
assign     SPI_MOSI = spi_sdo_en ? 1'bz : spi_sdo_o ;
assign     SPI_MISO = spi_sdi_en ? 1'bz : spi_sdi_o ;
assign     spi_sdo_i = SPI_MOSI;
assign     spi_sdi_i = SPI_MISO;

// confreg 
wire   [31:0] cr00,cr01,cr02,cr03,cr04,cr05,cr06,cr07;

//mac
wire md_i_0;      // MII data input (from I/O cell)
wire md_o_0;      // MII data output (to I/O cell)
wire md_oe_0;     // MII data output enable (to I/O cell)
IOBUF mac_mdio(.IO(mdio_0),.I(md_o_0),.T(~md_oe_0),.O(md_i_0));
assign phy_rstn = aresetn;

//nand
wire       nand_cle   ;
wire       nand_ale   ;
wire [3:0] nand_rdy   ;
wire [3:0] nand_ce    ;
wire       nand_rd    ;
wire       nand_wr    ;
wire       nand_dat_oe;
wire [7:0] nand_dat_i ;
wire [7:0] nand_dat_o ;
wire       nand_int   ;
assign     NAND_CLE = nand_cle;
assign     NAND_ALE = nand_ale;
assign     nand_rdy = {3'd0,NAND_RDY};
assign     NAND_RD  = nand_rd;
assign     NAND_CE  = nand_ce[0];  //low active
assign     NAND_WR  = nand_wr;  
generate
    genvar i;
    for(i=0;i<8;i=i+1)
    begin: nand_data_loop
        IOBUF nand_data(.IO(NAND_DATA[i]),.I(nand_dat_o[i]),.T(nand_dat_oe),.O(nand_dat_i[i]));
    end
endgenerate

//uart
wire UART_CTS,   UART_RTS;
wire UART_DTR,   UART_DSR;
wire UART_RI,    UART_DCD;
assign UART_CTS = 1'b0;
assign UART_DSR = 1'b0;
assign UART_DCD = 1'b0;
wire uart0_int   ;
wire uart0_txd_o ;
wire uart0_txd_i ;
wire uart0_txd_oe;
wire uart0_rxd_o ;
wire uart0_rxd_i ;
wire uart0_rxd_oe;
wire uart0_rts_o ;
wire uart0_cts_i ;
wire uart0_dsr_i ;
wire uart0_dcd_i ;
wire uart0_dtr_o ;
wire uart0_ri_i  ;
assign     UART_RX     = uart0_rxd_oe ? 1'bz : uart0_rxd_o ;
assign     UART_TX     = uart0_txd_oe ? 1'bz : uart0_txd_o ;
assign     UART_RTS    = uart0_rts_o ;
assign     UART_DTR    = uart0_dtr_o ;
assign     uart0_txd_i = UART_TX;
assign     uart0_rxd_i = UART_RX;
assign     uart0_cts_i = UART_CTS;
assign     uart0_dcd_i = UART_DCD;
assign     uart0_dsr_i = UART_DSR;
assign     uart0_ri_i  = UART_RI ;

//interrupt
wire mac_int;
wire clint_int;
(* MARK_DEBUG = "TRUE" *)wire [6:0] int_out;
wire [6:0] int_n_i;
wire usb_int;
assign int_out = {usb_int,clint_int,dma_int,nand_int,spi_inta_o,uart0_int,mac_int};
assign int_n_i = ~int_out;

reg cpu_aresetn_1;
reg cpu_aresetn_2;

wire cpu_aresetn;

always @(posedge cpu_clk) begin
    cpu_aresetn_1 <= aresetn;
    cpu_aresetn_2 <= cpu_aresetn_1;
end

assign cpu_aresetn = cpu_aresetn_2;

// VGA
wire  [5:0] VGA_red; 
wire  [5:0]VGA_green;
wire  [5:0]VGA_blue;
genvar VGA_i;
generate
for (VGA_i = 0; VGA_i < 4; VGA_i = VGA_i+1) begin : VGA_gen
//match on-board DAC built by resistor
assign VGA_r[VGA_i] = VGA_red[VGA_i+2] ? 1'b1 : 1'bZ;
assign VGA_g[VGA_i] = VGA_green[VGA_i+2] ? 1'b1 : 1'bZ;
assign VGA_b[VGA_i] = VGA_blue[VGA_i+2] ? 1'b1 : 1'bZ;
end
endgenerate

`IOBUF_GEN_VEC_UNIFORM_SIMPLE(UTMI_data);

//debug signals
wire [31:0] debug_wb_pc;
wire [3 :0] debug_wb_rf_wen;
wire [4 :0] debug_wb_rf_wnum;
wire [31:0] debug_wb_rf_wdata;
wire        ws_valid;
wire        break_point;
wire        infor_flag;
wire [ 4:0] reg_num;
wire [31:0] rf_rdata;

//uart_ram signals
wire [3 :0] uart_arid   ;
wire [31:0] uart_araddr ;
wire [7 :0] uart_arlen  ;
wire [2 :0] uart_arsize ;
wire [1 :0] uart_arburst;
wire [1 :0] uart_arlock ;
wire [3 :0] uart_arcache;
wire [2 :0] uart_arprot ;
wire        uart_arvalid;
wire        uart_arready;
wire [3 :0] uart_rid    ;
wire [31:0] uart_rdata  ;
wire [1 :0] uart_rresp  ;
wire        uart_rlast  ;
wire        uart_rvalid ;
wire        uart_rready ;

wire        infom_flag;
wire [31:0] start_addr;
wire        mem_flag;
wire [ 7:0] mem_rdata;

//axi_2x1 signals
wire [`LID         -1 :0] m1_arid;
wire [`Laraddr     -1 :0] m1_araddr;
wire [`Larlen      -1 :0] m1_arlen;
wire [`Larsize     -1 :0] m1_arsize;
wire [`Larburst    -1 :0] m1_arburst;
wire [`Larlock     -1 :0] m1_arlock;
wire [`Larcache    -1 :0] m1_arcache;
wire [`Larprot     -1 :0] m1_arprot;
wire                      m1_arvalid;
wire                      m1_arready;
wire [`LID         -1 :0] m1_rid;
wire [`Lrdata      -1 :0] m1_rdata;
wire [`Lrresp      -1 :0] m1_rresp;
wire                      m1_rlast;
wire                      m1_rvalid;
wire                      m1_rready;

debug_top u_debug_top(
    .sys_clk              (cpu_clk          ),
    .sys_rst_n            (resetn           ),
    .uart_rxd             (UART_RX2         ),
    .debug_wb_pc          (debug_wb_pc      ),
    .debug_wb_rf_wnum     (debug_wb_rf_wnum ),
    .debug_wb_rf_wdata    (debug_wb_rf_wdata),
    .ws_valid             (ws_valid         ),
    .break_point          (break_point      ),
    .infor_flag           (infor_flag       ),
    .reg_num              (reg_num          ),
    .rf_rdata             (rf_rdata         ),
    .infom_flag           (infom_flag       ),
    .start_addr           (start_addr       ),
    .mem_flag             (mem_flag         ),
    .mem_rdata            (mem_rdata        ),
    .uart_txd             (UART_TX2         )

);


debug_sram u_debug_sram(
    .clk       (cpu_clk        ),
    .aresetn   (resetn         ),   

    .arid      (uart_arid      ),
    .araddr    (uart_araddr    ),
    .arlen     (uart_arlen     ),
    .arsize    (uart_arsize    ),
    .arburst   (uart_arburst   ),
    .arlock    (uart_arlock    ),
    .arcache   (uart_arcache   ),
    .arprot    (uart_arprot    ),
    .arvalid   (uart_arvalid   ),
    .arready   (uart_arready   ),
                
    .rid       (uart_rid       ),
    .rdata     (uart_rdata     ),
    .rresp     (uart_rresp     ),
    .rlast     (uart_rlast     ),
    .rvalid    (uart_rvalid    ),
    .rready    (uart_rready    ),

    .break_point(              ),
    .cpu_rready (              ),  
    .rvalid_r   (              ),
    .rid_r      (              ),
    .rdata_r    (              ),
    .rlast_r    (              ),
    .flag       (              ),

    .infom_flag(infom_flag    ),
    .start_addr(start_addr    ),
    .mem_flag  (mem_flag      ),
    .mem_rdata (mem_rdata     ) 

);

//ddr3
wire   c1_sys_clk_i;
wire   c1_clk_ref_i;
wire   c1_sys_rst_i;
wire   c1_calib_done;
wire   c1_clk0;
wire   c1_rst0;
wire   clk_100;
wire   vga_clk;
wire        ddr_aresetn;
reg         interconnect_aresetn;

clk_pll_33  clk_pll_33
 (
  .clk_in1(clk),                // Fixed to 100MHz


  .clk_out1(cpu_clk),           // Cpu Clock
  .clk_out2(uncore_clk),        // Fixed to 33MHz
  .clk_out3(vga_clk),
  .clk_100(clk_100)
 );

// cpu
core_top cpu_mid(
  .aclk             (cpu_clk),
  .intrpt           ({1'b0, int_out[6:0]}),  //232 only 5bit
  //.nmi              (1'b1),

  .aresetn          (cpu_aresetn  ),
  .arid         (m0_arid[3:0] ),
  .araddr       (m0_araddr    ),
  .arlen        (m0_arlen     ),
  .arsize       (m0_arsize    ),
  .arburst      (m0_arburst   ),
  .arlock       (m0_arlock    ),
  .arcache      (m0_arcache   ),
  .arprot       (m0_arprot    ),
  .arvalid      (m0_arvalid   ),
  .arready      (m0_arready   ),
  .rid          (m0_rid[3:0]  ),
  .rdata        (m0_rdata     ),
  .rresp        (m0_rresp     ),
  .rlast        (m0_rlast     ),
  .rvalid       (m0_rvalid    ),
  .rready       (m0_rready    ),
  .awid         (m0_awid[3:0] ),
  .awaddr       (m0_awaddr    ),
  .awlen        (m0_awlen     ),
  .awsize       (m0_awsize    ),
  .awburst      (m0_awburst   ),
  .awlock       (m0_awlock    ),
  .awcache      (m0_awcache   ),
  .awprot       (m0_awprot    ),
  .awvalid      (m0_awvalid   ),
  .awready      (m0_awready   ),
  .wid          (m0_wid[3:0]  ),
  .wdata        (m0_wdata     ),
  .wstrb        (m0_wstrb     ),
  .wlast        (m0_wlast     ),
  .wvalid       (m0_wvalid    ),
  .wready       (m0_wready    ),
  .bid          (m0_bid[3:0]  ),
  .bresp        (m0_bresp     ),
  .bvalid       (m0_bvalid    ),
  .bready       (m0_bready    )
);

//AXI_2x1_MUX
// axi_2x1_mux u_axi_2x1_mux
// (
//     .INTERCONNECT_ACLK   (cpu_clk     ),
//     .INTERCONNECT_ARESETN(resetn      ),
//     .S00_AXI_ACLK        (cpu_clk     ),
//     .S00_AXI_ARESET_OUT_N(            ),
//     .S00_AXI_ARADDR      (m0_araddr   ),
//     .S00_AXI_ARBURST     (m0_arburst  ),
//     .S00_AXI_ARCACHE     (m0_arcache  ),
//     .S00_AXI_ARID        (m0_arid[3:0]),
//     .S00_AXI_ARLEN       (m0_arlen    ),
//     .S00_AXI_ARLOCK      (m0_arlock   ),
//     .S00_AXI_ARPROT      (m0_arprot   ),
//     .S00_AXI_ARQOS       (4'b0        ),
//     .S00_AXI_ARREADY     (m0_arready  ),
//     .S00_AXI_ARSIZE      (m0_arsize   ),
//     .S00_AXI_ARVALID     (m0_arvalid  ),
//     .S00_AXI_RDATA       (m0_rdata    ),
//     .S00_AXI_RID         (m0_rid[3:0] ),
//     .S00_AXI_RLAST       (m0_rlast    ),
//     .S00_AXI_RREADY      (m0_rready   ),
//     .S00_AXI_RRESP       (m0_rresp    ),
//     .S00_AXI_RVALID      (m0_rvalid   ),
//     .S00_AXI_AWADDR      (`Lawaddr'b0 ),
//     .S00_AXI_AWBURST     (`Lawburst'b0),
//     .S00_AXI_AWCACHE     (`Lawcache'b0),
//     .S00_AXI_AWID        (`LID'b0     ),
//     .S00_AXI_AWLEN       (`Lawlen'b0  ),
//     .S00_AXI_AWLOCK      (`Lawlock'b0 ),
//     .S00_AXI_AWPROT      (`Lawprot'b0 ),
//     .S00_AXI_AWQOS       (4'b0        ),
//     .S00_AXI_AWREADY     (            ),
//     .S00_AXI_AWSIZE      (`Lawsize'b0 ),
//     .S00_AXI_AWVALID     (1'b0        ),
//     .S00_AXI_WDATA       (`Lwdata'b0  ),
//     .S00_AXI_WLAST       (1'b0        ),
//     .S00_AXI_WREADY      (            ),
//     .S00_AXI_WSTRB       (`Lwstrb'b0  ),
//     .S00_AXI_WVALID      (1'b0        ),
//     .S00_AXI_BID         (            ),
//     .S00_AXI_BREADY      (1'b0        ),
//     .S00_AXI_BRESP       (            ),
//     .S00_AXI_BVALID      (            ),
   
//     .S01_AXI_ACLK        (cpu_clk     ),
//     .S01_AXI_ARESET_OUT_N(            ),
//     .S01_AXI_ARADDR      (uart_araddr ),
//     .S01_AXI_ARBURST     (uart_arburst),
//     .S01_AXI_ARCACHE     (uart_arcache),
//     .S01_AXI_ARID        (uart_arid   ),
//     .S01_AXI_ARLEN       (uart_arlen  ),
//     .S01_AXI_ARLOCK      (uart_arlock ),
//     .S01_AXI_ARPROT      (uart_arprot ),
//     .S01_AXI_ARQOS       (4'b0        ),
//     .S01_AXI_ARREADY     (uart_arready),
//     .S01_AXI_ARSIZE      (uart_arsize ),
//     .S01_AXI_ARVALID     (uart_arvalid),
//     .S01_AXI_RDATA       (uart_rdata  ),
//     .S01_AXI_RID         (uart_rid    ),
//     .S01_AXI_RLAST       (uart_rlast  ),
//     .S01_AXI_RREADY      (uart_rready ),
//     .S01_AXI_RRESP       (uart_rresp  ),
//     .S01_AXI_RVALID      (uart_rvalid ),
//     .S01_AXI_AWADDR      (`Lawaddr'b0 ),
//     .S01_AXI_AWBURST     (`Lawburst'b0),
//     .S01_AXI_AWCACHE     (`Lawcache'b0),
//     .S01_AXI_AWID        (`LID'b0     ),
//     .S01_AXI_AWLEN       (`Lawlen'b0  ),
//     .S01_AXI_AWLOCK      (`Lawlock'b0 ),
//     .S01_AXI_AWPROT      (`Lawprot'b0 ),
//     .S01_AXI_AWQOS       (4'b0        ),
//     .S01_AXI_AWREADY     (            ),
//     .S01_AXI_AWSIZE      (`Lawsize'b0 ),
//     .S01_AXI_AWVALID     (1'b0        ),
//     .S01_AXI_WDATA       (`Lwdata'b0  ),
//     .S01_AXI_WLAST       (1'b0        ),
//     .S01_AXI_WREADY      (            ),
//     .S01_AXI_WSTRB       (`Lwstrb'b0  ),
//     .S01_AXI_WVALID      (1'b0        ),
//     .S01_AXI_BID         (            ),
//     .S01_AXI_BREADY      (1'b0        ),
//     .S01_AXI_BRESP       (            ),
//     .S01_AXI_BVALID      (            ),
    
//     .M00_AXI_ACLK        (cpu_clk     ),
//     .M00_AXI_ARESET_OUT_N(            ),
//     .M00_AXI_ARADDR      (m1_araddr   ),
//     .M00_AXI_ARBURST     (m1_arburst  ),
//     .M00_AXI_ARCACHE     (m1_arcache  ),
//     .M00_AXI_ARID        (m1_arid[3:0]),
//     .M00_AXI_ARLEN       (m1_arlen    ),
//     .M00_AXI_ARLOCK      (m1_arlock   ),
//     .M00_AXI_ARPROT      (m1_arprot   ),
//     .M00_AXI_ARQOS       (4'b0        ),
//     .M00_AXI_ARREADY     (m1_arready  ),
//     .M00_AXI_ARSIZE      (m1_arsize   ),
//     .M00_AXI_ARVALID     (m1_arvalid  ),
//     .M00_AXI_RDATA       (m1_rdata    ),
//     .M00_AXI_RID         ({1'b0,m1_rid[3:0]} ),
//     .M00_AXI_RLAST       (m1_rlast    ),
//     .M00_AXI_RREADY      (m1_rready   ),
//     .M00_AXI_RRESP       (m1_rresp    ),
//     .M00_AXI_RVALID      (m1_rvalid   ),
//     .M00_AXI_AWADDR      (            ),
//     .M00_AXI_AWBURST     (            ),
//     .M00_AXI_AWCACHE     (            ),
//     .M00_AXI_AWID        (            ),
//     .M00_AXI_AWLEN       (            ),
//     .M00_AXI_AWLOCK      (            ),
//     .M00_AXI_AWPROT      (            ),
//     .M00_AXI_AWQOS       (            ),
//     .M00_AXI_AWREADY     (1'b0        ),
//     .M00_AXI_AWSIZE      (            ),
//     .M00_AXI_AWVALID     (            ),
//     .M00_AXI_WDATA       (            ),
//     .M00_AXI_WLAST       (            ),
//     .M00_AXI_WREADY      (1'b0        ),
//     .M00_AXI_WSTRB       (            ),
//     .M00_AXI_WVALID      (            ),
//     .M00_AXI_BID         (5'b0        ),
//     .M00_AXI_BREADY      (            ),
//     .M00_AXI_BRESP       (`Lbresp'b0  ),
//     .M00_AXI_BVALID      (1'b0        )
// );

// cpu_axi asyn
axi_clock_converter_0 AXI_CLK_CONVERTER (
    .s_axi_awid       (m0_awid[3:0]       ),	
    .s_axi_awaddr     (m0_awaddr          ),
    .s_axi_awlen      (m0_awlen           ),
    .s_axi_awsize     (m0_awsize          ),
    .s_axi_awburst    (m0_awburst         ),
    .s_axi_awlock     (m0_awlock          ),
    .s_axi_awcache    (m0_awcache         ),
    .s_axi_awprot     (m0_awprot          ),
    .s_axi_awqos      (4'b0               ),
    .s_axi_awvalid    (m0_awvalid         ),
    .s_axi_awready    (m0_awready         ),
    .s_axi_wid        (m0_wid[3:0]        ),
    .s_axi_wdata      (m0_wdata           ),
    .s_axi_wstrb      (m0_wstrb           ),
    .s_axi_wlast      (m0_wlast           ),
    .s_axi_wvalid     (m0_wvalid          ),
    .s_axi_wready     (m0_wready          ),
    .s_axi_bid        (m0_bid[3:0]        ),
    .s_axi_bresp      (m0_bresp           ),
    .s_axi_bvalid     (m0_bvalid          ),
    .s_axi_bready     (m0_bready          ),
    .s_axi_arid       (m0_arid[3:0]       ),
    .s_axi_araddr     (m0_araddr          ),
    .s_axi_arlen      (m0_arlen           ),
    .s_axi_arsize     (m0_arsize          ),
    .s_axi_arburst    (m0_arburst         ),
    .s_axi_arlock     (m0_arlock          ),
    .s_axi_arcache    (m0_arcache         ),
    .s_axi_arprot     (m0_arprot          ),
    .s_axi_arqos      (4'b0               ),
    .s_axi_arvalid    (m0_arvalid         ),
    .s_axi_arready    (m0_arready         ),
    .s_axi_rid        (m0_rid[3:0]        ),
    .s_axi_rdata      (m0_rdata           ),
    .s_axi_rresp      (m0_rresp           ),
    .s_axi_rlast      (m0_rlast           ),
    .s_axi_rvalid     (m0_rvalid          ),
    .s_axi_rready     (m0_rready          ),

    .s_axi_aclk	      (cpu_clk            ),
    .s_axi_aresetn    (cpu_aresetn        ),
    
    .m_axi_awid       (m0_async_awid[3:0] ),
    .m_axi_awaddr     (m0_async_awaddr    ),
    .m_axi_awlen      (m0_async_awlen     ),
    .m_axi_awsize     (m0_async_awsize    ),
    .m_axi_awburst    (m0_async_awburst   ),
    .m_axi_awlock     (m0_async_awlock    ),
    .m_axi_awcache    (m0_async_awcache   ),
    .m_axi_awprot     (m0_async_awprot    ),
    .m_axi_awqos      (                   ),
    .m_axi_awvalid    (m0_async_awvalid   ),
    .m_axi_awready    (m0_async_awready   ),
    .m_axi_wid        (m0_async_wid[3:0]  ),
    .m_axi_wdata      (m0_async_wdata     ),
    .m_axi_wstrb      (m0_async_wstrb     ),
    .m_axi_wlast      (m0_async_wlast     ),
    .m_axi_wvalid     (m0_async_wvalid    ),
    .m_axi_wready     (m0_async_wready    ),
    .m_axi_bid        (m0_async_bid[3:0]  ),
    .m_axi_bresp      (m0_async_bresp     ),
    .m_axi_bvalid     (m0_async_bvalid    ),
    .m_axi_bready     (m0_async_bready    ),
    .m_axi_arid       (m0_async_arid[3:0] ),
    .m_axi_araddr     (m0_async_araddr    ),
    .m_axi_arlen      (m0_async_arlen     ),
    .m_axi_arsize     (m0_async_arsize    ),
    .m_axi_arburst    (m0_async_arburst   ),
    .m_axi_arlock     (m0_async_arlock    ),
    .m_axi_arcache    (m0_async_arcache   ),
    .m_axi_arprot     (m0_async_arprot    ),
    .m_axi_arqos      (                   ),
    .m_axi_arvalid    (m0_async_arvalid   ),
    .m_axi_arready    (m0_async_arready   ),
    .m_axi_rid        (m0_async_rid[3:0]  ),
    .m_axi_rdata      (m0_async_rdata     ),
    .m_axi_rresp      (m0_async_rresp     ),
    .m_axi_rlast      (m0_async_rlast     ),
    .m_axi_rvalid     (m0_async_rvalid    ),
    .m_axi_rready     (m0_async_rready    ),

    .m_axi_aclk	      (aclk               ),
    .m_axi_aresetn    (aresetn            )
);


axi_register_slice_0 AXI_MUX_M_SLICE
(
.aclk           (aclk),
.aresetn        (aresetn),

.s_axi_awid         (m0_async_awid        ),
.s_axi_awaddr       (m0_async_awaddr      ),
.s_axi_awlen        (m0_async_awlen       ),
.s_axi_awsize       (m0_async_awsize      ),
.s_axi_awburst      (m0_async_awburst     ),
.s_axi_awlock       (m0_async_awlock      ),
.s_axi_awcache      (m0_async_awcache     ),
.s_axi_awprot       (m0_async_awprot      ),
.s_axi_awvalid      (m0_async_awvalid     ),
.s_axi_awready      (m0_async_awready     ),
.s_axi_wid          (m0_async_wid         ),
.s_axi_wdata        (m0_async_wdata       ),
.s_axi_wstrb        (m0_async_wstrb       ),
.s_axi_wlast        (m0_async_wlast       ),
.s_axi_wvalid       (m0_async_wvalid      ),
.s_axi_wready       (m0_async_wready      ),
.s_axi_bid          (m0_async_bid         ),
.s_axi_bresp        (m0_async_bresp       ),
.s_axi_bvalid       (m0_async_bvalid      ),
.s_axi_bready       (m0_async_bready      ),
.s_axi_arid         (m0_async_arid        ),
.s_axi_araddr       (m0_async_araddr      ),
.s_axi_arlen        (m0_async_arlen       ),
.s_axi_arsize       (m0_async_arsize      ),
.s_axi_arburst      (m0_async_arburst     ),
.s_axi_arlock       (m0_async_arlock      ),
.s_axi_arcache      (m0_async_arcache     ),
.s_axi_arprot       (m0_async_arprot      ),
.s_axi_arvalid      (m0_async_arvalid     ),
.s_axi_arready      (m0_async_arready     ),
.s_axi_rid          (m0_async_rid         ),
.s_axi_rdata        (m0_async_rdata       ),
.s_axi_rresp        (m0_async_rresp       ),
.s_axi_rlast        (m0_async_rlast       ),
.s_axi_rvalid       (m0_async_rvalid      ),
.s_axi_rready       (m0_async_rready      ),

.m_axi_awid         (m0_async_sliced_awid        ),
.m_axi_awaddr       (m0_async_sliced_awaddr      ),
.m_axi_awlen        (m0_async_sliced_awlen       ),
.m_axi_awsize       (m0_async_sliced_awsize      ),
.m_axi_awburst      (m0_async_sliced_awburst     ),
.m_axi_awlock       (m0_async_sliced_awlock      ),
.m_axi_awcache      (m0_async_sliced_awcache     ),
.m_axi_awprot       (m0_async_sliced_awprot      ),
.m_axi_awvalid      (m0_async_sliced_awvalid     ),
.m_axi_awready      (m0_async_sliced_awready     ),
.m_axi_wid          (m0_async_sliced_wid         ),
.m_axi_wdata        (m0_async_sliced_wdata       ),
.m_axi_wstrb        (m0_async_sliced_wstrb       ),
.m_axi_wlast        (m0_async_sliced_wlast       ),
.m_axi_wvalid       (m0_async_sliced_wvalid      ),
.m_axi_wready       (m0_async_sliced_wready      ),
.m_axi_bid          (m0_async_sliced_bid         ),
.m_axi_bresp        (m0_async_sliced_bresp       ),
.m_axi_bvalid       (m0_async_sliced_bvalid      ),
.m_axi_bready       (m0_async_sliced_bready      ),
.m_axi_arid         (m0_async_sliced_arid        ),
.m_axi_araddr       (m0_async_sliced_araddr      ),
.m_axi_arlen        (m0_async_sliced_arlen       ),
.m_axi_arsize       (m0_async_sliced_arsize      ),
.m_axi_arburst      (m0_async_sliced_arburst     ),
.m_axi_arlock       (m0_async_sliced_arlock      ),
.m_axi_arcache      (m0_async_sliced_arcache     ),
.m_axi_arprot       (m0_async_sliced_arprot      ),
.m_axi_arvalid      (m0_async_sliced_arvalid     ),
.m_axi_arready      (m0_async_sliced_arready     ),
.m_axi_rid          (m0_async_sliced_rid         ),
.m_axi_rdata        (m0_async_sliced_rdata       ),
.m_axi_rresp        (m0_async_sliced_rresp       ),
.m_axi_rlast        (m0_async_sliced_rlast       ),
.m_axi_rvalid       (m0_async_sliced_rvalid      ),
.m_axi_rready       (m0_async_sliced_rready      )
);

axi_data_fifo_0 AXI_MUX_M_FIFO
(
.aclk           (aclk),
.aresetn        (aresetn),

.s_axi_awid         (m0_async_sliced_awid        ),
.s_axi_awaddr       (m0_async_sliced_awaddr      ),
.s_axi_awlen        (m0_async_sliced_awlen       ),
.s_axi_awsize       (m0_async_sliced_awsize      ),
.s_axi_awburst      (m0_async_sliced_awburst     ),
.s_axi_awlock       (m0_async_sliced_awlock      ),
.s_axi_awcache      (m0_async_sliced_awcache     ),
.s_axi_awprot       (m0_async_sliced_awprot      ),
.s_axi_awqos        (4'd0          ),
.s_axi_awvalid      (m0_async_sliced_awvalid     ),
.s_axi_awready      (m0_async_sliced_awready     ),
.s_axi_wid          (m0_async_sliced_wid         ),
.s_axi_wdata        (m0_async_sliced_wdata       ),
.s_axi_wstrb        (m0_async_sliced_wstrb       ),
.s_axi_wlast        (m0_async_sliced_wlast       ),
.s_axi_wvalid       (m0_async_sliced_wvalid      ),
.s_axi_wready       (m0_async_sliced_wready      ),
.s_axi_bid          (m0_async_sliced_bid         ),
.s_axi_bresp        (m0_async_sliced_bresp       ),
.s_axi_bvalid       (m0_async_sliced_bvalid      ),
.s_axi_bready       (m0_async_sliced_bready      ),
.s_axi_arid         (m0_async_sliced_arid        ),
.s_axi_araddr       (m0_async_sliced_araddr      ),
.s_axi_arlen        (m0_async_sliced_arlen       ),
.s_axi_arsize       (m0_async_sliced_arsize      ),
.s_axi_arburst      (m0_async_sliced_arburst     ),
.s_axi_arlock       (m0_async_sliced_arlock      ),
.s_axi_arcache      (m0_async_sliced_arcache     ),
.s_axi_arprot       (m0_async_sliced_arprot      ),
.s_axi_arqos        (4'd0          ),
.s_axi_arvalid      (m0_async_sliced_arvalid     ),
.s_axi_arready      (m0_async_sliced_arready     ),
.s_axi_rid          (m0_async_sliced_rid         ),
.s_axi_rdata        (m0_async_sliced_rdata       ),
.s_axi_rresp        (m0_async_sliced_rresp       ),
.s_axi_rlast        (m0_async_sliced_rlast       ),
.s_axi_rvalid       (m0_async_sliced_rvalid      ),
.s_axi_rready       (m0_async_sliced_rready      ),

.m_axi_awid         (m0_async_fifo_awid        ),
.m_axi_awaddr       (m0_async_fifo_awaddr      ),
.m_axi_awlen        (m0_async_fifo_awlen       ),
.m_axi_awsize       (m0_async_fifo_awsize      ),
.m_axi_awburst      (m0_async_fifo_awburst     ),
.m_axi_awlock       (m0_async_fifo_awlock      ),
.m_axi_awcache      (m0_async_fifo_awcache     ),
.m_axi_awprot       (m0_async_fifo_awprot      ),
.m_axi_awqos        (4'd0          ),
.m_axi_awvalid      (m0_async_fifo_awvalid     ),
.m_axi_awready      (m0_async_fifo_awready     ),
.m_axi_wid          (m0_async_fifo_wid         ),
.m_axi_wdata        (m0_async_fifo_wdata       ),
.m_axi_wstrb        (m0_async_fifo_wstrb       ),
.m_axi_wlast        (m0_async_fifo_wlast       ),
.m_axi_wvalid       (m0_async_fifo_wvalid      ),
.m_axi_wready       (m0_async_fifo_wready      ),
.m_axi_bid          (m0_async_fifo_bid         ),
.m_axi_bresp        (m0_async_fifo_bresp       ),
.m_axi_bvalid       (m0_async_fifo_bvalid      ),
.m_axi_bready       (m0_async_fifo_bready      ),
.m_axi_arid         (m0_async_fifo_arid        ),
.m_axi_araddr       (m0_async_fifo_araddr      ),
.m_axi_arlen        (m0_async_fifo_arlen       ),
.m_axi_arsize       (m0_async_fifo_arsize      ),
.m_axi_arburst      (m0_async_fifo_arburst     ),
.m_axi_arlock       (m0_async_fifo_arlock      ),
.m_axi_arcache      (m0_async_fifo_arcache     ),
.m_axi_arprot       (m0_async_fifo_arprot      ),
.m_axi_arqos        (4'd0          ),
.m_axi_arvalid      (m0_async_fifo_arvalid     ),
.m_axi_arready      (m0_async_fifo_arready     ),
.m_axi_rid          (m0_async_fifo_rid         ),
.m_axi_rdata        (m0_async_fifo_rdata       ),
.m_axi_rresp        (m0_async_fifo_rresp       ),
.m_axi_rlast        (m0_async_fifo_rlast       ),
.m_axi_rvalid       (m0_async_fifo_rvalid      ),
.m_axi_rready       (m0_async_fifo_rready      )

);

axi_crossbar_0 AXI_SLAVE_MUX
(
.aclk           (aclk),
.aresetn        (aresetn),

.s_axi_awid         (m0_async_fifo_awid),
.s_axi_awaddr       (m0_async_fifo_awaddr),
.s_axi_awlen        (m0_async_fifo_awlen),
.s_axi_awsize       (m0_async_fifo_awsize),
.s_axi_awburst      (m0_async_fifo_awburst),
.s_axi_awlock       (m0_async_fifo_awlock),
.s_axi_awcache      (m0_async_fifo_awcache),
.s_axi_awprot       (m0_async_fifo_awprot),
.s_axi_awqos        (4'd0),
.s_axi_awvalid      (m0_async_fifo_awvalid),
.s_axi_awready      (m0_async_fifo_awready),
.s_axi_wid          (m0_async_fifo_wid),
.s_axi_wdata        (m0_async_fifo_wdata),
.s_axi_wstrb        (m0_async_fifo_wstrb),
.s_axi_wlast        (m0_async_fifo_wlast),
.s_axi_wvalid       (m0_async_fifo_wvalid),
.s_axi_wready       (m0_async_fifo_wready),
.s_axi_bid          (m0_async_fifo_bid),
.s_axi_bresp        (m0_async_fifo_bresp),
.s_axi_bvalid       (m0_async_fifo_bvalid),
.s_axi_bready       (m0_async_fifo_bready),
.s_axi_arid         (m0_async_fifo_arid),
.s_axi_araddr       (m0_async_fifo_araddr),
.s_axi_arlen        (m0_async_fifo_arlen   ),
.s_axi_arsize       (m0_async_fifo_arsize  ),
.s_axi_arburst      (m0_async_fifo_arburst ),
.s_axi_arlock       (m0_async_fifo_arlock  ),
.s_axi_arcache      (m0_async_fifo_arcache ),
.s_axi_arprot       (m0_async_fifo_arprot  ),
.s_axi_arqos        (4'd0      ),
.s_axi_arvalid      (m0_async_fifo_arvalid     ),
.s_axi_arready      (m0_async_fifo_arready     ),
.s_axi_rid          (m0_async_fifo_rid         ),
.s_axi_rdata        (m0_async_fifo_rdata       ),
.s_axi_rresp        (m0_async_fifo_rresp       ),
.s_axi_rlast        (m0_async_fifo_rlast       ),
.s_axi_rvalid       (m0_async_fifo_rvalid      ),
.s_axi_rready       (m0_async_fifo_rready      ),

//.m_axi_awid       ({s8_unfifo_awid   ,s7_unfifo_awid     , s6_unfifo_awid, s5_unfifo_awid, s4_unfifo_awid, s3_unfifo_awid, s2_unfifo_awid, s1_unfifo_awid, s0_unfifo_awid}),
.m_axi_awaddr       ({s8_unfifo_awaddr ,s7_unfifo_awaddr  , s6_unfifo_awaddr, s5_unfifo_awaddr, s4_unfifo_awaddr, s3_unfifo_awaddr, s2_unfifo_awaddr, s1_unfifo_awaddr, s0_unfifo_awaddr}),
.m_axi_awlen        ({s8_unfifo_awlen  ,s7_unfifo_awlen   , s6_unfifo_awlen, s5_unfifo_awlen, s4_unfifo_awlen, s3_unfifo_awlen, s2_unfifo_awlen, s1_unfifo_awlen, s0_unfifo_awlen}),
.m_axi_awsize       ({s8_unfifo_awsize ,s7_unfifo_awsize  , s6_unfifo_awsize, s5_unfifo_awsize, s4_unfifo_awsize, s3_unfifo_awsize, s2_unfifo_awsize, s1_unfifo_awsize, s0_unfifo_awsize}),
.m_axi_awburst      ({s8_unfifo_awburst,s7_unfifo_awburst  , s6_unfifo_awburst, s5_unfifo_awburst, s4_unfifo_awburst, s3_unfifo_awburst, s2_unfifo_awburst, s1_unfifo_awburst, s0_unfifo_awburst}),
.m_axi_awlock       ({s8_unfifo_awlock ,s7_unfifo_awlock  , s6_unfifo_awlock, s5_unfifo_awlock, s4_unfifo_awlock, s3_unfifo_awlock, s2_unfifo_awlock, s1_unfifo_awlock, s0_unfifo_awlock}),
.m_axi_awcache      ({s8_unfifo_awcache,s7_unfifo_awcache  , s6_unfifo_awcache, s5_unfifo_awcache, s4_unfifo_awcache, s3_unfifo_awcache, s2_unfifo_awcache, s1_unfifo_awcache, s0_unfifo_awcache}),
.m_axi_awprot       ({s8_unfifo_awprot ,s7_unfifo_awprot  , s6_unfifo_awprot, s5_unfifo_awprot, s4_unfifo_awprot, s3_unfifo_awprot, s2_unfifo_awprot, s1_unfifo_awprot, s0_unfifo_awprot}),
.m_axi_awvalid      ({s8_unfifo_awvalid,s7_unfifo_awvalid  , s6_unfifo_awvalid, s5_unfifo_awvalid, s4_unfifo_awvalid, s3_unfifo_awvalid, s2_unfifo_awvalid, s1_unfifo_awvalid, s0_unfifo_awvalid}),
.m_axi_awready      ({s8_unfifo_awready,s7_unfifo_awready  , s6_unfifo_awready, s5_unfifo_awready, s4_unfifo_awready, s3_unfifo_awready, s2_unfifo_awready, s1_unfifo_awready, s0_unfifo_awready}),
//.m_axi_wid        ({s8_unfifo_wid   ,s7_unfifo_wid  , s6_unfifo_wid, s5_unfifo_wid, s4_unfifo_wid, s3_unfifo_wid, s2_unfifo_wid, s1_unfifo_wid, s0_unfifo_wid}),
.m_axi_wdata        ({s8_unfifo_wdata  ,s7_unfifo_wdata   , s6_unfifo_wdata, s5_unfifo_wdata, s4_unfifo_wdata, s3_unfifo_wdata, s2_unfifo_wdata, s1_unfifo_wdata, s0_unfifo_wdata}),
.m_axi_wstrb        ({s8_unfifo_wstrb  ,s7_unfifo_wstrb   , s6_unfifo_wstrb, s5_unfifo_wstrb, s4_unfifo_wstrb, s3_unfifo_wstrb, s2_unfifo_wstrb, s1_unfifo_wstrb, s0_unfifo_wstrb}),
.m_axi_wlast        ({s8_unfifo_wlast  ,s7_unfifo_wlast   , s6_unfifo_wlast, s5_unfifo_wlast, s4_unfifo_wlast, s3_unfifo_wlast, s2_unfifo_wlast, s1_unfifo_wlast, s0_unfifo_wlast}),
.m_axi_wvalid       ({s8_unfifo_wvalid ,s7_unfifo_wvalid  , s6_unfifo_wvalid,s5_unfifo_wvalid, s4_unfifo_wvalid, s3_unfifo_wvalid, s2_unfifo_wvalid, s1_unfifo_wvalid, s0_unfifo_wvalid}),
.m_axi_wready       ({s8_unfifo_wready ,s7_unfifo_wready  , s6_unfifo_wready,s5_unfifo_wready, s4_unfifo_wready, s3_unfifo_wready, s2_unfifo_wready, s1_unfifo_wready, s0_unfifo_wready}),
//.m_axi_bid        ({s8_unfifo_bid   ,s7_unfifo_bid  , s6_unfifo_bid, s5_unfifo_bid, s4_unfifo_bid, s3_unfifo_bid, s2_unfifo_bid, s1_unfifo_bid, s0_unfifo_bid}),
.m_axi_bresp        ({s8_unfifo_bresp  ,s7_unfifo_bresp   , s6_unfifo_bresp, s5_unfifo_bresp, s4_unfifo_bresp, s3_unfifo_bresp, s2_unfifo_bresp, s1_unfifo_bresp, s0_unfifo_bresp}),
.m_axi_bvalid       ({s8_unfifo_bvalid ,s7_unfifo_bvalid  , s6_unfifo_bvalid, s5_unfifo_bvalid, s4_unfifo_bvalid, s3_unfifo_bvalid, s2_unfifo_bvalid, s1_unfifo_bvalid, s0_unfifo_bvalid}),
.m_axi_bready       ({s8_unfifo_bready ,s7_unfifo_bready  , s6_unfifo_bready, s5_unfifo_bready, s4_unfifo_bready, s3_unfifo_bready, s2_unfifo_bready, s1_unfifo_bready, s0_unfifo_bready}),
//.m_axi_arid       ({s8_unfifo_arid  ,s7_unfifo_arid  , s6_unfifo_arid, s5_unfifo_arid, s4_unfifo_arid, s3_unfifo_arid, s2_unfifo_arid, s1_unfifo_arid, s0_unfifo_arid}),
.m_axi_araddr       ({s8_unfifo_araddr ,s7_unfifo_araddr  , s6_unfifo_araddr, s5_unfifo_araddr, s4_unfifo_araddr, s3_unfifo_araddr, s2_unfifo_araddr, s1_unfifo_araddr, s0_unfifo_araddr}),
.m_axi_arlen        ({s8_unfifo_arlen  ,s7_unfifo_arlen   , s6_unfifo_arlen , s5_unfifo_arlen, s4_unfifo_arlen, s3_unfifo_arlen, s2_unfifo_arlen, s1_unfifo_arlen, s0_unfifo_arlen}),
.m_axi_arsize       ({s8_unfifo_arsize ,s7_unfifo_arsize  , s6_unfifo_arsize, s5_unfifo_arsize, s4_unfifo_arsize, s3_unfifo_arsize, s2_unfifo_arsize, s1_unfifo_arsize, s0_unfifo_arsize}),
.m_axi_arburst      ({s8_unfifo_arburst,s7_unfifo_arburst  , s6_unfifo_arburst, s5_unfifo_arburst, s4_unfifo_arburst, s3_unfifo_arburst, s2_unfifo_arburst, s1_unfifo_arburst, s0_unfifo_arburst}),
.m_axi_arlock       ({s8_unfifo_arlock ,s7_unfifo_arlock  , s6_unfifo_arlock, s5_unfifo_arlock, s4_unfifo_arlock, s3_unfifo_arlock, s2_unfifo_arlock, s1_unfifo_arlock, s0_unfifo_arlock}),
.m_axi_arcache      ({s8_unfifo_arcache,s7_unfifo_arcache  , s6_unfifo_arcache, s5_unfifo_arcache, s4_unfifo_arcache, s3_unfifo_arcache, s2_unfifo_arcache, s1_unfifo_arcache, s0_unfifo_arcache}),
.m_axi_arprot       ({s8_unfifo_arprot ,s7_unfifo_arprot  , s6_unfifo_arprot, s5_unfifo_arprot, s4_unfifo_arprot, s3_unfifo_arprot, s2_unfifo_arprot, s1_unfifo_arprot, s0_unfifo_arprot}),
.m_axi_arvalid      ({s8_unfifo_arvalid,s7_unfifo_arvalid  , s6_unfifo_arvalid, s5_unfifo_arvalid, s4_unfifo_arvalid, s3_unfifo_arvalid, s2_unfifo_arvalid, s1_unfifo_arvalid, s0_unfifo_arvalid}),
.m_axi_arready      ({s8_unfifo_arready,s7_unfifo_arready  , s6_unfifo_arready, s5_unfifo_arready, s4_unfifo_arready, s3_unfifo_arready, s2_unfifo_arready, s1_unfifo_arready, s0_unfifo_arready}),
//.m_axi_rid        ({s8_unfifo_rid   ,s7_unfifo_rid  , s6_unfifo_rid, s5_unfifo_rid, s4_unfifo_rid, s3_unfifo_rid, s2_unfifo_rid, s1_unfifo_rid, s0_unfifo_rid}),
.m_axi_rdata        ({s8_unfifo_rdata  ,s7_unfifo_rdata   , s6_unfifo_rdata,  s5_unfifo_rdata, s4_unfifo_rdata, s3_unfifo_rdata, s2_unfifo_rdata, s1_unfifo_rdata, s0_unfifo_rdata}),
.m_axi_rresp        ({s8_unfifo_rresp  ,s7_unfifo_rresp   , s6_unfifo_rresp,  s5_unfifo_rresp, s4_unfifo_rresp, s3_unfifo_rresp, s2_unfifo_rresp, s1_unfifo_rresp, s0_unfifo_rresp}),
.m_axi_rlast        ({s8_unfifo_rlast  ,s7_unfifo_rlast   , s6_unfifo_rlast,  s5_unfifo_rlast, s4_unfifo_rlast, s3_unfifo_rlast, s2_unfifo_rlast, s1_unfifo_rlast, s0_unfifo_rlast}),
.m_axi_rvalid       ({s8_unfifo_rvalid ,s7_unfifo_rvalid  , s6_unfifo_rvalid, s5_unfifo_rvalid, s4_unfifo_rvalid, s3_unfifo_rvalid, s2_unfifo_rvalid, s1_unfifo_rvalid, s0_unfifo_rvalid}),
.m_axi_rready       ({s8_unfifo_rready ,s7_unfifo_rready  , s6_unfifo_rready, s5_unfifo_rready, s4_unfifo_rready, s3_unfifo_rready, s2_unfifo_rready, s1_unfifo_rready, s0_unfifo_rready})

);

axi_data_fifo_0 AXI_MUX_S0_FIFO
(
.aclk           (aclk),
.aresetn        (aresetn),

.s_axi_awid         (s0_unfifo_awid        ),
.s_axi_awaddr       (s0_unfifo_awaddr      ),
.s_axi_awlen        (s0_unfifo_awlen       ),
.s_axi_awsize       (s0_unfifo_awsize      ),
.s_axi_awburst      (s0_unfifo_awburst     ),
.s_axi_awlock       (s0_unfifo_awlock      ),
.s_axi_awcache      (s0_unfifo_awcache     ),
.s_axi_awprot       (s0_unfifo_awprot      ),
.s_axi_awqos        (4'd0          ),
.s_axi_awvalid      (s0_unfifo_awvalid     ),
.s_axi_awready      (s0_unfifo_awready     ),
.s_axi_wid          (s0_unfifo_wid         ),
.s_axi_wdata        (s0_unfifo_wdata       ),
.s_axi_wstrb        (s0_unfifo_wstrb       ),
.s_axi_wlast        (s0_unfifo_wlast       ),
.s_axi_wvalid       (s0_unfifo_wvalid      ),
.s_axi_wready       (s0_unfifo_wready      ),
.s_axi_bid          (s0_unfifo_bid         ),
.s_axi_bresp        (s0_unfifo_bresp       ),
.s_axi_bvalid       (s0_unfifo_bvalid      ),
.s_axi_bready       (s0_unfifo_bready      ),
.s_axi_arid         (s0_unfifo_arid        ),
.s_axi_araddr       (s0_unfifo_araddr      ),
.s_axi_arlen        (s0_unfifo_arlen       ),
.s_axi_arsize       (s0_unfifo_arsize      ),
.s_axi_arburst      (s0_unfifo_arburst     ),
.s_axi_arlock       (s0_unfifo_arlock      ),
.s_axi_arcache      (s0_unfifo_arcache     ),
.s_axi_arprot       (s0_unfifo_arprot      ),
.s_axi_arqos        (4'd0          ),
.s_axi_arvalid      (s0_unfifo_arvalid     ),
.s_axi_arready      (s0_unfifo_arready     ),
.s_axi_rid          (s0_unfifo_rid         ),
.s_axi_rdata        (s0_unfifo_rdata       ),
.s_axi_rresp        (s0_unfifo_rresp       ),
.s_axi_rlast        (s0_unfifo_rlast       ),
.s_axi_rvalid       (s0_unfifo_rvalid      ),
.s_axi_rready       (s0_unfifo_rready      ),

.m_axi_awid         (s0_awid        ),
.m_axi_awaddr       (s0_awaddr      ),
.m_axi_awlen        (s0_awlen       ),
.m_axi_awsize       (s0_awsize      ),
.m_axi_awburst      (s0_awburst     ),
.m_axi_awlock       (s0_awlock      ),
.m_axi_awcache      (s0_awcache     ),
.m_axi_awprot       (s0_awprot      ),
.m_axi_awqos        (4'd0          ),
.m_axi_awvalid      (s0_awvalid     ),
.m_axi_awready      (s0_awready     ),
.m_axi_wid          (s0_wid         ),
.m_axi_wdata        (s0_wdata       ),
.m_axi_wstrb        (s0_wstrb       ),
.m_axi_wlast        (s0_wlast       ),
.m_axi_wvalid       (s0_wvalid      ),
.m_axi_wready       (s0_wready      ),
.m_axi_bid          (s0_bid         ),
.m_axi_bresp        (s0_bresp       ),
.m_axi_bvalid       (s0_bvalid      ),
.m_axi_bready       (s0_bready      ),
.m_axi_arid         (s0_arid        ),
.m_axi_araddr       (s0_araddr      ),
.m_axi_arlen        (s0_arlen       ),
.m_axi_arsize       (s0_arsize      ),
.m_axi_arburst      (s0_arburst     ),
.m_axi_arlock       (s0_arlock      ),
.m_axi_arcache      (s0_arcache     ),
.m_axi_arprot       (s0_arprot      ),
.m_axi_arqos        (4'd0          ),
.m_axi_arvalid      (s0_arvalid     ),
.m_axi_arready      (s0_arready     ),
.m_axi_rid          (s0_rid         ),
.m_axi_rdata        (s0_rdata       ),
.m_axi_rresp        (s0_rresp       ),
.m_axi_rlast        (s0_rlast       ),
.m_axi_rvalid       (s0_rvalid      ),
.m_axi_rready       (s0_rready      )

);

axi_data_fifo_0 AXI_MUX_S1_FIFO
(
.aclk           (aclk),
.aresetn        (aresetn),

.s_axi_awid         (s1_unfifo_awid        ),
.s_axi_awaddr       (s1_unfifo_awaddr      ),
.s_axi_awlen        (s1_unfifo_awlen       ),
.s_axi_awsize       (s1_unfifo_awsize      ),
.s_axi_awburst      (s1_unfifo_awburst     ),
.s_axi_awlock       (s1_unfifo_awlock      ),
.s_axi_awcache      (s1_unfifo_awcache     ),
.s_axi_awprot       (s1_unfifo_awprot      ),
.s_axi_awqos        (4'd0          ),
.s_axi_awvalid      (s1_unfifo_awvalid     ),
.s_axi_awready      (s1_unfifo_awready     ),
.s_axi_wid          (s1_unfifo_wid         ),
.s_axi_wdata        (s1_unfifo_wdata       ),
.s_axi_wstrb        (s1_unfifo_wstrb       ),
.s_axi_wlast        (s1_unfifo_wlast       ),
.s_axi_wvalid       (s1_unfifo_wvalid      ),
.s_axi_wready       (s1_unfifo_wready      ),
.s_axi_bid          (s1_unfifo_bid         ),
.s_axi_bresp        (s1_unfifo_bresp       ),
.s_axi_bvalid       (s1_unfifo_bvalid      ),
.s_axi_bready       (s1_unfifo_bready      ),
.s_axi_arid         (s1_unfifo_arid        ),
.s_axi_araddr       (s1_unfifo_araddr      ),
.s_axi_arlen        (s1_unfifo_arlen       ),
.s_axi_arsize       (s1_unfifo_arsize      ),
.s_axi_arburst      (s1_unfifo_arburst     ),
.s_axi_arlock       (s1_unfifo_arlock      ),
.s_axi_arcache      (s1_unfifo_arcache     ),
.s_axi_arprot       (s1_unfifo_arprot      ),
.s_axi_arqos        (4'd0          ),
.s_axi_arvalid      (s1_unfifo_arvalid     ),
.s_axi_arready      (s1_unfifo_arready     ),
.s_axi_rid          (s1_unfifo_rid         ),
.s_axi_rdata        (s1_unfifo_rdata       ),
.s_axi_rresp        (s1_unfifo_rresp       ),
.s_axi_rlast        (s1_unfifo_rlast       ),
.s_axi_rvalid       (s1_unfifo_rvalid      ),
.s_axi_rready       (s1_unfifo_rready      ),

.m_axi_awid         (spi_s_awid        ),
.m_axi_awaddr       (spi_s_awaddr      ),
.m_axi_awlen        (spi_s_awlen       ),
.m_axi_awsize       (spi_s_awsize      ),
.m_axi_awburst      (spi_s_awburst     ),
.m_axi_awlock       (spi_s_awlock      ),
.m_axi_awcache      (spi_s_awcache     ),
.m_axi_awprot       (spi_s_awprot      ),
.m_axi_awqos        (4'd0          ),
.m_axi_awvalid      (spi_s_awvalid     ),
.m_axi_awready      (spi_s_awready     ),
.m_axi_wid          (spi_s_wid         ),
.m_axi_wdata        (spi_s_wdata       ),
.m_axi_wstrb        (spi_s_wstrb       ),
.m_axi_wlast        (spi_s_wlast       ),
.m_axi_wvalid       (spi_s_wvalid      ),
.m_axi_wready       (spi_s_wready      ),
.m_axi_bid          (spi_s_bid         ),
.m_axi_bresp        (spi_s_bresp       ),
.m_axi_bvalid       (spi_s_bvalid      ),
.m_axi_bready       (spi_s_bready      ),
.m_axi_arid         (spi_s_arid        ),
.m_axi_araddr       (spi_s_araddr      ),
.m_axi_arlen        (spi_s_arlen       ),
.m_axi_arsize       (spi_s_arsize      ),
.m_axi_arburst      (spi_s_arburst     ),
.m_axi_arlock       (spi_s_arlock      ),
.m_axi_arcache      (spi_s_arcache     ),
.m_axi_arprot       (spi_s_arprot      ),
.m_axi_arqos        (4'd0          ),
.m_axi_arvalid      (spi_s_arvalid     ),
.m_axi_arready      (spi_s_arready     ),
.m_axi_rid          (spi_s_rid         ),
.m_axi_rdata        (spi_s_rdata       ),
.m_axi_rresp        (spi_s_rresp       ),
.m_axi_rlast        (spi_s_rlast       ),
.m_axi_rvalid       (spi_s_rvalid      ),
.m_axi_rready       (spi_s_rready      )

);

axi_data_fifo_0 AXI_MUX_S2_FIFO
(
.aclk           (aclk),
.aresetn        (aresetn),

.s_axi_awid         (s2_unfifo_awid        ),
.s_axi_awaddr       (s2_unfifo_awaddr      ),
.s_axi_awlen        (s2_unfifo_awlen       ),
.s_axi_awsize       (s2_unfifo_awsize      ),
.s_axi_awburst      (s2_unfifo_awburst     ),
.s_axi_awlock       (s2_unfifo_awlock      ),
.s_axi_awcache      (s2_unfifo_awcache     ),
.s_axi_awprot       (s2_unfifo_awprot      ),
.s_axi_awqos        (4'd0          ),
.s_axi_awvalid      (s2_unfifo_awvalid     ),
.s_axi_awready      (s2_unfifo_awready     ),
.s_axi_wid          (s2_unfifo_wid         ),
.s_axi_wdata        (s2_unfifo_wdata       ),
.s_axi_wstrb        (s2_unfifo_wstrb       ),
.s_axi_wlast        (s2_unfifo_wlast       ),
.s_axi_wvalid       (s2_unfifo_wvalid      ),
.s_axi_wready       (s2_unfifo_wready      ),
.s_axi_bid          (s2_unfifo_bid         ),
.s_axi_bresp        (s2_unfifo_bresp       ),
.s_axi_bvalid       (s2_unfifo_bvalid      ),
.s_axi_bready       (s2_unfifo_bready      ),
.s_axi_arid         (s2_unfifo_arid        ),
.s_axi_araddr       (s2_unfifo_araddr      ),
.s_axi_arlen        (s2_unfifo_arlen       ),
.s_axi_arsize       (s2_unfifo_arsize      ),
.s_axi_arburst      (s2_unfifo_arburst     ),
.s_axi_arlock       (s2_unfifo_arlock      ),
.s_axi_arcache      (s2_unfifo_arcache     ),
.s_axi_arprot       (s2_unfifo_arprot      ),
.s_axi_arqos        (4'd0          ),
.s_axi_arvalid      (s2_unfifo_arvalid     ),
.s_axi_arready      (s2_unfifo_arready     ),
.s_axi_rid          (s2_unfifo_rid         ),
.s_axi_rdata        (s2_unfifo_rdata       ),
.s_axi_rresp        (s2_unfifo_rresp       ),
.s_axi_rlast        (s2_unfifo_rlast       ),
.s_axi_rvalid       (s2_unfifo_rvalid      ),
.s_axi_rready       (s2_unfifo_rready      ),

.m_axi_awid         (apb_s_awid        ),
.m_axi_awaddr       (apb_s_awaddr      ),
.m_axi_awlen        (apb_s_awlen       ),
.m_axi_awsize       (apb_s_awsize      ),
.m_axi_awburst      (apb_s_awburst     ),
.m_axi_awlock       (apb_s_awlock      ),
.m_axi_awcache      (apb_s_awcache     ),
.m_axi_awprot       (apb_s_awprot      ),
.m_axi_awqos        (4'd0          ),
.m_axi_awvalid      (apb_s_awvalid     ),
.m_axi_awready      (apb_s_awready     ),
.m_axi_wid          (apb_s_wid         ),
.m_axi_wdata        (apb_s_wdata       ),
.m_axi_wstrb        (apb_s_wstrb       ),
.m_axi_wlast        (apb_s_wlast       ),
.m_axi_wvalid       (apb_s_wvalid      ),
.m_axi_wready       (apb_s_wready      ),
.m_axi_bid          (apb_s_bid         ),
.m_axi_bresp        (apb_s_bresp       ),
.m_axi_bvalid       (apb_s_bvalid      ),
.m_axi_bready       (apb_s_bready      ),
.m_axi_arid         (apb_s_arid        ),
.m_axi_araddr       (apb_s_araddr      ),
.m_axi_arlen        (apb_s_arlen       ),
.m_axi_arsize       (apb_s_arsize      ),
.m_axi_arburst      (apb_s_arburst     ),
.m_axi_arlock       (apb_s_arlock      ),
.m_axi_arcache      (apb_s_arcache     ),
.m_axi_arprot       (apb_s_arprot      ),
.m_axi_arqos        (4'd0          ),
.m_axi_arvalid      (apb_s_arvalid     ),
.m_axi_arready      (apb_s_arready     ),
.m_axi_rid          (apb_s_rid         ),
.m_axi_rdata        (apb_s_rdata       ),
.m_axi_rresp        (apb_s_rresp       ),
.m_axi_rlast        (apb_s_rlast       ),
.m_axi_rvalid       (apb_s_rvalid      ),
.m_axi_rready       (apb_s_rready      )

);

axi_data_fifo_0 AXI_MUX_S3_FIFO
(
.aclk           (aclk),
.aresetn        (aresetn),

.s_axi_awid         (s3_unfifo_awid        ),
.s_axi_awaddr       (s3_unfifo_awaddr      ),
.s_axi_awlen        (s3_unfifo_awlen       ),
.s_axi_awsize       (s3_unfifo_awsize      ),
.s_axi_awburst      (s3_unfifo_awburst     ),
.s_axi_awlock       (s3_unfifo_awlock      ),
.s_axi_awcache      (s3_unfifo_awcache     ),
.s_axi_awprot       (s3_unfifo_awprot      ),
.s_axi_awqos        (4'd0          ),
.s_axi_awvalid      (s3_unfifo_awvalid     ),
.s_axi_awready      (s3_unfifo_awready     ),
.s_axi_wid          (s3_unfifo_wid         ),
.s_axi_wdata        (s3_unfifo_wdata       ),
.s_axi_wstrb        (s3_unfifo_wstrb       ),
.s_axi_wlast        (s3_unfifo_wlast       ),
.s_axi_wvalid       (s3_unfifo_wvalid      ),
.s_axi_wready       (s3_unfifo_wready      ),
.s_axi_bid          (s3_unfifo_bid         ),
.s_axi_bresp        (s3_unfifo_bresp       ),
.s_axi_bvalid       (s3_unfifo_bvalid      ),
.s_axi_bready       (s3_unfifo_bready      ),
.s_axi_arid         (s3_unfifo_arid        ),
.s_axi_araddr       (s3_unfifo_araddr      ),
.s_axi_arlen        (s3_unfifo_arlen       ),
.s_axi_arsize       (s3_unfifo_arsize      ),
.s_axi_arburst      (s3_unfifo_arburst     ),
.s_axi_arlock       (s3_unfifo_arlock      ),
.s_axi_arcache      (s3_unfifo_arcache     ),
.s_axi_arprot       (s3_unfifo_arprot      ),
.s_axi_arqos        (4'd0          ),
.s_axi_arvalid      (s3_unfifo_arvalid     ),
.s_axi_arready      (s3_unfifo_arready     ),
.s_axi_rid          (s3_unfifo_rid         ),
.s_axi_rdata        (s3_unfifo_rdata       ),
.s_axi_rresp        (s3_unfifo_rresp       ),
.s_axi_rlast        (s3_unfifo_rlast       ),
.s_axi_rvalid       (s3_unfifo_rvalid      ),
.s_axi_rready       (s3_unfifo_rready      ),

.m_axi_awid         (conf_s_awid        ),
.m_axi_awaddr       (conf_s_awaddr      ),
.m_axi_awlen        (conf_s_awlen       ),
.m_axi_awsize       (conf_s_awsize      ),
.m_axi_awburst      (conf_s_awburst     ),
.m_axi_awlock       (conf_s_awlock      ),
.m_axi_awcache      (conf_s_awcache     ),
.m_axi_awprot       (conf_s_awprot      ),
.m_axi_awqos        (4'd0          ),
.m_axi_awvalid      (conf_s_awvalid     ),
.m_axi_awready      (conf_s_awready     ),
.m_axi_wid          (conf_s_wid         ),
.m_axi_wdata        (conf_s_wdata       ),
.m_axi_wstrb        (conf_s_wstrb       ),
.m_axi_wlast        (conf_s_wlast       ),
.m_axi_wvalid       (conf_s_wvalid      ),
.m_axi_wready       (conf_s_wready      ),
.m_axi_bid          (conf_s_bid         ),
.m_axi_bresp        (conf_s_bresp       ),
.m_axi_bvalid       (conf_s_bvalid      ),
.m_axi_bready       (conf_s_bready      ),
.m_axi_arid         (conf_s_arid        ),
.m_axi_araddr       (conf_s_araddr      ),
.m_axi_arlen        (conf_s_arlen       ),
.m_axi_arsize       (conf_s_arsize      ),
.m_axi_arburst      (conf_s_arburst     ),
.m_axi_arlock       (conf_s_arlock      ),
.m_axi_arcache      (conf_s_arcache     ),
.m_axi_arprot       (conf_s_arprot      ),
.m_axi_arqos        (4'd0          ),
.m_axi_arvalid      (conf_s_arvalid     ),
.m_axi_arready      (conf_s_arready     ),
.m_axi_rid          (conf_s_rid         ),
.m_axi_rdata        (conf_s_rdata       ),
.m_axi_rresp        (conf_s_rresp       ),
.m_axi_rlast        (conf_s_rlast       ),
.m_axi_rvalid       (conf_s_rvalid      ),
.m_axi_rready       (conf_s_rready      )

);

axi_data_fifo_1 AXI_MUX_S4_FIFO
(
.aclk           (aclk),
.aresetn        (aresetn),

.s_axi_awid         (s4_unfifo_awid        ),
.s_axi_awaddr       (s4_unfifo_awaddr      ),
.s_axi_awlen        (s4_unfifo_awlen       ),
.s_axi_awsize       (s4_unfifo_awsize      ),
.s_axi_awburst      (s4_unfifo_awburst     ),
.s_axi_awlock       (s4_unfifo_awlock      ),
.s_axi_awcache      (s4_unfifo_awcache     ),
.s_axi_awprot       (s4_unfifo_awprot      ),
.s_axi_awqos        (4'd0          ),
.s_axi_awvalid      (s4_unfifo_awvalid     ),
.s_axi_awready      (s4_unfifo_awready     ),
.s_axi_wid          (s4_unfifo_wid         ),
.s_axi_wdata        (s4_unfifo_wdata       ),
.s_axi_wstrb        (s4_unfifo_wstrb       ),
.s_axi_wlast        (s4_unfifo_wlast       ),
.s_axi_wvalid       (s4_unfifo_wvalid      ),
.s_axi_wready       (s4_unfifo_wready      ),
.s_axi_bid          (s4_unfifo_bid         ),
.s_axi_bresp        (s4_unfifo_bresp       ),
.s_axi_bvalid       (s4_unfifo_bvalid      ),
.s_axi_bready       (s4_unfifo_bready      ),
.s_axi_arid         (s4_unfifo_arid        ),
.s_axi_araddr       (s4_unfifo_araddr      ),
.s_axi_arlen        (s4_unfifo_arlen       ),
.s_axi_arsize       (s4_unfifo_arsize      ),
.s_axi_arburst      (s4_unfifo_arburst     ),
.s_axi_arlock       (s4_unfifo_arlock      ),
.s_axi_arcache      (s4_unfifo_arcache     ),
.s_axi_arprot       (s4_unfifo_arprot      ),
.s_axi_arqos        (4'd0          ),
.s_axi_arvalid      (s4_unfifo_arvalid     ),
.s_axi_arready      (s4_unfifo_arready     ),
.s_axi_rid          (s4_unfifo_rid         ),
.s_axi_rdata        (s4_unfifo_rdata       ),
.s_axi_rresp        (s4_unfifo_rresp       ),
.s_axi_rlast        (s4_unfifo_rlast       ),
.s_axi_rvalid       (s4_unfifo_rvalid      ),
.s_axi_rready       (s4_unfifo_rready      ),

.m_axi_awid         (mac_s_awid        ),
.m_axi_awaddr       (mac_s_awaddr      ),
.m_axi_awlen        (mac_s_awlen       ),
.m_axi_awsize       (mac_s_awsize      ),
.m_axi_awburst      (mac_s_awburst     ),
.m_axi_awlock       (mac_s_awlock      ),
.m_axi_awcache      (mac_s_awcache     ),
.m_axi_awprot       (mac_s_awprot      ),
.m_axi_awqos        (4'd0          ),
.m_axi_awvalid      (mac_s_awvalid     ),
.m_axi_awready      (mac_s_awready     ),
.m_axi_wid          (mac_s_wid         ),
.m_axi_wdata        (mac_s_wdata       ),
.m_axi_wstrb        (mac_s_wstrb       ),
.m_axi_wlast        (mac_s_wlast       ),
.m_axi_wvalid       (mac_s_wvalid      ),
.m_axi_wready       (mac_s_wready      ),
.m_axi_bid          (mac_s_bid         ),
.m_axi_bresp        (mac_s_bresp       ),
.m_axi_bvalid       (mac_s_bvalid      ),
.m_axi_bready       (mac_s_bready      ),
.m_axi_arid         (mac_s_arid        ),
.m_axi_araddr       (mac_s_araddr      ),
.m_axi_arlen        (mac_s_arlen       ),
.m_axi_arsize       (mac_s_arsize      ),
.m_axi_arburst      (mac_s_arburst     ),
.m_axi_arlock       (mac_s_arlock      ),
.m_axi_arcache      (mac_s_arcache     ),
.m_axi_arprot       (mac_s_arprot      ),
.m_axi_arqos        (4'd0          ),
.m_axi_arvalid      (mac_s_arvalid     ),
.m_axi_arready      (mac_s_arready     ),
.m_axi_rid          (mac_s_rid         ),
.m_axi_rdata        (mac_s_rdata       ),
.m_axi_rresp        (mac_s_rresp       ),
.m_axi_rlast        (mac_s_rlast       ),
.m_axi_rvalid       (mac_s_rvalid      ),
.m_axi_rready       (mac_s_rready      )

);

axi_data_fifo_2 AXI_MUX_S5_FIFO
(
.aclk           (aclk),
.aresetn        (aresetn),

.s_axi_awid         (s5_unfifo_awid        ),
.s_axi_awaddr       (s5_unfifo_awaddr      ),
.s_axi_awlen        (s5_unfifo_awlen       ),
.s_axi_awsize       (s5_unfifo_awsize      ),
.s_axi_awburst      (s5_unfifo_awburst     ),
.s_axi_awlock       (s5_unfifo_awlock      ),
.s_axi_awcache      (s5_unfifo_awcache     ),
.s_axi_awprot       (s5_unfifo_awprot      ),
.s_axi_awqos        (4'd0          ),
.s_axi_awvalid      (s5_unfifo_awvalid     ),
.s_axi_awready      (s5_unfifo_awready     ),
.s_axi_wid          (s5_unfifo_wid         ),
.s_axi_wdata        (s5_unfifo_wdata       ),
.s_axi_wstrb        (s5_unfifo_wstrb       ),
.s_axi_wlast        (s5_unfifo_wlast       ),
.s_axi_wvalid       (s5_unfifo_wvalid      ),
.s_axi_wready       (s5_unfifo_wready      ),
.s_axi_bid          (s5_unfifo_bid         ),
.s_axi_bresp        (s5_unfifo_bresp       ),
.s_axi_bvalid       (s5_unfifo_bvalid      ),
.s_axi_bready       (s5_unfifo_bready      ),
.s_axi_arid         (s5_unfifo_arid        ),
.s_axi_araddr       (s5_unfifo_araddr      ),
.s_axi_arlen        (s5_unfifo_arlen       ),
.s_axi_arsize       (s5_unfifo_arsize      ),
.s_axi_arburst      (s5_unfifo_arburst     ),
.s_axi_arlock       (s5_unfifo_arlock      ),
.s_axi_arcache      (s5_unfifo_arcache     ),
.s_axi_arprot       (s5_unfifo_arprot      ),
.s_axi_arqos        (4'd0          ),
.s_axi_arvalid      (s5_unfifo_arvalid     ),
.s_axi_arready      (s5_unfifo_arready     ),
.s_axi_rid          (s5_unfifo_rid         ),
.s_axi_rdata        (s5_unfifo_rdata       ),
.s_axi_rresp        (s5_unfifo_rresp       ),
.s_axi_rlast        (s5_unfifo_rlast       ),
.s_axi_rvalid       (s5_unfifo_rvalid      ),
.s_axi_rready       (s5_unfifo_rready      ),

.m_axi_awid         (tft_s_awid        ),
.m_axi_awaddr       (tft_s_awaddr      ),
.m_axi_awlen        (tft_s_awlen       ),
.m_axi_awsize       (tft_s_awsize      ),
.m_axi_awburst      (tft_s_awburst     ),
.m_axi_awlock       (tft_s_awlock      ),
.m_axi_awcache      (tft_s_awcache     ),
.m_axi_awprot       (tft_s_awprot      ),
.m_axi_awqos        (4'd0          ),
.m_axi_awvalid      (tft_s_awvalid     ),
.m_axi_awready      (tft_s_awready     ),
.m_axi_wid          (tft_s_wid         ),
.m_axi_wdata        (tft_s_wdata       ),
.m_axi_wstrb        (tft_s_wstrb       ),
.m_axi_wlast        (tft_s_wlast       ),
.m_axi_wvalid       (tft_s_wvalid      ),
.m_axi_wready       (tft_s_wready      ),
.m_axi_bid          (tft_s_bid         ),
.m_axi_bresp        (tft_s_bresp       ),
.m_axi_bvalid       (tft_s_bvalid      ),
.m_axi_bready       (tft_s_bready      ),
.m_axi_arid         (tft_s_arid        ),
.m_axi_araddr       (tft_s_araddr      ),
.m_axi_arlen        (tft_s_arlen       ),
.m_axi_arsize       (tft_s_arsize      ),
.m_axi_arburst      (tft_s_arburst     ),
.m_axi_arlock       (tft_s_arlock      ),
.m_axi_arcache      (tft_s_arcache     ),
.m_axi_arprot       (tft_s_arprot      ),
.m_axi_arqos        (4'd0          ),
.m_axi_arvalid      (tft_s_arvalid     ),
.m_axi_arready      (tft_s_arready     ),
.m_axi_rid          (tft_s_rid         ),
.m_axi_rdata        (tft_s_rdata       ),
.m_axi_rresp        (tft_s_rresp       ),
.m_axi_rlast        (tft_s_rlast       ),
.m_axi_rvalid       (tft_s_rvalid      ),
.m_axi_rready       (tft_s_rready      )

);

axi_data_fifo_2 AXI_MUX_S6_FIFO
(
.aclk           (aclk),
.aresetn        (aresetn),

.s_axi_awid         (s6_unfifo_awid        ),
.s_axi_awaddr       (s6_unfifo_awaddr      ),
.s_axi_awlen        (s6_unfifo_awlen       ),
.s_axi_awsize       (s6_unfifo_awsize      ),
.s_axi_awburst      (s6_unfifo_awburst     ),
.s_axi_awlock       (s6_unfifo_awlock      ),
.s_axi_awcache      (s6_unfifo_awcache     ),
.s_axi_awprot       (s6_unfifo_awprot      ),
.s_axi_awqos        (4'd0          ),
.s_axi_awvalid      (s6_unfifo_awvalid     ),
.s_axi_awready      (s6_unfifo_awready     ),
.s_axi_wid          (s6_unfifo_wid         ),
.s_axi_wdata        (s6_unfifo_wdata       ),
.s_axi_wstrb        (s6_unfifo_wstrb       ),
.s_axi_wlast        (s6_unfifo_wlast       ),
.s_axi_wvalid       (s6_unfifo_wvalid      ),
.s_axi_wready       (s6_unfifo_wready      ),
.s_axi_bid          (s6_unfifo_bid         ),
.s_axi_bresp        (s6_unfifo_bresp       ),
.s_axi_bvalid       (s6_unfifo_bvalid      ),
.s_axi_bready       (s6_unfifo_bready      ),
.s_axi_arid         (s6_unfifo_arid        ),
.s_axi_araddr       (s6_unfifo_araddr      ),
.s_axi_arlen        (s6_unfifo_arlen       ),
.s_axi_arsize       (s6_unfifo_arsize      ),
.s_axi_arburst      (s6_unfifo_arburst     ),
.s_axi_arlock       (s6_unfifo_arlock      ),
.s_axi_arcache      (s6_unfifo_arcache     ),
.s_axi_arprot       (s6_unfifo_arprot      ),
.s_axi_arqos        (4'd0          ),
.s_axi_arvalid      (s6_unfifo_arvalid     ),
.s_axi_arready      (s6_unfifo_arready     ),
.s_axi_rid          (s6_unfifo_rid         ),
.s_axi_rdata        (s6_unfifo_rdata       ),
.s_axi_rresp        (s6_unfifo_rresp       ),
.s_axi_rlast        (s6_unfifo_rlast       ),
.s_axi_rvalid       (s6_unfifo_rvalid      ),
.s_axi_rready       (s6_unfifo_rready      ),

.m_axi_awid         (fb_write_s_awid        ),
.m_axi_awaddr       (fb_write_s_awaddr      ),
.m_axi_awlen        (fb_write_s_awlen       ),
.m_axi_awsize       (fb_write_s_awsize      ),
.m_axi_awburst      (fb_write_s_awburst     ),
.m_axi_awlock       (fb_write_s_awlock      ),
.m_axi_awcache      (fb_write_s_awcache     ),
.m_axi_awprot       (fb_write_s_awprot      ),
.m_axi_awqos        (4'd0          ),
.m_axi_awvalid      (fb_write_s_awvalid     ),
.m_axi_awready      (fb_write_s_awready     ),
.m_axi_wid          (fb_write_s_wid         ),
.m_axi_wdata        (fb_write_s_wdata       ),
.m_axi_wstrb        (fb_write_s_wstrb       ),
.m_axi_wlast        (fb_write_s_wlast       ),
.m_axi_wvalid       (fb_write_s_wvalid      ),
.m_axi_wready       (fb_write_s_wready      ),
.m_axi_bid          (fb_write_s_bid         ),
.m_axi_bresp        (fb_write_s_bresp       ),
.m_axi_bvalid       (fb_write_s_bvalid      ),
.m_axi_bready       (fb_write_s_bready      ),
.m_axi_arid         (fb_write_s_arid        ),
.m_axi_araddr       (fb_write_s_araddr      ),
.m_axi_arlen        (fb_write_s_arlen       ),
.m_axi_arsize       (fb_write_s_arsize      ),
.m_axi_arburst      (fb_write_s_arburst     ),
.m_axi_arlock       (fb_write_s_arlock      ),
.m_axi_arcache      (fb_write_s_arcache     ),
.m_axi_arprot       (fb_write_s_arprot      ),
.m_axi_arqos        (4'd0          ),
.m_axi_arvalid      (fb_write_s_arvalid     ),
.m_axi_arready      (fb_write_s_arready     ),
.m_axi_rid          (fb_write_s_rid         ),
.m_axi_rdata        (fb_write_s_rdata       ),
.m_axi_rresp        (fb_write_s_rresp       ),
.m_axi_rlast        (fb_write_s_rlast       ),
.m_axi_rvalid       (fb_write_s_rvalid      ),
.m_axi_rready       (fb_write_s_rready      )

);

axi_data_fifo_2 AXI_MUX_S7_FIFO
(
.aclk           (aclk),
.aresetn        (aresetn),

.s_axi_awid         (s7_unfifo_awid        ),
.s_axi_awaddr       (s7_unfifo_awaddr      ),
.s_axi_awlen        (s7_unfifo_awlen       ),
.s_axi_awsize       (s7_unfifo_awsize      ),
.s_axi_awburst      (s7_unfifo_awburst     ),
.s_axi_awlock       (s7_unfifo_awlock      ),
.s_axi_awcache      (s7_unfifo_awcache     ),
.s_axi_awprot       (s7_unfifo_awprot      ),
.s_axi_awqos        (4'd0          ),
.s_axi_awvalid      (s7_unfifo_awvalid     ),
.s_axi_awready      (s7_unfifo_awready     ),
.s_axi_wid          (s7_unfifo_wid         ),
.s_axi_wdata        (s7_unfifo_wdata       ),
.s_axi_wstrb        (s7_unfifo_wstrb       ),
.s_axi_wlast        (s7_unfifo_wlast       ),
.s_axi_wvalid       (s7_unfifo_wvalid      ),
.s_axi_wready       (s7_unfifo_wready      ),
.s_axi_bid          (s7_unfifo_bid         ),
.s_axi_bresp        (s7_unfifo_bresp       ),
.s_axi_bvalid       (s7_unfifo_bvalid      ),
.s_axi_bready       (s7_unfifo_bready      ),
.s_axi_arid         (s7_unfifo_arid        ),
.s_axi_araddr       (s7_unfifo_araddr      ),
.s_axi_arlen        (s7_unfifo_arlen       ),
.s_axi_arsize       (s7_unfifo_arsize      ),
.s_axi_arburst      (s7_unfifo_arburst     ),
.s_axi_arlock       (s7_unfifo_arlock      ),
.s_axi_arcache      (s7_unfifo_arcache     ),
.s_axi_arprot       (s7_unfifo_arprot      ),
.s_axi_arqos        (4'd0          ),
.s_axi_arvalid      (s7_unfifo_arvalid     ),
.s_axi_arready      (s7_unfifo_arready     ),
.s_axi_rid          (s7_unfifo_rid         ),
.s_axi_rdata        (s7_unfifo_rdata       ),
.s_axi_rresp        (s7_unfifo_rresp       ),
.s_axi_rlast        (s7_unfifo_rlast       ),
.s_axi_rvalid       (s7_unfifo_rvalid      ),
.s_axi_rready       (s7_unfifo_rready      ),

.m_axi_awid         (fb_read_s_awid        ),
.m_axi_awaddr       (fb_read_s_awaddr      ),
.m_axi_awlen        (fb_read_s_awlen       ),
.m_axi_awsize       (fb_read_s_awsize      ),
.m_axi_awburst      (fb_read_s_awburst     ),
.m_axi_awlock       (fb_read_s_awlock      ),
.m_axi_awcache      (fb_read_s_awcache     ),
.m_axi_awprot       (fb_read_s_awprot      ),
.m_axi_awqos        (4'd0          ),
.m_axi_awvalid      (fb_read_s_awvalid     ),
.m_axi_awready      (fb_read_s_awready     ),
.m_axi_wid          (fb_read_s_wid         ),
.m_axi_wdata        (fb_read_s_wdata       ),
.m_axi_wstrb        (fb_read_s_wstrb       ),
.m_axi_wlast        (fb_read_s_wlast       ),
.m_axi_wvalid       (fb_read_s_wvalid      ),
.m_axi_wready       (fb_read_s_wready      ),
.m_axi_bid          (fb_read_s_bid         ),
.m_axi_bresp        (fb_read_s_bresp       ),
.m_axi_bvalid       (fb_read_s_bvalid      ),
.m_axi_bready       (fb_read_s_bready      ),
.m_axi_arid         (fb_read_s_arid        ),
.m_axi_araddr       (fb_read_s_araddr      ),
.m_axi_arlen        (fb_read_s_arlen       ),
.m_axi_arsize       (fb_read_s_arsize      ),
.m_axi_arburst      (fb_read_s_arburst     ),
.m_axi_arlock       (fb_read_s_arlock      ),
.m_axi_arcache      (fb_read_s_arcache     ),
.m_axi_arprot       (fb_read_s_arprot      ),
.m_axi_arqos        (4'd0          ),
.m_axi_arvalid      (fb_read_s_arvalid     ),
.m_axi_arready      (fb_read_s_arready     ),
.m_axi_rid          (fb_read_s_rid         ),
.m_axi_rdata        (fb_read_s_rdata       ),
.m_axi_rresp        (fb_read_s_rresp       ),
.m_axi_rlast        (fb_read_s_rlast       ),
.m_axi_rvalid       (fb_read_s_rvalid      ),
.m_axi_rready       (fb_read_s_rready      )

);

axi_data_fifo_1 AXI_MUX_S8_FIFO
(
.aclk           (aclk),
.aresetn        (aresetn),

.s_axi_awid         (s8_unfifo_awid        ),
.s_axi_awaddr       (s8_unfifo_awaddr      ),
.s_axi_awlen        (s8_unfifo_awlen       ),
.s_axi_awsize       (s8_unfifo_awsize      ),
.s_axi_awburst      (s8_unfifo_awburst     ),
.s_axi_awlock       (s8_unfifo_awlock      ),
.s_axi_awcache      (s8_unfifo_awcache     ),
.s_axi_awprot       (s8_unfifo_awprot      ),
.s_axi_awqos        (4'd0          ),
.s_axi_awvalid      (s8_unfifo_awvalid     ),
.s_axi_awready      (s8_unfifo_awready     ),
.s_axi_wid          (s8_unfifo_wid         ),
.s_axi_wdata        (s8_unfifo_wdata       ),
.s_axi_wstrb        (s8_unfifo_wstrb       ),
.s_axi_wlast        (s8_unfifo_wlast       ),
.s_axi_wvalid       (s8_unfifo_wvalid      ),
.s_axi_wready       (s8_unfifo_wready      ),
.s_axi_bid          (s8_unfifo_bid         ),
.s_axi_bresp        (s8_unfifo_bresp       ),
.s_axi_bvalid       (s8_unfifo_bvalid      ),
.s_axi_bready       (s8_unfifo_bready      ),
.s_axi_arid         (s8_unfifo_arid        ),
.s_axi_araddr       (s8_unfifo_araddr      ),
.s_axi_arlen        (s8_unfifo_arlen       ),
.s_axi_arsize       (s8_unfifo_arsize      ),
.s_axi_arburst      (s8_unfifo_arburst     ),
.s_axi_arlock       (s8_unfifo_arlock      ),
.s_axi_arcache      (s8_unfifo_arcache     ),
.s_axi_arprot       (s8_unfifo_arprot      ),
.s_axi_arqos        (4'd0          ),
.s_axi_arvalid      (s8_unfifo_arvalid     ),
.s_axi_arready      (s8_unfifo_arready     ),
.s_axi_rid          (s8_unfifo_rid         ),
.s_axi_rdata        (s8_unfifo_rdata       ),
.s_axi_rresp        (s8_unfifo_rresp       ),
.s_axi_rlast        (s8_unfifo_rlast       ),
.s_axi_rvalid       (s8_unfifo_rvalid      ),
.s_axi_rready       (s8_unfifo_rready      ),

.m_axi_awid         (usb_s_awid        ),
.m_axi_awaddr       (usb_s_awaddr      ),
.m_axi_awlen        (usb_s_awlen     ),
.m_axi_awsize       (usb_s_awsize     ),
.m_axi_awburst      (usb_s_awburst     ),
.m_axi_awlock       (usb_s_awlock     ),
.m_axi_awcache      (usb_s_awcache     ),
.m_axi_awprot       (usb_s_awprot     ),
.m_axi_awqos        (          ),
.m_axi_awvalid      (usb_s_awvalid     ),
.m_axi_awready      (usb_s_awready     ),
.m_axi_wid          (usb_s_wid         ),
.m_axi_wdata        (usb_s_wdata       ),
.m_axi_wstrb        (usb_s_wstrb       ),
.m_axi_wlast        (usb_s_wlast       ),
.m_axi_wvalid       (usb_s_wvalid      ),
.m_axi_wready       (usb_s_wready      ),
.m_axi_bid          (usb_s_bid         ),
.m_axi_bresp        (usb_s_bresp       ),
.m_axi_bvalid       (usb_s_bvalid      ),
.m_axi_bready       (usb_s_bready      ),
.m_axi_arid         (usb_s_arid        ),
.m_axi_araddr       (usb_s_araddr      ),
.m_axi_arlen        (usb_s_arlen       ),
.m_axi_arsize       (usb_s_arsize    ),
.m_axi_arburst      (usb_s_arburst    ),
.m_axi_arlock       (usb_s_arlock    ),
.m_axi_arcache      (usb_s_arcache    ),
.m_axi_arprot       (usb_s_arprot    ),
.m_axi_arqos        (        ),
.m_axi_arvalid      (usb_s_arvalid     ),
.m_axi_arready      (usb_s_arready     ),
.m_axi_rid          (usb_s_rid         ),
.m_axi_rdata        (usb_s_rdata       ),
.m_axi_rresp        (usb_s_rresp       ),
.m_axi_rlast        (usb_s_rlast       ),
.m_axi_rvalid       (usb_s_rvalid      ),
.m_axi_rready       (usb_s_rready      )

);

axi_protocol_converter_0 usb_protocol_converter (
  .aclk(aclk),                    // input  wire aclk
  .aresetn(aresetn),              // input  wire aresetn

  .s_axi_awid(usb_s_awid),
  .s_axi_awaddr(usb_s_awaddr),    // input  wire [31 : 0] s_axi_awaddr
  .s_axi_awlen(usb_s_awlen),      // input  wire [3 : 0] s_axi_awlen
  .s_axi_awsize(usb_s_awsize),    // input  wire [2 : 0] s_axi_awsize
  .s_axi_awburst(usb_s_awburst),  // input  wire [1 : 0] s_axi_awburst
  .s_axi_awlock(usb_s_awlock),    // input  wire [1 : 0] s_axi_awlock
  .s_axi_awcache(usb_s_awcache),  // input  wire [3 : 0] s_axi_awcache
  .s_axi_awprot(usb_s_awprot),    // input  wire [2 : 0] s_axi_awprot
  .s_axi_awqos(4'b0),
  .s_axi_awvalid(usb_s_awvalid),  // input  wire s_axi_awvalid
  .s_axi_awready(usb_s_awready),  // output wire s_axi_awready
  .s_axi_wid(usb_s_wid),
  .s_axi_wdata(usb_s_wdata),      // input  wire [31 : 0] s_axi_wdata
  .s_axi_wstrb(usb_s_wstrb),      // input  wire [3 : 0] s_axi_wstrb
  .s_axi_wlast(usb_s_wlast),      // input  wire s_axi_wlast
  .s_axi_wvalid(usb_s_wvalid),    // input  wire s_axi_wvalid
  .s_axi_wready(usb_s_wready),    // output wire s_axi_wready
  .s_axi_bid(usb_s_bid),
  .s_axi_bresp(usb_s_bresp),      // output wire [1 : 0] s_axi_bresp
  .s_axi_bvalid(usb_s_bvalid),    // output wire s_axi_bvalid
  .s_axi_bready(usb_s_bready),    // input  wire s_axi_bready
  .s_axi_arid(usb_s_arid),
  .s_axi_araddr(usb_s_araddr),    // input  wire [31 : 0] s_axi_araddr
  .s_axi_arlen(usb_s_arlen),      // input  wire [3 : 0] s_axi_arlen
  .s_axi_arsize(usb_s_arsize),    // input  wire [2 : 0] s_axi_arsize
  .s_axi_arburst(usb_s_arburst),  // input  wire [1 : 0] s_axi_arburst
  .s_axi_arlock(usb_s_arlock),    // input  wire [1 : 0] s_axi_arlock
  .s_axi_arcache(usb_s_arcache),  // input  wire [3 : 0] s_axi_arcache
  .s_axi_arprot(usb_s_arprot),    // input  wire [2 : 0] s_axi_arprot
  .s_axi_arvalid(usb_s_arvalid),  // input  wire s_axi_arvalid
  .s_axi_arready(usb_s_arready),  // output wire s_axi_arready
  .s_axi_rid(usb_s_rid),
  .s_axi_rdata(usb_s_rdata),      // output wire [31 : 0] s_axi_rdata
  .s_axi_rresp(usb_s_rresp),      // output wire [1 : 0] s_axi_rresp
  .s_axi_rlast(usb_s_rlast),      // output wire s_axi_rlast
  .s_axi_rvalid(usb_s_rvalid),    // output wire s_axi_rvalid
  .s_axi_rready(usb_s_rready),    // input  wire s_axi_rready


  .m_axi_awaddr(usb_cfg_awaddr),    // output wire [31 : 0] m_axi_awaddr
  .m_axi_awprot(),    // output wire [2 : 0] m_axi_awprot
  .m_axi_awvalid(usb_cfg_awvalid),  // output wire m_axi_awvalid
  .m_axi_awready(usb_cfg_awready),  // input  wire m_axi_awready
  .m_axi_wdata(usb_cfg_wdata),      // output wire [31 : 0] m_axi_wdata
  .m_axi_wstrb(usb_cfg_wstrb),      // output wire [3 : 0] m_axi_wstrb
  .m_axi_wvalid(usb_cfg_wvalid),    // output wire m_axi_wvalid
  .m_axi_wready(usb_cfg_wready),    // input  wire m_axi_wready
  .m_axi_bresp(usb_cfg_bresp),      // input  wire [1 : 0] m_axi_bresp
  .m_axi_bvalid(usb_cfg_bvalid),    // input  wire m_axi_bvalid
  .m_axi_bready(usb_cfg_bready),    // output wire m_axi_bready
  .m_axi_araddr(usb_cfg_araddr),    // output wire [31 : 0] m_axi_araddr
  .m_axi_arprot( ),    // output wire [2 : 0] m_axi_arprot
  .m_axi_arvalid(usb_cfg_arvalid),  // output wire m_axi_arvalid
  .m_axi_arready(usb_cfg_arready),  // input  wire m_axi_arready
  .m_axi_rdata(usb_cfg_rdata),      // input  wire [31 : 0] m_axi_rdata
  .m_axi_rresp(usb_cfg_rresp),      // input  wire [1 : 0] m_axi_rresp
  .m_axi_rvalid(usb_cfg_rvalid),    // input  wire m_axi_rvalid
  .m_axi_rready(usb_cfg_rready)    // output wire m_axi_rready

);

usb_clock_converter USB_CLK_CONV (
    .m_axi_aclk(UTMI_clk),
    .m_axi_aresetn(usb_rst),

    .s_axi_aclk(aclk),
    .s_axi_aresetn(aresetn),

    .s_axi_awaddr     (usb_cfg_awaddr          ),
    .s_axi_awprot     (3'b0          ),
    .s_axi_awvalid    (usb_cfg_awvalid         ),
    .s_axi_awready    (usb_cfg_awready         ),
    .s_axi_wdata      (usb_cfg_wdata           ),
    .s_axi_wstrb      (usb_cfg_wstrb           ),
    .s_axi_wvalid     (usb_cfg_wvalid          ),
    .s_axi_wready     (usb_cfg_wready          ),
    .s_axi_bresp      (usb_cfg_bresp           ),
    .s_axi_bvalid     (usb_cfg_bvalid          ),
    .s_axi_bready     (usb_cfg_bready          ),
    .s_axi_araddr     (usb_cfg_araddr          ),
    .s_axi_arprot     (3'b0          ),
    .s_axi_arvalid    (usb_cfg_arvalid         ),
    .s_axi_arready    (usb_cfg_arready         ),
    .s_axi_rdata      (usb_cfg_rdata           ),
    .s_axi_rresp      (usb_cfg_rresp           ),
    .s_axi_rvalid     (usb_cfg_rvalid          ),
    .s_axi_rready     (usb_cfg_rready          ),

    .m_axi_awaddr     (usb_cfg_converted_awaddr    ),
    .m_axi_awvalid    (usb_cfg_converted_awvalid   ),
    .m_axi_awready    (usb_cfg_converted_awready   ),
    .m_axi_wdata      (usb_cfg_converted_wdata     ),
    .m_axi_wstrb      (usb_cfg_converted_wstrb     ),
    .m_axi_wvalid     (usb_cfg_converted_wvalid    ),
    .m_axi_wready     (usb_cfg_converted_wready    ),
    .m_axi_bresp      (usb_cfg_converted_bresp     ),
    .m_axi_bvalid     (usb_cfg_converted_bvalid    ),
    .m_axi_bready     (usb_cfg_converted_bready    ),
    .m_axi_araddr     (usb_cfg_converted_araddr    ),
    .m_axi_arvalid    (usb_cfg_converted_arvalid   ),
    .m_axi_arready    (usb_cfg_converted_arready   ),
    .m_axi_rdata      (usb_cfg_converted_rdata     ),
    .m_axi_rresp      (usb_cfg_converted_rresp     ),
    .m_axi_rvalid     (usb_cfg_converted_rvalid    ),
    .m_axi_rready     (usb_cfg_converted_rready    )
);

axi_clock_converter_0 FB_READ_CLK_CONV (
    .s_axi_awid       (fb_read_s_awid            ),	
    .s_axi_awaddr     (fb_read_s_awaddr          ),
    .s_axi_awlen      (fb_read_s_awlen           ),
    .s_axi_awsize     (fb_read_s_awsize          ),
    .s_axi_awburst    (fb_read_s_awburst         ),
    .s_axi_awlock     (fb_read_s_awlock          ),
    .s_axi_awcache    (fb_read_s_awcache         ),
    .s_axi_awprot     (fb_read_s_awprot          ),
    .s_axi_awvalid    (fb_read_s_awvalid         ),
    .s_axi_awready    (fb_read_s_awready         ),
    .s_axi_wid        (fb_read_s_wid             ),
    .s_axi_wdata      (fb_read_s_wdata           ),
    .s_axi_wstrb      (fb_read_s_wstrb           ),
    .s_axi_wlast      (fb_read_s_wlast           ),
    .s_axi_wvalid     (fb_read_s_wvalid          ),
    .s_axi_wready     (fb_read_s_wready          ),
    .s_axi_bid        (fb_read_s_bid             ),
    .s_axi_bresp      (fb_read_s_bresp           ),
    .s_axi_bvalid     (fb_read_s_bvalid          ),
    .s_axi_bready     (fb_read_s_bready          ),
    .s_axi_arid       (fb_read_s_arid            ),
    .s_axi_araddr     (fb_read_s_araddr          ),
    .s_axi_arlen      (fb_read_s_arlen           ),
    .s_axi_arsize     (fb_read_s_arsize          ),
    .s_axi_arburst    (fb_read_s_arburst         ),
    .s_axi_arlock     (fb_read_s_arlock          ),
    .s_axi_arcache    (fb_read_s_arcache         ),
    .s_axi_arprot     (fb_read_s_arprot          ),
    .s_axi_arvalid    (fb_read_s_arvalid         ),
    .s_axi_arready    (fb_read_s_arready         ),
    .s_axi_rid        (fb_read_s_rid             ),
    .s_axi_rdata      (fb_read_s_rdata           ),
    .s_axi_rresp      (fb_read_s_rresp           ),
    .s_axi_rlast      (fb_read_s_rlast           ),
    .s_axi_rvalid     (fb_read_s_rvalid          ),
    .s_axi_rready     (fb_read_s_rready          ),

    .s_axi_arqos      (4'b0               ),
    .s_axi_awqos      (4'b0               ),

    .s_axi_aclk	      (aclk            ),
    .s_axi_aresetn    (aresetn         ),
    
    .m_axi_awid       (fb_read_s_100M_awid      ),
    .m_axi_awaddr     (fb_read_s_100M_awaddr    ),
    .m_axi_awlen      (fb_read_s_100M_awlen     ),
    .m_axi_awsize     (fb_read_s_100M_awsize    ),
    .m_axi_awburst    (fb_read_s_100M_awburst   ),
    .m_axi_awlock     (fb_read_s_100M_awlock    ),
    .m_axi_awcache    (fb_read_s_100M_awcache   ),
    .m_axi_awprot     (fb_read_s_100M_awprot    ),
    .m_axi_awvalid    (fb_read_s_100M_awvalid   ),
    .m_axi_awready    (fb_read_s_100M_awready   ),
    .m_axi_wid        (fb_read_s_100M_wid       ),
    .m_axi_wdata      (fb_read_s_100M_wdata     ),
    .m_axi_wstrb      (fb_read_s_100M_wstrb     ),
    .m_axi_wlast      (fb_read_s_100M_wlast     ),
    .m_axi_wvalid     (fb_read_s_100M_wvalid    ),
    .m_axi_wready     (fb_read_s_100M_wready    ),
    .m_axi_bid        (fb_read_s_100M_bid       ),
    .m_axi_bresp      (fb_read_s_100M_bresp     ),
    .m_axi_bvalid     (fb_read_s_100M_bvalid    ),
    .m_axi_bready     (fb_read_s_100M_bready    ),
    .m_axi_arid       (fb_read_s_100M_arid      ),
    .m_axi_araddr     (fb_read_s_100M_araddr    ),
    .m_axi_arlen      (fb_read_s_100M_arlen     ),
    .m_axi_arsize     (fb_read_s_100M_arsize    ),
    .m_axi_arburst    (fb_read_s_100M_arburst   ),
    .m_axi_arlock     (fb_read_s_100M_arlock    ),
    .m_axi_arcache    (fb_read_s_100M_arcache   ),
    .m_axi_arprot     (fb_read_s_100M_arprot    ),
    .m_axi_arvalid    (fb_read_s_100M_arvalid   ),
    .m_axi_arready    (fb_read_s_100M_arready   ),
    .m_axi_rid        (fb_read_s_100M_rid       ),
    .m_axi_rdata      (fb_read_s_100M_rdata     ),
    .m_axi_rresp      (fb_read_s_100M_rresp     ),
    .m_axi_rlast      (fb_read_s_100M_rlast     ),
    .m_axi_rvalid     (fb_read_s_100M_rvalid    ),
    .m_axi_rready     (fb_read_s_100M_rready    ),

    .m_axi_arqos      (                   ),
    .m_axi_awqos      (                   ),

    .m_axi_aclk	      (clk_100               ),
    .m_axi_aresetn    (aresetn            )
);

axi_clock_converter_0 FB_WRITE_CLK_CONV (
    .s_axi_awid       (fb_write_s_awid            ),	
    .s_axi_awaddr     (fb_write_s_awaddr          ),
    .s_axi_awlen      (fb_write_s_awlen           ),
    .s_axi_awsize     (fb_write_s_awsize          ),
    .s_axi_awburst    (fb_write_s_awburst         ),
    .s_axi_awlock     (fb_write_s_awlock          ),
    .s_axi_awcache    (fb_write_s_awcache         ),
    .s_axi_awprot     (fb_write_s_awprot          ),
    .s_axi_awvalid    (fb_write_s_awvalid         ),
    .s_axi_awready    (fb_write_s_awready         ),
    .s_axi_wid        (fb_write_s_wid             ),
    .s_axi_wdata      (fb_write_s_wdata           ),
    .s_axi_wstrb      (fb_write_s_wstrb           ),
    .s_axi_wlast      (fb_write_s_wlast           ),
    .s_axi_wvalid     (fb_write_s_wvalid          ),
    .s_axi_wready     (fb_write_s_wready          ),
    .s_axi_bid        (fb_write_s_bid             ),
    .s_axi_bresp      (fb_write_s_bresp           ),
    .s_axi_bvalid     (fb_write_s_bvalid          ),
    .s_axi_bready     (fb_write_s_bready          ),
    .s_axi_arid       (fb_write_s_arid            ),
    .s_axi_araddr     (fb_write_s_araddr          ),
    .s_axi_arlen      (fb_write_s_arlen           ),
    .s_axi_arsize     (fb_write_s_arsize          ),
    .s_axi_arburst    (fb_write_s_arburst         ),
    .s_axi_arlock     (fb_write_s_arlock          ),
    .s_axi_arcache    (fb_write_s_arcache         ),
    .s_axi_arprot     (fb_write_s_arprot          ),
    .s_axi_arvalid    (fb_write_s_arvalid         ),
    .s_axi_arready    (fb_write_s_arready         ),
    .s_axi_rid        (fb_write_s_rid             ),
    .s_axi_rdata      (fb_write_s_rdata           ),
    .s_axi_rresp      (fb_write_s_rresp           ),
    .s_axi_rlast      (fb_write_s_rlast           ),
    .s_axi_rvalid     (fb_write_s_rvalid          ),
    .s_axi_rready     (fb_write_s_rready          ),

    .s_axi_arqos      (4'b0               ),
    .s_axi_awqos      (4'b0               ),

    .s_axi_aclk	      (aclk            ),
    .s_axi_aresetn    (aresetn         ),
    
    .m_axi_awid       (fb_write_s_100M_awid      ),
    .m_axi_awaddr     (fb_write_s_100M_awaddr    ),
    .m_axi_awlen      (fb_write_s_100M_awlen     ),
    .m_axi_awsize     (fb_write_s_100M_awsize    ),
    .m_axi_awburst    (fb_write_s_100M_awburst   ),
    .m_axi_awlock     (fb_write_s_100M_awlock    ),
    .m_axi_awcache    (fb_write_s_100M_awcache   ),
    .m_axi_awprot     (fb_write_s_100M_awprot    ),
    .m_axi_awvalid    (fb_write_s_100M_awvalid   ),
    .m_axi_awready    (fb_write_s_100M_awready   ),
    .m_axi_wid        (fb_write_s_100M_wid       ),
    .m_axi_wdata      (fb_write_s_100M_wdata     ),
    .m_axi_wstrb      (fb_write_s_100M_wstrb     ),
    .m_axi_wlast      (fb_write_s_100M_wlast     ),
    .m_axi_wvalid     (fb_write_s_100M_wvalid    ),
    .m_axi_wready     (fb_write_s_100M_wready    ),
    .m_axi_bid        (fb_write_s_100M_bid       ),
    .m_axi_bresp      (fb_write_s_100M_bresp     ),
    .m_axi_bvalid     (fb_write_s_100M_bvalid    ),
    .m_axi_bready     (fb_write_s_100M_bready    ),
    .m_axi_arid       (fb_write_s_100M_arid      ),
    .m_axi_araddr     (fb_write_s_100M_araddr    ),
    .m_axi_arlen      (fb_write_s_100M_arlen     ),
    .m_axi_arsize     (fb_write_s_100M_arsize    ),
    .m_axi_arburst    (fb_write_s_100M_arburst   ),
    .m_axi_arlock     (fb_write_s_100M_arlock    ),
    .m_axi_arcache    (fb_write_s_100M_arcache   ),
    .m_axi_arprot     (fb_write_s_100M_arprot    ),
    .m_axi_arvalid    (fb_write_s_100M_arvalid   ),
    .m_axi_arready    (fb_write_s_100M_arready   ),
    .m_axi_rid        (fb_write_s_100M_rid       ),
    .m_axi_rdata      (fb_write_s_100M_rdata     ),
    .m_axi_rresp      (fb_write_s_100M_rresp     ),
    .m_axi_rlast      (fb_write_s_100M_rlast     ),
    .m_axi_rvalid     (fb_write_s_100M_rvalid    ),
    .m_axi_rready     (fb_write_s_100M_rready    ),

    .m_axi_arqos      (                   ),
    .m_axi_awqos      (                   ),

    .m_axi_aclk	      (clk_100               ),
    .m_axi_aresetn    (aresetn            )
);

axi_protocol_converter_0 fb_read_protocol_converter (
    .aclk(clk_100),                    // input  wire aclk
  .aresetn(aresetn),              // input  wire aresetn

  .s_axi_awaddr(fb_read_s_100M_awaddr),    // input  wire [31 : 0] s_axi_awaddr
  .s_axi_awlen(fb_read_s_100M_awlen),      // input  wire [3 : 0] s_axi_awlen
  .s_axi_awsize(fb_read_s_100M_awsize),    // input  wire [2 : 0] s_axi_awsize
  .s_axi_awburst(fb_read_s_100M_awburst),  // input  wire [1 : 0] s_axi_awburst
  .s_axi_awlock(fb_read_s_100M_awlock),    // input  wire [1 : 0] s_axi_awlock
  .s_axi_awcache(fb_read_s_100M_awcache),  // input  wire [3 : 0] s_axi_awcache
  .s_axi_awprot(fb_read_s_100M_awprot),    // input  wire [2 : 0] s_axi_awprot
  .s_axi_awvalid(fb_read_s_100M_awvalid),  // input  wire s_axi_awvalid
  .s_axi_awready(fb_read_s_100M_awready),  // output wire s_axi_awready
  .s_axi_wdata(fb_read_s_100M_wdata),      // input  wire [31 : 0] s_axi_wdata
  .s_axi_wstrb(fb_read_s_100M_wstrb),      // input  wire [3 : 0] s_axi_wstrb
  .s_axi_wlast(fb_read_s_100M_wlast),      // input  wire s_axi_wlast
  .s_axi_wvalid(fb_read_s_100M_wvalid),    // input  wire s_axi_wvalid
  .s_axi_wready(fb_read_s_100M_wready),    // output wire s_axi_wready
  .s_axi_bresp(fb_read_s_100M_bresp),      // output wire [1 : 0] s_axi_bresp
  .s_axi_bvalid(fb_read_s_100M_bvalid),    // output wire s_axi_bvalid
  .s_axi_bready(fb_read_s_100M_bready),    // input  wire s_axi_bready
  .s_axi_araddr(fb_read_s_100M_araddr),    // input  wire [31 : 0] s_axi_araddr
  .s_axi_arlen(fb_read_s_100M_arlen),      // input  wire [3 : 0] s_axi_arlen
  .s_axi_arsize(fb_read_s_100M_arsize),    // input  wire [2 : 0] s_axi_arsize
  .s_axi_arburst(fb_read_s_100M_arburst),  // input  wire [1 : 0] s_axi_arburst
  .s_axi_arlock(fb_read_s_100M_arlock),    // input  wire [1 : 0] s_axi_arlock
  .s_axi_arcache(fb_read_s_100M_arcache),  // input  wire [3 : 0] s_axi_arcache
  .s_axi_arprot(fb_read_s_100M_arprot),    // input  wire [2 : 0] s_axi_arprot
  .s_axi_arvalid(fb_read_s_100M_arvalid),  // input  wire s_axi_arvalid
  .s_axi_arready(fb_read_s_100M_arready),  // output wire s_axi_arready
  .s_axi_rdata(fb_read_s_100M_rdata),      // output wire [31 : 0] s_axi_rdata
  .s_axi_rresp(fb_read_s_100M_rresp),      // output wire [1 : 0] s_axi_rresp
  .s_axi_rlast(fb_read_s_100M_rlast),      // output wire s_axi_rlast
  .s_axi_rvalid(fb_read_s_100M_rvalid),    // output wire s_axi_rvalid
  .s_axi_rready(fb_read_s_100M_rready),    // input  wire s_axi_rready


  .m_axi_awaddr(fb_rd_axi4lite_AWADDR),    // output wire [31 : 0] m_axi_awaddr
  .m_axi_awprot(),    // output wire [2 : 0] m_axi_awprot
  .m_axi_awvalid(fb_rd_axi4lite_AWVALID),  // output wire m_axi_awvalid
  .m_axi_awready(fb_rd_axi4lite_AWREADY),  // input  wire m_axi_awready
  .m_axi_wdata(fb_rd_axi4lite_WDATA),      // output wire [31 : 0] m_axi_wdata
  .m_axi_wstrb(fb_rd_axi4lite_WSTRB),      // output wire [3 : 0] m_axi_wstrb
  .m_axi_wvalid(fb_rd_axi4lite_WVALID),    // output wire m_axi_wvalid
  .m_axi_wready(fb_rd_axi4lite_WREADY),    // input  wire m_axi_wready
  .m_axi_bresp(fb_rd_axi4lite_BRESP),      // input  wire [1 : 0] m_axi_bresp
  .m_axi_bvalid(fb_rd_axi4lite_BVALID),    // input  wire m_axi_bvalid
  .m_axi_bready(fb_rd_axi4lite_BREADY),    // output wire m_axi_bready
  .m_axi_araddr(fb_rd_axi4lite_ARADDR),    // output wire [31 : 0] m_axi_araddr
  .m_axi_arprot( ),    // output wire [2 : 0] m_axi_arprot
  .m_axi_arvalid(fb_rd_axi4lite_ARVALID),  // output wire m_axi_arvalid
  .m_axi_arready(fb_rd_axi4lite_ARREADY),  // input  wire m_axi_arready
  .m_axi_rdata(fb_rd_axi4lite_RDATA),      // input  wire [31 : 0] m_axi_rdata
  .m_axi_rresp(fb_rd_axi4lite_RRESP),      // input  wire [1 : 0] m_axi_rresp
  .m_axi_rvalid(fb_rd_axi4lite_RVALID),    // input  wire m_axi_rvalid
  .m_axi_rready(fb_rd_axi4lite_RREADY),    // output wire m_axi_rready

  .s_axi_awqos(4'b0),      // input  wire [3 : 0] s_axi_awqos
  .s_axi_arqos(4'b0)      // input  wire [3 : 0] s_axi_arqos
);

axi_protocol_converter_0 fb_write_converter (
  .aclk(clk_100),                    // input  wire aclk
  .aresetn(aresetn),              // input  wire aresetn

  .s_axi_awaddr(fb_write_s_100M_awaddr),    // input  wire [31 : 0] s_axi_awaddr
  .s_axi_awlen(fb_write_s_100M_awlen),      // input  wire [3 : 0] s_axi_awlen
  .s_axi_awsize(fb_write_s_100M_awsize),    // input  wire [2 : 0] s_axi_awsize
  .s_axi_awburst(fb_write_s_100M_awburst),  // input  wire [1 : 0] s_axi_awburst
  .s_axi_awlock(fb_write_s_100M_awlock),    // input  wire [1 : 0] s_axi_awlock
  .s_axi_awcache(fb_write_s_100M_awcache),  // input  wire [3 : 0] s_axi_awcache
  .s_axi_awprot(fb_write_s_100M_awprot),    // input  wire [2 : 0] s_axi_awprot
  .s_axi_awvalid(fb_write_s_100M_awvalid),  // input  wire s_axi_awvalid
  .s_axi_awready(fb_write_s_100M_awready),  // output wire s_axi_awready
  .s_axi_wdata(fb_write_s_100M_wdata),      // input  wire [31 : 0] s_axi_wdata
  .s_axi_wstrb(fb_write_s_100M_wstrb),      // input  wire [3 : 0] s_axi_wstrb
  .s_axi_wlast(fb_write_s_100M_wlast),      // input  wire s_axi_wlast
  .s_axi_wvalid(fb_write_s_100M_wvalid),    // input  wire s_axi_wvalid
  .s_axi_wready(fb_write_s_100M_wready),    // output wire s_axi_wready
  .s_axi_bresp(fb_write_s_100M_bresp),      // output wire [1 : 0] s_axi_bresp
  .s_axi_bvalid(fb_write_s_100M_bvalid),    // output wire s_axi_bvalid
  .s_axi_bready(fb_write_s_100M_bready),    // input  wire s_axi_bready
  .s_axi_araddr(fb_write_s_100M_araddr),    // input  wire [31 : 0] s_axi_araddr
  .s_axi_arlen(fb_write_s_100M_arlen),      // input  wire [3 : 0] s_axi_arlen
  .s_axi_arsize(fb_write_s_100M_arsize),    // input  wire [2 : 0] s_axi_arsize
  .s_axi_arburst(fb_write_s_100M_arburst),  // input  wire [1 : 0] s_axi_arburst
  .s_axi_arlock(fb_write_s_100M_arlock),    // input  wire [1 : 0] s_axi_arlock
  .s_axi_arcache(fb_write_s_100M_arcache),  // input  wire [3 : 0] s_axi_arcache
  .s_axi_arprot(fb_write_s_100M_arprot),    // input  wire [2 : 0] s_axi_arprot
  .s_axi_arvalid(fb_write_s_100M_arvalid),  // input  wire s_axi_arvalid
  .s_axi_arready(fb_write_s_100M_arready),  // output wire s_axi_arready
  .s_axi_rdata(fb_write_s_100M_rdata),      // output wire [31 : 0] s_axi_rdata
  .s_axi_rresp(fb_write_s_100M_rresp),      // output wire [1 : 0] s_axi_rresp
  .s_axi_rlast(fb_write_s_100M_rlast),      // output wire s_axi_rlast
  .s_axi_rvalid(fb_write_s_100M_rvalid),    // output wire s_axi_rvalid
  .s_axi_rready(fb_write_s_100M_rready),    // input  wire s_axi_rready


  .m_axi_awaddr(fb_wr_axi4lite_AWADDR),    // output wire [31 : 0] m_axi_awaddr
  .m_axi_awprot(),    // output wire [2 : 0] m_axi_awprot
  .m_axi_awvalid(fb_wr_axi4lite_AWVALID),  // output wire m_axi_awvalid
  .m_axi_awready(fb_wr_axi4lite_AWREADY),  // input  wire m_axi_awready
  .m_axi_wdata(fb_wr_axi4lite_WDATA),      // output wire [31 : 0] m_axi_wdata
  .m_axi_wstrb(fb_wr_axi4lite_WSTRB),      // output wire [3 : 0] m_axi_wstrb
  .m_axi_wvalid(fb_wr_axi4lite_WVALID),    // output wire m_axi_wvalid
  .m_axi_wready(fb_wr_axi4lite_WREADY),    // input  wire m_axi_wready
  .m_axi_bresp(fb_wr_axi4lite_BRESP),      // input  wire [1 : 0] m_axi_bresp
  .m_axi_bvalid(fb_wr_axi4lite_BVALID),    // input  wire m_axi_bvalid
  .m_axi_bready(fb_wr_axi4lite_BREADY),    // output wire m_axi_bready
  .m_axi_araddr(fb_wr_axi4lite_ARADDR),    // output wire [31 : 0] m_axi_araddr
  .m_axi_arprot( ),    // output wire [2 : 0] m_axi_arprot
  .m_axi_arvalid(fb_wr_axi4lite_ARVALID),  // output wire m_axi_arvalid
  .m_axi_arready(fb_wr_axi4lite_ARREADY),  // input  wire m_axi_arready
  .m_axi_rdata(fb_wr_axi4lite_RDATA),      // input  wire [31 : 0] m_axi_rdata
  .m_axi_rresp(fb_wr_axi4lite_RRESP),      // input  wire [1 : 0] m_axi_rresp
  .m_axi_rvalid(fb_wr_axi4lite_RVALID),    // input  wire m_axi_rvalid
  .m_axi_rready(fb_wr_axi4lite_RREADY),    // output wire m_axi_rready

  .s_axi_awqos(4'b0),      // input  wire [3 : 0] s_axi_awqos
  .s_axi_arqos(4'b0)      // input  wire [3 : 0] s_axi_arqos
);

v_frmbuf_wr_0 fb_write (
  .s_axi_CTRL_AWADDR(fb_wr_axi4lite_AWADDR),              // input  wire [6 : 0] s_axi_CTRL_AWADDR
  .s_axi_CTRL_AWVALID(fb_wr_axi4lite_AWVALID),            // input  wire s_axi_CTRL_AWVALID
  .s_axi_CTRL_AWREADY(fb_wr_axi4lite_AWREADY),            // output wire s_axi_CTRL_AWREADY
  .s_axi_CTRL_WDATA(fb_wr_axi4lite_WDATA),                // input  wire [31 : 0] s_axi_CTRL_WDATA
  .s_axi_CTRL_WSTRB(fb_wr_axi4lite_WSTRB),                // input  wire [3 : 0] s_axi_CTRL_WSTRB
  .s_axi_CTRL_WVALID(fb_wr_axi4lite_WVALID),              // input  wire s_axi_CTRL_WVALID
  .s_axi_CTRL_WREADY(fb_wr_axi4lite_WREADY),              // output wire s_axi_CTRL_WREADY
  .s_axi_CTRL_BRESP(fb_wr_axi4lite_BRESP),                // output wire [1 : 0] s_axi_CTRL_BRESP
  .s_axi_CTRL_BVALID(fb_wr_axi4lite_BVALID),              // output wire s_axi_CTRL_BVALID
  .s_axi_CTRL_BREADY(fb_wr_axi4lite_BREADY),              // input  wire s_axi_CTRL_BREADY
  .s_axi_CTRL_ARADDR(fb_wr_axi4lite_ARADDR),              // input  wire [6 : 0] s_axi_CTRL_ARADDR
  .s_axi_CTRL_ARVALID(fb_wr_axi4lite_ARVALID),            // input  wire s_axi_CTRL_ARVALID
  .s_axi_CTRL_ARREADY(fb_wr_axi4lite_ARREADY),            // output wire s_axi_CTRL_ARREADY
  .s_axi_CTRL_RDATA(fb_wr_axi4lite_RDATA),                // output wire [31 : 0] s_axi_CTRL_RDATA
  .s_axi_CTRL_RRESP(fb_wr_axi4lite_RRESP),                // output wire [1 : 0] s_axi_CTRL_RRESP
  .s_axi_CTRL_RVALID(fb_wr_axi4lite_RVALID),              // output wire s_axi_CTRL_RVALID
  .s_axi_CTRL_RREADY(fb_wr_axi4lite_RREADY),              // input  wire s_axi_CTRL_RREADY

  .ap_clk(clk_100),                                    // input  wire ap_clk
  .ap_rst_n(aresetn),                                // input  wire ap_rst_n
  .interrupt( ),                              // output wire interrupt


  .m_axi_mm_video_AWADDR(fb_wr_video_AWADDR),      // output wire [31 : 0] m_axi_mm_video_AWADDR
  .m_axi_mm_video_AWLEN(fb_wr_video_AWLEN),        // output wire [7 : 0] m_axi_mm_video_AWLEN
  .m_axi_mm_video_AWSIZE(fb_wr_video_AWSIZE),      // output wire [2 : 0] m_axi_mm_video_AWSIZE
  .m_axi_mm_video_AWBURST(fb_wr_video_AWBURST),    // output wire [1 : 0] m_axi_mm_video_AWBURST
  .m_axi_mm_video_AWLOCK(fb_wr_video_AWLOCK),      // output wire [1 : 0] m_axi_mm_video_AWLOCK
  .m_axi_mm_video_AWREGION(fb_wr_video_AWREGION),  // output wire [3 : 0] m_axi_mm_video_AWREGION
  .m_axi_mm_video_AWCACHE(fb_wr_video_AWCACHE),    // output wire [3 : 0] m_axi_mm_video_AWCACHE
  .m_axi_mm_video_AWPROT(fb_wr_video_AWPROT),      // output wire [2 : 0] m_axi_mm_video_AWPROT
  .m_axi_mm_video_AWQOS(fb_wr_video_AWQOS),        // output wire [3 : 0] m_axi_mm_video_AWQOS
  .m_axi_mm_video_AWVALID(fb_wr_video_AWVALID),    // output wire m_axi_mm_video_AWVALID
  .m_axi_mm_video_AWREADY(fb_wr_video_AWREADY),    // input  wire m_axi_mm_video_AWREADY
  .m_axi_mm_video_WDATA(fb_wr_video_WDATA),        // output wire [63 : 0] m_axi_mm_video_WDATA
  .m_axi_mm_video_WSTRB(fb_wr_video_WSTRB),        // output wire [7 : 0] m_axi_mm_video_WSTRB
  .m_axi_mm_video_WLAST(fb_wr_video_WLAST),        // output wire m_axi_mm_video_WLAST
  .m_axi_mm_video_WVALID(fb_wr_video_WVALID),      // output wire m_axi_mm_video_WVALID
  .m_axi_mm_video_WREADY(fb_wr_video_WREADY),      // input  wire m_axi_mm_video_WREADY
  .m_axi_mm_video_BRESP(fb_wr_video_BRESP),        // input  wire [1 : 0] m_axi_mm_video_BRESP
  .m_axi_mm_video_BVALID(fb_wr_video_BVALID),      // input  wire m_axi_mm_video_BVALID
  .m_axi_mm_video_BREADY(fb_wr_video_BREADY),      // output wire m_axi_mm_video_BREADY
  .m_axi_mm_video_ARADDR(fb_wr_video_ARADDR),      // output wire [31 : 0] m_axi_mm_video_ARADDR
  .m_axi_mm_video_ARLEN(fb_wr_video_ARLEN),        // output wire [7 : 0] m_axi_mm_video_ARLEN
  .m_axi_mm_video_ARSIZE(fb_wr_video_ARSIZE),      // output wire [2 : 0] m_axi_mm_video_ARSIZE
  .m_axi_mm_video_ARBURST(fb_wr_video_ARBURST),    // output wire [1 : 0] m_axi_mm_video_ARBURST
  .m_axi_mm_video_ARLOCK(fb_wr_video_ARLOCK),      // output wire [1 : 0] m_axi_mm_video_ARLOCK
  .m_axi_mm_video_ARREGION(fb_wr_video_ARREGION),  // output wire [3 : 0] m_axi_mm_video_ARREGION
  .m_axi_mm_video_ARCACHE(fb_wr_video_ARCACHE),    // output wire [3 : 0] m_axi_mm_video_ARCACHE
  .m_axi_mm_video_ARPROT(fb_wr_video_ARPROT),      // output wire [2 : 0] m_axi_mm_video_ARPROT
  .m_axi_mm_video_ARQOS(fb_wr_video_ARQOS),        // output wire [3 : 0] m_axi_mm_video_ARQOS
  .m_axi_mm_video_ARVALID(fb_wr_video_ARVALID),    // output wire m_axi_mm_video_ARVALID
  .m_axi_mm_video_ARREADY(fb_wr_video_ARREADY),    // input  wire m_axi_mm_video_ARREADY
  .m_axi_mm_video_RDATA(fb_wr_video_RDATA),        // input  wire [63 : 0] m_axi_mm_video_RDATA
  .m_axi_mm_video_RRESP(fb_wr_video_RRESP),        // input  wire [1 : 0] m_axi_mm_video_RRESP
  .m_axi_mm_video_RLAST(fb_wr_video_RLAST),        // input  wire m_axi_mm_video_RLAST
  .m_axi_mm_video_RVALID(fb_wr_video_RVALID),      // input  wire m_axi_mm_video_RVALID
  .m_axi_mm_video_RREADY(fb_wr_video_RREADY),      // output wire m_axi_mm_video_RREADY

  .s_axis_video_TVALID(s_axis_video_TVALID),          // input  wire s_axis_video_TVALID
  .s_axis_video_TREADY(s_axis_video_TREADY),          // output wire s_axis_video_TREADY
  .s_axis_video_TDATA(s_axis_video_TDATA),            // input  wire [23 : 0] s_axis_video_TDATA
  .s_axis_video_TKEEP(s_axis_video_TKEEP),            // input  wire [2 : 0] s_axis_video_TKEEP
  .s_axis_video_TSTRB(s_axis_video_TSTRB),            // input  wire [2 : 0] s_axis_video_TSTRB
  .s_axis_video_TUSER(s_axis_video_TUSER),            // input  wire s_axis_video_TUSER
  .s_axis_video_TLAST(s_axis_video_TLAST),            // input  wire s_axis_video_TLAST
  .s_axis_video_TID(s_axis_video_TID),                // input  wire s_axis_video_TID
  .s_axis_video_TDEST(s_axis_video_TDEST)             // input  wire s_axis_video_TDEST
);

v_frmbuf_rd_0 fb_read (
  .s_axi_CTRL_AWADDR(fb_rd_axi4lite_AWADDR),              // input  wire [6 : 0] s_axi_CTRL_AWADDR
  .s_axi_CTRL_AWVALID(fb_rd_axi4lite_AWVALID),            // input  wire s_axi_CTRL_AWVALID
  .s_axi_CTRL_AWREADY(fb_rd_axi4lite_AWREADY),            // output wire s_axi_CTRL_AWREADY
  .s_axi_CTRL_WDATA(fb_rd_axi4lite_WDATA),                // input  wire [31 : 0] s_axi_CTRL_WDATA
  .s_axi_CTRL_WSTRB(fb_rd_axi4lite_WSTRB),                // input  wire [3 : 0] s_axi_CTRL_WSTRB
  .s_axi_CTRL_WVALID(fb_rd_axi4lite_WVALID),              // input  wire s_axi_CTRL_WVALID
  .s_axi_CTRL_WREADY(fb_rd_axi4lite_WREADY),              // output wire s_axi_CTRL_WREADY
  .s_axi_CTRL_BRESP(fb_rd_axi4lite_BRESP),                // output wire [1 : 0] s_axi_CTRL_BRESP
  .s_axi_CTRL_BVALID(fb_rd_axi4lite_BVALID),              // output wire s_axi_CTRL_BVALID
  .s_axi_CTRL_BREADY(fb_rd_axi4lite_BREADY),              // input  wire s_axi_CTRL_BREADY
  .s_axi_CTRL_ARADDR(fb_rd_axi4lite_ARADDR),              // input  wire [6 : 0] s_axi_CTRL_ARADDR
  .s_axi_CTRL_ARVALID(fb_rd_axi4lite_ARVALID),            // input  wire s_axi_CTRL_ARVALID
  .s_axi_CTRL_ARREADY(fb_rd_axi4lite_ARREADY),            // output wire s_axi_CTRL_ARREADY
  .s_axi_CTRL_RDATA(fb_rd_axi4lite_RDATA),                // output wire [31 : 0] s_axi_CTRL_RDATA
  .s_axi_CTRL_RRESP(fb_rd_axi4lite_RRESP),                // output wire [1 : 0] s_axi_CTRL_RRESP
  .s_axi_CTRL_RVALID(fb_rd_axi4lite_RVALID),              // output wire s_axi_CTRL_RVALID
  .s_axi_CTRL_RREADY(fb_rd_axi4lite_RREADY),              // input  wire s_axi_CTRL_RREADY

  .ap_clk(clk_100),                                    // input  wire ap_clk
  .ap_rst_n(aresetn),                                // input  wire ap_rst_n
  .interrupt( ),                              // output wire interrupt

  .m_axi_mm_video_AWADDR(fb_rd_video_AWADDR),      // output wire [31 : 0] m_axi_mm_video_AWADDR
  .m_axi_mm_video_AWLEN(fb_rd_video_AWLEN),        // output wire [7 : 0] m_axi_mm_video_AWLEN
  .m_axi_mm_video_AWSIZE(fb_rd_video_AWSIZE),      // output wire [2 : 0] m_axi_mm_video_AWSIZE
  .m_axi_mm_video_AWBURST(fb_rd_video_AWBURST),    // output wire [1 : 0] m_axi_mm_video_AWBURST
  .m_axi_mm_video_AWLOCK(fb_rd_video_AWLOCK),      // output wire [1 : 0] m_axi_mm_video_AWLOCK
  .m_axi_mm_video_AWREGION(fb_rd_video_AWREGION),  // output wire [3 : 0] m_axi_mm_video_AWREGION
  .m_axi_mm_video_AWCACHE(fb_rd_video_AWCACHE),    // output wire [3 : 0] m_axi_mm_video_AWCACHE
  .m_axi_mm_video_AWPROT(fb_rd_video_AWPROT),      // output wire [2 : 0] m_axi_mm_video_AWPROT
  .m_axi_mm_video_AWQOS(fb_rd_video_AWQOS),        // output wire [3 : 0] m_axi_mm_video_AWQOS
  .m_axi_mm_video_AWVALID(fb_rd_video_AWVALID),    // output wire m_axi_mm_video_AWVALID
  .m_axi_mm_video_AWREADY(fb_rd_video_AWREADY),    // input  wire m_axi_mm_video_AWREADY
  .m_axi_mm_video_WDATA(fb_rd_video_WDATA),        // output wire [63 : 0] m_axi_mm_video_WDATA
  .m_axi_mm_video_WSTRB(fb_rd_video_WSTRB),        // output wire [7 : 0] m_axi_mm_video_WSTRB
  .m_axi_mm_video_WLAST(fb_rd_video_WLAST),        // output wire m_axi_mm_video_WLAST
  .m_axi_mm_video_WVALID(fb_rd_video_WVALID),      // output wire m_axi_mm_video_WVALID
  .m_axi_mm_video_WREADY(fb_rd_video_WREADY),      // input  wire m_axi_mm_video_WREADY
  .m_axi_mm_video_BRESP(fb_rd_video_BRESP),        // input  wire [1 : 0] m_axi_mm_video_BRESP
  .m_axi_mm_video_BVALID(fb_rd_video_BVALID),      // input  wire m_axi_mm_video_BVALID
  .m_axi_mm_video_BREADY(fb_rd_video_BREADY),      // output wire m_axi_mm_video_BREADY
  .m_axi_mm_video_ARADDR(fb_rd_video_ARADDR),      // output wire [31 : 0] m_axi_mm_video_ARADDR
  .m_axi_mm_video_ARLEN(fb_rd_video_ARLEN),        // output wire [7 : 0] m_axi_mm_video_ARLEN
  .m_axi_mm_video_ARSIZE(fb_rd_video_ARSIZE),      // output wire [2 : 0] m_axi_mm_video_ARSIZE
  .m_axi_mm_video_ARBURST(fb_rd_video_ARBURST),    // output wire [1 : 0] m_axi_mm_video_ARBURST
  .m_axi_mm_video_ARLOCK(fb_rd_video_ARLOCK),      // output wire [1 : 0] m_axi_mm_video_ARLOCK
  .m_axi_mm_video_ARREGION(fb_rd_video_ARREGION),  // output wire [3 : 0] m_axi_mm_video_ARREGION
  .m_axi_mm_video_ARCACHE(fb_rd_video_ARCACHE),    // output wire [3 : 0] m_axi_mm_video_ARCACHE
  .m_axi_mm_video_ARPROT(fb_rd_video_ARPROT),      // output wire [2 : 0] m_axi_mm_video_ARPROT
  .m_axi_mm_video_ARQOS(fb_rd_video_ARQOS),        // output wire [3 : 0] m_axi_mm_video_ARQOS
  .m_axi_mm_video_ARVALID(fb_rd_video_ARVALID),    // output wire m_axi_mm_video_ARVALID
  .m_axi_mm_video_ARREADY(fb_rd_video_ARREADY),    // input  wire m_axi_mm_video_ARREADY
  .m_axi_mm_video_RDATA(fb_rd_video_RDATA),        // input  wire [63 : 0] m_axi_mm_video_RDATA
  .m_axi_mm_video_RRESP(fb_rd_video_RRESP),        // input  wire [1 : 0] m_axi_mm_video_RRESP
  .m_axi_mm_video_RLAST(fb_rd_video_RLAST),        // input  wire m_axi_mm_video_RLAST
  .m_axi_mm_video_RVALID(fb_rd_video_RVALID),      // input  wire m_axi_mm_video_RVALID
  .m_axi_mm_video_RREADY(fb_rd_video_RREADY),      // output wire m_axi_mm_video_RREADY

  .m_axis_video_TVALID(m_axis_video_TVALID),          // output wire m_axis_video_TVALID
  .m_axis_video_TREADY(m_axis_video_TREADY),          // input  wire m_axis_video_TREADY
  .m_axis_video_TDATA(m_axis_video_TDATA),            // output wire [23 : 0] m_axis_video_TDATA
  .m_axis_video_TKEEP(m_axis_video_TKEEP),            // output wire [2 : 0] m_axis_video_TKEEP
  .m_axis_video_TSTRB(m_axis_video_TSTRB),            // output wire [2 : 0] m_axis_video_TSTRB
  .m_axis_video_TUSER(m_axis_video_TUSER),            // output wire [0 : 0] m_axis_video_TUSER
  .m_axis_video_TLAST(m_axis_video_TLAST),            // output wire [0 : 0] m_axis_video_TLAST
  .m_axis_video_TID(m_axis_video_TID),                // output wire [0 : 0] m_axis_video_TID
  .m_axis_video_TDEST(m_axis_video_TDEST)             // output wire [0 : 0] m_axis_video_TDEST
);

axi_clock_converter_0 TFT_CLK_CONV (
    .s_axi_awid       (tft_s_awid[3:0]       ),	
    .s_axi_awaddr     (tft_s_awaddr          ),
    .s_axi_awlen      (tft_s_awlen           ),
    .s_axi_awsize     (tft_s_awsize          ),
    .s_axi_awburst    (tft_s_awburst         ),
    .s_axi_awlock     (tft_s_awlock          ),
    .s_axi_awcache    (tft_s_awcache         ),
    .s_axi_awprot     (tft_s_awprot          ),
    .s_axi_awqos      (4'b0               ),
    .s_axi_awvalid    (tft_s_awvalid         ),
    .s_axi_awready    (tft_s_awready         ),
    .s_axi_wid        (tft_s_wid[3:0]        ),
    .s_axi_wdata      (tft_s_wdata           ),
    .s_axi_wstrb      (tft_s_wstrb           ),
    .s_axi_wlast      (tft_s_wlast           ),
    .s_axi_wvalid     (tft_s_wvalid          ),
    .s_axi_wready     (tft_s_wready          ),
    .s_axi_bid        (tft_s_bid[3:0]        ),
    .s_axi_bresp      (tft_s_bresp           ),
    .s_axi_bvalid     (tft_s_bvalid          ),
    .s_axi_bready     (tft_s_bready          ),
    .s_axi_arid       (tft_s_arid[3:0]       ),
    .s_axi_araddr     (tft_s_araddr          ),
    .s_axi_arlen      (tft_s_arlen           ),
    .s_axi_arsize     (tft_s_arsize          ),
    .s_axi_arburst    (tft_s_arburst         ),
    .s_axi_arlock     (tft_s_arlock          ),
    .s_axi_arcache    (tft_s_arcache         ),
    .s_axi_arprot     (tft_s_arprot          ),
    .s_axi_arqos      (4'b0               ),
    .s_axi_arvalid    (tft_s_arvalid         ),
    .s_axi_arready    (tft_s_arready         ),
    .s_axi_rid        (tft_s_rid[3:0]        ),
    .s_axi_rdata      (tft_s_rdata           ),
    .s_axi_rresp      (tft_s_rresp           ),
    .s_axi_rlast      (tft_s_rlast           ),
    .s_axi_rvalid     (tft_s_rvalid          ),
    .s_axi_rready     (tft_s_rready          ),

    .s_axi_aclk	      (aclk               ),
    .s_axi_aresetn    (aresetn        ),
    
    .m_axi_awid       (tft_s_100_awid[3:0] ),
    .m_axi_awaddr     (tft_s_100_awaddr    ),
    .m_axi_awlen      (tft_s_100_awlen     ),
    .m_axi_awsize     (tft_s_100_awsize    ),
    .m_axi_awburst    (tft_s_100_awburst   ),
    .m_axi_awlock     (tft_s_100_awlock    ),
    .m_axi_awcache    (tft_s_100_awcache   ),
    .m_axi_awprot     (tft_s_100_awprot    ),
    .m_axi_awqos      (                   ),
    .m_axi_awvalid    (tft_s_100_awvalid   ),
    .m_axi_awready    (tft_s_100_awready   ),
    .m_axi_wid        (tft_s_100_wid[3:0]  ),
    .m_axi_wdata      (tft_s_100_wdata     ),
    .m_axi_wstrb      (tft_s_100_wstrb     ),
    .m_axi_wlast      (tft_s_100_wlast     ),
    .m_axi_wvalid     (tft_s_100_wvalid    ),
    .m_axi_wready     (tft_s_100_wready    ),
    .m_axi_bid        (tft_s_100_bid[3:0]  ),
    .m_axi_bresp      (tft_s_100_bresp     ),
    .m_axi_bvalid     (tft_s_100_bvalid    ),
    .m_axi_bready     (tft_s_100_bready    ),
    .m_axi_arid       (tft_s_100_arid[3:0] ),
    .m_axi_araddr     (tft_s_100_araddr    ),
    .m_axi_arlen      (tft_s_100_arlen     ),
    .m_axi_arsize     (tft_s_100_arsize    ),
    .m_axi_arburst    (tft_s_100_arburst   ),
    .m_axi_arlock     (tft_s_100_arlock    ),
    .m_axi_arcache    (tft_s_100_arcache   ),
    .m_axi_arprot     (tft_s_100_arprot    ),
    .m_axi_arqos      (                   ),
    .m_axi_arvalid    (tft_s_100_arvalid   ),
    .m_axi_arready    (tft_s_100_arready   ),
    .m_axi_rid        (tft_s_100_rid[3:0]  ),
    .m_axi_rdata      (tft_s_100_rdata     ),
    .m_axi_rresp      (tft_s_100_rresp     ),
    .m_axi_rlast      (tft_s_100_rlast     ),
    .m_axi_rvalid     (tft_s_100_rvalid    ),
    .m_axi_rready     (tft_s_100_rready    ),

    .m_axi_aclk	      (clk_100            ),
    .m_axi_aresetn    (aresetn            )
);

//stream_ctl_0 stream_ctl (
//  .s_axis_video_TREADY(m_axis_video_TREADY),  // output wire s_axis_video_TREADY
//  .m_axis_video_TVALID(s_axis_video_TVALID),  // output wire m_axis_video_TVALID
//  .m_axis_video_TDATA(s_axis_video_TDATA),    // output wire [23 : 0] m_axis_video_TDATA
//  .m_axis_video_TKEEP(s_axis_video_TKEEP),    // output wire [2 : 0] m_axis_video_TKEEP
//  .m_axis_video_TSTRB(s_axis_video_TSTRB),    // output wire [2 : 0] m_axis_video_TSTRB
//  .m_axis_video_TUSER(s_axis_video_TUSER),    // output wire [0 : 0] m_axis_video_TUSER
//  .m_axis_video_TLAST(s_axis_video_TLAST),    // output wire [0 : 0] m_axis_video_TLAST
//  .m_axis_video_TID(s_axis_video_TID),        // output wire [0 : 0] m_axis_video_TID
//  .m_axis_video_TDEST(s_axis_video_TDEST),    // output wire [0 : 0] m_axis_video_TDEST
//
//  .aclk(clk_100),                                // input wire aclk
//  .aresetn(aresetn),                          // input wire aresetn
//
//  .ctl_reg1(vga_reg),                         // input wire [31 : 0] ctl_reg1
//  .s_axis_video_TVALID(m_axis_video_TVALID),  // input wire s_axis_video_TVALID
//  .s_axis_video_TDATA(m_axis_video_TDATA),    // input wire [23 : 0] s_axis_video_TDATA
//  .s_axis_video_TKEEP(m_axis_video_TKEEP),    // input wire [2 : 0] s_axis_video_TKEEP
//  .s_axis_video_TSTRB(m_axis_video_TSTRB),    // input wire [2 : 0] s_axis_video_TSTRB
//  .s_axis_video_TUSER(m_axis_video_TUSER),    // input wire s_axis_video_TUSER
//  .s_axis_video_TLAST(m_axis_video_TLAST),    // input wire s_axis_video_TLAST
//  .s_axis_video_TID(m_axis_video_TID),        // input wire s_axis_video_TID
//  .s_axis_video_TDEST(m_axis_video_TDEST),    // input wire s_axis_video_TDEST
//  .m_axis_video_TREADY(s_axis_video_TREADY)   // input wire m_axis_video_TREADY
//);


assign s_axis_video_TVALID = m_axis_video_TVALID;
assign m_axis_video_TREADY = s_axis_video_TREADY;
assign s_axis_video_TDATA = m_axis_video_TDATA;
assign s_axis_video_TKEEP = m_axis_video_TKEEP;
assign s_axis_video_TSTRB = m_axis_video_TSTRB;
assign s_axis_video_TUSER = m_axis_video_TUSER;
assign s_axis_video_TLAST = m_axis_video_TLAST;
assign s_axis_video_TID = m_axis_video_TID;
assign s_axis_video_TDEST = m_axis_video_TDEST;

axi_protocol_converter_0 tft_protocol_converter (
  .aclk(clk_100),                    // input  wire aclk
  .aresetn(aresetn),              // input  wire aresetn

  .s_axi_awaddr     (tft_s_100_awaddr),    // input  wire [31 : 0] s_axi_awaddr
  .s_axi_awlen      (tft_s_100_awlen),      // input  wire [3 : 0] s_axi_awlen
  .s_axi_awsize     (tft_s_100_awsize),    // input  wire [2 : 0] s_axi_awsize
  .s_axi_awburst    (tft_s_100_awburst),  // input  wire [1 : 0] s_axi_awburst
  .s_axi_awlock     (tft_s_100_awlock),    // input  wire [1 : 0] s_axi_awlock
  .s_axi_awcache    (tft_s_100_awcache),  // input  wire [3 : 0] s_axi_awcache
  .s_axi_awprot     (tft_s_100_awprot),    // input  wire [2 : 0] s_axi_awprot
  .s_axi_awvalid    (tft_s_100_awvalid),  // input  wire s_axi_awvalid
  .s_axi_awready    (tft_s_100_awready),  // output wire s_axi_awready
  .s_axi_wdata      (tft_s_100_wdata),      // input  wire [31 : 0] s_axi_wdata
  .s_axi_wstrb      (tft_s_100_wstrb),      // input  wire [3 : 0] s_axi_wstrb
  .s_axi_wlast      (tft_s_100_wlast),      // input  wire s_axi_wlast
  .s_axi_wvalid     (tft_s_100_wvalid),    // input  wire s_axi_wvalid
  .s_axi_wready     (tft_s_100_wready),    // output wire s_axi_wready
  .s_axi_bresp      (tft_s_100_bresp),      // output wire [1 : 0] s_axi_bresp
  .s_axi_bvalid     (tft_s_100_bvalid),    // output wire s_axi_bvalid
  .s_axi_bready     (tft_s_100_bready),    // input  wire s_axi_bready
  .s_axi_araddr     (tft_s_100_araddr),    // input  wire [31 : 0] s_axi_araddr
  .s_axi_arlen      (tft_s_100_arlen),      // input  wire [3 : 0] s_axi_arlen
  .s_axi_arsize     (tft_s_100_arsize),    // input  wire [2 : 0] s_axi_arsize
  .s_axi_arburst    (tft_s_100_arburst),  // input  wire [1 : 0] s_axi_arburst
  .s_axi_arlock     (tft_s_100_arlock),    // input  wire [1 : 0] s_axi_arlock
  .s_axi_arcache    (tft_s_100_arcache),  // input  wire [3 : 0] s_axi_arcache
  .s_axi_arprot     (tft_s_100_arprot),    // input  wire [2 : 0] s_axi_arprot
  .s_axi_arvalid    (tft_s_100_arvalid),  // input  wire s_axi_arvalid
  .s_axi_arready    (tft_s_100_arready),  // output wire s_axi_arready
  .s_axi_rdata      (tft_s_100_rdata),      // output wire [31 : 0] s_axi_rdata
  .s_axi_rresp      (tft_s_100_rresp),      // output wire [1 : 0] s_axi_rresp
  .s_axi_rlast      (tft_s_100_rlast),      // output wire s_axi_rlast
  .s_axi_rvalid     (tft_s_100_rvalid),    // output wire s_axi_rvalid
  .s_axi_rready     (tft_s_100_rready),    // input  wire s_axi_rready


  .m_axi_awaddr(tft_axi_lite_awaddr),    // output wire [31 : 0] m_axi_awaddr
  .m_axi_awprot(),    // output wire [2 : 0] m_axi_awprot
  .m_axi_awvalid(tft_axi_lite_awvalid),  // output wire m_axi_awvalid
  .m_axi_awready(tft_axi_lite_awready),  // input  wire m_axi_awready
  .m_axi_wdata(tft_axi_lite_wdata),      // output wire [31 : 0] m_axi_wdata
  .m_axi_wstrb(tft_axi_lite_wstrb),      // output wire [3 : 0] m_axi_wstrb
  .m_axi_wvalid(tft_axi_lite_wvalid),    // output wire m_axi_wvalid
  .m_axi_wready(tft_axi_lite_wready),    // input  wire m_axi_wready
  .m_axi_bresp(tft_axi_lite_bresp),      // input  wire [1 : 0] m_axi_bresp
  .m_axi_bvalid(tft_axi_lite_bvalid),    // input  wire m_axi_bvalid
  .m_axi_bready(tft_axi_lite_bready),    // output wire m_axi_bready
  .m_axi_araddr(tft_axi_lite_araddr),    // output wire [31 : 0] m_axi_araddr
  .m_axi_arprot( ),    // output wire [2 : 0] m_axi_arprot
  .m_axi_arvalid(tft_axi_lite_arvalid),  // output wire m_axi_arvalid
  .m_axi_arready(tft_axi_lite_arready),  // input  wire m_axi_arready
  .m_axi_rdata(tft_axi_lite_rdata),      // input  wire [31 : 0] m_axi_rdata
  .m_axi_rresp(tft_axi_lite_rresp),      // input  wire [1 : 0] m_axi_rresp
  .m_axi_rvalid(tft_axi_lite_rvalid),    // input  wire m_axi_rvalid
  .m_axi_rready(tft_axi_lite_rready),    // output wire m_axi_rready

  .s_axi_awqos(4'b0),      // input  wire [3 : 0] s_axi_awqos
  .s_axi_arqos(4'b0)      // input  wire [3 : 0] s_axi_arqos
);



axi_tft_0 tft_controller (
  .s_axi_aclk(clk_100),
  .s_axi_aresetn(aresetn),

  .m_axi_aclk(clk_100),
  .m_axi_aresetn(aresetn),

  .md_error(),
  .ip2intc_irpt(),

  .m_axi_arready(tft_m_arready),
  .m_axi_arvalid(tft_m_arvalid),
  .m_axi_araddr(tft_m_araddr),  
  .m_axi_arlen(tft_m_arlen),    
  .m_axi_arsize(tft_m_arsize),  
  .m_axi_arburst(tft_m_arburst),
  .m_axi_arprot(tft_m_arprot),  
  .m_axi_arcache(tft_m_arcache),
  .m_axi_rready(tft_m_rready),  
  .m_axi_rvalid(tft_m_rvalid),  
  .m_axi_rdata(tft_m_rdata),    
  .m_axi_rresp(tft_m_rresp),    
  .m_axi_rlast(tft_m_rlast),    
  .m_axi_awready(tft_m_awready),
  .m_axi_awvalid(tft_m_awvalid),
  .m_axi_awaddr(tft_m_awaddr),  
  .m_axi_awlen(tft_m_awlen),    
  .m_axi_awsize(tft_m_awsize),  
  .m_axi_awburst(tft_m_awburst),
  .m_axi_awprot(tft_m_awprot),  
  .m_axi_awcache(tft_m_awcache),
  .m_axi_wready(tft_m_wready),  
  .m_axi_wvalid(tft_m_wvalid),  
  .m_axi_wdata(tft_m_wdata),    
  .m_axi_wstrb(tft_m_wstrb),    
  .m_axi_wlast(tft_m_wlast),    
  .m_axi_bready(tft_m_bready),  
  .m_axi_bvalid(tft_m_bvalid),  
  .m_axi_bresp(tft_m_bresp),    

  .s_axi_awaddr({16'b0, tft_axi_lite_awaddr[15:0]}),  
  .s_axi_awvalid(tft_axi_lite_awvalid),
  .s_axi_awready(tft_axi_lite_awready),
  .s_axi_wdata(tft_axi_lite_wdata),    
  .s_axi_wstrb(tft_axi_lite_wstrb),    
  .s_axi_wvalid(tft_axi_lite_wvalid),  
  .s_axi_wready(tft_axi_lite_wready),  
  .s_axi_bresp(tft_axi_lite_bresp),    
  .s_axi_bvalid(tft_axi_lite_bvalid),  
  .s_axi_bready(tft_axi_lite_bready),  
  .s_axi_araddr({16'b0, tft_axi_lite_araddr[15:0]}),  
  .s_axi_arvalid(tft_axi_lite_arvalid),
  .s_axi_arready(tft_axi_lite_arready),
  .s_axi_rdata(tft_axi_lite_rdata),    
  .s_axi_rresp(tft_axi_lite_rresp),    
  .s_axi_rvalid(tft_axi_lite_rvalid),  
  .s_axi_rready(tft_axi_lite_rready),  

  .sys_tft_clk(vga_clk), 
  .tft_hsync(VGA_hsync),
  .tft_vsync(VGA_vsync),
  .tft_de( ),           
  .tft_dps( ),          
  .tft_vga_clk( ),      
  .tft_vga_r(VGA_red),  
  .tft_vga_g(VGA_green),
  .tft_vga_b(VGA_blue)  

);


//SPI
spi_flash_ctrl SPI                    
(                                         
.aclk           (aclk              ),       
.aresetn        (aresetn           ),       
.spi_addr       (16'h1c00          ),
.fast_startup   (1'b0              ),
.s_awid         (spi_s_awid        ),
.s_awaddr       (spi_s_awaddr      ),
.s_awlen        (spi_s_awlen       ),
.s_awsize       (spi_s_awsize      ),
.s_awburst      (spi_s_awburst     ),
.s_awlock       (spi_s_awlock      ),
.s_awcache      (spi_s_awcache     ),
.s_awprot       (spi_s_awprot      ),
.s_awvalid      (spi_s_awvalid     ),
.s_awready      (spi_s_awready     ),
.s_wready       (spi_s_wready      ),
.s_wid          (spi_s_wid         ),
.s_wdata        (spi_s_wdata       ),
.s_wstrb        (spi_s_wstrb       ),
.s_wlast        (spi_s_wlast       ),
.s_wvalid       (spi_s_wvalid      ),
.s_bid          (spi_s_bid         ),
.s_bresp        (spi_s_bresp       ),
.s_bvalid       (spi_s_bvalid      ),
.s_bready       (spi_s_bready      ),
.s_arid         (spi_s_arid        ),
.s_araddr       (spi_s_araddr      ),
.s_arlen        (spi_s_arlen       ),
.s_arsize       (spi_s_arsize      ),
.s_arburst      (spi_s_arburst     ),
.s_arlock       (spi_s_arlock      ),
.s_arcache      (spi_s_arcache     ),
.s_arprot       (spi_s_arprot      ),
.s_arvalid      (spi_s_arvalid     ),
.s_arready      (spi_s_arready     ),
.s_rready       (spi_s_rready      ),
.s_rid          (spi_s_rid         ),
.s_rdata        (spi_s_rdata       ),
.s_rresp        (spi_s_rresp       ),
.s_rlast        (spi_s_rlast       ),
.s_rvalid       (spi_s_rvalid      ),

.power_down_req (1'b0              ),
.power_down_ack (                  ),
.csn_o          (spi_csn_o         ),
.csn_en         (spi_csn_en        ), 
.sck_o          (spi_sck_o         ),
.sdo_i          (spi_sdo_i         ),
.sdo_o          (spi_sdo_o         ),
.sdo_en         (spi_sdo_en        ), // active low
.sdi_i          (spi_sdi_i         ),
.sdi_o          (spi_sdi_o         ),
.sdi_en         (spi_sdi_en        ),
.inta_o         (spi_inta_o        )
);

//confreg
confreg CONFREG(
.aclk              (aclk               ),       
.aresetn           (aresetn            ),       
.s_awid            (conf_s_awid        ),
.s_awaddr          (conf_s_awaddr      ),
.s_awlen           (conf_s_awlen       ),
.s_awsize          (conf_s_awsize      ),
.s_awburst         (conf_s_awburst     ),
.s_awlock          (conf_s_awlock      ),
.s_awcache         (conf_s_awcache     ),
.s_awprot          (conf_s_awprot      ),
.s_awvalid         (conf_s_awvalid     ),
.s_awready         (conf_s_awready     ),
.s_wready          (conf_s_wready      ),
.s_wid             (conf_s_wid         ),
.s_wdata           (conf_s_wdata       ),
.s_wstrb           (conf_s_wstrb       ),
.s_wlast           (conf_s_wlast       ),
.s_wvalid          (conf_s_wvalid      ),
.s_bid             (conf_s_bid         ),
.s_bresp           (conf_s_bresp       ),
.s_bvalid          (conf_s_bvalid      ),
.s_bready          (conf_s_bready      ),
.s_arid            (conf_s_arid        ),
.s_araddr          (conf_s_araddr      ),
.s_arlen           (conf_s_arlen       ),
.s_arsize          (conf_s_arsize      ),
.s_arburst         (conf_s_arburst     ),
.s_arlock          (conf_s_arlock      ),
.s_arcache         (conf_s_arcache     ),
.s_arprot          (conf_s_arprot      ),
.s_arvalid         (conf_s_arvalid     ),
.s_arready         (conf_s_arready     ),
.s_rready          (conf_s_rready      ),
.s_rid             (conf_s_rid         ),
.s_rdata           (conf_s_rdata       ),
.s_rresp           (conf_s_rresp       ),
.s_rlast           (conf_s_rlast       ),
.s_rvalid          (conf_s_rvalid      ),

//dma
.order_addr_reg    (order_addr_in      ),
.write_dma_end     (write_dma_end      ),
.finish_read_order (finish_read_order  ),

//cr00~cr07
.cr00              (cr00        ),
.cr01              (cr01        ),
.cr02              (cr02        ),
.cr03              (cr03        ),
.cr04              (cr04        ),
.cr05              (cr05        ),
.cr06              (cr06        ),
.cr07              (cr07        ),

.led               (led         ),
.led_rg0           (led_rg0     ),
.led_rg1           (led_rg1     ),
.num_csn           (num_csn     ),
.num_a_g           (num_a_g     ),
.switch            (switch      ),
.btn_key_col       (btn_key_col ),
.btn_key_row       (btn_key_row ),
.btn_step          (btn_step    ),

.tim_int           (clint_int)
);

//MAC top
ethernet_top ETHERNET_TOP(

    .hclk       (aclk   ),
    .hrst_      (aresetn),      
    //axi master
    .mawid_o    (mac_m_awid    ),
    .mawaddr_o  (mac_m_awaddr  ),
    .mawlen_o   (mac_m_awlen   ),
    .mawsize_o  (mac_m_awsize  ),
    .mawburst_o (mac_m_awburst ),
    .mawlock_o  (mac_m_awlock  ),
    .mawcache_o (mac_m_awcache ),
    .mawprot_o  (mac_m_awprot  ),
    .mawvalid_o (mac_m_awvalid ),
    .mawready_i (mac_m_awready ),
    .mwid_o     (mac_m_wid     ),
    .mwdata_o   (mac_m_wdata   ),
    .mwstrb_o   (mac_m_wstrb   ),
    .mwlast_o   (mac_m_wlast   ),
    .mwvalid_o  (mac_m_wvalid  ),
    .mwready_i  (mac_m_wready  ),
    .mbid_i     (mac_m_bid     ),
    .mbresp_i   (mac_m_bresp   ),
    .mbvalid_i  (mac_m_bvalid  ),
    .mbready_o  (mac_m_bready  ),
    .marid_o    (mac_m_arid    ),
    .maraddr_o  (mac_m_araddr  ),
    .marlen_o   (mac_m_arlen   ),
    .marsize_o  (mac_m_arsize  ),
    .marburst_o (mac_m_arburst ),
    .marlock_o  (mac_m_arlock  ),
    .marcache_o (mac_m_arcache ),
    .marprot_o  (mac_m_arprot  ),
    .marvalid_o (mac_m_arvalid ),
    .marready_i (mac_m_arready ),
    .mrid_i     (mac_m_rid     ),
    .mrdata_i   (mac_m_rdata   ),
    .mrresp_i   (mac_m_rresp   ),
    .mrlast_i   (mac_m_rlast   ),
    .mrvalid_i  (mac_m_rvalid  ),
    .mrready_o  (mac_m_rready  ),
    //axi slaver
    .sawid_i    (mac_s_awid    ),
    .sawaddr_i  (mac_s_awaddr  ),
    .sawlen_i   (mac_s_awlen   ),
    .sawsize_i  (mac_s_awsize  ),
    .sawburst_i (mac_s_awburst ),
    .sawlock_i  (mac_s_awlock  ),
    .sawcache_i (mac_s_awcache ),
    .sawprot_i  (mac_s_awprot  ),
    .sawvalid_i (mac_s_awvalid ),
    .sawready_o (mac_s_awready ),   
    .swid_i     (mac_s_wid     ),
    .swdata_i   (mac_s_wdata   ),
    .swstrb_i   (mac_s_wstrb   ),
    .swlast_i   (mac_s_wlast   ),
    .swvalid_i  (mac_s_wvalid  ),
    .swready_o  (mac_s_wready  ),
    .sbid_o     (mac_s_bid     ),
    .sbresp_o   (mac_s_bresp   ),
    .sbvalid_o  (mac_s_bvalid  ),
    .sbready_i  (mac_s_bready  ),
    .sarid_i    (mac_s_arid    ),
    .saraddr_i  (mac_s_araddr  ),
    .sarlen_i   (mac_s_arlen   ),
    .sarsize_i  (mac_s_arsize  ),
    .sarburst_i (mac_s_arburst ),
    .sarlock_i  (mac_s_arlock  ),
    .sarcache_i (mac_s_arcache ),
    .sarprot_i  (mac_s_arprot  ),
    .sarvalid_i (mac_s_arvalid ),
    .sarready_o (mac_s_arready ),
    .srid_o     (mac_s_rid     ),
    .srdata_o   (mac_s_rdata   ),
    .srresp_o   (mac_s_rresp   ),
    .srlast_o   (mac_s_rlast   ),
    .srvalid_o  (mac_s_rvalid  ),
    .srready_i  (mac_s_rready  ),                 

    .interrupt_0 (mac_int),
 
    // I/O pad interface signals
    //TX
    .mtxclk_0    (mtxclk_0 ),     
    .mtxen_0     (mtxen_0  ),      
    .mtxd_0      (mtxd_0   ),       
    .mtxerr_0    (mtxerr_0 ),
    //RX
    .mrxclk_0    (mrxclk_0 ),      
    .mrxdv_0     (mrxdv_0  ),     
    .mrxd_0      (mrxd_0   ),        
    .mrxerr_0    (mrxerr_0 ),
    .mcoll_0     (mcoll_0  ),
    .mcrs_0      (mcrs_0   ),
    // MIIM
    .mdc_0       (mdc_0    ),
    .md_i_0      (md_i_0   ),
    .md_o_0      (md_o_0   ),       
    .md_oe_0     (md_oe_0  )

);

reset_synchronizer usb_reset_sync (
    .clk(UTMI_clk),
    .rst_i(aresetn),
    .rst_o(usb_rst)
);

utmi_usb_controller_0 usb_controller (
    .aclk(UTMI_clk),
    .aresetn(usb_rst),

    .cfg_awaddr (usb_cfg_converted_awaddr ),
    .cfg_awvalid(usb_cfg_converted_awvalid),
    .cfg_awready(usb_cfg_converted_awready),
    .cfg_wdata  (usb_cfg_converted_wdata  ),
    .cfg_wstrb  (usb_cfg_converted_wstrb  ),
    .cfg_wvalid (usb_cfg_converted_wvalid ),
    .cfg_wready (usb_cfg_converted_wready ),
    .cfg_bresp  (usb_cfg_converted_bresp  ),
    .cfg_bvalid (usb_cfg_converted_bvalid ),
    .cfg_bready (usb_cfg_converted_bready ),
    .cfg_araddr (usb_cfg_converted_araddr ),
    .cfg_arvalid(usb_cfg_converted_arvalid),
    .cfg_arready(usb_cfg_converted_arready),
    .cfg_rdata  (usb_cfg_converted_rdata  ),
    .cfg_rresp  (usb_cfg_converted_rresp  ),
    .cfg_rvalid (usb_cfg_converted_rvalid ),
    .cfg_rready (usb_cfg_converted_rready ),

    .intr(usb_int),

    .utmi_data_in(UTMI_data_i),
    .utmi_data_out(UTMI_data_o),
    .utmi_data_t(UTMI_data_t),
    .utmi_txready(UTMI_txready),
    .utmi_rxvalid(UTMI_rxvalid),
    .utmi_rxactive(UTMI_rxactive),
    .utmi_rxerror(UTMI_rxerror),
    .utmi_linestate(UTMI_linestate),
    .utmi_txvalid(UTMI_txvalid),
    .utmi_opmode(UTMI_opmode),
    .utmi_xcvrsel(UTMI_xcvrsel),
    .utmi_termsel(UTMI_termsel),
    .utmi_dppulldown(UTMI_dppulldown),
    .utmi_dmpulldown(UTMI_dmpulldown),
    .utmi_idpullup(UTMI_idpullup),
    .utmi_chrgvbus(UTMI_chrgvbus),
    .utmi_dischrgvbus(UTMI_dischrgvbus),
    .utmi_suspend_n(UTMI_suspend_n),

    // ignore
    .utmi_hostdisc(),
    .utmi_iddig(),
    .utmi_vbusvalid(),
    .utmi_sessend(),

    .utmi_reset(UTMI_reset)
);

clk_wiz_0  clk_pll_1
(
    .clk_out1(c1_clk_ref_i),  //200MHz
    .clk_in1(clk)             //100MHz
);

assign c1_sys_clk_i      = clk;
assign c1_sys_rst_i      = resetn;
assign aclk              = uncore_clk;
//assign aclk              = c1_clk0;
// Reset to the AXI shim
reg c1_calib_done_0;
reg c1_calib_done_1;
reg c1_rst0_0;
reg c1_rst0_1;
reg interconnect_aresetn_0;
/*always @(posedge aclk)
begin
    c1_calib_done_0 <= c1_calib_done;
    c1_calib_done_1 <= c1_calib_done_0;
    c1_rst0_0       <= c1_rst0;
    c1_rst0_1       <= c1_rst0_0;

    interconnect_aresetn_0 <= ~c1_rst0_1 && c1_calib_done_1;
    interconnect_aresetn   <= interconnect_aresetn_0 ;
end*/
always @(posedge c1_clk0)
begin
    interconnect_aresetn <= ~c1_rst0 && c1_calib_done;
end

//axi 4x1
axi_interconnect_0 mig_axi_interconnect (
    .INTERCONNECT_ACLK    (c1_clk0             ),
    .INTERCONNECT_ARESETN (interconnect_aresetn),
    .S00_AXI_ARESET_OUT_N (aresetn             ),
    .S00_AXI_ACLK         (aclk                ),
    .S00_AXI_AWID         (s0_awid[3:0]        ),
    .S00_AXI_AWADDR       (s0_awaddr           ),
    .S00_AXI_AWLEN        ({4'b0,s0_awlen}     ),
    .S00_AXI_AWSIZE       (s0_awsize           ),
    .S00_AXI_AWBURST      (s0_awburst          ),
    .S00_AXI_AWLOCK       (s0_awlock[0:0]      ),
    .S00_AXI_AWCACHE      (s0_awcache          ),
    .S00_AXI_AWPROT       (s0_awprot           ),
    .S00_AXI_AWQOS        (4'b0                ),
    .S00_AXI_AWVALID      (s0_awvalid          ),
    .S00_AXI_AWREADY      (s0_awready          ),
    .S00_AXI_WDATA        (s0_wdata            ),
    .S00_AXI_WSTRB        (s0_wstrb            ),
    .S00_AXI_WLAST        (s0_wlast            ),
    .S00_AXI_WVALID       (s0_wvalid           ),
    .S00_AXI_WREADY       (s0_wready           ),
    .S00_AXI_BID          (s0_bid[3:0]         ),
    .S00_AXI_BRESP        (s0_bresp            ),
    .S00_AXI_BVALID       (s0_bvalid           ),
    .S00_AXI_BREADY       (s0_bready           ),
    .S00_AXI_ARID         (s0_arid[3:0]        ),
    .S00_AXI_ARADDR       (s0_araddr           ),
    .S00_AXI_ARLEN        ({4'b0,s0_arlen}     ),
    .S00_AXI_ARSIZE       (s0_arsize           ),
    .S00_AXI_ARBURST      (s0_arburst          ),
    .S00_AXI_ARLOCK       (s0_arlock[0:0]      ),
    .S00_AXI_ARCACHE      (s0_arcache          ),
    .S00_AXI_ARPROT       (s0_arprot           ),
    .S00_AXI_ARQOS        (4'b0                ),
    .S00_AXI_ARVALID      (s0_arvalid          ),
    .S00_AXI_ARREADY      (s0_arready          ),
    .S00_AXI_RID          (s0_rid[3:0]         ),
    .S00_AXI_RDATA        (s0_rdata            ),
    .S00_AXI_RRESP        (s0_rresp            ),
    .S00_AXI_RLAST        (s0_rlast            ),
    .S00_AXI_RVALID       (s0_rvalid           ),
    .S00_AXI_RREADY       (s0_rready           ),

    .S01_AXI_ARESET_OUT_N (                    ),
    .S01_AXI_ACLK         (aclk                ),
    .S01_AXI_AWID         (mac_m_awid[3:0]     ),
    .S01_AXI_AWADDR       (mac_m_awaddr        ),
    .S01_AXI_AWLEN        ({4'b0,mac_m_awlen}  ),
    .S01_AXI_AWSIZE       (mac_m_awsize        ),
    .S01_AXI_AWBURST      (mac_m_awburst       ),
    .S01_AXI_AWLOCK       (mac_m_awlock[0:0]   ),
    .S01_AXI_AWCACHE      (mac_m_awcache       ),
    .S01_AXI_AWPROT       (mac_m_awprot        ),
    .S01_AXI_AWQOS        (4'b0                ),
    .S01_AXI_AWVALID      (mac_m_awvalid       ),
    .S01_AXI_AWREADY      (mac_m_awready       ),
    .S01_AXI_WDATA        (mac_m_wdata         ),
    .S01_AXI_WSTRB        (mac_m_wstrb         ),
    .S01_AXI_WLAST        (mac_m_wlast         ),
    .S01_AXI_WVALID       (mac_m_wvalid        ),
    .S01_AXI_WREADY       (mac_m_wready        ),
    .S01_AXI_BID          (mac_m_bid[3:0]      ),
    .S01_AXI_BRESP        (mac_m_bresp         ),
    .S01_AXI_BVALID       (mac_m_bvalid        ),
    .S01_AXI_BREADY       (mac_m_bready        ),
    .S01_AXI_ARID         (mac_m_arid[3:0]     ),
    .S01_AXI_ARADDR       (mac_m_araddr        ),
    .S01_AXI_ARLEN        ({4'b0,mac_m_arlen}  ),
    .S01_AXI_ARSIZE       (mac_m_arsize        ),
    .S01_AXI_ARBURST      (mac_m_arburst       ),
    .S01_AXI_ARLOCK       (mac_m_arlock[0:0]   ),
    .S01_AXI_ARCACHE      (mac_m_arcache       ),
    .S01_AXI_ARPROT       (mac_m_arprot        ),
    .S01_AXI_ARQOS        (4'b0                ),
    .S01_AXI_ARVALID      (mac_m_arvalid       ),
    .S01_AXI_ARREADY      (mac_m_arready       ),
    .S01_AXI_RID          (mac_m_rid[3:0]      ),
    .S01_AXI_RDATA        (mac_m_rdata         ),
    .S01_AXI_RRESP        (mac_m_rresp         ),
    .S01_AXI_RLAST        (mac_m_rlast         ),
    .S01_AXI_RVALID       (mac_m_rvalid        ),
    .S01_AXI_RREADY       (mac_m_rready        ),

    .S02_AXI_ARESET_OUT_N (                    ),
    .S02_AXI_ACLK         (aclk                ),
    .S02_AXI_AWID         (dma0_awid           ),
    .S02_AXI_AWADDR       (dma0_awaddr         ),
    .S02_AXI_AWLEN        ({4'd0,dma0_awlen}   ),
    .S02_AXI_AWSIZE       (dma0_awsize         ),
    .S02_AXI_AWBURST      (dma0_awburst        ),
    .S02_AXI_AWLOCK       (dma0_awlock[0:0]    ),
    .S02_AXI_AWCACHE      (dma0_awcache        ),
    .S02_AXI_AWPROT       (dma0_awprot         ),
    .S02_AXI_AWQOS        (4'b0                ),
    .S02_AXI_AWVALID      (dma0_awvalid        ),
    .S02_AXI_AWREADY      (dma0_awready        ),
    .S02_AXI_WDATA        (dma0_wdata          ),
    .S02_AXI_WSTRB        (dma0_wstrb          ),
    .S02_AXI_WLAST        (dma0_wlast          ),
    .S02_AXI_WVALID       (dma0_wvalid         ),
    .S02_AXI_WREADY       (dma0_wready         ),
    .S02_AXI_BID          (dma0_bid            ),
    .S02_AXI_BRESP        (dma0_bresp          ),
    .S02_AXI_BVALID       (dma0_bvalid         ),
    .S02_AXI_BREADY       (dma0_bready         ),
    .S02_AXI_ARID         (dma0_arid           ),
    .S02_AXI_ARADDR       (dma0_araddr         ),
    .S02_AXI_ARLEN        ({4'd0,dma0_arlen}   ),
    .S02_AXI_ARSIZE       (dma0_arsize         ),
    .S02_AXI_ARBURST      (dma0_arburst        ),
    .S02_AXI_ARLOCK       (dma0_arlock[0:0]    ),
    .S02_AXI_ARCACHE      (dma0_arcache        ),
    .S02_AXI_ARPROT       (dma0_arprot         ),
    .S02_AXI_ARQOS        (4'b0                ),
    .S02_AXI_ARVALID      (dma0_arvalid        ),
    .S02_AXI_ARREADY      (dma0_arready        ),
    .S02_AXI_RID          (dma0_rid            ),
    .S02_AXI_RDATA        (dma0_rdata          ),
    .S02_AXI_RRESP        (dma0_rresp          ),
    .S02_AXI_RLAST        (dma0_rlast          ),
    .S02_AXI_RVALID       (dma0_rvalid         ),
    .S02_AXI_RREADY       (dma0_rready         ),

    .S03_AXI_ARESET_OUT_N (                    ),
    .S03_AXI_ACLK         (clk_100                ),
    .S03_AXI_AWID         (4'b0                    ),
    .S03_AXI_AWADDR       (tft_m_awaddr         ),
    .S03_AXI_AWLEN        (tft_m_awlen          ),
    .S03_AXI_AWSIZE       (tft_m_awsize         ),
    .S03_AXI_AWBURST      (tft_m_awburst        ),
    .S03_AXI_AWLOCK       (tft_m_awlock         ),
    .S03_AXI_AWCACHE      (tft_m_awcache        ),
    .S03_AXI_AWPROT       (tft_m_awprot         ),
    .S03_AXI_AWVALID      (tft_m_awvalid        ),
    .S03_AXI_AWREADY      (tft_m_awready        ),
    .S03_AXI_WDATA        (tft_m_wdata          ),
    .S03_AXI_WSTRB        (tft_m_wstrb          ),
    .S03_AXI_WLAST        (tft_m_wlast          ),
    .S03_AXI_WVALID       (tft_m_wvalid         ),
    .S03_AXI_WREADY       (tft_m_wready         ),
    .S03_AXI_BID          (4'b0                     ),
    .S03_AXI_BRESP        (tft_m_bresp          ),
    .S03_AXI_BVALID       (tft_m_bvalid         ),
    .S03_AXI_BREADY       (tft_m_bready         ),
    .S03_AXI_ARID         (4'b0                    ),
    .S03_AXI_ARADDR       (tft_m_araddr         ),
    .S03_AXI_ARLEN        (tft_m_arlen          ),
    .S03_AXI_ARSIZE       (tft_m_arsize         ),
    .S03_AXI_ARBURST      (tft_m_arburst        ),
    .S03_AXI_ARLOCK       (1'b0         ),
    .S03_AXI_ARCACHE      (tft_m_arcache        ),
    .S03_AXI_ARPROT       (tft_m_arprot         ),
    .S03_AXI_ARVALID      (tft_m_arvalid        ),
    .S03_AXI_ARREADY      (tft_m_arready        ),
    .S03_AXI_RID          (4'b0                     ),
    .S03_AXI_RDATA        (tft_m_rdata          ),
    .S03_AXI_RRESP        (tft_m_rresp          ),
    .S03_AXI_RLAST        (tft_m_rlast          ),
    .S03_AXI_RVALID       (tft_m_rvalid         ),
    .S03_AXI_RREADY       (tft_m_rready         ),
    .S03_AXI_ARQOS        (4'b0                    ),
    .S03_AXI_AWQOS        (4'b0                    ),

    .S04_AXI_ARESET_OUT_N (                         ),
    .S04_AXI_ACLK         (clk_100                  ),
    .S04_AXI_AWID         (4'b0                     ),
    .S04_AXI_ARID         (4'b0                     ),
    .S04_AXI_BID          (4'b0                     ),
    .S04_AXI_RID          (4'b0                     ),
    .S04_AXI_AWADDR       (fb_wr_video_AWADDR       ),
    .S04_AXI_AWLEN        (fb_wr_video_AWLEN        ),
    .S04_AXI_AWSIZE       (fb_wr_video_AWSIZE       ),
    .S04_AXI_AWBURST      (fb_wr_video_AWBURST      ),
    .S04_AXI_AWLOCK       (fb_wr_video_AWLOCK       ),
    .S04_AXI_AWCACHE      (fb_wr_video_AWCACHE      ),
    .S04_AXI_AWPROT       (fb_wr_video_AWPROT       ),
    .S04_AXI_AWVALID      (fb_wr_video_AWVALID      ),
    .S04_AXI_AWREADY      (fb_wr_video_AWREADY      ),
    .S04_AXI_WDATA        (fb_wr_video_WDATA        ),
    .S04_AXI_WSTRB        (fb_wr_video_WSTRB        ),
    .S04_AXI_WLAST        (fb_wr_video_WLAST        ),
    .S04_AXI_WVALID       (fb_wr_video_WVALID       ),
    .S04_AXI_WREADY       (fb_wr_video_WREADY       ),
    .S04_AXI_BRESP        (fb_wr_video_BRESP        ),
    .S04_AXI_BVALID       (fb_wr_video_BVALID       ),
    .S04_AXI_BREADY       (fb_wr_video_BREADY       ),
    .S04_AXI_ARADDR       (fb_wr_video_ARADDR       ),
    .S04_AXI_ARLEN        (fb_wr_video_ARLEN        ),
    .S04_AXI_ARSIZE       (fb_wr_video_ARSIZE       ),
    .S04_AXI_ARBURST      (fb_wr_video_ARBURST      ),
    .S04_AXI_ARLOCK       (fb_wr_video_ARLOCK       ),
    .S04_AXI_ARCACHE      (fb_wr_video_ARCACHE      ),
    .S04_AXI_ARPROT       (fb_wr_video_ARPROT       ),
    .S04_AXI_ARVALID      (fb_wr_video_ARVALID      ),
    .S04_AXI_ARREADY      (fb_wr_video_ARREADY      ),
    .S04_AXI_RDATA        (fb_wr_video_RDATA        ),
    .S04_AXI_RRESP        (fb_wr_video_RRESP        ),
    .S04_AXI_RLAST        (fb_wr_video_RLAST        ),
    .S04_AXI_RVALID       (fb_wr_video_RVALID       ),
    .S04_AXI_RREADY       (fb_wr_video_RREADY       ),
    .S04_AXI_ARQOS        (fb_wr_video_ARQOS        ),
    .S04_AXI_AWQOS        (fb_wr_video_ARQOS        ),

    .S05_AXI_ARESET_OUT_N (                         ),
    .S05_AXI_ACLK         (clk_100                  ),
    .S05_AXI_AWID         (4'b0                     ),
    .S05_AXI_ARID         (4'b0                     ),
    .S05_AXI_BID          (4'b0                     ),
    .S05_AXI_RID          (4'b0                     ),
    .S05_AXI_AWADDR       (fb_rd_video_AWADDR       ),
    .S05_AXI_AWLEN        (fb_rd_video_AWLEN        ),
    .S05_AXI_AWSIZE       (fb_rd_video_AWSIZE       ),
    .S05_AXI_AWBURST      (fb_rd_video_AWBURST      ),
    .S05_AXI_AWLOCK       (fb_rd_video_AWLOCK       ),
    .S05_AXI_AWCACHE      (fb_rd_video_AWCACHE      ),
    .S05_AXI_AWPROT       (fb_rd_video_AWPROT       ),
    .S05_AXI_AWVALID      (fb_rd_video_AWVALID      ),
    .S05_AXI_AWREADY      (fb_rd_video_AWREADY      ),
    .S05_AXI_WDATA        (fb_rd_video_WDATA        ),
    .S05_AXI_WSTRB        (fb_rd_video_WSTRB        ),
    .S05_AXI_WLAST        (fb_rd_video_WLAST        ),
    .S05_AXI_WVALID       (fb_rd_video_WVALID       ),
    .S05_AXI_WREADY       (fb_rd_video_WREADY       ),
    .S05_AXI_BRESP        (fb_rd_video_BRESP        ),
    .S05_AXI_BVALID       (fb_rd_video_BVALID       ),
    .S05_AXI_BREADY       (fb_rd_video_BREADY       ),
    .S05_AXI_ARADDR       (fb_rd_video_ARADDR       ),
    .S05_AXI_ARLEN        (fb_rd_video_ARLEN        ),
    .S05_AXI_ARSIZE       (fb_rd_video_ARSIZE       ),
    .S05_AXI_ARBURST      (fb_rd_video_ARBURST      ),
    .S05_AXI_ARLOCK       (fb_rd_video_ARLOCK       ),
    .S05_AXI_ARCACHE      (fb_rd_video_ARCACHE      ),
    .S05_AXI_ARPROT       (fb_rd_video_ARPROT       ),
    .S05_AXI_ARVALID      (fb_rd_video_ARVALID      ),
    .S05_AXI_ARREADY      (fb_rd_video_ARREADY      ),
    .S05_AXI_RDATA        (fb_rd_video_RDATA        ),
    .S05_AXI_RRESP        (fb_rd_video_RRESP        ),
    .S05_AXI_RLAST        (fb_rd_video_RLAST        ),
    .S05_AXI_RVALID       (fb_rd_video_RVALID       ),
    .S05_AXI_RREADY       (fb_rd_video_RREADY       ),
    .S05_AXI_ARQOS        (fb_rd_video_ARQOS        ),
    .S05_AXI_AWQOS        (fb_rd_video_ARQOS        ),


    .M00_AXI_ARESET_OUT_N (ddr_aresetn         ),
    .M00_AXI_ACLK         (c1_clk0             ),
    .M00_AXI_AWID         (mig_awid            ),
    .M00_AXI_AWADDR       (mig_awaddr          ),
    .M00_AXI_AWLEN        ({mig_awlen}         ),
    .M00_AXI_AWSIZE       (mig_awsize          ),
    .M00_AXI_AWBURST      (mig_awburst         ),
    .M00_AXI_AWLOCK       (mig_awlock[0:0]     ),
    .M00_AXI_AWCACHE      (mig_awcache         ),
    .M00_AXI_AWPROT       (mig_awprot          ),
    .M00_AXI_AWQOS        (                    ),
    .M00_AXI_AWVALID      (mig_awvalid         ),
    .M00_AXI_AWREADY      (mig_awready         ),
    .M00_AXI_WDATA        (mig_wdata           ),
    .M00_AXI_WSTRB        (mig_wstrb           ),
    .M00_AXI_WLAST        (mig_wlast           ),
    .M00_AXI_WVALID       (mig_wvalid          ),
    .M00_AXI_WREADY       (mig_wready          ),
    .M00_AXI_BID          (mig_bid             ),
    .M00_AXI_BRESP        (mig_bresp           ),
    .M00_AXI_BVALID       (mig_bvalid          ),
    .M00_AXI_BREADY       (mig_bready          ),
    .M00_AXI_ARID         (mig_arid            ),
    .M00_AXI_ARADDR       (mig_araddr          ),
    .M00_AXI_ARLEN        ({mig_arlen}         ),
    .M00_AXI_ARSIZE       (mig_arsize          ),
    .M00_AXI_ARBURST      (mig_arburst         ),
    .M00_AXI_ARLOCK       (mig_arlock[0:0]     ),
    .M00_AXI_ARCACHE      (mig_arcache         ),
    .M00_AXI_ARPROT       (mig_arprot          ),
    .M00_AXI_ARQOS        (                    ),
    .M00_AXI_ARVALID      (mig_arvalid         ),
    .M00_AXI_ARREADY      (mig_arready         ),
    .M00_AXI_RID          (mig_rid             ),
    .M00_AXI_RDATA        (mig_rdata           ),
    .M00_AXI_RRESP        (mig_rresp           ),
    .M00_AXI_RLAST        (mig_rlast           ),
    .M00_AXI_RVALID       (mig_rvalid          ),
    .M00_AXI_RREADY       (mig_rready          )
);
//ddr3 controller
mig_axi_32 mig_axi (
    // Inouts
    .ddr3_dq             (ddr3_dq         ),  
    .ddr3_dqs_p          (ddr3_dqs_p      ),    // for X16 parts 
    .ddr3_dqs_n          (ddr3_dqs_n      ),  // for X16 parts
    // Outputs
    .ddr3_addr           (ddr3_addr       ),  
    .ddr3_ba             (ddr3_ba         ),
    .ddr3_ras_n          (ddr3_ras_n      ),                        
    .ddr3_cas_n          (ddr3_cas_n      ),                        
    .ddr3_we_n           (ddr3_we_n       ),                          
    .ddr3_reset_n        (ddr3_reset_n    ),
    .ddr3_ck_p           (ddr3_ck_p       ),                          
    .ddr3_ck_n           (ddr3_ck_n       ),       
    .ddr3_cke            (ddr3_cke        ),                          
    .ddr3_dm             (ddr3_dm         ),
    .ddr3_odt            (ddr3_odt        ),
    
	.ui_clk              (c1_clk0         ),
    .ui_clk_sync_rst     (c1_rst0         ),
 
    .sys_clk_i           (c1_sys_clk_i    ),
    .sys_rst             (c1_sys_rst_i    ),                        
    .init_calib_complete (c1_calib_done   ),
    .clk_ref_i           (c1_clk_ref_i    ),
    .mmcm_locked         (                ),
	
	.app_sr_active       (                ),
    .app_ref_ack         (                ),
    .app_zq_ack          (                ),
    .app_sr_req          (1'b0            ),
    .app_ref_req         (1'b0            ),
    .app_zq_req          (1'b0            ),
    
    .aresetn             (ddr_aresetn     ),
    .s_axi_awid          (mig_awid        ),
    .s_axi_awaddr        (mig_awaddr[26:0]),
    .s_axi_awlen         ({mig_awlen}     ),
    .s_axi_awsize        (mig_awsize      ),
    .s_axi_awburst       (mig_awburst     ),
    .s_axi_awlock        (mig_awlock[0:0] ),
    .s_axi_awcache       (mig_awcache     ),
    .s_axi_awprot        (mig_awprot      ),
    .s_axi_awqos         (4'b0            ),
    .s_axi_awvalid       (mig_awvalid     ),
    .s_axi_awready       (mig_awready     ),
    .s_axi_wdata         (mig_wdata       ),
    .s_axi_wstrb         (mig_wstrb       ),
    .s_axi_wlast         (mig_wlast       ),
    .s_axi_wvalid        (mig_wvalid      ),
    .s_axi_wready        (mig_wready      ),
    .s_axi_bid           (mig_bid         ),
    .s_axi_bresp         (mig_bresp       ),
    .s_axi_bvalid        (mig_bvalid      ),
    .s_axi_bready        (mig_bready      ),
    .s_axi_arid          (mig_arid        ),
    .s_axi_araddr        (mig_araddr[26:0]),
    .s_axi_arlen         ({mig_arlen}     ),
    .s_axi_arsize        (mig_arsize      ),
    .s_axi_arburst       (mig_arburst     ),
    .s_axi_arlock        (mig_arlock[0:0] ),
    .s_axi_arcache       (mig_arcache     ),
    .s_axi_arprot        (mig_arprot      ),
    .s_axi_arqos         (4'b0            ),
    .s_axi_arvalid       (mig_arvalid     ),
    .s_axi_arready       (mig_arready     ),
    .s_axi_rid           (mig_rid         ),
    .s_axi_rdata         (mig_rdata       ),
    .s_axi_rresp         (mig_rresp       ),
    .s_axi_rlast         (mig_rlast       ),
    .s_axi_rvalid        (mig_rvalid      ),
    .s_axi_rready        (mig_rready      )
);

//DMA
dma_master DMA_MASTER0
(
.clk                (aclk                   ),
.rst_n		        (aresetn                ),
.awid               (dma0_awid              ), 
.awaddr             (dma0_awaddr            ), 
.awlen              (dma0_awlen             ), 
.awsize             (dma0_awsize            ), 
.awburst            (dma0_awburst           ),
.awlock             (dma0_awlock            ), 
.awcache            (dma0_awcache           ), 
.awprot             (dma0_awprot            ), 
.awvalid            (dma0_awvalid           ), 
.awready            (dma0_awready           ), 
.wid                (dma0_wid               ), 
.wdata              (dma0_wdata             ), 
.wstrb              (dma0_wstrb             ), 
.wlast              (dma0_wlast             ), 
.wvalid             (dma0_wvalid            ), 
.wready             (dma0_wready            ),
.bid                (dma0_bid               ), 
.bresp              (dma0_bresp             ), 
.bvalid             (dma0_bvalid            ), 
.bready             (dma0_bready            ),
.arid               (dma0_arid              ), 
.araddr             (dma0_araddr            ), 
.arlen              (dma0_arlen             ), 
.arsize             (dma0_arsize            ), 
.arburst            (dma0_arburst           ), 
.arlock             (dma0_arlock            ), 
.arcache            (dma0_arcache           ),
.arprot             (dma0_arprot            ),
.arvalid            (dma0_arvalid           ), 
.arready            (dma0_arready           ),
.rid                (dma0_rid               ), 
.rdata              (dma0_rdata             ), 
.rresp              (dma0_rresp             ),
.rlast              (dma0_rlast             ), 
.rvalid             (dma0_rvalid            ), 
.rready             (dma0_rready            ),

.dma_int            (dma_int                ), 
.dma_req_in         (dma_req                ), 
.dma_ack_out        (dma_ack                ), 

.dma_gnt            (dma0_gnt               ),
.apb_rw             (apb_rw_dma0            ),
.apb_psel           (apb_psel_dma0          ),
.apb_valid_req      (apb_start_dma0	        ),
.apb_penable        (apb_penable_dma0       ),
.apb_addr           (apb_addr_dma0          ),
.apb_wdata          (apb_wdata_dma0         ),
.apb_rdata          (apb_rdata_dma0         ),

.order_addr_in      (order_addr_in          ),
.write_dma_end      (write_dma_end          ),
.finish_read_order  (finish_read_order      ) 
);

//AXI2APB
axi2apb_misc APB_DEV 
(
.clk                (aclk               ),
.rst_n              (aresetn            ),

.axi_s_awid         (apb_s_awid         ),
.axi_s_awaddr       (apb_s_awaddr       ),
.axi_s_awlen        (apb_s_awlen        ),
.axi_s_awsize       (apb_s_awsize       ),
.axi_s_awburst      (apb_s_awburst      ),
.axi_s_awlock       (apb_s_awlock       ),
.axi_s_awcache      (apb_s_awcache      ),
.axi_s_awprot       (apb_s_awprot       ),
.axi_s_awvalid      (apb_s_awvalid      ),
.axi_s_awready      (apb_s_awready      ),
.axi_s_wid          (apb_s_wid          ),
.axi_s_wdata        (apb_s_wdata        ),
.axi_s_wstrb        (apb_s_wstrb        ),
.axi_s_wlast        (apb_s_wlast        ),
.axi_s_wvalid       (apb_s_wvalid       ),
.axi_s_wready       (apb_s_wready       ),
.axi_s_bid          (apb_s_bid          ),
.axi_s_bresp        (apb_s_bresp        ),
.axi_s_bvalid       (apb_s_bvalid       ),
.axi_s_bready       (apb_s_bready       ),
.axi_s_arid         (apb_s_arid         ),
.axi_s_araddr       (apb_s_araddr       ),
.axi_s_arlen        (apb_s_arlen        ),
.axi_s_arsize       (apb_s_arsize       ),
.axi_s_arburst      (apb_s_arburst      ),
.axi_s_arlock       (apb_s_arlock       ),
.axi_s_arcache      (apb_s_arcache      ),
.axi_s_arprot       (apb_s_arprot       ),
.axi_s_arvalid      (apb_s_arvalid      ),
.axi_s_arready      (apb_s_arready      ),
.axi_s_rid          (apb_s_rid          ),
.axi_s_rdata        (apb_s_rdata        ),
.axi_s_rresp        (apb_s_rresp        ),
.axi_s_rlast        (apb_s_rlast        ),
.axi_s_rvalid       (apb_s_rvalid       ),
.axi_s_rready       (apb_s_rready       ),

.apb_rw_dma         (apb_rw_dma0        ),
.apb_psel_dma       (apb_psel_dma0      ),
.apb_enab_dma       (apb_penable_dma0   ),
.apb_addr_dma       (apb_addr_dma0[19:0]),
.apb_valid_dma      (apb_start_dma0     ),
.apb_wdata_dma      (apb_wdata_dma0     ),
.apb_rdata_dma      (apb_rdata_dma0     ),
.apb_ready_dma      (                   ), //output, no use
.dma_grant          (dma0_gnt           ),

.dma_req_o          (dma_req            ),
.dma_ack_i          (dma_ack            ),

//UART0
.uart0_txd_i        (uart0_txd_i      ),
.uart0_txd_o        (uart0_txd_o      ),
.uart0_txd_oe       (uart0_txd_oe     ),
.uart0_rxd_i        (uart0_rxd_i      ),
.uart0_rxd_o        (uart0_rxd_o      ),
.uart0_rxd_oe       (uart0_rxd_oe     ),
.uart0_rts_o        (uart0_rts_o      ),
.uart0_dtr_o        (uart0_dtr_o      ),
.uart0_cts_i        (uart0_cts_i      ),
.uart0_dsr_i        (uart0_dsr_i      ),
.uart0_dcd_i        (uart0_dcd_i      ),
.uart0_ri_i         (uart0_ri_i       ),
.uart0_int          (uart0_int        ),

.nand_type          (2'h2             ),  //1Gbit
.nand_cle           (nand_cle         ),
.nand_ale           (nand_ale         ),
.nand_rdy           (nand_rdy         ),
.nand_rd            (nand_rd          ),
.nand_ce            (nand_ce          ),
.nand_wr            (nand_wr          ),
.nand_dat_i         (nand_dat_i       ),
.nand_dat_o         (nand_dat_o       ),
.nand_dat_oe        (nand_dat_oe      ),

.nand_int           (nand_int         )
);
endmodule

