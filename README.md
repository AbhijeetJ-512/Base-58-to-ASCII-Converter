# Base-58 to ASCII Converter

This project implements a Base-58 to ASCII converter in Verilog. The converter takes a Base-58 encoded input and converts it into its corresponding ASCII representation. The project includes the Verilog design file (`main.v`), a testbench (`main_tb.v`) for simulation, and a schematic diagram to aid in understanding the design.

## Files

- `src/main.v`: Verilog implementation of the Base-58 to ASCII converter.
- `src/main_tb.v`: Verilog testbench used to verify the functionality of the converter.
- `docs/schematic.pdf`: Schematic diagram illustrating the structure of the Base-58 to ASCII converter.
- `.gitignore`: Specifies files and directories to be ignored by Git (e.g., compiled files, simulation outputs).
- `Makefile`: Contains instructions for automating the build and simulation process.

## Getting Started

To get started with the project, you can follow the instructions below to compile and simulate the design.

### Prerequisites

Make sure you have the following tools installed:
- **iverilog**: A Verilog compiler.
- **vvp**: A Verilog simulation tool.
- **make**: A tool for automating the build process.

### Compilation and Simulation

1. Clone the repository:
   ```bash
   git clone https://github.com/AbhijeetJ-512/Base-58-to-ASCII-Converter
   cd 'Design and Implementation of a Base-58 to ASCII Converter'
2. Compile and simulate the Verilog code using
    ```bash
    make
    ```
    This will:
    - Compile the Verilog design file (`main.v`) and the testbench (`main_tb.v`).
    - Run the simulation using the compiled executable.
3. To clean up the directory and remove any generated files, use:
    ```bash
    make clean
    ```
