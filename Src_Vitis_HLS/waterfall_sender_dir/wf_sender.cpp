#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <iostream>
#include <iostream>
#include "string.h"
#include "hls_stream.h"
#include "ap_axi_sdata.h"
#include "ap_int.h"

//One input data item is 32bit word, 16-bit+16-bit IQ

#define BUFFER_LENGTH		(8192 / 2) //i+q 32-bit words, but write is 64-bit

//#define DUAL_BUFFER_LENGTH	(BUFFER_LENGTH * 2) //bursts

#define STATE_WORD_OFFSET	(0x1F410000 / 8)//DMA state address
#define RAM_WORD_OFFSET		(0x1F410008 / 8)//RAM start address

//For waterfall2
#define STATE_WORD_OFFSET2	(0x1F420000 / 8)//DMA state address
#define RAM_WORD_OFFSET2 	(0x1F420008 / 8)//RAM start address

//hls::axis<ap_int<WData>, WUser, WId, WDest>;
typedef ap_axis<32,0,0,0> data_t;

//notice that out_bus is 64bit.
//module_idx - used to select - WF1 or WF2 is used, it is fixed
void waterfall_sender(hls::stream<data_t> &in_bus, bool start_send, bool module_idx, volatile uint64_t *out_bus, bool *interrupt_out)
{
	//#pragma HLS DATAFLOW
	#pragma HLS INTERFACE mode=axis register_mode=both port=in_bus register

	#pragma HLS INTERFACE mode=m_axi port=out_bus offset=off depth = 8192

	#pragma HLS INTERFACE ap_ctrl_none port=return

	int i;
	uint16_t item_count_reg = 0; //transfers counter
	static bool int_pending_reg = false;
	static bool start_detect_reg = 0;

	static uint32_t write_offset_64 = 0;//in 64-bit words

	data_t tmp_axis_in;

	uint32_t tmp_in_data1;
	uint32_t tmp_in_data2;

	if ((start_send == 1) && (start_detect_reg == 0))
		start_detect_reg = 1;
	else
		start_detect_reg = 0;
    

	//>>>>>>>>>>>

    if (start_detect_reg)
    {
        item_count_reg = 0;

        if (module_idx == false)
        	write_offset_64 = RAM_WORD_OFFSET;
        else
        	write_offset_64 = RAM_WORD_OFFSET2;


    	do{
#pragma HLS PIPELINE
    		tmp_axis_in = in_bus.read();
    		tmp_in_data1 = tmp_axis_in.data;

    		tmp_axis_in = in_bus.read();
    		tmp_in_data2 = tmp_axis_in.data;


			uint64_t tmp_data64 = (((uint64_t)tmp_in_data2) << 32) | ((uint64_t)tmp_in_data1);
			//*(uint64_t *)(out_bus + RAM_WORD_OFFSET  + item_count_reg) = tmp_data64;//write received data to RAM
			*(uint64_t *)(out_bus + write_offset_64  + item_count_reg) = tmp_data64;//write received data to RAM

        	item_count_reg++;
		} while(item_count_reg < BUFFER_LENGTH);
		*interrupt_out = 1;
	}
    else
    {
    	*interrupt_out = 0;
    }
}
