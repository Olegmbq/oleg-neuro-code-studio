🇬🇧 English: [README.en.md](./README.en.md)

# ⚙️ Node/API Template — Starter Kit v0.4

Минималистичный шаблон для **Node.js API на Express**
от **Oleg & Neuro Code Studio**.

Создан как спокойный, чистый фундамент,
с которого можно начать любой backend-проект:

• API
• сервис
• интернет-магазин
• админку
• микросервис

Без лишней магии. Только структура, порядок и культура кода.

---

## ✨ Features

### Core

- Express
- CORS
- Helmet (security)
- Morgan (logs)
- `.env` конфигурация
- Версионирование API (`/api/v1`)
- Health endpoint

### DX (v0.4)

- Dockerfile
- docker-compose
- Prettier
- ESLint
- Husky (pre-commit hooks)
- lint-staged
- .editorconfig
- авто-формат и авто-линт перед commit

---

## 🚀 Quick Start

### Local (Node)

```bash
# перейти в шаблон
cd templates/node-api

# создать env
cp .env.example .env

# установить зависимости
npm install

# запуск dev сервера
npm run dev

```

---

## 🐳 Docker (рекомендуется для production-like среды)

```bash
cd templates/node-api
docker compose up --build

```

---

## 🔍 Проверка

Root:
http://localhost:4000/

Health:
http://localhost:4000/api/v1/health

---

## 📁 Project Structure

```mpx

src/
  app.js
  server.js
  config/
  routes/
    v1/
      health.routes.js
  middlewares/
  utils/

```

---

## 🧠 Философия

Это не «готовый сервер».

Это:
• структура
• культура
• чистая точка старта

Ты добавляешь только то, что нужно твоему проекту.

Без хаоса. Без лишних зависимостей. Без магии.

---

## 🧩 Part of

Oleg & Neuro — Starter Kit series

- v0.1 → foundation

- v0.2 → frontend

- v0.3 → backend

- v0.4 → production DX

---

Made with ❤️ by Oleg & Neuro Code Studio

```

```
