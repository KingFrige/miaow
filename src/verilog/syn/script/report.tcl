report_clock > ${REPORT_DIR}/clk.rpt
report_clock -skew >> ${REPORT_DIR}/clk.rpt
report_clock -groups >> ${REPORT_DIR}/clk.rpt

report_clock_gating -verbose > ${REPORT_DIR}/clock_gating.rpt
report_clock_gating -ungated >> ${REPORT_DIR}/clock_gating.rpt

report_timing -tran -cap -net  -max_paths 10 -nworst 10 >  ${REPORT_DIR}/timing_max.rpt

report_constraint -all_violators > ${REPORT_DIR}/vio.rpt
report_constraint -all_violators -verb > ${REPORT_DIR}/vio_verb.rpt

report_transitive_fanout -clock_tree > ${REPORT_DIR}/transitive_fanout.rpt

report_area > ${REPORT_DIR}/area.rpt
report_area -hie >> ${REPORT_DIR}/area.rpt

report_power -v > ${REPORT_DIR}/power.rpt
report_power -v -hie >> ${REPORT_DIR}/power.rpt

report_qor > ${REPORT_DIR}/qor.rpt

report_resource -hie > ${REPORT_DIR}/resource.rpt

report_dont_touch -class net > ${REPORT_DIR}/net_dtouch.rpt
