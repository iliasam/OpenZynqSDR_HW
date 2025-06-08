 localparam WF1_STAGES = 5;
 localparam WF_1CIC_MAXD = 8192;
 
// valid only when value is power of 2
function integer clog2(input integer value);
	begin
		if (value <= 1) begin
			clog2 = 1;
		end else
		begin
			value = value-1;
			for (clog2=0; value>0; clog2=clog2+1)
				value = value >> 1;
		end
	end 
endfunction
