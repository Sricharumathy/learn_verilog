module alu_4b(input [3:0]a,b,input[2:0] opcodes,output reg [4:0]y);
always @(*) begin
case(opcodes)
3'b000:y=a+b;
3'b001:y=a-b;
3'b010:begin
if(b==0)
y=4'bxxxx;
else
y=(a/b);
end
3'b011:y=a&&b;
3'b100:y=a&b;
3'b101:y=a|b;
3'b110:y=~(a&b);
3'b111:y=~(a^b);
default:y=4'b000;
endcase
end
endmodule

