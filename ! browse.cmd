@echo off
goto begin
 
:usage
echo Usage: %~n0
echo.
echo Opens web browser to localhost
goto end
 
:begin
echo Your web browser will now open http://localhost:1313/~rikblok/
echo.
start "Browser" http://localhost:1313/~rikblok/

:end
