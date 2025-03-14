FROM node:19.6.0-alpine
WORKDIR /app
COPY package.json .
RUN npm install --legacy-peer-deps
RUN apk update && apk add bash
RUN apk add openjdk8
RUN apk add xdg-utils
