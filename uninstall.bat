@echo off
echo Uninstalling qUpdater autorun...

echo.
echo Stopping qUpdater if running...
taskkill /F /IM qUpdater.exe 2>nul

echo.
echo Removing startup registry entry...
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "qUpdater" /f

if %ERRORLEVEL% NEQ 0 (
	echo Warning: Registry entry was not found or could not be removed.
	echo It may have already been removed.
) else (
	echo Registry entry removed successfully.
)

echo.
echo Uninstall complete.
echo qUpdater will no longer start automatically with Windows.
echo.
echo Note: qUpdater.exe itself was not deleted.

echo.
echo Press any key to close this window...
pause >nul