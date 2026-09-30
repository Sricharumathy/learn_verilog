//RTL for designing a 1:4 demuxx using dataflow
module demux_1_4(input i,s1,s0,output [3:0]y);
assign y[0]=(~s1)&(~s0)&(i);
assign y[1]=(~s1)&(s0)&(i);
assign y[2]=(s1)&(~s0)&(i);
assign y[3]=(s1)&(s0)&(i);
endmodule
