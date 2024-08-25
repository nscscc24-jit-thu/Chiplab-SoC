-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Wed Aug  7 16:16:46 2024
-- Host        : cslab-alder running 64-bit Debian GNU/Linux 12 (bookworm)
-- Command     : write_vhdl -force -mode synth_stub -rename_top bd_soc_usb_controller_0 -prefix
--               bd_soc_usb_controller_0_ utmi_usb_controller_0_stub.vhdl
-- Design      : utmi_usb_controller_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_soc_usb_controller_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    intr : out STD_LOGIC;
    cfg_awvalid : in STD_LOGIC;
    cfg_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    cfg_wvalid : in STD_LOGIC;
    cfg_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    cfg_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cfg_bready : in STD_LOGIC;
    cfg_arvalid : in STD_LOGIC;
    cfg_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    cfg_rready : in STD_LOGIC;
    cfg_awready : out STD_LOGIC;
    cfg_wready : out STD_LOGIC;
    cfg_bvalid : out STD_LOGIC;
    cfg_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    cfg_arready : out STD_LOGIC;
    cfg_rvalid : out STD_LOGIC;
    cfg_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cfg_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    utmi_data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    utmi_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    utmi_data_t : out STD_LOGIC;
    utmi_reset : out STD_LOGIC;
    utmi_txready : in STD_LOGIC;
    utmi_rxvalid : in STD_LOGIC;
    utmi_rxactive : in STD_LOGIC;
    utmi_rxerror : in STD_LOGIC;
    utmi_linestate : in STD_LOGIC_VECTOR ( 1 downto 0 );
    utmi_txvalid : out STD_LOGIC;
    utmi_opmode : out STD_LOGIC_VECTOR ( 1 downto 0 );
    utmi_xcvrsel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    utmi_termsel : out STD_LOGIC;
    utmi_dppulldown : out STD_LOGIC;
    utmi_dmpulldown : out STD_LOGIC;
    utmi_idpullup : out STD_LOGIC;
    utmi_chrgvbus : out STD_LOGIC;
    utmi_dischrgvbus : out STD_LOGIC;
    utmi_suspend_n : out STD_LOGIC;
    utmi_hostdisc : in STD_LOGIC;
    utmi_iddig : in STD_LOGIC;
    utmi_vbusvalid : in STD_LOGIC;
    utmi_sessend : in STD_LOGIC
  );

end bd_soc_usb_controller_0;

architecture stub of bd_soc_usb_controller_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,intr,cfg_awvalid,cfg_awaddr[31:0],cfg_wvalid,cfg_wdata[31:0],cfg_wstrb[3:0],cfg_bready,cfg_arvalid,cfg_araddr[31:0],cfg_rready,cfg_awready,cfg_wready,cfg_bvalid,cfg_bresp[1:0],cfg_arready,cfg_rvalid,cfg_rdata[31:0],cfg_rresp[1:0],utmi_data_in[7:0],utmi_data_out[7:0],utmi_data_t,utmi_reset,utmi_txready,utmi_rxvalid,utmi_rxactive,utmi_rxerror,utmi_linestate[1:0],utmi_txvalid,utmi_opmode[1:0],utmi_xcvrsel[1:0],utmi_termsel,utmi_dppulldown,utmi_dmpulldown,utmi_idpullup,utmi_chrgvbus,utmi_dischrgvbus,utmi_suspend_n,utmi_hostdisc,utmi_iddig,utmi_vbusvalid,utmi_sessend";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "usbh_top,Vivado 2023.2";
begin
end;
