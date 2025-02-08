@echo off
REM	Tristix Batch File to allow joystick control.

REM	Include the following line in AutoExec.bat, /I=bypass setup
REM	SET JOYKEYS=/I

C:\Utilit~2\Dos\Joykeys /A1=Esc /A2=Enter /L=3 /R=1 /P=30 /K /M
Tristix.exe %1 %2 %3 %4 %5 %6 %7 %8 %9
C:\Utilit~2\Dos\JoyKeys /U