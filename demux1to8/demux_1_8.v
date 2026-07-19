module demux_1_2(input i,s0,output [1:0]y);
assign y[0]= ~s0 & i;
assign y[1]= s0 & i;
endmodule

module demux_1_4(input i,s1,s0,output [3:0]y);
assign y[0]= ~s1 & ~s0 & i;
assign y[1]= ~s1 & s0 & i;
assign y[2]= s1 & ~s0 & i ;
assign y[3]= s1 & s0 & i;
endmodule

module demux_1_8(input i,s2,s1,s0,output [7:0]y);
wire [1:0]w;
demux_1_2 d0(.i(i),.s0(s2),.y(w));
demux_1_4 d1(.i(w[0]),.s1(s1),.s0(s0),.y(y[3:0]));
demux_1_4 d2(.i(w[1]),.s1(s1),.s0(s0),.y(y[7:4]));

endmodule
