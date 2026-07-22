`define HOLD 2'b00
`define RESET 2'b01
`define SET 2'b10
`define TOGGLE 2'b11
module jk_define(input clk,j,k,output reg qn);
always @(posedge clk) begin
case({j,k})
`HOLD : qn <=qn;
`RESET :qn=1'b0;
`SET : qn<=1'b1;
`TOGGLE :qn<=~qn;
default : qn<=1'bx;
endcase
end
endmodule
