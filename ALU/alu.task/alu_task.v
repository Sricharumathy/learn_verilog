module alu(
    input [7:0] a,b,
    input [1:0] sel,
    output reg [15:0] y
);

always @(*) begin
    case(sel)
        2'b00: to_add(a,b,y);
        2'b01: to_sub(a,b,y);
        2'b10: to_mul(a,b,y);
        2'b11: to_mod(a,b,y);
        default: y = 16'd0;
    endcase
end

// Task for Addition
task to_add;
    input  [7:0] x,y1;
    output [15:0] result;
    begin
        result = x + y1;
    end
endtask

// Task for Subtraction
task to_sub;
    input  [7:0] x,y1;
    output [15:0] result;
    begin
        result = x - y1;
    end
endtask

// Task for Multiplication
task to_mul;
    input  [7:0] x,y1;
    output [15:0] result;
    begin
        result = x * y1;
    end
endtask

// Task for Modulus
task to_mod;
    input  [7:0] x,y1;
    output [15:0] result;
    begin
        if (y1 == 0)
            result = 16'd0;
        else
            result = x % y1;
    end
endtask

endmodule
