-- (c) Copyright 1995-2025 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:BILINEAR_INTERPOLATION_TOP:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_BILINEAR_INTERPOLATI_0_0 IS
  PORT (
    clk_vga : IN STD_LOGIC;
    clk_bili_wr : IN STD_LOGIC;
    clk_interpolation : IN STD_LOGIC;
    pixel_in : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    bili_cntl : IN STD_LOGIC;
    write_enable : OUT STD_LOGIC;
    pixel_out : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    address_write : OUT STD_LOGIC_VECTOR(18 DOWNTO 0);
    address_read : OUT STD_LOGIC_VECTOR(16 DOWNTO 0)
  );
END design_1_BILINEAR_INTERPOLATI_0_0;

ARCHITECTURE design_1_BILINEAR_INTERPOLATI_0_0_arch OF design_1_BILINEAR_INTERPOLATI_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_BILINEAR_INTERPOLATI_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT BILINEAR_INTERPOLATION_TOP IS
    PORT (
      clk_vga : IN STD_LOGIC;
      clk_bili_wr : IN STD_LOGIC;
      clk_interpolation : IN STD_LOGIC;
      pixel_in : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      bili_cntl : IN STD_LOGIC;
      write_enable : OUT STD_LOGIC;
      pixel_out : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      address_write : OUT STD_LOGIC_VECTOR(18 DOWNTO 0);
      address_read : OUT STD_LOGIC_VECTOR(16 DOWNTO 0)
    );
  END COMPONENT BILINEAR_INTERPOLATION_TOP;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_BILINEAR_INTERPOLATI_0_0_arch: ARCHITECTURE IS "module_ref";
BEGIN
  U0 : BILINEAR_INTERPOLATION_TOP
    PORT MAP (
      clk_vga => clk_vga,
      clk_bili_wr => clk_bili_wr,
      clk_interpolation => clk_interpolation,
      pixel_in => pixel_in,
      bili_cntl => bili_cntl,
      write_enable => write_enable,
      pixel_out => pixel_out,
      address_write => address_write,
      address_read => address_read
    );
END design_1_BILINEAR_INTERPOLATI_0_0_arch;
