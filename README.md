# RTL-to-GDSII Physical Design of a Sequential Adder Using Synopsys ICC2

## ePBL Internship Course-End Project

This repository presents the complete design and physical implementation of a **Sequential Adder** using the standard **ASIC RTL-to-GDSII flow**. The project was carried out as part of the **ePBL Internship Program** under the course **VLSI Design and Systems**.

The objective of this project is to understand and implement the major stages of digital ASIC physical design using **Synopsys IC Compiler II (ICC2)**. The design was taken from a synthesized gate-level netlist through floorplanning, power planning, placement, clock tree synthesis, routing, timing analysis, physical verification, and final GDSII generation.

The project provides hands-on exposure to the practical backend VLSI design flow followed in the semiconductor industry.

---

## Project Information

| Field | Details |
|---|---|
| Project Title | RTL-to-GDSII Physical Design of a Sequential Adder Using Synopsys ICC2 |
| Internship Program | ePBL Internship Program |
| Course | VLSI Design and Systems |
| Project Domain | ASIC Physical Design / VLSI Backend Design |
| Design | Sequential Adder |
| Primary EDA Tool | Synopsys IC Compiler II |
| Scripting Language | TCL |
| Operating Environment | Linux |
| Final Output | Routed layout and GDSII database |
| Institution | Vardhaman College of Engineering |
| Training Exposure | ASIC Design and Implementation Training |
| Project Coordinator | Dr. K. Narsimha Reddy |

---

## Project Team

| Roll Number | Student Name | Contact Number | Course |
|---|---|---:|---|
| 23881A04A9 | B. Naradasu Srija | 8688511516 | VLSI Design and Systems |
| 23881A04B3 | B. Patniti Vaishnavi | 9346467603 | VLSI Design and Systems |
| 23881A04C0 | B. Suraj Kuila | 7893897488 | VLSI Design and Systems |
| 23881A04C3 | B. Tirunagari Akshay | 9182285127 | VLSI Design and Systems |

---

## Project Coordinator

**Dr. K. Narsimha Reddy**

Course Coordinator / Project Supervisor  
VLSI Design and Systems

---

## Abstract

Modern integrated circuits require a systematic physical design flow to convert a logical circuit description into a fabrication-ready layout. This project implements the complete backend ASIC design flow for a **Sequential Adder** using **Synopsys IC Compiler II**.

The synthesized gate-level netlist, timing constraints, technology files, and standard-cell libraries are imported into ICC2. The design then passes through floorplanning, power distribution network creation, placement optimization, clock tree synthesis, routing, timing closure, physical verification, and GDSII generation.

The project focuses on understanding the relationship between logical functionality and physical implementation. Important implementation parameters such as core utilization, placement density, congestion, clock skew, setup timing, hold timing, routing quality, and design-rule compliance are analyzed during the flow.

The completed implementation demonstrates how a synthesized digital design is transformed into a manufacturable physical layout using an industry-standard ASIC backend tool.

---

## Problem Statement

A synthesized digital design cannot be directly sent for semiconductor fabrication. It must first be transformed into a legal physical layout that satisfies area, power, timing, clock, routing, and manufacturing constraints.

The main problem addressed in this project is:

> To implement a Sequential Adder through the complete ASIC physical design flow using Synopsys ICC2 and generate a timing-aware, routed, physically verified, and GDSII-ready layout.

The implementation must achieve the following:

- Correct import of the synthesized design and technology libraries
- Valid floorplan with suitable core utilization
- Reliable VDD and VSS power distribution
- Legal and congestion-aware standard-cell placement
- Balanced clock distribution with controlled skew and latency
- Successful global and detailed routing
- Acceptable setup and hold timing
- Minimum physical-design violations
- Generation of the final GDSII layout database

---

## Objectives

The major objectives of the project are:

1. To understand the complete RTL-to-GDSII ASIC implementation flow.
2. To import and validate a synthesized Sequential Adder design in ICC2.
3. To create an optimized floorplan based on area and utilization constraints.
4. To design a reliable power distribution network.
5. To perform timing-driven standard-cell placement.
6. To construct and optimize the clock tree.
7. To complete global and detailed routing.
8. To perform setup and hold timing analysis.
9. To check design legality and physical-rule compliance.
10. To generate the final GDSII file.
11. To document the implementation flow, commands, reports, and results.

---

