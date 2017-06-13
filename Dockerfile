FROM node:boron
ARG PKGJSON

# Install app dependencies
COPY $PKGJSON /tmp/package.json
RUN cd /tmp && npm install --quiet
RUN mkdir -p /usr/src/app && cp -a /tmp/node_modules /usr/src/app/

WORKDIR /usr/src/app
