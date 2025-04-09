#!/bin/bash
iverilog -o sim/counter_tb verilog/src/counter.v verilog/tb/tb_counter.v
vvp sim/counter_tb
gtkwave counter.vcd
