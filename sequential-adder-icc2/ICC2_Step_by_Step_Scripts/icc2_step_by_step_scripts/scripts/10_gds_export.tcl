# ============================================================
# 10_gds_export.tcl
# Export the final routed layout as GDSII.
# ============================================================

source [file join [file dirname [info script]] 00_config.tcl]

open_lib $DESIGN_LIBRARY
open_block signoff_ready

write_gds $FINAL_GDS

puts "INFO: Final GDSII generated at:"
puts "INFO: $FINAL_GDS"
