vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_bh_write_file_0_0/sim/design_1_bh_write_file_0_0.vhd" \
"../../../bd/design_1/ip/design_1_fpga_exp7_0_0/sim/design_1_fpga_exp7_0_0.vhd" \
"../../../bd/design_1/ip/design_1_bili_0_0/sim/design_1_bili_0_0.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \


