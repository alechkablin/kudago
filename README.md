# KUDAGO

Статическая страница подборки мест (один файл `index.html` + локальные лаунчеры).

## GitHub Pages (самый простой путь)

### 1. Создай репозиторий на GitHub

- New repository → имя, например `kudago` → **Public** (для бесплатного Pages проще всего).
- Не добавляй README из мастера, если уже пушишь локальный проект (или добавь — не критично).

### 2. Залей файлы из этой папки

В терминале (подставь свой логин и имя репо):

```bash
cd /Users/alinavartanyan/PycharmProjects/kudago
git init
git add index.html start-server.bat start-server.command README.md .gitignore .nojekyll
git commit -m "Initial KUDAGO static site"
git branch -M main
git remote add origin https://github.com/ВАШ_ЛОГИН/kudago.git
git push -u origin main
```

Если репозиторий уже создан на сайте с README — сначала `git pull origin main --allow-unrelated-histories`, потом `push`.

### 3. Включи Pages

На GitHub: **Settings → Pages → Build and deployment**

- **Source:** *Deploy from a branch*
- **Branch:** `main`, папка **`/ (root)`**
- Сохрани.

Через 1–2 минуты сайт будет по адресу:

`https://ВАШ_ЛОГИН.github.io/kudago/`

(открой в инкогнито или сделай жёсткое обновление, если кэш мешает).

### 4. Firebase (общие голоса и плашка «выбрали место» у всех)

В начале скрипта в `index.html` есть комментарий с шагами: создать **Realtime Database**, вставить **`FIREBASE_CONFIG`** из консоли Firebase, выставить **Rules**.

Все открывают **одну и ту же ссылку**. Отдельная «комната» без правки кода: добавь к URL параметр **`?room=имя`** (латиница, цифры, `_`, `-`), например `.../index.html?room=friday` — данные в БД лежат по пути `kudago/<имя>/`.

---

## Локальный просмотр (как на `127.0.0.1:8080`)

- macOS: двойной клик по `start-server.command`
- Windows: двойной клик по `start-server.bat`

Откроется `http://127.0.0.1:8080/index.html`. Окно терминала не закрывать, пока смотришь сайт.
