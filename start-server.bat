@echo off
title Gagan Website - localhost:8000
cd /d "%~dp0"
echo.
echo   Gagan's website is running at http://localhost:8000
echo   Keep this window open. Close it to stop the server.
echo.
start "" cmd /c "timeout /t 2 >nul & start http://localhost:8000"
python -m http.server 8000 2>nul || py -m http.server 8000 2>nul || npx --yes http-server -p 8000 -c-1
pause
