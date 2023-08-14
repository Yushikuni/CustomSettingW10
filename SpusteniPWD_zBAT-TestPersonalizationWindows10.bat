@echo off
echo BEGIN
powershell.exe -Executionpolicy remotesigned -File TestPersonalizeSetting.ps1
pause
echo RELOADING
rundll32.exe user32.dll,UpdatePerUserSystemParameters 
echo DONE!