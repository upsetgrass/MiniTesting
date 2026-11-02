.PHONY: all run clean

all: run

build/Vtb: dut.sv tb.sv
	verilator --binary --timing --trace-vcd --top-module tb --Mdir build $^

run: build/Vtb
	./$<

clean:
	rm -rf build
