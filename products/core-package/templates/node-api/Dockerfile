FROM node:20-alpine

WORKDIR /app

# Сначала зависимости (лучше кэшируется)
COPY package*.json ./
RUN npm ci

# Потом исходники
COPY . .

EXPOSE 4000

# dev-режим (как у тебя сейчас)
CMD ["npm", "run", "dev"]
