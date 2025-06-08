`timescale 1ns / 1ps

//This module contains SOUND_CH_CNT "sound_rx_ch" modules
//One multiplexer
//One "rx_cic2"

module sound_rx_common(
    adc_data,
    resn_i,
    in_aclk,
    
    //SPI command
    data_ready_i,
    command_i,
    data_i,
    
    snd_axis_tdata,
    snd_axis_tvalid,
    snd_axis_tuser,
    snd_axis_tlast
);
    
parameter IN_WIDTH = 12;

// Number of RX sound channels
parameter SOUND_CH_CNT = 8;

// Number of words to send in one burst, one channel=i+q
parameter SOUND_WORDS_CNT = (SOUND_CH_CNT * 2);

// Width of Sound DDS phase accumulator controlling value
parameter DDS_PHASE_WIDTH = 32;

parameter SPI_CMD_SET_RX_FREQ = 4'd1;

parameter RESULT_WIDTH = 32;

//SPI commands
input wire data_ready_i;
input wire [3:0] command_i;
input wire [35:0] data_i; //4bit-channel + 32bit-data

input wire signed [IN_WIDTH-1:0] adc_data;
input resn_i;

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_aclk, ASSOCIATED_RESET resn_i, FREQ_HZ 40000000, ASSOCIATED_BUSIF snd_axis" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 in_aclk CLK" *)
input in_aclk;

(* X_INTERFACE_INFO = "xilinx.com:interface:axis_rtl:1.0 snd_axis TDATA" *)
output wire signed [RESULT_WIDTH - 1:0] snd_axis_tdata;

(* X_INTERFACE_INFO = "xilinx.com:interface:axis_rtl:1.0 snd_axis TLAST" *)
output wire snd_axis_tlast; //connected to the CIC2 output

(* X_INTERFACE_INFO = "xilinx.com:interface:axis_rtl:1.0 snd_axis TUSER" *)
output wire [15:0] snd_axis_tuser;

(* X_INTERFACE_INFO = "xilinx.com:interface:axis_rtl:1.0 snd_axis TVALID" *)
output wire snd_axis_tvalid;

//************************************************************


//Used for  frequency controlling
//reg [DDS_PHASE_WIDTH*SOUND_CH_CNT-1:0] dds_phase_reg;
reg [SOUND_CH_CNT-1:0] dds_phase_ready;

//Outputs of rx_channel
wire [SOUND_CH_CNT*RESULT_WIDTH-1:0] out_i_bus;
wire [SOUND_CH_CNT*RESULT_WIDTH-1:0] out_q_bus;

wire [SOUND_CH_CNT-1:0] test_out_bus;


//Connected to the "data_ready" outputs of "rx_channels"
wire [SOUND_CH_CNT-1:0] rx_ch_data_ready_bus;

//Freq is "in_aclk" / CIC1 decimation
wire rx_channels_new_data = rx_ch_data_ready_bus[0];//take signal from ch0


// Number of the channel, for which command is send
wire [3:0] spi_rx_channel;
assign spi_rx_channel = data_i[35 -:4];

wire [DDS_PHASE_WIDTH-1:0] dds_accum_inc_common_bus;
assign dds_accum_inc_common_bus = data_i[DDS_PHASE_WIDTH-1:0];

reg [5:0] module_out_counter;
reg data_for_cic2_valid;
wire cic2_ready_for_data;
reg [RESULT_WIDTH-1:0] cic2_in_data;//connected to the CIC2 input
wire [RESULT_WIDTH-1:0] cic2_out_data;//connected to the CIC2 output
wire cic2_out_data_ready;//connected to CIC2 output
wire cic2_in_tlast;//connected to CIC2 input

assign cic2_in_tlast = (module_out_counter == (SOUND_WORDS_CNT - 1)) & data_for_cic2_valid;

reg cic2_init_reg;
reg sending_to_cic2_reg;

//Divide by 2 without CIC, so total "snd_axis_tvalid" rate fill be = "in_aclk" / (CIC1 * CIC2 * 2)
//cic2_out_data_ready is keeped high for a several clock pulses
reg [1:0] cic2_end_det;  always @(posedge in_aclk) cic2_end_det <= {cic2_end_det[0], cic2_out_data_ready};
reg cic2_divider;
//assign snd_axis_tvalid = cic2_out_data_ready & cic2_divider;
assign snd_axis_tvalid = cic2_out_data_ready;

integer ch_idx;

//CIC2 divider - used to decrease sample rate twice
always @(posedge in_aclk or negedge resn_i)
begin
    if (resn_i == 1'd0)
    begin
        //RESET
        cic2_divider <= 1'd0;
    end
    else if (cic2_end_det == 2'b10)//fall
        cic2_divider  = ~cic2_divider;
    
end

// CIC2 data feed controlling, multiplexer
always @(posedge in_aclk or negedge resn_i)
begin
    if (resn_i == 1'd0)
    begin
        //RESET
        module_out_counter <= 6'd0;
        data_for_cic2_valid <= 1'd0;
        cic2_init_reg <= 1'd0;
        sending_to_cic2_reg <= 1'd0;
    end
    else
    begin
        if (rx_channels_new_data == 1'd1)
        begin
            //module_out_counter <= 6'd0; 
            cic2_init_reg <= 1'd1;
            data_for_cic2_valid <= 1'd1;
            cic2_in_data <= out_i_bus[0 +:RESULT_WIDTH];
            sending_to_cic2_reg <= 1'd1;
        end
        
        if ((cic2_init_reg == 1'd1) && (sending_to_cic2_reg == 1'd1))
        begin
            if ((module_out_counter < (SOUND_WORDS_CNT)) && (cic2_ready_for_data == 1'd1) && (data_for_cic2_valid == 1'd1))
            begin
                data_for_cic2_valid <= 1'd0;
                module_out_counter <= module_out_counter + 6'd1;
            end
            else if (module_out_counter == SOUND_WORDS_CNT)
            begin
                data_for_cic2_valid <= 1'd0;
                module_out_counter <= 6'd0; 
                sending_to_cic2_reg <= 1'd0;
            end
            else
            begin
                //Place I or Q to the CIC2 input
                if ((module_out_counter & 6'd1) == 6'd0)
                    cic2_in_data <= out_i_bus[RESULT_WIDTH * (module_out_counter >> 1) +:RESULT_WIDTH];
                else
                    cic2_in_data <= out_q_bus[RESULT_WIDTH * (module_out_counter >> 1) +:RESULT_WIDTH];
                data_for_cic2_valid <= 1'd1;
            end
        end
    end
end

// DDS controlling
always @(posedge in_aclk or negedge resn_i)
begin
    if (resn_i == 1'd0)
    begin
        //RESET
        dds_phase_ready <= 0;
    end
    else if (data_ready_i && (command_i == SPI_CMD_SET_RX_FREQ)) //Received command from SPI
    begin
        for (ch_idx = 0; ch_idx < SOUND_CH_CNT; ch_idx = ch_idx + 1)
        begin
            if (spi_rx_channel == ch_idx)
            begin
                // Set new DDS phase accumulator increment value for needed channel
                //dds_phase_reg[ch_idx*DDS_PHASE_WIDTH +:DDS_PHASE_WIDTH] = data_i[31:0];
                dds_phase_ready[ch_idx] = 1'd1;
            end
        end
    end
    else
        dds_phase_ready <= 0;
end


sound_rx_ch sound_rx_ch_inst [SOUND_CH_CNT-1:0] (
		.clk_main(in_aclk),
		.adc_data(adc_data),
		.dds_phase_value(dds_accum_inc_common_bus),
        .dds_phase_value_ready_i(dds_phase_ready),
		.resn_i(resn_i),
		//Outputs
		.test_out_i(test_out_bus),
		.data_ready_o(rx_ch_data_ready_bus),
		.ouput_i(out_i_bus),
		.ouput_q(out_q_bus)
);

rx_cic2 rx_cic_common(
    .aclk					(in_aclk),
    .aresetn                (resn_i),
    .s_axis_data_tvalid     (data_for_cic2_valid),
    .s_axis_data_tdata      (cic2_in_data),//cic input
    .s_axis_data_tlast      (cic2_in_tlast),//cic input
    .s_axis_data_tready     (cic2_ready_for_data),//cic output
    
    .m_axis_data_tdata      (snd_axis_tdata),//cic output
    .m_axis_data_tvalid     (cic2_out_data_ready),//cic output
    .m_axis_data_tuser      (snd_axis_tuser),//cic output
    .m_axis_data_tlast      (snd_axis_tlast)//cic output
);
    
endmodule
