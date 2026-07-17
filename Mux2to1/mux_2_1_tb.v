module mux_2_1_tb;
reg i0,i1,sel;
wire out;
mux_2_1 m1(.i0(i0),.i1(i1),.s(sel),.y(out));
initial begin
	$display("i0 | i1 | sel |out");
	$monitor("%b | %b | %b | %b ",i0,i1,sel,out);
end
initial begin
	i0=0;i1=0;sel=0;#10;
	i0=0;i1=1;sel=0;#10;
	i0=1;i1=0;sel=0;#10;
	i0=1;i1=1;sel=0;#10;
	i0=0;i1=0;sel=1;#10;
	i0=0;i1=1;sel=1;#10;
	i0=1;i1=0;sel=1;#10;
	i0=1;i1=1;sel=1;#10;
	$finish;
end
endmodule

