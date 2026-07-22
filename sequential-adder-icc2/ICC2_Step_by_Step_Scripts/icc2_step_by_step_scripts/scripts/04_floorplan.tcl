# ============================================================
# 04_floorplan.tcl
# Initialize the floorplan and place block pins.
# ============================================================

source [file join [file dirname [info script]] 00_config.tcl]

open_lib $DESIGN_LIBRARY
open_block mmmc_configured

initialize_floorplan \
    -shape $FLOORPLAN_SHAPE \
    -core_utilization $CORE_UTILIZATION \
    -side_ratio $SIDE_RATIO \
    -core_offset $CORE_OFFSET

# Input pins on left and right sides using M1.
set_block_pin_constraints \
    -allowed_layers {M1} \
    -sides {1 3} \
    -pin_spacing 5 \
    -self

place_pins -ports [all_inputs]

# Output pins on top and bottom sides using M2.
set_block_pin_constraints \
    -allowed_layers {M2} \
    -sides {2 4} \
    -pin_spacing 5 \
    -self

place_pins -ports [all_outputs]

check_legality
report_utilization > "$REPORT_DIR/04_floorplan_utilization.rpt"
report_design -physical > "$REPORT_DIR/04_floorplan_physical.rpt"

save_block -as floorplan

puts "INFO: Floorplanning completed."
