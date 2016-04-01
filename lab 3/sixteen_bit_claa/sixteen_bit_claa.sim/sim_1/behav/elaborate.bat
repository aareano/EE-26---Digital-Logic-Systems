@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 4b439cad77374f8bb8d7dff803b3ff56 -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot claa_tb_behav xil_defaultlib.claa_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
