transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlib niosII
vmap niosII niosII
vlog -vlog01compat -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/niosii.v}
vlog -vlog01compat -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/altera_avalon_sc_fifo.v}
vlog -vlog01compat -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/altera_reset_controller.v}
vlog -vlog01compat -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/altera_reset_synchronizer.v}
vlog -vlog01compat -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/niosii_cpu.v}
vlog -vlog01compat -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/niosii_cpu_cpu.v}
vlog -vlog01compat -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/niosii_cpu_cpu_debug_slave_sysclk.v}
vlog -vlog01compat -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/niosii_cpu_cpu_debug_slave_tck.v}
vlog -vlog01compat -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/niosii_cpu_cpu_debug_slave_wrapper.v}
vlog -vlog01compat -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/niosii_cpu_cpu_test_bench.v}
vlog -vlog01compat -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/niosii_jtag_uart.v}
vlog -vlog01compat -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/niosii_mem.v}
vlog -vlog01compat -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/niosii_mm_interconnect_0.v}
vlog -vlog01compat -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/niosii_mm_interconnect_0_avalon_st_adapter.v}
vlog -vlog01compat -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/niosii_sys_clk_timer.v}
vlog -vlog01compat -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/periodram.v}
vlog -sv -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/altera_merlin_arbitrator.sv}
vlog -sv -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/altera_merlin_burst_uncompressor.sv}
vlog -sv -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/altera_merlin_master_agent.sv}
vlog -sv -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/altera_merlin_master_translator.sv}
vlog -sv -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/altera_merlin_slave_agent.sv}
vlog -sv -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/altera_merlin_slave_translator.sv}
vlog -sv -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/dec.sv}
vlog -sv -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/niosii_irq_mapper.sv}
vlog -sv -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/niosii_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv}
vlog -sv -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/niosii_mm_interconnect_0_cmd_demux.sv}
vlog -sv -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/niosii_mm_interconnect_0_cmd_demux_001.sv}
vlog -sv -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/niosii_mm_interconnect_0_cmd_mux.sv}
vlog -sv -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/niosii_mm_interconnect_0_cmd_mux_002.sv}
vlog -sv -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/niosii_mm_interconnect_0_router.sv}
vlog -sv -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/niosii_mm_interconnect_0_router_001.sv}
vlog -sv -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/niosii_mm_interconnect_0_router_002.sv}
vlog -sv -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/niosii_mm_interconnect_0_router_004.sv}
vlog -sv -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/niosii_mm_interconnect_0_router_008.sv}
vlog -sv -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/niosii_mm_interconnect_0_rsp_demux.sv}
vlog -sv -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/niosii_mm_interconnect_0_rsp_mux.sv}
vlog -sv -work niosII +incdir+c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules {c:/users/123/downloads/lab2/lab2/top/db/ip/niosii/submodules/niosii_mm_interconnect_0_rsp_mux_001.sv}

vlog -vlog01compat -work work +incdir+C:/Users/123/Downloads/Lab2/Lab2/Top/niosII/testbench/niosII_tb/simulation {C:/Users/123/Downloads/Lab2/Lab2/Top/niosII/testbench/niosII_tb/simulation/niosII_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -L niosII -voptargs="+acc"  niosII_tb 

add wave *
view structure
view signals
run -all
