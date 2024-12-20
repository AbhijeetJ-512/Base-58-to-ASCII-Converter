# Define file names
MAIN_SRC = src/main.v
TB_SRC = src/main_tb.v
OUTPUT = testbench_output

# Define tools
IVERILOG = iverilog
VVP = vvp

# Target to compile and simulate
all: compile simulate

# Compile the Verilog files
compile:
	$(IVERILOG) -o $(OUTPUT) $(MAIN_SRC) $(TB_SRC)

# Simulate the compiled output
simulate:
	$(VVP) $(OUTPUT)

# Clean up the generated files
clean:
	rm -f $(OUTPUT) *.vcd

.PHONY: all compile simulate clean

