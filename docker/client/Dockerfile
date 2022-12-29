FROM node:16.8.0-alpine3.14
RUN apk update && apk add --no-cache yarn git openssh && \
  git config --global url."https://".insteadOf git://

RUN yarn global add serve

ARG ENVIROMENT
ENV ENVIROMENT ${ENVIROMENT}

RUN mkdir /app
COPY ./client /app
WORKDIR /app
RUN yarn install && yarn build:prod
COPY ./docker/client/docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
