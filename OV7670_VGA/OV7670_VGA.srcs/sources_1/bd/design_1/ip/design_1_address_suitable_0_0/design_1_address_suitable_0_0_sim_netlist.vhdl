-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Wed May  7 22:00:43 2025
-- Host        : dvirhersh_comp running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Digital-Zoom-FPGA/OV7670_VGA/OV7670_VGA.srcs/sources_1/bd/design_1/ip/design_1_address_suitable_0_0/design_1_address_suitable_0_0_sim_netlist.vhdl
-- Design      : design_1_address_suitable_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_address_suitable_0_0 is
  port (
    addr_in : in STD_LOGIC_VECTOR ( 18 downto 0 );
    addr_out : out STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_address_suitable_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_address_suitable_0_0 : entity is "design_1_address_suitable_0_0,address_suitable,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_address_suitable_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_address_suitable_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_address_suitable_0_0 : entity is "address_suitable,Vivado 2019.2";
end design_1_address_suitable_0_0;

architecture STRUCTURE of design_1_address_suitable_0_0 is
  signal \^addr_in\ : STD_LOGIC_VECTOR ( 18 downto 0 );
begin
  \^addr_in\(16 downto 0) <= addr_in(16 downto 0);
  addr_out(16 downto 0) <= \^addr_in\(16 downto 0);
end STRUCTURE;
