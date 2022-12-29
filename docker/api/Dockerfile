FROM node:19.3.0-alpine3.17
RUN apk update && apk add --no-cache yarn git openssh && \
  git config --global url."https://".insteadOf git://

ARG ENVIROMENT
ENV ENVIROMENT ${ENVIROMENT}

RUN mkdir /app
COPY ./api /app
WORKDIR /app
RUN yarn install && yarn build
COPY ./docker/api/docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
