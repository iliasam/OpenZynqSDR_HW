`timescale 1ns / 100ps


module sound_rx_common_test1();

parameter IN_WIDTH = 12;

reg clk_test;
reg resn_test;
reg signed [IN_WIDTH-1:0] adc_data_test;

reg spi_data_ready_test;
reg [3:0] spi_command_test;
reg [35:0] spi_data_test;

real sim_time;
real adc_sim_test_r;
real freq_val;
reg [31:0] freq_val_test;

always begin
    clk_test = 1; #12;
    sim_time = sim_time + 2.5e-08;
    adc_sim_test_r = 50 * $sin(sim_time * 6.2831853 * 5e6);//5mhz
    adc_data_test = adc_sim_test_r;
    clk_test = 0; #13;
end

initial begin
    freq_val = 5.013e6 / 10e6 * 1073741824;
    freq_val_test = freq_val;
    //adc_data_test = 1;
    spi_data_ready_test = 0;
    spi_command_test = 1;//set rx freq
    spi_data_test = 0;
    #10;
    resn_test = 0;
    #10;
    resn_test = 1;
    #30000;
    //spi_data_test = {4'd0, 32'd330000};
    //spi_data_test = {4'd0, 32'd15737418};
    spi_data_test = {4'd0, freq_val_test};
    spi_data_ready_test = 1;
    #30;
    spi_data_ready_test = 0;
end

sound_rx_common sound_rx_common_obj(

        .data_ready_i(spi_data_ready_test),
        .command_i(spi_command_test),
        .data_i(spi_data_test), //4bit-channel + 32bit-data

        .adc_data(adc_data_test),
        .resn_i(resn_test),
        .in_aclk(clk_test)
    );
    
endmodule
