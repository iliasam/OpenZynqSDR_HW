`timescale 1ns / 100ps
`include "D:\MYPROGS\FPGA\AntMinerS9\SDRProject\HLS_sound_project\export\export\hdl\verilog\sound_sender.v"
`include "D:\MYPROGS\FPGA\AntMinerS9\SDRProject\HLS_sound_project\export\export\hdl\verilog\sound_sender_sound_sender_Pipeline_2.v"
`include "D:\MYPROGS\FPGA\AntMinerS9\SDRProject\HLS_sound_project\export\export\hdl\verilog\sound_sender_buff_RAM_AUTO_1R1W.v"
`include "D:\MYPROGS\FPGA\AntMinerS9\SDRProject\HLS_sound_project\export\export\hdl\verilog\sound_sender_flow_control_loop_pipe_sequential_init.v"
`include "D:\MYPROGS\FPGA\AntMinerS9\SDRProject\HLS_sound_project\export\export\hdl\verilog\sound_sender_out_bus_m_axi.v"
`include "D:\MYPROGS\FPGA\AntMinerS9\SDRProject\HLS_sound_project\export\export\hdl\verilog\sound_sender_sound_sender_Pipeline_VITIS_LOOP_48_1.v"

module sound_sender_sim();

reg clk_test;
reg start_pulse;
reg resn_test;

always begin
    clk_test = 1; #12;
    clk_test = 0; #13;
end

initial begin
    start_pulse = 0;
    resn_test = 1;
    #100;
    resn_test = 0;
    #25;
    resn_test = 1;
    #800;
    start_pulse = 1;
    #50;
    start_pulse = 0;
end


sound_sender sound_sender_obj(
        .start_send(start_pulse),
        .ap_rst_n(resn_test),
        .ap_clk(clk_test)
    );

endmodule
