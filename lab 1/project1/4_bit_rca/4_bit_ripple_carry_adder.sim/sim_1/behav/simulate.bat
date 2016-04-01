@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xsim adder_subtractor_tb_behav -key {Behavioral:sim_1:Functional:adder_subtractor_tb} -tclbatch adder_subtractor_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
