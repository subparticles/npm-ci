FROM node:12.18.3

ENV CHROME_BIN=chromium

RUN apt-get update \
    && apt-get install -y --no-install-recommends chromium git jq curl openssl

