# 最小 Verilog + DPI-C 实验

数据路径：tb.sv -> dut.v -> dpi_bridge.sv -> add_one.c -> dut.v -> tb.sv。

- dut.v：纯 Verilog，只收 data1、valid1，输出 data2、valid2。
- dpi_bridge.sv：仅在 valid1=1 时通过 DPI-C 调用 C 函数，否则输出零。
- add_one.c：实现 add_one(value) = value + 1。
- tb.sv：检查 41->42、100->101 和 valid1=0，输出 VCD 波形。

在本目录执行：

    make run
    make wave

第一条命令应打印 PASS，并生成 build/wave.vcd；第二条命令用 GTKWave
打开波形。重点观察 data1、valid1、data2、valid2。

Makefile 将 add_one.c 一起交给 Verilator 编译链接。SV 中的 DPI-C
声明只给出函数名和类型，不包含 C 文件路径。此模型仅用于仿真。
