# EE-26---Digital-Logic-Systems
Labs for EE 26

-- Implementation
Write implementation design source(s) in VHDL
Write test bench simulation source(s) in VHDL

-- Simulation
Run Simulation > Behavioural Simulation (fix any compilation errors)

-- Load onto board
Layout > I/O Planning
	- map ports in the I/O Ports dialog on the bottom
	- I/O Std should be LVCMOS33
	- Save the constraints
Flow Navigator > Program and Debug > Generate Bitstream
	- Run Synthesis and Run Implementation will be run automatically when you do this
	- Open Hardware Manager
	- Open Target (on the top banner)
		- Auto detect (if you set up the project with the right board)
	- Program Device (on the top banner)
