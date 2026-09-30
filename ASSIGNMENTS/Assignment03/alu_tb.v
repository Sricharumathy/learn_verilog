module alu_tb;
reg [3:0]a,b;
reg [2:0]sel;
wire [4:0]res;
alu_4b aa(.a(a),.b(b),.opcodes(sel),.y(res));
initial begin
a=4'd12;b=4'd8;
sel=3'b000;#10;
sel=3'b001;#10;
sel=3'b010;#10;
sel=3'b011;#10;
sel=3'b100;#10;
sel=3'b101;#10;
sel=3'b110;#10;
sel=3'b111;#10;
end
initial begin
$monitor("Time=%0t   :a=%d,b=%d,sel=%b,res=%d",$time,a,b,sel,res);
#100;
$finish;
end
endmodule
