-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.
-- IP VLNV: jiege.ch:user:utmi_usb_controller:1.0
-- IP Revision: 2

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT bd_soc_usb_controller_0
  PORT (
    aclk : IN STD_LOGIC;
    aresetn : IN STD_LOGIC;
    intr : OUT STD_LOGIC;
    cfg_awvalid : IN STD_LOGIC;
    cfg_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    cfg_wvalid : IN STD_LOGIC;
    cfg_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    cfg_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    cfg_bready : IN STD_LOGIC;
    cfg_arvalid : IN STD_LOGIC;
    cfg_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    cfg_rready : IN STD_LOGIC;
    cfg_awready : OUT STD_LOGIC;
    cfg_wready : OUT STD_LOGIC;
    cfg_bvalid : OUT STD_LOGIC;
    cfg_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    cfg_arready : OUT STD_LOGIC;
    cfg_rvalid : OUT STD_LOGIC;
    cfg_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    cfg_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    utmi_data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    utmi_data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    utmi_data_t : OUT STD_LOGIC;
    utmi_reset : OUT STD_LOGIC;
    utmi_txready : IN STD_LOGIC;
    utmi_rxvalid : IN STD_LOGIC;
    utmi_rxactive : IN STD_LOGIC;
    utmi_rxerror : IN STD_LOGIC;
    utmi_linestate : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    utmi_txvalid : OUT STD_LOGIC;
    utmi_opmode : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    utmi_xcvrsel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    utmi_termsel : OUT STD_LOGIC;
    utmi_dppulldown : OUT STD_LOGIC;
    utmi_dmpulldown : OUT STD_LOGIC;
    utmi_idpullup : OUT STD_LOGIC;
    utmi_chrgvbus : OUT STD_LOGIC;
    utmi_dischrgvbus : OUT STD_LOGIC;
    utmi_suspend_n : OUT STD_LOGIC;
    utmi_hostdisc : IN STD_LOGIC;
    utmi_iddig : IN STD_LOGIC;
    utmi_vbusvalid : IN STD_LOGIC;
    utmi_sessend : IN STD_LOGIC 
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : bd_soc_usb_controller_0
  PORT MAP (
    aclk => aclk,
    aresetn => aresetn,
    intr => intr,
    cfg_awvalid => cfg_awvalid,
    cfg_awaddr => cfg_awaddr,
    cfg_wvalid => cfg_wvalid,
    cfg_wdata => cfg_wdata,
    cfg_wstrb => cfg_wstrb,
    cfg_bready => cfg_bready,
    cfg_arvalid => cfg_arvalid,
    cfg_araddr => cfg_araddr,
    cfg_rready => cfg_rready,
    cfg_awready => cfg_awready,
    cfg_wready => cfg_wready,
    cfg_bvalid => cfg_bvalid,
    cfg_bresp => cfg_bresp,
    cfg_arready => cfg_arready,
    cfg_rvalid => cfg_rvalid,
    cfg_rdata => cfg_rdata,
    cfg_rresp => cfg_rresp,
    utmi_data_in => utmi_data_in,
    utmi_data_out => utmi_data_out,
    utmi_data_t => utmi_data_t,
    utmi_reset => utmi_reset,
    utmi_txready => utmi_txready,
    utmi_rxvalid => utmi_rxvalid,
    utmi_rxactive => utmi_rxactive,
    utmi_rxerror => utmi_rxerror,
    utmi_linestate => utmi_linestate,
    utmi_txvalid => utmi_txvalid,
    utmi_opmode => utmi_opmode,
    utmi_xcvrsel => utmi_xcvrsel,
    utmi_termsel => utmi_termsel,
    utmi_dppulldown => utmi_dppulldown,
    utmi_dmpulldown => utmi_dmpulldown,
    utmi_idpullup => utmi_idpullup,
    utmi_chrgvbus => utmi_chrgvbus,
    utmi_dischrgvbus => utmi_dischrgvbus,
    utmi_suspend_n => utmi_suspend_n,
    utmi_hostdisc => utmi_hostdisc,
    utmi_iddig => utmi_iddig,
    utmi_vbusvalid => utmi_vbusvalid,
    utmi_sessend => utmi_sessend
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file bd_soc_usb_controller_0.vhd when simulating
-- the core, bd_soc_usb_controller_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.



