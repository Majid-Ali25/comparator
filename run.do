# Create library and compile files
vlib work
vlog comparator.sv
vlog comparator_tb.sv

# Start simulation
vsim comparator_tb

# Run simulation for 200ns
run 100ns