 
set name niosII_tb
set pass c:/users/123/downloads/lab2/lab2/top/db/ip/niosii 
#############Create work library#############
vlib work

#############Compile sources#############
vlog "$pass/*.v"  
vlog "$pass/submodules/*.v"  
vlog "$pass/submodules/*.sv"
vlog "C:/Users/123/Downloads/Lab2/Lab2/Top/niosII/testbench/niosII_tb/simulation/submodules/*.sv" 
vlog "K:/intelFPGA_lite/18.1/modelsim_ase/altera/verilog/src/altera_mf.v" 
vlog C:/Users/123/Downloads/Lab2/Lab2/Top/niosII/testbench/niosII_tb/simulation/niosII_tb.v  
 
vsim -voptargs=+acc work.$name

# Set the window types
add wave -position insertpoint sim:/$name/* 
view structure
view signals
run -all 