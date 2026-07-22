# ============================================================
# run_all.tcl
# Master script for executing the full ICC2 flow.
# Run using:
#   icc2_shell -f run_all.tcl | tee logs/full_flow.log
# ============================================================

set SCRIPT_DIR [file normalize [file join [file dirname [info script]] scripts]]

set FLOW_SCRIPTS [list \
    01_library_setup.tcl \
    02_design_import.tcl \
    03_mmmc_setup.tcl \
    04_floorplan.tcl \
    05_power_plan.tcl \
    06_placement.tcl \
    07_cts.tcl \
    08_routing.tcl \
    09_fillers_and_signoff.tcl \
    10_gds_export.tcl \
]

foreach script_name $FLOW_SCRIPTS {
    set script_path [file join $SCRIPT_DIR $script_name]

    puts ""
    puts "============================================================"
    puts "RUNNING: $script_name"
    puts "============================================================"

    if {![file exists $script_path]} {
        error "Required script not found: $script_path"
    }

    source $script_path
}

puts ""
puts "============================================================"
puts "ICC2 FLOW COMPLETED"
puts "============================================================"
