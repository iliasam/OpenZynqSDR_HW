`timescale 1ns / 1ps


module adc_sim_conv(
    input wire clk_main,
    input wire  rst_n,
    
    input wire signed [7:0] dds_data_in,
    
    output wire signed[11:0] sim_data_out
);
wire [3:0] out_lb;

//assign sim_data_out = $signed(dds_data_in) + $signed(out_lb);
    
reg signed [11:0] out_reg;
assign  sim_data_out = out_reg;

reg [31:0] shift_reg;

assign out_lb = shift_reg[3:0];
wire next_bit;
assign next_bit =
  shift_reg[31] ^
  shift_reg[30] ^
  shift_reg[29] ^
  shift_reg[27] ^
  shift_reg[25] ^
  shift_reg[ 0];

always @(posedge clk_main or negedge rst_n)
begin
  if(rst_n == 1'd0)
    shift_reg <= 32'h00000001;
  else
    shift_reg <= { next_bit, shift_reg[31:1] };
end


always @(posedge clk_main)
begin
    out_reg <= $signed(dds_data_in) + $signed(out_lb);
    //out_reg <= $signed(out_lb);//just noise
end
    
    
endmodule
