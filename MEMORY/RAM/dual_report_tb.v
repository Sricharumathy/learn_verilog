module dual_port_tb();
    reg clk, we,re;
    reg [7:0] in;
    reg [2:0] addr;
    wire [7:0] out;

    dual_port uut (.clk(clk), .we(we),.re(re), .data_in(in), .addr(addr), .data_out(out));

    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

    initial begin
        // Waveform dump setup
        $dumpfile("dual_port.vcd");
        $dumpvars(0, dual_port_tb);

        // write 0xA5 into address 2
        addr = 3'b010;
        in   = 8'hA5;
        we   = 1;
        #20;
	we=0;
        re = 1;
        #20;
        $display("Read from address reg 2:%h", out);
	re=0;

        // write 0x3C into address 5, then re-check address 2
        addr = 3'b101;
        in   = 8'h3C;
        we   = 1;
        #20;
        we= 0;
	re=1;
        #20;
        $display("Read from address reg 5:%h", out);
	re=0;

        addr = 3'b010;
        #20;
        $display("Read from address reg 2 again:%h", out);

        #20;
        $finish;
    end
endmodule
