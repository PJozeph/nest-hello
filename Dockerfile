FROM node:18 as build
WORKDIR /app
COPY ./package*.json ./

RUN npm ci

COPY ./ ./
RUN npm run build