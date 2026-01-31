> 🇬🇧 English version  
> 🇷🇺 Russian version: [README.md](./README.md)

# ⚙️ Oleg & Neuro — Starter Kit

## Core Package · Business Engine

Starter Kit is a minimal yet thoughtfully designed project foundation by  
**Oleg & Neuro Code Studio**.

It serves as a **starting point** — clear structure, essential documentation,  
and a calm, focused beginning without chaos.

---

## 🚀 Quick Start

Create a new project from a template:

```bash
cd products/core-package/scripts
bash create-project.sh my-new-project

```

---

## 📦 What’s Inside

- `templates/` — project templates (base, vite-react, node-api)

- `scripts/` — project generation tools

- `docs/` — usage, support, roadmap

- `welcome.md` — mindset and entry point

## ✅ Who This Is For

- beginners who need a clear and calm start

- developers who value structure and order

- teams and individuals building products for the long run

## ❌ Who This Is NOT For

- if you expect a “magic button” and instant results

- if you don’t want documentation or structure

- if you need a ready-made React / Vite project right now

## 🧭 Where to Start

- Welcome — welcome.md

- How to use — docs/usage.md

- Support — docs/support.md

## 🧠 Our Principle

We treat code as a craft.
Structure over trends.
Calm over rush.
Long-term over shortcuts.

If something doesn’t work — you are not alone. We are here.

## 📖 Manifesto

Full Code Studio manifesto (RU):
[MANIFESTO-FULL.md](../../MANIFESTO-FULL.md)

---

## 🚀 Starter Kit v0.2

Starter Kit v0.2 introduces a **real project generator** with working templates.

### What’s new

- fully functional **Vite + React** template
- project generation with a single command
- ready-to-run development server

### Example usage

```bash
cd products/core-package/scripts
bash create-project.sh my-app vite-react

cd my-app
npm install
npm run dev

```

Open in browser:

- http://localhost:5173/

---

## 🚀 Starter Kit v0.3 (Backend)

Node/API (Express) template.
Adds server capabilities and turns Starter Kit into a full-stack foundation.

### Includes

- Node + Express API
- API versioning `/api/v1`
- health endpoint `/api/v1/health`
- friendly root endpoint `/`
- basic security & logging (helmet, cors, morgan)

### Example

```bash
cd products/core-package/templates/node-api
npm install
npm run dev

```

Server available at:

- http://localhost:4000/
- http://localhost:4000/api/v1/health

## 🟢 Status

- Starter Kit v0.1 — released (Foundation)

- Starter Kit v0.2 — released (Frontend / React)

- Starter Kit v0.3 — released (Backend / Node API)

## 🌱 Roadmap

See: docs/roadmap.md
