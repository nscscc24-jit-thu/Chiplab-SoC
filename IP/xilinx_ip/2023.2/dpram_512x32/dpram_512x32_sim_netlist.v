// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Tue Aug  6 18:58:50 2024
// Host        : cslab-alder running 64-bit Debian GNU/Linux 12 (bookworm)
// Command     : write_verilog -force -mode funcsim
//               /home/scc24ebw/zzy/usb/shun-times/IP/xilinx_ip/2023.2/dpram_512x32/dpram_512x32_sim_netlist.v
// Design      : dpram_512x32
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dpram_512x32,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module dpram_512x32
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [8:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]doutb;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_douta_UNCONNECTED;
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.68295 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "dpram_512x32.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "512" *) 
  (* C_READ_DEPTH_B = "512" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "512" *) 
  (* C_WRITE_DEPTH_B = "512" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dpram_512x32_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[31:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jLV29U0rrfMIZhYJzdoUrPoqB9eHQ5NXmWyCdqnN3Wgm+GU4C3zthrN1m4QGiaj0thPCIynZbX+0
7yjtkv+T5ByJ6NhiofAwWseGLvPXlYu6ERAPvi4SAYpF2VUqQHtPAbPmnPubGdDRgIEpeobF7hsz
rEcpEru1pyiScUriyuo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vsoizVrOONWw/DhjRLEYrtRmtji+Ok63CbpSg/l9VnoKAi8tAzqRbQ57atGB2N6IGGbKHkbK2Uzh
EHgWvYZeyt4hE+bpQX91vc9PNxfjQMGzPoFD3jCWk30EmEk+AND39eWx+DhJ8xhFuucoOQ2GwyAk
B+Mjs15naPE7DvlHel8hnD4dfSdYhGKp96oozu8JeBto8aHG6poOuYkxSwaut7NCI+mabCkMxtMp
RrydgmRuTvhRTbJMyx5CxFSZTRDrS5aU1vaRlnMiqKCI7g2KY9pemYaJsFeVodBuo6IyKGynyEhs
wr+VtUhQDtaVhMkwB95WwmMoDk9F2L5Au1I+TQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
W081dPMCWhKs5YlQD7n3zvf7+PTcnb8eFWxoVs8+zHLkxDMA1klITbsfztGYvJFce8Yao5XQLLqZ
oUE5Pq2arq+zwICFUcLjdMsmP1WmL82znHOPHm83zNwrxWMloHkySAqzFbgJeHa973uZqj0M8ydc
sYmzCYVlGVjt0QX0xqA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zpc3MmdLWaVOv+S4z2POuoyslYoAbWc+Npxq2UyQRtDwf566IId3uwAetolMAgfLo/G3ezuSOXMn
8NznS37h9XvmVrxA50SAux68P87WgkLtiUYqM3CMBKkxNlZ/TR8WzTuQyFdvzkOE9lp8HC7LXnk5
RDsnOM+su46FW7ysY01COslo9Xc7rhs6WFqx29+Xcqk8+ZMLSzaJfuwZdNmJFS3Q1vhlq3ZeYqMl
wMieB731KsPxjxp7VKNHpTbgFryC2isqc4ohBDOt52M/Bz4B/rIpFeHfZ7X3jWSiKtSuBsDN2NXf
EMjfAT248dlK7NxJ+NBNPhS5sLxTiGyQhta57A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPMYqnkKhJKV1wltOfDrKos9ZbucaoX3WGTuqsdLkGpcKObzslHBwlGrKtWV7bZYmS2SM+QuEMfa
CE+tCUdsSiprp+n5BuSQlJa6BJ8mlqccjoo/JLw2QEmUhyMXQ3TLGomGGoZdeTmMPXhUBAOyLPea
Ddc8mgtTN8Kpy117GOTXDKP+IKJqW01fLrPJpgEhFiJCbyElLgtCRWmI94gX+y4XNVS0Cd1YwNw6
4nHgnEdC7fXARDKcYO3VsWC/pdzPQgursXloNLrVYa6i2xr+8E1V0+nSWwNYQZP7XUIVqXKMU8Ea
bT4acXrRCF/5tJJ5B9JparYI0zxXSbaakn1dIw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mfroTgL8g2pyIXQ/mGO9YHm19cd5mOlJ++qpusOYeVxGmkIhvF4aKx+AyIUz2yGGAeCtOzIasHty
pyqKgZhibSqxcpHgR0m6GOxXXOXJiHaK8NzxUzXeRJovcBI/WjtDhXeb1LRMI1J97jVBtJPJQH0Y
fGOD7jWvkvQwxnrZdyLp6kPWgSIcavHHDbO7iJv4gnyGp6W3/FCDo2RKWNLoW+SNjSdLZ6YRP8a+
ldaGU8TYvJ03KWlmik7repuN6AwxCjg2KeQ+x1sBAEXzROXomuSbvX3ZAo8UiIKAQY1SJumHLG3L
QI/S4Wbl1Hz6LDTsttMwP480gq6+tb6s1E4oWw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QJIabgm8dx/gVHbOQFwt8maOKVHFgkpZTPR6dzD8fqoGo9M9oGPTqBqchtPZWgv2UYFF2KEUSlV4
L3SDXBKrLs+NsAVTcICaEMiEi6j82zj/C1LsPkQfS8RLrg0ab8lbDMb5YqJ7lkHs3iM65x2iN1Mf
66cTgCbkAdl3rDpab75btpTQt5ZKiq5CSY3RZfyIW0uWbTGTELm6liuRKM9+K8BQwTU7A+FFFQBA
/9eJwQYzNNA/iwoYJ2WTPd6pBlzXriNLu9M+/2bYicNBSuH1PBR9v2ESrTB6k7EiV1zvBXV9NuG/
sFt4MumWMuSNwP2W38bQATxxW/l0IrmaXGOC/w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
lhKf/Vgj6pHpme1ji4HVe36BU8pMkam/2I9lFeyOiBnIbzgdEGfLJBcEvkL33A7s0hxa6LFbHnkT
upgMpPjmIghBz3xUQ13vpiY152thFec6qvlcdg1r+GTmnBOSFl6g/OfZ3eFUhfsve6ZjQHpXnKFo
a55hN2+eP1EG9+VxGeM7XkHaeFhEIry52qtnmg072KEFIwRiGs2d/TJ4AqupuIdIiP1kTN9k+oqa
2ta1vdtqPY0dDHqrf+5YSd0CejkhQeCqg/bauLP3755SwdOPRgooG5ANT8hUpTiFMFXtU+GC9NSp
evJtMHUy1NbgMmhFHO+w3URLEdjSaBxZPD7YLdWkF65jY526tJzoek+BzEKoBaGfCaY7O1nHKXm+
89k3rPUy0Xo4/0nHpno+N/Db09heJPbnGsCwN/l+KnR6Lz8kvWziBjZe0ijOkKI+T12y3T1VeOtY
H/aqtNlQt1mhFwrbw6ezaAiDPVbCQXnly6b4tbb8+nFsxWOGIGAfLozB

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PNsQ8uEcQYrl+GaDuBaq1tQ5br5aAdaqHnyrc0NVu/JnQUk53jaiLx8Oz5fNACvWelUUk2/C+P5I
b2rbU1bb/dC6TqC5J1N0yoMYRYw58u4Lrl8Kgqgt9Rlph5Qgzzfxp+oblXF/pO4mRyAXpZhpNkFT
0Ar9BUtPOTOtJ9/g53SRnZ6GjxzfeD+25J4fcXBNo2gCTgUkwiLSsJRwTB/cJmn+dZPwPdIOHEP9
TkfDK+OrbLYO3T+DFBTCMRNH2NB1J9sc5s+nPU8iYnjgPTo6HoGW+LIlCz6yNJMZzJzoeW708utc
0fJXkT7vLDVh7olvy3V9AAY8Do0YR1kiZlhVhQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zAz8RnGHFebkJFAS+gjC+mXHW7m7We+JgSmIz15mS01u/4+9Ng0sJfkeXOClmVPTQ2Mp2Yuv6/6f
ehzUTcANilWsqLM6Q1FToCPNX/NTqodlcHirGM7b5R9yevouNT/aqH12nmbunBQmBHmehNutdCjG
r6Z7kZgeZ2ZE7MMOF0rTy1XHEPkqgMNTRoS8R/pPWPTW4/j+bn3aJj0Q/fTz4Gi3mbSUKWs2fREQ
UKiuolNJkN6DiDvhlVYHUyytXNJG44ikmBXehoQQRLapkYaxnQmMRT1ok9uY6pKoy71CtvJ3Mt2x
EQv1GU2i4qQyAOwa0mkEohWXduicU6tDz3zQwQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TK3eE9V+v1z2P1KjG4GrjhA1n3qDOpNzLGXdtjnjhF0QBFPSuhC+nmNqTPOb3p2a9r5KD0miY3Cd
+KpjH6Ao09E2/LD2Go4aLQh6vP+9BldlSKEwCGfx2NjBQrXWVH21lQR7IRjOvyTOclpd7SgtUJLw
dvebETyLiKr9C6RfnIBeptuCA3iJlXfwkh6I0JfzD5WBizQkotioZmmrXv5105pCXQ4Ta1WThFsA
2ll9dZeSjEDHUxxhfyfjryv9m4VL89ZDU/rGITsdptwB1BC1jLqmPDymY05lyECnjA6NIR5GGfI4
K2y2f4GfikKoN5r9IOvFzw963Wm82ZZPtXOKGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20480)
`pragma protect data_block
LVbdcN/qt4fEZqaSg5mT28GmQthR2Xb72rhqCg1fzNDWHZ2mii1Di9nWXJDRReX2ZPth+3772Mn0
jqC129rNR1EbbdO2rB01pGRI0UwCHsvLqWtfWMdHiOxCr6tamrlgWm+aaSYvqT7eKB8pjIDxhU+Q
qmLL050klmQrPh7k9VK7WM/Zr1dntoqExSI3B43YA5JDkzXHt+Byh2lLCT61rt+oeahYUpPMyY73
ZfunTNwKoT+raqULkapeSZ7d8juFNTOUu+oNWeNPvUL7zGwmBaxgVCseQg6joWRkwZ3XNk4QGsHH
aO9f1la9fyT7qnAODxSfvURANzqEZwGL6C4WJnbczUSWnwgH0RL7o6yT0qH/PbnHSa63qEL1lAKW
1eamL9j7guHLwYF7E9CFwaeOoUVWbTdRmI5++9u/JzDc8bT7KLUdGJU5Lxbpz7OMZXQJhZyI5X5z
ojaC/LGgXDYCRZKpdVkkNcaYOMObbBC9SnZVLsmW3dsmWTUGqLfWbZen36/wE9Gp7PTUhO9Dk7fL
C+1KhnIvtmV3Ul9CyXHz7fv+VusWKWTCDS4RKNJ2dodoZPBN2yJ+skX1lpQewavlxRfP8RdxJZYm
fInGR5dbXrjfqyeOA+rU2N2AeuWmUXDjB9c3xehpEmVATQ77Gx0SLyf4BN213vRCnWdqLkJ5s7tR
KO/gHwzWjDF101CfPWXgWiCEkXMBvOMsE2Lf3sm4HXcYz8N4EHlhzgC7pIAjLfE2F0V23Qip+Vq8
uopsKb5v1M1IIr7pccGzeuqJkXm0rMq5aTybga7JmRkHhZ0qoge4k5K0Am01U8Fn9k9qotXt4EQX
urFPaR3kqigrSr+vxARhie+PHx8yJKDW0TETkOeGjMKSE+urwQOjdyyR+YRr5xDM44mLRCDa2Yz+
hLR+xiQzJJdhCvogSlOfb2xbqrzgexocV3HwxoKLssylpYVvL9KSeArMCarPG1wj7DbveJpNyHOf
6TruUGzfvmpKbWzgDAQ9aGNYgsoL+K4W4VmI46qjcHJsAOTizBe5gaUbk3WPhaWLuK85lYHavVWb
dXLCVgRbfFl5jqmB+RTzRUuZ9cau6EGO2dV5Ats0SCB/OIFUlnf0KYYY1y17p0HN+n2J0CG0VDUP
7tdU+JK0ebKY6qlpS88OoWcMnQCIKTsyO1fu+uRGOzoZlL7bqSEZrficSpetZoFHLXgtM9dgmiPy
11bCDvIEToJ9l7EIMZrfFLp6hukKW0JzoWbh012II93bYXSjeZJdWkhpO6WqRTyIZCBcer0iZuRD
vyoh2Ifo79+kYS6uvT1ucfjCuQtO4KAbxzZ4FQ66fpxhkTBFJGxq1Lu2XmOANvzHfTRAwe+OSf/x
SBggUTPwpiZms4LQnor2h9sSFiiXA5Ea30FvQAy4t24SjhkeR4WKYGItwzdcEBmWOz/YoDaiKjaS
fo9XyiyOnCOFnXhoI+ra2nUfFUYU4LekTt2+BLlJpw1XfHGZe1vrUBJ6MWo1ndUPxcgNMcwdLJ8H
gDuhipT/GjZ4sy3LTFE2A3TGMYck3rdDQSftiBqHmbs+WxVBr6l7d/BKUcjcJ/6Ctw3IydeHFlQE
SmBX7Ps6a9oHrzcnNdin2iRSak34BCC/fgHa9RF4wBkW9VMJW1glKlSzUUKK/T8XEJHZZU0+ig9V
tGgA2MY8f3BMBXK4w1ny7pr0NWlykQjugh1Mhbtsmtt8C8GOzBM0tzLMUna6irW60BwnkWY4ysFn
5Si4hSRYGMz+19THFnWINh3NKy6/aQwyuz+NPmbmuorerBtZPc5Ey0jjmVUI1p1ZEpqTij8kurTp
f3tZYWY7kvgAQk0JOGtoSNlCEIXWWEoCrKx2Og2jM65Anynm8rjdU8gh7Rk2nRfgPQgKckmrR1e5
830ttE8kpXXjhqsbaYGJmaOqTpTdxlmrSVEugvYK9QJ79O9f3HLhqfADf9ksNigt8fdaa6SGFySF
eBEmKXzVvByn3fjrKhqNhbFpiC8qGS2cKsJIXoxZmn9yGuSpWNLw/Q9my/EpB42n6xGc0YEM+Pdm
7bVwxuNfXpJ/oQezfWZlKD15Ct3NnHb2T1sXX2mdI1Lmz8ZhudoOQXlz2TdkkL27evazDKX+dSji
4J7b5ubiVahYeoxBRj90/qU15ruidY05bOR5nRCs7JrLT5En76yFmy+Z/Rx+oUKnhdM0gWLkaLzY
rT5m64qD+xamrbA6rucuD/FsA7Ax5MF9N2sfQAsQhEIWSAOd8aA4PPAzdpV/4yo673R8PDN4djD7
M6Y4Eo6F6GGRfjFZoElZIGqEdRwrSNsEqZKw0/Ruje971Kf+4HiOXCIsqn+piCcLhnAa6Z8j1N7m
GKqOm03CEl8qyPiER6XxCf8PYNGhS2OkLeRctv8Y93eXNR/WjTQdrTxj9vzKMg4TnN9Cbo35Oxpw
kyJbKoQCaiV6p/i9j+f+RN037D1NQvFrQI0K2wAJM66HNQiEX0S1i75xNBgHMH7Gftc3csqut1d/
SHaBUaIF+OHXSt1/4FvyHNin1Z5S3C85z7mVUYLhmmZ0NjUGvyuWRaBLed+f2QI+1ZMaL60nI1gk
Rrkl3AewbfGo3ugKKXrx2sUKoPkjVYtlan3TP8+Nn4Z79L0yAWpNceQ48x+ZkLj2jMhwKhbIh9lq
qNe4Ij77A4OYS2jADQ+zeBUJrf42CWei1l7EY78guHXPd+USVP7ZKbeC6WWMWtgvD4JL/XDaxdIp
o2u4w6adNKnSS8zrEIbM9ElbDwbsaWWnNIj4Hty03YPkyd1VodvQ67KEvgaDKjYpuNA37xJVqUmC
7iDU9niohPMZMaBNmJ8XezSsRux9JDaNFcSrRoXtvD6OWJm+e0+hkpf3l6fG7uAJXS8+I+25H+7I
gUqqL+BREQXIWKsPXj7wbwyaqMD2AIvxzTLddlx1WDJZmT9d7IdxEFFkiwG7+CXX0uYJjta1rfEu
A0+NCKuOP+k4ahqXAjUe2EAugFGZ+dcUBqHM9EV6a9l/0aZ3K+puuVOE8ulTZdy/7ylMGB0BPBzC
FUOhAx7xxgx4+X1ou44KGGpTtu+ZX++WMn48H1cOXasD4jML4OxuBi/4u/CyVn9mRQT3Soy0jONH
QXLsCDxDLxeBdEDjU/ripQBf1E/Dfby5FKSTgs59FBsXPHmSjl/UgfZWUunabeIqQpTzMNhi2gSR
EkjuPKM6B1XjWQbB+P5pH8CmQEz3fc0Y9KItB8uuGMBxzs8EXlakeCxS6xQhcPtoWBZx3xfM0DOV
sA7aKWPdJh6mkwQ9q/Tt4H454o6P/1adw9tMKT0gJixNrf4MSC/+LEORYjUGowNumqZwi8RhQLj/
eMdTJsibLDBiQoTaznWKJywdh/2cwz2gBB9bb+NMo5fnuabiWo8QwiP52Qrl6ycqP1+3NZYN1e3P
GeSLymLMbBgnTbw/aS1NRvozdpyS33MSXLhBK0ZbK4eLf9GuZBJYhRDLYiVGjLjl2FerVcEByC/B
NGNYu4UY6rEHZtIRgCPrn8G/FruLJMHsWxWhSQ7gy2c880Jv6R7T2LRjEA56Jn2rE4ENfLir6gzP
9JbACxB2b6ksnGHhWgANJGfIPenZ/P+oY+6Ha/aLv/bwsIo91CT5ECkuTmaJIZaqYtwJbHnkkQ+6
E54z3W7myobZmGuzGtg4YJSLTdhyb47pdzz9YXXKcXNBmbHhy2WaFZXfTNckpbTVk+D6oFyzV2Jl
I27IuNPIZdmHSJuR0UITWKUMCpIHMQp8+oCapHLOYvnHSPU0dOOh1JNS/Bitka8kqqHOLD5YJCvw
slM6A5/jYUlsm/8ets0D+QGBY591cq52QVzy40dNJCMX4yd46/4dbckbAI2nrIZoQpQIAbsDcEND
2LbClhWFmRav2QHq2P7ePNFJWd9M2EtyUuJwzpOuyNPdZMRvfiSGkHDgTRm6uSg8GPiB5db7OwYk
pF6qmCnv7YUWTLlfYNM6X98/KOZRYKlPgdmxuZYRfcuXfWxFdTCK7yEQ7UebQovZnSR61ZizIDvc
KGBb/CrKPlNpLxHRp87uX5efiBJobZo3okHxRafdIP580PBWWWixX8SHycCmBIytlwG/Vs5MPPiy
r6dSFQk1d2kaw17buR0luECdKswJ4f0gO7xgor7Gq2C37N3uvBTh2veVoo/2M3TzsDdbZN0b7quF
RlF9pRa3UaREPR8VaQV0LAqR1L+nhHEQjxcgRoDf+8bK3P/m6gLdNl4LiOE3mVZoOh17v1uwZRq+
yClnCzTLd6k393rkAM/qnkebE0k5xjgI/RC/1fl7fvvboD+CzNrd0OSPzLUaelGVEWyeiJ60Ts7+
VZnhb0+pOeRCmsvxl3w9jCsSl7XTLu6dpvX35T8Qbt3KVcYBjk9RxaFG6YqyzaasOKglsxvvQcWp
q3aJACH0x5JMnQb22ssYNE25vgzw1O5qqpbKD9de+stbXTu6O2PJxKa3egXKLrFCG/pHGn+JH2b3
4+4vsNKyVRo+sk7FrUVqbl2cOdIfL6gSS1fqdNEuN31nCi8mbAFbbsCRWMBdp2VCyOAT6fVs3j8R
ur5uheazmnB1RyE4wy3Hnif5BNE0c1FRDeakTUzmsvNdKpKEXKNB5vwsliRbotK/ZmEab7ig+toL
m10X4R8UcmSUCRKQsUPJPieE2f8x0Trqw9j37qpHMUhrOyDuC9SIAWbdebnUUJ4IZIpxGN0rj9b4
A0ApmZxpV1720RVjj4bMmRTGZqaIkk9j1F9jdsfgbqElIt+R876bptEGyfXVnpEwiybib4oxKvTk
DQq4++LGEcSEc+mfnUARA3tzBxi7n6m28FOQX27s/hCFZMbEQbCJs/2SucwQuLeSwSsekM69N2IO
T5qHwg882Ud58QZCaL+0hYR5KOWucAY7kW5y1Zl2aTYMnM4EijhJnpy4leDyJB3mPWarbdp5bBxw
OYNhjQT9Crw1EQSwawjK7V5JtoiR0MOSkaz+FRiYZbhGeylPN7RSesju7J1VU2g2yTEVOzEf4eEC
CIEpoLGlSW04M405RnbAr5la7M94LaVDgA/5DP1YPtEvTOXcQjITdk76YfGM+jISNC29j7tz0ioE
PXXzYit2IpLK9N634hkX24j17JV8koo3XV1ejrFOW2rLktj5lNC/4J9/QtEwmVWdOjEX5L7SDzki
uAlCBZ0JAPxxsJG97wdtuAM9eK2/Ku0qlls/8jwRUjrtsHrrXkrxSxBnONFnUhJXTcN3wsEPcYU6
DmtIUyKDU3BVX8pgvVz7uGynK9QJhxdJl4aGGHbIvKNplPBj3JkscAsnCpYLYqug2/23X7h8+Pyj
I5EI5G7i+4UGkotZ0jrXbp7PJfL1NPMgyHoeiul8KWdinWtPZqSdFN4GjzTa7w1zEvkJkF9itlym
9Ijk4wbrlx3pUjgMP3THmOuamiG47jEF9ps+Nhlh4alSAvCPaPbiTh2w2iGkoZmPMZj93+4FZtuR
nlRd/6iW5fRv29WKu8dLE6SG00iyxJpqzBZ6E4u3lJXr8beY4x5EWHde+qfFPMWq5p6bfPsRD7yg
9L4GW6TaToeCDYokhmqaDN5vNaAPoQwyzdocrGOSY7V1UDvql6Lx0I+7q9OMzkRc05MYopF026Sd
EsfYAkS4EoPOf1TZHC0JKeI481HKZ+Qn85EPFX8IC1sCu6PtTu+QL8EUkhFYtd/a2RI45q7i8Cir
mjtaDkdGBepHeKw5dV7U2sknmmdKOGScm1/8UQkVfDuHHw65/u5N1yc7cPG/uVgie9dEnAcZZCvB
e5DWh4s3Rr6iZ8z8ZBPa8TNTV0cpofCf71Tz2G0DEwYH1GKvIuC5UWXyDi0SEFfpSrAhj2CJG4HO
rcddt8HVloX9G2hCesa9TRcxL20yu4gAXvubyTkiQrEr+R0wdgn6nN6HSAim3iuV16wP00Xg14pF
cvbm7b9N/Ea/6a9OsH67oBLwyyHGv3pXSKMaEHoi3m75RyLaD0Pu/1el3Kqqc1FumqVbV50Nh+nj
8CYytP3+ZZxlUs0ss75xH4J9zyyHG9D7pjipA59v5M9By1oC+0lWDi0lrOAYy5MA7aUGzJBrT4Ke
wdNMBaP5CGMkr3hWj4SuF/k3JRQRm0vrcWwrAR1AemCYa2gptmy6gLyXtl4Qh8rYruKhILlDmJ/J
uxsBSIg2U/3s7RQDX7jEsEAkK6Y9gXlThiLHWdpiUYQ5YLJFXhCth+pj6TVCUZtfdEJOHuyb3nOY
7zcNLU/y5xN4WOYkqGFPv5xYAR8lrv9uKCYHFWUK5/nVzVbJtN/8fQUXA8V7CdX8dj3CXRMc+Pnd
oeET4bFihy87lj8z+KvgOZU9CZkfeW5l4ctvVos/2V6eGkNCCCdQl0inIR+AIC5bqY7brvf5g7R7
G28+PxJJ10NP5DMQ4UrPeXD0LK5QBheZJ6UCiJ2FjkDLz85gRDH1WU12vyvrrit7AgB3Idr5st3G
1wZ71j9q2Nqlw4vwZJ7w0QHm+BufDXTP/pkVC3QoRqygZk4M+5lFIoMkEPaGWpezQ+qdsOgyJ2sH
FJbvnNJgcAPB2hLMc+gdOVxVK0up7iJVYOKFJbi/UpxhjuZ1LOrIZPPWjGsfCSpADt3O73hkuoij
ERsYzgmOfaGoWxUpt6bHlTH/ao2OqymMU9DNl2WfZVf+YKWDY6amc2T40gqbMVGcr7t22HhJnbn+
UxidB0G4gRH4AGw0CANHba2zweacpnLJJgTpxKkdWprOqkKOUr7rxXuVLvQlN0hoxc5jFhhe6EIu
xI8C0yeAO+FJgN3w8A5M9zY8062D6EB+zEha43g9Jq7BiA0rSr/xRsnEljXtpiWU5MihTmUgk6G0
0c3otV/pcqiPPj0KYgaSbCuW3n/TY2GTA1CHnbuvkA0I1CZpQ4OdEyd1Q7BA0teA2wkHBdQRyy43
bJGyh1vNqEEgaZbvY9WlCWtt6hu1yOKMHszA6r2iVm3GrfAooEiDwGwLaqNyHezpSzJQZaW6yuYF
yTxekYtgmSsX+YUyGedYcDCgmk1aRiyn30JdlCVjCKFrYYMFGMvgJ+01v7QbXJJZb260MqVegBuq
dQb/mNFN81w+AEuo7BBYAESYQwhSvwCJgZ/GOVjVUNUPigRUgh6LFG3Kyxt/0ja0+0yc1r23mQ2o
2Zv5jg1vwxJjOADfEiUR5QHJ6TTLPpfyPv21LDaxdJsLfO5nJdn05/mDMuyTVsn7ic2/pBJxJtqf
oA87+Pq7Jwo6YF78fpFHsoqVEtjkaK6gzsfIXPTMsrYtAhSc1uRuQH8fq4n8PWDezMHHJdFXqR+5
zffIOlyQlJD94/Wlf1VZ/mpIQ30Un+vpy6YPiIUimXwrzWpgcS5j0fX+ksSbeju1XHW5tcW/poKT
XOza8P27hY1yvseC0pGw92c/DQUFO15NBzcXiWZy78rT8eNm2GbPhc1G1Zkau4pxn48VCcK0LN/D
xHeXm+QHRUeYA0HqnE90Qy1SA3dMmneyh2d7iejzw8tbW/fQZvq+sjQdp2I0bIw5nW16wjnMd5xl
k7HYkse3Ck3Rs6J9Yil0IZsbQrvJTEYG78AWqhZHvMggGoBVMqUfAlWyjMQQreu54zSFezNsdjHM
3Y5mwlFdh7pfSuB6/sukSPTqdPz5Xvs8P1gg6gKTWWroP56kX/bBvPLFRte9FHA5+CK7MTR+m/eo
TZNhz72x+K/KgfbXAuvHS3GlqrIb5TE2oV1BGysln2iBkL3g1UnTEjEUchXCAHYwW7aiMpAUkLev
8JEQeSwc4jMgFRPYSvvH+oaWQuSZOgpWdvy3fTvPF5xfzBGNo5DekBTtIjci5/n7l4Gee/1iQI+T
0ofvNpVTf29HbgKZrs+GWAKmBtf63s1E11cVr03Rb45oxmnKwiJ3PnZi52KRPrxAHpHS/33EUSCO
aYqMV6zE5E8vgU63gEpB+UVqSUOukNEJ0eB8KwerLNuHU89HvVVn6gBiNSvRYM5ZBtAACMoQ/sWZ
+XIWZriXQgA97wsdbmn30ywR79OAMH59Jbds9kYV2pFmC++86fCYT0tpkhmE7qI8094uORBaq45N
BgSflPSXiMbYuwB3KLPIGIzqMZtd9NSrdjRtIyAzrq7/KfCccLcErzBjJGG41Mgf/mpdZlhj1x8R
6TNc0Vq0Lew4jxHahGlwIHNlzvcFWqznLBdDFrW3ehEg0r5EaGNFmfmlOwxkiuAuWeQaAKNauVKS
4574eGCJo3iKt+Pf/UbQ5+lA/yNb1d+aVlCLEOi/hJWjMSbkrP5IeJL9YCHQOFFWo+I3kpZAdxPC
93x0/FVHv1i1a0v+Fh0X4cx3CdJGFbzy5uxADqCWwmywZw8tM5BP3NwKgogFIM31y8maaM0JsKPY
KACN8LL3clntvPGjWTXx5zVTYJCXMintCYvGUP2JhSGoGz0jaCXpv/qnqd5E/zHPBb0k9NmtsEyZ
41hmMtQcQgElS0tJyQeJ/uCX0A/eVtXGTPUwnXJiCe8HtJqJ5zXoovr3JgnRcTre3JxQ1iEOpqG/
yPC1Knt0tiDCDY/otD8JE2Ic4b5drThW51AhA0tcqzyYipwM/b8J8oEEPEtscmdYONnHp0hueBYE
/zGED0PXzAj9wuiAKO74lq1lMmeQzbft5NLfQJMs+gRLBmL4HNMh8aRkGGRQx1VDp9sTaTmMUB47
wegzJLkH3cGj5PVAlbi8yfbykeFhMwrwyGaqa4azBMRqK99vB5AFVTMvbm7Xp9k3p3OcdxJV90Lr
FWCFhz/ugSgZg0N3NRhG16D6YE4v+IzzlT08PIctfpQsYzGe34Pji97690sFKfFKXeK3D7kcW+j6
sdC5oeGIr1MvCJRfEui04R00BDtcb8SB2vG7RGAsO4JW2rg1cSM5LElYVhjRFQliG/Gxv6XEmPt+
yFWWE6OiXw6cTM4RJHRtJfF9v4fuIMQ7DKZWYEGMAW/LioVk2z4m1i7waDvPc0AAgFdq8GN2Uedc
Pi1HRIWddYY2KcHNxjsR9yFkVZ5saasOj2JYQ6SFLvWQfGm9HcL4mklBB20dGMFIroLntwy2Kruk
68K3t1CpjEfzi0++/tp+tkqJcSOk6+x+p5TSQzjdxRcLnm9Ze0lT8/7GPbtQvGKnEENekIZvTeZl
FhpoExBFc6KMAbqME6kJND58TWVMGcOc1J3qe7JiE9OZotGZ8QTZoNYoHZVCTTlyYqYNyQmQ3SXf
QPDaMXtOdMjr0H+porduFrRZ3AxXnse1PAPfqwnYKQDGHjB8FJQuaxKuVhXN7eFNjKdNnY/isjtQ
WeC+uaY9gWBKhmdRK+aS1Vp3B05+IDcMWpLKlL+4bywJkXDWuPDX6RC2lUG5Yo4HCZAxOw+b8jyB
ofjOBPxZhKh74C7cXHuUnrccrB55sg56C/yFqywTiwemC03KIv3XQxA44sRTtBkWZ29XAKU27u4o
3uaiWbZdtCRdHhqM+lh7Un3WKne9hivXOaEz/mC7+FB7hwhK7kkf4/EiyEGwBB552DLY704t3stA
HYg4SU+waraaTSDusxLua4QpeDN0PmbqZ/HBcQbqvQUWNFD74/oZqySrmmgZ6ubcE5zrEEPVOgrK
9BLO98pbCLdB7aDKhqyO5eY5lPytTtH+npMAxAqvBzEWdHOjv5cbnRDJpuY+2Uly9kBMsnrsI0mb
UMHHPmbbHwmWmDlhdU4FBF9SI9Dw12IVM7bJpozyh1aRJGzFAm1mzH4AT2AoTmTFpgPIIm9cwtpu
Df1HP4V1RHr7BSx1jRoDmAtymyTt8k6B7FEqY4k2VCxE/PGscc5Ua1/QaNzG/O4I1PSLesjqQv1c
kFKk8pnriOnmwqEtxHnECCUtvTpY2XVVNMch7RCo5dknhTpB3A01OLHwqTFkVHKoH1Cb9d9yEIRz
d5XFSc8ugDt2D22P/CfLSlXFybX0c6K62CuZ4vssOwa/EsjPfCbblqaAbpi5y+gzKGOYsDJgavLM
Se8WjHkkaPndbdvpZnDT4hag2Bh47a+NbZxyxEVe4L/J7LGbOVS2qcVtyGh3kthXl6MLujj+xgMB
hn0ofo8IpOQuUUlHp2zX4Zbo+W1IVVBMC4Rsh13/MgvIVwig34styKvt8K14P+l2IKmA6bGnOJMB
vevHVFf9xF75cqO4hdyPVy73a1i49R1Yo0ycoKxAwfRSCYCSWLaydusRqj/SWUmis2gAGnR8hpyX
ksGJrwHvHqCKlwfWeTLTVPHot1JZGKdtsOknzJ4bfZFR/oThLxopYLz7CIKmMCfEFPS4OsBC3ZIM
4uXttzusGPSVuljfiSYR3/emg+t3LUMvMztC1KSmPPe0NndeI7pC4mrCJsuQQ4SIz2bPmXmpcd9Z
DtttAq2fy2fdxCc+LZhkHwAZiSEREfLw5GVm0EIxS4PM3OM14gPUNxFEd3M/a2Y+38GZ9kVWwaY5
8HS2so4aLBxNECGNVKaruPkuCiB1VpGumzm5HEKU9hJ+Ik2PuAodiRk9LLKzdr950bOIpRLoXK1N
GAV614SwzpWRS4RGM6axMMugHyoZEqfuZOHPm66lGcdifbSIePhp6HLoiLjk3bWL4zKAF4ggc1sZ
xPAH84HUL2rG97BtcNVhv+BbPpiFMAJMveePHnndFG8O/dE5k+6GSWuWBg6dHPn4NfjfHqzzpGzk
kZGZDAC/w/dZbPYk/ybNbsJo/4O3KwYNeHH9V6oyGwBqSp7rHrX1hIuswr4rQVYkFAp4NpWyDZky
Ol6TImVwGv9qpPn0kN9AqOOk6tcYEBK+fZU/TyrKfmL8NF5B09vO0e3Vt4nQLUAoMxv+ABJ8IJ7h
mrVEgVXsChRTPTDwVhqlgPkyHnMrsspQXa0Vcj0a/OlSIYxLx2GlhSbYtKNdi9j2UgeRShI07Ojt
oGcD2fVsmCRDv2UCwyFD+HOeRxeXNtkKen0QvcJREj4TaUZYW/ng3gN5o9LlXGZG7DnBIkT9OY2b
3ZabIVrht8a2ErvwymqQXL3+bS6WAVH69DMG+wQOhCTPEhRAle72049gfOkjwN6xROk0MpkueeZj
8aMhsY1+z5pIYIAV2beSHR0dfXVDssbrib4uQyZtRpqN0YBR+ngh+WeBWBqEF7W3yuwyAB+Bdbr/
vh0gtIyShblBdXLglg4DSDVC+IKVHLXa1dcVWBjYjGYbJ9Vwv8wzyFP7rX8ELa0u7pRXJS23PK/G
tkgu6/3TWABDJJD+tBAa6vzJltHTtk7lGR1iGTwC3xwp/12HvHKAT6LiiDlcn8h9ZnfzWTKLjcBw
fIP2ys0t0w/h04QLUPgolV0LvjwSDaLsDDVRKNMglJO3JglsurK0OYn5w6rUk6/46OSjel/g7nVp
QSCu1UL/I8WVP0fREwl4KCiZ/+nie9F6qMFt9LObWu1qclwy93igfdKdqChg5XEQSrpCp2hdyc22
HoMLoRw4JJjvkcBMMU9JxmIf3WkDLCno9R0o2J4YU5QgdC6MXHwCPsv6qpiwxGqo+Xu22CINdlKg
vsUW0p7BbUQw4C9YInL/bKQNFrKWfHPQWggnrIbxHousj3xmy0wNI6wMzqaqMrKcRlnJqGIoxhtD
e4f2pd5t1YwNgLl3kVH1xSxbmRnKTWUvtZ4VxbV9wsKImnwO8Vf5XYqWUnCnMwnhaz+ipaL47MmD
0KcFJ7AxHHOZVYj+KtOVzScm2S3nx3Qo6Cjou3jYNSd/50eGgLQZz/d94KT9aQ1mMjswGPiYuAlB
3iOql8XDrLRgCI9heYMdfg6dezmg6gi1z8btNPGCwFyViIU99Ui/sntLAAArm+u/ATjremhCwE+h
2dA7dGUscPwF9W4AZzFBgk8xWIIzRtK/wNGZc6SlNTfTkjWBmqAlH601jSu8UMob8xrhqHRtqcUl
dr/Vkasm+33vtYGgi+vSxOlmuyUqYsv8+EW5kxckKS6kbh87ChrKAQDvcS3FfFwfVJjzRyyUvHov
FYZxfEjdPXxfCCH7Ccxhcsl/tm/dXaVYLSURVDe4Xlvi/ANTRzpTpTLXi9oxX3JbyUyMucB8pkvq
U0Wbi58dnVFOxmQRXG4jESLErV7xfNYyDxZtd9CVV7clFUNCUvB0M2/G9N+/utSCz2dBhAfcceIZ
ZbwnkB6TMrhnbiFQKDgk4yQtPbJzQz9o4jWDkIZkUktiLVGBc2B+hmmzDicpAhgvaL0pKdG5Aw5v
37h2IAhsPNdFJ2fKYfwPG8NKpX1RmA+eUC8LrmXK906LlCXgmXHZu7LLyg7G/hvKuCwwAczPB2gV
i9YY/+/ORyRQny2c8P5vxGdQBwRj5TcOH/vGxadnAF1gl0EWzkRkbEioxfWhf4CO7a713qz7IihC
TmpM/n2fyVi0qiTGpfyU6wIVFX/+uC5PrYvrNLCZsk9FE11YqOxEeyJcTt70ktC4xAeyzU2SrNC9
vMbybKM1Iko8jg6NA7kD5d4tiafmtDL/exunhPMXh5RnMNDU392b+hLuYH/kBzJlmEk/rGZowni4
NXhxdz8tzG6NQJDUFbQbuFI5ghp+NNIJjrzObzWyNecOmpa1Iq+FtqzDUk2DiVwUGvQaeWN/zBzN
ue0HByhJdj7cCXZToMZ6U652Tr0oZmuVn4p6lWI9+2iuPq8DsLyVSKQyVtp4E3VBYGSU12w/cpmW
3PoXwOnZQiQHi3h84aVUbMwChJwGJfMt6Qtiit5NOn4D7Y0TqEzHXRG7YRhJSEiNxRzoUfynVZtI
/mqQjRpOB2KX8Q9FShq2IyYauL4kz8nLf9lSQriQCr8JC6w26lmyr9CF9UFhCbPRWIZzD57IVu5s
cHcJBV751EYQBEUpNHkiYcnxNqVxloFzRU0WL6gvFtNhjTttevJmRVMORSPPAUkJXbGCuqL1lOaY
xal5BtNAm/od/fEHCsxSK70WtLMFop+iS8sjVRsRQZotxBIrCKNcGV5+QkP4yZNQdpwNmnyqxbil
po5fkHSEqTnVUdngVIqb9ppNyaZTIC13JiBrjXbAiWodiEz37gtp3prPZzRpR9HwshdyIeT4DNAE
/zv5lPLNcmlr/ddDzsyq/2fSR8/xyokaYrq5S9gRxjw9JA3eo7cKQHJKrPZOX3YiLuvf6PiCJYVD
nzdU1EeZGjw4YAKmBjidBguix4oFkyj4gFLFj1iJbqErgWW11yE9iDjOnBXscy1JqFLndVWVKlY1
FJr3Ygo2J1x7RnvjoIjg00ouoc3uxod10p6/sW7rb7Bk5jTTopPGo/5vp5SjqzipczRLa1EnduBc
VGwG/1IGDQrSkmQYLNP/7Z2A4ETafjp24agqM/Pu9+TV/uV73Rr5Zhar9kS1Vlz8PFNHGsEiocnw
pYcHoL6Sazmk7R+TwG8dg9SC34DfayA5pts59RBogOEBRUtQJj3Tj2jJfVQcC+aIO647KByoKeAL
SDez2PeaCDY1CsgAiGwBoL3r9yTvThMxJtXZHZhk0xXZHEwJYJ7vfKllMspYdowkdj1jaxDUqzF9
/JeBGaSVNygzoz9tTZB8t6YZ0y2Gw+Ot9wyxxBJlgBuFEvW5mxOLEcYTSVt99AXGUnSHuBKGcxH+
sg3QA2ycclbfzRXPAU19sPSpkjLzcpzJ1gcqKTA2FQupnDLUCeHtDY6tf8jiLqBB8BLzNdRyBPXs
VHzVVmEjgiE2CNkni42s58zXkSeghQ3FUuc5rzIrCzEYePb4DDerSpMVyRv/PKEPEyWtOxWENmHv
hiiCSDRwHl7bca6iaypiSELnzHkvfntr3QtmFA8w76ZRebUdWldu1thn3hIqM7ALfh8IWylkcZtQ
Cjw4PIdfDFZaGvFSBFIWevWTv2HTGJntzI6VZ5bOicjBx5cM2u6ijPPypalIniqCD6JlXVWtNW2M
gF762TXFIueIM9GyTpAfa6Qa+/nlidmccODkWvwhG90HYwVZMtTOFalEdBuaqQc2U664imb0z4/X
G8zj4z7ZcbWzdbrJIDsiLthdJV1iIJIFwOIi29ew5XSsUeegvgRKm2nKdrz0dnjRYaVzvrDeKVGA
gsnvALq+oKpL1hwVFdTYdGmw2fADd5Z45G2bptmcLAzfxZgSTddk3msIU7FmEWKsehNe7AYdUkO8
XvEZGqLSSAOS/ynQZoeh1OPWik2i3bxBHWqMe3neMptebRf588NO+Izr80ool+KVezK6ecrmPfbo
IIwntDIeKMsbardB2O83DpBBYdm8thvoaPDvbN0OaBfapJGscjmNRFSV+rrQtMWwyoVKuLFVWtt9
lJIqrWTzTr+8L4pFROn826DE54KVdUvjECpyH6fMwUTjVJpdBA8PjTwUWBRqjbRsROFEMyjqX6Cc
xeklLn7b0aZTsOKbvc3BgjIJQRtmvte79UHf62WkDv+z5eXLurzAeEXUryJWccL2wx1UMz+UySY6
u23Doh1ym1F59T/yr+S968CgjAU6uQ7tRhKOxDHRrQontaDpep0sc0I16FpshmIVKieZISqH7Kh+
HinD8WnskVwKtr3X+bDLVzgC7FuTfxvPIg+ixXfuzqwulafcHhm2tIYReO/lxMXoO6y508wOX0VW
Yj2/pORG8mBML26x/3sHN4RrB6egTXF4BseKhUbve1fP3tROzfpVuXbpTvmBpui/vhUyrsEl++qY
jUqexQi/uSahc1RRctweTcbvjBisgo20jJk58n7NsKqZKFKZZvW+6j4M3DpbRl4esDkrZBViVA4T
0HhCr/rAK0Q5bKyadHFi4Zvj9wKuPyCygT2MkV2B3YboG+vr456oAIZ2U9ZCOTGLO0CtDa+Nqc23
2eylE3D3infb9o8GeFHgJLsB+89Q2PwxTEhgyQOvdrALEEcDdb9+rPCBpnpj22iecHFR0ZZnUWzU
hBk86QjzbsoqADf/TgmqCjI7xGMuUao7TP6ZQ+MuQPMRaA6dNbEOErJmCrtiFPj9QVCL5wGaufdO
MHSV9wSgv9WVWi58/rF0T7OYCz+Zjw+eY82mBD3wdXNJXrz+9k1c8/cRA8hstpymmKY6EGrz0bkE
p1nZvhDkTPoqx6Nl+R+jV3zQzAGM+EmWD74U+aHCjfN6R27PmRJ6RWdvFpG8+pEdSR1ETZ6xWiMN
TjGKcylPNCkxJFWPV0/DJdw46Q9nv0YYjIXW4tXmTOYQa+/+OUbHr8/lrb7umO0TxqMhk99VJpO4
JWFGlhQSkNBVCZYQt5X6/CNbd347i7PVY5L2Zm13mVWQ4gDBikwfWioO2fQwWm9nA61oumdWbHIe
i5IuhRdhgGeCJZH0soQeASpWTHXw3iQa4S11ah3c+Yny7Ha/e1jCaw611oPnUJTcC9b2SQoaNyYf
0ECGjb8k4cqd5SUdZtUIgSFOK1/7x2/dPH6zz0qbmHqlaK/AxFfG33FwgOpyNIpVvi5mTT5l7/1a
nC4e9Os4tkB+cOdJfOWcaOCArAMLJnhFWHmCYB/OduzIbD8PbjGZPLjbeGoXVpf+SS8cI4Y1vJVf
PAr8yI+n8Oj++h1ON/3S5ci5epLKzHtFPm9NkcP6cLqiwkatCglGO8UYm0lH2u6Bzzs5YorexhZt
GI7H44rP1qSwIDFlWtJcMfHyvtcYI3TxheIi2N6TFlGdBIj3WiziQgHUsbUsT17C94BTx5y+PcLS
XSjZNPk+H0TOKiZu18uLkB/vImJwKud+M//AzJWY5x0uQrA3BoHRJTaLFU7PNDjUXA9xn0MRT8rO
6ZKrXyy5UCaXD98rHpsVT+GmaEp3d1YuRo5c0RcvQjXwQVU3NsC1MSEazJb2xDEDaOX7B4gFi2f9
8FKdB6NuqRQZRVHerYeAk8nxTlWQd80qhEmVkZi4YSfIT13G5mgFU1sIKEDZLHvRJjl9+nCpQr+h
EuVCQDv7glxT/Iu7CkoDL8onRsa4UfapNxhx02xXoOPE5fpNBHOOYGiIvD7azpZfnQ7qDtdrUP+n
JVrYSkOF8reckW0Rua9vPOE9n9oCQSCGZqXqGQiDatR+KF5RYJZUw1QMZ7Gq4OJVh4vxTAkwNRlc
hA6rUo0gTjM7dyXPV5zsSm0rKqVXWykQBvlAIMPx06R2Emq5Sljyn48P2Yv+4iupUT5m8yGIGA2l
cGLR238q8qrpkTYdaSPACWkGD/bMSnE+WvP8RxBHFJVeUtsm7rGSYULuhzAmEQJIcz4+GzcmmenH
MA8e9VFkFSRYQ4ClQqK/Uf4Z0orLaIzPt8Ggy3DmeOFrNQO12JJedfTXysvzKJHUgw56LolGm7Y2
UGGEdbY2vdhha6xPMEOEWVo06De73N/5bnF212Mjux3VfkyxGkxqX6rj47KdlKQPrzt1UEK3D4zN
TBbSlQ5HJ+BiQa5F45hwT2nD0eyFnpBwUH8iGiwSXspyk4NqNHBeGJWj8Q9yRs2si43BaCa+D3fM
pA0cHU4t7MYGkXOAk2KegVKX3rUrHBw9xOwjG0V+3xA1MAy8PoUPw9w5yweaoMlH+Drnsj4at/pg
Hk3TEr4vvcnEV47PNc6PfrCQ38rVwvCxNgFlM/ebnZw6pb3AofxxpCRIoP+lCksReYo0An+oQnjg
ff+H2mIWkC+Ms6Ok2qOqD8hMXyxMVDP1R0akjyjTPPHWKo58IfDlMhfVjzIhhFTdAfuI2W1GIhZ5
CuS/27M6q2KnYjxD5TShS5IxHLNcVarQWrC8/cSo6qmqXqBVu157gdiDWq4QAs+XMA8BpIFKWRSa
50dwbljw1AaZRsIehB1wAb7H6eLX9MdX7IRzN00czIBfUCq5gai4OU9rLnKf/zoIAqf4u3YQpy5k
Tnn1knsq/MfIzaxgGEqee3zRde29m/d8BXshZ2YToTmGX7mGBZfiYRW+cdS63y1BwHo4NF42gp+y
biOZLDOV/EvJHtVGK+63x7OYnS9HqpOpOAEuGbYIJKIGyhzhUPvxoF5STKbuik+v7A+xs4t7DpRw
Zp9cMpp7QnTCEoH+zTU1WyKvKbmm8GFqdd1dDeyAnLSn3Zr5jwwaiOFTK2wN0THdGd+aMXqMA8zN
gnVbaFTkf/ucbujZgX/Db7YrQU4IeVSTcgyZnGinsPcPDA1aN8HP1sa4v9m2ykQLLnf+cKDjAZv6
JmwohkCywTNyWzYwughhDin9UzoFLjqhB+5Gos6qKNUBaBtirSbPjo1iptGXyi+RH5hrYcF9pTar
rLYxq12ZDjVGRYVpfn9a2tmv6FpbtqJpUg4W2PMxEzFDSm0cMm1vyUw7uO9VwgysYj3GUzWAQWvN
SCj0ZSMsZQhzv5cZ4BdLoQgilfVRGY6jJZp+vGvNBx7QkTCkyJzjIwll5OQyM3bFSBjyGxoMy7dq
fQo6v9wX1BnO3mza+b4h+8ncONfnqU/JA9Kt03oZmxo6GZaiH5+wsWpbkQ2pXN6aA1ufCfS3ChtV
UPEbpO/Um3TgWG/b/nay6hQ6MeN91IbgBSpu4KYyqChEQgr96U0lAx13FcIqZdGZPvRwyyGTTSkr
3ipl6uE7wARX1iesqd+bL7Keasyu0qG4XwcnagOqeU0hAv0GTiReINncvn8mzN8piUyYh5oyB05a
gnMYj2W0GwVe3TiEZFUQTGDcUb+bhwtiWrWLfZW5lGsbk/plQyp74RsxiL+P6nt4nQP+Curm6ram
sOSOymtf0LA3olNVEntKNK0sy5IhFGoUHfULlkVvnYDcMqbpApfonn+a3imfe1YHvJWQHa+tWSQ0
WIhTMSqO7YT861FFENJH9XbNEGRtPNMou/sKmXlS1P9F8xNupXp8LvCm1+alnV2uAMKa3jL7/BwM
WHSS8x5MkYezxqhFNX1w3WZRas8rcoBZgMiz9xCXxVCWyreM48/UepXs63EtsQyCgmeQjn5CbuT0
YMjw9jJ9CLQ/pZMW9SHW0Inka+kio+CzSi/YTQbtoWHa1PyPGt2Uy8KG8b3ROSO9UmUoc465qx2/
Rky8EZ6MkOc4dv4M6oaEYrEAYDCLwi00UIEThH8UB7L+fOJZmnmJASZDgd8N7/jRnGKpiIh9Lgyk
D8EvzARUWOsb17+w2KUiq5p9ylgg6Ie/WxoiDJ5eQ2cWwDR3VyHSPat3fkKNETgFkzbI/5KhBO4R
KO2X/FztPAevYUnoka1IzQGuxoZx5NsT4NWmmEjeGhbYB0Xj7OIoJBrPgw8sKiACSXRAFRmfm1Nb
m0eRm012zqXLM/j6aNIiBMMxgo1popHm7y9LGyxRxaKDiv15UICuS8c5rLjCOJqHbKJOBpaPssMk
W3yi+RE6yL/2h4PymSbbJE1bv2vlUk+V1NI9qTOR7REzBNu5hXlOLEMFuNu3c6qaSHakHzwoPWNd
u+OFiJ+b6EnYWebnJHHBu8mYmQR80yQ/8NG83ZagRjxtegL2ShsMd2JX2CfQNMQa2hVNK1e8I2z0
vPnACsQVTyMq96BPYoB66UmTFI01VI1ugMYWyAOHxzLPuC0sYE/mtIQNYHocr/YcWf89Vpgouy6/
7kxRw3Tz3d4gy48WqLa0bSz0V4A+5uoIYrCM5m6FGHG076QDaYr7tWpctOJYjZyrurtc0gG7mODV
IbQkC7HzJgpw7cP7nkLn32BdWJVmb3XWx/3Da3bfuSAvfUlvwJRV0k3jRFbYIJu2F9uQlj3RacEX
waqsfyIVIk61xXz9fzx/hsyLEc2Ooia6KhFvVeRof0pMKxOcf5kKWo5aVfZLNCOrmE7UPwng+Man
bvncvnbmbjI95uHkAtNa9Cyk0/ArZM8RlgiZtuqof4SR6HOYrNu2CI5zVEGRQK/tD123pKhWEjiD
2jfCkYf5dVXiVlPqHW7xjUGY1hWBZo1QUyHNPAlZFbfEoCfPd1SSu518PDrsK9U3hc80mmEy/aXY
RK+C7RvfpISmqBaiu4M813hglmXfx8UYTYoQxRIqFSa4CKJOfSPi9ENTgMGoEcZnzcS6L1XBBllw
VDlLYK/1Ct9wycw2tA5H+HV0vYKia847bSgpU0Rcnt4AGvBii0yDHQlT0suOugJ75v6bF0k3GeNG
pYWOMBAfFCebT0xjwFJUSfX7Y9eLDMbaPn5Y2UhfvkDZYqYor9pQXULP/tL2hYGsNb+vlC/IzjmP
XqyG6XcngpQhf9xDJnTS1JRHKU8K4DR14VyucWwsSqwLR6wSUqXpUYsC6/yViuTGKwB+06zfL3xd
nd/agNVWLARYPqQgBKe1X2ulTjevR4TDKCaAHCFcaSJnNMrgN0V2FwsxUWGdqBZTu3NnsphcJmaW
vhIutwyQCIO/sfpYroaYgdHSWuvSLxAAExFH+1CSk8zUNg9WV8aHm9DYtTEaFU55FtjIDf1hos7R
AnZW0zctwNnaoWvrpY8SNoNBtSlWHUot31LTGdqmj3bNw0YvhmyuUXzQkgb7hPv3DRKXjnwoE6KX
7x+l81xDygVUQtK3SlKnA21+Dxww+CQ2/FHr2VOFl2n5MxmVJ159KRcLlwt4vaK2LDyeQmWTtji2
auKsKpt+sOwz1oiIPlFgVpRbgqDg/m2C6m7dgzP6AUGJiiXuhp7qKd2cA2BLxMfAW497mFYyRnPD
qIjTx2cHmmUZiMTlx/K5st2F1GIJE3IUsmFM/rSsQTEGKMran8EmaXw3WIecWJGJ2AqgRFEXjREH
yL3KpcBAm1L+6cVuYHNeo/bFymJLquxKlt2Sz6Z3ncera88qu+FBJ6D3umxdBj/ZKvnczjkR07g0
ZID+v4qjCoHaGauEAMqP56GMQB/a4fRLgeffAa57SalZjXhMu7dTJLBXjc1Dowg8XnRXhVhYgCpS
TXVm2r2mypVo7MtqBqlFNJTLOW+kSFPLdZEUgsL/N36Rr8wTgArXLWSyoVGU3Eq6Bku5LXSMAs7G
pINLHgWBKLOp2Jnw8+WdYaBSQ34hqAd3paidB1RHJTig6nPpjzCqYNsiGZAOqOQDx+RjD9bsMe2Y
G7DHITh6Rm2Alp6UOhW0nnfB9fCVxGELYv/hMsVP4Fl0idNcYJ0Gyno1diunTNZTW2Wd4VLP+FMh
SSagWKR7FR1BXfFoIU/9Jhqape7orPjm6Cx4U0bgsdIjkcrPYROcz6VJznl3c4cIPZYgkTR7DSNN
YPHdDp+7zZ0aQp/XpkwpT646s1pEdK32irbQIw46HcoP/LvLKU2aKXIRTtklqvTSIzqdkOsFBvsS
T/lI538FJXtui36gIGDUQzxbZRqvnq4NUHd4TSVXPAslvozwGb9zpoeJtWMvzNrTz+9oITblxeNN
yXUi2q9W5myDajqDaRj6mn+cRk4EvMLr5ePKFFtoksSwyE9v3BEMEHqIMVmiJV+5cJWnxJL8Ubkg
VGyRfv1kVxcmQgv3KmXUJEt3kRLeaxG1VTV2uBe0aVtDkaBpcipDdzYWF4IgLKAVdn21nzJtUXiy
PlEVrRs6VUkzRIHn7YQUy9G/5uPxnZmQV5KXjI/DEfXEvaxU2j0mspfmwfLZOjBdLDwq94DPWRzr
OUjEuyxdFFDKpWPPKM8VvLyUpzx2OihN72N3C+QWziafWkJ4xwRzXxYba9vFOTOsMJGgOf10fDTe
xvuW/yTfwf6fDsQaNLQDKORVulXAzirPYViLzMXCo4sahtC/xUY/L0IGAkCWDVk/2cP2URHAapJI
+N5MbDgbSq6zBvzzM+7m6hsehtpCAj6kMHZZM3dIRhVsSwZ9caZEdTGlEXUCydmrvVd4x+VWYwy0
Fp2PzF2Zb+lLizeA/65pLQNf2ghvzOLhckzjaJBXEEwCmzOtkoVaIVyp9xmZNeooZw76f9ybObcl
raOEbncBVhE+tY51U7QQsjSpAMKsF3W3zMCSpviFZuxwysTPTWtg7h6IJTE5vDkpj+75fECMLvxM
FNFTs3f+d58onDhPgWVwSsH4ZtrXeyW8pkdPn9YdE3szkDcOIsLn7Z68c/+ZvUS1gWPgebADyJfC
Wpc0rcH/0zRUoky8TjgSogOI7T2OQCseIMsyWsogPO79NcnV6AoZfDPA+lD8lUnFodKvAeWA4Ph7
gdgE22Wd50F5cAdeFC6XPMipX/cNU16ymF9LqK6H2s+fTNnT2A8HcpeChnFVY83O/ZuWAz6CaWJx
KFa+B+jjtyRvFcovkHbXND8qJ+Sr0m5InBE2MZTgH9FkrMA7ek45stzp6U/lLDIcJPbJHQBicvPL
P11fA/x4148WhQNxx4+sSakakmhFnvyJR/D93OK5NjORAXwZcnlwgVgYat8Y878HRCzGQXDyZ6bP
J+ZDPtKZ6zW7F7QgLOLW2qYhzhoUJuVk2+uF1JGygUCBycFixOcW8w/ggVAfNLjcWpmmbOv5zshp
6yXaTXrGfAt+cE52ZhhEQEfek8U/x9gHoc0DLqUMd72SF+6CwQC3v98HfPVTq4tmFqf2rX9YHFKM
AlQEBUYZlzBQlZWwYwjHv3SSnD1jcGWjSw+SUj5i9ROggKHLeZTDfSzfsI2EpWcuujrfPgfQZR+T
2jH0jZBt10fznbj9vrbayTcp/dP/cFgO/kqMYOhs9dkXPRT8N8CPu5iSPfnULw/5mRkNQKH9Ie8v
ZFmONbYaKrv+Nlq0dsslUmsy8bUrU9fA5wJmuUHnGfREtCKv1VeSbTk1BlbSMgZzMr03jH6ljNFA
zuf6dRoxrY/PuDVFOVTDV26nlK8Q/RxoxwqKQxlnulxNri6hqqdzWV3jWfEkxbaHEyKHMTITqKg3
iZVq/NyGbDik/STHlSA3P4D1DaF8Wkv9dmdV6azTC38zxkSTfa6f2RRpsHunr6DmIBHP5VmyfAUj
g+3V9wYLp41kNa3zmjPdcD7nftxEfwg5H8m/7BWgN3xyjcdwBlG33rtEhrEECOtSvlKjYQB4+pJa
SI3/ro5gQfKnDZtXofN85WvM+Q7dGvccCjulNWER9/oooMLwxzxRJVW4IwadcbCmiQmaXalIPmBo
zJOwq/PU5SmICHJQdouWhN2EqXUe1JtoLXRHmdr3aAwiWqiaRAeFPZPD9lNluX+Nnvc4h90iFLzC
LIpAVD5c4576md8SM04XfU68NRGQG8HDnEREfqyLqnNMTHG9x21uWnJ7t0ofI3UU3fvUiW8pCoc3
bCo5d3wrZrwkzuXkfBzCDk9fBy9pmLE+BMOWl/C7z6JAaRwnv/YQeeXJ2VkJKltRJZxYdWIkUylg
mrMXVpHHdrduKHDPCPiQzUg10FheK1SBDW4ZMB3Y2DFn86YMswRhz5ains1+qEqTZcCk0GAwM65D
pTJBTaE6r/GXSu4g4q9FOwTxxYBJfwtD97S4l/EG/yNhtUpfo3v1aFacpuq5bRMZrPA/4GJ5WjlT
6ISx2zmUVIwrPZuGU3OzXK1Qo2nZtkgYMJ2KBM0hkZGGOyncaFAMRq/ROQ3J6sInQsok5bUHvTbh
WZRG4Jrtp7uAv4FoGqqHlMekbXVqpzOUVukEMEffcgrdoQTu9QIj+clpUj/51UG2d0TkEZm6LtPR
Mm7QQKhuuPPgsRJNhbyoLGDYQ5UPNJyf49LBLHCn1ROiMe/x59O/awYWScRo6ELKbQM2l6KbgTdi
pAhwTrL3ieEzRjqic3P98Lu/niQCtt/6JHa5SX+LMYDPq56yAtdwqOoHvyFwj5Yq5GEqtWqzppQc
+87TNCn2l8iX89+IgCJWN/7227ZWc5uQiZkZGE6TWDTdVh2LQ6SOKrLMzyr7IA2+C7fKEe1n+6EC
YmKEkWvMHntDh79/pDlD1FBrY6fjqhvp6uZfw1Bv9YVci3mI0yZ0mAPkBiEPTvR2NRNh8v4ozrfP
n2J1e0m4zjqaEJhPxrn/cCWh4/+6o5QyNGagkGNcAl+ZKtga/yw32lwsmGO/SVHuiK+IKxzJq85r
SQGP1bSo+rnaAUjWxsSSM29VQQ8E95al5fK2VkhYdW97iahH+4eEDIlt6FdqkMaGELrHENtZWMan
eLYVyB43tjqEEM7QFlBePGuPsjdsbcSy7fPHTjKoScVSifue3f8UKDdVBnBiw85ijEBriqzIRskg
Y8oT3VJHMocbfc1xNs41EE+sE9RHgBgRyQ1cyEvzn6AJQY/FIe5Knzv33IWOw1ajPqhpVitgfch5
WwEWIueaiI6YFW+jhvY/OAXWr4vIB63zqMntHXxsPPjx7jU3K3RAWJGtWw6xj0/xL0Pzoq6ZX0KM
CPvh4pgbImcxTvJxcyvgAUMtcgdgQ3zLELLL20c6OchCUvZV7Xmg5tt4JLydAx50zzhUyfSfh4iC
a6FARgDQE8SVhv6NbxAivTiBBTajo1zgASlmnS9nN1baouFc7MoURWXE1K4GKo4xibkMuqrUDwBQ
0H1/cK8QFxbKh2ohLN3eG5cO3g4Qz016Af6Y+n8WiEAQD5z9rsuU7sGDxpYrTbJaRZ7SXWnwmNTu
93OD2oIp65ej5YPbMWr143EAkhF/78MKFs/ESjDxKRaXpNp6G+ibLYMMP8vzRTzdZ3SH4pUdREGT
ekBMl3Yyk3HOZuXVeFJLLQx7GZ1fy2hha6DAYoDZDmfImdlouXA/2ujSELocnJmmxwUusOXouj4J
+CBBz88hYTVhAi0lW5DkUaP3yehc79gVHW/n0OSEfE1ktwXlNhgvah03caldSEOO8nH/yr8S3FOu
0yAO0noO54YPqwQVB6lVSnycBHuowc1Ik+b5LHph47DTB+4j9crobFwbwg8/LFHF9xIhnb7Zoo2h
EHYHzCGubT6WIlYcMm4GfdHLm16CllFygE4zRVNTh4jygk0qmhl2H6P3W1PRe79frfbKYOC1Ex5o
IcRCPRUwCpcN3LI4w/UCeI4sGNy3FXeH4DPqPDd4NIsC2HOUqDf/qqlEcHbZn5hlziATZnE7fOqT
wAJ7T00I8T+ygr06ek6BAycbY8t8BQGcmS98Jfiu0lnmKJF8hkUammoQm9hssgQV8gC/2ZSXnzcI
sVXi2joxjWRHRNRMiFZECUTbGePly4APPSn1Rkg+8N98rCa+l/pL9JWSVP4VqDspSwdl1jfBLdAJ
aOYPyLKhoYAFhBg+ZD3duHfIYY+6vFAxbkDj8LnXVCzwldxElr8OCjfsFjUCd7V7O/UGeT9obaDg
14/eeJPfNr8iW2t3/lDG+wPhu4fUY9SlX/NbstNHcPQGgJnrUUzEhZDolFWihvhgEm2pMGxqhYxp
woYm3yKTLYuZxAjuYb3DcuEhzVSH0pZh3KPqOROAYUfk/t07JW54wSm0KbVOPlkE0NoqM+dvb4Ir
sYxWKYrvq4E70h7X2yk6TeDSkSdZC7JYIUcUXoyPgjSr2ve98qHpXfilUURTWq6QgqY/AmYqutp5
9smLusXb8E9OWYY8z5Pr43nLKNSXJXJIkD+G1/1rJG9oUvApPrS0YEeabLHliatE0daaBjmLWY4w
TMIlM9ANRjll0+21jfNT8HBxd0ZI+GY57U9vro5q9baKWlT13YfAENGo2DArTzmVH3LmQ11Uqeus
EQp3SJz7KUwOf/REsJp/3SIkD9YYtY8I3Laa0mfDSody2p9xC2tpvadnR0s0UpTEkxA62GpWL7E0
Sxq7ZsejOyJ7lthiJI3WkmvjEShx0OlMW8riw0HEkEbhgfRHr2MF3FooMgCrf9fk01SR1TM6jKjN
QU31w+aMgEbtftuIHq2VU1aNUc1vln2TBSZZAq82iYA89R/ELvcak5vgyOXCnUrFYYAk/Afh24Gz
xYKeMA96qzphLrWd4i7awOjgipeOR50JDj8GIeCIscuCkupOrYp95OZvwYb/mCHxvwmE1QEIaVQE
09N3jjYZgU/O8Qh1UqGUlnKWpgBiRQZnrVikmDnkgQC2TFmB2iMMqXzyFdHdF4sexKfT5glL6XUm
44h04jucJmc0/EXPysP0zSO/QkpRgSbt287EYk8DpUMg8R3KGOGE3j3CGUqVFIYBXQ8QKncel89D
LMMm4/2f7Ie4b0bys4t3XWfhF6t/bhx7YwZibN8GStYlR7c6YSUk8rCEpx1gz7FOHx6S6wmu5l+0
hxVvaMXmaL++PS8clauxpA0f/xgcfALm9vmvV1FRVVuXLpVs/4zq0txg2edU7CVhdXt7O/7j908E
gdvX4yAoYP3OIM+ibgPk1DyJVehRZOMfHKTfYvC91dJnFqh8sjksBHkRAyFfWVcFL/dVEecNg0OX
E50O4V81h1y5GQBWYZ9lU8dnXZC+oIc9W8PhZu4ao2faZcVn9WA1IbS2P9UpHzX8CA5aaK34K8MC
JaEg/RC/nbsmebbKtFQ5+kLKlKWHJKDSVRAG4wPYc/MyJgHveqfvP8k31wmCX55TOmKPaWAUDoOE
owsi0rr7HXoX3ZMoVvYHgljWcIDC+mp3QAXMFHca/NBpukRxsJ+pdp+0DgSPl79kKac//ZRTACOt
Ua2hr9LiHkJ0EZaQlhctIoyiaVzLYlOHwkrRvvOJTMwvLtQ90ejpGQF5Rka8k4Dqo47ANMkcovSx
b8ZocXkhHcCyZOj0P/loSeFwOeWLalsMNH2c29AxH2WbjDMNdfbze5iQ+uFdeZJHCdzA1ZUV+Qe+
vPfcK/Cfvrj6LZu2xIv2ooxWZwBkUdZcmHpWvCz/qIrUw6QmknFyJLotZkx+CekH0ONqL9zpbNMV
qm/nhJzq3rVcsD5ErDlmdHW/Wil57BxEcnbM3mkAr56a2U1eY5+6aGH+Vr8TbLnxy5NV9kRRzmwF
tBfROQqLEJqyrhuGqK4fii0OBPE5y8jz5iObuXoUXvOFrz2zBGapl4LyNhpW52R1NpywczFcjLn5
sFh5guGHkFosHokugl1fuqQ25qyqd/4pb2xBpK4Ys0jeTr1DPLHSK7LEc+beBsKlz4yFFmn8r4OP
gt1BGdA/GqLv8DbiFd0nkT4J1tsQMWyH8vG+vAMjr1thpo7QZsv18NjsX0N5+e0owmhEZUQrp3SG
skCvpaMFuIWmA+fhDK7VnsSqliBvDqAEkfA3kWnVFFr0UcTJw69M16ozK7jeCRF7MYM0usHMchrb
/jHTsg0tIDOgXX06w8X+NQwoktwL80wDKoCoQ9B3izRjoQMYXzB4S2nB8FX3R0HFjc3iv5RvUDGM
ixOHS7o6mDtLJKpkcarXXIE0IFFjJLTsfkQvkpOScbZLCOW7xKRE5vLtupIk57fjKfhTxwEk1zv7
cvXNa6b6BvEi362ZcneDqhBcFFhlShQ5CS9IRzpd3F7tZSUh6v7+f2KYPf+HAbyEWrz2GnLrlon2
l89Rlhsco4Ut1IxUC/h4bpKpDD/UJVDh82a2zwB783eWUTSgjE1Y74ue5iozrGUF4s8DmBQ3sI4u
fm1Gav1Cus1ZgSEbkQFBngTnjfXDkok2bIxn6t7vFcAMjcntyCy4+9C8o8tB6l7eL82E950+qQ3g
xQXA2Gl9p67e+qewjBK8C4O7eNmYWvzdkyWM61aIp81CAbm7Q7tVSEHDNuF8JAeF+6nm/9+3dTcC
++8obRJNaXdSUyZFRhblM+Wm0ihGwqSECPVMcxdDUZPIeoS2aNFRPMZbtqdF4vv9DfFmLMLX03ce
jBISKjqfaGRWjeYK95/c0VOmQpby5zFwZ5Ocr4MdwFaoS3PepWnnvOXce0T0w7sqMke4Y/GEWuS/
KD9rqSq7viJrX17zy48m7ZLSyq2ksrEgM336/fe9jjGCyiaKu2LYcZj/xECvAH9IfE7t+eAIXl0Y
hZoyJ8OmE9LzU/KQFr841AYdaTeAWwW0/EVjf9JzlE+By1/B/bk9AKSQSys9AY/Qgot5bt6xjSF0
NydgUCrNrSiArLd6Dvnf8l53k4pRJfDKErfEqDTAMBuGR2kQdPmFGxUdb6dagBOf8BHU547KxF2u
vr+0XtsuGBtPskIYUOyjD9MnHS10TeNmn2nBsuaylgJReTkLDhty8Aq1DB7ghzinhA90qsz0GKP8
lrYznYeao2z1qCs8AuWR1mUiRAH6VsshrxLrGK9HgNH9wi34s4nJPQK/wEQ6O6BD441x6HcwA312
SMlP4t13bOY6kW/q7GFfwPJSjdoRRoX49Q71fXEQYeAUZRsECDLwfXMaXRegrykk4U+OUSRHncMI
4C3PCoJew1DeyVgMXkT2ekLN7N7NUWe42mIvuMfxyxB6b4rckDvvQ/Cu6JdQb+VJPTYGACCvHfL6
RkkEeMoCGZusJUqNwPo171god48ih7IGZdKkkTZL2yQaOoAtDj+TgyKkLKJkO1u+QL0RkM1gQZti
MlOrTrnXB/hHsV7fKGis1RyKYrCuOhGx8ZkuDC2H1m5r9R6Ms2DO0BAzrjzIlmATHNBlrC8kbyT6
5aLFPPBya+UUgTvhtr0NhP6ULIHVbzQbJK2Dsjz0l75+EXgT8KUdmLEkEXFYSAq98/QscRTmeRT+
o1P78LKfPkULKZbwXbwHp2MPnGFKc0+zLRg/R4AQomrWILd9hz5wsOHeX/0f46IX+ZTA+rzIQPTc
urtB3bq5Y/lhdWhTGCc8iMc=
`pragma protect end_protected
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
