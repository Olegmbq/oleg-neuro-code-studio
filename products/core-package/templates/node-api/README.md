# Node/API Template (Starter Kit v0.3)

Минималистичный шаблон для Node.js API на Express.

Цель — дать спокойный, чистый фундамент,
с которого можно начать любой backend-проект:
• API
• сервис
• интернет-магазин
• админку
• микросервис

Без лишней магии. Только структура и порядок.

---

## Что внутри

- Express
- CORS
- Helmet (security)
- Morgan (logs)
- .env конфигурация
- Версионирование API (/api/v1)
- Health endpoint

---

## Быстрый старт

1. Скопируй `.env.example` → `.env`
2. Установи зависимости

   npm i

3. Запусти сервер

   npm run dev

---

## Проверка

Открой в браузере:

Root (friendly)
http://localhost:4000/

Health check
http://localhost:4000/api/v1/health

---

## Структура

src/
app.js
server.js
routes/
v1/
health.routes.js

---

## Философия

Это не «готовый сервер».

Это:
• структура
• культура
• чистая точка старта

Ты добавляешь только то, что нужно твоему проекту.

---

Oleg & Neuro Code Studio
Starter Kit series
