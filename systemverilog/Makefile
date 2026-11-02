.PHONY: all run clean

all: run

obj_dir/Vtb: dut.sv tb.sv
	verilator --binary --timing --top-module tb $^

run: obj_dir/Vtb
	./$<

clean:
	rm -rf obj_dir
