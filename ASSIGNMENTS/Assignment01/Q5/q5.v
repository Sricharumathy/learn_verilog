//RTL for designing 2to4 encoder using dataflow abstraction
module decoder_2_4(input a,b,output [0:3]d);
assign d[0]= ~a & ~b;
assign d[1]= ~a & b;
assign d[2]= a & ~b;
assign d[3]= a & b;
endmodule

