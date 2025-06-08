`timescale 1ns / 1ps

module wf_test1();

parameter IN_WIDTH = 12;

reg clk_test;
reg resn_test;
reg signed [IN_WIDTH-1:0] adc_data_test;

reg spi_data_ready_test;
reg [3:0] spi_command_test;
reg [35:0] spi_data_test;

real sim_time;
real adc_sim_test_r;

always begin
    clk_test = 1; #12;
    sim_time = sim_time + 2.5e-08;
    adc_sim_test_r = 50 * $sin(sim_time * 6.2831853 * 6e6);
    adc_data_test = adc_sim_test_r;
    clk_test = 0; #13;
end



initial begin
    sim_time = 0.0;
    resn_test = 1;
    //adc_data_test = 100;
    spi_data_ready_test = 0;
    spi_command_test = 2;//set WF freq
    spi_data_test = 0;
    
    #10;
    resn_test = 0;
    #50;
    resn_test = 1;
    #100000;
    //spi_data_test = {4'd1, 32'd100000000};
    spi_data_test = {4'd1, 32'd622770257};//5.8MHz
    spi_data_ready_test = 1;
    #30;
    spi_data_ready_test = 0;
    #100;
    spi_command_test = 4;//Start
    spi_data_test = {4'd1, 32'd0};
    spi_data_ready_test = 1;
    #30;
    spi_data_ready_test = 0;
    
    
    
end


wf_proc #(.WF_INDEX(1)) wf_proc_obj(

        .data_ready_i(spi_data_ready_test),
        .command_i(spi_command_test),
        .data_i(spi_data_test), //4bit-channel + 32bit-data

        .adc_data(adc_data_test),
        .resn_i(resn_test),
        .in_aclk(clk_test)
);



endmodule
