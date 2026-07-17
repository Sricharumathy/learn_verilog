module demux_1_2_tb;
reg i,sel;
wire out0,out1;
demux_1_2 d1(.i(i),.s(sel),.y0(out0),.y1(out1));
initial begin
i=0;sel=0;#10;
i=1;sel=1;#10;
end
initial begin
$monitor("i=%b sel=%b | out0=%b out1=%b",i,sel,out0,out1);
#30 $finish;
end
endmodule
