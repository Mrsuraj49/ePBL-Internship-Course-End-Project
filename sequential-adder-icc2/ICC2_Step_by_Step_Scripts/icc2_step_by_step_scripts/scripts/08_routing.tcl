# ============================================================
# 08_routing.tcl
# Perform global, track, and detailed routing.
# ============================================================

source [file join [file dirname [info script]] 00_config.tcl]

open_lib $DESIGN_LIBRARY
open_block cts

route_global
route_track
route_detail

# Optional post-route optimization.
route_opt

check_routes
report_congestion > "$REPORT_DIR/08_route_congestion.rpt"
report_timing -delay_type max > "$REPORT_DIR/08_postroute_setup.rpt"
report_timing -delay_type min > "$REPORT_DIR/08_postroute_hold.rpt"
report_qor > "$REPORT_DIR/08_postroute_qor.rpt"

save_block -as post_route

puts "INFO: Routing completed."
