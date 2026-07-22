###################################################################

# Created by write_sdc on Fri Apr 10 07:32:02 2026

###################################################################
set sdc_version 2.0

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
set_load -pin_load 25 [get_ports C_out]
create_clock [get_ports Clock]  -name my_clk  -period 3  -waveform {0 1.2}
set_clock_latency -max 0.3  [get_clocks my_clk]
set_clock_latency -source -max 0.7  [get_clocks my_clk]
set_clock_uncertainty -setup 0.15  [get_clocks my_clk]
set_clock_transition -max -fall 0.12 [get_clocks my_clk]
set_clock_transition -max -rise 0.12 [get_clocks my_clk]
set_input_delay -clock my_clk  -max 0.45  [get_ports {A[3]}]
set_input_delay -clock my_clk  -max 0.45  [get_ports {A[2]}]
set_input_delay -clock my_clk  -max 0.45  [get_ports {A[1]}]
set_input_delay -clock my_clk  -max 0.45  [get_ports {A[0]}]
set_input_delay -clock my_clk  -max 0.4  [get_ports {B[3]}]
set_input_delay -clock my_clk  -max 0.4  [get_ports {B[2]}]
set_input_delay -clock my_clk  -max 0.4  [get_ports {B[1]}]
set_input_delay -clock my_clk  -max 0.4  [get_ports {B[0]}]
set_input_delay -clock my_clk  -max 0.3  [get_ports C_in]
set_output_delay -clock my_clk  -max 0.5  [get_ports {SUM[3]}]
set_output_delay -clock my_clk  -max 0.5  [get_ports {SUM[2]}]
set_output_delay -clock my_clk  -max 0.5  [get_ports {SUM[1]}]
set_output_delay -clock my_clk  -max 0.5  [get_ports {SUM[0]}]
set_output_delay -clock my_clk  -max 0.1  [get_ports C_out]
set_input_transition -max 0.12  [get_ports C_in]
