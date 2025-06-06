-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu May  8 18:37:11 2025
-- Host        : Ido running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_bram_datain_mux_0_0_stub.vhdl
-- Design      : design_1_bram_datain_mux_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    bili_cntl : in STD_LOGIC;
    zoom_x2 : in STD_LOGIC;
    data_in_zoomed_bram : in STD_LOGIC_VECTOR ( 11 downto 0 );
    data_in_full_bram : in STD_LOGIC_VECTOR ( 11 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,bili_cntl,zoom_x2,data_in_zoomed_bram[11:0],data_in_full_bram[11:0],data_out[11:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "bram_datain_mux,Vivado 2019.2";
begin
end;
