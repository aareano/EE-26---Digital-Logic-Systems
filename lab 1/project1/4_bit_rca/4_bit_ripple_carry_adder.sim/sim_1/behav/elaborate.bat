@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 7e9efff46a1c485d9fa62b29568136b5 -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot adder_subtractor_tb_behav xil_defaultlib.adder_subtractor_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
