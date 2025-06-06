#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <iostream>
#include <iostream>
#include "string.h"
#include "hls_stream.h"
#include "ap_axi_sdata.h"
#include "ap_int.h"


#define CH_COUNT	8

#define BURST_SIZE 			(CH_COUNT * 2) //I+Q, size is 4byte words

#define BUFFER_LENGTH		200 //bursts

#define DUAL_BUFFER_LENGTH	(BUFFER_LENGTH * 2) //bursts

#define STATE_WORD_OFFSET	(0x1F400000 / 4)//DMA state address = 500MByte
#define RAM_WORD_OFFSET		(0x1F400004 / 4)//RAM start address = 500MByte + 4byte


typedef ap_axis<32,16,0,0> data_t;

void sound_sender(hls::stream<data_t> &in_bus,  volatile int *out_bus, bool *interrupt_out )
{
	#pragma HLS INTERFACE mode=axis register_mode=both port=in_bus register

	#pragma HLS INTERFACE mode=m_axi port=out_bus offset=off

	#pragma HLS INTERFACE ap_ctrl_none port=return

	int i;
	uint32_t data_buf[BURST_SIZE];
	static uint16_t burst_count_reg = 0; //transfers counter
	static bool int_pending_reg = false;


	static uint16_t test_irq_cnt = 0;

	//>>>>>>>>>>>

	data_t tmp_in_item;
	do{
#pragma HLS PIPELINE
		tmp_in_item = in_bus.read();
		data_buf[tmp_in_item.user & 31] = tmp_in_item.data;
	} while(!tmp_in_item.last);

      
	memcpy((int *)(out_bus + RAM_WORD_OFFSET + burst_count_reg * BURST_SIZE), data_buf, BURST_SIZE * sizeof(int));
	burst_count_reg++;

	if (burst_count_reg >= DUAL_BUFFER_LENGTH)
	{
		burst_count_reg = 0;
	}

	  if (burst_count_reg == 0)
	  {
		  test_irq_cnt++;
		  *(int *)(out_bus + STATE_WORD_OFFSET) = 1;//Buff1 is done
		  int_pending_reg = true;
	  }
	  else if (burst_count_reg == BUFFER_LENGTH)
	  {
		  test_irq_cnt++;
		  *(int *)(out_bus + STATE_WORD_OFFSET) = 0;//Buff0 is done
		  int_pending_reg = true;
	  }
	  else
	  {
		  int_pending_reg = false;
	  }

	*interrupt_out=int_pending_reg;
}
