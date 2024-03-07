FROM node:18
USER root
WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

RUN npm run build

# CMD [ "npm", "run", "start" ]