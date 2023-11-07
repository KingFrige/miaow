#######PrimeTime Variable Setting ###############
#set sh_enable_page_mode true
set svr_keep_unconnected_nets true
set timing_non_unate_clock_compatibility true
set timing_remove_clock_reconvergence_pessimism true
set timing_report_unconstrained_paths true
set si_enable_analysis true
#set si_xtalk_delay_analysis_mode all_violating_paths
set si_xtalk_exit_on_max_iteration_count 2

set power_enable_analysis true

set auto_wire_load_selection true
#set auto_wire_load_selection false

alias rtmax "report_timing -cap -trans -path full_clock_ex"
alias rtmin "report_timing -delay min -cap -trans -path full_clock_ex"


#######Library Variable Setting ###############
set LIB_PATH " . \
/mnt/Software/TechnologyLibrary/smic13/Version1.0/STD/Synopsys \
"

set TARGET_LIB " \
smic13_ss.db \
"
set SS_LIB " \
smic13_ss.db \
\
"


set FF_LIB " \
smic13_ff.db \
"

set TT_LIB " \
smic13_tt.db
"
