
####################################################################
sh date 

set_host_options -max_cores 3

set TOP_DESIGN compute_unit

set REPORT_DIR ../report
set OUTPUT_DIR ../output

set_svf ${OUTPUT_DIR}/${TOP_DESIGN}_dc.svf

set verilogout_no_tri   "true"

source ../script/lib_setup.tcl

set search_path  [concat $search_path [list \
                 $LIB_PATH \
                 ]]

set link_library " * $SS_LIB dw_foundation.sldb standard.sldb "

set target_library " $TARGET_LIB "
#set_dont_use [get_lib_cells ""]

# for mult clock source
set timing_enable_multiple_clocks_per_reg true
set bind_unused_hierarchical_pins false
#set bind_unused_hierarchical_pins true
set hdlin_auto_save_templates true
#set compile_delete_unloaded_sequential_cells true
#set compile_preserve_subdesign_interfaces false
#set power_cg_iscgs_enable true

set hdlin_work_directory ./work
define_design_lib work -path ./work

####################################################################
# set_clock_gating_style -sequential_cell latch -positive_edge_logic integrated -negative_edge integrated \
            -control_point before -control_signal test_mode -minimum_bitwidth 3


analyze -f sverilog -lib work -vcs "-f flist.f" > ../log/analyze.log
elaborate ${TOP_DESIGN} > ../log/elaborate.log

current_design ${TOP_DESIGN}
link > ../log/link.log

write -f verilog -h -o ${OUTPUT_DIR}/${TOP_DESIGN}_gtech.v

####################################################################
#load_upf ../script/dut_top.upf

source -e -v ../script/dut_top.sdc

check_design > ${REPORT_DIR}/check_design.rpt

check_mv_design -verbose > ${REPORT_DIR}/check_mv_design.rpt

check_timing > ${REPORT_DIR}/check_timing.rpt

current_design ${TOP_DESIGN}

####################################################################
#compile_ultra -no_boundary_optimization -no_autoungroup -no_seq_output_inversion -gate_clock -scan
compile_ultra   -no_autoungroup -gate_clock -scan -no_seq_output_inversion
#compile_ultra   -gate_clock -scan -no_autoungroup 
#compile_ultra   -gate_clock -scan -retime -no_autoungroup
#compile_ultra   -gate_clock -scan -retime -no_design_rule 
#compile_ultra   -gate_clock -scan  

optimize_netlist -area

#remove_unconnected_ports [get_cells * -h ]

change_names -rule verilog -h

write -f verilog -h -o ${OUTPUT_DIR}/${TOP_DESIGN}_dc.v
write_sdc ${OUTPUT_DIR}/${TOP_DESIGN}_dc.sdc
write -f ddc -h -o  ${OUTPUT_DIR}/${TOP_DESIGN}_dc.ddc
# write_sdf ${OUTPUT_DIR}/${TOP_DESIGN}_dc.sdf

#save_upf ${OUTPUT_DIR}/${TOP_DESIGN}_dc.upf

update_timing

#check_mv_design -verbose > ${REPORT_DIR}/check_mv_design_post.rpt
check_timing > ${REPORT_DIR}/check_timing_post.rpt

source -e -v ../script/report.tcl

set_svf -off

#source ../script/dft.tcl

sh date

exit

