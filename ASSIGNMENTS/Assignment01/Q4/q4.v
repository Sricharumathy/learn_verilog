//RTL for designing a 4:1 Mux using 2:1 Mux
module mux_2_1(input i0,i1,sel,output y);
assign y=sel?i1:i0;
endmodule

module mux_4_1(input [3:0]i,input s1,s0,output y);
wire w1,w2;
mux_2_1 m1(.i0(i[0]),.i1(i[1]),.sel(s0),.y(w1));
mux_2_1 m2(.i0(i[2]),.i1(i[3]),.sel(s0),.y(w2));
mux_2_1 m3(.i0(w1),.i1(w2),.sel(s1),.y(y));
endmodule
