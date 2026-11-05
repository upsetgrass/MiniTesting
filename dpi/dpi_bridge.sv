// Simulation-only bridge. The actual +1 computation lives in add_one.c.
module dpi_bridge (
    input  logic [31:0] data1,
    input  logic        valid1,
    output logic [31:0] data2
);
    import "DPI-C" pure function int add_one(input int value);

    always_comb begin
        data2 = valid1 ? add_one(data1) : 32'b0;
    end
endmodule
