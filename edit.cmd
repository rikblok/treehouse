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
call serve.cmd
 
:runbrowser
call browse.cmd
::echo Your web browser will now open http://localhost:1313/~rikblok/
::echo.
::start "Browser" http://localhost:1313/~rikblok/

:: skip github [2025-02-04]
goto cmd
:github
echo Starting GitHub Desktop
echo.
call "U:\Google Drive\Windows\Cmd\isRunning.cmd" "GitHubDesktop.exe"
if errorlevel 1 github

:cmd
echo Command-line window will now open
echo `exit` command-line when done editing
echo Close server (Ctrl+C) and `serve` on command-line to restart
echo.
start "Command-line" cmd.exe 

:end
