add wave -noupdate -divider sem 
add wave -position insertpoint sim:/niosII_tb/niosii_inst/sem/*
add wave -noupdate -divider cpu 
add wave -position insertpoint sim:/niosII_tb/niosii_inst/cpu/*

run -all