## Scope of the Project

This project primarily covers the **physical design stage** of the ASIC design cycle.

### Included

- Gate-level netlist import
- Technology and reference-library setup
- Timing-constraint loading
- Floorplanning
- IO placement
- Power planning
- Standard-cell placement
- Placement optimization
- Clock Tree Synthesis
- Clock optimization
- Global routing
- Detailed routing
- Static Timing Analysis
- Design-rule checks
- Layout visualization
- GDSII generation
- Report generation and result analysis

### Not Included

- Full custom transistor-level design
- Semiconductor fabrication
- Package design
- Post-silicon testing
- Analog layout
- Detailed RTL verification beyond the supplied design environment

---

## Sequential Adder Overview

A Sequential Adder performs binary addition using sequential logic. Unlike a purely combinational parallel adder, the design processes data under clock control and stores intermediate or final results using registers.

A typical Sequential Adder contains:

- Input registers
- Addition logic
- Carry logic
- Output register
- Clock input
- Reset input
- Control signals

The use of sequential elements makes the design suitable for studying:

- Clock distribution
- Register-to-register timing paths
- Setup timing
- Hold timing
- Clock skew
- Clock latency
- Sequential path optimization

---

## ASIC Design Flow

The complete implementation flow followed in this project is shown below:

```text
RTL Design
    |
    v
Functional Verification
    |
    v
Logic Synthesis
    |
    v
Gate-Level Netlist
    |
    v
Design and Library Import
    |
    v
Floorplanning
    |
    v
Power Planning
    |
    v
Placement
    |
    v
Clock Tree Synthesis
    |
    v
Routing
    |
    v
Timing Closure
    |
    v
Physical Verification
    |
    v
GDSII Generation
```

---

## Tools and Technologies Used

| Tool / Technology | Purpose |
|---|---|
| Synopsys IC Compiler II | ASIC floorplanning, placement, CTS, routing, optimization, and GDSII generation |
| Synopsys Design Compiler or supplied synthesized netlist | Logic synthesis / gate-level netlist generation |
| TCL | Flow automation and ICC2 command execution |
| Linux | Tool execution environment |
| Standard-Cell Libraries | Physical and timing models of cells |
| Liberty Files | Timing and power information |
| Technology File | Routing layers and physical design rules |
| LEF / NDM Libraries | Physical abstracts and library data |
| SDC Constraints | Clock and timing constraints |
| GDSII | Final layout database format |

---

## Input Files

The physical design flow generally requires the following input files:

```text
inputs/
├── sequential_adder.v
├── sequential_adder_netlist.v
├── constraints.sdc
├── technology.tf
├── reference_libraries/
├── timing_libraries/
├── physical_libraries/
└── setup.tcl
```

### Description of Inputs

| File | Description |
|---|---|
| RTL Verilog | Behavioral or structural description of the Sequential Adder |
| Gate-Level Netlist | Synthesized design containing standard-cell instances |
| SDC File | Clock definition, input/output delays, uncertainty, and timing constraints |
| Technology File | Metal layers, vias, routing directions, and process information |
| Timing Library | Delay, transition, setup, hold, and power information |
| Physical Library | Cell dimensions, pins, blockages, and placement information |
| TCL Scripts | Automated implementation commands |

---

# Implementation Methodology

## 1. Project Directory Setup

A structured directory was created to separate design inputs, scripts, reports, logs, and generated outputs.

Recommended repository structure:

```text
sequential-adder-icc2/
├── README.md
├── rtl/
│   └── sequential_adder.v
├── netlist/
│   └── sequential_adder_netlist.v
├── constraints/
│   └── sequential_adder.sdc
├── scripts/
│   ├── 01_setup.tcl
│   ├── 02_import.tcl
│   ├── 03_floorplan.tcl
│   ├── 04_power_plan.tcl
│   ├── 05_placement.tcl
│   ├── 06_cts.tcl
│   ├── 07_routing.tcl
│   ├── 08_signoff.tcl
│   └── 09_gds_export.tcl
├── reports/
│   ├── floorplan/
│   ├── placement/
│   ├── cts/
│   ├── routing/
│   ├── timing/
│   └── signoff/
├── screenshots/
├── results/
├── gds/
└── docs/
    └── Final_Project_Report.pdf
```

---

## 2. Technology and Library Setup

The technology library and reference libraries were configured before loading the design.

