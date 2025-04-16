// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Apr 16 23:13:36 2025
// Host        : Ido running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/idowe/myProjects/FPGA-image-interpolator/OV7670_VGA/OV7670_VGA.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0_1/design_1_clk_wiz_0_0_stub.v
// Design      : design_1_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module design_1_clk_wiz_0_0(clk_vga, clk_reg, resetn, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_vga,clk_reg,resetn,locked,clk_in1" */;
  output clk_vga;
  output clk_reg;
  input resetn;
  output locked;
  input clk_in1;
endmodule
