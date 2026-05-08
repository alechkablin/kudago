#!/bin/bash
set -e

cd "$(dirname "$0")"

PORT=8080

if command -v python3 >/dev/null 2>&1; then
  PY_CMD="python3"
elif command -v python >/dev/null 2>&1; then
  PY_CMD="python"
else
  osascript -e 'display alert "Python не найден" message "Установи Python 3 и запусти файл снова."' >/dev/null 2>&1 || true
  echo "Python не найден. Установи Python 3 и попробуй снова."
  read -r -p "Нажми Enter для выхода..."
  exit 1
fi

echo "KUDAGO local server starting on http://127.0.0.1:${PORT}/index.html"
echo "Не закрывай это окно, пока пользуешься сайтом."
echo

open "http://127.0.0.1:${PORT}/index.html"
exec "$PY_CMD" -m http.server "$PORT"
