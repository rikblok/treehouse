@echo off
goto begin
 
:usage
echo Usage: %~n0
echo.
echo Runs Hugo to generate static website
goto end
 
:begin
if not "%1"=="" goto usage
cd "%~dp0"
hugo
echo.

:end
echo Done.
echo Now submit git changes and push.
pause