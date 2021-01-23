vlib work
vcom invert.vhd
vcom tb_invert.vhd
vsim -novopt tb_invert
add wave tb_invert/dut/*
run -a
