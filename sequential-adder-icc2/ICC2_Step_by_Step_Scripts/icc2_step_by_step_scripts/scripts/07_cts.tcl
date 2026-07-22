# ============================================================
# 07_cts.tcl
# Build, route, and optimize the clock tree.
# Run this stage only for a sequential design with a valid clock.
# ============================================================

source [file join [file dirname [info script]] 00_config.tcl]

open_lib $DESIGN_LIBRARY
open_block post_placement

if {!$HAS_CLOCK} {
    puts "INFO: CTS skipped because HAS_CLOCK is set to 0."
    save_block -as cts
    return
}

if {[sizeof_collection [get_clocks -quiet $CLOCK_NAME]] == 0} {
    error "CTS cannot run because clock '$CLOCK_NAME' is not defined."
}

clock_opt -from build_clock -to build_clock
clock_opt -from route_clock -to route_clock
clock_opt -from final_opto  -to final_opto

report_clock_qor > "$REPORT_DIR/07_clock_qor.rpt"
report_timing -delay_type max > "$REPORT_DIR/07_setup_timing.rpt"
report_timing -delay_type min > "$REPORT_DIR/07_hold_timing.rpt"
report_qor > "$REPORT_DIR/07_cts_qor.rpt"

save_block -as cts

puts "INFO: Clock Tree Synthesis completed."
