// Pure Verilog RTL: pass the input into the SV DPI bridge.
module dut (
    input  wire [31:0] data1,
    input  wire        valid1,
    output wire [31:0] data2,
    output wire        valid2
);
    dpi_bridge bridge (
        .data1(data1), .valid1(valid1),
        .data2(data2), .valid2(valid2)
    );
endmodule
