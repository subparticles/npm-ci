FROM node:14.16.0

ENV CHROME_BIN=chromium

RUN apt-get update \
    && apt-get install -y --no-install-recommends chromium git jq curl openssl \
    && npm install -g npm-install-peers

