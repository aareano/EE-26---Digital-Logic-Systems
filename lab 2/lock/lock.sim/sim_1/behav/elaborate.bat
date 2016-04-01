@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 0aa383c384bf43e6a098abb072c731ab -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot combo_lock_tb_behav xil_defaultlib.combo_lock_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
