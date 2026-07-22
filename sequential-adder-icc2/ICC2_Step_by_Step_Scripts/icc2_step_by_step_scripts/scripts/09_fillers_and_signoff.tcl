# ============================================================
# 09_fillers_and_signoff.tcl
# Insert filler cells and generate final signoff reports.
# ============================================================

source [file join [file dirname [info script]] 00_config.tcl]

open_lib $DESIGN_LIBRARY
open_block post_route

# Automatically collect available filler cells.
set FILLER_CELLS [get_lib_cells -quiet */*FILL*]

if {[sizeof_collection $FILLER_CELLS] > 0} {
    create_stdcell_fillers -lib_cells $FILLER_CELLS
} else {
    puts "WARNING: No filler cells matched the pattern */*FILL*."
    puts "WARNING: Specify approved filler cells manually for your library."
}

check_legality
check_routes
check_pg_connectivity
check_pg_drc
check_design
check_timing

report_qor > "$REPORT_DIR/09_final_qor.rpt"
report_timing -delay_type max > "$REPORT_DIR/09_final_setup_timing.rpt"
report_timing -delay_type min > "$REPORT_DIR/09_final_hold_timing.rpt"
report_constraints -all_violators > "$REPORT_DIR/09_constraint_violations.rpt"
report_utilization > "$REPORT_DIR/09_final_utilization.rpt"
report_congestion > "$REPORT_DIR/09_final_congestion.rpt"

save_block -as signoff_ready

puts "INFO: Filler insertion and signoff checks completed."
