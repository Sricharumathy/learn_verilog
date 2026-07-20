// RTL for designing 2to4 decode using behaviour level
module decode_2to4(input a,b,enable,output reg [3:0]d);
always @(*) begin
if(!enable) begin
d=4'b0000;
end
else begin
case({a,b})
2'b00:d=4'b0001;
2'b01:d=4'b0010;
2'b10:d=4'b0100;
2'b11:d=4'b1000;
default:d=4'b0000;
endcase
end
end
endmodule



