# ============================================================
# 02_design_import.tcl
# Read the synthesized gate-level netlist and link the design.
# ============================================================

source [file join [file dirname [info script]] 00_config.tcl]

open_lib $DESIGN_LIBRARY

read_verilog \
    $NETLIST_FILE \
    -library $DESIGN_LIBRARY \
    -design "${DESIGN_NAME}_net" \
    -top $DESIGN_NAME

current_design $DESIGN_NAME
link_block

check_design
report_design > "$REPORT_DIR/02_design_report.rpt"

puts "INFO: Design import completed."
