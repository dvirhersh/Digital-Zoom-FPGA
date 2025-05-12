// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon May 12 14:23:41 2025
// Host        : dvirhersh_comp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Digital-Zoom-FPGA/OV7670_VGA/OV7670_VGA.srcs/sources_1/bd/design_1/ip/design_1_ovo_7670_caputre_0_0_1/design_1_ovo_7670_caputre_0_0_sim_netlist.v
// Design      : design_1_ovo_7670_caputre_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ovo_7670_caputre_0_0,ovo_7670_caputre,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ovo_7670_caputre,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module design_1_ovo_7670_caputre_0_0
   (pclk,
    camera_v_sync,
    camera_h_ref,
    zoom_x2,
    din,
    addr,
    dout,
    wr_en,
    clk_bram);
  input pclk;
  input camera_v_sync;
  input camera_h_ref;
  input zoom_x2;
  input [7:0]din;
  output [18:0]addr;
  output [11:0]dout;
  output wr_en;
  output clk_bram;

  wire [18:0]addr;
  wire camera_h_ref;
  wire camera_v_sync;
  wire clk_bram;
  wire [7:0]din;
  wire [11:0]dout;
  wire pclk;
  wire wr_en;
  wire zoom_x2;

  design_1_ovo_7670_caputre_0_0_ovo_7670_caputre U0
       (.addr(addr),
        .camera_h_ref(camera_h_ref),
        .camera_v_sync(camera_v_sync),
        .clk_bram(clk_bram),
        .din(din),
        .dout(dout),
        .pclk(pclk),
        .wr_en(wr_en),
        .zoom_x2(zoom_x2));
endmodule

