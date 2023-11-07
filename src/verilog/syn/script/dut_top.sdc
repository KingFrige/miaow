set_operating_conditions -lib smic13_ss
set auto_wire_load_selection "true"
set_wire_load_mode enclosed

# Create Clock
set PERIOD 100

create_clock -name clk -period $PERIOD [get_ports  clk] 
set_dont_touch_network -no_propagate [get_ports  clk]

set_clock_uncertainty -setup 0.5 [all_clocks]
set_clock_uncertainty -hold  0.2 [all_clocks]

set_dont_touch_network -no_propagate [get_ports {rst}]

set_fix_multiple_port_nets -all

# False path and multi cycle path
set_false_path -from [get_ports {rst}]


# input/output delay
set_input_delay  [expr $PERIOD/3] -clock clk  [all_inputs]
set_output_delay [expr $PERIOD/3] -clock clk  [all_outputs]

# Load/Drive and DRC rules
set_load -pin_load 10 [all_output]
set_drive 0 [all_input]

set_max_fanout 100 ${TOP_DESIGN}
set_max_transition 10 ${TOP_DESIGN}
set high_fanout_net_threshold 60
set high_fanout_net_pin_capacitance 0.01

set_max_area 0

group_path -name reg2reg -weight 10 -critical_range 0.5 -from [all_registers] -to [all_registers]
group_path -name reg2out -weight 2 -critical_range 0.5 -to [all_outputs]
group_path -name in2reg -weight 2 -critical_range 0.5 -from [all_inputs]
group_path -name in2out -weight 1 -critical_range 0.5 -from [all_inputs] -to [all_outputs]
