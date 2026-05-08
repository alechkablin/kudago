@echo off
setlocal
cd /d "%~dp0"

set PORT=8080
set PY_CMD=

where py >nul 2>nul
if %errorlevel%==0 set PY_CMD=py

if "%PY_CMD%"=="" (
  where python >nul 2>nul
  if %errorlevel%==0 set PY_CMD=python
)

if "%PY_CMD%"=="" (
  echo Python не найден. Установи Python 3 и запусти этот файл снова.
  pause
  exit /b 1
)

echo KUDAGO local server starting on http://127.0.0.1:%PORT%/index.html
echo Не закрывай это окно, пока пользуешься сайтом.
echo.

start "" "http://127.0.0.1:%PORT%/index.html"
%PY_CMD% -m http.server %PORT%
