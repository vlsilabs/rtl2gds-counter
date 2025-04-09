module tb_counter;
    reg clk, rst_n, en;
    wire [3:0] count;

    counter uut (.clk(clk), .rst_n(rst_n), .en(en), .count(count));

    initial begin
        $dumpfile("counter.vcd");
        $dumpvars(0, tb_counter);

        clk = 0;
        rst_n = 0;
        en = 0;
        #5 rst_n = 1;
        #10 en = 1;
        #100 en = 0;
        #20 $finish;
    end

    always #5 clk = ~clk;
endmodule
