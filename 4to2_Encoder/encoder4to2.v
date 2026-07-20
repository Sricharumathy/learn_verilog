module encoder4to2(input [3:0]i,output x,y);
assign x=i[0] |i[1];
assign y=i[0] |i[2];
endmodule
