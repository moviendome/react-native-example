FROM node:14.3.0-stretch

LABEL maintainer="estoy@moviendo.me"

RUN npm -g config set user root

RUN npm install -g expo-cli

WORKDIR /app

ENV NODE_ENV development

COPY app.json yarn.lock package.json  /app/
RUN yarn install

CMD ["yarn", "start"]
