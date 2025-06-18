@echo off
title My Final Batch Project
color 0A

:menu
cls
echo ================================
echo   Welcome to My Batch Project!
echo ================================
echo 1. Show System Info
echo 2. Clean Temp Files
echo 3. List Desktop Files
echo 4. Exit
echo.
set /p choice=Choose an option (1-4): 

if "%choice%"=="1" goto sysinfo
if "%choice%"=="2" goto cleantemp
if "%choice%"=="3" goto listdesktop
if "%choice%"=="4" goto end
goto menu

:sysinfo
cls
echo === System Information ===
echo Username: %username%
echo Date: %date%
echo Time: %time%
pause
goto menu

:cleantemp
cls
echo === Cleaning Temp Files ===
del /q %temp%\*.* > nul
echo Temp files deleted!
pause
goto menu

:listdesktop
cls
echo === Files on Your Desktop ===
dir "%userprofile%\Desktop"
pause
goto menu

:end
cls
echo All done!
pause
exit
