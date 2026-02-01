🇷🇺 Русская версия: [README.md](./README.md)

# ⚙️ Node/API Template — Starter Kit v0.4

A minimal **Node.js API boilerplate built with Express**
by **Oleg & Neuro Code Studio**.

Designed as a calm and clean foundation
to start any backend project:

• API
• service
• e-commerce
• admin panel
• microservice

No magic.
Only structure, clarity, and good engineering culture.

---

## ✨ Features

### Core

- Express
- CORS
- Helmet (security)
- Morgan (logs)
- `.env` configuration
- API versioning (`/api/v1`)
- Health endpoint

### DX (v0.4)

- Dockerfile
- docker-compose
- Prettier
- ESLint
- Husky (pre-commit hooks)
- lint-staged
- .editorconfig
- auto format & lint before commit

---

## 🚀 Quick Start

### Local (Node)

```bash
cd templates/node-api
cp .env.example .env
npm install
npm run dev

```

---

## 🐳 Docker (production-like environment)

```bash
cd templates/node-api
docker compose up --build

```

---

## 🔍 Endpoints

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

## 🧠 Philosophy

This is not a “ready-made server”.

This is:

• structure
• culture
• a clean starting point

You add only what your project really needs.

No chaos. No unnecessary dependencies. No magic.

---

🧩 Part of

Oleg & Neuro — Starter Kit series

- v0.1 → foundation

- v0.2 → frontend

- v0.3 → backend

- v0.4 → production DX

---

Made with ❤️ by Oleg & Neuro Code Studio
