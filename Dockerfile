FROM node:12.18.3-alpine

RUN apk add --no-cache bash

RUN npm config set cache /home/node/app/.npm-cache --global

RUN npm i -g @nestjs/cli@7.5.1

USER node

WORKDIR /home/node/app
