# ============================================================
# 06_placement.tcl
# Run placement and placement optimization.
# ============================================================

source [file join [file dirname [info script]] 00_config.tcl]

open_lib $DESIGN_LIBRARY
open_block power_plan

# Run placement in controlled stages.
place_opt -from initial_place -to initial_place
place_opt -from initial_drc   -to initial_drc
place_opt -from initial_opto  -to initial_opto
place_opt -from final_place   -to final_place
place_opt -from final_opto    -to final_opto

check_legality
report_utilization > "$REPORT_DIR/06_placement_utilization.rpt"
report_congestion  > "$REPORT_DIR/06_placement_congestion.rpt"
report_qor         > "$REPORT_DIR/06_placement_qor.rpt"
report_timing      > "$REPORT_DIR/06_placement_timing.rpt"

save_block -as post_placement

puts "INFO: Placement and placement optimization completed."
