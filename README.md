# Verilog-Based Multiplexer Design Using Icarus Verilog

## Overview

This project implements a digital Multiplexer (MUX) using **Verilog HDL**. A multiplexer is a combinational logic circuit that selects one input from multiple input signals and forwards it to a single output based on the select line.

The design is written in Verilog and simulated using **Icarus Verilog (Iverilog)** to verify its logical functionality.

## Objectives

- Understand the working principle of a digital multiplexer.
- Implement combinational logic using Verilog HDL.
- Develop a separate testbench for functional verification.
- Simulate and verify output responses using Icarus Verilog.

## Technologies Used

- **Hardware Description Language:** Verilog HDL
- **Simulator:** Icarus Verilog
- **Waveform Viewer:** GTKWave (optional)
- **Development Environment:** VS Code

## Project Structure

```text
MUX-Verilog/
├──bashcommands.txt
├──expectedoutput.txt
├── module.v       # Multiplexer design module
├── testbench.v    # Testbench for simulation
└── README.md      # Project documentation
```

## Working Principle

A multiplexer selects one of its input signals depending on the value of its select line.

For a 2:1 multiplexer:

| Select (S) | Output (Y) |
|---|---|
| 0 | Input A |
| 1 | Input B |

### Boolean Expression

\[
Y = \overline{S}A + SB
\]

## Simulation Using Icarus Verilog

Follow these steps to simulate the project.

**1. Compile the Verilog files**

```bash
iverilog -o mux_sim module.v testbench.v
```

**2. Run the simulation**

```bash
vvp mux_sim
```

**3. View waveform (if VCD dumping is enabled)**

```bash
gtkwave mux.vcd
```

## Expected Outcome

The simulation verifies that the multiplexer selects the correct input according to the select signal. The output is checked against the expected logical behaviour using the testbench.

## Learning Outcomes

- Practical understanding of combinational digital circuits.
- Verilog module design and testbench development.
- Digital logic simulation and functional verification.
- Experience with open-source HDL simulation tools.

## Author

**Vaibhav Gupta**

Engineering Student | Digital Electronics | Verilog HDL

---

*This project was developed as part of my learning in Digital Electronics and Hardware Description Languages.*
