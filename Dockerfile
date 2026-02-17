FROM node:20-slim as base

WORKDIR /app

COPY package.json package-lock.json* ./
RUN npm ci

COPY . .

ENV CI=true

CMD [ "npm", "test", "--", "--run" ]