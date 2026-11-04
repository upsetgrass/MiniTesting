.PHONY: all run wave clean

all: run

build/Vtb: dut.v dpi_bridge.sv tb.sv add_one.c
	mkdir -p build
	verilator --binary --timing --trace-vcd --assert -Wall -Wno-fatal \
		--top-module tb --Mdir build $^

run: build/Vtb
	cd build && ./Vtb

wave: run
	gtkwave build/wave.vcd

clean:
	rm -fr build
