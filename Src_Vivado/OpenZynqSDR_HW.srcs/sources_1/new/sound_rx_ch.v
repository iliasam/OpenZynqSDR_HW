`timescale 1ns / 1ps

//This module contains one DDS/NCO and two "rx_cic_1" for I and Q.

module sound_rx_ch(
    adc_data,
    dds_phase_value_ready_i,
    dds_phase_value,
    ouput_i,
    ouput_q,
    data_ready_o,
    test_out_i,
    resn_i,
    clk_main
);

parameter IN_WIDTH = 12;
parameter DDS_OUT_WIDTH = 14;
parameter RESULT_WIDTH = 32;
parameter DDS_PHASE_WIDTH = 32;

input wire signed [IN_WIDTH-1:0] adc_data;

input [DDS_PHASE_WIDTH-1:0] dds_phase_value;
input dds_phase_value_ready_i;


output signed [RESULT_WIDTH - 1:0] ouput_i;
output signed [RESULT_WIDTH - 1:0] ouput_q;
input resn_i;
input clk_main;
output test_out_i;
output data_ready_o;


wire signed [DDS_OUT_WIDTH-1:0] sin_dds;
wire signed [DDS_OUT_WIDTH-1:0] cos_dds;

reg signed [RESULT_WIDTH-1:0] prod_i;
reg signed [RESULT_WIDTH-1:0] prod_q;

reg [DDS_PHASE_WIDTH-1:0] current_dds_phase_step;

assign test_out_i = cos_dds[DDS_OUT_WIDTH-1];

always @(posedge clk_main or negedge resn_i)
begin
    if (resn_i == 1'd0)
    begin
        //RESET
        current_dds_phase_step <= 32'd1000000;
    end
    else if (dds_phase_value_ready_i == 1'd1)
    begin
        current_dds_phase_step <= dds_phase_value;
    end
end


always @(posedge clk_main)
begin
    prod_i <= adc_data * sin_dds;
    prod_q <= adc_data * cos_dds;
    //The variant below is better in mathematics, but it need more FPGA resources, while there is no difference in work.
    //prod_i <= adc_data * cos_dds;
    //prod_q <= adc_data * (-sin_dds);
end

wire[31:0] tdata_dds;
dds_sound local_dds (
		.aclk					(clk_main),
		.aresetn                (resn_i),
		.s_axis_config_tvalid	(1'b1),
		.s_axis_config_tdata	(current_dds_phase_step),
		.m_axis_data_tvalid		(),
		.m_axis_data_tdata		(tdata_dds)
	);
assign sin_dds = tdata_dds[16 +:DDS_OUT_WIDTH];
assign cos_dds = tdata_dds[0 +:DDS_OUT_WIDTH];

rx_cic_1 rx_cic_i(
    .aclk					(clk_main),
    .aresetn                (resn_i),
    .s_axis_data_tvalid     (1'd1),
    .s_axis_data_tdata      (prod_i),//cic input
    .m_axis_data_tdata      (ouput_i),//cic output
    .m_axis_data_tvalid     (data_ready_o)
);
    
rx_cic_1 rx_cic_q(
    .aclk					(clk_main),
    .aresetn                (resn_i),
    .s_axis_data_tvalid     (1'd1),
    .s_axis_data_tdata      (prod_q),//cic input
    .m_axis_data_tdata      (ouput_q)//cic output
);


    
    
endmodule