(* ORIG_REF_NAME = "ovo_7670_caputre" *) 
module design_1_ovo_7670_caputre_0_0_ovo_7670_caputre
   (dout,
    clk_bram,
    addr,
    wr_en,
    camera_h_ref,
    pclk,
    camera_v_sync,
    din,
    zoom_x2);
  output [11:0]dout;
  output clk_bram;
  output [18:0]addr;
  output wr_en;
  input camera_h_ref;
  input pclk;
  input camera_v_sync;
  input [7:0]din;
  input zoom_x2;

  wire [18:0]addr;
  wire \address[18]_i_3_n_0 ;
  wire \address[18]_i_4_n_0 ;
  wire \address[18]_i_5_n_0 ;
  wire \address[3]_i_2_n_0 ;
  wire \address_reg[11]_i_1_n_0 ;
  wire \address_reg[11]_i_1_n_1 ;
  wire \address_reg[11]_i_1_n_2 ;
  wire \address_reg[11]_i_1_n_3 ;
  wire \address_reg[11]_i_1_n_4 ;
  wire \address_reg[11]_i_1_n_5 ;
  wire \address_reg[11]_i_1_n_6 ;
  wire \address_reg[11]_i_1_n_7 ;
  wire \address_reg[15]_i_1_n_0 ;
  wire \address_reg[15]_i_1_n_1 ;
  wire \address_reg[15]_i_1_n_2 ;
  wire \address_reg[15]_i_1_n_3 ;
  wire \address_reg[15]_i_1_n_4 ;
  wire \address_reg[15]_i_1_n_5 ;
  wire \address_reg[15]_i_1_n_6 ;
  wire \address_reg[15]_i_1_n_7 ;
  wire \address_reg[18]_i_2_n_2 ;
  wire \address_reg[18]_i_2_n_3 ;
  wire \address_reg[18]_i_2_n_5 ;
  wire \address_reg[18]_i_2_n_6 ;
  wire \address_reg[18]_i_2_n_7 ;
  wire \address_reg[3]_i_1_n_0 ;
  wire \address_reg[3]_i_1_n_1 ;
  wire \address_reg[3]_i_1_n_2 ;
  wire \address_reg[3]_i_1_n_3 ;
  wire \address_reg[3]_i_1_n_4 ;
  wire \address_reg[3]_i_1_n_5 ;
  wire \address_reg[3]_i_1_n_6 ;
  wire \address_reg[3]_i_1_n_7 ;
  wire \address_reg[7]_i_1_n_0 ;
  wire \address_reg[7]_i_1_n_1 ;
  wire \address_reg[7]_i_1_n_2 ;
  wire \address_reg[7]_i_1_n_3 ;
  wire \address_reg[7]_i_1_n_4 ;
  wire \address_reg[7]_i_1_n_5 ;
  wire \address_reg[7]_i_1_n_6 ;
  wire \address_reg[7]_i_1_n_7 ;
  wire camera_h_ref;
  wire camera_v_sync;
  wire clk_bram;
  wire clk_bram_int_i_1_n_0;
  wire \counter_col[10]_i_1_n_0 ;
  wire \counter_col[10]_i_3_n_0 ;
  wire \counter_col[9]_i_2_n_0 ;
  wire [10:5]counter_col_reg;
  wire \counter_col_reg_n_0_[0] ;
  wire \counter_col_reg_n_0_[1] ;
  wire \counter_col_reg_n_0_[2] ;
  wire \counter_col_reg_n_0_[3] ;
  wire \counter_col_reg_n_0_[4] ;
  wire counter_row0;
  wire \counter_row[10]_i_3_n_0 ;
  wire \counter_row[10]_i_4_n_0 ;
  wire [10:3]counter_row_reg;
  wire \counter_row_reg_n_0_[0] ;
  wire \counter_row_reg_n_0_[1] ;
  wire \counter_row_reg_n_0_[2] ;
  wire [7:0]din;
  wire [11:0]dout;
  wire \latced_data_reg_n_0_[10] ;
  wire \latced_data_reg_n_0_[12] ;
  wire \latced_data_reg_n_0_[13] ;
  wire \latced_data_reg_n_0_[14] ;
  wire \latced_data_reg_n_0_[15] ;
  wire \latced_data_reg_n_0_[8] ;
  wire \latced_data_reg_n_0_[9] ;
  wire latch_href;
  wire p_0_in;
  wire [15:8]p_1_in;
  wire p_1_in_0;
  wire pclk;
  wire [10:0]plusOp;
  wire [10:0]plusOp__0;
  wire wr_en;
  wire wr_en0_out;
  wire wr_en_i_1_n_0;
  wire \write_state[0]_i_1_n_0 ;
  wire \write_state[1]_i_1_n_0 ;
  wire \write_state_reg_n_0_[0] ;
  wire zoom_x2;
  wire [3:2]\NLW_address_reg[18]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_address_reg[18]_i_2_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hC4444444)) 
    \address[18]_i_1 
       (.I0(zoom_x2),
        .I1(p_1_in_0),
        .I2(\address[18]_i_3_n_0 ),
        .I3(\address[18]_i_4_n_0 ),
        .I4(\address[18]_i_5_n_0 ),
        .O(wr_en0_out));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7AF8)) 
    \address[18]_i_3 
       (.I0(counter_col_reg[7]),
        .I1(counter_col_reg[5]),
        .I2(counter_col_reg[8]),
        .I3(counter_col_reg[6]),
        .O(\address[18]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \address[18]_i_4 
       (.I0(counter_col_reg[10]),
        .I1(counter_col_reg[9]),
        .I2(counter_row_reg[10]),
        .I3(counter_row_reg[9]),
        .O(\address[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3666266626666666)) 
    \address[18]_i_5 
       (.I0(counter_row_reg[7]),
        .I1(counter_row_reg[8]),
        .I2(counter_row_reg[5]),
        .I3(counter_row_reg[6]),
        .I4(counter_row_reg[3]),
        .I5(counter_row_reg[4]),
        .O(\address[18]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \address[3]_i_2 
       (.I0(addr[0]),
        .O(\address[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[0] 
       (.C(pclk),
        .CE(wr_en0_out),
        .D(\address_reg[3]_i_1_n_7 ),
        .Q(addr[0]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[10] 
       (.C(pclk),
        .CE(wr_en0_out),
        .D(\address_reg[11]_i_1_n_5 ),
        .Q(addr[10]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[11] 
       (.C(pclk),
        .CE(wr_en0_out),
        .D(\address_reg[11]_i_1_n_4 ),
        .Q(addr[11]),
        .R(camera_v_sync));
  CARRY4 \address_reg[11]_i_1 
       (.CI(\address_reg[7]_i_1_n_0 ),
        .CO({\address_reg[11]_i_1_n_0 ,\address_reg[11]_i_1_n_1 ,\address_reg[11]_i_1_n_2 ,\address_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[11]_i_1_n_4 ,\address_reg[11]_i_1_n_5 ,\address_reg[11]_i_1_n_6 ,\address_reg[11]_i_1_n_7 }),
        .S(addr[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[12] 
       (.C(pclk),
        .CE(wr_en0_out),
        .D(\address_reg[15]_i_1_n_7 ),
        .Q(addr[12]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[13] 
       (.C(pclk),
        .CE(wr_en0_out),
        .D(\address_reg[15]_i_1_n_6 ),
        .Q(addr[13]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[14] 
       (.C(pclk),
        .CE(wr_en0_out),
        .D(\address_reg[15]_i_1_n_5 ),
        .Q(addr[14]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[15] 
       (.C(pclk),
        .CE(wr_en0_out),
        .D(\address_reg[15]_i_1_n_4 ),
        .Q(addr[15]),
        .R(camera_v_sync));
  CARRY4 \address_reg[15]_i_1 
       (.CI(\address_reg[11]_i_1_n_0 ),
        .CO({\address_reg[15]_i_1_n_0 ,\address_reg[15]_i_1_n_1 ,\address_reg[15]_i_1_n_2 ,\address_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[15]_i_1_n_4 ,\address_reg[15]_i_1_n_5 ,\address_reg[15]_i_1_n_6 ,\address_reg[15]_i_1_n_7 }),
        .S(addr[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[16] 
       (.C(pclk),
        .CE(wr_en0_out),
        .D(\address_reg[18]_i_2_n_7 ),
        .Q(addr[16]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[17] 
       (.C(pclk),
        .CE(wr_en0_out),
        .D(\address_reg[18]_i_2_n_6 ),
        .Q(addr[17]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[18] 
       (.C(pclk),
        .CE(wr_en0_out),
        .D(\address_reg[18]_i_2_n_5 ),
        .Q(addr[18]),
        .R(camera_v_sync));
  CARRY4 \address_reg[18]_i_2 
       (.CI(\address_reg[15]_i_1_n_0 ),
        .CO({\NLW_address_reg[18]_i_2_CO_UNCONNECTED [3:2],\address_reg[18]_i_2_n_2 ,\address_reg[18]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_address_reg[18]_i_2_O_UNCONNECTED [3],\address_reg[18]_i_2_n_5 ,\address_reg[18]_i_2_n_6 ,\address_reg[18]_i_2_n_7 }),
        .S({1'b0,addr[18:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[1] 
       (.C(pclk),
        .CE(wr_en0_out),
        .D(\address_reg[3]_i_1_n_6 ),
        .Q(addr[1]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[2] 
       (.C(pclk),
        .CE(wr_en0_out),
        .D(\address_reg[3]_i_1_n_5 ),
        .Q(addr[2]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[3] 
       (.C(pclk),
        .CE(wr_en0_out),
        .D(\address_reg[3]_i_1_n_4 ),
        .Q(addr[3]),
        .R(camera_v_sync));
  CARRY4 \address_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\address_reg[3]_i_1_n_0 ,\address_reg[3]_i_1_n_1 ,\address_reg[3]_i_1_n_2 ,\address_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\address_reg[3]_i_1_n_4 ,\address_reg[3]_i_1_n_5 ,\address_reg[3]_i_1_n_6 ,\address_reg[3]_i_1_n_7 }),
        .S({addr[3:1],\address[3]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[4] 
       (.C(pclk),
        .CE(wr_en0_out),
        .D(\address_reg[7]_i_1_n_7 ),
        .Q(addr[4]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[5] 
       (.C(pclk),
        .CE(wr_en0_out),
        .D(\address_reg[7]_i_1_n_6 ),
        .Q(addr[5]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[6] 
       (.C(pclk),
        .CE(wr_en0_out),
        .D(\address_reg[7]_i_1_n_5 ),
        .Q(addr[6]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[7] 
       (.C(pclk),
        .CE(wr_en0_out),
        .D(\address_reg[7]_i_1_n_4 ),
        .Q(addr[7]),
        .R(camera_v_sync));
  CARRY4 \address_reg[7]_i_1 
       (.CI(\address_reg[3]_i_1_n_0 ),
        .CO({\address_reg[7]_i_1_n_0 ,\address_reg[7]_i_1_n_1 ,\address_reg[7]_i_1_n_2 ,\address_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[7]_i_1_n_4 ,\address_reg[7]_i_1_n_5 ,\address_reg[7]_i_1_n_6 ,\address_reg[7]_i_1_n_7 }),
        .S(addr[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[8] 
       (.C(pclk),
        .CE(wr_en0_out),
        .D(\address_reg[11]_i_1_n_7 ),
        .Q(addr[8]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[9] 
       (.C(pclk),
        .CE(wr_en0_out),
        .D(\address_reg[11]_i_1_n_6 ),
        .Q(addr[9]),
        .R(camera_v_sync));
  LUT1 #(
    .INIT(2'h1)) 
    clk_bram_int_i_1
       (.I0(clk_bram),
        .O(clk_bram_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_bram_int_reg
       (.C(pclk),
        .CE(1'b1),
        .D(clk_bram_int_i_1_n_0),
        .Q(clk_bram),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter_col[0]_i_1 
       (.I0(\counter_col_reg_n_0_[0] ),
        .O(plusOp__0[0]));
  LUT4 #(
    .INIT(16'hFF04)) 
    \counter_col[10]_i_1 
       (.I0(p_1_in_0),
        .I1(camera_h_ref),
        .I2(latch_href),
        .I3(camera_v_sync),
        .O(\counter_col[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFF00800000)) 
    \counter_col[10]_i_2 
       (.I0(counter_col_reg[9]),
        .I1(counter_col_reg[5]),
        .I2(counter_col_reg[7]),
        .I3(\counter_col[10]_i_3_n_0 ),
        .I4(counter_col_reg[8]),
        .I5(counter_col_reg[10]),
        .O(plusOp__0[10]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \counter_col[10]_i_3 
       (.I0(\counter_col_reg_n_0_[4] ),
        .I1(\counter_col_reg_n_0_[2] ),
        .I2(\counter_col_reg_n_0_[0] ),
        .I3(\counter_col_reg_n_0_[1] ),
        .I4(\counter_col_reg_n_0_[3] ),
        .I5(counter_col_reg[6]),
        .O(\counter_col[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter_col[1]_i_1 
       (.I0(\counter_col_reg_n_0_[0] ),
        .I1(\counter_col_reg_n_0_[1] ),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter_col[2]_i_1 
       (.I0(\counter_col_reg_n_0_[1] ),
        .I1(\counter_col_reg_n_0_[0] ),
        .I2(\counter_col_reg_n_0_[2] ),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter_col[3]_i_1 
       (.I0(\counter_col_reg_n_0_[2] ),
        .I1(\counter_col_reg_n_0_[0] ),
        .I2(\counter_col_reg_n_0_[1] ),
        .I3(\counter_col_reg_n_0_[3] ),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter_col[4]_i_1 
       (.I0(\counter_col_reg_n_0_[3] ),
        .I1(\counter_col_reg_n_0_[1] ),
        .I2(\counter_col_reg_n_0_[0] ),
        .I3(\counter_col_reg_n_0_[2] ),
        .I4(\counter_col_reg_n_0_[4] ),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter_col[5]_i_1 
       (.I0(\counter_col_reg_n_0_[4] ),
        .I1(\counter_col_reg_n_0_[2] ),
        .I2(\counter_col_reg_n_0_[0] ),
        .I3(\counter_col_reg_n_0_[1] ),
        .I4(\counter_col_reg_n_0_[3] ),
        .I5(counter_col_reg[5]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \counter_col[6]_i_1 
       (.I0(counter_col_reg[5]),
        .I1(\counter_col[9]_i_2_n_0 ),
        .I2(counter_col_reg[6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \counter_col[7]_i_1 
       (.I0(counter_col_reg[5]),
        .I1(\counter_col[9]_i_2_n_0 ),
        .I2(counter_col_reg[6]),
        .I3(counter_col_reg[7]),
        .O(plusOp__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \counter_col[8]_i_1 
       (.I0(counter_col_reg[5]),
        .I1(counter_col_reg[7]),
        .I2(\counter_col[9]_i_2_n_0 ),
        .I3(counter_col_reg[6]),
        .I4(counter_col_reg[8]),
        .O(plusOp__0[8]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \counter_col[9]_i_1 
       (.I0(counter_col_reg[8]),
        .I1(counter_col_reg[6]),
        .I2(\counter_col[9]_i_2_n_0 ),
        .I3(counter_col_reg[7]),
        .I4(counter_col_reg[5]),
        .I5(counter_col_reg[9]),
        .O(plusOp__0[9]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \counter_col[9]_i_2 
       (.I0(\counter_col_reg_n_0_[3] ),
        .I1(\counter_col_reg_n_0_[1] ),
        .I2(\counter_col_reg_n_0_[0] ),
        .I3(\counter_col_reg_n_0_[2] ),
        .I4(\counter_col_reg_n_0_[4] ),
        .O(\counter_col[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_col_reg[0] 
       (.C(pclk),
        .CE(p_1_in_0),
        .D(plusOp__0[0]),
        .Q(\counter_col_reg_n_0_[0] ),
        .R(\counter_col[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_col_reg[10] 
       (.C(pclk),
        .CE(p_1_in_0),
        .D(plusOp__0[10]),
        .Q(counter_col_reg[10]),
        .R(\counter_col[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_col_reg[1] 
       (.C(pclk),
        .CE(p_1_in_0),
        .D(plusOp__0[1]),
        .Q(\counter_col_reg_n_0_[1] ),
        .R(\counter_col[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_col_reg[2] 
       (.C(pclk),
        .CE(p_1_in_0),
        .D(plusOp__0[2]),
        .Q(\counter_col_reg_n_0_[2] ),
        .R(\counter_col[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_col_reg[3] 
       (.C(pclk),
        .CE(p_1_in_0),
        .D(plusOp__0[3]),
        .Q(\counter_col_reg_n_0_[3] ),
        .R(\counter_col[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_col_reg[4] 
       (.C(pclk),
        .CE(p_1_in_0),
        .D(plusOp__0[4]),
        .Q(\counter_col_reg_n_0_[4] ),
        .R(\counter_col[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_col_reg[5] 
       (.C(pclk),
        .CE(p_1_in_0),
        .D(plusOp__0[5]),
        .Q(counter_col_reg[5]),
        .R(\counter_col[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_col_reg[6] 
       (.C(pclk),
        .CE(p_1_in_0),
        .D(plusOp__0[6]),
        .Q(counter_col_reg[6]),
        .R(\counter_col[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_col_reg[7] 
       (.C(pclk),
        .CE(p_1_in_0),
        .D(plusOp__0[7]),
        .Q(counter_col_reg[7]),
        .R(\counter_col[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_col_reg[8] 
       (.C(pclk),
        .CE(p_1_in_0),
        .D(plusOp__0[8]),
        .Q(counter_col_reg[8]),
        .R(\counter_col[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_col_reg[9] 
       (.C(pclk),
        .CE(p_1_in_0),
        .D(plusOp__0[9]),
        .Q(counter_col_reg[9]),
        .R(\counter_col[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter_row[0]_i_1 
       (.I0(\counter_row_reg_n_0_[0] ),
        .O(plusOp[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_row[10]_i_1 
       (.I0(camera_h_ref),
        .I1(latch_href),
        .O(counter_row0));
  LUT6 #(
    .INIT(64'hFFF7FFFF00080000)) 
    \counter_row[10]_i_2 
       (.I0(counter_row_reg[9]),
        .I1(counter_row_reg[7]),
        .I2(\counter_row[10]_i_3_n_0 ),
        .I3(\counter_row[10]_i_4_n_0 ),
        .I4(counter_row_reg[8]),
        .I5(counter_row_reg[10]),
        .O(plusOp[10]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \counter_row[10]_i_3 
       (.I0(counter_row_reg[3]),
        .I1(\counter_row_reg_n_0_[1] ),
        .I2(\counter_row_reg_n_0_[0] ),
        .I3(\counter_row_reg_n_0_[2] ),
        .I4(counter_row_reg[4]),
        .O(\counter_row[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \counter_row[10]_i_4 
       (.I0(counter_row_reg[5]),
        .I1(counter_row_reg[6]),
        .O(\counter_row[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter_row[1]_i_1 
       (.I0(\counter_row_reg_n_0_[0] ),
        .I1(\counter_row_reg_n_0_[1] ),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter_row[2]_i_1 
       (.I0(\counter_row_reg_n_0_[1] ),
        .I1(\counter_row_reg_n_0_[0] ),
        .I2(\counter_row_reg_n_0_[2] ),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter_row[3]_i_1 
       (.I0(\counter_row_reg_n_0_[2] ),
        .I1(\counter_row_reg_n_0_[0] ),
        .I2(\counter_row_reg_n_0_[1] ),
        .I3(counter_row_reg[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter_row[4]_i_1 
       (.I0(counter_row_reg[3]),
        .I1(\counter_row_reg_n_0_[1] ),
        .I2(\counter_row_reg_n_0_[0] ),
        .I3(\counter_row_reg_n_0_[2] ),
        .I4(counter_row_reg[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter_row[5]_i_1 
       (.I0(counter_row_reg[4]),
        .I1(\counter_row_reg_n_0_[2] ),
        .I2(\counter_row_reg_n_0_[0] ),
        .I3(\counter_row_reg_n_0_[1] ),
        .I4(counter_row_reg[3]),
        .I5(counter_row_reg[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \counter_row[6]_i_1 
       (.I0(counter_row_reg[5]),
        .I1(\counter_row[10]_i_3_n_0 ),
        .I2(counter_row_reg[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \counter_row[7]_i_1 
       (.I0(counter_row_reg[5]),
        .I1(counter_row_reg[6]),
        .I2(\counter_row[10]_i_3_n_0 ),
        .I3(counter_row_reg[7]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \counter_row[8]_i_1 
       (.I0(counter_row_reg[7]),
        .I1(\counter_row[10]_i_3_n_0 ),
        .I2(counter_row_reg[6]),
        .I3(counter_row_reg[5]),
        .I4(counter_row_reg[8]),
        .O(plusOp[8]));
  LUT6 #(
    .INIT(64'hFF7FFFFF00800000)) 
    \counter_row[9]_i_1 
       (.I0(counter_row_reg[8]),
        .I1(counter_row_reg[5]),
        .I2(counter_row_reg[6]),
        .I3(\counter_row[10]_i_3_n_0 ),
        .I4(counter_row_reg[7]),
        .I5(counter_row_reg[9]),
        .O(plusOp[9]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_row_reg[0] 
       (.C(pclk),
        .CE(counter_row0),
        .D(plusOp[0]),
        .Q(\counter_row_reg_n_0_[0] ),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \counter_row_reg[10] 
       (.C(pclk),
        .CE(counter_row0),
        .D(plusOp[10]),
        .Q(counter_row_reg[10]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \counter_row_reg[1] 
       (.C(pclk),
        .CE(counter_row0),
        .D(plusOp[1]),
        .Q(\counter_row_reg_n_0_[1] ),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \counter_row_reg[2] 
       (.C(pclk),
        .CE(counter_row0),
        .D(plusOp[2]),
        .Q(\counter_row_reg_n_0_[2] ),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \counter_row_reg[3] 
       (.C(pclk),
        .CE(counter_row0),
        .D(plusOp[3]),
        .Q(counter_row_reg[3]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \counter_row_reg[4] 
       (.C(pclk),
        .CE(counter_row0),
        .D(plusOp[4]),
        .Q(counter_row_reg[4]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \counter_row_reg[5] 
       (.C(pclk),
        .CE(counter_row0),
        .D(plusOp[5]),
        .Q(counter_row_reg[5]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \counter_row_reg[6] 
       (.C(pclk),
        .CE(counter_row0),
        .D(plusOp[6]),
        .Q(counter_row_reg[6]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \counter_row_reg[7] 
       (.C(pclk),
        .CE(counter_row0),
        .D(plusOp[7]),
        .Q(counter_row_reg[7]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \counter_row_reg[8] 
       (.C(pclk),
        .CE(counter_row0),
        .D(plusOp[8]),
        .Q(counter_row_reg[8]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \counter_row_reg[9] 
       (.C(pclk),
        .CE(counter_row0),
        .D(plusOp[9]),
        .Q(counter_row_reg[9]),
        .R(camera_v_sync));
  LUT1 #(
    .INIT(2'h1)) 
    \dout[11]_i_1 
       (.I0(camera_v_sync),
        .O(p_0_in));
  FDRE \dout_reg[0] 
       (.C(pclk),
        .CE(p_0_in),
        .D(p_1_in[9]),
        .Q(dout[0]),
        .R(1'b0));
  FDRE \dout_reg[10] 
       (.C(pclk),
        .CE(p_0_in),
        .D(\latced_data_reg_n_0_[14] ),
        .Q(dout[10]),
        .R(1'b0));
  FDRE \dout_reg[11] 
       (.C(pclk),
        .CE(p_0_in),
        .D(\latced_data_reg_n_0_[15] ),
        .Q(dout[11]),
        .R(1'b0));
  FDRE \dout_reg[1] 
       (.C(pclk),
        .CE(p_0_in),
        .D(p_1_in[10]),
        .Q(dout[1]),
        .R(1'b0));
  FDRE \dout_reg[2] 
       (.C(pclk),
        .CE(p_0_in),
        .D(p_1_in[11]),
        .Q(dout[2]),
        .R(1'b0));
  FDRE \dout_reg[3] 
       (.C(pclk),
        .CE(p_0_in),
        .D(p_1_in[12]),
        .Q(dout[3]),
        .R(1'b0));
  FDRE \dout_reg[4] 
       (.C(pclk),
        .CE(p_0_in),
        .D(p_1_in[15]),
        .Q(dout[4]),
        .R(1'b0));
  FDRE \dout_reg[5] 
       (.C(pclk),
        .CE(p_0_in),
        .D(\latced_data_reg_n_0_[8] ),
        .Q(dout[5]),
        .R(1'b0));
  FDRE \dout_reg[6] 
       (.C(pclk),
        .CE(p_0_in),
        .D(\latced_data_reg_n_0_[9] ),
        .Q(dout[6]),
        .R(1'b0));
  FDRE \dout_reg[7] 
       (.C(pclk),
        .CE(p_0_in),
        .D(\latced_data_reg_n_0_[10] ),
        .Q(dout[7]),
        .R(1'b0));
  FDRE \dout_reg[8] 
       (.C(pclk),
        .CE(p_0_in),
        .D(\latced_data_reg_n_0_[12] ),
        .Q(dout[8]),
        .R(1'b0));
  FDRE \dout_reg[9] 
       (.C(pclk),
        .CE(p_0_in),
        .D(\latced_data_reg_n_0_[13] ),
        .Q(dout[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latced_data_reg[0] 
       (.C(pclk),
        .CE(p_0_in),
        .D(din[0]),
        .Q(p_1_in[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latced_data_reg[10] 
       (.C(pclk),
        .CE(p_0_in),
        .D(p_1_in[10]),
        .Q(\latced_data_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latced_data_reg[12] 
       (.C(pclk),
        .CE(p_0_in),
        .D(p_1_in[12]),
        .Q(\latced_data_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latced_data_reg[13] 
       (.C(pclk),
        .CE(p_0_in),
        .D(p_1_in[13]),
        .Q(\latced_data_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latced_data_reg[14] 
       (.C(pclk),
        .CE(p_0_in),
        .D(p_1_in[14]),
        .Q(\latced_data_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latced_data_reg[15] 
       (.C(pclk),
        .CE(p_0_in),
        .D(p_1_in[15]),
        .Q(\latced_data_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latced_data_reg[1] 
       (.C(pclk),
        .CE(p_0_in),
        .D(din[1]),
        .Q(p_1_in[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latced_data_reg[2] 
       (.C(pclk),
        .CE(p_0_in),
        .D(din[2]),
        .Q(p_1_in[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latced_data_reg[3] 
       (.C(pclk),
        .CE(p_0_in),
        .D(din[3]),
        .Q(p_1_in[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latced_data_reg[4] 
       (.C(pclk),
        .CE(p_0_in),
        .D(din[4]),
        .Q(p_1_in[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latced_data_reg[5] 
       (.C(pclk),
        .CE(p_0_in),
        .D(din[5]),
        .Q(p_1_in[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latced_data_reg[6] 
       (.C(pclk),
        .CE(p_0_in),
        .D(din[6]),
        .Q(p_1_in[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latced_data_reg[7] 
       (.C(pclk),
        .CE(p_0_in),
        .D(din[7]),
        .Q(p_1_in[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latced_data_reg[8] 
       (.C(pclk),
        .CE(p_0_in),
        .D(p_1_in[8]),
        .Q(\latced_data_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latced_data_reg[9] 
       (.C(pclk),
        .CE(p_0_in),
        .D(p_1_in[9]),
        .Q(\latced_data_reg_n_0_[9] ),
        .R(1'b0));
  FDRE latch_href_reg
       (.C(pclk),
        .CE(p_0_in),
        .D(camera_h_ref),
        .Q(latch_href),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h0E)) 
    wr_en_i_1
       (.I0(wr_en),
        .I1(wr_en0_out),
        .I2(camera_v_sync),
        .O(wr_en_i_1_n_0));
  FDRE wr_en_reg
       (.C(pclk),
        .CE(1'b1),
        .D(wr_en_i_1_n_0),
        .Q(wr_en),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \write_state[0]_i_1 
       (.I0(\write_state_reg_n_0_[0] ),
        .I1(camera_h_ref),
        .I2(camera_v_sync),
        .O(\write_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \write_state[1]_i_1 
       (.I0(\write_state_reg_n_0_[0] ),
        .I1(camera_v_sync),
        .O(\write_state[1]_i_1_n_0 ));
  FDRE \write_state_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .D(\write_state[0]_i_1_n_0 ),
        .Q(\write_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \write_state_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .D(\write_state[1]_i_1_n_0 ),
        .Q(p_1_in_0),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
