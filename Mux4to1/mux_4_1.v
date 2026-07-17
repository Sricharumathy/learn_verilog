module mux_4_1(input [3:0]i,input s1,s0,output y);
wire not_s1,not_s0,w1,w2,w3,w4;
not g1(not_s1,s1);
not g2(not_s0,s0);
and g3(w1,not_s1,not_s0,i[0]);
and g4(w2,not_s1,s0,i[1]);
and g5(w3,s1,not_s0,i[2]);
and g6(w4,s1,s0,i[3]);
or g7(y,w1,w2,w3,w4);
endmodule
