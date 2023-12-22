vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/util_vector_logic_v2_0_3

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap util_vector_logic_v2_0_3 modelsim_lib/msim/util_vector_logic_v2_0_3

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../../bluex.gen/sources_1/bd/bluex/ip/bluex_reg_wb_0_0/sim/bluex_reg_wb_0_0.v" \
"../../../../bluex.gen/sources_1/bd/bluex/ip/bluex_redirection_0_0/sim/bluex_redirection_0_0.v" \
"../../../../bluex.gen/sources_1/bd/bluex/ip/bluex_demux_id_0_0/sim/bluex_demux_id_0_0.v" \
"../../../../bluex.gen/sources_1/bd/bluex/ip/bluex_controller_id_0_0/sim/bluex_controller_id_0_0.v" \
"../../../../bluex.gen/sources_1/bd/bluex/ip/bluex_aux_id_0_0/sim/bluex_aux_id_0_0.v" \
"../../../../bluex.gen/sources_1/bd/bluex/ip/bluex_alu_ex_0_0/sim/bluex_alu_ex_0_0.v" \
"../../../../bluex.gen/sources_1/bd/bluex/ip/bluex_reg_heap_id_0_0/sim/bluex_reg_heap_id_0_0.v" \
"../../../../bluex.gen/sources_1/bd/bluex/ip/bluex_PC_0_0/sim/bluex_PC_0_0.v" \
"../../../../bluex.gen/sources_1/bd/bluex/ip/bluex_wrapper_mem_0_0/sim/bluex_wrapper_mem_0_0.v" \

vlog -work util_vector_logic_v2_0_3  -incr -mfcu  \
"../../../../bluex.gen/sources_1/bd/bluex/ipshared/5e7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../../bluex.gen/sources_1/bd/bluex/ip/bluex_util_vector_logic_0_0/sim/bluex_util_vector_logic_0_0.v" \
"../../../../bluex.gen/sources_1/bd/bluex/ip/bluex_util_vector_logic_1_0/sim/bluex_util_vector_logic_1_0.v" \
"../../../../bluex.gen/sources_1/bd/bluex/ip/bluex_util_vector_logic_0_1/sim/bluex_util_vector_logic_0_1.v" \
"../../../../bluex.gen/sources_1/bd/bluex/ip/bluex_util_vector_logic_1_1/sim/bluex_util_vector_logic_1_1.v" \
"../../../../bluex.gen/sources_1/bd/bluex/sim/bluex.v" \

vlog -work xil_defaultlib \
"glbl.v"

