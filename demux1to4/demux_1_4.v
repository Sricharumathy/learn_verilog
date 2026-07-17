module demux_1_4(input i,sel0,sel1,output [3:0]y);
assign y[0]=~sel1 & ~sel0 & i;
assign y[1]=~sel1 & sel0 & i;
assign y[2]=sel1 & ~sel0 & i;
assign y[3]=sel1 & sel0 & i;
endmodule
