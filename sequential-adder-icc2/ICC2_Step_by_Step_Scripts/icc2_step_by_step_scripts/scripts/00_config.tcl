# ============================================================
# 00_config.tcl
# Central configuration file
# Update only the paths and design-specific values in this file.
# ============================================================

# -----------------------------
# Project directories
# -----------------------------
set PROJECT_DIR [file normalize [file dirname [info script]]/..]
set REPORT_DIR  "$PROJECT_DIR/reports"
set RESULT_DIR  "$PROJECT_DIR/results"
set LOG_DIR     "$PROJECT_DIR/logs"

file mkdir $REPORT_DIR
file mkdir $RESULT_DIR
file mkdir $LOG_DIR

# -----------------------------
# Design information
# -----------------------------
set DESIGN_NAME        "your_top_module"
set DESIGN_LIBRARY     "${DESIGN_NAME}_lib"
set NETLIST_FILE       "$PROJECT_DIR/inputs/design_netlist.v"
set SDC_FILE           "$PROJECT_DIR/inputs/design_constraints.sdc"

# Set this to 1 only when the design contains sequential elements
# and has a real clock port.
set HAS_CLOCK          1
set CLOCK_PORT         "clk"
set CLOCK_NAME         "clk"
set CLOCK_PERIOD       10.0

# -----------------------------
# Technology and library paths
# Replace these placeholders with valid local paths.
# -----------------------------
set TECH_FILE          "/path/to/technology/technology.tf"

set REF_LIBS [list \
    "/path/to/reference_libraries/high_vt_library.ndm" \
    "/path/to/reference_libraries/low_vt_library.ndm" \
]

set DB_LIBS [list \
    "/path/to/timing_libraries/high_vt_slow_corner.db" \
    "/path/to/timing_libraries/low_vt_slow_corner.db" \
]

set MAX_TLUPLUS        "/path/to/parasitics/max.tluplus"
set MIN_TLUPLUS        "/path/to/parasitics/min.tluplus"
set TLU_MAP_FILE       "/path/to/parasitics/tech_to_itf.map"

# -----------------------------
# PVT and scenario settings
# -----------------------------
set MODE_NAME          "functional"
set CORNER_NAME        "slow_max"
set SCENARIO_NAME      "${MODE_NAME}_${CORNER_NAME}"

set SUPPLY_VOLTAGE     0.75
set GROUND_VOLTAGE     0.0
set CORNER_TEMPERATURE 125

# -----------------------------
# Floorplan settings
# -----------------------------
set CORE_UTILIZATION   0.75
set CORE_OFFSET        10
set FLOORPLAN_SHAPE    "R"
set SIDE_RATIO         {1 1}

# -----------------------------
# Power and ground nets
# -----------------------------
set POWER_NET          "VDD"
set GROUND_NET         "VSS"

# -----------------------------
# Output files
# -----------------------------
set FINAL_GDS          "$RESULT_DIR/${DESIGN_NAME}_final.gds"
