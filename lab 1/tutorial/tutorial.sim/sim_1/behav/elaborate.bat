@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto f06965210b914572900ef8b1bbecd71b -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot tutorial_tb_behav xil_defaultlib.tutorial_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
