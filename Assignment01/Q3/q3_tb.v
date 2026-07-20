module mux2_1_tb;
reg i0,i1,sel;
wire y;
mux2_1 m1(.i0(i0),.i1(i1),.s(sel),.y(y));
initial begin
i0=1;i1=0;
#10;sel=0;
#10;sel=1;
end
initial begin
$monitor ("Time=%0t  i0=%b | i1=%b | sel=%b | y=%b ",$time,i0,i1,sel,y);
#30;
$finish;
end
endmodule