Typical setup operations include:

```tcl
set_app_var search_path [list ./libs ./netlist ./constraints]

set TECH_FILE ./libs/technology.tf
set REF_LIBS  [list ./libs/standard_cells.ndm]
set DESIGN_NAME sequential_adder
```

A new design library can be created using:

```tcl
create_lib ${DESIGN_NAME}.dlib \
    -technology $TECH_FILE \
    -ref_libs $REF_LIBS
```

### Verification Checks

- Confirm that all required libraries are available.
- Confirm that standard cells are correctly linked.
- Check for unresolved references.
- Verify technology layers and routing directions.
- Confirm that timing models are loaded.

---

## 3. Design Import

The synthesized gate-level netlist was imported into ICC2.

Example commands:

```tcl
read_verilog ./netlist/sequential_adder_netlist.v
current_design sequential_adder
link_block
```

Timing constraints were loaded using:

```tcl
read_sdc ./constraints/sequential_adder.sdc
```

### Important Checks

```tcl
check_design
check_timing
report_clocks
report_port
report_design
```

### Expected Outcome

- The complete gate-level design is loaded.
- All cells are linked to reference libraries.
- The clock is recognized.
- Timing constraints are applied.
- No critical unresolved references remain.

---

## 4. Timing Constraint Definition

A proper SDC file is required for timing-driven implementation.

Illustrative constraints:

```tcl
create_clock -name clk -period 10.0 [get_ports clk]

set_clock_uncertainty 0.2 [get_clocks clk]

set_input_delay  1.0 -clock clk [remove_from_collection [all_inputs] [get_ports clk]]
set_output_delay 1.0 -clock clk [all_outputs]

set_input_transition 0.1 [all_inputs]
set_load 0.05 [all_outputs]
```

Additional constraints may include:

```tcl
set_max_transition 0.5 [current_design]
set_max_fanout 10 [current_design]
set_max_capacitance 0.2 [current_design]
```

### Timing Paths Considered

- Input-to-register paths
- Register-to-register paths
- Register-to-output paths
- Clock paths
- Reset and control paths

---

## 5. Floorplanning

Floorplanning defines the physical boundary of the chip and the usable area for standard-cell placement.

The floorplan was initialized with:

```tcl
initialize_floorplan -core_utilization 0.75 -offset 10
```

### Floorplanning Parameters

| Parameter | Value / Consideration |
|---|---|
| Core Utilization | 0.75 |
| Core Offset | 10 units |
| Aspect Ratio | Selected based on design size |
| Placement Area | Core region |
| IO Placement | Along die boundary |
| Standard Cells | Placed inside rows |

### Activities Performed

- Defined die area
- Defined core area
- Created standard-cell rows
- Checked core utilization
- Verified boundary spacing
- Reviewed initial congestion
- Placed or constrained IO ports

### Checks

```tcl
check_legality
report_utilization
report_design -physical
```

### Outcome

- A valid die and core region was generated.
- Standard-cell rows were created.
- The design had sufficient area for placement and routing.
- Initial placement density was maintained within an acceptable range.

---

## 6. Power Planning

The power distribution network supplies stable VDD and VSS to all standard cells.

### Major Power-Planning Components

- Power rings
- Power straps
- Power mesh
- Standard-cell rails
- VDD/VSS connections
- Via connections between metal layers

Logical power and ground nets may be connected using:

```tcl
connect_pg_net -automatic
```

Power-ground connectivity can be checked using:

```tcl
check_pg_connectivity
check_pg_drc
```

### Power-Planning Goals

- Provide low-resistance current paths
- Reduce IR drop
- Avoid disconnected power pins
- Improve supply reliability
- Support uniform current distribution

### Outcome

- VDD and VSS connectivity was established.
- Standard-cell power pins were connected.
- The design was prepared for placement and routing.

---

## 7. Placement

Placement assigns legal physical locations to all standard cells.

The main placement optimization command used was:

```tcl
place_opt
```

In some training environments, the following command may also be used:

```tcl
placement_opt
```

### Placement Stages

1. Initial placement
2. Timing-driven optimization
3. Congestion analysis
4. Cell legalization
5. Buffer insertion
6. High-fanout optimization
7. Placement refinement

### Placement Checks

```tcl
check_legality
report_congestion
report_utilization
report_timing
report_qor
```

### Placement Objectives

