############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project waterfall_sender
set_top waterfall_sender
add_files wf_sender.cpp
open_solution "waterfall_sender" -flow_target vivado
set_part {xc7z010-clg400-1}
create_clock -period 25 -name default
config_export -format ip_catalog -output D:/MYPROGS/FPGA/AntMinerS9/SDRProject/HLS_waterfall_project/export -rtl verilog
source "./waterfall_sender/waterfall_sender/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog -output D:/MYPROGS/FPGA/AntMinerS9/SDRProject/HLS_waterfall_project/export
