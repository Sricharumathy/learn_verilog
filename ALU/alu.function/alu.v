module alu(input [7:0]a,b,input [1:0]sel,output reg[15:0] y);
always @(*) begin
case(sel)
	2'b00:y = to_add(a,b);
        2'b01:y = to_sub(a,b);
        2'b10:y = to_mul(a,b);
        2'b11:y = to_mod(a,b);
	default:y = 16'd0;
endcase
end
//function to perform add
function [15:0] to_add;
input [7:0]x,y;
begin
to_add=x+y;
end
endfunction
//function to perform sub
function [15:0] to_sub;
input [7:0]x,y;
begin
to_sub=x-y;
end 
endfunction
//function to perform mul
function [15:0] to_mul;
input [7:0]x,y;
begin
to_mul=x*y;
end
endfunction
//function to perform modulus
function [15:0] to_mod;
input [7:0]x,y;
begin
if(y==0)
to_mod=16'd0;
else	  
to_mod=x%y;
end
endfunction
endmodule

