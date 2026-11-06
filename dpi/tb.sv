module tb;
    logic [31:0] data1;
    logic valid;
    wire [31:0] data2;

    dut dut (
        .data1(data1), .valid(valid), .data2(data2)
    );

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb);
        data1 = 0;
        valid = 0;

        #5;
        data1 = 41;
        valid = 1;
        #1;
        if (data2 !== 42)
            $fatal(1, "41 + 1 should be 42, got %0d", data2);

        #5;
        data1 = 100;
        #1;
        if (data2 !== 101)
            $fatal(1, "100 + 1 should be 101, got %0d", data2);

        #5;
        valid = 0;
        #1;
        if (data2 !== 0)
            $fatal(1, "output should clear when valid=0");

        $display("PASS: 41->42, 100->101, valid gating");
        $finish;
    end
endmodule
