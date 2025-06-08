`timescale 1ns / 1ps

//Based on this: https://www.fpga4fun.com/SPI2.html

module spi_receiver (
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi_s SCK_O" *)
  input spi_clk,
  
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi_s IO0_O" *)
  input mosi,
  
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi_s SS_O" *)
  input csn_i,
  
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi_s SS_I" *)
  output csn_o,
   
  input resn_i,
  
  input clk_main, 
  
  output data_ready,
  output [3:0] command,
  output [35:0] data //4bit-channel + 32bit-data
);

reg [7:0] result_reg;//received byte
reg [7:0] data_received; //shift rigister
reg [2:0] bitcnt;

reg [2:0] spi_clk_reg;  always @(negedge clk_main) spi_clk_reg <= {spi_clk_reg[1:0], spi_clk};
wire spi_clk_rise = (spi_clk_reg[2:1]==2'b01);  // now we can detect SCK rising edges
wire spi_clk_fall = (spi_clk_reg[2:1]==2'b10);  // and falling edges

// same thing for CSn
reg [2:0] csn_reg;  always @(posedge clk_main) csn_reg <= {csn_reg[1:0], csn_i};
wire csn_reg_startmessage = (csn_reg[2:1]==2'b10);  // message starts at falling edge
wire csn_reg_endmessage = (csn_reg[2:1]==2'b01);  // message stops at rising edge

// and for MOSI
reg [1:0] mosi_reg;  always @(posedge clk_main) mosi_reg <= {mosi_reg[0], mosi};
wire mosi_data = mosi_reg[1];

wire byte_received = ((bitcnt == 3'd0) && spi_clk_fall);

//*****
//Protocol
reg [2:0] byte_cnt;
reg [3:0] received_command_reg;
reg [3:0] received_channel_reg;
reg [31:0] received_data_reg;

assign csn_o = 1'b1;
assign command = received_command_reg;
assign data_ready = (byte_cnt == 3'd6) && csn_reg_endmessage;
assign data = {received_channel_reg,received_data_reg};

//***********************************************************

always @(posedge clk_main or negedge resn_i)
begin
    if (resn_i == 1'd0)
    begin
        //RESET
        bitcnt <= 3'd0;
        data_received <= 8'd0;
    end
    else
    begin
        if(csn_i) //CSn is HIGH, bus is IDLE
            bitcnt <= 3'd0;
        else
        if (spi_clk_rise)
        begin
            bitcnt <= bitcnt + 3'd1;
            data_received <= {data_received[6:0], mosi};
        end
    end
end

always @(posedge clk_main or negedge resn_i)
begin
    if (resn_i == 1'd0)
    begin
        //RESET
        result_reg <= 8'd0;
    end
    else
        if (byte_received)
            result_reg <= data_received;
end


always @(posedge clk_main or negedge resn_i)
begin
    if (resn_i == 1'd0)
    begin
        //RESET
        byte_cnt <= 3'd0;
    end
    else
        if (csn_reg_startmessage)
            byte_cnt <= 3'd0;
        else
            if (byte_received)
                byte_cnt <= byte_cnt + 3'd1;
        
end

always @(negedge clk_main)
begin
    if (byte_received)
    begin
        case (byte_cnt)
            4'd1: received_command_reg <= result_reg[3:0];
            4'd2: received_channel_reg <= result_reg[3:0];
            4'd3: received_data_reg[31:24] <= result_reg;
            4'd4: received_data_reg[23:16] <= result_reg;
            4'd5: received_data_reg[15:8] <= result_reg;
            4'd6: received_data_reg[7:0] <= result_reg;
            //option2: <statement>;
        endcase
    end
end



endmodule
