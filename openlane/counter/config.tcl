set ::env(DESIGN_NAME) counter
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]
set ::env(CLOCK_PERIOD) 10
set ::env(CLOCK_PORT) clk
set ::env(RUN_LINTER) 0
