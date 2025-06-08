`timescale 1ns / 1ps
//Waterfall data processing

module wf_proc #(parameter WF_INDEX = 1)
(
    adc_data,
    resn_i,
    in_aclk,
    
    //SPI commands
    data_ready_i,
    command_i,
    data_i,
    
    start_out,
    
    wf_axis_tvalid,
    wf_axis_tdata
    
 );
 
`include "misc.vh"


localparam IN_WIDTH = 12;
localparam DDS_OUT_WIDTH = 14;

localparam CIC_INIT_DECIMATION = 32;
 
localparam MULT_RESULT_WIDTH = (IN_WIDTH - 1) + (DDS_OUT_WIDTH - 1) + 1;//25
 

localparam DDS_PHASE_WIDTH = 32;
 
localparam SPI_CMD_SET_WF_FREQ = 4'd2;
localparam SPI_CMD_SET_WF_DECIM = 4'd3;
localparam SPI_CMD_START_WF = 4'd4;

//CIC is fixed!
localparam WF1_GROWTH = WF1_STAGES * clog2(WF_1CIC_MAXD);
localparam WF1_BITS = 24;//CIC input
localparam WFO_BITS = 16; //output
localparam WF_MD = clog2(WF_1CIC_MAXD);
 

localparam MULT_SHIFT = (MULT_RESULT_WIDTH - WF1_BITS);
 
 //************************

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_aclk, ASSOCIATED_RESET resn_i, FREQ_HZ 40000000, ASSOCIATED_BUSIF wf_axis" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 in_aclk CLK" *)
input in_aclk;
input wire signed [IN_WIDTH-1:0] adc_data;
input resn_i;

(* X_INTERFACE_INFO = "xilinx.com:interface:axis_rtl:1.0 wf_axis TDATA" *)
output wire [32 - 1:0] wf_axis_tdata;
//output wire signed [16 - 1:0] wf_axis_tdata;

(* X_INTERFACE_INFO = "xilinx.com:interface:axis_rtl:1.0 wf_axis TVALID" *)
output wire wf_axis_tvalid;

 //SPI commands
input wire data_ready_i;
input wire [3:0] command_i;
input wire [35:0] data_i; //4bit-channel + 32bit-data

wire [3:0] spi_rx_channel;
// Number of the channel, for which command is send
assign spi_rx_channel = data_i[35 -:4];
 
reg signed [WF1_BITS-1:0] prod_i;//Mult product
reg signed [WF1_BITS-1:0] prod_q;//Mult product

wire signed [DDS_OUT_WIDTH-1:0] sin_dds;
wire signed [DDS_OUT_WIDTH-1:0] cos_dds;

reg [DDS_PHASE_WIDTH-1:0] dds_phase_inc_value;
reg [WF_MD-1:0] cic_decim;

reg [15:0] test_counter;

wire [WFO_BITS - 1:0] cic_out_i;
wire [WFO_BITS - 1:0] cic_out_q;
assign wf_axis_tdata = {cic_out_q, cic_out_i};


reg [2:0] start_counter;//upper bit is stop
reg start_wf_pulse;

output wire start_out;
assign start_out = (start_counter < 3'd3);

// Generating start pulse for DMA
always @(posedge in_aclk)
begin
    if (resn_i == 1'd0)
    begin
        //RESET
        start_counter <= 3'd7;
    end
    else if (start_wf_pulse == 1'd1)
        start_counter <= 3'd0;
    else if (start_counter < 3'd3)
        start_counter <= start_counter + 3'd1;
end


// DDS and CIC controlling
always @(posedge in_aclk)
begin
    if (resn_i == 1'd0)
    begin
        //RESET
        dds_phase_inc_value <= 1000000;
        cic_decim <= CIC_INIT_DECIMATION;
        start_wf_pulse <= 0;
    end
    else if (data_ready_i && (spi_rx_channel == WF_INDEX))
    begin
        case (command_i)
            // Set new DDS phase accumulator increment value for a needed channel
            SPI_CMD_SET_WF_FREQ: dds_phase_inc_value <= data_i[DDS_PHASE_WIDTH-1:0];
            
            // Set CIC decimation factor value for a needed channel
            SPI_CMD_SET_WF_DECIM: cic_decim <= data_i[WF_MD-1:0];
            
            // Start DMA capture
            SPI_CMD_START_WF: start_wf_pulse <= 1'd1;
        endcase
    end
    else
    begin
        start_wf_pulse <= 0;
    end
end
 
wire[31:0] tdata_dds;
//This DDS was expected to be used only for sound, so it is called "dds_sound"
dds_sound local_dds (
		.aclk					(in_aclk),
		.aresetn                (resn_i),
		.s_axis_config_tvalid	(1'b1),
		.s_axis_config_tdata	(dds_phase_inc_value),
		.m_axis_data_tdata		(tdata_dds)
	);
	

assign sin_dds = tdata_dds[16 +:DDS_OUT_WIDTH];
assign cos_dds = tdata_dds[0 +:DDS_OUT_WIDTH];

reg signed [MULT_RESULT_WIDTH-1:0] mult_prod_i;
reg signed [MULT_RESULT_WIDTH-1:0] mult_prod_q;

always @(posedge in_aclk)
begin
    mult_prod_i <= (adc_data * cos_dds);
    mult_prod_q <= adc_data * (-sin_dds);
end

always @(posedge in_aclk)
begin
    prod_i <= mult_prod_i >> MULT_SHIFT;
    prod_q <= mult_prod_q >> MULT_SHIFT;
end


wire cic_reset;
assign cic_reset = ~resn_i;


cic_prune_var #(.INC_FILE("wf1"), .STAGES(WF1_STAGES), .DECIM_TYPE(-WF_1CIC_MAXD), .GROWTH(WF1_GROWTH), .IN_WIDTH(WF1_BITS), .OUT_WIDTH(WFO_BITS))
wf_cic_i(
        .clock			(in_aclk),
        .reset			(cic_reset),
        .decimation		(cic_decim),
        .in_strobe		(1'b1),
        .in_data		(prod_i),
        .out_strobe		(wf_axis_tvalid),
        .out_data		(cic_out_i)
);

cic_prune_var #(.INC_FILE("wf1"), .STAGES(WF1_STAGES), .DECIM_TYPE(-WF_1CIC_MAXD), .GROWTH(WF1_GROWTH), .IN_WIDTH(WF1_BITS), .OUT_WIDTH(WFO_BITS))
wf_cic_q(
        .clock			(in_aclk),
        .reset			(cic_reset),
        .decimation		(cic_decim),
        .in_strobe		(1'b1),
        .in_data		(prod_q),
        .out_data		(cic_out_q)
);


endmodule
