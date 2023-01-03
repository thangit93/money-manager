FROM node:19.3.0-alpine3.17
RUN apk update && apk add --no-cache yarn git openssh && \
  git config --global url."https://".insteadOf git://

ARG ENVIROMENT
ENV ENVIROMENT ${ENVIROMENT}
ENV NODE_OPTIONS --openssl-legacy-provider

RUN mkdir /app
COPY ./client /app
WORKDIR /app
# RUN yarn install && yarn build:prod
COPY ./docker/client/docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
