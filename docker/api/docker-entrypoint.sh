#!/bin/bash

# Exit on fail
set -e

# Bundle install
yarn install

# Start services
if [ ${ENVIROMENT} = "PROD" ]; then
    yarn start
else
    yarn start:debug
fi

# Finally call command issued to the docker service
exec "$@"
