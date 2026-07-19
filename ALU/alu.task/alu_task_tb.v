`timescale 1ns/1ps

module alu_tb;

reg [7:0] a, b;
reg [1:0] sel;
wire [15:0] y;

// Instantiate the ALU
alu uut (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
);

initial begin

    $display("Time\tSel\tA\tB\tY");
    $monitor("%0t\t%b\t%d\t%d\t%d", $time, sel, a, b, y);

    a = 8'd20; b = 8'd10; 
    sel = 2'b00;
    #10;
    sel = 2'b01;
    #10;
    sel = 2'b10;
    #10;
    sel = 2'b11;
    #10;
    sel = 2'b11;
    #10;

    $finish;

end

endmodule
