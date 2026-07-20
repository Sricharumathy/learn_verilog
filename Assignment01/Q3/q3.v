//RTL for designing 2:1 Mux using gate abstraction
//Gate abstraction is the conceptual gate-level representation of a logic function,
// whereas gate implementation is the actual realization of that representation using gate primitives (in Verilog) or physical logic gates in hardware.
module mux2_1(input i0,i1,s,output y);
wire n_s,w1,w2; 
not g1(n_s,s);
and g2(w1,n_s,i0);
and g3(w2,s,i1);
or g4(y,w1,w2);
endmodule

