# ============================================================
# 05_power_plan.tcl
# Create and connect the power-ground network.
# ============================================================

source [file join [file dirname [info script]] 00_config.tcl]

open_lib $DESIGN_LIBRARY
open_block floorplan

# Create logical supply nets only if they do not already exist.
if {[sizeof_collection [get_nets -quiet $POWER_NET]] == 0} {
    create_net -power $POWER_NET
}

if {[sizeof_collection [get_nets -quiet $GROUND_NET]] == 0} {
    create_net -ground $GROUND_NET
}

# Connect standard-cell power and ground pins.
connect_pg_net \
    -net $POWER_NET \
    [get_pins -hierarchical "*/$POWER_NET"]

connect_pg_net \
    -net $GROUND_NET \
    [get_pins -hierarchical "*/$GROUND_NET"]

# Create standard-cell rails on M1.
create_pg_std_cell_conn_pattern standard_cell_rail_pattern \
    -layers {M1}

set_pg_strategy standard_cell_rail_strategy \
    -core \
    -pattern [list \
        [list name: standard_cell_rail_pattern] \
        [list nets: [list $POWER_NET $GROUND_NET]] \
    ]

compile_pg -strategies standard_cell_rail_strategy

check_pg_connectivity
check_pg_opens
check_pg_drc

check_pg_connectivity > "$REPORT_DIR/05_pg_connectivity.rpt"
check_pg_drc          > "$REPORT_DIR/05_pg_drc.rpt"

save_block -as power_plan

puts "INFO: Power planning completed."
