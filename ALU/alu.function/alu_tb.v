module alu_tb;
reg [7:0]a,b;
reg [1:0] sel;
wire [15:0] y;
alu a1(.a(a),.b(b),.sel(sel),.y(y));
initial begin
a=8'd32;b=8'd12;
#10;sel=2'b00;
#10;sel=2'b01;
#10;sel=2'b10;
#10;sel=2'b11;
end
initial begin
$monitor("Time=%0t  : a=%d b=%d sel=%b | y=%d ",$time,a,b,sel,y);
#50;$finish;
end
endmodule
