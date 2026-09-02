`timescale 1ns/1ps

module sys_fifo_tb;

reg clk;
reg rst;
reg we;
reg re;
reg [7:0] data_in;

wire full;
wire empty;
wire [7:0] data_out;

sys_fifo dut (
    .clk(clk),
    .rst(rst),
    .we(we),
    .re(re),
    .data_in(data_in),
    .full(full),
    .empty(empty),
    .data_out(data_out)
);

// Clock: 50 MHz
initial begin
    clk = 0;
    forever #10 clk = ~clk;
end

initial begin

    $dumpfile("sys_fifo.vcd");
    $dumpvars(0, sys_fifo_tb);

    // Initial values
    rst     = 1;
    we      = 0;
    re      = 0;
    data_in = 8'h00;

    // -------------------------
    // CASE 1: RESET
    // -------------------------
    #20;
    rst = 0;

    #10;
    $display("CASE 1: RESET");
    $display("empty=%b full=%b", empty, full);


    // -------------------------
    // CASE 2: WRITE 8 VALUES
    // -------------------------
    we = 1;

    data_in = 8'hA5;
    #20;
    $display("WRITE: A5 | empty=%b full=%b", empty, full);

    data_in = 8'h3C;
    #20;
    $display("WRITE: 3C | empty=%b full=%b", empty, full);

    data_in = 8'h11;
    #20;
    $display("WRITE: 11 | empty=%b full=%b", empty, full);

    data_in = 8'h22;
    #20;
    $display("WRITE: 22 | empty=%b full=%b", empty, full);

    data_in = 8'h33;
    #20;
    $display("WRITE: 33 | empty=%b full=%b", empty, full);

    data_in = 8'h44;
    #20;
    $display("WRITE: 44 | empty=%b full=%b", empty, full);

    data_in = 8'h55;
    #20;
    $display("WRITE: 55 | empty=%b full=%b", empty, full);

    data_in = 8'h66;
    #20;
    $display("WRITE: 66 | empty=%b full=%b", empty, full);

    we = 0;

    #10;
    $display("CASE 2: AFTER 8 WRITES");
    $display("empty=%b full=%b", empty, full);


    // -------------------------
    // CASE 3: TRY WRITE WHEN FULL
    // -------------------------
    we = 1;
    data_in = 8'hFF;

    #20;

    we = 0;

    $display("CASE 3: WRITE WHEN FULL");
    $display("Tried to write FF");
    $display("empty=%b full=%b", empty, full);


    // -------------------------
    // CASE 4: READ ALL 8 VALUES
    // -------------------------
    re = 1;

    #20;
    $display("READ 1: data_out=%h | empty=%b full=%b",
             data_out, empty, full);

    #20;
    $display("READ 2: data_out=%h | empty=%b full=%b",
             data_out, empty, full);

    #20;
    $display("READ 3: data_out=%h | empty=%b full=%b",
             data_out, empty, full);

    #20;
    $display("READ 4: data_out=%h | empty=%b full=%b",
             data_out, empty, full);

    #20;
    $display("READ 5: data_out=%h | empty=%b full=%b",
             data_out, empty, full);

    #20;
    $display("READ 6: data_out=%h | empty=%b full=%b",
             data_out, empty, full);

    #20;
    $display("READ 7: data_out=%h | empty=%b full=%b",
             data_out, empty, full);

    #20;
    $display("READ 8: data_out=%h | empty=%b full=%b",
             data_out, empty, full);

    re = 0;


    // -------------------------
    // CASE 5: FIFO EMPTY
    // -------------------------
    #10;

    $display("CASE 5: AFTER 8 READS");
    $display("empty=%b full=%b", empty, full);


    // -------------------------
    // CASE 6: TRY READ WHEN EMPTY
    // -------------------------
    re = 1;

    #20;

    re = 0;

    $display("CASE 6: READ WHEN EMPTY");
    $display("data_out=%h | empty=%b full=%b",
             data_out, empty, full);


    // -------------------------
    // END
    // -------------------------
    #20;

    $display("================================");
    $display("FIFO TEST COMPLETED");
    $display("================================");

    $finish;

end

endmodule
