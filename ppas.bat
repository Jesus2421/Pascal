@echo off
SET THEFILE=c:\users\popiet~1\docume~1\docume~2\programacion\pascal\sumatoria.exe
echo Linking %THEFILE%
c:\dev-pas\bin\ldw.exe  -s   -b base.$$$ -o c:\users\popiet~1\docume~1\docume~2\programacion\pascal\sumatoria.exe link.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occured while assembling %THEFILE%
goto end
:linkend
echo An error occured while linking %THEFILE%
:end
