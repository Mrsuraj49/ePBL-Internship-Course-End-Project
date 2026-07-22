# Synopsys ICC2 Step-by-Step Physical Design Scripts

This folder contains a cleaned and anonymized ICC2 implementation flow divided into separate TCL scripts.

## Script Order

1. `00_config.tcl` — Project paths, design name, libraries, corner, and floorplan settings  
2. `01_library_setup.tcl` — Design library, reference libraries, and TLU+ setup  
3. `02_design_import.tcl` — Netlist import and linking  
4. `03_mmmc_setup.tcl` — Mode, corner, scenario, voltage, temperature, and SDC setup  
5. `04_floorplan.tcl` — Floorplan and IO pin placement  
6. `05_power_plan.tcl` — VDD/VSS creation and standard-cell rails  
7. `06_placement.tcl` — Placement and optimization  
8. `07_cts.tcl` — Clock Tree Synthesis  
9. `08_routing.tcl` — Global, track, and detailed routing  
10. `09_fillers_and_signoff.tcl` — Filler insertion and final reports  
11. `10_gds_export.tcl` — GDSII export  
12. `run_all.tcl` — Executes all stages in sequence  

## Required Folder Structure

```text
project/
├── inputs/
│   ├── design_netlist.v
│   └── design_constraints.sdc
├── scripts/
├── reports/
├── results/
├── logs/
└── run_all.tcl
```

## Before Running

Edit only `scripts/00_config.tcl` and provide:

- Top-module name
- Netlist path
- SDC path
- Technology-file path
- NDM reference-library paths
- DB timing-library paths
- Maximum and minimum TLU+ paths
- TLU+ layer-map path
- Clock name, port, and period
- Power and ground net names

## Run the Complete Flow

```bash
icc2_shell -f run_all.tcl | tee logs/full_flow.log
```

## Run One Stage at a Time

```tcl
source scripts/01_library_setup.tcl
source scripts/02_design_import.tcl
source scripts/03_mmmc_setup.tcl
```

Continue in numerical order.

## Important Design Note

A conventional one-bit `full_adder` is a combinational circuit and normally has no clock. Clock Tree Synthesis should not be performed unless the selected top module actually contains registers or other sequential elements.

For a combinational full adder:

```tcl
set HAS_CLOCK 0
```

For a sequential adder containing registers:

```tcl
set HAS_CLOCK 1
set CLOCK_PORT "clk"
set CLOCK_NAME "clk"
```

Do not define the same clock in both the SDC file and a TCL script unless the script first checks whether it already exists.

## Corrections Made Compared with the Original Command History

- Removed personal names and user-specific directories.
- Replaced absolute paths with configurable placeholders.
- Removed duplicate rectangular and U-shaped floorplan commands.
- Removed GUI-only commands from the automated flow.
- Removed shell commands that attempted to open a binary GDS file in a text editor.
- Corrected the Windows-style backslash used inside Linux library paths.
- Used `minTLU` for early analysis and `maxTLU` for late analysis.
- Prevented duplicate clock creation.
- Added stage-wise save blocks and reports.
- Added checks before CTS and filler insertion.
- Replaced hard-coded filler-cell names with an automatic library query.
- Organized the complete command history into reproducible scripts.
