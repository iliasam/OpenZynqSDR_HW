`timescale 10ns / 100ps


module spi_test1();

reg clk_test;
reg resn_test;
reg clk_spi_test;
reg mosi_spi_test;
reg csn_spi_test;

always begin
    clk_test = 1; #2;
    clk_test = 0; #2;
end

always 
begin
    resn_test = 0;
    #10;
    resn_test = 1;
    #15000;
    $stop;
end

always 
begin
    clk_spi_test = 0;
    csn_spi_test = 1;
    mosi_spi_test = 0;
    #25;
    csn_spi_test = 0;
    #10;
    
    //BYTE1
    clk_spi_test = 1; //bit0
    #10;
    clk_spi_test = 0;
    #10;
    
    clk_spi_test = 1; //bit1
    #10;
    clk_spi_test = 0;
    #10;
    
    
    clk_spi_test = 1; //bit2
    #10;
    clk_spi_test = 0;
    #10;
    
    
    clk_spi_test = 1; //bit3
    #10;
    clk_spi_test = 0;
    #10;
    
    clk_spi_test = 1; //bit4
    #10;
    clk_spi_test = 0;
    #10;
    
    mosi_spi_test = 1; //<<<<<<<<<<<<
    clk_spi_test = 1; //bit5
    #10;
    clk_spi_test = 0;
    mosi_spi_test = 0;
    #10;
    
    clk_spi_test = 1; //bit6
    #10;
    clk_spi_test = 0;
    #10;
    
    clk_spi_test = 1; //bit7
    #10;
    clk_spi_test = 0;
    #10;
    
    ////
    #20;
    //byte2
    
    clk_spi_test = 1; //bit0
    #10;
    clk_spi_test = 0;
    #10;
    
    clk_spi_test = 1; //bit1
    #10;
    clk_spi_test = 0;
    #10;
    
    
    clk_spi_test = 1; //bit2
    #10;
    clk_spi_test = 0;
    #10;
    
    clk_spi_test = 1; //bit3
    #10;
    clk_spi_test = 0;
    #10;
    
    clk_spi_test = 1; //bit4
    #10;
    clk_spi_test = 0;
    #10;
    
    clk_spi_test = 1; //bit5
    #10;
    clk_spi_test = 0;
    #10;
    
    mosi_spi_test = 1; //<<<<<<<<<<<<
    clk_spi_test = 1; //bit6
    #10;
    clk_spi_test = 0;
    mosi_spi_test = 0; //<<<<<<<<<<<<
    #10;
    
    clk_spi_test = 1; //bit7
    #10;
    clk_spi_test = 0;
    #10;
    
     ////
    #20;
    //BYTE3
    
    clk_spi_test = 1; //bit0
    #10;
    clk_spi_test = 0;
    #10;
    
    clk_spi_test = 1; //bit1
    #10;
    clk_spi_test = 0;
    #10;
    
    
    clk_spi_test = 1; //bit2
    #10;
    clk_spi_test = 0;
    #10;
    
    clk_spi_test = 1; //bit3
    #10;
    clk_spi_test = 0;
    #10;
    
    clk_spi_test = 1; //bit4
    #10;
    clk_spi_test = 0;
    #10;
    
    clk_spi_test = 1; //bit5
    #10;
    clk_spi_test = 0;
    #10;
    
    mosi_spi_test = 1; //<<<<<<<<<<<<
    clk_spi_test = 1; //bit6
    #10;
    clk_spi_test = 0;
    mosi_spi_test = 0; //<<<<<<<<<<<<
    #10;
    
    clk_spi_test = 1; //bit7
    #10;
    clk_spi_test = 0;
    #10;
    
        
     ////
    #20;
    //BYTE4
    
    clk_spi_test = 1; //bit0
    #10;
    clk_spi_test = 0;
    #10;
    
    clk_spi_test = 1; //bit1
    #10;
    clk_spi_test = 0;
    #10;
    
    
    clk_spi_test = 1; //bit2
    #10;
    clk_spi_test = 0;
    #10;
    
    clk_spi_test = 1; //bit3
    #10;
    clk_spi_test = 0;
    #10;
    
    clk_spi_test = 1; //bit4
    #10;
    clk_spi_test = 0;
    #10;
    
    mosi_spi_test = 1; //<<<<<<<<<<<<
    clk_spi_test = 1; //bit5
    #10;
    clk_spi_test = 0;
    mosi_spi_test = 0; //<<<<<<<<<<<<
    #10;
    
    
    clk_spi_test = 1; //bit6
    #10;
    clk_spi_test = 0;
    #10;
    
    clk_spi_test = 1; //bit7
    #10;
    clk_spi_test = 0;
    #10;
    
    ////
    #20;
    //BYTE5
    
    clk_spi_test = 1; //bit0
    #10;
    clk_spi_test = 0;
    #10;
    
    clk_spi_test = 1; //bit1
    #10;
    clk_spi_test = 0;
    #10;
    
    
    clk_spi_test = 1; //bit2
    #10;
    clk_spi_test = 0;
    #10;
    

    clk_spi_test = 1; //bit3
    #10;
    clk_spi_test = 0;
    #10;
    
    
    mosi_spi_test = 1; //<<<<<<<<<<<<
    clk_spi_test = 1; //bit4
    #10;
    clk_spi_test = 0;
    mosi_spi_test = 0; //<<<<<<<<<<<<
    #10;
    
    
    clk_spi_test = 1; //bit5
    #10;
    clk_spi_test = 0;
    #10;
    
    
    clk_spi_test = 1; //bit6
    #10;
    clk_spi_test = 0;
    #10;
    
    clk_spi_test = 1; //bit7
    #10;
    clk_spi_test = 0;
    #10;
    
    ////
    #20;
    //BYTE6
    
    clk_spi_test = 1; //bit0
    #10;
    clk_spi_test = 0;
    #10;
    
    clk_spi_test = 1; //bit1
    #10;
    clk_spi_test = 0;
    #10;
    
    
    clk_spi_test = 1; //bit2
    #10;
    clk_spi_test = 0;
    #10;
    
    mosi_spi_test = 1; //<<<<<<<<<<<<
    clk_spi_test = 1; //bit3
    #10;
    clk_spi_test = 0;
    mosi_spi_test = 0; //<<<<<<<<<<<<
    #10;
    
    
    clk_spi_test = 1; //bit4
    #10;
    clk_spi_test = 0;
    #10;
    
    
    clk_spi_test = 1; //bit5
    #10;
    clk_spi_test = 0;
    #10;
    
    
    clk_spi_test = 1; //bit6
    #10;
    clk_spi_test = 0;
    #10;
    
    clk_spi_test = 1; //bit7
    #10;
    clk_spi_test = 0;
    #10;
    
    
    
end

spi_receiver spi_receiver_obj(
        .csn_i(csn_spi_test),
        .mosi(mosi_spi_test),
        .spi_clk(clk_spi_test),
        .resn_i(resn_test),
        .clk_main(clk_test)
    );
    
endmodule
