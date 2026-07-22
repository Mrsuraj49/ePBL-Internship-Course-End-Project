# ============================================================
# 03_mmmc_setup.tcl
# Configure operating mode, PVT corner, scenario, and constraints.
# ============================================================

source [file join [file dirname [info script]] 00_config.tcl]

open_lib $DESIGN_LIBRARY
current_design $DESIGN_NAME

# Clear any existing MMMC configuration.
remove_scenarios -all
remove_modes -all
remove_corners -all

# Create mode and corner.
create_mode $MODE_NAME
create_corner $CORNER_NAME

# Define voltage and temperature.
set_voltage -object_list [list $POWER_NET]  $SUPPLY_VOLTAGE
set_voltage -object_list [list $GROUND_NET] $GROUND_VOLTAGE
set_temperature -corners $CORNER_NAME $CORNER_TEMPERATURE

# Associate parasitic models with the corner.
set_parasitic_parameters \
    -corners $CORNER_NAME \
    -late_spec maxTLU \
    -early_spec minTLU

# Create and activate the analysis scenario.
create_scenario \
    -name $SCENARIO_NAME \
    -mode $MODE_NAME \
    -corner $CORNER_NAME

current_mode $MODE_NAME
current_corner $CORNER_NAME
current_scenario $SCENARIO_NAME

# Read timing constraints.
read_sdc $SDC_FILE

# Create a clock only when it was not already defined in the SDC.
if {$HAS_CLOCK} {
    if {[sizeof_collection [get_clocks -quiet $CLOCK_NAME]] == 0} {
        if {[sizeof_collection [get_ports -quiet $CLOCK_PORT]] > 0} {
            create_clock \
                -name $CLOCK_NAME \
                -period $CLOCK_PERIOD \
                [get_ports $CLOCK_PORT]
        } else {
            puts "WARNING: Clock port '$CLOCK_PORT' was not found."
        }
    }
}

set_scenario_status $SCENARIO_NAME \
    -active true \
    -setup true \
    -hold true \
    -leakage_power true \
    -dynamic_power true \
    -max_transition true \
    -max_capacitance true \
    -min_capacitance false

check_timing
report_clocks > "$REPORT_DIR/03_clock_report.rpt"
report_scenarios > "$REPORT_DIR/03_scenario_report.rpt"

save_block -as mmmc_configured

puts "INFO: MMMC and timing constraint setup completed."
