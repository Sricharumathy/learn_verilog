module counter_load_tb();

reg clk;
reg rst;
reg enb;
reg load;
reg dir;
reg [2:0] data;

wire [2:0] count;

counter_load dut(
    .clk(clk),
    .rst(rst),
    .enb(enb),
    .load(load),
    .dir(dir),
    .data(data),
    .count(count)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    $monitor("Time=%0t clk=%b rst=%b load=%b enb=%b dir=%b data=%b count=%b(%0d)",
             $time, clk, rst, load, enb, dir, data, count, count);

    // Initialize
    rst = 1;
    load = 0;
    enb = 0;
    dir = 1;
    data = 3'b000;
    #10;

    // Release reset
    rst = 0;

    // Load value 5
    load = 1;
    data = 3'b101;
    #10;

    // Count up
    load = 0;
    enb = 1;
    dir = 1;
    #40;

    // Hold
    enb = 0;
    #20;

    // Load value 2
    load = 1;
    data = 3'b010;
    #10;

    // Count down
    load = 0;
    enb = 1;
    dir = 0;
    #40;

    $finish;
end

endmodule
