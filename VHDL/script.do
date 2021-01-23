vlib work
vcom and_gate.vhd
vcom tb_and_gate.vhd
vsim -t 1ps -novopt tb_and_gate
add wave *
run -all
