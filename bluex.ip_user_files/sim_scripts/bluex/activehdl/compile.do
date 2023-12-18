transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 -l xil_defaultlib \
"../../../../bluex.gen/sources_1/bd/bluex/ip/bluex_reg_wb_0_0/sim/bluex_reg_wb_0_0.v" \
"../../../../bluex.gen/sources_1/bd/bluex/ip/bluex_redirection_0_0/sim/bluex_redirection_0_0.v" \
"../../../../bluex.gen/sources_1/bd/bluex/ip/bluex_demux_id_0_0/sim/bluex_demux_id_0_0.v" \
"../../../../bluex.gen/sources_1/bd/bluex/ip/bluex_controller_id_0_0/sim/bluex_controller_id_0_0.v" \
"../../../../bluex.gen/sources_1/bd/bluex/ip/bluex_aux_id_0_0/sim/bluex_aux_id_0_0.v" \
"../../../../bluex.gen/sources_1/bd/bluex/ip/bluex_alu_ex_0_0/sim/bluex_alu_ex_0_0.v" \
"../../../../bluex.gen/sources_1/bd/bluex/ip/bluex_reg_heap_id_0_0/sim/bluex_reg_heap_id_0_0.v" \
"../../../../bluex.gen/sources_1/bd/bluex/ip/bluex_PC_0_0/sim/bluex_PC_0_0.v" \
"../../../../bluex.gen/sources_1/bd/bluex/ip/bluex_wrapper_mem_0_0/sim/bluex_wrapper_mem_0_0.v" \
"../../../../bluex.gen/sources_1/bd/bluex/sim/bluex.v" \


vlog -work xil_defaultlib \
"glbl.v"

