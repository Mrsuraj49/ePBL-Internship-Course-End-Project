# ============================================================
# 01_library_setup.tcl
# Create the ICC2 design library and load technology data.
# ============================================================

source [file join [file dirname [info script]] 00_config.tcl]

# Remove an old local design library, if it exists.
if {[file exists $DESIGN_LIBRARY]} {
    file delete -force $DESIGN_LIBRARY
}

create_lib \
    -technology $TECH_FILE \
    -ref_libs $REF_LIBS \
    $DESIGN_LIBRARY

open_lib $DESIGN_LIBRARY

# Timing libraries used for linking and optimization.
set_app_var link_library   [concat {*} $DB_LIBS]
set_app_var target_library $DB_LIBS

# Load maximum and minimum parasitic technology files.
read_parasitic_tech \
    -name maxTLU \
    -tlup $MAX_TLUPLUS \
    -layermap $TLU_MAP_FILE

read_parasitic_tech \
    -name minTLU \
    -tlup $MIN_TLUPLUS \
    -layermap $TLU_MAP_FILE

puts "INFO: Library and parasitic technology setup completed."