- Minimize wirelength
- Reduce routing congestion
- Improve setup timing
- Maintain legal cell locations
- Avoid cell overlap
- Control transition and fanout violations

### Outcome

- Standard cells were legally placed.
- Placement was optimized for timing and congestion.
- The design was prepared for clock-tree construction.

---

## 8. Pre-CTS Optimization

Before clock tree synthesis, the design was analyzed for data-path timing and design-rule constraints.

Typical pre-CTS activities:

- Setup timing optimization
- Transition violation reduction
- Fanout violation reduction
- Buffer insertion
- Cell sizing
- Congestion improvement

Useful reports:

```tcl
report_timing -delay_type max
report_constraints -all_violators
report_qor
```

---

## 9. Clock Tree Synthesis

Clock Tree Synthesis creates a physical network that distributes the clock signal from the source to all sequential elements.

CTS was performed using commands such as:

```tcl
clock_opt
```

Depending on the flow, clock-tree options may be configured before running optimization.

### CTS Objectives

- Minimize clock skew
- Control clock latency
- Balance clock arrival times
- Limit clock transition
- Reduce excessive clock buffering
- Improve sequential timing

### Clock Reports

```tcl
report_clock_qor
report_clock_timing
report_timing -delay_type min
report_timing -delay_type max
```

### Parameters Analyzed

| Parameter | Meaning |
|---|---|
| Clock Skew | Difference in clock arrival time between sequential elements |
| Clock Latency | Time taken by the clock to reach a sequential element |
| Clock Transition | Rise/fall quality of the clock signal |
| Clock Buffer Count | Number of inserted clock buffers |
| Hold Slack | Margin against hold violation |
| Setup Slack | Margin against setup violation |

### Outcome

- Clock buffers were inserted.
- Clock paths were balanced.
- Clock skew was reduced.
- Post-CTS timing was analyzed.

---

## 10. Post-CTS Optimization

After CTS, both setup and hold timing were re-evaluated because the clock network now had real physical delay.

### Post-CTS Activities

- Setup timing repair
- Hold timing repair
- Buffer insertion
- Cell resizing
- Clock-path optimization
- Data-path optimization

Typical reports:

```tcl
report_timing -delay_type max
report_timing -delay_type min
report_constraints -all_violators
report_qor
```

---

## 11. Routing

Routing creates metal interconnections between standard cells, IO pins, clock cells, and power structures.

Routing was performed in two major stages:

### Global Routing

Global routing estimates paths and assigns routing resources.

### Detailed Routing

Detailed routing creates exact metal tracks and vias while following design rules.

Typical command:

```tcl
route_auto
```

Additional optimization can be performed using:

```tcl
route_opt
```

### Routing Objectives

- Complete all signal connections
- Minimize wirelength
- Reduce congestion
- Avoid shorts and opens
- Meet spacing and width rules
- Improve timing
- Reduce antenna and transition violations

### Routing Checks

```tcl
check_routes
report_congestion
report_timing
report_qor
```

### Outcome

- Signal nets were routed.
- Clock and data connections were completed.
- Routing congestion was analyzed.
- Timing was rechecked using routed parasitics.

---

## 12. Parasitic Extraction

After routing, resistance and capacitance caused by interconnects must be included in timing analysis.

The routed design contains more realistic delay information than the pre-route design.

### Effects Considered

- Wire resistance
- Coupling capacitance
- Ground capacitance
- Via resistance
- Net delay
- Transition degradation

Post-route timing reports provide a more realistic estimate of circuit performance.

---

## 13. Static Timing Analysis

Static Timing Analysis was performed at multiple stages of the implementation flow.

### Timing Analysis Stages

- Post-import timing
- Post-placement timing
- Post-CTS timing
- Post-route timing
- Signoff timing

### Setup Analysis

Setup analysis verifies that the data arrives before the required setup time of the destination register.

```tcl
report_timing -delay_type max
```

### Hold Analysis

Hold analysis verifies that the data remains stable for the required hold time after the active clock edge.

```tcl
report_timing -delay_type min
```

### Important Timing Metrics

| Metric | Description |
|---|---|
| WNS | Worst Negative Slack |
| TNS | Total Negative Slack |
| Setup Violations | Paths failing maximum-delay requirements |
| Hold Violations | Paths failing minimum-delay requirements |
| Critical Path | Path with the lowest timing margin |
| Transition Violations | Nets with excessive signal transition |
| Fanout Violations | Nets driving too many loads |

