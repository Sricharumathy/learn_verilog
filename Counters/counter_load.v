module counter_load(input clk,rst,load,enb,dir,input [2:0] data,output  reg [2:0] count);
always @(posedge clk) 
begin
	if(rst)
		count<=0;
	else if (load)
		count<=data;
	else if(enb) begin
		if(dir)
			count<=count+1;
		else
			count<=count-1;
	end
end
endmodule































