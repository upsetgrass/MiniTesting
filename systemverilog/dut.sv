module dut (
    input  logic       clk,
    input  logic       valid,
    input  logic [7:0] data,
    output logic [7:0] result
);
    always_ff @(posedge clk)
        if (valid)
            result <= data + 8'd1;
endmodule
