module tb;
    logic clk = 0;
    logic valid = 0;
    logic [7:0] data = 0;
    wire [7:0] result;

    dut dut_i (.*); // 同名端口连接
    // dut dut_i (
    //     .clk(clk),
    //     .valid(valid),
    //     .data(data),
    //     .result(result)
    // );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb);

        @(negedge clk);
        data = 8'd41;
        valid = 1;

        @(posedge clk);
        #1;
        if (result !== 8'd42)
            $fatal(1, "FAIL: result=%d", result);

        $display("PASS: sent %0d, received %0d", data, result);
        $finish;
    end
endmodule
