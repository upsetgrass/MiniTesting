// Pure Verilog RTL: pass the input into the SV DPI bridge.
module dut (
    input  wire [31:0] data1,
    input  wire        valid,
    output wire [31:0] data2
);
    dpi_bridge bridge (
        .data1(data1), .valid(valid),
        .data2(data2)
    );
endmodule
