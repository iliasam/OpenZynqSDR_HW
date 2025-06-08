`timescale 1ns / 100ps


module rx_ch_test1();

parameter IN_WIDTH = 12;

reg clk_test;
reg resn_test;
reg signed [IN_WIDTH-1:0] adc_data_test;
reg [31:0] dds_phase_value_test;
reg dds_phase_ready_test;

always begin
    clk_test = 1; #12;
    clk_test = 0; #13;
end

initial begin
    resn_test = 1;
    dds_phase_ready_test = 0;
    adc_data_test = 2;
    dds_phase_value_test = 2**29;
    #1000;
    resn_test = 0;
    #60;
    resn_test = 1;
    #100000;
    dds_phase_ready_test = 1;
    #50;
    dds_phase_ready_test = 0;
end


    

sound_rx_ch sound_rx_ch_obj(
        .adc_data(adc_data_test),
        .dds_phase_value(dds_phase_value_test),
        .resn_i(resn_test),
        .dds_phase_value_ready_i(dds_phase_ready_test),
        .clk_main(clk_test)
    );

endmodule
