module mux_2_1(input i0,i1,s,output y);
assign y = i0&~s | i1&s ;
endmodule 

module mux_4_1(input [3:0]i,input s1,s0,output y);
assign y = (i[0]&~s1&~s0)|(i[1]&~s1&s0)|(i[2]&s1&~s0)|(i[3]&s1&s0);
endmodule

module mux_8_1(input [7:0]i,input s2,s1,s0,output y);
wire y1,y2;
mux_4_1 g1(.i(i[3:0]),.s1(s1),.s0(s0),.y(y1));
mux_4_1 g2(.i(i[7:4]),.s1(s1),.s0(s0),.y(y2));
mux_2_1 g3(.i0(y1),.i1(y2),.s(s2),.y(y));
endmodule
