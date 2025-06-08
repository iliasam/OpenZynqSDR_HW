`timescale 1ns / 1ps

module adc_ovr_test();

parameter IN_WIDTH = 12;

reg clk_test;
reg resn_test;
reg signed [IN_WIDTH-1:0] adc_data_test;

real freq_val;
real sim_time;
real adc_sim_test_r;

always begin
    sim_time = sim_time + 2.5e-08;//25ns
    adc_sim_test_r = 2045 * $sin(sim_time * 6.2831853 * 1e6);//1mhz
    //adc_sim_test_r = 500;
    adc_data_test = adc_sim_test_r;
    clk_test = 1; #12;

    clk_test = 0; #13;
end

initial begin
    #10;
    resn_test = 0;
    #50;
    resn_test = 1;
    #30000;
end

adc_ovr_detect adc_ovr_detect_obj(
        .adc_data_in(adc_data_test),
        .rst_n(resn_test),
        .clk_main(clk_test)
    );

endmodule