---

## 14. Timing Closure

Timing closure is the iterative process of eliminating or reducing timing violations.

### Techniques Used

- Cell upsizing
- Cell downsizing
- Buffer insertion
- Buffer removal
- Logic restructuring where supported
- Placement refinement
- Route optimization
- Hold-buffer insertion
- Clock optimization
- Congestion reduction

### Goal

The primary goal is to obtain non-negative timing slack for all constrained paths while preserving design legality and routing quality.

---

## 15. Physical Verification

Physical verification confirms that the layout is suitable for fabrication.

### Checks Performed

- Placement legality
- Power-ground connectivity
- Routing completeness
- Design Rule Check
- Short and open detection
- Missing-via checks
- Boundary checks
- Connectivity verification
- Layout consistency checks

Typical commands may include:

```tcl
check_design
check_legality
check_routes
check_pg_connectivity
check_pg_drc
```

### DRC

Design Rule Checking verifies that the layout follows technology-specific width, spacing, enclosure, and via rules.

### LVS Fundamentals

Layout Versus Schematic verifies that the physical connectivity matches the intended circuit netlist. In this training project, the fundamentals and flow requirements of LVS were studied as part of signoff preparation.

---

## 16. Signoff Analysis

Before generating the GDSII file, final quality-of-results reports were collected.

Recommended final reports:

```tcl
report_qor
report_timing
report_constraints -all_violators
report_utilization
report_congestion
report_clock_qor
check_routes
check_design
```

### Signoff Criteria

- Design successfully linked
- No unresolved references
- Legal cell placement
- Complete signal routing
- Complete power-ground connectivity
- Acceptable setup timing
- Acceptable hold timing
- Controlled clock skew
- No critical routing errors
- Minimum design-rule violations

---

## 17. GDSII Generation

The final physical layout was exported in GDSII format.

Illustrative command:

```tcl
write_gds ./gds/sequential_adder.gds
```

The GDSII file contains the geometric layout information required for downstream fabrication-related processing.

### Final Deliverables

- ICC2 design database
- Final routed layout
- Timing reports
- Congestion reports
- Clock reports
- Physical verification reports
- Screenshots
- GDSII file
- Final project report

---

# Implementation Scripts

A recommended script-execution sequence is:

```text
01_setup.tcl
02_import.tcl
03_floorplan.tcl
04_power_plan.tcl
05_placement.tcl
06_cts.tcl
07_routing.tcl
08_signoff.tcl
09_gds_export.tcl
```

Example execution:

```bash
icc2_shell -f scripts/01_setup.tcl | tee logs/01_setup.log
```

Or run the complete flow through a master script:

```tcl
source scripts/01_setup.tcl
source scripts/02_import.tcl
source scripts/03_floorplan.tcl
source scripts/04_power_plan.tcl
source scripts/05_placement.tcl
source scripts/06_cts.tcl
source scripts/07_routing.tcl
source scripts/08_signoff.tcl
source scripts/09_gds_export.tcl
```

---

# Results and Analysis

The Sequential Adder was successfully taken through the major stages of the physical-design flow.

## Result Summary

| Stage | Result |
|---|---|
| Design Import | Gate-level design and libraries loaded successfully |
| Constraint Setup | Clock and timing constraints applied |
| Floorplanning | Core initialized with 0.75 utilization and 10-unit offset |
| Power Planning | VDD and VSS network established |
| Placement | Standard cells placed and legalized |
| Pre-CTS Optimization | Timing and design-rule constraints analyzed |
| Clock Tree Synthesis | Clock network generated and balanced |
| Post-CTS Optimization | Setup and hold paths re-analyzed |
| Routing | Global and detailed routing completed |
| Timing Analysis | Setup and hold reports generated |
| Physical Checks | Legality, connectivity, and route checks performed |
| Final Output | Routed design and GDSII database generated |

---

## Floorplan Analysis

The floorplan was created using a core utilization of approximately **75%**. This value provides a balance between compact area and available whitespace for placement optimization, clock buffers, routing resources, and timing-repair cells.

A very high utilization could increase congestion and reduce routing flexibility. A very low utilization would increase the design area. The selected utilization was therefore suitable for the training-scale Sequential Adder design.

---

## Placement Analysis

