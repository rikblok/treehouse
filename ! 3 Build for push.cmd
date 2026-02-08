@echo off
goto begin
 
:usage
echo Usage: %~n0
echo.
echo Runs Hugo to generate static website
goto end
 
:begin
if not "%1"=="" goto usage
pushd "%~dp0"
hugo
echo.

:end
popd
echo Done.
echo Now submit git changes and push.
pause