module mux8to1_tb;
reg [7:0]in;
reg [2:0]sel;
wire out;
mux8to1 mmt (.in(in),.sel(sel),.out(out));
initial begin
in=8'b10110001;
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
$monitor("Time=%0t : in=%b :sel=%b (sel=%d) |out=%b",$time,in,sel,sel,out);
#100;
$finish;
end
endmodule
