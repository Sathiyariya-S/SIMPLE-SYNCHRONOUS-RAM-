# SIMPLE-SYNCHRONOUS-RAM-vlsi
Sathiyapriya S
Intern ID:CT04WH113
Internship will span 4 weeks from March 12th, 2025 to April 12th, 2025.
CODTECH IT SOLUTIONS PVT.LTD
Mentor : Neela Santhosh Kumar(Human Resources & Academic Head,CODTECH IT SOLUTIONS PVT.LTD)
09
## Synchronous RAM Module Using Verilog

This project involves the design and simulation of a **Synchronous RAM (Random Access Memory)** using **Verilog HDL**. The RAM supports both **read and write operations** that are synchronized with a clock signal. This type of memory is widely used in digital systems such as FPGAs and processors where timing and control are crucial.

### Functionality

- **Data Width**: 8 bits  
- **Address Width**: 4 bits (allows 16 memory locations)  
- **Operations**:  
  - **Write**: Stores data at a given address when `write enable` is active  
  - **Read**: Outputs data from the given address when `write enable` is inactive  
- **Clock**: All operations are performed on the **positive edge** of the clock

### Deliverables

| File Name        | Description                                      |
|------------------|--------------------------------------------------|
| `sync_ram.v`     | Verilog code for the synchronous RAM module      |
| `tb_sync_ram.v`  | Testbench to verify the read and write operations |
| `sync_ram.vcd`   | Simulation output file for waveform viewing in GTKWave |


###  Simulation
1. Writing values to 3 different memory locations
2. Reading back the same values from those locations
3. Displaying changes in signals like `clk`, `we`, `addr`, `din`, and `dout`

**Expected Output:**
- Write data: A5 at address 1, 5A at address 2, 3C at address 3
- Readback data: Same values from the respective addresses

### How to Compile and Run
- Icarus Verilog
- GTKWave


### Learning Outcomes

- Understanding of synchronous memory concepts
- Writing Verilog modules and testbenches
- Simulation and debugging using Icarus Verilog
- Analyzing signal transitions using GTKWave

## OUTPUT

![Image](https://github.com/user-attachments/assets/3fcaca6e-9e9c-4252-8890-f2a2163dd217)

