@echo off
PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell.exe -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%USERPROFILE%\Downloads\DisableTracking.ps1""' -Verb RunAs}"