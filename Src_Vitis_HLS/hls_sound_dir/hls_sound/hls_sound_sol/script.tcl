############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls_sound
set_top sound_sender
add_files sound_sender.cpp
open_solution "hls_sound_sol" -flow_target vivado
set_part {xc7z010-clg400-1}
create_clock -period 25 -name default
config_export -format ip_catalog -output D:/MYPROGS/FPGA/AntMinerS9/SDRProject/HLS_sound_project/export -rtl verilog
config_interface -m_axi_addr64=0
source "./hls_sound/hls_sound_sol/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog -output D:/MYPROGS/FPGA/AntMinerS9/SDRProject/HLS_sound_project/export
