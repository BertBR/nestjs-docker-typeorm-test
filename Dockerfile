FROM node:12.18.3-alpine

RUN apk add --no-cache bash

RUN yarn config set cache-folder /home/node/app/.npm-cache --global

RUN yarn config set unsafe-perm true

RUN yarn global add @nestjs/cli@7.5.1

USER node

WORKDIR /home/node