The standard cells were placed inside the legal core region. Placement optimization improved the physical distribution of cells by considering:

- Timing criticality
- Cell connectivity
- Wirelength
- Congestion
- Legalization
- Maximum transition
- Maximum fanout

The post-placement design provided a stable base for clock tree synthesis.

---

## Clock Tree Analysis

Clock Tree Synthesis inserted clock buffers and created branches to distribute the clock to sequential elements.

The important parameters evaluated were:

- Clock skew
- Clock latency
- Clock transition
- Number of clock buffers
- Setup slack
- Hold slack

CTS significantly affects sequential timing. Therefore, post-CTS setup and hold analysis was necessary even when pre-CTS timing appeared satisfactory.

---

## Routing Analysis

The routing stage established physical interconnections between all placed cells.

Global routing identified routing regions and congestion, while detailed routing assigned exact metal tracks and vias. The routed design was checked for incomplete nets, shorts, spacing issues, and other routing problems.

Post-route timing is more realistic because interconnect parasitics are included.

---

## Timing Analysis

The project considered both setup and hold timing.

### Setup Timing

Setup timing ensures that data reaches the destination register before the required clock edge.

A negative setup slack indicates that the data path is too slow. Setup violations can be reduced using:

- Faster cells
- Buffer optimization
- Reduced route delay
- Placement improvement
- Clock optimization

### Hold Timing

Hold timing ensures that data does not change too soon after the active clock edge.

A negative hold slack indicates that the data path is too fast. Hold violations can be reduced using:

- Delay-buffer insertion
- Route detouring
- Cell resizing
- Clock skew adjustment

The final reports should be placed in:

```text
reports/timing/
```

---

## Quality of Results Table

Replace the placeholder entries below with the exact values from the final ICC2 reports.

| Parameter | Final Value |
|---|---|
| Number of Standard Cells | Add from report |
| Core Utilization | 0.75 |
| Die Area | Add from report |
| Core Area | Add from report |
| Total Cell Area | Add from report |
| Clock Period | Add from SDC |
| Worst Setup Slack | Add from final timing report |
| Total Setup Negative Slack | Add from final timing report |
| Worst Hold Slack | Add from final timing report |
| Total Hold Negative Slack | Add from final timing report |
| Maximum Clock Skew | Add from clock report |
| Clock Latency | Add from clock report |
| Total Wirelength | Add from routing report |
| DRC Violations | Add from final check |
| Unrouted Nets | Add from route check |
| GDSII Generated | Yes / No |

---

# Project Outcomes

The following outcomes were achieved through this project:

- Understanding of the complete ASIC backend flow
- Experience with Synopsys ICC2
- Practical knowledge of physical-design databases
- Floorplan creation with controlled utilization
- Power-grid planning
- Standard-cell placement and legalization
- Timing-driven optimization
- Clock-tree construction
- Setup and hold timing analysis
- Global and detailed routing
- Physical verification
- GDSII generation
- TCL-based flow execution
- Linux-based EDA tool usage
- Technical report preparation
- GitHub-based project documentation

---

# Skills Acquired

## Technical Skills

- ASIC Physical Design
- RTL-to-GDSII Flow
- Floorplanning
- Power Planning
- Standard-Cell Placement
- Clock Tree Synthesis
- Routing
- Static Timing Analysis
- Timing Closure
- Physical Verification
- GDSII Generation
- TCL Scripting
- Linux Commands
- Synopsys ICC2
- Report Analysis
- VLSI Backend Methodology

## Professional Skills

- Team collaboration
- Technical documentation
- Project planning
- Result interpretation
- Problem solving
- Engineering presentation
- Version control using GitHub

---

# Challenges Faced

The following practical challenges were studied during the implementation:

1. Correctly loading technology and reference libraries
2. Resolving unlinked or missing cells
3. Selecting an appropriate core utilization
4. Avoiding placement congestion
5. Maintaining legal cell placement
6. Establishing complete power-ground connectivity
7. Controlling clock skew and latency
8. Understanding setup and hold timing
9. Reducing timing violations
10. Completing routing without critical errors
11. Interpreting ICC2 reports
12. Generating and organizing project outputs

---

# Possible Future Enhancements

The project can be extended in the following ways:

