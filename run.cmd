@echo off
goto begin
 
:usage
echo Usage: %~n0
echo.
echo Starts Hugo Server
echo and waits for user to press Ctrl-C to stop.
goto end
 
:begin
if not "%1"=="" goto usage
cd "%~dp0"
start "Hugo server" hugo server
echo Hugo server started...
echo.
 
:runbrowser
echo Your web browser will now open http://localhost:1313/~rikblok/
echo.
start "Browser" http://localhost:1313/~rikblok/

:cmd
echo Command-line window will now open
echo.
start "Command-line" cmd.exe 

:github
echo Starting GitHub Desktop
echo.
github "%~dpn0"

:end
