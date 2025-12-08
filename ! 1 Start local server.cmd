@echo off
goto begin
 
:usage
echo Usage: %~n0
echo.
echo Starts Hugo Server in new window
echo and waits for user to press Ctrl-C to stop.
goto end
 
:begin
if not "%1"=="" goto usage
cd "%~dp0"
start "Hugo server" hugo server
echo Hugo server started...
echo.

:end