- Implement the design using different technology nodes
- Compare multiple floorplan utilizations
- Perform multi-corner multi-mode timing analysis
- Include detailed IR-drop analysis
- Include electromigration analysis
- Perform formal equivalence checking
- Perform full LVS verification
- Compare pre-route and post-route timing
- Compare area, power, and timing for multiple adder architectures
- Implement a larger arithmetic unit
- Automate the complete flow using a single TCL script
- Add OpenROAD-based open-source flow comparison
- Perform power analysis using switching activity
- Study clock-gating for dynamic-power reduction
- Generate final DEF, SPEF, SDF, and GDSII outputs

---

# How to Run the Project

## Prerequisites

- Linux environment
- Synopsys IC Compiler II
- Valid ICC2 license
- Technology file
- Reference NDM libraries
- Standard-cell timing libraries
- Synthesized gate-level netlist
- SDC timing constraints

## Execution

1. Clone the repository.

```bash
git clone <repository-link>
cd sequential-adder-icc2
```

2. Verify the paths in the setup script.

```tcl
set TECH_FILE ...
set REF_LIBS ...
set NETLIST ...
set SDC_FILE ...
```

3. Launch ICC2.

```bash
icc2_shell
```

4. Run the scripts.

```tcl
source scripts/01_setup.tcl
source scripts/02_import.tcl
source scripts/03_floorplan.tcl
source scripts/04_power_plan.tcl
source scripts/05_placement.tcl
source scripts/06_cts.tcl
source scripts/07_routing.tcl
source scripts/08_signoff.tcl
source scripts/09_gds_export.tcl
```

5. Review generated reports.

```text
reports/
```

6. Review the final GDSII output.

```text
gds/sequential_adder.gds
```

---

# Repository Submission Checklist

Before submitting the repository for ePBL Internship evaluation, verify that it contains:

- [ ] Complete source code
- [ ] RTL design
- [ ] Gate-level netlist, where permitted
- [ ] SDC constraints
- [ ] ICC2 TCL scripts
- [ ] Floorplan screenshots
- [ ] Power-plan screenshots
- [ ] Placement screenshots
- [ ] CTS screenshots
- [ ] Routing screenshots
- [ ] Timing reports
- [ ] Clock reports
- [ ] Congestion reports
- [ ] Physical verification reports
- [ ] Final GDSII output, where sharing is permitted
- [ ] Project Results and Analysis
- [ ] Final project report in PDF format
- [ ] Updated README file
- [ ] Team and coordinator details
- [ ] Correct GitHub repository link

> Do not upload proprietary technology files, licensed standard-cell libraries, confidential netlists, or restricted training material to a public GitHub repository.

---

# Important Repository Note

Synopsys software, process-design kits, standard-cell libraries, technology files, and some training datasets may be proprietary.

This repository should contain only material that the project team is authorized to share. Proprietary libraries and licensed EDA software are not included.

Users must provide their own:

- Synopsys ICC2 installation
- Valid software license
- Technology files
- Standard-cell libraries
- Legal access to required design kits

---

# Conclusion

This project successfully demonstrates the physical implementation of a Sequential Adder through the major stages of the ASIC RTL-to-GDSII flow using Synopsys ICC2.

The project begins with a synthesized gate-level netlist and timing constraints, followed by floorplanning, power planning, placement, clock tree synthesis, routing, timing analysis, physical verification, and GDSII generation.

Through this implementation, the project team gained practical understanding of ASIC backend design, physical constraints, timing closure, clock distribution, routing, report analysis, and signoff preparation. The project serves as a strong foundation for advanced work in VLSI physical design and semiconductor implementation.

---

# Acknowledgement

We express our sincere gratitude to **Dr. K. Narsimha Reddy**, Project Coordinator, for his guidance and support during the ePBL Internship Program.

We also acknowledge **Vardhaman College of Engineering**, , Hyderabad**,for providing academic and training exposure related to ASIC design and physical implementation using industry-standard Synopsys tools.

---

# Authors

- **B. Suraj Kuila** — 23881A04C0
- **B. Naradasu Srija** — 23881A04A9
- **B. Patniti Vaishnavi** — 23881A04B3
- **B. Tirunagari Akshay** — 23881A04C3

**Department of Electronics and Communication Engineering**  
**Vardhaman College of Engineering, Hyderabad**

---

# License

This repository is intended for academic and educational use.

Any proprietary tool files, technology libraries, or licensed materials remain the property of their respective owners.
